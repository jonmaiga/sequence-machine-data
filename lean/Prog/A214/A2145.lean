import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214501: The size of the set of numbers k>=0 such that all (3^n-k)*2^n-1 are prime but only the last (largest) (3^n-k)*2^n+1 is also an associated twin prime.

The programs for A214501, there is no canonical definition to state claims against.
-/

/-! ## A214501.P152710002566525123

`gcd(A008574(A000081(n)), A071406(n+1))`
-/

namespace A214501.P152710002566525123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 (A000081 n).toNat) (A071406 (n + 1))

end

end A214501.P152710002566525123

/-! ## A214501.P3040482806427226240

`A016445(A218330(n+1))`
-/

namespace A214501.P3040482806427226240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016445 (A218330 (n + 1)).toNat

end

end A214501.P3040482806427226240

/-! ## A214501.P16826327531189142951

`A098876(A163295(n+1))`
-/

namespace A214501.P16826327531189142951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098876 (A163295 (n + 1)).toNat

end

end A214501.P16826327531189142951

/-! ## A214501.P11795985165543273624

`A263447(A249307(n+1))`
-/

namespace A214501.P11795985165543273624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263447 (A249307 (n + 1)).toNat

end

end A214501.P11795985165543273624

/-! ## A214501.P1751739089720287624

`gcd(floor((n+3)²/8), A381990(A035959(n)))`
-/

namespace A214501.P1751739089720287624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊((n + 3) ^ 2 : ℚ) / 8⌋ (A381990 (A035959 n).toNat)

end

end A214501.P1751739089720287624

/-!
# A214505: a(n) = 1 if n is four times a triangular number, -1 if one more than twelve times a triangular number else 0.

The programs for A214505, the canonical program `A214505.P12862525992075675400` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214505 has offset 0).

The definition of A214505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214295, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214505.P12862525992075675400

`A214295(2*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214505

/-- `A214295(2*n+1)` -/
def P12862525992075675400.Spec : Prop :=
  ∀ n, P12862525992075675400.a n = A214505 n

theorem P12862525992075675400.correct : P12862525992075675400.Spec := by
  intro n
  simp only [A214505]

end A214505

/-! ## A214505.P3027116787963678706

`A116604(n)%2`
-/

namespace A214505.P3027116787963678706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116604 n) 2

end

end A214505.P3027116787963678706

namespace A214505

/-- `A116604(n)%2` -/
def P3027116787963678706.Spec : Prop :=
  ∀ n, P3027116787963678706.a n = A214505 n

end A214505

/-! ## A214505.P1803680792200264130

`A128580(n)%2`
-/

namespace A214505.P1803680792200264130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128580 n) 2

end

end A214505.P1803680792200264130

namespace A214505

/-- `A128580(n)%2` -/
def P1803680792200264130.Spec : Prop :=
  ∀ n, P1803680792200264130.a n = A214505 n

end A214505

/-! ## A214505.P904071518371375342

`A129447(n)%2`
-/

namespace A214505.P904071518371375342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129447 n) 2

end

end A214505.P904071518371375342

namespace A214505

/-- `A129447(n)%2` -/
def P904071518371375342.Spec : Prop :=
  ∀ n, P904071518371375342.a n = A214505 n

end A214505

/-! ## A214505.P16229319392593359557

`A129449(n)%2`
-/

namespace A214505.P16229319392593359557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129449 n) 2

end

end A214505.P16229319392593359557

namespace A214505

/-- `A129449(n)%2` -/
def P16229319392593359557.Spec : Prop :=
  ∀ n, P16229319392593359557.a n = A214505 n

end A214505

/-! ## A214505.P7905125709232815088

`A190615(n)%2`
-/

namespace A214505.P7905125709232815088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190615 n) 2

end

end A214505.P7905125709232815088

namespace A214505

/-- `A190615(n)%2` -/
def P7905125709232815088.Spec : Prop :=
  ∀ n, P7905125709232815088.a n = A214505 n

end A214505

/-! ## A214505.P3513676875821838899

`A281731(n)%2`
-/

namespace A214505.P3513676875821838899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281731 n) 2

end

end A214505.P3513676875821838899

namespace A214505

/-- `A281731(n)%2` -/
def P3513676875821838899.Spec : Prop :=
  ∀ n, P3513676875821838899.a n = A214505 n

end A214505

/-! ## A214505.P16504621154013520769

`A244611(Δ[n²])`
-/

namespace A214505.P16504621154013520769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A214505.P16504621154013520769

namespace A214505

/-- `A244611(Δ[n²])` -/
def P16504621154013520769.Spec : Prop :=
  ∀ n, P16504621154013520769.a n = A214505 n

end A214505

/-! ## A214505.P7243690971528897357

`A244611(2*n+1)^3`
-/

namespace A214505.P7243690971528897357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (2 * n + 1) ^ 3

end

end A214505.P7243690971528897357

namespace A214505

/-- `A244611(2*n+1)^3` -/
def P7243690971528897357.Spec : Prop :=
  ∀ n, P7243690971528897357.a n = A214505 n

end A214505

/-! ## A214505.P8702641178631577131

`A131720(A045826(n))`
-/

namespace A214505.P8702641178631577131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131720 (A045826 n).toNat

end

end A214505.P8702641178631577131

namespace A214505

/-- `A131720(A045826(n))` -/
def P8702641178631577131.Spec : Prop :=
  ∀ n, P8702641178631577131.a n = A214505 n

end A214505

/-! ## A214505.P4685166103363426068

`A143259(A064216(n+1))`
-/

namespace A214505.P4685166103363426068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A064216 (n + 1)).toNat

end

end A214505.P4685166103363426068

namespace A214505

/-- `A143259(A064216(n+1))` -/
def P4685166103363426068.Spec : Prop :=
  ∀ n, P4685166103363426068.a n = A214505 n

end A214505

/-! ## A214505.P15748994519149963572

`A143259(A098486(n+1))`
-/

namespace A214505.P15748994519149963572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A098486 (n + 1)).toNat

end

end A214505.P15748994519149963572

namespace A214505

/-- `A143259(A098486(n+1))` -/
def P15748994519149963572.Spec : Prop :=
  ∀ n, P15748994519149963572.a n = A214505 n

end A214505

/-! ## A214505.P1051717459067211663

`A033999(n)*A127692(n)`
-/

namespace A214505.P1051717459067211663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A127692 n

end

end A214505.P1051717459067211663

namespace A214505

/-- `A033999(n)*A127692(n)` -/
def P1051717459067211663.Spec : Prop :=
  ∀ n, P1051717459067211663.a n = A214505 n

end A214505

/-! ## A214505.P3994270151580391534

`A087960(n)*A127692(n)`
-/

namespace A214505.P3994270151580391534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A127692 n

end

end A214505.P3994270151580391534

namespace A214505

/-- `A087960(n)*A127692(n)` -/
def P3994270151580391534.Spec : Prop :=
  ∀ n, P3994270151580391534.a n = A214505 n

end A214505

/-! ## A214505.P4486129555591142360

`A094267(n)*A127692(n)`
-/

namespace A214505.P4486129555591142360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A127692 n

end

end A214505.P4486129555591142360

namespace A214505

/-- `A094267(n)*A127692(n)` -/
def P4486129555591142360.Spec : Prop :=
  ∀ n, P4486129555591142360.a n = A214505 n

end A214505

/-! ## A214505.P16211464699055589550

`A101675(n)*A127692(n)`
-/

namespace A214505.P16211464699055589550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A127692 n

end

end A214505.P16211464699055589550

namespace A214505

/-- `A101675(n)*A127692(n)` -/
def P16211464699055589550.Spec : Prop :=
  ∀ n, P16211464699055589550.a n = A214505 n

end A214505

/-! ## A214505.P11037919197763485478

`A115714(n)*A127692(n)`
-/

namespace A214505.P11037919197763485478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 n * A127692 n

end

end A214505.P11037919197763485478

namespace A214505

/-- `A115714(n)*A127692(n)` -/
def P11037919197763485478.Spec : Prop :=
  ∀ n, P11037919197763485478.a n = A214505 n

end A214505

/-! ## A214505.P2978636167434145755

`A115953(n)*A127692(n)`
-/

namespace A214505.P2978636167434145755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115953 n * A127692 n

end

end A214505.P2978636167434145755

namespace A214505

/-- `A115953(n)*A127692(n)` -/
def P2978636167434145755.Spec : Prop :=
  ∀ n, P2978636167434145755.a n = A214505 n

end A214505

/-! ## A214505.P7981597902846241017

`A127692(n)*A219977(n)`
-/

namespace A214505.P7981597902846241017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127692 n * A219977 n

end

end A214505.P7981597902846241017

namespace A214505

/-- `A127692(n)*A219977(n)` -/
def P7981597902846241017.Spec : Prop :=
  ∀ n, P7981597902846241017.a n = A214505 n

end A214505

/-! ## A214505.P10675661107519751216

`A127692(n)*A242073(n)`
-/

namespace A214505.P10675661107519751216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127692 n * A242073 n

end

end A214505.P10675661107519751216

namespace A214505

/-- `A127692(n)*A242073(n)` -/
def P10675661107519751216.Spec : Prop :=
  ∀ n, P10675661107519751216.a n = A214505 n

end A214505

/-!
# A214506: Last digit of the smallest prime number in base 10 with n digits.

The programs for A214506, the canonical program `A214506.P9224525650957294672` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214506 has offset 1).

The definition of A214506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214506.P9224525650957294672

`(A033873(n)+A000007(n))%10`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A214506

/-- `(A033873(n)+A000007(n))%10` -/
def P9224525650957294672.Spec : Prop :=
  ∀ n, P9224525650957294672.a n = A214506 (n + 1)

theorem P9224525650957294672.correct : P9224525650957294672.Spec := by
  intro n
  simp only [A214506, Nat.add_sub_cancel]

end A214506

/-! ## A214506.P4032607270018772404

`A003982(∑[n])+A033873(n)%10`
-/

namespace A214506.P4032607270018772404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.tmod (A033873 n) 10

end

end A214506.P4032607270018772404

namespace A214506

/-- `A003982(∑[n])+A033873(n)%10` -/
def P4032607270018772404.Spec : Prop :=
  ∀ n, P4032607270018772404.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P5140807448291806609

`A010879(A033873(n)+A000007(n))`
-/

namespace A214506.P5140807448291806609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A033873 n + A000007 n).toNat

end

end A214506.P5140807448291806609

namespace A214506

/-- `A010879(A033873(n)+A000007(n))` -/
def P5140807448291806609.Spec : Prop :=
  ∀ n, P5140807448291806609.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P2421565389189790440

`A065881(A033873(n)+A000007(n))`
-/

namespace A214506.P2421565389189790440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A033873 n + A000007 n).toNat

end

end A214506.P2421565389189790440

namespace A214506

/-- `A065881(A033873(n)+A000007(n))` -/
def P2421565389189790440.Spec : Prop :=
  ∀ n, P2421565389189790440.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P3016011941453534276

`A274206(A033873(n)+A000007(n))`
-/

namespace A214506.P3016011941453534276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A033873 n + A000007 n).toNat

end

end A214506.P3016011941453534276

namespace A214506

/-- `A274206(A033873(n)+A000007(n))` -/
def P3016011941453534276.Spec : Prop :=
  ∀ n, P3016011941453534276.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P7912132900917896657

`A010879(A272006(n+1)+A054977(n))`
-/

namespace A214506.P7912132900917896657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A272006 (n + 1) + A054977 n).toNat

end

end A214506.P7912132900917896657

namespace A214506

/-- `A010879(A272006(n+1)+A054977(n))` -/
def P7912132900917896657.Spec : Prop :=
  ∀ n, P7912132900917896657.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P2872885086487516919

`A340219(∑[n]+n)`
-/

namespace A214506.P2872885086487516919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340219 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A214506.P2872885086487516919

namespace A214506

/-- `A340219(∑[n]+n)` -/
def P2872885086487516919.Spec : Prop :=
  ∀ n, P2872885086487516919.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P9859469960419467253

`dr(A340219(A000096(n)))`
-/

namespace A214506.P9859469960419467253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A340219 (A000096 n).toNat)

end

end A214506.P9859469960419467253

namespace A214506

/-- `dr(A340219(A000096(n)))` -/
def P9859469960419467253.Spec : Prop :=
  ∀ n, (P9859469960419467253.a n : ℤ) = A214506 (n + 1)

end A214506

/-! ## A214506.P12213548691979405877

`or(A000035(n), A340219(A000096(n)))`
-/

namespace A214506.P12213548691979405877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A340219 (A000096 n).toNat)

end

end A214506.P12213548691979405877

namespace A214506

/-- `or(A000035(n), A340219(A000096(n)))` -/
def P12213548691979405877.Spec : Prop :=
  ∀ n, P12213548691979405877.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P3039490043912552920

`or(A011655(n), A340219(A000096(n)))`
-/

namespace A214506.P3039490043912552920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 n) (A340219 (A000096 n).toNat)

end

end A214506.P3039490043912552920

namespace A214506

/-- `or(A011655(n), A340219(A000096(n)))` -/
def P3039490043912552920.Spec : Prop :=
  ∀ n, P3039490043912552920.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P17285468383877162965

`A340219(A000096(n))+A008683(8*(n+1))`
-/

namespace A214506.P17285468383877162965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340219 (A000096 n).toNat + A008683 (8 * (n + 1))

end

end A214506.P17285468383877162965

namespace A214506

/-- `A340219(A000096(n))+A008683(8*(n+1))` -/
def P17285468383877162965.Spec : Prop :=
  ∀ n, P17285468383877162965.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P7869891877795934392

`A014963(Δ[12*n²])*A340219(A000096(n))`
-/

namespace A214506.P7869891877795934392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A340219 (A000096 n).toNat

end

end A214506.P7869891877795934392

namespace A214506

/-- `A014963(Δ[12*n²])*A340219(A000096(n))` -/
def P7869891877795934392.Spec : Prop :=
  ∀ n, P7869891877795934392.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P10161784049870040030

`A007424(A000040(n+1))*A340219(A000096(n))`
-/

namespace A214506.P10161784049870040030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A000040 (n + 1)).toNat * A340219 (A000096 n).toNat

end

end A214506.P10161784049870040030

namespace A214506

/-- `A007424(A000040(n+1))*A340219(A000096(n))` -/
def P10161784049870040030.Spec : Prop :=
  ∀ n, P10161784049870040030.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P18073154046847089099

`A160467(A087688(n+1))*A340219(A000096(n))`
-/

namespace A214506.P18073154046847089099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (A087688 (n + 1)).toNat * A340219 (A000096 n).toNat

end

end A214506.P18073154046847089099

namespace A214506

/-- `A160467(A087688(n+1))*A340219(A000096(n))` -/
def P18073154046847089099.Spec : Prop :=
  ∀ n, P18073154046847089099.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P10165416646776841090

`A003617(n+1)%10`
-/

namespace A214506.P10165416646776841090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003617 (n + 1)) 10

end

end A214506.P10165416646776841090

namespace A214506

/-- `A003617(n+1)%10` -/
def P10165416646776841090.Spec : Prop :=
  ∀ n, P10165416646776841090.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P16141190310699337874

`A101592(A005408(n))%10`
-/

namespace A214506.P16141190310699337874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101592 (A005408 n).toNat) 10

end

end A214506.P16141190310699337874

namespace A214506

/-- `A101592(A005408(n))%10` -/
def P16141190310699337874.Spec : Prop :=
  ∀ n, P16141190310699337874.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P17200478093454611147

`A139053(A016777(n))%10`
-/

namespace A214506.P17200478093454611147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139053 (A016777 n).toNat) 10

end

end A214506.P17200478093454611147

namespace A214506

/-- `A139053(A016777(n))%10` -/
def P17200478093454611147.Spec : Prop :=
  ∀ n, P17200478093454611147.a n = A214506 (n + 1)

end A214506

/-! ## A214506.P14871105693274374724

`A101592(record[A004442(n)])%10`
-/

namespace A214506.P14871105693274374724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 10

end

end A214506.P14871105693274374724

namespace A214506

/-- `A101592(record[A004442(n)])%10` -/
def P14871105693274374724.Spec : Prop :=
  ∀ n, P14871105693274374724.a n = A214506 (n + 1)

end A214506

/-!
# A214507: a(n) = 1 if n is one or two times an even square, -1 if one or two times an odd square else 0.

The programs for A214507, the canonical program `A214507.P600744816074337684` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214507 has offset 0).

The definition of A214507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A214507.P600744816074337684

`(-1)^(n*(n+1)/2)*A093709(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214507

/-- `(-1)^(n*(n+1)/2)*A093709(n)` -/
def P600744816074337684.Spec : Prop :=
  ∀ n, P600744816074337684.a n = (A214507 n : ℝ)

end A214507

/-! ## A214507.P5038853263940510035

`A214509(A143051(n+1))`
-/

namespace A214507.P5038853263940510035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214509 (A143051 (n + 1)).toNat

end

end A214507.P5038853263940510035

namespace A214507

/-- `A214509(A143051(n+1))` -/
def P5038853263940510035.Spec : Prop :=
  ∀ n, P5038853263940510035.a n = A214507 n

end A214507

/-! ## A214507.P9130865749413646559

`A093709(n)*A112299(n+1)`
-/

namespace A214507.P9130865749413646559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n * A112299 (n + 1)

end

end A214507.P9130865749413646559

namespace A214507

/-- `A093709(n)*A112299(n+1)` -/
def P9130865749413646559.Spec : Prop :=
  ∀ n, P9130865749413646559.a n = A214507 n

end A214507

/-! ## A214507.P7787807350974199519

`A093709(n)*A209615(n+1)`
-/

namespace A214507.P7787807350974199519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n * A209615 (n + 1)

end

end A214507.P7787807350974199519

namespace A214507

/-- `A093709(n)*A209615(n+1)` -/
def P7787807350974199519.Spec : Prop :=
  ∀ n, P7787807350974199519.a n = A214507 n

end A214507

/-! ## A214507.P9603467973953462763

`(A245432(n+1)+Δ[A245432(n)])%2`
-/

namespace A214507.P9603467973953462763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245432 (n + 1) + (f1 (n + 1) - f1 n)) 2

end

end A214507.P9603467973953462763

namespace A214507

/-- `(A245432(n+1)+Δ[A245432(n)])%2` -/
def P9603467973953462763.Spec : Prop :=
  ∀ n, P9603467973953462763.a n = A214507 n

end A214507

/-! ## A214507.P15920347553001006684

`A059905(n+1)-A059905(A093709(n)+1+n)`
-/

namespace A214507.P15920347553001006684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (n + 1) - A059905 (A093709 n + 1 + (n : ℤ)).toNat

end

end A214507.P15920347553001006684

namespace A214507

/-- `A059905(n+1)-A059905(A093709(n)+1+n)` -/
def P15920347553001006684.Spec : Prop :=
  ∀ n, P15920347553001006684.a n = A214507 n

end A214507

/-! ## A214507.P12247537478957778503

`(A002448(n)+A002448(A014682(n)))/2`
-/

namespace A214507.P12247537478957778503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n + A002448 (A014682 n).toNat : ℚ) / 2

end

end A214507.P12247537478957778503

namespace A214507

/-- `(A002448(n)+A002448(A014682(n)))/2` -/
def P12247537478957778503.Spec : Prop :=
  ∀ n, P12247537478957778503.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P3040364425806601482

`(A002448(n)+A002448(A064680(n)))/2`
-/

namespace A214507.P3040364425806601482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n + A002448 (A064680 n).toNat : ℚ) / 2

end

end A214507.P3040364425806601482

namespace A214507

/-- `(A002448(n)+A002448(A064680(n)))/2` -/
def P3040364425806601482.Spec : Prop :=
  ∀ n, P3040364425806601482.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P10818065379676021998

`(A002448(n)+A002448(A188167(n)))/2`
-/

namespace A214507.P10818065379676021998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n + A002448 (A188167 n).toNat : ℚ) / 2

end

end A214507.P10818065379676021998

namespace A214507

/-- `(A002448(n)+A002448(A188167(n)))/2` -/
def P10818065379676021998.Spec : Prop :=
  ∀ n, P10818065379676021998.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P2177311179039034560

`(A089798(A005843(n))+A089798(n))/2`
-/

namespace A214507.P2177311179039034560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 (A005843 n).toNat + A089798 n : ℚ) / 2

end

end A214507.P2177311179039034560

namespace A214507

/-- `(A089798(A005843(n))+A089798(n))/2` -/
def P2177311179039034560.Spec : Prop :=
  ∀ n, P2177311179039034560.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P6324396426124185790

`(A002448(n)+A002448(A185452(n)))/2`
-/

namespace A214507.P6324396426124185790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n + A002448 (A185452 n).toNat : ℚ) / 2

end

end A214507.P6324396426124185790

namespace A214507

/-- `(A002448(n)+A002448(A185452(n)))/2` -/
def P6324396426124185790.Spec : Prop :=
  ∀ n, P6324396426124185790.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P5317605656448253135

`(A002448(A001281(n))+A002448(n))/2`
-/

namespace A214507.P5317605656448253135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 (A001281 n).toNat + A002448 n : ℚ) / 2

end

end A214507.P5317605656448253135

namespace A214507

/-- `(A002448(A001281(n))+A002448(n))/2` -/
def P5317605656448253135.Spec : Prop :=
  ∀ n, P5317605656448253135.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P9468750649182257199

`(A039653(n)-A236925(3*n+2)+1)%2`
-/

