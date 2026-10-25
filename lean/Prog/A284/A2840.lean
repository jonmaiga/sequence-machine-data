import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A284000: a(n) = a(a(n-A002828(n))) + a(n-a(n-A002828(n))) with a(1) = a(2) = a(3) = 1, where A002828(n) = the least number of squares that add up to n.

The programs for A284000, there is no canonical definition to state claims against.
-/

/-! ## A284000.P9130994868467428472

`a(a(A255131(n+1)-1)-1)+a(n-a(A255131(n+1)-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A284000.P9130994868467428472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (a (A255131 (n + 1) - 1).toNat - 1) + a (n - a (A255131 (n + 1) - 1).toNat)

end

end A284000.P9130994868467428472

/-! ## A284000.P11275434686803370759

`a(a(n-A002828(n+1))-1)+a(n-a(n-A002828(n+1)))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284000.P11275434686803370759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (a ((n : ℤ) - A002828 (n + 1)).toNat - 1) + a (n - a ((n : ℤ) - A002828 (n + 1)).toNat)

end

end A284000.P11275434686803370759

/-!
# A284001: a(n) = A005361(A283477(n)).

The programs for A284001, the canonical program `A284001.P14180403267853995010` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284001 has offset 0).

The definition of A284001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284001.P14180403267853995010

`A003963(A057335(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A284001

/-- `A003963(A057335(n))` -/
def P14180403267853995010.Spec : Prop :=
  ∀ n, P14180403267853995010.a n = A284001 n

theorem P14180403267853995010.correct : P14180403267853995010.Spec := by
  intro n
  simp only [A284001]

end A284001

/-! ## A284001.P12265564028258618479

`A005361(A283477(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284001.P12265564028258618479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A283477 n).toNat

end

end A284001.P12265564028258618479

namespace A284001

/-- `A005361(A283477(n))` -/
def P12265564028258618479.Spec : Prop :=
  ∀ n, P12265564028258618479.a n = A284001 n

end A284001

/-! ## A284001.P2635052550139535674

`a(floor(n/2))*A000120(n)` with `a(0)=1`
-/

namespace A284001.P2635052550139535674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A000120 n

end

end A284001.P2635052550139535674

namespace A284001

/-- `a(floor(n/2))*A000120(n)` -/
def P2635052550139535674.Spec : Prop :=
  ∀ n, P2635052550139535674.a n = A284001 n

end A284001

/-! ## A284001.P1936489820878463411

`log2(A001316(n))*a(floor(n/2))` with `a(0)=1`
-/

namespace A284001.P1936489820878463411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.logb 2 (A001316 n : ℝ) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A284001.P1936489820878463411

namespace A284001

/-- `log2(A001316(n))*a(floor(n/2))` -/
def P1936489820878463411.Spec : Prop :=
  ∀ n, P1936489820878463411.a n = (A284001 n : ℝ)

end A284001

/-! ## A284001.P7812960821480693867

`A284005(n-A053644(n))`
-/

namespace A284001.P7812960821480693867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 ((n : ℤ) - A053644 n).toNat

end

end A284001.P7812960821480693867

namespace A284001

/-- `A284005(n-A053644(n))` -/
def P7812960821480693867.Spec : Prop :=
  ∀ n, P7812960821480693867.a n = A284001 n

end A284001

/-! ## A284001.P17634171080502057701

`A284005(and(n, A318934(n+1)))`
-/

namespace A284001.P17634171080502057701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (Int.land (n : ℤ) (A318934 (n + 1))).toNat

end

end A284001.P17634171080502057701

namespace A284001

/-- `A284005(and(n, A318934(n+1)))` -/
def P17634171080502057701.Spec : Prop :=
  ∀ n, P17634171080502057701.a n = A284001 n

end A284001

/-! ## A284001.P3620467688619946448

`a(A123108(n))*A000120(n)/a(n%2)` with `a(0)=1, a(1)=1`
-/

namespace A284001.P3620467688619946448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A123108 n).toNat * (A000120 n : ℚ) / a (n % 2)

end

end A284001.P3620467688619946448

namespace A284001

/-- `a(A123108(n))*A000120(n)/a(n%2)` -/
def P3620467688619946448.Spec : Prop :=
  ∀ n, P3620467688619946448.a n = (A284001 n : ℚ)

end A284001

/-! ## A284001.P2767061004599514829

`A284005((A006257(n)-A057427(n))/2)`
-/

namespace A284001.P2767061004599514829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (SequenceMachineLib.roundAway ((A006257 n - A057427 n : ℚ) / 2)).toNat

end

end A284001.P2767061004599514829

namespace A284001

/-- `A284005((A006257(n)-A057427(n))/2)` -/
def P2767061004599514829.Spec : Prop :=
  ∀ n, P2767061004599514829.a n = A284001 n

end A284001

/-! ## A284001.P5017699245704796480

`A284005(A053645(A063946(A038572(2*n+1))))`
-/

namespace A284001.P5017699245704796480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A053645 (A063946 (A038572 (2 * n + 1)).toNat).toNat).toNat

end

end A284001.P5017699245704796480

namespace A284001

/-- `A284005(A053645(A063946(A038572(2*n+1))))` -/
def P5017699245704796480.Spec : Prop :=
  ∀ n, P5017699245704796480.a n = A284001 n

end A284001

/-! ## A284001.P14941535915130201538

`A284005(A164089(2*n+1))`
-/

namespace A284001.P14941535915130201538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A164089 (2 * n + 1)).toNat

end

end A284001.P14941535915130201538

namespace A284001

/-- `A284005(A164089(2*n+1))` -/
def P14941535915130201538.Spec : Prop :=
  ∀ n, P14941535915130201538.a n = A284001 n

end A284001

/-! ## A284001.P11874038307976321480

`A284005(A053645(A153141(A004760(n+2))))`
-/

namespace A284001.P11874038307976321480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A053645 (A153141 (A004760 (n + 2)).toNat).toNat).toNat

end

end A284001.P11874038307976321480

namespace A284001

/-- `A284005(A053645(A153141(A004760(n+2))))` -/
def P11874038307976321480.Spec : Prop :=
  ∀ n, P11874038307976321480.a n = A284001 n

end A284001

/-!
# A284002: a(n) = A072411(A283477(n)).

The programs for A284002, the canonical program `A284002.P16892226673696130111` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284002 has offset 0).

The definition of A284002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284002.P16892226673696130111

`gcd(60, ∑[∑{e}[xor(n, -n), 2-#]]!)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284002

/-- `gcd(60, ∑[∑{e}[xor(n, -n), 2-#]]!)` -/
def P16892226673696130111.Spec : Prop :=
  ∀ n, (P16892226673696130111.a n : ℤ) = A284002 n

theorem P16892226673696130111.correct : P16892226673696130111.Spec := by
  intro n
  simp only [A284002]

end A284002

/-! ## A284002.P9729165671059920058

`gcd(60, A093659(n))`
-/

namespace A284002.P9729165671059920058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 60 (A093659 n)

end

end A284002.P9729165671059920058

namespace A284002

/-- `gcd(60, A093659(n))` -/
def P9729165671059920058.Spec : Prop :=
  ∀ n, (P9729165671059920058.a n : ℤ) = A284002 n

end A284002

/-! ## A284002.P15787530403933441168

`gcd(A000120(n)!, 420)`
-/

namespace A284002.P15787530403933441168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (A000120 n).toNat) 420

end

end A284002.P15787530403933441168

namespace A284002

/-- `gcd(A000120(n)!, 420)` -/
def P15787530403933441168.Spec : Prop :=
  ∀ n, (P15787530403933441168.a n : ℤ) = A284002 n

end A284002

/-! ## A284002.P111829149212528774

`A003418(val(C(2*n, n), 2))`
-/

namespace A284002.P111829149212528774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (SequenceMachineLib.valuation (Nat.choose (2 * n) n) 2)

end

end A284002.P111829149212528774

namespace A284002

/-- `A003418(val(C(2*n, n), 2))` -/
def P111829149212528774.Spec : Prop :=
  ∀ n, P111829149212528774.a n = A284002 n

end A284002

/-! ## A284002.P14599988328479778930

`A003418(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A284002.P14599988328479778930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284002.P14599988328479778930

namespace A284002

/-- `A003418(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P14599988328479778930.Spec : Prop :=
  ∀ n, P14599988328479778930.a n = A284002 n

end A284002

/-! ## A284002.P2938845804310077976

`A347304(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A284002.P2938845804310077976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284002.P2938845804310077976

namespace A284002

/-- `A347304(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P2938845804310077976.Spec : Prop :=
  ∀ n, P2938845804310077976.a n = A284002 n

end A284002

/-! ## A284002.P11261202822527259132

`A019554(∑[∑{e}[xor(n, -n), 2-#]]!)`
-/

namespace A284002.P11261202822527259132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A284002.P11261202822527259132

namespace A284002

/-- `A019554(∑[∑{e}[xor(n, -n), 2-#]]!)` -/
def P11261202822527259132.Spec : Prop :=
  ∀ n, P11261202822527259132.a n = A284002 n

end A284002

/-! ## A284002.P680050347457886541

`A347304(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A284002.P680050347457886541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347304 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A284002.P680050347457886541

namespace A284002

/-- `A347304(∑[1-∑{e}[or(n, -n), #]]-1)` -/
def P680050347457886541.Spec : Prop :=
  ∀ n, P680050347457886541.a n = A284002 n

end A284002

/-! ## A284002.P826278142653012597

`A065887(2*n-∑[∑{e}[xor(n, -n), #]])`
-/

namespace A284002.P826278142653012597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065887 (2 * n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284002.P826278142653012597

namespace A284002

/-- `A065887(2*n-∑[∑{e}[xor(n, -n), #]])` -/
def P826278142653012597.Spec : Prop :=
  ∀ n, P826278142653012597.a n = A284002 n

end A284002

/-! ## A284002.P12715839773527799335

`A003418(A000120(n))`
-/

namespace A284002.P12715839773527799335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000120 n).toNat

end

end A284002.P12715839773527799335

namespace A284002

/-- `A003418(A000120(n))` -/
def P12715839773527799335.Spec : Prop :=
  ∀ n, P12715839773527799335.a n = A284002 n

end A284002

/-! ## A284002.P163475099134811706

`A051732(A001316(n))`
-/

namespace A284002.P163475099134811706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051732 (A001316 n).toNat

end

end A284002.P163475099134811706

namespace A284002

/-- `A051732(A001316(n))` -/
def P163475099134811706.Spec : Prop :=
  ∀ n, P163475099134811706.a n = A284002 n

end A284002

/-! ## A284002.P7140884477350351147

`A019554(A093659(n))`
-/

namespace A284002.P7140884477350351147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A093659 n).toNat

end

end A284002.P7140884477350351147

namespace A284002

/-- `A019554(A093659(n))` -/
def P7140884477350351147.Spec : Prop :=
  ∀ n, P7140884477350351147.a n = A284002 n

end A284002

/-! ## A284002.P3708723855974957718

`A271410(A038573(n))`
-/

namespace A284002.P3708723855974957718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A038573 n).toNat

end

end A284002.P3708723855974957718

namespace A284002

/-- `A271410(A038573(n))` -/
def P3708723855974957718.Spec : Prop :=
  ∀ n, P3708723855974957718.a n = A284002 n

end A284002

/-! ## A284002.P14564078252769352414

`A329378(A019565(n))`
-/

namespace A284002.P14564078252769352414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A019565 n).toNat

end

end A284002.P14564078252769352414

namespace A284002

/-- `A329378(A019565(n))` -/
def P14564078252769352414.Spec : Prop :=
  ∀ n, P14564078252769352414.a n = A284002 n

end A284002

/-! ## A284002.P5423992594782979378

`A139552(A324467(n))`
-/

namespace A284002.P5423992594782979378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139552 (A324467 n).toNat

end

end A284002.P5423992594782979378

namespace A284002

/-- `A139552(A324467(n))` -/
def P5423992594782979378.Spec : Prop :=
  ∀ n, P5423992594782979378.a n = A284002 n

end A284002

/-! ## A284002.P8123156475172744467

`A384184(A159913(n))`
-/

namespace A284002.P8123156475172744467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384184 (A159913 n).toNat

end

end A284002.P8123156475172744467

namespace A284002

/-- `A384184(A159913(n))` -/
def P8123156475172744467.Spec : Prop :=
  ∀ n, P8123156475172744467.a n = A284002 n

end A284002

/-! ## A284002.P4022595645764554761

`A003418(log2(A001316(n)))`
-/

namespace A284002.P4022595645764554761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A284002.P4022595645764554761

namespace A284002

/-- `A003418(log2(A001316(n)))` -/
def P4022595645764554761.Spec : Prop :=
  ∀ n, P4022595645764554761.a n = A284002 n

end A284002

/-! ## A284002.P17561625213037724776

`A019554(A000120(n)!)`
-/

namespace A284002.P17561625213037724776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Nat.factorial (A000120 n).toNat)

end

end A284002.P17561625213037724776

namespace A284002

/-- `A019554(A000120(n)!)` -/
def P17561625213037724776.Spec : Prop :=
  ∀ n, P17561625213037724776.a n = A284002 n

end A284002

/-! ## A284002.P13737968429177065022

`A003418(∑[A088705(n)])`
-/

namespace A284002.P13737968429177065022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284002.P13737968429177065022

namespace A284002

/-- `A003418(∑[A088705(n)])` -/
def P13737968429177065022.Spec : Prop :=
  ∀ n, P13737968429177065022.a n = A284002 n

end A284002

/-! ## A284002.P7138498447163965398

`A051732(A038573(n)+1)`
-/

namespace A284002.P7138498447163965398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051732 (A038573 n + 1).toNat

end

end A284002.P7138498447163965398

namespace A284002

/-- `A051732(A038573(n)+1)` -/
def P7138498447163965398.Spec : Prop :=
  ∀ n, P7138498447163965398.a n = A284002 n

end A284002

/-!
# A284003: a(n) = A007913(A283477(n)) = A019565(A006068(n)).

The programs for A284003, there is no canonical definition to state claims against.
-/

/-! ## A284003.P2323436170900812014

`A019565(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284003.P2323436170900812014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A006068 n).toNat

end

end A284003.P2323436170900812014

/-! ## A284003.P5935246136442374566

`A302033(A064707(n))`
-/

namespace A284003.P5935246136442374566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A064707 n).toNat

end

end A284003.P5935246136442374566

/-! ## A284003.P11685408433624320472

`A007913(A283477(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284003.P11685408433624320472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A283477 n).toNat

end

end A284003.P11685408433624320472

/-! ## A284003.P13085452566633500982

`A365810(A234612(n))`
-/

namespace A284003.P13085452566633500982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A234612 n).toNat

end

end A284003.P13085452566633500982

/-! ## A284003.P13110165545109310508

`A019565(A268716(n)/2)`
-/

namespace A284003.P13110165545109310508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A284003.P13110165545109310508

/-! ## A284003.P3811184122331279198

`A339809(or(char[1], A006068(n)))+1`
-/

namespace A284003.P3811184122331279198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A006068 n)).toNat + 1

end

end A284003.P3811184122331279198

/-! ## A284003.P1182785603623960235

`A019565(A064707(A003188(n)))`
-/

namespace A284003.P1182785603623960235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A064707 (A003188 n).toNat).toNat

end

end A284003.P1182785603623960235

/-! ## A284003.P10615326188056200154

`A339809(A006068(n))+char[A234027(n)]`
-/

namespace A284003.P10615326188056200154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A006068 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284003.P10615326188056200154

/-! ## A284003.P89351713488705524

`A160102(A302783(n))`
-/

namespace A284003.P89351713488705524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A302783 n).toNat

end

end A284003.P89351713488705524

/-! ## A284003.P3556552582929373745

`A328571(A276156(2*n)/2)`
-/

namespace A284003.P3556552582929373745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (SequenceMachineLib.roundAway ((A276156 (2 * n) : ℚ) / 2)).toNat

end

end A284003.P3556552582929373745

/-!
# A284004: a(n) = A046523(A284003(n)).

The programs for A284004, there is no canonical definition to state claims against.
-/

/-! ## A284004.P13214113829292502236

`A046523(A284003(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284004.P13214113829292502236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A284003 n).toNat

end

end A284004.P13214113829292502236

/-! ## A284004.P4142446306002711801

`A002110(A209281(n+1))`
-/

namespace A284004.P4142446306002711801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A209281 (n + 1)).toNat

end

end A284004.P4142446306002711801

/-! ## A284004.P3823766561007619777

`A002110(A089215(n+1)-1)`
-/

namespace A284004.P3823766561007619777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A089215 (n + 1) - 1).toNat

end

end A284004.P3823766561007619777

/-! ## A284004.P13780766531507655338

`A002110(A000120(A006068(n)))`
-/

namespace A284004.P13780766531507655338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000120 (A006068 n).toNat).toNat

end

end A284004.P13780766531507655338

/-! ## A284004.P5855523846793536332

`A019565(A038573(A268716(n)))`
-/

namespace A284004.P5855523846793536332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A038573 (A268716 n).toNat).toNat

end

end A284004.P5855523846793536332

/-! ## A284004.P13234746256815687438

`A323507(A268716(A268716(n))/2)`
-/

namespace A284004.P13234746256815687438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323507 (SequenceMachineLib.roundAway ((A268716 (A268716 n).toNat : ℚ) / 2)).toNat

end

end A284004.P13234746256815687438

/-! ## A284004.P2524548555583529891

`A278222(2*A000695(A006068(n)))`
-/

namespace A284004.P2524548555583529891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (2 * A000695 (A006068 n).toNat).toNat

end

end A284004.P2524548555583529891

/-! ## A284004.P12992403532904914161

`A278222(A048678(2*A006068(n)))`
-/

namespace A284004.P12992403532904914161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A048678 (2 * A006068 n).toNat).toNat

end

end A284004.P12992403532904914161

/-! ## A284004.P707375431042807942

`A278222(lcm(2, A000695(A006068(n))))`
-/

namespace A284004.P707375431042807942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.lcm 2 (A000695 (A006068 n).toNat))

end

end A284004.P707375431042807942

/-! ## A284004.P1133712878876880921

`∏{p}[A163755(A064707(n)), #]`
-/

namespace A284004.P1133712878876880921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 (A064707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284004.P1133712878876880921

/-! ## A284004.P8343830354841896957

`∏{p}[A057335(A268716(n)/2), #]`
-/

namespace A284004.P8343830354841896957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A284004.P8343830354841896957

/-!
# A284005: a(0) = 1, and for n > 1, a(n) = (1 + A000120(n))*a(floor(n/2)); also a(n) = A000005(A283477(n)).

The programs for A284005, the canonical program `A284005.P12569247682710505975` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284005 has offset 0).

The definition of A284005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+A000120(n))*a(floor(n/2))` (program `A284005.P12569247682710505975`, by `A284005.P12569247682710505975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284005.P12569247682710505975

`(1+A000120(n))*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284005

/-- `(1+A000120(n))*a(floor(n/2))` -/
def P12569247682710505975.Spec : Prop :=
  ∀ n, P12569247682710505975.a n = A284005 n

theorem P12569247682710505975.correct : P12569247682710505975.Spec := by
  intro n
  simp only [A284005]

end A284005

/-! ## A284005.P13984526609729600635

`A000005(A283477(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284005.P13984526609729600635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A283477 n).toNat

end

end A284005.P13984526609729600635

namespace A284005

/-- `A000005(A283477(n))` -/
def P13984526609729600635.Spec : Prop :=
  ∀ n, P13984526609729600635.a n = A284005 n

end A284005

/-! ## A284005.P2398630251714614862

`A000142(A000120(n)+1)*A341392(n)`
-/

namespace A284005.P2398630251714614862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000120 n + 1).toNat * A341392 n

end

end A284005.P2398630251714614862

namespace A284005

/-- `A000142(A000120(n)+1)*A341392(n)` -/
def P2398630251714614862.Spec : Prop :=
  ∀ n, P2398630251714614862.a n = A284005 n

end A284005

/-! ## A284005.P15043799032890531951

`a(A140106(n+2))*(A000120(n)+1)` with `a(0)=1`
-/

namespace A284005.P15043799032890531951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A140106 (n + 2)).toNat * (A000120 n + 1)

end

end A284005.P15043799032890531951

namespace A284005

/-- `a(A140106(n+2))*(A000120(n)+1)` -/
def P15043799032890531951.Spec : Prop :=
  ∀ n, P15043799032890531951.a n = A284005 n

end A284005

/-! ## A284005.P7217127760542833783

`A000142(A000120(n))*A341392(2*n)`
-/

namespace A284005.P7217127760542833783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000120 n).toNat * A341392 (2 * n)

end

end A284005.P7217127760542833783

namespace A284005

/-- `A000142(A000120(n))*A341392(2*n)` -/
def P7217127760542833783.Spec : Prop :=
  ∀ n, P7217127760542833783.a n = A284005 n

end A284005

/-! ## A284005.P382481991155837187

`a(A002265(2*n))*(A000120(n)+1)` with `a(0)=1`
-/

namespace A284005.P382481991155837187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002265 (2 * n)).toNat * (A000120 n + 1)

end

end A284005.P382481991155837187

namespace A284005

/-- `a(A002265(2*n))*(A000120(n)+1)` -/
def P382481991155837187.Spec : Prop :=
  ∀ n, P382481991155837187.a n = A284005 n

end A284005

/-! ## A284005.P1378140935886461937

`A284001(A004760(n+2))`
-/

namespace A284005.P1378140935886461937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A004760 (n + 2)).toNat

end

end A284005.P1378140935886461937

namespace A284005

/-- `A284001(A004760(n+2))` -/
def P1378140935886461937.Spec : Prop :=
  ∀ n, P1378140935886461937.a n = A284005 n

end A284005

/-! ## A284005.P900800386919653873

`A284001(A062383(n)+n)`
-/

namespace A284005.P900800386919653873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A062383 n + (n : ℤ)).toNat

end

end A284005.P900800386919653873

namespace A284005

/-- `A284001(A062383(n)+n)` -/
def P900800386919653873.Spec : Prop :=
  ∀ n, P900800386919653873.a n = A284005 n

end A284005

/-! ## A284005.P1000456409378355988

`A284001(xor(n, A062383(n)))`
-/

namespace A284005.P1000456409378355988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (Int.xor (n : ℤ) (A062383 n)).toNat

end

end A284005.P1000456409378355988

namespace A284005

/-- `A284001(xor(n, A062383(n)))` -/
def P1000456409378355988.Spec : Prop :=
  ∀ n, P1000456409378355988.a n = A284005 n

end A284005

/-! ## A284005.P7401405210546248127

`A284001(A038572(2*n+1))`
-/

namespace A284005.P7401405210546248127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A038572 (2 * n + 1)).toNat

end

end A284005.P7401405210546248127

namespace A284005

/-- `A284001(A038572(2*n+1))` -/
def P7401405210546248127.Spec : Prop :=
  ∀ n, P7401405210546248127.a n = A284005 n

end A284005

/-! ## A284005.P1900807306225721349

`A284001(A053644(2*n)+n)`
-/

namespace A284005.P1900807306225721349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A053644 (2 * n) + (n : ℤ)).toNat

end

end A284005.P1900807306225721349

namespace A284005

/-- `A284001(A053644(2*n)+n)` -/
def P1900807306225721349.Spec : Prop :=
  ∀ n, P1900807306225721349.a n = A284005 n

