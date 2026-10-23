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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A026600: a(n) is the n-th letter of the infinite word generated from w(1)=1 inductively by w(n)=JUXTAPOSITION{w(n-1),w'(n-1),w"(n-1)}, where w(k) becomes w'(k) by the cyclic permutation 1->2->3->1 and w"(k) = (w')'(k).

The programs for A026600, the canonical program `A026600.P14773516431202194194` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026600 has offset 1).

The definition of A026600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026600.P14773516431202194194

`(a(n-1)+val(n, 3))%3+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026600

/-- `(a(n-1)+val(n, 3))%3+1` -/
def P14773516431202194194.Spec : Prop :=
  ∀ n, (P14773516431202194194.a n : ℤ) = A026600 (n + 1)

theorem P14773516431202194194.correct : P14773516431202194194.Spec := by
  intro n
  simp only [A026600, Nat.add_sub_cancel]

end A026600

/-! ## A026600.P2953136049186866656

`3-(20*n-a(floor(n/3)))%3` with `a(0)=1`
-/

namespace A026600.P2953136049186866656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - Int.tmod ((20 * n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat) 3

end

end A026600.P2953136049186866656

namespace A026600

/-- `3-(20*n-a(floor(n/3)))%3` -/
def P2953136049186866656.Spec : Prop :=
  ∀ n, P2953136049186866656.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P809459241585771502

`A053838(n)+1`
-/

namespace A026600.P809459241585771502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + 1

end

end A026600.P809459241585771502

namespace A026600

/-- `A053838(n)+1` -/
def P809459241585771502.Spec : Prop :=
  ∀ n, P809459241585771502.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P86247192840033418

`dr(gcd(12, A090193(n)))`
-/

namespace A026600.P86247192840033418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 12 (A090193 n) : ℤ)

end

end A026600.P86247192840033418

namespace A026600

/-- `dr(gcd(12, A090193(n)))` -/
def P86247192840033418.Spec : Prop :=
  ∀ n, (P86247192840033418.a n : ℤ) = A026600 (n + 1)

end A026600

/-! ## A026600.P12336476215523414379

`A004128(n)%3+1`
-/

namespace A026600.P12336476215523414379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) 3 + 1

end

end A026600.P12336476215523414379

namespace A026600

/-- `A004128(n)%3+1` -/
def P12336476215523414379.Spec : Prop :=
  ∀ n, P12336476215523414379.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P15093280723721349969

`A007089(n)%3+1`
-/

namespace A026600.P15093280723721349969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3 + 1

end

end A026600.P15093280723721349969

namespace A026600

/-- `A007089(n)%3+1` -/
def P15093280723721349969.Spec : Prop :=
  ∀ n, P15093280723721349969.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P8844195474531055658

`A023717(n)%3+1`
-/

namespace A026600.P8844195474531055658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 n) 3 + 1

end

end A026600.P8844195474531055658

namespace A026600

/-- `A023717(n)%3+1` -/
def P8844195474531055658.Spec : Prop :=
  ∀ n, P8844195474531055658.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P4384922829985504656

`A037455(n)%3+1`
-/

namespace A026600.P4384922829985504656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) 3 + 1

end

end A026600.P4384922829985504656

namespace A026600

/-- `A037455(n)%3+1` -/
def P4384922829985504656.Spec : Prop :=
  ∀ n, P4384922829985504656.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P13830886564197620825

`A046031(n)%3+1`
-/

namespace A026600.P13830886564197620825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046031 n) 3 + 1

end

end A026600.P13830886564197620825

namespace A026600

/-- `A046031(n)%3+1` -/
def P13830886564197620825.Spec : Prop :=
  ∀ n, P13830886564197620825.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P7219672913323343242

`A053735(n)%3+1`
-/

namespace A026600.P7219672913323343242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n) 3 + 1

end

end A026600.P7219672913323343242

namespace A026600

/-- `A053735(n)%3+1` -/
def P7219672913323343242.Spec : Prop :=
  ∀ n, P7219672913323343242.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P865444953978857434

`C(2, A090239(n)²)+1`
-/

namespace A026600.P865444953978857434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A090239 n ^ 2).toNat + 1

end

end A026600.P865444953978857434

namespace A026600

/-- `C(2, A090239(n)²)+1` -/
def P865444953978857434.Spec : Prop :=
  ∀ n, (P865444953978857434.a n : ℤ) = A026600 (n + 1)

end A026600

/-! ## A026600.P7453713020728370724

`(A054861(n)+n)%3+1`
-/

namespace A026600.P7453713020728370724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + (n : ℤ)) 3 + 1

end

end A026600.P7453713020728370724

namespace A026600

/-- `(A054861(n)+n)%3+1` -/
def P7453713020728370724.Spec : Prop :=
  ∀ n, P7453713020728370724.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P16959200861155615066

`abs(3-A343810(n))%3+1`
-/

namespace A026600.P16959200861155615066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |3 - A343810 n| 3 + 1

end

end A026600.P16959200861155615066

namespace A026600

/-- `abs(3-A343810(n))%3+1` -/
def P16959200861155615066.Spec : Prop :=
  ∀ n, P16959200861155615066.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P475404310765673810

`A010882(A053735(n))`
-/

namespace A026600.P475404310765673810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A053735 n).toNat

end

end A026600.P475404310765673810

namespace A026600

/-- `A010882(A053735(n))` -/
def P475404310765673810.Spec : Prop :=
  ∀ n, P475404310765673810.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P9771098698860038844

`A130784(A120855(n))`
-/

namespace A026600.P9771098698860038844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A120855 n).toNat

end

end A026600.P9771098698860038844

namespace A026600

/-- `A130784(A120855(n))` -/
def P9771098698860038844.Spec : Prop :=
  ∀ n, P9771098698860038844.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P3280492733136571765

`A279316(A006047(n))`
-/

namespace A026600.P3280492733136571765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279316 (A006047 n).toNat

end

end A026600.P3280492733136571765

namespace A026600

/-- `A279316(A006047(n))` -/
def P3280492733136571765.Spec : Prop :=
  ∀ n, P3280492733136571765.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P7325085578465785207

`A204259(A387188(n))`
-/

namespace A026600.P7325085578465785207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204259 (A387188 n).toNat

end

end A026600.P7325085578465785207

namespace A026600

/-- `A204259(A387188(n))` -/
def P7325085578465785207.Spec : Prop :=
  ∀ n, P7325085578465785207.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P15494682450049536634

`A090244(a(A090239(n)))` with `a(0)=1`
-/

namespace A026600.P15494682450049536634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090244 (a (A090239 n).toNat).toNat

end

end A026600.P15494682450049536634

namespace A026600

/-- `A090244(a(A090239(n)))` -/
def P15494682450049536634.Spec : Prop :=
  ∀ n, P15494682450049536634.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P4610140677198718651

`A092292(n)+1-A008585(n)`
-/

namespace A026600.P4610140677198718651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n + (1 - A008585 n)

end

end A026600.P4610140677198718651

namespace A026600

/-- `A092292(n)+1-A008585(n)` -/
def P4610140677198718651.Spec : Prop :=
  ∀ n, P4610140677198718651.a n = A026600 (n + 1)

end A026600

/-! ## A026600.P3158936276687909400

`A092292(n)+2-A016777(n)`
-/

namespace A026600.P3158936276687909400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n + (2 - A016777 n)

end

end A026600.P3158936276687909400

namespace A026600

/-- `A092292(n)+2-A016777(n)` -/
def P3158936276687909400.Spec : Prop :=
  ∀ n, P3158936276687909400.a n = A026600 (n + 1)

end A026600

/-!
# A026601: Numbers k such that A026600(k) = 1.

The programs for A026601, the canonical program `A026601.P8982276900419900553` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026601 has offset 1).

The definition of A026601 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079498, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026601.P8982276900419900553

`A079498(n+1)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026601

/-- `A079498(n+1)+1` -/
def P8982276900419900553.Spec : Prop :=
  ∀ n, P8982276900419900553.a n = A026601 (n + 1)

theorem P8982276900419900553.correct : P8982276900419900553.Spec := by
  intro n
  simp only [A026601, Nat.add_sub_cancel]

end A026601

/-! ## A026601.P242142422405832144

`eq[0, (a(floor(n/3))+n)%3]+1` with `a(0)=0`
-/

namespace A026601.P242142422405832144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  (f2 ⌊(n : ℚ) / 3⌋.toNat + n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A026601.P242142422405832144

namespace A026601

/-- `eq[0, (a(floor(n/3))+n)%3]+1` -/
def P242142422405832144.Spec : Prop :=
  ∀ n, (P242142422405832144.a n : ℤ) = A026601 (n + 1)

end A026601

/-! ## A026601.P12415267610142991304

`A198680(n+1)/3+1`
-/

namespace A026601.P12415267610142991304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198680 (n + 1) : ℚ) / 3 + 1

end

end A026601.P12415267610142991304

namespace A026601

/-- `A198680(n+1)/3+1` -/
def P12415267610142991304.Spec : Prop :=
  ∀ n, P12415267610142991304.a n = (A026601 (n + 1) : ℚ)

end A026601

/-! ## A026601.P15520603901936680492

`3*(n+1)-A090239(n)`
-/

namespace A026601.P15520603901936680492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A090239 n

end

end A026601.P15520603901936680492

namespace A026601

/-- `3*(n+1)-A090239(n)` -/
def P15520603901936680492.Spec : Prop :=
  ∀ n, P15520603901936680492.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P14645270559369026507

`A092296(n)+A053838(n)`
-/

namespace A026601.P14645270559369026507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 n + A053838 n

end

end A026601.P14645270559369026507

namespace A026601

/-- `A092296(n)+A053838(n)` -/
def P14645270559369026507.Spec : Prop :=
  ∀ n, P14645270559369026507.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P17504599264624635456

`A092292(n)+A090193(n)`
-/

namespace A026601.P17504599264624635456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n + A090193 n

end

end A026601.P17504599264624635456

namespace A026601

/-- `A092292(n)+A090193(n)` -/
def P17504599264624635456.Spec : Prop :=
  ∀ n, P17504599264624635456.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P9508194309693110870

`A016945(n)-A092293(n)`
-/

namespace A026601.P9508194309693110870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A092293 n

end

end A026601.P9508194309693110870

namespace A026601

/-- `A016945(n)-A092293(n)` -/
def P9508194309693110870.Spec : Prop :=
  ∀ n, P9508194309693110870.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P6452664881064922673

`A016789(n)+1-A090239(n)`
-/

namespace A026601.P6452664881064922673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A090239 n)

end

end A026601.P6452664881064922673

namespace A026601

/-- `A016789(n)+1-A090239(n)` -/
def P6452664881064922673.Spec : Prop :=
  ∀ n, P6452664881064922673.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P10804142288951282334

`A016933(n)+1-A092293(n)`
-/

namespace A026601.P10804142288951282334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n + (1 - A092293 n)

end

end A026601.P10804142288951282334

namespace A026601

/-- `A016933(n)+1-A092293(n)` -/
def P10804142288951282334.Spec : Prop :=
  ∀ n, P10804142288951282334.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P6443108405766656532

`A016777(n)+2-A090239(n)`
-/

namespace A026601.P6443108405766656532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A090239 n)

end

end A026601.P6443108405766656532

namespace A026601

/-- `A016777(n)+2-A090239(n)` -/
def P6443108405766656532.Spec : Prop :=
  ∀ n, P6443108405766656532.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P15423243750481608114

`A092292(n+1)-(A090239(n)+A053838(n+1))`
-/

namespace A026601.P15423243750481608114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (n + 1) - (A090239 n + A053838 (n + 1))

end

end A026601.P15423243750481608114

namespace A026601

/-- `A092292(n+1)-(A090239(n)+A053838(n+1))` -/
def P15423243750481608114.Spec : Prop :=
  ∀ n, P15423243750481608114.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P17987709845591229511

`A092296(n+1)-(A090239(n)+A090193(n+1))`
-/

namespace A026601.P17987709845591229511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 (n + 1) - (A090239 n + A090193 (n + 1))

end

end A026601.P17987709845591229511

namespace A026601

/-- `A092296(n+1)-(A090239(n)+A090193(n+1))` -/
def P17987709845591229511.Spec : Prop :=
  ∀ n, P17987709845591229511.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P4856866770114033356

`A092293(n+1)-(A090239(n+1)+A090239(n))`
-/

namespace A026601.P4856866770114033356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 (n + 1) - (A090239 (n + 1) + A090239 n)

end

end A026601.P4856866770114033356

namespace A026601

/-- `A092293(n+1)-(A090239(n+1)+A090239(n))` -/
def P4856866770114033356.Spec : Prop :=
  ∀ n, P4856866770114033356.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P13094103334088031341

`lt[1, A090239(n)]+1`
-/

namespace A026601.P13094103334088031341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026601.P13094103334088031341

namespace A026601

/-- `lt[1, A090239(n)]+1` -/
def P13094103334088031341.Spec : Prop :=
  ∀ n, (P13094103334088031341.a n : ℤ) = A026601 (n + 1)

end A026601

/-! ## A026601.P963105334632022647

`A026610(A016777(n))+A016777(n)`
-/

namespace A026601.P963105334632022647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026610 (A016777 n).toNat + A016777 n

end

end A026601.P963105334632022647

namespace A026601

/-- `A026610(A016777(n))+A016777(n)` -/
def P963105334632022647.Spec : Prop :=
  ∀ n, P963105334632022647.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P9325316425207761400

`A026613(A016777(n)+1)+A016777(n)`
-/

namespace A026601.P9325316425207761400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026613 (A016777 n + 1).toNat + A016777 n

end

end A026601.P9325316425207761400

namespace A026601

/-- `A026613(A016777(n)+1)+A016777(n)` -/
def P9325316425207761400.Spec : Prop :=
  ∀ n, P9325316425207761400.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P10019108149175177757

`A026610(A016777(n))-(1-A016789(n))`
-/

namespace A026601.P10019108149175177757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026610 (A016777 n).toNat - (1 - A016789 n)

end

end A026601.P10019108149175177757

namespace A026601

/-- `A026610(A016777(n))-(1-A016789(n))` -/
def P10019108149175177757.Spec : Prop :=
  ∀ n, P10019108149175177757.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P11512584693988777689

`A008486(2*n+1)-A092293(n)`
-/

namespace A026601.P11512584693988777689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n + 1) - A092293 n

end

end A026601.P11512584693988777689

namespace A026601

/-- `A008486(2*n+1)-A092293(n)` -/
def P11512584693988777689.Spec : Prop :=
  ∀ n, P11512584693988777689.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P11055477127771803994

`A008585(2*n+1)-A092293(n)`
-/

namespace A026601.P11055477127771803994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (2 * n + 1) - A092293 n

end

end A026601.P11055477127771803994

namespace A026601

/-- `A008585(2*n+1)-A092293(n)` -/
def P11055477127771803994.Spec : Prop :=
  ∀ n, P11055477127771803994.a n = A026601 (n + 1)

end A026601

/-! ## A026601.P7779150455153858834

`A130509(A026602(n+1))`
-/

namespace A026601.P7779150455153858834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A026602 (n + 1)).toNat

end

end A026601.P7779150455153858834

namespace A026601

/-- `A130509(A026602(n+1))` -/
def P7779150455153858834.Spec : Prop :=
  ∀ n, P7779150455153858834.a n = A026601 (n + 1)

end A026601

/-!
# A026602: Numbers k such that A026600(k) = 2.

The programs for A026602, the canonical program `A026602.P13319967887920445477` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026602 has offset 1).

The definition of A026602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026602.P13319967887920445477

`eq[0, (a(floor(n/3))+n)%3]+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026602

/-- `eq[0, (a(floor(n/3))+n)%3]+1` -/
def P13319967887920445477.Spec : Prop :=
  ∀ n, (P13319967887920445477.a n : ℤ) = A026602 (n + 1)

theorem P13319967887920445477.correct : P13319967887920445477.Spec := by
  intro n
  simp only [A026602, Nat.add_sub_cancel]

end A026602

/-! ## A026602.P4514140921453850980

`A198681(n+1)/3+1`
-/

namespace A026602.P4514140921453850980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198681 (n + 1) : ℚ) / 3 + 1

end

end A026602.P4514140921453850980

namespace A026602

/-- `A198681(n+1)/3+1` -/
def P4514140921453850980.Spec : Prop :=
  ∀ n, P4514140921453850980.a n = (A026602 (n + 1) : ℚ)

end A026602

/-! ## A026602.P8585374103626618540

`3*(n+1)-A090193(n)`
-/

namespace A026602.P8585374103626618540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A090193 n

end

end A026602.P8585374103626618540

namespace A026602

/-- `3*(n+1)-A090193(n)` -/
def P8585374103626618540.Spec : Prop :=
  ∀ n, P8585374103626618540.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P10504459729242916220

`3*(n+1)-C(2, A053838(n)²)`
-/

namespace A026602.P10504459729242916220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.choose 2 (A053838 n ^ 2).toNat : ℤ)

end

end A026602.P10504459729242916220

namespace A026602

/-- `3*(n+1)-C(2, A053838(n)²)` -/
def P10504459729242916220.Spec : Prop :=
  ∀ n, P10504459729242916220.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P6639869620619170025

`A092293(n)+A053838(n)`
-/

namespace A026602.P6639869620619170025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n + A053838 n

end

end A026602.P6639869620619170025

namespace A026602

/-- `A092293(n)+A053838(n)` -/
def P6639869620619170025.Spec : Prop :=
  ∀ n, P6639869620619170025.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P5208271040509546252

`A092292(n)+A090239(n)`
-/

namespace A026602.P5208271040509546252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 n + A090239 n

end

end A026602.P5208271040509546252

namespace A026602

/-- `A092292(n)+A090239(n)` -/
def P5208271040509546252.Spec : Prop :=
  ∀ n, P5208271040509546252.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P6732616809717108028

`A016945(n)-A092296(n)`
-/

namespace A026602.P6732616809717108028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A092296 n

end

end A026602.P6732616809717108028

namespace A026602

/-- `A016945(n)-A092296(n)` -/
def P6732616809717108028.Spec : Prop :=
  ∀ n, P6732616809717108028.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P13331587806546604749

`A016777(n)+2-A090193(n)`
-/

namespace A026602.P13331587806546604749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A090193 n)

end

end A026602.P13331587806546604749

namespace A026602

/-- `A016777(n)+2-A090193(n)` -/
def P13331587806546604749.Spec : Prop :=
  ∀ n, P13331587806546604749.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P11238310912081347826

`A092292(n+1)-(A090193(n)+A053838(n+1))`
-/

namespace A026602.P11238310912081347826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (n + 1) - (A090193 n + A053838 (n + 1))

end

end A026602.P11238310912081347826

namespace A026602

/-- `A092292(n+1)-(A090193(n)+A053838(n+1))` -/
def P11238310912081347826.Spec : Prop :=
  ∀ n, P11238310912081347826.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P18023706664351626374

`A092296(n+1)-(A090193(n+1)+A090193(n))`
-/

namespace A026602.P18023706664351626374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 (n + 1) - (A090193 (n + 1) + A090193 n)

end

end A026602.P18023706664351626374

namespace A026602

/-- `A092296(n+1)-(A090193(n+1)+A090193(n))` -/
def P18023706664351626374.Spec : Prop :=
  ∀ n, P18023706664351626374.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P18251533100187927362

`A092293(n+1)-(A090239(n+1)+A090193(n))`
-/

namespace A026602.P18251533100187927362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 (n + 1) - (A090239 (n + 1) + A090193 n)

end

end A026602.P18251533100187927362

namespace A026602

/-- `A092293(n+1)-(A090239(n+1)+A090193(n))` -/
def P18251533100187927362.Spec : Prop :=
  ∀ n, P18251533100187927362.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P9808872643309074991

`A026613(A016777(n))+A016777(n)`
-/

namespace A026602.P9808872643309074991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026613 (A016777 n).toNat + A016777 n

end

end A026602.P9808872643309074991

namespace A026602

/-- `A026613(A016777(n))+A016777(n)` -/
def P9808872643309074991.Spec : Prop :=
  ∀ n, P9808872643309074991.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P13460123595232080619

`A008585(2*n+1)-A092296(n)`
-/

namespace A026602.P13460123595232080619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (2 * n + 1) - A092296 n

end

end A026602.P13460123595232080619

namespace A026602

/-- `A008585(2*n+1)-A092296(n)` -/
def P13460123595232080619.Spec : Prop :=
  ∀ n, P13460123595232080619.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P13245560758983745001

`lt[1, A090193(n)]+1`
-/

namespace A026602.P13245560758983745001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A026602.P13245560758983745001

namespace A026602

/-- `lt[1, A090193(n)]+1` -/
def P13245560758983745001.Spec : Prop :=
  ∀ n, (P13245560758983745001.a n : ℤ) = A026602 (n + 1)

end A026602

/-! ## A026602.P14758552669132378701

`eq[2, A026600(n+1)]+1`
-/

namespace A026602.P14758552669132378701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026602.P14758552669132378701

namespace A026602

/-- `eq[2, A026600(n+1)]+1` -/
def P14758552669132378701.Spec : Prop :=
  ∀ n, (P14758552669132378701.a n : ℤ) = A026602 (n + 1)

end A026602

/-! ## A026602.P9058292554457142146

`eq[2, A090193(n+1)]+2`
-/

namespace A026602.P9058292554457142146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A026602.P9058292554457142146

namespace A026602

/-- `eq[2, A090193(n+1)]+2` -/
def P9058292554457142146.Spec : Prop :=
  ∀ n, (P9058292554457142146.a n : ℤ) = A026602 (n + 1)

end A026602

/-! ## A026602.P1890001507865466675

`eq[1, A007089(n)%3]+1`
-/

namespace A026602.P1890001507865466675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026602.P1890001507865466675

namespace A026602

/-- `eq[1, A007089(n)%3]+1` -/
def P1890001507865466675.Spec : Prop :=
  ∀ n, (P1890001507865466675.a n : ℤ) = A026602 (n + 1)

end A026602

/-! ## A026602.P4005655264930364454

`eq[2, A010882(A053735(n))]+1`
-/

namespace A026602.P4005655264930364454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A053735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026602.P4005655264930364454

namespace A026602

/-- `eq[2, A010882(A053735(n))]+1` -/
def P4005655264930364454.Spec : Prop :=
  ∀ n, (P4005655264930364454.a n : ℤ) = A026602 (n + 1)

end A026602

/-! ## A026602.P6905650840212110031

`A064429(A092292(n)+1)`
-/

namespace A026602.P6905650840212110031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A092292 n + 1).toNat

end

end A026602.P6905650840212110031

namespace A026602

/-- `A064429(A092292(n)+1)` -/
def P6905650840212110031.Spec : Prop :=
  ∀ n, P6905650840212110031.a n = A026602 (n + 1)

end A026602

/-! ## A026602.P12170935514396474909

`A130508(A026601(n+1))`
-/

namespace A026602.P12170935514396474909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (A026601 (n + 1)).toNat

end

end A026602.P12170935514396474909

namespace A026602

/-- `A130508(A026601(n+1))` -/
def P12170935514396474909.Spec : Prop :=
  ∀ n, P12170935514396474909.a n = A026602 (n + 1)

end A026602

/-!
# A026603: Numbers k such that A026600(k) = 3.

The programs for A026603, the canonical program `A026603.P13349523606129784762` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026603 has offset 1).

The definition of A026603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026603.P13349523606129784762

`eq[0, (a(floor(n/3))+n)%3]+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026603

/-- `eq[0, (a(floor(n/3))+n)%3]+1` -/
def P13349523606129784762.Spec : Prop :=
  ∀ n, (P13349523606129784762.a n : ℤ) = A026603 (n + 1)

theorem P13349523606129784762.correct : P13349523606129784762.Spec := by
  intro n
  simp only [A026603, Nat.add_sub_cancel]

end A026603

/-! ## A026603.P1603177178833864918

`A198682(n+1)/3+1`
-/

namespace A026603.P1603177178833864918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198682 (n + 1) : ℚ) / 3 + 1

end

end A026603.P1603177178833864918

namespace A026603

/-- `A198682(n+1)/3+1` -/
def P1603177178833864918.Spec : Prop :=
  ∀ n, P1603177178833864918.a n = (A026603 (n + 1) : ℚ)

end A026603

/-! ## A026603.P8222670668411455319

`3*(n+1)-A053838(n)`
-/

namespace A026603.P8222670668411455319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A053838 n

end

end A026603.P8222670668411455319

namespace A026603

/-- `3*(n+1)-A053838(n)` -/
def P8222670668411455319.Spec : Prop :=
  ∀ n, P8222670668411455319.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P14525272511793460944

`6*n+3-A092292(n)`
-/

namespace A026603.P14525272511793460944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A092292 n

end

end A026603.P14525272511793460944

namespace A026603

/-- `6*n+3-A092292(n)` -/
def P14525272511793460944.Spec : Prop :=
  ∀ n, P14525272511793460944.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P1365811645594587110

`A092293(n)+A090193(n)`
-/

namespace A026603.P1365811645594587110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n + A090193 n

end

end A026603.P1365811645594587110

namespace A026603

/-- `A092293(n)+A090193(n)` -/
def P1365811645594587110.Spec : Prop :=
  ∀ n, P1365811645594587110.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P6700727327557236274

`A092296(n)+A090239(n)`
-/

namespace A026603.P6700727327557236274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 n + A090239 n

end

end A026603.P6700727327557236274

namespace A026603

/-- `A092296(n)+A090239(n)` -/
def P6700727327557236274.Spec : Prop :=
  ∀ n, P6700727327557236274.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P10071166412284460862

`A016789(n)+1-A053838(n)`
-/

namespace A026603.P10071166412284460862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (1 - A053838 n)

end

end A026603.P10071166412284460862

namespace A026603

/-- `A016789(n)+1-A053838(n)` -/
def P10071166412284460862.Spec : Prop :=
  ∀ n, P10071166412284460862.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P17523158952452682582

`A016777(n)+2-A053838(n)`
-/

namespace A026603.P17523158952452682582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A053838 n)

end

end A026603.P17523158952452682582

namespace A026603

/-- `A016777(n)+2-A053838(n)` -/
def P17523158952452682582.Spec : Prop :=
  ∀ n, P17523158952452682582.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P10995444700385436716

`A016777(n+1)-A026600(n+1)`
-/

namespace A026603.P10995444700385436716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - A026600 (n + 1)

end

end A026603.P10995444700385436716

namespace A026603

/-- `A016777(n+1)-A026600(n+1)` -/
def P10995444700385436716.Spec : Prop :=
  ∀ n, P10995444700385436716.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P2406050700024113464

`A008585(n)+4-A026600(n+1)`
-/

namespace A026603.P2406050700024113464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (4 - A026600 (n + 1))

end

end A026603.P2406050700024113464

namespace A026603

/-- `A008585(n)+4-A026600(n+1)` -/
def P2406050700024113464.Spec : Prop :=
  ∀ n, P2406050700024113464.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P7872122119005307905

`A008486(n+1)-A023717(n)%3`
-/

namespace A026603.P7872122119005307905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - Int.tmod (A023717 n) 3

end

end A026603.P7872122119005307905

namespace A026603

/-- `A008486(n+1)-A023717(n)%3` -/
def P7872122119005307905.Spec : Prop :=
  ∀ n, P7872122119005307905.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P11019975022165003181

`A005408(n)-A026600(n+1)+n+3`
-/

namespace A026603.P11019975022165003181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A026600 (n + 1) + (n + 3 : ℤ)

end

end A026603.P11019975022165003181

namespace A026603

/-- `A005408(n)-A026600(n+1)+n+3` -/
def P11019975022165003181.Spec : Prop :=
  ∀ n, P11019975022165003181.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P18014035726451328747

`A017197(n)-(A092292(n)+A008585(n))`
-/

namespace A026603.P18014035726451328747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - (A092292 n + A008585 n)

end

end A026603.P18014035726451328747

namespace A026603

/-- `A017197(n)-(A092292(n)+A008585(n))` -/
def P18014035726451328747.Spec : Prop :=
  ∀ n, P18014035726451328747.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P8969812700211250820

`A178977(n)-(A145910(n)+A053838(n))`
-/

namespace A026603.P8969812700211250820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n - (A145910 n + A053838 n)

end

end A026603.P8969812700211250820

namespace A026603

/-- `A178977(n)-(A145910(n)+A053838(n))` -/
def P8969812700211250820.Spec : Prop :=
  ∀ n, P8969812700211250820.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P307424524717279164

`A189628(n+1)+A189630(n+1)-A053838(n)`
-/

namespace A026603.P307424524717279164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1) + (A189630 (n + 1) - A053838 n)

end

end A026603.P307424524717279164

namespace A026603

/-- `A189628(n+1)+A189630(n+1)-A053838(n)` -/
def P307424524717279164.Spec : Prop :=
  ∀ n, P307424524717279164.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P13285811661652873032

`A092292(n+1)-(A053838(n+1)+A053838(n))`
-/

namespace A026603.P13285811661652873032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092292 (n + 1) - (A053838 (n + 1) + A053838 n)

end

end A026603.P13285811661652873032

namespace A026603

/-- `A092292(n+1)-(A053838(n+1)+A053838(n))` -/
def P13285811661652873032.Spec : Prop :=
  ∀ n, P13285811661652873032.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P10077496175553475973

`A092296(n+1)-(A090193(n+1)+A053838(n))`
-/

namespace A026603.P10077496175553475973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 (n + 1) - (A090193 (n + 1) + A053838 n)

end

end A026603.P10077496175553475973

namespace A026603

/-- `A092296(n+1)-(A090193(n+1)+A053838(n))` -/
def P10077496175553475973.Spec : Prop :=
  ∀ n, P10077496175553475973.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P9260274061495852813

`A092293(n+1)-(A090239(n+1)+A053838(n))`
-/

namespace A026603.P9260274061495852813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 (n + 1) - (A090239 (n + 1) + A053838 n)

end

end A026603.P9260274061495852813

namespace A026603

/-- `A092293(n+1)-(A090239(n+1)+A053838(n))` -/
def P9260274061495852813.Spec : Prop :=
  ∀ n, P9260274061495852813.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P427006913776268214

`A026610(A016789(n))+A016777(n)`
-/

namespace A026603.P427006913776268214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026610 (A016789 n).toNat + A016777 n

end

end A026603.P427006913776268214

namespace A026603

/-- `A026610(A016789(n))+A016777(n)` -/
def P427006913776268214.Spec : Prop :=
  ∀ n, P427006913776268214.a n = A026603 (n + 1)

end A026603

/-! ## A026603.P3250277438282013460

`A090239(A092292(n))+A016777(n)`
-/

namespace A026603.P3250277438282013460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 (A092292 n).toNat + A016777 n

end

end A026603.P3250277438282013460

namespace A026603

/-- `A090239(A092292(n))+A016777(n)` -/
def P3250277438282013460.Spec : Prop :=
  ∀ n, P3250277438282013460.a n = A026603 (n + 1)

end A026603

/-!
# A026604: a(n) = s(1) + s(2) + ... + s(n), where s = A026600.

The programs for A026604, the canonical program `A026604.P8327566826430049549` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026604 has offset 1).

The definition of A026604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026604.P8327566826430049549

`∑[(a(n-1)+val(n, 3))%3+1]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026604

/-- `∑[(a(n-1)+val(n, 3))%3+1]` -/
def P8327566826430049549.Spec : Prop :=
  ∀ n, (P8327566826430049549.a n : ℤ) = A026604 (n + 1)

theorem P8327566826430049549.correct : P8327566826430049549.Spec := by
  intro n
  simp only [A026604, Nat.add_sub_cancel]

end A026604

/-! ## A026604.P5045883574062318631

`∑[(∑[val(abs(1-n)+1, 3)]+n)%3+1]`
-/

namespace A026604.P5045883574062318631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P5045883574062318631

namespace A026604

/-- `∑[(∑[val(abs(1-n)+1, 3)]+n)%3+1]` -/
def P5045883574062318631.Spec : Prop :=
  ∀ n, (P5045883574062318631.a n : ℤ) = A026604 (n + 1)

end A026604

/-! ## A026604.P4001350249208182479

`∑[A026600(n+1)]`
-/

namespace A026604.P4001350249208182479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P4001350249208182479

namespace A026604

/-- `∑[A026600(n+1)]` -/
def P4001350249208182479.Spec : Prop :=
  ∀ n, P4001350249208182479.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P15290122055534752102

`∑[A053838(n)+1]`
-/

namespace A026604.P15290122055534752102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P15290122055534752102

namespace A026604

/-- `∑[A053838(n)+1]` -/
def P15290122055534752102.Spec : Prop :=
  ∀ n, P15290122055534752102.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P9631293452056522134

`∑[dr(gcd(12, A090193(n)))]`
-/

namespace A026604.P9631293452056522134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 12 (A090193 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P9631293452056522134

namespace A026604

/-- `∑[dr(gcd(12, A090193(n)))]` -/
def P9631293452056522134.Spec : Prop :=
  ∀ n, (P9631293452056522134.a n : ℤ) = A026604 (n + 1)

end A026604

/-! ## A026604.P6655738276204120158

`∑[A004128(n)%3+1]`
-/

namespace A026604.P6655738276204120158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P6655738276204120158

namespace A026604

/-- `∑[A004128(n)%3+1]` -/
def P6655738276204120158.Spec : Prop :=
  ∀ n, P6655738276204120158.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P7849802317382488555

`∑[A007089(n)%3+1]`
-/

namespace A026604.P7849802317382488555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P7849802317382488555

namespace A026604

/-- `∑[A007089(n)%3+1]` -/
def P7849802317382488555.Spec : Prop :=
  ∀ n, P7849802317382488555.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P5502428665519704674

`∑[A023717(n)%3+1]`
-/

namespace A026604.P5502428665519704674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P5502428665519704674

namespace A026604

/-- `∑[A023717(n)%3+1]` -/
def P5502428665519704674.Spec : Prop :=
  ∀ n, P5502428665519704674.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P12703731098857022217

`∑[A037455(n)%3+1]`
-/

namespace A026604.P12703731098857022217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P12703731098857022217

namespace A026604

/-- `∑[A037455(n)%3+1]` -/
def P12703731098857022217.Spec : Prop :=
  ∀ n, P12703731098857022217.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P15483814062174958508

`∑[A053735(n)%3+1]`
-/

namespace A026604.P15483814062174958508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P15483814062174958508

namespace A026604

/-- `∑[A053735(n)%3+1]` -/
def P15483814062174958508.Spec : Prop :=
  ∀ n, P15483814062174958508.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P6488609895965138255

`∑[and(3, (A054861(n)+n)%3+1)]`
-/

namespace A026604.P6488609895965138255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (Int.tmod (A054861 n + (n : ℤ)) 3 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P6488609895965138255

namespace A026604

/-- `∑[and(3, (A054861(n)+n)%3+1)]` -/
def P6488609895965138255.Spec : Prop :=
  ∀ n, P6488609895965138255.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P14234501943271954290

`∑[and(3, abs(3-A343810(n))%3+1)]`
-/

namespace A026604.P14234501943271954290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (Int.tmod |3 - A343810 n| 3 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P14234501943271954290

namespace A026604

/-- `∑[and(3, abs(3-A343810(n))%3+1)]` -/
def P14234501943271954290.Spec : Prop :=
  ∀ n, P14234501943271954290.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P4165250747179469378

`∑[A010882(A053735(n))]`
-/

namespace A026604.P4165250747179469378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A053735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P4165250747179469378

namespace A026604

/-- `∑[A010882(A053735(n))]` -/
def P4165250747179469378.Spec : Prop :=
  ∀ n, P4165250747179469378.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P15382246508833107595

`∑[A090244(a(A090239(n)))]` with `a(0)=1`
-/

namespace A026604.P15382246508833107595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A090244 (f1 (A090239 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P15382246508833107595

namespace A026604

/-- `∑[A090244(a(A090239(n)))]` -/
def P15382246508833107595.Spec : Prop :=
  ∀ n, P15382246508833107595.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P13190249448285555266

`A053838(n)+A000027(a(n-1)+1)` with `a(0)=1`
-/

namespace A026604.P13190249448285555266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053838 n + A000027 (a (n - 1) + 1).toNat

end

end A026604.P13190249448285555266

namespace A026604

/-- `A053838(n)+A000027(a(n-1)+1)` -/
def P13190249448285555266.Spec : Prop :=
  ∀ n, P13190249448285555266.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P9012290997910291233

`∑[A010882(A105529(n))]`
-/

namespace A026604.P9012290997910291233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A105529 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P9012290997910291233

namespace A026604

/-- `∑[A010882(A105529(n))]` -/
def P9012290997910291233.Spec : Prop :=
  ∀ n, P9012290997910291233.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P16854754908967306321

`∑[A010882(A004128(n))]`
-/

namespace A026604.P16854754908967306321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A004128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P16854754908967306321

namespace A026604

/-- `∑[A010882(A004128(n))]` -/
def P16854754908967306321.Spec : Prop :=
  ∀ n, P16854754908967306321.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P7440404416293370159

`∑[A026612(3*n+1)+1]`
-/

namespace A026604.P7440404416293370159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P7440404416293370159

namespace A026604

/-- `∑[A026612(3*n+1)+1]` -/
def P7440404416293370159.Spec : Prop :=
  ∀ n, P7440404416293370159.a n = A026604 (n + 1)

end A026604

/-! ## A026604.P674663046700786930

`∑[A026608(A017185(n))+1]`
-/

namespace A026604.P674663046700786930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026608 (A017185 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026604.P674663046700786930

namespace A026604

/-- `∑[A026608(A017185(n))+1]` -/
def P674663046700786930.Spec : Prop :=
  ∀ n, P674663046700786930.a n = A026604 (n + 1)

end A026604

/-!
# A026605: [3->null]-transform of three-symbol Thue-Morse A026600.

The programs for A026605, the canonical program `A026605.P5367799998675853451` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026605 has offset 1).

The definition of A026605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026605.P12087184353896648497

`A057215(n)+1`
-/

namespace A026605.P12087184353896648497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057215 n + 1

end

end A026605.P12087184353896648497

namespace A026605

/-- `A057215(n)+1` -/
def P12087184353896648497.Spec : Prop :=
  ∀ n, P12087184353896648497.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P5367799998675853451

`p?[A090193(n)+1]-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026605

/-- `p?[A090193(n)+1]-1` -/
def P5367799998675853451.Spec : Prop :=
  ∀ n, P5367799998675853451.a n = A026605 (n + 1)

theorem P5367799998675853451.correct : P5367799998675853451.Spec := by
  intro n
  simp only [A026605, Nat.add_sub_cancel]

end A026605

/-! ## A026605.P15262931720137239052

`p?[A053838(n)+2]-1`
-/

namespace A026605.P15262931720137239052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026605.P15262931720137239052

namespace A026605

/-- `p?[A053838(n)+2]-1` -/
def P15262931720137239052.Spec : Prop :=
  ∀ n, P15262931720137239052.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P13737474674347535159

`p?[A026600(n+1)+1]-1`
-/

namespace A026605.P13737474674347535159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026605.P13737474674347535159

namespace A026605

/-- `p?[A026600(n+1)+1]-1` -/
def P13737474674347535159.Spec : Prop :=
  ∀ n, P13737474674347535159.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P12626145577635602717

`A090193(lt[0, A090193(n)])`
-/

namespace A026605.P12626145577635602717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A026605.P12626145577635602717

namespace A026605

/-- `A090193(lt[0, A090193(n)])` -/
def P12626145577635602717.Spec : Prop :=
  ∀ n, P12626145577635602717.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P12425604268973686910

`A053838(lt[A053838(n), 2])+1`
-/

namespace A026605.P12425604268973686910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A026605.P12425604268973686910

namespace A026605

/-- `A053838(lt[A053838(n), 2])+1` -/
def P12425604268973686910.Spec : Prop :=
  ∀ n, P12425604268973686910.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P14317350620603602386

`A090193(eq[A053838(n)², A053838(n)])`
-/

namespace A026605.P14317350620603602386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P14317350620603602386

namespace A026605

/-- `A090193(eq[A053838(n)², A053838(n)])` -/
def P14317350620603602386.Spec : Prop :=
  ∀ n, P14317350620603602386.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P3454386583721465661

`A090193(eq[A026600(n+1), A090193(n)])`
-/

namespace A026605.P3454386583721465661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P3454386583721465661

namespace A026605

/-- `A090193(eq[A026600(n+1), A090193(n)])` -/
def P3454386583721465661.Spec : Prop :=
  ∀ n, P3454386583721465661.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P7960215935405536946

`A090193(eq[A053838(n)+1, A090193(n)])`
-/

namespace A026605.P7960215935405536946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P7960215935405536946

namespace A026605

/-- `A090193(eq[A053838(n)+1, A090193(n)])` -/
def P7960215935405536946.Spec : Prop :=
  ∀ n, P7960215935405536946.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P16365938623187583640

`A090193(eq[1, A090193(n)-A053838(n)])`
-/

namespace A026605.P16365938623187583640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n - A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026605.P16365938623187583640

namespace A026605

/-- `A090193(eq[1, A090193(n)-A053838(n)])` -/
def P16365938623187583640.Spec : Prop :=
  ∀ n, P16365938623187583640.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P12583421550708618638

`A090193(eq[A007089(n)%3+1, A090193(n)])`
-/

namespace A026605.P12583421550708618638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P12583421550708618638

namespace A026605

/-- `A090193(eq[A007089(n)%3+1, A090193(n)])` -/
def P12583421550708618638.Spec : Prop :=
  ∀ n, P12583421550708618638.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P18358856046189778009

`A090193(eq[A037455(n)%3+1, A090193(n)])`
-/

namespace A026605.P18358856046189778009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) 3 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P18358856046189778009

namespace A026605

/-- `A090193(eq[A037455(n)%3+1, A090193(n)])` -/
def P18358856046189778009.Spec : Prop :=
  ∀ n, P18358856046189778009.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P16228716383362546700

`A090193(eq[(A054861(n)+n)%3+1, A090193(n)])`
-/

namespace A026605.P16228716383362546700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + (n : ℤ)) 3 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P16228716383362546700

namespace A026605

/-- `A090193(eq[(A054861(n)+n)%3+1, A090193(n)])` -/
def P16228716383362546700.Spec : Prop :=
  ∀ n, P16228716383362546700.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P15246275556587847853

`A090193(eq[(A053735(n)+3*n)%3+1, A090193(n)])`
-/

namespace A026605.P15246275556587847853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n + (3 * n : ℤ)) 3 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P15246275556587847853

namespace A026605

/-- `A090193(eq[(A053735(n)+3*n)%3+1, A090193(n)])` -/
def P15246275556587847853.Spec : Prop :=
  ∀ n, P15246275556587847853.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P3553272788570473811

`A057237(A082286(n)-A057215(n))`
-/

namespace A026605.P3553272788570473811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A082286 n - A057215 n).toNat

end

end A026605.P3553272788570473811

namespace A026605

/-- `A057237(A082286(n)-A057215(n))` -/
def P3553272788570473811.Spec : Prop :=
  ∀ n, P3553272788570473811.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P7985651318891215791

`A026606(A047230(n+1))`
-/

namespace A026605.P7985651318891215791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026606 (A047230 (n + 1)).toNat

end

end A026605.P7985651318891215791

namespace A026605

/-- `A026606(A047230(n+1))` -/
def P7985651318891215791.Spec : Prop :=
  ∀ n, P7985651318891215791.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P5415929315064031068

`A026607(A026606(n+1)+A008585(n))`
-/

namespace A026605.P5415929315064031068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026607 (A026606 (n + 1) + A008585 n).toNat

end

end A026605.P5415929315064031068

namespace A026605

/-- `A026607(A026606(n+1)+A008585(n))` -/
def P5415929315064031068.Spec : Prop :=
  ∀ n, P5415929315064031068.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P11313085563629414126

`7%p?[A023717(n)%12]`
-/

namespace A026605.P11313085563629414126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 n) 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A026605.P11313085563629414126

namespace A026605

/-- `7%p?[A023717(n)%12]` -/
def P11313085563629414126.Spec : Prop :=
  ∀ n, P11313085563629414126.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P11017782072521973022

`A090193(eq[A026612(3*n+1)+1, A090193(n)])`
-/

namespace A026605.P11017782072521973022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (3 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P11017782072521973022

namespace A026605

/-- `A090193(eq[A026612(3*n+1)+1, A090193(n)])` -/
def P11017782072521973022.Spec : Prop :=
  ∀ n, P11017782072521973022.a n = A026605 (n + 1)

end A026605

/-! ## A026605.P14985403953726854315

`A010882(eq[A010882(n), A026613(n+1)])`
-/

namespace A026605.P14985403953726854315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026605.P14985403953726854315

namespace A026605

/-- `A010882(eq[A010882(n), A026613(n+1)])` -/
def P14985403953726854315.Spec : Prop :=
  ∀ n, P14985403953726854315.a n = A026605 (n + 1)

end A026605

/-!
# A026606: [1->null]-transform of three-symbol Thue-Morse A026600, with 1 subtracted.

The programs for A026606, the canonical program `A026606.P15867916892767179858` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026606 has offset 1).

The definition of A026606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026606.P15867916892767179858

`A090239(lt[A090239(n), 2])+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026606

/-- `A090239(lt[A090239(n), 2])+1` -/
def P15867916892767179858.Spec : Prop :=
  ∀ n, P15867916892767179858.a n = A026606 (n + 1)

theorem P15867916892767179858.correct : P15867916892767179858.Spec := by
  intro n
  simp only [A026606, Nat.add_sub_cancel]

end A026606

/-! ## A026606.P5838068257203848904

`p?[A007089(n)%3+1]-1`
-/

namespace A026606.P5838068257203848904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026606.P5838068257203848904

namespace A026606

/-- `p?[A007089(n)%3+1]-1` -/
def P5838068257203848904.Spec : Prop :=
  ∀ n, P5838068257203848904.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P11717941035610666753

`p?[A026600(n+1)]-1`
-/

namespace A026606.P11717941035610666753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026606.P11717941035610666753

namespace A026606

/-- `p?[A026600(n+1)]-1` -/
def P11717941035610666753.Spec : Prop :=
  ∀ n, P11717941035610666753.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P16509481890037424161

`p?[A053838(n)+1]-1`
-/

namespace A026606.P16509481890037424161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026606.P16509481890037424161

namespace A026606

/-- `p?[A053838(n)+1]-1` -/
def P16509481890037424161.Spec : Prop :=
  ∀ n, P16509481890037424161.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P11568129181205448809

`p?[dr(gcd(12, A090193(n)))]-1`
-/

namespace A026606.P11568129181205448809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 12 (A090193 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A026606.P11568129181205448809

namespace A026606

/-- `p?[dr(gcd(12, A090193(n)))]-1` -/
def P11568129181205448809.Spec : Prop :=
  ∀ n, P11568129181205448809.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P9072568602128981215

`p?[A037455(n)%3+1]-1`
-/

namespace A026606.P9072568602128981215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026606.P9072568602128981215

namespace A026606

/-- `p?[A037455(n)%3+1]-1` -/
def P9072568602128981215.Spec : Prop :=
  ∀ n, P9072568602128981215.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P16773347766375931209

`A053838(lt[0, A053838(n)])`
-/

namespace A026606.P16773347766375931209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A026606.P16773347766375931209

namespace A026606

/-- `A053838(lt[0, A053838(n)])` -/
def P16773347766375931209.Spec : Prop :=
  ∀ n, P16773347766375931209.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P3141687166733479147

`A053838(comp[A079498(n+1)])`
-/

namespace A026606.P3141687166733479147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A026606.P3141687166733479147

namespace A026606

/-- `A053838(comp[A079498(n+1)])` -/
def P3141687166733479147.Spec : Prop :=
  ∀ n, P3141687166733479147.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P14780227213646715186

`A016969(n)%p?[A026600(n+1)]`
-/

namespace A026606.P14780227213646715186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A026606.P14780227213646715186

namespace A026606

/-- `A016969(n)%p?[A026600(n+1)]` -/
def P14780227213646715186.Spec : Prop :=
  ∀ n, P14780227213646715186.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P2167587518138553772

`p?[A016777(n+1)-A079498(n+1)]-1`
-/

namespace A026606.P2167587518138553772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - A079498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A026606.P2167587518138553772

namespace A026606

/-- `p?[A016777(n+1)-A079498(n+1)]-1` -/
def P2167587518138553772.Spec : Prop :=
  ∀ n, P2167587518138553772.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P14390513857668481787

`5%p?[A026600(A278029(n+1)+1)]`
-/

namespace A026606.P14390513857668481787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (A278029 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A026606.P14390513857668481787

namespace A026606

/-- `5%p?[A026600(A278029(n+1)+1)]` -/
def P14390513857668481787.Spec : Prop :=
  ∀ n, P14390513857668481787.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P8916482118328283694

`A026605(A047264(n+2))`
-/

namespace A026606.P8916482118328283694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A047264 (n + 2)).toNat

end

end A026606.P8916482118328283694

namespace A026606

/-- `A026605(A047264(n+2))` -/
def P8916482118328283694.Spec : Prop :=
  ∀ n, P8916482118328283694.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P8479078517084403224

`A026605(A017221(n))`
-/

namespace A026606.P8479078517084403224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A017221 n).toNat

end

end A026606.P8479078517084403224

namespace A026606

/-- `A026605(A017221(n))` -/
def P8479078517084403224.Spec : Prop :=
  ∀ n, P8479078517084403224.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P12076316956480717293

`A026607(A017257(n))`
-/

namespace A026606.P12076316956480717293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026607 (A017257 n).toNat

end

end A026606.P12076316956480717293

namespace A026606

/-- `A026607(A017257(n))` -/
def P12076316956480717293.Spec : Prop :=
  ∀ n, P12076316956480717293.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P6641143227283039020

`A260394(p?[A026600(n+1)]*A006257(4*n+3)+1)+1`
-/

namespace A026606.P6641143227283039020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A006257 (4 * n + 3) + 1).toNat + 1

end

end A026606.P6641143227283039020

namespace A026606

/-- `A260394(p?[A026600(n+1)]*A006257(4*n+3)+1)+1` -/
def P6641143227283039020.Spec : Prop :=
  ∀ n, P6641143227283039020.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P17025478852984400950

`A260394((4*n+3)*p?[A026600(n+1)]+1)+1`
-/

namespace A026606.P17025478852984400950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 ((4 * n + 3 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat + 1

end

end A026606.P17025478852984400950

namespace A026606

/-- `A260394((4*n+3)*p?[A026600(n+1)]+1)+1` -/
def P17025478852984400950.Spec : Prop :=
  ∀ n, P17025478852984400950.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P3213270881588784902

`A026605(A124388(2*n)/2)`
-/

namespace A026606.P3213270881588784902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (SequenceMachineLib.roundAway ((A124388 (2 * n) : ℚ) / 2)).toNat

end

end A026606.P3213270881588784902

namespace A026606

/-- `A026605(A124388(2*n)/2)` -/
def P3213270881588784902.Spec : Prop :=
  ∀ n, P3213270881588784902.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P764887549293114772

`A026607(A124388(n))`
-/

namespace A026606.P764887549293114772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026607 (A124388 n).toNat

end

end A026606.P764887549293114772

namespace A026606

/-- `A026607(A124388(n))` -/
def P764887549293114772.Spec : Prop :=
  ∀ n, P764887549293114772.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P1132154862982913138

`A026605(A124388(n)+3)`
-/

namespace A026606.P1132154862982913138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A124388 n + 3).toNat

end

end A026606.P1132154862982913138

namespace A026606

/-- `A026605(A124388(n)+3)` -/
def P1132154862982913138.Spec : Prop :=
  ∀ n, P1132154862982913138.a n = A026606 (n + 1)

end A026606

/-! ## A026606.P10153458659767712053

`A026605(A017257(2*n+1)+A017257(n))`
-/

namespace A026606.P10153458659767712053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A017257 (2 * n + 1) + A017257 n).toNat

end

end A026606.P10153458659767712053

namespace A026606

/-- `A026605(A017257(2*n+1)+A017257(n))` -/
def P10153458659767712053.Spec : Prop :=
  ∀ n, P10153458659767712053.a n = A026606 (n + 1)

end A026606

/-!
# A026607: Delete all 2's from A026600 and then replace each 3 with 2.

The programs for A026607, the canonical program `A026607.P11635759985156371717` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026607 has offset 1).

The definition of A026607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026607.P11635759985156371717

`gcd(2, p?[A090193(n)+2])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026607

/-- `gcd(2, p?[A090193(n)+2])` -/
def P11635759985156371717.Spec : Prop :=
  ∀ n, (P11635759985156371717.a n : ℤ) = A026607 (n + 1)

theorem P11635759985156371717.correct : P11635759985156371717.Spec := by
  intro n
  simp only [A026607, Nat.add_sub_cancel]

end A026607

/-! ## A026607.P17895135975974623249

`2-A090193(lt[A090193(n), 2])`
-/

namespace A026607.P17895135975974623249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A090193 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026607.P17895135975974623249

namespace A026607

/-- `2-A090193(lt[A090193(n), 2])` -/
def P17895135975974623249.Spec : Prop :=
  ∀ n, P17895135975974623249.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P13101245089282646500

`2/A026606(A047230(n+1)+2)`
-/

namespace A026607.P13101245089282646500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A026606 (A047230 (n + 1) + 2).toNat : ℚ)

end

end A026607.P13101245089282646500

namespace A026607

/-- `2/A026606(A047230(n+1)+2)` -/
def P13101245089282646500.Spec : Prop :=
  ∀ n, P13101245089282646500.a n = (A026607 (n + 1) : ℚ)

end A026607

/-! ## A026607.P15157816235137388464

`A090193(eq[A090193(n)², A070403(n)])`
-/

namespace A026607.P15157816235137388464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026607.P15157816235137388464

namespace A026607

/-- `A090193(eq[A090193(n)², A070403(n)])` -/
def P15157816235137388464.Spec : Prop :=
  ∀ n, P15157816235137388464.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P16199435090503865217

`A080425(eq[A090193(n)+1, A080425(n)])`
-/

namespace A026607.P16199435090503865217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026607.P16199435090503865217

namespace A026607

/-- `A080425(eq[A090193(n)+1, A080425(n)])` -/
def P16199435090503865217.Spec : Prop :=
  ∀ n, P16199435090503865217.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P16882260235840415934

`A080425(eq[1, A080425(n)-A090193(n)])`
-/

namespace A026607.P16882260235840415934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n - A090193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026607.P16882260235840415934

namespace A026607

/-- `A080425(eq[1, A080425(n)-A090193(n)])` -/
def P16882260235840415934.Spec : Prop :=
  ∀ n, P16882260235840415934.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P2101234997248875487

`A053838(eq[A053838(n)², A131756(n)²])`
-/

namespace A026607.P2101234997248875487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131756 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026607.P2101234997248875487

namespace A026607

/-- `A053838(eq[A053838(n)², A131756(n)²])` -/
def P2101234997248875487.Spec : Prop :=
  ∀ n, P2101234997248875487.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P6973835242798778832

`A026605(9*n+8)`
-/

namespace A026607.P6973835242798778832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (9 * n + 8)

end

end A026607.P6973835242798778832

namespace A026607

/-- `A026605(9*n+8)` -/
def P6973835242798778832.Spec : Prop :=
  ∀ n, P6973835242798778832.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P1691218180961081327

`A001511(record[A006015(3*(2*n+1))])`
-/

namespace A026607.P1691218180961081327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026607.P1691218180961081327

namespace A026607

/-- `A001511(record[A006015(3*(2*n+1))])` -/
def P1691218180961081327.Spec : Prop :=
  ∀ n, P1691218180961081327.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P10623109077105704834

`A026606(A156795(n+1))`
-/

namespace A026607.P10623109077105704834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026606 (A156795 (n + 1)).toNat

end

end A026607.P10623109077105704834

namespace A026607

/-- `A026606(A156795(n+1))` -/
def P10623109077105704834.Spec : Prop :=
  ∀ n, P10623109077105704834.a n = A026607 (n + 1)

end A026607

/-! ## A026607.P15469766491827110417

`floor(p?[((4^n-A046031(n))%3)²+1]/2)`
-/

namespace A026607.P15469766491827110417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((4 ^ n : ℤ) - A046031 n) 3 ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A026607.P15469766491827110417

namespace A026607

/-- `floor(p?[((4^n-A046031(n))%3)²+1]/2)` -/
def P15469766491827110417.Spec : Prop :=
  ∀ n, P15469766491827110417.a n = A026607 (n + 1)

end A026607

/-!
# A026608: a(n) = number of 2's between n-th 1 and (n+1)st 1 in A026600.

The programs for A026608, the canonical program `A026608.P5492152877420761031` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026608 has offset 1).

The definition of A026608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026608.P1883184490961125377

`2-A026610(n+1)`
-/

namespace A026608.P1883184490961125377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026610 (n + 1)

end

end A026608.P1883184490961125377

namespace A026608

/-- `2-A026610(n+1)` -/
def P1883184490961125377.Spec : Prop :=
  ∀ n, P1883184490961125377.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P2910344804906853726

`Δ[(A007089(n)%3)%2]+1`
-/

namespace A026608.P2910344804906853726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A007089 n) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026608.P2910344804906853726

namespace A026608

/-- `Δ[(A007089(n)%3)%2]+1` -/
def P2910344804906853726.Spec : Prop :=
  ∀ n, P2910344804906853726.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P15936515897988222886

`Δ[A007089(A053735(n))%2]+1`
-/

namespace A026608.P15936515897988222886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A053735 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026608.P15936515897988222886

namespace A026608

/-- `Δ[A007089(A053735(n))%2]+1` -/
def P15936515897988222886.Spec : Prop :=
  ∀ n, P15936515897988222886.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P5492152877420761031

`A026612(n+1)-Δ[A090239(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026608

/-- `A026612(n+1)-Δ[A090239(n)]` -/
def P5492152877420761031.Spec : Prop :=
  ∀ n, P5492152877420761031.a n = A026608 (n + 1)

theorem P5492152877420761031.correct : P5492152877420761031.Spec := by
  intro n
  simp only [A026608, Nat.add_sub_cancel]

end A026608

/-! ## A026608.P14789373750623069814

`8%(A026610(n+1)+A008458(gcd(n, n+1)))`
-/

namespace A026608.P14789373750623069814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A026610 (n + 1) + A008458 (Nat.gcd n (n + 1)))

end

end A026608.P14789373750623069814

namespace A026608

/-- `8%(A026610(n+1)+A008458(gcd(n, n+1)))` -/
def P14789373750623069814.Spec : Prop :=
  ∀ n, P14789373750623069814.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P70210380581552008

`Δ[A053838(n)%2]+1`
-/

namespace A026608.P70210380581552008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053838 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026608.P70210380581552008

namespace A026608

/-- `Δ[A053838(n)%2]+1` -/
def P70210380581552008.Spec : Prop :=
  ∀ n, P70210380581552008.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P17272486145216343619

`Δ[C(A090193(n), 2)]+1`
-/

namespace A026608.P17272486145216343619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090193 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A026608.P17272486145216343619

namespace A026608

/-- `Δ[C(A090193(n), 2)]+1` -/
def P17272486145216343619.Spec : Prop :=
  ∀ n, P17272486145216343619.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P3863429654275562254

`Δ[val(A026600(n+1), 2)]+1`
-/

namespace A026608.P3863429654275562254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A026600 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A026608.P3863429654275562254

namespace A026608

/-- `Δ[val(A026600(n+1), 2)]+1` -/
def P3863429654275562254.Spec : Prop :=
  ∀ n, P3863429654275562254.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P18220620481187953403

`A090193(n+1)!-log2(A090193(n)!)`
-/

namespace A026608.P18220620481187953403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A090193 (n + 1)).toNat : ℝ) - Real.logb 2 (Nat.factorial (A090193 n).toNat : ℝ)

end

end A026608.P18220620481187953403

namespace A026608

/-- `A090193(n+1)!-log2(A090193(n)!)` -/
def P18220620481187953403.Spec : Prop :=
  ∀ n, P18220620481187953403.a n = (A026608 (n + 1) : ℝ)

end A026608

/-! ## A026608.P5751799251443868033

`Δ[A026601(n+1)]-(A026609(n+1)+1)`
-/

namespace A026608.P5751799251443868033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A026609 (n + 1) + 1)

end

end A026608.P5751799251443868033

namespace A026608

/-- `Δ[A026601(n+1)]-(A026609(n+1)+1)` -/
def P5751799251443868033.Spec : Prop :=
  ∀ n, P5751799251443868033.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P17953843333872549363

`A079498(n+2)-(A026609(n+1)+A026601(n+1))`
-/

namespace A026608.P17953843333872549363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (n + 2) - (A026609 (n + 1) + A026601 (n + 1))

end

end A026608.P17953843333872549363

namespace A026608

/-- `A079498(n+2)-(A026609(n+1)+A026601(n+1))` -/
def P17953843333872549363.Spec : Prop :=
  ∀ n, P17953843333872549363.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P8410149575324235917

`floor(ratio[A026605(2*n+1)])`
-/

namespace A026608.P8410149575324235917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026608.P8410149575324235917

namespace A026608

/-- `floor(ratio[A026605(2*n+1)])` -/
def P8410149575324235917.Spec : Prop :=
  ∀ n, P8410149575324235917.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P11939787569468182501

`A026605(2*n+3)-A057215(2*n)`
-/

namespace A026608.P11939787569468182501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (2 * n + 3) - A057215 (2 * n)

end

end A026608.P11939787569468182501

namespace A026608

/-- `A026605(2*n+3)-A057215(2*n)` -/
def P11939787569468182501.Spec : Prop :=
  ∀ n, P11939787569468182501.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P14366166659565243957

`A057215(2*n+1)+A057215(2*(n+1))`
-/

namespace A026608.P14366166659565243957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057215 (2 * n + 1) + A057215 (2 * (n + 1))

end

end A026608.P14366166659565243957

namespace A026608

/-- `A057215(2*n+1)+A057215(2*(n+1))` -/
def P14366166659565243957.Spec : Prop :=
  ∀ n, P14366166659565243957.a n = A026608 (n + 1)

end A026608

/-! ## A026608.P8297078210572797474

`Δ[A023717(A023717(n))%2]+1`
-/

namespace A026608.P8297078210572797474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 (A023717 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026608.P8297078210572797474

namespace A026608

/-- `Δ[A023717(A023717(n))%2]+1` -/
def P8297078210572797474.Spec : Prop :=
  ∀ n, P8297078210572797474.a n = A026608 (n + 1)

end A026608

/-!
# A026609: a(n) = number of 3's between n-th 1 and (n+1)st 1 in A026600.

The programs for A026609, the canonical program `A026609.P1056886591874448485` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026609 has offset 1).

The definition of A026609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026609.P11554114899907514278

`2-A026612(n+1)`
-/

namespace A026609.P11554114899907514278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026612 (n + 1)

end

end A026609.P11554114899907514278

namespace A026609

/-- `2-A026612(n+1)` -/
def P11554114899907514278.Spec : Prop :=
  ∀ n, P11554114899907514278.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P4540339415913843782

`1-Δ[A090239(n)!]`
-/

namespace A026609.P4540339415913843782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A090239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026609.P4540339415913843782

namespace A026609

/-- `1-Δ[A090239(n)!]` -/
def P4540339415913843782.Spec : Prop :=
  ∀ n, P4540339415913843782.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P7815072307715944213

`(Δ[A007089(n)²]+1)%3`
-/

namespace A026609.P7815072307715944213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 3

end

end A026609.P7815072307715944213

namespace A026609

/-- `(Δ[A007089(n)²]+1)%3` -/
def P7815072307715944213.Spec : Prop :=
  ∀ n, P7815072307715944213.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P1056886591874448485

`Δ[A011655(A053735(n))]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026609

/-- `Δ[A011655(A053735(n))]+1` -/
def P1056886591874448485.Spec : Prop :=
  ∀ n, P1056886591874448485.a n = A026609 (n + 1)

theorem P1056886591874448485.correct : P1056886591874448485.Spec := by
  intro n
  simp only [A026609, Nat.add_sub_cancel]

end A026609

/-! ## A026609.P12943285678905620245

`floor(ratio[gcd(2, A090193(n))])`
-/

namespace A026609.P12943285678905620245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A090193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026609.P12943285678905620245

namespace A026609

/-- `floor(ratio[gcd(2, A090193(n))])` -/
def P12943285678905620245.Spec : Prop :=
  ∀ n, P12943285678905620245.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P1056549786355631711

`1-Δ[floor(acot(A053838(n)))]`
-/

namespace A026609.P1056549786355631711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A053838 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026609.P1056549786355631711

namespace A026609

/-- `1-Δ[floor(acot(A053838(n)))]` -/
def P1056549786355631711.Spec : Prop :=
  ∀ n, P1056549786355631711.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P10377043451717946302

`Δ[round((A079498(n+1)-n)/2)]`
-/

namespace A026609.P10377043451717946302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079498 (n + 1) - (n : ℤ) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026609.P10377043451717946302

namespace A026609

/-- `Δ[round((A079498(n+1)-n)/2)]` -/
def P10377043451717946302.Spec : Prop :=
  ∀ n, P10377043451717946302.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P9782092034077669465

`Δ[A053838(n)]+2-A026611(n+1)`
-/

namespace A026609.P9782092034077669465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A026611 (n + 1))

end

end A026609.P9782092034077669465

namespace A026609

/-- `Δ[A053838(n)]+2-A026611(n+1)` -/
def P9782092034077669465.Spec : Prop :=
  ∀ n, P9782092034077669465.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P5880127395472513761

`Δ[A026600(n+1)]+2-A026611(n+1)`
-/

namespace A026609.P5880127395472513761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A026611 (n + 1))

end

end A026609.P5880127395472513761

namespace A026609

/-- `Δ[A026600(n+1)]+2-A026611(n+1)` -/
def P5880127395472513761.Spec : Prop :=
  ∀ n, P5880127395472513761.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P7714872724512151227

`A026613(n+1)+A026600(n+2)-A026600(n+1)`
-/

namespace A026609.P7714872724512151227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026613 (n + 1) + (A026600 (n + 2) - A026600 (n + 1))

end

end A026609.P7714872724512151227

namespace A026609

/-- `A026613(n+1)+A026600(n+2)-A026600(n+1)` -/
def P7714872724512151227.Spec : Prop :=
  ∀ n, P7714872724512151227.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P5555679158357482214

`floor(ratio[A026607(2*n+1)])`
-/

namespace A026609.P5555679158357482214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026607 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026609.P5555679158357482214

namespace A026609

/-- `floor(ratio[A026607(2*n+1)])` -/
def P5555679158357482214.Spec : Prop :=
  ∀ n, P5555679158357482214.a n = A026609 (n + 1)

end A026609

/-! ## A026609.P6243532033000413187

`C(A090239(n), A026612(3*(n+1)))`
-/

namespace A026609.P6243532033000413187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090239 n).toNat (A026612 (3 * (n + 1))).toNat

end

end A026609.P6243532033000413187

namespace A026609

/-- `C(A090239(n), A026612(3*(n+1)))` -/
def P6243532033000413187.Spec : Prop :=
  ∀ n, (P6243532033000413187.a n : ℤ) = A026609 (n + 1)

end A026609

/-! ## A026609.P16882901116572310163

`C(A090193(A016777(n)), A026612(3*(n+1)))`
-/

namespace A026609.P16882901116572310163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090193 (A016777 n).toNat).toNat (A026612 (3 * (n + 1))).toNat

end

end A026609.P16882901116572310163

namespace A026609

/-- `C(A090193(A016777(n)), A026612(3*(n+1)))` -/
def P16882901116572310163.Spec : Prop :=
  ∀ n, (P16882901116572310163.a n : ℤ) = A026609 (n + 1)

end A026609

/-!
# A026610: a(n) = number of 1's between n-th 2 and (n+1)st 2 in A026600.

The programs for A026610, the canonical program `A026610.P12474859572976114036` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026610 has offset 1).

The definition of A026610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026610.P12474859572976114036

`2-A026608(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026610

/-- `2-A026608(n+1)` -/
def P12474859572976114036.Spec : Prop :=
  ∀ n, P12474859572976114036.a n = A026610 (n + 1)

theorem P12474859572976114036.correct : P12474859572976114036.Spec := by
  intro n
  simp only [A026610, Nat.add_sub_cancel]

end A026610

/-! ## A026610.P5873401310070981414

`Δ[gcd(2, A007089(n)%3)]+1`
-/

namespace A026610.P5873401310070981414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (Int.tmod (A007089 n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A026610.P5873401310070981414

namespace A026610

/-- `Δ[gcd(2, A007089(n)%3)]+1` -/
def P5873401310070981414.Spec : Prop :=
  ∀ n, P5873401310070981414.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P8366731217663011559

`1-Δ[A007089(A053735(n))%2]`
-/

namespace A026610.P8366731217663011559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A053735 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026610.P8366731217663011559

namespace A026610

/-- `1-Δ[A007089(A053735(n))%2]` -/
def P8366731217663011559.Spec : Prop :=
  ∀ n, P8366731217663011559.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P5076281272528247752

`Δ[A090239(n)]+2-A026612(n+1)`
-/

namespace A026610.P5076281272528247752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 - A026612 (n + 1))

end

end A026610.P5076281272528247752

namespace A026610

/-- `Δ[A090239(n)]+2-A026612(n+1)` -/
def P5076281272528247752.Spec : Prop :=
  ∀ n, P5076281272528247752.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P11833689760282487399

`1-Δ[A053838(n)%2]`
-/

namespace A026610.P11833689760282487399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053838 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026610.P11833689760282487399

namespace A026610

/-- `1-Δ[A053838(n)%2]` -/
def P11833689760282487399.Spec : Prop :=
  ∀ n, P11833689760282487399.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P5985070909194683691

`1-Δ[C(A090193(n), 2)]`
-/

namespace A026610.P5985070909194683691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090193 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026610.P5985070909194683691

namespace A026610

/-- `1-Δ[C(A090193(n), 2)]` -/
def P5985070909194683691.Spec : Prop :=
  ∀ n, P5985070909194683691.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P14005051625018796499

`1-Δ[val(A026600(n+1), 2)]`
-/

namespace A026610.P14005051625018796499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A026600 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026610.P14005051625018796499

namespace A026610

/-- `1-Δ[val(A026600(n+1), 2)]` -/
def P14005051625018796499.Spec : Prop :=
  ∀ n, P14005051625018796499.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P15234213893776215224

`floor(ratio[A026605(2*(n+1))])`
-/

namespace A026610.P15234213893776215224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026610.P15234213893776215224

namespace A026610

/-- `floor(ratio[A026605(2*(n+1))])` -/
def P15234213893776215224.Spec : Prop :=
  ∀ n, P15234213893776215224.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P174233692513844857

`A057215(2*n+3)+A057215(2*n)`
-/

namespace A026610.P174233692513844857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057215 (2 * n + 3) + A057215 (2 * n)

end

end A026610.P174233692513844857

namespace A026610

/-- `A057215(2*n+3)+A057215(2*n)` -/
def P174233692513844857.Spec : Prop :=
  ∀ n, P174233692513844857.a n = A026610 (n + 1)

end A026610

/-! ## A026610.P4732617428521849712

`1-Δ[A023717(A023717(n))%2]`
-/

namespace A026610.P4732617428521849712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 (A023717 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026610.P4732617428521849712

namespace A026610

/-- `1-Δ[A023717(A023717(n))%2]` -/
def P4732617428521849712.Spec : Prop :=
  ∀ n, P4732617428521849712.a n = A026610 (n + 1)

end A026610

/-!
# A026611: Number of 3's between n-th 2 and (n+1)st 2 in A026600.

The programs for A026611, the canonical program `A026611.P12328329593331989993` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026611 has offset 1).

The definition of A026611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026611.P12328329593331989993

`2-A026613(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026611

/-- `2-A026613(n+1)` -/
def P12328329593331989993.Spec : Prop :=
  ∀ n, P12328329593331989993.a n = A026611 (n + 1)

theorem P12328329593331989993.correct : P12328329593331989993.Spec := by
  intro n
  simp only [A026611, Nat.add_sub_cancel]

end A026611

/-! ## A026611.P13676634629813930313

`Δ[A090239(n)%2]+1`
-/

namespace A026611.P13676634629813930313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090239 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026611.P13676634629813930313

namespace A026611

/-- `Δ[A090239(n)%2]+1` -/
def P13676634629813930313.Spec : Prop :=
  ∀ n, P13676634629813930313.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P1369305408946460498

`Δ[A053838(n)!]+1`
-/

namespace A026611.P1369305408946460498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A026611.P1369305408946460498

namespace A026611

/-- `Δ[A053838(n)!]+1` -/
def P1369305408946460498.Spec : Prop :=
  ∀ n, P1369305408946460498.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P15954524997030252332

`Δ[floor(acot(A090193(n)))]+1`
-/

namespace A026611.P15954524997030252332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A090193 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026611.P15954524997030252332

namespace A026611

/-- `Δ[floor(acot(A090193(n)))]+1` -/
def P15954524997030252332.Spec : Prop :=
  ∀ n, P15954524997030252332.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P11897080750716976355

`A026612(n+1)+Δ[A053838(n)]`
-/

namespace A026611.P11897080750716976355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026611.P11897080750716976355

namespace A026611

/-- `A026612(n+1)+Δ[A053838(n)]` -/
def P11897080750716976355.Spec : Prop :=
  ∀ n, P11897080750716976355.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P1540467222161051063

`A026612(n+1)+Δ[A026600(n+1)]`
-/

namespace A026611.P1540467222161051063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026611.P1540467222161051063

namespace A026611

/-- `A026612(n+1)+Δ[A026600(n+1)]` -/
def P1540467222161051063.Spec : Prop :=
  ∀ n, P1540467222161051063.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P3714499786406452202

`1-Δ[A090193(n)/A026600(n+1)]`
-/

namespace A026611.P3714499786406452202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090193 n : ℚ) / (A026600 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026611.P3714499786406452202

namespace A026611

/-- `1-Δ[A090193(n)/A026600(n+1)]` -/
def P3714499786406452202.Spec : Prop :=
  ∀ n, P3714499786406452202.a n = (A026611 (n + 1) : ℚ)

end A026611

/-! ## A026611.P17962141297631670192

`A026612(n+1)+A053838(n+1)-A053838(n)`
-/

namespace A026611.P17962141297631670192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (n + 1) + (A053838 (n + 1) - A053838 n)

end

end A026611.P17962141297631670192

namespace A026611

/-- `A026612(n+1)+A053838(n+1)-A053838(n)` -/
def P17962141297631670192.Spec : Prop :=
  ∀ n, P17962141297631670192.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P4661981773380301196

`A026612(n+1)+A026600(n+2)-A026600(n+1)`
-/

namespace A026611.P4661981773380301196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026612 (n + 1) + (A026600 (n + 2) - A026600 (n + 1))

end

end A026611.P4661981773380301196

namespace A026611

/-- `A026612(n+1)+A026600(n+2)-A026600(n+1)` -/
def P4661981773380301196.Spec : Prop :=
  ∀ n, P4661981773380301196.a n = A026611 (n + 1)

end A026611

/-! ## A026611.P9729974850836033935

`floor(ratio[A026606(2*n+1)])`
-/

namespace A026611.P9729974850836033935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026606 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026611.P9729974850836033935

namespace A026611

/-- `floor(ratio[A026606(2*n+1)])` -/
def P9729974850836033935.Spec : Prop :=
  ∀ n, P9729974850836033935.a n = A026611 (n + 1)

end A026611

/-!
# A026612: a(n) = number of 1's between n-th 3 and (n+1)st 3 in A026600.

The programs for A026612, the canonical program `A026612.P4528122590339004242` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026612 has offset 1).

The definition of A026612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026612.P4528122590339004242

`2-A026609(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026612

/-- `2-A026609(n+1)` -/
def P4528122590339004242.Spec : Prop :=
  ∀ n, P4528122590339004242.a n = A026612 (n + 1)

theorem P4528122590339004242.correct : P4528122590339004242.Spec := by
  intro n
  simp only [A026612, Nat.add_sub_cancel]

end A026612

/-! ## A026612.P2225037374205572179

`Δ[A090239(n)!]+1`
-/

namespace A026612.P2225037374205572179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A090239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A026612.P2225037374205572179

namespace A026612

/-- `Δ[A090239(n)!]+1` -/
def P2225037374205572179.Spec : Prop :=
  ∀ n, P2225037374205572179.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P11249251280918447107

`1-Δ[A011655(A053735(n))]`
-/

namespace A026612.P11249251280918447107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A053735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026612.P11249251280918447107

namespace A026612

/-- `1-Δ[A011655(A053735(n))]` -/
def P11249251280918447107.Spec : Prop :=
  ∀ n, P11249251280918447107.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P8966757521866179121

`1-Δ[gcd(2, A090193(n))]`
-/

namespace A026612.P8966757521866179121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A090193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026612.P8966757521866179121

namespace A026612

/-- `1-Δ[gcd(2, A090193(n))]` -/
def P8966757521866179121.Spec : Prop :=
  ∀ n, P8966757521866179121.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P14884548568875475493

`Δ[floor(acot(A053838(n)))]+1`
-/

namespace A026612.P14884548568875475493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A053838 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026612.P14884548568875475493

namespace A026612

/-- `Δ[floor(acot(A053838(n)))]+1` -/
def P14884548568875475493.Spec : Prop :=
  ∀ n, P14884548568875475493.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P2344469221506744385

`A026611(n+1)-Δ[A053838(n)]`
-/

namespace A026612.P2344469221506744385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026611 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026612.P2344469221506744385

namespace A026612

/-- `A026611(n+1)-Δ[A053838(n)]` -/
def P2344469221506744385.Spec : Prop :=
  ∀ n, P2344469221506744385.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P4371771332902228366

`A026611(n+1)-Δ[A026600(n+1)]`
-/

namespace A026612.P4371771332902228366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026611 (n + 1) - (f1 (n + 1) - f1 n)

end

end A026612.P4371771332902228366

namespace A026612

/-- `A026611(n+1)-Δ[A026600(n+1)]` -/
def P4371771332902228366.Spec : Prop :=
  ∀ n, P4371771332902228366.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P2074472807107985684

`A026611(n+1)+A053838(n)-A053838(n+1)`
-/

namespace A026612.P2074472807107985684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026611 (n + 1) + (A053838 n - A053838 (n + 1))

end

end A026612.P2074472807107985684

namespace A026612

/-- `A026611(n+1)+A053838(n)-A053838(n+1)` -/
def P2074472807107985684.Spec : Prop :=
  ∀ n, P2074472807107985684.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P2836430563276877254

`A026600(n+1)+A026611(n+1)-A026600(n+2)`
-/

namespace A026612.P2836430563276877254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) + (A026611 (n + 1) - A026600 (n + 2))

end

end A026612.P2836430563276877254

namespace A026612

/-- `A026600(n+1)+A026611(n+1)-A026600(n+2)` -/
def P2836430563276877254.Spec : Prop :=
  ∀ n, P2836430563276877254.a n = A026612 (n + 1)

end A026612

/-! ## A026612.P9553503615895298560

`floor(ratio[A026607(2*(n+1))])`
-/

namespace A026612.P9553503615895298560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026607 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026612.P9553503615895298560

namespace A026612

/-- `floor(ratio[A026607(2*(n+1))])` -/
def P9553503615895298560.Spec : Prop :=
  ∀ n, P9553503615895298560.a n = A026612 (n + 1)

end A026612

/-!
# A026613: Number of 2's between n-th 3 and (n+1)st 3 in A026600.

The programs for A026613, the canonical program `A026613.P910357922319226748` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026613 has offset 1).

The definition of A026613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026613.P1242336533443886706

`2-A026611(n+1)`
-/

namespace A026613.P1242336533443886706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026611 (n + 1)

end

end A026613.P1242336533443886706

namespace A026613

/-- `2-A026611(n+1)` -/
def P1242336533443886706.Spec : Prop :=
  ∀ n, P1242336533443886706.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P17040029144880063789

`1-Δ[A090239(n)%2]`
-/

namespace A026613.P17040029144880063789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090239 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026613.P17040029144880063789

namespace A026613

/-- `1-Δ[A090239(n)%2]` -/
def P17040029144880063789.Spec : Prop :=
  ∀ n, P17040029144880063789.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P910357922319226748

`Δ[-(A000217(A054861(n)+A028310(n)+2)%3)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026613

/-- `Δ[-(A000217(A054861(n)+A028310(n)+2)%3)]+1` -/
def P910357922319226748.Spec : Prop :=
  ∀ n, P910357922319226748.a n = A026613 (n + 1)

theorem P910357922319226748.correct : P910357922319226748.Spec := by
  intro n
  simp only [A026613, Nat.add_sub_cancel]

end A026613

/-! ## A026613.P5224486658008757274

`1-Δ[A053838(n)!]`
-/

namespace A026613.P5224486658008757274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A053838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A026613.P5224486658008757274

namespace A026613

/-- `1-Δ[A053838(n)!]` -/
def P5224486658008757274.Spec : Prop :=
  ∀ n, P5224486658008757274.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P5852108414927536146

`1-Δ[floor(acot(A090193(n)))]`
-/

namespace A026613.P5852108414927536146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A090193 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026613.P5852108414927536146

namespace A026613

/-- `1-Δ[floor(acot(A090193(n)))]` -/
def P5852108414927536146.Spec : Prop :=
  ∀ n, P5852108414927536146.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P665727422819420771

`2-(A026612(n+1)+Δ[A053838(n)])`
-/

namespace A026613.P665727422819420771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A026612 (n + 1) + (f1 (n + 1) - f1 n))

end

end A026613.P665727422819420771

namespace A026613

/-- `2-(A026612(n+1)+Δ[A053838(n)])` -/
def P665727422819420771.Spec : Prop :=
  ∀ n, P665727422819420771.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P5579910619057412338

`Δ[A090193(n)/A026600(n+1)]+1`
-/

namespace A026613.P5579910619057412338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090193 n : ℚ) / (A026600 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026613.P5579910619057412338

namespace A026613

/-- `Δ[A090193(n)/A026600(n+1)]+1` -/
def P5579910619057412338.Spec : Prop :=
  ∀ n, P5579910619057412338.a n = (A026613 (n + 1) : ℚ)

end A026613

/-! ## A026613.P1354150277781842510

`2-(A026612(n+1)+Δ[A026600(n+1)])`
-/

namespace A026613.P1354150277781842510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A026612 (n + 1) + (f1 (n + 1) - f1 n))

end

end A026613.P1354150277781842510

namespace A026613

/-- `2-(A026612(n+1)+Δ[A026600(n+1)])` -/
def P1354150277781842510.Spec : Prop :=
  ∀ n, P1354150277781842510.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P12771605583451399456

`Δ[A026601(n+1)]-2*A026609(n+1)`
-/

namespace A026613.P12771605583451399456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A026609 (n + 1)

end

end A026613.P12771605583451399456

namespace A026613

/-- `Δ[A026601(n+1)]-2*A026609(n+1)` -/
def P12771605583451399456.Spec : Prop :=
  ∀ n, P12771605583451399456.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P10552352847015475014

`A026609(n+1)+A053838(n)-A053838(n+1)`
-/

namespace A026613.P10552352847015475014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026609 (n + 1) + (A053838 n - A053838 (n + 1))

end

end A026613.P10552352847015475014

namespace A026613

/-- `A026609(n+1)+A053838(n)-A053838(n+1)` -/
def P10552352847015475014.Spec : Prop :=
  ∀ n, P10552352847015475014.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P12780155894606283668

`A026600(n+1)+A026609(n+1)-A026600(n+2)`
-/

namespace A026613.P12780155894606283668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) + (A026609 (n + 1) - A026600 (n + 2))

end

end A026613.P12780155894606283668

namespace A026613

/-- `A026600(n+1)+A026609(n+1)-A026600(n+2)` -/
def P12780155894606283668.Spec : Prop :=
  ∀ n, P12780155894606283668.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P13041212421484605797

`floor(ratio[A026606(2*(n+1))])`
-/

namespace A026613.P13041212421484605797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A026613.P13041212421484605797

namespace A026613

/-- `floor(ratio[A026606(2*(n+1))])` -/
def P13041212421484605797.Spec : Prop :=
  ∀ n, P13041212421484605797.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P13822501181479850359

`1-Δ[A000034(A079498(n+1)-n)]`
-/

namespace A026613.P13822501181479850359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A079498 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026613.P13822501181479850359

namespace A026613

/-- `1-Δ[A000034(A079498(n+1)-n)]` -/
def P13822501181479850359.Spec : Prop :=
  ∀ n, P13822501181479850359.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P7041154192039192403

`1-Δ[A000007((n+1)*A090193(n))]`
-/

namespace A026613.P7041154192039192403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A090193 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A026613.P7041154192039192403

namespace A026613

/-- `1-Δ[A000007((n+1)*A090193(n))]` -/
def P7041154192039192403.Spec : Prop :=
  ∀ n, P7041154192039192403.a n = A026613 (n + 1)

end A026613

/-! ## A026613.P14871872732999700107

`Δ[A000034(A079498(n+1)+A000034(n))]+1`
-/

namespace A026613.P14871872732999700107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A079498 (n + 1) + A000034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A026613.P14871872732999700107

namespace A026613

/-- `Δ[A000034(A079498(n+1)+A000034(n))]+1` -/
def P14871872732999700107.Spec : Prop :=
  ∀ n, P14871872732999700107.a n = A026613 (n + 1)

end A026613

/-!
# A026614: a(n) least k > a(n-1) such that a(k)=s(n), for n >= 2, where s = A026600.

The programs for A026614, there is no canonical definition to state claims against.
-/

/-! ## A026614.P18055139910329757634

`3*n+A321090(A002414(n+1))+1`
-/

namespace A026614.P18055139910329757634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A321090 (A002414 (n + 1)).toNat + 1)

end

end A026614.P18055139910329757634

/-! ## A026614.P5118643645967957027

`A321090(A002414(n+1))+A004767(n)-(n+2)`
-/

namespace A026614.P5118643645967957027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (A002414 (n + 1)).toNat + (A004767 n - (n + 2 : ℤ))

end

end A026614.P5118643645967957027

/-! ## A026614.P12910665816095095952

`A366847(n+1)-A007949(A014641(2*(n+2)))`
-/

namespace A026614.P12910665816095095952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (n + 1) - A007949 (A014641 (2 * (n + 2))).toNat

end

end A026614.P12910665816095095952

/-! ## A026614.P1733270170000491707

`A049347(A027894(n+1))+A016789(n)`
-/

namespace A026614.P1733270170000491707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A027894 (n + 1)).toNat + A016789 n

end

end A026614.P1733270170000491707

/-! ## A026614.P1059176861995476272

`A049347(A291217(2*(n+1)))+A016789(n)`
-/

namespace A026614.P1059176861995476272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A291217 (2 * (n + 1))).toNat + A016789 n

end

end A026614.P1059176861995476272

/-!
# A026615: Triangle read by rows: T(n,0) = T(n,n) = 1 for n >= 0, T(n,1) = T(n,n-1) = 2*n-1 for n >= 1, T(n,k) = T(n-1,k-1) + T(n-1,k) for 2 <= k <= n-2 and n >= 4.

The programs for A026615, the canonical program `A026615.P4384294417434262214` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026615 has offset 0).

The definition of A026615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026615.P11324277817929680008

`A072405(n)+A132735(n)-1`
-/

namespace A026615.P11324277817929680008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n + (A132735 n - 1)

end

end A026615.P11324277817929680008

namespace A026615

/-- `A072405(n)+A132735(n)-1` -/
def P11324277817929680008.Spec : Prop :=
  ∀ n, P11324277817929680008.a n = A026615 n

end A026615

/-! ## A026615.P9905487474091766373

`(A132047(n)+A087698(n))/2`
-/

namespace A026615.P9905487474091766373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132047 n + A087698 n : ℚ) / 2

end

end A026615.P9905487474091766373

namespace A026615

/-- `(A132047(n)+A087698(n))/2` -/
def P9905487474091766373.Spec : Prop :=
  ∀ n, P9905487474091766373.a n = (A026615 n : ℚ)

end A026615

/-! ## A026615.P4384294417434262214

`A028326(n)-A135225(A083920(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A026615

/-- `A028326(n)-A135225(A083920(n))` -/
def P4384294417434262214.Spec : Prop :=
  ∀ n, P4384294417434262214.a n = A026615 n

theorem P4384294417434262214.correct : P4384294417434262214.Spec := by
  intro n
  simp only [A026615]

end A026615

/-! ## A026615.P1803626357134652577

`A028326(n)-A135225(A271439(n))`
-/

namespace A026615.P1803626357134652577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135225 (A271439 n).toNat

end

end A026615.P1803626357134652577

namespace A026615

/-- `A028326(n)-A135225(A271439(n))` -/
def P1803626357134652577.Spec : Prop :=
  ∀ n, P1803626357134652577.a n = A026615 n

end A026615

/-! ## A026615.P1603404780866871416

`abs(A029618(n)-A029635(A271439(n)))`
-/

namespace A026615.P1603404780866871416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029618 n - A029635 (A271439 n).toNat|

end

end A026615.P1603404780866871416

namespace A026615

/-- `abs(A029618(n)-A029635(A271439(n)))` -/
def P1603404780866871416.Spec : Prop :=
  ∀ n, P1603404780866871416.a n = A026615 n

end A026615

/-! ## A026615.P15576762603435307101

`A028262(n)+A028326(n)%A028275(n)`
-/

namespace A026615.P15576762603435307101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + Int.tmod (A028326 n) (A028275 n)

end

end A026615.P15576762603435307101

namespace A026615

/-- `A028262(n)+A028326(n)%A028275(n)` -/
def P15576762603435307101.Spec : Prop :=
  ∀ n, P15576762603435307101.a n = A026615 n

end A026615

/-! ## A026615.P12758435987518740143

`A028326(n)-A135225(n-2*A002262(n))`
-/

namespace A026615.P12758435987518740143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135225 ((n : ℤ) - 2 * A002262 n).toNat

end

end A026615.P12758435987518740143

namespace A026615

/-- `A028326(n)-A135225(n-2*A002262(n))` -/
def P12758435987518740143.Spec : Prop :=
  ∀ n, P12758435987518740143.a n = A026615 n

end A026615

/-! ## A026615.P16709428650811949449

`A131060(n)+1-A173075(n)`
-/

namespace A026615.P16709428650811949449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + (1 - A173075 n)

end

end A026615.P16709428650811949449

namespace A026615

/-- `A131060(n)+1-A173075(n)` -/
def P16709428650811949449.Spec : Prop :=
  ∀ n, P16709428650811949449.a n = A026615 n

end A026615

/-! ## A026615.P15473618696135979565

`A028326(n)-A028310(A144225(n+1))`
-/

namespace A026615.P15473618696135979565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A028310 (A144225 (n + 1)).toNat

end

end A026615.P15473618696135979565

namespace A026615

/-- `A028326(n)-A028310(A144225(n+1))` -/
def P15473618696135979565.Spec : Prop :=
  ∀ n, P15473618696135979565.a n = A026615 n

end A026615

/-! ## A026615.P9147291521903559366

`A318518(A132047(n)+A087698(n))`
-/

namespace A026615.P9147291521903559366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A132047 n + A087698 n).toNat

end

end A026615.P9147291521903559366

namespace A026615

/-- `A318518(A132047(n)+A087698(n))` -/
def P9147291521903559366.Spec : Prop :=
  ∀ n, P9147291521903559366.a n = A026615 n

end A026615

/-! ## A026615.P14618141880056375180

`A132735(n)-A024000(A072405(n))`
-/

namespace A026615.P14618141880056375180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132735 n - A024000 (A072405 n).toNat

end

end A026615.P14618141880056375180

namespace A026615

/-- `A132735(n)-A024000(A072405(n))` -/
def P14618141880056375180.Spec : Prop :=
  ∀ n, P14618141880056375180.a n = A026615 n

end A026615

/-! ## A026615.P18268728195037398112

`A016789(A014473(n))-A173075(n)`
-/

namespace A026615.P18268728195037398112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A014473 n).toNat - A173075 n

end

end A026615.P18268728195037398112

namespace A026615

/-- `A016789(A014473(n))-A173075(n)` -/
def P18268728195037398112.Spec : Prop :=
  ∀ n, P18268728195037398112.a n = A026615 n

end A026615

/-! ## A026615.P16626728354984712059

`A005843(A007318(n))-A135225(n-2*A002262(n))`
-/

namespace A026615.P16626728354984712059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat - A135225 ((n : ℤ) - 2 * A002262 n).toNat

end

end A026615.P16626728354984712059

namespace A026615

/-- `A005843(A007318(n))-A135225(n-2*A002262(n))` -/
def P16626728354984712059.Spec : Prop :=
  ∀ n, P16626728354984712059.a n = A026615 n

end A026615

/-! ## A026615.P11089228504405201591

`A131060(n)+A024000(A173075(n))`
-/

namespace A026615.P11089228504405201591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n + A024000 (A173075 n).toNat

end

end A026615.P11089228504405201591

namespace A026615

/-- `A131060(n)+A024000(A173075(n))` -/
def P11089228504405201591.Spec : Prop :=
  ∀ n, P11089228504405201591.a n = A026615 n

end A026615

/-! ## A026615.P10040709363400946384

`2-A024000(A131060(n)-A173075(n))`
-/

namespace A026615.P10040709363400946384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A131060 n - A173075 n).toNat

end

end A026615.P10040709363400946384

namespace A026615

/-- `2-A024000(A131060(n)-A173075(n))` -/
def P10040709363400946384.Spec : Prop :=
  ∀ n, P10040709363400946384.a n = A026615 n

end A026615

/-! ## A026615.P130800282408461343

`A072405(n)+A028242(A132731(n))`
-/

namespace A026615.P130800282408461343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n + A028242 (A132731 n).toNat

end

end A026615.P130800282408461343

namespace A026615

/-- `A072405(n)+A028242(A132731(n))` -/
def P130800282408461343.Spec : Prop :=
  ∀ n, P130800282408461343.a n = A026615 n

end A026615

/-! ## A026615.P9756307698604419111

`A007494(A109128(n))-A173075(n)`
-/

namespace A026615.P9756307698604419111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A109128 n).toNat - A173075 n

end

end A026615.P9756307698604419111

namespace A026615

/-- `A007494(A109128(n))-A173075(n)` -/
def P9756307698604419111.Spec : Prop :=
  ∀ n, P9756307698604419111.a n = A026615 n

end A026615

/-!
# A026616: a(n) = A026615(2*n, n).

The programs for A026616, the canonical program `A026616.P7774796732190663953` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026616 has offset 0).

The definition of A026616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026616.P2266911405560470413

`A026621(2*n)`
-/

namespace A026616.P2266911405560470413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026621 (2 * n)

end

end A026616.P2266911405560470413

namespace A026616

/-- `A026621(2*n)` -/
def P2266911405560470413.Spec : Prop :=
  ∀ n, P2266911405560470413.a n = A026616 n

end A026616

/-! ## A026616.P10329760750979247091

`A100320(n)+n*A115140(n)`
-/

namespace A026616.P10329760750979247091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + (n : ℤ) * A115140 n

end

end A026616.P10329760750979247091

namespace A026616

/-- `A100320(n)+n*A115140(n)` -/
def P10329760750979247091.Spec : Prop :=
  ∀ n, P10329760750979247091.a n = A026616 n

end A026616

/-! ## A026616.P8038730487959028960

`A100320(n)-n*A120588(n)`
-/

namespace A026616.P8038730487959028960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n - (n : ℤ) * A120588 n

end

end A026616.P8038730487959028960

namespace A026616

/-- `A100320(n)-n*A120588(n)` -/
def P8038730487959028960.Spec : Prop :=
  ∀ n, P8038730487959028960.a n = A026616 n

end A026616

/-! ## A026616.P14280313471217212097

`2*A001405(2*n)-A191529(2*n)`
-/

namespace A026616.P14280313471217212097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 (2 * n) - A191529 (2 * n)

end

end A026616.P14280313471217212097

namespace A026616

/-- `2*A001405(2*n)-A191529(2*n)` -/
def P14280313471217212097.Spec : Prop :=
  ∀ n, P14280313471217212097.a n = A026616 n

end A026616

/-! ## A026616.P7774796732190663953

`A028329(n)-A000984((2*n)%(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026616

/-- `A028329(n)-A000984((2*n)%(n+1))` -/
def P7774796732190663953.Spec : Prop :=
  ∀ n, P7774796732190663953.a n = A026616 n

theorem P7774796732190663953.correct : P7774796732190663953.Spec := by
  intro n
  simp only [A026616]

end A026616

/-! ## A026616.P4270418614462995655

`A037955(A004275(n))+A029651(n)`
-/

namespace A026616.P4270418614462995655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (A004275 n).toNat + A029651 n

end

end A026616.P4270418614462995655

namespace A026616

/-- `A037955(A004275(n))+A029651(n)` -/
def P4270418614462995655.Spec : Prop :=
  ∀ n, P4270418614462995655.a n = A026616 n

end A026616

/-! ## A026616.P5401242229995007946

`A028329(n)-A001405(A004275(n))`
-/

namespace A026616.P5401242229995007946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A001405 (A004275 n).toNat

end

end A026616.P5401242229995007946

namespace A026616

/-- `A028329(n)-A001405(A004275(n))` -/
def P5401242229995007946.Spec : Prop :=
  ∀ n, P5401242229995007946.a n = A026616 n

end A026616

/-! ## A026616.P10593922983411303439

`A000984(n)+A244174(n)-A323230(n)`
-/

namespace A026616.P10593922983411303439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A244174 n - A323230 n)

end

end A026616.P10593922983411303439

namespace A026616

/-- `A000984(n)+A244174(n)-A323230(n)` -/
def P10593922983411303439.Spec : Prop :=
  ∀ n, P10593922983411303439.a n = A026616 n

end A026616

/-! ## A026616.P5960993388884517199

`A000984(n)+Δ[A000984(n-A057427(n))]`
-/

namespace A026616.P5960993388884517199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (f1 (n + 1) - f1 n)

end

end A026616.P5960993388884517199

namespace A026616

/-- `A000984(n)+Δ[A000984(n-A057427(n))]` -/
def P5960993388884517199.Spec : Prop :=
  ∀ n, P5960993388884517199.a n = A026616 n

end A026616

/-! ## A026616.P4813620885784210968

`A001405(2*n)+Δ[A001405(A289207(2*n))]`
-/

namespace A026616.P4813620885784210968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A289207 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (f1 (n + 1) - f1 n)

end

end A026616.P4813620885784210968

namespace A026616

/-- `A001405(2*n)+Δ[A001405(A289207(2*n))]` -/
def P4813620885784210968.Spec : Prop :=
  ∀ n, P4813620885784210968.a n = A026616 n

end A026616

/-! ## A026616.P18204015874771890905

`A063886(2*n+1)-A001405(A289207(2*n))`
-/

namespace A026616.P18204015874771890905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1) - A001405 (A289207 (2 * n)).toNat

end

end A026616.P18204015874771890905

namespace A026616

/-- `A063886(2*n+1)-A001405(A289207(2*n))` -/
def P18204015874771890905.Spec : Prop :=
  ∀ n, P18204015874771890905.a n = A026616 n

end A026616

/-! ## A026616.P16339577091347441298

`2*A026623(2*n)-A026622(2*n)`
-/

namespace A026616.P16339577091347441298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026623 (2 * n) - A026622 (2 * n)

end

end A026616.P16339577091347441298

namespace A026616

/-- `2*A026623(2*n)-A026622(2*n)` -/
def P16339577091347441298.Spec : Prop :=
  ∀ n, P16339577091347441298.a n = A026616 n

end A026616

/-! ## A026616.P18133618905999356958

`A028329(n)-A100100(A000124(n))`
-/

namespace A026616.P18133618905999356958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A100100 (A000124 n).toNat

end

end A026616.P18133618905999356958

namespace A026616

/-- `A028329(n)-A100100(A000124(n))` -/
def P18133618905999356958.Spec : Prop :=
  ∀ n, P18133618905999356958.a n = A026616 n

end A026616

/-!
# A026617: a(n) = A026615(2*n, n-1).

The programs for A026617, the canonical program `A026617.P650469128402918254` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026617 has offset 1).

The definition of A026617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026617.P650469128402918254

`A053369(n)-A071721(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026617

/-- `A053369(n)-A071721(n)` -/
def P650469128402918254.Spec : Prop :=
  ∀ n, P650469128402918254.a n = A026617 (n + 1)

theorem P650469128402918254.correct : P650469128402918254.Spec := by
  intro n
  simp only [A026617, Nat.add_sub_cancel]

end A026617

/-! ## A026617.P16531727018030564834

`A053369(n)-Δ[A068875(n)]`
-/

namespace A026617.P16531727018030564834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053369 n - (f1 (n + 1) - f1 n)

end

end A026617.P16531727018030564834

namespace A026617

/-- `A053369(n)-Δ[A068875(n)]` -/
def P16531727018030564834.Spec : Prop :=
  ∀ n, P16531727018030564834.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P17235042018359912190

`Δ[Δ[A244174(n)]]-A001700(n)`
-/

namespace A026617.P17235042018359912190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001700 n

end

end A026617.P17235042018359912190

namespace A026617

/-- `Δ[Δ[A244174(n)]]-A001700(n)` -/
def P17235042018359912190.Spec : Prop :=
  ∀ n, P17235042018359912190.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P975114275724217682

`Δ[Δ[A244174(n)]-A024718(n)]`
-/

namespace A026617.P975114275724217682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244174 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026617.P975114275724217682

namespace A026617

/-- `Δ[Δ[A244174(n)]-A024718(n)]` -/
def P975114275724217682.Spec : Prop :=
  ∀ n, P975114275724217682.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P15764003541795208920

`A053369(n)-A005508(A004273(n))`
-/

namespace A026617.P15764003541795208920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053369 n - A005508 (A004273 n).toNat

end

end A026617.P15764003541795208920

namespace A026617

/-- `A053369(n)-A005508(A004273(n))` -/
def P15764003541795208920.Spec : Prop :=
  ∀ n, P15764003541795208920.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P7028194147872484270

`A000108(n)+A050477(n)-A071721(n)`
-/

namespace A026617.P7028194147872484270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A050477 n - A071721 n)

end

end A026617.P7028194147872484270

namespace A026617

/-- `A000108(n)+A050477(n)-A071721(n)` -/
def P7028194147872484270.Spec : Prop :=
  ∀ n, P7028194147872484270.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P16782130397835723892

`A026615(A001844(n+1))`
-/

namespace A026617.P16782130397835723892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A001844 (n + 1)).toNat

end

end A026617.P16782130397835723892

namespace A026617

/-- `A026615(A001844(n+1))` -/
def P16782130397835723892.Spec : Prop :=
  ∀ n, P16782130397835723892.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P18283704828833973299

`A026615(A090288(n)+1)`
-/

namespace A026617.P18283704828833973299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A090288 n + 1).toNat

end

end A026617.P18283704828833973299

namespace A026617

/-- `A026615(A090288(n)+1)` -/
def P18283704828833973299.Spec : Prop :=
  ∀ n, P18283704828833973299.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P10848573045927911880

`A026615(A099776(n+1))`
-/

namespace A026617.P10848573045927911880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A099776 (n + 1)).toNat

end

end A026617.P10848573045927911880

namespace A026617

/-- `A026615(A099776(n+1))` -/
def P10848573045927911880.Spec : Prop :=
  ∀ n, P10848573045927911880.a n = A026617 (n + 1)

end A026617

/-! ## A026617.P5943052477552644178

`A026615(A132209(n+1))`
-/

namespace A026617.P5943052477552644178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A132209 (n + 1)).toNat

end

end A026617.P5943052477552644178

namespace A026617

/-- `A026615(A132209(n+1))` -/
def P5943052477552644178.Spec : Prop :=
  ∀ n, P5943052477552644178.a n = A026617 (n + 1)

end A026617

/-!
# A026618: a(n) = A026618(2*n, n-2).

The programs for A026618, the canonical program `A026618.P9524897013692992318` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026618 has offset 2).

The definition of A026618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026618.P9524897013692992318

`A002694(n+3)-Δ[Δ[A048060(2*(n+1))]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026618

/-- `A002694(n+3)-Δ[Δ[A048060(2*(n+1))]]` -/
def P9524897013692992318.Spec : Prop :=
  ∀ n, P9524897013692992318.a n = A026618 (n + 2)

theorem P9524897013692992318.correct : P9524897013692992318.Spec := by
  intro n
  simp only [A026618, Nat.add_sub_cancel]

end A026618

/-! ## A026618.P2958165330863398043

`A002694(n+2)+Δ[A048060(A103517(n))]`
-/

namespace A026618.P2958165330863398043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048060 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) + (f1 (n + 1) - f1 n)

end

end A026618.P2958165330863398043

namespace A026618

/-- `A002694(n+2)+Δ[A048060(A103517(n))]` -/
def P2958165330863398043.Spec : Prop :=
  ∀ n, P2958165330863398043.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P11167493667885180172

`A006659(n+1)-A034870(A028552(n))`
-/

namespace A026618.P11167493667885180172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006659 (n + 1) - A034870 (A028552 n).toNat

end

end A026618.P11167493667885180172

namespace A026618

/-- `A006659(n+1)-A034870(A028552(n))` -/
def P11167493667885180172.Spec : Prop :=
  ∀ n, P11167493667885180172.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P12353866708322432874

`2*A002694(n+2)-A034870(A028552(n))`
-/

namespace A026618.P12353866708322432874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002694 (n + 2) - A034870 (A028552 n).toNat

end

end A026618.P12353866708322432874

namespace A026618

/-- `2*A002694(n+2)-A034870(A028552(n))` -/
def P12353866708322432874.Spec : Prop :=
  ∀ n, P12353866708322432874.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P10171537455153201794

`A002694(n+2)+Δ[A034870(A028552(n))]`
-/

namespace A026618.P10171537455153201794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A028552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) + (f1 (n + 1) - f1 n)

end

end A026618.P10171537455153201794

namespace A026618

/-- `A002694(n+2)+Δ[A034870(A028552(n))]` -/
def P10171537455153201794.Spec : Prop :=
  ∀ n, P10171537455153201794.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P2863013827650782804

`A006659(n+1)-A007318(A090288(n))`
-/

namespace A026618.P2863013827650782804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006659 (n + 1) - A007318 (A090288 n).toNat

end

end A026618.P2863013827650782804

namespace A026618

/-- `A006659(n+1)-A007318(A090288(n))` -/
def P2863013827650782804.Spec : Prop :=
  ∀ n, P2863013827650782804.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P7210938515700983964

`A026615(A090288(n+1))`
-/

namespace A026618.P7210938515700983964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A090288 (n + 1)).toNat

end

end A026618.P7210938515700983964

namespace A026618

/-- `A026615(A090288(n+1))` -/
def P7210938515700983964.Spec : Prop :=
  ∀ n, P7210938515700983964.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P5147694899811516456

`A026615(A099776(n+2)+1)`
-/

namespace A026618.P5147694899811516456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A099776 (n + 2) + 1).toNat

end

end A026618.P5147694899811516456

namespace A026618

/-- `A026615(A099776(n+2)+1)` -/
def P5147694899811516456.Spec : Prop :=
  ∀ n, P5147694899811516456.a n = A026618 (n + 2)

end A026618

/-! ## A026618.P11652615636789277693

`A026615(A058331(n+2)+2*n+1)`
-/

namespace A026618.P11652615636789277693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A058331 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A026618.P11652615636789277693

namespace A026618

/-- `A026615(A058331(n+2)+2*n+1)` -/
def P11652615636789277693.Spec : Prop :=
  ∀ n, P11652615636789277693.a n = A026618 (n + 2)

end A026618

/-!
# A026619: a(n) = A026615(2*n-1, n-1).

The programs for A026619, the canonical program `A026619.P8009032634498596623` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026619 has offset 1).

The definition of A026619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026619.P1386310955642532526

`Δ[(4-2/n)*a(n-1)]+∏[4-2/(n+1)]/2` with `a(0)=1, a(1)=1`
-/

namespace A026619.P1386310955642532526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P1386310955642532526

namespace A026619

/-- `Δ[(4-2/n)*a(n-1)]+∏[4-2/(n+1)]/2` -/
def P1386310955642532526.Spec : Prop :=
  ∀ n, P1386310955642532526.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P11278970615718783480

`A026621(Δ[n²])`
-/

namespace A026619.P11278970615718783480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026619.P11278970615718783480

namespace A026619

/-- `A026621(Δ[n²])` -/
def P11278970615718783480.Spec : Prop :=
  ∀ n, P11278970615718783480.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P12564050587931218735

`Δ[A088218(n)]+∏[4-2/(n+1)]/2`
-/

namespace A026619.P12564050587931218735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P12564050587931218735

namespace A026619

/-- `Δ[A088218(n)]+∏[4-2/(n+1)]/2` -/
def P12564050587931218735.Spec : Prop :=
  ∀ n, P12564050587931218735.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P2854340437721272471

`Δ[A260878(n)]+∏[4-2/(n+1)]/2`
-/

namespace A026619.P2854340437721272471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P2854340437721272471

namespace A026619

/-- `Δ[A260878(n)]+∏[4-2/(n+1)]/2` -/
def P2854340437721272471.Spec : Prop :=
  ∀ n, P2854340437721272471.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P1191397755191735103

`Δ[ceil(A029651(n)/3)]+∏[4-2/(n+1)]/2`
-/

namespace A026619.P1191397755191735103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029651 n : ℚ) / 3⌉

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P1191397755191735103

namespace A026619

/-- `Δ[ceil(A029651(n)/3)]+∏[4-2/(n+1)]/2` -/
def P1191397755191735103.Spec : Prop :=
  ∀ n, P1191397755191735103.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P8978170068638471010

`Δ[ceil(A001405(2*n)/2)]+∏[4-2/(n+1)]/2`
-/

namespace A026619.P8978170068638471010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001405 (2 * n) : ℚ) / 2⌉

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P8978170068638471010

namespace A026619

/-- `Δ[ceil(A001405(2*n)/2)]+∏[4-2/(n+1)]/2` -/
def P8978170068638471010.Spec : Prop :=
  ∀ n, P8978170068638471010.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P8148841996132631667

`Δ[ceil(A050168(2*n)/3)]+∏[4-2/(n+1)]/2`
-/

namespace A026619.P8148841996132631667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050168 (2 * n) : ℚ) / 3⌉

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P8148841996132631667

namespace A026619

/-- `Δ[ceil(A050168(2*n)/3)]+∏[4-2/(n+1)]/2` -/
def P8148841996132631667.Spec : Prop :=
  ∀ n, P8148841996132631667.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P7818027604335612239

`Δ[ceil((n+1)/2*A000108(n))]+∏[4-2/(n+1)]/2`
-/

namespace A026619.P7818027604335612239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A000108 n : ℚ)⌉

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A026619.P7818027604335612239

namespace A026619

/-- `Δ[ceil((n+1)/2*A000108(n))]+∏[4-2/(n+1)]/2` -/
def P7818027604335612239.Spec : Prop :=
  ∀ n, P7818027604335612239.a n = (A026619 (n + 1) : ℚ)

end A026619

/-! ## A026619.P12229104774679802170

`A165205(n)+A001791(n)`
-/

namespace A026619.P12229104774679802170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165205 n + A001791 n

end

end A026619.P12229104774679802170

namespace A026619

/-- `A165205(n)+A001791(n)` -/
def P12229104774679802170.Spec : Prop :=
  ∀ n, P12229104774679802170.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P278038723082385712

`A162551(n)+A029651(n)`
-/

namespace A026619.P278038723082385712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A029651 n

end

end A026619.P278038723082385712

namespace A026619

/-- `A162551(n)+A029651(n)` -/
def P278038723082385712.Spec : Prop :=
  ∀ n, P278038723082385712.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P1031659274687182051

`A189176(n)+A062561(n)`
-/

namespace A026619.P1031659274687182051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + A062561 n

end

end A026619.P1031659274687182051

namespace A026619

/-- `A189176(n)+A062561(n)` -/
def P1031659274687182051.Spec : Prop :=
  ∀ n, P1031659274687182051.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P8009032634498596623

`record[Δ[A001405(A014681(n))]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026619

/-- `record[Δ[A001405(A014681(n))]]` -/
def P8009032634498596623.Spec : Prop :=
  ∀ n, P8009032634498596623.a n = A026619 (n + 1)

theorem P8009032634498596623.correct : P8009032634498596623.Spec := by
  intro n
  simp only [A026619, Nat.add_sub_cancel]

end A026619

/-! ## A026619.P6396189137002075351

`A001700(n)+Δ[A088218(n)]`
-/

namespace A026619.P6396189137002075351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (f1 (n + 1) - f1 n)

end

end A026619.P6396189137002075351

namespace A026619

/-- `A001700(n)+Δ[A088218(n)]` -/
def P6396189137002075351.Spec : Prop :=
  ∀ n, P6396189137002075351.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P8329517288401403646

`Δ[A088218(n)+A024718(n)]`
-/

namespace A026619.P8329517288401403646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026619.P8329517288401403646

namespace A026619

/-- `Δ[A088218(n)+A024718(n)]` -/
def P8329517288401403646.Spec : Prop :=
  ∀ n, P8329517288401403646.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P6514249331015926604

`Δ[A006134(n)]-A088218(n)`
-/

namespace A026619.P6514249331015926604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088218 n

end

end A026619.P6514249331015926604

namespace A026619

/-- `Δ[A006134(n)]-A088218(n)` -/
def P6514249331015926604.Spec : Prop :=
  ∀ n, P6514249331015926604.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P12481391130365356151

`A129869(n+1)+A028329(n)`
-/

namespace A026619.P12481391130365356151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129869 (n + 1) + A028329 n

end

end A026619.P12481391130365356151

namespace A026619

/-- `A129869(n+1)+A028329(n)` -/
def P12481391130365356151.Spec : Prop :=
  ∀ n, P12481391130365356151.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P15952408731213565855

`A000984(n+1)-A088218(n)`
-/

namespace A026619.P15952408731213565855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A088218 n

end

end A026619.P15952408731213565855

namespace A026619

/-- `A000984(n+1)-A088218(n)` -/
def P15952408731213565855.Spec : Prop :=
  ∀ n, P15952408731213565855.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P13300054746776902529

`A053368(n)-A097613(n+1)`
-/

namespace A026619.P13300054746776902529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053368 n - A097613 (n + 1)

end

end A026619.P13300054746776902529

namespace A026619

/-- `A053368(n)-A097613(n+1)` -/
def P13300054746776902529.Spec : Prop :=
  ∀ n, P13300054746776902529.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P17457717586702721706

`A146533(n)-A262543(n+1)`
-/

namespace A026619.P17457717586702721706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146533 n - A262543 (n + 1)

end

end A026619.P17457717586702721706

namespace A026619

/-- `A146533(n)-A262543(n+1)` -/
def P17457717586702721706.Spec : Prop :=
  ∀ n, P17457717586702721706.a n = A026619 (n + 1)

end A026619

/-! ## A026619.P7034949946736608089

`A244174(n+1)-A260878(n)`
-/

namespace A026619.P7034949946736608089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244174 (n + 1) - A260878 n

end

end A026619.P7034949946736608089

namespace A026619

/-- `A244174(n+1)-A260878(n)` -/
def P7034949946736608089.Spec : Prop :=
  ∀ n, P7034949946736608089.a n = A026619 (n + 1)

end A026619

/-!
# A026620: a(n) = A026615(2*n-1, n-2).

The programs for A026620, the canonical program `A026620.P15880584792676228702` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026620 has offset 2).

The definition of A026620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026620.P15880584792676228702

`A002054(n+1)+Δ[A002054(A028310(n))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026620

/-- `A002054(n+1)+Δ[A002054(A028310(n))]` -/
def P15880584792676228702.Spec : Prop :=
  ∀ n, P15880584792676228702.a n = A026620 (n + 2)

theorem P15880584792676228702.correct : P15880584792676228702.Spec := by
  intro n
  simp only [A026620, Nat.add_sub_cancel]

end A026620

/-! ## A026620.P1532370102224245247

`A276666(n+2)-A037955(A004280(n+2))`
-/

namespace A026620.P1532370102224245247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 2) - A037955 (A004280 (n + 2)).toNat

end

end A026620.P1532370102224245247

namespace A026620

/-- `A276666(n+2)-A037955(A004280(n+2))` -/
def P1532370102224245247.Spec : Prop :=
  ∀ n, P1532370102224245247.a n = A026620 (n + 2)

end A026620

/-! ## A026620.P1255856312037426627

`A024483(n+3)-A037955(A004280(n+2))`
-/

namespace A026620.P1255856312037426627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 3) - A037955 (A004280 (n + 2)).toNat

end

end A026620.P1255856312037426627

namespace A026620

/-- `A024483(n+3)-A037955(A004280(n+2))` -/
def P1255856312037426627.Spec : Prop :=
  ∀ n, P1255856312037426627.a n = A026620 (n + 2)

end A026620

/-! ## A026620.P7070008853283216732

`A276666(n+2)-A007318(A058331(n+1))`
-/

namespace A026620.P7070008853283216732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 2) - A007318 (A058331 (n + 1)).toNat

end

end A026620.P7070008853283216732

namespace A026620

/-- `A276666(n+2)-A007318(A058331(n+1))` -/
def P7070008853283216732.Spec : Prop :=
  ∀ n, P7070008853283216732.a n = A026620 (n + 2)

end A026620

/-! ## A026620.P9556036824929025094

`A026615(A054000(n+2))`
-/

namespace A026620.P9556036824929025094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A054000 (n + 2)).toNat

end

end A026620.P9556036824929025094

namespace A026620

/-- `A026615(A054000(n+2))` -/
def P9556036824929025094.Spec : Prop :=
  ∀ n, P9556036824929025094.a n = A026620 (n + 2)

end A026620

/-! ## A026620.P16228611426144137774

`A026615(A058331(n+2))`
-/

namespace A026620.P16228611426144137774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A058331 (n + 2)).toNat

end

end A026620.P16228611426144137774

namespace A026620

/-- `A026615(A058331(n+2))` -/
def P16228611426144137774.Spec : Prop :=
  ∀ n, P16228611426144137774.a n = A026620 (n + 2)

end A026620

/-! ## A026620.P11111085813184182129

`A026615(2*A005563(n+1))`
-/

namespace A026620.P11111085813184182129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (2 * A005563 (n + 1)).toNat

end

end A026620.P11111085813184182129

namespace A026620

/-- `A026615(2*A005563(n+1))` -/
def P11111085813184182129.Spec : Prop :=
  ∀ n, P11111085813184182129.a n = A026620 (n + 2)

end A026620

/-!
# A026621: a(n) = A026615(n, floor(n/2)).

The programs for A026621, the canonical program `A026621.P9530929463673983980` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026621 has offset 0).

The definition of A026621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026621.P9530929463673983980

`A001405(n)+Δ[A208976(A289207(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026621

/-- `A001405(n)+Δ[A208976(A289207(n))]` -/
def P9530929463673983980.Spec : Prop :=
  ∀ n, P9530929463673983980.a n = A026621 n

theorem P9530929463673983980.correct : P9530929463673983980.Spec := by
  intro n
  simp only [A026621]

end A026621

/-! ## A026621.P1117946067497590868

`A063886(n+1)-A001405(A289207(n))`
-/

namespace A026621.P1117946067497590868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 1) - A001405 (A289207 n).toNat

end

end A026621.P1117946067497590868

namespace A026621

/-- `A063886(n+1)-A001405(A289207(n))` -/
def P1117946067497590868.Spec : Prop :=
  ∀ n, P1117946067497590868.a n = A026621 n

end A026621

/-! ## A026621.P16735343924974099552

`A063886(n+1)-A210736(A289207(n+1))`
-/

namespace A026621.P16735343924974099552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (n + 1) - A210736 (A289207 (n + 1)).toNat

end

end A026621.P16735343924974099552

namespace A026621

/-- `A063886(n+1)-A210736(A289207(n+1))` -/
def P16735343924974099552.Spec : Prop :=
  ∀ n, P16735343924974099552.a n = A026621 n

end A026621

/-! ## A026621.P3364281671408933282

`A028326(A080476(n+1))-A097805(A007590(n))`
-/

namespace A026621.P3364281671408933282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A080476 (n + 1)).toNat - A097805 (A007590 n).toNat

end

end A026621.P3364281671408933282

namespace A026621

/-- `A028326(A080476(n+1))-A097805(A007590(n))` -/
def P3364281671408933282.Spec : Prop :=
  ∀ n, P3364281671408933282.a n = A026621 n

end A026621

/-! ## A026621.P16654015394634073828

`A026615(A194274(n))`
-/

namespace A026621.P16654015394634073828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A194274 n).toNat

end

end A026621.P16654015394634073828

namespace A026621

/-- `A026615(A194274(n))` -/
def P16654015394634073828.Spec : Prop :=
  ∀ n, P16654015394634073828.a n = A026621 n

end A026621

/-! ## A026621.P11001004691684608468

`A026615(A007590(n+1))`
-/

namespace A026621.P11001004691684608468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A007590 (n + 1)).toNat

end

end A026621.P11001004691684608468

namespace A026621

/-- `A026615(A007590(n+1))` -/
def P11001004691684608468.Spec : Prop :=
  ∀ n, P11001004691684608468.a n = A026621 n

end A026621

/-! ## A026621.P17876397599330041442

`A026615(A080476(n+1))`
-/

namespace A026621.P17876397599330041442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A080476 (n + 1)).toNat

end

end A026621.P17876397599330041442

namespace A026621

/-- `A026615(A080476(n+1))` -/
def P17876397599330041442.Spec : Prop :=
  ∀ n, P17876397599330041442.a n = A026621 n

end A026621

/-! ## A026621.P6373848819322354693

`A026615(A000982(n)+n)`
-/

namespace A026621.P6373848819322354693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A000982 n + (n : ℤ)).toNat

end

end A026621.P6373848819322354693

namespace A026621

/-- `A026615(A000982(n)+n)` -/
def P6373848819322354693.Spec : Prop :=
  ∀ n, P6373848819322354693.a n = A026621 n

end A026621

/-! ## A026621.P16390187175430400983

`A026615(∑[A109613(n)]-1)`
-/

namespace A026621.P16390187175430400983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A026621.P16390187175430400983

namespace A026621

/-- `A026615(∑[A109613(n)]-1)` -/
def P16390187175430400983.Spec : Prop :=
  ∀ n, P16390187175430400983.a n = A026621 n

end A026621

/-! ## A026621.P15564023200442737016

`A026615(A030978(n+1)-1)`
-/

namespace A026621.P15564023200442737016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A030978 (n + 1) - 1).toNat

end

end A026621.P15564023200442737016

namespace A026621

/-- `A026615(A030978(n+1)-1)` -/
def P15564023200442737016.Spec : Prop :=
  ∀ n, P15564023200442737016.a n = A026621 n

end A026621

/-! ## A026621.P1866868450449413768

`A026615(A080827(n+1)-1)`
-/

namespace A026621.P1866868450449413768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A080827 (n + 1) - 1).toNat

end

end A026621.P1866868450449413768

namespace A026621

/-- `A026615(A080827(n+1)-1)` -/
def P1866868450449413768.Spec : Prop :=
  ∀ n, P1866868450449413768.a n = A026621 n

end A026621

/-! ## A026621.P18123237970589385311

`A026615(A104563(n+1)-1)`
-/

namespace A026621.P18123237970589385311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A104563 (n + 1) - 1).toNat

end

end A026621.P18123237970589385311

namespace A026621

/-- `A026615(A104563(n+1)-1)` -/
def P18123237970589385311.Spec : Prop :=
  ∀ n, P18123237970589385311.a n = A026621 n

end A026621

/-! ## A026621.P9921363568667351973

`A026615(A099392(n+2)-1)`
-/

namespace A026621.P9921363568667351973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 (A099392 (n + 2) - 1).toNat

end

end A026621.P9921363568667351973

namespace A026621

/-- `A026615(A099392(n+2)-1)` -/
def P9921363568667351973.Spec : Prop :=
  ∀ n, P9921363568667351973.a n = A026621 n

end A026621

/-! ## A026621.P16761936232565870774

`A001405(n)+Δ[A029635(A007590(n))]`
-/

namespace A026621.P16761936232565870774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A007590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (f1 (n + 1) - f1 n)

end

end A026621.P16761936232565870774

namespace A026621

/-- `A001405(n)+Δ[A029635(A007590(n))]` -/
def P16761936232565870774.Spec : Prop :=
  ∀ n, P16761936232565870774.a n = A026621 n

end A026621

/-!
# A026622: a(n) = Sum_{k=0..n} A026615(n, k).

The programs for A026622, the canonical program `A026622.P7535639641386584913` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026622 has offset 0).

The definition of A026622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026622.P7535639641386584913

`2*a(n-1)+2` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026622

/-- `2*a(n-1)+2` -/
def P7535639641386584913.Spec : Prop :=
  ∀ n, (P7535639641386584913.a n : ℤ) = A026622 n

theorem P7535639641386584913.correct : P7535639641386584913.Spec := by
  intro n
  simp only [A026622]

end A026622

/-! ## A026622.P15669319575257909306

`ogf((1-x+x^2+x^3)/(1-3x+2x^2))`
-/

namespace A026622.P15669319575257909306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -3, 2] n

end

end A026622.P15669319575257909306

namespace A026622

/-- `ogf((1-x+x^2+x^3)/(1-3x+2x^2))` -/
def P15669319575257909306.Spec : Prop :=
  ∀ n, P15669319575257909306.a n = A026622 n

end A026622

/-! ## A026622.P5587821543090003621

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A026622.P5587821543090003621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026622.P5587821543090003621

namespace A026622

/-- `∑[2*a(n-1)]` -/
def P5587821543090003621.Spec : Prop :=
  ∀ n, (P5587821543090003621.a n : ℤ) = A026622 n

end A026622

/-! ## A026622.P12077356819181108116

`4-2*(1-a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026622.P12077356819181108116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 - 2 * (1 - a (n - 1))

end

end A026622.P12077356819181108116

namespace A026622

/-- `4-2*(1-a(n-1))` -/
def P12077356819181108116.Spec : Prop :=
  ∀ n, P12077356819181108116.a n = A026622 n

end A026622

/-! ## A026622.P9359179180007723271

`a(n-1)+a(n-1)+2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026622.P9359179180007723271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A026622.P9359179180007723271

namespace A026622

/-- `a(n-1)+a(n-1)+2` -/
def P9359179180007723271.Spec : Prop :=
  ∀ n, (P9359179180007723271.a n : ℤ) = A026622 n

theorem P9359179180007723271.correct : P9359179180007723271.Spec := by
  intro n
  simp only [A026622, Nat.add_sub_cancel, A026622.P9359179180007723271.a, A026622.P7535639641386584913.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026622

/-! ## A026622.P16430064487289230639

`2-floor(2/n-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A026622.P16430064487289230639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌊2 / (n : ℚ) - (a (n - 1) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A026622.P16430064487289230639

namespace A026622

/-- `2-floor(2/n-a(n-1)-a(n-1))` -/
def P16430064487289230639.Spec : Prop :=
  ∀ n, P16430064487289230639.a n = A026622 n

end A026622

/-! ## A026622.P17913584096712719197

`record[A174317(n)]`
-/

namespace A026622.P17913584096712719197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026622.P17913584096712719197

namespace A026622

/-- `record[A174317(n)]` -/
def P17913584096712719197.Spec : Prop :=
  ∀ n, P17913584096712719197.a n = A026622 n

end A026622

/-! ## A026622.P1524239910115537840

`∑[∑[A365062(n)]]-n`
-/

namespace A026622.P1524239910115537840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A026622.P1524239910115537840

namespace A026622

/-- `∑[∑[A365062(n)]]-n` -/
def P1524239910115537840.Spec : Prop :=
  ∀ n, P1524239910115537840.a n = A026622 n

end A026622

/-! ## A026622.P1729696596923919014

`A125176(n)+a(n-1)` with `a(0)=1`
-/

namespace A026622.P1729696596923919014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A125176 n + a (n - 1)

end

end A026622.P1729696596923919014

namespace A026622

/-- `A125176(n)+a(n-1)` -/
def P1729696596923919014.Spec : Prop :=
  ∀ n, P1729696596923919014.a n = A026622 n

end A026622

/-! ## A026622.P8284019508384772828

`A174317(A181440(n+1))`
-/

namespace A026622.P8284019508384772828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 (A181440 (n + 1)).toNat

end

end A026622.P8284019508384772828

namespace A026622

/-- `A174317(A181440(n+1))` -/
def P8284019508384772828.Spec : Prop :=
  ∀ n, P8284019508384772828.a n = A026622 n

end A026622

/-! ## A026622.P10192413421471400505

`A174317(A184985(n+1))`
-/

namespace A026622.P10192413421471400505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 (A184985 (n + 1)).toNat

end

end A026622.P10192413421471400505

namespace A026622

/-- `A174317(A184985(n+1))` -/
def P10192413421471400505.Spec : Prop :=
  ∀ n, P10192413421471400505.a n = A026622 n

end A026622

/-! ## A026622.P12639455984452882512

`A267604(n)+A057428(n)`
-/

namespace A026622.P12639455984452882512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n + A057428 n

end

end A026622.P12639455984452882512

namespace A026622

/-- `A267604(n)+A057428(n)` -/
def P12639455984452882512.Spec : Prop :=
  ∀ n, P12639455984452882512.a n = A026622 n

end A026622

/-! ## A026622.P14668864216019507309

`A052996(n)-A127904(n)`
-/

namespace A026622.P14668864216019507309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n - A127904 n

end

end A026622.P14668864216019507309

namespace A026622

/-- `A052996(n)-A127904(n)` -/
def P14668864216019507309.Spec : Prop :=
  ∀ n, P14668864216019507309.a n = A026622 n

end A026622

/-! ## A026622.P14814890878796842881

`A267604(n)-A057427(n)`
-/

namespace A026622.P14814890878796842881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n - A057427 n

end

end A026622.P14814890878796842881

namespace A026622

/-- `A267604(n)-A057427(n)` -/
def P14814890878796842881.Spec : Prop :=
  ∀ n, P14814890878796842881.a n = A026622 n

end A026622

/-! ## A026622.P3068695993412727894

`A266550(n+1)+A000225(n)`
-/

namespace A026622.P3068695993412727894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + A000225 n

end

end A026622.P3068695993412727894

namespace A026622

/-- `A266550(n+1)+A000225(n)` -/
def P3068695993412727894.Spec : Prop :=
  ∀ n, P3068695993412727894.a n = A026622 n

end A026622

/-! ## A026622.P542756339241813218

`A125176(n+1)-A130130(n)`
-/

namespace A026622.P542756339241813218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) - A130130 n

end

end A026622.P542756339241813218

namespace A026622

/-- `A125176(n+1)-A130130(n)` -/
def P542756339241813218.Spec : Prop :=
  ∀ n, P542756339241813218.a n = A026622 n

end A026622

/-! ## A026622.P2425253356936770025

`A257113(n+1)-A122958(n)`
-/

namespace A026622.P2425253356936770025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1) - A122958 n

end

end A026622.P2425253356936770025

namespace A026622

/-- `A257113(n+1)-A122958(n)` -/
def P2425253356936770025.Spec : Prop :=
  ∀ n, P2425253356936770025.a n = A026622 n

end A026622

/-! ## A026622.P6719290847748427986

`A267604(n)-A157928(n+1)`
-/

namespace A026622.P6719290847748427986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n - A157928 (n + 1)

end

end A026622.P6719290847748427986

namespace A026622

/-- `A267604(n)-A157928(n+1)` -/
def P6719290847748427986.Spec : Prop :=
  ∀ n, P6719290847748427986.a n = A026622 n

end A026622

/-! ## A026622.P4455855964196805768

`A267604(n)-n/A028310(n)`
-/

namespace A026622.P4455855964196805768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267604 n : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A026622.P4455855964196805768

namespace A026622

/-- `A267604(n)-n/A028310(n)` -/
def P4455855964196805768.Spec : Prop :=
  ∀ n, P4455855964196805768.a n = (A026622 n : ℚ)

end A026622

/-! ## A026622.P5356767871609711041

`A266550(n+1)+∑[A131577(n)]`
-/

namespace A026622.P5356767871609711041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026622.P5356767871609711041

namespace A026622

/-- `A266550(n+1)+∑[A131577(n)]` -/
def P5356767871609711041.Spec : Prop :=
  ∀ n, P5356767871609711041.a n = A026622 n

end A026622

/-!
# A026624: a(n) = Sum_{j=0..n} Sum_{k=0..j} A026615(j, k).

The programs for A026624, the canonical program `A026624.P16636490743227409285` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026624 has offset 0).

The definition of A026624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026624.P16636490743227409285

`2*a(n-1)+2*(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026624

/-- `2*a(n-1)+2*(n-1)` -/
def P16636490743227409285.Spec : Prop :=
  ∀ n, P16636490743227409285.a n = A026624 n

theorem P16636490743227409285.correct : P16636490743227409285.Spec := by
  intro n
  simp only [A026624]

end A026624

/-! ## A026624.P5953852424560784549

`∑[ogf((1-x+x^2+x^3)/(1-3x+2x^2))]`
-/

namespace A026624.P5953852424560784549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P5953852424560784549

namespace A026624

/-- `∑[ogf((1-x+x^2+x^3)/(1-3x+2x^2))]` -/
def P5953852424560784549.Spec : Prop :=
  ∀ n, P5953852424560784549.a n = A026624 n

end A026624

/-! ## A026624.P14067333650212160176

`ogf((1-x+x^2+x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A026624.P14067333650212160176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 1] [1, -4, 5, -2] n

end

end A026624.P14067333650212160176

namespace A026624

/-- `ogf((1-x+x^2+x^3)/(1-4x+5x^2-2x^3))` -/
def P14067333650212160176.Spec : Prop :=
  ∀ n, P14067333650212160176.a n = A026624 n

end A026624

/-! ## A026624.P15411407975366871269

`∑[2*(a(n-1)+1)]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026624.P15411407975366871269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P15411407975366871269

namespace A026624

/-- `∑[2*(a(n-1)+1)]` -/
def P15411407975366871269.Spec : Prop :=
  ∀ n, (P15411407975366871269.a n : ℤ) = A026624 n

end A026624

/-! ## A026624.P17631351992002446149

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A026624.P17631351992002446149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 7] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P17631351992002446149

namespace A026624

/-- `∑[∑[2*a(n-1)]]` -/
def P17631351992002446149.Spec : Prop :=
  ∀ n, (P17631351992002446149.a n : ℤ) = A026624 n

end A026624

/-! ## A026624.P46574818912926388

`2*(a(n-1)-1+n)` with `a(0)=1, a(1)=3`
-/

namespace A026624.P46574818912926388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) - 1 + (n : ℤ))

end

end A026624.P46574818912926388

namespace A026624

/-- `2*(a(n-1)-1+n)` -/
def P46574818912926388.Spec : Prop :=
  ∀ n, P46574818912926388.a n = A026624 n

theorem P46574818912926388.correct : P46574818912926388.Spec := by
  intro n
  simp only [A026624, Nat.add_sub_cancel, A026624.P46574818912926388.a, A026624.P16636490743227409285.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026624

/-! ## A026624.P8723870212823168654

`2*(n-(1-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A026624.P8723870212823168654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ((n : ℤ) - (1 - a (n - 1)))

end

end A026624.P8723870212823168654

namespace A026624

/-- `2*(n-(1-a(n-1)))` -/
def P8723870212823168654.Spec : Prop :=
  ∀ n, P8723870212823168654.a n = A026624 n

end A026624

/-! ## A026624.P16490503831306177135

`∑[round(∑[7*2^(n-3)])]-n`
-/

namespace A026624.P16490503831306177135
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A026624.P16490503831306177135

namespace A026624

/-- `∑[round(∑[7*2^(n-3)])]-n` -/
def P16490503831306177135.Spec : Prop :=
  ∀ n, P16490503831306177135.a n = A026624 n

end A026624

/-! ## A026624.P15165754788697341244

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026624.P15165754788697341244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P15165754788697341244

namespace A026624

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P15165754788697341244.Spec : Prop :=
  ∀ n, (P15165754788697341244.a n : ℤ) = A026624 n

end A026624

/-! ## A026624.P3930999919962820365

`∑[A026622(n)]`
-/

namespace A026624.P3930999919962820365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P3930999919962820365

namespace A026624

/-- `∑[A026622(n)]` -/
def P3930999919962820365.Spec : Prop :=
  ∀ n, P3930999919962820365.a n = A026624 n

end A026624

/-! ## A026624.P8940849305066724198

`∑[record[A174317(n)]]`
-/

namespace A026624.P8940849305066724198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P8940849305066724198

namespace A026624

/-- `∑[record[A174317(n)]]` -/
def P8940849305066724198.Spec : Prop :=
  ∀ n, P8940849305066724198.a n = A026624 n

end A026624

/-! ## A026624.P7379938633773872715

`∑[A266550(n+1)+A000225(n)]`
-/

namespace A026624.P7379938633773872715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P7379938633773872715

namespace A026624

/-- `∑[A266550(n+1)+A000225(n)]` -/
def P7379938633773872715.Spec : Prop :=
  ∀ n, P7379938633773872715.a n = A026624 n

end A026624

/-! ## A026624.P8588974355307227764

`∑[A266550(n+1)+∑[A131577(n)]]`
-/

namespace A026624.P8588974355307227764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026624.P8588974355307227764

namespace A026624

/-- `∑[A266550(n+1)+∑[A131577(n)]]` -/
def P8588974355307227764.Spec : Prop :=
  ∀ n, P8588974355307227764.a n = A026624 n

end A026624

/-! ## A026624.P5650510877140546054

`(A289131(2*n)-n)/2`
-/

namespace A026624.P5650510877140546054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289131 (2 * n) - (n : ℤ) : ℚ) / 2

end

end A026624.P5650510877140546054

namespace A026624

/-- `(A289131(2*n)-n)/2` -/
def P5650510877140546054.Spec : Prop :=
  ∀ n, P5650510877140546054.a n = (A026624 n : ℚ)

end A026624

/-!
# A026625: a(n) = Sum_{k=0..floor(n/2)} A026615(n-k,k).

The programs for A026625, the canonical program `A026625.P3296011365867024073` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026625 has offset 0).

The definition of A026625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026625.P3296011365867024073

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=13`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026625

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P3296011365867024073.Spec : Prop :=
  ∀ n, P3296011365867024073.a n = A026625 n

theorem P3296011365867024073.correct : P3296011365867024073.Spec := by
  intro n
  simp only [A026625]

end A026625

/-! ## A026625.P2290597840484329543

`A104449(n)-A038179(n+1)%3`
-/

namespace A026625.P2290597840484329543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n - Int.tmod (A038179 (n + 1)) 3

end

end A026625.P2290597840484329543

namespace A026625

/-- `A104449(n)-A038179(n+1)%3` -/
def P2290597840484329543.Spec : Prop :=
  ∀ n, P2290597840484329543.a n = A026625 n

end A026625

/-! ## A026625.P9504642352491629507

`A154327(n)-A000045(A289207(n))`
-/

namespace A026625.P9504642352491629507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154327 n - A000045 (A289207 n).toNat

end

end A026625.P9504642352491629507

namespace A026625

/-- `A154327(n)-A000045(A289207(n))` -/
def P9504642352491629507.Spec : Prop :=
  ∀ n, P9504642352491629507.a n = A026625 n

end A026625

/-! ## A026625.P8874811036848940102

`A154327(n)+A152163(A233583(n+1))`
-/

namespace A026625.P8874811036848940102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154327 n + A152163 (A233583 (n + 1)).toNat

end

end A026625.P8874811036848940102

namespace A026625

/-- `A154327(n)+A152163(A233583(n+1))` -/
def P8874811036848940102.Spec : Prop :=
  ∀ n, P8874811036848940102.a n = A026625 n

end A026625

/-! ## A026625.P15525489540678664638

`A001595(n)-A001610(n)%A154327(n)`
-/

namespace A026625.P15525489540678664638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - Int.tmod (A001610 n) (A154327 n)

end

end A026625.P15525489540678664638

namespace A026625

/-- `A001595(n)-A001610(n)%A154327(n)` -/
def P15525489540678664638.Spec : Prop :=
  ∀ n, P15525489540678664638.a n = A026625 n

end A026625

/-! ## A026625.P9203478175017498759

`A111314(n)-A062114(n)%A052952(n)`
-/

namespace A026625.P9203478175017498759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n - Int.tmod (A062114 n) (A052952 n)

end

end A026625.P9203478175017498759

namespace A026625

/-- `A111314(n)-A062114(n)%A052952(n)` -/
def P9203478175017498759.Spec : Prop :=
  ∀ n, P9203478175017498759.a n = A026625 n

end A026625

/-! ## A026625.P14416908013852951996

`A001595(n)-A245738(n+3)%A001595(n)`
-/

namespace A026625.P14416908013852951996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - Int.tmod (A245738 (n + 3)) (A001595 n)

end

end A026625.P14416908013852951996

namespace A026625

/-- `A001595(n)-A245738(n+3)%A001595(n)` -/
def P14416908013852951996.Spec : Prop :=
  ∀ n, P14416908013852951996.a n = A026625 n

end A026625

/-!
# A026626: Triangular array T read by rows: T(n,0) = T(n,n) = 1 for n >= 0, T(n,1) = T(n,n-1) = floor(3*n/2) for n >= 1, T(n,k) = T(n-1,k-1) + T(n-1,k) for 2 <= k <= n-2, n >= 4.

The programs for A026626, there is no canonical definition to state claims against.
-/

/-! ## A026626.P994000128148661714

`A007318(n)+A026615(n)-A026637(n)`
-/

namespace A026626.P994000128148661714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A026615 n - A026637 n)

end

end A026626.P994000128148661714

/-! ## A026626.P15110186924399070260

`A259899(A124216(n)+1)`
-/

namespace A026626.P15110186924399070260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A124216 n + 1).toNat

end

end A026626.P15110186924399070260

/-! ## A026626.P13548586701633197194

`A259899(A174124(n)-A014473(n))`
-/

namespace A026626.P13548586701633197194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A174124 n - A014473 n).toNat

end

end A026626.P13548586701633197194

/-! ## A026626.P4545278803520255426

`A090106(A136482(n))`
-/

namespace A026626.P4545278803520255426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A136482 n).toNat

end

end A026626.P4545278803520255426

/-! ## A026626.P4928488595496855758

`A090106(A026648(n+1))`
-/

namespace A026626.P4928488595496855758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A026648 (n + 1)).toNat

end

end A026626.P4928488595496855758

/-!
# A026627: a(n) = A026626(2*n, n).

The programs for A026627, there is no canonical definition to state claims against.
-/

/-! ## A026627.P9149083446154608731

`A026632(2*n)`
-/

namespace A026627.P9149083446154608731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 (2 * n)

end

end A026627.P9149083446154608731

/-! ## A026627.P2501826886775790792

`record[A026632(n)/(and(1, n)+1)]`
-/

namespace A026627.P2501826886775790792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026632 n : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026627.P2501826886775790792

/-! ## A026627.P18315557352123004735

`record[A026632(A014681(n))]`
-/

namespace A026627.P18315557352123004735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026627.P18315557352123004735

/-! ## A026627.P9727169607841231182

`record[A026632(A029578(n))]`
-/

namespace A026627.P9727169607841231182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026627.P9727169607841231182

/-! ## A026627.P1765963521218428831

`record[A026632(n)/A006519(n+1)]`
-/

namespace A026627.P1765963521218428831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026632 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026627.P1765963521218428831

/-! ## A026627.P1822339228112342153

`A026632(A005843(n))/gcd(n, n+1)`
-/

namespace A026627.P1822339228112342153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026632 (A005843 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A026627.P1822339228112342153

/-! ## A026627.P1253295402577639777

`2*A026634(2*n)-A026634(2*n+1)`
-/

namespace A026627.P1253295402577639777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026634 (2 * n) - A026634 (2 * n + 1)

end

end A026627.P1253295402577639777

/-! ## A026627.P10499461194318723668

`A026626(∑[4*n])`
-/

namespace A026627.P10499461194318723668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026627.P10499461194318723668

/-!
# A026628: a(n) = A026626(2*n, n-1).

The programs for A026628, there is no canonical definition to state claims against.
-/

/-! ## A026628.P12929603876599931888

`A026630(n+2)-A026627(n+1)`
-/

namespace A026628.P12929603876599931888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026630 (n + 2) - A026627 (n + 1)

end

end A026628.P12929603876599931888

/-! ## A026628.P12525620829249032122

`A026630(n+2)-A026632(2*(n+1))`
-/

namespace A026628.P12525620829249032122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026630 (n + 2) - A026632 (2 * (n + 1))

end

end A026628.P12525620829249032122

/-! ## A026628.P5183141351342451275

`A026632(2*n+3)-A026627(n+1)`
-/

namespace A026628.P5183141351342451275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 (2 * n + 3) - A026627 (n + 1)

end

end A026628.P5183141351342451275

/-! ## A026628.P1079167812150137023

`A026632(2*n+3)-A026632(2*(n+1))`
-/

namespace A026628.P1079167812150137023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 (2 * n + 3) - A026632 (2 * (n + 1))

end

end A026628.P1079167812150137023

/-! ## A026628.P1967397362124824621

`A026626(A001844(n+1))`
-/

namespace A026628.P1967397362124824621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A001844 (n + 1)).toNat

end

end A026628.P1967397362124824621

/-! ## A026628.P10636497188994291543

`A026626(A090288(n)+1)`
-/

namespace A026628.P10636497188994291543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A090288 n + 1).toNat

end

end A026628.P10636497188994291543

/-! ## A026628.P17422365658472071039

`A026626(A099776(n+1))`
-/

namespace A026628.P17422365658472071039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A099776 (n + 1)).toNat

end

end A026628.P17422365658472071039

/-! ## A026628.P12969691413305625262

`A026626(A132209(n+1))`
-/

namespace A026628.P12969691413305625262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A132209 (n + 1)).toNat

end

end A026628.P12969691413305625262

/-! ## A026628.P15166721473610877227

`A026626(A142463(n+1))`
-/

namespace A026628.P15166721473610877227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A142463 (n + 1)).toNat

end

end A026628.P15166721473610877227

/-! ## A026628.P15051076261643756082

`A026626(A296911(n+1))`
-/

namespace A026628.P15051076261643756082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A296911 (n + 1)).toNat

end

end A026628.P15051076261643756082

/-!
# A026629: a(n) = A026626(2*n, n-2).

The programs for A026629, there is no canonical definition to state claims against.
-/

/-! ## A026629.P4452057782931728796

`A026631(n+3)-A026628(n+2)`
-/

namespace A026629.P4452057782931728796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026631 (n + 3) - A026628 (n + 2)

end

end A026629.P4452057782931728796

/-! ## A026629.P10687761814677933130

`A026626(A090288(n+1))`
-/

namespace A026629.P10687761814677933130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A090288 (n + 1)).toNat

end

end A026629.P10687761814677933130

/-! ## A026629.P8388341508469559831

`record[A026626(A266448(n)+n)]`
-/

namespace A026629.P8388341508469559831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A266448 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026629.P8388341508469559831

/-! ## A026629.P11501971729456027927

`A026626(A099776(n+2)+1)`
-/

namespace A026629.P11501971729456027927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A099776 (n + 2) + 1).toNat

end

end A026629.P11501971729456027927

/-! ## A026629.P12992586872012271887

`A026626(A000217(2*(n+2))+n)`
-/

namespace A026629.P12992586872012271887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A026629.P12992586872012271887

/-!
# A026630: a(n) = A026626(2*n-1, n-1).

The programs for A026630, the canonical program `A026630.P8169030177295979061` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026630 has offset 1).

The definition of A026630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026630.P1668466194142587603

`A026632(Δ[n²])`
-/

namespace A026630.P1668466194142587603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026630.P1668466194142587603

namespace A026630

/-- `A026632(Δ[n²])` -/
def P1668466194142587603.Spec : Prop :=
  ∀ n, P1668466194142587603.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P8371346416302649442

`floor(A026627(n+1)/2)`
-/

namespace A026630.P8371346416302649442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026627 (n + 1) : ℚ) / 2⌋

end

end A026630.P8371346416302649442

namespace A026630

/-- `floor(A026627(n+1)/2)` -/
def P8371346416302649442.Spec : Prop :=
  ∀ n, P8371346416302649442.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P5788303897849668865

`record[A026632(A014681(n)+1)]`
-/

namespace A026630.P5788303897849668865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026630.P5788303897849668865

namespace A026630

/-- `record[A026632(A014681(n)+1)]` -/
def P5788303897849668865.Spec : Prop :=
  ∀ n, P5788303897849668865.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P2136830914573738751

`Δ[A306409(n)+A088218(n)]`
-/

namespace A026630.P2136830914573738751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306409 n + A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026630.P2136830914573738751

namespace A026630

/-- `Δ[A306409(n)+A088218(n)]` -/
def P2136830914573738751.Spec : Prop :=
  ∀ n, P2136830914573738751.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P15937670971017395516

`record[A026632(n*A000035(n))]`
-/

namespace A026630.P15937670971017395516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026632 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026630.P15937670971017395516

namespace A026630

/-- `record[A026632(n*A000035(n))]` -/
def P15937670971017395516.Spec : Prop :=
  ∀ n, P15937670971017395516.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P16716827074161957727

`A014300(n+1)+Δ[A088218(n)]`
-/

namespace A026630.P16716827074161957727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) + (f1 (n + 1) - f1 n)

end

end A026630.P16716827074161957727

namespace A026630

/-- `A014300(n+1)+Δ[A088218(n)]` -/
def P16716827074161957727.Spec : Prop :=
  ∀ n, P16716827074161957727.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P8169030177295979061

`A026619(n+1)-A014301(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026630

/-- `A026619(n+1)-A014301(n+1)` -/
def P8169030177295979061.Spec : Prop :=
  ∀ n, P8169030177295979061.a n = A026630 (n + 1)

theorem P8169030177295979061.correct : P8169030177295979061.Spec := by
  intro n
  simp only [A026630, Nat.add_sub_cancel]

end A026630

/-! ## A026630.P15842207582459714296

`2*A026632(2*n+1)-A026632(2*n+1)`
-/

namespace A026630.P15842207582459714296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026632 (2 * n + 1) - A026632 (2 * n + 1)

end

end A026630.P15842207582459714296

namespace A026630

/-- `2*A026632(2*n+1)-A026632(2*n+1)` -/
def P15842207582459714296.Spec : Prop :=
  ∀ n, P15842207582459714296.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P8844182002708415699

`A026641(n+1)+A014301(A028310(n))`
-/

namespace A026630.P8844182002708415699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 (n + 1) + A014301 (A028310 n).toNat

end

end A026630.P8844182002708415699

namespace A026630

/-- `A026641(n+1)+A014301(A028310(n))` -/
def P8844182002708415699.Spec : Prop :=
  ∀ n, P8844182002708415699.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P15519984325181446408

`gcd(A026632(2*n+1), A026632(A005843(n+1)))`
-/

namespace A026630.P15519984325181446408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026632 (2 * n + 1)) (A026632 (A005843 (n + 1)).toNat)

end

end A026630.P15519984325181446408

namespace A026630

/-- `gcd(A026632(2*n+1), A026632(A005843(n+1)))` -/
def P15519984325181446408.Spec : Prop :=
  ∀ n, (P15519984325181446408.a n : ℤ) = A026630 (n + 1)

end A026630

/-! ## A026630.P889788354078456207

`record[A124392(n)]+Δ[A088218(n)]`
-/

namespace A026630.P889788354078456207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A026630.P889788354078456207

namespace A026630

/-- `record[A124392(n)]+Δ[A088218(n)]` -/
def P889788354078456207.Spec : Prop :=
  ∀ n, P889788354078456207.a n = A026630 (n + 1)

end A026630

/-! ## A026630.P17781849515122718535

`A014301(A028310(n))+record[A109244(n)]`
-/

namespace A026630.P17781849515122718535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026630.P17781849515122718535

namespace A026630

/-- `A014301(A028310(n))+record[A109244(n)]` -/
def P17781849515122718535.Spec : Prop :=
  ∀ n, P17781849515122718535.a n = A026630 (n + 1)

end A026630

/-!
# A026631: a(n) = A026626(2*n-1, n-2).

The programs for A026631, there is no canonical definition to state claims against.
-/

/-! ## A026631.P6473777470255684413

`record[char[n²]*A026626(2*n+1)]`
-/

namespace A026631.P6473777470255684413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A026626 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026631.P6473777470255684413

/-! ## A026631.P8488995407785620437

`A026626(A054000(n+2))`
-/

namespace A026631.P8488995407785620437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A054000 (n + 2)).toNat

end

end A026631.P8488995407785620437

/-! ## A026631.P9031805704687912828

`record[A026626(A266448(n)-1)]`
-/

namespace A026631.P9031805704687912828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A266448 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026631.P9031805704687912828

/-! ## A026631.P4483791554678492967

`record[A026626(∑[A266447(n+1)])]`
-/

namespace A026631.P4483791554678492967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026631.P4483791554678492967

/-! ## A026631.P15829234268945516374

`A026626(∑[A087560(2*n+3)])`
-/

namespace A026631.P15829234268945516374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087560 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026631.P15829234268945516374

/-!
# A026632: a(n) = A026626(n, floor(n/2)).

The programs for A026632, there is no canonical definition to state claims against.
-/

/-! ## A026632.P13202221903208599475

`A026626(A194274(n))`
-/

namespace A026632.P13202221903208599475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A194274 n).toNat

end

end A026632.P13202221903208599475

/-! ## A026632.P11974695415507027506

`A026626(A007590(n+1))`
-/

namespace A026632.P11974695415507027506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A007590 (n + 1)).toNat

end

end A026632.P11974695415507027506

/-! ## A026632.P18437594002769603003

`A026626(A080476(n+1))`
-/

namespace A026632.P18437594002769603003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A080476 (n + 1)).toNat

end

end A026632.P18437594002769603003

/-! ## A026632.P4777673562865921988

`A026626(A000982(n)+n)`
-/

namespace A026632.P4777673562865921988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A000982 n + (n : ℤ)).toNat

end

end A026632.P4777673562865921988

/-! ## A026632.P16967581633084676080

`A026626(A030978(n+1)-1)`
-/

namespace A026632.P16967581633084676080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A030978 (n + 1) - 1).toNat

end

end A026632.P16967581633084676080

/-! ## A026632.P13480989198422679467

`A026626(A074133(n+1)-1)`
-/

namespace A026632.P13480989198422679467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A074133 (n + 1) - 1).toNat

end

end A026632.P13480989198422679467

/-! ## A026632.P10955114435953806826

`A026626(A080827(n+1)-1)`
-/

namespace A026632.P10955114435953806826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A080827 (n + 1) - 1).toNat

end

end A026632.P10955114435953806826

/-! ## A026632.P12846404207344018498

`A026626(A104563(n+1)-1)`
-/

namespace A026632.P12846404207344018498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A104563 (n + 1) - 1).toNat

end

end A026632.P12846404207344018498

/-! ## A026632.P4169341961689869564

`A026626(A099392(n+2)-1)`
-/

namespace A026632.P4169341961689869564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026626 (A099392 (n + 2) - 1).toNat

end

end A026632.P4169341961689869564

/-!
# A026633: a(n) = Sum_{k=0..n} A026626(n, k).

The programs for A026633, the canonical program `A026633.P5932809756005761071` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026633 has offset 0).

The definition of A026633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026633.P5932809756005761071

`a(n-1)+2*a(n-2)+2` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026633

/-- `a(n-1)+2*a(n-2)+2` -/
def P5932809756005761071.Spec : Prop :=
  ∀ n, (P5932809756005761071.a n : ℤ) = A026633 n

theorem P5932809756005761071.correct : P5932809756005761071.Spec := by
  intro n
  simp only [A026633]

end A026633

/-! ## A026633.P16057286897892798195

`ogf((1+x^4)/(1-2x-x^2+2x^3))`
-/

namespace A026633.P16057286897892798195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 1] [1, -2, -1, 2] n

end

end A026633.P16057286897892798195

namespace A026633

/-- `ogf((1+x^4)/(1-2x-x^2+2x^3))` -/
def P16057286897892798195.Spec : Prop :=
  ∀ n, P16057286897892798195.a n = A026633 n

end A026633

/-! ## A026633.P7097905491666102876

`2*(a(n-1)+(n+1)%2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026633.P7097905491666102876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + (n + 1) % 2)

end

end A026633.P7097905491666102876

namespace A026633

/-- `2*(a(n-1)+(n+1)%2)` -/
def P7097905491666102876.Spec : Prop :=
  ∀ n, (P7097905491666102876.a n : ℤ) = A026633 n

end A026633

/-! ## A026633.P14892435877559223661

`2-2*(n%2-a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026633.P14892435877559223661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 - 2 * (((n % 2 : ℕ) : ℤ) - a (n - 1))

end

end A026633.P14892435877559223661

namespace A026633

/-- `2-2*(n%2-a(n-1))` -/
def P14892435877559223661.Spec : Prop :=
  ∀ n, P14892435877559223661.a n = A026633 n

end A026633

/-! ## A026633.P9641050418890104846

`2*(a(n-1)+and(1, n+1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026633.P9641050418890104846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + Nat.land 1 (n + 1))

end

end A026633.P9641050418890104846

namespace A026633

/-- `2*(a(n-1)+and(1, n+1))` -/
def P9641050418890104846.Spec : Prop :=
  ∀ n, (P9641050418890104846.a n : ℤ) = A026633 n

end A026633

/-! ## A026633.P11171574028866627287

`or(2*a(n-1), and(2, gcd(2, n)))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026633.P11171574028866627287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.land 2 (Nat.gcd 2 n))

end

end A026633.P11171574028866627287

namespace A026633

/-- `or(2*a(n-1), and(2, gcd(2, n)))` -/
def P11171574028866627287.Spec : Prop :=
  ∀ n, (P11171574028866627287.a n : ℤ) = A026633 n

end A026633

/-! ## A026633.P3893693901186518508

`2*(a(n-1)+val(n²+2, 2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A026633.P3893693901186518508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) + SequenceMachineLib.valuation (n ^ 2 + 2) 2)

end

end A026633.P3893693901186518508

namespace A026633

/-- `2*(a(n-1)+val(n²+2, 2))` -/
def P3893693901186518508.Spec : Prop :=
  ∀ n, (P3893693901186518508.a n : ℤ) = A026633 n

end A026633

/-! ## A026633.P508742130060753475

`A267604(n)-A001045(n)`
-/

namespace A026633.P508742130060753475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n - A001045 n

end

end A026633.P508742130060753475

namespace A026633

/-- `A267604(n)-A001045(n)` -/
def P508742130060753475.Spec : Prop :=
  ∀ n, P508742130060753475.a n = A026633 n

end A026633

/-! ## A026633.P17631304758898470675

`ceil(A000225(n)+A084214(n)/2)`
-/

namespace A026633.P17631304758898470675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) + (A084214 n : ℚ) / 2⌉

end

end A026633.P17631304758898470675

namespace A026633

/-- `ceil(A000225(n)+A084214(n)/2)` -/
def P17631304758898470675.Spec : Prop :=
  ∀ n, P17631304758898470675.a n = A026633 n

end A026633

/-! ## A026633.P13470703552902250302

`A000975(n+1)+floor(A001045(n)/4)`
-/

namespace A026633.P13470703552902250302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + ⌊(A001045 n : ℚ) / 4⌋

end

end A026633.P13470703552902250302

namespace A026633

/-- `A000975(n+1)+floor(A001045(n)/4)` -/
def P13470703552902250302.Spec : Prop :=
  ∀ n, P13470703552902250302.a n = A026633 n

end A026633

/-! ## A026633.P5349617678630022687

`A001045(n+1)+A098011(n+2)-1`
-/

namespace A026633.P5349617678630022687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A098011 (n + 2) - 1)

end

end A026633.P5349617678630022687

namespace A026633

/-- `A001045(n+1)+A098011(n+2)-1` -/
def P5349617678630022687.Spec : Prop :=
  ∀ n, P5349617678630022687.a n = A026633 n

end A026633

/-! ## A026633.P10925026657287289280

`A152046(n+1)+A098011(n+2)-1`
-/

namespace A026633.P10925026657287289280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1) + (A098011 (n + 2) - 1)

end

end A026633.P10925026657287289280

namespace A026633

/-- `A152046(n+1)+A098011(n+2)-1` -/
def P10925026657287289280.Spec : Prop :=
  ∀ n, P10925026657287289280.a n = A026633 n

end A026633

/-! ## A026633.P4166815434980777014

`A266721(n)-A059841(n+1)*A266719(n)`
-/

namespace A026633.P4166815434980777014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266721 n - A059841 (n + 1) * A266719 n

end

end A026633.P4166815434980777014

namespace A026633

/-- `A266721(n)-A059841(n+1)*A266719(n)` -/
def P4166815434980777014.Spec : Prop :=
  ∀ n, P4166815434980777014.a n = A026633 n

end A026633

/-! ## A026633.P16249426248553050692

`2/(n+2)*A026965(n)`
-/

namespace A026633.P16249426248553050692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026965 n : ℚ)

end

end A026633.P16249426248553050692

namespace A026633

/-- `2/(n+2)*A026965(n)` -/
def P16249426248553050692.Spec : Prop :=
  ∀ n, P16249426248553050692.a n = (A026633 n : ℚ)

end A026633

/-!
# A026634: a(n) = Sum_{k=0..floor(n/2)} A026626(n, k).

The programs for A026634, there is no canonical definition to state claims against.
-/

/-! ## A026634.P9954795619241609076

`A248183(A081672(n)+1)`
-/

namespace A026634.P9954795619241609076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A081672 n + 1).toNat

end

end A026634.P9954795619241609076

/-! ## A026634.P18425274663257498942

`A248185(A027306(n))-2`
-/

namespace A026634.P18425274663257498942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248185 (A027306 n).toNat - 2

end

end A026634.P18425274663257498942

/-! ## A026634.P6718342039692433859

`A248183(or(1, A081672(n)))`
-/

namespace A026634.P6718342039692433859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (Int.lor 1 (A081672 n)).toNat

end

end A026634.P6718342039692433859

/-! ## A026634.P2453052243262588464

`A001951(A027306(n*A055640(n)))`
-/

namespace A026634.P2453052243262588464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A027306 ((n : ℤ) * A055640 n).toNat).toNat

end

end A026634.P2453052243262588464

/-! ## A026634.P2058430892873641766

`A001951(A027306(n)^A055640(n))`
-/

namespace A026634.P2058430892873641766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (SequenceMachineLib.roundAway ((A027306 n : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A026634.P2058430892873641766

/-!
# A026635: a(n) = Sum_{i=0..n} Sum_{j=0..n} A026626(i,j).

The programs for A026635, the canonical program `A026635.P17201144831836056725` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026635 has offset 0).

The definition of A026635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026635.P17201144831836056725

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18, a(4)=40`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026635

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P17201144831836056725.Spec : Prop :=
  ∀ n, P17201144831836056725.a n = A026635 n

theorem P17201144831836056725.correct : P17201144831836056725.Spec := by
  intro n
  simp only [A026635]

end A026635

/-! ## A026635.P17372184692384834311

`2*floor(a(n-1)+n/2)` with `a(0)=1, a(1)=3`
-/

namespace A026635.P17372184692384834311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ⌊(a (n - 1) : ℚ) + (n : ℚ) / 2⌋

end

end A026635.P17372184692384834311

namespace A026635

/-- `2*floor(a(n-1)+n/2)` -/
def P17372184692384834311.Spec : Prop :=
  ∀ n, P17372184692384834311.a n = A026635 n

end A026635

/-! ## A026635.P1747670939477006217

`2*a(n-1)-n%2+n` with `a(0)=1, a(1)=3`
-/

namespace A026635.P1747670939477006217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - ((n % 2 : ℕ) : ℤ) + (n : ℤ)

end

end A026635.P1747670939477006217

namespace A026635

/-- `2*a(n-1)-n%2+n` -/
def P1747670939477006217.Spec : Prop :=
  ∀ n, P1747670939477006217.a n = A026635 n

end A026635

/-! ## A026635.P10651118671821362360

`∑[A026633(n)]`
-/

namespace A026635.P10651118671821362360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026635.P10651118671821362360

namespace A026635

/-- `∑[A026633(n)]` -/
def P10651118671821362360.Spec : Prop :=
  ∀ n, P10651118671821362360.a n = A026635 n

end A026635

/-! ## A026635.P15121771865401007515

`A266721(n+1)-(n+1)`
-/

namespace A026635.P15121771865401007515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266721 (n + 1) - (n + 1 : ℤ)

end

end A026635.P15121771865401007515

namespace A026635

/-- `A266721(n+1)-(n+1)` -/
def P15121771865401007515.Spec : Prop :=
  ∀ n, P15121771865401007515.a n = A026635 n

end A026635

/-! ## A026635.P11568246496443906778

`A131055(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026635.P11568246496443906778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131055 n + 2 * a (n - 1)

end

end A026635.P11568246496443906778

namespace A026635

/-- `A131055(n)+2*a(n-1)` -/
def P11568246496443906778.Spec : Prop :=
  ∀ n, P11568246496443906778.a n = A026635 n

end A026635

/-! ## A026635.P18298058464937060310

`abs(A000035(n)-a(n-1)-a(n-1)-n)` with `a(0)=1, a(1)=3`
-/

namespace A026635.P18298058464937060310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  |A000035 n - a (n - 1) - a (n - 1) - (n : ℤ)|

end

end A026635.P18298058464937060310

namespace A026635

/-- `abs(A000035(n)-a(n-1)-a(n-1)-n)` -/
def P18298058464937060310.Spec : Prop :=
  ∀ n, P18298058464937060310.a n = A026635 n

end A026635

/-! ## A026635.P14467900711781475652

`A052997(n)+A000295(n)`
-/

namespace A026635.P14467900711781475652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 n + A000295 n

end

end A026635.P14467900711781475652

namespace A026635

/-- `A052997(n)+A000295(n)` -/
def P14467900711781475652.Spec : Prop :=
  ∀ n, P14467900711781475652.a n = A026635 n

end A026635

/-! ## A026635.P4323426526155630363

`A179744(n)+A084639(n)`
-/

namespace A026635.P4323426526155630363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179744 n + A084639 n

end

end A026635.P4323426526155630363

namespace A026635

/-- `A179744(n)+A084639(n)` -/
def P4323426526155630363.Spec : Prop :=
  ∀ n, P4323426526155630363.a n = A026635 n

end A026635

/-! ## A026635.P5538579673392191259

`A288170(n)-A122958(n)`
-/

namespace A026635.P5538579673392191259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288170 n - A122958 n

end

end A026635.P5538579673392191259

namespace A026635

/-- `A288170(n)-A122958(n)` -/
def P5538579673392191259.Spec : Prop :=
  ∀ n, P5538579673392191259.a n = A026635 n

end A026635

/-! ## A026635.P10825673209314010235

`∑[A267604(n)-A001045(n)]`
-/

namespace A026635.P10825673209314010235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026635.P10825673209314010235

namespace A026635

/-- `∑[A267604(n)-A001045(n)]` -/
def P10825673209314010235.Spec : Prop :=
  ∀ n, P10825673209314010235.a n = A026635 n

end A026635

/-! ## A026635.P3417409599451086159

`A257198(n+1)+A003945(n)`
-/

namespace A026635.P3417409599451086159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257198 (n + 1) + A003945 n

end

end A026635.P3417409599451086159

namespace A026635

/-- `A257198(n+1)+A003945(n)` -/
def P3417409599451086159.Spec : Prop :=
  ∀ n, P3417409599451086159.a n = A026635 n

end A026635

/-! ## A026635.P4342346501483559296

`A084173(n)+A084214(n)-1`
-/

namespace A026635.P4342346501483559296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 n + (A084214 n - 1)

end

end A026635.P4342346501483559296

namespace A026635

/-- `A084173(n)+A084214(n)-1` -/
def P4342346501483559296.Spec : Prop :=
  ∀ n, P4342346501483559296.a n = A026635 n

end A026635

/-! ## A026635.P12494613104693075682

`A003945(n)+A084639(n)-n`
-/

namespace A026635.P12494613104693075682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + (A084639 n - (n : ℤ))

end

end A026635.P12494613104693075682

namespace A026635

/-- `A003945(n)+A084639(n)-n` -/
def P12494613104693075682.Spec : Prop :=
  ∀ n, P12494613104693075682.a n = A026635 n

end A026635

/-! ## A026635.P9477804400774905192

`A257198(n+1)+A179744(n)+n`
-/

namespace A026635.P9477804400774905192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257198 (n + 1) + (A179744 n + (n : ℤ))

end

end A026635.P9477804400774905192

namespace A026635

/-- `A257198(n+1)+A179744(n)+n` -/
def P9477804400774905192.Spec : Prop :=
  ∀ n, P9477804400774905192.a n = A026635 n

end A026635

/-! ## A026635.P12372743220860356929

`∑[ceil(A000225(n)+A084214(n)/2)]`
-/

namespace A026635.P12372743220860356929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) + (A084214 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026635.P12372743220860356929

namespace A026635

/-- `∑[ceil(A000225(n)+A084214(n)/2)]` -/
def P12372743220860356929.Spec : Prop :=
  ∀ n, P12372743220860356929.a n = A026635 n

end A026635

/-! ## A026635.P2685861850081955195

`∑[A000975(n+1)+floor(A001045(n)/4)]`
-/

namespace A026635.P2685861850081955195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + ⌊(A001045 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026635.P2685861850081955195

namespace A026635

/-- `∑[A000975(n+1)+floor(A001045(n)/4)]` -/
def P2685861850081955195.Spec : Prop :=
  ∀ n, P2685861850081955195.a n = A026635 n

end A026635

/-!
# A026636: a(n) = Sum_{k=0..floor(n/2)} A026626(n-k, k).

The programs for A026636, the canonical program `A026636.P4565566141905730699` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026636 has offset 0).

The definition of A026636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026636.P4565566141905730699

`a(n-1)+a(n-2)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=11, a(6)=17, a(7)=30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026636

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-5)-a(n-6)` -/
def P4565566141905730699.Spec : Prop :=
  ∀ n, P4565566141905730699.a n = A026636 n

theorem P4565566141905730699.correct : P4565566141905730699.Spec := by
  intro n
  simp only [A026636]

end A026636

/-! ## A026636.P4160562357810271383

`A025458(A137842(n))+A014217(n)`
-/

namespace A026636.P4160562357810271383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A137842 n).toNat + A014217 n

end

end A026636.P4160562357810271383

namespace A026636

/-- `A025458(A137842(n))+A014217(n)` -/
def P4160562357810271383.Spec : Prop :=
  ∀ n, P4160562357810271383.a n = A026636 n

end A026636

/-! ## A026636.P12028287004721228959

`A003056(A114499(n)+A064831(n))`
-/

namespace A026636.P12028287004721228959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A114499 n + A064831 n).toNat

end

end A026636.P12028287004721228959

namespace A026636

/-- `A003056(A114499(n)+A064831(n))` -/
def P12028287004721228959.Spec : Prop :=
  ∀ n, P12028287004721228959.a n = A026636 n

end A026636

/-! ## A026636.P5481260113323568483

`A307598(A281759(n))+A014217(n)`
-/

namespace A026636.P5481260113323568483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A281759 n).toNat + A014217 n

end

end A026636.P5481260113323568483

namespace A026636

/-- `A307598(A281759(n))+A014217(n)` -/
def P5481260113323568483.Spec : Prop :=
  ∀ n, P5481260113323568483.a n = A026636 n

end A026636

/-! ## A026636.P15429671874379082735

`A082859(A033886(n+3))+A014217(n)`
-/

namespace A026636.P15429671874379082735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A033886 (n + 3)).toNat + A014217 n

end

end A026636.P15429671874379082735

namespace A026636

/-- `A082859(A033886(n+3))+A014217(n)` -/
def P15429671874379082735.Spec : Prop :=
  ∀ n, P15429671874379082735.a n = A026636 n

end A026636

/-!
# A026637: Triangular array T read by rows: T(n,0) = T(n,n) = 1 for n >= 0, T(n,1) = T(n,n-1) = floor((3*n-1)/2) for n >= 1, otherwise T(n,k) = T(n-1,k-1) + T(n-1,k) for 2 <= k <= n-2, n >= 4.

The programs for A026637, there is no canonical definition to state claims against.
-/

/-! ## A026637.P10674491691699821020

`A220104(A323324(n))`
-/

namespace A026637.P10674491691699821020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (A323324 n).toNat

end

end A026637.P10674491691699821020

/-! ## A026637.P6174062984247205002

`A048266(A026659(n+1))`
-/

namespace A026637.P6174062984247205002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A026659 (n + 1)).toNat

end

end A026637.P6174062984247205002

/-! ## A026637.P11995478832288464278

`A026659(n+1)%record[A079397(n)]`
-/

namespace A026637.P11995478832288464278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026659 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A026637.P11995478832288464278

/-! ## A026637.P7118035354001918007

`A295883(A052955(n))+A026659(n+1)`
-/

namespace A026637.P7118035354001918007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A052955 n).toNat + A026659 (n + 1)

end

end A026637.P7118035354001918007

/-! ## A026637.P5491061220018101882

`A026659(n+1)*A368330(A214961(n))`
-/

namespace A026637.P5491061220018101882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (n + 1) * A368330 (A214961 n).toNat

end

end A026637.P5491061220018101882

/-!
# A026638: a(n) = A026637(2*n, n).

The programs for A026638, the canonical program `A026638.P13184439560798616966` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026638 has offset 0).

The definition of A026638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026638.P13184439560798616966

`((7*n-4)*a(n-1)+2*(2*n-1)*a(n-2))/(2*n)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026638

/-- `((7*n-4)*a(n-1)+2*(2*n-1)*a(n-2))/(2*n)` -/
def P13184439560798616966.Spec : Prop :=
  ∀ n, P13184439560798616966.a n = (A026638 n : ℚ)

end A026638

/-! ## A026638.P14383929582137380904

`A026643(2*n)`
-/

namespace A026638.P14383929582137380904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026643 (2 * n)

end

end A026638.P14383929582137380904

namespace A026638

/-- `A026643(2*n)` -/
def P14383929582137380904.Spec : Prop :=
  ∀ n, P14383929582137380904.a n = A026638 n

end A026638

/-! ## A026638.P17633945991176334522

`record[A026643(n)/(-1)^n]`
-/

namespace A026638.P17633945991176334522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026643 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026638.P17633945991176334522

namespace A026638

/-- `record[A026643(n)/(-1)^n]` -/
def P17633945991176334522.Spec : Prop :=
  ∀ n, P17633945991176334522.a n = (A026638 n : ℚ)

end A026638

/-! ## A026638.P4741341018368131933

`record[A040001(n)*A109078(n)]`
-/

namespace A026638.P4741341018368131933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A109078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026638.P4741341018368131933

namespace A026638

/-- `record[A040001(n)*A109078(n)]` -/
def P4741341018368131933.Spec : Prop :=
  ∀ n, P4741341018368131933.a n = A026638 n

end A026638

/-! ## A026638.P900124679446696849

`A026641(n)*A036453(n+1)`
-/

namespace A026638.P900124679446696849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n * A036453 (n + 1)

end

end A026638.P900124679446696849

namespace A026638

/-- `A026641(n)*A036453(n+1)` -/
def P900124679446696849.Spec : Prop :=
  ∀ n, P900124679446696849.a n = A026638 n

end A026638

/-! ## A026638.P11178198286085924357

`(A057427(n)+1)*A026641(n)`
-/

namespace A026638.P11178198286085924357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A026641 n

end

end A026638.P11178198286085924357

namespace A026638

/-- `(A057427(n)+1)*A026641(n)` -/
def P11178198286085924357.Spec : Prop :=
  ∀ n, P11178198286085924357.a n = A026638 n

end A026638

/-! ## A026638.P734262623092426228

`(2-A000007(n))*A026641(n)`
-/

namespace A026638.P734262623092426228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A026641 n

end

end A026638.P734262623092426228

namespace A026638

/-- `(2-A000007(n))*A026641(n)` -/
def P734262623092426228.Spec : Prop :=
  ∀ n, P734262623092426228.a n = A026638 n

end A026638

/-! ## A026638.P16663477852956616218

`gcd(2, A057335(n))*A026641(n)`
-/

namespace A026638.P16663477852956616218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A057335 n) : ℤ) * A026641 n

end

end A026638.P16663477852956616218

namespace A026638

/-- `gcd(2, A057335(n))*A026641(n)` -/
def P16663477852956616218.Spec : Prop :=
  ∀ n, P16663477852956616218.a n = A026638 n

end A026638

/-! ## A026638.P15030203873130215868

`A040001(2*n)*A109078(2*n)`
-/

namespace A026638.P15030203873130215868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A109078 (2 * n)

end

end A026638.P15030203873130215868

namespace A026638

/-- `A040001(2*n)*A109078(2*n)` -/
def P15030203873130215868.Spec : Prop :=
  ∀ n, P15030203873130215868.a n = A026638 n

end A026638

/-! ## A026638.P14429281458489490487

`(2-A039975(2*n+1))*A191526(2*n)`
-/

namespace A026638.P14429281458489490487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A039975 (2 * n + 1)) * A191526 (2 * n)

end

end A026638.P14429281458489490487

namespace A026638

/-- `(2-A039975(2*n+1))*A191526(2*n)` -/
def P14429281458489490487.Spec : Prop :=
  ∀ n, P14429281458489490487.a n = A026638 n

end A026638

/-! ## A026638.P7440843530429366708

`(4*n+1-A004273(2*n))*A109078(2*n)`
-/

namespace A026638.P7440843530429366708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) - A004273 (2 * n)) * A109078 (2 * n)

end

end A026638.P7440843530429366708

namespace A026638

/-- `(4*n+1-A004273(2*n))*A109078(2*n)` -/
def P7440843530429366708.Spec : Prop :=
  ∀ n, P7440843530429366708.a n = A026638 n

end A026638

/-! ## A026638.P18057203348884324359

`(4*n+1-A004273(2*n))*A191526(2*n)`
-/

namespace A026638.P18057203348884324359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) - A004273 (2 * n)) * A191526 (2 * n)

end

end A026638.P18057203348884324359

namespace A026638

/-- `(4*n+1-A004273(2*n))*A191526(2*n)` -/
def P18057203348884324359.Spec : Prop :=
  ∀ n, P18057203348884324359.a n = A026638 n

end A026638

/-! ## A026638.P18203747163294902683

`A014963(A001316(n))*A026641(n)`
-/

namespace A026638.P18203747163294902683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A026641 n

end

end A026638.P18203747163294902683

namespace A026638

/-- `A014963(A001316(n))*A026641(n)` -/
def P18203747163294902683.Spec : Prop :=
  ∀ n, P18203747163294902683.a n = A026638 n

end A026638

/-! ## A026638.P18374745482701315955

`A020639(A004277(n))*A026641(n)`
-/

namespace A026638.P18374745482701315955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A026641 n

end

end A026638.P18374745482701315955

namespace A026638

/-- `A020639(A004277(n))*A026641(n)` -/
def P18374745482701315955.Spec : Prop :=
  ∀ n, P18374745482701315955.a n = A026638 n

end A026638

/-! ## A026638.P2955833595696554786

`A020639(A008458(n))*A026641(n)`
-/

namespace A026638.P2955833595696554786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A026641 n

end

end A026638.P2955833595696554786

namespace A026638

/-- `A020639(A008458(n))*A026641(n)` -/
def P2955833595696554786.Spec : Prop :=
  ∀ n, P2955833595696554786.a n = A026638 n

end A026638

/-! ## A026638.P16383862031561429764

`A020639(A008574(n))*A026641(n)`
-/

namespace A026638.P16383862031561429764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A026641 n

end

end A026638.P16383862031561429764

namespace A026638

/-- `A020639(A008574(n))*A026641(n)` -/
def P16383862031561429764.Spec : Prop :=
  ∀ n, P16383862031561429764.a n = A026638 n

end A026638

/-! ## A026638.P9967166753260640151

`A020639(A008579(n))*A026641(n)`
-/

namespace A026638.P9967166753260640151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008579 n).toNat * A026641 n

end

end A026638.P9967166753260640151

namespace A026638

/-- `A020639(A008579(n))*A026641(n)` -/
def P9967166753260640151.Spec : Prop :=
  ∀ n, P9967166753260640151.a n = A026638 n

end A026638

/-! ## A026638.P4945422009247377417

`A020639(A020647(n))*A026641(n)`
-/

namespace A026638.P4945422009247377417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020647 n).toNat * A026641 n

end

end A026638.P4945422009247377417

namespace A026638

/-- `A020639(A020647(n))*A026641(n)` -/
def P4945422009247377417.Spec : Prop :=
  ∀ n, P4945422009247377417.a n = A026638 n

end A026638

/-! ## A026638.P5958648745702398191

`A020639(A103517(n))*A026641(n)`
-/

namespace A026638.P5958648745702398191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A026641 n

end

end A026638.P5958648745702398191

namespace A026638

/-- `A020639(A103517(n))*A026641(n)` -/
def P5958648745702398191.Spec : Prop :=
  ∀ n, P5958648745702398191.a n = A026638 n

end A026638

/-!
# A026639: a(n) = A026637(2*n, n-1).

The programs for A026639, there is no canonical definition to state claims against.
-/

/-! ## A026639.P14200517196423298415

`A026637((n+1)²+(n+2)²)`
-/

namespace A026639.P14200517196423298415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A026639.P14200517196423298415

/-! ## A026639.P3318793916955698963

`record[A026637(A330613(n+1))]`
-/

namespace A026639.P3318793916955698963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026639.P3318793916955698963

/-! ## A026639.P14631523649484485559

`record[A026637(A001844(n))-char[1]]`
-/

namespace A026639.P14631523649484485559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A001844 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026639.P14631523649484485559

/-! ## A026639.P3128349097249789930

`record[A026637(A001844(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A026639.P3128349097249789930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A001844 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026639.P3128349097249789930

/-! ## A026639.P13846239462517607577

`A026637(A001844(n+1))%A229455(n+1)`
-/

namespace A026639.P13846239462517607577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026637 (A001844 (n + 1)).toNat) (A229455 (n + 1))

end

end A026639.P13846239462517607577

/-!
# A026640: a(n) = A026637(2*n, n-2).

The programs for A026640, there is no canonical definition to state claims against.
-/

/-! ## A026640.P13589022352510408312

`A026637(A090288(n+1))`
-/

namespace A026640.P13589022352510408312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A090288 (n + 1)).toNat

end

end A026640.P13589022352510408312

/-! ## A026640.P1783631127276783167

`A026637(A051890(n+3))`
-/

namespace A026640.P1783631127276783167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A051890 (n + 3)).toNat

end

end A026640.P1783631127276783167

/-! ## A026640.P2179531514345279786

`A026637(A016825(∑[n+2]))`
-/

namespace A026640.P2179531514345279786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026640.P2179531514345279786

/-! ## A026640.P6135143854149759213

`A026637(A099776(n+2)+1)`
-/

namespace A026640.P6135143854149759213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A099776 (n + 2) + 1).toNat

end

end A026640.P6135143854149759213

/-! ## A026640.P3046011137761046844

`A026637(A017545(∑[A008620(n)]))`
-/

namespace A026640.P3046011137761046844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A017545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A026640.P3046011137761046844

/-!
# A026641: Number of nodes of even outdegree (including leaves) in all ordered trees with n edges.

The programs for A026641, the canonical program `A026641.P1352791935542625718` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026641 has offset 0).

The definition of A026641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026641.P1352791935542625718

`3/2*C(2*n-1, n-1)-1/2*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026641

/-- `3/2*C(2*n-1, n-1)-1/2*a(n-1)` -/
def P1352791935542625718.Spec : Prop :=
  ∀ n, P1352791935542625718.a n = (A026641 n : ℚ)

end A026641

/-! ## A026641.P6661143846571002879

`A109078(2*n)`
-/

namespace A026641.P6661143846571002879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (2 * n)

end

end A026641.P6661143846571002879

namespace A026641

/-- `A109078(2*n)` -/
def P6661143846571002879.Spec : Prop :=
  ∀ n, P6661143846571002879.a n = A026641 n

end A026641

/-! ## A026641.P14736970721800648547

`A191526(2*n)`
-/

namespace A026641.P14736970721800648547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n)

end

end A026641.P14736970721800648547

namespace A026641

/-- `A191526(2*n)` -/
def P14736970721800648547.Spec : Prop :=
  ∀ n, P14736970721800648547.a n = A026641 n

end A026641

/-! ## A026641.P466373734819363121

`ceil(A026638(n)/2)`
-/

namespace A026641.P466373734819363121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026638 n : ℚ) / 2⌉

end

end A026641.P466373734819363121

namespace A026641

/-- `ceil(A026638(n)/2)` -/
def P466373734819363121.Spec : Prop :=
  ∀ n, P466373734819363121.a n = A026641 n

end A026641

/-! ## A026641.P7368365491146109867

`A026643(abs(1-2*n))`
-/

namespace A026641.P7368365491146109867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026643 |1 - (2 * n : ℤ)|.toNat

end

end A026641.P7368365491146109867

namespace A026641

/-- `A026643(abs(1-2*n))` -/
def P7368365491146109867.Spec : Prop :=
  ∀ n, P7368365491146109867.a n = A026641 n

end A026641

/-! ## A026641.P10678745147364185807

`a(n-1)+3*A014301(n)` with `a(0)=1`
-/

namespace A026641.P10678745147364185807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A014301 n

end

end A026641.P10678745147364185807

namespace A026641

/-- `a(n-1)+3*A014301(n)` -/
def P10678745147364185807.Spec : Prop :=
  ∀ n, P10678745147364185807.a n = A026641 n

end A026641

/-! ## A026641.P983975729811273243

`A188289(n)+A033999(n)`
-/

namespace A026641.P983975729811273243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188289 n + A033999 n

end

end A026641.P983975729811273243

namespace A026641

/-- `A188289(n)+A033999(n)` -/
def P983975729811273243.Spec : Prop :=
  ∀ n, P983975729811273243.a n = A026641 n

end A026641

/-! ## A026641.P17683734665940673883

`A116914(n+2)-A114515(n)`
-/

namespace A026641.P17683734665940673883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) - A114515 n

end

end A026641.P17683734665940673883

namespace A026641

/-- `A116914(n+2)-A114515(n)` -/
def P17683734665940673883.Spec : Prop :=
  ∀ n, P17683734665940673883.a n = A026641 n

end A026641

/-! ## A026641.P14298330962401292008

`A026638(n)/A036453(n+1)`
-/

namespace A026641.P14298330962401292008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026638 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A026641.P14298330962401292008

namespace A026641

/-- `A026638(n)/A036453(n+1)` -/
def P14298330962401292008.Spec : Prop :=
  ∀ n, P14298330962401292008.a n = (A026641 n : ℚ)

end A026641

/-! ## A026641.P13217404254359037940

`A014301(n+1)+A000957(n+1)`
-/

namespace A026641.P13217404254359037940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1) + A000957 (n + 1)

end

end A026641.P13217404254359037940

namespace A026641

/-- `A014301(n+1)+A000957(n+1)` -/
def P13217404254359037940.Spec : Prop :=
  ∀ n, P13217404254359037940.a n = A026641 n

end A026641

/-! ## A026641.P14117052442733303709

`A014300(n+1)-A014301(n+1)`
-/

namespace A026641.P14117052442733303709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1) - A014301 (n + 1)

end

end A026641.P14117052442733303709

namespace A026641

/-- `A014300(n+1)-A014301(n+1)` -/
def P14117052442733303709.Spec : Prop :=
  ∀ n, P14117052442733303709.a n = A026641 n

end A026641

/-! ## A026641.P15199220076872369001

`A014301(n+1)-A126983(n+1)`
-/

namespace A026641.P15199220076872369001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014301 (n + 1) - A126983 (n + 1)

end

end A026641.P15199220076872369001

namespace A026641

/-- `A014301(n+1)-A126983(n+1)` -/
def P15199220076872369001.Spec : Prop :=
  ∀ n, P15199220076872369001.a n = A026641 n

end A026641

/-! ## A026641.P7569517860392833354

`A072547(n+2)-A091526(n+1)`
-/

namespace A026641.P7569517860392833354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 2) - A091526 (n + 1)

end

end A026641.P7569517860392833354

namespace A026641

/-- `A072547(n+2)-A091526(n+1)` -/
def P7569517860392833354.Spec : Prop :=
  ∀ n, P7569517860392833354.a n = A026641 n

end A026641

/-! ## A026641.P2187442876649814572

`(A072547(n+1)+A000984(n))/2`
-/

namespace A026641.P2187442876649814572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072547 (n + 1) + A000984 n : ℚ) / 2

end

end A026641.P2187442876649814572

namespace A026641

/-- `(A072547(n+1)+A000984(n))/2` -/
def P2187442876649814572.Spec : Prop :=
  ∀ n, P2187442876649814572.a n = (A026641 n : ℚ)

end A026641

/-! ## A026641.P11664449678437466867

`A191526(Δ[n²])-A014301(n+1)`
-/

namespace A026641.P11664449678437466867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A014301 (n + 1)

end

end A026641.P11664449678437466867

namespace A026641

/-- `A191526(Δ[n²])-A014301(n+1)` -/
def P11664449678437466867.Spec : Prop :=
  ∀ n, P11664449678437466867.a n = A026641 n

end A026641

/-! ## A026641.P11739711777850927249

`A091526(n+1)+2*A000957(n+1)`
-/

namespace A026641.P11739711777850927249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 (n + 1) + 2 * A000957 (n + 1)

end

end A026641.P11739711777850927249

namespace A026641

/-- `A091526(n+1)+2*A000957(n+1)` -/
def P11739711777850927249.Spec : Prop :=
  ∀ n, P11739711777850927249.a n = A026641 n

end A026641

/-! ## A026641.P12314094418816858534

`A000957(n+1)+A072547(n+2)/2`
-/

namespace A026641.P12314094418816858534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000957 (n + 1) : ℚ) + (A072547 (n + 2) : ℚ) / 2

end

end A026641.P12314094418816858534

namespace A026641

/-- `A000957(n+1)+A072547(n+2)/2` -/
def P12314094418816858534.Spec : Prop :=
  ∀ n, P12314094418816858534.a n = (A026641 n : ℚ)

end A026641

/-! ## A026641.P2575376536194251661

`A026643(2*n)/gcd(2, A026643(2*n))`
-/

namespace A026641.P2575376536194251661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026643 (2 * n) : ℚ) / (Int.gcd 2 (A026643 (2 * n)) : ℚ)

end

end A026641.P2575376536194251661

namespace A026641

/-- `A026643(2*n)/gcd(2, A026643(2*n))` -/
def P2575376536194251661.Spec : Prop :=
  ∀ n, P2575376536194251661.a n = (A026641 n : ℚ)

end A026641

/-! ## A026641.P16974248760654227732

`A026643(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A026641.P16974248760654227732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026643 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A026641.P16974248760654227732

namespace A026641

/-- `A026643(2*n)/(4*n+1-A004273(2*n))` -/
def P16974248760654227732.Spec : Prop :=
  ∀ n, P16974248760654227732.a n = (A026641 n : ℚ)

end A026641

/-!
# A026642: a(n) = A026637(2*n-1, n-2).

The programs for A026642, there is no canonical definition to state claims against.
-/

/-! ## A026642.P16280228775968549032

`record[A091526(n)-A000957(n)]`
-/

namespace A026642.P16280228775968549032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 n - A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026642.P16280228775968549032

/-! ## A026642.P13418172011429193643

`A026639(n+2)-A026641(n+2)`
-/

namespace A026642.P13418172011429193643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026639 (n + 2) - A026641 (n + 2)

end

end A026642.P13418172011429193643

/-! ## A026642.P16354853093928965122

`A091526(n+3)-A000957(n+3)`
-/

namespace A026642.P16354853093928965122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 (n + 3) - A000957 (n + 3)

end

end A026642.P16354853093928965122

/-! ## A026642.P8485156835413636538

`A026637(2*((n+2)²-1))`
-/

namespace A026642.P8485156835413636538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (2 * (((n + 2) ^ 2 : ℤ) - 1)).toNat

end

end A026642.P8485156835413636538

/-! ## A026642.P13179665229262422625

`record[A026637(A058331(A002262(n)))]`
-/

namespace A026642.P13179665229262422625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A058331 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026642.P13179665229262422625

/-! ## A026642.P1839175037610474349

`record[A228053(A005408(n²))]`
-/

namespace A026642.P1839175037610474349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228053 (A005408 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026642.P1839175037610474349

/-! ## A026642.P9401275562575742070

`A228053(A004275((n+3)²))`
-/

namespace A026642.P9401275562575742070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228053 (A004275 ((n + 3) ^ 2)).toNat

end

end A026642.P9401275562575742070

/-!
# A026643: a(n) = A026637(n, floor(n/2)).

The programs for A026643, there is no canonical definition to state claims against.
-/

/-! ## A026643.P6828145810746161830

`A026637(∑[or(1, n)]-1)`
-/

namespace A026643.P6828145810746161830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A026643.P6828145810746161830

/-! ## A026643.P1734385538820618447

`A026637(A194274(n))`
-/

namespace A026643.P1734385538820618447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A194274 n).toNat

end

end A026643.P1734385538820618447

/-! ## A026643.P14601407504396771920

`A026637(A007590(n+1))`
-/

namespace A026643.P14601407504396771920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A007590 (n + 1)).toNat

end

end A026643.P14601407504396771920

/-! ## A026643.P1213408767160273713

`A026637(A080476(n+1))`
-/

namespace A026643.P1213408767160273713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A080476 (n + 1)).toNat

end

end A026643.P1213408767160273713

/-! ## A026643.P12589105557514562211

`A026637(A000982(n)+n)`
-/

namespace A026643.P12589105557514562211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A000982 n + (n : ℤ)).toNat

end

end A026643.P12589105557514562211

/-! ## A026643.P10725311163195257563

`A026637(A004525(n)+∑[n])`
-/

namespace A026643.P10725311163195257563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A004525 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026643.P10725311163195257563

/-! ## A026643.P6457570591423038010

`A026637(A004526(n)+∑[n])`
-/

namespace A026643.P6457570591423038010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026643.P6457570591423038010

/-! ## A026643.P15330934909294689535

`A026637(2*A002620(n+1))`
-/

namespace A026643.P15330934909294689535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (2 * A002620 (n + 1)).toNat

end

end A026643.P15330934909294689535

/-! ## A026643.P1685124832002474562

`A026637(A004526((n+1)²))`
-/

namespace A026643.P1685124832002474562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A004526 ((n + 1) ^ 2)).toNat

end

end A026643.P1685124832002474562

/-! ## A026643.P11129029281833617289

`A026637(A002265((n+2)*2*n))`
-/

namespace A026643.P11129029281833617289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 (A002265 ((n + 2) * (2 * n))).toNat

end

end A026643.P11129029281833617289

/-!
# A026644: a(n) = a(n-1) + 2*a(n-2) + 2, for n>=3, where a(0)= 1, a(1)= 2, a(2)= 4.

The programs for A026644, the canonical program `A026644.P16501472109801589792` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026644 has offset 0).

The definition of A026644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+2` (program `A026644.P16501472109801589792`, by `A026644.P16501472109801589792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026644.P16501472109801589792

`a(n-1)+2*a(n-2)+2` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026644

/-- `a(n-1)+2*a(n-2)+2` -/
def P16501472109801589792.Spec : Prop :=
  ∀ n, (P16501472109801589792.a n : ℤ) = A026644 n

theorem P16501472109801589792.correct : P16501472109801589792.Spec := by
  intro n
  simp only [A026644]

end A026644

/-! ## A026644.P11409215846580047855

`ogf((1-x^2+2x^3)/(1-2x-x^2+2x^3))`
-/

namespace A026644.P11409215846580047855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, -2, -1, 2] n

end

end A026644.P11409215846580047855

namespace A026644

/-- `ogf((1-x^2+2x^3)/(1-2x-x^2+2x^3))` -/
def P11409215846580047855.Spec : Prop :=
  ∀ n, P11409215846580047855.a n = A026644 n

end A026644

/-! ## A026644.P14235207754338686012

`a(n-2)+2^n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A026644.P14235207754338686012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + 2 ^ n

end

end A026644.P14235207754338686012

namespace A026644

/-- `a(n-2)+2^n` -/
def P14235207754338686012.Spec : Prop :=
  ∀ n, (P14235207754338686012.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P9734245307786259907

`or(2^n, a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A026644.P9734245307786259907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.lor (2 ^ n) (a (n - 2))

end

end A026644.P9734245307786259907

namespace A026644

/-- `or(2^n, a(n-2))` -/
def P9734245307786259907.Spec : Prop :=
  ∀ n, (P9734245307786259907.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P17799359752250485493

`xor(2^n, a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A026644.P17799359752250485493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  Nat.xor (2 ^ n) (a (n - 2))

end

end A026644.P17799359752250485493

namespace A026644

/-- `xor(2^n, a(n-2))` -/
def P17799359752250485493.Spec : Prop :=
  ∀ n, (P17799359752250485493.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P9191209385079298880

`2*or(gcd(2, n), a(n-1))` with `a(0)=1`
-/

namespace A026644.P9191209385079298880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.lor (Nat.gcd 2 n) (a (n - 1))

end

end A026644.P9191209385079298880

namespace A026644

/-- `2*or(gcd(2, n), a(n-1))` -/
def P9191209385079298880.Spec : Prop :=
  ∀ n, (P9191209385079298880.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P1177571708048217829

`2*or(and(1, n), a(n-1))` with `a(0)=1`
-/

namespace A026644.P1177571708048217829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.lor (Nat.land 1 n) (a (n - 1))

end

end A026644.P1177571708048217829

namespace A026644

/-- `2*or(and(1, n), a(n-1))` -/
def P1177571708048217829.Spec : Prop :=
  ∀ n, (P1177571708048217829.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P14143058546926706894

`2*(a(n-1)+n%2)` with `a(0)=1, a(1)=2`
-/

namespace A026644.P14143058546926706894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + n % 2)

end

end A026644.P14143058546926706894

namespace A026644

/-- `2*(a(n-1)+n%2)` -/
def P14143058546926706894.Spec : Prop :=
  ∀ n, (P14143058546926706894.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P758354854153297061

`2*(a(n-1)+and(1, n))` with `a(0)=1, a(1)=2`
-/

namespace A026644.P758354854153297061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + Nat.land 1 n)

end

end A026644.P758354854153297061

namespace A026644

/-- `2*(a(n-1)+and(1, n))` -/
def P758354854153297061.Spec : Prop :=
  ∀ n, (P758354854153297061.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P12990325618237375096

`∑[2^n-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A026644.P12990325618237375096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026644.P12990325618237375096

namespace A026644

/-- `∑[2^n-a(n-1)]` -/
def P12990325618237375096.Spec : Prop :=
  ∀ n, P12990325618237375096.a n = A026644 n

end A026644

/-! ## A026644.P18306465675608362651

`2*(a(n-1)+val(a(n-1), 4))` with `a(0)=1`
-/

namespace A026644.P18306465675608362651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + SequenceMachineLib.valuation (a (n - 1)) 4)

end

end A026644.P18306465675608362651

namespace A026644

/-- `2*(a(n-1)+val(a(n-1), 4))` -/
def P18306465675608362651.Spec : Prop :=
  ∀ n, (P18306465675608362651.a n : ℤ) = A026644 n

end A026644

/-! ## A026644.P15127995849724908963

`or(2, 3*a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A026644.P15127995849724908963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 (3 * a (n - 1)) - a (n - 1)

end

end A026644.P15127995849724908963

namespace A026644

/-- `or(2, 3*a(n-1))-a(n-1)` -/
def P15127995849724908963.Spec : Prop :=
  ∀ n, P15127995849724908963.a n = A026644 n

end A026644

/-! ## A026644.P16483317797198638764

`floor(2*(a(n-1)-(2-n)%2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A026644.P16483317797198638764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - Int.tmod (2 - (n : ℤ)) 2)

end

end A026644.P16483317797198638764

namespace A026644

/-- `floor(2*(a(n-1)-(2-n)%2))` -/
def P16483317797198638764.Spec : Prop :=
  ∀ n, P16483317797198638764.a n = A026644 n

end A026644

/-! ## A026644.P2347364870135962502

`∑[2*a(n-1)]-1-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A026644.P2347364870135962502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - a (n - 1)

end

end A026644.P2347364870135962502

namespace A026644

/-- `∑[2*a(n-1)]-1-a(n-1)` -/
def P2347364870135962502.Spec : Prop :=
  ∀ n, P2347364870135962502.a n = A026644 n

end A026644

/-! ## A026644.P2812556270984666113

`2*(n-2*floor((n-a(n-1))/2))` with `a(0)=1`
-/

namespace A026644.P2812556270984666113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - 2 * ⌊((n : ℤ) - a (n - 1) : ℚ) / 2⌋)

end

end A026644.P2812556270984666113

namespace A026644

/-- `2*(n-2*floor((n-a(n-1))/2))` -/
def P2812556270984666113.Spec : Prop :=
  ∀ n, P2812556270984666113.a n = A026644 n

end A026644

/-! ## A026644.P5350982302361624904

`2-(a(n-1)%4-2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A026644.P5350982302361624904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (Int.tmod (a (n - 1)) 4 - 2 * a (n - 1))

end

end A026644.P5350982302361624904

namespace A026644

/-- `2-(a(n-1)%4-2*a(n-1))` -/
def P5350982302361624904.Spec : Prop :=
  ∀ n, P5350982302361624904.a n = A026644 n

end A026644

/-! ## A026644.P3234994251022917376

`2*a(n-1)-(2-gcd(4, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A026644.P3234994251022917376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (2 - (Int.gcd 4 (a (n - 1)) : ℤ))

end

end A026644.P3234994251022917376

namespace A026644

/-- `2*a(n-1)-(2-gcd(4, a(n-1)))` -/
def P3234994251022917376.Spec : Prop :=
  ∀ n, P3234994251022917376.a n = A026644 n

end A026644

/-! ## A026644.P13022621218164710429

`a(n-1)+a(n-2)+a(n-2)+2` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A026644.P13022621218164710429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + a (n - 2) + (a (n - 2) + 2)

end

end A026644.P13022621218164710429

namespace A026644

/-- `a(n-1)+a(n-2)+a(n-2)+2` -/
def P13022621218164710429.Spec : Prop :=
  ∀ n, (P13022621218164710429.a n : ℤ) = A026644 n

theorem P13022621218164710429.correct : P13022621218164710429.Spec := by
  intro n
  simp only [A026644, Nat.add_sub_cancel, A026644.P13022621218164710429.a, A026644.P16501472109801589792.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026644

/-! ## A026644.P3947932103028454546

`record[abs(A167030(n))]`
-/

namespace A026644.P3947932103028454546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167030 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026644.P3947932103028454546

namespace A026644

/-- `record[abs(A167030(n))]` -/
def P3947932103028454546.Spec : Prop :=
  ∀ n, P3947932103028454546.a n = A026644 n

end A026644

/-! ## A026644.P8543286110646323497

`record[abs(A167193(n))]`
-/

namespace A026644.P8543286110646323497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167193 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026644.P8543286110646323497

namespace A026644

/-- `record[abs(A167193(n))]` -/
def P8543286110646323497.Spec : Prop :=
  ∀ n, P8543286110646323497.a n = A026644 n

end A026644

/-!
# A026646: a(n) = Sum_{i=0..n} Sum_{j=0..n} A026637(i,j).

The programs for A026646, the canonical program `A026646.P15867879407614898431` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026646 has offset 0).

The definition of A026646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026646.P9325966368875826649

`A084639(n+1)-n`
-/

namespace A026646.P9325966368875826649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 (n + 1) - (n : ℤ)

end

end A026646.P9325966368875826649

namespace A026646

/-- `A084639(n+1)-n` -/
def P9325966368875826649.Spec : Prop :=
  ∀ n, P9325966368875826649.a n = A026646 n

end A026646

/-! ## A026646.P15867879407614898431

`A001045(n+3)-2*floor((n+2)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026646

/-- `A001045(n+3)-2*floor((n+2)/2)` -/
def P15867879407614898431.Spec : Prop :=
  ∀ n, P15867879407614898431.a n = A026646 n

theorem P15867879407614898431.correct : P15867879407614898431.Spec := by
  intro n
  simp only [A026646]

end A026646

/-! ## A026646.P14392920387306475896

`(2^(n+4)-(6*n+9+(-1)^n))/6`
-/

namespace A026646.P14392920387306475896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 4) : ℤ) - ((6 * n + 9 : ℤ) + (-1) ^ n) : ℚ) / 6

end

end A026646.P14392920387306475896

namespace A026646

/-- `(2^(n+4)-(6*n+9+(-1)^n))/6` -/
def P14392920387306475896.Spec : Prop :=
  ∀ n, P14392920387306475896.a n = (A026646 n : ℚ)

end A026646

/-! ## A026646.P15080702596741741636

`∑[ogf((1+2x)/(1-x-2x^2))]-n`
-/

namespace A026646.P15080702596741741636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A026646.P15080702596741741636

namespace A026646

/-- `∑[ogf((1+2x)/(1-x-2x^2))]-n` -/
def P15080702596741741636.Spec : Prop :=
  ∀ n, P15080702596741741636.a n = A026646 n

end A026646

/-! ## A026646.P11130945116675469681

`or(1, ∑[∑[ogf(-2x/(-1+x+2x^2))]])`
-/

namespace A026646.P11130945116675469681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -1, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026646.P11130945116675469681

namespace A026646

/-- `or(1, ∑[∑[ogf(-2x/(-1+x+2x^2))]])` -/
def P11130945116675469681.Spec : Prop :=
  ∀ n, P11130945116675469681.a n = A026646 n

end A026646

/-! ## A026646.P3916963656396538284

`xor(1, ∑[∑[ogf(-2x/(-1+x+2x^2))]])`
-/

namespace A026646.P3916963656396538284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -1, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026646.P3916963656396538284

namespace A026646

/-- `xor(1, ∑[∑[ogf(-2x/(-1+x+2x^2))]])` -/
def P3916963656396538284.Spec : Prop :=
  ∀ n, P3916963656396538284.a n = A026646 n

end A026646

/-! ## A026646.P1338435240999159614

`ogf((1-x^2+2x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A026646.P1338435240999159614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, -3, 1, 3, -2] n

end

end A026646.P1338435240999159614

namespace A026646

/-- `ogf((1-x^2+2x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P1338435240999159614.Spec : Prop :=
  ∀ n, P1338435240999159614.a n = A026646 n

end A026646

/-! ## A026646.P4701375049701985951

`∑[a(n-2)+2^n]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A026646.P4701375049701985951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 2) + 2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026646.P4701375049701985951

namespace A026646

/-- `∑[a(n-2)+2^n]` -/
def P4701375049701985951.Spec : Prop :=
  ∀ n, (P4701375049701985951.a n : ℤ) = A026646 n

end A026646

/-! ## A026646.P6352610983526810417

`or(1, 2*a(n-1)-1+n)` with `a(0)=1`
-/

namespace A026646.P6352610983526810417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (2 * a (n - 1) - 1 + (n : ℤ))

end

end A026646.P6352610983526810417

namespace A026646

/-- `or(1, 2*a(n-1)-1+n)` -/
def P6352610983526810417.Spec : Prop :=
  ∀ n, P6352610983526810417.a n = A026646 n

end A026646

/-! ## A026646.P12191537588228823004

`or(1, 2*a(n-1)-(1-n))` with `a(0)=1`
-/

namespace A026646.P12191537588228823004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (2 * a (n - 1) - (1 - (n : ℤ)))

end

end A026646.P12191537588228823004

namespace A026646

/-- `or(1, 2*a(n-1)-(1-n))` -/
def P12191537588228823004.Spec : Prop :=
  ∀ n, P12191537588228823004.a n = A026646 n

end A026646

/-! ## A026646.P9783528655484120034

`∑[2^n]-(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A026646.P9783528655484120034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - a (n - 2))

end

end A026646.P9783528655484120034

namespace A026646

/-- `∑[2^n]-(1-a(n-2))` -/
def P9783528655484120034.Spec : Prop :=
  ∀ n, P9783528655484120034.a n = A026646 n

end A026646

/-! ## A026646.P15033789732485742433

`2^(n+1)+a(n-2)-2` with `a(0)=1, a(1)=3`
-/

namespace A026646.P15033789732485742433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ (n + 1) : ℤ) + (a (n - 2) - 2)

end

end A026646.P15033789732485742433

namespace A026646

/-- `2^(n+1)+a(n-2)-2` -/
def P15033789732485742433.Spec : Prop :=
  ∀ n, P15033789732485742433.a n = A026646 n

end A026646

/-! ## A026646.P12543481723549743571

`(1-n)%2+2*a(n-1)+n` with `a(0)=1`
-/

namespace A026646.P12543481723549743571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 + (2 * a (n - 1) + (n : ℤ))

end

end A026646.P12543481723549743571

namespace A026646

/-- `(1-n)%2+2*a(n-1)+n` -/
def P12543481723549743571.Spec : Prop :=
  ∀ n, P12543481723549743571.a n = A026646 n

end A026646

/-! ## A026646.P6400042855223588012

`1-gcd(2, n)+2*a(n-1)+n` with `a(0)=1`
-/

namespace A026646.P6400042855223588012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Nat.gcd 2 n : ℤ) + (2 * a (n - 1) + (n : ℤ))

end

end A026646.P6400042855223588012

namespace A026646

/-- `1-gcd(2, n)+2*a(n-1)+n` -/
def P6400042855223588012.Spec : Prop :=
  ∀ n, P6400042855223588012.a n = A026646 n

end A026646

/-! ## A026646.P11710951224591550789

`2*a(n-1)-(1-n%2-n)` with `a(0)=1`
-/

namespace A026646.P11710951224591550789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (1 - ((n % 2 : ℕ) : ℤ) - (n : ℤ))

end

end A026646.P11710951224591550789

namespace A026646

/-- `2*a(n-1)-(1-n%2-n)` -/
def P11710951224591550789.Spec : Prop :=
  ∀ n, P11710951224591550789.a n = A026646 n

end A026646

/-! ## A026646.P17000253439413776453

`2*floor(a(n-1)+(n+1)/2)-1` with `a(0)=1`
-/

namespace A026646.P17000253439413776453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ⌊(a (n - 1) : ℚ) + (n + 1 : ℚ) / 2⌋ - 1

end

end A026646.P17000253439413776453

namespace A026646

/-- `2*floor(a(n-1)+(n+1)/2)-1` -/
def P17000253439413776453.Spec : Prop :=
  ∀ n, P17000253439413776453.a n = A026646 n

end A026646

/-! ## A026646.P11333859705561905579

`1-2*floor(1-a(n-1)-n/2)` with `a(0)=1`
-/

namespace A026646.P11333859705561905579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * ⌊(1 - a (n - 1) : ℚ) - (n : ℚ) / 2⌋

end

end A026646.P11333859705561905579

namespace A026646

/-- `1-2*floor(1-a(n-1)-n/2)` -/
def P11333859705561905579.Spec : Prop :=
  ∀ n, P11333859705561905579.a n = A026646 n

end A026646

/-! ## A026646.P11472541798632191610

`∑[a(n-1)+2*a(n-2)]-n` with `a(0)=1, a(1)=3`
-/

namespace A026646.P11472541798632191610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A026646.P11472541798632191610

namespace A026646

/-- `∑[a(n-1)+2*a(n-2)]-n` -/
def P11472541798632191610.Spec : Prop :=
  ∀ n, P11472541798632191610.a n = A026646 n

end A026646

/-! ## A026646.P12694156283649305231

`a(n-1)+2*(a(n-2)-1+n)` with `a(0)=1, a(1)=3`
-/

namespace A026646.P12694156283649305231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 2 * (a (n - 2) - 1 + (n : ℤ))

end

end A026646.P12694156283649305231

namespace A026646

/-- `a(n-1)+2*(a(n-2)-1+n)` -/
def P12694156283649305231.Spec : Prop :=
  ∀ n, P12694156283649305231.a n = A026646 n

end A026646

/-! ## A026646.P10030448562533057781

`a(n-1)-2*(1-a(n-2)-n)` with `a(0)=1, a(1)=3`
-/

namespace A026646.P10030448562533057781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 2) - (n : ℤ))

end

end A026646.P10030448562533057781

namespace A026646

/-- `a(n-1)-2*(1-a(n-2)-n)` -/
def P10030448562533057781.Spec : Prop :=
  ∀ n, P10030448562533057781.a n = A026646 n

end A026646

/-!
# A026647: a(n) = Sum_{k=0..floor(n/2)} A026637(n-k, k).

The programs for A026647, the canonical program `A026647.P14777996867872370313` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026647 has offset 0).

The definition of A026647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026647.P14777996867872370313

`a(n-2)+a(n-3)+2*a(n-4)+a(n-5)+3` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026647

/-- `a(n-2)+a(n-3)+2*a(n-4)+a(n-5)+3` -/
def P14777996867872370313.Spec : Prop :=
  ∀ n, (P14777996867872370313.a n : ℤ) = A026647 n

theorem P14777996867872370313.correct : P14777996867872370313.Spec := by
  intro n
  simp only [A026647]

end A026647

/-! ## A026647.P6584563947743651664

`ceil(((1-ϕ)^n+ϕ)*a(n-1))` with `a(0)=1`
-/

namespace A026647.P6584563947743651664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((1 - Real.goldenRatio) ^ n + Real.goldenRatio) * (a (n - 1) : ℝ)⌉

end

end A026647.P6584563947743651664

namespace A026647

/-- `ceil(((1-ϕ)^n+ϕ)*a(n-1))` -/
def P6584563947743651664.Spec : Prop :=
  ∀ n, P6584563947743651664.a n = A026647 n

end A026647

/-! ## A026647.P10982599855672316886

`(1-a(n-2)%3)²+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A026647.P10982599855672316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - Int.tmod (a (n - 2)) 3) ^ 2 + (a (n - 1) + a (n - 2))

end

end A026647.P10982599855672316886

namespace A026647

/-- `(1-a(n-2)%3)²+a(n-1)+a(n-2)` -/
def P10982599855672316886.Spec : Prop :=
  ∀ n, P10982599855672316886.a n = A026647 n

end A026647

/-! ## A026647.P2785510097588752410

`round(A000071(n+2)-a(n-1)/3)` with `a(0)=1`
-/

namespace A026647.P2785510097588752410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((A000071 (n + 2) : ℚ) - (a (n - 1) : ℚ) / 3)

end

end A026647.P2785510097588752410

namespace A026647

/-- `round(A000071(n+2)-a(n-1)/3)` -/
def P2785510097588752410.Spec : Prop :=
  ∀ n, P2785510097588752410.a n = A026647 n

end A026647

/-! ## A026647.P1878895342126026751

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=5, a(1)=2, a(2)=3, a(3)=9`
-/

namespace A026647.P1878895342126026751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 3, 9] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A026647.P1878895342126026751

namespace A026647

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P1878895342126026751.Spec : Prop :=
  ∀ n, P1878895342126026751.a n = A026647 n

end A026647

/-!
# A026649: a(n) = T(2n,n), T given by A026648.

The programs for A026649, there is no canonical definition to state claims against.
-/

/-! ## A026649.P12645162641432748990

`A026654(2*n)`
-/

namespace A026649.P12645162641432748990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (2 * n)

end

end A026649.P12645162641432748990

/-! ## A026649.P15954744514623642222

`record[A026654(A005131(n))]`
-/

namespace A026649.P15954744514623642222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P15954744514623642222

/-! ## A026649.P18199011728148682769

`record[A026654(A029578(n))]`
-/

namespace A026649.P18199011728148682769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P18199011728148682769

/-! ## A026649.P10549006276031684723

`record[A026654(A026741(n)+1)]`
-/

namespace A026649.P10549006276031684723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P10549006276031684723

/-! ## A026649.P2097732793130124124

`or(char[1], A026654(A004277(n)))`
-/

namespace A026649.P2097732793130124124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026654 (A004277 n).toNat)

end

end A026649.P2097732793130124124

/-! ## A026649.P11754586633171740934

`record[A026654(n)/A010691(n)]`
-/

namespace A026649.P11754586633171740934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026654 n : ℚ) / (A010691 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P11754586633171740934

/-! ## A026649.P12767153849183194130

`record[A026654(n)/A152271(n)]`
-/

namespace A026649.P12767153849183194130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026654 n : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P12767153849183194130

/-! ## A026649.P15172033905589325498

`record[A026654(A000265(n+1)-1)]`
-/

namespace A026649.P15172033905589325498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P15172033905589325498

/-! ## A026649.P9084079409050507839

`record[gcd(A026654(n+1), A035363(n))]`
-/

namespace A026649.P9084079409050507839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026654 (n + 1)) (A035363 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P9084079409050507839

/-! ## A026649.P11333253576481693622

`A026654(A005843(n))/gcd(n, n+1)`
-/

namespace A026649.P11333253576481693622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026654 (A005843 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A026649.P11333253576481693622

/-! ## A026649.P10630040267485816271

`record[2*A026656(n)-A026655(n)]`
-/

namespace A026649.P10630040267485816271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026656 n - A026655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026649.P10630040267485816271

/-! ## A026649.P5866010678294138585

`2*A026656(2*n)-A026655(2*n)`
-/

namespace A026649.P5866010678294138585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026656 (2 * n) - A026655 (2 * n)

end

end A026649.P5866010678294138585

/-! ## A026649.P8059106420256831289

`2*A026656(2*n)-A026656(2*n+1)`
-/

namespace A026649.P8059106420256831289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026656 (2 * n) - A026656 (2 * n + 1)

end

end A026649.P8059106420256831289

/-!
# A026650: a(n) = T(2n,n-1), T given by A026648.

The programs for A026650, there is no canonical definition to state claims against.
-/

/-! ## A026650.P11102952846997617945

`A026652(n+2)-A026649(n+1)`
-/

namespace A026650.P11102952846997617945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026652 (n + 2) - A026649 (n + 1)

end

end A026650.P11102952846997617945

/-! ## A026650.P3520397230289951014

`A026652(n+2)-A026654(2*(n+1))`
-/

namespace A026650.P3520397230289951014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026652 (n + 2) - A026654 (2 * (n + 1))

end

end A026650.P3520397230289951014

/-! ## A026650.P3334889341764873436

`A026654(2*n+3)-A026649(n+1)`
-/

namespace A026650.P3334889341764873436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (2 * n + 3) - A026649 (n + 1)

end

end A026650.P3334889341764873436

/-! ## A026650.P8166400622973877963

`A026654(2*n+3)-A026654(2*(n+1))`
-/

namespace A026650.P8166400622973877963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (2 * n + 3) - A026654 (2 * (n + 1))

end

end A026650.P8166400622973877963

/-! ## A026650.P16030884283873577208

`A026648(∑[4*(n+1)])`
-/

namespace A026650.P16030884283873577208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026650.P16030884283873577208

/-!
# A026651: a(n) = T(2n,n-2), T given by A026648.

The programs for A026651, there is no canonical definition to state claims against.
-/

/-! ## A026651.P16846396053791530305

`A026653(n+3)-A026650(n+2)`
-/

namespace A026651.P16846396053791530305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026653 (n + 3) - A026650 (n + 2)

end

end A026651.P16846396053791530305

/-! ## A026651.P2311366213759390118

`A026648(A132209(n+2))`
-/

namespace A026651.P2311366213759390118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A132209 (n + 2)).toNat

end

end A026651.P2311366213759390118

/-! ## A026651.P11743787016993615648

`A026648(A004767(∑[n+2]))`
-/

namespace A026651.P11743787016993615648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A004767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026651.P11743787016993615648

/-! ## A026651.P1956712608893208355

`A026648(2*A002378(n+2)-1)`
-/

namespace A026651.P1956712608893208355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (2 * A002378 (n + 2) - 1).toNat

end

end A026651.P1956712608893208355

/-! ## A026651.P7968059294405504755

`A026648(or(3, 2*A002378(n+2)))`
-/

namespace A026651.P7968059294405504755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (Int.lor 3 (2 * A002378 (n + 2))).toNat

end

end A026651.P7968059294405504755

/-! ## A026651.P2666511697235100459

`A026648(A005408((n+2)²)+2*(n+1))`
-/

namespace A026651.P2666511697235100459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A005408 ((n + 2) ^ 2) + (2 * (n + 1) : ℤ)).toNat

end

end A026651.P2666511697235100459

/-!
# A026652: a(n) = T(2n-1,n-1), T given by A026648.

The programs for A026652, there is no canonical definition to state claims against.
-/

/-! ## A026652.P6400542507886841377

`A026654(Δ[n²])`
-/

namespace A026652.P6400542507886841377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026652.P6400542507886841377

/-! ## A026652.P17633785344722542591

`record[A026654(A004442(n))]`
-/

namespace A026652.P17633785344722542591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026652.P17633785344722542591

/-! ## A026652.P7732571074438727886

`record[A026654(A026741(n))]`
-/

namespace A026652.P7732571074438727886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026652.P7732571074438727886

/-! ## A026652.P1258180244115464808

`record[A026654(Δ[A008794(n)])]`
-/

namespace A026652.P1258180244115464808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026652.P1258180244115464808

/-! ## A026652.P11479550020227310415

`record[A026654(A000265(n+1))]`
-/

namespace A026652.P11479550020227310415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026652.P11479550020227310415

/-! ## A026652.P1453276366450487635

`record[A026654(gcd(n, A035363(n)))]`
-/

namespace A026652.P1453276366450487635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (Int.gcd (n : ℤ) (A035363 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026652.P1453276366450487635

/-! ## A026652.P2742672766134739898

`lcm(char[1]+1, A026654(A005408(n)))`
-/

namespace A026652.P2742672766134739898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A026654 (A005408 n).toNat)

end

end A026652.P2742672766134739898

/-! ## A026652.P3574232237364668399

`record[A026654(n+1)/A010691(n)]`
-/

namespace A026652.P3574232237364668399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026654 (n + 1) : ℚ) / (A010691 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026652.P3574232237364668399

/-! ## A026652.P1978600880924208313

`or(A000007(n), A026654(A016777(n)-n))`
-/

namespace A026652.P1978600880924208313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026654 (A016777 n - (n : ℤ)).toNat)

end

end A026652.P1978600880924208313

/-! ## A026652.P10063041839555874365

`A026654(A016777(n)-n)+A000007(n+1)`
-/

namespace A026652.P10063041839555874365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026654 (A016777 n - (n : ℤ)).toNat + A000007 (n + 1)

end

end A026652.P10063041839555874365

/-! ## A026652.P16456755995373819805

`gcd(n*A026654(2*n+1), A026654(2*n+1))`
-/

namespace A026652.P16456755995373819805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A026654 (2 * n + 1)) (A026654 (2 * n + 1))

end

end A026652.P16456755995373819805

/-!
# A026653: a(n) = T(2n-1,n-2), T given by A026648.

The programs for A026653, there is no canonical definition to state claims against.
-/

/-! ## A026653.P5905950026241837889

`A026648((n+1)²+(n+3)²)`
-/

namespace A026653.P5905950026241837889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A026653.P5905950026241837889

/-! ## A026653.P1568959045072035050

`record[A026648(A266448(n))]`
-/

namespace A026653.P1568959045072035050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A266448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026653.P1568959045072035050

/-! ## A026653.P2946742354715859000

`record[A026648(∑[A266447(n)])]`
-/

namespace A026653.P2946742354715859000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026653.P2946742354715859000

/-! ## A026653.P17245782930944454655

`record[A010052(n)*A026648(2*(n+1))]`
-/

namespace A026653.P17245782930944454655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A026648 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026653.P17245782930944454655

/-!
# A026654: a(n) = T(n,[ n/2 ]), T given by A026648.

The programs for A026654, there is no canonical definition to state claims against.
-/

/-! ## A026654.P15812196205821615281

`A026648(∑[or(1, n)])`
-/

namespace A026654.P15812196205821615281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026654.P15812196205821615281

/-! ## A026654.P17530454359285214618

`A026648(A000982(n+1))`
-/

namespace A026654.P17530454359285214618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A000982 (n + 1)).toNat

end

end A026654.P17530454359285214618

/-! ## A026654.P7602255522050242111

`A026648(A030978(n+1))`
-/

namespace A026654.P7602255522050242111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A030978 (n + 1)).toNat

end

end A026654.P7602255522050242111

/-! ## A026654.P3050150584877664974

`A026648(A074133(n+1))`
-/

namespace A026654.P3050150584877664974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A074133 (n + 1)).toNat

end

end A026654.P3050150584877664974

/-! ## A026654.P8178883569674722119

`A026648(A080827(n+1))`
-/

namespace A026654.P8178883569674722119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A080827 (n + 1)).toNat

end

end A026654.P8178883569674722119

/-! ## A026654.P14432790398275629848

`A026648(A104563(n+1))`
-/

namespace A026654.P14432790398275629848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A104563 (n + 1)).toNat

end

end A026654.P14432790398275629848

/-! ## A026654.P15483637802765005018

`A026648(A099392(n+2))`
-/

namespace A026654.P15483637802765005018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A099392 (n + 2)).toNat

end

end A026654.P15483637802765005018

/-! ## A026654.P4223721684987529925

`A026648(A001971(2*(n+1)))`
-/

namespace A026654.P4223721684987529925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A001971 (2 * (n + 1))).toNat

end

end A026654.P4223721684987529925

/-! ## A026654.P5106493569456253891

`A026648(A008619(n²)+n)`
-/

namespace A026654.P5106493569456253891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A008619 (n ^ 2) + (n : ℤ)).toNat

end

end A026654.P5106493569456253891

/-! ## A026654.P9025672553183565797

`A026648(A008619(n*(n+2)))`
-/

namespace A026654.P9025672553183565797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026648 (A008619 (n * (n + 2))).toNat

end

end A026654.P9025672553183565797

/-!
# A026655: T(n,0) + T(n,1) + ... + T(n,n), T given by A026648.

The programs for A026655, the canonical program `A026655.P16711446870528174266` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026655 has offset 0).

The definition of A026655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026655.P14761593153868564790

`ogf((1+2x+x^2+2x^3)/(1-4x^2-2x^4))`
-/

namespace A026655.P14761593153868564790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 2] [1, 0, -4, 0, -2] n

end

end A026655.P14761593153868564790

namespace A026655

/-- `ogf((1+2x+x^2+2x^3)/(1-4x^2-2x^4))` -/
def P14761593153868564790.Spec : Prop :=
  ∀ n, P14761593153868564790.a n = A026655 n

end A026655

/-! ## A026655.P16711446870528174266

`A000034(n)*A123347(A004526(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A026655

/-- `A000034(n)*A123347(A004526(n))` -/
def P16711446870528174266.Spec : Prop :=
  ∀ n, P16711446870528174266.a n = A026655 n

theorem P16711446870528174266.correct : P16711446870528174266.Spec := by
  intro n
  simp only [A026655]

end A026655

/-! ## A026655.P5028928772092481219

`A000034(n)*A026656(A109613(n))`
-/

namespace A026655.P5028928772092481219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A026656 (A109613 n).toNat

end

end A026655.P5028928772092481219

namespace A026655

/-- `A000034(n)*A026656(A109613(n))` -/
def P5028928772092481219.Spec : Prop :=
  ∀ n, P5028928772092481219.a n = A026655 n

end A026655

/-! ## A026655.P6590709220405931519

`A000034(n)*A123347(log2(A016116(n)))`
-/

namespace A026655.P6590709220405931519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A123347 (SequenceMachineLib.roundAway (Real.logb 2 (A016116 n : ℝ))).toNat

end

end A026655.P6590709220405931519

namespace A026655

/-- `A000034(n)*A123347(log2(A016116(n)))` -/
def P6590709220405931519.Spec : Prop :=
  ∀ n, P6590709220405931519.a n = A026655 n

end A026655

/-! ## A026655.P15767459506065389189

`Δ[A032766(n)]*A123347(A004526(n))`
-/

namespace A026655.P15767459506065389189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A123347 (A004526 n).toNat

end

end A026655.P15767459506065389189

namespace A026655

/-- `Δ[A032766(n)]*A123347(A004526(n))` -/
def P15767459506065389189.Spec : Prop :=
  ∀ n, P15767459506065389189.a n = A026655 n

end A026655

/-! ## A026655.P10339352718433695461

`record[A000034(n)*A123347(A008615(n))]`
-/

namespace A026655.P10339352718433695461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A123347 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026655.P10339352718433695461

namespace A026655

/-- `record[A000034(n)*A123347(A008615(n))]` -/
def P10339352718433695461.Spec : Prop :=
  ∀ n, P10339352718433695461.a n = A026655 n

end A026655

/-! ## A026655.P3523987476463699292

`∪[A084059(n), A123347(n)]`
-/

namespace A026655.P3523987476463699292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123347 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026655.P3523987476463699292

namespace A026655

/-- `∪[A084059(n), A123347(n)]` -/
def P3523987476463699292.Spec : Prop :=
  ∀ n, (P3523987476463699292.a n : ℤ) = A026655 n

end A026655

/-! ## A026655.P9061348734743074708

`2/(n+2)*A026975(n)`
-/

namespace A026655.P9061348734743074708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026975 n : ℚ)

end

end A026655.P9061348734743074708

namespace A026655

/-- `2/(n+2)*A026975(n)` -/
def P9061348734743074708.Spec : Prop :=
  ∀ n, P9061348734743074708.a n = (A026655 n : ℚ)

end A026655

/-!
# A026657: a(n) = Sum_{i=0..n, j=0..n} A026648(i,j).

The programs for A026657, the canonical program `A026657.P4438392002932692461` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026657 has offset 0).

The definition of A026657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026657.P4438392002932692461

`∑[A026655(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026657

/-- `∑[A026655(n)]` -/
def P4438392002932692461.Spec : Prop :=
  ∀ n, P4438392002932692461.a n = A026657 n

theorem P4438392002932692461.correct : P4438392002932692461.Spec := by
  intro n
  simp only [A026657]

end A026657

/-! ## A026657.P7559997427919716959

`∑[A000034(n)*A123347(A004526(n))]`
-/

namespace A026657.P7559997427919716959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A123347 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026657.P7559997427919716959

namespace A026657

/-- `∑[A000034(n)*A123347(A004526(n))]` -/
def P7559997427919716959.Spec : Prop :=
  ∀ n, P7559997427919716959.a n = A026657 n

end A026657

/-! ## A026657.P13535018956755684363

`∑[record[A000034(n)*A123347(A008615(n))]]`
-/

namespace A026657.P13535018956755684363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A123347 (A008615 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026657.P13535018956755684363

namespace A026657

/-- `∑[record[A000034(n)*A123347(A008615(n))]]` -/
def P13535018956755684363.Spec : Prop :=
  ∀ n, P13535018956755684363.a n = A026657 n

end A026657

/-! ## A026657.P9645282274346280670

`a(n-1)+A010060(A000069(n+1))*A026655(n)` with `a(0)=1`
-/

namespace A026657.P9645282274346280670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A010060 (A000069 (n + 1)).toNat * A026655 n

end

end A026657.P9645282274346280670

namespace A026657

/-- `a(n-1)+A010060(A000069(n+1))*A026655(n)` -/
def P9645282274346280670.Spec : Prop :=
  ∀ n, P9645282274346280670.a n = A026657 n

end A026657

/-! ## A026657.P1420771572652982788

`∑[2/(n+2)*A026975(n)]`
-/

namespace A026657.P1420771572652982788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026657.P1420771572652982788

namespace A026657

/-- `∑[2/(n+2)*A026975(n)]` -/
def P1420771572652982788.Spec : Prop :=
  ∀ n, P1420771572652982788.a n = (A026657 n : ℚ)

end A026657

/-!
# A026658: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], T given by A026648.

The programs for A026658, there is no canonical definition to state claims against.
-/

/-! ## A026658.P17434165390362820873

`A347649(∑[∑[∑[n]%(n+1)]])`
-/

namespace A026658.P17434165390362820873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026658.P17434165390362820873

/-! ## A026658.P7817206672765558353

`A347649(A006918(n))`
-/

namespace A026658.P7817206672765558353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (A006918 n).toNat

end

end A026658.P7817206672765558353

/-! ## A026658.P12810151412470400013

`A347649(∑[A000217(ceil(n/2))])`
-/

namespace A026658.P12810151412470400013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026658.P12810151412470400013

/-! ## A026658.P11454356383882217333

`A347649(∑[∑[A142150(n+1)]])`
-/

namespace A026658.P11454356383882217333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026658.P11454356383882217333

/-! ## A026658.P13120209914098959952

`A069905(A309862(n))+A026636(n)`
-/

namespace A026658.P13120209914098959952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A309862 n).toNat + A026636 n

end

end A026658.P13120209914098959952

/-!
# A026660: T(2n,n), T given by A026659.

The programs for A026660, there is no canonical definition to state claims against.
-/

/-! ## A026660.P1200579796138111505

`A026665(2*n)`
-/

namespace A026660.P1200579796138111505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (2 * n)

end

end A026660.P1200579796138111505

/-! ## A026660.P17429870926243134681

`record[A026665(A028234(n+1)-1)]`
-/

namespace A026660.P17429870926243134681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (A028234 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026660.P17429870926243134681

/-! ## A026660.P2967117217679056029

`record[A026665(A060819(n+1)-1)]`
-/

namespace A026660.P2967117217679056029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (A060819 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026660.P2967117217679056029

/-! ## A026660.P14490354835792425194

`A026663(A028310(n))*A036453(n+1)`
-/

namespace A026660.P14490354835792425194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026663 (A028310 n).toNat * A036453 (n + 1)

end

end A026660.P14490354835792425194

/-! ## A026660.P10480971354948923104

`A026663(A028310(n))*A040001(2*n)`
-/

namespace A026660.P10480971354948923104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026663 (A028310 n).toNat * A040001 (2 * n)

end

end A026660.P10480971354948923104

/-! ## A026660.P18249187454494652245

`A020639(A008458(n))*A026663(A028310(n))`
-/

namespace A026660.P18249187454494652245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A026663 (A028310 n).toNat

end

end A026660.P18249187454494652245

/-! ## A026660.P17567513823038277614

`A020639(A001223(n+1))*A026663(A028310(n))`
-/

namespace A026660.P17567513823038277614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A026663 (A028310 n).toNat

end

end A026660.P17567513823038277614

/-! ## A026660.P2430662473437207757

`A020639(A068997(n+1))*A026663(A028310(n))`
-/

namespace A026660.P2430662473437207757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A068997 (n + 1)).toNat * A026663 (A028310 n).toNat

end

end A026660.P2430662473437207757

/-! ## A026660.P8746552956007247361

`A014675(A151909(n))*A026663(A028310(n))`
-/

namespace A026660.P8746552956007247361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A151909 n).toNat * A026663 (A028310 n).toNat

end

end A026660.P8746552956007247361

/-!
# A026661: T(2n,n-1), T given by A026659.

The programs for A026661, there is no canonical definition to state claims against.
-/

/-! ## A026661.P7821889667342709595

`A026659(∑[4*(n+1)])`
-/

namespace A026661.P7821889667342709595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026661.P7821889667342709595

/-! ## A026661.P17491229869742911667

`record[A026659(A120097(n+1))]`
-/

namespace A026661.P17491229869742911667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A120097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026661.P17491229869742911667

/-! ## A026661.P5998941651084524966

`record[A026659(4*A038722(n+1))]`
-/

namespace A026661.P5998941651084524966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (4 * A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026661.P5998941651084524966

/-! ## A026661.P10737621973040413007

`record[gcd(A026659(n+1), A026659(n+3))]`
-/

namespace A026661.P10737621973040413007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026659 (n + 1)) (A026659 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026661.P10737621973040413007

/-! ## A026661.P14884152906397714200

`A026659(A106232(n+2))+A000007(n+4)`
-/

namespace A026661.P14884152906397714200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A106232 (n + 2)).toNat + A000007 (n + 4)

end

end A026661.P14884152906397714200

/-! ## A026661.P13427916105904322482

`A026659(A051890(n+2))%A100413(n+1)`
-/

namespace A026661.P13427916105904322482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026659 (A051890 (n + 2)).toNat) (A100413 (n + 1))

end

end A026661.P13427916105904322482

/-!
# A026662: T(2n,n-2), T given by A026659.

The programs for A026662, there is no canonical definition to state claims against.
-/

/-! ## A026662.P15297544796207853775

`A026659(A132209(n+2))`
-/

namespace A026662.P15297544796207853775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A132209 (n + 2)).toNat

end

end A026662.P15297544796207853775

/-! ## A026662.P16135822696031941119

`A026659(A142463(n+2))`
-/

namespace A026662.P16135822696031941119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A142463 (n + 2)).toNat

end

end A026662.P16135822696031941119

/-! ## A026662.P15296230616269069690

`record[A026659(or(3, A120097(n+1)))]`
-/

namespace A026662.P15296230616269069690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (Int.lor 3 (A120097 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026662.P15296230616269069690

/-! ## A026662.P14849480074574384814

`A026659(A000124(2*(n+2))+n)`
-/

namespace A026662.P14849480074574384814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A000124 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A026662.P14849480074574384814

/-! ## A026662.P5248068136047584115

`A026659(A005408((n+2)²)+2*(n+1))`
-/

namespace A026662.P5248068136047584115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A005408 ((n + 2) ^ 2) + (2 * (n + 1) : ℤ)).toNat

end

end A026662.P5248068136047584115

/-!
# A026663: T(2n-1,n-1), T given by A026659.

The programs for A026663, there is no canonical definition to state claims against.
-/

/-! ## A026663.P1925375779906967509

`A026665(Δ[n²])`
-/

namespace A026663.P1925375779906967509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026663.P1925375779906967509

/-! ## A026663.P6965735258246000171

`A026660(n+1)/2`
-/

namespace A026663.P6965735258246000171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026660 (n + 1) : ℚ) / 2

end

end A026663.P6965735258246000171

/-! ## A026663.P11627485306248957231

`record[A026665(n*and(1, n))]`
-/

namespace A026663.P11627485306248957231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (n * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P11627485306248957231

/-! ## A026663.P13170717934839991475

`record[A026665(n)^and(1, n)]`
-/

namespace A026663.P13170717934839991475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P13170717934839991475

/-! ## A026663.P6518547146711188319

`A026665(2*(n+1))/2`
-/

namespace A026663.P6518547146711188319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026665 (2 * (n + 1)) : ℚ) / 2

end

end A026663.P6518547146711188319

/-! ## A026663.P213114937646865756

`record[A026665(A004442(n))]`
-/

namespace A026663.P213114937646865756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P213114937646865756

/-! ## A026663.P9191597722387460885

`record[A026665(A028234(n+1))]`
-/

namespace A026663.P9191597722387460885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P9191597722387460885

/-! ## A026663.P12860811724505958715

`record[A026665(A060819(n+1))]`
-/

namespace A026663.P12860811724505958715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (A060819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P12860811724505958715

/-! ## A026663.P5318733770828098114

`record[A026665(A033999(n)+n)]`
-/

namespace A026663.P5318733770828098114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P5318733770828098114

/-! ## A026663.P5844008289094656281

`record[A026665(and(n, A033999(n)))]`
-/

namespace A026663.P5844008289094656281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026663.P5844008289094656281

/-! ## A026663.P587078222722825868

`A026660(n+1)-A026665(2*n+1)`
-/

namespace A026663.P587078222722825868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026660 (n + 1) - A026665 (2 * n + 1)

end

end A026663.P587078222722825868

/-! ## A026663.P15806985379990702934

`A026665(2*(n+1))-A026665(2*n+1)`
-/

namespace A026663.P15806985379990702934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026665 (2 * (n + 1)) - A026665 (2 * n + 1)

end

end A026663.P15806985379990702934

/-!
# A026664: T(2n-1,n-2), T given by A026659.

The programs for A026664, there is no canonical definition to state claims against.
-/

/-! ## A026664.P11305707869865410132

`A026661(n+2)-A026663(n+2)`
-/

namespace A026664.P11305707869865410132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026661 (n + 2) - A026663 (n + 2)

end

end A026664.P11305707869865410132

/-! ## A026664.P2341572257313024497

`A026661(n+2)-A026665(2*n+3)`
-/

namespace A026664.P2341572257313024497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026661 (n + 2) - A026665 (2 * n + 3)

end

end A026664.P2341572257313024497

/-! ## A026664.P11793174118397104410

`A026659((n+1)²+(n+3)²)`
-/

namespace A026664.P11793174118397104410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A026664.P11793174118397104410

/-!
# A026665: T(n,[ n/2 ]), T given by A026659.

The programs for A026665, there is no canonical definition to state claims against.
-/

/-! ## A026665.P17297939494606901831

`A026659(∑[a(n-2)+2])` with `a(0)=1, a(1)=1`
-/

namespace A026665.P17297939494606901831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026665.P17297939494606901831

/-! ## A026665.P12709579645499110479

`A026659(A000982(n+1))`
-/

namespace A026665.P12709579645499110479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A000982 (n + 1)).toNat

end

end A026665.P12709579645499110479

/-! ## A026665.P8989190296452179408

`A026659(A030978(n+1))`
-/

namespace A026665.P8989190296452179408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A030978 (n + 1)).toNat

end

end A026665.P8989190296452179408

/-! ## A026665.P16995963101160816450

`A026659(A074133(n+1))`
-/

namespace A026665.P16995963101160816450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A074133 (n + 1)).toNat

end

end A026665.P16995963101160816450

/-! ## A026665.P16422293317793139236

`A026659(A080827(n+1))`
-/

namespace A026665.P16422293317793139236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A080827 (n + 1)).toNat

end

end A026665.P16422293317793139236

/-! ## A026665.P5897263533648822370

`A026659(A104563(n+1))`
-/

namespace A026665.P5897263533648822370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A104563 (n + 1)).toNat

end

end A026665.P5897263533648822370

/-! ## A026665.P35505510895423148

`A026659(A099392(n+2))`
-/

namespace A026665.P35505510895423148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (A099392 (n + 2)).toNat

end

end A026665.P35505510895423148

/-!
# A026666: T(n,0) + T(n,1) + ... + T(n,n), T given by A026659.

The programs for A026666, there is no canonical definition to state claims against.
-/

/-! ## A026666.P6820938390267953467

`2/(n+2)*A026980(n)`
-/

namespace A026666.P6820938390267953467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026980 n : ℚ)

end

end A026666.P6820938390267953467

/-! ## A026666.P13435566789771262643

`∏{e}[A350113(n+1), A000040(#)]`
-/

namespace A026666.P13435566789771262643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A026666.P13435566789771262643

/-! ## A026666.P12259745522372212824

`∏{e}[A350113(n+1), A005728(#)]`
-/

namespace A026666.P12259745522372212824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005728 (Nat.factorization (f1 n).natAbs p)

end

end A026666.P12259745522372212824

/-! ## A026666.P14906698191543760483

`∏{e}[A350113(n+1), A028864(#)]`
-/

namespace A026666.P14906698191543760483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028864 (Nat.factorization (f1 n).natAbs p)

end

end A026666.P14906698191543760483

/-! ## A026666.P16399991947987585837

`∏{e}[A350113(n+1), A038617(#)]`
-/

namespace A026666.P16399991947987585837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A038617 (Nat.factorization (f1 n).natAbs p)

end

end A026666.P16399991947987585837

/-!
# A026668: Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026659.

The programs for A026668, there is no canonical definition to state claims against.
-/

/-! ## A026668.P7241081139074564498

`∑[A026666(n)]`
-/

namespace A026668.P7241081139074564498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026668.P7241081139074564498

/-! ## A026668.P5430796548159167005

`a(n-1)+A026666(n)+A000038(n)` with `a(0)=1`
-/

namespace A026668.P5430796548159167005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026666 n + A000038 n)

end

end A026668.P5430796548159167005

/-! ## A026668.P8980908476789755401

`a(n-1)+A000108(C(2, n+2))*A026666(n)` with `a(0)=1`
-/

namespace A026668.P8980908476789755401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000108 (Nat.choose 2 (n + 2)) * A026666 n

end

end A026668.P8980908476789755401

/-! ## A026668.P359191213941574798

`a(n-1)+A026666(n)*A157928(A067715(n))` with `a(0)=1`
-/

namespace A026668.P359191213941574798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A026666 n * A157928 (A067715 n).toNat

end

end A026668.P359191213941574798

/-! ## A026668.P11767365504422605649

`∑[2/(n+2)*A026980(n)]`
-/

namespace A026668.P11767365504422605649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026980 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026668.P11767365504422605649

/-!
# A026670: Triangular array T read by rows: T(n,0) = T(n,n) = 1 for n >= 0; for n >= 1, T(n,1) = T(n,n-1) = n+1; for n >= 2, T(n,k) = T(n-1,k-1) + T(n-2,k-1) + T(n-1,k) if n is even and k = n/2, else T(n,k) = T(n-1,k-1) + T(n-1,k).

The programs for A026670, there is no canonical definition to state claims against.
-/

/-! ## A026670.P14774126556742995285

`A074279((A004197(n)-A144463(n))²)`
-/

namespace A026670.P14774126556742995285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 ((A004197 n - A144463 n) ^ 2).toNat

end

end A026670.P14774126556742995285

/-! ## A026670.P2620431340134081182

`A095791(A334218(n)²)`
-/

namespace A026670.P2620431340134081182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A334218 n ^ 2).toNat

end

end A026670.P2620431340134081182

/-! ## A026670.P14022262566495414823

`A182786(A144395(n+1))`
-/

namespace A026670.P14022262566495414823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182786 (A144395 (n + 1)).toNat

end

end A026670.P14022262566495414823

/-! ## A026670.P3105959514547700292

`A319951(2*A144463(n))`
-/

namespace A026670.P3105959514547700292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (2 * A144463 n).toNat

end

end A026670.P3105959514547700292

/-! ## A026670.P4003559874516851656

`A319951(A144463(n)+A144463(n))`
-/

namespace A026670.P4003559874516851656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A144463 n + A144463 n).toNat

end

end A026670.P4003559874516851656

/-!
# A026671: Number of lattice paths from (0,0) to (n,n) with steps (0,1), (1,0) and, when on the diagonal, (1,1).

The programs for A026671, the canonical program `A026671.P11258807246634829896` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026671 has offset 0).

The definition of A026671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A176280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026671.P11258807246634829896

`A001076(n)+A176280(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026671

/-- `A001076(n)+A176280(n)` -/
def P11258807246634829896.Spec : Prop :=
  ∀ n, P11258807246634829896.a n = A026671 n

theorem P11258807246634829896.correct : P11258807246634829896.Spec := by
  intro n
  simp only [A026671]

end A026671

/-! ## A026671.P13768329212341669296

`A026676(2*n)`
-/

namespace A026671.P13768329212341669296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n)

end

end A026671.P13768329212341669296

namespace A026671

/-- `A026676(2*n)` -/
def P13768329212341669296.Spec : Prop :=
  ∀ n, P13768329212341669296.a n = A026671 n

end A026671

/-! ## A026671.P11066882591023625262

`A026742(Δ[n²])`
-/

namespace A026671.P11066882591023625262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026671.P11066882591023625262

namespace A026671

/-- `A026742(Δ[n²])` -/
def P11066882591023625262.Spec : Prop :=
  ∀ n, P11066882591023625262.a n = A026671 n

end A026671

/-! ## A026671.P10510425366044587669

`A027214(Δ[n²])`
-/

namespace A026671.P10510425366044587669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027214 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026671.P10510425366044587669

namespace A026671

/-- `A027214(Δ[n²])` -/
def P10510425366044587669.Spec : Prop :=
  ∀ n, P10510425366044587669.a n = A026671 n

end A026671

/-! ## A026671.P4478308882676440124

`A165407(3*n+1)`
-/

namespace A026671.P4478308882676440124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (3 * n + 1)

end

end A026671.P4478308882676440124

namespace A026671

/-- `A165407(3*n+1)` -/
def P4478308882676440124.Spec : Prop :=
  ∀ n, P4478308882676440124.a n = A026671 n

end A026671

/-! ## A026671.P9652646001494205639

`2*A164651(n+1)-1`
-/

namespace A026671.P9652646001494205639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164651 (n + 1) - 1

end

end A026671.P9652646001494205639

namespace A026671

/-- `2*A164651(n+1)-1` -/
def P9652646001494205639.Spec : Prop :=
  ∀ n, P9652646001494205639.a n = A026671 n

end A026671

/-! ## A026671.P16648241600378671368

`record[A026742(A004442(n))]`
-/

namespace A026671.P16648241600378671368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P16648241600378671368

namespace A026671

/-- `record[A026742(A004442(n))]` -/
def P16648241600378671368.Spec : Prop :=
  ∀ n, P16648241600378671368.a n = A026671 n

end A026671

/-! ## A026671.P17520461958925315690

`record[A026676(A014681(n))]`
-/

namespace A026671.P17520461958925315690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P17520461958925315690

namespace A026671

/-- `record[A026676(A014681(n))]` -/
def P17520461958925315690.Spec : Prop :=
  ∀ n, P17520461958925315690.a n = A026671 n

end A026671

/-! ## A026671.P2853083177618453913

`record[A026742(A026741(n))]`
-/

namespace A026671.P2853083177618453913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P2853083177618453913

namespace A026671

/-- `record[A026742(A026741(n))]` -/
def P2853083177618453913.Spec : Prop :=
  ∀ n, P2853083177618453913.a n = A026671 n

end A026671

/-! ## A026671.P8954203679281903151

`record[A026742(A093411(n))]`
-/

namespace A026671.P8954203679281903151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A093411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P8954203679281903151

namespace A026671

/-- `record[A026742(A093411(n))]` -/
def P8954203679281903151.Spec : Prop :=
  ∀ n, P8954203679281903151.a n = A026671 n

end A026671

/-! ## A026671.P14893424534030633776

`A054441(n)+A000984(n)`
-/

namespace A026671.P14893424534030633776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + A000984 n

end

end A026671.P14893424534030633776

namespace A026671

/-- `A054441(n)+A000984(n)` -/
def P14893424534030633776.Spec : Prop :=
  ∀ n, P14893424534030633776.a n = A026671 n

end A026671

/-! ## A026671.P10226623755392288741

`A081696(n)+A014445(n)`
-/

namespace A026671.P10226623755392288741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + A014445 n

end

end A026671.P10226623755392288741

namespace A026671

/-- `A081696(n)+A014445(n)` -/
def P10226623755392288741.Spec : Prop :=
  ∀ n, P10226623755392288741.a n = A026671 n

end A026671

/-! ## A026671.P1413916706163763160

`record[A026742(A014681(n)+1)]`
-/

namespace A026671.P1413916706163763160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P1413916706163763160

namespace A026671

/-- `record[A026742(A014681(n)+1)]` -/
def P1413916706163763160.Spec : Prop :=
  ∀ n, P1413916706163763160.a n = A026671 n

end A026671

/-! ## A026671.P8678625796382737564

`record[A026676(A026741(n)+1)]`
-/

namespace A026671.P8678625796382737564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P8678625796382737564

namespace A026671

/-- `record[A026676(A026741(n)+1)]` -/
def P8678625796382737564.Spec : Prop :=
  ∀ n, P8678625796382737564.a n = A026671 n

end A026671

/-! ## A026671.P15549671127809418023

`record[A026676(A093411(n)+1)]`
-/

namespace A026671.P15549671127809418023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A093411 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P15549671127809418023

namespace A026671

/-- `record[A026676(A093411(n)+1)]` -/
def P15549671127809418023.Spec : Prop :=
  ∀ n, P15549671127809418023.a n = A026671 n

end A026671

/-! ## A026671.P3370131404377280521

`record[A026742(A276093(n)+1)]`
-/

namespace A026671.P3370131404377280521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A276093 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026671.P3370131404377280521

namespace A026671

/-- `record[A026742(A276093(n)+1)]` -/
def P3370131404377280521.Spec : Prop :=
  ∀ n, P3370131404377280521.a n = A026671 n

end A026671

/-! ## A026671.P3439801155678186140

`A026850(n+1)-A099376(n)`
-/

namespace A026671.P3439801155678186140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026850 (n + 1) - A099376 n

end

end A026671.P3439801155678186140

namespace A026671

/-- `A026850(n+1)-A099376(n)` -/
def P3439801155678186140.Spec : Prop :=
  ∀ n, P3439801155678186140.a n = A026671 n

end A026671

/-! ## A026671.P5896266308174130403

`A081696(n)+2*A001076(n)`
-/

namespace A026671.P5896266308174130403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + 2 * A001076 n

end

end A026671.P5896266308174130403

namespace A026671

/-- `A081696(n)+2*A001076(n)` -/
def P5896266308174130403.Spec : Prop :=
  ∀ n, P5896266308174130403.a n = A026671 n

end A026671

/-! ## A026671.P3187648551050525733

`A026742(2*n+1)*A267319(2*n+1)`
-/

namespace A026671.P3187648551050525733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * n + 1) * A267319 (2 * n + 1)

end

end A026671.P3187648551050525733

namespace A026671

/-- `A026742(2*n+1)*A267319(2*n+1)` -/
def P3187648551050525733.Spec : Prop :=
  ∀ n, P3187648551050525733.a n = A026671 n

end A026671

/-! ## A026671.P14056782629666164778

`A054441(n)+A176085(n)+A081696(n)`
-/

namespace A026671.P14056782629666164778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054441 n + (A176085 n + A081696 n)

end

end A026671.P14056782629666164778

namespace A026671

/-- `A054441(n)+A176085(n)+A081696(n)` -/
def P14056782629666164778.Spec : Prop :=
  ∀ n, P14056782629666164778.a n = A026671 n

end A026671

/-!
# A026672: a(n) = T(2n,n-1), T given by A026670. Also T(2n,n-1)=T(2n+1,n+2), T given by A026725; and T(2n,n-1), T given by A026736.

The programs for A026672, the canonical program `A026672.P4241792068261067658` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026672 has offset 2).

The definition of A026672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026672.P4241792068261067658

`Δ[A026671(n)]-A026854(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026672

/-- `Δ[A026671(n)]-A026854(n)` -/
def P4241792068261067658.Spec : Prop :=
  ∀ n, P4241792068261067658.a n = A026672 (n + 2)

theorem P4241792068261067658.correct : P4241792068261067658.Spec := by
  intro n
  simp only [A026672, Nat.add_sub_cancel]

end A026672

/-! ## A026672.P9234386731027000733

`A026726(n+1)-A000108(n+1)`
-/

namespace A026672.P9234386731027000733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A000108 (n + 1)

end

end A026672.P9234386731027000733

namespace A026672

/-- `A026726(n+1)-A000108(n+1)` -/
def P9234386731027000733.Spec : Prop :=
  ∀ n, P9234386731027000733.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P660262881124641138

`A026671(n+1)-A026737(n+1)`
-/

namespace A026672.P660262881124641138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 (n + 1) - A026737 (n + 1)

end

end A026672.P660262881124641138

namespace A026672

/-- `A026671(n+1)-A026737(n+1)` -/
def P660262881124641138.Spec : Prop :=
  ∀ n, P660262881124641138.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P17286965752802958811

`A026854(n+1)-A000108(n+2)`
-/

namespace A026672.P17286965752802958811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026854 (n + 1) - A000108 (n + 2)

end

end A026672.P17286965752802958811

namespace A026672

/-- `A026854(n+1)-A000108(n+2)` -/
def P17286965752802958811.Spec : Prop :=
  ∀ n, P17286965752802958811.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P12417466433196117412

`A026671(n+1)-A111279(n+2)`
-/

namespace A026672.P12417466433196117412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 (n + 1) - A111279 (n + 2)

end

end A026672.P12417466433196117412

namespace A026672

/-- `A026671(n+1)-A111279(n+2)` -/
def P12417466433196117412.Spec : Prop :=
  ∀ n, P12417466433196117412.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P14718602278232902558

`A026726(n+1)-(A120304(n+1)+2)`
-/

namespace A026672.P14718602278232902558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - (A120304 (n + 1) + 2)

end

end A026672.P14718602278232902558

namespace A026672

/-- `A026726(n+1)-(A120304(n+1)+2)` -/
def P14718602278232902558.Spec : Prop :=
  ∀ n, P14718602278232902558.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P9014349982855985018

`A026676(2*(n+1))-A111279(n+2)`
-/

namespace A026672.P9014349982855985018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * (n + 1)) - A111279 (n + 2)

end

end A026672.P9014349982855985018

namespace A026672

/-- `A026676(2*(n+1))-A111279(n+2)` -/
def P9014349982855985018.Spec : Prop :=
  ∀ n, P9014349982855985018.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P15028712267888763969

`A027214(2*n+3)-A026737(n+1)`
-/

namespace A026672.P15028712267888763969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027214 (2 * n + 3) - A026737 (n + 1)

end

end A026672.P15028712267888763969

namespace A026672

/-- `A027214(2*n+3)-A026737(n+1)` -/
def P15028712267888763969.Spec : Prop :=
  ∀ n, P15028712267888763969.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P18194313541109222321

`A027214(2*n+3)-A111279(n+2)`
-/

namespace A026672.P18194313541109222321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027214 (2 * n + 3) - A111279 (n + 2)

end

end A026672.P18194313541109222321

namespace A026672

/-- `A027214(2*n+3)-A111279(n+2)` -/
def P18194313541109222321.Spec : Prop :=
  ∀ n, P18194313541109222321.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P15395654420357493421

`A026742(2*n+3)-A026742(2*(n+1))`
-/

namespace A026672.P15395654420357493421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * n + 3) - A026742 (2 * (n + 1))

end

end A026672.P15395654420357493421

namespace A026672

/-- `A026742(2*n+3)-A026742(2*(n+1))` -/
def P15395654420357493421.Spec : Prop :=
  ∀ n, P15395654420357493421.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P12379729470663994627

`A026671(n+1)-(A026854(n)+A026671(n))`
-/

namespace A026672.P12379729470663994627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 (n + 1) - (A026854 n + A026671 n)

end

end A026672.P12379729470663994627

namespace A026672

/-- `A026671(n+1)-(A026854(n)+A026671(n))` -/
def P12379729470663994627.Spec : Prop :=
  ∀ n, P12379729470663994627.a n = A026672 (n + 2)

theorem P12379729470663994627.correct : P12379729470663994627.Spec := by
  intro n
  simp only [A026672, Nat.add_sub_cancel, A026672.P12379729470663994627.a, A026672.P4241792068261067658.f1, A026672.P4241792068261067658.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026672

/-! ## A026672.P640712138389647175

`A026674(n+1)+A026671(n)-A000108(n+1)`
-/

namespace A026672.P640712138389647175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 1) + (A026671 n - A000108 (n + 1))

end

end A026672.P640712138389647175

namespace A026672

/-- `A026674(n+1)+A026671(n)-A000108(n+1)` -/
def P640712138389647175.Spec : Prop :=
  ∀ n, P640712138389647175.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P17054776724251903402

`A026726(n+1)+A014137(n)-A014137(n+1)`
-/

namespace A026672.P17054776724251903402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) + (A014137 n - A014137 (n + 1))

end

end A026672.P17054776724251903402

namespace A026672

/-- `A026726(n+1)+A014137(n)-A014137(n+1)` -/
def P17054776724251903402.Spec : Prop :=
  ∀ n, P17054776724251903402.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P3937413830088373722

`A000079(n+1)+A026726(n+1)-A141353(n+1)`
-/

namespace A026672.P3937413830088373722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A026726 (n + 1) - A141353 (n + 1))

end

end A026672.P3937413830088373722

namespace A026672

/-- `A000079(n+1)+A026726(n+1)-A141353(n+1)` -/
def P3937413830088373722.Spec : Prop :=
  ∀ n, P3937413830088373722.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P620876467008890333

`A026726(n+1)-(A071688(n+1)+A071684(n+1))`
-/

namespace A026672.P620876467008890333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - (A071688 (n + 1) + A071684 (n + 1))

end

end A026672.P620876467008890333

namespace A026672

/-- `A026726(n+1)-(A071688(n+1)+A071684(n+1))` -/
def P620876467008890333.Spec : Prop :=
  ∀ n, P620876467008890333.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P17651521935906007401

`A026726(n+1)-(A273958(n+1)+A055395(n+2))`
-/

namespace A026672.P17651521935906007401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - (A273958 (n + 1) + A055395 (n + 2))

end

end A026672.P17651521935906007401

namespace A026672

/-- `A026726(n+1)-(A273958(n+1)+A055395(n+2))` -/
def P17651521935906007401.Spec : Prop :=
  ∀ n, P17651521935906007401.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P3769243797897704538

`A026674(n+2)-A026671(n+1)`
-/

namespace A026672.P3769243797897704538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 2) - A026671 (n + 1)

end

end A026672.P3769243797897704538

namespace A026672

/-- `A026674(n+2)-A026671(n+1)` -/
def P3769243797897704538.Spec : Prop :=
  ∀ n, P3769243797897704538.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P12539138126444309024

`A165201(n+2)-A026671(n+1)`
-/

namespace A026672.P12539138126444309024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 (n + 2) - A026671 (n + 1)

end

end A026672.P12539138126444309024

namespace A026672

/-- `A165201(n+2)-A026671(n+1)` -/
def P12539138126444309024.Spec : Prop :=
  ∀ n, P12539138126444309024.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P5792597289552270210

`A026676(2*n+3)-A026671(n+1)`
-/

namespace A026672.P5792597289552270210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n + 3) - A026671 (n + 1)

end

end A026672.P5792597289552270210

namespace A026672

/-- `A026676(2*n+3)-A026671(n+1)` -/
def P5792597289552270210.Spec : Prop :=
  ∀ n, P5792597289552270210.a n = A026672 (n + 2)

end A026672

/-! ## A026672.P9248482463922733889

`A026743(2*(n+1))-A026744(2*(n+1))`
-/

namespace A026672.P9248482463922733889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (2 * (n + 1)) - A026744 (2 * (n + 1))

end

end A026672.P9248482463922733889

namespace A026672

/-- `A026743(2*(n+1))-A026744(2*(n+1))` -/
def P9248482463922733889.Spec : Prop :=
  ∀ n, P9248482463922733889.a n = A026672 (n + 2)

end A026672

/-!
# A026673: a(n) = T(2n,n-2), T given by A026670.

The programs for A026673, the canonical program `A026673.P7228674661456513878` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026673 has offset 2).

The definition of A026673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026673.P7228674661456513878

`record[A165201(n)-A000245(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026673

/-- `record[A165201(n)-A000245(n)]` -/
def P7228674661456513878.Spec : Prop :=
  ∀ n, P7228674661456513878.a n = A026673 (n + 2)

theorem P7228674661456513878.correct : P7228674661456513878.Spec := by
  intro n
  simp only [A026673, Nat.add_sub_cancel]

end A026673

/-! ## A026673.P15955951108544432059

`A026855(n+2)-A002057(n+1)`
-/

namespace A026673.P15955951108544432059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026855 (n + 2) - A002057 (n + 1)

end

end A026673.P15955951108544432059

namespace A026673

/-- `A026855(n+2)-A002057(n+1)` -/
def P15955951108544432059.Spec : Prop :=
  ∀ n, P15955951108544432059.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P512624968755617662

`A026674(n+2)-A000245(n+2)`
-/

namespace A026673.P512624968755617662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026674 (n + 2) - A000245 (n + 2)

end

end A026673.P512624968755617662

namespace A026673

/-- `A026674(n+2)-A000245(n+2)` -/
def P512624968755617662.Spec : Prop :=
  ∀ n, P512624968755617662.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P3913845628868586789

`A026671(n+2)-A026854(n+2)`
-/

namespace A026673.P3913845628868586789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 (n + 2) - A026854 (n + 2)

end

end A026673.P3913845628868586789

namespace A026673

/-- `A026671(n+2)-A026854(n+2)` -/
def P3913845628868586789.Spec : Prop :=
  ∀ n, P3913845628868586789.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P5150804208115815217

`A165201(n+2)-A000245(n+2)`
-/

namespace A026673.P5150804208115815217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 (n + 2) - A000245 (n + 2)

end

end A026673.P5150804208115815217

namespace A026673

/-- `A165201(n+2)-A000245(n+2)` -/
def P5150804208115815217.Spec : Prop :=
  ∀ n, P5150804208115815217.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P2689350847784243387

`A026675(n+3)-A026672(n+3)`
-/

namespace A026673.P2689350847784243387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026675 (n + 3) - A026672 (n + 3)

end

end A026673.P2689350847784243387

namespace A026673

/-- `A026675(n+3)-A026672(n+3)` -/
def P2689350847784243387.Spec : Prop :=
  ∀ n, P2689350847784243387.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P16365203604450508817

`2*A026675(n+2)-A026855(n+1)`
-/

namespace A026673.P16365203604450508817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026675 (n + 2) - A026855 (n + 1)

end

end A026673.P16365203604450508817

namespace A026673

/-- `2*A026675(n+2)-A026855(n+1)` -/
def P16365203604450508817.Spec : Prop :=
  ∀ n, P16365203604450508817.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P7125508650507415128

`A026855(n+2)+A114277(n)-A114277(n+1)`
-/

namespace A026673.P7125508650507415128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026855 (n + 2) + (A114277 n - A114277 (n + 1))

end

end A026673.P7125508650507415128

namespace A026673

/-- `A026855(n+2)+A114277(n)-A114277(n+1)` -/
def P7125508650507415128.Spec : Prop :=
  ∀ n, P7125508650507415128.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P11370643814452827933

`A390965(n+1)+A026674(n+2)-A071723(n+1)`
-/

namespace A026673.P11370643814452827933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 (n + 1) + (A026674 (n + 2) - A071723 (n + 1))

end

end A026673.P11370643814452827933

namespace A026673

/-- `A390965(n+1)+A026674(n+2)-A071723(n+1)` -/
def P11370643814452827933.Spec : Prop :=
  ∀ n, P11370643814452827933.a n = A026673 (n + 2)

end A026673

/-! ## A026673.P3421373149204615473

`A026675(n+3)-(A026675(n+2)+A026674(n+2))`
-/

namespace A026673.P3421373149204615473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026675 (n + 3) - (A026675 (n + 2) + A026674 (n + 2))

end

end A026673.P3421373149204615473

namespace A026673

/-- `A026675(n+3)-(A026675(n+2)+A026674(n+2))` -/
def P3421373149204615473.Spec : Prop :=
  ∀ n, P3421373149204615473.a n = A026673 (n + 2)

end A026673

/-!
# A026674: a(n) = T(2n-1,n-1) = T(2n,n+1), T given by A026725.

The programs for A026674, the canonical program `A026674.P5465496727970380294` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026674 has offset 1).

The definition of A026674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026674.P10749578631584897940

`A165201(n+1)`
-/

namespace A026674.P10749578631584897940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 (n + 1)

end

end A026674.P10749578631584897940

namespace A026674

/-- `A165201(n+1)` -/
def P10749578631584897940.Spec : Prop :=
  ∀ n, P10749578631584897940.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P305403716750133404

`A026676(Δ[n²])`
-/

namespace A026674.P305403716750133404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026674.P305403716750133404

namespace A026674

/-- `A026676(Δ[n²])` -/
def P305403716750133404.Spec : Prop :=
  ∀ n, P305403716750133404.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P3692173514480553212

`A026731(Δ[n²])`
-/

namespace A026674.P3692173514480553212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026674.P3692173514480553212

namespace A026674

/-- `A026731(Δ[n²])` -/
def P3692173514480553212.Spec : Prop :=
  ∀ n, P3692173514480553212.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P8278022729251417954

`Δ[A164651(n+1)]`
-/

namespace A026674.P8278022729251417954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026674.P8278022729251417954

namespace A026674

/-- `Δ[A164651(n+1)]` -/
def P8278022729251417954.Spec : Prop :=
  ∀ n, P8278022729251417954.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P5465496727970380294

`Δ[A026671(n)/2]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026674

/-- `Δ[A026671(n)/2]` -/
def P5465496727970380294.Spec : Prop :=
  ∀ n, P5465496727970380294.a n = (A026674 (n + 1) : ℚ)

end A026674

/-! ## A026674.P5023897338376519141

`A165407(3*n+2)`
-/

namespace A026674.P5023897338376519141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (3 * n + 2)

end

end A026674.P5023897338376519141

namespace A026674

/-- `A165407(3*n+2)` -/
def P5023897338376519141.Spec : Prop :=
  ∀ n, P5023897338376519141.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P777503766733064222

`Δ[A026676(2*n)/2]`
-/

namespace A026674.P777503766733064222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026676 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026674.P777503766733064222

namespace A026674

/-- `Δ[A026676(2*n)/2]` -/
def P777503766733064222.Spec : Prop :=
  ∀ n, P777503766733064222.a n = (A026674 (n + 1) : ℚ)

end A026674

/-! ## A026674.P14397231666457438240

`A165203(n)-a(n-1)` with `a(0)=1`
-/

namespace A026674.P14397231666457438240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165203 n - a (n - 1)

end

end A026674.P14397231666457438240

namespace A026674

/-- `A165203(n)-a(n-1)` -/
def P14397231666457438240.Spec : Prop :=
  ∀ n, P14397231666457438240.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P8518274408316520577

`Δ[A026742(2*n+1)/2]`
-/

namespace A026674.P8518274408316520577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026742 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026674.P8518274408316520577

namespace A026674

/-- `Δ[A026742(2*n+1)/2]` -/
def P8518274408316520577.Spec : Prop :=
  ∀ n, P8518274408316520577.a n = (A026674 (n + 1) : ℚ)

end A026674

/-! ## A026674.P11460988943691315115

`Δ[A027214(2*n+1)/2]`
-/

namespace A026674.P11460988943691315115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027214 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026674.P11460988943691315115

namespace A026674

/-- `Δ[A027214(2*n+1)/2]` -/
def P11460988943691315115.Spec : Prop :=
  ∀ n, P11460988943691315115.a n = (A026674 (n + 1) : ℚ)

end A026674

/-! ## A026674.P12282721317653955192

`record[A026676(A004442(n))]`
-/

namespace A026674.P12282721317653955192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026674.P12282721317653955192

namespace A026674

/-- `record[A026676(A004442(n))]` -/
def P12282721317653955192.Spec : Prop :=
  ∀ n, P12282721317653955192.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P3932952822442051863

`record[A026676(A026741(n))]`
-/

namespace A026674.P3932952822442051863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026674.P3932952822442051863

namespace A026674

/-- `record[A026676(A026741(n))]` -/
def P3932952822442051863.Spec : Prop :=
  ∀ n, P3932952822442051863.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P13889440591036157151

`record[A026676(A093411(n))]`
-/

namespace A026674.P13889440591036157151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A093411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026674.P13889440591036157151

namespace A026674

/-- `record[A026676(A093411(n))]` -/
def P13889440591036157151.Spec : Prop :=
  ∀ n, P13889440591036157151.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P10006702014827285531

`A108080(n)+A001791(n)`
-/

namespace A026674.P10006702014827285531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108080 n + A001791 n

end

end A026674.P10006702014827285531

namespace A026674

/-- `A108080(n)+A001791(n)` -/
def P10006702014827285531.Spec : Prop :=
  ∀ n, P10006702014827285531.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P10682438681446155426

`record[A026676(A014681(n)+1)]`
-/

namespace A026674.P10682438681446155426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026674.P10682438681446155426

namespace A026674

/-- `record[A026676(A014681(n)+1)]` -/
def P10682438681446155426.Spec : Prop :=
  ∀ n, P10682438681446155426.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P8402361812739374621

`record[A026731(A014681(n)+1)]`
-/

namespace A026674.P8402361812739374621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026731 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026674.P8402361812739374621

namespace A026674

/-- `record[A026731(A014681(n)+1)]` -/
def P8402361812739374621.Spec : Prop :=
  ∀ n, P8402361812739374621.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P682560272072680771

`A026726(n+1)-A026671(n)`
-/

namespace A026674.P682560272072680771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A026671 n

end

end A026674.P682560272072680771

namespace A026674

/-- `A026726(n+1)-A026671(n)` -/
def P682560272072680771.Spec : Prop :=
  ∀ n, P682560272072680771.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P12158074240183790511

`2*A026671(n)-A026737(n)`
-/

namespace A026674.P12158074240183790511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026671 n - A026737 n

end

end A026674.P12158074240183790511

namespace A026674

/-- `2*A026671(n)-A026737(n)` -/
def P12158074240183790511.Spec : Prop :=
  ∀ n, P12158074240183790511.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P12637728713825981787

`A108080(n)+n*A000108(n)`
-/

namespace A026674.P12637728713825981787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108080 n + (n : ℤ) * A000108 n

end

end A026674.P12637728713825981787

namespace A026674

/-- `A108080(n)+n*A000108(n)` -/
def P12637728713825981787.Spec : Prop :=
  ∀ n, P12637728713825981787.a n = A026674 (n + 1)

end A026674

/-! ## A026674.P2397379333526101560

`A111279(n+2)-A000108(n+1)`
-/

namespace A026674.P2397379333526101560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111279 (n + 2) - A000108 (n + 1)

end

end A026674.P2397379333526101560

namespace A026674

/-- `A111279(n+2)-A000108(n+1)` -/
def P2397379333526101560.Spec : Prop :=
  ∀ n, P2397379333526101560.a n = A026674 (n + 1)

end A026674

/-!
# A026675: a(n) = T(2n-1,n-2), T given by A026670. Also T(2n-1,n-2) = T(2n,n+2), T given by A026725 and T(2n,n-2), T given by A026736.

The programs for A026675, the canonical program `A026675.P13225776395301134493` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026675 has offset 2).

The definition of A026675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026675.P13225776395301134493

`A026671(n+1)-A000108(n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026675

/-- `A026671(n+1)-A000108(n+2)` -/
def P13225776395301134493.Spec : Prop :=
  ∀ n, P13225776395301134493.a n = A026675 (n + 2)

theorem P13225776395301134493.correct : P13225776395301134493.Spec := by
  intro n
  simp only [A026675, Nat.add_sub_cancel]

end A026675

/-! ## A026675.P15831429881733816133

`A026850(n+2)-A000245(n+2)`
-/

namespace A026675.P15831429881733816133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026850 (n + 2) - A000245 (n + 2)

end

end A026675.P15831429881733816133

namespace A026675

/-- `A026850(n+2)-A000245(n+2)` -/
def P15831429881733816133.Spec : Prop :=
  ∀ n, P15831429881733816133.a n = A026675 (n + 2)

end A026675

/-! ## A026675.P13959601259240034079

`A026672(n+3)-A026674(n+2)`
-/

namespace A026675.P13959601259240034079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 3) - A026674 (n + 2)

end

end A026675.P13959601259240034079

namespace A026675

/-- `A026672(n+3)-A026674(n+2)` -/
def P13959601259240034079.Spec : Prop :=
  ∀ n, P13959601259240034079.a n = A026675 (n + 2)

end A026675

/-! ## A026675.P3346637327769368461

`Δ[A026672(n+2)]-A026671(n+1)`
-/

namespace A026675.P3346637327769368461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026671 (n + 1)

end

end A026675.P3346637327769368461

namespace A026675

/-- `Δ[A026672(n+2)]-A026671(n+1)` -/
def P3346637327769368461.Spec : Prop :=
  ∀ n, P3346637327769368461.a n = A026675 (n + 2)

end A026675

/-! ## A026675.P13944833905903757110

`(A026855(n+1)+A026673(n+2))/2`
-/

namespace A026675.P13944833905903757110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026855 (n + 1) + A026673 (n + 2) : ℚ) / 2

end

end A026675.P13944833905903757110

namespace A026675

/-- `(A026855(n+1)+A026673(n+2))/2` -/
def P13944833905903757110.Spec : Prop :=
  ∀ n, P13944833905903757110.a n = (A026675 (n + 2) : ℚ)

end A026675

/-! ## A026675.P13952332126387860513

`A026676(2*n+3)-A026854(n+1)`
-/

namespace A026675.P13952332126387860513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026676 (2 * n + 3) - A026854 (n + 1)

end

end A026675.P13952332126387860513

namespace A026675

/-- `A026676(2*n+3)-A026854(n+1)` -/
def P13952332126387860513.Spec : Prop :=
  ∀ n, P13952332126387860513.a n = A026675 (n + 2)

end A026675

/-! ## A026675.P1831341116590274587

`A026672(n+3)-A026676(2*n+3)`
-/

namespace A026675.P1831341116590274587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 3) - A026676 (2 * n + 3)

end

end A026675.P1831341116590274587

namespace A026675

/-- `A026672(n+3)-A026676(2*n+3)` -/
def P1831341116590274587.Spec : Prop :=
  ∀ n, P1831341116590274587.a n = A026675 (n + 2)

end A026675

/-! ## A026675.P15525804839536350832

`A026672(n+3)-(A026672(n+2)+A026671(n+1))`
-/

namespace A026675.P15525804839536350832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026672 (n + 3) - (A026672 (n + 2) + A026671 (n + 1))

end

end A026675.P15525804839536350832

namespace A026675

/-- `A026672(n+3)-(A026672(n+2)+A026671(n+1))` -/
def P15525804839536350832.Spec : Prop :=
  ∀ n, P15525804839536350832.a n = A026675 (n + 2)

end A026675

/-! ## A026675.P6469616368627907562

`A026671(n+1)-A172392(n+1)/A000984(n+1)`
-/

namespace A026675.P6469616368627907562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026671 (n + 1) : ℚ) - (A172392 (n + 1) : ℚ) / (A000984 (n + 1) : ℚ)

end

end A026675.P6469616368627907562

namespace A026675

/-- `A026671(n+1)-A172392(n+1)/A000984(n+1)` -/
def P6469616368627907562.Spec : Prop :=
  ∀ n, P6469616368627907562.a n = (A026675 (n + 2) : ℚ)

end A026675

/-! ## A026675.P3341580031472627450

`A026670(2*(n+1)*(n+3))`
-/

namespace A026675.P3341580031472627450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026670 (2 * ((n + 1) * (n + 3)))

end

end A026675.P3341580031472627450

namespace A026675

/-- `A026670(2*(n+1)*(n+3))` -/
def P3341580031472627450.Spec : Prop :=
  ∀ n, P3341580031472627450.a n = A026675 (n + 2)

end A026675

/-!
# A026676: a(n) = T(n, floor(n/2)), T given by A026670.

The programs for A026676, the canonical program `A026676.P16174928990831131205` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026676 has offset 0).

The definition of A026676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026676.P1700155218468493899

`A165407(A001651(n+1))`
-/

namespace A026676.P1700155218468493899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A001651 (n + 1)).toNat

end

end A026676.P1700155218468493899

namespace A026676

/-- `A165407(A001651(n+1))` -/
def P1700155218468493899.Spec : Prop :=
  ∀ n, P1700155218468493899.a n = A026676 n

end A026676

/-! ## A026676.P4328845686923679595

`A165407(A097482(n+1))`
-/

namespace A026676.P4328845686923679595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A097482 (n + 1)).toNat

end

end A026676.P4328845686923679595

namespace A026676

/-- `A165407(A097482(n+1))` -/
def P4328845686923679595.Spec : Prop :=
  ∀ n, P4328845686923679595.a n = A026676 n

end A026676

/-! ## A026676.P368960090259652510

`A165407(A007494(n+1)-1)`
-/

namespace A026676.P368960090259652510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A007494 (n + 1) - 1).toNat

end

end A026676.P368960090259652510

namespace A026676

/-- `A165407(A007494(n+1)-1)` -/
def P368960090259652510.Spec : Prop :=
  ∀ n, P368960090259652510.a n = A026676 n

end A026676

/-! ## A026676.P3961769998528860543

`A165407(A294732(n+3)-1)`
-/

namespace A026676.P3961769998528860543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165407 (A294732 (n + 3) - 1).toNat

end

end A026676.P3961769998528860543

namespace A026676

/-- `A165407(A294732(n+3)-1)` -/
def P3961769998528860543.Spec : Prop :=
  ∀ n, P3961769998528860543.a n = A026676 n

end A026676

/-! ## A026676.P16174928990831131205

`A026743(n+1)-Δ[A026677(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A026676

/-- `A026743(n+1)-Δ[A026677(n)]` -/
def P16174928990831131205.Spec : Prop :=
  ∀ n, P16174928990831131205.a n = A026676 n

theorem P16174928990831131205.correct : P16174928990831131205.Spec := by
  intro n
  simp only [A026676]

end A026676

/-! ## A026676.P5858019092736356359

`A026743(n+1)-A026733(n+1)`
-/

namespace A026676.P5858019092736356359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (n + 1) - A026733 (n + 1)

end

end A026676.P5858019092736356359

namespace A026676

/-- `A026743(n+1)-A026733(n+1)` -/
def P5858019092736356359.Spec : Prop :=
  ∀ n, P5858019092736356359.a n = A026676 n

end A026676

/-! ## A026676.P8253127976016445469

`A026743(n)-Δ[A026677(n)-A026743(n)]`
-/

namespace A026676.P8253127976016445469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026677 n - A026743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 n - (f1 (n + 1) - f1 n)

end

end A026676.P8253127976016445469

namespace A026676

/-- `A026743(n)-Δ[A026677(n)-A026743(n)]` -/
def P8253127976016445469.Spec : Prop :=
  ∀ n, P8253127976016445469.a n = A026676 n

theorem P8253127976016445469.correct : P8253127976016445469.Spec := by
  intro n
  simp only [A026676, Nat.add_sub_cancel, A026676.P8253127976016445469.f1, A026676.P8253127976016445469.a, A026676.P16174928990831131205.f1, A026676.P16174928990831131205.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026676

/-! ## A026676.P14063833024363204469

`Δ[A026745(n)]-A026733(n+1)`
-/

namespace A026676.P14063833024363204469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026733 (n + 1)

end

end A026676.P14063833024363204469

namespace A026676

/-- `Δ[A026745(n)]-A026733(n+1)` -/
def P14063833024363204469.Spec : Prop :=
  ∀ n, P14063833024363204469.a n = A026676 n

end A026676

/-! ## A026676.P3419836832289220040

`Δ[A026745(n)-A026733(n)]-A026733(n)`
-/

namespace A026676.P3419836832289220040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026745 n - A026733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026733 n

end

end A026676.P3419836832289220040

namespace A026676

/-- `Δ[A026745(n)-A026733(n)]-A026733(n)` -/
def P3419836832289220040.Spec : Prop :=
  ∀ n, P3419836832289220040.a n = A026676 n

end A026676

/-! ## A026676.P7328066474110849802

`A026670(A194274(n))`
-/

namespace A026676.P7328066474110849802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026670 (A194274 n).toNat

end

end A026676.P7328066474110849802

namespace A026676

/-- `A026670(A194274(n))` -/
def P7328066474110849802.Spec : Prop :=
  ∀ n, P7328066474110849802.a n = A026676 n

end A026676

/-! ## A026676.P1406827012322556788

`A026670(A007590(n+1))`
-/

namespace A026676.P1406827012322556788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026670 (A007590 (n + 1)).toNat

end

end A026676.P1406827012322556788

namespace A026676

/-- `A026670(A007590(n+1))` -/
def P1406827012322556788.Spec : Prop :=
  ∀ n, P1406827012322556788.a n = A026676 n

end A026676

/-! ## A026676.P10848714119160789087

`A026670(A080476(n+1))`
-/

namespace A026676.P10848714119160789087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026670 (A080476 (n + 1)).toNat

end

end A026676.P10848714119160789087

namespace A026676

/-- `A026670(A080476(n+1))` -/
def P10848714119160789087.Spec : Prop :=
  ∀ n, P10848714119160789087.a n = A026676 n

end A026676

/-! ## A026676.P17288894709932353851

`A026725(∑[or(1, n+1)]+1)`
-/

namespace A026676.P17288894709932353851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026676.P17288894709932353851

namespace A026676

/-- `A026725(∑[or(1, n+1)]+1)` -/
def P17288894709932353851.Spec : Prop :=
  ∀ n, P17288894709932353851.a n = A026676 n

end A026676

/-! ## A026676.P15604299961145814861

`A026725(A087327(n+2))`
-/

namespace A026676.P15604299961145814861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A087327 (n + 2)).toNat

end

end A026676.P15604299961145814861

namespace A026676

/-- `A026725(A087327(n+2))` -/
def P15604299961145814861.Spec : Prop :=
  ∀ n, P15604299961145814861.a n = A026676 n

end A026676

/-! ## A026676.P12058816046828425384

`A026725(∑[A063196(n+2)]+1)`
-/

namespace A026676.P12058816046828425384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A026676.P12058816046828425384

namespace A026676

/-- `A026725(∑[A063196(n+2)]+1)` -/
def P12058816046828425384.Spec : Prop :=
  ∀ n, P12058816046828425384.a n = A026676 n

end A026676

/-! ## A026676.P7541561084889256400

`A026725(record[A245300(n+1)+1])`
-/

namespace A026676.P7541561084889256400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026676.P7541561084889256400

namespace A026676

/-- `A026725(record[A245300(n+1)+1])` -/
def P7541561084889256400.Spec : Prop :=
  ∀ n, P7541561084889256400.a n = A026676 n

end A026676

/-! ## A026676.P5971906028720513108

`A026725(A000096(n)+A110654(n)+2)`
-/

namespace A026676.P5971906028720513108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A000096 n + (A110654 n + 2)).toNat

end

end A026676.P5971906028720513108

namespace A026676

/-- `A026725(A000096(n)+A110654(n)+2)` -/
def P5971906028720513108.Spec : Prop :=
  ∀ n, P5971906028720513108.a n = A026676 n

end A026676

/-! ## A026676.P12138872318601530263

`A026725(A008619(n+3)+A000096(n))`
-/

namespace A026676.P12138872318601530263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026725 (A008619 (n + 3) + A000096 n).toNat

end

end A026676.P12138872318601530263

namespace A026676

/-- `A026725(A008619(n+3)+A000096(n))` -/
def P12138872318601530263.Spec : Prop :=
  ∀ n, P12138872318601530263.a n = A026676 n

end A026676

/-!
# A026677: T(n,0) + T(n,1) + ... + T(n,n), T given by A026670.

The programs for A026677, the canonical program `A026677.P541306508744937430` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026677 has offset 0).

The definition of A026677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026677.P9249234982007715256

`∑[A026733(n)]`
-/

namespace A026677.P9249234982007715256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026677.P9249234982007715256

namespace A026677

/-- `∑[A026733(n)]` -/
def P9249234982007715256.Spec : Prop :=
  ∀ n, P9249234982007715256.a n = A026677 n

end A026677

/-! ## A026677.P541306508744937430

`A000034(n)*A054441(A008619(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026677

/-- `A000034(n)*A054441(A008619(n))` -/
def P541306508744937430.Spec : Prop :=
  ∀ n, P541306508744937430.a n = A026677 n

theorem P541306508744937430.correct : P541306508744937430.Spec := by
  intro n
  simp only [A026677]

end A026677

/-! ## A026677.P1185920586865677812

`A000034(n)*A026678(A109613(n))`
-/

namespace A026677.P1185920586865677812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A026678 (A109613 n).toNat

end

end A026677.P1185920586865677812

namespace A026677

/-- `A000034(n)*A026678(A109613(n))` -/
def P1185920586865677812.Spec : Prop :=
  ∀ n, P1185920586865677812.a n = A026677 n

end A026677

/-! ## A026677.P16656870938824286920

`A026732(n+1)-A026743(n)`
-/

namespace A026677.P16656870938824286920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1) - A026743 n

end

end A026677.P16656870938824286920

namespace A026677

/-- `A026732(n+1)-A026743(n)` -/
def P16656870938824286920.Spec : Prop :=
  ∀ n, P16656870938824286920.a n = A026677 n

end A026677

/-! ## A026677.P14355684361133564361

`Δ[A026734(n)]-A026743(n)`
-/

namespace A026677.P14355684361133564361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026743 n

end

end A026677.P14355684361133564361

namespace A026677

/-- `Δ[A026734(n)]-A026743(n)` -/
def P14355684361133564361.Spec : Prop :=
  ∀ n, P14355684361133564361.a n = A026677 n

end A026677

/-! ## A026677.P13562367367992637552

`Δ[A026743(n+1)]-A026731(n+1)`
-/

namespace A026677.P13562367367992637552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026731 (n + 1)

end

end A026677.P13562367367992637552

namespace A026677

/-- `Δ[A026743(n+1)]-A026731(n+1)` -/
def P13562367367992637552.Spec : Prop :=
  ∀ n, P13562367367992637552.a n = A026677 n

end A026677

/-! ## A026677.P4555218019264455974

`Δ[A026732(n+1)]-A026847(n+1)`
-/

namespace A026677.P4555218019264455974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026847 (n + 1)

end

end A026677.P4555218019264455974

namespace A026677

/-- `Δ[A026732(n+1)]-A026847(n+1)` -/
def P4555218019264455974.Spec : Prop :=
  ∀ n, P4555218019264455974.a n = A026677 n

end A026677

/-! ## A026677.P8887322284338071690

`A026679(n+1)-(A026733(n+1)+A026679(n))`
-/

namespace A026677.P8887322284338071690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026679 (n + 1) - (A026733 (n + 1) + A026679 n)

end

end A026677.P8887322284338071690

namespace A026677

/-- `A026679(n+1)-(A026733(n+1)+A026679(n))` -/
def P8887322284338071690.Spec : Prop :=
  ∀ n, P8887322284338071690.a n = A026677 n

end A026677

/-! ## A026677.P14818496261800116054

`2/(n+2)*A026985(n)`
-/

namespace A026677.P14818496261800116054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026985 n : ℚ)

end

end A026677.P14818496261800116054

namespace A026677

/-- `2/(n+2)*A026985(n)` -/
def P14818496261800116054.Spec : Prop :=
  ∀ n, P14818496261800116054.a n = (A026677 n : ℚ)

end A026677

/-!
# A026678: a(n) = T(n,0) + T(n,1) + ... + T(n,[ n/2 ]), T given by A026670.

The programs for A026678, the canonical program `A026678.P14231666609534463384` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026678 has offset 0).

The definition of A026678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026678.P12466449160862153669

`A010752(A001651(n+1))`
-/

namespace A026678.P12466449160862153669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A001651 (n + 1)).toNat

end

end A026678.P12466449160862153669

namespace A026678

/-- `A010752(A001651(n+1))` -/
def P12466449160862153669.Spec : Prop :=
  ∀ n, P12466449160862153669.a n = A026678 n

end A026678

/-! ## A026678.P8822607338695426071

`A010752(A032766(n)+1)`
-/

namespace A026678.P8822607338695426071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A032766 n + 1).toNat

end

end A026678.P8822607338695426071

namespace A026678

/-- `A010752(A032766(n)+1)` -/
def P8822607338695426071.Spec : Prop :=
  ∀ n, P8822607338695426071.a n = A026678 n

end A026678

/-! ## A026678.P6992841821586357335

`A010752(A097482(n+1))`
-/

namespace A026678.P6992841821586357335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A097482 (n + 1)).toNat

end

end A026678.P6992841821586357335

namespace A026678

/-- `A010752(A097482(n+1))` -/
def P6992841821586357335.Spec : Prop :=
  ∀ n, P6992841821586357335.a n = A026678 n

end A026678

/-! ## A026678.P5580730594786656413

`A010753(A133223(n+1))`
-/

namespace A026678.P5580730594786656413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 (A133223 (n + 1)).toNat

end

end A026678.P5580730594786656413

namespace A026678

/-- `A010753(A133223(n+1))` -/
def P5580730594786656413.Spec : Prop :=
  ∀ n, P5580730594786656413.a n = A026678 n

end A026678

/-! ## A026678.P14198696472272949926

`A010752(A008619(3*n))`
-/

namespace A026678.P14198696472272949926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A008619 (3 * n)).toNat

end

end A026678.P14198696472272949926

namespace A026678

/-- `A010752(A008619(3*n))` -/
def P14198696472272949926.Spec : Prop :=
  ∀ n, P14198696472272949926.a n = A026678 n

end A026678

/-! ## A026678.P14914369436850849008

`A010752(A008619(n)+n)`
-/

namespace A026678.P14914369436850849008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (A008619 n + (n : ℤ)).toNat

end

end A026678.P14914369436850849008

namespace A026678

/-- `A010752(A008619(n)+n)` -/
def P14914369436850849008.Spec : Prop :=
  ∀ n, P14914369436850849008.a n = A026678 n

end A026678

/-! ## A026678.P3945560435733532491

`A010753(A004526(3*n)+1)`
-/

namespace A026678.P3945560435733532491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 (A004526 (3 * n) + 1).toNat

end

end A026678.P3945560435733532491

namespace A026678

/-- `A010753(A004526(3*n)+1)` -/
def P3945560435733532491.Spec : Prop :=
  ∀ n, P3945560435733532491.a n = A026678 n

end A026678

/-! ## A026678.P1044045602239812310

`A010753(A004526(n)+1+n)`
-/

namespace A026678.P1044045602239812310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 (A004526 n + 1 + (n : ℤ)).toNat

end

end A026678.P1044045602239812310

namespace A026678

/-- `A010753(A004526(n)+1+n)` -/
def P1044045602239812310.Spec : Prop :=
  ∀ n, P1044045602239812310.a n = A026678 n

end A026678

/-! ## A026678.P8300467912151842757

`Δ[A026733(n+1)/2]`
-/

namespace A026678.P8300467912151842757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026733 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026678.P8300467912151842757

namespace A026678

/-- `Δ[A026733(n+1)/2]` -/
def P8300467912151842757.Spec : Prop :=
  ∀ n, P8300467912151842757.a n = (A026678 n : ℚ)

end A026678

/-! ## A026678.P3335320804117636176

`A026732(n+1)-A026733(n+1)`
-/

namespace A026678.P3335320804117636176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1) - A026733 (n + 1)

end

end A026678.P3335320804117636176

namespace A026678

/-- `A026732(n+1)-A026733(n+1)` -/
def P3335320804117636176.Spec : Prop :=
  ∀ n, P3335320804117636176.a n = A026678 n

end A026678

/-! ## A026678.P2429092874391821659

`A026743(n+1)-A026847(n+1)`
-/

namespace A026678.P2429092874391821659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (n + 1) - A026847 (n + 1)

end

end A026678.P2429092874391821659

namespace A026678

/-- `A026743(n+1)-A026847(n+1)` -/
def P2429092874391821659.Spec : Prop :=
  ∀ n, P2429092874391821659.a n = A026678 n

end A026678

/-! ## A026678.P8820899928068533028

`A026733(n+2)%A026732(n+1)`
-/

namespace A026678.P8820899928068533028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026733 (n + 2)) (A026732 (n + 1))

end

end A026678.P8820899928068533028

namespace A026678

/-- `A026733(n+2)%A026732(n+1)` -/
def P8820899928068533028.Spec : Prop :=
  ∀ n, P8820899928068533028.a n = A026678 n

end A026678

/-! ## A026678.P14231666609534463384

`A026677(n)+A026743(n)-Δ[A026677(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A026678

/-- `A026677(n)+A026743(n)-Δ[A026677(n)]` -/
def P14231666609534463384.Spec : Prop :=
  ∀ n, P14231666609534463384.a n = A026678 n

theorem P14231666609534463384.correct : P14231666609534463384.Spec := by
  intro n
  simp only [A026678]

end A026678

/-! ## A026678.P483207142214207975

`Δ[Δ[A026677(n)/2]]`
-/

namespace A026678.P483207142214207975
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026677 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026678.P483207142214207975

namespace A026678

/-- `Δ[Δ[A026677(n)/2]]` -/
def P483207142214207975.Spec : Prop :=
  ∀ n, P483207142214207975.a n = (A026678 n : ℚ)

end A026678

/-! ## A026678.P10159757508824362306

`Δ[A026734(n)-A026677(n)]`
-/

namespace A026678.P10159757508824362306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n - A026677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026678.P10159757508824362306

namespace A026678

/-- `Δ[A026734(n)-A026677(n)]` -/
def P10159757508824362306.Spec : Prop :=
  ∀ n, P10159757508824362306.a n = A026678 n

end A026678

/-! ## A026678.P5525573895754803322

`Δ[A026734(n)-∑[A026733(n)]]`
-/

namespace A026678.P5525573895754803322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026678.P5525573895754803322

namespace A026678

/-- `Δ[A026734(n)-∑[A026733(n)]]` -/
def P5525573895754803322.Spec : Prop :=
  ∀ n, P5525573895754803322.a n = A026678 n

end A026678

/-! ## A026678.P1383660186717054309

`Δ[A026734(n)]-A026733(n+1)`
-/

namespace A026678.P1383660186717054309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026733 (n + 1)

end

end A026678.P1383660186717054309

namespace A026678

/-- `Δ[A026734(n)]-A026733(n+1)` -/
def P1383660186717054309.Spec : Prop :=
  ∀ n, P1383660186717054309.a n = A026678 n

end A026678

/-! ## A026678.P7650597187388455725

`A125172(A080827(n+1))`
-/

namespace A026678.P7650597187388455725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125172 (A080827 (n + 1)).toNat

end

end A026678.P7650597187388455725

namespace A026678

/-- `A125172(A080827(n+1))` -/
def P7650597187388455725.Spec : Prop :=
  ∀ n, P7650597187388455725.a n = A026678 n

end A026678

/-! ## A026678.P596800147068381494

`A125172(A099392(n+2))`
-/

namespace A026678.P596800147068381494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125172 (A099392 (n + 2)).toNat

end

end A026678.P596800147068381494

namespace A026678

/-- `A125172(A099392(n+2))` -/
def P596800147068381494.Spec : Prop :=
  ∀ n, P596800147068381494.a n = A026678 n

end A026678

/-! ## A026678.P12139629675915293571

`A193667(A007590(n)+n)`
-/

namespace A026678.P12139629675915293571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A007590 n + (n : ℤ)).toNat

end

end A026678.P12139629675915293571

namespace A026678

/-- `A193667(A007590(n)+n)` -/
def P12139629675915293571.Spec : Prop :=
  ∀ n, P12139629675915293571.a n = A026678 n

end A026678

/-!
# A026679: Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026670.

The programs for A026679, the canonical program `A026679.P8036760827075094088` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026679 has offset 0).

The definition of A026679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026679.P8036760827075094088

`∑[A026677(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026679

/-- `∑[A026677(n)]` -/
def P8036760827075094088.Spec : Prop :=
  ∀ n, P8036760827075094088.a n = A026679 n

theorem P8036760827075094088.correct : P8036760827075094088.Spec := by
  intro n
  simp only [A026679]

end A026679

/-! ## A026679.P3524812131528636972

`∑[∑[A026733(n)]]`
-/

namespace A026679.P3524812131528636972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026679.P3524812131528636972

namespace A026679

/-- `∑[∑[A026733(n)]]` -/
def P3524812131528636972.Spec : Prop :=
  ∀ n, P3524812131528636972.a n = A026679 n

end A026679

/-! ## A026679.P15928362332115172414

`a(n-1)+A001221(A001316(n))*A026677(n)` with `a(0)=1`
-/

namespace A026679.P15928362332115172414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A001316 n).toNat * A026677 n

end

end A026679.P15928362332115172414

namespace A026679

/-- `a(n-1)+A001221(A001316(n))*A026677(n)` -/
def P15928362332115172414.Spec : Prop :=
  ∀ n, P15928362332115172414.a n = A026679 n

end A026679

/-! ## A026679.P16685018750589323507

`∑[Δ[A026734(n)]-A026743(n)]`
-/

namespace A026679.P16685018750589323507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026734 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A026743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026679.P16685018750589323507

namespace A026679

/-- `∑[Δ[A026734(n)]-A026743(n)]` -/
def P16685018750589323507.Spec : Prop :=
  ∀ n, P16685018750589323507.a n = A026679 n

end A026679

/-! ## A026679.P10713324119743610421

`∑[A026732(n+1)]-A026745(n)`
-/

namespace A026679.P10713324119743610421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026745 n

end

end A026679.P10713324119743610421

namespace A026679

/-- `∑[A026732(n+1)]-A026745(n)` -/
def P10713324119743610421.Spec : Prop :=
  ∀ n, P10713324119743610421.a n = A026679 n

end A026679

/-!
# A026680: Sum{T(n-k,k)}, 0<=k<=[ n/2 ], T given by A026670.

The programs for A026680, there is no canonical definition to state claims against.
-/

/-! ## A026680.P17276893424829819247

`A325400(A393315(n))`
-/

namespace A026680.P17276893424829819247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A393315 n).toNat

end

end A026680.P17276893424829819247

/-! ## A026680.P11514468139235405204

`A122921(A219398(n+1))`
-/

namespace A026680.P11514468139235405204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A219398 (n + 1)).toNat

end

end A026680.P11514468139235405204

/-! ## A026680.P10169363617318872771

`A107897(A378672(n+2))`
-/

namespace A026680.P10169363617318872771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107897 (A378672 (n + 2)).toNat

end

end A026680.P10169363617318872771

/-! ## A026680.P17731093407786623346

`A076269(3*n+1)+A004198(gcd(n, C(2, n))+n)`
-/

namespace A026680.P17731093407786623346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076269 (3 * n + 1) + A004198 (Nat.gcd n (Nat.choose 2 n) + n)

end

end A026680.P17731093407786623346

/-! ## A026680.P13274473097206130508

`A045778(A004643(n))+A002264(n)`
-/

namespace A026680.P13274473097206130508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A004643 n).toNat + A002264 n

end

end A026680.P13274473097206130508

/-!
# A026681: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; for n >= 2 and 1<=k<=n-1, T(n,k)=T(n-1,k-1)+T(n-1,k) if k or n-k is of form 2h for h=1,2,...,[ n/4 ], else T(n,k)=T(n-1,k-1)+T(n-2,k-1)+T(n-1,k).

The programs for A026681, there is no canonical definition to state claims against.
-/

/-! ## A026681.P13140812119758470153

`A026615(n)+A010893(A034253(n+1))`
-/

namespace A026681.P13140812119758470153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026615 n + A010893 ((A034253 (n + 1)).toNat + 13)

end

end A026681.P13140812119758470153

/-! ## A026681.P6668797978074837378

`A010893(A034253(n+1))+A072405(n)+A132735(n)-1`
-/

namespace A026681.P6668797978074837378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A034253 (n + 1)).toNat + 13) + (A072405 n + (A132735 n - 1))

end

end A026681.P6668797978074837378

/-! ## A026681.P13364227049473446586

`A010893(A034253(n+1))+A131060(n)+1-A173075(n)`
-/

namespace A026681.P13364227049473446586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A034253 (n + 1)).toNat + 13) + (A131060 n + 1 - A173075 n)

end

end A026681.P13364227049473446586

/-! ## A026681.P9440276261778350406

`A010893(A034253(n+1))+A072405(n)+A028242(A132731(n))`
-/

namespace A026681.P9440276261778350406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A034253 (n + 1)).toNat + 13) + (A072405 n + A028242 (A132731 n).toNat)

end

end A026681.P9440276261778350406

/-! ## A026681.P6722028909801067062

`A010893(A034253(n+1))+A131060(n)+A024000(A173075(n))`
-/

namespace A026681.P6722028909801067062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A034253 (n + 1)).toNat + 13) + (A131060 n + A024000 (A173075 n).toNat)

end

end A026681.P6722028909801067062

/-!
# A026682: a(n) = A026681(2n,n).

The programs for A026682, there is no canonical definition to state claims against.
-/

/-! ## A026682.P16587880720086854634

`A026687(2*n)`
-/

namespace A026682.P16587880720086854634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026687 (2 * n)

end

end A026682.P16587880720086854634

/-! ## A026682.P12509251760679140521

`record[A026687(n)^log2(gcd(2, n))]`
-/

namespace A026682.P12509251760679140521
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026687 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P12509251760679140521

/-! ## A026682.P14221784065295310574

`record[A026687(A026741(n)+1)]`
-/

namespace A026682.P14221784065295310574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026687 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P14221784065295310574

/-! ## A026682.P4879017419925670526

`record[A026687(n)/A010684(n)]`
-/

namespace A026682.P4879017419925670526
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 n : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P4879017419925670526

/-! ## A026682.P4943550576214833851

`record[A026687(n)/A153284(n+2)]`
-/

namespace A026682.P4943550576214833851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 n : ℚ) / (A153284 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P4943550576214833851

/-! ## A026682.P2443416131452837165

`record[A026687(n)^(A040001(n)-1)]`
-/

namespace A026682.P2443416131452837165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 n : ℚ) ^ (A040001 n - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P2443416131452837165

/-! ## A026682.P11261713377033303922

`record[A026687(n)/A055975(n+1)²]`
-/

namespace A026682.P11261713377033303922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 n : ℚ) / (A055975 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P11261713377033303922

/-! ## A026682.P11809226956231490502

`A026687(A005843(n))%A096497(n+1)`
-/

namespace A026682.P11809226956231490502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026687 (A005843 n).toNat) (A096497 (n + 1))

end

end A026682.P11809226956231490502

/-! ## A026682.P9457400804900104160

`A026681(∑[4*n]+1)`
-/

namespace A026682.P9457400804900104160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026682.P9457400804900104160

/-! ## A026682.P7929813668413462550

`record[A026681(A265225(n)+1)]`
-/

namespace A026682.P7929813668413462550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A265225 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026682.P7929813668413462550

/-!
# A026683: T(2n,n-1), T given by A026681.

The programs for A026683, there is no canonical definition to state claims against.
-/

/-! ## A026683.P5445293032789679879

`A026681(∑[4*(n+1)])`
-/

namespace A026683.P5445293032789679879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026683.P5445293032789679879

/-! ## A026683.P1246224222826559653

`record[A026681(A182455(n))]`
-/

namespace A026683.P1246224222826559653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A182455 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026683.P1246224222826559653

/-! ## A026683.P17262810774852293257

`record[A026681(A265225(n))]`
-/

namespace A026683.P17262810774852293257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026683.P17262810774852293257

/-! ## A026683.P6836102702455395209

`lcm((-1)^n, A026681(A046092(n+1)))`
-/

namespace A026683.P6836102702455395209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A026681 (A046092 (n + 1)).toNat)

end

end A026683.P6836102702455395209

/-! ## A026683.P17336920889170085735

`A026681(A046092(n+1))+A000007(n+1)`
-/

namespace A026683.P17336920889170085735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A046092 (n + 1)).toNat + A000007 (n + 1)

end

end A026683.P17336920889170085735

/-! ## A026683.P16803451887388394181

`A000034(2*n)*A026681(A046092(n+1))`
-/

namespace A026683.P16803451887388394181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A026681 (A046092 (n + 1)).toNat

end

end A026683.P16803451887388394181

/-! ## A026683.P15347125797012374076

`A000045(A014963(5-(-1)^n))*A026681(A046092(n+1))`
-/

namespace A026683.P15347125797012374076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (5 - (-1) ^ n).toNat).toNat * A026681 (A046092 (n + 1)).toNat

end

end A026683.P15347125797012374076

/-!
# A026684: T(2n,n-2), T given by A026681.

The programs for A026684, there is no canonical definition to state claims against.
-/

/-! ## A026684.P9795176241460743731

`A026681(A132209(n+2))`
-/

namespace A026684.P9795176241460743731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A132209 (n + 2)).toNat

end

end A026684.P9795176241460743731

/-! ## A026684.P10171952208819857791

`A026681(A142463(n+2))`
-/

namespace A026684.P10171952208819857791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A142463 (n + 2)).toNat

end

end A026684.P10171952208819857791

/-! ## A026684.P28815575996991250

`A026681(A004767(∑[n+2]))`
-/

namespace A026684.P28815575996991250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A004767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A026684.P28815575996991250

/-! ## A026684.P14830513709099661833

`A026681(A001844(n+2)+2)`
-/

namespace A026684.P14830513709099661833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A001844 (n + 2) + 2).toNat

end

end A026684.P14830513709099661833

/-! ## A026684.P2184742743044890003

`A026681(A046092(n+2)+3)`
-/

namespace A026684.P2184742743044890003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A046092 (n + 2) + 3).toNat

end

end A026684.P2184742743044890003

/-!
# A026685: T(2n-1,n-1), T given by A026681.

The programs for A026685, there is no canonical definition to state claims against.
-/

/-! ## A026685.P12009636835099209005

`A026687(Δ[n²])`
-/

namespace A026685.P12009636835099209005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026687 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026685.P12009636835099209005

/-! ## A026685.P18349552180124577487

`record[A026687(A026741(n))]`
-/

namespace A026685.P18349552180124577487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026687 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026685.P18349552180124577487

/-! ## A026685.P13821388285938708762

`record[A026687(n/A040001(n))]`
-/

namespace A026685.P13821388285938708762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026687 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026685.P13821388285938708762

/-! ## A026685.P280271084147572608

`record[A026687(n+1)/A010684(n)]`
-/

namespace A026685.P280271084147572608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 (n + 1) : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026685.P280271084147572608

/-! ## A026685.P591274799828226142

`record[A026687(n)/A153284(n+1)]`
-/

namespace A026685.P591274799828226142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 n : ℚ) / (A153284 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026685.P591274799828226142

/-! ## A026685.P7238061115994826709

`record[(2-A040001(n))*A026687(n)]`
-/

namespace A026685.P7238061115994826709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A040001 n) * A026687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026685.P7238061115994826709

/-! ## A026685.P17962555197741623114

`2*A026687(2*n+1)-A026687(2*n+1)`
-/

namespace A026685.P17962555197741623114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026687 (2 * n + 1) - A026687 (2 * n + 1)

end

end A026685.P17962555197741623114

/-! ## A026685.P3603600256610517014

`gcd(A026687(2*n+1)*A026687(n+1), A026687(2*n+1))`
-/

namespace A026685.P3603600256610517014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026687 (2 * n + 1) * A026687 (n + 1)) (A026687 (2 * n + 1))

end

end A026685.P3603600256610517014

/-! ## A026685.P16011038138694691609

`A026687(2*n+1)²/A026687(A026741(2*n+1))`
-/

namespace A026685.P16011038138694691609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026687 (2 * n + 1) ^ 2 : ℚ) / (A026687 (A026741 (2 * n + 1)).toNat : ℚ)

end

end A026685.P16011038138694691609

/-! ## A026685.P10449755908173743227

`A026681(2*(n+1)²)`
-/

namespace A026685.P10449755908173743227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (2 * (n + 1) ^ 2)

end

end A026685.P10449755908173743227

/-!
# A026686: T(2n-1,n-2), T given by A026681.

The programs for A026686, there is no canonical definition to state claims against.
-/

/-! ## A026686.P14010189608778203493

`A026681((n+1)²+(n+3)²)`
-/

namespace A026686.P14010189608778203493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A026686.P14010189608778203493

/-! ## A026686.P11872021419284681703

`record[A026681(A182455(n)-n)]`
-/

namespace A026686.P11872021419284681703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A182455 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026686.P11872021419284681703

/-! ## A026686.P5983847548553520443

`record[A026681(A005893(A103221(n)))]`
-/

namespace A026686.P5983847548553520443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A005893 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026686.P5983847548553520443

/-! ## A026686.P15455576329488494593

`A026681(A005893(n+2))%A037069(n)`
-/

namespace A026686.P15455576329488494593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026681 (A005893 (n + 2)).toNat) (A037069 n)

end

end A026686.P15455576329488494593

/-! ## A026686.P5661624199149186278

`A117964(3*n+2)+A026681(A047838(2*(n+2)))`
-/

namespace A026686.P5661624199149186278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117964 (3 * n + 2) + A026681 (A047838 (2 * (n + 2))).toNat

end

end A026686.P5661624199149186278

/-!
# A026687: T(n,[ n/2 ]), T given by A026681.

The programs for A026687, there is no canonical definition to state claims against.
-/

/-! ## A026687.P5233082403447778865

`A026681(∑[or(1, n)])`
-/

namespace A026687.P5233082403447778865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026687.P5233082403447778865

/-! ## A026687.P17130198088072563655

`A026681(A000982(n+1))`
-/

namespace A026687.P17130198088072563655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A000982 (n + 1)).toNat

end

end A026687.P17130198088072563655

/-! ## A026687.P11455209095637992287

`A026681(A030978(n+1))`
-/

namespace A026687.P11455209095637992287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A030978 (n + 1)).toNat

end

end A026687.P11455209095637992287

/-! ## A026687.P3902150131976172586

`A026681(A074133(n+1))`
-/

namespace A026687.P3902150131976172586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A074133 (n + 1)).toNat

end

end A026687.P3902150131976172586

/-! ## A026687.P4519312743438172886

`A026681(A080827(n+1))`
-/

namespace A026687.P4519312743438172886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A080827 (n + 1)).toNat

end

end A026687.P4519312743438172886

/-! ## A026687.P12262473365353560433

`A026681(A104563(n+1))`
-/

namespace A026687.P12262473365353560433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A104563 (n + 1)).toNat

end

end A026687.P12262473365353560433

/-! ## A026687.P6811659460780379835

`A026681(A099392(n+2))`
-/

namespace A026687.P6811659460780379835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A099392 (n + 2)).toNat

end

end A026687.P6811659460780379835

/-! ## A026687.P10534849989401416410

`A026681(A008619(n)+∑[n])`
-/

namespace A026687.P10534849989401416410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A008619 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026687.P10534849989401416410

/-! ## A026687.P11767751613343968037

`A026681(∑[A004525(Δ[n²])])`
-/

namespace A026687.P11767751613343968037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026687.P11767751613343968037

/-! ## A026687.P2500532843067610274

`A026681(∑[∑[A033999(n)]+n])`
-/

namespace A026687.P2500532843067610274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026687.P2500532843067610274

/-! ## A026687.P158713076279272875

`A026681(∑[n+1]-A004525(n))`
-/

namespace A026687.P158713076279272875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004525 n).toNat

end

end A026687.P158713076279272875

/-! ## A026687.P7796291292531451512

`A026681(A004525((n+1)²))`
-/

namespace A026687.P7796291292531451512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A004525 ((n + 1) ^ 2)).toNat

end

end A026687.P7796291292531451512

/-! ## A026687.P6029243579918665536

`A026681(A008619((n+1)²))`
-/

namespace A026687.P6029243579918665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (A008619 ((n + 1) ^ 2)).toNat

end

end A026687.P6029243579918665536

/-!
# A026688: T(n,0) + T(n,1) + ... + T(n,n), T given by A026681.

The programs for A026688, there is no canonical definition to state claims against.
-/

/-! ## A026688.P281217151882758901

`2/(n+2)*A026990(n)`
-/

namespace A026688.P281217151882758901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026990 n : ℚ)

end

end A026688.P281217151882758901

/-! ## A026688.P344907748192924804

`A004277(A026990(n))/(n+2)`
-/

namespace A026688.P344907748192924804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A026990 n).toNat : ℚ) / (n + 2 : ℚ)

end

end A026688.P344907748192924804

/-! ## A026688.P13944747972638744130

`A024417(A324783(n)-1)`
-/

namespace A026688.P13944747972638744130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A324783 n - 1).toNat

end

end A026688.P13944747972638744130

/-!
# A026690: a(n) = Sum{T(i,j)}, 0<=i<=n, 0<=j<=n, T given by A026681.

The programs for A026690, there is no canonical definition to state claims against.
-/

/-! ## A026690.P10967143610783256042

`∑[A026688(n)]`
-/

namespace A026690.P10967143610783256042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026690.P10967143610783256042

/-! ## A026690.P10498602545257795771

`∑[2/(n+2)*A026990(n)]`
-/

namespace A026690.P10498602545257795771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026990 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026690.P10498602545257795771

/-! ## A026690.P11429190162804484436

`record[∑[A026681(n+1)]-A268886(n+1)]`
-/

namespace A026690.P11429190162804484436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A268886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026690.P11429190162804484436

/-! ## A026690.P14117508158247246855

`∑[A004277(A026990(n))/(n+2)]`
-/

namespace A026690.P14117508158247246855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A026990 n).toNat : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026690.P14117508158247246855

/-!
# A026692: Triangular array T read by rows: T(n,0)=T(n,n)=1 for n >= 0; for n >= 2 and 1<=k<=n-1, T(n,k)=T(n-1,k-1)+T(n-2,k-1)+T(n-1,k) if k or n-k is of form 2h for h=1,2,...,[ n/4 ], else T(n,k)=T(n-1,k-1)+T(n-1,k).

The programs for A026692, there is no canonical definition to state claims against.
-/

/-! ## A026692.P13846370266939720127

`A115871(A099597(n))`
-/

namespace A026692.P13846370266939720127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A099597 n).toNat

end

end A026692.P13846370266939720127

/-! ## A026692.P3747139542659132225

`A330878(A086620(n))`
-/

namespace A026692.P3747139542659132225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A086620 n).toNat

end

end A026692.P3747139542659132225

/-! ## A026692.P5869942930024841833

`A330878(A100936(n))`
-/

namespace A026692.P5869942930024841833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A100936 n).toNat

end

end A026692.P5869942930024841833

/-! ## A026692.P15546919727874149867

`A330878(A108359(n))`
-/

namespace A026692.P15546919727874149867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A108359 n).toNat

end

end A026692.P15546919727874149867

/-! ## A026692.P14122325100083383323

`A341866(A102413(n))`
-/

namespace A026692.P14122325100083383323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A102413 n).toNat

end

end A026692.P14122325100083383323

/-!
# A026693: T(2n,n), T given by A026692.

The programs for A026693, there is no canonical definition to state claims against.
-/

/-! ## A026693.P3225235121931941313

`A026698(2*n)`
-/

namespace A026693.P3225235121931941313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (2 * n)

end

end A026693.P3225235121931941313

/-! ## A026693.P986861009574663927

`record[A026698(A014681(n))]`
-/

namespace A026693.P986861009574663927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026693.P986861009574663927

/-! ## A026693.P9290999490719213515

`record[A026698(A026741(n)+1)]`
-/

namespace A026693.P9290999490719213515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026693.P9290999490719213515

/-! ## A026693.P9135296132165206113

`record[A026698(n)/A152271(n)]`
-/

namespace A026693.P9135296132165206113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026698 n : ℚ) / (A152271 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026693.P9135296132165206113

/-! ## A026693.P9587471227242788306

`record[root(A026698(n), A000034(n))]`
-/

namespace A026693.P9587471227242788306
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026698 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026693.P9587471227242788306

/-! ## A026693.P1837972962295663162

`record[A026698(lcm(n, A056594(n)))]`
-/

namespace A026693.P1837972962295663162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026693.P1837972962295663162

/-! ## A026693.P13098005864066837867

`record[A026698(n)^(A040001(n)-1)]`
-/

namespace A026693.P13098005864066837867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026698 n : ℚ) ^ (A040001 n - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026693.P13098005864066837867

/-! ## A026693.P17460975220586243878

`lcm(A026698(A005843(n)), A040001(n))`
-/

namespace A026693.P17460975220586243878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026698 (A005843 n).toNat) (A040001 n)

end

end A026693.P17460975220586243878

/-! ## A026693.P13836950013186009511

`A026698(A005843(n))^A020513(A030665(n+1))`
-/

namespace A026693.P13836950013186009511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026698 (A005843 n).toNat : ℚ) ^ (A020513 (A030665 (n + 1)).toNat : ℤ)

end

end A026693.P13836950013186009511

/-! ## A026693.P9026343918495063219

`A026698(A005843(n))%A016090(n+1)`
-/

namespace A026693.P9026343918495063219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026698 (A005843 n).toNat) (A016090 (n + 1))

end

end A026693.P9026343918495063219

/-!
# A026694: T(2n,n-1), T given by A026692.

The programs for A026694, there is no canonical definition to state claims against.
-/

/-! ## A026694.P9949689796852533671

`A026692(∑[4*(n+1)])`
-/

namespace A026694.P9949689796852533671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026694.P9949689796852533671

/-! ## A026694.P10443715767266172829

`record[A026692(A265225(n))]`
-/

namespace A026694.P10443715767266172829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026694.P10443715767266172829

/-! ## A026694.P11035076832797561235

`record[A026692(∑[A064455(n+1)])]`
-/

namespace A026694.P11035076832797561235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026694.P11035076832797561235

/-! ## A026694.P7656818496054195289

`or(A026692(A265225(2*n+1)), A240467(n))`
-/

namespace A026694.P7656818496054195289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026692 (A265225 (2 * n + 1)).toNat) (A240467 n)

end

end A026694.P7656818496054195289

/-! ## A026694.P10885245162624765522

`or(A026692(A265225(2*n+1)), A266436(2*n))`
-/

namespace A026694.P10885245162624765522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026692 (A265225 (2 * n + 1)).toNat) (A266436 (2 * n))

end

end A026694.P10885245162624765522

/-! ## A026694.P1207266176889350248

`A240467(2*n+1)+A026692(A265225(2*n+1))`
-/

namespace A026694.P1207266176889350248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (2 * n + 1) + A026692 (A265225 (2 * n + 1)).toNat

end

end A026694.P1207266176889350248

/-!
# A026695: T(2n,n-2), T given by A026692.

The programs for A026695, there is no canonical definition to state claims against.
-/

/-! ## A026695.P14391291715876760852

`A026692(A142463(n+2))`
-/

namespace A026695.P14391291715876760852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A142463 (n + 2)).toNat

end

end A026695.P14391291715876760852

/-! ## A026695.P1093123890742781248

`A026692(A152813(n)+8)`
-/

namespace A026695.P1093123890742781248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A152813 n + 8).toNat

end

end A026695.P1093123890742781248

/-! ## A026695.P3245052168391184954

`A026692(A046092(n+2)-1)`
-/

namespace A026695.P3245052168391184954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A046092 (n + 2) - 1).toNat

end

end A026695.P3245052168391184954

/-! ## A026695.P104168064399698492

`A026692(A014105(n+2)-n+2*n+1)`
-/

namespace A026695.P104168064399698492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A014105 (n + 2) - (n : ℤ) + (2 * n + 1 : ℤ)).toNat

end

end A026695.P104168064399698492

/-! ## A026695.P15904746724621413102

`A026692(eq[4, A115717(n)])`
-/

namespace A026695.P15904746724621413102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026695.P15904746724621413102

/-!
# A026696: T(2n-1,n-1), T given by A026692.

The programs for A026696, there is no canonical definition to state claims against.
-/

/-! ## A026696.P3350506127749903632

`A026698(Δ[n²])`
-/

namespace A026696.P3350506127749903632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026696.P3350506127749903632

/-! ## A026696.P12201427657161427745

`record[A026698(xor(1, n))]`
-/

namespace A026696.P12201427657161427745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P12201427657161427745

/-! ## A026696.P17445826983145693299

`record[A026698(A004442(n))]`
-/

namespace A026696.P17445826983145693299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P17445826983145693299

/-! ## A026696.P17230109976684023478

`record[A026698(A026741(n))]`
-/

namespace A026696.P17230109976684023478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P17230109976684023478

/-! ## A026696.P754526744992065732

`record[A026698(A000265(n+1))]`
-/

namespace A026696.P754526744992065732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P754526744992065732

/-! ## A026696.P11811640471140584902

`record[A026698(A014681(n)+1)]`
-/

namespace A026696.P11811640471140584902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P11811640471140584902

/-! ## A026696.P15632251690348155318

`record[A026698(A193356(n+1))]`
-/

namespace A026696.P15632251690348155318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A193356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P15632251690348155318

/-! ## A026696.P17381295320456809441

`record[A026698(n*A000035(n))]`
-/

namespace A026696.P17381295320456809441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P17381295320456809441

/-! ## A026696.P17016159093415730140

`record[A026698(n/A040001(n))]`
-/

namespace A026696.P17016159093415730140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P17016159093415730140

/-! ## A026696.P7425990083012772686

`record[A026698(n/A000034(n+1))]`
-/

namespace A026696.P7425990083012772686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (SequenceMachineLib.roundAway ((n : ℚ) / (A000034 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P7425990083012772686

/-! ## A026696.P1158609047057824675

`record[A026698(n)/A152271(n+1)]`
-/

namespace A026696.P1158609047057824675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026698 n : ℚ) / (A152271 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P1158609047057824675

/-! ## A026696.P4672188909584368416

`record[(2-A040001(n))*A026698(n)]`
-/

namespace A026696.P4672188909584368416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A040001 n) * A026698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P4672188909584368416

/-! ## A026696.P13945672877323804568

`record[lcm(A026698(n+1), A056594(n))]`
-/

namespace A026696.P13945672877323804568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026698 (n + 1)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026696.P13945672877323804568

/-! ## A026696.P6110384148310816601

`lcm(A026698(A005408(n)), A299152(n+1))`
-/

namespace A026696.P6110384148310816601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026698 (A005408 n).toNat) (A299152 (n + 1))

end

end A026696.P6110384148310816601

/-! ## A026696.P13066106198390808097

`A026698(A005408(n))*A299152(A005408(n))`
-/

namespace A026696.P13066106198390808097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026698 (A005408 n).toNat * A299152 (A005408 n).toNat

end

end A026696.P13066106198390808097

/-! ## A026696.P4885442428075513587

`A026698(A040001(n)+A005843(n))/A040001(n)`
-/

namespace A026696.P4885442428075513587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026698 (A040001 n + A005843 n).toNat : ℚ) / (A040001 n : ℚ)

end

end A026696.P4885442428075513587

/-! ## A026696.P739285300776217147

`2*A026698(2*n+1)-A026698(2*n+1)`
-/

namespace A026696.P739285300776217147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026698 (2 * n + 1) - A026698 (2 * n + 1)

end

end A026696.P739285300776217147

/-! ## A026696.P16052234264498501722

`2*A026698(2*n+1)/A000034(2*n+1)`
-/

namespace A026696.P16052234264498501722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A026698 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A026696.P16052234264498501722

/-! ## A026696.P4516965074260304009

`A026698(A005408(n))/A299152(A005408(n)²)`
-/

namespace A026696.P4516965074260304009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026698 (A005408 n).toNat : ℚ) / (A299152 (A005408 n ^ 2).toNat : ℚ)

end

end A026696.P4516965074260304009

/-!
# A026697: T(2n-1,n-2), T given by A026692.

The programs for A026697, there is no canonical definition to state claims against.
-/

/-! ## A026697.P5685674368629997248

`A026692((n+1)²+(n+3)²)`
-/

namespace A026697.P5685674368629997248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A026697.P5685674368629997248

/-! ## A026697.P17542496752983072522

`record[A026692(eq[0, A240821(n+1)])]`
-/

namespace A026697.P17542496752983072522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026697.P17542496752983072522

/-! ## A026697.P464621479804719443

`record[A026692(A074148((n+1)/2^val(n+1, 2)))]`
-/

namespace A026697.P464621479804719443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A074148 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026697.P464621479804719443

/-! ## A026697.P6863624762651223938

`record[A026692(A056220(val(n+1, 2)+2))]`
-/

namespace A026697.P6863624762651223938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A056220 (SequenceMachineLib.valuation (n + 1) 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026697.P6863624762651223938

/-!
# A026698: a(n) = T(n,[ n/2 ]), T given by A026692.

The programs for A026698, there is no canonical definition to state claims against.
-/

/-! ## A026698.P1748224609308727478

`A026692(A000982(n+1))`
-/

namespace A026698.P1748224609308727478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A000982 (n + 1)).toNat

end

end A026698.P1748224609308727478

/-! ## A026698.P422118024026062388

`A026692(A030978(n+1))`
-/

namespace A026698.P422118024026062388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A030978 (n + 1)).toNat

end

end A026698.P422118024026062388

/-! ## A026698.P2656596699631486688

`A026692(A074133(n+1))`
-/

namespace A026698.P2656596699631486688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A074133 (n + 1)).toNat

end

end A026698.P2656596699631486688

/-! ## A026698.P15560356098969802283

`A026692(A080827(n+1))`
-/

namespace A026698.P15560356098969802283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A080827 (n + 1)).toNat

end

end A026698.P15560356098969802283

/-! ## A026698.P920078993322049720

`A026692(A104563(n+1))`
-/

namespace A026698.P920078993322049720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A104563 (n + 1)).toNat

end

end A026698.P920078993322049720

/-! ## A026698.P10240494964173225103

`A026692(A099392(n+2))`
-/

namespace A026698.P10240494964173225103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A099392 (n + 2)).toNat

end

end A026698.P10240494964173225103

/-! ## A026698.P7250196130703236712

`A026692(A074148(n+1)-n)`
-/

namespace A026698.P7250196130703236712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (A074148 (n + 1) - (n : ℤ)).toNat

end

end A026698.P7250196130703236712

/-!
# A026699: T(n,0) + T(n,1) + ... + T(n,n), T given by A026692.

The programs for A026699, there is no canonical definition to state claims against.
-/

/-! ## A026699.P8176659433531270239

`2/(n+2)*A026995(n)`
-/

namespace A026699.P8176659433531270239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A026995 n : ℚ)

end

end A026699.P8176659433531270239

/-! ## A026699.P5039576584064983774

`(A026995(n)/(n/2+1))%A162009(n+1)`
-/

namespace A026699.P5039576584064983774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A026995 n : ℚ) / ((n : ℚ) / 2 + 1))) (A162009 (n + 1))

end

end A026699.P5039576584064983774

/-! ## A026699.P7930061574538657680

`A000027(A026995(n)/(n/2+1))`
-/

namespace A026699.P7930061574538657680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A026995 n : ℚ) / ((n : ℚ) / 2 + 1))).toNat

end

end A026699.P7930061574538657680

/-! ## A026699.P3572516262310245921

`A383074(A116704(n+1))`
-/

namespace A026699.P3572516262310245921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383074 (A116704 (n + 1)).toNat

end

end A026699.P3572516262310245921