namespace A214507.P9468750649182257199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n - A236925 (3 * n + 2) + 1) 2

end

end A214507.P9468750649182257199

namespace A214507

/-- `(A039653(n)-A236925(3*n+2)+1)%2` -/
def P9468750649182257199.Spec : Prop :=
  ∀ n, P9468750649182257199.a n = A214507 n

end A214507

/-! ## A214507.P2617019199535949268

`(A002448(n)+A002448(A181762(n)))/2`
-/

namespace A214507.P2617019199535949268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n + A002448 (A181762 n).toNat : ℚ) / 2

end

end A214507.P2617019199535949268

namespace A214507

/-- `(A002448(n)+A002448(A181762(n)))/2` -/
def P2617019199535949268.Spec : Prop :=
  ∀ n, P2617019199535949268.a n = (A214507 n : ℚ)

end A214507

/-! ## A214507.P13624463390313683637

`(A089798(n)+A089798(A165775(n)))/2`
-/

namespace A214507.P13624463390313683637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089798 n + A089798 (A165775 n).toNat : ℚ) / 2

end

end A214507.P13624463390313683637

namespace A214507

/-- `(A089798(n)+A089798(A165775(n)))/2` -/
def P13624463390313683637.Spec : Prop :=
  ∀ n, P13624463390313683637.a n = (A214507 n : ℚ)

end A214507

/-!
# A214509: a(n) = 1 if n is an odd square or twice a nonzero even square, -1 if a nonzero even square or twice an odd square else 0.

The programs for A214509, the canonical program `A214509.P57029170938544749` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214509 has offset 1).

The definition of A214509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214509.P17097349449601844536

`(1-and(2, n))*A143259(n+1)`
-/

namespace A214509.P17097349449601844536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A143259 (n + 1)

end

end A214509.P17097349449601844536

namespace A214509

/-- `(1-and(2, n))*A143259(n+1)` -/
def P17097349449601844536.Spec : Prop :=
  ∀ n, P17097349449601844536.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P504600623411771002

`A143259(A186646(n+1))`
-/

namespace A214509.P504600623411771002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A186646 (n + 1)).toNat

end

end A214509.P504600623411771002

namespace A214509

/-- `A143259(A186646(n+1))` -/
def P504600623411771002.Spec : Prop :=
  ∀ n, P504600623411771002.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P3145589605534850828

`A057077(n)*A143259(n+1)`
-/

namespace A214509.P3145589605534850828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A143259 (n + 1)

end

end A214509.P3145589605534850828

namespace A214509

/-- `A057077(n)*A143259(n+1)` -/
def P3145589605534850828.Spec : Prop :=
  ∀ n, P3145589605534850828.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P57029170938544749

`A136748(n+1)%A014710(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A214509

/-- `A136748(n+1)%A014710(n)` -/
def P57029170938544749.Spec : Prop :=
  ∀ n, P57029170938544749.a n = A214509 (n + 1)

theorem P57029170938544749.correct : P57029170938544749.Spec := by
  intro n
  simp only [A214509, Nat.add_sub_cancel]

end A214509

/-! ## A214509.P6311166518683355949

`∑{d}[n+1, A092673(#)*A344299((n+1)/#)]`
-/

namespace A214509.P6311166518683355949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A344299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A214509.P6311166518683355949

namespace A214509

/-- `∑{d}[n+1, A092673(#)*A344299((n+1)/#)]` -/
def P6311166518683355949.Spec : Prop :=
  ∀ n, P6311166518683355949.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P8297250732783367515

`A143259(A227043(n+1))`
-/

namespace A214509.P8297250732783367515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A227043 (n + 1)).toNat

end

end A214509.P8297250732783367515

namespace A214509

/-- `A143259(A227043(n+1))` -/
def P8297250732783367515.Spec : Prop :=
  ∀ n, P8297250732783367515.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P5911540106652468046

`A214507(n+1)-A002448(n+1)`
-/

namespace A214509.P5911540106652468046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 (n + 1) - A002448 (n + 1)

end

end A214509.P5911540106652468046

namespace A214509

/-- `A214507(n+1)-A002448(n+1)` -/
def P5911540106652468046.Spec : Prop :=
  ∀ n, P5911540106652468046.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P8037391243802550795

`(1-A000122(n+1))*A214507(n+1)`
-/

namespace A214509.P8037391243802550795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000122 (n + 1)) * A214507 (n + 1)

end

end A214509.P8037391243802550795

namespace A214509

/-- `(1-A000122(n+1))*A214507(n+1)` -/
def P8037391243802550795.Spec : Prop :=
  ∀ n, P8037391243802550795.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P11071695866470048669

`A258998(n+1)+A089798(n+1)/2`
-/

namespace A214509.P11071695866470048669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258998 (n + 1) : ℚ) + (A089798 (n + 1) : ℚ) / 2

end

end A214509.P11071695866470048669

namespace A214509

/-- `A258998(n+1)+A089798(n+1)/2` -/
def P11071695866470048669.Spec : Prop :=
  ∀ n, P11071695866470048669.a n = (A214509 (n + 1) : ℚ)

end A214509

/-! ## A214509.P13334368500416243229

`A258998(n+1)-A258998(∑[n]%(n+1))`
-/

namespace A214509.P13334368500416243229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (n + 1) - A258998 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A214509.P13334368500416243229

namespace A214509

/-- `A258998(n+1)-A258998(∑[n]%(n+1))` -/
def P13334368500416243229.Spec : Prop :=
  ∀ n, P13334368500416243229.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P7454905091168875572

`A214507((A001222(n+1)+1)²)*A214507(n+1)`
-/

namespace A214509.P7454905091168875572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 ((A001222 (n + 1) + 1) ^ 2).toNat * A214507 (n + 1)

end

end A214509.P7454905091168875572

namespace A214509

/-- `A214507((A001222(n+1)+1)²)*A214507(n+1)` -/
def P7454905091168875572.Spec : Prop :=
  ∀ n, P7454905091168875572.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P14268562631847221892

`A214507((A007814(n+1)+1)²)*A214507(n+1)`
-/

namespace A214509.P14268562631847221892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214507 ((A007814 (n + 1) + 1) ^ 2).toNat * A214507 (n + 1)

end

end A214509.P14268562631847221892

namespace A214509

/-- `A214507((A007814(n+1)+1)²)*A214507(n+1)` -/
def P14268562631847221892.Spec : Prop :=
  ∀ n, P14268562631847221892.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P9838201240046602862

`A053866(n+1)*A209615(2*(n+1))*A209615(n+2)`
-/

namespace A214509.P9838201240046602862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A209615 (2 * (n + 1)) * A209615 (n + 2)

end

end A214509.P9838201240046602862

namespace A214509

/-- `A053866(n+1)*A209615(2*(n+1))*A209615(n+2)` -/
def P9838201240046602862.Spec : Prop :=
  ∀ n, P9838201240046602862.a n = A214509 (n + 1)

end A214509

/-! ## A214509.P16396595582713466547

`A209615(2*(n+1))*A209615(n+2)*A093709(n+1)`
-/

namespace A214509.P16396595582713466547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * (n + 1)) * A209615 (n + 2) * A093709 (n + 1)

end

end A214509.P16396595582713466547

namespace A214509

/-- `A209615(2*(n+1))*A209615(n+2)*A093709(n+1)` -/
def P16396595582713466547.Spec : Prop :=
  ∀ n, P16396595582713466547.a n = A214509 (n + 1)

end A214509

/-!
# A214514: Numbers of the form p^2 + q^2 + r^2, where p, q, and r are primes.

The programs for A214514, there is no canonical definition to state claims against.
-/

/-! ## A214514.P40662498832553302

`eq[3, A183214(n)]`
-/

namespace A214514.P40662498832553302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214514.P40662498832553302

/-! ## A214514.P16364103882070601867

`lt[0, A279948(n)]`
-/

namespace A214514.P16364103882070601867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A214514.P16364103882070601867

/-! ## A214514.P852121140347286308

`eq[0, A002448(n*A279948(n))]`
-/

namespace A214514.P852121140347286308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 ((n : ℤ) * A279948 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214514.P852121140347286308

/-! ## A214514.P8040297542144869144

`eq[0, A002448(n)^A279948(n)]`
-/

namespace A214514.P8040297542144869144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002448 n : ℚ) ^ (A279948 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A214514.P8040297542144869144

/-! ## A214514.P13729832467529441369

`eq[0, A279948(n+4)^A279948(n)]`
-/

namespace A214514.P13729832467529441369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279948 (n + 4) : ℚ) ^ (A279948 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A214514.P13729832467529441369

/-!
# A214515: Numbers of the form p^2 + q^2 + r^2 + s^2, where p, q, r, and s are primes.

The programs for A214515, there is no canonical definition to state claims against.
-/

/-! ## A214515.P14813065107137749859

`eq[A040002(A160278(n)), A183214(n)]`
-/

namespace A214515.P14813065107137749859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A160278 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214515.P14813065107137749859

/-! ## A214515.P11584538374548842320

`eq[A040002(A278296(n)), A183214(n)]`
-/

namespace A214515.P11584538374548842320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A278296 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214515.P11584538374548842320

/-! ## A214515.P13247005680650795505

`eq[A040002(A020335(n+1)), A183214(n)]`
-/

namespace A214515.P13247005680650795505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A020335 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214515.P13247005680650795505

/-!
# A214516: Differences between the numbers n such that n^2 + 1 is prime.

The programs for A214516, the canonical program `A214516.P9664406257668423870` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214516 has offset 1).

The definition of A214516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214516.P9664406257668423870

`A206400(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A214516

/-- `A206400(n+1)+1` -/
def P9664406257668423870.Spec : Prop :=
  ∀ n, P9664406257668423870.a n = A214516 (n + 1)

theorem P9664406257668423870.correct : P9664406257668423870.Spec := by
  intro n
  simp only [A214516, Nat.add_sub_cancel]

end A214516

/-! ## A214516.P4366627774049085792

`A015906(A206400(n+1))`
-/

namespace A214516.P4366627774049085792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A206400 (n + 1)).toNat

end

end A214516.P4366627774049085792

namespace A214516

/-- `A015906(A206400(n+1))` -/
def P4366627774049085792.Spec : Prop :=
  ∀ n, P4366627774049085792.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P812741028412908960

`2*A001912(n+1)-A005574(n+1)`
-/

namespace A214516.P812741028412908960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - A005574 (n + 1)

end

end A214516.P812741028412908960

namespace A214516

/-- `2*A001912(n+1)-A005574(n+1)` -/
def P812741028412908960.Spec : Prop :=
  ∀ n, P812741028412908960.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P10058319509253099350

`Δ[A005574(n+1)]`
-/

namespace A214516.P10058319509253099350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P10058319509253099350

namespace A214516

/-- `Δ[A005574(n+1)]` -/
def P10058319509253099350.Spec : Prop :=
  ∀ n, P10058319509253099350.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P17458694943294315793

`Δ[A089593(n+1)]`
-/

namespace A214516.P17458694943294315793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P17458694943294315793

namespace A214516

/-- `Δ[A089593(n+1)]` -/
def P17458694943294315793.Spec : Prop :=
  ∀ n, P17458694943294315793.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P10188819439613327517

`Δ[A090693(n+1)]`
-/

namespace A214516.P10188819439613327517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P10188819439613327517

namespace A214516

/-- `Δ[A090693(n+1)]` -/
def P10188819439613327517.Spec : Prop :=
  ∀ n, P10188819439613327517.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P8850664491639130813

`Δ[A059793(n)/2]`
-/

namespace A214516.P8850664491639130813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P8850664491639130813

namespace A214516

/-- `Δ[A059793(n)/2]` -/
def P8850664491639130813.Spec : Prop :=
  ∀ n, P8850664491639130813.a n = (A214516 (n + 1) : ℚ)

end A214516

/-! ## A214516.P15402185311731972489

`Δ[sqrt(A075408(n+1))]`
-/

namespace A214516.P15402185311731972489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P15402185311731972489

namespace A214516

/-- `Δ[sqrt(A075408(n+1))]` -/
def P15402185311731972489.Spec : Prop :=
  ∀ n, P15402185311731972489.a n = (A214516 (n + 1) : ℝ)

end A214516

/-! ## A214516.P9079843028295949699

`Δ[floor(sqrt(A002496(n+1)))]`
-/

namespace A214516.P9079843028295949699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002496 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P9079843028295949699

namespace A214516

/-- `Δ[floor(sqrt(A002496(n+1)))]` -/
def P9079843028295949699.Spec : Prop :=
  ∀ n, P9079843028295949699.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P13933273004087013584

`A005574(n+2)-A005574(n+1)`
-/

namespace A214516.P13933273004087013584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) - A005574 (n + 1)

end

end A214516.P13933273004087013584

namespace A214516

/-- `A005574(n+2)-A005574(n+1)` -/
def P13933273004087013584.Spec : Prop :=
  ∀ n, P13933273004087013584.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P11137075947925200979

`A089593(n+2)-A089593(n+1)`
-/

namespace A214516.P11137075947925200979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 2) - A089593 (n + 1)

end

end A214516.P11137075947925200979

namespace A214516

/-- `A089593(n+2)-A089593(n+1)` -/
def P11137075947925200979.Spec : Prop :=
  ∀ n, P11137075947925200979.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P3766227469915563426

`A090693(n+2)-A090693(n+1)`
-/

namespace A214516.P3766227469915563426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2) - A090693 (n + 1)

end

end A214516.P3766227469915563426

namespace A214516

/-- `A090693(n+2)-A090693(n+1)` -/
def P3766227469915563426.Spec : Prop :=
  ∀ n, P3766227469915563426.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P4314197017240190988

`A193558(n+1)/(A005574(n+1)+A005574(n+2))`
-/

namespace A214516.P4314197017240190988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193558 (n + 1) : ℚ) / (A005574 (n + 1) + A005574 (n + 2) : ℚ)

end

end A214516.P4314197017240190988

namespace A214516

/-- `A193558(n+1)/(A005574(n+1)+A005574(n+2))` -/
def P4314197017240190988.Spec : Prop :=
  ∀ n, P4314197017240190988.a n = (A214516 (n + 1) : ℚ)

end A214516

/-! ## A214516.P14732573362270198742

`Δ[eq[1, A193330(n)]]`
-/

namespace A214516.P14732573362270198742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214516.P14732573362270198742

namespace A214516

/-- `Δ[eq[1, A193330(n)]]` -/
def P14732573362270198742.Spec : Prop :=
  ∀ n, P14732573362270198742.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P5404788242258765231

`Δ[eq[1, A284376(n)]]`
-/

namespace A214516.P5404788242258765231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214516.P5404788242258765231

namespace A214516

/-- `Δ[eq[1, A284376(n)]]` -/
def P5404788242258765231.Spec : Prop :=
  ∀ n, P5404788242258765231.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P17101668504662853052

`Δ[eq[2, A193432(n)]]`
-/

namespace A214516.P17101668504662853052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214516.P17101668504662853052

namespace A214516

/-- `Δ[eq[2, A193432(n)]]` -/
def P17101668504662853052.Spec : Prop :=
  ∀ n, P17101668504662853052.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P8157513059017544600

`Δ[record[A247339(n+1)]]`
-/

namespace A214516.P8157513059017544600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P8157513059017544600

namespace A214516

/-- `Δ[record[A247339(n+1)]]` -/
def P8157513059017544600.Spec : Prop :=
  ∀ n, P8157513059017544600.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P5994048013269456409

`Δ[eq[1, A060272(n+1)]]`
-/

namespace A214516.P5994048013269456409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214516.P5994048013269456409

namespace A214516

/-- `Δ[eq[1, A060272(n+1)]]` -/
def P5994048013269456409.Spec : Prop :=
  ∀ n, P5994048013269456409.a n = A214516 (n + 1)

end A214516

/-! ## A214516.P984968176305155230

`Δ[record[n/A147810(n+1)]]`
-/

namespace A214516.P984968176305155230
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A147810 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214516.P984968176305155230

namespace A214516

/-- `Δ[record[n/A147810(n+1)]]` -/
def P984968176305155230.Spec : Prop :=
  ∀ n, P984968176305155230.a n = (A214516 (n + 1) : ℚ)

end A214516

/-!
# A214517: Differences between the numbers n such that 4n^2 + 1 is prime.

The programs for A214517, the canonical program `A214517.P4622712612299697579` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214517 has offset 1).

The definition of A214517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214517.P2748182487296890022

`Δ[A001912(n+1)]`
-/

namespace A214517.P2748182487296890022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214517.P2748182487296890022

namespace A214517

/-- `Δ[A001912(n+1)]` -/
def P2748182487296890022.Spec : Prop :=
  ∀ n, P2748182487296890022.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P14490755253331252681

`A214516(n+2)/2`
-/

namespace A214517.P14490755253331252681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214516 (n + 2) : ℚ) / 2

end

end A214517.P14490755253331252681

namespace A214517

/-- `A214516(n+2)/2` -/
def P14490755253331252681.Spec : Prop :=
  ∀ n, P14490755253331252681.a n = (A214517 (n + 1) : ℚ)

end A214517

/-! ## A214517.P7888983636610990622

`(A206400(n+2)+1)/2`
-/

namespace A214517.P7888983636610990622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206400 (n + 2) + 1 : ℚ) / 2

end

end A214517.P7888983636610990622

namespace A214517

/-- `(A206400(n+2)+1)/2` -/
def P7888983636610990622.Spec : Prop :=
  ∀ n, P7888983636610990622.a n = (A214517 (n + 1) : ℚ)

end A214517

/-! ## A214517.P4622712612299697579

`A000463(A206400(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A214517

/-- `A000463(A206400(n+2))` -/
def P4622712612299697579.Spec : Prop :=
  ∀ n, P4622712612299697579.a n = A214517 (n + 1)

theorem P4622712612299697579.correct : P4622712612299697579.Spec := by
  intro n
  simp only [A214517, Nat.add_sub_cancel]

end A214517

/-! ## A214517.P9112864552616762254

`A001281(A214516(n+2))`
-/

namespace A214517.P9112864552616762254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A214516 (n + 2)).toNat

end

end A214517.P9112864552616762254

namespace A214517

/-- `A001281(A214516(n+2))` -/
def P9112864552616762254.Spec : Prop :=
  ∀ n, P9112864552616762254.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P16906689939884849482

`A110654(A214516(n+2)-1)`
-/

namespace A214517.P16906689939884849482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A214516 (n + 2) - 1).toNat

end

end A214517.P16906689939884849482

namespace A214517

/-- `A110654(A214516(n+2)-1)` -/
def P16906689939884849482.Spec : Prop :=
  ∀ n, P16906689939884849482.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P1007126109271182939

`A001912(n+2)-A001912(n+1)`
-/

namespace A214517.P1007126109271182939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2) - A001912 (n + 1)

end

end A214517.P1007126109271182939

namespace A214517

/-- `A001912(n+2)-A001912(n+1)` -/
def P1007126109271182939.Spec : Prop :=
  ∀ n, P1007126109271182939.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P65129767920344809

`Δ[A005574(n+2)/2]`
-/

namespace A214517.P65129767920344809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214517.P65129767920344809

namespace A214517

/-- `Δ[A005574(n+2)/2]` -/
def P65129767920344809.Spec : Prop :=
  ∀ n, P65129767920344809.a n = (A214517 (n + 1) : ℚ)

end A214517

/-! ## A214517.P1009376941506274609

`Δ[A089593(n+2)/2]`
-/

namespace A214517.P1009376941506274609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089593 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214517.P1009376941506274609

namespace A214517

/-- `Δ[A089593(n+2)/2]` -/
def P1009376941506274609.Spec : Prop :=
  ∀ n, P1009376941506274609.a n = (A214517 (n + 1) : ℚ)

end A214517

/-! ## A214517.P829695394618948588

`Δ[A090693(n+2)/2]`
-/

namespace A214517.P829695394618948588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090693 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214517.P829695394618948588

namespace A214517

/-- `Δ[A090693(n+2)/2]` -/
def P829695394618948588.Spec : Prop :=
  ∀ n, P829695394618948588.a n = (A214517 (n + 1) : ℚ)

end A214517

/-! ## A214517.P8665279023186474248

`Δ[A059793(n+1)/4]`
-/

namespace A214517.P8665279023186474248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214517.P8665279023186474248

namespace A214517

/-- `Δ[A059793(n+1)/4]` -/
def P8665279023186474248.Spec : Prop :=
  ∀ n, P8665279023186474248.a n = (A214517 (n + 1) : ℚ)

end A214517

/-! ## A214517.P10144828978641601702

`Δ[sqrt(A075408(n+2))/2]`
-/

namespace A214517.P10144828978641601702
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 2) : ℝ) / 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214517.P10144828978641601702

namespace A214517

/-- `Δ[sqrt(A075408(n+2))/2]` -/
def P10144828978641601702.Spec : Prop :=
  ∀ n, P10144828978641601702.a n = (A214517 (n + 1) : ℝ)

end A214517

/-! ## A214517.P12068304713516500954

`A001281(Δ[A005574(n+2)])`
-/

namespace A214517.P12068304713516500954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A214517.P12068304713516500954

namespace A214517

/-- `A001281(Δ[A005574(n+2)])` -/
def P12068304713516500954.Spec : Prop :=
  ∀ n, P12068304713516500954.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P6432279297310558501

`A029578(Δ[A090693(n+2)])`
-/

namespace A214517.P6432279297310558501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (n + 1) - f1 n).toNat

end

end A214517.P6432279297310558501

namespace A214517