end A284005

/-! ## A284005.P4471014834971247011

`A284001(A206332(2*n+1)/2)`
-/

namespace A284005.P4471014834971247011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (SequenceMachineLib.roundAway ((A206332 (2 * n + 1) : ℚ) / 2)).toNat

end

end A284005.P4471014834971247011

namespace A284005

/-- `A284001(A206332(2*n+1)/2)` -/
def P4471014834971247011.Spec : Prop :=
  ∀ n, P4471014834971247011.a n = A284005 n

end A284005

/-! ## A284005.P91540669241670826

`A284001(A035327(n)+2*n+1)`
-/

namespace A284005.P91540669241670826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A035327 n + (2 * n + 1 : ℤ)).toNat

end

end A284005.P91540669241670826

namespace A284005

/-- `A284001(A035327(n)+2*n+1)` -/
def P91540669241670826.Spec : Prop :=
  ∀ n, P91540669241670826.a n = A284005 n

end A284005

/-! ## A284005.P8614002959762012397

`A284001(A206332(n+1))`
-/

namespace A284005.P8614002959762012397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A206332 (n + 1)).toNat

end

end A284005.P8614002959762012397

namespace A284005

/-- `A284001(A206332(n+1))` -/
def P8614002959762012397.Spec : Prop :=
  ∀ n, P8614002959762012397.a n = A284005 n

end A284005

/-! ## A284005.P2897250495018762927

`A284001(A080544(2*n+2*n+1))`
-/

namespace A284005.P2897250495018762927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A080544 (2 * n + (2 * n + 1))).toNat

end

end A284005.P2897250495018762927

namespace A284005

/-- `A284001(A080544(2*n+2*n+1))` -/
def P2897250495018762927.Spec : Prop :=
  ∀ n, P2897250495018762927.a n = A284005 n

end A284005

/-! ## A284005.P12280886552292453511

`A341392(A124108(n))`
-/

namespace A284005.P12280886552292453511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A124108 n).toNat

end

end A284005.P12280886552292453511

namespace A284005

/-- `A341392(A124108(n))` -/
def P12280886552292453511.Spec : Prop :=
  ∀ n, P12280886552292453511.a n = A284005 n

end A284005

/-!
# A284006: a(n) = a(a(n-A001511(n))) + a(n-a(n-A001511(n))) with a(1) = a(2) = 1, where A001511(n) = 1 + exponent of the highest power of 2 dividing n.

The programs for A284006, the canonical program `A284006.P12312417108895449444` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284006 has offset 1).

The definition of A284006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` (program `A284006.P12312417108895449444`, by `A284006.P12312417108895449444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284006.P12312417108895449444

`a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284006

/-- `a(a(n-A001511(n+1))-1)+a(n-a(n-A001511(n+1)))` -/
def P12312417108895449444.Spec : Prop :=
  ∀ n, (P12312417108895449444.a n : ℤ) = A284006 (n + 1)

theorem P12312417108895449444.correct : P12312417108895449444.Spec := by
  intro n
  simp only [A284006, Nat.add_sub_cancel]

end A284006

/-! ## A284006.P6847075866186444669

`a(a(A093049(n+1)-1)-1)+a(n-a(A093049(n+1)-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A284006.P6847075866186444669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (a (A093049 (n + 1) - 1).toNat - 1) + a (n - a (A093049 (n + 1) - 1).toNat)

end

end A284006.P6847075866186444669

namespace A284006

/-- `a(a(A093049(n+1)-1)-1)+a(n-a(A093049(n+1)-1))` -/
def P6847075866186444669.Spec : Prop :=
  ∀ n, (P6847075866186444669.a n : ℤ) = A284006 (n + 1)

end A284006

/-! ## A284006.P12419980755297054681

`∑[A002260(A304249(n))%2]`
-/

namespace A284006.P12419980755297054681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A304249 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284006.P12419980755297054681

namespace A284006

/-- `∑[A002260(A304249(n))%2]` -/
def P12419980755297054681.Spec : Prop :=
  ∀ n, P12419980755297054681.a n = A284006 (n + 1)

end A284006

/-! ## A284006.P14284265958140905221

`∑[A000035(A002260(A304249(n)))]`
-/

namespace A284006.P14284265958140905221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (A304249 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284006.P14284265958140905221

namespace A284006

/-- `∑[A000035(A002260(A304249(n)))]` -/
def P14284265958140905221.Spec : Prop :=
  ∀ n, P14284265958140905221.a n = A284006 (n + 1)

end A284006

/-! ## A284006.P11234942546915503309

`∑[A285383(A268154(n)+A179085(n+1))]`
-/

namespace A284006.P11234942546915503309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (A268154 n + A179085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284006.P11234942546915503309

namespace A284006

/-- `∑[A285383(A268154(n)+A179085(n+1))]` -/
def P11234942546915503309.Spec : Prop :=
  ∀ n, P11234942546915503309.a n = A284006 (n + 1)

end A284006

/-!
# A284007: a(n) = a(a(n-A002487(n))) + a(n-a(n-A002487(n))) with a(1) = a(2) = 1, where A002487 = Stern-Brocot sequence.

The programs for A284007, the canonical program `A284007.P7935664608743128822` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284007 has offset 1).

The definition of A284007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284007.P7935664608743128822

`a(a(n-A002487(n+1))-1)+a(n-a(n-A002487(n+1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284007

/-- `a(a(n-A002487(n+1))-1)+a(n-a(n-A002487(n+1)))` -/
def P7935664608743128822.Spec : Prop :=
  ∀ n, (P7935664608743128822.a n : ℤ) = A284007 (n + 1)

theorem P7935664608743128822.correct : P7935664608743128822.Spec := by
  intro n
  simp only [A284007, Nat.add_sub_cancel]

end A284007

/-! ## A284007.P11299123655430708323

`a(a(A284013(n+1)-1)-1)+a(n-a(A284013(n+1)-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A284007.P11299123655430708323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (a (A284013 (n + 1) - 1).toNat - 1) + a (n - a (A284013 (n + 1) - 1).toNat)

end

end A284007.P11299123655430708323

namespace A284007

/-- `a(a(A284013(n+1)-1)-1)+a(n-a(A284013(n+1)-1))` -/
def P11299123655430708323.Spec : Prop :=
  ∀ n, (P11299123655430708323.a n : ℤ) = A284007 (n + 1)

end A284007

/-! ## A284007.P3310451293034977413

`A135660(A331043(n+2)+A014580(n+1))`
-/

namespace A284007.P3310451293034977413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A331043 (n + 2) + A014580 (n + 1)).toNat

end

end A284007.P3310451293034977413

namespace A284007

/-- `A135660(A331043(n+2)+A014580(n+1))` -/
def P3310451293034977413.Spec : Prop :=
  ∀ n, P3310451293034977413.a n = A284007 (n + 1)

end A284007

/-! ## A284007.P17352925854859437391

`A179801(A064945(n+1))+∑[char[2*n]]`
-/

namespace A284007.P17352925854859437391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A064945 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284007.P17352925854859437391

namespace A284007

/-- `A179801(A064945(n+1))+∑[char[2*n]]` -/
def P17352925854859437391.Spec : Prop :=
  ∀ n, P17352925854859437391.a n = A284007 (n + 1)

end A284007

/-! ## A284007.P5274007122655774203

`∑[A002024(∑[A300182(n+1)+2]+1)%2]`
-/

namespace A284007.P5274007122655774203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300182 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284007.P5274007122655774203

namespace A284007

/-- `∑[A002024(∑[A300182(n+1)+2]+1)%2]` -/
def P5274007122655774203.Spec : Prop :=
  ∀ n, P5274007122655774203.a n = A284007 (n + 1)

end A284007

/-!
# A284008: a(n) = lcm(A260443(n), A260443(1+n)).

The programs for A284008, there is no canonical definition to state claims against.
-/

/-! ## A284008.P15028699307500077380

`lcm(A260443(n), A260443(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284008.P15028699307500077380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260443 n) (A260443 (1 + n))

end

end A284008.P15028699307500077380

/-! ## A284008.P18351559867954517446

`A277324(n)/A277198(n)`
-/

namespace A284008.P18351559867954517446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 n : ℚ) / (A277198 n : ℚ)

end

end A284008.P18351559867954517446

/-! ## A284008.P13109525311291814345

`A284576(n)/A277198(n)*A284578(n)`
-/

namespace A284008.P13109525311291814345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n : ℚ) / (A277198 n : ℚ) * (A284578 n : ℚ)

end

end A284008.P13109525311291814345

/-! ## A284008.P7693403261989839372

`A260443(2*n+1)/A277198(n)`
-/

namespace A284008.P7693403261989839372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (2 * n + 1) : ℚ) / (A277198 n : ℚ)

end

end A284008.P7693403261989839372

/-! ## A284008.P10875034435127491393

`gcd(A066460(A340387(n+4)), A284576(n))`
-/

namespace A284008.P10875034435127491393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066460 (A340387 (n + 4)).toNat) (A284576 n)

end

end A284008.P10875034435127491393

/-!
# A284009: Number of primes (counted with multiplicity) dividing lcm(A260443(n), A260443(n+1)): a(n) = A001222(A284008(n)).

The programs for A284009, there is no canonical definition to state claims against.
-/

/-! ## A284009.P10149052916916192782

`A001222(A284008(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284009.P10149052916916192782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284008 n).toNat

end

end A284009.P10149052916916192782

/-! ## A284009.P10325207091706160255

`A007306(n+1)-A277328(n)`
-/

namespace A284009.P10325207091706160255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A277328 n

end

end A284009.P10325207091706160255

/-! ## A284009.P15857152059161589341

`A002487(n+1)+A002487(n)-A277328(n)`
-/

namespace A284009.P15857152059161589341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A277328 n)

end

end A284009.P15857152059161589341

/-! ## A284009.P17780009176090123196

`Δ[A282720(n)]-A277328(n)`
-/

namespace A284009.P17780009176090123196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A277328 n

end

end A284009.P17780009176090123196

/-! ## A284009.P6795243489652303378

`A071585(A233280(n))-A277328(n)`
-/

namespace A284009.P6795243489652303378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A233280 n).toNat - A277328 n

end

end A284009.P6795243489652303378

/-! ## A284009.P6908246717610127005

`A071585(A003188(n))-A277328(n)`
-/

namespace A284009.P6908246717610127005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A003188 n).toNat - A277328 n

end

end A284009.P6908246717610127005

/-! ## A284009.P15538831446848973003

`A002487(2*n+1)-A277328(n)`
-/

namespace A284009.P15538831446848973003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A277328 n

end

end A284009.P15538831446848973003

/-! ## A284009.P1223907555217304013

`A287896(2*n+1)-A277328(n)`
-/

namespace A284009.P1223907555217304013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A277328 n

end

end A284009.P1223907555217304013

/-! ## A284009.P2210998110509001603

`A007306(n+1)-A001222(A278543(n))`
-/

namespace A284009.P2210998110509001603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A001222 (A278543 n).toNat

end

end A284009.P2210998110509001603

/-! ## A284009.P15463593290906395100

`A287896(2*n+1)-A001222(A278543(n))`
-/

namespace A284009.P15463593290906395100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (2 * n + 1) - A001222 (A278543 n).toNat

end

end A284009.P15463593290906395100

/-!
# A284010: a(n) = least natural number with the same prime signature polynomial p(n,x) has when it is factored over Z. Polynomial p(n,x) has only nonnegative integer coefficients that are encoded in the prime factorization of n.

The programs for A284010, there is no canonical definition to state claims against.
-/

/-! ## A284010.P5098190157670763643

`A087207(n+1)-A221168(A087207(n+1))`
-/

namespace A284010.P5098190157670763643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1) - A221168 (A087207 (n + 1)).toNat

end

end A284010.P5098190157670763643

/-! ## A284010.P10457582967360695657

`A087207(2*(n+1))-A347442(A096773(n+5))`
-/

namespace A284010.P10457582967360695657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (2 * (n + 1)) - A347442 (A096773 (n + 5)).toNat

end

end A284010.P10457582967360695657

/-! ## A284010.P8101351197202841493

`∑{e}[A225546(n+1), A005128(#)]`
-/

namespace A284010.P8101351197202841493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005128 (Nat.factorization (f1 n).natAbs p)

end

end A284010.P8101351197202841493

/-! ## A284010.P7422174794508884237

`A005128(∏{e}[A225546(n+1), #])`
-/

namespace A284010.P7422174794508884237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A284010.P7422174794508884237

/-! ## A284010.P440482522244866047

`A004271(n)%A330101(A074323(n))`
-/

namespace A284010.P440482522244866047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004271 n) (A330101 (A074323 n).toNat)

end

end A284010.P440482522244866047

/-!
# A284011: a(n) = least natural number with the same prime signature Stern polynomial B(n,x) has when it is factored over Z.

The programs for A284011, there is no canonical definition to state claims against.
-/

/-! ## A284011.P15636539209876881561

`A025487(A305899(n+1))%p?[A266257(n)]`
-/

namespace A284011.P15636539209876881561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025487 (A305899 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A284011.P15636539209876881561

/-! ## A284011.P5347160776310308509

`A025487(A305899(n+1)%A194376(n+1))`
-/

namespace A284011.P5347160776310308509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Int.tmod (A305899 (n + 1)) (A194376 (n + 1))).toNat

end

end A284011.P5347160776310308509

/-! ## A284011.P3870660638195327061

`A025487(A305899(n+1))+A000007(A141849(n+1))`
-/

namespace A284011.P3870660638195327061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A305899 (n + 1)).toNat + A000007 (A141849 (n + 1)).toNat

end

end A284011.P3870660638195327061

/-! ## A284011.P581927332442640320

`A025487(A305899(n+1))+A000007(A141853(n+1))`
-/

namespace A284011.P581927332442640320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A305899 (n + 1)).toNat + A000007 (A141853 (n + 1)).toNat

end

end A284011.P581927332442640320

/-! ## A284011.P10186103513576891391

`A333964(A305899(n+1))+A010052(A238086(n+1))`
-/

namespace A284011.P10186103513576891391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (A305899 (n + 1)).toNat + A010052 (A238086 (n + 1)).toNat

end

end A284011.P10186103513576891391

/-! ## A284011.P7217161372638446765

`A025487(A305899(n+1))*A028920(A266530(2*(n+1)))`
-/

namespace A284011.P7217161372638446765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A305899 (n + 1)).toNat * A028920 (A266530 (2 * (n + 1))).toNat

end

end A284011.P7217161372638446765

/-! ## A284011.P18193878615723930714

`A000034(A231609(n+1)-1)*A333964(A305899(n+1))`
-/

namespace A284011.P18193878615723930714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A231609 (n + 1) - 1).toNat * A333964 (A305899 (n + 1)).toNat

end

end A284011.P18193878615723930714

/-! ## A284011.P6120790883900326256

`A333964(A305899(n+1))+A162296(A140540(n+1))`
-/

namespace A284011.P6120790883900326256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (A305899 (n + 1)).toNat + A162296 (A140540 (n + 1)).toNat

end

end A284011.P6120790883900326256

/-! ## A284011.P16924196304539119476

`A000593(A130321(n))*A333964(A305899(n+1))`
-/

namespace A284011.P16924196304539119476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A130321 n).toNat * A333964 (A305899 (n + 1)).toNat

end

end A284011.P16924196304539119476

/-! ## A284011.P191638797354578916

`A025487(A305899(n+1))*A166123(A025487(n+1))`
-/

namespace A284011.P191638797354578916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A305899 (n + 1)).toNat * A166123 (A025487 (n + 1)).toNat

end

end A284011.P191638797354578916

/-! ## A284011.P7148738728042397493

`A333964(A010052(n²)*A305899(n+1))`
-/

namespace A284011.P7148738728042397493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (A010052 (n ^ 2) * A305899 (n + 1)).toNat

end

end A284011.P7148738728042397493

/-!
# A284012: a(n) = A284011(A260443(n)) = A284010(A260443(A260443(n))).

The programs for A284012, there is no canonical definition to state claims against.
-/

/-! ## A284012.P9477151305046512858

`A284011(A260443(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284012.P9477151305046512858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (A260443 (n + 1)).toNat

end

end A284012.P9477151305046512858

/-! ## A284012.P12867297325623667219

`A284011(∑[A277197(n)]+1)`
-/

namespace A284012.P12867297325623667219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A284012.P12867297325623667219

/-! ## A284012.P10036988977603812588

`A284011(A260442(A277416(n+1)))`
-/

namespace A284012.P10036988977603812588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (A260442 (A277416 (n + 1)).toNat).toNat

end

end A284012.P10036988977603812588

/-! ## A284012.P17051889948940083167

`A284011(A277324(n)/A260443(n))`
-/

namespace A284012.P17051889948940083167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (SequenceMachineLib.roundAway ((A277324 n : ℚ) / (A260443 n : ℚ))).toNat

end

end A284012.P17051889948940083167

/-! ## A284012.P14095483399787684387

`A284011(ratio[A260443(n)]*A260443(n))`
-/

namespace A284012.P14095483399787684387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A260443 n : ℚ))).toNat

end

end A284012.P14095483399787684387

/-!
# A284013: a(n) = n - A002487(n).

The programs for A284013, the canonical program `A284013.P1136611558935881771` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284013 has offset 0).

The definition of A284013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284013.P1136611558935881771

`n-A002487(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284013

/-- `n-A002487(n)` -/
def P1136611558935881771.Spec : Prop :=
  ∀ n, P1136611558935881771.a n = A284013 n

theorem P1136611558935881771.correct : P1136611558935881771.Spec := by
  intro n
  simp only [A284013]

end A284013

/-! ## A284013.P8555187396689794979

`∑{d}[n, A317841(#)]`
-/

namespace A284013.P8555187396689794979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317841 d

end

end A284013.P8555187396689794979

namespace A284013

/-- `∑{d}[n, A317841(#)]` -/
def P8555187396689794979.Spec : Prop :=
  ∀ n, P8555187396689794979.a n = A284013 n

end A284013

/-! ## A284013.P1259720878421793894

`n-∑{d}[n, A317839(#)]`
-/

namespace A284013.P1259720878421793894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A317839 d

end

end A284013.P1259720878421793894

namespace A284013

/-- `n-∑{d}[n, A317839(#)]` -/
def P1259720878421793894.Spec : Prop :=
  ∀ n, P1259720878421793894.a n = A284013 n

end A284013

/-! ## A284013.P12154072555510920577

`n-A126606(n+1)/2`
-/

namespace A284013.P12154072555510920577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A126606 (n + 1) : ℚ) / 2

end

end A284013.P12154072555510920577

namespace A284013

/-- `n-A126606(n+1)/2` -/
def P12154072555510920577.Spec : Prop :=
  ∀ n, P12154072555510920577.a n = (A284013 n : ℚ)

theorem P12154072555510920577.correct : P12154072555510920577.Spec := by
  intro n
  simp only [A284013, Nat.add_sub_cancel, A284013.P12154072555510920577.a, A284013.P1136611558935881771.a, A002487, A002487.P6236436194084017932.a, A126606, A126606.P13163570229275066813.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284013

/-! ## A284013.P4950383678726680409

`n-A324337(xor(n, floor(n/2)))`
-/

namespace A284013.P4950383678726680409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A284013.P4950383678726680409

namespace A284013

/-- `n-A324337(xor(n, floor(n/2)))` -/
def P4950383678726680409.Spec : Prop :=
  ∀ n, P4950383678726680409.a n = A284013 n

end A284013

/-! ## A284013.P6476888192130093676

`n-A324337(A003188(n))`
-/

namespace A284013.P6476888192130093676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A324337 (A003188 n).toNat

end

end A284013.P6476888192130093676

namespace A284013

/-- `n-A324337(A003188(n))` -/
def P6476888192130093676.Spec : Prop :=
  ∀ n, P6476888192130093676.a n = A284013 n

end A284013

/-! ## A284013.P5295767037525502942

`A001057(2*A002487(n))+n`
-/

namespace A284013.P5295767037525502942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A002487 n).toNat + (n : ℤ)

end

end A284013.P5295767037525502942

namespace A284013

/-- `A001057(2*A002487(n))+n` -/
def P5295767037525502942.Spec : Prop :=
  ∀ n, P5295767037525502942.a n = A284013 n

end A284013

/-! ## A284013.P9706562089059990171

`A176447(2*A002487(n))+n`
-/

namespace A284013.P9706562089059990171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (2 * A002487 n).toNat + (n : ℤ)

end

end A284013.P9706562089059990171

namespace A284013

/-- `A176447(2*A002487(n))+n` -/
def P9706562089059990171.Spec : Prop :=
  ∀ n, P9706562089059990171.a n = A284013 n

end A284013

/-! ## A284013.P5552342883537547715

`n-(A283978(n)+A283976(n))`
-/

namespace A284013.P5552342883537547715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A283978 n + A283976 n)

end

end A284013.P5552342883537547715

namespace A284013

/-- `n-(A283978(n)+A283976(n))` -/
def P5552342883537547715.Spec : Prop :=
  ∀ n, P5552342883537547715.a n = A284013 n

theorem P5552342883537547715.correct : P5552342883537547715.Spec := by
  intro n
  simp only [A284013, Nat.add_sub_cancel, A284013.P5552342883537547715.a, A284013.P1136611558935881771.a, A002487, A002487.P6236436194084017932.a, A283976, A283976.P17238727065902708821.a, A283978, A283978.P12954739794367481226.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A295515, A295515.P11785583445350184235.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284013

/-! ## A284013.P7428361608442100957

`n-(A284272(n)+A284271(n))`
-/

namespace A284013.P7428361608442100957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A284272 n + A284271 n)

end

end A284013.P7428361608442100957

namespace A284013

/-- `n-(A284272(n)+A284271(n))` -/
def P7428361608442100957.Spec : Prop :=
  ∀ n, P7428361608442100957.a n = A284013 n

end A284013

/-! ## A284013.P117486637140135326

`A331749(n)+n-A323901(n)`
-/

namespace A284013.P117486637140135326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + ((n : ℤ) - A323901 n)

end

end A284013.P117486637140135326

namespace A284013

/-- `A331749(n)+n-A323901(n)` -/
def P117486637140135326.Spec : Prop :=
  ∀ n, P117486637140135326.a n = A284013 n

theorem P117486637140135326.correct : P117486637140135326.Spec := by
  intro n
  simp only [A284013, Nat.add_sub_cancel, A284013.P117486637140135326.a, A284013.P1136611558935881771.a, A002487, A002487.P6236436194084017932.a, A323901, A323901.P12439125084005686553.a, A331749, A331749.P3262571390583388432.a, A000120, A000120.P2816527436160941581.a, A163511, A163511.P5635496813650871695.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A025480, A025480.P15873863116418380882.a, A145341, A145341.P17834554394848515737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284013

/-! ## A284013.P12277930969936162614

`n-xor(A323901(n), A331748(n))`
-/

namespace A284013.P12277930969936162614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (A323901 n) (A331748 n)

end

end A284013.P12277930969936162614

namespace A284013

/-- `n-xor(A323901(n), A331748(n))` -/
def P12277930969936162614.Spec : Prop :=
  ∀ n, P12277930969936162614.a n = A284013 n

end A284013

/-! ## A284013.P6187318092522023717

`n-A324338(A233280(n))%(n+1)`
-/

namespace A284013.P6187318092522023717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A324338 (A233280 n).toNat) (n + 1 : ℤ)

end

end A284013.P6187318092522023717

