import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A323000: Digits of the 2-adic integer 3^(1/3).

The programs for A323000, there is no canonical definition to state claims against.
-/

/-! ## A323000.P11682426223903762605

`(A322701(n+1)-A322701(n))/2^n`
-/

namespace A323000.P11682426223903762605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322701 (n + 1) - A322701 n : ℚ) / (2 ^ n : ℚ)

end

end A323000.P11682426223903762605

/-! ## A323000.P5057634671540116136

`ceil(Δ[atan(A322701(n))])`
-/

namespace A323000.P5057634671540116136
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A322701 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A323000.P5057634671540116136

/-! ## A323000.P3712675817416929532

`floor(A322701(n+1)/2^n)`
-/

namespace A323000.P3712675817416929532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322701 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A323000.P3712675817416929532

/-! ## A323000.P15082142651535736675

`Δ[A322701(n)]/A000079(n)`
-/

namespace A323000.P15082142651535736675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322701 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A323000.P15082142651535736675

/-! ## A323000.P4254929232809172613

`Δ[A322701(n)]/A077957(2*n)`
-/

namespace A323000.P4254929232809172613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322701 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A077957 (2 * n) : ℚ)

end

end A323000.P4254929232809172613

/-! ## A323000.P2234490281597405631

`A000045(Δ[A322701(n)]/2^n)`
-/

namespace A323000.P2234490281597405631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A323000.P2234490281597405631

/-!
# A323002: Numbers k such that 355*2^k+1 is prime.

The programs for A323002, there is no canonical definition to state claims against.
-/

/-! ## A323002.P14806419005918315553

`A001670(A270840(n+1)+n)`
-/

namespace A323002.P14806419005918315553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A270840 (n + 1) + (n : ℤ)).toNat

end

end A323002.P14806419005918315553

/-! ## A323002.P17019174025230193588

`A169707(n+2)+A169697(A018008(n))`
-/

namespace A323002.P17019174025230193588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 2) + A169697 (A018008 n).toNat

end

end A323002.P17019174025230193588

/-!
# A323006: Numbers k such that 363*2^k+1 is prime.

The programs for A323006, there is no canonical definition to state claims against.
-/

/-! ## A323006.P2984357247047862303

`A298981(A303346(n))`
-/

namespace A323006.P2984357247047862303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298981 (A303346 n).toNat

end

end A323006.P2984357247047862303

/-! ## A323006.P12803023782167276332

`A069637(A346766(n))+A029930(n)`
-/

namespace A323006.P12803023782167276332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069637 (A346766 n).toNat + A029930 n

end

end A323006.P12803023782167276332

/-! ## A323006.P8289627328858540627

`A324338(A032122(n))-A339376(n)`
-/

namespace A323006.P8289627328858540627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A032122 n).toNat - A339376 n

end

end A323006.P8289627328858540627

/-!
# A323008: Numbers k such that 367*2^k+1 is prime.

The programs for A323008, there is no canonical definition to state claims against.
-/

/-! ## A323008.P565392107481181879

`12*A333627(3*(n²+n)+1)`
-/

namespace A323008.P565392107481181879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A333627 (3 * (n ^ 2 + n) + 1)

end

end A323008.P565392107481181879

/-!
# A323011: a(n) = A172103(n) - A172104(n).

The programs for A323011, the canonical program `A323011.P8265024053046190997` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323011 has offset 1).

The definition of A323011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172103, A172104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323011.P8265024053046190997

`A172103(n+1)-A172104(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323011

/-- `A172103(n+1)-A172104(n+1)` -/
def P8265024053046190997.Spec : Prop :=
  ∀ n, P8265024053046190997.a n = A323011 (n + 1)

theorem P8265024053046190997.correct : P8265024053046190997.Spec := by
  intro n
  simp only [A323011, Nat.add_sub_cancel]

end A323011

/-! ## A323011.P5691772265503547750

`abs(A156709(2*(n+1)))`
-/

namespace A323011.P5691772265503547750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156709 (2 * (n + 1))|

end

end A323011.P5691772265503547750

namespace A323011

/-- `abs(A156709(2*(n+1)))` -/
def P5691772265503547750.Spec : Prop :=
  ∀ n, P5691772265503547750.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P17050373396435719733

`-A156709(2*n+2)`
-/

namespace A323011.P17050373396435719733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156709 (2 * n + 2)

end

end A323011.P17050373396435719733

namespace A323011

/-- `-A156709(2*n+2)` -/
def P17050373396435719733.Spec : Prop :=
  ∀ n, P17050373396435719733.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P14414802343628617711

`A340767(n)-1-∑[C(2, ∏{e}[5*n+n+7, #+1])]`
-/

namespace A323011.P14414802343628617711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (n + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340767 n - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A323011.P14414802343628617711

namespace A323011

/-- `A340767(n)-1-∑[C(2, ∏{e}[5*n+n+7, #+1])]` -/
def P14414802343628617711.Spec : Prop :=
  ∀ n, P14414802343628617711.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P16108136903077533624

`A000196(A156709(2*(n+1))²)`
-/

namespace A323011.P16108136903077533624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A156709 (2 * (n + 1)) ^ 2).toNat

end

end A323011.P16108136903077533624

namespace A323011

/-- `A000196(A156709(2*(n+1))²)` -/
def P16108136903077533624.Spec : Prop :=
  ∀ n, P16108136903077533624.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P15381257187984654207

`A063524(n+2)-A156709(2*n+2)`
-/

namespace A323011.P15381257187984654207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) - A156709 (2 * n + 2)

end

end A323011.P15381257187984654207

namespace A323011

/-- `A063524(n+2)-A156709(2*n+2)` -/
def P15381257187984654207.Spec : Prop :=
  ∀ n, P15381257187984654207.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P16534386787053686247

`A000007(n+1)-A156709(2*(n+1))`
-/

namespace A323011.P16534386787053686247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A156709 (2 * (n + 1))

end

end A323011.P16534386787053686247

namespace A323011

/-- `A000007(n+1)-A156709(2*(n+1))` -/
def P16534386787053686247.Spec : Prop :=
  ∀ n, P16534386787053686247.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P3326085728082019458

`A001222((1/2)^A156709(2*(n+1)))`
-/

namespace A323011.P3326085728082019458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((1 : ℚ) / 2) ^ (A156709 (2 * (n + 1)) : ℤ))).toNat

end

end A323011.P3326085728082019458

namespace A323011

/-- `A001222((1/2)^A156709(2*(n+1)))` -/
def P3326085728082019458.Spec : Prop :=
  ∀ n, P3326085728082019458.a n = A323011 (n + 1)

end A323011

/-! ## A323011.P12772505350590869645

`∑[-(A280314(n+1)%2)]`
-/

namespace A323011.P12772505350590869645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A280314 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323011.P12772505350590869645

namespace A323011

/-- `∑[-(A280314(n+1)%2)]` -/
def P12772505350590869645.Spec : Prop :=
  ∀ n, P12772505350590869645.a n = A323011 (n + 1)

end A323011

/-!
# A323012: a(n) = (1/sqrt(n^2+1)) * T_{2*n+1}(sqrt(n^2+1)) where T_{n}(x) is a Chebyshev polynomial of the first kind.

The programs for A323012, there is no canonical definition to state claims against.
-/

/-! ## A323012.P171323238076001783

`A084845(A028310(2*n))`
-/

namespace A323012.P171323238076001783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084845 (A028310 (2 * n)).toNat

end

end A323012.P171323238076001783

/-! ## A323012.P3914800595429304183

`A084845(eq[5, A271091(n)])`
-/

namespace A323012.P3914800595429304183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323012.P3914800595429304183

/-! ## A323012.P4477787455652065816

`A084845(A028310(n)+n)`
-/

namespace A323012.P4477787455652065816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084845 (A028310 n + (n : ℤ)).toNat

end

end A323012.P4477787455652065816

/-! ## A323012.P15676172401745366047

`A117715(A034856(Δ[n²]))`
-/

namespace A323012.P15676172401745366047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117715 (A034856 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A323012.P15676172401745366047

/-! ## A323012.P18070471320112028587

`A084845(lt[n, A266258(n)])`
-/

namespace A323012.P18070471320112028587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084845 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A323012.P18070471320112028587

/-!
# A323014: a(1) = 0; a(prime) = 1; otherwise a(n) = 1 + a(A181819(n)).

The programs for A323014, the canonical program `A323014.P15768753901453877617` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323014 has offset 1).

The definition of A323014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323014.P8377160546569152234

`A182850(char[1]+1+n)`
-/

namespace A323014.P8377160546569152234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A323014.P8377160546569152234

namespace A323014

/-- `A182850(char[1]+1+n)` -/
def P8377160546569152234.Spec : Prop :=
  ∀ n, P8377160546569152234.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P5078292682764220812

`ceil(A304455(n+1)+abs(sin(n)))`
-/

namespace A323014.P5078292682764220812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304455 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A323014.P5078292682764220812

namespace A323014

/-- `ceil(A304455(n+1)+abs(sin(n)))` -/
def P5078292682764220812.Spec : Prop :=
  ∀ n, P5078292682764220812.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P15768753901453877617