/-- `A029578(Δ[A090693(n+2)])` -/
def P6432279297310558501.Spec : Prop :=
  ∀ n, P6432279297310558501.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P1928614294731832787

`A032742(Δ[A090693(n+2)])`
-/

namespace A214517.P1928614294731832787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (n + 1) - f1 n).toNat

end

end A214517.P1928614294731832787

namespace A214517

/-- `A032742(Δ[A090693(n+2)])` -/
def P1928614294731832787.Spec : Prop :=
  ∀ n, P1928614294731832787.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P15119921381764426549

`A004526(A005574(n+3)-A005574(n+2))`
-/

namespace A214517.P15119921381764426549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005574 (n + 3) - A005574 (n + 2)).toNat

end

end A214517.P15119921381764426549

namespace A214517

/-- `A004526(A005574(n+3)-A005574(n+2))` -/
def P15119921381764426549.Spec : Prop :=
  ∀ n, P15119921381764426549.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P16717115241412729214

`Δ[eq[1, A193330(2*n)]]`
-/

namespace A214517.P16717115241412729214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214517.P16717115241412729214

namespace A214517

/-- `Δ[eq[1, A193330(2*n)]]` -/
def P16717115241412729214.Spec : Prop :=
  ∀ n, P16717115241412729214.a n = A214517 (n + 1)

end A214517

/-! ## A214517.P7929162986079321294

`Δ[eq[1, A284376(2*n)]]`
-/

namespace A214517.P7929162986079321294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A214517.P7929162986079321294

namespace A214517

/-- `Δ[eq[1, A284376(2*n)]]` -/
def P7929162986079321294.Spec : Prop :=
  ∀ n, P7929162986079321294.a n = A214517 (n + 1)

end A214517

/-!
# A214518: Record differences between the numbers n such that 4*n^2 + 1 is prime.

The programs for A214518, there is no canonical definition to state claims against.
-/

/-! ## A214518.P18098016717542769116

`A308987(n+2)/2`
-/

namespace A214518.P18098016717542769116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308987 (n + 2) : ℚ) / 2

end

end A214518.P18098016717542769116

/-! ## A214518.P5918665038757870212

`A001281(A308987(n+2))`
-/

namespace A214518.P5918665038757870212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A308987 (n + 2)).toNat

end

end A214518.P5918665038757870212

/-! ## A214518.P16129815683860832484

`A000463(A308987(n+2)-1)`
-/

namespace A214518.P16129815683860832484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A308987 (n + 2) - 1).toNat

end

end A214518.P16129815683860832484

/-! ## A214518.P15235585266177913032

`A003602(A308987(n+2)-1)`
-/

namespace A214518.P15235585266177913032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A308987 (n + 2) - 1).toNat

end

end A214518.P15235585266177913032

/-! ## A214518.P6525737209396408661

`A008619(A308987(n+2)-1)`
-/

namespace A214518.P6525737209396408661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A308987 (n + 2) - 1).toNat

end

end A214518.P6525737209396408661

/-!
# A214519: Least number m such that 4*m^2 + 1 is prime and the next prime of this form is 4*(m + A214518(n))^2 + 1.

The programs for A214519, there is no canonical definition to state claims against.
-/

/-! ## A214519.P5977812397967874032

`A308988(n+2)/2`
-/

namespace A214519.P5977812397967874032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308988 (n + 2) : ℚ) / 2

end

end A214519.P5977812397967874032

/-! ## A214519.P5082081740306525441

`floor(A293564(n+1)/2)`
-/

namespace A214519.P5082081740306525441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293564 (n + 1) : ℚ) / 2⌋

end

end A214519.P5082081740306525441

/-! ## A214519.P10484540260576601853

`floor(sqrt(A215233(n+1))/2)`
-/

namespace A214519.P10484540260576601853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A215233 (n + 1) : ℝ) / 2⌋

end

end A214519.P10484540260576601853

/-! ## A214519.P15266876218510160657

`∏[ratio[A308988(n+1)]-A000007(n)]`
-/

namespace A214519.P15266876218510160657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308988 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - (A000007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214519.P15266876218510160657

/-! ## A214519.P13477419684853671331

`A014682(A308988(n+2))`
-/

namespace A214519.P13477419684853671331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A308988 (n + 2)).toNat

end

end A214519.P13477419684853671331

/-!
# A214520: Primes that are the only prime between consecutive semiprimes.

The programs for A214520, the canonical program `A214520.P15717925063400371914` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214520 has offset 1).

The definition of A214520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214520.P15717925063400371914

`∩[A144742(n+1), A319627(A144742(n+1))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A214520

/-- `∩[A144742(n+1), A319627(A144742(n+1))]` -/
def P15717925063400371914.Spec : Prop :=
  ∀ n, (P15717925063400371914.a n : ℤ) = A214520 (n + 1)

theorem P15717925063400371914.correct : P15717925063400371914.Spec := by
  intro n
  simp only [A214520, Nat.add_sub_cancel]

end A214520

/-! ## A214520.P3581482673673179526

`p?[A133412(n+1)]`
-/

namespace A214520.P3581482673673179526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214520.P3581482673673179526

namespace A214520

/-- `p?[A133412(n+1)]` -/
def P3581482673673179526.Spec : Prop :=
  ∀ n, P3581482673673179526.a n = A214520 (n + 1)

end A214520

/-! ## A214520.P7800292993871147428

`record[p?[A133412(A052938(n))]]`
-/

namespace A214520.P7800292993871147428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133412 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214520.P7800292993871147428

namespace A214520

/-- `record[p?[A133412(A052938(n))]]` -/
def P7800292993871147428.Spec : Prop :=
  ∀ n, P7800292993871147428.a n = A214520 (n + 1)

end A214520

/-! ## A214520.P6579010436921379080

`record[p?[A133412(A117910(n))]]`
-/

namespace A214520.P6579010436921379080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133412 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214520.P6579010436921379080

namespace A214520

/-- `record[p?[A133412(A117910(n))]]` -/
def P6579010436921379080.Spec : Prop :=
  ∀ n, P6579010436921379080.a n = A214520 (n + 1)

end A214520

/-! ## A214520.P12006478521470427362

`record[p?[A133412(A133310(n))]]`
-/

namespace A214520.P12006478521470427362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133412 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214520.P12006478521470427362

namespace A214520

/-- `record[p?[A133412(A133310(n))]]` -/
def P12006478521470427362.Spec : Prop :=
  ∀ n, P12006478521470427362.a n = A214520 (n + 1)

end A214520

/-!
# A214521: List of words over {1,4} with equal numbers of 1's and 4's.

The programs for A214521, there is no canonical definition to state claims against.
-/

/-! ## A214521.P12858079528942503327

`A368804(n+1)+A214488(n+1)`
-/

namespace A214521.P12858079528942503327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214488 (n + 1)

end

end A214521.P12858079528942503327

/-! ## A214521.P13426727187328272898

`A214522(n+1)-A368804(n+1)`
-/

namespace A214521.P13426727187328272898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) - A368804 (n + 1)

end

end A214521.P13426727187328272898

/-! ## A214521.P460508585688562144

`A214488(n+1)+A214488(n+1)-A214218(n+1)`
-/

namespace A214521.P460508585688562144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214488 (n + 1) - A214218 (n + 1))

end

end A214521.P460508585688562144

/-! ## A214521.P677132996174173189

`A214218(n+1)+A214530(n+1)-A214522(n+1)`
-/

namespace A214521.P677132996174173189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214530 (n + 1) - A214522 (n + 1))

end

end A214521.P677132996174173189

/-! ## A214521.P18318407458444962190

`A214218(n+1)+A214531(n+1)-A214524(n+1)`
-/

namespace A214521.P18318407458444962190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214531 (n + 1) - A214524 (n + 1))

end

end A214521.P18318407458444962190

/-! ## A214521.P17455924080664301067

`A214218(n+1)+A214532(n+1)-A214530(n+1)`
-/

namespace A214521.P17455924080664301067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214532 (n + 1) - A214530 (n + 1))

end

end A214521.P17455924080664301067

/-! ## A214521.P11297287764239901053

`A214488(n+1)+A214524(n+1)-A214522(n+1)`
-/

namespace A214521.P11297287764239901053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214524 (n + 1) - A214522 (n + 1))

end

end A214521.P11297287764239901053

/-! ## A214521.P18117978446843810014

`A214488(n+1)+A214530(n+1)-A214524(n+1)`
-/

namespace A214521.P18117978446843810014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214530 (n + 1) - A214524 (n + 1))

end

end A214521.P18117978446843810014

/-! ## A214521.P16848985263068668605

`A214488(n+1)+A214531(n+1)-A214530(n+1)`
-/

namespace A214521.P16848985263068668605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214531 (n + 1) - A214530 (n + 1))

end

end A214521.P16848985263068668605

/-! ## A214521.P4742828411606930590

`A214488(n+1)+A214532(n+1)-A214531(n+1)`
-/

namespace A214521.P4742828411606930590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214532 (n + 1) - A214531 (n + 1))

end

end A214521.P4742828411606930590

/-! ## A214521.P12893736889292296744

`A214522(n+1)+A214524(n+1)-A214530(n+1)`
-/

namespace A214521.P12893736889292296744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214524 (n + 1) - A214530 (n + 1))

end

end A214521.P12893736889292296744

/-! ## A214521.P11736410499024350388

`A214522(n+1)+A214530(n+1)-A214531(n+1)`
-/

namespace A214521.P11736410499024350388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214530 (n + 1) - A214531 (n + 1))

end

end A214521.P11736410499024350388

/-! ## A214521.P16469132231715392948

`A214522(n+1)+A214531(n+1)-A214532(n+1)`
-/

namespace A214521.P16469132231715392948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214531 (n + 1) - A214532 (n + 1))

end

end A214521.P16469132231715392948

/-! ## A214521.P16322828867078127010

`A214524(n+1)+A214530(n+1)-A214532(n+1)`
-/

namespace A214521.P16322828867078127010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214530 (n + 1) - A214532 (n + 1))

end

end A214521.P16322828867078127010

/-! ## A214521.P1958115150348486633

`A032822(A258410(n+1))`
-/

namespace A214521.P1958115150348486633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (A258410 (n + 1)).toNat

end

end A214521.P1958115150348486633

/-! ## A214521.P9767808414378218206

`A032822(A031448(n+2)-1)`
-/

namespace A214521.P9767808414378218206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (A031448 (n + 2) - 1).toNat

end

end A214521.P9767808414378218206

/-!
# A214522: List of words over {1,5} with equal numbers of 1's and 5's.

The programs for A214522, there is no canonical definition to state claims against.
-/

/-! ## A214522.P12647366101647080301

`A368804(n+1)+A214521(n+1)`
-/

namespace A214522.P12647366101647080301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214521 (n + 1)

end

end A214522.P12647366101647080301

/-! ## A214522.P13793641407541801809

`A214524(n+1)-A368804(n+1)`
-/

namespace A214522.P13793641407541801809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) - A368804 (n + 1)

end

end A214522.P13793641407541801809

/-! ## A214522.P16531254995916780115

`A214488(n+1)+2*A368804(n+1)`
-/

namespace A214522.P16531254995916780115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + 2 * A368804 (n + 1)

end

end A214522.P16531254995916780115

/-! ## A214522.P5424587587606997406

`A214218(n+1)+A214524(n+1)-A214488(n+1)`
-/

namespace A214522.P5424587587606997406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214524 (n + 1) - A214488 (n + 1))

end

end A214522.P5424587587606997406

/-! ## A214522.P2597267158284118058

`A214488(n+1)+A214521(n+1)-A214218(n+1)`
-/

namespace A214522.P2597267158284118058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214521 (n + 1) - A214218 (n + 1))

end

end A214522.P2597267158284118058

/-! ## A214522.P282028749301950342

`A214218(n+1)+A214530(n+1)-A214521(n+1)`
-/

namespace A214522.P282028749301950342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214530 (n + 1) - A214521 (n + 1))

end

end A214522.P282028749301950342

/-! ## A214522.P6846426668959922443

`A214218(n+1)+A214532(n+1)-A214524(n+1)`
-/

namespace A214522.P6846426668959922443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214532 (n + 1) - A214524 (n + 1))

end

end A214522.P6846426668959922443

/-! ## A214522.P14961433216467924

`A214488(n+1)+A214524(n+1)-A214521(n+1)`
-/

namespace A214522.P14961433216467924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214524 (n + 1) - A214521 (n + 1))

end

end A214522.P14961433216467924

/-! ## A214522.P16243886864579840919

`A214488(n+1)+A214531(n+1)-A214524(n+1)`
-/

namespace A214522.P16243886864579840919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214531 (n + 1) - A214524 (n + 1))

end

end A214522.P16243886864579840919

/-! ## A214522.P8258328082758581116

`A214488(n+1)+A214532(n+1)-A214530(n+1)`
-/

namespace A214522.P8258328082758581116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214532 (n + 1) - A214530 (n + 1))

end

end A214522.P8258328082758581116

/-! ## A214522.P1622777096941994111

`A214521(n+1)+A214530(n+1)-A214524(n+1)`
-/

namespace A214522.P1622777096941994111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214530 (n + 1) - A214524 (n + 1))

end

end A214522.P1622777096941994111

/-! ## A214522.P13469986538224185075

`A214521(n+1)+A214531(n+1)-A214530(n+1)`
-/

namespace A214522.P13469986538224185075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214531 (n + 1) - A214530 (n + 1))

end

end A214522.P13469986538224185075

/-! ## A214522.P7325757095582043121

`A214521(n+1)+A214532(n+1)-A214531(n+1)`
-/

namespace A214522.P7325757095582043121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214532 (n + 1) - A214531 (n + 1))

end

end A214522.P7325757095582043121

/-! ## A214522.P12921792918443831672

`A214524(n+1)+A214530(n+1)-A214531(n+1)`
-/

namespace A214522.P12921792918443831672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214530 (n + 1) - A214531 (n + 1))

end

end A214522.P12921792918443831672

/-! ## A214522.P7966958389455376209

`A214524(n+1)+A214531(n+1)-A214532(n+1)`
-/

namespace A214522.P7966958389455376209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214531 (n + 1) - A214532 (n + 1))

end

end A214522.P7966958389455376209

/-! ## A214522.P18301419690134643610

`A276037(A258410(n+1))`
-/

namespace A214522.P18301419690134643610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (A258410 (n + 1)).toNat

end

end A214522.P18301419690134643610

/-! ## A214522.P16212802333276495041

`A276037(A031448(n+2)-1)`
-/

namespace A214522.P16212802333276495041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (A031448 (n + 2) - 1).toNat

end

end A214522.P16212802333276495041

/-!
# A214523: a(1) = 13, a(n) is smallest prime of the form k*a(n-1) + 1.

The programs for A214523, there is no canonical definition to state claims against.
-/

/-! ## A214523.P415982541367008308

`A070846(a(n-1))` with `a(0)=13`
-/

namespace A214523.P415982541367008308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A070846 (a (n - 1)).toNat

end

end A214523.P415982541367008308

/-! ## A214523.P5009769108503238832

`A070846(abs(a(A023443(n))))` with `a(0)=13`
-/

namespace A214523.P5009769108503238832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A070846 |a (A023443 n).toNat|.toNat

end

end A214523.P5009769108503238832

/-! ## A214523.P2527885801782832221

`p?[A070846(a(A023443(n)))]` with `a(0)=6`
-/

namespace A214523.P2527885801782832221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A070846 (f1 (A023443 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214523.P2527885801782832221

/-!
# A214524: List of words over {1,6} with equal numbers of 1's and 6's.

The programs for A214524, there is no canonical definition to state claims against.
-/

/-! ## A214524.P1834284689992150

`A368804(n+1)+A214522(n+1)`
-/

namespace A214524.P1834284689992150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214522 (n + 1)

end

end A214524.P1834284689992150

/-! ## A214524.P5663169395099589007

`A214530(n+1)-A368804(n+1)`
-/

namespace A214524.P5663169395099589007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214530 (n + 1) - A368804 (n + 1)

end

end A214524.P5663169395099589007

/-! ## A214524.P6020852751086139056

`A214531(n+1)-2*A368804(n+1)`
-/

namespace A214524.P6020852751086139056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214531 (n + 1) - 2 * A368804 (n + 1)

end

end A214524.P6020852751086139056

/-! ## A214524.P332176579801213895

`A214218(n+1)+A214530(n+1)-A214488(n+1)`
-/

namespace A214524.P332176579801213895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214530 (n + 1) - A214488 (n + 1))

end

end A214524.P332176579801213895

/-! ## A214524.P10664964935559809995

`A214488(n+1)+A214522(n+1)-A214218(n+1)`
-/

namespace A214524.P10664964935559809995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214522 (n + 1) - A214218 (n + 1))

end

end A214524.P10664964935559809995

/-! ## A214524.P8892947961292479635

`A214521(n+1)+A214521(n+1)-A214218(n+1)`
-/

namespace A214524.P8892947961292479635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214521 (n + 1) - A214218 (n + 1))

end

end A214524.P8892947961292479635

/-! ## A214524.P11676026722435370858

`A214218(n+1)+A214532(n+1)-A214522(n+1)`
-/

namespace A214524.P11676026722435370858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214532 (n + 1) - A214522 (n + 1))

end

end A214524.P11676026722435370858

/-! ## A214524.P853585612952199591

`A214488(n+1)+A214530(n+1)-A214521(n+1)`
-/

namespace A214524.P853585612952199591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214530 (n + 1) - A214521 (n + 1))

end

end A214524.P853585612952199591

/-! ## A214524.P15516362687697971593

`A214521(n+1)+A214522(n+1)-A214488(n+1)`
-/

namespace A214524.P15516362687697971593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214522 (n + 1) - A214488 (n + 1))

end

end A214524.P15516362687697971593

/-! ## A214524.P2913526799989736324

`A214488(n+1)+A214531(n+1)-A214522(n+1)`
-/

namespace A214524.P2913526799989736324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214531 (n + 1) - A214522 (n + 1))

end

end A214524.P2913526799989736324

/-! ## A214524.P1516837703483578742

`A214521(n+1)+A214530(n+1)-A214522(n+1)`
-/

namespace A214524.P1516837703483578742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214530 (n + 1) - A214522 (n + 1))

end

end A214524.P1516837703483578742

/-! ## A214524.P2639056985553902490

`A214521(n+1)+A214532(n+1)-A214530(n+1)`
-/

namespace A214524.P2639056985553902490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214532 (n + 1) - A214530 (n + 1))

end

end A214524.P2639056985553902490

/-! ## A214524.P4789719455814130364

`A214522(n+1)+A214531(n+1)-A214530(n+1)`
-/

namespace A214524.P4789719455814130364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214531 (n + 1) - A214530 (n + 1))

end

end A214524.P4789719455814130364

/-! ## A214524.P12674880693290551259

`A214522(n+1)+A214532(n+1)-A214531(n+1)`
-/

namespace A214524.P12674880693290551259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214532 (n + 1) - A214531 (n + 1))

end

end A214524.P12674880693290551259

/-! ## A214524.P5618447540605371683

`A214530(n+1)+A214531(n+1)-A214532(n+1)`
-/

namespace A214524.P5618447540605371683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214530 (n + 1) + (A214531 (n + 1) - A214532 (n + 1))

end

end A214524.P5618447540605371683

/-! ## A214524.P10324299967559761556

`(A214531(n+1)+2*A214488(n+1)-A214218(n+1))/2`
-/

namespace A214524.P10324299967559761556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214531 (n + 1) + (2 * A214488 (n + 1) - A214218 (n + 1)) : ℚ) / 2

end

end A214524.P10324299967559761556

/-! ## A214524.P5494554044136318716

`A284293(A258410(n+1))`
-/

namespace A214524.P5494554044136318716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (A258410 (n + 1)).toNat

end

end A214524.P5494554044136318716

/-! ## A214524.P2087372237785741870

`(A214531(n+1)+A032822(A258410(n+1)))/2`
-/

namespace A214524.P2087372237785741870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214531 (n + 1) + A032822 (A258410 (n + 1)).toNat : ℚ) / 2

end

end A214524.P2087372237785741870

/-! ## A214524.P18147306650166382054

`(A214531(n+1)+A032822(A031448(n+2)-1))/2`
-/

namespace A214524.P18147306650166382054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214531 (n + 1) + A032822 (A031448 (n + 2) - 1).toNat : ℚ) / 2

end

end A214524.P18147306650166382054

/-! ## A214524.P3914815187317298603

`(A276039(A031448(n+2)-1)+A276037(A258410(n+1)))/2`
-/

namespace A214524.P3914815187317298603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276039 (A031448 (n + 2) - 1).toNat + A276037 (A258410 (n + 1)).toNat : ℚ) / 2

end

end A214524.P3914815187317298603

/-!
# A214525: a(n) = 7*a(n-1) - 23*a(n-2) + 49*a(n-3) - 49*a(n-4) with a(0)=0, a(1)=1, a(2)=7, a(3)=19.

The programs for A214525, the canonical program `A214525.P9976247031347154333` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214525 has offset 0).

The definition of A214525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-23*a(n-2)+49*a(n-3)-49*a(n-4)` (program `A214525.P9976247031347154333`, by `A214525.P9976247031347154333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A214525.P9976247031347154333

`7*a(n-1)-23*a(n-2)+49*a(n-3)-49*a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=19`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214525

/-- `7*a(n-1)-23*a(n-2)+49*a(n-3)-49*a(n-4)` -/
def P9976247031347154333.Spec : Prop :=
  ∀ n, P9976247031347154333.a n = A214525 n

theorem P9976247031347154333.correct : P9976247031347154333.Spec := by
  intro n
  simp only [A214525]

end A214525

/-!
# A214526: Manhattan distances between n and 1 in a square spiral with positive integers and 1 at the center.

The programs for A214526, the canonical program `A214526.P1775941300151216315` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214526 has offset 1).

The definition of A214526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214526.P1775941300151216315

`abs(A174344(n+1))+abs(A274923(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214526

/-- `abs(A174344(n+1))+abs(A274923(n+1))` -/
def P1775941300151216315.Spec : Prop :=
  ∀ n, P1775941300151216315.a n = A214526 (n + 1)

theorem P1775941300151216315.correct : P1775941300151216315.Spec := by
  intro n
  simp only [A214526, Nat.add_sub_cancel]

end A214526

/-! ## A214526.P12119660404393168329

`round(sqrt(A316967(n))/2)`
-/

namespace A214526.P12119660404393168329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A316967 n : ℝ) / 2)

end

end A214526.P12119660404393168329

namespace A214526

/-- `round(sqrt(A316967(n))/2)` -/
def P12119660404393168329.Spec : Prop :=
  ∀ n, P12119660404393168329.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P6934250660797728480

`round(sqrt(A317466(n))/4)`
-/

namespace A214526.P6934250660797728480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A317466 n : ℝ) / 4)