namespace A284013

/-- `n-A324338(A233280(n))%(n+1)` -/
def P6187318092522023717.Spec : Prop :=
  ∀ n, P6187318092522023717.a n = A284013 n

end A284013

/-! ## A284013.P10093676267912049476

`n-A324337(A048724(n))`
-/

namespace A284013.P10093676267912049476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A324337 (A048724 n).toNat

end

end A284013.P10093676267912049476

namespace A284013

/-- `n-A324337(A048724(n))` -/
def P10093676267912049476.Spec : Prop :=
  ∀ n, P10093676267912049476.a n = A284013 n

end A284013

/-! ## A284013.P18426248439339678468

`n-A283976(A109043(n))`
-/

namespace A284013.P18426248439339678468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A283976 (A109043 n).toNat

end

end A284013.P18426248439339678468

namespace A284013

/-- `n-A283976(A109043(n))` -/
def P18426248439339678468.Spec : Prop :=
  ∀ n, P18426248439339678468.a n = A284013 n

end A284013

/-! ## A284013.P16298186579972192912

`A001489(A002487(2*n))+n`
-/

namespace A284013.P16298186579972192912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A002487 (2 * n)).toNat + (n : ℤ)

end

end A284013.P16298186579972192912

namespace A284013

/-- `A001489(A002487(2*n))+n` -/
def P16298186579972192912.Spec : Prop :=
  ∀ n, P16298186579972192912.a n = A284013 n

end A284013

/-! ## A284013.P3187572607376936322

`A309256(2*n)-A309256(n)`
-/

namespace A284013.P3187572607376936322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309256 (2 * n) - A309256 n

end

end A284013.P3187572607376936322

namespace A284013

/-- `A309256(2*n)-A309256(n)` -/
def P3187572607376936322.Spec : Prop :=
  ∀ n, P3187572607376936322.a n = A284013 n

end A284013

/-! ## A284013.P10460632016569939909

`A007306(n)+n-A007306(A005843(n))`
-/

namespace A284013.P10460632016569939909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + ((n : ℤ) - A007306 (A005843 n).toNat)

end

end A284013.P10460632016569939909

namespace A284013

/-- `A007306(n)+n-A007306(A005843(n))` -/
def P10460632016569939909.Spec : Prop :=
  ∀ n, P10460632016569939909.a n = A284013 n

end A284013

/-! ## A284013.P4056533108606307547

`n-A283976(2*n)`
-/

namespace A284013.P4056533108606307547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A283976 (2 * n)

end

end A284013.P4056533108606307547

namespace A284013

/-- `n-A283976(2*n)` -/
def P4056533108606307547.Spec : Prop :=
  ∀ n, P4056533108606307547.a n = A284013 n

end A284013

/-! ## A284013.P10250757056799774291

`n-A283977(2*n)`
-/

namespace A284013.P10250757056799774291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A283977 (2 * n)

end

end A284013.P10250757056799774291

namespace A284013

/-- `n-A283977(2*n)` -/
def P10250757056799774291.Spec : Prop :=
  ∀ n, P10250757056799774291.a n = A284013 n

end A284013

/-!
# A284014: Numbers k such that {k + 2, k + 4} and {k^2 + 2, k^2 + 4} are both twin prime pairs.

The programs for A284014, there is no canonical definition to state claims against.
-/

/-! ## A284014.P833682373440525127

`∩[A001359(n+1)-2, A086381(n+1)]`
-/

namespace A284014.P833682373440525127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284014.P833682373440525127

/-! ## A284014.P16368723502294762642

`∩[A001097(n+1)-2, A086381(n+1)]`
-/

namespace A284014.P16368723502294762642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284014.P16368723502294762642

/-! ## A284014.P3483188827791751558

`∩[A086381(n+1), lt[n, A094457(n+4)]]`
-/

namespace A284014.P3483188827791751558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086381 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094457 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A284014.P3483188827791751558

/-!
# A284015: Positions of 1 in A283966; complement of A283967.

The programs for A284015, there is no canonical definition to state claims against.
-/

/-! ## A284015.P15990929833090105231

`A323116(n)+a(n-1)` with `a(0)=1`
-/

namespace A284015.P15990929833090105231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323116 n + a (n - 1)

end

end A284015.P15990929833090105231

/-! ## A284015.P3773860033819081541

`∑[A323116(n+1)]+1-A323116(n+1)`
-/

namespace A284015.P3773860033819081541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A323116 (n + 1))

end

end A284015.P3773860033819081541

/-! ## A284015.P14944578859314529498

`filter[n+1, A283966(#)]`
-/

namespace A284015.P14944578859314529498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283966 (f1 j) = 1) n)

end

end A284015.P14944578859314529498

/-! ## A284015.P552954608077149311

`record[Δ[A283967(n+1)]-a(n-1)]` with `a(0)=1`
-/

namespace A284015.P552954608077149311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f2 (n + 1) - f2 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284015.P552954608077149311

/-!
# A284016: a(-1)=-1; a(n) = 2*A000108(n) for n >= 0.

The programs for A284016, there is no canonical definition to state claims against.
-/

/-! ## A284016.P14298775586919360624

`-A002420(n)`
-/

namespace A284016.P14298775586919360624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002420 n

end

end A284016.P14298775586919360624

/-! ## A284016.P973244659023633327

`C(2*(n-1)+2, n)/(2*(n-1)+1)`
-/

namespace A284016.P973244659023633327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * ((n : ℤ) - 1) + 2).toNat n : ℚ) / (2 * ((n : ℤ) - 1) + 1 : ℚ)

end

end A284016.P973244659023633327

/-! ## A284016.P10635865399825483830

`(4-6/n)*a(n-1)` with `a(0)=-1`
-/

namespace A284016.P10635865399825483830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A284016.P10635865399825483830

/-! ## A284016.P12907422531705865086

`xor(1, A089408(2*n))-1`
-/

namespace A284016.P12907422531705865086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A089408 (2 * n)) - 1

end

end A284016.P12907422531705865086

/-! ## A284016.P15845048635454607633

`A000108(n)/(2-3/(n+1))`
-/

namespace A284016.P15845048635454607633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (2 - 3 / (n + 1 : ℚ))

end

end A284016.P15845048635454607633

/-! ## A284016.P648114349893368775

`abs(A002420(n))-A000038(n)`
-/

namespace A284016.P648114349893368775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002420 n| - A000038 n

end

end A284016.P648114349893368775

/-! ## A284016.P13619915526608201782

`char[A017444(n)]-A002420(n)`
-/

namespace A284016.P13619915526608201782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017444 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A002420 n

end

end A284016.P13619915526608201782

/-! ## A284016.P10796878986477835975

`A000007(n+1)-A002420(n)`
-/

namespace A284016.P10796878986477835975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A002420 n

end

end A284016.P10796878986477835975

/-! ## A284016.P11362403390036726348

`A000038(n+1)-A002420(n)`
-/

namespace A284016.P11362403390036726348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A002420 n

end

end A284016.P11362403390036726348

/-! ## A284016.P14533481402109985765

`A130706(n+2)-A002420(n)`
-/

namespace A284016.P14533481402109985765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 2) - A002420 n

end

end A284016.P14533481402109985765

/-! ## A284016.P10643584301066409163

`A154955(n+3)-A002420(n)`
-/

namespace A284016.P10643584301066409163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 3) - A002420 n

end

end A284016.P10643584301066409163

/-! ## A284016.P576102795036588381

`A089408(2*n)-A000038(n)`
-/

namespace A284016.P576102795036588381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n) - A000038 n

end

end A284016.P576102795036588381

/-! ## A284016.P9610952270868428590

`A000007(n)-2*A115140(n)`
-/

namespace A284016.P9610952270868428590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - 2 * A115140 n

end

end A284016.P9610952270868428590

/-! ## A284016.P9719383988204730327

`A002421(n)-2*A126079(n)`
-/

namespace A284016.P9719383988204730327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002421 n - 2 * A126079 n

end

end A284016.P9719383988204730327

/-! ## A284016.P10024806639464948833

`n*A000007(n)-A002420(n)`
-/

namespace A284016.P10024806639464948833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A002420 n

end

end A284016.P10024806639464948833

/-! ## A284016.P4477942909848652245

`A080300(2*n+1)-A002420(n)`
-/

namespace A284016.P4477942909848652245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (2 * n + 1) - A002420 n

end

end A284016.P4477942909848652245

/-! ## A284016.P141513927932233361

`A117188(2*n+1)-A002420(n)`
-/

namespace A284016.P141513927932233361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (2 * n + 1) - A002420 n

end

end A284016.P141513927932233361

/-! ## A284016.P9236917070246673607

`A002420(n)*A033999(2*n+1)`
-/

namespace A284016.P9236917070246673607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A033999 (2 * n + 1)

end

end A284016.P9236917070246673607

/-! ## A284016.P446931394485954781

`A033999(n+1)*A104624(2*n)`
-/

namespace A284016.P446931394485954781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A104624 (2 * n)

end

end A284016.P446931394485954781

/-!
# A284017: Square root of the smallest square referenced in A038109 (Divisible exactly by the square of a prime).

The programs for A284017, there is no canonical definition to state claims against.
-/

/-! ## A284017.P16582619466870396630

`sqrt(A284018(n+1))`
-/

namespace A284017.P16582619466870396630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A284018 (n + 1) : ℝ)

end

end A284017.P16582619466870396630

/-! ## A284017.P16991112119252233625

`A020639(A284018(C(n+1, n)))`
-/

namespace A284017.P16991112119252233625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284018 (Nat.choose (n + 1) n)).toNat

end

end A284017.P16991112119252233625

/-! ## A284017.P10055157558054146498

`A014963(∑{p}[A284018(n+1), #])`
-/

namespace A284017.P10055157558054146498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A284017.P10055157558054146498

/-! ## A284017.P13017317133415905381

`A020639(A284018(abs(1-n)+2))`
-/

namespace A284017.P13017317133415905381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284018 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A284017.P13017317133415905381

/-! ## A284017.P10195802064436382287

`A020639(A284018(n+1))%A283980(n+2)`
-/

namespace A284017.P10195802064436382287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A284018 (n + 1)).toNat) (A283980 (n + 2))

end

end A284017.P10195802064436382287

/-! ## A284017.P7164731134465097163

`A000196(A284018(n+1)+1)`
-/

namespace A284017.P7164731134465097163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284018 (n + 1) + 1).toNat

end

end A284017.P7164731134465097163

/-! ## A284017.P16585398880308029869

`A003557(A284018(2*(n+1)-(n+1)))`
-/

namespace A284017.P16585398880308029869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A284018 (2 * (n + 1) - (n + 1))).toNat

end

end A284017.P16585398880308029869

/-! ## A284017.P6130448200673383616

`A249739(A249739(A284018(n+1))²)`
-/

namespace A284017.P6130448200673383616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249739 (A284018 (n + 1)).toNat ^ 2).toNat

end

end A284017.P6130448200673383616

/-! ## A284017.P8780489061111127030

`A014963(2*A284018(n+1)-A284018(n+1))`
-/

namespace A284017.P8780489061111127030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A284018 (n + 1) - A284018 (n + 1)).toNat

end

end A284017.P8780489061111127030

/-! ## A284017.P427208728397048421

`A249739(A249739(n+1))*A249739(A284018(n+1))`
-/

namespace A284017.P427208728397048421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249739 (n + 1)).toNat * A249739 (A284018 (n + 1)).toNat

end

end A284017.P427208728397048421

/-! ## A284017.P526910019343154195

`gcd(A048692(n+1), A284018(n+1))`
-/

namespace A284017.P526910019343154195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048692 (n + 1)) (A284018 (n + 1))

end

end A284017.P526910019343154195

/-! ## A284017.P2169781223585372283

`A249739(A249739(n+1)*A284018(n+1))`
-/

namespace A284017.P2169781223585372283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A249739 (n + 1) * A284018 (n + 1)).toNat

end

end A284017.P2169781223585372283

/-! ## A284017.P6142836629617055801

`A249739(2*A284018(n+1))`
-/

namespace A284017.P6142836629617055801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (2 * A284018 (n + 1)).toNat

end

end A284017.P6142836629617055801

/-! ## A284017.P15570796922013455306

`A003557(lcm(2, A284018(n+1)))`
-/

namespace A284017.P15570796922013455306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.lcm 2 (A284018 (n + 1)))

end

end A284017.P15570796922013455306

/-! ## A284017.P9048196845619417424

`A249739(A284018(n+1)+A284018(n+1))`
-/

namespace A284017.P9048196845619417424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A284018 (n + 1) + A284018 (n + 1)).toNat

end

end A284017.P9048196845619417424

/-!
# A284018: The smallest square referenced in A038109 (Divisible exactly by the square of a prime).

The programs for A284018, there is no canonical definition to state claims against.
-/

/-! ## A284018.P11809070520956842435

`A284017(n+1)²`
-/

namespace A284018.P11809070520956842435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284017 (n + 1) ^ 2

end

end A284018.P11809070520956842435

/-! ## A284018.P16480151016378144393

`A160457(A284017(n+1)+1)-1`
-/

namespace A284018.P16480151016378144393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 (A284017 (n + 1) + 1).toNat - 1

end

end A284018.P16480151016378144393

/-! ## A284018.P1992537999181541105

`A284017(n+1)^A000005(A332768(n+1))`
-/

namespace A284018.P1992537999181541105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284017 (n + 1) : ℚ) ^ (A000005 (A332768 (n + 1)).toNat : ℤ)

end

end A284018.P1992537999181541105

/-! ## A284018.P3379059615765212585

`A000290(gcd(A038109(n+1), A284017(n+1)))`
-/

namespace A284018.P3379059615765212585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.gcd (A038109 (n + 1)) (A284017 (n + 1)))

end

end A284018.P3379059615765212585

/-! ## A284018.P6227475073119882396

`A006530(2*A284017(n+1))*A284017(n+1)`
-/

namespace A284018.P6227475073119882396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A284017 (n + 1)).toNat * A284017 (n + 1)

end

end A284018.P6227475073119882396

/-! ## A284018.P390593920460769726

`A284017(n+1)%A013929(n+1)*A284017(n+1)`
-/

namespace A284018.P390593920460769726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284017 (n + 1)) (A013929 (n + 1)) * A284017 (n + 1)

end

end A284018.P390593920460769726

/-! ## A284018.P6707070576657406666

`A284017(lcm(n+1, A003557(n+1)))*A284017(n+1)`
-/

namespace A284018.P6707070576657406666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284017 (Int.lcm (n + 1 : ℤ) (A003557 (n + 1))) * A284017 (n + 1)

end

end A284018.P6707070576657406666

/-! ## A284018.P4378763598737035726

`A284017(n+1)^A283990(A284017(n+2))`
-/

namespace A284018.P4378763598737035726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284017 (n + 1) : ℚ) ^ (A283990 (A284017 (n + 2)).toNat : ℤ)

end

end A284018.P4378763598737035726

/-! ## A284018.P15999180505569395967

`(A284017(n+1)*A284017(n+1))%A038109(n+2)`
-/

namespace A284018.P15999180505569395967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284017 (n + 1) * A284017 (n + 1)) (A038109 (n + 2))

end

end A284018.P15999180505569395967

/-! ## A284018.P4834735664216435771

`A284017(n+1)^A000005(A284017(n+4))`
-/

namespace A284018.P4834735664216435771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284017 (n + 1) : ℚ) ^ (A000005 (A284017 (n + 4)).toNat : ℤ)

end

end A284018.P4834735664216435771

/-! ## A284018.P9126462132007292518

`A284017(n+1)^A020639(A283999(2*n+3))`
-/

namespace A284018.P9126462132007292518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284017 (n + 1) : ℚ) ^ (A020639 (A283999 (2 * n + 3)).toNat : ℤ)

end

end A284018.P9126462132007292518

/-! ## A284018.P13575904094473421953

`A284017(n+1)^A020639(A284005(n+2))`
-/

namespace A284018.P13575904094473421953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284017 (n + 1) : ℚ) ^ (A020639 (A284005 (n + 2)).toNat : ℤ)

end

end A284018.P13575904094473421953

/-!
# A284019: The "Hofstadter chaotic heart" sequence: a(n) = A004001(n) - A005185(n).

The programs for A284019, the canonical program `A284019.P8425388726725023330` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284019 has offset 1).

The definition of A284019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)-A005185(n+1)` (program `A284019.P8425388726725023330`, by `A284019.P8425388726725023330.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284019.P8425388726725023330

`A004001(n+1)-A005185(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284019

/-- `A004001(n+1)-A005185(n+1)` -/
def P8425388726725023330.Spec : Prop :=
  ∀ n, P8425388726725023330.a n = A284019 (n + 1)

theorem P8425388726725023330.correct : P8425388726725023330.Spec := by
  intro n
  simp only [A284019, Nat.add_sub_cancel]

end A284019

/-! ## A284019.P5343688440435002524

`A062157(n)*A284606(n+1)`
-/

namespace A284019.P5343688440435002524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A284606 (n + 1)

end

end A284019.P5343688440435002524

namespace A284019

/-- `A062157(n)*A284606(n+1)` -/
def P5343688440435002524.Spec : Prop :=
  ∀ n, P5343688440435002524.a n = A284019 (n + 1)

end A284019

/-! ## A284019.P5603865532431272427

`A105812(n)*A284606(n+1)`
-/

namespace A284019.P5603865532431272427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A284606 (n + 1)

end

end A284019.P5603865532431272427

namespace A284019

/-- `A105812(n)*A284606(n+1)` -/
def P5603865532431272427.Spec : Prop :=
  ∀ n, P5603865532431272427.a n = A284019 (n + 1)

end A284019

/-! ## A284019.P3271516193374739362

`A165326(n)*A284606(n+1)`
-/

namespace A284019.P3271516193374739362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A284606 (n + 1)

end

end A284019.P3271516193374739362

namespace A284019

/-- `A165326(n)*A284606(n+1)` -/
def P3271516193374739362.Spec : Prop :=
  ∀ n, P3271516193374739362.a n = A284019 (n + 1)

end A284019

/-! ## A284019.P9858591054498916058

`∑[char[A188163(n+1)-1]]-A005185(n+1)`
-/

namespace A284019.P9858591054498916058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A005185 (n + 1)

end

end A284019.P9858591054498916058

namespace A284019

/-- `∑[char[A188163(n+1)-1]]-A005185(n+1)` -/
def P9858591054498916058.Spec : Prop :=
  ∀ n, P9858591054498916058.a n = A284019 (n + 1)

end A284019

/-! ## A284019.P8384573292747859046

`A004001(n+1)-(A284478(n+1)+A055748(n+1))`
-/

namespace A284019.P8384573292747859046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - (A284478 (n + 1) + A055748 (n + 1))

end

end A284019.P8384573292747859046

namespace A284019

/-- `A004001(n+1)-(A284478(n+1)+A055748(n+1))` -/
def P8384573292747859046.Spec : Prop :=
  ∀ n, P8384573292747859046.a n = A284019 (n + 1)

theorem P8384573292747859046.correct : P8384573292747859046.Spec := by
  intro n
  simp only [A284019, Nat.add_sub_cancel, A284019.P8384573292747859046.a, A284019.P8425388726725023330.a, A004001, A004001.P15027099775036681873.a, A005185, A005185.P15523785795587217945.a, A055748, A055748.P8898530340644746947.a, A284478, A284478.P17703318329199154233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284019

/-! ## A284019.P3973334487838178880

`A283469(n+1)+A283472(n+1)-A005185(n+1)`
-/

namespace A284019.P3973334487838178880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1) + (A283472 (n + 1) - A005185 (n + 1))

end

end A284019.P3973334487838178880

namespace A284019

/-- `A283469(n+1)+A283472(n+1)-A005185(n+1)` -/
def P3973334487838178880.Spec : Prop :=
  ∀ n, P3973334487838178880.a n = A284019 (n + 1)

end A284019

/-! ## A284019.P1549343805032863135

`A284606(n+1)/A062157(n+2)`
-/

namespace A284019.P1549343805032863135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284606 (n + 1) : ℚ) / (A062157 (n + 2) : ℚ)

end

end A284019.P1549343805032863135

namespace A284019

/-- `A284606(n+1)/A062157(n+2)` -/
def P1549343805032863135.Spec : Prop :=
  ∀ n, P1549343805032863135.a n = (A284019 (n + 1) : ℚ)

theorem P1549343805032863135.correct : P1549343805032863135.Spec := by
  intro n
  simp only [A284019, Nat.add_sub_cancel, A284019.P1549343805032863135.a, A284019.P8425388726725023330.a, A004001, A004001.P15027099775036681873.a, A005185, A005185.P15523785795587217945.a, A062157, A062157.P13834877263571195293.a, A284606, A284606.P14144566751347367166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284019

/-! ## A284019.P17267674908910936737

`A284606(n+1)/A105812(n+2)`
-/

namespace A284019.P17267674908910936737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284606 (n + 1) : ℚ) / (A105812 (n + 2) : ℚ)

end

end A284019.P17267674908910936737

namespace A284019

/-- `A284606(n+1)/A105812(n+2)` -/
def P17267674908910936737.Spec : Prop :=
  ∀ n, P17267674908910936737.a n = (A284019 (n + 1) : ℚ)

end A284019

/-! ## A284019.P10578235604538670051

`A140472(A004074(n+1)+n)-A005185(n+1)`
-/

namespace A284019.P10578235604538670051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A004074 (n + 1) + (n : ℤ)).toNat - A005185 (n + 1)

end

end A284019.P10578235604538670051

namespace A284019

/-- `A140472(A004074(n+1)+n)-A005185(n+1)` -/
def P10578235604538670051.Spec : Prop :=
  ∀ n, P10578235604538670051.a n = A284019 (n + 1)

end A284019

/-!
# A284020: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A284020, there is no canonical definition to state claims against.
-/

/-! ## A284020.P7359290677829932562

`A284087((n-1)%(n+1))`
-/

namespace A284020.P7359290677829932562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284087 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A284020.P7359290677829932562

/-! ## A284020.P3443282871545057957

`A284087(A057428(n)+n)`
-/

namespace A284020.P3443282871545057957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284087 (A057428 n + (n : ℤ)).toNat

end

end A284020.P3443282871545057957

/-! ## A284020.P10273196766880832393

`A284087(A004273(n)-n)`
-/

namespace A284020.P10273196766880832393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284087 (A004273 n - (n : ℤ)).toNat

end

end A284020.P10273196766880832393

/-! ## A284020.P17062416830243524301

`A284087(floor(log2(A284022(n))))`
-/

namespace A284020.P17062416830243524301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284087 (Nat.log 2 (A284022 n).toNat)

end

end A284020.P17062416830243524301

/-! ## A284020.P13118468518546789488

`A284087(n-A057428(n)²)`
-/

namespace A284020.P13118468518546789488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284087 ((n : ℤ) - A057428 n ^ 2).toNat

end

end A284020.P13118468518546789488

/-! ## A284020.P11322725402761212726

`A284087((1-n)*A057428(n))`
-/

namespace A284020.P11322725402761212726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284087 ((1 - (n : ℤ)) * A057428 n).toNat

end

end A284020.P11322725402761212726

/-!
# A284021: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A284021, there is no canonical definition to state claims against.
-/

/-! ## A284021.P9252567330966781754

`A007088(A284023(n))`
-/

namespace A284021.P9252567330966781754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284023 n).toNat

end

end A284021.P9252567330966781754

/-! ## A284021.P15088198587554240488

`A007088(C(2, n+2)+A126646(n)-A273973(n))`
-/

namespace A284021.P15088198587554240488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((Nat.choose 2 (n + 2) : ℤ) + (A126646 n - A273973 n)).toNat

end

end A284021.P15088198587554240488

/-! ## A284021.P1813986481662712979

`A007088(A126646(n)-A273973(n)%A126646(n))`
-/

namespace A284021.P1813986481662712979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A273973 n) (A126646 n)).toNat

end

end A284021.P1813986481662712979

/-! ## A284021.P4485343812297458697

`A185544(2*A284023(n))`
-/

namespace A284021.P4485343812297458697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284023 n).toNat

end

end A284021.P4485343812297458697

/-! ## A284021.P2601883574167392490

`A185544(A284023(n)+A284023(n))`
-/

namespace A284021.P2601883574167392490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A284023 n + A284023 n).toNat

end

end A284021.P2601883574167392490

/-!
# A284022: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A284022, the canonical program `A284022.P18172573424355451815` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284022 has offset 0).

The definition of A284022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284022.P18172573424355451815

`A095121(n)+1-A273972(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284022

/-- `A095121(n)+1-A273972(n)` -/
def P18172573424355451815.Spec : Prop :=
  ∀ n, P18172573424355451815.a n = A284022 n

theorem P18172573424355451815.correct : P18172573424355451815.Spec := by
  intro n
  simp only [A284022]

end A284022

/-! ## A284022.P3024818410868260524

`or(1, A126646(n)-A273972(n))`
-/

namespace A284022.P3024818410868260524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A273972 n)