`A182850(n+1)+C(C(2, n), 2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323014

/-- `A182850(n+1)+C(C(2, n), 2)` -/
def P15768753901453877617.Spec : Prop :=
  ∀ n, P15768753901453877617.a n = A323014 (n + 1)

theorem P15768753901453877617.correct : P15768753901453877617.Spec := by
  intro n
  simp only [A323014, Nat.add_sub_cancel]

end A323014

/-! ## A323014.P18197950335866453678

`A182850(n+1)+A063524(n)`
-/

namespace A323014.P18197950335866453678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1) + A063524 n

end

end A323014.P18197950335866453678

namespace A323014

/-- `A182850(n+1)+A063524(n)` -/
def P18197950335866453678.Spec : Prop :=
  ∀ n, P18197950335866453678.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P18226080601274964170

`A304455(n+1)+A057427(n)`
-/

namespace A323014.P18226080601274964170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A057427 n

end

end A323014.P18226080601274964170

namespace A323014

/-- `A304455(n+1)+A057427(n)` -/
def P18226080601274964170.Spec : Prop :=
  ∀ n, P18226080601274964170.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P6647485426994381935

`A182850(n+1)-A159075(n)`
-/

namespace A323014.P6647485426994381935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1) - A159075 n

end

end A323014.P6647485426994381935

namespace A323014

/-- `A182850(n+1)-A159075(n)` -/
def P6647485426994381935.Spec : Prop :=
  ∀ n, P6647485426994381935.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P9375040591265894161

`A304455(n+1)-A057428(n)`
-/

namespace A323014.P9375040591265894161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) - A057428 n

end

end A323014.P9375040591265894161

namespace A323014

/-- `A304455(n+1)-A057428(n)` -/
def P9375040591265894161.Spec : Prop :=
  ∀ n, P9375040591265894161.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P10041072799673072232

`A304455(n+1)+1-A000007(n)`
-/

namespace A323014.P10041072799673072232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + (1 - A000007 n)

end

end A323014.P10041072799673072232

namespace A323014

/-- `A304455(n+1)+1-A000007(n)` -/
def P10041072799673072232.Spec : Prop :=
  ∀ n, P10041072799673072232.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P10538505702554580619

`A304455(n+1)+n/A028310(n)`
-/

namespace A323014.P10538505702554580619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304455 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A323014.P10538505702554580619

namespace A323014

/-- `A304455(n+1)+n/A028310(n)` -/
def P10538505702554580619.Spec : Prop :=
  ∀ n, P10538505702554580619.a n = (A323014 (n + 1) : ℚ)

end A323014

/-! ## A323014.P258433550768102664

`A304455(n+1)+A000040(n+1)%2`
-/

namespace A323014.P258433550768102664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A323014.P258433550768102664

namespace A323014

/-- `A304455(n+1)+A000040(n+1)%2` -/
def P258433550768102664.Spec : Prop :=
  ∀ n, P258433550768102664.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P5839319168545525411

`A304455(n+1)+A157928(n+1)`
-/

namespace A323014.P5839319168545525411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A157928 (n + 1)

end

end A323014.P5839319168545525411

namespace A323014

/-- `A304455(n+1)+A157928(n+1)` -/
def P5839319168545525411.Spec : Prop :=
  ∀ n, P5839319168545525411.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P1443182666281460463

`A304455(n+1)+A182850(n+2)-A304455(n+2)`
-/

namespace A323014.P1443182666281460463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + (A182850 (n + 2) - A304455 (n + 2))

end

end A323014.P1443182666281460463

namespace A323014

/-- `A304455(n+1)+A182850(n+2)-A304455(n+2)` -/
def P1443182666281460463.Spec : Prop :=
  ∀ n, P1443182666281460463.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P14746354495489526640

`A065475(A065475(n+1))+A304455(n+1)-A065475(n+1)`
-/

namespace A323014.P14746354495489526640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A065475 (n + 1)).toNat + (A304455 (n + 1) - A065475 (n + 1))

end

end A323014.P14746354495489526640

namespace A323014

/-- `A065475(A065475(n+1))+A304455(n+1)-A065475(n+1)` -/
def P14746354495489526640.Spec : Prop :=
  ∀ n, P14746354495489526640.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P1963795019947265686

`ceil(A304455(n+1)+n/A000041(n))`
-/

namespace A323014.P1963795019947265686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304455 (n + 1) : ℚ) + (n : ℚ) / (A000041 n : ℚ)⌉

end

end A323014.P1963795019947265686

namespace A323014

/-- `ceil(A304455(n+1)+n/A000041(n))` -/
def P1963795019947265686.Spec : Prop :=
  ∀ n, P1963795019947265686.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P13662228511995622212

`A304455(n+1)+A001222(record[A014963(n+1)])`
-/

namespace A323014.P13662228511995622212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1) + A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323014.P13662228511995622212

namespace A323014

/-- `A304455(n+1)+A001222(record[A014963(n+1)])` -/
def P13662228511995622212.Spec : Prop :=
  ∀ n, P13662228511995622212.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P9215321684139210746

`A182850(A003961(n+1))%6`
-/

namespace A323014.P9215321684139210746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182850 (A003961 (n + 1)).toNat) 6

end

end A323014.P9215321684139210746

namespace A323014

/-- `A182850(A003961(n+1))%6` -/
def P9215321684139210746.Spec : Prop :=
  ∀ n, P9215321684139210746.a n = A323014 (n + 1)

end A323014

/-! ## A323014.P17161629731844754433

`gcd(A119944(n), A182850(n+1))`
-/

namespace A323014.P17161629731844754433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119944 n) (A182850 (n + 1))

end

end A323014.P17161629731844754433

namespace A323014

/-- `gcd(A119944(n), A182850(n+1))` -/
def P17161629731844754433.Spec : Prop :=
  ∀ n, (P17161629731844754433.a n : ℤ) = A323014 (n + 1)

end A323014

/-!
# A323015: a(n) is the number of unordered partitions of 24*n + 4 into four squares of primes (A001248).

The programs for A323015, there is no canonical definition to state claims against.
-/

/-! ## A323015.P18003737641609257069

`A054895(A163380(n+1)%A006814(n+1))`
-/

namespace A323015.P18003737641609257069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (Int.tmod (A163380 (n + 1)) (A006814 (n + 1))).toNat

end

end A323015.P18003737641609257069

/-! ## A323015.P12670662803363536485

`A054895(A163380(n+1))%A323016(3*n+4)`
-/

namespace A323015.P12670662803363536485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054895 (A163380 (n + 1)).toNat) (A323016 (3 * n + 4))

end

end A323015.P12670662803363536485

/-!
# A323017: T(n,k) = A321477(n,k)/A321476(n,k), 0 <= k <= n - 1.

The programs for A323017, there is no canonical definition to state claims against.
-/

/-! ## A323017.P14878462863091689605

`A321477(n+1)/A321476(n+1)`
-/

namespace A323017.P14878462863091689605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321477 (n + 1) : ℚ) / (A321476 (n + 1) : ℚ)

end

end A323017.P14878462863091689605

/-!
# A323018: T(n,k) = A321479(n,k)/A321478(n,k), 0 <= k <= n - 1.

The programs for A323018, there is no canonical definition to state claims against.
-/

/-! ## A323018.P16325616942121502294

`A321479(n+1)/A321478(n+1)`
-/

namespace A323018.P16325616942121502294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321479 (n + 1) : ℚ) / (A321478 (n + 1) : ℚ)

end

end A323018.P16325616942121502294

/-! ## A323018.P17035723308849866302

`A002828(A321478(n+1)*A321479(n+1))`
-/

namespace A323018.P17035723308849866302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A321478 (n + 1) * A321479 (n + 1)).toNat

end

end A323018.P17035723308849866302

/-! ## A323018.P3641745236743401728

`A007913(A321478(n+1)*A321479(n+1))`
-/

namespace A323018.P3641745236743401728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A321478 (n + 1) * A321479 (n + 1)).toNat

end

end A323018.P3641745236743401728

/-! ## A323018.P13412682919432776776

`A072400(A321478(n+1)*A321479(n+1))`
-/

namespace A323018.P13412682919432776776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (A321478 (n + 1) * A321479 (n + 1)).toNat

end

end A323018.P13412682919432776776

/-! ## A323018.P15936962437602484580

`A000032(C(A321478(n+1), A321479(n+1)))`
-/

namespace A323018.P15936962437602484580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (A321478 (n + 1)).toNat (A321479 (n + 1)).toNat)

end

end A323018.P15936962437602484580

/-! ## A323018.P8042836513605825817

`A006530(2-C(A321478(n+1), A321479(n+1)))`
-/

namespace A323018.P8042836513605825817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 - Nat.choose (A321478 (n + 1)).toNat (A321479 (n + 1)).toNat)

end

end A323018.P8042836513605825817

/-! ## A323018.P11997575937226779773

`A020639(3*(C(A321478(n+1), A321479(n+1))+1))-1`
-/

namespace A323018.P11997575937226779773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (Nat.choose (A321478 (n + 1)).toNat (A321479 (n + 1)).toNat + 1)) - 1

end

end A323018.P11997575937226779773

/-! ## A323018.P11716318271002995495

`A006530(C(A321478(n+1), A321479(n+1))+1)%2+1`
-/

namespace A323018.P11716318271002995495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (Nat.choose (A321478 (n + 1)).toNat (A321479 (n + 1)).toNat + 1)) 2 + 1

end

end A323018.P11716318271002995495

/-!
# A323019: a(n) is the smallest k such that A316506(k) = n.

The programs for A323019, there is no canonical definition to state claims against.
-/

/-! ## A323019.P10474211707173018975

`∏{e}[A003266(n+2), #+1]`
-/

namespace A323019.P10474211707173018975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A323019.P10474211707173018975

/-! ## A323019.P8795447388354793145

`∏{e}[∏[∑[A206743(n)]], #+1]`
-/

namespace A323019.P8795447388354793145
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A323019.P8795447388354793145

/-! ## A323019.P8925387281957695687

`A052273(A100737(n))`
-/

namespace A323019.P8925387281957695687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052273 (A100737 n).toNat

end

end A323019.P8925387281957695687

/-!
# A323020: a(n) is the smallest k such that A319447(k) = n.

The programs for A323020, there is no canonical definition to state claims against.
-/

/-! ## A323020.P11167030517836090662

`xor(ceil(n²/2), A276571(4^n))`
-/

namespace A323020.P11167030517836090662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(n ^ 2 : ℚ) / 2⌉ (A276571 (4 ^ n))

end

end A323020.P11167030517836090662

/-! ## A323020.P14941570356818050292

`A057038(A270560(n))`
-/

namespace A323020.P14941570356818050292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057038 (A270560 n).toNat

end

end A323020.P14941570356818050292

/-! ## A323020.P8641471948331597970

`∑[A121152(A002088(n))]`
-/

namespace A323020.P8641471948331597970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121152 (A002088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323020.P8641471948331597970

/-!
# A323022: Fourth omega of n. Number of distinct multiplicities in the prime signature of n.

The programs for A323022, the canonical program `A323022.P6053631746369652088` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323022 has offset 1).

The definition of A323022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071625, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323022.P6053631746369652088

`A071625(A181819(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A323022

/-- `A071625(A181819(n+1))` -/
def P6053631746369652088.Spec : Prop :=
  ∀ n, P6053631746369652088.a n = A323022 (n + 1)

theorem P6053631746369652088.correct : P6053631746369652088.Spec := by
  intro n
  simp only [A323022, Nat.add_sub_cancel]

end A323022

/-! ## A323022.P17545121793320217134

`ceil(A323014(n+1)/4)`
-/

namespace A323022.P17545121793320217134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A323014 (n + 1) : ℚ) / 4⌉

end

end A323022.P17545121793320217134

namespace A323022

/-- `ceil(A323014(n+1)/4)` -/
def P17545121793320217134.Spec : Prop :=
  ∀ n, P17545121793320217134.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P711453155243173671

`∑{p}[A328830(n+1), A000688(#)]`
-/

namespace A323022.P711453155243173671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 p

end

end A323022.P711453155243173671

namespace A323022

/-- `∑{p}[A328830(n+1), A000688(#)]` -/
def P711453155243173671.Spec : Prop :=
  ∀ n, P711453155243173671.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P17939728964602062082

`∑{p}[A328830(n+1), A008289(#)]`
-/

namespace A323022.P17939728964602062082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008289 p

end

end A323022.P17939728964602062082

namespace A323022

/-- `∑{p}[A328830(n+1), A008289(#)]` -/
def P17939728964602062082.Spec : Prop :=
  ∀ n, P17939728964602062082.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P992210222010263778

`∑{p}[A328830(n+1), A028234(#)]`
-/

namespace A323022.P992210222010263778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A028234 p

end

end A323022.P992210222010263778

namespace A323022

/-- `∑{p}[A328830(n+1), A028234(#)]` -/
def P992210222010263778.Spec : Prop :=
  ∀ n, P992210222010263778.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P2154598142745353350

`A071625(∏{e}[n+1, A000040(#)])`
-/

namespace A323022.P2154598142745353350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A323022.P2154598142745353350

namespace A323022

/-- `A071625(∏{e}[n+1, A000040(#)])` -/
def P2154598142745353350.Spec : Prop :=
  ∀ n, P2154598142745353350.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P666527725930348467

`A071625(∏{e}[n+1, A095285(#)])`
-/

namespace A323022.P666527725930348467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat

end

end A323022.P666527725930348467

namespace A323022

/-- `A071625(∏{e}[n+1, A095285(#)])` -/
def P666527725930348467.Spec : Prop :=
  ∀ n, P666527725930348467.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P1212775328331718356

`A071625(∏{e}[n+1, A127052(#)])`
-/

namespace A323022.P1212775328331718356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (∏ p ∈ Nat.primeFactors (f1 n), A127052 (Nat.factorization (f1 n) p)).toNat

end

end A323022.P1212775328331718356

namespace A323022

/-- `A071625(∏{e}[n+1, A127052(#)])` -/
def P1212775328331718356.Spec : Prop :=
  ∀ n, P1212775328331718356.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P1047855090066204398

`∑{p}[A181819(A181819(n+1)), A001222(#)]`
-/

namespace A323022.P1047855090066204398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A323022.P1047855090066204398

namespace A323022

/-- `∑{p}[A181819(A181819(n+1)), A001222(#)]` -/
def P1047855090066204398.Spec : Prop :=
  ∀ n, P1047855090066204398.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P15361289123436487350

`A001221(A181819(A181819(n+1)%(n+2)))`
-/

namespace A323022.P15361289123436487350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181819 (Int.tmod (A181819 (n + 1)) (n + 2 : ℤ)).toNat).toNat

end

end A323022.P15361289123436487350

namespace A323022

/-- `A001221(A181819(A181819(n+1)%(n+2)))` -/
def P15361289123436487350.Spec : Prop :=
  ∀ n, P15361289123436487350.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P13791033794047647771

`∑{p}[A181819(A181819(n+1)), A036036(#+1)]`
-/

namespace A323022.P13791033794047647771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A181819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A036036 (p + 1)

end

end A323022.P13791033794047647771

namespace A323022

/-- `∑{p}[A181819(A181819(n+1)), A036036(#+1)]` -/
def P13791033794047647771.Spec : Prop :=
  ∀ n, P13791033794047647771.a n = A323022 (n + 1)

end A323022

/-! ## A323022.P6417778691563948424

`A124766(∑{e}[∏{p}[n+1, #], #]^∏{e}[n+1, #])`
-/

namespace A323022.P6417778691563948424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

end

end A323022.P6417778691563948424

namespace A323022

/-- `A124766(∑{e}[∏{p}[n+1, #], #]^∏{e}[n+1, #])` -/
def P6417778691563948424.Spec : Prop :=
  ∀ n, P6417778691563948424.a n = A323022 (n + 1)

end A323022

/-!
# A323023: Irregular triangle read by rows where row n is the omega-sequence of n.

The programs for A323023, there is no canonical definition to state claims against.
-/

/-! ## A323023.P7015059602117011617

`∑{e}[A325277(n+2), #]`
-/

namespace A323023.P7015059602117011617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325277 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A323023.P7015059602117011617

/-! ## A323023.P8461270250212177668

`A001222(A325277(n+2))`
-/

namespace A323023.P8461270250212177668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325277 (n + 2)).toNat

end

end A323023.P8461270250212177668

/-! ## A323023.P1363725854824955982

`A318369(n+1)+A289035(A288732(2*(n+2)))`
-/

namespace A323023.P1363725854824955982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318369 (n + 1) + A289035 (A288732 (2 * (n + 2))).toNat

end

end A323023.P1363725854824955982

/-! ## A323023.P13131827921075104202

`A193773(lt[A364037(n+2), A128515(2*n+3)])`
-/

namespace A323023.P13131827921075104202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364037 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128515 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323023.P13131827921075104202

/-! ## A323023.P17871408263487696948

`A305501(A002473(3*(n+1))+A001452(n))`
-/

namespace A323023.P17871408263487696948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A002473 (3 * (n + 1)) + A001452 n).toNat