end

end A214526.P6934250660797728480

namespace A214526

/-- `round(sqrt(A317466(n))/4)` -/
def P6934250660797728480.Spec : Prop :=
  ∀ n, P6934250660797728480.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P7613560569062892323

`round(sqrt(A317467(n+1))/4)`
-/

namespace A214526.P7613560569062892323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A317467 (n + 1) : ℝ) / 4)

end

end A214526.P7613560569062892323

namespace A214526

/-- `round(sqrt(A317467(n+1))/4)` -/
def P7613560569062892323.Spec : Prop :=
  ∀ n, P7613560569062892323.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P18366411251661055463

`A004526(ceil(sqrt(A316967(n))))`
-/

namespace A214526.P18366411251661055463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈Real.sqrt (A316967 n : ℝ)⌉.toNat

end

end A214526.P18366411251661055463

namespace A214526

/-- `A004526(ceil(sqrt(A316967(n))))` -/
def P18366411251661055463.Spec : Prop :=
  ∀ n, P18366411251661055463.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P16249281834198129482

`abs(A174344(n+1))+abs(A268038(n+1))`
-/

namespace A214526.P16249281834198129482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174344 (n + 1)| + |A268038 (n + 1)|

end

end A214526.P16249281834198129482

namespace A214526

/-- `abs(A174344(n+1))+abs(A268038(n+1))` -/
def P16249281834198129482.Spec : Prop :=
  ∀ n, P16249281834198129482.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P1884528986707097290

`n+1-A004273(∑[A101688(A004273(n))])`
-/

namespace A214526.P1884528986707097290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214526.P1884528986707097290

namespace A214526

/-- `n+1-A004273(∑[A101688(A004273(n))])` -/
def P1884528986707097290.Spec : Prop :=
  ∀ n, P1884528986707097290.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P17565844361039273553

`∑[-A068344(A004273(n))]`
-/

namespace A214526.P17565844361039273553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A068344 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214526.P17565844361039273553

namespace A214526

/-- `∑[-A068344(A004273(n))]` -/
def P17565844361039273553.Spec : Prop :=
  ∀ n, P17565844361039273553.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P9506886947849739194

`A068344(2*n+1)-∑[A068344(2*n+1)]`
-/

namespace A214526.P9506886947849739194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214526.P9506886947849739194

namespace A214526

/-- `A068344(2*n+1)-∑[A068344(2*n+1)]` -/
def P9506886947849739194.Spec : Prop :=
  ∀ n, P9506886947849739194.a n = A214526 (n + 1)

end A214526

/-! ## A214526.P6108721657161585672

`A084359(A316884(n+1))`
-/

namespace A214526.P6108721657161585672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A316884 (n + 1)).toNat

end

end A214526.P6108721657161585672

namespace A214526

/-- `A084359(A316884(n+1))` -/
def P6108721657161585672.Spec : Prop :=
  ∀ n, P6108721657161585672.a n = A214526 (n + 1)

end A214526

/-!
# A214527: Numbers k such that the alternating sum of decimal digits of k is zero.

The programs for A214527, there is no canonical definition to state claims against.
-/

/-! ## A214527.P15760865315456437156

`A076314(A248014(n+1))+A008592(A248014(n+1))`
-/

namespace A214527.P15760865315456437156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A248014 (n + 1)).toNat + A008592 (A248014 (n + 1)).toNat

end

end A214527.P15760865315456437156

/-! ## A214527.P7134209995615418899

`A076314(A304366(n+1))+A008592(A304366(n+1))`
-/

namespace A214527.P7134209995615418899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A304366 (n + 1)).toNat + A008592 (A304366 (n + 1)).toNat

end

end A214527.P7134209995615418899

/-! ## A214527.P18020509915542789752

`A308104(n+10)`
-/

namespace A214527.P18020509915542789752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308104 (n + 10)

end

end A214527.P18020509915542789752

/-! ## A214527.P13488935132511199475

`record[A308104(A020723(A028242(n)))]`
-/

namespace A214527.P13488935132511199475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308104 (A020723 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214527.P13488935132511199475

/-! ## A214527.P5955844237364413819

`A108773(lt[A076314(n), 9]+10)`
-/

namespace A214527.P5955844237364413819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10)

end

end A214527.P5955844237364413819

/-!
# A214528: a(n) = least k>0 such that n! divides Fibonacci(k).

The programs for A214528, there is no canonical definition to state claims against.
-/

/-! ## A214528.P8868120186968186016

`A001177(n!)`
-/

namespace A214528.P8868120186968186016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (Nat.factorial n)

end

end A214528.P8868120186968186016

/-! ## A214528.P1609997630350935637

`A281230(n!/A197350(n+1))`
-/

namespace A214528.P1609997630350935637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A197350 (n + 1) : ℚ))).toNat

end

end A214528.P1609997630350935637

/-! ## A214528.P8963784699921718996

`∏[gcd(A319787(n), A319825(n+2))]`
-/

namespace A214528.P8963784699921718996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319787 n) (A319825 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214528.P8963784699921718996

/-! ## A214528.P2038135815664596362

`∏[A102632(2*n+5)%A103032(3*n+2)]`
-/

namespace A214528.P2038135815664596362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102632 (2 * n + 5)) (A103032 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A214528.P2038135815664596362

/-! ## A214528.P18183835825884149729

`A001177(A000142(n)/A003179(n))`
-/

namespace A214528.P18183835825884149729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A003179 n : ℚ))).toNat

end

end A214528.P18183835825884149729

/-!
# A214529: Expansion of f(x^29, -x^31) - x * f(x^19, -x^41) + x^3 * f(x^11, -x^49) - x^7 * f(-x, x^59) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A214529, there is no canonical definition to state claims against.
-/

/-! ## A214529.P462340923791845437

`(-1)^n*A208546(n)`
-/

namespace A214529.P462340923791845437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A208546 n

end

end A214529.P462340923791845437

/-! ## A214529.P2499602214517625363

`A057077(n)*A113430(n)`
-/

namespace A214529.P2499602214517625363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A113430 n

end

end A214529.P2499602214517625363

/-! ## A214529.P12614844572199620132

`A087960(n)*A207710(n)`
-/

namespace A214529.P12614844572199620132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A207710 n

end

end A214529.P12614844572199620132

/-! ## A214529.P8012656767749654297

`A208546(n)/A057077(A057077(n)+n)`
-/

namespace A214529.P8012656767749654297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208546 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A214529.P8012656767749654297

/-! ## A214529.P12859620527845975703

`A057077(n+1)*A207710(n)`
-/

namespace A214529.P12859620527845975703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A207710 n

end

end A214529.P12859620527845975703

/-! ## A214529.P4280567919097259474

`A208546(n)/A057077(2*n)`
-/

namespace A214529.P4280567919097259474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208546 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A214529.P4280567919097259474

/-! ## A214529.P12249726873255728611

`A113430(A093722(n+1))*A207710(n)`
-/

namespace A214529.P12249726873255728611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A093722 (n + 1)).toNat * A207710 n

end

end A214529.P12249726873255728611

/-! ## A214529.P2569570205233713234

`A208546(n)/A087960(n²)`
-/

namespace A214529.P2569570205233713234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208546 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A214529.P2569570205233713234

/-!
# A214530: List of words over {1,7} with equal numbers of 1's and 7's.

The programs for A214530, there is no canonical definition to state claims against.
-/

/-! ## A214530.P4294438136887222169

`A368804(n+1)+A214524(n+1)`
-/

namespace A214530.P4294438136887222169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214524 (n + 1)

end

end A214530.P4294438136887222169

/-! ## A214530.P13197246532434580532

`A214531(n+1)-A368804(n+1)`
-/

namespace A214530.P13197246532434580532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214531 (n + 1) - A368804 (n + 1)

end

end A214530.P13197246532434580532

/-! ## A214530.P10221477181426370411

`A214218(n+1)+A214531(n+1)-A214488(n+1)`
-/

namespace A214530.P10221477181426370411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214531 (n + 1) - A214488 (n + 1))

end

end A214530.P10221477181426370411

/-! ## A214530.P10615514622173602281

`A214488(n+1)+A214524(n+1)-A214218(n+1)`
-/

namespace A214530.P10615514622173602281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214524 (n + 1) - A214218 (n + 1))

end

end A214530.P10615514622173602281

/-! ## A214530.P13523491031547721408

`A214521(n+1)+A214522(n+1)-A214218(n+1)`
-/

namespace A214530.P13523491031547721408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214522 (n + 1) - A214218 (n + 1))

end

end A214530.P13523491031547721408

/-! ## A214530.P13437185564678074103

`A214218(n+1)+A214532(n+1)-A214521(n+1)`
-/

namespace A214530.P13437185564678074103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214532 (n + 1) - A214521 (n + 1))

end

end A214530.P13437185564678074103

/-! ## A214530.P15176243817773991904

`A214488(n+1)+A214531(n+1)-A214521(n+1)`
-/

namespace A214530.P15176243817773991904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214531 (n + 1) - A214521 (n + 1))

end

end A214530.P15176243817773991904

/-! ## A214530.P5940286401823687980

`A214521(n+1)+A214524(n+1)-A214488(n+1)`
-/

namespace A214530.P5940286401823687980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214524 (n + 1) - A214488 (n + 1))

end

end A214530.P5940286401823687980

/-! ## A214530.P9071114564633341929

`A214522(n+1)+A214522(n+1)-A214488(n+1)`
-/

namespace A214530.P9071114564633341929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214522 (n + 1) - A214488 (n + 1))

end

end A214530.P9071114564633341929

/-! ## A214530.P7372615243849825541

`A214521(n+1)+A214531(n+1)-A214522(n+1)`
-/

namespace A214530.P7372615243849825541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214531 (n + 1) - A214522 (n + 1))

end

end A214530.P7372615243849825541

/-! ## A214530.P14819110006786816261

`A214521(n+1)+A214532(n+1)-A214524(n+1)`
-/

namespace A214530.P14819110006786816261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214532 (n + 1) - A214524 (n + 1))

end

end A214530.P14819110006786816261

/-! ## A214530.P3299216898972503331

`A214524(n+1)+A214524(n+1)-A214522(n+1)`
-/

namespace A214530.P3299216898972503331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214524 (n + 1) - A214522 (n + 1))

end

end A214530.P3299216898972503331

/-! ## A214530.P10369993430089609042

`A214524(n+1)+A214532(n+1)-A214531(n+1)`
-/

namespace A214530.P10369993430089609042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214532 (n + 1) - A214531 (n + 1))

end

end A214530.P10369993430089609042

/-! ## A214530.P9294950521054637138

`A276039(A258410(n+1))`
-/

namespace A214530.P9294950521054637138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (A258410 (n + 1)).toNat

end

end A214530.P9294950521054637138

/-! ## A214530.P736130347747264732

`A276039(A031448(n+2)-1)`
-/

namespace A214530.P736130347747264732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (A031448 (n + 2) - 1).toNat

end

end A214530.P736130347747264732

/-! ## A214530.P8329367479192247743

`A276039(∑[-Δ[-A031448(n+1)]])`
-/

namespace A214530.P8329367479192247743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A031448 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214530.P8329367479192247743

/-!
# A214531: List of words over {1,8} with equal numbers of 1's and 8's.

The programs for A214531, there is no canonical definition to state claims against.
-/

/-! ## A214531.P14600419913220921061

`A368804(n+1)+A214530(n+1)`
-/

namespace A214531.P14600419913220921061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214530 (n + 1)

end

end A214531.P14600419913220921061

/-! ## A214531.P7319984399204774761

`A214532(n+1)-A368804(n+1)`
-/

namespace A214531.P7319984399204774761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214532 (n + 1) - A368804 (n + 1)

end

end A214531.P7319984399204774761

/-! ## A214531.P4805296088154003097

`A214524(n+1)+2*A368804(n+1)`
-/

namespace A214531.P4805296088154003097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + 2 * A368804 (n + 1)

end

end A214531.P4805296088154003097

/-! ## A214531.P13131467725883540053

`A214218(n+1)+A214532(n+1)-A214488(n+1)`
-/

namespace A214531.P13131467725883540053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214218 (n + 1) + (A214532 (n + 1) - A214488 (n + 1))

end

end A214531.P13131467725883540053

/-! ## A214531.P18112400918455717984

`A214488(n+1)+A214530(n+1)-A214218(n+1)`
-/

namespace A214531.P18112400918455717984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214530 (n + 1) - A214218 (n + 1))

end

end A214531.P18112400918455717984

/-! ## A214531.P12948102631809404358

`A214521(n+1)+A214524(n+1)-A214218(n+1)`
-/

namespace A214531.P12948102631809404358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214524 (n + 1) - A214218 (n + 1))

end

end A214531.P12948102631809404358

/-! ## A214531.P4853051588186523571

`A214522(n+1)+A214522(n+1)-A214218(n+1)`
-/

namespace A214531.P4853051588186523571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214522 (n + 1) - A214218 (n + 1))

end

end A214531.P4853051588186523571

/-! ## A214531.P5704629923529114668

`A214488(n+1)+A214532(n+1)-A214521(n+1)`
-/

namespace A214531.P5704629923529114668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214532 (n + 1) - A214521 (n + 1))

end

end A214531.P5704629923529114668

/-! ## A214531.P2582500243341720620

`A214521(n+1)+A214530(n+1)-A214488(n+1)`
-/

namespace A214531.P2582500243341720620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214530 (n + 1) - A214488 (n + 1))

end

end A214531.P2582500243341720620

/-! ## A214531.P1248295044924445267

`A214522(n+1)+A214524(n+1)-A214488(n+1)`
-/

namespace A214531.P1248295044924445267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214524 (n + 1) - A214488 (n + 1))

end

end A214531.P1248295044924445267

/-! ## A214531.P17432068793751282303

`A214521(n+1)+A214532(n+1)-A214522(n+1)`
-/

namespace A214531.P17432068793751282303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214532 (n + 1) - A214522 (n + 1))

end

end A214531.P17432068793751282303

/-! ## A214531.P11960823624530716718

`A214522(n+1)+A214530(n+1)-A214521(n+1)`
-/

namespace A214531.P11960823624530716718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214530 (n + 1) - A214521 (n + 1))

end

end A214531.P11960823624530716718

/-! ## A214531.P6488056277042381087

`A214524(n+1)+A214530(n+1)-A214522(n+1)`
-/

namespace A214531.P6488056277042381087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214530 (n + 1) - A214522 (n + 1))

end

end A214531.P6488056277042381087

/-! ## A214531.P13194219391161902014

`A214524(n+1)+A214532(n+1)-A214530(n+1)`
-/

namespace A214531.P13194219391161902014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214532 (n + 1) - A214530 (n + 1))

end

end A214531.P13194219391161902014

/-! ## A214531.P10520981393637260529

`2*A214524(n+1)-A214488(n+1)+A214218(n+1)-A214488(n+1)`
-/

namespace A214531.P10520981393637260529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214524 (n + 1) - A214488 (n + 1) + (A214218 (n + 1) - A214488 (n + 1))

end

end A214531.P10520981393637260529

/-! ## A214531.P11917927306746322727

`A213084(A258410(n+1))`
-/

namespace A214531.P11917927306746322727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213084 (A258410 (n + 1)).toNat

end

end A214531.P11917927306746322727

/-! ## A214531.P4558191247091855601

`2*A276037(A031448(n+2)-1)-A214218(n+1)`
-/

namespace A214531.P4558191247091855601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276037 (A031448 (n + 2) - 1).toNat - A214218 (n + 1)

end

end A214531.P4558191247091855601

/-! ## A214531.P7503126138541478857

`2*A276037(A031448(n+2)-1)-A007931(A258410(n+1))`
-/

namespace A214531.P7503126138541478857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276037 (A031448 (n + 2) - 1).toNat - A007931 (A258410 (n + 1)).toNat

end

end A214531.P7503126138541478857

/-! ## A214531.P1901197860426435001

`2*A276037(A031448(n+2)-1)-A007931(A031448(n+2)-1)`
-/

namespace A214531.P1901197860426435001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276037 (A031448 (n + 2) - 1).toNat - A007931 (A031448 (n + 2) - 1).toNat

end

end A214531.P1901197860426435001

/-!
# A214532: List of words over {1,9} with equal numbers of 1's and 9's.

The programs for A214532, there is no canonical definition to state claims against.
-/

/-! ## A214532.P11217634201159524190

`A368804(n+1)+A214531(n+1)`
-/

namespace A214532.P11217634201159524190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368804 (n + 1) + A214531 (n + 1)

end

end A214532.P11217634201159524190

/-! ## A214532.P9597612315534097085

`A214488(n+1)+A214531(n+1)-A214218(n+1)`
-/

namespace A214532.P9597612315534097085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214488 (n + 1) + (A214531 (n + 1) - A214218 (n + 1))

end

end A214532.P9597612315534097085

/-! ## A214532.P11891312758852791780

`A214521(n+1)+A214530(n+1)-A214218(n+1)`
-/

namespace A214532.P11891312758852791780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214530 (n + 1) - A214218 (n + 1))

end

end A214532.P11891312758852791780

/-! ## A214532.P11672234531514590237

`A214522(n+1)+A214524(n+1)-A214218(n+1)`
-/

namespace A214532.P11672234531514590237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214524 (n + 1) - A214218 (n + 1))

end

end A214532.P11672234531514590237

/-! ## A214532.P5861562536041639913

`A214521(n+1)+A214531(n+1)-A214488(n+1)`
-/

namespace A214532.P5861562536041639913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214521 (n + 1) + (A214531 (n + 1) - A214488 (n + 1))

end

end A214532.P5861562536041639913

/-! ## A214532.P16988742472144275500

`A214522(n+1)+A214530(n+1)-A214488(n+1)`
-/

namespace A214532.P16988742472144275500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214530 (n + 1) - A214488 (n + 1))

end

end A214532.P16988742472144275500

/-! ## A214532.P177666899995705541

`A214524(n+1)+A214524(n+1)-A214488(n+1)`
-/

namespace A214532.P177666899995705541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214524 (n + 1) - A214488 (n + 1))

end

end A214532.P177666899995705541

/-! ## A214532.P2456521890934868978

`A214522(n+1)+A214531(n+1)-A214521(n+1)`
-/

namespace A214532.P2456521890934868978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214522 (n + 1) + (A214531 (n + 1) - A214521 (n + 1))

end

end A214532.P2456521890934868978

/-! ## A214532.P15382151613072775411

`A214524(n+1)+A214530(n+1)-A214521(n+1)`
-/

namespace A214532.P15382151613072775411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214524 (n + 1) + (A214530 (n + 1) - A214521 (n + 1))

end

end A214532.P15382151613072775411

/-! ## A214532.P17689541593217290315

`A214530(n+1)+A214531(n+1)-A214524(n+1)`
-/

namespace A214532.P17689541593217290315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214530 (n + 1) + (A214531 (n + 1) - A214524 (n + 1))

end

end A214532.P17689541593217290315

/-! ## A214532.P5037511286764924106

`A284294(A258410(n+1))`
-/

namespace A214532.P5037511286764924106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (A258410 (n + 1)).toNat

end

end A214532.P5037511286764924106

/-! ## A214532.P7535633500231175101

`∩[A061427(n+1), A284294(n+1)]`
-/

namespace A214532.P7535633500231175101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214532.P7535633500231175101

/-!
# A214534: Number of nXnXn triangular 0..2 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214534, there is no canonical definition to state claims against.
-/

/-! ## A214534.P7705545408080681709

`A214540(∑[n+2])`
-/

namespace A214534.P7705545408080681709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214534.P7705545408080681709

/-! ## A214534.P973669804816414348

`record[A214540(abs(A201163(n)))]`
-/

namespace A214534.P973669804816414348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214534.P973669804816414348

/-! ## A214534.P10404572639550142678

`record[A214540(A069981(n)+2)]`
-/

namespace A214534.P10404572639550142678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A069981 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214534.P10404572639550142678

/-! ## A214534.P145572824708176249

`record[A214540(Δ[A003453(n+5)])]`
-/

namespace A214534.P145572824708176249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214534.P145572824708176249

/-! ## A214534.P1098591732869209809