end

end A284022.P3024818410868260524

namespace A284022

/-- `or(1, A126646(n)-A273972(n))` -/
def P3024818410868260524.Spec : Prop :=
  ∀ n, P3024818410868260524.a n = A284022 n

end A284022

/-! ## A284022.P4361746234399385380

`A126646(n)%A273972(A028310(n))`
-/

namespace A284022.P4361746234399385380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A273972 (A028310 n).toNat)

end

end A284022.P4361746234399385380

namespace A284022

/-- `A126646(n)%A273972(A028310(n))` -/
def P4361746234399385380.Spec : Prop :=
  ∀ n, P4361746234399385380.a n = A284022 n

end A284022

/-! ## A284022.P10594518051804811531

`∑[A000079(n)]%A273972(A028310(n))`
-/

namespace A284022.P10594518051804811531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A273972 (A028310 n).toNat)

end

end A284022.P10594518051804811531

namespace A284022

/-- `∑[A000079(n)]%A273972(A028310(n))` -/
def P10594518051804811531.Spec : Prop :=
  ∀ n, P10594518051804811531.a n = A284022 n

end A284022

/-! ## A284022.P5042664599041355377

`A000225(n+1)%A273972(A028310(n))`
-/

namespace A284022.P5042664599041355377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (A273972 (A028310 n).toNat)

end

end A284022.P5042664599041355377

namespace A284022

/-- `A000225(n+1)%A273972(A028310(n))` -/
def P5042664599041355377.Spec : Prop :=
  ∀ n, P5042664599041355377.a n = A284022 n

end A284022

/-! ## A284022.P4303138781437749028

`or(A000051(n), A000225(n))-A273972(n)`
-/

namespace A284022.P4303138781437749028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000225 n) - A273972 n

end

end A284022.P4303138781437749028

namespace A284022

/-- `or(A000051(n), A000225(n))-A273972(n)` -/
def P4303138781437749028.Spec : Prop :=
  ∀ n, P4303138781437749028.a n = A284022 n

end A284022

/-! ## A284022.P15926581464640570596

`A126646(n)-A008683(A100484(n+1))*A273972(n)`
-/

namespace A284022.P15926581464640570596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A008683 (A100484 (n + 1)).toNat * A273972 n

end

end A284022.P15926581464640570596

namespace A284022

/-- `A126646(n)-A008683(A100484(n+1))*A273972(n)` -/
def P15926581464640570596.Spec : Prop :=
  ∀ n, P15926581464640570596.a n = A284022 n

end A284022

/-! ## A284022.P5427583660260760524

`A048993(A000217(n))+A126646(n)-A273972(n)`
-/

namespace A284022.P5427583660260760524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A000217 n).toNat + (A126646 n - A273972 n)

end

end A284022.P5427583660260760524

namespace A284022

/-- `A048993(A000217(n))+A126646(n)-A273972(n)` -/
def P5427583660260760524.Spec : Prop :=
  ∀ n, P5427583660260760524.a n = A284022 n

end A284022

/-!
# A284023: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A284023, the canonical program `A284023.P9449801284099528945` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284023 has offset 0).

The definition of A284023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284023.P9449801284099528945

`A126646(n)-A273973(n)%A126646(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284023

/-- `A126646(n)-A273973(n)%A126646(n)` -/
def P9449801284099528945.Spec : Prop :=
  ∀ n, P9449801284099528945.a n = A284023 n

theorem P9449801284099528945.correct : P9449801284099528945.Spec := by
  intro n
  simp only [A284023]

end A284023

/-! ## A284023.P2343878852608653011

`or(A000051(n), A000225(n))-A273973(n)`
-/

namespace A284023.P2343878852608653011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000225 n) - A273973 n

end

end A284023.P2343878852608653011

namespace A284023

/-- `or(A000051(n), A000225(n))-A273973(n)` -/
def P2343878852608653011.Spec : Prop :=
  ∀ n, P2343878852608653011.a n = A284023 n

end A284023

/-! ## A284023.P5684813118962800831

`or(A126646(n)-A273973(n), A273972(n))`
-/

namespace A284023.P5684813118962800831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126646 n - A273973 n) (A273972 n)

end

end A284023.P5684813118962800831

namespace A284023

/-- `or(A126646(n)-A273973(n), A273972(n))` -/
def P5684813118962800831.Spec : Prop :=
  ∀ n, P5684813118962800831.a n = A284023 n

end A284023

/-! ## A284023.P12137576620262497493

`A008683(A008574(n))+A126646(n)-A273973(n)`
-/

namespace A284023.P12137576620262497493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A126646 n - A273973 n)

end

end A284023.P12137576620262497493

namespace A284023

/-- `A008683(A008574(n))+A126646(n)-A273973(n)` -/
def P12137576620262497493.Spec : Prop :=
  ∀ n, P12137576620262497493.a n = A284023 n

end A284023

/-! ## A284023.P12140452565840194383

`A192490(2*A000203(n+1))+A126646(n)-A273973(n)`
-/

namespace A284023.P12140452565840194383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * A000203 (n + 1)).toNat + (A126646 n - A273973 n)

end

end A284023.P12140452565840194383

namespace A284023

/-- `A192490(2*A000203(n+1))+A126646(n)-A273973(n)` -/
def P12140452565840194383.Spec : Prop :=
  ∀ n, P12140452565840194383.a n = A284023 n

end A284023

/-!
# A284024: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A284024, there is no canonical definition to state claims against.
-/

/-! ## A284024.P16619815985696368376

`A007088(A284026(n))`
-/

namespace A284024.P16619815985696368376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284026 n).toNat

end

end A284024.P16619815985696368376

/-! ## A284024.P2518873194701518941

`A305989(A284027(n))`
-/

namespace A284024.P2518873194701518941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284027 n).toNat

end

end A284024.P2518873194701518941

/-! ## A284024.P17660780128060215477

`A185544(2*A284026(n))`
-/

namespace A284024.P17660780128060215477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284026 n).toNat

end

end A284024.P17660780128060215477

/-! ## A284024.P6708129050067289684

`A185544(lcm(2, A284026(n)))`
-/

namespace A284024.P6708129050067289684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284026 n))

end

end A284024.P6708129050067289684

/-!
# A284025: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A284025, there is no canonical definition to state claims against.
-/

/-! ## A284025.P12305640700475337247

`A007088(A284027(n))`
-/

namespace A284025.P12305640700475337247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284027 n).toNat

end

end A284025.P12305640700475337247

/-! ## A284025.P15466428954446884979

`A305989(A284026(n))`
-/

namespace A284025.P15466428954446884979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A284026 n).toNat

end

end A284025.P15466428954446884979

/-! ## A284025.P11175667624410966121

`A185544(2*A284027(n))`
-/

namespace A284025.P11175667624410966121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284027 n).toNat

end

end A284025.P11175667624410966121

/-! ## A284025.P1580777309964006236

`A185544(lcm(2, A284027(n)))`
-/

namespace A284025.P1580777309964006236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A284027 n))

end

end A284025.P1580777309964006236

/-!
# A284026: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A284026, there is no canonical definition to state claims against.
-/

/-! ## A284026.P2216799605101046315

`A057889(A284027(n))`
-/

namespace A284026.P2216799605101046315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284027 n).toNat

end

end A284026.P2216799605101046315

/-! ## A284026.P176076012474048217

`A281589(2*A284027(n))`
-/

namespace A284026.P176076012474048217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284027 n).toNat

end

end A284026.P176076012474048217

/-! ## A284026.P8476911151126431028

`A325401(2*A284027(n))`
-/

namespace A284026.P8476911151126431028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284027 n).toNat

end

end A284026.P8476911151126431028

/-! ## A284026.P9819433398587824012

`A281589(lcm(2, A284027(n)))`
-/

namespace A284026.P9819433398587824012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284027 n))

end

end A284026.P9819433398587824012

/-! ## A284026.P11792533846399836857

`A030101(or(1, A284027(n)))`
-/

namespace A284026.P11792533846399836857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284027 n)).toNat

end

end A284026.P11792533846399836857

/-!
# A284027: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A284027, there is no canonical definition to state claims against.
-/

/-! ## A284027.P4917045414125241739

`A057889(A284026(n))`
-/

namespace A284027.P4917045414125241739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A284026 n).toNat

end

end A284027.P4917045414125241739

/-! ## A284027.P11980847272583194041

`A281589(2*A284026(n))`
-/

namespace A284027.P11980847272583194041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A284026 n).toNat

end

end A284027.P11980847272583194041

/-! ## A284027.P17513330488284162357

`A325401(2*A284026(n))`
-/

namespace A284027.P17513330488284162357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A284026 n).toNat

end

end A284027.P17513330488284162357

/-! ## A284027.P11470735268366214928

`A281589(lcm(2, A284026(n)))`
-/

namespace A284027.P11470735268366214928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A284026 n))

end

end A284027.P11470735268366214928

/-! ## A284027.P15980820050848952465

`A030101(or(1, A284026(n)))`
-/

namespace A284027.P15980820050848952465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A284026 n)).toNat

end

end A284027.P15980820050848952465

/-!
# A284028: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A284028, there is no canonical definition to state claims against.
-/

/-! ## A284028.P14745800430066547685

`A283906(n+1)`
-/

namespace A284028.P14745800430066547685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 (n + 1)

end

end A284028.P14745800430066547685

/-! ## A284028.P3529977619609938752

`A290416(Δ[n²])`
-/

namespace A284028.P3529977619609938752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A284028.P3529977619609938752

/-! ## A284028.P11764337944196808031

`record[A290416(n*n%2)]`
-/

namespace A284028.P11764337944196808031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P11764337944196808031

/-! ## A284028.P11926288667740570101

`and(1-4/2, A290416(2*n+1))`
-/

namespace A284028.P11926288667740570101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A290416 (2 * n + 1))

end

end A284028.P11926288667740570101

/-! ## A284028.P13458010124001784963

`record[A283906(A002262(n))]`
-/

namespace A284028.P13458010124001784963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P13458010124001784963

/-! ## A284028.P12910828219959668068

`record[A283906(A008611(n))]`
-/

namespace A284028.P12910828219959668068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P12910828219959668068

/-! ## A284028.P12509341807369290820

`record[A283906(A008612(n))]`
-/

namespace A284028.P12509341807369290820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P12509341807369290820

/-! ## A284028.P17917647883926442251

`record[A283906(A025581(n))]`
-/

namespace A284028.P17917647883926442251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P17917647883926442251

/-! ## A284028.P6234727635058484542

`record[A290416(A026741(n))]`
-/

namespace A284028.P6234727635058484542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P6234727635058484542

/-! ## A284028.P6868670787501394433

`record[A283906(Δ[A008754(n)])]`
-/

namespace A284028.P6868670787501394433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P6868670787501394433

/-! ## A284028.P9418938459862411788

`record[A290416(Δ[A008794(n)])]`
-/

namespace A284028.P9418938459862411788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P9418938459862411788

/-! ## A284028.P970222465938826852

`record[A290416(A000265(n+1))]`
-/

namespace A284028.P970222465938826852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P970222465938826852

/-! ## A284028.P6833764028038209069

`record[A283906(n-A057944(n))]`
-/

namespace A284028.P6833764028038209069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 ((n : ℤ) - A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P6833764028038209069

/-! ## A284028.P11737302889123567112

`record[A283906(n)-A063524(n)]`
-/

namespace A284028.P11737302889123567112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283906 n - A063524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P11737302889123567112

/-! ## A284028.P16687701781186154914

`record[A290416(n)^A088705(n)]`
-/

namespace A284028.P16687701781186154914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290416 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P16687701781186154914

/-! ## A284028.P8697014664033036799

`record[A290416(gcd(n, A027656(n)))]`
-/

namespace A284028.P8697014664033036799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (Int.gcd (n : ℤ) (A027656 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P8697014664033036799

/-! ## A284028.P13167896756670997779

`record[A290416(and(n, A033999(n)))]`
-/

namespace A284028.P13167896756670997779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P13167896756670997779

/-! ## A284028.P4578928897244321337

`record[A290416(n+1)/A033999(n)]`
-/

namespace A284028.P4578928897244321337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290416 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284028.P4578928897244321337

/-! ## A284028.P3407493465753218102

`A001222(A290407(n+1))*A290416(2*n+1)`
-/

namespace A284028.P3407493465753218102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290407 (n + 1)).toNat * A290416 (2 * n + 1)

end

end A284028.P3407493465753218102

/-! ## A284028.P10213073895604250320

`A001222(A290427(n+1))*A290416(2*n+1)`
-/

namespace A284028.P10213073895604250320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290427 (n + 1)).toNat * A290416 (2 * n + 1)

end

end A284028.P10213073895604250320

/-!
# A284029: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A284029, there is no canonical definition to state claims against.
-/

/-! ## A284029.P13292721100158805095

`A283907(n+1)/10`
-/

namespace A284029.P13292721100158805095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283907 (n + 1) : ℚ) / 10

end

end A284029.P13292721100158805095

/-! ## A284029.P8458251361913941673

`Δ[∑[A283907(n)]/10]`
-/

namespace A284029.P8458251361913941673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283907 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284029.P8458251361913941673

/-! ## A284029.P10426618508017379980

`record[A283907(A008611(n))/10]`
-/

namespace A284029.P10426618508017379980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283907 (A008611 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284029.P10426618508017379980

/-! ## A284029.P7810237137076117289

`record[A283907(A008612(n))/10]`
-/

namespace A284029.P7810237137076117289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283907 (A008612 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284029.P7810237137076117289

/-! ## A284029.P11742939388016021958

`record[A283907(A027656(n))/10]`
-/

namespace A284029.P11742939388016021958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283907 (A027656 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284029.P11742939388016021958

/-!
# A284031: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A284031, the canonical program `A284031.P9234368606975242882` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284031 has offset 0).

The definition of A284031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284031.P9234368606975242882

`A283909(n+1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A284031

/-- `A283909(n+1)/2` -/
def P9234368606975242882.Spec : Prop :=
  ∀ n, P9234368606975242882.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P14440773961463990612

`record[A283909(A344180(n))/2]`
-/

namespace A284031.P14440773961463990612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283909 (A344180 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284031.P14440773961463990612

namespace A284031

/-- `record[A283909(A344180(n))/2]` -/
def P14440773961463990612.Spec : Prop :=
  ∀ n, P14440773961463990612.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P2671991792940140199

`A267609(n)%A198633(n)`
-/

namespace A284031.P2671991792940140199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267609 n) (A198633 n)

end

end A284031.P2671991792940140199

namespace A284031

/-- `A267609(n)%A198633(n)` -/
def P2671991792940140199.Spec : Prop :=
  ∀ n, P2671991792940140199.a n = A284031 n

end A284031

/-! ## A284031.P17814765602295997957

`and(A126646(n), A267609(n))`
-/

namespace A284031.P17814765602295997957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A267609 n)

end

end A284031.P17814765602295997957

namespace A284031

/-- `and(A126646(n), A267609(n))` -/
def P17814765602295997957.Spec : Prop :=
  ∀ n, P17814765602295997957.a n = A284031 n

end A284031

/-! ## A284031.P12988279897022234579

`and(A267609(n), A281482(n))`
-/

namespace A284031.P12988279897022234579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267609 n) (A281482 n)

end

end A284031.P12988279897022234579

namespace A284031

/-- `and(A267609(n), A281482(n))` -/
def P12988279897022234579.Spec : Prop :=
  ∀ n, P12988279897022234579.a n = A284031 n

end A284031

/-! ## A284031.P7754047703414973322

`and(A267609(n), A286521(n))`
-/

namespace A284031.P7754047703414973322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267609 n) (A286521 n)

end

end A284031.P7754047703414973322

namespace A284031

/-- `and(A267609(n), A286521(n))` -/
def P7754047703414973322.Spec : Prop :=
  ∀ n, P7754047703414973322.a n = A284031 n

end A284031

/-! ## A284031.P5950999013830461713

`and(∑[A000079(n)], A267609(n))`
-/

namespace A284031.P5950999013830461713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A267609 n)

end

end A284031.P5950999013830461713

namespace A284031

/-- `and(∑[A000079(n)], A267609(n))` -/
def P5950999013830461713.Spec : Prop :=
  ∀ n, P5950999013830461713.a n = A284031 n

end A284031

/-! ## A284031.P12411843590571184431

`A290419(2*n+1)/A011782(n+2)`
-/

namespace A284031.P12411843590571184431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290419 (2 * n + 1) : ℚ) / (A011782 (n + 2) : ℚ)

end

end A284031.P12411843590571184431

namespace A284031

/-- `A290419(2*n+1)/A011782(n+2)` -/
def P12411843590571184431.Spec : Prop :=
  ∀ n, P12411843590571184431.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P8708513068795690791

`and(A095121(n+1), A267247(n+1))/2`
-/

namespace A284031.P8708513068795690791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A095121 (n + 1)) (A267247 (n + 1)) : ℚ) / 2

end

end A284031.P8708513068795690791

namespace A284031

/-- `and(A095121(n+1), A267247(n+1))/2` -/
def P8708513068795690791.Spec : Prop :=
  ∀ n, P8708513068795690791.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P15962034411859145144

`and(A126646(n+1), A267247(n+1))/2`
-/

namespace A284031.P15962034411859145144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A126646 (n + 1)) (A267247 (n + 1)) : ℚ) / 2

end

end A284031.P15962034411859145144

namespace A284031

/-- `and(A126646(n+1), A267247(n+1))/2` -/
def P15962034411859145144.Spec : Prop :=
  ∀ n, P15962034411859145144.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P11309741421049665872

`and(A267247(n+1), A290682(n+1))/2`
-/

namespace A284031.P11309741421049665872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A267247 (n + 1)) (A290682 (n + 1)) : ℚ) / 2

end

end A284031.P11309741421049665872

namespace A284031

/-- `and(A267247(n+1), A290682(n+1))/2` -/
def P11309741421049665872.Spec : Prop :=
  ∀ n, P11309741421049665872.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P4269235511390211635

`A290419(2*n+1)/and(A290419(2*n+1), A290419(n+1))`
-/

namespace A284031.P4269235511390211635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290419 (2 * n + 1) : ℚ) / (Int.land (A290419 (2 * n + 1)) (A290419 (n + 1)) : ℚ)

end

end A284031.P4269235511390211635

namespace A284031

/-- `A290419(2*n+1)/and(A290419(2*n+1), A290419(n+1))` -/
def P4269235511390211635.Spec : Prop :=
  ∀ n, P4269235511390211635.a n = (A284031 n : ℚ)

end A284031

/-! ## A284031.P2975497915295690062

`and(A267247(n+1), A281482(n+1))/2`
-/

namespace A284031.P2975497915295690062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A267247 (n + 1)) (A281482 (n + 1)) : ℚ) / 2

end

end A284031.P2975497915295690062

namespace A284031

/-- `and(A267247(n+1), A281482(n+1))/2` -/
def P2975497915295690062.Spec : Prop :=
  ∀ n, P2975497915295690062.a n = (A284031 n : ℚ)

end A284031

/-!
# A284032: Poly-Bernoulli numbers B_n^(k) with k = -8.

The programs for A284032, there is no canonical definition to state claims against.
-/

/-! ## A284032.P10846395903651218783

`A099594(eq[8, A002262(n)])`
-/

namespace A284032.P10846395903651218783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284032.P10846395903651218783

/-! ## A284032.P8741411488585244439

`A099594(eq[8, A144328(n+1)])`
-/

namespace A284032.P8741411488585244439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284032.P8741411488585244439

/-! ## A284032.P12850755088229897095

`A099594(eq[9, A002260(n+1)])`
-/

namespace A284032.P12850755088229897095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284032.P12850755088229897095

/-! ## A284032.P16469111728357769318

`A099594(eq[8, A025581(n)])`
-/

namespace A284032.P16469111728357769318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284032.P16469111728357769318

/-! ## A284032.P13372074844413416884

`A099594(eq[9, A193739(n)])`
-/

namespace A284032.P13372074844413416884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284032.P13372074844413416884

/-! ## A284032.P3164510726781713235

`A099594(eq[9, A004736(n+1)])`
-/

namespace A284032.P3164510726781713235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284032.P3164510726781713235

/-!
# A284033: Poly-Bernoulli numbers B_n^(k) with k = -9.

The programs for A284033, there is no canonical definition to state claims against.
-/

/-! ## A284033.P15685194754135701594

`A099594(eq[9, A002262(n)])`
-/

namespace A284033.P15685194754135701594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284033.P15685194754135701594

/-! ## A284033.P167805598629721985

`A099594(A167614(n+8)+6)`
-/

namespace A284033.P167805598629721985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A167614 (n + 8) + 6).toNat

end

end A284033.P167805598629721985

/-! ## A284033.P5262799760349246324

`A099594(eq[10, A002260(n+1)])`
-/

namespace A284033.P5262799760349246324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284033.P5262799760349246324

/-! ## A284033.P10688725561496066216

`A099594(eq[9, A025581(n)])`
-/

namespace A284033.P10688725561496066216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284033.P10688725561496066216

/-! ## A284033.P9294510802383915289

`A099594(A000217(n+10)-10)`
-/

namespace A284033.P9294510802383915289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (A000217 (n + 10) - 10).toNat

end

end A284033.P9294510802383915289

/-! ## A284033.P4701427871008853981

`A099594(eq[10, A004736(n+1)])`
-/

namespace A284033.P4701427871008853981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284033.P4701427871008853981

/-!
# A284034: Primes p such that (p^2 - 3)/2 and (p^2 + 1)/2 are twin primes.

The programs for A284034, there is no canonical definition to state claims against.
-/

/-! ## A284034.P18389226865382024501

`∩[A048161(n+1), A284036(n+1)]`
-/

namespace A284034.P18389226865382024501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P18389226865382024501

/-! ## A284034.P7465561501605703248

`p?[A284036(n+1)]`
-/