end

end A323023.P17871408263487696948

/-!
# A323024: Numbers with exactly three distinct exponents in their prime factorization, or three distinct parts in their prime signature.

The programs for A323024, the canonical program `A323024.P6146555268534560258` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323024 has offset 1).

The definition of A323024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323024.P4670559818414346681

`eq[3, A071625(round(acot(n)+n))]`
-/

namespace A323024.P4670559818414346681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323024.P4670559818414346681

namespace A323024

/-- `eq[3, A071625(round(acot(n)+n))]` -/
def P4670559818414346681.Spec : Prop :=
  ∀ n, (P4670559818414346681.a n : ℤ) = A323024 (n + 1)

end A323024

/-! ## A323024.P6146555268534560258

`lt[2, A071625(A028310(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A323024

/-- `lt[2, A071625(A028310(n))]` -/
def P6146555268534560258.Spec : Prop :=
  ∀ n, (P6146555268534560258.a n : ℤ) = A323024 (n + 1)

theorem P6146555268534560258.correct : P6146555268534560258.Spec := by
  intro n
  simp only [A323024, Nat.add_sub_cancel]

end A323024

/-! ## A323024.P17660099433327929809

`A020725(eq[3, A071625(n+1)])`
-/

namespace A323024.P17660099433327929809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323024.P17660099433327929809

namespace A323024

/-- `A020725(eq[3, A071625(n+1)])` -/
def P17660099433327929809.Spec : Prop :=
  ∀ n, P17660099433327929809.a n = A323024 (n + 1)

end A323024

/-! ## A323024.P11804565175342890763

`filter[A383516(n+1), A092248(#)]`
-/

namespace A323024.P11804565175342890763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A323024.P11804565175342890763

namespace A323024

/-- `filter[A383516(n+1), A092248(#)]` -/
def P11804565175342890763.Spec : Prop :=
  ∀ n, P11804565175342890763.a n = A323024 (n + 1)

end A323024

/-! ## A323024.P6246754188059333804

`filter[A383516(n+1), A353674(#)]`
-/

namespace A323024.P6246754188059333804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A323024.P6246754188059333804

namespace A323024

/-- `filter[A383516(n+1), A353674(#)]` -/
def P6246754188059333804.Spec : Prop :=
  ∀ n, P6246754188059333804.a n = A323024 (n + 1)

end A323024

/-!
# A323035: Records in A321223.

The programs for A323035, there is no canonical definition to state claims against.
-/

/-! ## A323035.P12448718940641895005

`A321223(A323034(n+1))`
-/

namespace A323035.P12448718940641895005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321223 (A323034 (n + 1)).toNat

end

end A323035.P12448718940641895005

/-! ## A323035.P7548520351655489400

`lt[A015951(n+1), A000265(A020477(n+1))]`
-/

namespace A323035.P7548520351655489400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A020477 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A323035.P7548520351655489400

/-!
# A323037: Coefficients arising in the enumeration of configurations of linear chains.

The programs for A323037, there is no canonical definition to state claims against.
-/

/-! ## A323037.P6563592500067372854

`A002264(A094865(n)*A324969(n+2))`
-/

namespace A323037.P6563592500067372854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A094865 n * A324969 (n + 2)).toNat

end

end A323037.P6563592500067372854

/-! ## A323037.P8045835104236283037

`A002264(lcm(A094865(n), A324969(n+2)))`
-/

namespace A323037.P8045835104236283037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lcm (A094865 n) (A324969 (n + 2)))

end

end A323037.P8045835104236283037

/-! ## A323037.P2640432946008917482

`A002264((A147748(n)-A033193(n))*A324969(n+2))`
-/

namespace A323037.P2640432946008917482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((A147748 n - A033193 n) * A324969 (n + 2)).toNat

end

end A323037.P2640432946008917482

/-!
# A323042: Numbers k such that 395*2^k+1 is prime.

The programs for A323042, there is no canonical definition to state claims against.
-/

/-! ## A323042.P10935907842471913888

`A168300(A078154(n+1))`
-/

namespace A323042.P10935907842471913888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168300 (A078154 (n + 1)).toNat

end

end A323042.P10935907842471913888

/-!
# A323043: Numbers k such that 397*2^k+1 is prime.

The programs for A323043, there is no canonical definition to state claims against.
-/

/-! ## A323043.P14702849414564143401

`A350656(A168219(2*(n+1))+A010054(2*n+3))`
-/

namespace A323043.P14702849414564143401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350656 (A168219 (2 * (n + 1)) + A010054 (2 * n + 3)).toNat

end

end A323043.P14702849414564143401

/-!
# A323045: Digits of the 2-adic integer 5^(1/3).

The programs for A323045, there is no canonical definition to state claims against.
-/

/-! ## A323045.P12249271593823843108

`(A322926(n+1)-A322926(n))/2^n`
-/

namespace A323045.P12249271593823843108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322926 (n + 1) - A322926 n : ℚ) / (2 ^ n : ℚ)

end

end A323045.P12249271593823843108

/-! ## A323045.P9831010884015016969

`ceil(Δ[atan(A322926(n))])`
-/

namespace A323045.P9831010884015016969
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A322926 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A323045.P9831010884015016969

/-! ## A323045.P1492860886536144747

`floor(A322926(n+1)/2^n)`
-/

namespace A323045.P1492860886536144747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322926 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A323045.P1492860886536144747

/-! ## A323045.P5731369753975917222

`Δ[A322926(n)]/A000079(n)`
-/

namespace A323045.P5731369753975917222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322926 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A323045.P5731369753975917222

/-! ## A323045.P10486102846196639766

`Δ[A322926(n)]/A011782(n+1)`
-/

namespace A323045.P10486102846196639766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322926 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A323045.P10486102846196639766

/-! ## A323045.P11630464686152094254

`A322701(Δ[A322926(n)]/2^n)`
-/

namespace A323045.P11630464686152094254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322701 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A323045.P11630464686152094254

/-! ## A323045.P5688598805288170065

`A322926(Δ[A322926(n)]/A011782(n))`
-/

namespace A323045.P5688598805288170065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322926 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A011782 n : ℚ))).toNat

end

end A323045.P5688598805288170065

/-!
# A323046: Numbers that are neither 3-smooth nor a sum of two 3-smooth numbers.

The programs for A323046, there is no canonical definition to state claims against.
-/

/-! ## A323046.P13453328422843890316

`comp[A081330(n+1)-2]+2`
-/

namespace A323046.P13453328422843890316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081330 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A323046.P13453328422843890316

/-! ## A323046.P9841237824689398669

`A081329(n+2)`
-/

namespace A323046.P9841237824689398669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081329 (n + 2)

end

end A323046.P9841237824689398669

/-! ## A323046.P2456723425576843165

`lt[2, A237442(n+1)]+1`
-/

namespace A323046.P2456723425576843165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A323046.P2456723425576843165

/-! ## A323046.P16016241007374616745

`lt[A081326(n+2), 1]+2`
-/

namespace A323046.P16016241007374616745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A323046.P16016241007374616745

/-! ## A323046.P8175557424646092132

`lt[2, A233583(A196941(n+2))]+2`
-/

namespace A323046.P8175557424646092132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A196941 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A323046.P8175557424646092132

/-! ## A323046.P3984606727408442482

`eq[A000007(n), A081326(n+1)]+1`
-/

namespace A323046.P3984606727408442482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A323046.P3984606727408442482

/-! ## A323046.P2781406335327529576

`eq[A000038(n), A081326(n+1)]+1`
-/

namespace A323046.P2781406335327529576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A323046.P2781406335327529576

/-! ## A323046.P3745631444320702449

`lt[A081326(A289207(n)+2), 1]`
-/

namespace A323046.P3745631444320702449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A289207 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A323046.P3745631444320702449

/-! ## A323046.P1066941835081840235

`eq[A000007(n), A081326(A060000(n+1))]`
-/

namespace A323046.P1066941835081840235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323046.P1066941835081840235

/-! ## A323046.P16657457072342278225

`eq[A000038(n), A081326(A060000(n+1))]`
-/

namespace A323046.P16657457072342278225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323046.P16657457072342278225

/-! ## A323046.P9454273142721258653

`eq[0, A081326(A233583(n+1))]`
-/

namespace A323046.P9454273142721258653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323046.P9454273142721258653

/-!
# A323047: Numbers that are not the sum of three (or fewer) 3-smooth numbers.

The programs for A323047, there is no canonical definition to state claims against.
-/

/-! ## A323047.P8873014489206937328

`eq[4, A237442(A028310(n))]`
-/

namespace A323047.P8873014489206937328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323047.P8873014489206937328

/-! ## A323047.P3632870220489733242

`eq[4, A237442(A138153(n+1))]`
-/