`xor(1, A214540(A000096(n+1)))+1`
-/

namespace A214534.P1098591732869209809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A214540 (A000096 (n + 1)).toNat) + 1

end

end A214534.P1098591732869209809

/-!
# A214535: Number of n X n X n triangular 0..3 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214535, there is no canonical definition to state claims against.
-/

/-! ## A214535.P16126678717972999714

`A214540(∑[n+3]+1)`
-/

namespace A214535.P16126678717972999714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214535.P16126678717972999714

/-! ## A214535.P2638427888124406487

`record[A214540(A069981(n+4)+1)]`
-/

namespace A214535.P2638427888124406487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A069981 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214535.P2638427888124406487

/-! ## A214535.P7769395795778396929

`A214540(A034856(n+2))+A084904(n)`
-/

namespace A214535.P7769395795778396929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A034856 (n + 2)).toNat + A084904 n

end

end A214535.P7769395795778396929

/-! ## A214535.P17208794501981367669

`A055642(n)*A214540(A034856(n+2))`
-/

namespace A214535.P17208794501981367669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A214540 (A034856 (n + 2)).toNat

end

end A214535.P17208794501981367669

/-! ## A214535.P4107383882839822289

`C(A214540(A034856(n+2)), A133707(n+1))`
-/

namespace A214535.P4107383882839822289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214540 (A034856 (n + 2)).toNat).toNat (A133707 (n + 1)).toNat

end

end A214535.P4107383882839822289

/-!
# A214536: Number of nXnXn triangular 0..4 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214536, there is no canonical definition to state claims against.
-/

/-! ## A214536.P13596487408728186346

`A214540(∑[round(1/acot(n))+4]+2)`
-/

namespace A214536.P13596487408728186346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A214536.P13596487408728186346

/-! ## A214536.P746988228812718058

`A214540(Δ[n²]+∑[n+2]+4)`
-/

namespace A214536.P746988228812718058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A214536.P746988228812718058

/-!
# A214537: Number of nXnXn triangular 0..5 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214537, there is no canonical definition to state claims against.
-/

/-! ## A214537.P14264369651773877358

`A214540(∑[n+5]+6)`
-/

namespace A214537.P14264369651773877358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A214537.P14264369651773877358

/-!
# A214538: Number of nXnXn triangular 0..6 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214538, there is no canonical definition to state claims against.
-/

/-! ## A214538.P3883971964564701135

`A214540(A052905(n+3))`
-/

namespace A214538.P3883971964564701135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A052905 (n + 3)).toNat

end

end A214538.P3883971964564701135

/-! ## A214538.P966717158595688425

`A214540(A056119(n)+16)`
-/

namespace A214538.P966717158595688425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A056119 n + 16).toNat

end

end A214538.P966717158595688425

/-! ## A214538.P1272296634835642312

`A214540(eq[3, A219347(n)])`
-/

namespace A214538.P1272296634835642312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214538.P1272296634835642312

/-!
# A214539: Number of n X n X n triangular 0..7 arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214539, there is no canonical definition to state claims against.
-/

/-! ## A214539.P7872036712053653449

`A214540(A055999(n+4))`
-/

namespace A214539.P7872036712053653449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A055999 (n + 4)).toNat

end

end A214539.P7872036712053653449

/-! ## A214539.P10397226745671416206

`A214540(eq[4, A219347(n)])`
-/

namespace A214539.P10397226745671416206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214539.P10397226745671416206

/-! ## A214539.P17287982987622508884

`A214540(eq[5, A332954(n)])`
-/

namespace A214539.P17287982987622508884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214539.P17287982987622508884

/-!
# A214540: T(n,k)=Number of nXnXn triangular 0..k arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214540, there is no canonical definition to state claims against.
-/

/-! ## A214540.P1930819620281773828

`A214595(n+1)-A137748(A156883(n))`
-/

namespace A214540.P1930819620281773828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (n + 1) - A137748 (A156883 n).toNat

end

end A214540.P1930819620281773828

/-! ## A214540.P1982272867388622562

`A214595(n+1)-A329296(A360439(n))`
-/

namespace A214540.P1982272867388622562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (n + 1) - A329296 (A360439 n).toNat

end

end A214540.P1982272867388622562

/-! ## A214540.P5590358973591065221

`A183110(n+1)+A113218(A265241(n+1))`
-/

namespace A214540.P5590358973591065221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (n + 1) + A113218 (A265241 (n + 1)).toNat

end

end A214540.P5590358973591065221

/-!
# A214541: Number of 3X3X3 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214541, there is no canonical definition to state claims against.
-/

/-! ## A214541.P5191691262782694378

`A214540(∑[n+2]+4)`
-/

namespace A214541.P5191691262782694378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214541.P5191691262782694378

/-! ## A214541.P13189012080425852454

`and(-1, A214540(A167614(n+1)))`
-/

namespace A214541.P13189012080425852454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A214540 (A167614 (n + 1)).toNat)

end

end A214541.P13189012080425852454

/-! ## A214541.P16015654929499663979

`A214540(A167614(n+1))+A011741(n)`
-/

namespace A214541.P16015654929499663979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A167614 (n + 1)).toNat + A011741 n

end

end A214541.P16015654929499663979

/-! ## A214541.P10773778371730786913

`A214540(A167614(n+1))+A025442(n)`
-/

namespace A214541.P10773778371730786913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A167614 (n + 1)).toNat + A025442 n

end

end A214541.P10773778371730786913

/-! ## A214541.P15033031080723759971

`A214540(A167614(n+1))+A025469(n)`
-/

namespace A214541.P15033031080723759971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A167614 (n + 1)).toNat + A025469 n

end

end A214541.P15033031080723759971

/-!
# A214542: Number of 4X4X4 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214542, there is no canonical definition to state claims against.
-/

/-! ## A214542.P5080300115625928100

`A214540(A141214(n)+7)`
-/

namespace A214542.P5080300115625928100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A141214 n + 7).toNat

end

end A214542.P5080300115625928100

/-! ## A214542.P17064418574360599842

`A214540(A052905(n)+9)`
-/

namespace A214542.P17064418574360599842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A052905 n + 9).toNat

end

end A214542.P17064418574360599842

/-! ## A214542.P3399024131589692914

`A214540(A055999(n)+10)`
-/

namespace A214542.P3399024131589692914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A055999 n + 10).toNat

end

end A214542.P3399024131589692914

/-! ## A214542.P474573976044827957

`A214540(eq[5, A066657(n)])`
-/

namespace A214542.P474573976044827957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214542.P474573976044827957

/-! ## A214542.P2377020366980009040

`A214540(Δ[A008778(n)]+6)`
-/

namespace A214542.P2377020366980009040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (f1 (n + 1) - f1 n + 6).toNat

end

end A214542.P2377020366980009040

/-!
# A214543: Number of 5 X 5 X 5 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214543, there is no canonical definition to state claims against.
-/

/-! ## A214543.P16392200500396026928

`A214540(A167499(n+3))`
-/

namespace A214543.P16392200500396026928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A167499 (n + 3)).toNat

end

end A214543.P16392200500396026928

/-! ## A214543.P1644086062942758008

`A214540(A155212(n)+13)`
-/

namespace A214543.P1644086062942758008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A155212 n + 13).toNat

end

end A214543.P1644086062942758008

/-! ## A214543.P14425688475380300618

`A214540(A056000(n)+15)`
-/

namespace A214543.P14425688475380300618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A056000 n + 15).toNat

end

end A214543.P14425688475380300618

/-! ## A214543.P1705680802369538374

`A214540(eq[7, A066657(n)])`
-/

namespace A214543.P1705680802369538374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214543.P1705680802369538374

/-! ## A214543.P12066206374148456530

`A214540(A000124(n+4)+4)`
-/

namespace A214543.P12066206374148456530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A000124 (n + 4) + 4).toNat

end

end A214543.P12066206374148456530

/-!
# A214544: Number of 6X6X6 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214544, there is no canonical definition to state claims against.
-/

/-! ## A214544.P4468430163171494086

`A214540(A056115(n)+21)`
-/

namespace A214544.P4468430163171494086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A056115 n + 21).toNat

end

end A214544.P4468430163171494086

/-! ## A214544.P11988723103622133685

`A214540(A167499(n+4)+1)`
-/

namespace A214544.P11988723103622133685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A167499 (n + 4) + 1).toNat

end

end A214544.P11988723103622133685

/-! ## A214544.P8452038557231063598

`A214540(A167614(n+4)+3)`
-/

namespace A214544.P8452038557231063598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A167614 (n + 4) + 3).toNat

end

end A214544.P8452038557231063598

/-! ## A214544.P5762209536757051779

`A214540(eq[6, A130270(n+1)])`
-/

namespace A214544.P5762209536757051779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214544.P5762209536757051779

/-!
# A214545: Number of 7X7X7 triangular 0..n arrays with no element lying outside the (possibly reversed) range delimited by its sw and se neighbors, and every horizontal row having the same average value.

The programs for A214545, there is no canonical definition to state claims against.
-/

/-! ## A214545.P1025135168990374599

`A214540(A302537(n)+27)`
-/

namespace A214545.P1025135168990374599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A302537 n + 27).toNat

end

end A214545.P1025135168990374599

/-! ## A214545.P15635039488031309463

`A214540(A056119(n)+28)`
-/

namespace A214545.P15635039488031309463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (A056119 n + 28).toNat

end

end A214545.P15635039488031309463

/-! ## A214545.P16807007694797964502

`A214540(eq[11, A066657(n)])`
-/

namespace A214545.P16807007694797964502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214545.P16807007694797964502

/-!
# A214546: First differences of A140472.

The programs for A214546, the canonical program `A214546.P4922243182448489645` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214546 has offset 0).

The definition of A214546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214546.P3563458607648911861

`Δ[or(n, n-1)/2]`
-/

namespace A214546.P3563458607648911861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214546.P3563458607648911861

namespace A214546

/-- `Δ[or(n, n-1)/2]` -/
def P3563458607648911861.Spec : Prop :=
  ∀ n, P3563458607648911861.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P16348764887817123773

`(Δ[and(n, -n)]+1)/2`
-/

namespace A214546.P16348764887817123773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A214546.P16348764887817123773

namespace A214546

/-- `(Δ[and(n, -n)]+1)/2` -/
def P16348764887817123773.Spec : Prop :=
  ∀ n, P16348764887817123773.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P9617443676159909869

`1-Δ[and(n, n-1)/2]`
-/

namespace A214546.P9617443676159909869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A214546.P9617443676159909869

namespace A214546

/-- `1-Δ[and(n, n-1)/2]` -/
def P9617443676159909869.Spec : Prop :=
  ∀ n, P9617443676159909869.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P11690757546191586772

`(Δ[xor(n, n-1)]+2)/4`
-/

namespace A214546.P11690757546191586772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 4

end

end A214546.P11690757546191586772

namespace A214546

/-- `(Δ[xor(n, n-1)]+2)/4` -/
def P11690757546191586772.Spec : Prop :=
  ∀ n, P11690757546191586772.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P7398397841809735207

`or(n, n+1)/2-or(n, n-1)/2`
-/

namespace A214546.P7398397841809735207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℚ) / 2 - (Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

end

end A214546.P7398397841809735207

namespace A214546

/-- `or(n, n+1)/2-or(n, n-1)/2` -/
def P7398397841809735207.Spec : Prop :=
  ∀ n, P7398397841809735207.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P4922243182448489645

`Δ[A140472(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A214546

/-- `Δ[A140472(n)]` -/
def P4922243182448489645.Spec : Prop :=
  ∀ n, P4922243182448489645.a n = A214546 n

theorem P4922243182448489645.correct : P4922243182448489645.Spec := by
  intro n
  simp only [A214546]

end A214546

/-! ## A214546.P9892452620805374127

`A109168(n+1)-A140472(n)`
-/

namespace A214546.P9892452620805374127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (n + 1) - A140472 n

end

end A214546.P9892452620805374127

namespace A214546

/-- `A109168(n+1)-A140472(n)` -/
def P9892452620805374127.Spec : Prop :=
  ∀ n, P9892452620805374127.a n = A214546 n

end A214546

/-! ## A214546.P9225315716945969584

`A140472(n+1)-A140472(n)`
-/

namespace A214546.P9225315716945969584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (n + 1) - A140472 n

end

end A214546.P9225315716945969584

namespace A214546

/-- `A140472(n+1)-A140472(n)` -/
def P9225315716945969584.Spec : Prop :=
  ∀ n, P9225315716945969584.a n = A214546 n

theorem P9225315716945969584.correct : P9225315716945969584.Spec := by
  intro n
  simp only [A214546, Nat.add_sub_cancel, A214546.P9225315716945969584.a, A214546.P4922243182448489645.f1, A214546.P4922243182448489645.a, SequenceMachineLib.memo_apply]

end A214546

/-! ## A214546.P11758230765640225053

`A109168(n+1)-A285326(n)/2`
-/

namespace A214546.P11758230765640225053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109168 (n + 1) : ℚ) - (A285326 n : ℚ) / 2

end

end A214546.P11758230765640225053

namespace A214546

/-- `A109168(n+1)-A285326(n)/2` -/
def P11758230765640225053.Spec : Prop :=
  ∀ n, P11758230765640225053.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P6450486893163283799

`Δ[A285326(n)/2]`
-/

namespace A214546.P6450486893163283799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214546.P6450486893163283799

namespace A214546

/-- `Δ[A285326(n)/2]` -/
def P6450486893163283799.Spec : Prop :=
  ∀ n, P6450486893163283799.a n = (A214546 n : ℚ)

end A214546

/-! ## A214546.P10828597185950273371

`Δ[A001281(A285326(n))]`
-/

namespace A214546.P10828597185950273371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214546.P10828597185950273371

namespace A214546

/-- `Δ[A001281(A285326(n))]` -/
def P10828597185950273371.Spec : Prop :=
  ∀ n, P10828597185950273371.a n = A214546 n

end A214546

/-! ## A214546.P12483947454366246072

`(A105321(2*n+1)-A105321(2*n))/A001316(n+1)`
-/

namespace A214546.P12483947454366246072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105321 (2 * n + 1) - A105321 (2 * n) : ℚ) / (A001316 (n + 1) : ℚ)

end

end A214546.P12483947454366246072

namespace A214546

/-- `(A105321(2*n+1)-A105321(2*n))/A001316(n+1)` -/
def P12483947454366246072.Spec : Prop :=
  ∀ n, P12483947454366246072.a n = (A214546 n : ℚ)

end A214546

/-!
# A214547: Deficient numbers for which the (absolute value of) abundance is not a divisor.

The programs for A214547, the canonical program `A214547.P5981767396618173425` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214547 has offset 1).

The definition of A214547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214547.P7802535517643529149

`A020725(lt[A324544(n+1), A033879(n+1)])`
-/

namespace A214547.P7802535517643529149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214547.P7802535517643529149

namespace A214547

/-- `A020725(lt[A324544(n+1), A033879(n+1)])` -/
def P7802535517643529149.Spec : Prop :=
  ∀ n, P7802535517643529149.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P5981767396618173425

`lt[A009194(n+1), A033879(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A214547

/-- `lt[A009194(n+1), A033879(n+1)]+1` -/
def P5981767396618173425.Spec : Prop :=
  ∀ n, (P5981767396618173425.a n : ℤ) = A214547 (n + 1)

theorem P5981767396618173425.correct : P5981767396618173425.Spec := by
  intro n
  simp only [A214547, Nat.add_sub_cancel]

end A214547

/-! ## A214547.P150705844947229795

`A065475(lt[A009194(n+1), A033879(n+1)])`
-/

namespace A214547.P150705844947229795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214547.P150705844947229795

namespace A214547

/-- `A065475(lt[A009194(n+1), A033879(n+1)])` -/
def P150705844947229795.Spec : Prop :=
  ∀ n, P150705844947229795.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P45520460776706833

`A153152(lt[A009194(n+1), A033879(n+1)])`
-/

namespace A214547.P45520460776706833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214547.P45520460776706833

namespace A214547

/-- `A153152(lt[A009194(n+1), A033879(n+1)])` -/
def P45520460776706833.Spec : Prop :=
  ∀ n, P45520460776706833.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P5569371662184806414

`A153152(lt[A324544(n+1), A033879(n+1)])`
-/

namespace A214547.P5569371662184806414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214547.P5569371662184806414

namespace A214547

/-- `A153152(lt[A324544(n+1), A033879(n+1)])` -/
def P5569371662184806414.Spec : Prop :=
  ∀ n, P5569371662184806414.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P6183823055451080273

`A153152(lt[A324544(n+1)+A237588(n+1), 1])`
-/

namespace A214547.P6183823055451080273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (n + 1) + A237588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A214547.P6183823055451080273

namespace A214547

/-- `A153152(lt[A324544(n+1)+A237588(n+1), 1])` -/
def P6183823055451080273.Spec : Prop :=
  ∀ n, P6183823055451080273.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P9693177631166097570

`A153152(lt[A324544(n+1), 2*(n+1)-A000203(n+1)])`
-/

namespace A214547.P9693177631166097570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214547.P9693177631166097570

namespace A214547

/-- `A153152(lt[A324544(n+1), 2*(n+1)-A000203(n+1)])` -/
def P9693177631166097570.Spec : Prop :=
  ∀ n, P9693177631166097570.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P15114751446189042511

`lt[A222804(n), A165012(A151725(n))]`
-/

namespace A214547.P15114751446189042511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A151725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214547.P15114751446189042511

namespace A214547

/-- `lt[A222804(n), A165012(A151725(n))]` -/
def P15114751446189042511.Spec : Prop :=
  ∀ n, (P15114751446189042511.a n : ℤ) = A214547 (n + 1)

end A214547

/-! ## A214547.P18105371983702335541

`A097218(n+1)-char[A044573(n+1)]`
-/

namespace A214547.P18105371983702335541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044573 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A214547.P18105371983702335541

namespace A214547

/-- `A097218(n+1)-char[A044573(n+1)]` -/
def P18105371983702335541.Spec : Prop :=
  ∀ n, P18105371983702335541.a n = A214547 (n + 1)

end A214547

/-! ## A214547.P6568723361275267061

`A097218(n+1)-char[A158736(n+1)]`
-/

namespace A214547.P6568723361275267061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A214547.P6568723361275267061

namespace A214547

/-- `A097218(n+1)-char[A158736(n+1)]` -/
def P6568723361275267061.Spec : Prop :=
  ∀ n, P6568723361275267061.a n = A214547 (n + 1)

end A214547

/-!
# A214548: List of k such that A214686(k) = 1.

The programs for A214548, there is no canonical definition to state claims against.
-/

/-! ## A214548.P10609997102007561953

`eq[1, A214686(n+2)]+2`
-/

namespace A214548.P10609997102007561953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214686 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A214548.P10609997102007561953

/-! ## A214548.P7937648829502376760

`lt[n, sqrt(A214686(n+3))]+2`
-/

namespace A214548.P7937648829502376760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A214686 (n + 3) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 2

end

end A214548.P7937648829502376760

/-! ## A214548.P1978740773793596773

`record[A009056(n+1)-A214686(n+2)]`
-/

namespace A214548.P1978740773793596773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (n + 1) - A214686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P1978740773793596773

/-! ## A214548.P13314747250871050123

`record[A020725(n+2)-A214686(n+2)]`
-/

namespace A214548.P13314747250871050123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 2) - A214686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P13314747250871050123

/-! ## A214548.P7121043063650506353

`record[A020725(n+1)/A214686(n+2)]`
-/

namespace A214548.P7121043063650506353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A214686 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P7121043063650506353

/-! ## A214548.P13180354817740833443

`record[A213222(n+3)-A214686(n+2)]`
-/

namespace A214548.P13180354817740833443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213222 (n + 3) - A214686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P13180354817740833443

/-! ## A214548.P5692721343931249004

`record[(A022998(n)+2)/A214686(n+2)]`
-/

namespace A214548.P5692721343931249004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022998 n + 2 : ℚ) / (A214686 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P5692721343931249004

/-! ## A214548.P16564410552519640693

`record[A008611(3*(n+1))/A214686(n+2)]`
-/

namespace A214548.P16564410552519640693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * (n + 1)) : ℚ) / (A214686 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P16564410552519640693

/-! ## A214548.P29788829889174978

`record[A008619(2*n+3)/A214686(n+2)]`
-/

namespace A214548.P29788829889174978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n + 3) : ℚ) / (A214686 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214548.P29788829889174978

/-!
# A214551: Reed Kelly's sequence: a(n) = (a(n-1) + a(n-3))/gcd(a(n-1), a(n-3)) with a(0) = a(1) = a(2) = 1.

The programs for A214551, the canonical program `A214551.P15707706189836223354` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214551 has offset 0).

The definition of A214551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214551.P15707706189836223354