namespace A284034.P7465561501605703248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284034.P7465561501605703248

/-! ## A284034.P18090799621065186693

`∩[A048161(n+1), A110589(n+1)]`
-/

namespace A284034.P18090799621065186693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P18090799621065186693

/-! ## A284034.P13693301621719456272

`∩[A110589(n+1), A281575(n+1)]`
-/

namespace A284034.P13693301621719456272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P13693301621719456272

/-! ## A284034.P10165314161008257901

`∩[A110589(n+1), A284036(n+1)]`
-/

namespace A284034.P10165314161008257901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P10165314161008257901

/-! ## A284034.P12489812964993857678

`∩[A110589(n+1), A172438(n+1)]`
-/

namespace A284034.P12489812964993857678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P12489812964993857678

/-! ## A284034.P11526230724662221341

`∩[A172438(n+1), A284036(n+1)]`
-/

namespace A284034.P11526230724662221341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P11526230724662221341

/-! ## A284034.P310292185656662669

`∩[A284036(n+1), A378441(n+1)]`
-/

namespace A284034.P310292185656662669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P310292185656662669

/-! ## A284034.P7899865779308338357

`∩[A002731(n+1), A110589(n+1)]`
-/

namespace A284034.P7899865779308338357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P7899865779308338357

/-! ## A284034.P13272893174117394513

`∩[A048161(n+1), A109358(n+1)]`
-/

namespace A284034.P13272893174117394513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P13272893174117394513

/-! ## A284034.P7664893526093513847

`∩[A045405(n+1), A284036(n+1)]`
-/

namespace A284034.P7664893526093513847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P7664893526093513847

/-! ## A284034.P14089978604465293404

`∩[A132143(n+1), A284036(n+1)]`
-/

namespace A284034.P14089978604465293404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P14089978604465293404

/-! ## A284034.P11735254165530377704

`∩[A002731(n+1), A092740(n+1)]`
-/

namespace A284034.P11735254165530377704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P11735254165530377704

/-! ## A284034.P18359953563449167953

`∩[A048161(n+1), A092740(n+1)]`
-/

namespace A284034.P18359953563449167953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P18359953563449167953

/-! ## A284034.P14736614548527949039

`∩[A092740(n+1), A109358(n+1)]`
-/

namespace A284034.P14736614548527949039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P14736614548527949039

/-! ## A284034.P18245854235455077209

`∩[A092740(n+1), A110589(n+1)]`
-/

namespace A284034.P18245854235455077209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P18245854235455077209

/-! ## A284034.P3132268935037407370

`∩[A092740(n+1), A172438(n+1)]`
-/

namespace A284034.P3132268935037407370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P3132268935037407370

/-! ## A284034.P13103943628708917053

`∩[A092740(n+1), A281575(n+1)]`
-/

namespace A284034.P13103943628708917053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P13103943628708917053

/-! ## A284034.P8435435584378734259

`∩[A092740(n+1), A284036(n+1)]`
-/

namespace A284034.P8435435584378734259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P8435435584378734259

/-! ## A284034.P920867542190036990

`∩[A225856(n+1), A284036(n+1)]`
-/

namespace A284034.P920867542190036990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284034.P920867542190036990

/-!
# A284035: Upper twin primes which correspond to the hypotenuse in a Pythagorean triple whose short leg is also a prime.

The programs for A284035, there is no canonical definition to state claims against.
-/

/-! ## A284035.P15918149728661551618

`(A284034(n+1)²+1)/2`
-/

namespace A284035.P15918149728661551618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284034 (n + 1) ^ 2 + 1 : ℚ) / 2

end

end A284035.P15918149728661551618

/-! ## A284035.P4539439884017378129

`ceil(A284034(n+1)²/2)`
-/

namespace A284035.P4539439884017378129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284034 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A284035.P4539439884017378129

/-! ## A284035.P9544902473264144135

`A000982(A284034(n+1))`
-/

namespace A284035.P9544902473264144135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A284034 (n + 1)).toNat

end

end A284035.P9544902473264144135

/-! ## A284035.P1193913638863512695

`record[A014442(A092740(n+1))]`
-/

namespace A284035.P1193913638863512695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A092740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284035.P1193913638863512695

/-! ## A284035.P12645472975048217597

`record[A125256(A110589(n+1))]`
-/

namespace A284035.P12645472975048217597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A110589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284035.P12645472975048217597

/-!
# A284036: Positive integers n such that (n^2 - 3)/2 and (n^2 + 1)/2 are twin primes.

The programs for A284036, there is no canonical definition to state claims against.
-/

/-! ## A284036.P18246381517027561549

`∩[A002731(n+1), A109358(n+1)]`
-/

namespace A284036.P18246381517027561549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284036.P18246381517027561549

/-! ## A284036.P6547968557011159116

`∩[A109358(n+1), A385821(n+1)]`
-/

namespace A284036.P6547968557011159116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284036.P6547968557011159116

/-! ## A284036.P6436137836766614834

`∩[A085722(n+1), A109358(n+1)]`
-/

namespace A284036.P6436137836766614834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284036.P6436137836766614834

/-! ## A284036.P313004603762525693

`∩[A109358(n+1), A333635(n+1)]`
-/

namespace A284036.P313004603762525693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284036.P313004603762525693

/-! ## A284036.P2501931168813404170

`floor(sqrt(2*A166564(2*(n+1))))`
-/

namespace A284036.P2501931168813404170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A166564 (2 * (n + 1)))

end

end A284036.P2501931168813404170

/-! ## A284036.P4266006296951043010

`ceil(sqrt(2*A166564(2*n+1)))`
-/

namespace A284036.P4266006296951043010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A166564 (2 * n + 1) : ℝ)⌉

end

end A284036.P4266006296951043010

/-! ## A284036.P8453822361267057788

`round(sqrt(A166564(2*n+1)+A166564(2*(n+1))))`
-/

namespace A284036.P8453822361267057788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A166564 (2 * n + 1) + A166564 (2 * (n + 1)) : ℝ))

end

end A284036.P8453822361267057788

/-!
# A284037: Primes p such that p-1 and p+1 have two distinct prime factors.

The programs for A284037, there is no canonical definition to state claims against.
-/

/-! ## A284037.P2832168319625818167

`∩[A215504(n+1), A340815(n+1)]`
-/

namespace A284037.P2832168319625818167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284037.P2832168319625818167

/-! ## A284037.P7995052200913799928

`∩[A067466(n+1), A215504(n+1)]`
-/

namespace A284037.P7995052200913799928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284037.P7995052200913799928

/-! ## A284037.P8564567516453709294

`∩[A067466(n+1), A364003(n+1)]`
-/

namespace A284037.P8564567516453709294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284037.P8564567516453709294

/-! ## A284037.P12900108659508781963

`p?[Δ[A372724(n+1)]]`
-/

namespace A284037.P12900108659508781963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372724 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284037.P12900108659508781963

/-! ## A284037.P8327410379825716519

`p?[Δ[A336101(n+1)²]]`
-/

namespace A284037.P8327410379825716519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A284037.P8327410379825716519

/-!
# A284039: Wiener index of the n-permutation star graph.

The programs for A284039, there is no canonical definition to state claims against.
-/

/-! ## A284039.P9895793424562228045

`A001563(n)*A062119(n+1)-A292062(n+1)`
-/

namespace A284039.P9895793424562228045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n * A062119 (n + 1) - A292062 (n + 1)

end

end A284039.P9895793424562228045

/-!
# A284040: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A284040, there is no canonical definition to state claims against.
-/

/-! ## A284040.P4639593775144665063

`A007088(A284042(n))`
-/

namespace A284040.P4639593775144665063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284042 n).toNat

end

end A284040.P4639593775144665063

/-! ## A284040.P18067924610582541750

`A007088(or(C(3, n²), A288705(n)))`
-/

namespace A284040.P18067924610582541750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (Nat.choose 3 (n ^ 2) : ℤ) (A288705 n)).toNat

end

end A284040.P18067924610582541750

/-! ## A284040.P3331126849480651253

`A007088(lcm(floor(1/(γ-n)), A288705(n)))`
-/

namespace A284040.P3331126849480651253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A288705 n))

end

end A284040.P3331126849480651253

/-! ## A284040.P4814777918250404992

`A007088(or(A267883(n), A288705(n)))`
-/

namespace A284040.P4814777918250404992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A267883 n) (A288705 n)).toNat

end

end A284040.P4814777918250404992

/-! ## A284040.P8646144726596316140

`A007088(A288705(n)+A267883(2*n))`
-/

namespace A284040.P8646144726596316140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288705 n + A267883 (2 * n)).toNat

end

end A284040.P8646144726596316140

/-!
# A284041: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A284041, there is no canonical definition to state claims against.
-/

/-! ## A284041.P8809262556589983933

`A288704(n)+A010051(A006261(n))`
-/

namespace A284041.P8809262556589983933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288704 n + A010051 (A006261 n).toNat

end

end A284041.P8809262556589983933

/-! ## A284041.P13907302058015572466

`A288704(A000007(A023360(n))+n)`
-/

namespace A284041.P13907302058015572466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288704 (A000007 (A023360 n).toNat + (n : ℤ)).toNat

end

end A284041.P13907302058015572466

/-! ## A284041.P13810820373029615918

`A288704(n)-A159075(A218711(n))`
-/

namespace A284041.P13810820373029615918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288704 n - A159075 (A218711 n).toNat

end

end A284041.P13810820373029615918

/-! ## A284041.P12639771823538271545

`or(A000007(A023360(n)), A288704(n))`
-/

namespace A284041.P12639771823538271545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A023360 n).toNat) (A288704 n)

end

end A284041.P12639771823538271545

/-! ## A284041.P15513890967246040933

`or(A123594(A057335(n)), A288704(n))`
-/

namespace A284041.P15513890967246040933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123594 (A057335 n).toNat) (A288704 n)

end

end A284041.P15513890967246040933

/-!
# A284042: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A284042, there is no canonical definition to state claims against.
-/

/-! ## A284042.P7103847604591607443

`A288705(n)+A000038(A023360(n))`
-/

namespace A284042.P7103847604591607443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288705 n + A000038 (A023360 n).toNat

end

end A284042.P7103847604591607443

/-! ## A284042.P6476146615298752571

`lcm(A260196(A218711(n)), A288705(n))`
-/

namespace A284042.P6476146615298752571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260196 (A218711 n).toNat) (A288705 n)

end

end A284042.P6476146615298752571

/-! ## A284042.P8044539415066588555

`or(A034188(A269543(n)), A288705(n))`
-/

namespace A284042.P8044539415066588555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034188 (A269543 n).toNat) (A288705 n)

end

end A284042.P8044539415066588555

/-! ## A284042.P11028637906997284445

`or(A283269(A054554(2*(n+2))), A288705(n))`
-/

namespace A284042.P11028637906997284445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283269 (A054554 (2 * (n + 2))).toNat) (A288705 n)

end

end A284042.P11028637906997284445

/-! ## A284042.P3284502364548146714

`A288705(n)+A000122(A002729(n+2))`
-/

namespace A284042.P3284502364548146714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288705 n + A000122 (A002729 (n + 2)).toNat

end

end A284042.P3284502364548146714

/-!
# A284044: Largest positive k among all primes p < n such that n^(p-1) == 1 (mod p^k).

The programs for A284044, there is no canonical definition to state claims against.
-/

/-! ## A284044.P15947462401437789843

`A072411((n+2)*A218495(n))`
-/

namespace A284044.P15947462401437789843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 ((n + 2 : ℤ) * A218495 n).toNat

end

end A284044.P15947462401437789843

/-! ## A284044.P16713808618245070785

`A338169(A000041(A264985(n)))`
-/

namespace A284044.P16713808618245070785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338169 (A000041 (A264985 n).toNat).toNat

end

end A284044.P16713808618245070785

/-! ## A284044.P16206245809191726657

`A089309(∑[A285529(n+1)]-n)`
-/

namespace A284044.P16206245809191726657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A284044.P16206245809191726657

/-! ## A284044.P5788685395262881012

`A337260(A343333(n+1)+A313760(n))`
-/

namespace A284044.P5788685395262881012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (A343333 (n + 1) + A313760 n).toNat

end

end A284044.P5788685395262881012

/-! ## A284044.P5526164461135886854

`gcd(A000203(2*n+3), A322528(A246682(n+1)))`
-/

namespace A284044.P5526164461135886854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (2 * n + 3)) (A322528 (A246682 (n + 1)).toNat)

end

end A284044.P5526164461135886854

/-!
# A284045: Numbers k such that p = 6k-1 and q = 6k+1 are twin primes and (p^2 + q^2)/2 is prime.

The programs for A284045, there is no canonical definition to state claims against.
-/

/-! ## A284045.P253483057603271043

`A070155(n+2)/6`
-/

namespace A284045.P253483057603271043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070155 (n + 2) : ℚ) / 6

end

end A284045.P253483057603271043

/-! ## A284045.P4080439501310402714

`A129293(n+3)/6`
-/

namespace A284045.P4080439501310402714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129293 (n + 3) : ℚ) / 6

end

end A284045.P4080439501310402714

/-! ## A284045.P6477624639590900605

`ceil(A108013(n+2)/6)`
-/

namespace A284045.P6477624639590900605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108013 (n + 2) : ℚ) / 6⌉

end

end A284045.P6477624639590900605

/-! ## A284045.P11523734827325432598

`round(A108013(lcm(n+2, n+2))/6)`
-/

namespace A284045.P11523734827325432598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A108013 (Nat.lcm (n + 2) (n + 2)) : ℚ) / 6)

end

end A284045.P11523734827325432598

/-! ## A284045.P520278584951491843

`round(A108013(C(n+2, n+1))/6)`
-/

namespace A284045.P520278584951491843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A108013 (Nat.choose (n + 2) (n + 1)) : ℚ) / 6)

end

end A284045.P520278584951491843

/-! ## A284045.P8350555194891339586

`round(A108013(n+2)/6)%A085027(n)`
-/

namespace A284045.P8350555194891339586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A108013 (n + 2) : ℚ) / 6)) (A085027 n)

end

end A284045.P8350555194891339586

/-! ## A284045.P3038972749148510953

`gcd(round(A108013(n+2)/6), A000038(n))`
-/

namespace A284045.P3038972749148510953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A108013 (n + 2) : ℚ) / 6)) (A000038 n)

end

end A284045.P3038972749148510953

/-! ## A284045.P11656641178251071854

`∑[A008615(Δ[A070155(n+1)])]`
-/

namespace A284045.P11656641178251071854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070155 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284045.P11656641178251071854

/-! ## A284045.P3781253747453796680

`∑[A008615(Δ[A108013(n+1)])]`
-/

namespace A284045.P3781253747453796680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284045.P3781253747453796680

/-! ## A284045.P17998350851119043520

`A075888(A246824(n+1))`
-/

namespace A284045.P17998350851119043520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075888 (A246824 (n + 1)).toNat

end

end A284045.P17998350851119043520

/-!
# A284046: Numbers k, not ending in 0, such that the consecutive digits of k^2 differ by 0 or 1.

The programs for A284046, there is no canonical definition to state claims against.
-/

/-! ## A284046.P4319134576809348009

`A048412(A037344(n+1))`
-/

namespace A284046.P4319134576809348009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048412 (A037344 (n + 1)).toNat

end

end A284046.P4319134576809348009

/-! ## A284046.P2159038562038279884

`A007947(A048412(n+2))`
-/

namespace A284046.P2159038562038279884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A048412 (n + 2)).toNat

end

end A284046.P2159038562038279884

/-! ## A284046.P18400745399066501774

`A048412(A032555(n+2))`
-/

namespace A284046.P18400745399066501774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048412 (A032555 (n + 2)).toNat

end

end A284046.P18400745399066501774

/-! ## A284046.P5633900579798584904

`A048412(A048406(n+2))`
-/

namespace A284046.P5633900579798584904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048412 (A048406 (n + 2)).toNat

end

end A284046.P5633900579798584904

/-!
# A284048: a(n) is the smallest positive integer not already in the sequence such that a(n) + a(n-1) is a proper prime power (A246547), with a(1) = 1.

The programs for A284048, there is no canonical definition to state claims against.
-/

/-! ## A284048.P17624072429611212824

`A127397(∑[∑[A091536(n)]])`
-/

namespace A284048.P17624072429611212824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127397 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284048.P17624072429611212824

/-! ## A284048.P9869134896715850813

`A127397(n+1)%A339617(2*n+3)`
-/

namespace A284048.P9869134896715850813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127397 (n + 1)) (A339617 (2 * n + 3))

end

end A284048.P9869134896715850813

/-! ## A284048.P8869004030450919174

`A127397(n+1)%A001358(A001405(n))`
-/

namespace A284048.P8869004030450919174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127397 (n + 1)) (A001358 (A001405 n).toNat)

end

end A284048.P8869004030450919174

/-! ## A284048.P3863063574865844051

`A127397(n+1)+A000035(A217873(n+3))`
-/

namespace A284048.P3863063574865844051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127397 (n + 1) + A000035 (A217873 (n + 3)).toNat

end

end A284048.P3863063574865844051

/-! ## A284048.P7369129972319376389

`A191255(A008965(n+4))+A127397(n+1)`
-/

namespace A284048.P7369129972319376389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A008965 (n + 4)).toNat + A127397 (n + 1)

end

end A284048.P7369129972319376389

/-!
# A284050: a(n) = floor(A240751(n) / n), where A240751(n) = the smallest k such that in the prime power factorization of k! there exists at least one exponent n.

The programs for A284050, there is no canonical definition to state claims against.
-/

/-! ## A284050.P11311472477905922803

`floor(A240751(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284050.P11311472477905922803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A240751 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A284050.P11311472477905922803

/-! ## A284050.P17265949588664114871

`A240755(n+1)-A157928(n)`
-/

namespace A284050.P17265949588664114871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A157928 n

end

end A284050.P17265949588664114871

/-! ## A284050.P14029381789732612360

`(A240751(n+1)-A284051(n+1))/(n+1)`
-/

namespace A284050.P14029381789732612360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240751 (n + 1) - A284051 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A284050.P14029381789732612360

/-! ## A284050.P5640153777150305114

`A240755(n+1)-and(1, A019430(n))`
-/

namespace A284050.P5640153777150305114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - Int.land 1 (A019430 n)

end

end A284050.P5640153777150305114

/-! ## A284050.P4077382370909757282

`A240755(n+1)-A001221(A060632(n))`
-/

namespace A284050.P4077382370909757282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A001221 (A060632 n).toNat

end

end A284050.P4077382370909757282

/-! ## A284050.P10476871673666088037

`A240755(n+1)-A057427(A032741(n))`
-/

namespace A284050.P10476871673666088037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A057427 (A032741 n).toNat

end

end A284050.P10476871673666088037

/-! ## A284050.P11984139881108886837

`A240755(n+1)-A000035(A151800(n))`
-/

namespace A284050.P11984139881108886837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A000035 (A151800 n).toNat

end

end A284050.P11984139881108886837

/-! ## A284050.P11995826111081141115

`A240755(n+1)-A340373(A008578(n+1))`
-/

namespace A284050.P11995826111081141115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A340373 (A008578 (n + 1)).toNat

end

end A284050.P11995826111081141115

/-! ## A284050.P8729631140123904255

`A240755(n+1)-A057427(n-A057427(n))`
-/

namespace A284050.P8729631140123904255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A057427 ((n : ℤ) - A057427 n).toNat

end

end A284050.P8729631140123904255

/-!
# A284051: a(n) = A240751(n) mod n, where A240751(n) = the smallest k such that in the prime power factorization of k! there exists at least one exponent n.

The programs for A284051, there is no canonical definition to state claims against.
-/

/-! ## A284051.P13109185619048914800

`A240751(n+1)%(n+1)`
-/

namespace A284051.P13109185619048914800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240751 (n + 1)) (n + 1 : ℤ)

end

end A284051.P13109185619048914800

/-! ## A284051.P18336150619798944864

`A240751(n+1)-(n+1)*A284050(n+1)`
-/

namespace A284051.P18336150619798944864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240751 (n + 1) - (n + 1 : ℤ) * A284050 (n + 1)

end

end A284051.P18336150619798944864

/-! ## A284051.P6403448447076421639

`A277822(∑[∑[A344004(n+1)]])`
-/

namespace A284051.P6403448447076421639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284051.P6403448447076421639

/-! ## A284051.P3288286079556580618

`A196563(∑{digits}[A095151(n), A048481(#)])`
-/

namespace A284051.P3288286079556580618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048481 x).sum.toNat

end

end A284051.P3288286079556580618

/-!
# A284055: First occurrence of n in A265650.

The programs for A284055, there is no canonical definition to state claims against.
-/

/-! ## A284055.P16764320119099772469

`lt[(n+1)/2, A265650(n+1)]+1`
-/

namespace A284055.P16764320119099772469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A284055.P16764320119099772469

/-! ## A284055.P868931626730604450

`A065475(lt[A008611(n), A265650(n+1)])`
-/

namespace A284055.P868931626730604450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284055.P868931626730604450

/-! ## A284055.P6421659105091270469

`∑[A035263(A288578(n)+A080720(n))+1]`
-/

namespace A284055.P6421659105091270469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A288578 n + A080720 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284055.P6421659105091270469

/-! ## A284055.P8199705094310757722

`floor(log2(A238548(2*n+3)+1))+n`
-/

namespace A284055.P8199705094310757722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A238548 (2 * n + 3) + 1).toNat + n

end

end A284055.P8199705094310757722

/-! ## A284055.P143023572411038913

`ceil(log2(A325724(2*(n+2))+1))+n`
-/

namespace A284055.P143023572411038913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A325724 (2 * (n + 2)) + 1 : ℝ)⌉ + (n : ℤ)

end

end A284055.P143023572411038913

/-!
# A284057: Square numbers of the form prime(k) + 2*prime(k+1).

The programs for A284057, there is no canonical definition to state claims against.
-/

/-! ## A284057.P11245737117462957384

`∩[n², A050200(n)]`
-/

namespace A284057.P11245737117462957384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284057.P11245737117462957384

/-! ## A284057.P8361127089457637003

`A364411(A064504(n+1))`
-/

namespace A284057.P8361127089457637003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (A064504 (n + 1)).toNat

end

end A284057.P8361127089457637003

/-! ## A284057.P1914376227663579160

`A050200(A064504(n+1)-1)`
-/

namespace A284057.P1914376227663579160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 (A064504 (n + 1) - 1).toNat

end

end A284057.P1914376227663579160

/-! ## A284057.P2951861517361064550

`∩[A000040(n+2)+A001043(n+1), n²]`
-/

namespace A284057.P2951861517361064550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + A001043 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A284057.P2951861517361064550

/-!
# A284058: Numbers k such that {k + 2, k + 4} and {k^3 + 2, k^3 + 4} are twin prime pairs.

The programs for A284058, there is no canonical definition to state claims against.
-/

/-! ## A284058.P4063011835474881864

`∩[A001097(n+1)-2, A178337(n+1)]`
-/

namespace A284058.P4063011835474881864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284058.P4063011835474881864

/-! ## A284058.P9143428300495166507

`∩[A023444(A001097(n+1)), A178337(n+1)]`
-/

namespace A284058.P9143428300495166507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A001097 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284058.P9143428300495166507

/-!
# A284059: The absolute values of A275966.

The programs for A284059, the canonical program `A284059.P2785205054192742423` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284059 has offset 1).