namespace A323047.P3632870220489733242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323047.P3632870220489733242

/-! ## A323047.P12761741933248260209

`eq[4, A237442(A233583(n+1))]`
-/

namespace A323047.P12761741933248260209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323047.P12761741933248260209

/-!
# A323048: Sums of no more than two 5-smooth numbers.

The programs for A323048, the canonical program `A323048.P11595341694664684331` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323048 has offset 1).

The definition of A323048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323048.P11595341694664684331

`floor(n/71+n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323048

/-- `floor(n/71+n)` -/
def P11595341694664684331.Spec : Prop :=
  ∀ n, P11595341694664684331.a n = A323048 (n + 1)

theorem P11595341694664684331.correct : P11595341694664684331.Spec := by
  intro n
  simp only [A323048, Nat.add_sub_cancel]

end A323048

/-! ## A323048.P1807787864475724205

`C(comp[∑[8*(n+4)]]-n, 2)+n`
-/

namespace A323048.P1807787864475724205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

end

end A323048.P1807787864475724205

namespace A323048

/-- `C(comp[∑[8*(n+4)]]-n, 2)+n` -/
def P1807787864475724205.Spec : Prop :=
  ∀ n, (P1807787864475724205.a n : ℤ) = A323048 (n + 1)

end A323048

/-! ## A323048.P11223025326552912057

`∪[comp[8*3^n-1], ceil(ϕ*n)]`
-/

namespace A323048.P11223025326552912057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 3 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A323048.P11223025326552912057

namespace A323048

/-- `∪[comp[8*3^n-1], ceil(ϕ*n)]` -/
def P11223025326552912057.Spec : Prop :=
  ∀ n, (P11223025326552912057.a n : ℤ) = A323048 (n + 1)

end A323048

/-! ## A323048.P192277162489801564

`round(2*n²/A388019(n+1))+n`
-/

namespace A323048.P192277162489801564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n ^ 2 : ℚ) / (A388019 (n + 1) : ℚ)) + (n : ℤ)

end

end A323048.P192277162489801564

namespace A323048

/-- `round(2*n²/A388019(n+1))+n` -/
def P192277162489801564.Spec : Prop :=
  ∀ n, P192277162489801564.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P9479474140525439800

`val(comp[A271269(n+5)]+1, n+5)+n`
-/

namespace A323048.P9479474140525439800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) (n + 5) + n

end

end A323048.P9479474140525439800

namespace A323048

/-- `val(comp[A271269(n+5)]+1, n+5)+n` -/
def P9479474140525439800.Spec : Prop :=
  ∀ n, (P9479474140525439800.a n : ℤ) = A323048 (n + 1)

end A323048

/-! ## A323048.P3025612705761469211

`A235044(A086161(n))+n`
-/

namespace A323048.P3025612705761469211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (A086161 n).toNat + (n : ℤ)

end

end A323048.P3025612705761469211

namespace A323048

/-- `A235044(A086161(n))+n` -/
def P3025612705761469211.Spec : Prop :=
  ∀ n, P3025612705761469211.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P9674377856739567744

`A120039(A211020(n))+n`
-/

namespace A323048.P9674377856739567744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120039 (A211020 n).toNat + (n : ℤ)

end

end A323048.P9674377856739567744

namespace A323048

/-- `A120039(A211020(n))+n` -/
def P9674377856739567744.Spec : Prop :=
  ∀ n, P9674377856739567744.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P12129850167383713349

`A138471(A111898(n+1))+n`
-/

namespace A323048.P12129850167383713349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A111898 (n + 1)).toNat + (n : ℤ)

end

end A323048.P12129850167383713349

namespace A323048

/-- `A138471(A111898(n+1))+n` -/
def P12129850167383713349.Spec : Prop :=
  ∀ n, P12129850167383713349.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P7446068917233395531

`A046780(A365737(n+1))+n`
-/

namespace A323048.P7446068917233395531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046780 (A365737 (n + 1)).toNat + (n : ℤ)

end

end A323048.P7446068917233395531

namespace A323048

/-- `A046780(A365737(n+1))+n` -/
def P7446068917233395531.Spec : Prop :=
  ∀ n, P7446068917233395531.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P39337270904664385

`A382290(A037203(n+2))+n`
-/

namespace A323048.P39337270904664385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (A037203 (n + 2)).toNat + (n : ℤ)

end

end A323048.P39337270904664385

namespace A323048

/-- `A382290(A037203(n+2))+n` -/
def P39337270904664385.Spec : Prop :=
  ∀ n, P39337270904664385.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P12491476402264218884

`A033110(A111891(n+5))+n`
-/

namespace A323048.P12491476402264218884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033110 (A111891 (n + 5)).toNat + (n : ℤ)

end

end A323048.P12491476402264218884

namespace A323048

/-- `A033110(A111891(n+5))+n` -/
def P12491476402264218884.Spec : Prop :=
  ∀ n, P12491476402264218884.a n = A323048 (n + 1)

end A323048

/-! ## A323048.P7047150487335956733

`A351357(A130241(n+5))+n`
-/

namespace A323048.P7047150487335956733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351357 (A130241 (n + 5)).toNat + (n : ℤ)

end

end A323048.P7047150487335956733

namespace A323048

/-- `A351357(A130241(n+5))+n` -/
def P7047150487335956733.Spec : Prop :=
  ∀ n, P7047150487335956733.a n = A323048 (n + 1)

end A323048

/-!
# A323049: Numbers that are neither 5-smooth nor a sum of two 5-smooth numbers.

The programs for A323049, there is no canonical definition to state claims against.
-/

/-! ## A323049.P17660386506373489430

`lt[5, A196941(n+2)]+2`
-/

namespace A323049.P17660386506373489430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196941 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A323049.P17660386506373489430

/-! ## A323049.P18129894935288747361

`lt[2, A007318(A196941(n*a(n-1)))]` with `a(0)=2`
-/

namespace A323049.P18129894935288747361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A007318 (A196941 ((n : ℤ) * f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323049.P18129894935288747361

/-! ## A323049.P15038729557867121408

`lt[6, A196941(A233583(n+1))]`
-/

namespace A323049.P15038729557867121408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196941 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A323049.P15038729557867121408

/-!
# A323051: Numbers that cannot be written as a sum of two or fewer 11-smooth numbers (A051038).

The programs for A323051, there is no canonical definition to state claims against.
-/

/-! ## A323051.P7420062516588281774

`A025025(n+1)-A349796(A349796(3*n))`
-/

namespace A323051.P7420062516588281774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025025 (n + 1) - A349796 (A349796 (3 * n)).toNat

end

end A323051.P7420062516588281774

/-!
# A323053: Number of integer partitions of n with no 1's such that no part is a power of any other (unequal) part.

The programs for A323053, there is no canonical definition to state claims against.
-/

/-! ## A323053.P9990150216050040983

`Δ[A004526(A023190(A000070(n)))]`
-/

namespace A323053.P9990150216050040983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023190 (A000070 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323053.P9990150216050040983

/-! ## A323053.P15279544413746147476

`A185284(A284827(n+1))+A326033(n+1)+A285799(n)`
-/

namespace A323053.P15279544413746147476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A284827 (n + 1)).toNat + (A326033 (n + 1) + A285799 n)

end

end A323053.P15279544413746147476

/-! ## A323053.P16088021015560259801

`A055641(A036256(n))+A023894(n)`
-/

namespace A323053.P16088021015560259801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A036256 n).toNat + A023894 n

end

end A323053.P16088021015560259801

/-! ## A323053.P4177806371602358185

`A285799(n)+A004956(A172543(n+1))`
-/

namespace A323053.P4177806371602358185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n + A004956 (A172543 (n + 1)).toNat

end

end A323053.P4177806371602358185

/-! ## A323053.P5522736275333704634

`A023894(n)+A010894(A023894(n+3))`
-/

namespace A323053.P5522736275333704634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n + A010894 ((A023894 (n + 3)).toNat + 21)

end

end A323053.P5522736275333704634

/-!
# A323054: Number of strict integer partitions of n with no 1's such that no part is a power of any other part.

The programs for A323054, there is no canonical definition to state claims against.
-/

/-! ## A323054.P18178676409667847695

`A163352(A173510(n)-A000010(n+1))`
-/

namespace A323054.P18178676409667847695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A173510 n - A000010 (n + 1)).toNat

end

end A323054.P18178676409667847695

/-! ## A323054.P10209443955477675835

`A000607(n)-A038189(A014495(n))`
-/

namespace A323054.P10209443955477675835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n - A038189 (A014495 n).toNat

end

end A323054.P10209443955477675835

/-! ## A323054.P13810779044059659500

`A046676(n)-A038189(A014495(n))`
-/

namespace A323054.P13810779044059659500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046676 n - A038189 (A014495 n).toNat

end

end A323054.P13810779044059659500

/-! ## A323054.P1398512044528043482

`A029161(val(A262261(n), 4))`
-/

namespace A323054.P1398512044528043482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029161 (SequenceMachineLib.valuation (A262261 n).toNat 4)

end

end A323054.P1398512044528043482

/-!
# A323055: 

The programs for A323055, there is no canonical definition to state claims against.
-/

/-! ## A323055.P4462954557566107780

`eq[2, A001222(A328830(n+1))]+1`
-/

namespace A323055.P4462954557566107780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328830 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323055.P4462954557566107780

/-! ## A323055.P16199465527689883319

`eq[2, A071625(n+1)]+1`
-/

namespace A323055.P16199465527689883319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323055.P16199465527689883319

/-! ## A323055.P3287197270016565214

`eq[2, A071625(A028310(n))]`
-/

namespace A323055.P3287197270016565214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323055.P3287197270016565214

/-! ## A323055.P5584966159128500334

`A020725(eq[2, A071625(n+1)])`
-/

namespace A323055.P5584966159128500334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323055.P5584966159128500334

/-! ## A323055.P6837366826721008858

`A114637(eq[2, A071625(n+1)])`
-/

namespace A323055.P6837366826721008858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323055.P6837366826721008858

/-! ## A323055.P13694133506282240685

`A326178(eq[2, A071625(n+1)])`
-/

namespace A323055.P13694133506282240685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323055.P13694133506282240685

/-! ## A323055.P12014622121322283621

`eq[5, A000040(a(A062760(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A323055.P12014622121322283621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000040 (f2 (A062760 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323055.P12014622121322283621

/-! ## A323055.P6892476893099412701

`eq[2, A001221(A181819(n+1))]+1`
-/

namespace A323055.P6892476893099412701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323055.P6892476893099412701

/-! ## A323055.P16679743558382697447

`eq[2, A000120(A297404(n+1))]+1`
-/

namespace A323055.P16679743558382697447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A297404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323055.P16679743558382697447

/-! ## A323055.P6381270432777324878

`eq[3, A006530(A238745(A238745(n+1)))]+1`
-/

namespace A323055.P6381270432777324878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A238745 (A238745 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A323055.P6381270432777324878

/-!
# A323059: Number of vertices of non-prismatic uniform polyhedron with Wenninger index n.

The programs for A323059, there is no canonical definition to state claims against.
-/

/-! ## A323059.P15683162468560676750

`A000010(A298670(2*(n+2))+A216835(n+1))`
-/

namespace A323059.P15683162468560676750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A298670 (2 * (n + 2)) + A216835 (n + 1)).toNat

end

end A323059.P15683162468560676750

/-!
# A323062: Numbers m > 0 such that floor(sqrt(2^(2m-1))) > 1/2 + sqrt(1/4 + 2^(2m-1) - 2^m).

The programs for A323062, there is no canonical definition to state claims against.
-/

/-! ## A323062.P4990464128440287974

`ceil(log2(A323192(n+1)))`
-/

namespace A323062.P4990464128440287974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A323192 (n + 1) : ℝ)⌉

end

end A323062.P4990464128440287974

/-!
# A323063: Coefficients arising in the enumeration of configurations of linear chains.

The programs for A323063, there is no canonical definition to state claims against.
-/

/-! ## A323063.P587900219268035960

`A007782(or(4, a(n-1)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=21`
-/

namespace A323063.P587900219268035960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 21] fun n a =>
  A007782 (Int.lor 4 (a (n - 1))).toNat

end

end A323063.P587900219268035960

/-! ## A323063.P3749443653401819481

`A224114(A153910(n))`
-/

namespace A323063.P3749443653401819481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224114 (A153910 n).toNat

end

end A323063.P3749443653401819481

/-! ## A323063.P9862204033455815882

`A343377(A145030(n+2))`
-/

namespace A323063.P9862204033455815882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 (A145030 (n + 2)).toNat

end

end A323063.P9862204033455815882

/-!
# A323064: Squares whose binary complement (A035327) is a cube.

The programs for A323064, there is no canonical definition to state claims against.
-/

/-! ## A323064.P15965523424140861538

`(A005203(n)*A156352(n+1))²`
-/

namespace A323064.P15965523424140861538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005203 n * A156352 (n + 1)) ^ 2

end

end A323064.P15965523424140861538

/-!
# A323065: Prime numbers generated by the formula a(n) = round(c(n)), where c(n) = c(n-1)^d for n >= 2 starting with c(1) = C. C and d are the real constants given below.

The programs for A323065, there is no canonical definition to state claims against.
-/

/-! ## A323065.P16385802000878229008

`A322400(A005578(n)+A001222(n+1))`
-/

namespace A323065.P16385802000878229008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322400 (A005578 n + A001222 (n + 1)).toNat

end

end A323065.P16385802000878229008

/-! ## A323065.P4034557487948125992

`A166158(a(n-1)+1)` with `a(0)=3`
-/

namespace A323065.P4034557487948125992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A166158 (a (n - 1) + 1).toNat

end

end A323065.P4034557487948125992

/-! ## A323065.P4527138068185384229

`A118751(a(n-1)-(n+1))` with `a(0)=3`
-/

namespace A323065.P4527138068185384229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A118751 (a (n - 1) - (n + 1 : ℤ)).toNat

end

end A323065.P4527138068185384229

/-!
# A323066: Numbers whose binary complement (A035327) is a square.

The programs for A323066, there is no canonical definition to state claims against.
-/

/-! ## A323066.P5363151422843020173

`record[n-(A080542(n+1)%(n+1))²]`
-/

namespace A323066.P5363151422843020173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A080542 (n + 1)) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323066.P5363151422843020173

/-! ## A323066.P6479074615046062316

`eq[0, A053186(A035327(n))]`
-/

namespace A323066.P6479074615046062316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323066.P6479074615046062316

/-! ## A323066.P2459155800809126585

`eq[1, A010052(A003817(n)-n)]`
-/

namespace A323066.P2459155800809126585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323066.P2459155800809126585

/-! ## A323066.P17363070089787336291

`eq[1, A191521(A003817(n)-n)]`
-/

namespace A323066.P17363070089787336291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323066.P17363070089787336291

/-! ## A323066.P8268510204964719013

`eq[1, A071797(1-A006257(n)+n)]`
-/

namespace A323066.P8268510204964719013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (1 - A006257 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323066.P8268510204964719013

/-! ## A323066.P17861493818450038103

`record[n-A035327(n+1)*A035327(n)]`
-/

namespace A323066.P17861493818450038103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A035327 (n + 1) * A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323066.P17861493818450038103

/-! ## A323066.P11530668148300417021

`eq[A071041(n), A191521(A035327(n))]`
-/

namespace A323066.P11530668148300417021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323066.P11530668148300417021

/-!
# A323067: Primes whose binary complement (A035327) is a square.

The programs for A323067, there is no canonical definition to state claims against.
-/

/-! ## A323067.P13184009234905457547

`p?[record[n-(A080542(n+1)%(n+1))²]]`
-/

namespace A323067.P13184009234905457547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A080542 (n + 1)) (n + 1 : ℤ) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323067.P13184009234905457547

/-! ## A323067.P15149375897357693394

`p?[n*A010052(A035327(n))]`
-/

namespace A323067.P15149375897357693394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010052 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323067.P15149375897357693394

/-! ## A323067.P431418306837275888

`eq[A003415(n), A010052(A035327(n))]`
-/

namespace A323067.P431418306837275888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323067.P431418306837275888

/-! ## A323067.P17029666356660199839

`p?[A323066(n+1)]`
-/

namespace A323067.P17029666356660199839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A323067.P17029666356660199839

/-! ## A323067.P1865269264092295243

`record[A006530(A323066(n+3))]`
-/

namespace A323067.P1865269264092295243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A323066 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323067.P1865269264092295243

/-!
# A323068: Number of divisors d of n such that A049820(d) > 0 and A049820(d) is also a divisor of n.

The programs for A323068, there is no canonical definition to state claims against.
-/

/-! ## A323068.P8559613140115713290

`A211272(A082553(3*(n+1))%A060529(2*n+3))`
-/

namespace A323068.P8559613140115713290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (Int.tmod (A082553 (3 * (n + 1))) (A060529 (2 * n + 3))).toNat

end

end A323068.P8559613140115713290

/-! ## A323068.P3344522941940884379

`A217397(A217406(n+1))%A173493(n+1)`
-/

namespace A323068.P3344522941940884379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217397 (A217406 (n + 1)).toNat) (A173493 (n + 1))

end

end A323068.P3344522941940884379

/-! ## A323068.P15195530111166425540

`A072627(n+1)-Δ[A341840(A048682(n+1))]`
-/

namespace A323068.P15195530111166425540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A048682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) - (f1 (n + 1) - f1 n)