`(a(n-1)+a(n-3))/gcd(a(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214551

/-- `(a(n-1)+a(n-3))/gcd(a(n-1), a(n-3))` -/
def P15707706189836223354.Spec : Prop :=
  ∀ n, P15707706189836223354.a n = (A214551 n : ℚ)

end A214551

/-! ## A214551.P1866080380836835266

`A214322(n)/A214323(n)`
-/

namespace A214551.P1866080380836835266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214322 n : ℚ) / (A214323 n : ℚ)

end

end A214551.P1866080380836835266

namespace A214551

/-- `A214322(n)/A214323(n)` -/
def P1866080380836835266.Spec : Prop :=
  ∀ n, P1866080380836835266.a n = (A214551 n : ℚ)

end A214551

/-! ## A214551.P12428900572383758833

`root(A214323(n), A260196(n))*A214322(n)`
-/

namespace A214551.P12428900572383758833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214323 n : ℝ) ^ (1 / (A260196 n : ℝ)) * (A214322 n : ℝ)

end

end A214551.P12428900572383758833

namespace A214551

/-- `root(A214323(n), A260196(n))*A214322(n)` -/
def P12428900572383758833.Spec : Prop :=
  ∀ n, P12428900572383758833.a n = (A214551 n : ℝ)

end A214551

/-! ## A214551.P8207579651383949499

`A214322(n+1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A214551.P8207579651383949499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A214322 (n + 1) - a (n - 2)

end

end A214551.P8207579651383949499

namespace A214551

/-- `A214322(n+1)-a(n-2)` -/
def P8207579651383949499.Spec : Prop :=
  ∀ n, P8207579651383949499.a n = A214551 n

end A214551

/-! ## A214551.P15034247709568415282

`lcm(a(n-3)+a(n-1), a(n-1))/a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A214551.P15034247709568415282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (a (n - 3) + a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / a (n - 1)

end

end A214551.P15034247709568415282

namespace A214551

/-- `lcm(a(n-3)+a(n-1), a(n-1))/a(n-1)` -/
def P15034247709568415282.Spec : Prop :=
  ∀ n, P15034247709568415282.a n = (A214551 n : ℚ)

end A214551

/-!
# A214553: G.f. A(x) satisfies A(x) = 1 + 4*x*A(x)^(5/2).

The programs for A214553, there is no canonical definition to state claims against.
-/

/-! ## A214553.P3685170519146886129

`A308115(Δ[Δ[n!]])`
-/

namespace A214553.P3685170519146886129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308115 (f1 (n + 1) - f1 n).toNat

end

end A214553.P3685170519146886129

/-!
# A214554: Triangle read by rows, coefficients of polynomials related to the Springer numbers A001586.

The programs for A214554, there is no canonical definition to state claims against.
-/

/-! ## A214554.P6431693294041355485

`A013609(n)*A212435(A025581(n))`
-/

namespace A214554.P6431693294041355485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A212435 (A025581 n).toNat

end

end A214554.P6431693294041355485

/-! ## A214554.P14017726889425342018

`A188458(A025581(n))*A303872(n)`
-/

namespace A214554.P14017726889425342018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188458 (A025581 n).toNat * A303872 n

end

end A214554.P14017726889425342018

/-!
# A214555: Subsequence of fixed points A099009 of the Kaprekar mapping, with numbers of the form 5{n}49{n+1}4{n}5, where d{n} means n-fold repetition of digit d.

The programs for A214555, there is no canonical definition to state claims against.
-/

/-! ## A214555.P15850003837911859828

`∑[10*a(n-1)]*A002279(2*(n+1))` with `a(0)=9`
-/

namespace A214555.P15850003837911859828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002279 (2 * (n + 1))

end

end A214555.P15850003837911859828

/-! ## A214555.P11064900960741525950

`A002279(n+1)*A098609(n+1)`
-/

namespace A214555.P11064900960741525950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (n + 1) * A098609 (n + 1)

end

end A214555.P11064900960741525950

/-! ## A214555.P7372934206213034211

`A002279(2*n+2)*A002283(n+1)`
-/

namespace A214555.P7372934206213034211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (2 * n + 2) * A002283 (n + 1)

end

end A214555.P7372934206213034211

/-! ## A214555.P174924432313776700

`A000042(2*n+2)/2*A124167(n+1)`
-/

namespace A214555.P174924432313776700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000042 (2 * n + 2) : ℚ) / 2 * (A124167 (n + 1) : ℚ)

end

end A214555.P174924432313776700

/-!
# A214556: Fixed points of the Kaprekar map A151949, of the form 63{n}176{n}4, where d{n} is digit d repeated n times, n >= 0.

The programs for A214556, the canonical program `A214556.P7262581340864023496` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214556 has offset 0).

The definition of A214556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214556.P7262581340864023496

`(190*100^(n+1)-47*10^(n+1)-8)/3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214556

/-- `(190*100^(n+1)-47*10^(n+1)-8)/3` -/
def P7262581340864023496.Spec : Prop :=
  ∀ n, P7262581340864023496.a n = (A214556 n : ℚ)

end A214556

/-!
# A214559: Subsequence of fixed points A099009 of the Kaprekar map of the form 9{p+1}8{q}7{r+1}6{q}5{r+1}4{q}3{s}2{q}1{r}09{q}8{r+1}7{q}6{s}5{q}4{r+1}3{q}2{r+1}1{q}0{p}1, where d{n} is digit d repeated n times, p, q, r, s >= 0.

The programs for A214559, there is no canonical definition to state claims against.
-/

/-! ## A214559.P13094524652060617550

`A055160(lt[A055215(n+1), A055181(n+1)])`
-/

namespace A214559.P13094524652060617550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055160 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A214559.P13094524652060617550

/-!
# A214560: Number of 0's in binary expansion of n^2.

The programs for A214560, the canonical program `A214560.P494932617173923030` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214560 has offset 0).

The definition of A214560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214560.P494932617173923030

`A023416(n²)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A214560

/-- `A023416(n²)` -/
def P494932617173923030.Spec : Prop :=
  ∀ n, P494932617173923030.a n = A214560 n

theorem P494932617173923030.correct : P494932617173923030.Spec := by
  intro n
  simp only [A214560]

end A214560

/-! ## A214560.P3491574197087221589

`∑{digits}[A001737(n), 1-#]`
-/

namespace A214560.P3491574197087221589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A214560.P3491574197087221589

namespace A214560

/-- `∑{digits}[A001737(n), 1-#]` -/
def P3491574197087221589.Spec : Prop :=
  ∀ n, P3491574197087221589.a n = A214560 n

end A214560

/-! ## A214560.P7762062216810395960

`abs(A290251(n²)-1)`
-/

namespace A214560.P7762062216810395960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290251 (n ^ 2) - 1|

end

end A214560.P7762062216810395960

namespace A214560

/-- `abs(A290251(n²)-1)` -/
def P7762062216810395960.Spec : Prop :=
  ∀ n, P7762062216810395960.a n = A214560 n

end A214560

/-! ## A214560.P2563085717794118055

`A290251(n²)+A153881(n+1)`
-/

namespace A214560.P2563085717794118055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (n ^ 2) + A153881 (n + 1)

end

end A214560.P2563085717794118055

namespace A214560

/-- `A290251(n²)+A153881(n+1)` -/
def P2563085717794118055.Spec : Prop :=
  ∀ n, P2563085717794118055.a n = A214560 n

end A214560

/-! ## A214560.P17814310593051608961

`∑{digits}[A007088(A334042(n)), #]`
-/

namespace A214560.P17814310593051608961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A334042 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A214560.P17814310593051608961

namespace A214560

/-- `∑{digits}[A007088(A334042(n)), #]` -/
def P17814310593051608961.Spec : Prop :=
  ∀ n, (P17814310593051608961.a n : ℤ) = A214560 n

end A214560

/-! ## A214560.P839487351514352353

`∑{digits}[A007088(n²), 1-#]`
-/

namespace A214560.P839487351514352353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A214560.P839487351514352353

namespace A214560

/-- `∑{digits}[A007088(n²), 1-#]` -/
def P839487351514352353.Spec : Prop :=
  ∀ n, P839487351514352353.a n = A214560 n

end A214560

/-! ## A214560.P11651424398618223107

`∑{digits}[A007088(A059100(n))-10, A000607(#)]`
-/

namespace A214560.P11651424398618223107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059100 n).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000607 x).sum

end

end A214560.P11651424398618223107

namespace A214560

/-- `∑{digits}[A007088(A059100(n))-10, A000607(#)]` -/
def P11651424398618223107.Spec : Prop :=
  ∀ n, P11651424398618223107.a n = A214560 n

end A214560

/-! ## A214560.P11725548880086550355

`∑{digits}[A007088(A059100(n))-10, A085854(#)]`
-/

namespace A214560.P11725548880086550355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059100 n).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085854 x).sum

end

end A214560.P11725548880086550355

namespace A214560

/-- `∑{digits}[A007088(A059100(n))-10, A085854(#)]` -/
def P11725548880086550355.Spec : Prop :=
  ∀ n, P11725548880086550355.a n = A214560 n

end A214560

/-! ## A214560.P14791540478551425081

`∏{e}[A267584(n²), #-1]`
-/

namespace A214560.P14791540478551425081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A214560.P14791540478551425081

namespace A214560

/-- `∏{e}[A267584(n²), #-1]` -/
def P14791540478551425081.Spec : Prop :=
  ∀ n, P14791540478551425081.a n = A214560 n

end A214560

/-! ## A214560.P16252473259997522203

`A080791(floor(n²/2))+log2(gcd(2, n))`
-/

namespace A214560.P16252473259997522203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080791 ⌊(n ^ 2 : ℚ) / 2⌋.toNat : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A214560.P16252473259997522203

namespace A214560

/-- `A080791(floor(n²/2))+log2(gcd(2, n))` -/
def P16252473259997522203.Spec : Prop :=
  ∀ n, P16252473259997522203.a n = (A214560 n : ℝ)

end A214560

/-! ## A214560.P1022222714630688373

`A233272(floor(n²/2))-ceil(n²/2)`
-/

namespace A214560.P1022222714630688373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 ⌊(n ^ 2 : ℚ) / 2⌋.toNat - ⌈(n ^ 2 : ℚ) / 2⌉

end

end A214560.P1022222714630688373

namespace A214560

/-- `A233272(floor(n²/2))-ceil(n²/2)` -/
def P1022222714630688373.Spec : Prop :=
  ∀ n, P1022222714630688373.a n = A214560 n

end A214560

/-! ## A214560.P2620513360644322113

`A023416(A000982(n))+floor(atan(n))`
-/

namespace A214560.P2620513360644322113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000982 n).toNat + ⌊Real.arctan (n : ℝ)⌋

end

end A214560.P2620513360644322113

namespace A214560

/-- `A023416(A000982(n))+floor(atan(n))` -/
def P2620513360644322113.Spec : Prop :=
  ∀ n, P2620513360644322113.a n = A214560 n

end A214560

/-! ## A214560.P8346550979660012948

`A008687(or(1, A000982(n)))-A000035(n)`
-/

namespace A214560.P8346550979660012948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Int.lor 1 (A000982 n)).toNat - A000035 n

end

end A214560.P8346550979660012948

namespace A214560

/-- `A008687(or(1, A000982(n)))-A000035(n)` -/
def P8346550979660012948.Spec : Prop :=
  ∀ n, P8346550979660012948.a n = A214560 n

end A214560

/-! ## A214560.P5733617254662055596

`A008687(or(1, A000982(n)))-A059841(n+1)`
-/

namespace A214560.P5733617254662055596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Int.lor 1 (A000982 n)).toNat - A059841 (n + 1)

end

end A214560.P5733617254662055596

namespace A214560

/-- `A008687(or(1, A000982(n)))-A059841(n+1)` -/
def P5733617254662055596.Spec : Prop :=
  ∀ n, P5733617254662055596.a n = A214560 n

end A214560

/-! ## A214560.P4780653366769112300

`A023416(A000982(n))+A001221(A060594(n+1))`
-/

namespace A214560.P4780653366769112300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000982 n).toNat + A001221 (A060594 (n + 1)).toNat

end

end A214560.P4780653366769112300

namespace A214560

/-- `A023416(A000982(n))+A001221(A060594(n+1))` -/
def P4780653366769112300.Spec : Prop :=
  ∀ n, P4780653366769112300.a n = A214560 n

end A214560

/-! ## A214560.P12506169455871521634

`A000120(A334042(n))`
-/

namespace A214560.P12506169455871521634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334042 n).toNat

end

end A214560.P12506169455871521634

namespace A214560

/-- `A000120(A334042(n))` -/
def P12506169455871521634.Spec : Prop :=
  ∀ n, P12506169455871521634.a n = A214560 n

end A214560

/-! ## A214560.P11290376168951140350

`A020944(A267584(n²))`
-/

namespace A214560.P11290376168951140350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A267584 (n ^ 2)).toNat

end

end A214560.P11290376168951140350

namespace A214560

/-- `A020944(A267584(n²))` -/
def P11290376168951140350.Spec : Prop :=
  ∀ n, P11290376168951140350.a n = A214560 n

end A214560

/-! ## A214560.P18439889034612051988

`A000120(A035327(n²))`
-/

namespace A214560.P18439889034612051988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 (n ^ 2)).toNat

end

end A214560.P18439889034612051988

namespace A214560

/-- `A000120(A035327(n²))` -/
def P18439889034612051988.Spec : Prop :=
  ∀ n, P18439889034612051988.a n = A214560 n

end A214560

/-!
# A214565: Sum(M(t)), where summation is over all rooted trees t with n vertices and M(t) is the number of ways to take apart t by sequentially removing terminal edges (see A206494).

The programs for A214565, there is no canonical definition to state claims against.
-/

/-! ## A214565.P14335304469317686541

`A108954(lcm(n!*∑[(-2)^n], n!))+n!-1`
-/

namespace A214565.P14335304469317686541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lcm ((Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.factorial n : ℤ)) + ((Nat.factorial n : ℤ) - 1)

end

end A214565.P14335304469317686541

/-! ## A214565.P762425029253372046

`A219635(A026151(n))`
-/

namespace A214565.P762425029253372046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219635 (A026151 n).toNat

end

end A214565.P762425029253372046

/-!
# A214566: Number of star-vertices in the rooted tree with Matula-Goebel number n.

The programs for A214566, there is no canonical definition to state claims against.
-/

/-! ## A214566.P10394271768366685620

`A342507(n+1)-A342507(A198328(n+1))`
-/

namespace A214566.P10394271768366685620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A342507 (A198328 (n + 1)).toNat

end

end A214566.P10394271768366685620

/-! ## A214566.P13239917315737073964

`A323436(A198329(n+1))%A062571(n+1)`
-/

namespace A214566.P13239917315737073964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323436 (A198329 (n + 1)).toNat) (A062571 (n + 1))

end

end A214566.P13239917315737073964

/-! ## A214566.P5400790676309962102

`A304486(A198329(2*(n+1)))-A000007(n)`
-/

namespace A214566.P5400790676309962102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304486 (A198329 (2 * (n + 1))).toNat - A000007 n

end

end A214566.P5400790676309962102

/-! ## A214566.P3376073014830396091

`A304486(A198329(2*(n+1)))%A273538(n)`
-/

namespace A214566.P3376073014830396091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304486 (A198329 (2 * (n + 1))).toNat) (A273538 n)

end

end A214566.P3376073014830396091

/-! ## A214566.P16025669663560334977

`A342507(n+1)-A342507(A198329(2*(n+1)))`
-/

namespace A214566.P16025669663560334977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) - A342507 (A198329 (2 * (n + 1))).toNat

end

end A214566.P16025669663560334977

/-!
# A214567: Maximal number of distinct rooted trees obtained from the rooted tree with Matula-Goebel number n by adding one pendant edge at one of its vertices.

The programs for A214567, there is no canonical definition to state claims against.
-/

/-! ## A214567.P8685587512386645000

`A061775(or(A244173(n), A348066(n+1)))`
-/

namespace A214567.P8685587512386645000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (Int.lor (A244173 (n + 10)) (A348066 (n + 1))).toNat

end

end A214567.P8685587512386645000

/-! ## A214567.P14084623773123174142

`A061775(A348066(n+1)%A317711(3*n+1))`
-/

namespace A214567.P14084623773123174142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (Int.tmod (A348066 (n + 1)) (A317711 (3 * n + 1))).toNat

end

end A214567.P14084623773123174142

/-! ## A214567.P4745343653315046624

`A061775(A348066(n+1))*A166486(A058919(n))`
-/

namespace A214567.P4745343653315046624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A348066 (n + 1)).toNat * A166486 (A058919 n).toNat

end

end A214567.P4745343653315046624

/-! ## A214567.P7008179355047166964

`A061775(A348066(n+1))%A202009(A004277(n))`
-/

namespace A214567.P7008179355047166964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061775 (A348066 (n + 1)).toNat) (A202009 (A004277 n).toNat)

end

end A214567.P7008179355047166964

/-! ## A214567.P2887289185885379655

`A061775(A348066(n+1))*A136522(A002385(n+1))`
-/

namespace A214567.P2887289185885379655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A348066 (n + 1)).toNat * A136522 (A002385 (n + 1)).toNat

end

end A214567.P2887289185885379655

/-!
# A214568: Triangle read by rows: T(n,k) is the number of rooted trees t with n vertices yielding k distinct rooted trees with n+1 vertices when a pendant edge is added to a vertex of t (1 <= k <= n).

The programs for A214568, there is no canonical definition to state claims against.
-/

/-! ## A214568.P1259746236007888824

`xor(A151755(A226874(n)), A318601(n+1))`
-/

namespace A214568.P1259746236007888824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A226874 n).toNat) (A318601 (n + 1))

end

end A214568.P1259746236007888824

/-! ## A214568.P11086152743663380420

`A318601(n+1)-A185284(A037988(n))`
-/

namespace A214568.P11086152743663380420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318601 (n + 1) - A185284 (A037988 n).toNat

end

end A214568.P11086152743663380420

/-! ## A214568.P6756817445017063440

`A318601(n+1)-A196272(A156953(n))`
-/

namespace A214568.P6756817445017063440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318601 (n + 1) - A196272 (A156953 n).toNat

end

end A214568.P6756817445017063440

/-! ## A214568.P17752868351179645953

`gcd(A107846(A351244(n+1)), A318601(n+1))`
-/

namespace A214568.P17752868351179645953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 (A351244 (n + 1)).toNat) (A318601 (n + 1))

end

end A214568.P17752868351179645953

/-! ## A214568.P9218577813827680174

`A178487(A318602(n+1)^3)-A014083(A226874(n))`
-/

namespace A214568.P9218577813827680174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A318602 (n + 1) ^ 3).toNat - A014083 (A226874 n).toNat

end

end A214568.P9218577813827680174

/-!
# A214570: a(n) = Max(c(t)), where c(t) is the number of ordered trees isomorphic - as rooted trees - to the rooted tree t and the maximum is taken over all rooted trees with n vertices.

The programs for A214570, there is no canonical definition to state claims against.
-/

/-! ## A214570.P3284727564084716229

`A067595(∑[∑[A169696(n+1)]])`
-/

namespace A214570.P3284727564084716229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A214570.P3284727564084716229

/-! ## A214570.P5644783971943424133

`A370809(n²-A231237(n+1))`
-/

namespace A214570.P5644783971943424133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 ((n ^ 2 : ℤ) - A231237 (n + 1)).toNat

end

end A214570.P5644783971943424133

/-! ## A214570.P6771586687113829738

`A274168(2*n)+1-A274144(n)`
-/

namespace A214570.P6771586687113829738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274168 (2 * n) + 1 - A274144 n

end

end A214570.P6771586687113829738

/-! ## A214570.P17036239119655334276

`A130043(A000930(comp[3*∑{d}[n+1, #]]))`
-/

namespace A214570.P17036239119655334276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f2 n), d)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130043 (A000930 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A214570.P17036239119655334276

/-!
# A214572: The Matula-Goebel numbers of the rooted trees having 8 vertices.

The programs for A214572, there is no canonical definition to state claims against.
-/

/-! ## A214572.P1374380497385407080

`A061773(n+86)`
-/

namespace A214572.P1374380497385407080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061773 (n + 86)

end

end A214572.P1374380497385407080

/-! ## A214572.P14381182834328918497

`eq[7, A196050(n+1)]+1`
-/

namespace A214572.P14381182834328918497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214572.P14381182834328918497

/-! ## A214572.P3084012481466938399

`eq[8, A061775(n+1)]+1`
-/

namespace A214572.P3084012481466938399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214572.P3084012481466938399

/-! ## A214572.P7546470043396610612

`eq[7, A196050(A028310(n))]`
-/

namespace A214572.P7546470043396610612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P7546470043396610612

/-! ## A214572.P15939017539471268362

`eq[9, A061775(A004277(n))]`
-/

namespace A214572.P15939017539471268362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P15939017539471268362

/-! ## A214572.P17542335302320340252

`eq[9, A196050(A008574(n))]`
-/

namespace A214572.P17542335302320340252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P17542335302320340252

/-! ## A214572.P10974273176212386897

`eq[10, A061775(A008486(n))]`
-/

namespace A214572.P10974273176212386897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P10974273176212386897

/-! ## A214572.P487725641290609791

`eq[11, A061775(A008706(n))]`
-/

namespace A214572.P487725641290609791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P487725641290609791

/-! ## A214572.P13532270538195715454

`eq[11, A061775(A008458(n))]`
-/

namespace A214572.P13532270538195715454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P13532270538195715454

/-! ## A214572.P12654012773344205358

`eq[10, A196050(A022144(n))]`
-/

namespace A214572.P12654012773344205358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P12654012773344205358

/-! ## A214572.P1152813618306777834

`eq[9, A061775(A008578(n+1))]`
-/

namespace A214572.P1152813618306777834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214572.P1152813618306777834

/-!
# A214573: Irregular triangle read by rows: the (n,k)-entry is the number of vertices with Strahler number k in the rooted tree with Matula-Goebel number n (n>=1, k>=1).

The programs for A214573, there is no canonical definition to state claims against.
-/

/-! ## A214573.P16232927154095789140

`A001511(A165459(n+1)*A352089(n+1))`
-/

namespace A214573.P16232927154095789140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A165459 (n + 1) * A352089 (n + 1)).toNat