The definition of A284059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284059.P2785205054192742423

`abs(A275966(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284059

/-- `abs(A275966(n+1))` -/
def P2785205054192742423.Spec : Prop :=
  ∀ n, P2785205054192742423.a n = A284059 (n + 1)

theorem P2785205054192742423.correct : P2785205054192742423.Spec := by
  intro n
  simp only [A284059, Nat.add_sub_cancel]

end A284059

/-! ## A284059.P1995166162578670228

`gcd(A000038(n), A275966(n+1))`
-/

namespace A284059.P1995166162578670228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275966 (n + 1))

end

end A284059.P1995166162578670228

namespace A284059

/-- `gcd(A000038(n), A275966(n+1))` -/
def P1995166162578670228.Spec : Prop :=
  ∀ n, (P1995166162578670228.a n : ℤ) = A284059 (n + 1)

end A284059

/-! ## A284059.P2094819575508592303

`lcm(A001492(n), A275966(n+1))`
-/

namespace A284059.P2094819575508592303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A275966 (n + 1))

end

end A284059.P2094819575508592303

namespace A284059

/-- `lcm(A001492(n), A275966(n+1))` -/
def P2094819575508592303.Spec : Prop :=
  ∀ n, (P2094819575508592303.a n : ℤ) = A284059 (n + 1)

end A284059

/-! ## A284059.P5930602186087749915

`∑{d}[A275966(n+1), A204617(#)]`
-/

namespace A284059.P5930602186087749915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A204617 d

end

end A284059.P5930602186087749915

namespace A284059

/-- `∑{d}[A275966(n+1), A204617(#)]` -/
def P5930602186087749915.Spec : Prop :=
  ∀ n, P5930602186087749915.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P2431682721538075432

`A008836(n+1)*A275966(n+1)`
-/

namespace A284059.P2431682721538075432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A275966 (n + 1)

end

end A284059.P2431682721538075432

namespace A284059

/-- `A008836(n+1)*A275966(n+1)` -/
def P2431682721538075432.Spec : Prop :=
  ∀ n, P2431682721538075432.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P17034764009637726515

`A112299(n+1)*A275966(n+1)`
-/

namespace A284059.P17034764009637726515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A275966 (n + 1)

end

end A284059.P17034764009637726515

namespace A284059

/-- `A112299(n+1)*A275966(n+1)` -/
def P17034764009637726515.Spec : Prop :=
  ∀ n, P17034764009637726515.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P6653196454654520092

`A209615(n+1)*A275966(n+1)`
-/

namespace A284059.P6653196454654520092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A275966 (n + 1)

end

end A284059.P6653196454654520092

namespace A284059

/-- `A209615(n+1)*A275966(n+1)` -/
def P6653196454654520092.Spec : Prop :=
  ∀ n, P6653196454654520092.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P18007146069905746026

`A275966(n+1)*A358839(n+1)`
-/

namespace A284059.P18007146069905746026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275966 (n + 1) * A358839 (n + 1)

end

end A284059.P18007146069905746026

namespace A284059

/-- `A275966(n+1)*A358839(n+1)` -/
def P18007146069905746026.Spec : Prop :=
  ∀ n, P18007146069905746026.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P8349738093391616846

`A000010(n+1)%A100008(n+1)`
-/

namespace A284059.P8349738093391616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A100008 (n + 1))

end

end A284059.P8349738093391616846

namespace A284059

/-- `A000010(n+1)%A100008(n+1)` -/
def P8349738093391616846.Spec : Prop :=
  ∀ n, P8349738093391616846.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P18049911553831378116

`A059376(n+1)%A100008(n+1)`
-/

namespace A284059.P18049911553831378116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059376 (n + 1)) (A100008 (n + 1))

end

end A284059.P18049911553831378116

namespace A284059

/-- `A059376(n+1)%A100008(n+1)` -/
def P18049911553831378116.Spec : Prop :=
  ∀ n, P18049911553831378116.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P2038069903321803943

`A059378(n+1)%A100008(n+1)`
-/

namespace A284059.P2038069903321803943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059378 (n + 1)) (A100008 (n + 1))

end

end A284059.P2038069903321803943

namespace A284059

/-- `A059378(n+1)%A100008(n+1)` -/
def P2038069903321803943.Spec : Prop :=
  ∀ n, P2038069903321803943.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P3482972693262587784

`A069092(n+1)%A100008(n+1)`
-/

namespace A284059.P3482972693262587784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069092 (n + 1)) (A100008 (n + 1))

end

end A284059.P3482972693262587784

namespace A284059

/-- `A069092(n+1)%A100008(n+1)` -/
def P3482972693262587784.Spec : Prop :=
  ∀ n, P3482972693262587784.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P9242963449638679733

`A069094(n+1)%A100008(n+1)`
-/

namespace A284059.P9242963449638679733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069094 (n + 1)) (A100008 (n + 1))

end

end A284059.P9242963449638679733

namespace A284059

/-- `A069094(n+1)%A100008(n+1)` -/
def P9242963449638679733.Spec : Prop :=
  ∀ n, P9242963449638679733.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P9544155925428833003

`A069177(n+1)%A100008(n+1)`
-/

namespace A284059.P9544155925428833003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069177 (n + 1)) (A100008 (n + 1))

end

end A284059.P9544155925428833003

namespace A284059

/-- `A069177(n+1)%A100008(n+1)` -/
def P9544155925428833003.Spec : Prop :=
  ∀ n, P9544155925428833003.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P8734582901213152614

`A073103(n+1)%A100008(n+1)`
-/

namespace A284059.P8734582901213152614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073103 (n + 1)) (A100008 (n + 1))

end

end A284059.P8734582901213152614

namespace A284059

/-- `A073103(n+1)%A100008(n+1)` -/
def P8734582901213152614.Spec : Prop :=
  ∀ n, P8734582901213152614.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P18017211476122517888

`A087692(n+1)%A100008(n+1)`
-/

namespace A284059.P18017211476122517888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087692 (n + 1)) (A100008 (n + 1))

end

end A284059.P18017211476122517888

namespace A284059

/-- `A087692(n+1)%A100008(n+1)` -/
def P18017211476122517888.Spec : Prop :=
  ∀ n, P18017211476122517888.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P2595257485703548671

`A115070(n+1)%A100008(n+1)`
-/

namespace A284059.P2595257485703548671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115070 (n + 1)) (A100008 (n + 1))

end

end A284059.P2595257485703548671

namespace A284059

/-- `A115070(n+1)%A100008(n+1)` -/
def P2595257485703548671.Spec : Prop :=
  ∀ n, P2595257485703548671.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P8447339831149071862

`A162728(n+1)%A100008(n+1)`
-/

namespace A284059.P8447339831149071862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162728 (n + 1)) (A100008 (n + 1))

end

end A284059.P8447339831149071862

namespace A284059

/-- `A162728(n+1)%A100008(n+1)` -/
def P8447339831149071862.Spec : Prop :=
  ∀ n, P8447339831149071862.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P8184097818607194943

`A196524(n+1)%A100008(n+1)`
-/

namespace A284059.P8184097818607194943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196524 (n + 1)) (A100008 (n + 1))

end

end A284059.P8184097818607194943

namespace A284059

/-- `A196524(n+1)%A100008(n+1)` -/
def P8184097818607194943.Spec : Prop :=
  ∀ n, P8184097818607194943.a n = A284059 (n + 1)

end A284059

/-! ## A284059.P1510384322479599024

`A200905(n+1)%A100008(n+1)`
-/

namespace A284059.P1510384322479599024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200905 (n + 1)) (A100008 (n + 1))

end

end A284059.P1510384322479599024

namespace A284059

/-- `A200905(n+1)%A100008(n+1)` -/
def P1510384322479599024.Spec : Prop :=
  ∀ n, P1510384322479599024.a n = A284059 (n + 1)

end A284059

/-!
# A284060: Primes that are left-, left/right-, and right-truncatable.

The programs for A284060, there is no canonical definition to state claims against.
-/

/-! ## A284060.P9847929129133534898

`A020994(lt[A059589(n+1), A003961(n+1)])`
-/

namespace A284060.P9847929129133534898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020994 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284060.P9847929129133534898

/-! ## A284060.P1352184237339255564

`A020994(lt[A007318(3*(n+1)), A003961(n+1)])`
-/

namespace A284060.P1352184237339255564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020994 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284060.P1352184237339255564

/-! ## A284060.P1597014228945873562

`A020994(lt[A225368(n+1), A027170(n)])`
-/

namespace A284060.P1597014228945873562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020994 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284060.P1597014228945873562

/-! ## A284060.P17301192298260493220

`A020994(∪[A000040(n+1), A083166(n+1)])`
-/

namespace A284060.P17301192298260493220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083166 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020994 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A284060.P17301192298260493220

/-!
# A284061: Triangle read by rows: T(n,k) = pi(prime(k) * prime(n+1)).

The programs for A284061, the canonical program `A284061.P12909766225176381168` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284061 has offset 1).

The definition of A284061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284061.P12909766225176381168