end

end A323068.P15195530111166425540

/-! ## A323068.P328238905008229557

`A310641(A128461(n+1))%∏{e}[n+1, #+1]`
-/

namespace A323068.P328238905008229557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310641 (A128461 (n + 1)).toNat) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A323068.P328238905008229557

/-! ## A323068.P14703335419717688979

`∑[A004275(A000288(n))]%A000005(n+1)`
-/

namespace A323068.P14703335419717688979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A000288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000005 (n + 1))

end

end A323068.P14703335419717688979

/-!
# A323069: Number of divisors d of n such that A049820(d) > 1 and A049820(d) is also a divisor of n.

The programs for A323069, there is no canonical definition to state claims against.
-/

/-! ## A323069.P17716489671690726704

`and(A004086(A082766(n+1)), A341677(n+1))`
-/

namespace A323069.P17716489671690726704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004086 (A082766 (n + 1)).toNat) (A341677 (n + 1))

end

end A323069.P17716489671690726704

/-! ## A323069.P15140795427116675734

`A250120(A270890(n+4))%A045778(n+1)`
-/

namespace A323069.P15140795427116675734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (A270890 (n + 4)).toNat) (A045778 (n + 1))

end

end A323069.P15140795427116675734

/-! ## A323069.P6321053634461621387

`A189717(A189711(n+5))%A045778(n+1)`
-/

namespace A323069.P6321053634461621387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189717 (A189711 (n + 5)).toNat) (A045778 (n + 1))

end

end A323069.P6321053634461621387

/-! ## A323069.P12686347066035899980

`A088135(A255424(3*n+2))%A045778(n+1)`
-/

namespace A323069.P12686347066035899980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088135 (A255424 (3 * n + 2)).toNat) (A045778 (n + 1))

end

end A323069.P12686347066035899980

/-! ## A323069.P4701867153718237908

`A102675(A378183(n+1))`
-/

namespace A323069.P4701867153718237908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A378183 (n + 1)).toNat

end

end A323069.P4701867153718237908

/-!
# A323070: Numbers k such that A055023(k) != A323071(k), where A323071(k) = gcd(k, 1+A060681(k)).

The programs for A323070, there is no canonical definition to state claims against.
-/

/-! ## A323070.P12389036554378701182

`A044143(n+1)+A020639(A025950(n))`
-/

namespace A323070.P12389036554378701182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044143 (n + 1) + A020639 (A025950 n).toNat

end

end A323070.P12389036554378701182

/-!
# A323071: a(n) = gcd(n, 1+A060681(n)).

The programs for A323071, there is no canonical definition to state claims against.
-/

/-! ## A323071.P6942443046317359900

`(n+1)/A323072(n+1)`
-/

namespace A323071.P6942443046317359900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323072 (n + 1) : ℚ)

end

end A323071.P6942443046317359900

/-! ## A323071.P9582982999097821461

`gcd(n+1, 1+A060681(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323071.P9582982999097821461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (1 + A060681 (n + 1))

end

end A323071.P9582982999097821461

/-! ## A323071.P63706291729597598

`gcd(1-A032742(n+1), A007947(n+1))`
-/

namespace A323071.P63706291729597598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A032742 (n + 1)) (A007947 (n + 1))

end

end A323071.P63706291729597598

/-! ## A323071.P502564945274371985

`gcd(A032742(n+1)-1, A020639(n+1))`
-/

namespace A323071.P502564945274371985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1) - 1) (A020639 (n + 1))

end

end A323071.P502564945274371985

/-! ## A323071.P7622411801025955454

`gcd(1-A111234(n+1), A253560(n+1))`
-/

namespace A323071.P7622411801025955454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A111234 (n + 1)) (A253560 (n + 1))

end

end A323071.P7622411801025955454

/-! ## A323071.P1133153473330683538

`gcd(1-A054576(2*(n+1)), A302043(2*(n+1)))`
-/

namespace A323071.P1133153473330683538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A054576 (2 * (n + 1))) (A302043 (2 * (n + 1)))

end

end A323071.P1133153473330683538

/-! ## A323071.P10028595955842189923

`gcd(A020639(n+1), A231333(n+1))`
-/

namespace A323071.P10028595955842189923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (n + 1)) (A231333 (n + 1))

end

end A323071.P10028595955842189923

/-! ## A323071.P13299586755917933138

`gcd(A231333(n+1)², A028233(n+1))`
-/

namespace A323071.P13299586755917933138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231333 (n + 1) ^ 2) (A028233 (n + 1))

end

end A323071.P13299586755917933138

/-! ## A323071.P3770272926246699754

`A007913((n+1)*A323072(n+1))`
-/

namespace A323071.P3770272926246699754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A323072 (n + 1)).toNat

end

end A323071.P3770272926246699754

/-! ## A323071.P4308278342264169403

`gcd(A326691(n+1), A345284(n+1))`
-/

namespace A323071.P4308278342264169403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326691 (n + 1)) (A345284 (n + 1))

end

end A323071.P4308278342264169403

/-! ## A323071.P12374887142785316210

`gcd(A067018(n²), A326691(n+1))`
-/

namespace A323071.P12374887142785316210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067018 (n ^ 2)) (A326691 (n + 1))

end

end A323071.P12374887142785316210

/-!
# A323072: a(n) = n/A323071(n) = n/gcd(n, 1+A060681(n)).

The programs for A323072, there is no canonical definition to state claims against.
-/

/-! ## A323072.P7369879891192083025

`(n+1)/A323071(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323072.P7369879891192083025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A323071 (n + 1) : ℚ)

end

end A323072.P7369879891192083025

/-! ## A323072.P14364431149485438016