end

end A214573.P16232927154095789140

/-! ## A214573.P9826047156743870022

`A001511(A227576(n+1)*A352089(n+1))`
-/

namespace A214573.P9826047156743870022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A227576 (n + 1) * A352089 (n + 1)).toNat

end

end A214573.P9826047156743870022

/-! ## A214573.P18097383143943490801

`A001511(A338396(n+3)*A352089(n+1))`
-/

namespace A214573.P18097383143943490801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A338396 (n + 3) * A352089 (n + 1)).toNat

end

end A214573.P18097383143943490801

/-!
# A214574: The Strahler number of the rooted tree with Matula-Goebel number n.

The programs for A214574, there is no canonical definition to state claims against.
-/

/-! ## A214574.P373853545557844756

`ceil(cosh(A191515(n+1)/A020639(n+2)))`
-/

namespace A214574.P373853545557844756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((A191515 (n + 1) : ℚ) / (A020639 (n + 2) : ℚ) : ℝ)⌉

end

end A214574.P373853545557844756

/-! ## A214574.P16001819619755756831

`ceil(A191515(n+1)/A278744(n+1))+1`
-/

namespace A214574.P16001819619755756831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191515 (n + 1) : ℚ) / (A278744 (n + 1) : ℚ)⌉ + 1

end

end A214574.P16001819619755756831

/-! ## A214574.P13996394387422255990

`A000005(A191515(n+1)^a(A191515(n+2))+1)` with `a(0)=1`
-/

namespace A214574.P13996394387422255990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((A191515 (n + 1) : ℚ) ^ (a (A191515 (n + 2)).toNat : ℤ) + 1)).toNat

end

end A214574.P13996394387422255990

/-!
# A214575: Triangle read by rows: T(n,k) is the number of partitions of n in which each part is divisible by the next and have first part equal to k (1 <= k <= n).

The programs for A214575, there is no canonical definition to state claims against.
-/

/-! ## A214575.P348337733247809911

`A301343(comp[∑[n]])`
-/

namespace A214575.P348337733247809911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A214575.P348337733247809911

/-! ## A214575.P9331686687604456299

`gcd(A000038(n), A301343(A014132(n+1)))`
-/

namespace A214575.P9331686687604456299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A301343 (A014132 (n + 1)).toNat)

end

end A214575.P9331686687604456299

/-! ## A214575.P486596158808186110

`A057427(n+1)*A301343(A014132(n+1))`
-/

namespace A214575.P486596158808186110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A301343 (A014132 (n + 1)).toNat

end

end A214575.P486596158808186110

/-! ## A214575.P18378615465255414224

`A301343(A014132(n+1))+C(n, A036696(n))`
-/

namespace A214575.P18378615465255414224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A036696 n).toNat : ℤ)

end

end A214575.P18378615465255414224

/-! ## A214575.P13740549779994975386

`A301343(A014132(n+1))+C(n, A250120(n))`
-/

namespace A214575.P13740549779994975386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A250120 n).toNat : ℤ)

end

end A214575.P13740549779994975386

/-! ## A214575.P2552863234090300114

`A301343(A014132(n+1))+C(n, A310303(n))`
-/

namespace A214575.P2552863234090300114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A310303 n).toNat : ℤ)

end

end A214575.P2552863234090300114

/-! ## A214575.P2960186975241320348

`A301343(A014132(n+1))+C(n, A310960(n))`
-/

namespace A214575.P2960186975241320348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A310960 n).toNat : ℤ)

end

end A214575.P2960186975241320348

/-! ## A214575.P4641232171431728806

`A301343(A014132(n+1))+C(n, A311091(n))`
-/

namespace A214575.P4641232171431728806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A311091 n).toNat : ℤ)

end

end A214575.P4641232171431728806

/-! ## A214575.P2367613333064029733

`A301343(A014132(n+1))+C(n, A311454(n))`
-/

namespace A214575.P2367613333064029733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A311454 n).toNat : ℤ)

end

end A214575.P2367613333064029733

/-! ## A214575.P2639470134197435027

`A301343(A014132(n+1))+C(n, A313624(n))`
-/

namespace A214575.P2639470134197435027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301343 (A014132 (n + 1)).toNat + (Nat.choose n (A313624 n).toNat : ℤ)

end

end A214575.P2639470134197435027

/-!
# A214576: Triangle read by rows: T(n,k) is the number of partitions of n in which each part is divisible by the next and have last part equal to k (1<=k<=n).

The programs for A214576, there is no canonical definition to state claims against.
-/

/-! ## A214576.P9769720172389848615

`A003238(A010766(n+1))*A051731(n+1)`
-/

namespace A214576.P9769720172389848615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A214576.P9769720172389848615

/-! ## A214576.P11932580276879603309

`A003238(A049834(n+1))*A051731(n+1)`
-/

namespace A214576.P11932580276879603309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A049834 (n + 1)).toNat * A051731 (n + 1)

end

end A214576.P11932580276879603309

/-! ## A214576.P13595212554513208380

`A003238(A054531(n+1))*A051731(n+1)`
-/

namespace A214576.P13595212554513208380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A054531 (n + 1)).toNat * A051731 (n + 1)

end

end A214576.P13595212554513208380

/-! ## A214576.P5704048521972386013

`A003238(A234575(n+1))*A051731(n+1)`
-/

namespace A214576.P5704048521972386013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A234575 (n + 1)).toNat * A051731 (n + 1)

end

end A214576.P5704048521972386013

/-! ## A214576.P12484584623179664228

`A003238(A010766(n+1))*A019425(A054523(n+1))`
-/

namespace A214576.P12484584623179664228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A010766 (n + 1)).toNat * A019425 (A054523 (n + 1)).toNat

end

end A214576.P12484584623179664228

/-! ## A214576.P14042919173016096804

`A003238(A010766(n+1))*A057427(A054522(n+1))`
-/

namespace A214576.P14042919173016096804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A010766 (n + 1)).toNat * A057427 (A054522 (n + 1)).toNat

end

end A214576.P14042919173016096804

/-! ## A214576.P10341299579599605645

`A003238(A010766(n+1))%A000079(A126988(n+1))`
-/

namespace A214576.P10341299579599605645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003238 (A010766 (n + 1)).toNat) (A000079 (A126988 (n + 1)).toNat)

end

end A214576.P10341299579599605645

/-! ## A214576.P17844294944468550729

`A003238(A049834(n+1))%A000079(A126988(n+1))`
-/

namespace A214576.P17844294944468550729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003238 (A049834 (n + 1)).toNat) (A000079 (A126988 (n + 1)).toNat)

end

end A214576.P17844294944468550729

/-! ## A214576.P3359497805818577934

`A003238(A051537(n+1))*A051731(n+1)`
-/

namespace A214576.P3359497805818577934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (A051537 (n + 1)).toNat * A051731 (n + 1)

end

end A214576.P3359497805818577934

/-! ## A214576.P4568135894391930855

`A143810(A120913(n+1))`
-/

namespace A214576.P4568135894391930855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (A120913 (n + 1)).toNat

end

end A214576.P4568135894391930855

/-!
# A214577: The Matula-Goebel numbers of the generalized Bethe trees. A generalized Bethe tree is a rooted tree in which vertices at the same level have the same degree.

The programs for A214577, there is no canonical definition to state claims against.
-/

/-! ## A214577.P18207616598782683759

`A000720(A280996(n+2))`
-/

namespace A214577.P18207616598782683759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A280996 (n + 2)).toNat

end

end A214577.P18207616598782683759

/-! ## A214577.P10338013705155073141

`A003963(p?[A280996(n+2)])`
-/

namespace A214577.P10338013705155073141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214577.P10338013705155073141

/-! ## A214577.P469395006613970266

`A026233(p?[A280996(n+2)])`
-/

namespace A214577.P469395006613970266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214577.P469395006613970266

/-! ## A214577.P502002629689333489

`A049084(p?[A280996(n+2)])`
-/

namespace A214577.P502002629689333489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214577.P502002629689333489

/-! ## A214577.P6005941689943944969

`A055396(p?[A280996(n+2)])`
-/

namespace A214577.P6005941689943944969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A214577.P6005941689943944969

/-! ## A214577.P16705425713268994661

`A036234(A280996(n+2)-1)`
-/

namespace A214577.P16705425713268994661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A280996 (n + 2) - 1).toNat

end

end A214577.P16705425713268994661

/-! ## A214577.P793497730885757496

`A026233(or(1, A280996(n+2)))`
-/

namespace A214577.P793497730885757496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.lor 1 (A280996 (n + 2))).toNat

end

end A214577.P793497730885757496

/-! ## A214577.P9278377644544879784

`A036234(xor(1, A280996(n+2)))`
-/

namespace A214577.P9278377644544879784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (A280996 (n + 2))).toNat

end

end A214577.P9278377644544879784

/-! ## A214577.P12752118166737589185

`A033270(p?[A280996(n+2)])+1`
-/

namespace A214577.P12752118166737589185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A214577.P12752118166737589185

/-! ## A214577.P3300855857494873074

`A003963(record[A280996(abs(1-n)+1)])`
-/

namespace A214577.P3300855857494873074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214577.P3300855857494873074

/-!
# A214578: Irregular triangle read by rows: if the rooted tree with Matula-Goebel number n is a generalized Bethe tree, then row n is the sequence of the associated partition numbers; otherwise, row n consists of a single 0.

The programs for A214578, there is no canonical definition to state claims against.
-/

/-! ## A214578.P2051379604318362958

`A249617(n)%A277447(A100484(n+1))`
-/

namespace A214578.P2051379604318362958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249617 n) (A277447 (A100484 (n + 1)).toNat)

end

end A214578.P2051379604318362958

/-! ## A214578.P1134806186230376807

`A193238(lcm(A033045(n), A052382(n+1)))`
-/

namespace A214578.P1134806186230376807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (Int.lcm (A033045 n) (A052382 (n + 1)))

end

end A214578.P1134806186230376807

/-! ## A214578.P2389386436947673682

`A102677(and(A004771(n), A330503(n+1))²)`
-/

namespace A214578.P2389386436947673682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (Int.land (A004771 n) (A330503 (n + 1)) ^ 2).toNat

end

end A214578.P2389386436947673682

/-! ## A214578.P16627810421172612043

`A001222(A061955(n+1)%A019565(n+4))`
-/

namespace A214578.P16627810421172612043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A061955 (n + 1)) (A019565 (n + 4))).toNat

end

end A214578.P16627810421172612043

/-! ## A214578.P13870032148343224360

`A100073(A310455(n)+A147121(n+1))`
-/

namespace A214578.P13870032148343224360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (A310455 n + A147121 (n + 1)).toNat

end

end A214578.P13870032148343224360

/-!
# A214579: Number of partitions of n in which each part is divisible by the next and have no parts equal to 1.

The programs for A214579, there is no canonical definition to state claims against.
-/

/-! ## A214579.P2683548338410967610

`A003238(n+2)-A003238(n+1)`
-/

namespace A214579.P2683548338410967610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 2) - A003238 (n + 1)

end

end A214579.P2683548338410967610

/-! ## A214579.P2033570979719560529

`Δ[A003238(n+1)]`
-/

namespace A214579.P2033570979719560529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214579.P2033570979719560529

/-! ## A214579.P7099166581310257647

`abs(Δ[A003238(ϕ²-(ϕ-n))])`
-/

namespace A214579.P7099166581310257647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003238 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A214579.P7099166581310257647

/-! ## A214579.P11481622803759720589

`Δ[A002033(n)/A067824(n+1)*A068336(n+1)]`
-/

namespace A214579.P11481622803759720589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002033 n : ℚ) / (A067824 (n + 1) : ℚ) * (A068336 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214579.P11481622803759720589

/-! ## A214579.P3088654453324937988

`(A003238(n+2)+A003238(n+1))%A068336(n+1)`
-/

namespace A214579.P3088654453324937988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003238 (n + 2) + A003238 (n + 1)) (A068336 (n + 1))

end

end A214579.P3088654453324937988

/-! ## A214579.P2875599616598893251

`Δ[A068336(n+1)/A068324(A068319(n+4))]`
-/

namespace A214579.P2875599616598893251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A068324 (A068319 (n + 4)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214579.P2875599616598893251

/-! ## A214579.P4279809198441208988

`Δ[A143810(∑[n+1])]`
-/

namespace A214579.P4279809198441208988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214579.P4279809198441208988

/-! ## A214579.P1397894107701340006

`Δ[A214576(∑[n]+1)]`
-/

namespace A214579.P1397894107701340006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214576 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214579.P1397894107701340006

/-! ## A214579.P13533305075178288531

`Δ[A004525(A068336(n+1))]`
-/

namespace A214579.P13533305075178288531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A068336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214579.P13533305075178288531

/-!
# A214583: Numbers m such that for all k with gcd(m, k) = 1 and m > k^2, m - k^2 is prime.

The programs for A214583, there is no canonical definition to state claims against.
-/

/-! ## A214583.P12685952472891374624

`A224075(∑[A224076(n+1)])+1`
-/

namespace A214583.P12685952472891374624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224075 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A214583.P12685952472891374624

/-! ## A214583.P7207954571922574758

`A000203(A224075(∑[A224076(n+1)]))`
-/

namespace A214583.P7207954571922574758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A224075 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A214583.P7207954571922574758

/-! ## A214583.P15959822784053248062

`record[A224075(n+1)%A090961(n+4)+1]`
-/

namespace A214583.P15959822784053248062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224075 (n + 1)) (A090961 (n + 4)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214583.P15959822784053248062

/-! ## A214583.P13018789400918470919

`∩[A030475(n+1), A291442(n+1)]+1`
-/

namespace A214583.P13018789400918470919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A214583.P13018789400918470919

/-! ## A214583.P9976105120180777894

`∩[A069678(n+1), A291442(n+1)]+1`
-/

namespace A214583.P9976105120180777894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A214583.P9976105120180777894

/-!
# A214584: Integers whose decimal representation has only digits in {4,5,7}.

The programs for A214584, there is no canonical definition to state claims against.
-/

/-! ## A214584.P12919487457503251236

`A048379(A107665(n+1)-A007932(n+1))`
-/

namespace A214584.P12919487457503251236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A107665 (n + 1) - A007932 (n + 1)).toNat

end

end A214584.P12919487457503251236

/-! ## A214584.P15743251712833869190

`eq[A006942(n), A119281(n)]`
-/

namespace A214584.P15743251712833869190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214584.P15743251712833869190

/-! ## A214584.P13811805099417451113

`eq[A006942(n), A280913(n)]`
-/

namespace A214584.P13811805099417451113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214584.P13811805099417451113

/-! ## A214584.P11818396967716456096

`eq[A063720(n), A280913(n)]`
-/

namespace A214584.P11818396967716456096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214584.P11818396967716456096

/-! ## A214584.P15562055106885215701

`eq[A277116(n), A280913(n)]`
-/

namespace A214584.P15562055106885215701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214584.P15562055106885215701

/-! ## A214584.P16792372935076706951

`eq[A280913(n), A350131(n)]`
-/

namespace A214584.P16792372935076706951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214584.P16792372935076706951

/-! ## A214584.P11899221653689493379

`record[A222221(A001729(n+1))]`
-/

namespace A214584.P11899221653689493379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A001729 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214584.P11899221653689493379

/-! ## A214584.P10790870215098058470

`record[A222228(A046034(n+1))]`
-/

namespace A214584.P10790870215098058470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A046034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214584.P10790870215098058470

/-! ## A214584.P14422757164023078882

`record[A222221(A082741(n+1))]`
-/

namespace A214584.P14422757164023078882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A082741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214584.P14422757164023078882

/-! ## A214584.P4999330725293709349

`eq[n*A268643(A064770(n)), A064532(n)]`
-/

namespace A214584.P4999330725293709349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A268643 (A064770 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214584.P4999330725293709349

/-!
# A214585: Numbers k such that gcd(k!!+1,k-1) > 1.

The programs for A214585, the canonical program `A214585.P2727886227339530422` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214585 has offset 1).

The definition of A214585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214585.P2727886227339530422

`eq[1, A214054(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A214585

/-- `eq[1, A214054(n+1)]+1` -/
def P2727886227339530422.Spec : Prop :=
  ∀ n, (P2727886227339530422.a n : ℤ) = A214585 (n + 1)

theorem P2727886227339530422.correct : P2727886227339530422.Spec := by
  intro n
  simp only [A214585, Nat.add_sub_cancel]

end A214585

/-! ## A214585.P16689247435932476948

`record[(n+2)/A214054(n+2)]`
-/

namespace A214585.P16689247435932476948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A214054 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214585.P16689247435932476948

namespace A214585

/-- `record[(n+2)/A214054(n+2)]` -/
def P16689247435932476948.Spec : Prop :=
  ∀ n, P16689247435932476948.a n = (A214585 (n + 1) : ℚ)

end A214585

/-! ## A214585.P3077419559176734804

`A214054(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A214585.P3077419559176734804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214054 (a (n - 1) + 1).toNat + a (n - 1)

end

end A214585.P3077419559176734804

namespace A214585

/-- `A214054(a(n-1)+1)+a(n-1)` -/
def P3077419559176734804.Spec : Prop :=
  ∀ n, P3077419559176734804.a n = A214585 (n + 1)

end A214585

/-! ## A214585.P1989488520249148862

`record[A032742(n+1+A214054(n+1)+n)]`
-/

namespace A214585.P1989488520249148862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) + (A214054 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214585.P1989488520249148862

namespace A214585

/-- `record[A032742(n+1+A214054(n+1)+n)]` -/
def P1989488520249148862.Spec : Prop :=
  ∀ n, P1989488520249148862.a n = A214585 (n + 1)

end A214585

/-! ## A214585.P10088901795304196369

`record[A214054(A057979(n+1)+1)+A057979(n+1)]`
-/

namespace A214585.P10088901795304196369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (A057979 (n + 1) + 1).toNat + A057979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214585.P10088901795304196369

namespace A214585

/-- `record[A214054(A057979(n+1)+1)+A057979(n+1)]` -/
def P10088901795304196369.Spec : Prop :=
  ∀ n, P10088901795304196369.a n = A214585 (n + 1)

end A214585

/-!
# A214586: Numbers k such that gcd(k!!+1,k-1) = 1.

The programs for A214586, the canonical program `A214586.P4542991298950632381` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214586 has offset 1).

The definition of A214586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214586.P4542991298950632381

`lt[1, A214054(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A214586

/-- `lt[1, A214054(n+1)]+1` -/
def P4542991298950632381.Spec : Prop :=
  ∀ n, (P4542991298950632381.a n : ℤ) = A214586 (n + 1)

theorem P4542991298950632381.correct : P4542991298950632381.Spec := by
  intro n
  simp only [A214586, Nat.add_sub_cancel]

end A214586

/-! ## A214586.P9249228925863360587

`eq[2, A214054(n+2)]+2`
-/

namespace A214586.P9249228925863360587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A214586.P9249228925863360587

namespace A214586

/-- `eq[2, A214054(n+2)]+2` -/
def P9249228925863360587.Spec : Prop :=
  ∀ n, (P9249228925863360587.a n : ℤ) = A214586 (n + 1)

end A214586

/-! ## A214586.P17776747554968513367

`record[(n+1)*A214054(2*(n+1))]`
-/

namespace A214586.P17776747554968513367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A214054 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214586.P17776747554968513367

namespace A214586

/-- `record[(n+1)*A214054(2*(n+1))]` -/
def P17776747554968513367.Spec : Prop :=
  ∀ n, P17776747554968513367.a n = A214586 (n + 1)

end A214586

/-! ## A214586.P12416050861347750040

`A014681(lt[1, A214054(n+1)])`
-/

namespace A214586.P12416050861347750040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A214586.P12416050861347750040

namespace A214586

/-- `A014681(lt[1, A214054(n+1)])` -/
def P12416050861347750040.Spec : Prop :=
  ∀ n, P12416050861347750040.a n = A214586 (n + 1)

end A214586

/-! ## A214586.P3948561977235238019

`A014681(eq[2, A214054(n+1)])`
-/

namespace A214586.P3948561977235238019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214586.P3948561977235238019

namespace A214586

/-- `A014681(eq[2, A214054(n+1)])` -/
def P3948561977235238019.Spec : Prop :=
  ∀ n, P3948561977235238019.a n = A214586 (n + 1)

end A214586

/-! ## A214586.P7032456195413008546

`eq[2, A214054(A065190(n+1))]`
-/

namespace A214586.P7032456195413008546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A214586.P7032456195413008546

namespace A214586

/-- `eq[2, A214054(A065190(n+1))]` -/
def P7032456195413008546.Spec : Prop :=
  ∀ n, (P7032456195413008546.a n : ℤ) = A214586 (n + 1)

end A214586

/-! ## A214586.P10785105738550065427

`A092486(eq[2, A214054(n+1)])`
-/

namespace A214586.P10785105738550065427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214586.P10785105738550065427

namespace A214586

/-- `A092486(eq[2, A214054(n+1)])` -/
def P10785105738550065427.Spec : Prop :=
  ∀ n, P10785105738550065427.a n = A214586 (n + 1)

end A214586

/-! ## A214586.P8357202333806959484

`A133265(eq[2, A214054(n+1)])`
-/

namespace A214586.P8357202333806959484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214586.P8357202333806959484

namespace A214586

/-- `A133265(eq[2, A214054(n+1)])` -/
def P8357202333806959484.Spec : Prop :=
  ∀ n, P8357202333806959484.a n = A214586 (n + 1)

end A214586

/-! ## A214586.P2992816026376637418

`A168232(eq[2, A214054(n+1)])`
-/

namespace A214586.P2992816026376637418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214586.P2992816026376637418

namespace A214586

/-- `A168232(eq[2, A214054(n+1)])` -/
def P2992816026376637418.Spec : Prop :=
  ∀ n, P2992816026376637418.a n = A214586 (n + 1)

end A214586

/-!
# A214587: Greatest common divisor of a number and its last decimal digit: a(n) = gcd(n, n mod 10).

The programs for A214587, the canonical program `A214587.P11206494941067663590` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214587 has offset 0).

The definition of A214587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A214587.P11206494941067663590

`gcd(n, n%10)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214587