`A000720(A087112(comp[∑[n]]))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A284061

/-- `A000720(A087112(comp[∑[n]]))` -/
def P12909766225176381168.Spec : Prop :=
  ∀ n, P12909766225176381168.a n = A284061 (n + 1)

theorem P12909766225176381168.correct : P12909766225176381168.Spec := by
  intro n
  simp only [A284061, Nat.add_sub_cancel]

end A284061

/-! ## A284061.P7635763608673143845

`A000720(A339116(n+2))`
-/

namespace A284061.P7635763608673143845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A339116 (n + 2)).toNat

end

end A284061.P7635763608673143845

namespace A284061

/-- `A000720(A339116(n+2))` -/
def P7635763608673143845.Spec : Prop :=
  ∀ n, P7635763608673143845.a n = A284061 (n + 1)

end A284061

/-! ## A284061.P13921135184114490927

`A230980(A339116(n+2)-1)`
-/

namespace A284061.P13921135184114490927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A339116 (n + 2) - 1).toNat

end

end A284061.P13921135184114490927

namespace A284061

/-- `A230980(A339116(n+2)-1)` -/
def P13921135184114490927.Spec : Prop :=
  ∀ n, P13921135184114490927.a n = A284061 (n + 1)

end A284061

/-! ## A284061.P5763659026358746219

`A230980(A339116(n+2)%A225626(n+1))`
-/

namespace A284061.P5763659026358746219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.tmod (A339116 (n + 2)) (A225626 (n + 1))).toNat

end

end A284061.P5763659026358746219

namespace A284061

/-- `A230980(A339116(n+2)%A225626(n+1))` -/
def P5763659026358746219.Spec : Prop :=
  ∀ n, P5763659026358746219.a n = A284061 (n + 1)

end A284061

/-! ## A284061.P17541227137834862400

`A160094(2*n+3)+A033270(A339116(n+2))`
-/

namespace A284061.P17541227137834862400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (2 * n + 3) + A033270 (A339116 (n + 2)).toNat

end

end A284061.P17541227137834862400

namespace A284061

/-- `A160094(2*n+3)+A033270(A339116(n+2))` -/
def P17541227137834862400.Spec : Prop :=
  ∀ n, P17541227137834862400.a n = A284061 (n + 1)

end A284061

/-! ## A284061.P11844061805708706707

`A056172(2*A339116(n+2))`
-/

namespace A284061.P11844061805708706707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A339116 (n + 2)).toNat

end

end A284061.P11844061805708706707

namespace A284061

/-- `A056172(2*A339116(n+2))` -/
def P11844061805708706707.Spec : Prop :=
  ∀ n, P11844061805708706707.a n = A284061 (n + 1)

end A284061

/-! ## A284061.P13960789143299042118

`A279500(2*n+1)+A230980(A339116(n+2))`
-/

namespace A284061.P13960789143299042118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279500 (2 * n + 1) + A230980 (A339116 (n + 2)).toNat

end

end A284061.P13960789143299042118

namespace A284061

/-- `A279500(2*n+1)+A230980(A339116(n+2))` -/
def P13960789143299042118.Spec : Prop :=
  ∀ n, P13960789143299042118.a n = A284061 (n + 1)

end A284061

/-! ## A284061.P10722011575093892423

`A000720(A019565(A018900(n+1)))`
-/

namespace A284061.P10722011575093892423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A019565 (A018900 (n + 1)).toNat).toNat

end

end A284061.P10722011575093892423

namespace A284061

/-- `A000720(A019565(A018900(n+1)))` -/
def P10722011575093892423.Spec : Prop :=
  ∀ n, P10722011575093892423.a n = A284061 (n + 1)

end A284061

/-!
# A284062: Numbers whose smallest decimal digit is 1.

The programs for A284062, the canonical program `A284062.P8258744999605309053` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284062 has offset 1).

The definition of A284062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284062.P8258744999605309053

`∩[A011531(n+1), A052382(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284062

/-- `∩[A011531(n+1), A052382(n+1)]` -/
def P8258744999605309053.Spec : Prop :=
  ∀ n, (P8258744999605309053.a n : ℤ) = A284062 (n + 1)

theorem P8258744999605309053.correct : P8258744999605309053.Spec := by
  intro n
  simp only [A284062, Nat.add_sub_cancel]

end A284062

/-! ## A284062.P14541459057555278228

`eq[1, A054054(n)]`
-/

namespace A284062.P14541459057555278228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P14541459057555278228

namespace A284062

/-- `eq[1, A054054(n)]` -/
def P14541459057555278228.Spec : Prop :=
  ∀ n, (P14541459057555278228.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P10408447637463256833

`eq[1, val(A086066(n), 2)]`
-/

namespace A284062.P10408447637463256833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284062.P10408447637463256833

namespace A284062

/-- `eq[1, val(A086066(n), 2)]` -/
def P10408447637463256833.Spec : Prop :=
  ∀ n, (P10408447637463256833.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P5660637827708065392

`eq[1, val(A348783(n), 5)]`
-/

namespace A284062.P5660637827708065392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284062.P5660637827708065392

namespace A284062

/-- `eq[1, val(A348783(n), 5)]` -/
def P5660637827708065392.Spec : Prop :=
  ∀ n, (P5660637827708065392.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P12306429058992625054

`eq[1, A004186(n)%10]`
-/

namespace A284062.P12306429058992625054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P12306429058992625054

namespace A284062

/-- `eq[1, A004186(n)%10]` -/
def P12306429058992625054.Spec : Prop :=
  ∀ n, (P12306429058992625054.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P10451197151904745889

`eq[1, A227362(n)%10]`
-/

namespace A284062.P10451197151904745889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P10451197151904745889

namespace A284062

/-- `eq[1, A227362(n)%10]` -/
def P10451197151904745889.Spec : Prop :=
  ∀ n, (P10451197151904745889.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P1567630838554275730

`eq[1, A244112(n)%10]`
-/

namespace A284062.P1567630838554275730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244112 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P1567630838554275730

namespace A284062

/-- `eq[1, A244112(n)%10]` -/
def P1567630838554275730.Spec : Prop :=
  ∀ n, (P1567630838554275730.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P11911727635796562638

`record[gcd(n+1, A054054(n+1)+n)]`
-/

namespace A284062.P11911727635796562638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A054054 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284062.P11911727635796562638

namespace A284062

/-- `record[gcd(n+1, A054054(n+1)+n)]` -/
def P11911727635796562638.Spec : Prop :=
  ∀ n, (P11911727635796562638.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P7767820549185853318

`eq[1, A010879(A004186(n))]`
-/

namespace A284062.P7767820549185853318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P7767820549185853318

namespace A284062

/-- `eq[1, A010879(A004186(n))]` -/
def P7767820549185853318.Spec : Prop :=
  ∀ n, (P7767820549185853318.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P10961159802839140328

`eq[1, A007814(A086066(n))]`
-/

namespace A284062.P10961159802839140328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P10961159802839140328

namespace A284062

/-- `eq[1, A007814(A086066(n))]` -/
def P10961159802839140328.Spec : Prop :=
  ∀ n, (P10961159802839140328.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P1560002451619569063

`eq[1, A010879(A227362(n))]`
-/

namespace A284062.P1560002451619569063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284062.P1560002451619569063

namespace A284062

/-- `eq[1, A010879(A227362(n))]` -/
def P1560002451619569063.Spec : Prop :=
  ∀ n, (P1560002451619569063.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P2582553382097248727

`eq[A168046(n), A381526(n)]`
-/

namespace A284062.P2582553382097248727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284062.P2582553382097248727

namespace A284062

/-- `eq[A168046(n), A381526(n)]` -/
def P2582553382097248727.Spec : Prop :=
  ∀ n, (P2582553382097248727.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P14952667037327335417

`filter[A011531(n+1), A168046(#)]`
-/

namespace A284062.P14952667037327335417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A284062.P14952667037327335417

namespace A284062

/-- `filter[A011531(n+1), A168046(#)]` -/
def P14952667037327335417.Spec : Prop :=
  ∀ n, P14952667037327335417.a n = A284062 (n + 1)

end A284062

/-! ## A284062.P16780852751854193424

`eq[A087156(n+1), A386253(n)]`
-/

namespace A284062.P16780852751854193424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284062.P16780852751854193424

namespace A284062

/-- `eq[A087156(n+1), A386253(n)]` -/
def P16780852751854193424.Spec : Prop :=
  ∀ n, (P16780852751854193424.a n : ℤ) = A284062 (n + 1)

end A284062

/-! ## A284062.P10671863164820733846

`eq[A178915(n+1), A386253(n)]`
-/

namespace A284062.P10671863164820733846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284062.P10671863164820733846

namespace A284062

/-- `eq[A178915(n+1), A386253(n)]` -/
def P10671863164820733846.Spec : Prop :=
  ∀ n, (P10671863164820733846.a n : ℤ) = A284062 (n + 1)

end A284062

/-!
# A284063: Numbers whose smallest decimal digit is 2.

The programs for A284063, the canonical program `A284063.P14093468249191505321` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284063 has offset 1).

The definition of A284063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284063.P14093468249191505321

`eq[2, A054054(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284063

/-- `eq[2, A054054(n)]` -/
def P14093468249191505321.Spec : Prop :=
  ∀ n, (P14093468249191505321.a n : ℤ) = A284063 (n + 1)

theorem P14093468249191505321.correct : P14093468249191505321.Spec := by
  intro n
  simp only [A284063, Nat.add_sub_cancel]

end A284063

/-! ## A284063.P15399623831119365369

`eq[2, val(A086066(n), 2)]`
-/

namespace A284063.P15399623831119365369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284063.P15399623831119365369

namespace A284063

/-- `eq[2, val(A086066(n), 2)]` -/
def P15399623831119365369.Spec : Prop :=
  ∀ n, (P15399623831119365369.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P14183950146840322572

`eq[2, val(A348783(n), 5)]`
-/

namespace A284063.P14183950146840322572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284063.P14183950146840322572

namespace A284063

/-- `eq[2, val(A348783(n), 5)]` -/
def P14183950146840322572.Spec : Prop :=
  ∀ n, (P14183950146840322572.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P15684270149341645572

`eq[2, A004186(n)%10]`
-/

namespace A284063.P15684270149341645572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P15684270149341645572

namespace A284063

/-- `eq[2, A004186(n)%10]` -/
def P15684270149341645572.Spec : Prop :=
  ∀ n, (P15684270149341645572.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P14232679424622891646

`eq[2, A227362(n)%10]`
-/

namespace A284063.P14232679424622891646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P14232679424622891646

namespace A284063

/-- `eq[2, A227362(n)%10]` -/
def P14232679424622891646.Spec : Prop :=
  ∀ n, (P14232679424622891646.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P16926954905488820814

`eq[2, A244112(n)%10]`
-/

namespace A284063.P16926954905488820814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244112 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P16926954905488820814

namespace A284063

/-- `eq[2, A244112(n)%10]` -/
def P16926954905488820814.Spec : Prop :=
  ∀ n, (P16926954905488820814.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P10528776534155655011

`eq[2, A010879(A004186(n))]`
-/

namespace A284063.P10528776534155655011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P10528776534155655011

namespace A284063

/-- `eq[2, A010879(A004186(n))]` -/
def P10528776534155655011.Spec : Prop :=
  ∀ n, (P10528776534155655011.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P7679105133222377700

`eq[2, A007814(A086066(n))]`
-/

namespace A284063.P7679105133222377700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P7679105133222377700

namespace A284063

/-- `eq[2, A007814(A086066(n))]` -/
def P7679105133222377700.Spec : Prop :=
  ∀ n, (P7679105133222377700.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P8104707986738607067

`eq[2, A010879(A227362(n))]`
-/

namespace A284063.P8104707986738607067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P8104707986738607067

namespace A284063

/-- `eq[2, A010879(A227362(n))]` -/
def P8104707986738607067.Spec : Prop :=
  ∀ n, (P8104707986738607067.a n : ℤ) = A284063 (n + 1)

end A284063

/-! ## A284063.P9339144536227875224

`eq[5, A054055(A267193(n))-2]`
-/

namespace A284063.P9339144536227875224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A267193 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284063.P9339144536227875224

namespace A284063

/-- `eq[5, A054055(A267193(n))-2]` -/
def P9339144536227875224.Spec : Prop :=
  ∀ n, (P9339144536227875224.a n : ℤ) = A284063 (n + 1)

end A284063

/-!
# A284064: Numbers whose smallest decimal digit is 3.

The programs for A284064, the canonical program `A284064.P8176096885892359099` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284064 has offset 1).

The definition of A284064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284064.P8176096885892359099

`eq[3, A054054(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284064

/-- `eq[3, A054054(n)]` -/
def P8176096885892359099.Spec : Prop :=
  ∀ n, (P8176096885892359099.a n : ℤ) = A284064 (n + 1)

theorem P8176096885892359099.correct : P8176096885892359099.Spec := by
  intro n
  simp only [A284064, Nat.add_sub_cancel]

end A284064

/-! ## A284064.P864601206357102837

`eq[3, val(A086066(n), 2)]`
-/

namespace A284064.P864601206357102837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284064.P864601206357102837

namespace A284064

/-- `eq[3, val(A086066(n), 2)]` -/
def P864601206357102837.Spec : Prop :=
  ∀ n, (P864601206357102837.a n : ℤ) = A284064 (n + 1)

end A284064

/-! ## A284064.P5910770322155952117

`eq[3, A004186(n)%10]`
-/

namespace A284064.P5910770322155952117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284064.P5910770322155952117

namespace A284064

/-- `eq[3, A004186(n)%10]` -/
def P5910770322155952117.Spec : Prop :=
  ∀ n, (P5910770322155952117.a n : ℤ) = A284064 (n + 1)

end A284064

/-! ## A284064.P2673593396117887124

`eq[3, A010879(A004186(n))]`
-/

namespace A284064.P2673593396117887124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284064.P2673593396117887124

namespace A284064

/-- `eq[3, A010879(A004186(n))]` -/
def P2673593396117887124.Spec : Prop :=
  ∀ n, (P2673593396117887124.a n : ℤ) = A284064 (n + 1)

end A284064

/-! ## A284064.P8303136110897310166

`eq[3, A007814(A086066(n))]`
-/

namespace A284064.P8303136110897310166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284064.P8303136110897310166

namespace A284064

/-- `eq[3, A007814(A086066(n))]` -/
def P8303136110897310166.Spec : Prop :=
  ∀ n, (P8303136110897310166.a n : ℤ) = A284064 (n + 1)

end A284064

/-! ## A284064.P13465374362326102843

`eq[3, A010879(A227362(n))]`
-/

namespace A284064.P13465374362326102843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284064.P13465374362326102843

namespace A284064

/-- `eq[3, A010879(A227362(n))]` -/
def P13465374362326102843.Spec : Prop :=
  ∀ n, (P13465374362326102843.a n : ℤ) = A284064 (n + 1)

end A284064

/-!
# A284065: Numbers whose smallest decimal digit is 4.

The programs for A284065, the canonical program `A284065.P4824403330227561387` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284065 has offset 1).

The definition of A284065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284065.P9922090621786345153

`eq[4, A054054(n)]`
-/

namespace A284065.P9922090621786345153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P9922090621786345153

namespace A284065

/-- `eq[4, A054054(n)]` -/
def P9922090621786345153.Spec : Prop :=
  ∀ n, (P9922090621786345153.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P18141541743751649234

`eq[4, val(A086066(n), 2)]`
-/

namespace A284065.P18141541743751649234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284065.P18141541743751649234

namespace A284065

/-- `eq[4, val(A086066(n), 2)]` -/
def P18141541743751649234.Spec : Prop :=
  ∀ n, (P18141541743751649234.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P4824403330227561387

`eq[4, val(A348783(n), 5)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284065

/-- `eq[4, val(A348783(n), 5)]` -/
def P4824403330227561387.Spec : Prop :=
  ∀ n, (P4824403330227561387.a n : ℤ) = A284065 (n + 1)

theorem P4824403330227561387.correct : P4824403330227561387.Spec := by
  intro n
  simp only [A284065, Nat.add_sub_cancel]

end A284065

/-! ## A284065.P15912897263325969853

`eq[4, A004186(n)%10]`
-/

namespace A284065.P15912897263325969853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P15912897263325969853

namespace A284065

/-- `eq[4, A004186(n)%10]` -/
def P15912897263325969853.Spec : Prop :=
  ∀ n, (P15912897263325969853.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P14375977653397657314

`eq[4, A227362(n)%10]`
-/

namespace A284065.P14375977653397657314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P14375977653397657314

namespace A284065

/-- `eq[4, A227362(n)%10]` -/
def P14375977653397657314.Spec : Prop :=
  ∀ n, (P14375977653397657314.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P4486849685011265163

`eq[4, A244112(n)%10]`
-/

namespace A284065.P4486849685011265163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244112 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P4486849685011265163

namespace A284065

/-- `eq[4, A244112(n)%10]` -/
def P4486849685011265163.Spec : Prop :=
  ∀ n, (P4486849685011265163.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P12223549926955419422

`eq[4, A010879(A004186(n))]`
-/

namespace A284065.P12223549926955419422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P12223549926955419422

namespace A284065

/-- `eq[4, A010879(A004186(n))]` -/
def P12223549926955419422.Spec : Prop :=
  ∀ n, (P12223549926955419422.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P18047785645824661130

`eq[4, A007814(A086066(n))]`
-/

namespace A284065.P18047785645824661130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P18047785645824661130

namespace A284065

/-- `eq[4, A007814(A086066(n))]` -/
def P18047785645824661130.Spec : Prop :=
  ∀ n, (P18047785645824661130.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P10160653847590047148

`eq[4, A010879(A227362(n))]`
-/

namespace A284065.P10160653847590047148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P10160653847590047148

namespace A284065

/-- `eq[4, A010879(A227362(n))]` -/
def P10160653847590047148.Spec : Prop :=
  ∀ n, (P10160653847590047148.a n : ℤ) = A284065 (n + 1)

end A284065

/-! ## A284065.P5050169310309178327

`eq[5, A037904(A017377(n))]`
-/

namespace A284065.P5050169310309178327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284065.P5050169310309178327

namespace A284065

/-- `eq[5, A037904(A017377(n))]` -/
def P5050169310309178327.Spec : Prop :=
  ∀ n, (P5050169310309178327.a n : ℤ) = A284065 (n + 1)

end A284065

/-!
# A284066: Numbers whose smallest decimal digit is 5.

The programs for A284066, the canonical program `A284066.P17499782741659184884` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284066 has offset 1).

The definition of A284066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284066.P16279992407017258331

`eq[5, A054054(n)]`
-/

namespace A284066.P16279992407017258331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P16279992407017258331

namespace A284066

/-- `eq[5, A054054(n)]` -/
def P16279992407017258331.Spec : Prop :=
  ∀ n, (P16279992407017258331.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P5540416708927682808

`eq[5, val(A086066(n), 2)]`
-/

namespace A284066.P5540416708927682808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284066.P5540416708927682808

namespace A284066

/-- `eq[5, val(A086066(n), 2)]` -/
def P5540416708927682808.Spec : Prop :=
  ∀ n, (P5540416708927682808.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P17499782741659184884

`eq[5, val(A348783(n), 5)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284066

/-- `eq[5, val(A348783(n), 5)]` -/
def P17499782741659184884.Spec : Prop :=
  ∀ n, (P17499782741659184884.a n : ℤ) = A284066 (n + 1)

theorem P17499782741659184884.correct : P17499782741659184884.Spec := by
  intro n
  simp only [A284066, Nat.add_sub_cancel]

end A284066

/-! ## A284066.P6351979150914346157

`eq[5, A004186(n)%10]`
-/

namespace A284066.P6351979150914346157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P6351979150914346157

namespace A284066

/-- `eq[5, A004186(n)%10]` -/
def P6351979150914346157.Spec : Prop :=
  ∀ n, (P6351979150914346157.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P6377488340612767610

`eq[5, A227362(n)%10]`
-/

namespace A284066.P6377488340612767610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P6377488340612767610

namespace A284066

/-- `eq[5, A227362(n)%10]` -/
def P6377488340612767610.Spec : Prop :=
  ∀ n, (P6377488340612767610.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P14834065216825936258

`eq[5, A244112(n)%10]`
-/

namespace A284066.P14834065216825936258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244112 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P14834065216825936258

namespace A284066

/-- `eq[5, A244112(n)%10]` -/
def P14834065216825936258.Spec : Prop :=
  ∀ n, (P14834065216825936258.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P14433611930043796089

`eq[3, A040325(A227362(n))]`
-/

namespace A284066.P14433611930043796089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040325 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P14433611930043796089

namespace A284066

/-- `eq[3, A040325(A227362(n))]` -/
def P14433611930043796089.Spec : Prop :=
  ∀ n, (P14433611930043796089.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P743148767391488653

`eq[4, A054055(A061601(n))]`
-/

namespace A284066.P743148767391488653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P743148767391488653

namespace A284066

/-- `eq[4, A054055(A061601(n))]` -/
def P743148767391488653.Spec : Prop :=
  ∀ n, (P743148767391488653.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P2244274091228871124

`eq[4, A066301(A086066(n))]`
-/

namespace A284066.P2244274091228871124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P2244274091228871124

namespace A284066

/-- `eq[4, A066301(A086066(n))]` -/
def P2244274091228871124.Spec : Prop :=
  ∀ n, (P2244274091228871124.a n : ℤ) = A284066 (n + 1)

end A284066

/-! ## A284066.P619419549598957665

`eq[4, A037904(A017377(n))]`
-/

namespace A284066.P619419549598957665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284066.P619419549598957665

namespace A284066

/-- `eq[4, A037904(A017377(n))]` -/
def P619419549598957665.Spec : Prop :=
  ∀ n, (P619419549598957665.a n : ℤ) = A284066 (n + 1)

end A284066

/-!
# A284067: Numbers whose smallest decimal digit is 6.

The programs for A284067, the canonical program `A284067.P11523281303812964618` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284067 has offset 1).

The definition of A284067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284067.P17667287926111044734

`eq[6, A054054(n)]`
-/

namespace A284067.P17667287926111044734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P17667287926111044734

namespace A284067

/-- `eq[6, A054054(n)]` -/
def P17667287926111044734.Spec : Prop :=
  ∀ n, (P17667287926111044734.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P11211896264449930416

`eq[6, val(A086066(n), 2)]`
-/

namespace A284067.P11211896264449930416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086066 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284067.P11211896264449930416

namespace A284067

/-- `eq[6, val(A086066(n), 2)]` -/
def P11211896264449930416.Spec : Prop :=
  ∀ n, (P11211896264449930416.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P11523281303812964618

`eq[6, val(A348783(n), 5)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284067

/-- `eq[6, val(A348783(n), 5)]` -/
def P11523281303812964618.Spec : Prop :=
  ∀ n, (P11523281303812964618.a n : ℤ) = A284067 (n + 1)

theorem P11523281303812964618.correct : P11523281303812964618.Spec := by
  intro n
  simp only [A284067, Nat.add_sub_cancel]

end A284067

/-! ## A284067.P10249476239359917426

`eq[6, A004186(n)%10]`
-/

namespace A284067.P10249476239359917426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P10249476239359917426

namespace A284067

/-- `eq[6, A004186(n)%10]` -/
def P10249476239359917426.Spec : Prop :=
  ∀ n, (P10249476239359917426.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P7098751829475070574

`eq[6, A227362(n)%10]`
-/

namespace A284067.P7098751829475070574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227362 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P7098751829475070574

namespace A284067

/-- `eq[6, A227362(n)%10]` -/
def P7098751829475070574.Spec : Prop :=
  ∀ n, (P7098751829475070574.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P7557639323185134308

`eq[6, A244112(n)%10]`
-/

namespace A284067.P7557639323185134308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244112 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P7557639323185134308

namespace A284067

/-- `eq[6, A244112(n)%10]` -/
def P7557639323185134308.Spec : Prop :=
  ∀ n, (P7557639323185134308.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P6280295735073978066

`eq[4, A269667(A004186(n))]`
-/

namespace A284067.P6280295735073978066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269667 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P6280295735073978066

namespace A284067

/-- `eq[4, A269667(A004186(n))]` -/
def P6280295735073978066.Spec : Prop :=
  ∀ n, (P6280295735073978066.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P3174103171731708952

`eq[6, A007814(A086066(n))]`
-/

namespace A284067.P3174103171731708952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P3174103171731708952

namespace A284067

/-- `eq[6, A007814(A086066(n))]` -/
def P3174103171731708952.Spec : Prop :=
  ∀ n, (P3174103171731708952.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P6122009703183961057

`eq[6, A010879(A227362(n))]`
-/

namespace A284067.P6122009703183961057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284067.P6122009703183961057

namespace A284067

/-- `eq[6, A010879(A227362(n))]` -/
def P6122009703183961057.Spec : Prop :=
  ∀ n, (P6122009703183961057.a n : ℤ) = A284067 (n + 1)

end A284067

/-! ## A284067.P12784562504488873128

`record[A106746(A284064(n+1))]`
-/

namespace A284067.P12784562504488873128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106746 (A284064 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284067.P12784562504488873128

namespace A284067

/-- `record[A106746(A284064(n+1))]` -/
def P12784562504488873128.Spec : Prop :=
  ∀ n, P12784562504488873128.a n = A284067 (n + 1)

end A284067

/-!
# A284068: Numbers whose smallest decimal digit is 7.

The programs for A284068, there is no canonical definition to state claims against.
-/

/-! ## A284068.P8480787501036749297

`record[A048379(A284067(n+1))]`
-/

namespace A284068.P8480787501036749297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A284067 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284068.P8480787501036749297

/-! ## A284068.P3780492782046066361

`eq[7, A054054(n)]`
-/

namespace A284068.P3780492782046066361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284068.P3780492782046066361

/-! ## A284068.P11823601811472624501

`eq[3, A269667(A004186(n))]`
-/

namespace A284068.P11823601811472624501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269667 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284068.P11823601811472624501

/-! ## A284068.P6163539996508606425

`eq[7, A005361(A086066(n))]`
-/

namespace A284068.P6163539996508606425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284068.P6163539996508606425

/-! ## A284068.P3446174341622139999

`eq[2, A037904(A017377(n))]`
-/

namespace A284068.P3446174341622139999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284068.P3446174341622139999

/-!
# A284069: Numbers whose smallest decimal digit is 8.

The programs for A284069, there is no canonical definition to state claims against.
-/

/-! ## A284069.P5762963503813461292

`A256341(A062289(n+1)-1)`
-/

namespace A284069.P5762963503813461292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (A062289 (n + 1) - 1).toNat

end

end A284069.P5762963503813461292

/-! ## A284069.P12818940007231938458

`A256341(eq[0, A135416(n+1)])`
-/

namespace A284069.P12818940007231938458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284069.P12818940007231938458

/-! ## A284069.P5241919899009771433

`record[A256341(n+1)%A007088(A346306(n+1))]`
-/

namespace A284069.P5241919899009771433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256341 (n + 1)) (A007088 (A346306 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284069.P5241919899009771433

/-! ## A284069.P4854324695148436790

`record[A256341(n+1)-Δ[A256077(n+1)]]`
-/

namespace A284069.P4854324695148436790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284069.P4854324695148436790

/-! ## A284069.P4242401070750234942

`A256341(eq[0, Δ[A000523(n+1)]])`
-/

namespace A284069.P4242401070750234942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284069.P4242401070750234942

/-! ## A284069.P5585793637216609386

`A256341(eq[0, Δ[A113473(n+1)]])`
-/

namespace A284069.P5585793637216609386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284069.P5585793637216609386

/-! ## A284069.P3414413569726309435

`record[A158388(A115637(n))*A256341(n+1)]`
-/

namespace A284069.P3414413569726309435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A115637 n).toNat * A256341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284069.P3414413569726309435

/-! ## A284069.P16668715601300855726

`∩[A001743(n+1), A098944(n+1)]`
-/

namespace A284069.P16668715601300855726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284069.P16668715601300855726

/-! ## A284069.P17526145550811516887

`∩[A001744(n+1), A098944(n+1)]`
-/

namespace A284069.P17526145550811516887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284069.P17526145550811516887

/-! ## A284069.P2300502810756968850

`∩[A029581(n+1), A098944(n+1)]`
-/

namespace A284069.P2300502810756968850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284069.P2300502810756968850

/-!
# A284070: Number of n X 3 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284070, there is no canonical definition to state claims against.
-/

/-! ## A284070.P3552767689891561711

`A284075(∑[n+3]+1)`
-/

namespace A284070.P3552767689891561711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284070.P3552767689891561711

/-! ## A284070.P2973851612049281290

`record[A284075(A101881(n))]`
-/

namespace A284070.P2973851612049281290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284070.P2973851612049281290

/-! ## A284070.P2231004708668398571

`A349136(2*(n+1))+A284075(A034856(n+2))`
-/

namespace A284070.P2231004708668398571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (2 * (n + 1)) + A284075 (A034856 (n + 2)).toNat

end

end A284070.P2231004708668398571

/-! ## A284070.P15981041711058464434

`A354030(2*(n+1))+A284075(A034856(n+2))`
-/

namespace A284070.P15981041711058464434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354030 (2 * (n + 1)) + A284075 (A034856 (n + 2)).toNat

end

end A284070.P15981041711058464434

/-! ## A284070.P2381081779786172883

`A010170(2*n+1)*A284075(A034856(n+2))`
-/

namespace A284070.P2381081779786172883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 (2 * n + 1) * A284075 (A034856 (n + 2)).toNat

end

end A284070.P2381081779786172883

/-!
# A284071: Number of nX4 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284071, there is no canonical definition to state claims against.
-/

/-! ## A284071.P6932687961988368281

`A284075(A141214(n+1))`
-/

namespace A284071.P6932687961988368281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A141214 (n + 1)).toNat

end

end A284071.P6932687961988368281

/-! ## A284071.P8852571095850925983

`A284075(A055998(n+2))`
-/

namespace A284071.P8852571095850925983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A055998 (n + 2)).toNat

end

end A284071.P8852571095850925983

/-! ## A284071.P11714773503274849334

`A284075(A056000(n)+7)`
-/

namespace A284071.P11714773503274849334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A056000 n + 7).toNat

end

end A284071.P11714773503274849334

/-! ## A284071.P2304616769978561331

`A284075(Δ[A034857(n+1)])`
-/

namespace A284071.P2304616769978561331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (f1 (n + 1) - f1 n).toNat

end

end A284071.P2304616769978561331

/-! ## A284071.P16063617549838839243

`A284075(A052905(n+1)+2)`
-/

namespace A284071.P16063617549838839243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A052905 (n + 1) + 2).toNat

end

end A284071.P16063617549838839243

/-!
# A284072: Number of n X 5 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284072, there is no canonical definition to state claims against.
-/

/-! ## A284072.P9106825438719023199

`A284075(Δ[A264443(n)])`
-/

namespace A284072.P9106825438719023199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (f1 (n + 1) - f1 n).toNat

end

end A284072.P9106825438719023199

/-! ## A284072.P1739131722860009471

`A284075(A046691(n+3))`
-/

namespace A284072.P1739131722860009471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A046691 (n + 3)).toNat

end

end A284072.P1739131722860009471

/-! ## A284072.P6151912021404625202

`A284075(eq[4, A193592(n)])`
-/

namespace A284072.P6151912021404625202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284072.P6151912021404625202

/-! ## A284072.P15021003613184378041

`A284075(eq[8, A209434(n)])`
-/

namespace A284072.P15021003613184378041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284072.P15021003613184378041

/-! ## A284072.P9328045532944091307

`A284075(Δ[A023545(n+1)])`
-/

namespace A284072.P9328045532944091307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (f1 (n + 1) - f1 n).toNat

end

end A284072.P9328045532944091307

/-!
# A284073: Number of nX6 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284073, there is no canonical definition to state claims against.
-/

/-! ## A284073.P9899514409533120929

`A284075(A052905(n+3))`
-/

namespace A284073.P9899514409533120929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A052905 (n + 3)).toNat

end

end A284073.P9899514409533120929

/-! ## A284073.P3644996120543471410

`A284075(eq[3, A219347(n)])`
-/

namespace A284073.P3644996120543471410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284073.P3644996120543471410

/-! ## A284073.P11786748575680478626

`A284075(eq[5, A193592(n)])`
-/

namespace A284073.P11786748575680478626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284073.P11786748575680478626

/-! ## A284073.P10982119320142039585

`A284075(A134227(n+4)+1)`
-/

namespace A284073.P10982119320142039585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A134227 (n + 4) + 1).toNat

end

end A284073.P10982119320142039585

/-! ## A284073.P15041633135533775742

`A284075(A155212(n+2)+3)`
-/

namespace A284073.P15041633135533775742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A155212 (n + 2) + 3).toNat

end

end A284073.P15041633135533775742

/-!
# A284074: Number of nX7 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284074, there is no canonical definition to state claims against.
-/

/-! ## A284074.P16447195731229430486

`A284075(A055999(n+4))`
-/

namespace A284074.P16447195731229430486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A055999 (n + 4)).toNat

end

end A284074.P16447195731229430486

/-! ## A284074.P11441928462341117631

`A284075(eq[4, A219347(n)])`
-/

namespace A284074.P11441928462341117631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284074.P11441928462341117631

/-! ## A284074.P11158080877579203324

`A284075(eq[6, A193592(n)])`
-/

namespace A284074.P11158080877579203324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284074.P11158080877579203324

/-! ## A284074.P1731526613815314039

`A284075(eq[7, A200370(n+1)])`
-/

namespace A284074.P1731526613815314039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284074.P1731526613815314039

/-! ## A284074.P13729402126896777353

`A284075(eq[10, A185782(n+1)])`
-/

namespace A284074.P13729402126896777353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284074.P13729402126896777353

/-!
# A284075: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284075, there is no canonical definition to state claims against.
-/

/-! ## A284075.P14227172567377302139

`A123576(A330835(n+1)%A166344(n+1))`
-/

namespace A284075.P14227172567377302139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (Int.tmod (A330835 (n + 1)) (A166344 (n + 1))).toNat

end

end A284075.P14227172567377302139

/-!
# A284076: Number of 2Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284076, there is no canonical definition to state claims against.
-/

/-! ## A284076.P17091151001620186866

`A284075(∑[n+1]+2)`
-/

namespace A284076.P17091151001620186866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284076.P17091151001620186866

/-! ## A284076.P15404040414979070867

`A001003(n)-A335433(A316983(n))`
-/

namespace A284076.P15404040414979070867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - A335433 (A316983 n).toNat

end

end A284076.P15404040414979070867

/-!
# A284077: Number of 3Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284077, there is no canonical definition to state claims against.
-/

/-! ## A284077.P16232389761877080496

`A284075(∑[n+2]+4)`
-/

namespace A284077.P16232389761877080496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A284077.P16232389761877080496

/-! ## A284077.P343274769011325567

`A284075(A167614(n+1))%(10^n)`
-/

namespace A284077.P343274769011325567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284075 (A167614 (n + 1)).toNat) (10 ^ n : ℤ)

end

end A284077.P343274769011325567

/-! ## A284077.P9681845262879493221

`A284075(A167614(n+1))+A025466(n)`
-/

namespace A284077.P9681845262879493221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A167614 (n + 1)).toNat + A025466 n

end

end A284077.P9681845262879493221

/-! ## A284077.P2377903692321956737

`A326547(n)+A284075(A167614(n+1))`
-/

namespace A284077.P2377903692321956737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 n + A284075 (A167614 (n + 1)).toNat

end

end A284077.P2377903692321956737

/-! ## A284077.P5830888100772506133

`A057427(n)*A284075(A167614(n+1))`
-/

namespace A284077.P5830888100772506133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A284075 (A167614 (n + 1)).toNat

end

end A284077.P5830888100772506133

/-!
# A284078: Number of 4Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284078, there is no canonical definition to state claims against.
-/

/-! ## A284078.P13291149740084462032

`A284075(A052905(n)+9)`
-/

namespace A284078.P13291149740084462032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A052905 n + 9).toNat

end

end A284078.P13291149740084462032

/-! ## A284078.P3796773850568856858

`A284075(A055999(n)+10)`
-/

namespace A284078.P3796773850568856858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A055999 n + 10).toNat

end

end A284078.P3796773850568856858

/-! ## A284078.P18063020747797869357

`A284075(A167614(n+2)+1)`
-/

namespace A284078.P18063020747797869357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A167614 (n + 2) + 1).toNat

end

end A284078.P18063020747797869357

/-! ## A284078.P2478394078062660452

`A284075(Δ[A264443(n)-n²])`
-/

namespace A284078.P2478394078062660452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (f1 (n + 1) - f1 n).toNat

end

end A284078.P2478394078062660452

/-! ## A284078.P14771640073961517710

`A284075(A133263(n+4)-(n+2))`
-/

namespace A284078.P14771640073961517710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A133263 (n + 4) - (n + 2 : ℤ)).toNat

end

end A284078.P14771640073961517710

/-!
# A284079: Number of 5 X n 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284079, there is no canonical definition to state claims against.
-/

/-! ## A284079.P15193342110714886249

`A284075(∑[n+4]+11)`
-/

namespace A284079.P15193342110714886249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A284079.P15193342110714886249

/-!
# A284080: Number of 6Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284080, there is no canonical definition to state claims against.
-/

/-! ## A284080.P13347573105414115580

`A284075(A056115(n)+21)`
-/

namespace A284080.P13347573105414115580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A056115 n + 21).toNat

end

end A284080.P13347573105414115580

/-! ## A284080.P13700650533041271022

`A284075(A167614(n+4)+3)`
-/

namespace A284080.P13700650533041271022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A167614 (n + 4) + 3).toNat

end

end A284080.P13700650533041271022

/-! ## A284080.P15673095985335555040

`A284075(A055999(n+2)+12)`
-/

namespace A284080.P15673095985335555040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A055999 (n + 2) + 12).toNat

end

end A284080.P15673095985335555040

/-! ## A284080.P3017612631297468265

`A284075(eq[6, A130270(n+1)])`
-/

namespace A284080.P3017612631297468265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284080.P3017612631297468265

/-! ## A284080.P15366249980485455639

`A284075(eq[7, A131818(n+1)])`
-/

namespace A284080.P15366249980485455639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284080.P15366249980485455639

/-!
# A284081: Number of 7Xn 0..1 arrays with no 1 equal to more than three of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A284081, there is no canonical definition to state claims against.
-/

/-! ## A284081.P15957401660315588762

`A284075(A056119(n)+28)`
-/

namespace A284081.P15957401660315588762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A056119 n + 28).toNat

end

end A284081.P15957401660315588762

/-! ## A284081.P14337853671864702454

`A284075(eq[11, A066657(n)])`
-/

namespace A284081.P14337853671864702454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284081.P14337853671864702454

/-! ## A284081.P16781773847902424442

`A284075(A000217(n+6)+7)`
-/

namespace A284081.P16781773847902424442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A000217 (n + 6) + 7).toNat

end

end A284081.P16781773847902424442

/-! ## A284081.P11944125199871613605

`A284075(A155212(n+2)+15)`
-/

namespace A284081.P11944125199871613605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (A155212 (n + 2) + 15).toNat

end

end A284081.P11944125199871613605

/-! ## A284081.P15051947181356701068

`A284075(eq[8, A131818(n+1)])`
-/

namespace A284081.P15051947181356701068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284081.P15051947181356701068

/-!
# A284082: Smallest positive m such that n divides sigma_m(n) - j where j is some divisor of n, or 0 if no such m exists.

The programs for A284082, there is no canonical definition to state claims against.
-/

/-! ## A284082.P16919893581126048265

`A151714(A272008(n+1)^A033630(n))`
-/

namespace A284082.P16919893581126048265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151714 (SequenceMachineLib.roundAway ((A272008 (n + 1) : ℚ) ^ (A033630 n : ℤ))).toNat

end

end A284082.P16919893581126048265

/-! ## A284082.P15731564125021532797

`A211261(A105321(n))^A060862(A192969(n))`
-/

namespace A284082.P15731564125021532797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211261 (A105321 n).toNat : ℚ) ^ (A060862 (A192969 n).toNat : ℤ)

end

end A284082.P15731564125021532797

/-! ## A284082.P12029257441954170233

`A001222(A002796(n+1))^A060862(A192969(n))`
-/

namespace A284082.P12029257441954170233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A002796 (n + 1)).toNat : ℚ) ^ (A060862 (A192969 n).toNat : ℤ)

end

end A284082.P12029257441954170233

/-! ## A284082.P8708392838969103483

`gcd(A004086(A008930(n)), A030119(n))`
-/

namespace A284082.P8708392838969103483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004086 (A008930 n).toNat) (A030119 n)

end

end A284082.P8708392838969103483

/-! ## A284082.P15211898667699839998

`A228351(A268448(n+1)*A306587(n+1))`
-/

namespace A284082.P15211898667699839998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A268448 (n + 1) * A306587 (n + 1)).toNat

end

end A284082.P15211898667699839998

/-!
# A284083: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A284083, there is no canonical definition to state claims against.
-/

/-! ## A284083.P15416107540720081357

`A007088(A284085(n))`
-/

namespace A284083.P15416107540720081357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284085 n).toNat

end

end A284083.P15416107540720081357

/-! ## A284083.P13225595504989691365

`A185544(2*A284085(n))`
-/

namespace A284083.P13225595504989691365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284085 n).toNat

end

end A284083.P13225595504989691365

/-!
# A284084: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A284084, there is no canonical definition to state claims against.
-/

/-! ## A284084.P5714976853326842288

`A007088(A284086(n))`
-/

namespace A284084.P5714976853326842288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284086 n).toNat

end

end A284084.P5714976853326842288

/-! ## A284084.P15792653913748444409

`A185544(2*A284086(n))`
-/

namespace A284084.P15792653913748444409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A284086 n).toNat

end

end A284084.P15792653913748444409

/-!
# A284086: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A284086, there is no canonical definition to state claims against.
-/

/-! ## A284086.P5129714142686702950

`and(A032661(2*n+3), A046523(A127103(n+1)))`
-/

namespace A284086.P5129714142686702950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032661 (2 * n + 3)) (A046523 (A127103 (n + 1)).toNat)

end

end A284086.P5129714142686702950

/-! ## A284086.P16785687676170645050

`and(A000041(A187829(2*n+1)), A063314(2*(n+1)))`
-/

namespace A284086.P16785687676170645050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (A187829 (2 * n + 1)).toNat) (A063314 (2 * (n + 1)))

end

end A284086.P16785687676170645050

/-!
# A284087: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A284087, there is no canonical definition to state claims against.
-/

/-! ## A284087.P6889703643081309575

`A284020(n+1)`
-/

namespace A284087.P6889703643081309575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (n + 1)

end

end A284087.P6889703643081309575

/-! ## A284087.P8472545435400556363

`record[A284020(n)-char[1]]`
-/

namespace A284087.P8472545435400556363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P8472545435400556363

/-! ## A284087.P8284667317064392261

`record[A284020(A055400(n))]`
-/

namespace A284087.P8284667317064392261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (A055400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P8284667317064392261

/-! ## A284087.P2291779312017241648

`record[A284020(A077462(n))]`
-/

namespace A284087.P2291779312017241648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (A077462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P2291779312017241648

/-! ## A284087.P118777383334079528

`record[A284020(A133310(n))]`
-/

namespace A284087.P118777383334079528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P118777383334079528

/-! ## A284087.P2052342109314358671

`record[A284020(A165190(n))]`
-/

namespace A284087.P2052342109314358671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (A165190 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P2052342109314358671

/-! ## A284087.P8487924972535602215

`record[A284020(∑[A001057(n)])]`
-/

namespace A284087.P8487924972535602215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284020 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P8487924972535602215

/-! ## A284087.P9225616598964394915

`record[xor(A159075(n), A284020(n))]`
-/

namespace A284087.P9225616598964394915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n) (A284020 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284087.P9225616598964394915

/-!
# A284088: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A284088, there is no canonical definition to state claims against.
-/

/-! ## A284088.P1666713762669027075

`A284021(n+1)/10`
-/

namespace A284088.P1666713762669027075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284021 (n + 1) : ℚ) / 10

end

end A284088.P1666713762669027075

/-! ## A284088.P16536535301615265408

`record[A284021(floor(3*n/7)^(n%2))/10]`
-/

namespace A284088.P16536535301615265408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284021 (⌊3 * ((n : ℚ) / 7)⌋ ^ (n % 2)).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284088.P16536535301615265408

/-! ## A284088.P14270175353737388847

`record[A284021(A133310(n))/10]`
-/

namespace A284088.P14270175353737388847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284021 (A133310 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284088.P14270175353737388847

/-! ## A284088.P557364244101048772

`record[A284021(A165190(n))/10]`
-/

namespace A284088.P557364244101048772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284021 (A165190 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284088.P557364244101048772

/-! ## A284088.P15279652567489710952

`record[A284021(A167666(n))/10]`
-/

namespace A284088.P15279652567489710952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284021 (A167666 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284088.P15279652567489710952

/-!
# A284090: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A284090, the canonical program `A284090.P9625942839066826035` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284090 has offset 0).

The definition of A284090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284090.P9558316824958863722

`A284023(n+1)/2`
-/

namespace A284090.P9558316824958863722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284023 (n + 1) : ℚ) / 2

end

end A284090.P9558316824958863722

namespace A284090

/-- `A284023(n+1)/2` -/
def P9558316824958863722.Spec : Prop :=
  ∀ n, P9558316824958863722.a n = (A284090 n : ℚ)

end A284090

/-! ## A284090.P9625942839066826035

`round(A284023(A008619(2*n))/2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284090

/-- `round(A284023(A008619(2*n))/2)` -/
def P9625942839066826035.Spec : Prop :=
  ∀ n, P9625942839066826035.a n = A284090 n

theorem P9625942839066826035.correct : P9625942839066826035.Spec := by
  intro n
  simp only [A284090]

end A284090

/-! ## A284090.P15290844924370194603

`(A126646(n+1)-A273973(n+1))/2`
-/

namespace A284090.P15290844924370194603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A273973 (n + 1) : ℚ) / 2

end

end A284090.P15290844924370194603

namespace A284090

/-- `(A126646(n+1)-A273973(n+1))/2` -/
def P15290844924370194603.Spec : Prop :=
  ∀ n, P15290844924370194603.a n = (A284090 n : ℚ)

end A284090

/-! ## A284090.P2884972093171542070

`or(A284023(A008619(2*n))/2, A000007(n))`
-/

namespace A284090.P2884972093171542070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A284023 (A008619 (2 * n)).toNat : ℚ) / 2)) (A000007 n)

end

end A284090.P2884972093171542070

namespace A284090

/-- `or(A284023(A008619(2*n))/2, A000007(n))` -/
def P2884972093171542070.Spec : Prop :=
  ∀ n, P2884972093171542070.a n = A284090 n

end A284090

/-! ## A284090.P12364051525436494333

`A284023(A008619(2*n))/2*A000034(2*n)`
-/

namespace A284090.P12364051525436494333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284023 (A008619 (2 * n)).toNat : ℚ) / 2 * (A000034 (2 * n) : ℚ)

end

end A284090.P12364051525436494333

namespace A284090

/-- `A284023(A008619(2*n))/2*A000034(2*n)` -/
def P12364051525436494333.Spec : Prop :=
  ∀ n, P12364051525436494333.a n = (A284090 n : ℚ)

end A284090

/-! ## A284090.P673816568588592239

`Δ[∑[A284023(n)]/2]`
-/

namespace A284090.P673816568588592239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284023 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284090.P673816568588592239

namespace A284090

/-- `Δ[∑[A284023(n)]/2]` -/
def P673816568588592239.Spec : Prop :=
  ∀ n, P673816568588592239.a n = (A284090 n : ℚ)

end A284090

/-!
# A284093: Expansion of Product_{k>=1} (1 + x^(8*k-1)).

The programs for A284093, there is no canonical definition to state claims against.
-/

/-! ## A284093.P5130963814312206568

`A360116(A299284(n+1))`
-/

namespace A284093.P5130963814312206568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 (A299284 (n + 1)).toNat

end

end A284093.P5130963814312206568

/-! ## A284093.P8356117628388954005

`A281244(floor(log2(A340816(n+1))))`
-/

namespace A284093.P8356117628388954005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281244 (Nat.log 2 (A340816 (n + 1)).toNat)

end

end A284093.P8356117628388954005

/-! ## A284093.P17291400266295891141

`A219180(gcd(A270831(n+4), A373385(2*(n+1))))`
-/

namespace A284093.P17291400266295891141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (Int.gcd (A270831 (n + 4)) (A373385 (2 * (n + 1))))

end

end A284093.P17291400266295891141

/-! ## A284093.P10912569240139529842

`and(A005171(A056861(n+2)), A183370(n+1))`
-/

namespace A284093.P10912569240139529842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005171 (A056861 (n + 2)).toNat) (A183370 (n + 1))

end

end A284093.P10912569240139529842

/-! ## A284093.P17404432775476110338

`A003982(A153176(n)*A246631(3*n+2))`
-/

namespace A284093.P17404432775476110338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A153176 n * A246631 (3 * n + 2)).toNat

end

end A284093.P17404432775476110338

/-!
# A284094: Indices k such that scalar product (p,q,r).(s,t,u) = p*s+q*t+r*u is prime, where (p,q,r,s,t,u) are 6 consecutive primes starting with p=prime(k).

The programs for A284094, there is no canonical definition to state claims against.
-/

/-! ## A284094.P14996620607975480958

`eq[A131964(n), A245718(n+3)]`
-/

namespace A284094.P14996620607975480958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245718 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284094.P14996620607975480958

/-!
# A284096: a(n) is the nearest integer to prime(n)*exp(prime(n)).

The programs for A284096, there is no canonical definition to state claims against.
-/

/-! ## A284096.P8907425953474880261

`round(exp(p?[(-1)^n+n-3])*p?[(-1)^n+n-3])`
-/

namespace A284096.P8907425953474880261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℝ))

end

end A284096.P8907425953474880261

/-! ## A284096.P11851633144741622835

`A058748(A000040(n+1))`
-/

namespace A284096.P11851633144741622835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058748 (A000040 (n + 1)).toNat

end

end A284096.P11851633144741622835

/-! ## A284096.P11808538401295775166

`A058748(A030291(n+1))`
-/

namespace A284096.P11808538401295775166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058748 (A030291 (n + 1)).toNat

end

end A284096.P11808538401295775166

/-! ## A284096.P1585674426841641026

`A058748(A030475(n+1))`
-/

namespace A284096.P1585674426841641026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058748 (A030475 (n + 1)).toNat

end

end A284096.P1585674426841641026

/-! ## A284096.P7331918930454863743

`A058748(A038614(n+1))`
-/

namespace A284096.P7331918930454863743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058748 (A038614 (n + 1)).toNat

end

end A284096.P7331918930454863743

/-!
# A284097: a(n) = Sum_{d|n, d == 1 (mod 5)} d.

The programs for A284097, the canonical program `A284097.P4703554069463701905` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284097 has offset 1).

The definition of A284097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284097.P4703554069463701905

`∑{d}[n+1, #*A079998(#-1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284097

/-- `∑{d}[n+1, #*A079998(#-1)]` -/
def P4703554069463701905.Spec : Prop :=
  ∀ n, P4703554069463701905.a n = A284097 (n + 1)

theorem P4703554069463701905.correct : P4703554069463701905.Spec := by
  intro n
  simp only [A284097, Nat.add_sub_cancel]

end A284097

/-! ## A284097.P3092483254812006242

`A284150(n+1)-A284103(n+1)`
-/

namespace A284097.P3092483254812006242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - A284103 (n + 1)

end

end A284097.P3092483254812006242

namespace A284097

/-- `A284150(n+1)-A284103(n+1)` -/
def P3092483254812006242.Spec : Prop :=
  ∀ n, P3092483254812006242.a n = A284097 (n + 1)

theorem P3092483254812006242.correct : P3092483254812006242.Spec := by
  intro n
  simp only [A284097, Nat.add_sub_cancel, A284097.P3092483254812006242.a, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A079998, A079998.P5984370107414098605.a, A284103, A284103.P11048966256680687602.a, A284150, A284150.P13402515358706383174.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A183865, A183865.P2342002431835983898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284097

/-! ## A284097.P17942801463925729494

`A109091(n+1)+A284152(n+1)-A284103(n+1)`
-/

namespace A284097.P17942801463925729494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (n + 1) + (A284152 (n + 1) - A284103 (n + 1))

end

end A284097.P17942801463925729494

namespace A284097

/-- `A109091(n+1)+A284152(n+1)-A284103(n+1)` -/
def P17942801463925729494.Spec : Prop :=
  ∀ n, P17942801463925729494.a n = A284097 (n + 1)

theorem P17942801463925729494.correct : P17942801463925729494.Spec := by
  intro n
  simp only [A284097, Nat.add_sub_cancel, A284097.P17942801463925729494.a, A284097.P4703554069463701905.f1, A284097.P4703554069463701905.a, A079998, A079998.P5984370107414098605.a, A109091, A109091.P7060246415763713748.a, A284103, A284103.P11048966256680687602.a, A284152, A284152.P5316867727396450920.a, A116073, A116073.P184077794381179264.f1, A116073.P184077794381179264.a, A284280, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A284281, A284281.P9191018554184866651.a, A284361, A284361.P16555063331181266176.f1, A284361.P16555063331181266176.a, A047412, A047412.P4762915060399373107.a, A183865, A183865.P2342002431835983898.a, A284150, A284150.P13402515358706383174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284097

/-! ## A284097.P17470166232518203361

`∑{d}[n+1, #*val(A028387(#), 5)]`
-/

namespace A284097.P17470166232518203361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * SequenceMachineLib.valuation (A028387 d).toNat 5

end

end A284097.P17470166232518203361

namespace A284097

/-- `∑{d}[n+1, #*val(A028387(#), 5)]` -/
def P17470166232518203361.Spec : Prop :=
  ∀ n, (P17470166232518203361.a n : ℤ) = A284097 (n + 1)

end A284097

/-! ## A284097.P2219259395889479008

`∑{d}[n+1, #*and(1, A047412(#+1))]`
-/

namespace A284097.P2219259395889479008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A047412 (d + 1))

end

end A284097.P2219259395889479008

namespace A284097

/-- `∑{d}[n+1, #*and(1, A047412(#+1))]` -/
def P2219259395889479008.Spec : Prop :=
  ∀ n, P2219259395889479008.a n = A284097 (n + 1)

end A284097

/-!
# A284098: a(n) = Sum_{d|n, d == 1 (mod 6)} d.

The programs for A284098, the canonical program `A284098.P14941002019999752586` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284098 has offset 1).

The definition of A284098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284098.P14941002019999752586

`∑{d}[n+1, #*A079979(#-1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284098

/-- `∑{d}[n+1, #*A079979(#-1)]` -/
def P14941002019999752586.Spec : Prop :=
  ∀ n, P14941002019999752586.a n = A284098 (n + 1)

theorem P14941002019999752586.correct : P14941002019999752586.Spec := by
  intro n
  simp only [A284098, Nat.add_sub_cancel]

end A284098

/-! ## A284098.P13019687488892507452

`A078181(A000265(n+1))`
-/

namespace A284098.P13019687488892507452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A000265 (n + 1)).toNat

end

end A284098.P13019687488892507452

namespace A284098

/-- `A078181(A000265(n+1))` -/
def P13019687488892507452.Spec : Prop :=
  ∀ n, P13019687488892507452.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P17433195035915436372

`A078181(A065330(n+1))`
-/

namespace A284098.P17433195035915436372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A065330 (n + 1)).toNat

end

end A284098.P17433195035915436372

namespace A284098

/-- `A078181(A065330(n+1))` -/
def P17433195035915436372.Spec : Prop :=
  ∀ n, P17433195035915436372.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P9225103112835212020

`A078181(A153733(n)+1)`
-/

namespace A284098.P9225103112835212020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A153733 n + 1).toNat

end

end A284098.P9225103112835212020

namespace A284098

/-- `A078181(A153733(n)+1)` -/
def P9225103112835212020.Spec : Prop :=
  ∀ n, P9225103112835212020.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P16360372092266708836

`A078181(or(1, A153733(n)))`
-/

namespace A284098.P16360372092266708836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (Int.lor 1 (A153733 n)).toNat

end

end A284098.P16360372092266708836

namespace A284098

/-- `A078181(or(1, A153733(n)))` -/
def P16360372092266708836.Spec : Prop :=
  ∀ n, P16360372092266708836.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P16066640615552042816

`A078181(xor(1, A153733(n)))`
-/

namespace A284098.P16066640615552042816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (Int.xor 1 (A153733 n)).toNat

end

end A284098.P16066640615552042816

namespace A284098

/-- `A078181(xor(1, A153733(n)))` -/
def P16066640615552042816.Spec : Prop :=
  ∀ n, P16066640615552042816.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P8915581313572089578

`A186099(n+1)-A284104(n+1)`
-/

namespace A284098.P8915581313572089578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186099 (n + 1) - A284104 (n + 1)

end

end A284098.P8915581313572089578

namespace A284098

/-- `A186099(n+1)-A284104(n+1)` -/
def P8915581313572089578.Spec : Prop :=
  ∀ n, P8915581313572089578.a n = A284098 (n + 1)

theorem P8915581313572089578.correct : P8915581313572089578.Spec := by
  intro n
  simp only [A284098, Nat.add_sub_cancel, A284098.P8915581313572089578.a, A284098.P14941002019999752586.f1, A284098.P14941002019999752586.a, A079979, A079979.P15116196827675478457.a, A186099, A186099.P16380765776800973491.a, A284104, A284104.P13760200148477607299.a, A078182, A078182.P257615860530487597.a, A046913, A046913.P8155784351199006177.a, A078181, A078181.P9139865131225983786.f1, A078181.P9139865131225983786.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284098

/-! ## A284098.P13298135353129680358

`A078181(A306546(2*(n+1)))`
-/

namespace A284098.P13298135353129680358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A306546 (2 * (n + 1))).toNat

end

end A284098.P13298135353129680358

namespace A284098

/-- `A078181(A306546(2*(n+1)))` -/
def P13298135353129680358.Spec : Prop :=
  ∀ n, P13298135353129680358.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P7985086444710712804

`A078181(A166466(n+1))`
-/

namespace A284098.P7985086444710712804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A166466 (n + 1)).toNat

end

end A284098.P7985086444710712804

namespace A284098

/-- `A078181(A166466(n+1))` -/
def P7985086444710712804.Spec : Prop :=
  ∀ n, P7985086444710712804.a n = A284098 (n + 1)

end A284098

/-! ## A284098.P4109880052083029034

`A078181(A394497(n+1))`
-/

namespace A284098.P4109880052083029034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A394497 (n + 1)).toNat

end

end A284098.P4109880052083029034

namespace A284098

/-- `A078181(A394497(n+1))` -/
def P4109880052083029034.Spec : Prop :=
  ∀ n, P4109880052083029034.a n = A284098 (n + 1)

end A284098

/-!
# A284099: a(n) = Sum_{d|n, d == 1 (mod 7)} d.

The programs for A284099, the canonical program `A284099.P914746867242275467` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284099 has offset 1).

The definition of A284099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284099.P914746867242275467

`∑{d}[n+1, #*A082784(#-1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284099

/-- `∑{d}[n+1, #*A082784(#-1)]` -/
def P914746867242275467.Spec : Prop :=
  ∀ n, P914746867242275467.a n = A284099 (n + 1)

theorem P914746867242275467.correct : P914746867242275467.Spec := by
  intro n
  simp only [A284099, Nat.add_sub_cancel]

end A284099

/-! ## A284099.P15377558709089774779

`A284151(n+1)-A284105(n+1)`
-/

namespace A284099.P15377558709089774779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284151 (n + 1) - A284105 (n + 1)

end

end A284099.P15377558709089774779

namespace A284099

/-- `A284151(n+1)-A284105(n+1)` -/
def P15377558709089774779.Spec : Prop :=
  ∀ n, P15377558709089774779.a n = A284099 (n + 1)

theorem P15377558709089774779.correct : P15377558709089774779.Spec := by
  intro n
  simp only [A284099, Nat.add_sub_cancel, A284099.P15377558709089774779.a, A284099.P914746867242275467.f1, A284099.P914746867242275467.a, A082784, A082784.P13357688651719004354.a, A284105, A284105.P4018641519786266915.f1, A284105.P4018641519786266915.a, A284151, A284151.P14768707365356727264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A284099

/-! ## A284099.P12144152774033754465

`A284363(A242603(n+1))-A284105(n+1)`
-/

namespace A284099.P12144152774033754465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284363 (A242603 (n + 1)).toNat - A284105 (n + 1)

end

end A284099.P12144152774033754465

namespace A284099

/-- `A284363(A242603(n+1))-A284105(n+1)` -/
def P12144152774033754465.Spec : Prop :=
  ∀ n, P12144152774033754465.a n = A284099 (n + 1)

end A284099