`(n+1)/gcd(n+1, 1+A060681(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323072.P14364431149485438016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 + A060681 (n + 1)) : ℚ)

end

end A323072.P14364431149485438016

/-! ## A323072.P12745946446285878165

`lcm(A028234(n+1), A326690(n+1))`
-/

namespace A323072.P12745946446285878165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028234 (n + 1)) (A326690 (n + 1))

end

end A323072.P12745946446285878165

/-! ## A323072.P17531045895963283283

`lcm(A028310(A326690(n+1)), A032742(n+1))`
-/

namespace A323072.P17531045895963283283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A326690 (n + 1)).toNat) (A032742 (n + 1))

end

end A323072.P17531045895963283283

/-! ## A323072.P15172955913845724621

`A277227(A032742(n+1)+∑[n])`
-/

namespace A323072.P15172955913845724621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A032742 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A323072.P15172955913845724621

/-! ## A323072.P15868224779407621842

`A010766(A323071(n+1)+∑[n])`
-/

namespace A323072.P15868224779407621842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A323071 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A323072.P15868224779407621842

/-! ## A323072.P4369389199251948925

`(n+1)/A340078(A100782(n+1))`
-/

namespace A323072.P4369389199251948925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A340078 (A100782 (n + 1)).toNat : ℚ)

end

end A323072.P4369389199251948925

/-!
# A323073: Number of iterations of A049820(x) = x - A000005(x) needed to reach either zero or such x that x and A049820(x) are coprime, when starting from x = n.

The programs for A323073, there is no canonical definition to state claims against.
-/

/-! ## A323073.P10415781175151033724

`A000194(n)%A091602(record[A087738(n)])`
-/

namespace A323073.P10415781175151033724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 n) (A091602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A323073.P10415781175151033724

/-! ## A323073.P5951916569449896729

`A002260(A016029(n+1))%A082908(n)`
-/

namespace A323073.P5951916569449896729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A016029 (n + 1)).toNat) (A082908 n)

end

end A323073.P5951916569449896729

/-! ## A323073.P18249255716717317112

`C(A102669(A000213(n+2)), A001227(n+2))`
-/

namespace A323073.P18249255716717317112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102669 (A000213 (n + 2)).toNat).toNat (A001227 (n + 2)).toNat

end

end A323073.P18249255716717317112

/-! ## A323073.P7179392733008919775

`A269134(∑{d}[n+1, lcm(2, #)/2])%∏{p}[n+1, 1-#]`
-/

namespace A323073.P7179392733008919775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269134 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2)).toNat) (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)))

end

end A323073.P7179392733008919775

/-! ## A323073.P7986098639643414638

`val(A008687(A055895(n)), 2)`
-/

namespace A323073.P7986098639643414638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008687 (A055895 n).toNat).toNat 2

end

end A323073.P7986098639643414638

/-!
# A323075: The fixed point reached when map x -> 1+(x-(largest divisor d < x)) is iterated, starting from x = n.

The programs for A323075, there is no canonical definition to state claims against.
-/

/-! ## A323075.P11030420345527516786

`A008578(A323164(n+1)+1)`
-/

namespace A323075.P11030420345527516786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A323164 (n + 1) + 1).toNat

end

end A323075.P11030420345527516786

/-! ## A323075.P15170000664041074878

`A158611(A323164(n+1)+2)`
-/

namespace A323075.P15170000664041074878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A323164 (n + 1) + 2).toNat

end

end A323075.P15170000664041074878

/-! ## A323075.P6926958064987193543

`A028310(∑{d}[A323164(n+1), A007444(#)])`
-/

namespace A323075.P6926958064987193543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d).toNat

end

end A323075.P6926958064987193543

/-! ## A323075.P17883089577697417765

`A000007(n)+∑{d}[A323164(n+1), A007444(#)]`
-/

namespace A323075.P17883089577697417765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A323075.P17883089577697417765

/-! ## A323075.P581339804025104413

`∑{d}[A323164(n+1), A007444(#)]^A057428(n)²`
-/

namespace A323075.P581339804025104413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d : ℤ) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A323075.P581339804025104413

/-! ## A323075.P5022250862119781690

`∑{d}[A323164(n+1), A007444(#)]^A062157(n)²`
-/

namespace A323075.P5022250862119781690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d : ℤ) : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A323075.P5022250862119781690

/-! ## A323075.P11365611992528215854

`A000007(a(n-1))+A000040(A323164(n+1))` with `a(0)=1`
-/

namespace A323075.P11365611992528215854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat + A000040 (A323164 (n + 1)).toNat

end

end A323075.P11365611992528215854

/-! ## A323075.P11286428804517371415

`A000040(A323164(n+1)+A000007(n))-A000007(n)`
-/

namespace A323075.P11286428804517371415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A323164 (n + 1) + A000007 n).toNat - A000007 n

end

end A323075.P11286428804517371415

/-! ## A323075.P10932667622302529732

`∏{e}[A000079(A323164(n+1)), A000040(#)]`
-/

namespace A323075.P10932667622302529732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A323164 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A323075.P10932667622302529732

/-!
# A323076: Number of iterations of map x -> 1+(x-(largest divisor d < x)), starting from x=n, needed to reach a fixed point, which is always either a prime or 1.

The programs for A323076, there is no canonical definition to state claims against.
-/

/-! ## A323076.P10939075337570742753

`A064918(A076710(n)+1+n)`
-/

namespace A323076.P10939075337570742753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064918 (A076710 n + 1 + (n : ℤ)).toNat

end

end A323076.P10939075337570742753

/-! ## A323076.P15530120618071725358

`∑{e}[A042950(n), A330944(#)]`
-/

namespace A323076.P15530120618071725358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A330944 (Nat.factorization (f1 n).natAbs p)

end

end A323076.P15530120618071725358

/-! ## A323076.P8219165587437377058

`∑{e}[A082505(n), A330944(#)]`
-/

namespace A323076.P8219165587437377058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A330944 (Nat.factorization (f1 n).natAbs p)

end

end A323076.P8219165587437377058

/-! ## A323076.P3954825215243310263

`∑{e}[A083329(n)+1, A330944(#)]`
-/

namespace A323076.P3954825215243310263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A330944 (Nat.factorization (f1 n).natAbs p)

end

end A323076.P3954825215243310263

/-! ## A323076.P1773309774984587842

`A066247(n+1)*A089309(A000048(n))`
-/

namespace A323076.P1773309774984587842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) * A089309 (A000048 n).toNat

end

end A323076.P1773309774984587842

/-!
# A323077: Number of iterations of map x -> (x - (largest divisor d < x)) needed to reach 1 or a prime, when starting at x = n.

The programs for A323077, the canonical program `A323077.P1062725111045104431` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323077 has offset 1).

The definition of A323077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, A064097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323077.P1062725111045104431