/-- `gcd(n, n%10)` -/
def P11206494941067663590.Spec : Prop :=
  ∀ n, (P11206494941067663590.a n : ℤ) = A214587 n

theorem P11206494941067663590.correct : P11206494941067663590.Spec := by
  intro n
  simp only [A214587]

end A214587

/-! ## A214587.P10427115447973429703

`gcd(n, A010879(n))`
-/

namespace A214587.P10427115447973429703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A010879 n)

end

end A214587.P10427115447973429703

namespace A214587

/-- `gcd(n, A010879(n))` -/
def P10427115447973429703.Spec : Prop :=
  ∀ n, (P10427115447973429703.a n : ℤ) = A214587 n

end A214587

/-! ## A214587.P14709576423754141598

`gcd(A169932(n)+n, A169932(n))`
-/

namespace A214587.P14709576423754141598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169932 n + (n : ℤ)) (A169932 n)

end

end A214587.P14709576423754141598

namespace A214587

/-- `gcd(A169932(n)+n, A169932(n))` -/
def P14709576423754141598.Spec : Prop :=
  ∀ n, (P14709576423754141598.a n : ℤ) = A214587 n

end A214587

/-! ## A214587.P15663240205078315824

`gcd(A055120(A055120(n)), A169932(n))`
-/

namespace A214587.P15663240205078315824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055120 (A055120 n).toNat) (A169932 n)

end

end A214587.P15663240205078315824

namespace A214587

/-- `gcd(A055120(A055120(n)), A169932(n))` -/
def P15663240205078315824.Spec : Prop :=
  ∀ n, (P15663240205078315824.a n : ℤ) = A214587 n

end A214587

/-! ## A214587.P14117833452589969207

`gcd(A008592(A059995(n)), A078898(2*n))`
-/

namespace A214587.P14117833452589969207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 (A059995 n).toNat) (A078898 (2 * n))

end

end A214587.P14117833452589969207

namespace A214587

/-- `gcd(A008592(A059995(n)), A078898(2*n))` -/
def P14117833452589969207.Spec : Prop :=
  ∀ n, (P14117833452589969207.a n : ℤ) = A214587 n

end A214587

/-! ## A214587.P12067082744262792112

`gcd(A144468(3*n), A329116(n²))`
-/

namespace A214587.P12067082744262792112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144468 (3 * n)) (A329116 (n ^ 2))

end

end A214587.P12067082744262792112

namespace A214587

/-- `gcd(A144468(3*n), A329116(n²))` -/
def P12067082744262792112.Spec : Prop :=
  ∀ n, (P12067082744262792112.a n : ℤ) = A214587 n

end A214587

/-! ## A214587.P13838303110115289310

`gcd(A013636(A013636(n)), A102491(n+1))`
-/

namespace A214587.P13838303110115289310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013636 (A013636 n).toNat) (A102491 (n + 1))

end

end A214587.P13838303110115289310

namespace A214587

/-- `gcd(A013636(A013636(n)), A102491(n+1))` -/
def P13838303110115289310.Spec : Prop :=
  ∀ n, (P13838303110115289310.a n : ℤ) = A214587 n

end A214587

/-! ## A214587.P17190932440149640135

`gcd(A118759(A118761(n+1)), A118759(n))`
-/

namespace A214587.P17190932440149640135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118759 (A118761 (n + 1)).toNat) (A118759 n)

end

end A214587.P17190932440149640135

namespace A214587

/-- `gcd(A118759(A118761(n+1)), A118759(n))` -/
def P17190932440149640135.Spec : Prop :=
  ∀ n, (P17190932440149640135.a n : ℤ) = A214587 n

end A214587

/-!
# A214588: Primes p such that p mod 16 < 8.

The programs for A214588, the canonical program `A214588.P9018824008982424751` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214588 has offset 1).

The definition of A214588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214588.P9018824008982424751

`p?[2*n-and(7, n)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A214588

/-- `p?[2*n-and(7, n)]` -/
def P9018824008982424751.Spec : Prop :=
  ∀ n, P9018824008982424751.a n = A214588 (n + 1)

theorem P9018824008982424751.correct : P9018824008982424751.Spec := by
  intro n
  simp only [A214588, Nat.add_sub_cancel]

end A214588

/-! ## A214588.P1176294275646895212

`p?[n%or(8, n)]`
-/

namespace A214588.P1176294275646895212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 8 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214588.P1176294275646895212

namespace A214588

/-- `p?[n%or(8, n)]` -/
def P1176294275646895212.Spec : Prop :=
  ∀ n, (P1176294275646895212.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P13098911710419663379

`record[p?[and(n, -9)]]`
-/

namespace A214588.P13098911710419663379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214588.P13098911710419663379

namespace A214588

/-- `record[p?[and(n, -9)]]` -/
def P13098911710419663379.Spec : Prop :=
  ∀ n, P13098911710419663379.a n = A214588 (n + 1)

end A214588

/-! ## A214588.P1493292756556766803

`p?[xor(8, n-1)%(n+3)]`
-/

namespace A214588.P1493292756556766803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 8 ((n : ℤ) - 1)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214588.P1493292756556766803

namespace A214588

/-- `p?[xor(8, n-1)%(n+3)]` -/
def P1493292756556766803.Spec : Prop :=
  ∀ n, P1493292756556766803.a n = A214588 (n + 1)

end A214588

/-! ## A214588.P293975098381845155

`p?[comp[or(8, n)]]`
-/

namespace A214588.P293975098381845155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214588.P293975098381845155

namespace A214588

/-- `p?[comp[or(8, n)]]` -/
def P293975098381845155.Spec : Prop :=
  ∀ n, (P293975098381845155.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P11121114937770394273

`p?[lt[n, or(8, n)]]`
-/

namespace A214588.P11121114937770394273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214588.P11121114937770394273

namespace A214588

/-- `p?[lt[n, or(8, n)]]` -/
def P11121114937770394273.Spec : Prop :=
  ∀ n, (P11121114937770394273.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P1817272481460466451

`p?[lt[n, xor(8, n)]]`
-/

namespace A214588.P1817272481460466451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214588.P1817272481460466451

namespace A214588

/-- `p?[lt[n, xor(8, n)]]` -/
def P1817272481460466451.Spec : Prop :=
  ∀ n, (P1817272481460466451.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P5528364473998652247

`p?[comp[record[xor(8, n)]]]`
-/

namespace A214588.P5528364473998652247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214588.P5528364473998652247

namespace A214588

/-- `p?[comp[record[xor(8, n)]]]` -/
def P5528364473998652247.Spec : Prop :=
  ∀ n, (P5528364473998652247.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P12977470537052643205

`eq[A062584(n), A066336(n)]`
-/

namespace A214588.P12977470537052643205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P12977470537052643205

namespace A214588

/-- `eq[A062584(n), A066336(n)]` -/
def P12977470537052643205.Spec : Prop :=
  ∀ n, (P12977470537052643205.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P17747106960669074759

`eq[A064502(n), A066336(n)]`
-/

namespace A214588.P17747106960669074759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P17747106960669074759

namespace A214588

/-- `eq[A064502(n), A066336(n)]` -/
def P17747106960669074759.Spec : Prop :=
  ∀ n, (P17747106960669074759.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P7185945962768255418

`eq[A003415(n), A143622(n)]`
-/

namespace A214588.P7185945962768255418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P7185945962768255418

namespace A214588

/-- `eq[A003415(n), A143622(n)]` -/
def P7185945962768255418.Spec : Prop :=
  ∀ n, (P7185945962768255418.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P16310028912683101005

`eq[A066336(n), A084413(n)]`
-/

namespace A214588.P16310028912683101005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P16310028912683101005

namespace A214588

/-- `eq[A066336(n), A084413(n)]` -/
def P16310028912683101005.Spec : Prop :=
  ∀ n, (P16310028912683101005.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P11984785507581513253

`eq[A018783(n), A143622(n)]`
-/

namespace A214588.P11984785507581513253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P11984785507581513253

namespace A214588

/-- `eq[A018783(n), A143622(n)]` -/
def P11984785507581513253.Spec : Prop :=
  ∀ n, (P11984785507581513253.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P918399513856161794

`eq[A032741(n), A143622(n)]`
-/

namespace A214588.P918399513856161794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P918399513856161794

namespace A214588

/-- `eq[A032741(n), A143622(n)]` -/
def P918399513856161794.Spec : Prop :=
  ∀ n, (P918399513856161794.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P13712266395068514595

`eq[A105700(n), A143622(n)]`
-/

namespace A214588.P13712266395068514595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P13712266395068514595

namespace A214588

/-- `eq[A105700(n), A143622(n)]` -/
def P13712266395068514595.Spec : Prop :=
  ∀ n, (P13712266395068514595.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P3882874719083567097

`eq[A143622(n), A175126(n)]`
-/

namespace A214588.P3882874719083567097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P3882874719083567097

namespace A214588

/-- `eq[A143622(n), A175126(n)]` -/
def P3882874719083567097.Spec : Prop :=
  ∀ n, (P3882874719083567097.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P18143028844874530386

`eq[A066336(n), A272476(n)]`
-/

namespace A214588.P18143028844874530386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P18143028844874530386

namespace A214588

/-- `eq[A066336(n), A272476(n)]` -/
def P18143028844874530386.Spec : Prop :=
  ∀ n, (P18143028844874530386.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P15315003354012619544

`eq[A066336(n), A327420(n)]`
-/

namespace A214588.P15315003354012619544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P15315003354012619544

namespace A214588

/-- `eq[A066336(n), A327420(n)]` -/
def P15315003354012619544.Spec : Prop :=
  ∀ n, (P15315003354012619544.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P12994921680233661075

`eq[A143622(n), A302055(n)]`
-/

namespace A214588.P12994921680233661075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P12994921680233661075

namespace A214588

/-- `eq[A143622(n), A302055(n)]` -/
def P12994921680233661075.Spec : Prop :=
  ∀ n, (P12994921680233661075.a n : ℤ) = A214588 (n + 1)

end A214588

/-! ## A214588.P3781900120856940772

`eq[A143622(n), A328771(n)]`
-/

namespace A214588.P3781900120856940772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214588.P3781900120856940772

namespace A214588

/-- `eq[A143622(n), A328771(n)]` -/
def P3781900120856940772.Spec : Prop :=
  ∀ n, (P3781900120856940772.a n : ℤ) = A214588 (n + 1)

end A214588

/-!
# A214589: Number of nXnXn triangular 0..2 arrays with every horizontal row having the same average value.

The programs for A214589, there is no canonical definition to state claims against.
-/

/-! ## A214589.P10563866119741787613

`A386649(n+1)+2`
-/

namespace A214589.P10563866119741787613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386649 (n + 1) + 2

end

end A214589.P10563866119741787613

/-! ## A214589.P13579373063360550867

`∏[Δ[A097893(n)]]+2`
-/

namespace A214589.P13579373063360550867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214589.P13579373063360550867

/-! ## A214589.P13142906944678724975

`∏[record[A115990(n)]]+2`
-/

namespace A214589.P13142906944678724975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214589.P13142906944678724975

/-! ## A214589.P4417882862841858115

`∏[A002426(n+1)]+2`
-/

namespace A214589.P4417882862841858115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214589.P4417882862841858115

/-! ## A214589.P5325767562661651034

`∏[A115990(A000217(n+1))]+2`
-/

namespace A214589.P5325767562661651034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115990 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A214589.P5325767562661651034

/-!
# A214590: Number of nXnXn triangular 0..3 arrays with every horizontal row having the same average value.

The programs for A214590, there is no canonical definition to state claims against.
-/

/-! ## A214590.P10864114463521428288

`A214595(∑[n+3]+1)`
-/

namespace A214590.P10864114463521428288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214590.P10864114463521428288

/-! ## A214590.P5792600843577130147

`record[A214595(A069981(n+4)+1)]`
-/

namespace A214590.P5792600843577130147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A069981 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214590.P5792600843577130147

/-! ## A214590.P1868153271478023142

`record[A194702(n+1)*A214595(n+1)]`
-/

namespace A214590.P1868153271478023142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194702 (n + 1) * A214595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214590.P1868153271478023142

/-!
# A214591: Number of nXnXn triangular 0..4 arrays with every horizontal row having the same average value.

The programs for A214591, there is no canonical definition to state claims against.
-/

/-! ## A214591.P4897646220609049619

`A214595(A141214(n+1))`
-/

namespace A214591.P4897646220609049619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A141214 (n + 1)).toNat

end

end A214591.P4897646220609049619

/-! ## A214591.P15715080010506483024

`A214595(A055998(n+2))`
-/

namespace A214591.P15715080010506483024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A055998 (n + 2)).toNat

end

end A214591.P15715080010506483024

/-! ## A214591.P13778792514224242838

`A214595(A056000(n)+7)`
-/

namespace A214591.P13778792514224242838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A056000 n + 7).toNat

end

end A214591.P13778792514224242838

/-! ## A214591.P16389833705379847690

`A214595(eq[3, A193592(n)])`
-/

namespace A214591.P16389833705379847690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214591.P16389833705379847690

/-! ## A214591.P12746524674347778243

`A214595(A052905(n+1)+2)`
-/

namespace A214591.P12746524674347778243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A052905 (n + 1) + 2).toNat

end

end A214591.P12746524674347778243

/-!
# A214592: Number of nXnXn triangular 0..5 arrays with every horizontal row having the same average value.

The programs for A214592, there is no canonical definition to state claims against.
-/

/-! ## A214592.P9111408132804986989

`A214595(Δ[A264443(n)])`
-/

namespace A214592.P9111408132804986989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (f1 (n + 1) - f1 n).toNat

end

end A214592.P9111408132804986989

/-! ## A214592.P740691191599372257

`A214595(A046691(n+3))`
-/

namespace A214592.P740691191599372257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A046691 (n + 3)).toNat

end

end A214592.P740691191599372257

/-! ## A214592.P17853411744893784639

`A214595(eq[2, A092921(n)])`
-/

namespace A214592.P17853411744893784639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214592.P17853411744893784639

/-! ## A214592.P7664498067938541454

`A214595(eq[4, A193592(n)])`
-/

namespace A214592.P7664498067938541454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214592.P7664498067938541454

/-! ## A214592.P13907087684840251461

`A214595(Δ[A023545(n+1)])`
-/

namespace A214592.P13907087684840251461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (f1 (n + 1) - f1 n).toNat

end

end A214592.P13907087684840251461

/-!
# A214593: Number of nXnXn triangular 0..6 arrays with every horizontal row having the same average value.

The programs for A214593, there is no canonical definition to state claims against.
-/

/-! ## A214593.P3870874349401913612

`A214595(eq[8, A243070(n+1)])`
-/

namespace A214593.P3870874349401913612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214593.P3870874349401913612

/-! ## A214593.P11847897162103458384

`A214595(Δ[A264443(n+1)]-1)`
-/

namespace A214593.P11847897162103458384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (f1 (n + 1) - f1 n - 1).toNat

end

end A214593.P11847897162103458384

/-!
# A214594: Number of n X n X n triangular 0..7 arrays with every horizontal row having the same average value.

The programs for A214594, there is no canonical definition to state claims against.
-/

/-! ## A214594.P404011309030892542

`A214595(eq[6, A193592(n)])`
-/

namespace A214594.P404011309030892542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214594.P404011309030892542

/-!
# A214595: T(n,k) = number of n X n X n triangular 0..k arrays with every horizontal row having the same average value.

The programs for A214595, there is no canonical definition to state claims against.
-/

/-! ## A214595.P5156254007299050842

`A214540(n+1)+A137748(A156883(n))`
-/

namespace A214595.P5156254007299050842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214540 (n + 1) + A137748 (A156883 n).toNat

end

end A214595.P5156254007299050842

/-! ## A214595.P6746138712831376590

`A329296(A360439(n))+A214540(n+1)`
-/

namespace A214595.P6746138712831376590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329296 (A360439 n).toNat + A214540 (n + 1)

end

end A214595.P6746138712831376590

/-!
# A214596: Number of 3X3X3 triangular 0..n arrays with every horizontal row having the same average value.

The programs for A214596, there is no canonical definition to state claims against.
-/

/-! ## A214596.P15192072927256587138

`A214595(∑[n+2]+4)`
-/

namespace A214596.P15192072927256587138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214596.P15192072927256587138

/-! ## A214596.P14130825868133558841

`A214595(A167614(n+1))%A016793(n)`
-/

namespace A214596.P14130825868133558841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214595 (A167614 (n + 1)).toNat) (A016793 n)

end

end A214596.P14130825868133558841

/-! ## A214596.P8918162751258645866

`gcd(A000038(n), A214595(A167614(n+1)))`
-/

namespace A214596.P8918162751258645866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214595 (A167614 (n + 1)).toNat)

end

end A214596.P8918162751258645866

/-! ## A214596.P7486975182260426498

`lcm(A054977(n), A214595(A167614(n+1)))`
-/

namespace A214596.P7486975182260426498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A214595 (A167614 (n + 1)).toNat)

end

end A214596.P7486975182260426498

/-! ## A214596.P14847936293364459612

`A214595(A167614(n+1))+A036861(n+1)`
-/

namespace A214596.P14847936293364459612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A167614 (n + 1)).toNat + A036861 (n + 1)

end

end A214596.P14847936293364459612

/-!
# A214597: Number of 4X4X4 triangular 0..n arrays with every horizontal row having the same average value.

The programs for A214597, there is no canonical definition to state claims against.
-/

/-! ## A214597.P9744522889223081444

`A214595(A141214(n)+7)`
-/

namespace A214597.P9744522889223081444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A141214 n + 7).toNat

end

end A214597.P9744522889223081444

/-! ## A214597.P6620959762592946433

`A214595(A052905(n)+9)`
-/

namespace A214597.P6620959762592946433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A052905 n + 9).toNat

end

end A214597.P6620959762592946433

/-! ## A214597.P10403871046494432690

`A214595(A055999(n)+10)`
-/

namespace A214597.P10403871046494432690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A055999 n + 10).toNat

end

end A214597.P10403871046494432690

/-! ## A214597.P7557339488836331761

`A214595(A167614(n+2)+1)`
-/

namespace A214597.P7557339488836331761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A167614 (n + 2) + 1).toNat

end

end A214597.P7557339488836331761

/-! ## A214597.P7770774067880890522

`A214595(A166136(n+2)-2)`
-/

namespace A214597.P7770774067880890522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A166136 (n + 2) - 2).toNat

end

end A214597.P7770774067880890522

/-!
# A214598: Number of 5X5X5 triangular 0..n arrays with every horizontal row having the same average value.

The programs for A214598, there is no canonical definition to state claims against.
-/

/-! ## A214598.P12899059292003904132

`A214595(A167499(n+3))`
-/

namespace A214598.P12899059292003904132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A167499 (n + 3)).toNat

end

end A214598.P12899059292003904132

/-! ## A214598.P9075611473208730211

`A214595(A155212(n)+13)`
-/

namespace A214598.P9075611473208730211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A155212 n + 13).toNat

end

end A214598.P9075611473208730211

/-! ## A214598.P644154605997340696

`A214595(A056000(n)+15)`
-/

namespace A214598.P644154605997340696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A056000 n + 15).toNat

end

end A214598.P644154605997340696

/-! ## A214598.P12493015103311796449

`A214595(eq[7, A066657(n)])`
-/

namespace A214598.P12493015103311796449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214598.P12493015103311796449

/-! ## A214598.P9194308868433288492

`A214595(eq[6, A131818(n+1)])`
-/

namespace A214598.P9194308868433288492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214598.P9194308868433288492

/-!
# A214599: Number of 6X6X6 triangular 0..n arrays with every horizontal row having the same average value.

The programs for A214599, there is no canonical definition to state claims against.
-/

/-! ## A214599.P15029472826938873400

`A214595(A166136(n+4))`
-/

namespace A214599.P15029472826938873400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A166136 (n + 4)).toNat

end

end A214599.P15029472826938873400

/-! ## A214599.P17464275030335353501

`A214595(A056115(n)+21)`
-/

namespace A214599.P17464275030335353501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A056115 n + 21).toNat

end

end A214599.P17464275030335353501

/-! ## A214599.P17494298718300113116

`A214595(Δ[A264443(n)]+10)`
-/

namespace A214599.P17494298718300113116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (f1 (n + 1) - f1 n + 10).toNat

end

end A214599.P17494298718300113116

/-! ## A214599.P13056695356660162237

`A214595(A000217(n+5)+6)`
-/

namespace A214599.P13056695356660162237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (A000217 (n + 5) + 6).toNat

end

end A214599.P13056695356660162237

/-! ## A214599.P12796237584756839165

`A214595(eq[7, A131818(n+1)])`
-/

namespace A214599.P12796237584756839165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214599.P12796237584756839165