`A064097(A052126(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323077

/-- `A064097(A052126(n+1))` -/
def P1062725111045104431.Spec : Prop :=
  ∀ n, P1062725111045104431.a n = A323077 (n + 1)

theorem P1062725111045104431.correct : P1062725111045104431.Spec := by
  intro n
  simp only [A323077, Nat.add_sub_cancel]

end A323077

/-! ## A323077.P15207342295022626131

`A064097(n+1)-A334202(n+1)`
-/

namespace A323077.P15207342295022626131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A334202 (n + 1)

end

end A323077.P15207342295022626131

namespace A323077

/-- `A064097(n+1)-A334202(n+1)` -/
def P15207342295022626131.Spec : Prop :=
  ∀ n, P15207342295022626131.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P1891373271873524073

`A334203(A130065(n+1))`
-/

namespace A323077.P1891373271873524073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A130065 (n + 1)).toNat

end

end A323077.P1891373271873524073

namespace A323077

/-- `A334203(A130065(n+1))` -/
def P1891373271873524073.Spec : Prop :=
  ∀ n, P1891373271873524073.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P18081235881553715252

`A334203(2*A052126(n+1))`
-/

namespace A323077.P18081235881553715252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * A052126 (n + 1)).toNat

end

end A323077.P18081235881553715252

namespace A323077

/-- `A334203(2*A052126(n+1))` -/
def P18081235881553715252.Spec : Prop :=
  ∀ n, P18081235881553715252.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P5436385339814622188

`A064097(A269304(n+1)-(n+2))`
-/

namespace A323077.P5436385339814622188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A269304 (n + 1) - (n + 2 : ℤ)).toNat

end

end A323077.P5436385339814622188

namespace A323077

/-- `A064097(A269304(n+1)-(n+2))` -/
def P5436385339814622188.Spec : Prop :=
  ∀ n, P5436385339814622188.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P13721695783192202955

`A064097((n+1)/A006530(n+1))`
-/

namespace A323077.P13721695783192202955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A323077.P13721695783192202955

namespace A323077

/-- `A064097((n+1)/A006530(n+1))` -/
def P13721695783192202955.Spec : Prop :=
  ∀ n, P13721695783192202955.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P13792042240749039241

`A334203(2*(n+1))-A334202(n+1)`
-/

namespace A323077.P13792042240749039241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (2 * (n + 1)) - A334202 (n + 1)

end

end A323077.P13792042240749039241

namespace A323077

/-- `A334203(2*(n+1))-A334202(n+1)` -/
def P13792042240749039241.Spec : Prop :=
  ∀ n, P13792042240749039241.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P15193344089828389854

`(a(A060681(n+1)-1)+1)%A032742(n+1)` with `a(0)=0`
-/

namespace A323077.P15193344089828389854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (A060681 (n + 1) - 1).toNat + 1) (A032742 (n + 1))

end

end A323077.P15193344089828389854

namespace A323077

/-- `(a(A060681(n+1)-1)+1)%A032742(n+1)` -/
def P15193344089828389854.Spec : Prop :=
  ∀ n, P15193344089828389854.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P10952420927875990511

`A064097(n+1)-A064097(A006530(n+1))`
-/

namespace A323077.P10952420927875990511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A064097 (A006530 (n + 1)).toNat

end

end A323077.P10952420927875990511

namespace A323077

/-- `A064097(n+1)-A064097(A006530(n+1))` -/
def P10952420927875990511.Spec : Prop :=
  ∀ n, P10952420927875990511.a n = A323077 (n + 1)

end A323077

/-! ## A323077.P1652746660841942499

`A073933(n+1)-A073933(A006530(n+1))`
-/

namespace A323077.P1652746660841942499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - A073933 (A006530 (n + 1)).toNat

end

end A323077.P1652746660841942499

namespace A323077

/-- `A073933(n+1)-A073933(A006530(n+1))` -/
def P1652746660841942499.Spec : Prop :=
  ∀ n, P1652746660841942499.a n = A323077 (n + 1)

end A323077

/-!
# A323078: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = 0 if n is an odd prime, and f(n) = A097246(n) for all other numbers.

The programs for A323078, there is no canonical definition to state claims against.
-/

/-! ## A323078.P6731631323222183655

`A297169(n+1)+A285515(A038577(n))`
-/

namespace A323078.P6731631323222183655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297169 (n + 1) + A285515 (A038577 n).toNat

end

end A323078.P6731631323222183655

/-! ## A323078.P9000714428447145825

`A353565(n+1)+A351939(A131577(n))`
-/

namespace A323078.P9000714428447145825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353565 (n + 1) + A351939 (A131577 n).toNat

end

end A323078.P9000714428447145825

/-! ## A323078.P18321346633321070624

`A297169(n+1)+A051265(A051250(n+1))`
-/

namespace A323078.P18321346633321070624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297169 (n + 1) + A051265 (A051250 (n + 1)).toNat

end

end A323078.P18321346633321070624

/-! ## A323078.P11436758428342119508

`A257992(3^A353565(n+1))+char[A324538(n+2)]`
-/

namespace A323078.P11436758428342119508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324538 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A353565 (n + 1) : ℤ))).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323078.P11436758428342119508

/-! ## A323078.P5064356695951734307

`A331301(A187829(n+1))`
-/

namespace A323078.P5064356695951734307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331301 (A187829 (n + 1)).toNat

end

end A323078.P5064356695951734307

/-!
# A323079: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = -1 if n is an odd prime, and f(n) = A060681(n) for all other numbers.

The programs for A323079, there is no canonical definition to state claims against.
-/

/-! ## A323079.P17401511892788562008

`A331174(n+1)-A011737(A036598(n))`
-/

namespace A323079.P17401511892788562008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331174 (n + 1) - A011737 (A036598 n).toNat

end

end A323079.P17401511892788562008

/-! ## A323079.P18398924176287061919

`A323401(n+1)-A088950(A183092(n+1))`
-/

namespace A323079.P18398924176287061919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323401 (n + 1) - A088950 (A183092 (n + 1)).toNat

end

end A323079.P18398924176287061919

/-! ## A323079.P11272931657818170730

`A331174(n+1)-A072401(A324159(n+1))`
-/

namespace A323079.P11272931657818170730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331174 (n + 1) - A072401 (A324159 (n + 1)).toNat

end

end A323079.P11272931657818170730

/-!
# A323080: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(1)=0, and f(n) = A252463(n) for n > 1.

The programs for A323080, there is no canonical definition to state claims against.
-/

/-! ## A323080.P16906964068502142719

`A065033(A194866(n+1))+A001221(A000079(n))`
-/

namespace A323080.P16906964068502142719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A194866 (n + 1)).toNat + A001221 (A000079 n).toNat

end

end A323080.P16906964068502142719

/-! ## A323080.P16968952031234476112

`A155047(n+1)+A102681(A279262(n+1))`
-/

namespace A323080.P16968952031234476112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155047 (n + 1) + A102681 (A279262 (n + 1)).toNat

end

end A323080.P16968952031234476112

/-! ## A323080.P1296642120754032208

`A043279(A368259(2*(n+1)))+A000720(n+1)`
-/

namespace A323080.P1296642120754032208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A368259 (2 * (n + 1))).toNat + A000720 (n + 1)

end

end A323080.P1296642120754032208

/-! ## A323080.P16591749572023276634

`A239114(A199660(n))+A000720(n+1)`
-/

namespace A323080.P16591749572023276634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239114 (A199660 n).toNat + A000720 (n + 1)

end

end A323080.P16591749572023276634

/-! ## A323080.P6817309898336864534

`A071868(2*n+3)-A071881(A071921(n+3))`
-/

namespace A323080.P6817309898336864534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071868 (2 * n + 3) - A071881 (A071921 (n + 3)).toNat

end

end A323080.P6817309898336864534

/-!
# A323082: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = -(n mod 2) if n is a prime, and f(n) = A300840(n) for any other number.

The programs for A323082, there is no canonical definition to state claims against.
-/

/-! ## A323082.P2852526655357302244

`A331301(n+1)-A010894(A177783(n+3))`
-/

namespace A323082.P2852526655357302244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331301 (n + 1) - A010894 ((A177783 (n + 3)).toNat + 21)

end

end A323082.P2852526655357302244

/-! ## A323082.P912404280653868727

`A331301(n+1)-A010054(A299285(2*n+3))`
-/

namespace A323082.P912404280653868727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331301 (n + 1) - A010054 (A299285 (2 * n + 3)).toNat

end

end A323082.P912404280653868727

/-! ## A323082.P66559678658913669

`A300827(n+1)+A107740(A223864(n+1))`
-/

namespace A323082.P66559678658913669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) + A107740 (A223864 (n + 1)).toNat

end

end A323082.P66559678658913669

/-! ## A323082.P6573758651813351077

`A325616(A285505(2*(n+1)))+A300827(n+1)`
-/

namespace A323082.P6573758651813351077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325616 (A285505 (2 * (n + 1))).toNat + A300827 (n + 1)

end

end A323082.P6573758651813351077

/-!
# A323084: k-digit numbers whose digit(s) are the number of distinct prime factors (with multiplicity) in each of the following k integers.

The programs for A323084, there is no canonical definition to state claims against.
-/

/-! ## A323084.P9900569077747450074

`and(p?[A077443(n+1)], A133216(2*(n+2)))`
-/

namespace A323084.P9900569077747450074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A133216 (2 * (n + 2)))

end

end A323084.P9900569077747450074

/-!
# A323086: Number of factorizations of n into factors > 1 such that no factor is a power of any other (unequal) factor.

The programs for A323086, there is no canonical definition to state claims against.
-/

/-! ## A323086.P15022090813176026199

`∑{d}[n+1, A046951(#)*A322452((n+1)/#)]`
-/

namespace A323086.P15022090813176026199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323086.P15022090813176026199

/-! ## A323086.P18193176368886946932

`∑{d}[n+1, A159631(#)*A322452((n+1)/#)]`
-/

namespace A323086.P18193176368886946932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A159631 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323086.P18193176368886946932

/-! ## A323086.P2126935274019746085

`A000196(∑{d}[A076078(n+1), A000196(#)])`
-/

namespace A323086.P2126935274019746085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000196 d).toNat

end

end A323086.P2126935274019746085

/-! ## A323086.P3733229277345635568

`A281116(n+1)+A080513(A048105(n+1))`
-/

namespace A323086.P3733229277345635568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + A080513 (A048105 (n + 1)).toNat

end

end A323086.P3733229277345635568

/-! ## A323086.P7888373793863026855

`A218320(n+1)-A023395(A190867(n+1))`
-/

namespace A323086.P7888373793863026855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - A023395 (A190867 (n + 1)).toNat

end

end A323086.P7888373793863026855

/-!
# A323087: Number of strict factorizations of n into factors > 1 such that no factor is a power of any other factor.

The programs for A323087, there is no canonical definition to state claims against.
-/

/-! ## A323087.P14111393350992597214

`A303707(n+1)+char[31]`
-/

namespace A323087.P14111393350992597214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A323087.P14111393350992597214

/-! ## A323087.P11203208932075201455

`A303709((n+1)²)+char[31]`
-/

namespace A323087.P11203208932075201455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 ((n + 1) ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A323087.P11203208932075201455

/-! ## A323087.P15006961939573990578

`char[31]+ceil(A008480(n+1)^tan(7))`
-/

namespace A323087.P15006961939573990578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(A008480 (n + 1) : ℝ) ^ (Real.tan (7 : ℝ))⌉

end

end A323087.P15006961939573990578

/-! ## A323087.P6704340732293637168

`A303709((∏{p}[n+1, 3*val(#, 2)]+n+1)²)`
-/

namespace A323087.P6704340732293637168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 ((∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation p 2 + (n + 1)) ^ 2)

end

end A323087.P6704340732293637168

/-! ## A323087.P10989974567384851180

`A051250(∏{e}[n+1, #+1]-∑{e}[n+1, #])+char[31]`
-/

namespace A323087.P10989974567384851180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051250 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A323087.P10989974567384851180

/-! ## A323087.P2296108748117069068

`A303707(A127802(n)+1+n)`
-/

namespace A323087.P2296108748117069068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A127802 n + 1 + (n : ℤ)).toNat

end

end A323087.P2296108748117069068

/-! ## A323087.P2049721930786381461

`A303707(3*A036987(n)+n+1)`
-/

namespace A323087.P2049721930786381461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (3 * A036987 n + (n + 1 : ℤ)).toNat

end

end A323087.P2049721930786381461

/-! ## A323087.P8265972632062586463

`A303707(a(A052409(n+1))+n)` with `a(0)=1, a(1)=1`
-/

namespace A323087.P8265972632062586463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A303707 (a (A052409 (n + 1)).toNat + (n : ℤ)).toNat

end

end A323087.P8265972632062586463

/-! ## A323087.P1908465428858553997

`A303707(A076259(A050361(n+1))+n)`
-/

namespace A323087.P1908465428858553997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A076259 (A050361 (n + 1)).toNat + (n : ℤ)).toNat

end

end A323087.P1908465428858553997

/-! ## A323087.P3074306686845449321

`A303707(A007318(A296076(n+1))+n)`
-/

namespace A323087.P3074306686845449321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A007318 (A296076 (n + 1)).toNat + (n : ℤ)).toNat

end

end A323087.P3074306686845449321

/-!
# A323088: Number of strict integer partitions of n using numbers that are not perfect powers.

The programs for A323088, there is no canonical definition to state claims against.
-/

/-! ## A323088.P2117753008903145133

`A323089(n)-a(n-1)` with `a(0)=1`
-/

namespace A323088.P2117753008903145133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323089 n - a (n - 1)

end

end A323088.P2117753008903145133

/-! ## A323088.P9090008574752269579

`∑[A007978(A096375(2*(n+2)))%2]-A188014(n+1)`
-/

namespace A323088.P9090008574752269579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007978 (A096375 (2 * (n + 2))).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A188014 (n + 1)

end

end A323088.P9090008574752269579

/-! ## A323088.P7578815706026737209

`Δ[A286218(n+4)]%A286233(n+1)`
-/

namespace A323088.P7578815706026737209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286218 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A286233 (n + 1))

end

end A323088.P7578815706026737209

/-! ## A323088.P6984090154641983120

`A025914(lt[A025865(n), A025868(n)])`
-/

namespace A323088.P6984090154641983120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323088.P6984090154641983120

/-! ## A323088.P1860811451174669738

`A340998(A318727(n+1))+A280128(n)`
-/

namespace A323088.P1860811451174669738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A318727 (n + 1)).toNat + 140) + A280128 n

end

end A323088.P1860811451174669738

/-!
# A323089: Number of strict integer partitions of n using 1 and numbers that are not perfect powers.

The programs for A323089, there is no canonical definition to state claims against.
-/

/-! ## A323089.P17151990020046484526

`A323088(abs(1-n))+A323088(n)`
-/

namespace A323089.P17151990020046484526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323088 |1 - (n : ℤ)|.toNat + A323088 n

end

end A323089.P17151990020046484526

/-! ## A323089.P4561659401266985844

`A000196(A001462(A020695(n)-A074684(n)))`
-/

namespace A323089.P4561659401266985844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001462 (A020695 n - A074684 n).toNat).toNat

end

end A323089.P4561659401266985844

/-! ## A323089.P11648239619819675101

`A003056(A003056(xor(3, A186537(n))))`
-/

namespace A323089.P11648239619819675101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (Int.xor 3 (A186537 n)).toNat).toNat

end

end A323089.P11648239619819675101

/-! ## A323089.P9259737625866105051

`A048766(Δ[A230641(A014216(n+2))])`
-/

namespace A323089.P9259737625866105051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (A014216 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (n + 1) - f1 n).toNat

end

end A323089.P9259737625866105051

/-! ## A323089.P2814723670719758889

`A003056(A003056(or(n, A095020(n+1))))`
-/

namespace A323089.P2814723670719758889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (Int.lor (n : ℤ) (A095020 (n + 1))).toNat).toNat

end

end A323089.P2814723670719758889

/-!
# A323090: Number of strict factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A323090, there is no canonical definition to state claims against.
-/

/-! ## A323090.P5445950793102015668

`floor(A303707(n+1)²/A292886(n+1))`
-/

namespace A323090.P5445950793102015668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303707 (n + 1) ^ 2 : ℚ) / (A292886 (n + 1) : ℚ)⌋

end

end A323090.P5445950793102015668

/-! ## A323090.P9617451311305228208

`floor(A323087(n+1)²/A292886(n+1))`
-/

namespace A323090.P9617451311305228208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323087 (n + 1) ^ 2 : ℚ) / (A292886 (n + 1) : ℚ)⌋

end

end A323090.P9617451311305228208

/-! ## A323090.P8825165963561746825

`floor((A304649(n+1)+A000007(n))/sqrt(2))`
-/

namespace A323090.P8825165963561746825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304649 (n + 1) + A000007 n : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A323090.P8825165963561746825

/-! ## A323090.P3064768379155830713

`A056847(A304649(n+1)+A000007(n))`
-/

namespace A323090.P3064768379155830713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A304649 (n + 1) + A000007 n).toNat

end

end A323090.P3064768379155830713

/-! ## A323090.P11176725658694281831

`A004526(A335452(n+1)+A081707(n+1))`
-/

namespace A323090.P11176725658694281831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A335452 (n + 1) + A081707 (n + 1)).toNat

end

end A323090.P11176725658694281831

/-! ## A323090.P7756815871623899698

`A189663(A335452(n+1)+A008480(n+1))`
-/

namespace A323090.P7756815871623899698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A335452 (n + 1) + A008480 (n + 1)).toNat

end

end A323090.P7756815871623899698

/-! ## A323090.P415612030367819086

`A123108(A335452(n+1)+A081707(n+1))`
-/

namespace A323090.P415612030367819086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A335452 (n + 1) + A081707 (n + 1)).toNat

end

end A323090.P415612030367819086

/-! ## A323090.P9986086754902388006

`A004526(A335452(n+1)+A303707(n+1))`
-/

namespace A323090.P9986086754902388006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A335452 (n + 1) + A303707 (n + 1)).toNat

end

end A323090.P9986086754902388006

/-! ## A323090.P7198043236730549194

`A123108(A335452(n+1)+A303707(n+1))`
-/

namespace A323090.P7198043236730549194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A335452 (n + 1) + A303707 (n + 1)).toNat

end

end A323090.P7198043236730549194

/-! ## A323090.P8917683992856097042

`A081707(A292589(n+1))+A081400(A007948(n+1))`
-/

namespace A323090.P8917683992856097042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (A292589 (n + 1)).toNat + A081400 (A007948 (n + 1)).toNat

end

end A323090.P8917683992856097042

/-!
# A323091: Number of strict knapsack factorizations of n.

The programs for A323091, there is no canonical definition to state claims against.
-/

/-! ## A323091.P9968443521377702226

`A035574(∏{e}[n+1, #+1]+2)`
-/

namespace A323091.P9968443521377702226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 2)

end

end A323091.P9968443521377702226

/-! ## A323091.P17020981153451866811

`A036819(∏{e}[n+1, #+1]+2)`
-/

namespace A323091.P17020981153451866811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036819 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 2)

end

end A323091.P17020981153451866811

/-! ## A323091.P10654700989170413411

`A036825(∏{e}[n+1, #+1]+2)`
-/

namespace A323091.P10654700989170413411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036825 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 2)

end

end A323091.P10654700989170413411

/-! ## A323091.P16509258758367837387

`A035574(∑{d}[n+1, gcd(n, #)]+2)`
-/

namespace A323091.P16509258758367837387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + 2)

end

end A323091.P16509258758367837387

/-! ## A323091.P1433071028543111732

`A035574(Δ[A006218(n)]+2)`
-/

namespace A323091.P1433071028543111732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 (f1 (n + 1) - f1 n + 2).toNat

end

end A323091.P1433071028543111732

/-! ## A323091.P18328481890807238292

`A036819(A212356(n+1)+1)`
-/

namespace A323091.P18328481890807238292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036819 (A212356 (n + 1) + 1).toNat

end

end A323091.P18328481890807238292

/-! ## A323091.P16923802040002228647

`A035574(A000005(n+1)+2)`
-/

namespace A323091.P16923802040002228647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035574 (A000005 (n + 1) + 2).toNat

end

end A323091.P16923802040002228647

/-! ## A323091.P16744822320888423736

`A036819(A000005(n+1)+2)`
-/

namespace A323091.P16744822320888423736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036819 (A000005 (n + 1) + 2).toNat

end

end A323091.P16744822320888423736

/-! ## A323091.P8641570727016431205

`A036825(A000005(n+1)+2)`
-/

namespace A323091.P8641570727016431205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036825 (A000005 (n + 1) + 2).toNat

end

end A323091.P8641570727016431205

/-! ## A323091.P13060104079442697374

`2*A045778(n+1)-A320889(n+1)`
-/

namespace A323091.P13060104079442697374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045778 (n + 1) - A320889 (n + 1)

end

end A323091.P13060104079442697374

/-!
# A323092: Number of double-free integer partitions of n.

The programs for A323092, there is no canonical definition to state claims against.
-/

/-! ## A323092.P7237072292546306506

`A347243(A000726(n))-A211020(n)`
-/

namespace A323092.P7237072292546306506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (A000726 n).toNat - A211020 n

end

end A323092.P7237072292546306506

/-! ## A323092.P1873521376177386838

`A328499(A277101(n+3))+A000726(n)`
-/

namespace A323092.P1873521376177386838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328499 (A277101 (n + 3)).toNat + A000726 n

end

end A323092.P1873521376177386838

/-! ## A323092.P6918727109777652625

`A055640(A006926(n))+A000726(n)`
-/

namespace A323092.P6918727109777652625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A006926 n).toNat + A000726 n

end

end A323092.P6918727109777652625

/-! ## A323092.P8384568821557240268

`A350837(n)-A286336(A004647(n))`
-/

namespace A323092.P8384568821557240268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350837 n - A286336 (A004647 n).toNat

end

end A323092.P8384568821557240268

/-! ## A323092.P5330895544749298473

`A007095(A000726(n)%A072415(n+4))`
-/

namespace A323092.P5330895544749298473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A000726 n) (A072415 (n + 4))).toNat

end

end A323092.P5330895544749298473

/-!
# A323093: Number of integer partitions of n where no part is 2^k times any other part, for any k > 0.

The programs for A323093, there is no canonical definition to state claims against.
-/

/-! ## A323093.P15951720603300195089

`A074279(A280487(n))-char[A094598(n+1)]`
-/

namespace A323093.P15951720603300195089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094598 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A280487 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A323093.P15951720603300195089

/-!
# A323095: Digits of the 2-adic integer 7^(1/3).

The programs for A323095, there is no canonical definition to state claims against.
-/

/-! ## A323095.P14794429125248964913

`(A322934(n+1)-A322934(n))/2^n`
-/

namespace A323095.P14794429125248964913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322934 (n + 1) - A322934 n : ℚ) / (2 ^ n : ℚ)

end

end A323095.P14794429125248964913

/-! ## A323095.P298002806115412617

`ceil(Δ[atan(A322934(n))])`
-/

namespace A323095.P298002806115412617
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A322934 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A323095.P298002806115412617

/-! ## A323095.P15168628706914085903

`floor(A322934(n+1)/2^n)`
-/

namespace A323095.P15168628706914085903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322934 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A323095.P15168628706914085903

/-! ## A323095.P13461866674865830865

`Δ[A322934(n)]/A000079(n)`
-/

namespace A323095.P13461866674865830865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322934 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A323095.P13461866674865830865

/-! ## A323095.P15370325265093641482

`A000045(Δ[A322934(n)]/2^n)`
-/

namespace A323095.P15370325265093641482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A323095.P15370325265093641482

/-! ## A323095.P1796703324778665645

`A001222(Δ[A322934(n)]/2^n+1)`
-/

namespace A323095.P1796703324778665645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ) + 1)).toNat

end

end A323095.P1796703324778665645

/-!
# A323096: Digits of the 2-adic integer 9^(1/3).

The programs for A323096, there is no canonical definition to state claims against.
-/

/-! ## A323096.P15212811830411133148

`(A322999(n+1)-A322999(n))/2^n`
-/

namespace A323096.P15212811830411133148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322999 (n + 1) - A322999 n : ℚ) / (2 ^ n : ℚ)

end

end A323096.P15212811830411133148

/-! ## A323096.P3670182860546111457

`ceil(Δ[atan(A322999(n))])`
-/

namespace A323096.P3670182860546111457
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A322999 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A323096.P3670182860546111457

/-! ## A323096.P1432642674044139987

`floor(A322999(n+1)/2^n)`
-/

namespace A323096.P1432642674044139987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322999 (n + 1) : ℚ) / (2 ^ n : ℚ)⌋

end

end A323096.P1432642674044139987

/-! ## A323096.P6768416181186623982

`Δ[A322999(n)]/A000079(n)`
-/

namespace A323096.P6768416181186623982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A323096.P6768416181186623982

/-! ## A323096.P7724393899148125684

`A000045(Δ[A322999(n)]/2^n)`
-/

namespace A323096.P7724393899148125684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ))).toNat

end

end A323096.P7724393899148125684

/-! ## A323096.P4777582688132671810

`A001222(Δ[A322999(n)]/2^n+1)`
-/

namespace A323096.P4777582688132671810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ n : ℚ) + 1)).toNat

end

end A323096.P4777582688132671810

/-!
# A323097: Numbers m such that all elements of the Collatz trajectory occur in the divisors of m.

The programs for A323097, there is no canonical definition to state claims against.
-/

/-! ## A323097.P15533552242973035281

`∩[A003714(n), A225878(n+1)]`
-/

namespace A323097.P15533552242973035281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323097.P15533552242973035281

/-! ## A323097.P12588824086134964848

`∩[A105425(n), A225878(n+1)]`
-/

namespace A323097.P12588824086134964848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323097.P12588824086134964848

/-! ## A323097.P14043649068446297507

`∩[A107909(n), A225878(n+1)]`
-/

namespace A323097.P14043649068446297507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323097.P14043649068446297507

/-! ## A323097.P7453879297086673320

`∩[A004743(n+1), A225878(n+1)]`
-/

namespace A323097.P7453879297086673320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323097.P7453879297086673320

/-! ## A323097.P3790262919412816261

`∩[A032937(n+1), A225878(n+1)]`
-/

namespace A323097.P3790262919412816261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323097.P3790262919412816261

/-!
# A323099: Number T(n,k) of colored set partitions of [n] where exactly k colors are used for the elements; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A323099, there is no canonical definition to state claims against.
-/

/-! ## A323099.P6419496614218171329

`A123081(n)*A131689(n)`
-/

namespace A323099.P6419496614218171329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 n * A131689 n

end

end A323099.P6419496614218171329

/-! ## A323099.P8126837780878720834

`abs(A123081(n)*A278075(n))`
-/

namespace A323099.P8126837780878720834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123081 n * A278075 n|

end

end A323099.P8126837780878720834

/-! ## A323099.P7773929685045002124

`A000110(A003056(n))*A131689(n)`
-/

namespace A323099.P7773929685045002124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A003056 n).toNat * A131689 n

end

end A323099.P7773929685045002124

/-! ## A323099.P457971659290706286

`A011971(A057944(n))*A131689(n)`
-/

namespace A323099.P457971659290706286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A057944 n).toNat * A131689 n

end

end A323099.P457971659290706286

/-! ## A323099.P3918632314515509573

`A048993(n)*A123081(n)*A233543(n)`
-/

namespace A323099.P3918632314515509573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A123081 n * A233543 n

end

end A323099.P3918632314515509573

/-! ## A323099.P13271134552135741214

`A123081(n)/A119502(n)*A156815(n)`
-/

namespace A323099.P13271134552135741214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123081 n : ℚ) / (A119502 n : ℚ) * (A156815 n : ℚ)

end

end A323099.P13271134552135741214

/-! ## A323099.P7951005270594495406

`A123081(n)*A144328(n+1)*A142071(n)`
-/

namespace A323099.P7951005270594495406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 n * A144328 (n + 1) * A142071 n

end

end A323099.P7951005270594495406

