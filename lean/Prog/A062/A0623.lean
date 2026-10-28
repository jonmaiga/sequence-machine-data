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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A062300: a(n) = floor(cosec(Pi/(n+1))).

The programs for A062300, the canonical program `A062300.P7548026834070485431` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062300 has offset 1).

The definition of A062300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062300.P7548026834070485431

`floor(1/sin(π/(n+2)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062300

/-- `floor(1/sin(π/(n+2)))` -/
def P7548026834070485431.Spec : Prop :=
  ∀ n, P7548026834070485431.a n = A062300 (n + 1)

theorem P7548026834070485431.correct : P7548026834070485431.Spec := by
  intro n
  simp only [A062300, Nat.add_sub_cancel]

end A062300

/-! ## A062300.P16997868610952834275

`floor((root(4, n+1)+n+1)/π)`
-/

namespace A062300.P16997868610952834275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℝ) ^ (1 / (n + 1 : ℝ)) + (n + 1 : ℝ)) / Real.pi⌋

end

end A062300.P16997868610952834275

namespace A062300

/-- `floor((root(4, n+1)+n+1)/π)` -/
def P16997868610952834275.Spec : Prop :=
  ∀ n, P16997868610952834275.a n = A062300 (n + 1)

end A062300

/-! ## A062300.P14976715270318432301

`A067099(A004276(n)+9)`
-/

namespace A062300.P14976715270318432301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (A004276 n + 9).toNat

end

end A062300.P14976715270318432301

namespace A062300

/-- `A067099(A004276(n)+9)` -/
def P14976715270318432301.Spec : Prop :=
  ∀ n, P14976715270318432301.a n = A062300 (n + 1)

end A062300

/-! ## A062300.P17527196718874739200

`A000196(∑[A331904(n+1)]+1)`
-/

namespace A062300.P17527196718874739200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A062300.P17527196718874739200

namespace A062300

/-- `A000196(∑[A331904(n+1)]+1)` -/
def P17527196718874739200.Spec : Prop :=
  ∀ n, P17527196718874739200.a n = A062300 (n + 1)

end A062300

/-! ## A062300.P16584565276493128096

`A067099(2*(n+2))+A010054(A001694(2*n+1))`
-/

namespace A062300.P16584565276493128096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (2 * (n + 2)) + A010054 (A001694 (2 * n + 1)).toNat

end

end A062300.P16584565276493128096

namespace A062300

/-- `A067099(2*(n+2))+A010054(A001694(2*n+1))` -/
def P16584565276493128096.Spec : Prop :=
  ∀ n, P16584565276493128096.a n = A062300 (n + 1)

end A062300

/-! ## A062300.P5261521369988533093

`A067099(A096603(n+1)+5)`
-/

namespace A062300.P5261521369988533093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (A096603 (n + 1) + 5).toNat

end

end A062300.P5261521369988533093

namespace A062300

/-- `A067099(A096603(n+1)+5)` -/
def P5261521369988533093.Spec : Prop :=
  ∀ n, P5261521369988533093.a n = A062300 (n + 1)

end A062300

/-!
# A062301: Number of ways writing n-th prime as a sum of two primes.

The programs for A062301, the canonical program `A062301.P7583159109600131455` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062301 has offset 1).

The definition of A062301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062301.P3553317074782040163

`char[A029707(n+1)]`
-/

namespace A062301.P3553317074782040163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A062301.P3553317074782040163

namespace A062301

/-- `char[A029707(n+1)]` -/
def P3553317074782040163.Spec : Prop :=
  ∀ n, (P3553317074782040163.a n : ℤ) = A062301 (n + 1)

end A062301

/-! ## A062301.P12882671007023271813

`char[A155752(n+1)+1]`
-/

namespace A062301.P12882671007023271813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A062301.P12882671007023271813

namespace A062301

/-- `char[A155752(n+1)+1]` -/
def P12882671007023271813.Spec : Prop :=
  ∀ n, (P12882671007023271813.a n : ℤ) = A062301 (n + 1)

end A062301

/-! ## A062301.P6760895623365794704

`char[A107770(n+1)-1]`
-/

namespace A062301.P6760895623365794704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A062301.P6760895623365794704

namespace A062301

/-- `char[A107770(n+1)-1]` -/
def P6760895623365794704.Spec : Prop :=
  ∀ n, (P6760895623365794704.a n : ℤ) = A062301 (n + 1)

end A062301

/-! ## A062301.P5665907295001843418

`(n-A062302(n+1))/2`
-/

namespace A062301.P5665907295001843418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A062302 (n + 1) : ℚ) / 2

end

end A062301.P5665907295001843418

namespace A062301

/-- `(n-A062302(n+1))/2` -/
def P5665907295001843418.Spec : Prop :=
  ∀ n, P5665907295001843418.a n = (A062301 (n + 1) : ℚ)

end A062301

/-! ## A062301.P3369153621629317658

`C(n, A224715(n+1)+2)`
-/

namespace A062301.P3369153621629317658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A224715 (n + 1) + 2).toNat

end

end A062301.P3369153621629317658

namespace A062301

/-- `C(n, A224715(n+1)+2)` -/
def P3369153621629317658.Spec : Prop :=
  ∀ n, (P3369153621629317658.a n : ℤ) = A062301 (n + 1)

end A062301

/-! ## A062301.P12634188344151668919

`char[∑[A242767(n+2)]+1]`
-/

namespace A062301.P12634188344151668919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A062301.P12634188344151668919

namespace A062301

/-- `char[∑[A242767(n+2)]+1]` -/
def P12634188344151668919.Spec : Prop :=
  ∀ n, (P12634188344151668919.a n : ℤ) = A062301 (n + 1)

end A062301

/-! ## A062301.P7583159109600131455

`A010051(A075526(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062301

/-- `A010051(A075526(n))` -/
def P7583159109600131455.Spec : Prop :=
  ∀ n, P7583159109600131455.a n = A062301 (n + 1)

theorem P7583159109600131455.correct : P7583159109600131455.Spec := by
  intro n
  simp only [A062301, Nat.add_sub_cancel]

end A062301

/-! ## A062301.P16380989968468310451

`A100821(A028310(n))`
-/

namespace A062301.P16380989968468310451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100821 (A028310 n).toNat

end

end A062301.P16380989968468310451

namespace A062301

/-- `A100821(A028310(n))` -/
def P16380989968468310451.Spec : Prop :=
  ∀ n, P16380989968468310451.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P9503488258376755522

`A000007((2-A075526(n))²)`
-/

namespace A062301.P9503488258376755522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((2 - A075526 n) ^ 2).toNat

end

end A062301.P9503488258376755522

namespace A062301

/-- `A000007((2-A075526(n))²)` -/
def P9503488258376755522.Spec : Prop :=
  ∀ n, P9503488258376755522.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P15396700334953597052

`A049084(A230846(n+1)-1)`
-/

namespace A062301.P15396700334953597052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A230846 (n + 1) - 1).toNat

end

end A062301.P15396700334953597052

namespace A062301

/-- `A049084(A230846(n+1)-1)` -/
def P15396700334953597052.Spec : Prop :=
  ∀ n, P15396700334953597052.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P2620480621124228558

`A062305(n-A062302(n+1))`
-/

namespace A062301.P2620480621124228558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062305 ((n : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P2620480621124228558

namespace A062301

/-- `A062305(n-A062302(n+1))` -/
def P2620480621124228558.Spec : Prop :=
  ∀ n, P2620480621124228558.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P9431720519981447632

`A062305(n-A224715(n+1))`
-/

namespace A062301.P9431720519981447632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062305 ((n : ℤ) - A224715 (n + 1)).toNat

end

end A062301.P9431720519981447632

namespace A062301

/-- `A062305(n-A224715(n+1))` -/
def P9431720519981447632.Spec : Prop :=
  ∀ n, P9431720519981447632.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P12134244592714558589

`A001065(n+1-A062302(n+1))`
-/

namespace A062301.P12134244592714558589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ((n + 1 : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P12134244592714558589

namespace A062301

/-- `A001065(n+1-A062302(n+1))` -/
def P12134244592714558589.Spec : Prop :=
  ∀ n, P12134244592714558589.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P17823726805477873400

`A002372(n+1-A062302(n+1))`
-/

namespace A062301.P17823726805477873400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 ((n + 1 : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P17823726805477873400

namespace A062301

/-- `A002372(n+1-A062302(n+1))` -/
def P17823726805477873400.Spec : Prop :=
  ∀ n, P17823726805477873400.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P18097663864502175640

`A062602(n+1-A062302(n+1))`
-/

namespace A062301.P18097663864502175640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 ((n + 1 : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P18097663864502175640

namespace A062301

/-- `A062602(n+1-A062302(n+1))` -/
def P18097663864502175640.Spec : Prop :=
  ∀ n, P18097663864502175640.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P9908439836746697237

`A224713(n+1-A062302(n+1))`
-/

namespace A062301.P9908439836746697237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224713 ((n + 1 : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P9908439836746697237

namespace A062301

/-- `A224713(n+1-A062302(n+1))` -/
def P9908439836746697237.Spec : Prop :=
  ∀ n, P9908439836746697237.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P1401709674556168398

`A062602(n+1-A224715(n+1))`
-/

namespace A062301.P1401709674556168398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 ((n + 1 : ℤ) - A224715 (n + 1)).toNat

end

end A062301.P1401709674556168398

namespace A062301

/-- `A062602(n+1-A224715(n+1))` -/
def P1401709674556168398.Spec : Prop :=
  ∀ n, P1401709674556168398.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P15052374568966741425

`A295629(n+1-A062302(n+1))`
-/

namespace A062301.P15052374568966741425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 ((n + 1 : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P15052374568966741425

namespace A062301

/-- `A295629(n+1-A062302(n+1))` -/
def P15052374568966741425.Spec : Prop :=
  ∀ n, P15052374568966741425.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P10902630263371933447

`A224713(n+1-A224715(n+1))`
-/

namespace A062301.P10902630263371933447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224713 ((n + 1 : ℤ) - A224715 (n + 1)).toNat

end

end A062301.P10902630263371933447

namespace A062301

/-- `A224713(n+1-A224715(n+1))` -/
def P10902630263371933447.Spec : Prop :=
  ∀ n, P10902630263371933447.a n = A062301 (n + 1)

end A062301

/-! ## A062301.P5168630470513592755

`A048138(n+2-A062302(n+1))`
-/

namespace A062301.P5168630470513592755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 ((n + 2 : ℤ) - A062302 (n + 1)).toNat

end

end A062301.P5168630470513592755

namespace A062301

/-- `A048138(n+2-A062302(n+1))` -/
def P5168630470513592755.Spec : Prop :=
  ∀ n, P5168630470513592755.a n = A062301 (n + 1)

end A062301

/-!
# A062302: Number of ways writing n-th prime as a sum of a prime and a nonprime.

The programs for A062302, the canonical program `A062302.P17483310731157599861` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062302 has offset 1).

The definition of A062302 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062302.P17483310731157599861

`A062602(A000040(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062302

/-- `A062602(A000040(n+1))` -/
def P17483310731157599861.Spec : Prop :=
  ∀ n, P17483310731157599861.a n = A062302 (n + 1)

theorem P17483310731157599861.correct : P17483310731157599861.Spec := by
  intro n
  simp only [A062302, Nat.add_sub_cancel]

end A062302

/-! ## A062302.P5418774792188773195

`A224715(n+1)+char[1]`
-/

namespace A062302.P5418774792188773195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224715 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A062302.P5418774792188773195

namespace A062302

/-- `A224715(n+1)+char[1]` -/
def P5418774792188773195.Spec : Prop :=
  ∀ n, P5418774792188773195.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P6361743643508282382

`n-2*A062301(n+1)`
-/

namespace A062302.P6361743643508282382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A062301 (n + 1)

end

end A062302.P6361743643508282382

namespace A062302

/-- `n-2*A062301(n+1)` -/
def P6361743643508282382.Spec : Prop :=
  ∀ n, P6361743643508282382.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P1033470499865240668

`n-2*char[A029707(n+1)]`
-/

namespace A062302.P1033470499865240668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A062302.P1033470499865240668

namespace A062302

/-- `n-2*char[A029707(n+1)]` -/
def P1033470499865240668.Spec : Prop :=
  ∀ n, P1033470499865240668.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P1361897980969505056

`gcd(A067998(n), A224715(n+1))`
-/

namespace A062302.P1361897980969505056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067998 n) (A224715 (n + 1))

end

end A062302.P1361897980969505056

namespace A062302

/-- `gcd(A067998(n), A224715(n+1))` -/
def P1361897980969505056.Spec : Prop :=
  ∀ n, (P1361897980969505056.a n : ℤ) = A062302 (n + 1)

end A062302

/-! ## A062302.P489330042786964627

`xor(A063524(n), A224715(n+1))`
-/

namespace A062302.P489330042786964627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A224715 (n + 1))

end

end A062302.P489330042786964627

namespace A062302

/-- `xor(A063524(n), A224715(n+1))` -/
def P489330042786964627.Spec : Prop :=
  ∀ n, P489330042786964627.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P9499412297383442715

`A062602(p?[comp[n²]])`
-/

namespace A062302.P9499412297383442715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A062302.P9499412297383442715

namespace A062302

/-- `A062602(p?[comp[n²]])` -/
def P9499412297383442715.Spec : Prop :=
  ∀ n, P9499412297383442715.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P5583612014062873286

`A062602(A006005(n+1))`
-/

namespace A062302.P5583612014062873286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A006005 (n + 1)).toNat

end

end A062302.P5583612014062873286

namespace A062302

/-- `A062602(A006005(n+1))` -/
def P5583612014062873286.Spec : Prop :=
  ∀ n, P5583612014062873286.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P9675319880374889077

`A062602(A161847(n+1))`
-/

namespace A062302.P9675319880374889077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A161847 (n + 1)).toNat

end

end A062302.P9675319880374889077

namespace A062302

/-- `A062602(A161847(n+1))` -/
def P9675319880374889077.Spec : Prop :=
  ∀ n, P9675319880374889077.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P13932794031670020963

`A062602(A008578(n+2))`
-/

namespace A062302.P13932794031670020963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A008578 (n + 2)).toNat

end

end A062302.P13932794031670020963

namespace A062302

/-- `A062602(A008578(n+2))` -/
def P13932794031670020963.Spec : Prop :=
  ∀ n, P13932794031670020963.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P8897613039593350171

`A062602(A075643(n+2))`
-/

namespace A062302.P8897613039593350171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A075643 (n + 2)).toNat

end

end A062302.P8897613039593350171

namespace A062302

/-- `A062602(A075643(n+2))` -/
def P8897613039593350171.Spec : Prop :=
  ∀ n, P8897613039593350171.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P14426186314588564850

`A062602(A182986(n+2))`
-/

namespace A062302.P14426186314588564850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A182986 (n + 2)).toNat

end

end A062302.P14426186314588564850

namespace A062302

/-- `A062602(A182986(n+2))` -/
def P14426186314588564850.Spec : Prop :=
  ∀ n, P14426186314588564850.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P9497680091873114794

`A062602(record[A006530(n+2)])`
-/

namespace A062302.P9497680091873114794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062302.P9497680091873114794

namespace A062302

/-- `A062602(record[A006530(n+2)])` -/
def P9497680091873114794.Spec : Prop :=
  ∀ n, P9497680091873114794.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P18035600409685878983

`A062602(record[A014963(n+2)])`
-/

namespace A062302.P18035600409685878983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062302.P18035600409685878983

namespace A062302

/-- `A062602(record[A014963(n+2)])` -/
def P18035600409685878983.Spec : Prop :=
  ∀ n, P18035600409685878983.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P18178749445887907195

`A062602(record[A020639(n+2)])`
-/

namespace A062302.P18178749445887907195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062302.P18178749445887907195

namespace A062302

/-- `A062602(record[A020639(n+2)])` -/
def P18178749445887907195.Spec : Prop :=
  ∀ n, P18178749445887907195.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P5987111900689723849

`n-A073610(Δ[A007504(n)])`
-/

namespace A062302.P5987111900689723849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073610 (f1 (n + 1) - f1 n).toNat

end

end A062302.P5987111900689723849

namespace A062302

/-- `n-A073610(Δ[A007504(n)])` -/
def P5987111900689723849.Spec : Prop :=
  ∀ n, P5987111900689723849.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P16552418126378085893

`A062602(A006093(n+1)+1)`
-/

namespace A062302.P16552418126378085893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A006093 (n + 1) + 1).toNat

end

end A062302.P16552418126378085893

namespace A062302

/-- `A062602(A006093(n+1)+1)` -/
def P16552418126378085893.Spec : Prop :=
  ∀ n, P16552418126378085893.a n = A062302 (n + 1)

theorem P16552418126378085893.correct : P16552418126378085893.Spec := by
  intro n
  simp only [A062302, Nat.add_sub_cancel, A062302.P16552418126378085893.a, A062302.P17483310731157599861.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A062602, A062602.P15976741372333884415.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A295629, A295629.P18345784372025408051.a, A004526, A004526.P10084182425416171735.a, A005171, A005171.P15860856746370777121.a, A061358, A061358.P17459104721166670744.f1, A061358.P17459104721166670744.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062302

/-! ## A062302.P13186392261563246774

`A062602(A040976(n+1)+2)`
-/

namespace A062302.P13186392261563246774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A040976 (n + 1) + 2).toNat

end

end A062302.P13186392261563246774

namespace A062302

/-- `A062602(A040976(n+1)+2)` -/
def P13186392261563246774.Spec : Prop :=
  ∀ n, P13186392261563246774.a n = A062302 (n + 1)

theorem P13186392261563246774.correct : P13186392261563246774.Spec := by
  intro n
  simp only [A062302, Nat.add_sub_cancel, A062302.P13186392261563246774.a, A062302.P17483310731157599861.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A062602, A062602.P15976741372333884415.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A295629, A295629.P18345784372025408051.a, A004526, A004526.P10084182425416171735.a, A005171, A005171.P15860856746370777121.a, A061358, A061358.P17459104721166670744.f1, A061358.P17459104721166670744.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062302

/-! ## A062302.P6139970364431855328

`A062602(eq[2, Δ[A006218(n)]]+1)`
-/

namespace A062302.P6139970364431855328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062302.P6139970364431855328

namespace A062302

/-- `A062602(eq[2, Δ[A006218(n)]]+1)` -/
def P6139970364431855328.Spec : Prop :=
  ∀ n, P6139970364431855328.a n = A062302 (n + 1)

end A062302

/-! ## A062302.P14189120380465344223

`n-A073610(p?[A206074(n+1)])`
-/

namespace A062302.P14189120380465344223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062302.P14189120380465344223

namespace A062302

/-- `n-A073610(p?[A206074(n+1)])` -/
def P14189120380465344223.Spec : Prop :=
  ∀ n, P14189120380465344223.a n = A062302 (n + 1)

end A062302

/-!
# A062303: Number of ways writing the n-th prime as a sum of two nonprimes.

The programs for A062303, the canonical program `A062303.P15762188177189236385` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062303 has offset 1).

The definition of A062303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062303.P15762188177189236385

`A062610(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062303

/-- `A062610(A000040(n+1))` -/
def P15762188177189236385.Spec : Prop :=
  ∀ n, P15762188177189236385.a n = A062303 (n + 1)

theorem P15762188177189236385.correct : P15762188177189236385.Spec := by
  intro n
  simp only [A062303, Nat.add_sub_cancel]

end A062303

/-! ## A062303.P8388435865537530054

`A060576(n)+A024683(n+1)`
-/

namespace A062303.P8388435865537530054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A024683 (n + 1)

end

end A062303.P8388435865537530054

namespace A062303

/-- `A060576(n)+A024683(n+1)` -/
def P8388435865537530054.Spec : Prop :=
  ∀ n, P8388435865537530054.a n = A062303 (n + 1)

theorem P8388435865537530054.correct : P8388435865537530054.Spec := by
  intro n
  simp only [A062303, Nat.add_sub_cancel, A062303.P8388435865537530054.a, A062303.P15762188177189236385.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A024683, A024683.P12088844706529340304.a, A060576, A060576.P1912365932169338834.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062303

/-! ## A062303.P4676619114748855287

`A062610(Δ[A007504(n)])`
-/

namespace A062303.P4676619114748855287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (f1 (n + 1) - f1 n).toNat

end

end A062303.P4676619114748855287

namespace A062303

/-- `A062610(Δ[A007504(n)])` -/
def P4676619114748855287.Spec : Prop :=
  ∀ n, P4676619114748855287.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P3546663394485348774

`A171691(A006005(n+1))`
-/

namespace A062303.P3546663394485348774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (A006005 (n + 1)).toNat

end

end A062303.P3546663394485348774

namespace A062303

/-- `A171691(A006005(n+1))` -/
def P3546663394485348774.Spec : Prop :=
  ∀ n, P3546663394485348774.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P14541734940201236292

`A171691(A161847(n+1))`
-/

namespace A062303.P14541734940201236292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (A161847 (n + 1)).toNat

end

end A062303.P14541734940201236292

namespace A062303

/-- `A171691(A161847(n+1))` -/
def P14541734940201236292.Spec : Prop :=
  ∀ n, P14541734940201236292.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P9666242182667855713

`A171691(A318871(n+1))`
-/

namespace A062303.P9666242182667855713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (A318871 (n + 1)).toNat

end

end A062303.P9666242182667855713

namespace A062303

/-- `A171691(A318871(n+1))` -/
def P9666242182667855713.Spec : Prop :=
  ∀ n, P9666242182667855713.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P4867859694582044459

`A062610(A008578(n+2))`
-/

namespace A062303.P4867859694582044459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A008578 (n + 2)).toNat

end

end A062303.P4867859694582044459

namespace A062303

/-- `A062610(A008578(n+2))` -/
def P4867859694582044459.Spec : Prop :=
  ∀ n, P4867859694582044459.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P2714901619648469095

`A062610(A161428(n+2))`
-/

namespace A062303.P2714901619648469095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A161428 (n + 2)).toNat

end

end A062303.P2714901619648469095

namespace A062303

/-- `A062610(A161428(n+2))` -/
def P2714901619648469095.Spec : Prop :=
  ∀ n, P2714901619648469095.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P4738659112232372105

`A062610(A182986(n+2))`
-/

namespace A062303.P4738659112232372105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A182986 (n + 2)).toNat

end

end A062303.P4738659112232372105

namespace A062303

/-- `A062610(A182986(n+2))` -/
def P4738659112232372105.Spec : Prop :=
  ∀ n, P4738659112232372105.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P10692228597575300825

`A171691(A075643(n+2))`
-/

namespace A062303.P10692228597575300825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (A075643 (n + 2)).toNat

end

end A062303.P10692228597575300825

namespace A062303

/-- `A171691(A075643(n+2))` -/
def P10692228597575300825.Spec : Prop :=
  ∀ n, P10692228597575300825.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P15437956717454976750

`A062610(eq[n, A062584(n)])`
-/

namespace A062303.P15437956717454976750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062303.P15437956717454976750

namespace A062303

/-- `A062610(eq[n, A062584(n)])` -/
def P15437956717454976750.Spec : Prop :=
  ∀ n, P15437956717454976750.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P3122896261152475889

`A062610(record[A006530(n+2)])`
-/

namespace A062303.P3122896261152475889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062303.P3122896261152475889

namespace A062303

/-- `A062610(record[A006530(n+2)])` -/
def P3122896261152475889.Spec : Prop :=
  ∀ n, P3122896261152475889.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P9158051123689129363

`A062610(record[A020639(n+2)])`
-/

namespace A062303.P9158051123689129363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062303.P9158051123689129363

namespace A062303

/-- `A062610(record[A020639(n+2)])` -/
def P9158051123689129363.Spec : Prop :=
  ∀ n, P9158051123689129363.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P14676993048181998874

`A171691(record[A006530(n+2)])`
-/

namespace A062303.P14676993048181998874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062303.P14676993048181998874

namespace A062303

/-- `A171691(record[A006530(n+2)])` -/
def P14676993048181998874.Spec : Prop :=
  ∀ n, P14676993048181998874.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P17868360575213296526

`A171691(record[A020639(n+2)])`
-/

namespace A062303.P17868360575213296526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062303.P17868360575213296526

namespace A062303

/-- `A171691(record[A020639(n+2)])` -/
def P17868360575213296526.Spec : Prop :=
  ∀ n, P17868360575213296526.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P10048518341463584589

`A062610(lt[A062584(n), A062553(n+1)])`
-/

namespace A062303.P10048518341463584589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062303.P10048518341463584589

namespace A062303

/-- `A062610(lt[A062584(n), A062553(n+1)])` -/
def P10048518341463584589.Spec : Prop :=
  ∀ n, P10048518341463584589.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P6246453569021788090

`A295629(A000040(n+1))-A062302(n+1)`
-/

namespace A062303.P6246453569021788090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (A000040 (n + 1)).toNat - A062302 (n + 1)

end

end A062303.P6246453569021788090

namespace A062303

/-- `A295629(A000040(n+1))-A062302(n+1)` -/
def P6246453569021788090.Spec : Prop :=
  ∀ n, P6246453569021788090.a n = A062303 (n + 1)

theorem P6246453569021788090.correct : P6246453569021788090.Spec := by
  intro n
  simp only [A062303, Nat.add_sub_cancel, A062303.P6246453569021788090.a, A062303.P15762188177189236385.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062302, A062302.P17483310731157599861.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A295629, A295629.P18345784372025408051.a, A004526, A004526.P10084182425416171735.a, A005171, A005171.P15860856746370777121.a, A061358, A061358.P17459104721166670744.f1, A061358.P17459104721166670744.a, A062602, A062602.P15976741372333884415.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062303

/-! ## A062303.P1627007171519933318

`A062610(lt[A224712(n+1), A062602(n+1)])`
-/

namespace A062303.P1627007171519933318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062303.P1627007171519933318

namespace A062303

/-- `A062610(lt[A224712(n+1), A062602(n+1)])` -/
def P1627007171519933318.Spec : Prop :=
  ∀ n, P1627007171519933318.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P3725439605147121171

`A185279(A162786(n+2))`
-/

namespace A062303.P3725439605147121171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (A162786 (n + 2)).toNat

end

end A062303.P3725439605147121171

namespace A062303

/-- `A185279(A162786(n+2))` -/
def P3725439605147121171.Spec : Prop :=
  ∀ n, P3725439605147121171.a n = A062303 (n + 1)

end A062303

/-! ## A062303.P14219729941030472553

`A185279(record[A006530(n+2)])`
-/

namespace A062303.P14219729941030472553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062303.P14219729941030472553

namespace A062303

/-- `A185279(record[A006530(n+2)])` -/
def P14219729941030472553.Spec : Prop :=
  ∀ n, P14219729941030472553.a n = A062303 (n + 1)

end A062303

/-!
# A062304: Primes of the form k - mu(k).

The programs for A062304, the canonical program `A062304.P6219002823745452194` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062304 has offset 1).

The definition of A062304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062304.P11937766499815712655

`∪[A078330(n+1), A089523(n+1)]`
-/

namespace A062304.P11937766499815712655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062304.P11937766499815712655

namespace A062304

/-- `∪[A078330(n+1), A089523(n+1)]` -/
def P11937766499815712655.Spec : Prop :=
  ∀ n, (P11937766499815712655.a n : ℤ) = A062304 (n + 1)

end A062304

/-! ## A062304.P6219002823745452194

`p?[4*n+2+A008683(2*n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062304

/-- `p?[4*n+2+A008683(2*n+1)]` -/
def P6219002823745452194.Spec : Prop :=
  ∀ n, P6219002823745452194.a n = A062304 (n + 1)

theorem P6219002823745452194.correct : P6219002823745452194.Spec := by
  intro n
  simp only [A062304, Nat.add_sub_cancel]

end A062304

/-! ## A062304.P12085538383352454878

`p?[1-A008683(n+1)+n]`
-/

namespace A062304.P12085538383352454878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P12085538383352454878

namespace A062304

/-- `p?[1-A008683(n+1)+n]` -/
def P12085538383352454878.Spec : Prop :=
  ∀ n, P12085538383352454878.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P13934054965496127031

`record[A020639(n+2-A008683(n+2))]`
-/

namespace A062304.P13934054965496127031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) - A008683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062304.P13934054965496127031

namespace A062304

/-- `record[A020639(n+2-A008683(n+2))]` -/
def P13934054965496127031.Spec : Prop :=
  ∀ n, P13934054965496127031.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P13565299107327029337

`A063452(n+1)-A008683(A063452(n+1))`
-/

namespace A062304.P13565299107327029337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063452 (n + 1) - A008683 (A063452 (n + 1)).toNat

end

end A062304.P13565299107327029337

namespace A062304

/-- `A063452(n+1)-A008683(A063452(n+1))` -/
def P13565299107327029337.Spec : Prop :=
  ∀ n, P13565299107327029337.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P10740470942602869114

`record[A006530(A007913(2*(n+1))-A008683(2*(n+1)))]`
-/

namespace A062304.P10740470942602869114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007913 (2 * (n + 1)) - A008683 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062304.P10740470942602869114

namespace A062304

/-- `record[A006530(A007913(2*(n+1))-A008683(2*(n+1)))]` -/
def P10740470942602869114.Spec : Prop :=
  ∀ n, P10740470942602869114.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P14736009966105978214

`p?[abs(1-A055615(n+1))]`
-/

namespace A062304.P14736009966105978214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A055615 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P14736009966105978214

namespace A062304

/-- `p?[abs(1-A055615(n+1))]` -/
def P14736009966105978214.Spec : Prop :=
  ∀ n, P14736009966105978214.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P12491863311890321213

`p?[A008683(n+1)+A157142(n)+1]`
-/

namespace A062304.P12491863311890321213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A157142 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P12491863311890321213

namespace A062304

/-- `p?[A008683(n+1)+A157142(n)+1]` -/
def P12491863311890321213.Spec : Prop :=
  ∀ n, P12491863311890321213.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P6287592467763895661

`p?[A157658(n+1)+1+n]`
-/

namespace A062304.P6287592467763895661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P6287592467763895661

namespace A062304

/-- `p?[A157658(n+1)+1+n]` -/
def P6287592467763895661.Spec : Prop :=
  ∀ n, P6287592467763895661.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P9130488544286107700

`p?[2-A007423(n+1)+n]`
-/

namespace A062304.P9130488544286107700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007423 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P9130488544286107700

namespace A062304

/-- `p?[2-A007423(n+1)+n]` -/
def P9130488544286107700.Spec : Prop :=
  ∀ n, P9130488544286107700.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P15480564627354837453

`p?[n+1-A162512(n+1)%2]`
-/

namespace A062304.P15480564627354837453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A162512 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P15480564627354837453

namespace A062304

/-- `p?[n+1-A162512(n+1)%2]` -/
def P15480564627354837453.Spec : Prop :=
  ∀ n, P15480564627354837453.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P6100782342171208167

`p?[abs(n-A008683(A028310(n)))]`
-/

namespace A062304.P6100782342171208167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A008683 (A028310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062304.P6100782342171208167

namespace A062304

/-- `p?[abs(n-A008683(A028310(n)))]` -/
def P6100782342171208167.Spec : Prop :=
  ∀ n, P6100782342171208167.a n = A062304 (n + 1)

end A062304

/-! ## A062304.P12121825020597546839

`record[A014963(n+2-A008683(n+2))]`
-/

namespace A062304.P12121825020597546839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 2 : ℤ) - A008683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062304.P12121825020597546839

namespace A062304

/-- `record[A014963(n+2-A008683(n+2))]` -/
def P12121825020597546839.Spec : Prop :=
  ∀ n, P12121825020597546839.a n = A062304 (n + 1)

end A062304

/-!
# A062305: Number of ways writing 2^n as a sum of a prime and a nonprime.

The programs for A062305, the canonical program `A062305.P13485708107891257618` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062305 has offset 0).

The definition of A062305 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062305.P13485708107891257618

`A062602(2^n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062305

/-- `A062602(2^n)` -/
def P13485708107891257618.Spec : Prop :=
  ∀ n, P13485708107891257618.a n = A062305 n

theorem P13485708107891257618.correct : P13485708107891257618.Spec := by
  intro n
  simp only [A062305]

end A062305

/-! ## A062305.P3713502970799197533

`A291564(ceil(2^(n-1)))`
-/

namespace A062305.P3713502970799197533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A062305.P3713502970799197533

namespace A062305

/-- `A291564(ceil(2^(n-1)))` -/
def P3713502970799197533.Spec : Prop :=
  ∀ n, P3713502970799197533.a n = A062305 n

end A062305

/-! ## A062305.P11988666558755700203

`ceil(2^(n-1))-A291563(ceil(2^(n-1)))`
-/

namespace A062305.P11988666558755700203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A291563 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A062305.P11988666558755700203

namespace A062305

/-- `ceil(2^(n-1))-A291563(ceil(2^(n-1)))` -/
def P11988666558755700203.Spec : Prop :=
  ∀ n, P11988666558755700203.a n = A062305 n

end A062305

/-! ## A062305.P11667482946392761442

`ceil(n/98)*A291564(A011782(n))`
-/

namespace A062305.P11667482946392761442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ * A291564 (A011782 n).toNat

end

end A062305.P11667482946392761442

namespace A062305

/-- `ceil(n/98)*A291564(A011782(n))` -/
def P11667482946392761442.Spec : Prop :=
  ∀ n, P11667482946392761442.a n = A062305 n

end A062305

/-! ## A062305.P711270674423548132

`A015852(n)*A291564(2^floor(n*sin(8)))`
-/

namespace A062305.P711270674423548132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015852 n * A291564 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℝ) * Real.sin (8 : ℝ)⌋ : ℤ))).toNat

end

end A062305.P711270674423548132

namespace A062305

/-- `A015852(n)*A291564(2^floor(n*sin(8)))` -/
def P711270674423548132.Spec : Prop :=
  ∀ n, P711270674423548132.a n = A062305 n

end A062305

/-!
# A062306: Number of ways writing 2^n as a sum of two nonprime numbers.

The programs for A062306, the canonical program `A062306.P6650986574470623872` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062306 has offset 1).

The definition of A062306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062306.P5609435490959734293

`2^n-A006307(n+1)-A062305(n+1)`
-/

namespace A062306.P5609435490959734293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006307 (n + 1) - A062305 (n + 1)

end

end A062306.P5609435490959734293

namespace A062306

/-- `2^n-A006307(n+1)-A062305(n+1)` -/
def P5609435490959734293.Spec : Prop :=
  ∀ n, P5609435490959734293.a n = A062306 (n + 1)

end A062306

/-! ## A062306.P6650986574470623872

`A062610(2^(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062306

/-- `A062610(2^(n+1))` -/
def P6650986574470623872.Spec : Prop :=
  ∀ n, P6650986574470623872.a n = A062306 (n + 1)

theorem P6650986574470623872.correct : P6650986574470623872.Spec := by
  intro n
  simp only [A062306, Nat.add_sub_cancel]

end A062306

/-! ## A062306.P16136878391596055037

`A334207(2^n)`
-/

namespace A062306.P16136878391596055037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (2 ^ n)

end

end A062306.P16136878391596055037

namespace A062306

/-- `A334207(2^n)` -/
def P16136878391596055037.Spec : Prop :=
  ∀ n, P16136878391596055037.a n = A062306 (n + 1)

end A062306

/-! ## A062306.P7565785662508079326

`A334207(A000079(n))-char[23]`
-/

namespace A062306.P7565785662508079326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (A000079 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A062306.P7565785662508079326

namespace A062306

/-- `A334207(A000079(n))-char[23]` -/
def P7565785662508079326.Spec : Prop :=
  ∀ n, P7565785662508079326.a n = A062306 (n + 1)

end A062306

/-! ## A062306.P16588587318157727250

`A334207(A011782(n+1))+floor(acot(n+1))`
-/

namespace A062306.P16588587318157727250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (A011782 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A062306.P16588587318157727250

namespace A062306

/-- `A334207(A011782(n+1))+floor(acot(n+1))` -/
def P16588587318157727250.Spec : Prop :=
  ∀ n, P16588587318157727250.a n = A062306 (n + 1)

end A062306

/-!
# A062307: Numbers n such that n = A008477(A008477(n)) and n is not A008478.

The programs for A062307, there is no canonical definition to state claims against.
-/

/-! ## A062307.P12279985605341213478

`A114130(A032555(n+1))`
-/

namespace A062307.P12279985605341213478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (A032555 (n + 1)).toNat

end

end A062307.P12279985605341213478

/-! ## A062307.P14003328665385973901

`A114130(A032557(n+1))`
-/

namespace A062307.P14003328665385973901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (A032557 (n + 1)).toNat

end

end A062307.P14003328665385973901

/-! ## A062307.P10286209359366881397

`A114130(A032559(n+1))`
-/

namespace A062307.P10286209359366881397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (A032559 (n + 1)).toNat

end

end A062307.P10286209359366881397

/-! ## A062307.P4343632289022165778

`A114130(A032563(n+1))`
-/

namespace A062307.P4343632289022165778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (A032563 (n + 1)).toNat

end

end A062307.P4343632289022165778

/-! ## A062307.P1959257324108093750

`A114130(A032565(n+1))`
-/

namespace A062307.P1959257324108093750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (A032565 (n + 1)).toNat

end

end A062307.P1959257324108093750

/-!
# A062308: Largest prime factor of 11^n+1 (A034524).

The programs for A062308, the canonical program `A062308.P8241217940045893361` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062308 has offset 0).

The definition of A062308 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062308.P8241217940045893361

`A006530(A034524(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062308

/-- `A006530(A034524(n))` -/
def P8241217940045893361.Spec : Prop :=
  ∀ n, P8241217940045893361.a n = A062308 n

theorem P8241217940045893361.correct : P8241217940045893361.Spec := by
  intro n
  simp only [A062308]

end A062308

/-! ## A062308.P14929767427733524823

`A006530(A019329(2*n)%A019308(3*n+1))`
-/

namespace A062308.P14929767427733524823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A019329 (2 * n)) (A019308 (3 * n + 1))).toNat

end

end A062308.P14929767427733524823

namespace A062308

/-- `A006530(A019329(2*n)%A019308(3*n+1))` -/
def P14929767427733524823.Spec : Prop :=
  ∀ n, P14929767427733524823.a n = A062308 n

end A062308

/-!
# A062309: Number of ways writing n! as sums of a prime and a nonprime.

The programs for A062309, the canonical program `A062309.P11926032728110666298` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062309 has offset 1).

The definition of A062309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062309.P11926032728110666298

`A062602((n+1)!)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062309

/-- `A062602((n+1)!)` -/
def P11926032728110666298.Spec : Prop :=
  ∀ n, P11926032728110666298.a n = A062309 (n + 1)

theorem P11926032728110666298.correct : P11926032728110666298.Spec := by
  intro n
  simp only [A062309, Nat.add_sub_cancel]

end A062309

/-! ## A062309.P8889049754793364525

`A062602(A000142(n+1))`
-/

namespace A062309.P8889049754793364525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A000142 (n + 1)).toNat

end

end A062309.P8889049754793364525

namespace A062309

/-- `A062602(A000142(n+1))` -/
def P8889049754793364525.Spec : Prop :=
  ∀ n, P8889049754793364525.a n = A062309 (n + 1)

end A062309

/-! ## A062309.P10052971185658187601

`A062602(A033646(n+1))`
-/

namespace A062309.P10052971185658187601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A033646 (n + 1)).toNat

end

end A062309.P10052971185658187601

namespace A062309

/-- `A062602(A033646(n+1))` -/
def P10052971185658187601.Spec : Prop :=
  ∀ n, P10052971185658187601.a n = A062309 (n + 1)

end A062309

/-!
# A062310: Number of ways writing n! as a sum of two nonprime numbers.

The programs for A062310, the canonical program `A062310.P14572420547221815406` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062310 has offset 1).

The definition of A062310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062310.P14572420547221815406

`A062610((n+1)!)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062310

/-- `A062610((n+1)!)` -/
def P14572420547221815406.Spec : Prop :=
  ∀ n, P14572420547221815406.a n = A062310 (n + 1)

theorem P14572420547221815406.correct : P14572420547221815406.Spec := by
  intro n
  simp only [A062310, Nat.add_sub_cancel]

end A062310

/-! ## A062310.P12812386039303930098

`A062610(A033646(n+1))`
-/

namespace A062310.P12812386039303930098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A033646 (n + 1)).toNat

end

end A062310.P12812386039303930098

namespace A062310

/-- `A062610(A033646(n+1))` -/
def P12812386039303930098.Spec : Prop :=
  ∀ n, P12812386039303930098.a n = A062310 (n + 1)

end A062310

/-! ## A062310.P10820498238933520492

`A062610(A033647(n+1))`
-/

namespace A062310.P10820498238933520492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A033647 (n + 1)).toNat

end

end A062310.P10820498238933520492

namespace A062310

/-- `A062610(A033647(n+1))` -/
def P10820498238933520492.Spec : Prop :=
  ∀ n, P10820498238933520492.a n = A062310 (n + 1)

end A062310

/-!
# A062311: Number of ways writing n! as a sum of two primes.

The programs for A062311, the canonical program `A062311.P6532593904507289712` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062311 has offset 0).

The definition of A062311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062311.P6532593904507289712

`A061358(n!)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062311

/-- `A061358(n!)` -/
def P6532593904507289712.Spec : Prop :=
  ∀ n, P6532593904507289712.a n = A062311 n

theorem P6532593904507289712.correct : P6532593904507289712.Spec := by
  intro n
  simp only [A062311]

end A062311

/-! ## A062311.P9481529392941654492

`ceil(A140088(n)/2)`
-/

namespace A062311.P9481529392941654492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140088 n : ℚ) / 2⌉

end

end A062311.P9481529392941654492

namespace A062311

/-- `ceil(A140088(n)/2)` -/
def P9481529392941654492.Spec : Prop :=
  ∀ n, P9481529392941654492.a n = A062311 n

end A062311

/-! ## A062311.P6139926453297851889

`round(A140088(n)/2)*char[A007318(n)]`
-/

namespace A062311.P6139926453297851889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140088 n : ℚ) / 2) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062311.P6139926453297851889

namespace A062311

/-- `round(A140088(n)/2)*char[A007318(n)]` -/
def P6139926453297851889.Spec : Prop :=
  ∀ n, P6139926453297851889.a n = A062311 n

end A062311

/-! ## A062311.P4819850801311826015

`round(A140088(n)/A177002(2*n+1))`
-/

namespace A062311.P4819850801311826015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140088 n : ℚ) / (A177002 (2 * n + 1) : ℚ))

end

end A062311.P4819850801311826015

namespace A062311

/-- `round(A140088(n)/A177002(2*n+1))` -/
def P4819850801311826015.Spec : Prop :=
  ∀ n, P4819850801311826015.a n = A062311 n

end A062311

/-! ## A062311.P111815039970098777

`round(A140088(n)/2)%A000032(4*n)`
-/

namespace A062311.P111815039970098777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A140088 n : ℚ) / 2)) (A000032 (4 * n))

end

end A062311.P111815039970098777

namespace A062311

/-- `round(A140088(n)/2)%A000032(4*n)` -/
def P111815039970098777.Spec : Prop :=
  ∀ n, P111815039970098777.a n = A062311 n

end A062311

/-!
# A062312: Positive nonprime numbers squared.

The programs for A062312, the canonical program `A062312.P6574845971519993361` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062312 has offset 1).

The definition of A062312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062312.P6574845971519993361

`A018252(n+1)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062312

/-- `A018252(n+1)²` -/
def P6574845971519993361.Spec : Prop :=
  ∀ n, P6574845971519993361.a n = A062312 (n + 1)

theorem P6574845971519993361.correct : P6574845971519993361.Spec := by
  intro n
  simp only [A062312, Nat.add_sub_cancel]

end A062312

/-! ## A062312.P17268948323082910785

`Δ[A051349(n)]²`
-/

namespace A062312.P17268948323082910785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A062312.P17268948323082910785

namespace A062312

/-- `Δ[A051349(n)]²` -/
def P17268948323082910785.Spec : Prop :=
  ∀ n, P17268948323082910785.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P7628515432374314065

`A141468(n+2)²`
-/

namespace A062312.P7628515432374314065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) ^ 2

end

end A062312.P7628515432374314065

namespace A062312

/-- `A141468(n+2)²` -/
def P7628515432374314065.Spec : Prop :=
  ∀ n, P7628515432374314065.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P9938214799436147840

`∑[A163602(n+1)]`
-/

namespace A062312.P9938214799436147840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062312.P9938214799436147840

namespace A062312

/-- `∑[A163602(n+1)]` -/
def P9938214799436147840.Spec : Prop :=
  ∀ n, P9938214799436147840.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P16251106121726333873

`A222307(Δ[n²])²`
-/

namespace A062312.P16251106121726333873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A062312.P16251106121726333873

namespace A062312

/-- `A222307(Δ[n²])²` -/
def P16251106121726333873.Spec : Prop :=
  ∀ n, P16251106121726333873.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P3281990558404303020

`∑[A054546(n+1)]²`
-/

namespace A062312.P3281990558404303020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A062312.P3281990558404303020

namespace A062312

/-- `∑[A054546(n+1)]²` -/
def P3281990558404303020.Spec : Prop :=
  ∀ n, P3281990558404303020.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P7592722640420248289

`(comp[record[A000010(n+1)]]+1)²`
-/

namespace A062312.P7592722640420248289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A062312.P7592722640420248289

namespace A062312

/-- `(comp[record[A000010(n+1)]]+1)²` -/
def P7592722640420248289.Spec : Prop :=
  ∀ n, (P7592722640420248289.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P18362938620412405485

`A018252(2*n+1-n)^2`
-/

namespace A062312.P18362938620412405485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * n + 1 - n) ^ 2

end

end A062312.P18362938620412405485

namespace A062312

/-- `A018252(2*n+1-n)^2` -/
def P18362938620412405485.Spec : Prop :=
  ∀ n, P18362938620412405485.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P3844293638755163416

`(comp[A000040(n+1)-1]+1)²`
-/

namespace A062312.P3844293638755163416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A062312.P3844293638755163416

namespace A062312

/-- `(comp[A000040(n+1)-1]+1)²` -/
def P3844293638755163416.Spec : Prop :=
  ∀ n, (P3844293638755163416.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P11539223913206696748

`comp[A006530(n+1)%(n+1)]²`
-/

namespace A062312.P11539223913206696748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A062312.P11539223913206696748

namespace A062312

/-- `comp[A006530(n+1)%(n+1)]²` -/
def P11539223913206696748.Spec : Prop :=
  ∀ n, (P11539223913206696748.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P9420862457127547016

`comp[C(A006530(n+2), n+1)]²`
-/

namespace A062312.P9420862457127547016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A062312.P9420862457127547016

namespace A062312

/-- `comp[C(A006530(n+2), n+1)]²` -/
def P9420862457127547016.Spec : Prop :=
  ∀ n, (P9420862457127547016.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P5002356683884403811

`comp[C(A020639(n+2), n+1)]²`
-/

namespace A062312.P5002356683884403811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 2)).toNat (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A062312.P5002356683884403811

namespace A062312

/-- `comp[C(A020639(n+2), n+1)]²` -/
def P5002356683884403811.Spec : Prop :=
  ∀ n, (P5002356683884403811.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P13001722380628379041

`record[(n+1)^(2%A000005(n+1))]`
-/

namespace A062312.P13001722380628379041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod 2 (A000005 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062312.P13001722380628379041

namespace A062312

/-- `record[(n+1)^(2%A000005(n+1))]` -/
def P13001722380628379041.Spec : Prop :=
  ∀ n, P13001722380628379041.a n = (A062312 (n + 1) : ℚ)

end A062312

/-! ## A062312.P1178667284757242083

`and(-3, A018252(2*n-(n-1))²)`
-/

namespace A062312.P1178667284757242083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2)

end

end A062312.P1178667284757242083

namespace A062312

/-- `and(-3, A018252(2*n-(n-1))²)` -/
def P1178667284757242083.Spec : Prop :=
  ∀ n, P1178667284757242083.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P15982284011512296976

`comp[(n+1)*(2-A001222(n+1))]²`
-/

namespace A062312.P15982284011512296976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A001222 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A062312.P15982284011512296976

namespace A062312

/-- `comp[(n+1)*(2-A001222(n+1))]²` -/
def P15982284011512296976.Spec : Prop :=
  ∀ n, (P15982284011512296976.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P12798569806260902856

`(lt[A020639(n+1)², n+2]+1)²`
-/

namespace A062312.P12798569806260902856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A062312.P12798569806260902856

namespace A062312

/-- `(lt[A020639(n+1)², n+2]+1)²` -/
def P12798569806260902856.Spec : Prop :=
  ∀ n, (P12798569806260902856.a n : ℤ) = A062312 (n + 1)

end A062312

/-! ## A062312.P5331033223579694786

`A163602(n+1)+A161753(n+1)`
-/

namespace A062312.P5331033223579694786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163602 (n + 1) + A161753 (n + 1)

end

end A062312.P5331033223579694786

namespace A062312

/-- `A163602(n+1)+A161753(n+1)` -/
def P5331033223579694786.Spec : Prop :=
  ∀ n, P5331033223579694786.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P5600305640196572841

`A324600(n+1)+A161777(n+1)`
-/

namespace A062312.P5600305640196572841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324600 (n + 1) + A161777 (n + 1)

end

end A062312.P5600305640196572841

namespace A062312

/-- `A324600(n+1)+A161777(n+1)` -/
def P5600305640196572841.Spec : Prop :=
  ∀ n, P5600305640196572841.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P11750921294886922532

`A018252(n+1)*A141468(n+2)`
-/

namespace A062312.P11750921294886922532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) * A141468 (n + 2)

end

end A062312.P11750921294886922532

namespace A062312

/-- `A018252(n+1)*A141468(n+2)` -/
def P11750921294886922532.Spec : Prop :=
  ∀ n, P11750921294886922532.a n = A062312 (n + 1)

end A062312

/-! ## A062312.P15066701517244008732

`A018252(C(n+1, n))*A018252(n+1)`
-/

namespace A062312.P15066701517244008732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.choose (n + 1) n) * A018252 (n + 1)

end

end A062312.P15066701517244008732

namespace A062312

/-- `A018252(C(n+1, n))*A018252(n+1)` -/
def P15066701517244008732.Spec : Prop :=
  ∀ n, P15066701517244008732.a n = A062312 (n + 1)

theorem P15066701517244008732.correct : P15066701517244008732.Spec := by
  intro n
  simp only [A062312, Nat.add_sub_cancel, A062312.P15066701517244008732.a, A062312.P6574845971519993361.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A062312

/-! ## A062312.P17227701735674734373

`(lt[∑{p}[n+1, #], n+1]+1)²`
-/

namespace A062312.P17227701735674734373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1) ^ 2

end

end A062312.P17227701735674734373

namespace A062312

/-- `(lt[∑{p}[n+1, #], n+1]+1)²` -/
def P17227701735674734373.Spec : Prop :=
  ∀ n, (P17227701735674734373.a n : ℤ) = A062312 (n + 1)

end A062312

/-!
# A062313: Factorials of nonprime numbers.

The programs for A062313, there is no canonical definition to state claims against.
-/

/-! ## A062313.P13373406392999705781

`lt[n, ∏{d}[n, #]]!`
-/

namespace A062313.P13373406392999705781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062313.P13373406392999705781

/-! ## A062313.P9822902784674760215

`lt[∑{p}[n, #], n]!`
-/

namespace A062313.P9822902784674760215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A062313.P9822902784674760215

/-! ## A062313.P3258782816247640344

`comp[record[∑{p}[n, #]]]!`
-/

namespace A062313.P3258782816247640344
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A062313.P3258782816247640344

/-! ## A062313.P3424765146203558868

`lt[n, gcd(n², n!)]!`
-/

namespace A062313.P3424765146203558868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062313.P3424765146203558868

/-! ## A062313.P7129725995924813425

`lt[n, ∏{e}[n, n*#]]!`
-/

namespace A062313.P7129725995924813425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), n * Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062313.P7129725995924813425

/-! ## A062313.P10358195726823105552

`lt[n, n^∑{e}[n, #]]!`
-/

namespace A062313.P10358195726823105552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062313.P10358195726823105552

/-! ## A062313.P15865008833556052362

`record[gcd(n+3, 4*n!)!]`
-/

namespace A062313.P15865008833556052362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd (n + 3) (4 * Nat.factorial n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062313.P15865008833556052362

/-! ## A062313.P12077834838239920135

`lt[n-1, ∑{d}[n, #-1]]!`
-/

namespace A062313.P12077834838239920135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062313.P12077834838239920135

/-! ## A062313.P789116923801913236

`lt[0, ∏{p}[2*n, n-#]]!`
-/

namespace A062313.P789116923801913236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - (p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A062313.P789116923801913236

/-! ## A062313.P4879226293463469990

`lt[n-1, (n-1)*∑{e}[n, #]]!`
-/

namespace A062313.P4879226293463469990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062313.P4879226293463469990

/-!
# A062316: Neither the sum nor difference of 2 squares.

The programs for A062316, the canonical program `A062316.P13198727376127180149` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062316 has offset 1).

The definition of A062316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062316.P13198727376127180149

`2*A124981(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A062316

/-- `2*A124981(n+1)` -/
def P13198727376127180149.Spec : Prop :=
  ∀ n, P13198727376127180149.a n = A062316 (n + 1)

theorem P13198727376127180149.correct : P13198727376127180149.Spec := by
  intro n
  simp only [A062316, Nat.add_sub_cancel]

end A062316

/-! ## A062316.P15907327317524196892

`∩[2*n, A046712(n+1)]`
-/

namespace A062316.P15907327317524196892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P15907327317524196892

namespace A062316

/-- `∩[2*n, A046712(n+1)]` -/
def P15907327317524196892.Spec : Prop :=
  ∀ n, (P15907327317524196892.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P477476330879927234

`filter[A046712(n+1), A217586(#)]`
-/

namespace A062316.P477476330879927234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A062316.P477476330879927234

namespace A062316

/-- `filter[A046712(n+1), A217586(#)]` -/
def P477476330879927234.Spec : Prop :=
  ∀ n, P477476330879927234.a n = A062316 (n + 1)

end A062316

/-! ## A062316.P2617980178575494847

`filter[A046712(n+1), A354034(#)]`
-/

namespace A062316.P2617980178575494847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A062316.P2617980178575494847

namespace A062316

/-- `filter[A046712(n+1), A354034(#)]` -/
def P2617980178575494847.Spec : Prop :=
  ∀ n, P2617980178575494847.a n = A062316 (n + 1)

end A062316

/-! ## A062316.P18357527228646441935

`∩[A046712(n+1), A016825(n)]`
-/

namespace A062316.P18357527228646441935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P18357527228646441935

namespace A062316

/-- `∩[A046712(n+1), A016825(n)]` -/
def P18357527228646441935.Spec : Prop :=
  ∀ n, (P18357527228646441935.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P9427204896562137535

`∩[A046712(n+1), A016813(n)+1]`
-/

namespace A062316.P9427204896562137535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P9427204896562137535

namespace A062316

/-- `∩[A046712(n+1), A016813(n)+1]` -/
def P9427204896562137535.Spec : Prop :=
  ∀ n, (P9427204896562137535.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P292453807341308170

`record[lcm(2, A022544(n+1))]`
-/

namespace A062316.P292453807341308170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A022544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062316.P292453807341308170

namespace A062316

/-- `record[lcm(2, A022544(n+1))]` -/
def P292453807341308170.Spec : Prop :=
  ∀ n, (P292453807341308170.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P17580638807710820685

`2*∩[A022544(n+1), A004273(n)]`
-/

namespace A062316.P17580638807710820685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P17580638807710820685

namespace A062316

/-- `2*∩[A022544(n+1), A004273(n)]` -/
def P17580638807710820685.Spec : Prop :=
  ∀ n, (P17580638807710820685.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P10303794585695918020

`2*∩[A022544(n+1), A004274(n)]`
-/

namespace A062316.P10303794585695918020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P10303794585695918020

namespace A062316

/-- `2*∩[A022544(n+1), A004274(n)]` -/
def P10303794585695918020.Spec : Prop :=
  ∀ n, (P10303794585695918020.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P2460508972068385178

`2*∩[A022544(n+1), A004276(n)]`
-/

namespace A062316.P2460508972068385178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P2460508972068385178

namespace A062316

/-- `2*∩[A022544(n+1), A004276(n)]` -/
def P2460508972068385178.Spec : Prop :=
  ∀ n, (P2460508972068385178.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P14455297463249753962

`2*∩[A022544(n+1), A004281(n)]`
-/

namespace A062316.P14455297463249753962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P14455297463249753962

namespace A062316

/-- `2*∩[A022544(n+1), A004281(n)]` -/
def P14455297463249753962.Spec : Prop :=
  ∀ n, (P14455297463249753962.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P3599822792609985983

`2*∩[A022544(n+1), A060747(n)]`
-/

namespace A062316.P3599822792609985983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P3599822792609985983

namespace A062316

/-- `2*∩[A022544(n+1), A060747(n)]` -/
def P3599822792609985983.Spec : Prop :=
  ∀ n, (P3599822792609985983.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P14029894294153547157

`2*∩[A004435(n+1), A004273(n)]`
-/

namespace A062316.P14029894294153547157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P14029894294153547157

namespace A062316

/-- `2*∩[A004435(n+1), A004273(n)]` -/
def P14029894294153547157.Spec : Prop :=
  ∀ n, (P14029894294153547157.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P13257763341200958814

`2*∩[A004435(n+1), A060747(n)]`
-/

namespace A062316.P13257763341200958814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P13257763341200958814

namespace A062316

/-- `2*∩[A004435(n+1), A060747(n)]` -/
def P13257763341200958814.Spec : Prop :=
  ∀ n, (P13257763341200958814.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P9307354210527148653

`∩[A046712(n+1), A088829(n+1)]`
-/

namespace A062316.P9307354210527148653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P9307354210527148653

namespace A062316

/-- `∩[A046712(n+1), A088829(n+1)]` -/
def P9307354210527148653.Spec : Prop :=
  ∀ n, (P9307354210527148653.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P4275520051802499466

`A004277(A124981(n+1))`
-/

namespace A062316.P4275520051802499466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A124981 (n + 1)).toNat

end

end A062316.P4275520051802499466

namespace A062316

/-- `A004277(A124981(n+1))` -/
def P4275520051802499466.Spec : Prop :=
  ∀ n, P4275520051802499466.a n = A062316 (n + 1)

end A062316

/-! ## A062316.P12318726801961094712

`2*lt[A000161(A093178(n)), 1]`
-/

namespace A062316.P12318726801961094712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A093178 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062316.P12318726801961094712

namespace A062316

/-- `2*lt[A000161(A093178(n)), 1]` -/
def P12318726801961094712.Spec : Prop :=
  ∀ n, (P12318726801961094712.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P18164166947031768737

`eq[A229062(n)+2, A010131(n)]`
-/

namespace A062316.P18164166947031768737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062316.P18164166947031768737

namespace A062316

/-- `eq[A229062(n)+2, A010131(n)]` -/
def P18164166947031768737.Spec : Prop :=
  ∀ n, (P18164166947031768737.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P12219976245612336225

`eq[A229062(n)+2, A010166(n)]`
-/

namespace A062316.P12219976245612336225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062316.P12219976245612336225

namespace A062316

/-- `eq[A229062(n)+2, A010166(n)]` -/
def P12219976245612336225.Spec : Prop :=
  ∀ n, (P12219976245612336225.a n : ℤ) = A062316 (n + 1)

end A062316

/-! ## A062316.P943596119380891523

`∩[A046712(n+1), A053438(n)]`
-/

namespace A062316.P943596119380891523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062316.P943596119380891523

namespace A062316

/-- `∩[A046712(n+1), A053438(n)]` -/
def P943596119380891523.Spec : Prop :=
  ∀ n, (P943596119380891523.a n : ℤ) = A062316 (n + 1)

end A062316

/-!
# A062317: Numbers k such that 5*k-1 is a perfect square.

The programs for A062317, the canonical program `A062317.P9385224911759667153` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062317 has offset 1).

The definition of A062317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062317.P12516047528749572477

`ogf((1+x+6x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A062317.P12516047528749572477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 6, 1, 1] [1, -1, -2, 2, 1, -1] n

end

end A062317.P12516047528749572477

namespace A062317

/-- `ogf((1+x+6x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P12516047528749572477.Spec : Prop :=
  ∀ n, P12516047528749572477.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P11830795256444315931

`(10*(n+1)*n+5-(6*(n+1)-3)*(-1)^(n+1))/8`
-/

namespace A062317.P11830795256444315931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) * n + 5 : ℤ) - ((6 * (n + 1) : ℤ) - 3) * (-1) ^ (n + 1) : ℚ) / 8

end

end A062317.P11830795256444315931

namespace A062317

/-- `(10*(n+1)*n+5-(6*(n+1)-3)*(-1)^(n+1))/8` -/
def P11830795256444315931.Spec : Prop :=
  ∀ n, P11830795256444315931.a n = (A062317 (n + 1) : ℚ)

theorem P11830795256444315931.correct : P11830795256444315931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A062317, Nat.add_sub_cancel, A062317.P11830795256444315931.a, A062317.P9385224911759667153.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A062317, Nat.add_sub_cancel, A062317.P11830795256444315931.a, A062317.P9385224911759667153.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062317

/-! ## A062317.P9385224911759667153

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=13, a(4)=29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062317

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9385224911759667153.Spec : Prop :=
  ∀ n, P9385224911759667153.a n = A062317 (n + 1)

theorem P9385224911759667153.correct : P9385224911759667153.Spec := by
  intro n
  simp only [A062317, Nat.add_sub_cancel]

end A062317

/-! ## A062317.P15111211122284591627

`∑[n*gcd(2, n)²]+1`
-/

namespace A062317.P15111211122284591627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062317.P15111211122284591627

namespace A062317

/-- `∑[n*gcd(2, n)²]+1` -/
def P15111211122284591627.Spec : Prop :=
  ∀ n, (P15111211122284591627.a n : ℤ) = A062317 (n + 1)

end A062317

/-! ## A062317.P16861627719886163432

`∑[gcd(4*n, n^3)]+1`
-/

namespace A062317.P16861627719886163432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 * n) (n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062317.P16861627719886163432

namespace A062317

/-- `∑[gcd(4*n, n^3)]+1` -/
def P16861627719886163432.Spec : Prop :=
  ∀ n, (P16861627719886163432.a n : ℤ) = A062317 (n + 1)

end A062317

/-! ## A062317.P1638952711794700409

`∑[n*gcd(4, a(n-2))]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A062317.P1638952711794700409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n f1 =>
  n * Nat.gcd 4 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P1638952711794700409

namespace A062317

/-- `∑[n*gcd(4, a(n-2))]` -/
def P1638952711794700409.Spec : Prop :=
  ∀ n, (P1638952711794700409.a n : ℤ) = A062317 (n + 1)

end A062317

/-! ## A062317.P7590852178020331176

`∑[n*4^(a(n-1)%2)]` with `a(0)=1, a(1)=1`
-/

namespace A062317.P7590852178020331176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * 4 ^ (f1 (n - 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P7590852178020331176

namespace A062317

/-- `∑[n*4^(a(n-1)%2)]` -/
def P7590852178020331176.Spec : Prop :=
  ∀ n, (P7590852178020331176.a n : ℤ) = A062317 (n + 1)

end A062317

/-! ## A062317.P9458133484637913375

`∑[n*((n+1-a(n-1))%3)²]` with `a(0)=1`
-/

namespace A062317.P9458133484637913375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * Int.tmod ((n + 1 : ℤ) - f1 (n - 1)) 3 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P9458133484637913375

namespace A062317

/-- `∑[n*((n+1-a(n-1))%3)²]` -/
def P9458133484637913375.Spec : Prop :=
  ∀ n, P9458133484637913375.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P5790458554231728572

`A195162(n)+1`
-/

namespace A062317.P5790458554231728572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + 1

end

end A062317.P5790458554231728572

namespace A062317

/-- `A195162(n)+1` -/
def P5790458554231728572.Spec : Prop :=
  ∀ n, P5790458554231728572.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P10288115108251684921

`ceil(A273367(n)/2)`
-/

namespace A062317.P10288115108251684921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A273367 n : ℚ) / 2⌉

end

end A062317.P10288115108251684921

namespace A062317

/-- `ceil(A273367(n)/2)` -/
def P10288115108251684921.Spec : Prop :=
  ∀ n, P10288115108251684921.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P6352559551529333581

`∑[A195161(n)]+1`
-/

namespace A062317.P6352559551529333581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062317.P6352559551529333581

namespace A062317

/-- `∑[A195161(n)]+1` -/
def P6352559551529333581.Spec : Prop :=
  ∀ n, P6352559551529333581.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P17371776655759533843

`∑[A280166(n)+2*n]`
-/

namespace A062317.P17371776655759533843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P17371776655759533843

namespace A062317

/-- `∑[A280166(n)+2*n]` -/
def P17371776655759533843.Spec : Prop :=
  ∀ n, P17371776655759533843.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P11804155115679296661

`∑[A298028(n)-2*n]`
-/

namespace A062317.P11804155115679296661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P11804155115679296661

namespace A062317

/-- `∑[A298028(n)-2*n]` -/
def P11804155115679296661.Spec : Prop :=
  ∀ n, P11804155115679296661.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P8561592818478830560

`∑[gcd(n²², A008574(n))]`
-/

namespace A062317.P8561592818478830560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2) ^ 2 : ℤ) (A008574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P8561592818478830560

namespace A062317

/-- `∑[gcd(n²², A008574(n))]` -/
def P8561592818478830560.Spec : Prop :=
  ∀ n, (P8561592818478830560.a n : ℤ) = A062317 (n + 1)

end A062317

/-! ## A062317.P283709800316275237

`∑[A019426(n+1)+n-1]`
-/

namespace A062317.P283709800316275237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P283709800316275237

namespace A062317

/-- `∑[A019426(n+1)+n-1]` -/
def P283709800316275237.Spec : Prop :=
  ∀ n, P283709800316275237.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P13133271879951103122

`A135556(n+1)-(n²+n)`
-/

namespace A062317.P13133271879951103122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (n + 1) - (n ^ 2 + n : ℤ)

end

end A062317.P13133271879951103122

namespace A062317

/-- `A135556(n+1)-(n²+n)` -/
def P13133271879951103122.Spec : Prop :=
  ∀ n, P13133271879951103122.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P1859061194679230728

`∑[A195161(A028310(n))]`
-/

namespace A062317.P1859061194679230728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062317.P1859061194679230728

namespace A062317

/-- `∑[A195161(A028310(n))]` -/
def P1859061194679230728.Spec : Prop :=
  ∀ n, P1859061194679230728.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P9935460400447229600

`A210982(n)+A158416(n)`
-/

namespace A062317.P9935460400447229600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210982 n + A158416 n

end

end A062317.P9935460400447229600

namespace A062317

/-- `A210982(n)+A158416(n)` -/
def P9935460400447229600.Spec : Prop :=
  ∀ n, P9935460400447229600.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P2301685182016981078

`A247643(n)+A130472(n)`
-/

namespace A062317.P2301685182016981078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n + A130472 n

end

end A062317.P2301685182016981078

namespace A062317

/-- `A247643(n)+A130472(n)` -/
def P2301685182016981078.Spec : Prop :=
  ∀ n, P2301685182016981078.a n = A062317 (n + 1)

end A062317

/-! ## A062317.P8381693838353902430

`A367965(n)+A271391(n)`
-/

namespace A062317.P8381693838353902430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367965 n + A271391 n

end

end A062317.P8381693838353902430

namespace A062317

/-- `A367965(n)+A271391(n)` -/
def P8381693838353902430.Spec : Prop :=
  ∀ n, P8381693838353902430.a n = A062317 (n + 1)

end A062317

/-!
# A062318: Numbers of the form 3^m - 1 or 2*3^m - 1; i.e., the union of sequences A048473 and A024023.

The programs for A062318, the canonical program `A062318.P2652342786036098217` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062318 has offset 1).

The definition of A062318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062318.P2765130667085328881

`ogf((x+x^2)/(1-x-3x^2+3x^3))`
-/

namespace A062318.P2765130667085328881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -1, -3, 3] n

end

end A062318.P2765130667085328881

namespace A062318

/-- `ogf((x+x^2)/(1-x-3x^2+3x^3))` -/
def P2765130667085328881.Spec : Prop :=
  ∀ n, P2765130667085328881.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P4556093611105552002

`a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A062318.P4556093611105552002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 3 * a (n - 3)

end

end A062318.P4556093611105552002

namespace A062318

/-- `a(n-1)+3*a(n-2)-3*a(n-3)` -/
def P4556093611105552002.Spec : Prop :=
  ∀ n, P4556093611105552002.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P2652342786036098217

`2^((1+(-1)^(n+1))/2)*3^((2*(n+1)-3-(-1)^(n+1))/4)-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062318

/-- `2^((1+(-1)^(n+1))/2)*3^((2*(n+1)-3-(-1)^(n+1))/4)-1` -/
def P2652342786036098217.Spec : Prop :=
  ∀ n, P2652342786036098217.a n = (A062318 (n + 1) : ℝ)

end A062318

/-! ## A062318.P16314981809056990375

`∑[ogf((x+x^2)/(1-3x^2))]`
-/

namespace A062318.P16314981809056990375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062318.P16314981809056990375

namespace A062318

/-- `∑[ogf((x+x^2)/(1-3x^2))]` -/
def P16314981809056990375.Spec : Prop :=
  ∀ n, P16314981809056990375.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P17389020315860169724

`2+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062318.P17389020315860169724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 + 3 * a (n - 2)

end

end A062318.P17389020315860169724

namespace A062318

/-- `2+3*a(n-2)` -/
def P17389020315860169724.Spec : Prop :=
  ∀ n, (P17389020315860169724.a n : ℤ) = A062318 (n + 1)

end A062318

/-! ## A062318.P1366839929912037849

`lcm(3, a(n-2))+2` with `a(0)=0, a(1)=1`
-/

namespace A062318.P1366839929912037849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lcm 3 (a (n - 2)) + 2

end

end A062318.P1366839929912037849

namespace A062318

/-- `lcm(3, a(n-2))+2` -/
def P1366839929912037849.Spec : Prop :=
  ∀ n, (P1366839929912037849.a n : ℤ) = A062318 (n + 1)

end A062318

/-! ## A062318.P6542562899713556381

`∑[3*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A062318.P6542562899713556381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062318.P6542562899713556381

namespace A062318

/-- `∑[3*a(n-2)]` -/
def P6542562899713556381.Spec : Prop :=
  ∀ n, (P6542562899713556381.a n : ℤ) = A062318 (n + 1)

end A062318

/-! ## A062318.P5914077561293939030

`∏[3/a(n-1)]-1` with `a(0)=1, a(1)=2`
-/

namespace A062318.P5914077561293939030
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062318.P5914077561293939030

namespace A062318

/-- `∏[3/a(n-1)]-1` -/
def P5914077561293939030.Spec : Prop :=
  ∀ n, P5914077561293939030.a n = (A062318 (n + 1) : ℚ)

end A062318

/-! ## A062318.P8616433705135474592

`5-3*(1-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A062318.P8616433705135474592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 - 3 * (1 - a (n - 2))

end

end A062318.P8616433705135474592

namespace A062318

/-- `5-3*(1-a(n-2))` -/
def P8616433705135474592.Spec : Prop :=
  ∀ n, P8616433705135474592.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P4949242569635638124

`floor(∑[3^∑[1-a(n-1)]])` with `a(0)=-1, a(1)=1`
-/

namespace A062318.P4949242569635638124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062318.P4949242569635638124

namespace A062318

/-- `floor(∑[3^∑[1-a(n-1)]])` -/
def P4949242569635638124.Spec : Prop :=
  ∀ n, P4949242569635638124.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P4615431483313849419

`a(n-2)/(1-2/3)+2` with `a(0)=0, a(1)=1`
-/

namespace A062318.P4615431483313849419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) + 2

end

end A062318.P4615431483313849419

namespace A062318

/-- `a(n-2)/(1-2/3)+2` -/
def P4615431483313849419.Spec : Prop :=
  ∀ n, P4615431483313849419.a n = (A062318 (n + 1) : ℚ)

end A062318

/-! ## A062318.P5449968557280105621

`2-a(n-2)/(2/3-1)` with `a(0)=0, a(1)=1`
-/

namespace A062318.P5449968557280105621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A062318.P5449968557280105621

namespace A062318

/-- `2-a(n-2)/(2/3-1)` -/
def P5449968557280105621.Spec : Prop :=
  ∀ n, P5449968557280105621.a n = (A062318 (n + 1) : ℚ)

end A062318

/-! ## A062318.P4037589371551800603

`a(n-gcd(2, n))+a(n-1)+1` with `a(0)=0`
-/

namespace A062318.P4037589371551800603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Nat.gcd 2 n) + a (n - 1) + 1

end

end A062318.P4037589371551800603

namespace A062318

/-- `a(n-gcd(2, n))+a(n-1)+1` -/
def P4037589371551800603.Spec : Prop :=
  ∀ n, (P4037589371551800603.a n : ℤ) = A062318 (n + 1)

end A062318

/-! ## A062318.P15970720294514761930

`a(n-2)+a(n-2)+a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A062318.P15970720294514761930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2)) + 2

end

end A062318.P15970720294514761930

namespace A062318

/-- `a(n-2)+a(n-2)+a(n-2)+2` -/
def P15970720294514761930.Spec : Prop :=
  ∀ n, (P15970720294514761930.a n : ℤ) = A062318 (n + 1)

end A062318

/-! ## A062318.P3135826727856803803

`∑[abs(A287479(n))]`
-/

namespace A062318.P3135826727856803803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287479 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062318.P3135826727856803803

namespace A062318

/-- `∑[abs(A287479(n))]` -/
def P3135826727856803803.Spec : Prop :=
  ∀ n, P3135826727856803803.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P5918640432960953209

`A140576(A047404(n+1))`
-/

namespace A062318.P5918640432960953209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (A047404 (n + 1)).toNat

end

end A062318.P5918640432960953209

namespace A062318

/-- `A140576(A047404(n+1))` -/
def P5918640432960953209.Spec : Prop :=
  ∀ n, P5918640432960953209.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P13198355143148184862

`xor(A010684(n), A038754(n))`
-/

namespace A062318.P13198355143148184862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A038754 n)

end

end A062318.P13198355143148184862

namespace A062318

/-- `xor(A010684(n), A038754(n))` -/
def P13198355143148184862.Spec : Prop :=
  ∀ n, P13198355143148184862.a n = A062318 (n + 1)

end A062318

/-! ## A062318.P8691449898655007800

`A117862(n)/2`
-/

namespace A062318.P8691449898655007800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117862 n : ℚ) / 2

end

end A062318.P8691449898655007800

namespace A062318

/-- `A117862(n)/2` -/
def P8691449898655007800.Spec : Prop :=
  ∀ n, P8691449898655007800.a n = (A062318 (n + 1) : ℚ)

end A062318

/-! ## A062318.P5332630708135828721

`(A060647(n)-1)/2`
-/

namespace A062318.P5332630708135828721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060647 n - 1 : ℚ) / 2

end

end A062318.P5332630708135828721

namespace A062318

/-- `(A060647(n)-1)/2` -/
def P5332630708135828721.Spec : Prop :=
  ∀ n, P5332630708135828721.a n = (A062318 (n + 1) : ℚ)

end A062318

/-! ## A062318.P5289498900358508826

`A060647(n)%A038754(n)`
-/

namespace A062318.P5289498900358508826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060647 n) (A038754 n)

end

end A062318.P5289498900358508826

namespace A062318

/-- `A060647(n)%A038754(n)` -/
def P5289498900358508826.Spec : Prop :=
  ∀ n, P5289498900358508826.a n = A062318 (n + 1)

end A062318

/-!
# A062319: Number of divisors of n^n, or of A000312(n).

The programs for A062319, the canonical program `A062319.P17615339707730084541` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062319 has offset 0).

The definition of A062319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062319.P17615339707730084541

`∏{e}[n, n*#+1]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062319

/-- `∏{e}[n, n*#+1]` -/
def P17615339707730084541.Spec : Prop :=
  ∀ n, (P17615339707730084541.a n : ℤ) = A062319 n

theorem P17615339707730084541.correct : P17615339707730084541.Spec := by
  intro n
  simp only [A062319]

end A062319

/-! ## A062319.P7911997821828809166

`∏{p}[n, n*val(n, #)+1]`
-/

namespace A062319.P7911997821828809166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n * SequenceMachineLib.valuation n p + 1)

end

end A062319.P7911997821828809166

namespace A062319

/-- `∏{p}[n, n*val(n, #)+1]` -/
def P7911997821828809166.Spec : Prop :=
  ∀ n, (P7911997821828809166.a n : ℤ) = A062319 n

end A062319

/-! ## A062319.P3797289940832002397

`∑{d}[A028310(n), n^A001221(#)]`
-/

namespace A062319.P3797289940832002397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n : ℚ) ^ (A001221 d : ℤ)

end

end A062319.P3797289940832002397

namespace A062319

/-- `∑{d}[A028310(n), n^A001221(#)]` -/
def P3797289940832002397.Spec : Prop :=
  ∀ n, P3797289940832002397.a n = (A062319 n : ℚ)

end A062319

/-! ## A062319.P11616601391235242720

`∑{d}[A000038(n)+n, n^A001221(#)]`
-/

namespace A062319.P11616601391235242720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n : ℚ) ^ (A001221 d : ℤ)

end

end A062319.P11616601391235242720

namespace A062319

/-- `∑{d}[A000038(n)+n, n^A001221(#)]` -/
def P11616601391235242720.Spec : Prop :=
  ∀ n, P11616601391235242720.a n = (A062319 n : ℚ)

end A062319

/-! ## A062319.P4678949681058761926

`∑{d}[A123108(2*n), n^A001221(#)]`
-/

namespace A062319.P4678949681058761926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n : ℚ) ^ (A001221 d : ℤ)

end

end A062319.P4678949681058761926

namespace A062319

/-- `∑{d}[A123108(2*n), n^A001221(#)]` -/
def P4678949681058761926.Spec : Prop :=
  ∀ n, P4678949681058761926.a n = (A062319 n : ℚ)

end A062319

/-! ## A062319.P1811266784495980252

`∑{d}[A000196(n²+1), n^A001221(#)]`
-/

namespace A062319.P1811266784495980252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n ^ 2 + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n : ℚ) ^ (A001221 d : ℤ)

end

end A062319.P1811266784495980252

namespace A062319

/-- `∑{d}[A000196(n²+1), n^A001221(#)]` -/
def P1811266784495980252.Spec : Prop :=
  ∀ n, P1811266784495980252.a n = (A062319 n : ℚ)

end A062319

/-! ## A062319.P15860415023703823724

`A343656(A004277(n²))`
-/

namespace A062319.P15860415023703823724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A004277 (n ^ 2)).toNat

end

end A062319.P15860415023703823724

namespace A062319

/-- `A343656(A004277(n²))` -/
def P15860415023703823724.Spec : Prop :=
  ∀ n, P15860415023703823724.a n = A062319 n

end A062319

/-! ## A062319.P5142219749094613852

`A343656(A028310(2*n²))`
-/

namespace A062319.P5142219749094613852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A028310 (2 * n ^ 2)).toNat

end

end A062319.P5142219749094613852

namespace A062319

/-- `A343656(A028310(2*n²))` -/
def P5142219749094613852.Spec : Prop :=
  ∀ n, P5142219749094613852.a n = A062319 n

end A062319

/-! ## A062319.P8451902615730464503

`A343656(n²+A028310(n²))`
-/

namespace A062319.P8451902615730464503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A062319.P8451902615730464503

namespace A062319

/-- `A343656(n²+A028310(n²))` -/
def P8451902615730464503.Spec : Prop :=
  ∀ n, P8451902615730464503.a n = A062319 n

end A062319

/-! ## A062319.P6929462056928929687

`A343656(A000007(n)+2*n²)`
-/

namespace A062319.P6929462056928929687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A000007 n + (2 * n ^ 2 : ℤ)).toNat

end

end A062319.P6929462056928929687

namespace A062319

/-- `A343656(A000007(n)+2*n²)` -/
def P6929462056928929687.Spec : Prop :=
  ∀ n, P6929462056928929687.a n = A062319 n

end A062319

/-!
# A062320: Nonsquarefree numbers squared. A013929(n)^2.

The programs for A062320, the canonical program `A062320.P2059323313079579979` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062320 has offset 1).

The definition of A062320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062320.P2059323313079579979

`A013929(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062320

/-- `A013929(n+1)²` -/
def P2059323313079579979.Spec : Prop :=
  ∀ n, P2059323313079579979.a n = A062320 (n + 1)

theorem P2059323313079579979.correct : P2059323313079579979.Spec := by
  intro n
  simp only [A062320, Nat.add_sub_cancel]

end A062320

/-! ## A062320.P11379854285423006034

`lt[0, A105570(n)]²`
-/

namespace A062320.P11379854285423006034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A062320.P11379854285423006034

namespace A062320

/-- `lt[0, A105570(n)]²` -/
def P11379854285423006034.Spec : Prop :=
  ∀ n, (P11379854285423006034.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P17746261011421239993

`lt[1, n*A087049(n)]²`
-/

namespace A062320.P17746261011421239993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A062320.P17746261011421239993

namespace A062320

/-- `lt[1, n*A087049(n)]²` -/
def P17746261011421239993.Spec : Prop :=
  ∀ n, (P17746261011421239993.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P12876094241911347433

`comp[C(A007913(n+1), n)]²`
-/

namespace A062320.P12876094241911347433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007913 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A062320.P12876094241911347433

namespace A062320

/-- `comp[C(A007913(n+1), n)]²` -/
def P12876094241911347433.Spec : Prop :=
  ∀ n, (P12876094241911347433.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P3253450955956105932

`comp[C(A007947(n+1), n)]²`
-/

namespace A062320.P3253450955956105932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007947 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A062320.P3253450955956105932

namespace A062320

/-- `comp[C(A007947(n+1), n)]²` -/
def P3253450955956105932.Spec : Prop :=
  ∀ n, (P3253450955956105932.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P12649640593329324506

`comp[C(A083346(n+1), n)]²`
-/

namespace A062320.P12649640593329324506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083346 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A062320.P12649640593329324506

namespace A062320

/-- `comp[C(A083346(n+1), n)]²` -/
def P12649640593329324506.Spec : Prop :=
  ∀ n, (P12649640593329324506.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P11593840005039438790

`(eq[0, A008683(n+1)]+1)²`
-/

namespace A062320.P11593840005039438790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A062320.P11593840005039438790

namespace A062320

/-- `(eq[0, A008683(n+1)]+1)²` -/
def P11593840005039438790.Spec : Prop :=
  ∀ n, (P11593840005039438790.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P16830414284734198185

`(eq[0, A008966(n+1)]+1)²`
-/

namespace A062320.P16830414284734198185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A062320.P16830414284734198185

namespace A062320

/-- `(eq[0, A008966(n+1)]+1)²` -/
def P16830414284734198185.Spec : Prop :=
  ∀ n, (P16830414284734198185.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P1492190292581373601

`(lt[1, A005361(n+1)]+1)²`
-/

namespace A062320.P1492190292581373601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A062320.P1492190292581373601

namespace A062320

/-- `(lt[1, A005361(n+1)]+1)²` -/
def P1492190292581373601.Spec : Prop :=
  ∀ n, (P1492190292581373601.a n : ℤ) = A062320 (n + 1)

theorem P1492190292581373601.correct : P1492190292581373601.Spec := by
  intro n
  simp only [A062320, Nat.add_sub_cancel, A062320.P1492190292581373601.f1, A062320.P1492190292581373601.f2, A062320.P1492190292581373601.a, A062320.P2059323313079579979.a, A005361, A005361.P7238185687981551187.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062320

/-! ## A062320.P12140105207216964831

`(lt[1, A008833(n+1)]+1)²`
-/

namespace A062320.P12140105207216964831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A062320.P12140105207216964831

namespace A062320

/-- `(lt[1, A008833(n+1)]+1)²` -/
def P12140105207216964831.Spec : Prop :=
  ∀ n, (P12140105207216964831.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P7983290144856358023

`(lt[A008683(n+2)², 1]+2)²`
-/

namespace A062320.P7983290144856358023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) ^ 2

end

end A062320.P7983290144856358023

namespace A062320

/-- `(lt[A008683(n+2)², 1]+2)²` -/
def P7983290144856358023.Spec : Prop :=
  ∀ n, (P7983290144856358023.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P14870325942419404104

`∩[A008683(n+3)+(n+3)², n²]`
-/

namespace A062320.P14870325942419404104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) + ((n + 3) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A062320.P14870325942419404104

namespace A062320

/-- `∩[A008683(n+3)+(n+3)², n²]` -/
def P14870325942419404104.Spec : Prop :=
  ∀ n, (P14870325942419404104.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P16251493719608332462

`A065642(A362041(n+1))²`
-/

namespace A062320.P16251493719608332462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A362041 (n + 1)).toNat ^ 2

end

end A062320.P16251493719608332462

namespace A062320

/-- `A065642(A362041(n+1))²` -/
def P16251493719608332462.Spec : Prop :=
  ∀ n, P16251493719608332462.a n = A062320 (n + 1)

end A062320

/-! ## A062320.P4107491764162356930

`∪[A320965(n+1), A321070(n+1)]`
-/

namespace A062320.P4107491764162356930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062320.P4107491764162356930

namespace A062320

/-- `∪[A320965(n+1), A321070(n+1)]` -/
def P4107491764162356930.Spec : Prop :=
  ∀ n, (P4107491764162356930.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P11116660490701187721

`(lt[A001221(n+1), A001222(n+1)]+1)²`
-/

namespace A062320.P11116660490701187721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2

end

end A062320.P11116660490701187721

namespace A062320

/-- `(lt[A001221(n+1), A001222(n+1)]+1)²` -/
def P11116660490701187721.Spec : Prop :=
  ∀ n, (P11116660490701187721.a n : ℤ) = A062320 (n + 1)

end A062320

/-! ## A062320.P10282257046371905379

`A162966(n+2)²`
-/

namespace A062320.P10282257046371905379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2) ^ 2

end

end A062320.P10282257046371905379

namespace A062320

/-- `A162966(n+2)²` -/
def P10282257046371905379.Spec : Prop :=
  ∀ n, P10282257046371905379.a n = A062320 (n + 1)

end A062320

/-! ## A062320.P6968230881350511796

`A013929(n+1)*A162966(n+2)`
-/

namespace A062320.P6968230881350511796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) * A162966 (n + 2)

end

end A062320.P6968230881350511796

namespace A062320

/-- `A013929(n+1)*A162966(n+2)` -/
def P6968230881350511796.Spec : Prop :=
  ∀ n, P6968230881350511796.a n = A062320 (n + 1)

end A062320

/-! ## A062320.P2247807771942810703

`record[A088609(n+2)²]`
-/

namespace A062320.P2247807771942810703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062320.P2247807771942810703

namespace A062320

/-- `record[A088609(n+2)²]` -/
def P2247807771942810703.Spec : Prop :=
  ∀ n, P2247807771942810703.a n = A062320 (n + 1)

end A062320

/-! ## A062320.P1921095277519082812

`A088609(A144338(n+1))²`
-/

namespace A062320.P1921095277519082812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (A144338 (n + 1)).toNat ^ 2

end

end A062320.P1921095277519082812

namespace A062320

/-- `A088609(A144338(n+1))²` -/
def P1921095277519082812.Spec : Prop :=
  ∀ n, P1921095277519082812.a n = A062320 (n + 1)

end A062320

/-! ## A062320.P2356729041197976343

`A088609(A005117(n+2))²`
-/

namespace A062320.P2356729041197976343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (A005117 (n + 2)).toNat ^ 2

end

end A062320.P2356729041197976343

namespace A062320

/-- `A088609(A005117(n+2))²` -/
def P2356729041197976343.Spec : Prop :=
  ∀ n, P2356729041197976343.a n = A062320 (n + 1)

end A062320

/-! ## A062320.P15528557078796230962

`(lt[1, ∏{e}[n+1, #]]+1)²`
-/

namespace A062320.P15528557078796230962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2

end

end A062320.P15528557078796230962

namespace A062320

/-- `(lt[1, ∏{e}[n+1, #]]+1)²` -/
def P15528557078796230962.Spec : Prop :=
  ∀ n, (P15528557078796230962.a n : ℤ) = A062320 (n + 1)

end A062320

/-!
# A062321: a(1) = 1; a(n) = gcd {n*(n+1), a(n-1) * (a(n-1) + 1)} for n > 1.

The programs for A062321, the canonical program `A062321.P5501215033967379533` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062321 has offset 1).

The definition of A062321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062321.P5501215033967379533

`gcd((n+1)*(n+2), a(n-1)*(a(n-1)+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062321

/-- `gcd((n+1)*(n+2), a(n-1)*(a(n-1)+1))` -/
def P5501215033967379533.Spec : Prop :=
  ∀ n, (P5501215033967379533.a n : ℤ) = A062321 (n + 1)

theorem P5501215033967379533.correct : P5501215033967379533.Spec := by
  intro n
  simp only [A062321, Nat.add_sub_cancel]

end A062321

/-! ## A062321.P14798457884702622672

`gcd(a(n-1)+a(n-1)², ∑[2*(n+1)])` with `a(0)=1`
-/

namespace A062321.P14798457884702622672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (a (n - 1) + a (n - 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062321.P14798457884702622672

namespace A062321

/-- `gcd(a(n-1)+a(n-1)², ∑[2*(n+1)])` -/
def P14798457884702622672.Spec : Prop :=
  ∀ n, (P14798457884702622672.a n : ℤ) = A062321 (n + 1)

end A062321

/-! ## A062321.P8874163094298223905

`gcd(2*C(a(n-1)+1, 2), A046092(n+1))` with `a(0)=1`
-/

namespace A062321.P8874163094298223905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (2 * Nat.choose (a (n - 1) + 1) 2 : ℤ) (A046092 (n + 1))

end

end A062321.P8874163094298223905

namespace A062321

/-- `gcd(2*C(a(n-1)+1, 2), A046092(n+1))` -/
def P8874163094298223905.Spec : Prop :=
  ∀ n, (P8874163094298223905.a n : ℤ) = A062321 (n + 1)

end A062321

/-! ## A062321.P2210333328884791837

`gcd(A002378(a(n-1)), A002378(n+1))` with `a(0)=1`
-/

namespace A062321.P2210333328884791837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A002378 (a (n - 1))) (A002378 (n + 1))

end

end A062321.P2210333328884791837

namespace A062321

/-- `gcd(A002378(a(n-1)), A002378(n+1))` -/
def P2210333328884791837.Spec : Prop :=
  ∀ n, (P2210333328884791837.a n : ℤ) = A062321 (n + 1)

end A062321

/-! ## A062321.P4440291589099354320

`2*gcd(A000217(n+1), A000217(a(n-1)))` with `a(0)=1`
-/

namespace A062321.P4440291589099354320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Int.gcd (A000217 (n + 1)) (A000217 (a (n - 1)))

end

end A062321.P4440291589099354320

namespace A062321

/-- `2*gcd(A000217(n+1), A000217(a(n-1)))` -/
def P4440291589099354320.Spec : Prop :=
  ∀ n, (P4440291589099354320.a n : ℤ) = A062321 (n + 1)

end A062321

/-! ## A062321.P14916346523530842363

`A083219(gcd(A046092(n+1), A046092(a(n-1))))` with `a(0)=1`
-/

namespace A062321.P14916346523530842363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083219 (Int.gcd (A046092 (n + 1)) (A046092 (a (n - 1)).toNat))

end

end A062321.P14916346523530842363

namespace A062321

/-- `A083219(gcd(A046092(n+1), A046092(a(n-1))))` -/
def P14916346523530842363.Spec : Prop :=
  ∀ n, P14916346523530842363.a n = A062321 (n + 1)

end A062321

/-!
# A062322: Factorials of nonsquarefree numbers, or A013929(n)!, (including 1).

The programs for A062322, there is no canonical definition to state claims against.
-/

/-! ## A062322.P6426981298508068658

`comp[∏{p}[n, #]]!`
-/

namespace A062322.P6426981298508068658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A062322.P6426981298508068658

/-! ## A062322.P8763835341726801971

`record[(n*char[lt[1, ∏{e}[n, #]]])!]`
-/

namespace A062322.P8763835341726801971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062322.P8763835341726801971

/-! ## A062322.P16123225783368424419

`lt[2*n, (n+1)*∏{e}[n, #]]!`
-/

namespace A062322.P16123225783368424419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062322.P16123225783368424419

/-! ## A062322.P16453657958756921780

`record[A105570(n)!]`
-/

namespace A062322.P16453657958756921780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062322.P16453657958756921780

/-! ## A062322.P8510832748098438905

`A162966(n+1)!`
-/

namespace A062322.P8510832748098438905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A162966 (n + 1)).toNat

end

end A062322.P8510832748098438905

/-!
# A062323: Triangle with a(n,n)=1, a(n,k)=(n-1)*a(n-1,k)+a(n-2,k) for n>k.

The programs for A062323, there is no canonical definition to state claims against.
-/

/-! ## A062323.P8635170022496914906

`A000523(ceil(cosh(A167772(n))))`
-/

namespace A062323.P8635170022496914906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ⌈Real.cosh (A167772 n : ℝ)⌉.toNat

end

end A062323.P8635170022496914906

/-! ## A062323.P4656404142151463428

`A000523(round(cosh(A167772(n))))`
-/

namespace A062323.P4656404142151463428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway (Real.cosh (A167772 n : ℝ))).toNat

end

end A062323.P4656404142151463428

/-! ## A062323.P285159233220070202

`A048766(A000217(A167772(n))²)`
-/

namespace A062323.P285159233220070202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000217 (A167772 n).toNat ^ 2).toNat

end

end A062323.P285159233220070202

/-! ## A062323.P12490034720953345785

`A003056(A089869(A167772(n)²))`
-/

namespace A062323.P12490034720953345785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A089869 (A167772 n ^ 2).toNat).toNat

end

end A062323.P12490034720953345785

/-! ## A062323.P4699639046192608512

`A001222(2^A322329(n))-A001221(A124733(n+1))`
-/

namespace A062323.P4699639046192608512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322329 n : ℤ))).toNat - A001221 (A124733 (n + 1)).toNat

end

end A062323.P4699639046192608512

/-!
# A062324: Primes p such that p^2 + 4 is also prime.

The programs for A062324, there is no canonical definition to state claims against.
-/

/-! ## A062324.P5517404810599685353

`sqrt(A045637(n+1)-4)`
-/

namespace A062324.P5517404810599685353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045637 (n + 1) - 4 : ℝ)

end

end A062324.P5517404810599685353

/-! ## A062324.P3649945931089795071

`A129119(n+1)/2`
-/

namespace A062324.P3649945931089795071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129119 (n + 1) : ℚ) / 2

end

end A062324.P3649945931089795071

/-! ## A062324.P6446900007605244148

`floor(sqrt(A045637(n+1)))`
-/

namespace A062324.P6446900007605244148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A045637 (n + 1))

end

end A062324.P6446900007605244148

/-! ## A062324.P2130330499177010850

`p?[A007591(n+1)]`
-/

namespace A062324.P2130330499177010850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062324.P2130330499177010850

/-! ## A062324.P147963539026232927

`p?[A089747(n+1)-1]`
-/

namespace A062324.P147963539026232927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089747 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062324.P147963539026232927

/-! ## A062324.P9315052244070077811

`p?[A129412(n+1)+3]`
-/

namespace A062324.P9315052244070077811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129412 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062324.P9315052244070077811

/-! ## A062324.P996804441900314970

`p?[floor(sqrt(A005473(n+2)))]`
-/

namespace A062324.P996804441900314970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005473 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062324.P996804441900314970

/-! ## A062324.P9410952579332988037

`∩[A007591(n+1), A042993(n+1)]`
-/

namespace A062324.P9410952579332988037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P9410952579332988037

/-! ## A062324.P5040992340167271310

`∩[A007591(n+1), A042986(n+1)]`
-/

namespace A062324.P5040992340167271310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P5040992340167271310

/-! ## A062324.P2903000201072433160

`∩[A007591(n+1), A042991(n+1)]`
-/

namespace A062324.P2903000201072433160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P2903000201072433160

/-! ## A062324.P14842292489937479221

`∩[A049557(n+1), A007591(n+1)]`
-/

namespace A062324.P14842292489937479221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P14842292489937479221

/-! ## A062324.P17240409887352931758

`∩[A007591(n+1), A040161(n+1)]`
-/

namespace A062324.P17240409887352931758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P17240409887352931758

/-! ## A062324.P7814537106796107435

`∩[A007591(n+1), A040169(n+1)]`
-/

namespace A062324.P7814537106796107435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P7814537106796107435

/-! ## A062324.P11710250838855475782

`∩[A007591(n+1), A040179(n+1)]`
-/

namespace A062324.P11710250838855475782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P11710250838855475782

/-! ## A062324.P7090761344408669902

`∩[A007591(n+1), A040970(n+1)]`
-/

namespace A062324.P7090761344408669902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P7090761344408669902

/-! ## A062324.P5411611176101453216

`∩[A007591(n+1), A040972(n+1)]`
-/

namespace A062324.P5411611176101453216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P5411611176101453216

/-! ## A062324.P15640895259328996146

`∩[A007591(n+1), A040986(n+1)]`
-/

namespace A062324.P15640895259328996146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P15640895259328996146

/-! ## A062324.P16974892212575821789

`∩[A007591(n+1), A040990(n+1)]`
-/

namespace A062324.P16974892212575821789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P16974892212575821789

/-! ## A062324.P17078190894654586459

`∩[A007591(n+1), A040159(n+1)]`
-/

namespace A062324.P17078190894654586459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P17078190894654586459

/-! ## A062324.P7983914293621296415

`∩[A007591(n+1), A040980(n+1)]`
-/

namespace A062324.P7983914293621296415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062324.P7983914293621296415

/-!
# A062325: Numbers k for which phi(prime(k)) is a square.

The programs for A062325, the canonical program `A062325.P18324812326254617152` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062325 has offset 1).

The definition of A062325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062325.P18324812326254617152

`A000720(A002496(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062325

/-- `A000720(A002496(n+1))` -/
def P18324812326254617152.Spec : Prop :=
  ∀ n, P18324812326254617152.a n = A062325 (n + 1)

theorem P18324812326254617152.correct : P18324812326254617152.Spec := by
  intro n
  simp only [A062325, Nat.add_sub_cancel]

end A062325

/-! ## A062325.P7271918185720898121

`a(n-1)+A205901(n)+1` with `a(0)=1`
-/

namespace A062325.P7271918185720898121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A205901 n + 1)

end

end A062325.P7271918185720898121

namespace A062325

/-- `a(n-1)+A205901(n)+1` -/
def P7271918185720898121.Spec : Prop :=
  ∀ n, P7271918185720898121.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P13236051936005512832

`A038107(A005574(n+1))+1`
-/

namespace A062325.P13236051936005512832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A005574 (n + 1)).toNat + 1

end

end A062325.P13236051936005512832

namespace A062325

/-- `A038107(A005574(n+1))+1` -/
def P13236051936005512832.Spec : Prop :=
  ∀ n, P13236051936005512832.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P13197126740504670240

`A038107(sqrt(A075408(n+1)))+1`
-/

namespace A062325.P13197126740504670240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (SequenceMachineLib.roundAway (Real.sqrt (A075408 (n + 1) : ℝ))).toNat + 1

end

end A062325.P13197126740504670240

namespace A062325

/-- `A038107(sqrt(A075408(n+1)))+1` -/
def P13197126740504670240.Spec : Prop :=
  ∀ n, P13197126740504670240.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P5182354870119595286

`A038107(record[A247339(n+1)])+1`
-/

namespace A062325.P5182354870119595286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A062325.P5182354870119595286

namespace A062325

/-- `A038107(record[A247339(n+1)])+1` -/
def P5182354870119595286.Spec : Prop :=
  ∀ n, P5182354870119595286.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P2967365164190756640

`A038107(A089593(n+1)+1)+1`
-/

namespace A062325.P2967365164190756640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A089593 (n + 1) + 1).toNat + 1

end

end A062325.P2967365164190756640

namespace A062325

/-- `A038107(A089593(n+1)+1)+1` -/
def P2967365164190756640.Spec : Prop :=
  ∀ n, P2967365164190756640.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P166105176929940597

`A038107(floor(sqrt(A002496(n+1))))+1`
-/

namespace A062325.P166105176929940597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (Int.sqrt (A002496 (n + 1))).toNat + 1

end

end A062325.P166105176929940597

namespace A062325

/-- `A038107(floor(sqrt(A002496(n+1))))+1` -/
def P166105176929940597.Spec : Prop :=
  ∀ n, P166105176929940597.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P13550643142491071401

`record[gcd(A038107(n+1)+1, A261609(n+1))]`
-/

namespace A062325.P13550643142491071401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038107 (n + 1) + 1) (A261609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062325.P13550643142491071401

namespace A062325

/-- `record[gcd(A038107(n+1)+1, A261609(n+1))]` -/
def P13550643142491071401.Spec : Prop :=
  ∀ n, (P13550643142491071401.a n : ℤ) = A062325 (n + 1)

end A062325

/-! ## A062325.P2639793349520312141

`A161187(A005574(n+1))-A089593(n+1)`
-/

namespace A062325.P2639793349520312141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (A005574 (n + 1)).toNat - A089593 (n + 1)

end

end A062325.P2639793349520312141

namespace A062325

/-- `A161187(A005574(n+1))-A089593(n+1)` -/
def P2639793349520312141.Spec : Prop :=
  ∀ n, P2639793349520312141.a n = A062325 (n + 1)

end A062325

/-! ## A062325.P8249526393493205381

`A161187(A089593(n+1)+1)-A089593(n+1)`
-/

namespace A062325.P8249526393493205381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (A089593 (n + 1) + 1).toNat - A089593 (n + 1)

end

end A062325.P8249526393493205381

namespace A062325

/-- `A161187(A089593(n+1)+1)-A089593(n+1)` -/
def P8249526393493205381.Spec : Prop :=
  ∀ n, P8249526393493205381.a n = A062325 (n + 1)

end A062325

/-!
# A062326: Primes p such that p^2 - 2 is also prime.

The programs for A062326, there is no canonical definition to state claims against.
-/

/-! ## A062326.P14591853978229541936

`sqrt(A146981(n+1))`
-/

namespace A062326.P14591853978229541936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A146981 (n + 1) : ℝ)

end

end A062326.P14591853978229541936

/-! ## A062326.P984425903141866595

`ceil(sqrt(A049002(n+1)))`
-/

namespace A062326.P984425903141866595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A049002 (n + 1) : ℝ)⌉

end

end A062326.P984425903141866595

/-! ## A062326.P9245175708290134434

`A240436(n+1)/A049002(n+1)`
-/

namespace A062326.P9245175708290134434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240436 (n + 1) : ℚ) / (A049002 (n + 1) : ℚ)

end

end A062326.P9245175708290134434

/-! ## A062326.P9475851850030193685

`round(sqrt(A049002(n+1)+A001670(n+1)))`
-/

namespace A062326.P9475851850030193685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049002 (n + 1) + A001670 (n + 1) : ℝ))

end

end A062326.P9475851850030193685

/-! ## A062326.P15348580605145632835

`round(sqrt(A076400(n+1)+A049002(n+1)))`
-/

namespace A062326.P15348580605145632835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A076400 (n + 1) + A049002 (n + 1) : ℝ))

end

end A062326.P15348580605145632835

/-! ## A062326.P137459043865028111

`round(sqrt(A146291(n+1)+A049002(n+1)))`
-/

namespace A062326.P137459043865028111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A146291 (n + 1) + A049002 (n + 1) : ℝ))

end

end A062326.P137459043865028111

/-! ## A062326.P15421703171564340956

`round(sqrt(A337379(n+1)+A049002(n+1)))`
-/

namespace A062326.P15421703171564340956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A337379 (n + 1) + A049002 (n + 1) : ℝ))

end

end A062326.P15421703171564340956

/-! ## A062326.P10899568474495011866

`round(sqrt(A049002(n+1)+A000203(n+1)+1))`
-/

namespace A062326.P10899568474495011866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A049002 (n + 1) + A000203 (n + 1) + 1 : ℝ))

end

end A062326.P10899568474495011866

/-! ## A062326.P13482875382470031004

`p?[A028870(n+1)]`
-/

namespace A062326.P13482875382470031004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062326.P13482875382470031004

/-! ## A062326.P2442662603900307872

`p?[A089623(n+1)+1]`
-/

namespace A062326.P2442662603900307872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089623 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062326.P2442662603900307872

/-! ## A062326.P10332783722077662430

`p?[ceil(sqrt(A028871(n+1)))]`
-/

namespace A062326.P10332783722077662430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028871 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062326.P10332783722077662430

/-! ## A062326.P18377443729992117399

`∩[A028870(n+1), A042990(n)]`
-/

namespace A062326.P18377443729992117399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P18377443729992117399

/-! ## A062326.P7537620280001846858

`∩[A028870(n+1), A165666(n+1)]`
-/

namespace A062326.P7537620280001846858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P7537620280001846858

/-! ## A062326.P12819184603870928176

`A000040(A137291(n+1))`
-/

namespace A062326.P12819184603870928176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137291 (n + 1)).toNat

end

end A062326.P12819184603870928176

/-! ## A062326.P5188501489185099962

`∩[A000040(n+1), A028870(n+1)]`
-/

namespace A062326.P5188501489185099962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P5188501489185099962

/-! ## A062326.P3022161402720613472

`∩[A008578(n+1), A028870(n+1)]`
-/

namespace A062326.P3022161402720613472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P3022161402720613472

/-! ## A062326.P641552665731139207

`∩[A028870(n+1), A046022(n+1)]`
-/

namespace A062326.P641552665731139207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P641552665731139207

/-! ## A062326.P2789085949202764095

`∩[A028870(n+1), A051948(n+1)]`
-/

namespace A062326.P2789085949202764095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P2789085949202764095

/-! ## A062326.P3485019894760631303

`∩[A028870(n+1), A053813(n+1)]`
-/

namespace A062326.P3485019894760631303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P3485019894760631303

/-! ## A062326.P17504049571518776684

`∩[A028870(n+1), A093515(n+1)]`
-/

namespace A062326.P17504049571518776684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062326.P17504049571518776684

/-!
# A062327: Number of divisors of n over the Gaussian integers.

The programs for A062327, the canonical program `A062327.P9291018550595819418` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062327 has offset 1).

The definition of A062327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062327.P9066300884737395752

`∑{d}[n+1, A000005(#)*A000089((n+1)/#)]`
-/

namespace A062327.P9066300884737395752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P9066300884737395752

namespace A062327

/-- `∑{d}[n+1, A000005(#)*A000089((n+1)/#)]` -/
def P9066300884737395752.Spec : Prop :=
  ∀ n, P9066300884737395752.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P12724021836900412508

`∑{d}[n+1, A002654(#)*A034444((n+1)/#)]`
-/

namespace A062327.P12724021836900412508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P12724021836900412508

namespace A062327

/-- `∑{d}[n+1, A002654(#)*A034444((n+1)/#)]` -/
def P12724021836900412508.Spec : Prop :=
  ∀ n, P12724021836900412508.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P3465490219663460997

`∑{d}[n+1, A001227(#)*A091379((n+1)/#)]`
-/

namespace A062327.P3465490219663460997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A091379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P3465490219663460997

namespace A062327

/-- `∑{d}[n+1, A001227(#)*A091379((n+1)/#)]` -/
def P3465490219663460997.Spec : Prop :=
  ∀ n, P3465490219663460997.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P9291018550595819418

`∑{d}[n+1, A069733(#)*A091400((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062327

/-- `∑{d}[n+1, A069733(#)*A091400((n+1)/#)]` -/
def P9291018550595819418.Spec : Prop :=
  ∀ n, P9291018550595819418.a n = A062327 (n + 1)

theorem P9291018550595819418.correct : P9291018550595819418.Spec := by
  intro n
  simp only [A062327, Nat.add_sub_cancel]

end A062327

/-! ## A062327.P9278585289626415714

`∑{d}[n+1, A008966(#)*A262209((n+1)/#)]`
-/

namespace A062327.P9278585289626415714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A262209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P9278585289626415714

namespace A062327

/-- `∑{d}[n+1, A008966(#)*A262209((n+1)/#)]` -/
def P9278585289626415714.Spec : Prop :=
  ∀ n, P9278585289626415714.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P13033174344330291902

`∑{d}[n+1, A035116(#)*A275966((n+1)/#)]`
-/

namespace A062327.P13033174344330291902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P13033174344330291902

namespace A062327

/-- `∑{d}[n+1, A035116(#)*A275966((n+1)/#)]` -/
def P13033174344330291902.Spec : Prop :=
  ∀ n, P13033174344330291902.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P17115339117215903607

`∑{d}[n+1, A069735(#)*A350872((n+1)/#)]`
-/

namespace A062327.P17115339117215903607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A350872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P17115339117215903607

namespace A062327

/-- `∑{d}[n+1, A069735(#)*A350872((n+1)/#)]` -/
def P17115339117215903607.Spec : Prop :=
  ∀ n, P17115339117215903607.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P3257167912730789851

`∑{d}[n+1, A304182(#)*A338690((n+1)/#)]`
-/

namespace A062327.P3257167912730789851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304182 d * A338690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P3257167912730789851

namespace A062327

/-- `∑{d}[n+1, A304182(#)*A338690((n+1)/#)]` -/
def P3257167912730789851.Spec : Prop :=
  ∀ n, P3257167912730789851.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P4780621260308750276

`∑{d}[n+1, A048691(#)*A056594((n+1)/#-1)]`
-/

namespace A062327.P4780621260308750276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A056594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A062327.P4780621260308750276

namespace A062327

/-- `∑{d}[n+1, A048691(#)*A056594((n+1)/#-1)]` -/
def P4780621260308750276.Spec : Prop :=
  ∀ n, P4780621260308750276.a n = A062327 (n + 1)

end A062327

/-! ## A062327.P7778449501729910296

`∑{d}[n+1, A000034(#-1)*A256452((n+1)/#)]`
-/

namespace A062327.P7778449501729910296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A256452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062327.P7778449501729910296

namespace A062327

/-- `∑{d}[n+1, A000034(#-1)*A256452((n+1)/#)]` -/
def P7778449501729910296.Spec : Prop :=
  ∀ n, P7778449501729910296.a n = A062327 (n + 1)

end A062327

/-!
# A062329: a(n) = (sum of digits of n) - (product of digits of n).

The programs for A062329, the canonical program `A062329.P1617940940404348921` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062329 has offset 0).

The definition of A062329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062329.P1617940940404348921

`∑{digits}[n, #]-∏{digits}[n, #]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062329

/-- `∑{digits}[n, #]-∏{digits}[n, #]` -/
def P1617940940404348921.Spec : Prop :=
  ∀ n, P1617940940404348921.a n = A062329 n

theorem P1617940940404348921.correct : P1617940940404348921.Spec := by
  intro n
  simp only [A062329]

end A062329

/-! ## A062329.P15224163922638717386

`∑{digits}[n, #]-A007954(n)`
-/

namespace A062329.P15224163922638717386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A007954 n

end

end A062329.P15224163922638717386

namespace A062329

/-- `∑{digits}[n, #]-A007954(n)` -/
def P15224163922638717386.Spec : Prop :=
  ∀ n, P15224163922638717386.a n = A062329 n

end A062329

/-! ## A062329.P15890284924341835242

`A007953(n)-∏{digits}[n, #]`
-/

namespace A062329.P15890284924341835242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A062329.P15890284924341835242

namespace A062329

/-- `A007953(n)-∏{digits}[n, #]` -/
def P15890284924341835242.Spec : Prop :=
  ∀ n, P15890284924341835242.a n = A062329 n

end A062329

/-! ## A062329.P2379781380602645361

`sqrt(A118881(n))-∏{digits}[n, #]`
-/

namespace A062329.P2379781380602645361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℝ)

end

end A062329.P2379781380602645361

namespace A062329

/-- `sqrt(A118881(n))-∏{digits}[n, #]` -/
def P2379781380602645361.Spec : Prop :=
  ∀ n, P2379781380602645361.a n = (A062329 n : ℝ)

end A062329

/-! ## A062329.P5358168638526946579

`log2(A329562(n))-∏{digits}[n, #]`
-/

namespace A062329.P5358168638526946579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℝ)

end

end A062329.P5358168638526946579

namespace A062329

/-- `log2(A329562(n))-∏{digits}[n, #]` -/
def P5358168638526946579.Spec : Prop :=
  ∀ n, P5358168638526946579.a n = (A062329 n : ℝ)

end A062329

/-! ## A062329.P12833957422168671543

`A007953(n)-A007954(n)`
-/

namespace A062329.P12833957422168671543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A007954 n

end

end A062329.P12833957422168671543

namespace A062329

/-- `A007953(n)-A007954(n)` -/
def P12833957422168671543.Spec : Prop :=
  ∀ n, P12833957422168671543.a n = A062329 n

end A062329

/-! ## A062329.P15032417624527220966

`A070565(n)-A066568(n)`
-/

namespace A062329.P15032417624527220966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n - A066568 n

end

end A062329.P15032417624527220966

namespace A062329

/-- `A070565(n)-A066568(n)` -/
def P15032417624527220966.Spec : Prop :=
  ∀ n, P15032417624527220966.a n = A062329 n

end A062329

/-! ## A062329.P16567443771124475281

`A169805(n)-A061762(n)`
-/

namespace A062329.P16567443771124475281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n - A061762 n

end

end A062329.P16567443771124475281

namespace A062329

/-- `A169805(n)-A061762(n)` -/
def P16567443771124475281.Spec : Prop :=
  ∀ n, P16567443771124475281.a n = A062329 n

end A062329

/-! ## A062329.P9686068994600292559

`A062028(n)-A230099(n)`
-/

namespace A062329.P9686068994600292559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A230099 n

end

end A062329.P9686068994600292559

namespace A062329

/-- `A062028(n)-A230099(n)` -/
def P9686068994600292559.Spec : Prop :=
  ∀ n, P9686068994600292559.a n = A062329 n

end A062329

/-! ## A062329.P9876089271621224971

`sqrt(A118881(n))-A007954(n)`
-/

namespace A062329.P9876089271621224971
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ) - (A007954 n : ℝ)

end

end A062329.P9876089271621224971

namespace A062329

/-- `sqrt(A118881(n))-A007954(n)` -/
def P9876089271621224971.Spec : Prop :=
  ∀ n, P9876089271621224971.a n = (A062329 n : ℝ)

end A062329

/-! ## A062329.P6901074105331970923

`log2(A329562(n))-A007954(n)`
-/

namespace A062329.P6901074105331970923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ) - (A007954 n : ℝ)

end

end A062329.P6901074105331970923

namespace A062329

/-- `log2(A329562(n))-A007954(n)` -/
def P6901074105331970923.Spec : Prop :=
  ∀ n, P6901074105331970923.a n = (A062329 n : ℝ)

end A062329

/-! ## A062329.P12692201884097589215

`2*A007953(n)-A061762(n)`
-/

namespace A062329.P12692201884097589215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n - A061762 n

end

end A062329.P12692201884097589215

namespace A062329

/-- `2*A007953(n)-A061762(n)` -/
def P12692201884097589215.Spec : Prop :=
  ∀ n, P12692201884097589215.a n = A062329 n

end A062329

/-! ## A062329.P7332796859009689488

`A061762(n)-2*A007954(n)`
-/

namespace A062329.P7332796859009689488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n - 2 * A007954 n

end

end A062329.P7332796859009689488

namespace A062329

/-- `A061762(n)-2*A007954(n)` -/
def P7332796859009689488.Spec : Prop :=
  ∀ n, P7332796859009689488.a n = A062329 n

end A062329

/-! ## A062329.P7172880693582068236

`A169805(n)/2-A007954(n)`
-/

namespace A062329.P7172880693582068236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 - (A007954 n : ℚ)

end

end A062329.P7172880693582068236

namespace A062329

/-- `A169805(n)/2-A007954(n)` -/
def P7172880693582068236.Spec : Prop :=
  ∀ n, P7172880693582068236.a n = (A062329 n : ℚ)

end A062329

/-! ## A062329.P3178112166814457980

`A062028(n)-(A007954(n)+n)`
-/

namespace A062329.P3178112166814457980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (A007954 n + (n : ℤ))

end

end A062329.P3178112166814457980

namespace A062329

/-- `A062028(n)-(A007954(n)+n)` -/
def P3178112166814457980.Spec : Prop :=
  ∀ n, P3178112166814457980.a n = A062329 n

end A062329

/-! ## A062329.P6798987407756374754

`n-(A066568(n)+A007954(n))`
-/

namespace A062329.P6798987407756374754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A066568 n + A007954 n)

end

end A062329.P6798987407756374754

namespace A062329

/-- `n-(A066568(n)+A007954(n))` -/
def P6798987407756374754.Spec : Prop :=
  ∀ n, P6798987407756374754.a n = A062329 n

end A062329

/-! ## A062329.P5464910134220891423

`A007953(n)+A070565(n)-n`
-/

namespace A062329.P5464910134220891423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + (A070565 n - (n : ℤ))

end

end A062329.P5464910134220891423

namespace A062329

/-- `A007953(n)+A070565(n)-n` -/
def P5464910134220891423.Spec : Prop :=
  ∀ n, P5464910134220891423.a n = A062329 n

end A062329

/-! ## A062329.P15027758007583349768

`A007953(n)+n-A230099(n)`
-/

namespace A062329.P15027758007583349768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + ((n : ℤ) - A230099 n)

end

end A062329.P15027758007583349768

namespace A062329

/-- `A007953(n)+n-A230099(n)` -/
def P15027758007583349768.Spec : Prop :=
  ∀ n, P15027758007583349768.a n = A062329 n

end A062329

/-! ## A062329.P9718185824702849350

`A169805(n)+A249121(n)-n`
-/

namespace A062329.P9718185824702849350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n + (A249121 n - (n : ℤ))

end

end A062329.P9718185824702849350

namespace A062329

/-- `A169805(n)+A249121(n)-n` -/
def P9718185824702849350.Spec : Prop :=
  ∀ n, P9718185824702849350.a n = A062329 n

end A062329

/-! ## A062329.P355639105517774525

`∑{digits}[n, A061762(#)]-A061762(n)`
-/

namespace A062329.P355639105517774525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A061762 x).sum - A061762 n

end

end A062329.P355639105517774525

namespace A062329

/-- `∑{digits}[n, A061762(#)]-A061762(n)` -/
def P355639105517774525.Spec : Prop :=
  ∀ n, P355639105517774525.a n = A062329 n

end A062329

/-!
# A062330: a(n) = product of the sum and product of the digits of a(n-1) (0 is not to be considered a factor in the product).

The programs for A062330, the canonical program `A062330.P1434482193101896200` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062330 has offset 1).

The definition of A062330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062330.P1434482193101896200

`A062331(a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062330

/-- `A062331(a(n-1))` -/
def P1434482193101896200.Spec : Prop :=
  ∀ n, P1434482193101896200.a n = A062330 (n + 1)

theorem P1434482193101896200.correct : P1434482193101896200.Spec := by
  intro n
  simp only [A062330, Nat.add_sub_cancel]

end A062330

/-!
# A062331: a(n) is the product of the sum and the product of the digits of n (0 is not to be considered a factor in the product).

The programs for A062331, the canonical program `A062331.P5956035598862090697` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062331 has offset 1).

The definition of A062331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062331.P12629141708026702527

`A066308(A004185(n+1))`
-/

namespace A062331.P12629141708026702527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (A004185 (n + 1)).toNat

end

end A062331.P12629141708026702527

namespace A062331

/-- `A066308(A004185(n+1))` -/
def P12629141708026702527.Spec : Prop :=
  ∀ n, P12629141708026702527.a n = A062331 (n + 1)

end A062331

/-! ## A062331.P16944639863823724228

`A066308(A004719(n+1))`
-/

namespace A062331.P16944639863823724228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (A004719 (n + 1)).toNat

end

end A062331.P16944639863823724228

namespace A062331

/-- `A066308(A004719(n+1))` -/
def P16944639863823724228.Spec : Prop :=
  ∀ n, P16944639863823724228.a n = A062331 (n + 1)

end A062331

/-! ## A062331.P7424339988748510002

`A066308(n+1-A193581(n+1))`
-/

namespace A062331.P7424339988748510002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 ((n + 1 : ℤ) - A193581 (n + 1)).toNat

end

end A062331.P7424339988748510002

namespace A062331

/-- `A066308(n+1-A193581(n+1))` -/
def P7424339988748510002.Spec : Prop :=
  ∀ n, P7424339988748510002.a n = A062331 (n + 1)

end A062331

/-! ## A062331.P5956035598862090697

`A007953(n+1)*A051801(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062331

/-- `A007953(n+1)*A051801(n+1)` -/
def P5956035598862090697.Spec : Prop :=
  ∀ n, P5956035598862090697.a n = A062331 (n + 1)

theorem P5956035598862090697.correct : P5956035598862090697.Spec := by
  intro n
  simp only [A062331, Nat.add_sub_cancel]

end A062331

/-! ## A062331.P6058097175555932227

`log2(A329562(n+1))*A051801(n+1)`
-/

namespace A062331.P6058097175555932227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n + 1) : ℝ) * (A051801 (n + 1) : ℝ)

end

end A062331.P6058097175555932227

namespace A062331

/-- `log2(A329562(n+1))*A051801(n+1)` -/
def P6058097175555932227.Spec : Prop :=
  ∀ n, P6058097175555932227.a n = (A062331 (n + 1) : ℝ)

end A062331

/-! ## A062331.P7360624039770358837

`(n+1-A063543(n+1))*A007953(n+1)`
-/

namespace A062331.P7360624039770358837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A063543 (n + 1)) * A007953 (n + 1)

end

end A062331.P7360624039770358837

namespace A062331

/-- `(n+1-A063543(n+1))*A007953(n+1)` -/
def P7360624039770358837.Spec : Prop :=
  ∀ n, P7360624039770358837.a n = A062331 (n + 1)

theorem P7360624039770358837.correct : P7360624039770358837.Spec := by
  intro n
  simp only [A062331, Nat.add_sub_cancel, A062331.P7360624039770358837.a, A062331.P5956035598862090697.a, A007953, A007953.P3472751987379697826.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A063543, A063543.P3901565496532426814.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062331

/-! ## A062331.P16983010575147251973

`A007953(n+1)*A007954(A004185(n+1))`
-/

namespace A062331.P16983010575147251973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A007954 (A004185 (n + 1)).toNat

end

end A062331.P16983010575147251973

namespace A062331

/-- `A007953(n+1)*A007954(A004185(n+1))` -/
def P16983010575147251973.Spec : Prop :=
  ∀ n, P16983010575147251973.a n = A062331 (n + 1)

end A062331

/-! ## A062331.P11030477504448012675

`A007953(n+1)*A007954(A004719(n+1))`
-/

namespace A062331.P11030477504448012675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A007954 (A004719 (n + 1)).toNat

end

end A062331.P11030477504448012675

namespace A062331

/-- `A007953(n+1)*A007954(A004719(n+1))` -/
def P11030477504448012675.Spec : Prop :=
  ∀ n, P11030477504448012675.a n = A062331 (n + 1)

end A062331

/-! ## A062331.P16533068787064119113

`A007953(n+1)*A352172(n+1)/A352598(n+1)`
-/

namespace A062331.P16533068787064119113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) * A352172 (n + 1) : ℚ) / (A352598 (n + 1) : ℚ)

end

end A062331.P16533068787064119113

namespace A062331

/-- `A007953(n+1)*A352172(n+1)/A352598(n+1)` -/
def P16533068787064119113.Spec : Prop :=
  ∀ n, P16533068787064119113.a n = (A062331 (n + 1) : ℚ)

end A062331

/-! ## A062331.P14189905388610589015

`A051801(n+1)/2*A169805(n+1)`
-/

namespace A062331.P14189905388610589015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051801 (n + 1) : ℚ) / 2 * (A169805 (n + 1) : ℚ)

end

end A062331.P14189905388610589015

namespace A062331

/-- `A051801(n+1)/2*A169805(n+1)` -/
def P14189905388610589015.Spec : Prop :=
  ∀ n, P14189905388610589015.a n = (A062331 (n + 1) : ℚ)

theorem P14189905388610589015.correct : P14189905388610589015.Spec := by
  intro n
  simp only [A062331, Nat.add_sub_cancel, A062331.P14189905388610589015.a, A062331.P5956035598862090697.a, A007953, A007953.P3472751987379697826.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A169805, A169805.P17977796700678006772.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062331

/-!
# A062332: Primes starting and ending with 1.

The programs for A062332, there is no canonical definition to state claims against.
-/

/-! ## A062332.P14936528756757705549

`∩[A030430(n+1), A208262(n+1)]`
-/

namespace A062332.P14936528756757705549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P14936528756757705549

/-! ## A062332.P16166739913561001302

`∩[A030430(n+1), A077652(n+1)]`
-/

namespace A062332.P16166739913561001302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P16166739913561001302

/-! ## A062332.P10918775274340387003

`∩[A077652(n+1), A208262(n+1)]`
-/

namespace A062332.P10918775274340387003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P10918775274340387003

/-! ## A062332.P4696496930455947851

`∩[A030430(n+1), A045707(n+1)]`
-/

namespace A062332.P4696496930455947851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P4696496930455947851

/-! ## A062332.P5758119605283460172

`∩[A045707(n+1), A077652(n+1)]`
-/

namespace A062332.P5758119605283460172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P5758119605283460172

/-! ## A062332.P5056047654328444095

`∩[A045707(n+1), A208262(n+1)]`
-/

namespace A062332.P5056047654328444095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P5056047654328444095

/-! ## A062332.P17218882545524738585

`p?[A208262(n+1)]`
-/

namespace A062332.P17218882545524738585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062332.P17218882545524738585

/-! ## A062332.P14436227952402266905

`∩[A004615(n+1), A045707(n+1)]`
-/

namespace A062332.P14436227952402266905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P14436227952402266905

/-! ## A062332.P14685433016666416708

`∩[A004615(n+1), A077652(n+1)]`
-/

namespace A062332.P14685433016666416708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P14685433016666416708

/-! ## A062332.P3106589901100881214

`∩[A045453(n+1), A045707(n+1)]`
-/

namespace A062332.P3106589901100881214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P3106589901100881214

/-! ## A062332.P15369415732121671529

`∩[A045707(n+1), A088136(n+1)]`
-/

namespace A062332.P15369415732121671529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P15369415732121671529

/-! ## A062332.P11268430462901980626

`∩[A045707(n+1), A090756(n+1)]`
-/

namespace A062332.P11268430462901980626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P11268430462901980626

/-! ## A062332.P13114021487655812313

`∩[A069706(n+1), A088136(n+1)]`
-/

namespace A062332.P13114021487655812313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P13114021487655812313

/-! ## A062332.P11784235856588572698

`∩[A077652(n+1), A088136(n+1)]`
-/

namespace A062332.P11784235856588572698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P11784235856588572698

/-! ## A062332.P4709425013126719435

`∩[A077652(n+1), A090756(n+1)]`
-/

namespace A062332.P4709425013126719435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P4709425013126719435

/-! ## A062332.P16145942157145184955

`∩[A038872(n+1), A208262(n+1)]`
-/

namespace A062332.P16145942157145184955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P16145942157145184955

/-! ## A062332.P9631264937084102563

`p?[A208259(n+1)]`
-/

namespace A062332.P9631264937084102563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062332.P9631264937084102563

/-! ## A062332.P647947670015188169

`∩[A030430(n+1), A208259(n+1)]`
-/

namespace A062332.P647947670015188169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P647947670015188169

/-! ## A062332.P4724823815803281519

`∩[A038872(n+1), A208259(n+1)]`
-/

namespace A062332.P4724823815803281519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P4724823815803281519

/-! ## A062332.P5972660607902406302

`∩[A045349(n+1), A208259(n+1)]`
-/

namespace A062332.P5972660607902406302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062332.P5972660607902406302

/-!
# A062333: Primes starting and ending with 3.

The programs for A062333, the canonical program `A062333.P7322437637995011704` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062333 has offset 1).

The definition of A062333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062333.P4506554910359880450

`∩[A030431(n+1), A045709(n+1)]`
-/

namespace A062333.P4506554910359880450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P4506554910359880450

namespace A062333

/-- `∩[A030431(n+1), A045709(n+1)]` -/
def P4506554910359880450.Spec : Prop :=
  ∀ n, (P4506554910359880450.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P3855822628727712698

`∩[A045414(n+1), A045709(n+1)]`
-/

namespace A062333.P3855822628727712698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P3855822628727712698

namespace A062333

/-- `∩[A045414(n+1), A045709(n+1)]` -/
def P3855822628727712698.Spec : Prop :=
  ∀ n, (P3855822628727712698.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P7322437637995011704

`∩[A030431(n+1), A077652(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062333

/-- `∩[A030431(n+1), A077652(n+1)]` -/
def P7322437637995011704.Spec : Prop :=
  ∀ n, (P7322437637995011704.a n : ℤ) = A062333 (n + 1)

theorem P7322437637995011704.correct : P7322437637995011704.Spec := by
  intro n
  simp only [A062333, Nat.add_sub_cancel]

end A062333

/-! ## A062333.P13798547994037194899

`∩[A045709(n+1), A077652(n+1)]`
-/

namespace A062333.P13798547994037194899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P13798547994037194899

namespace A062333

/-- `∩[A045709(n+1), A077652(n+1)]` -/
def P13798547994037194899.Spec : Prop :=
  ∀ n, (P13798547994037194899.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P5170072561146553822

`∩[A030431(n+1), A077679(n+1)]`
-/

namespace A062333.P5170072561146553822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P5170072561146553822

namespace A062333

/-- `∩[A030431(n+1), A077679(n+1)]` -/
def P5170072561146553822.Spec : Prop :=
  ∀ n, (P5170072561146553822.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P838019358686077351

`∩[A045414(n+1), A077679(n+1)]`
-/

namespace A062333.P838019358686077351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P838019358686077351

namespace A062333

/-- `∩[A045414(n+1), A077679(n+1)]` -/
def P838019358686077351.Spec : Prop :=
  ∀ n, (P838019358686077351.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P16401081938406919559

`∩[A077652(n+1), A077679(n+1)]`
-/

namespace A062333.P16401081938406919559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P16401081938406919559

namespace A062333

/-- `∩[A077652(n+1), A077679(n+1)]` -/
def P16401081938406919559.Spec : Prop :=
  ∀ n, (P16401081938406919559.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P3706089253864841153

`filter[A045709(n+1), A185706(#)]`
-/

namespace A062333.P3706089253864841153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A062333.P3706089253864841153

namespace A062333

/-- `filter[A045709(n+1), A185706(#)]` -/
def P3706089253864841153.Spec : Prop :=
  ∀ n, P3706089253864841153.a n = A062333 (n + 1)

end A062333

/-! ## A062333.P4216285666816251750

`filter[A077652(n+1), A185706(#)]`
-/

namespace A062333.P4216285666816251750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A062333.P4216285666816251750

namespace A062333

/-- `filter[A077652(n+1), A185706(#)]` -/
def P4216285666816251750.Spec : Prop :=
  ∀ n, P4216285666816251750.a n = A062333 (n + 1)

end A062333

/-! ## A062333.P16585084572353689961

`filter[A077679(n+1), A185706(#)]`
-/

namespace A062333.P16585084572353689961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A062333.P16585084572353689961

namespace A062333

/-- `filter[A077679(n+1), A185706(#)]` -/
def P16585084572353689961.Spec : Prop :=
  ∀ n, P16585084572353689961.a n = A062333 (n + 1)

end A062333

/-! ## A062333.P10623303567450842349

`∩[A004617(n+1), A045709(n+1)]`
-/

namespace A062333.P10623303567450842349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P10623303567450842349

namespace A062333

/-- `∩[A004617(n+1), A045709(n+1)]` -/
def P10623303567450842349.Spec : Prop :=
  ∀ n, (P10623303567450842349.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P13969412792039069996

`∩[A004617(n+1), A077652(n+1)]`
-/

namespace A062333.P13969412792039069996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062333.P13969412792039069996

namespace A062333

/-- `∩[A004617(n+1), A077652(n+1)]` -/
def P13969412792039069996.Spec : Prop :=
  ∀ n, (P13969412792039069996.a n : ℤ) = A062333 (n + 1)

end A062333

/-! ## A062333.P12447852388456051733

`p?[A017305(A217395(n+1)%A017282(n))]`
-/

namespace A062333.P12447852388456051733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (Int.tmod (A217395 (n + 1)) (A017282 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062333.P12447852388456051733

namespace A062333

/-- `p?[A017305(A217395(n+1)%A017282(n))]` -/
def P12447852388456051733.Spec : Prop :=
  ∀ n, P12447852388456051733.a n = A062333 (n + 1)

end A062333

/-! ## A062333.P17855824530095929225

`p?[A217395(A008706(n))]`
-/

namespace A062333.P17855824530095929225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217395 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062333.P17855824530095929225

namespace A062333

/-- `p?[A217395(A008706(n))]` -/
def P17855824530095929225.Spec : Prop :=
  ∀ n, P17855824530095929225.a n = A062333 (n + 1)

end A062333

/-! ## A062333.P418285455104577870

`record[A020639(A217395(A017329(n)))]`
-/

namespace A062333.P418285455104577870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A217395 (A017329 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062333.P418285455104577870

namespace A062333

/-- `record[A020639(A217395(A017329(n)))]` -/
def P418285455104577870.Spec : Prop :=
  ∀ n, P418285455104577870.a n = A062333 (n + 1)

end A062333

/-!
# A062334: Primes starting and ending with 7.

The programs for A062334, the canonical program `A062334.P13873159194991074977` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062334 has offset 1).

The definition of A062334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062334.P13284098639235992305

`∩[A030432(n+1), A045713(n+1)]`
-/

namespace A062334.P13284098639235992305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P13284098639235992305

namespace A062334

/-- `∩[A030432(n+1), A045713(n+1)]` -/
def P13284098639235992305.Spec : Prop :=
  ∀ n, (P13284098639235992305.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P13873159194991074977

`∩[A030432(n+1), A077652(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062334

/-- `∩[A030432(n+1), A077652(n+1)]` -/
def P13873159194991074977.Spec : Prop :=
  ∀ n, (P13873159194991074977.a n : ℤ) = A062334 (n + 1)

theorem P13873159194991074977.correct : P13873159194991074977.Spec := by
  intro n
  simp only [A062334, Nat.add_sub_cancel]

end A062334

/-! ## A062334.P1292005851313369569

`∩[A045713(n+1), A077652(n+1)]`
-/

namespace A062334.P1292005851313369569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P1292005851313369569

namespace A062334

/-- `∩[A045713(n+1), A077652(n+1)]` -/
def P1292005851313369569.Spec : Prop :=
  ∀ n, (P1292005851313369569.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P8481197173360724112

`∩[A030432(n+1), A077683(n+1)]`
-/

namespace A062334.P8481197173360724112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P8481197173360724112

namespace A062334

/-- `∩[A030432(n+1), A077683(n+1)]` -/
def P8481197173360724112.Spec : Prop :=
  ∀ n, (P8481197173360724112.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P14495941539372461214

`∩[A077652(n+1), A077683(n+1)]`
-/

namespace A062334.P14495941539372461214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P14495941539372461214

namespace A062334

/-- `∩[A077652(n+1), A077683(n+1)]` -/
def P14495941539372461214.Spec : Prop :=
  ∀ n, (P14495941539372461214.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P12676309948899224793

`∩[A045357(n+1), A045713(n+1)]`
-/

namespace A062334.P12676309948899224793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P12676309948899224793

namespace A062334

/-- `∩[A045357(n+1), A045713(n+1)]` -/
def P12676309948899224793.Spec : Prop :=
  ∀ n, (P12676309948899224793.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P3282486072714096963

`∩[A045380(n+1), A045713(n+1)]`
-/

namespace A062334.P3282486072714096963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P3282486072714096963

namespace A062334

/-- `∩[A045380(n+1), A045713(n+1)]` -/
def P3282486072714096963.Spec : Prop :=
  ∀ n, (P3282486072714096963.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P11950391696110749857

`∩[A045357(n+1), A077683(n+1)]`
-/

namespace A062334.P11950391696110749857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P11950391696110749857

namespace A062334

/-- `∩[A045357(n+1), A077683(n+1)]` -/
def P11950391696110749857.Spec : Prop :=
  ∀ n, (P11950391696110749857.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P13906071663142134285

`∩[A045380(n+1), A077683(n+1)]`
-/

namespace A062334.P13906071663142134285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P13906071663142134285

namespace A062334

/-- `∩[A045380(n+1), A077683(n+1)]` -/
def P13906071663142134285.Spec : Prop :=
  ∀ n, (P13906071663142134285.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P15386573114950411918

`∩[A217400(2*n+1), A045357(n+2)]`
-/

namespace A062334.P15386573114950411918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P15386573114950411918

namespace A062334

/-- `∩[A217400(2*n+1), A045357(n+2)]` -/
def P15386573114950411918.Spec : Prop :=
  ∀ n, (P15386573114950411918.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P10561489349815152302

`∩[A217400(2*n+1), A045380(n+2)]`
-/

namespace A062334.P10561489349815152302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062334.P10561489349815152302

namespace A062334

/-- `∩[A217400(2*n+1), A045380(n+2)]` -/
def P10561489349815152302.Spec : Prop :=
  ∀ n, (P10561489349815152302.a n : ℤ) = A062334 (n + 1)

end A062334

/-! ## A062334.P4443090688676720550

`record[A020639(A217400(A017377(n)))]`
-/

namespace A062334.P4443090688676720550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A217400 (A017377 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062334.P4443090688676720550

namespace A062334

/-- `record[A020639(A217400(A017377(n)))]` -/
def P4443090688676720550.Spec : Prop :=
  ∀ n, P4443090688676720550.a n = A062334 (n + 1)

end A062334

/-! ## A062334.P6197197683924522835

`p?[A217400(A004273(A008706(n)))]`
-/

namespace A062334.P6197197683924522835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (A004273 (A008706 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062334.P6197197683924522835

namespace A062334

/-- `p?[A217400(A004273(A008706(n)))]` -/
def P6197197683924522835.Spec : Prop :=
  ∀ n, P6197197683924522835.a n = A062334 (n + 1)

end A062334

/-! ## A062334.P12659969022873603278

`p?[A217400(A032793(A008458(n)))]`
-/

namespace A062334.P12659969022873603278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (A032793 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062334.P12659969022873603278

namespace A062334

/-- `p?[A217400(A032793(A008458(n)))]` -/
def P12659969022873603278.Spec : Prop :=
  ∀ n, P12659969022873603278.a n = A062334 (n + 1)

end A062334

/-! ## A062334.P10640702386585923828

`p?[A217400(A032793(A103517(n)))]`
-/

namespace A062334.P10640702386585923828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217400 (A032793 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062334.P10640702386585923828

namespace A062334

/-- `p?[A217400(A032793(A103517(n)))]` -/
def P10640702386585923828.Spec : Prop :=
  ∀ n, P10640702386585923828.a n = A062334 (n + 1)

end A062334

/-! ## A062334.P16204900429778050052

`p?[A217400(A017377(n))%A060541(n+1)]`
-/

namespace A062334.P16204900429778050052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217400 (A017377 n).toNat) (A060541 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062334.P16204900429778050052

namespace A062334

/-- `p?[A217400(A017377(n))%A060541(n+1)]` -/
def P16204900429778050052.Spec : Prop :=
  ∀ n, P16204900429778050052.a n = A062334 (n + 1)

end A062334

/-!
# A062335: Primes starting and ending with 9.

The programs for A062335, there is no canonical definition to state claims against.
-/

/-! ## A062335.P3452020676793169163

`∩[A045715(n+1), A077652(n+1)]`
-/

namespace A062335.P3452020676793169163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062335.P3452020676793169163

/-! ## A062335.P6368906443544665321

`∩[A077652(n+1), A077685(n+1)]`
-/

namespace A062335.P6368906443544665321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062335.P6368906443544665321

/-! ## A062335.P3318387794147112375

`p?[A017377(A217402(n+1))]`
-/

namespace A062335.P3318387794147112375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A217402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062335.P3318387794147112375

/-! ## A062335.P5917506841848945557

`p?[A217402(5*n+1)]`
-/

namespace A062335.P5917506841848945557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217402 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062335.P5917506841848945557

/-! ## A062335.P3035831708421077924

`p?[A057427(n)*A217402(A017281(n))]`
-/

namespace A062335.P3035831708421077924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A217402 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062335.P3035831708421077924

/-!
# A062336: Primes whose sum of digits is a multiple of 7.

The programs for A062336, the canonical program `A062336.P8122795505287334106` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062336 has offset 1).

The definition of A062336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062336.P8122795505287334106

`p?[A273159(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062336

/-- `p?[A273159(n+1)]` -/
def P8122795505287334106.Spec : Prop :=
  ∀ n, P8122795505287334106.a n = A062336 (n + 1)

theorem P8122795505287334106.correct : P8122795505287334106.Spec := by
  intro n
  simp only [A062336, Nat.add_sub_cancel]

end A062336

/-! ## A062336.P13729894249481342491

`record[A020639(A273159(n+2))]`
-/

namespace A062336.P13729894249481342491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A273159 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062336.P13729894249481342491

namespace A062336

/-- `record[A020639(A273159(n+2))]` -/
def P13729894249481342491.Spec : Prop :=
  ∀ n, P13729894249481342491.a n = A062336 (n + 1)

end A062336

/-! ## A062336.P10486479088228173723

`filter[A273159(n+2), A010051(#)]`
-/

namespace A062336.P10486479088228173723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A062336.P10486479088228173723

namespace A062336

/-- `filter[A273159(n+2), A010051(#)]` -/
def P10486479088228173723.Spec : Prop :=
  ∀ n, P10486479088228173723.a n = A062336 (n + 1)

end A062336

/-! ## A062336.P10925032127207038414

`∩[A000040(n+1), A273159(n+1)]`
-/

namespace A062336.P10925032127207038414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P10925032127207038414

namespace A062336

/-- `∩[A000040(n+1), A273159(n+1)]` -/
def P10925032127207038414.Spec : Prop :=
  ∀ n, (P10925032127207038414.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P14002093084121209480

`∩[A004139(n+1), A273159(n+1)]`
-/

namespace A062336.P14002093084121209480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P14002093084121209480

namespace A062336

/-- `∩[A004139(n+1), A273159(n+1)]` -/
def P14002093084121209480.Spec : Prop :=
  ∀ n, (P14002093084121209480.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P5783478145138201532

`∩[A006005(n+1), A273159(n+1)]`
-/

namespace A062336.P5783478145138201532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P5783478145138201532

namespace A062336

/-- `∩[A006005(n+1), A273159(n+1)]` -/
def P5783478145138201532.Spec : Prop :=
  ∀ n, (P5783478145138201532.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P16797346313043433674

`∩[A008578(n+1), A273159(n+1)]`
-/

namespace A062336.P16797346313043433674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P16797346313043433674

namespace A062336

/-- `∩[A008578(n+1), A273159(n+1)]` -/
def P16797346313043433674.Spec : Prop :=
  ∀ n, (P16797346313043433674.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P9698622351431658268

`∩[A033946(n+1), A273159(n+1)]`
-/

namespace A062336.P9698622351431658268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P9698622351431658268

namespace A062336

/-- `∩[A033946(n+1), A273159(n+1)]` -/
def P9698622351431658268.Spec : Prop :=
  ∀ n, (P9698622351431658268.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P17304847701275811177

`∩[A045319(n+1), A273159(n+1)]`
-/

namespace A062336.P17304847701275811177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P17304847701275811177

namespace A062336

/-- `∩[A045319(n+1), A273159(n+1)]` -/
def P17304847701275811177.Spec : Prop :=
  ∀ n, (P17304847701275811177.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P16664456708586976565

`∩[A045344(n+1), A273159(n+1)]`
-/

namespace A062336.P16664456708586976565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P16664456708586976565

namespace A062336

/-- `∩[A045344(n+1), A273159(n+1)]` -/
def P16664456708586976565.Spec : Prop :=
  ∀ n, (P16664456708586976565.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P13207001971782222124

`∩[A046022(n+1), A273159(n+1)]`
-/

namespace A062336.P13207001971782222124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P13207001971782222124

namespace A062336

/-- `∩[A046022(n+1), A273159(n+1)]` -/
def P13207001971782222124.Spec : Prop :=
  ∀ n, (P13207001971782222124.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P16160144388590162630

`∩[A051948(n+1), A273159(n+1)]`
-/

namespace A062336.P16160144388590162630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P16160144388590162630

namespace A062336

/-- `∩[A051948(n+1), A273159(n+1)]` -/
def P16160144388590162630.Spec : Prop :=
  ∀ n, (P16160144388590162630.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P3440514763752285965

`∩[A053813(n+1), A273159(n+1)]`
-/

namespace A062336.P3440514763752285965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P3440514763752285965

namespace A062336

/-- `∩[A053813(n+1), A273159(n+1)]` -/
def P3440514763752285965.Spec : Prop :=
  ∀ n, (P3440514763752285965.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P9329588270151988808

`∩[A062972(n+1), A273159(n+1)]`
-/

namespace A062336.P9329588270151988808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P9329588270151988808

namespace A062336

/-- `∩[A062972(n+1), A273159(n+1)]` -/
def P9329588270151988808.Spec : Prop :=
  ∀ n, (P9329588270151988808.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P14130931930212870465

`∩[A064728(n+1), A273159(n+1)]`
-/

namespace A062336.P14130931930212870465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P14130931930212870465

namespace A062336

/-- `∩[A064728(n+1), A273159(n+1)]` -/
def P14130931930212870465.Spec : Prop :=
  ∀ n, (P14130931930212870465.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P16463315569463019525

`∩[A065091(n+1), A273159(n+1)]`
-/

namespace A062336.P16463315569463019525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P16463315569463019525

namespace A062336

/-- `∩[A065091(n+1), A273159(n+1)]` -/
def P16463315569463019525.Spec : Prop :=
  ∀ n, (P16463315569463019525.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P12838683177249889801

`∩[A066050(n+1), A273159(n+1)]`
-/

namespace A062336.P12838683177249889801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P12838683177249889801

namespace A062336

/-- `∩[A066050(n+1), A273159(n+1)]` -/
def P12838683177249889801.Spec : Prop :=
  ∀ n, (P12838683177249889801.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P16256238864004050619

`∩[A067126(n+1), A273159(n+1)]`
-/

namespace A062336.P16256238864004050619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P16256238864004050619

namespace A062336

/-- `∩[A067126(n+1), A273159(n+1)]` -/
def P16256238864004050619.Spec : Prop :=
  ∀ n, (P16256238864004050619.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P13439247885129060597

`∩[A106118(n+1), A273159(n+1)]`
-/

namespace A062336.P13439247885129060597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P13439247885129060597

namespace A062336

/-- `∩[A106118(n+1), A273159(n+1)]` -/
def P13439247885129060597.Spec : Prop :=
  ∀ n, (P13439247885129060597.a n : ℤ) = A062336 (n + 1)

end A062336

/-! ## A062336.P11568521683112102181

`∩[A108719(n+1), A273159(n+1)]`
-/

namespace A062336.P11568521683112102181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062336.P11568521683112102181

namespace A062336

/-- `∩[A108719(n+1), A273159(n+1)]` -/
def P11568521683112102181.Spec : Prop :=
  ∀ n, (P11568521683112102181.a n : ℤ) = A062336 (n + 1)

end A062336

/-!
# A062337: Primes whose sum of digits is 7.

The programs for A062337, the canonical program `A062337.P4010670014355010102` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062337 has offset 1).

The definition of A062337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062337.P5904010162846223784

`∩[A052221(n+1), A158217(n+1)]`
-/

namespace A062337.P5904010162846223784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P5904010162846223784

namespace A062337

/-- `∩[A052221(n+1), A158217(n+1)]` -/
def P5904010162846223784.Spec : Prop :=
  ∀ n, (P5904010162846223784.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P9369948087658791892

`∩[A038617(n+1), A052221(n+1)]`
-/

namespace A062337.P9369948087658791892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P9369948087658791892

namespace A062337

/-- `∩[A038617(n+1), A052221(n+1)]` -/
def P9369948087658791892.Spec : Prop :=
  ∀ n, (P9369948087658791892.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P5630652490387077355

`∩[A052221(n+1), A372629(n+1)]`
-/

namespace A062337.P5630652490387077355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P5630652490387077355

namespace A062337

/-- `∩[A052221(n+1), A372629(n+1)]` -/
def P5630652490387077355.Spec : Prop :=
  ∀ n, (P5630652490387077355.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P1322870494586962472

`∩[A052222(n+1)-1, A372629(n+1)]`
-/

namespace A062337.P1322870494586962472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P1322870494586962472

namespace A062337

/-- `∩[A052222(n+1)-1, A372629(n+1)]` -/
def P1322870494586962472.Spec : Prop :=
  ∀ n, (P1322870494586962472.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P17207558261545215429

`∩[A038616(n+1), A052221(n+1)]`
-/

namespace A062337.P17207558261545215429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P17207558261545215429

namespace A062337

/-- `∩[A038616(n+1), A052221(n+1)]` -/
def P17207558261545215429.Spec : Prop :=
  ∀ n, (P17207558261545215429.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P4010670014355010102

`p?[A052221(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062337

/-- `p?[A052221(n+1)]` -/
def P4010670014355010102.Spec : Prop :=
  ∀ n, P4010670014355010102.a n = A062337 (n + 1)

theorem P4010670014355010102.correct : P4010670014355010102.Spec := by
  intro n
  simp only [A062337, Nat.add_sub_cancel]

end A062337

/-! ## A062337.P16632983906789481402

`p?[A052220(n+1)+1]`
-/

namespace A062337.P16632983906789481402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P16632983906789481402

namespace A062337

/-- `p?[A052220(n+1)+1]` -/
def P16632983906789481402.Spec : Prop :=
  ∀ n, P16632983906789481402.a n = A062337 (n + 1)

end A062337

/-! ## A062337.P1355494932333315521

`p?[A062768(n+1)+1]`
-/

namespace A062337.P1355494932333315521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062768 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P1355494932333315521

namespace A062337

/-- `p?[A062768(n+1)+1]` -/
def P1355494932333315521.Spec : Prop :=
  ∀ n, P1355494932333315521.a n = A062337 (n + 1)

end A062337

/-! ## A062337.P11933498316975936437

`p?[3*A279773(n+1)+1]`
-/

namespace A062337.P11933498316975936437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A279773 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P11933498316975936437

namespace A062337

/-- `p?[3*A279773(n+1)+1]` -/
def P11933498316975936437.Spec : Prop :=
  ∀ n, P11933498316975936437.a n = A062337 (n + 1)

end A062337

/-! ## A062337.P2453540787295402648

`p?[6*A088408(n+1)+1]`
-/

namespace A062337.P2453540787295402648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A088408 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P2453540787295402648

namespace A062337

/-- `p?[6*A088408(n+1)+1]` -/
def P2453540787295402648.Spec : Prop :=
  ∀ n, P2453540787295402648.a n = A062337 (n + 1)

end A062337

/-! ## A062337.P17237427638973890100

`p?[A001202(A023689(n+1)+1)]`
-/

namespace A062337.P17237427638973890100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023689 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P17237427638973890100

namespace A062337

/-- `p?[A001202(A023689(n+1)+1)]` -/
def P17237427638973890100.Spec : Prop :=
  ∀ n, P17237427638973890100.a n = A062337 (n + 1)

end A062337

/-! ## A062337.P16106983347419391572

`∩[A052221(n+1), A061241(n+1)]`
-/

namespace A062337.P16106983347419391572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P16106983347419391572

namespace A062337

/-- `∩[A052221(n+1), A061241(n+1)]` -/
def P16106983347419391572.Spec : Prop :=
  ∀ n, (P16106983347419391572.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P12951811228176379023

`∩[A052221(n+1), A062336(n+1)]`
-/

namespace A062337.P12951811228176379023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P12951811228176379023

namespace A062337

/-- `∩[A052221(n+1), A062336(n+1)]` -/
def P12951811228176379023.Spec : Prop :=
  ∀ n, (P12951811228176379023.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P2000202183387435462

`∩[A052221(n+1), A070027(n+1)]`
-/

namespace A062337.P2000202183387435462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P2000202183387435462

namespace A062337

/-- `∩[A052221(n+1), A070027(n+1)]` -/
def P2000202183387435462.Spec : Prop :=
  ∀ n, (P2000202183387435462.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P12705225103630647237

`∩[A061241(n+1), A062336(n+1)]`
-/

namespace A062337.P12705225103630647237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P12705225103630647237

namespace A062337

/-- `∩[A061241(n+1), A062336(n+1)]` -/
def P12705225103630647237.Spec : Prop :=
  ∀ n, (P12705225103630647237.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P9056976263392311916

`∩[A062336(n+1), A070027(n+1)]`
-/

namespace A062337.P9056976263392311916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P9056976263392311916

namespace A062337

/-- `∩[A062336(n+1), A070027(n+1)]` -/
def P9056976263392311916.Spec : Prop :=
  ∀ n, (P9056976263392311916.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P3360523944941169181

`∩[A052221(n+1), A156756(n+1)]`
-/

namespace A062337.P3360523944941169181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P3360523944941169181

namespace A062337

/-- `∩[A052221(n+1), A156756(n+1)]` -/
def P3360523944941169181.Spec : Prop :=
  ∀ n, (P3360523944941169181.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P11555545690541222197

`∩[A061241(n+1), A158217(n+1)]`
-/

namespace A062337.P11555545690541222197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P11555545690541222197

namespace A062337

/-- `∩[A061241(n+1), A158217(n+1)]` -/
def P11555545690541222197.Spec : Prop :=
  ∀ n, (P11555545690541222197.a n : ℤ) = A062337 (n + 1)

end A062337

/-! ## A062337.P5458123056036733264

`∩[A062336(n+1), A158217(n+1)]`
-/

namespace A062337.P5458123056036733264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062337.P5458123056036733264

namespace A062337

/-- `∩[A062336(n+1), A158217(n+1)]` -/
def P5458123056036733264.Spec : Prop :=
  ∀ n, (P5458123056036733264.a n : ℤ) = A062337 (n + 1)

end A062337

/-!
# A062338: Primes whose sum of digits is a multiple of 4.

The programs for A062338, the canonical program `A062338.P8695219899618334486` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062338 has offset 1).

The definition of A062338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062338.P8695219899618334486

`A000040(lt[A007605(n+1)%4, 1]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062338

/-- `A000040(lt[A007605(n+1)%4, 1]+1)` -/
def P8695219899618334486.Spec : Prop :=
  ∀ n, P8695219899618334486.a n = A062338 (n + 1)

theorem P8695219899618334486.correct : P8695219899618334486.Spec := by
  intro n
  simp only [A062338, Nat.add_sub_cancel]

end A062338

/-! ## A062338.P17943934785092054666

`p?[A268620(n+1)]`
-/

namespace A062338.P17943934785092054666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062338.P17943934785092054666

namespace A062338

/-- `p?[A268620(n+1)]` -/
def P17943934785092054666.Spec : Prop :=
  ∀ n, P17943934785092054666.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P8815444906054190066

`p?[record[A268620(A291769(n))]]`
-/

namespace A062338.P8815444906054190066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062338.P8815444906054190066

namespace A062338

/-- `p?[record[A268620(A291769(n))]]` -/
def P8815444906054190066.Spec : Prop :=
  ∀ n, P8815444906054190066.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P4211483747847778971

`p?[record[A268620(A328399(n))]]`
-/

namespace A062338.P4211483747847778971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062338.P4211483747847778971

namespace A062338

/-- `p?[record[A268620(A328399(n))]]` -/
def P4211483747847778971.Spec : Prop :=
  ∀ n, P4211483747847778971.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P7032492812654427332

`record[A006530(A268620(n+4))]`
-/

namespace A062338.P7032492812654427332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A268620 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062338.P7032492812654427332

namespace A062338

/-- `record[A006530(A268620(n+4))]` -/
def P7032492812654427332.Spec : Prop :=
  ∀ n, P7032492812654427332.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P3347882306759657607

`filter[A268620(n+2), A010051(#)]`
-/

namespace A062338.P3347882306759657607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A062338.P3347882306759657607

namespace A062338

/-- `filter[A268620(n+2), A010051(#)]` -/
def P3347882306759657607.Spec : Prop :=
  ∀ n, P3347882306759657607.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P18225551767015409527

`filter[A268620(n+2), A323152(#)]`
-/

namespace A062338.P18225551767015409527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A062338.P18225551767015409527

namespace A062338

/-- `filter[A268620(n+2), A323152(#)]` -/
def P18225551767015409527.Spec : Prop :=
  ∀ n, P18225551767015409527.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P4953782678861148095

`filter[A268620(n+2), A323153(#)]`
-/

namespace A062338.P4953782678861148095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A062338.P4953782678861148095

namespace A062338

/-- `filter[A268620(n+2), A323153(#)]` -/
def P4953782678861148095.Spec : Prop :=
  ∀ n, P4953782678861148095.a n = A062338 (n + 1)

end A062338

/-! ## A062338.P13455496982112091771

`∩[A000040(n+1), A268620(n+1)]`
-/

namespace A062338.P13455496982112091771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P13455496982112091771

namespace A062338

/-- `∩[A000040(n+1), A268620(n+1)]` -/
def P13455496982112091771.Spec : Prop :=
  ∀ n, (P13455496982112091771.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P4757285003255626083

`∩[A004139(n+1), A268620(n+1)]`
-/

namespace A062338.P4757285003255626083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P4757285003255626083

namespace A062338

/-- `∩[A004139(n+1), A268620(n+1)]` -/
def P4757285003255626083.Spec : Prop :=
  ∀ n, (P4757285003255626083.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P10018358593850391780

`∩[A006005(n+1), A268620(n+1)]`
-/

namespace A062338.P10018358593850391780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P10018358593850391780

namespace A062338

/-- `∩[A006005(n+1), A268620(n+1)]` -/
def P10018358593850391780.Spec : Prop :=
  ∀ n, (P10018358593850391780.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P12493285370790374830

`∩[A008578(n+1), A268620(n+1)]`
-/

namespace A062338.P12493285370790374830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P12493285370790374830

namespace A062338

/-- `∩[A008578(n+1), A268620(n+1)]` -/
def P12493285370790374830.Spec : Prop :=
  ∀ n, (P12493285370790374830.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P8955550653593320718

`∩[A045319(n+1), A268620(n+1)]`
-/

namespace A062338.P8955550653593320718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P8955550653593320718

namespace A062338

/-- `∩[A045319(n+1), A268620(n+1)]` -/
def P8955550653593320718.Spec : Prop :=
  ∀ n, (P8955550653593320718.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P16818960945845015176

`∩[A045344(n+1), A268620(n+1)]`
-/

namespace A062338.P16818960945845015176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P16818960945845015176

namespace A062338

/-- `∩[A045344(n+1), A268620(n+1)]` -/
def P16818960945845015176.Spec : Prop :=
  ∀ n, (P16818960945845015176.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P8618874942143037702

`∩[A053813(n+1), A268620(n+1)]`
-/

namespace A062338.P8618874942143037702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P8618874942143037702

namespace A062338

/-- `∩[A053813(n+1), A268620(n+1)]` -/
def P8618874942143037702.Spec : Prop :=
  ∀ n, (P8618874942143037702.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P4760014795770349243

`∩[A065091(n+1), A268620(n+1)]`
-/

namespace A062338.P4760014795770349243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P4760014795770349243

namespace A062338

/-- `∩[A065091(n+1), A268620(n+1)]` -/
def P4760014795770349243.Spec : Prop :=
  ∀ n, (P4760014795770349243.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P1168971335575398730

`∩[A078138(n+1), A268620(n+1)]`
-/

namespace A062338.P1168971335575398730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P1168971335575398730

namespace A062338

/-- `∩[A078138(n+1), A268620(n+1)]` -/
def P1168971335575398730.Spec : Prop :=
  ∀ n, (P1168971335575398730.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P5752754688768909696

`∩[A083249(n+1), A268620(n+1)]`
-/

namespace A062338.P5752754688768909696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P5752754688768909696

namespace A062338

/-- `∩[A083249(n+1), A268620(n+1)]` -/
def P5752754688768909696.Spec : Prop :=
  ∀ n, (P5752754688768909696.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P9440208611199447486

`∩[A104213(n+1), A268620(n+1)]`
-/

namespace A062338.P9440208611199447486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P9440208611199447486

namespace A062338

/-- `∩[A104213(n+1), A268620(n+1)]` -/
def P9440208611199447486.Spec : Prop :=
  ∀ n, (P9440208611199447486.a n : ℤ) = A062338 (n + 1)

end A062338

/-! ## A062338.P1567561775028465769

`∩[A108719(n+1), A268620(n+1)]`
-/

namespace A062338.P1567561775028465769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062338.P1567561775028465769

namespace A062338

/-- `∩[A108719(n+1), A268620(n+1)]` -/
def P1567561775028465769.Spec : Prop :=
  ∀ n, (P1567561775028465769.a n : ℤ) = A062338 (n + 1)

end A062338

/-!
# A062339: Primes whose sum of digits is 4.

The programs for A062339, there is no canonical definition to state claims against.
-/

/-! ## A062339.P16534168570562127354

`∩[A052218(n+1), A158571(n+1)]`
-/

namespace A062339.P16534168570562127354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062339.P16534168570562127354

/-! ## A062339.P9184653915060339157

`∩[A052218(n+1), A085306(n+1)]`
-/

namespace A062339.P9184653915060339157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062339.P9184653915060339157

/-! ## A062339.P413356684085756073

`∩[A085306(A020705(n)), A052218(n+1)]`
-/

namespace A062339.P413356684085756073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085306 (A020705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062339.P413356684085756073

/-! ## A062339.P14931547270890937167

`A157715(n+5)`
-/

namespace A062339.P14931547270890937167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157715 (n + 5)

end

end A062339.P14931547270890937167

/-! ## A062339.P3048003068620820207

`or(1, A157715(A020710(n)))`
-/

namespace A062339.P3048003068620820207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157715 (A020710 n).toNat)

end

end A062339.P3048003068620820207

/-!
# A062340: Primes whose sum of digits is a multiple of 5.

The programs for A062340, the canonical program `A062340.P12344509097868839965` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062340 has offset 1).

The definition of A062340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062340.P12344509097868839965

`p?[A227793(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062340

/-- `p?[A227793(n+1)]` -/
def P12344509097868839965.Spec : Prop :=
  ∀ n, P12344509097868839965.a n = A062340 (n + 1)

theorem P12344509097868839965.correct : P12344509097868839965.Spec := by
  intro n
  simp only [A062340, Nat.add_sub_cancel]

end A062340

/-! ## A062340.P7591032654226088795

`filter[A227793(n+2), A010051(#)]`
-/

namespace A062340.P7591032654226088795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A062340.P7591032654226088795

namespace A062340

/-- `filter[A227793(n+2), A010051(#)]` -/
def P7591032654226088795.Spec : Prop :=
  ∀ n, P7591032654226088795.a n = A062340 (n + 1)

end A062340

/-! ## A062340.P5172857343351648122

`∩[A000040(n+1), A227793(n+1)]`
-/

namespace A062340.P5172857343351648122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P5172857343351648122

namespace A062340

/-- `∩[A000040(n+1), A227793(n+1)]` -/
def P5172857343351648122.Spec : Prop :=
  ∀ n, (P5172857343351648122.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P15923965781702493272

`∩[A006005(n+1), A227793(n+1)]`
-/

namespace A062340.P15923965781702493272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P15923965781702493272

namespace A062340

/-- `∩[A006005(n+1), A227793(n+1)]` -/
def P15923965781702493272.Spec : Prop :=
  ∀ n, (P15923965781702493272.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P2536892906833107082

`∩[A008578(n+1), A227793(n+1)]`
-/

namespace A062340.P2536892906833107082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P2536892906833107082

namespace A062340

/-- `∩[A008578(n+1), A227793(n+1)]` -/
def P2536892906833107082.Spec : Prop :=
  ∀ n, (P2536892906833107082.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P15318549327292561342

`∩[A033946(n+1), A227793(n+1)]`
-/

namespace A062340.P15318549327292561342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P15318549327292561342

namespace A062340

/-- `∩[A033946(n+1), A227793(n+1)]` -/
def P15318549327292561342.Spec : Prop :=
  ∀ n, (P15318549327292561342.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P9656029479808383129

`∩[A045344(n+1), A227793(n+1)]`
-/

namespace A062340.P9656029479808383129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P9656029479808383129

namespace A062340

/-- `∩[A045344(n+1), A227793(n+1)]` -/
def P9656029479808383129.Spec : Prop :=
  ∀ n, (P9656029479808383129.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P12451057175157946540

`∩[A046022(n+1), A227793(n+1)]`
-/

namespace A062340.P12451057175157946540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P12451057175157946540

namespace A062340

/-- `∩[A046022(n+1), A227793(n+1)]` -/
def P12451057175157946540.Spec : Prop :=
  ∀ n, (P12451057175157946540.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P7512144311034880848

`∩[A051948(n+1), A227793(n+1)]`
-/

namespace A062340.P7512144311034880848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P7512144311034880848

namespace A062340

/-- `∩[A051948(n+1), A227793(n+1)]` -/
def P7512144311034880848.Spec : Prop :=
  ∀ n, (P7512144311034880848.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P11106529914584628048

`∩[A062972(n+1), A227793(n+1)]`
-/

namespace A062340.P11106529914584628048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P11106529914584628048

namespace A062340

/-- `∩[A062972(n+1), A227793(n+1)]` -/
def P11106529914584628048.Spec : Prop :=
  ∀ n, (P11106529914584628048.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P14646372944598724306

`∩[A064728(n+1), A227793(n+1)]`
-/

namespace A062340.P14646372944598724306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P14646372944598724306

namespace A062340

/-- `∩[A064728(n+1), A227793(n+1)]` -/
def P14646372944598724306.Spec : Prop :=
  ∀ n, (P14646372944598724306.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P11050914040182734070

`∩[A065091(n+1), A227793(n+1)]`
-/

namespace A062340.P11050914040182734070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P11050914040182734070

namespace A062340

/-- `∩[A065091(n+1), A227793(n+1)]` -/
def P11050914040182734070.Spec : Prop :=
  ∀ n, (P11050914040182734070.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P10131692693500794321

`∩[A065396(n+1), A227793(n+1)]`
-/

namespace A062340.P10131692693500794321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P10131692693500794321

namespace A062340

/-- `∩[A065396(n+1), A227793(n+1)]` -/
def P10131692693500794321.Spec : Prop :=
  ∀ n, (P10131692693500794321.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P5550759689344924847

`∩[A066050(n+1), A227793(n+1)]`
-/

namespace A062340.P5550759689344924847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P5550759689344924847

namespace A062340

/-- `∩[A066050(n+1), A227793(n+1)]` -/
def P5550759689344924847.Spec : Prop :=
  ∀ n, (P5550759689344924847.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P16338366308522747942

`∩[A067126(n+1), A227793(n+1)]`
-/

namespace A062340.P16338366308522747942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P16338366308522747942

namespace A062340

/-- `∩[A067126(n+1), A227793(n+1)]` -/
def P16338366308522747942.Spec : Prop :=
  ∀ n, (P16338366308522747942.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P16378297872574421085

`∩[A326715(n+1), A227793(n+1)]`
-/

namespace A062340.P16378297872574421085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062340.P16378297872574421085

namespace A062340

/-- `∩[A326715(n+1), A227793(n+1)]` -/
def P16378297872574421085.Spec : Prop :=
  ∀ n, (P16378297872574421085.a n : ℤ) = A062340 (n + 1)

end A062340

/-! ## A062340.P5056587774000811030

`p?[n*A010891(A007953(n))]`
-/

namespace A062340.P5056587774000811030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010891 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062340.P5056587774000811030

namespace A062340

/-- `p?[n*A010891(A007953(n))]` -/
def P5056587774000811030.Spec : Prop :=
  ∀ n, P5056587774000811030.a n = A062340 (n + 1)

end A062340

/-! ## A062340.P15286068076511310912

`filter[A227793(n+2), A080339(#)]`
-/

namespace A062340.P15286068076511310912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A062340.P15286068076511310912

namespace A062340

/-- `filter[A227793(n+2), A080339(#)]` -/
def P15286068076511310912.Spec : Prop :=
  ∀ n, P15286068076511310912.a n = A062340 (n + 1)

end A062340

/-! ## A062340.P15835384313643947618

`filter[A227793(n+2), A080545(#)]`
-/

namespace A062340.P15835384313643947618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A062340.P15835384313643947618

namespace A062340

/-- `filter[A227793(n+2), A080545(#)]` -/
def P15835384313643947618.Spec : Prop :=
  ∀ n, P15835384313643947618.a n = A062340 (n + 1)

end A062340

/-!
# A062341: Primes whose sum of digits is 5.

The programs for A062341, there is no canonical definition to state claims against.
-/

/-! ## A062341.P12017479670983422783

`∩[A052219(n+1), A158217(n+1)]`
-/

namespace A062341.P12017479670983422783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P12017479670983422783

/-! ## A062341.P2353961854367714238

`∩[A036958(n+1), A052219(n+1)]`
-/

namespace A062341.P2353961854367714238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P2353961854367714238

/-! ## A062341.P5514228273921807797

`∩[A036958(n+1), A052218(n+1)+1]`
-/

namespace A062341.P5514228273921807797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P5514228273921807797

/-! ## A062341.P1644356506959103390

`∩[A036960(n+1), A052219(n+1)]`
-/

namespace A062341.P1644356506959103390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P1644356506959103390

/-! ## A062341.P3773388236349758322

`∩[A038617(n+1), A052219(n+1)]`
-/

namespace A062341.P3773388236349758322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P3773388236349758322

/-! ## A062341.P13371517139307839059

`∩[A052219(n+1), A372629(n+1)]`
-/

namespace A062341.P13371517139307839059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P13371517139307839059

/-! ## A062341.P3931829261617438789

`∩[A036960(n+1), A052218(n+1)+1]`
-/

namespace A062341.P3931829261617438789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052218 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P3931829261617438789

/-! ## A062341.P6609861386634624257

`∩[A052221(n+1)-2, A372629(n+1)]`
-/

namespace A062341.P6609861386634624257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P6609861386634624257

/-! ## A062341.P15603210678911296388

`∩[A038616(n+1), A052219(n+1)]`
-/

namespace A062341.P15603210678911296388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062341.P15603210678911296388

/-!
# A062342: Primes whose sum of digits is a multiple of 8.

The programs for A062342, the canonical program `A062342.P3421117723688188329` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062342 has offset 1).

The definition of A062342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062342.P3421117723688188329

`p?[A273188(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062342

/-- `p?[A273188(n+1)]` -/
def P3421117723688188329.Spec : Prop :=
  ∀ n, P3421117723688188329.a n = A062342 (n + 1)

theorem P3421117723688188329.correct : P3421117723688188329.Spec := by
  intro n
  simp only [A062342, Nat.add_sub_cancel]

end A062342

/-! ## A062342.P2237967834627054049

`record[A006530(A273188(n+3))]`
-/

namespace A062342.P2237967834627054049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A273188 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062342.P2237967834627054049

namespace A062342

/-- `record[A006530(A273188(n+3))]` -/
def P2237967834627054049.Spec : Prop :=
  ∀ n, P2237967834627054049.a n = A062342 (n + 1)

end A062342

/-! ## A062342.P11152604691318323867

`filter[A273188(n+2), A010051(#)]`
-/

namespace A062342.P11152604691318323867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A062342.P11152604691318323867

namespace A062342

/-- `filter[A273188(n+2), A010051(#)]` -/
def P11152604691318323867.Spec : Prop :=
  ∀ n, P11152604691318323867.a n = A062342 (n + 1)

end A062342

/-! ## A062342.P17214515676408003092

`∩[A000040(n+1), A273188(n+1)]`
-/

namespace A062342.P17214515676408003092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P17214515676408003092

namespace A062342

/-- `∩[A000040(n+1), A273188(n+1)]` -/
def P17214515676408003092.Spec : Prop :=
  ∀ n, (P17214515676408003092.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P8149833556208607292

`∩[A004139(n+1), A273188(n+1)]`
-/

namespace A062342.P8149833556208607292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P8149833556208607292

namespace A062342

/-- `∩[A004139(n+1), A273188(n+1)]` -/
def P8149833556208607292.Spec : Prop :=
  ∀ n, (P8149833556208607292.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P17681859582928506627

`∩[A006005(n+1), A273188(n+1)]`
-/

namespace A062342.P17681859582928506627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P17681859582928506627

namespace A062342

/-- `∩[A006005(n+1), A273188(n+1)]` -/
def P17681859582928506627.Spec : Prop :=
  ∀ n, (P17681859582928506627.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P12630756059509583157

`∩[A008578(n+1), A273188(n+1)]`
-/

namespace A062342.P12630756059509583157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P12630756059509583157

namespace A062342

/-- `∩[A008578(n+1), A273188(n+1)]` -/
def P12630756059509583157.Spec : Prop :=
  ∀ n, (P12630756059509583157.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P15033033669577317392

`∩[A033946(n+1), A273188(n+1)]`
-/

namespace A062342.P15033033669577317392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P15033033669577317392

namespace A062342

/-- `∩[A033946(n+1), A273188(n+1)]` -/
def P15033033669577317392.Spec : Prop :=
  ∀ n, (P15033033669577317392.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P11092607205584780244

`∩[A045319(n+1), A273188(n+1)]`
-/

namespace A062342.P11092607205584780244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P11092607205584780244

namespace A062342

/-- `∩[A045319(n+1), A273188(n+1)]` -/
def P11092607205584780244.Spec : Prop :=
  ∀ n, (P11092607205584780244.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P2669476802298932984

`∩[A045344(n+1), A273188(n+1)]`
-/

namespace A062342.P2669476802298932984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P2669476802298932984

namespace A062342

/-- `∩[A045344(n+1), A273188(n+1)]` -/
def P2669476802298932984.Spec : Prop :=
  ∀ n, (P2669476802298932984.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P10800202144932667523

`∩[A046022(n+1), A273188(n+1)]`
-/

namespace A062342.P10800202144932667523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P10800202144932667523

namespace A062342

/-- `∩[A046022(n+1), A273188(n+1)]` -/
def P10800202144932667523.Spec : Prop :=
  ∀ n, (P10800202144932667523.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P11415233055404333439

`∩[A051948(n+1), A273188(n+1)]`
-/

namespace A062342.P11415233055404333439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P11415233055404333439

namespace A062342

/-- `∩[A051948(n+1), A273188(n+1)]` -/
def P11415233055404333439.Spec : Prop :=
  ∀ n, (P11415233055404333439.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P7835151088907724213

`∩[A053813(n+1), A273188(n+1)]`
-/

namespace A062342.P7835151088907724213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P7835151088907724213

namespace A062342

/-- `∩[A053813(n+1), A273188(n+1)]` -/
def P7835151088907724213.Spec : Prop :=
  ∀ n, (P7835151088907724213.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P7207285948381189330

`∩[A062338(n+1), A273188(n+1)]`
-/

namespace A062342.P7207285948381189330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P7207285948381189330

namespace A062342

/-- `∩[A062338(n+1), A273188(n+1)]` -/
def P7207285948381189330.Spec : Prop :=
  ∀ n, (P7207285948381189330.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P15147951225830216839

`∩[A062972(n+1), A273188(n+1)]`
-/

namespace A062342.P15147951225830216839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P15147951225830216839

namespace A062342

/-- `∩[A062972(n+1), A273188(n+1)]` -/
def P15147951225830216839.Spec : Prop :=
  ∀ n, (P15147951225830216839.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P5725323454005805734

`∩[A065091(n+1), A273188(n+1)]`
-/

namespace A062342.P5725323454005805734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P5725323454005805734

namespace A062342

/-- `∩[A065091(n+1), A273188(n+1)]` -/
def P5725323454005805734.Spec : Prop :=
  ∀ n, (P5725323454005805734.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P12173498248771397261

`∩[A065396(n+1), A273188(n+1)]`
-/

namespace A062342.P12173498248771397261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P12173498248771397261

namespace A062342

/-- `∩[A065396(n+1), A273188(n+1)]` -/
def P12173498248771397261.Spec : Prop :=
  ∀ n, (P12173498248771397261.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P257716420160950532

`∩[A066050(n+1), A273188(n+1)]`
-/

namespace A062342.P257716420160950532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P257716420160950532

namespace A062342

/-- `∩[A066050(n+1), A273188(n+1)]` -/
def P257716420160950532.Spec : Prop :=
  ∀ n, (P257716420160950532.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P4972916499783356499

`∩[A067126(n+1), A273188(n+1)]`
-/

namespace A062342.P4972916499783356499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P4972916499783356499

namespace A062342

/-- `∩[A067126(n+1), A273188(n+1)]` -/
def P4972916499783356499.Spec : Prop :=
  ∀ n, (P4972916499783356499.a n : ℤ) = A062342 (n + 1)

end A062342

/-! ## A062342.P98889686368246912

`∩[A070957(n+1), A273188(n+1)]`
-/

namespace A062342.P98889686368246912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062342.P98889686368246912

namespace A062342

/-- `∩[A070957(n+1), A273188(n+1)]` -/
def P98889686368246912.Spec : Prop :=
  ∀ n, (P98889686368246912.a n : ℤ) = A062342 (n + 1)

end A062342

/-!
# A062343: Primes whose sum of digits is 8.

The programs for A062343, there is no canonical definition to state claims against.
-/

/-! ## A062343.P11585743040382060067

`∩[A052222(n+1), A158571(n+1)]`
-/

namespace A062343.P11585743040382060067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P11585743040382060067

/-! ## A062343.P2121677172028253951

`∩[A052222(n+1), A372629(n+1)]`
-/

namespace A062343.P2121677172028253951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P2121677172028253951

/-! ## A062343.P9774145759194043486

`∩[A052221(n+1)+1, A372629(n+1)]`
-/

namespace A062343.P9774145759194043486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P9774145759194043486

/-! ## A062343.P2128000625205288825

`∩[A038617(n+1), A052222(n+1)]`
-/

namespace A062343.P2128000625205288825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P2128000625205288825

/-! ## A062343.P8071893131250549107

`∩[A052222(n+1), A068807(n+1)]`
-/

namespace A062343.P8071893131250549107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P8071893131250549107

/-! ## A062343.P16054150676718572560

`∩[A052222(n+1), A062342(n+1)]`
-/

namespace A062343.P16054150676718572560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P16054150676718572560

/-! ## A062343.P5530969921405308319

`∩[A062342(n+1), A158571(n+1)]`
-/

namespace A062343.P5530969921405308319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P5530969921405308319

/-! ## A062343.P6210108258307673239

`∩[A062342(n+1), A372629(n+1)]`
-/

namespace A062343.P6210108258307673239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P6210108258307673239

/-! ## A062343.P3065434068616012300

`∩[A038616(n+1), A052222(n+1)]`
-/

namespace A062343.P3065434068616012300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P3065434068616012300

/-! ## A062343.P11873964099124501612

`p?[A052222(n+1)]`
-/

namespace A062343.P11873964099124501612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062343.P11873964099124501612

/-! ## A062343.P1013411373534568086

`p?[A052221(n+1)+1]`
-/

namespace A062343.P1013411373534568086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062343.P1013411373534568086

/-! ## A062343.P1692893125361370698

`p?[A001202(A023690(n+1)+1)]`
-/

namespace A062343.P1692893125361370698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023690 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062343.P1692893125361370698

/-! ## A062343.P15972618445207138826

`∩[A052222(n+1), A061242(n+1)]`
-/

namespace A062343.P15972618445207138826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P15972618445207138826

/-! ## A062343.P17172190010818742506

`∩[A061242(n+1), A062342(n+1)]`
-/

namespace A062343.P17172190010818742506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P17172190010818742506

/-! ## A062343.P8707698968183463576

`∩[A061242(n+1), A068807(n+1)]`
-/

namespace A062343.P8707698968183463576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P8707698968183463576

/-! ## A062343.P8379593975293311741

`∩[A052222(n+1), A166567(n+1)]`
-/

namespace A062343.P8379593975293311741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P8379593975293311741

/-! ## A062343.P10551564747115950788

`∩[A061242(n+1), A158571(n+1)]`
-/

namespace A062343.P10551564747115950788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P10551564747115950788

/-! ## A062343.P16466652055767919552

`p?[A001202(A023689(n+1)+1)+1]`
-/

namespace A062343.P16466652055767919552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023689 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062343.P16466652055767919552

/-! ## A062343.P17176186027444378788

`∩[A052222(n+1), A176985(n+1)]`
-/

namespace A062343.P17176186027444378788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P17176186027444378788

/-! ## A062343.P13243849935638934812

`∩[A158571(n+1), A176985(n+1)]`
-/

namespace A062343.P13243849935638934812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062343.P13243849935638934812

/-!
# A062344: Triangle of binomial(2*n, k) with n >= k.

The programs for A062344, the canonical program `A062344.P9027567334916144000` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062344 has offset 0).

The definition of A062344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062344.P9027567334916144000

`A034870(A063656(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062344

/-- `A034870(A063656(n))` -/
def P9027567334916144000.Spec : Prop :=
  ∀ n, P9027567334916144000.a n = A062344 n

theorem P9027567334916144000.correct : P9027567334916144000.Spec := by
  intro n
  simp only [A062344]

end A062344

/-! ## A062344.P12410907471085932481

`A094527(A061579(n))`
-/

namespace A062344.P12410907471085932481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (A061579 n).toNat

end

end A062344.P12410907471085932481

namespace A062344

/-- `A094527(A061579(n))` -/
def P12410907471085932481.Spec : Prop :=
  ∀ n, P12410907471085932481.a n = A062344 n

end A062344

/-! ## A062344.P2367702488841762712

`C(2*row(n), col(n))`
-/

namespace A062344.P2367702488841762712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A062344.P2367702488841762712

namespace A062344

/-- `C(2*row(n), col(n))` -/
def P2367702488841762712.Spec : Prop :=
  ∀ n, (P2367702488841762712.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P7318752471064913495

`C(2*A003056(n), A002262(n))`
-/

namespace A062344.P7318752471064913495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A003056 n).toNat (A002262 n).toNat

end

end A062344.P7318752471064913495

namespace A062344

/-- `C(2*A003056(n), A002262(n))` -/
def P7318752471064913495.Spec : Prop :=
  ∀ n, (P7318752471064913495.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P685970988144191101

`C(2*A003056(n), A294317(n))`
-/

namespace A062344.P685970988144191101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A003056 n).toNat (A294317 n).toNat

end

end A062344.P685970988144191101

namespace A062344

/-- `C(2*A003056(n), A294317(n))` -/
def P685970988144191101.Spec : Prop :=
  ∀ n, (P685970988144191101.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P12630292799246068912

`C(2*A003056(n), log2(A059268(n)))`
-/

namespace A062344.P12630292799246068912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A003056 n).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A062344.P12630292799246068912

namespace A062344

/-- `C(2*A003056(n), log2(A059268(n)))` -/
def P12630292799246068912.Spec : Prop :=
  ∀ n, (P12630292799246068912.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P4029265279278952078

`C(A004277(A003056(n)), A002262(n))`
-/

namespace A062344.P4029265279278952078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 (A003056 n).toNat).toNat (A002262 n).toNat

end

end A062344.P4029265279278952078

namespace A062344

/-- `C(A004277(A003056(n)), A002262(n))` -/
def P4029265279278952078.Spec : Prop :=
  ∀ n, (P4029265279278952078.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P9694925728672042142

`C(A294317(n)+A002262(n), A002262(n))`
-/

namespace A062344.P9694925728672042142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n + A002262 n).toNat (A002262 n).toNat

end

end A062344.P9694925728672042142

namespace A062344

/-- `C(A294317(n)+A002262(n), A002262(n))` -/
def P9694925728672042142.Spec : Prop :=
  ∀ n, (P9694925728672042142.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P16587616767304283430

`C(A294317(n-A002262(n)), A002262(n))`
-/

namespace A062344.P16587616767304283430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 ((n : ℤ) - A002262 n).toNat).toNat (A002262 n).toNat

end

end A062344.P16587616767304283430

namespace A062344

/-- `C(A294317(n-A002262(n)), A002262(n))` -/
def P16587616767304283430.Spec : Prop :=
  ∀ n, (P16587616767304283430.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P4446747101072494963

`C(A158405(A127739(n+1))-1, A002262(n))`
-/

namespace A062344.P4446747101072494963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (A127739 (n + 1)).toNat - 1).toNat (A002262 n).toNat

end

end A062344.P4446747101072494963

namespace A062344

/-- `C(A158405(A127739(n+1))-1, A002262(n))` -/
def P4446747101072494963.Spec : Prop :=
  ∀ n, (P4446747101072494963.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P9804988311256352916

`C(A004277(A003056(n)), A057554(2*n+1))`
-/

namespace A062344.P9804988311256352916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 (A003056 n).toNat).toNat (A057554 (2 * n + 1)).toNat

end

end A062344.P9804988311256352916

namespace A062344

/-- `C(A004277(A003056(n)), A057554(2*n+1))` -/
def P9804988311256352916.Spec : Prop :=
  ∀ n, (P9804988311256352916.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P18057720721736300720

`A142243(n)/A106187(n)`
-/

namespace A062344.P18057720721736300720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142243 n : ℚ) / (A106187 n : ℚ)

end

end A062344.P18057720721736300720

namespace A062344

/-- `A142243(n)/A106187(n)` -/
def P18057720721736300720.Spec : Prop :=
  ∀ n, P18057720721736300720.a n = (A062344 n : ℚ)

end A062344

/-! ## A062344.P5304033496832105561

`A356546(n)/A092392(n)`
-/

namespace A062344.P5304033496832105561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A092392 n : ℚ)

end

end A062344.P5304033496832105561

namespace A062344

/-- `A356546(n)/A092392(n)` -/
def P5304033496832105561.Spec : Prop :=
  ∀ n, P5304033496832105561.a n = (A062344 n : ℚ)

end A062344

/-! ## A062344.P10081110307815580683

`A034868(A061885(n))`
-/

namespace A062344.P10081110307815580683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (A061885 n).toNat

end

end A062344.P10081110307815580683

namespace A062344

/-- `A034868(A061885(n))` -/
def P10081110307815580683.Spec : Prop :=
  ∀ n, P10081110307815580683.a n = A062344 n

end A062344

/-! ## A062344.P9609079344548911323

`C(A004277(A002024(n+1)-1), A057555(2*n+1)-1)`
-/

namespace A062344.P9609079344548911323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 (A002024 (n + 1) - 1).toNat).toNat (A057555 (2 * n + 1) - 1).toNat

end

end A062344.P9609079344548911323

namespace A062344

/-- `C(A004277(A002024(n+1)-1), A057555(2*n+1)-1)` -/
def P9609079344548911323.Spec : Prop :=
  ∀ n, (P9609079344548911323.a n : ℤ) = A062344 n

end A062344

/-! ## A062344.P5485725047430744447

`A069466(n)/A104684(n)`
-/

namespace A062344.P5485725047430744447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A104684 n : ℚ)

end

end A062344.P5485725047430744447

namespace A062344

/-- `A069466(n)/A104684(n)` -/
def P5485725047430744447.Spec : Prop :=
  ∀ n, P5485725047430744447.a n = (A062344 n : ℚ)

end A062344

/-! ## A062344.P7286520501486685419

`A007318(A292564(n))`
-/

namespace A062344.P7286520501486685419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A292564 n).toNat

end

end A062344.P7286520501486685419

namespace A062344

/-- `A007318(A292564(n))` -/
def P7286520501486685419.Spec : Prop :=
  ∀ n, P7286520501486685419.a n = A062344 n

end A062344

/-! ## A062344.P16876654027584156282

`A007318(A005449(A003056(n))+n)`
-/

namespace A062344.P16876654027584156282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A005449 (A003056 n).toNat + (n : ℤ)).toNat

end

end A062344.P16876654027584156282

namespace A062344

/-- `A007318(A005449(A003056(n))+n)` -/
def P16876654027584156282.Spec : Prop :=
  ∀ n, P16876654027584156282.a n = A062344 n

end A062344

/-! ## A062344.P7799780561512082561

`A097805(A341706(n+1))`
-/

namespace A062344.P7799780561512082561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A341706 (n + 1)).toNat

end

end A062344.P7799780561512082561

namespace A062344

/-- `A097805(A341706(n+1))` -/
def P7799780561512082561.Spec : Prop :=
  ∀ n, P7799780561512082561.a n = A062344 n

end A062344

/-! ## A062344.P6024284398203402256

`A133087(eq[A133087(n), A306914(n)])`
-/

namespace A062344.P6024284398203402256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133087 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062344.P6024284398203402256

namespace A062344

/-- `A133087(eq[A133087(n), A306914(n)])` -/
def P6024284398203402256.Spec : Prop :=
  ∀ n, P6024284398203402256.a n = A062344 n

end A062344

/-!
# A062346: Consider 2n tennis players; a(n) is the number of matches needed to let every possible pair play each other.

The programs for A062346, the canonical program `A062346.P16432037297902164394` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062346 has offset 2).

The definition of A062346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062346.P4280536776564239683

`ogf((3+30x+15x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A062346.P4280536776564239683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 30, 15] [1, -5, 10, -10, 5, -1] n

end

end A062346.P4280536776564239683

namespace A062346

/-- `ogf((3+30x+15x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4280536776564239683.Spec : Prop :=
  ∀ n, P4280536776564239683.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P16432037297902164394

`C(2*(n+2)²-3*(n+2)+1, 2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062346

/-- `C(2*(n+2)²-3*(n+2)+1, 2)` -/
def P16432037297902164394.Spec : Prop :=
  ∀ n, (P16432037297902164394.a n : ℤ) = A062346 (n + 2)

theorem P16432037297902164394.correct : P16432037297902164394.Spec := by
  intro n
  simp only [A062346, Nat.add_sub_cancel]

end A062346

/-! ## A062346.P11112930011799937971

`(n+2)*(n+1)*(2*(n+2)-3)*(2*(n+2)-1)/2`
-/

namespace A062346.P11112930011799937971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (n + 1) : ℤ) * ((2 * (n + 2) : ℤ) - 3) * ((2 * (n + 2) : ℤ) - 1) : ℚ) / 2

end

end A062346.P11112930011799937971

namespace A062346

/-- `(n+2)*(n+1)*(2*(n+2)-3)*(2*(n+2)-1)/2` -/
def P11112930011799937971.Spec : Prop :=
  ∀ n, P11112930011799937971.a n = (A062346 (n + 2) : ℚ)

end A062346

/-! ## A062346.P4295812836058769970

`3*A053134(n)`
-/

namespace A062346.P4295812836058769970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053134 n

end

end A062346.P4295812836058769970

namespace A062346

/-- `3*A053134(n)` -/
def P4295812836058769970.Spec : Prop :=
  ∀ n, P4295812836058769970.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P54396318838261839

`3*C(2*(n+2), 4)`
-/

namespace A062346.P54396318838261839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (2 * (n + 2)) 4

end

end A062346.P54396318838261839

namespace A062346

/-- `3*C(2*(n+2), 4)` -/
def P54396318838261839.Spec : Prop :=
  ∀ n, (P54396318838261839.a n : ℤ) = A062346 (n + 2)

end A062346

/-! ## A062346.P8174594971852513131

`lcm(2*n+3, (2*n+1)*∑[n+1])`
-/

namespace A062346.P8174594971852513131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 3) ((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A062346.P8174594971852513131

namespace A062346

/-- `lcm(2*n+3, (2*n+1)*∑[n+1])` -/
def P8174594971852513131.Spec : Prop :=
  ∀ n, (P8174594971852513131.a n : ℤ) = A062346 (n + 2)

end A062346

/-! ## A062346.P16341026357661715602

`∑[3*A100157(n+1)]`
-/

namespace A062346.P16341026357661715602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A100157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P16341026357661715602

namespace A062346

/-- `∑[3*A100157(n+1)]` -/
def P16341026357661715602.Spec : Prop :=
  ∀ n, P16341026357661715602.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P3306241449342066683

`∑[(n+1)²]*A016945(n)`
-/

namespace A062346.P3306241449342066683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016945 n

end

end A062346.P3306241449342066683

namespace A062346

/-- `∑[(n+1)²]*A016945(n)` -/
def P3306241449342066683.Spec : Prop :=
  ∀ n, P3306241449342066683.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P18323785910516905009

`A100431(n)-A053126(n+4)`
-/

namespace A062346.P18323785910516905009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100431 n - A053126 (n + 4)

end

end A062346.P18323785910516905009

namespace A062346

/-- `A100431(n)-A053126(n+4)` -/
def P18323785910516905009.Spec : Prop :=
  ∀ n, P18323785910516905009.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P305584528436003764

`A179824(n+2)+A076454(n+1)`
-/

namespace A062346.P305584528436003764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2) + A076454 (n + 1)

end

end A062346.P305584528436003764

namespace A062346

/-- `A179824(n+2)+A076454(n+1)` -/
def P305584528436003764.Spec : Prop :=
  ∀ n, P305584528436003764.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P3076547830958178709

`A002414(n+1)*A144396(n+1)`
-/

namespace A062346.P3076547830958178709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (n + 1) * A144396 (n + 1)

end

end A062346.P3076547830958178709

namespace A062346

/-- `A002414(n+1)*A144396(n+1)` -/
def P3076547830958178709.Spec : Prop :=
  ∀ n, P3076547830958178709.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P14267786651804566451

`∑[A000217(2*n+1)*A004767(n)]`
-/

namespace A062346.P14267786651804566451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) * A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P14267786651804566451

namespace A062346

/-- `∑[A000217(2*n+1)*A004767(n)]` -/
def P14267786651804566451.Spec : Prop :=
  ∀ n, P14267786651804566451.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P8205936308732664064

`Δ[n²]*A059270(n+1)`
-/

namespace A062346.P8205936308732664064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A059270 (n + 1)

end

end A062346.P8205936308732664064

namespace A062346

/-- `Δ[n²]*A059270(n+1)` -/
def P8205936308732664064.Spec : Prop :=
  ∀ n, P8205936308732664064.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P11681434112392121986

`∑[n+1]*A000466(n+1)`
-/

namespace A062346.P11681434112392121986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000466 (n + 1)

end

end A062346.P11681434112392121986

namespace A062346

/-- `∑[n+1]*A000466(n+1)` -/
def P11681434112392121986.Spec : Prop :=
  ∀ n, P11681434112392121986.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P6521949323308780987

`∑[(n+1)*A033567(n+1)]`
-/

namespace A062346.P6521949323308780987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P6521949323308780987

namespace A062346

/-- `∑[(n+1)*A033567(n+1)]` -/
def P6521949323308780987.Spec : Prop :=
  ∀ n, P6521949323308780987.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P2732951553196856476

`∑[(2*n+1)*A033991(n+1)]`
-/

namespace A062346.P2732951553196856476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A033991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P2732951553196856476

namespace A062346

/-- `∑[(2*n+1)*A033991(n+1)]` -/
def P2732951553196856476.Spec : Prop :=
  ∀ n, P2732951553196856476.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P7120315484443727439

`∑[A059270(Δ[n²])]`
-/

namespace A062346.P7120315484443727439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P7120315484443727439

namespace A062346

/-- `∑[A059270(Δ[n²])]` -/
def P7120315484443727439.Spec : Prop :=
  ∀ n, P7120315484443727439.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P5322172620727953999

`∑[∑[A335412(2*n+1)]]`
-/

namespace A062346.P5322172620727953999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335412 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P5322172620727953999

namespace A062346

/-- `∑[∑[A335412(2*n+1)]]` -/
def P5322172620727953999.Spec : Prop :=
  ∀ n, P5322172620727953999.a n = A062346 (n + 2)

end A062346

/-! ## A062346.P321335222878406675

`∑[A055112(2*n+1)/2]`
-/

namespace A062346.P321335222878406675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055112 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P321335222878406675

namespace A062346

/-- `∑[A055112(2*n+1)/2]` -/
def P321335222878406675.Spec : Prop :=
  ∀ n, P321335222878406675.a n = (A062346 (n + 2) : ℚ)

end A062346

/-! ## A062346.P13117334919393217570

`∑[∑[A003154(2*n+1)+2]]`
-/

namespace A062346.P13117334919393217570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (2 * n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062346.P13117334919393217570

namespace A062346

/-- `∑[∑[A003154(2*n+1)+2]]` -/
def P13117334919393217570.Spec : Prop :=
  ∀ n, P13117334919393217570.a n = A062346 (n + 2)

end A062346

/-!
# A062347: a(n) = (product of first n primes) modulo prime(n+1).

The programs for A062347, the canonical program `A062347.P10586268289605082187` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062347 has offset 0).

The definition of A062347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062347.P10586268289605082187

`A066909(A000040(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062347

/-- `A066909(A000040(n+1))` -/
def P10586268289605082187.Spec : Prop :=
  ∀ n, P10586268289605082187.a n = A062347 n

theorem P10586268289605082187.correct : P10586268289605082187.Spec := by
  intro n
  simp only [A062347]

end A062347

/-! ## A062347.P16987334549255792807

`A066909(A008578(n+2))`
-/

namespace A062347.P16987334549255792807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (A008578 (n + 2)).toNat

end

end A062347.P16987334549255792807

namespace A062347

/-- `A066909(A008578(n+2))` -/
def P16987334549255792807.Spec : Prop :=
  ∀ n, P16987334549255792807.a n = A062347 n

end A062347

/-! ## A062347.P7833140274685575881

`A066909(A182986(n+2))`
-/

namespace A062347.P7833140274685575881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (A182986 (n + 2)).toNat

end

end A062347.P7833140274685575881

namespace A062347

/-- `A066909(A182986(n+2))` -/
def P7833140274685575881.Spec : Prop :=
  ∀ n, P7833140274685575881.a n = A062347 n

end A062347

/-! ## A062347.P1461474774075846907

`A066909(record[A066858(n+2)])`
-/

namespace A062347.P1461474774075846907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062347.P1461474774075846907

namespace A062347

/-- `A066909(record[A066858(n+2)])` -/
def P1461474774075846907.Spec : Prop :=
  ∀ n, P1461474774075846907.a n = A062347 n

end A062347

/-! ## A062347.P3301955891631857436

`A401066(A000040(2*n+1-n))`
-/

namespace A062347.P3301955891631857436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A000040 (2 * n + 1 - n)).toNat

end

end A062347.P3301955891631857436

namespace A062347

/-- `A401066(A000040(2*n+1-n))` -/
def P3301955891631857436.Spec : Prop :=
  ∀ n, P3301955891631857436.a n = A062347 n

end A062347

/-! ## A062347.P8072736384923759591

`A401066(A006530((n+1)*A000040(n+1)))`
-/

namespace A062347.P8072736384923759591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A006530 ((n + 1 : ℤ) * A000040 (n + 1)).toNat).toNat

end

end A062347.P8072736384923759591

namespace A062347

/-- `A401066(A006530((n+1)*A000040(n+1)))` -/
def P8072736384923759591.Spec : Prop :=
  ∀ n, P8072736384923759591.a n = A062347 n

end A062347

/-! ## A062347.P15945434604411926556

`A391928(A036439(n+1))`
-/

namespace A062347.P15945434604411926556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A036439 (n + 1)).toNat

end

end A062347.P15945434604411926556

namespace A062347

/-- `A391928(A036439(n+1))` -/
def P15945434604411926556.Spec : Prop :=
  ∀ n, P15945434604411926556.a n = A062347 n

end A062347

/-! ## A062347.P1617691571757185304

`A391928(A007504(n)+2)`
-/

namespace A062347.P1617691571757185304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A007504 n + 2).toNat

end

end A062347.P1617691571757185304

namespace A062347

/-- `A391928(A007504(n)+2)` -/
def P1617691571757185304.Spec : Prop :=
  ∀ n, P1617691571757185304.a n = A062347 n

end A062347

/-! ## A062347.P3841917910197693359

`A391928(A175965(n+2))`
-/

namespace A062347.P3841917910197693359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391928 (A175965 (n + 2)).toNat

end

end A062347.P3841917910197693359

namespace A062347

/-- `A391928(A175965(n+2))` -/
def P3841917910197693359.Spec : Prop :=
  ∀ n, P3841917910197693359.a n = A062347 n

end A062347

/-! ## A062347.P16259900742192398428

`A401066(A006530(A000040(n+1)²))`
-/

namespace A062347.P16259900742192398428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401066 (A006530 (A000040 (n + 1) ^ 2).toNat).toNat

end

end A062347.P16259900742192398428

namespace A062347

/-- `A401066(A006530(A000040(n+1)²))` -/
def P16259900742192398428.Spec : Prop :=
  ∀ n, P16259900742192398428.a n = A062347 n

end A062347

/-!
# A062348: a(n) = n! / (number of distinct prime divisors of n).

The programs for A062348, the canonical program `A062348.P6754020238924388547` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062348 has offset 2).

The definition of A062348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062348.P6754020238924388547

`(n+2)!/A001221(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062348

/-- `(n+2)!/A001221(n+2)` -/
def P6754020238924388547.Spec : Prop :=
  ∀ n, P6754020238924388547.a n = (A062348 (n + 2) : ℚ)

end A062348

/-! ## A062348.P9974250938074587632

`(n+2)!/∑{e}[∏{p}[n+2, #], #]`
-/

namespace A062348.P9974250938074587632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)

end

end A062348.P9974250938074587632

namespace A062348

/-- `(n+2)!/∑{e}[∏{p}[n+2, #], #]` -/
def P9974250938074587632.Spec : Prop :=
  ∀ n, P9974250938074587632.a n = (A062348 (n + 2) : ℚ)

end A062348

/-! ## A062348.P17975731744282523242

`(n+2)!/∑{p}[n+2, gcd(#, n+1)]`
-/

namespace A062348.P17975731744282523242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd p (n + 1) : ℕ) : ℚ)

end

end A062348.P17975731744282523242

namespace A062348

/-- `(n+2)!/∑{p}[n+2, gcd(#, n+1)]` -/
def P17975731744282523242.Spec : Prop :=
  ∀ n, P17975731744282523242.a n = (A062348 (n + 2) : ℚ)

end A062348

/-! ## A062348.P3779261912716196547

`(n+2)!/∑{p}[n+2, A001222(#)]`
-/

namespace A062348.P3779261912716196547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), A001222 p : ℤ) : ℚ)

end

end A062348.P3779261912716196547

namespace A062348

/-- `(n+2)!/∑{p}[n+2, A001222(#)]` -/
def P3779261912716196547.Spec : Prop :=
  ∀ n, P3779261912716196547.a n = (A062348 (n + 2) : ℚ)

end A062348

/-! ## A062348.P14894859215656684806

`(n+2)!/A001222(∏{p}[n+2, #])`
-/

namespace A062348.P14894859215656684806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A062348.P14894859215656684806

namespace A062348

/-- `(n+2)!/A001222(∏{p}[n+2, #])` -/
def P14894859215656684806.Spec : Prop :=
  ∀ n, P14894859215656684806.a n = (A062348 (n + 2) : ℚ)

end A062348

/-! ## A062348.P5145729301563315834

`(n+2)!/∑{p}[n+2, -A008683(#)]`
-/

namespace A062348.P5145729301563315834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), (-A008683 p) : ℤ) : ℚ)

end

end A062348.P5145729301563315834

namespace A062348

/-- `(n+2)!/∑{p}[n+2, -A008683(#)]` -/
def P5145729301563315834.Spec : Prop :=
  ∀ n, P5145729301563315834.a n = (A062348 (n + 2) : ℚ)

end A062348

/-! ## A062348.P8937815811225047095

`A000142(n+2)/A001221(n+2)`
-/

namespace A062348.P8937815811225047095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A001221 (n + 2) : ℚ)

end

end A062348.P8937815811225047095

namespace A062348

/-- `A000142(n+2)/A001221(n+2)` -/
def P8937815811225047095.Spec : Prop :=
  ∀ n, P8937815811225047095.a n = (A062348 (n + 2) : ℚ)

end A062348

/-!
# A062349: a(n) = n! / (number of prime divisors of n, counted with multiplicity).

The programs for A062349, the canonical program `A062349.P8647770946984064907` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062349 has offset 2).

The definition of A062349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062349.P8647770946984064907

`(n+2)!/A001222(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062349

/-- `(n+2)!/A001222(n+2)` -/
def P8647770946984064907.Spec : Prop :=
  ∀ n, P8647770946984064907.a n = (A062349 (n + 2) : ℚ)

end A062349

/-! ## A062349.P12681742423028097085

`(n+1)!/∑{e}[n+2, #/(n+2)]`
-/

namespace A062349.P12681742423028097085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n + 2 : ℚ))

end

end A062349.P12681742423028097085

namespace A062349

/-- `(n+1)!/∑{e}[n+2, #/(n+2)]` -/
def P12681742423028097085.Spec : Prop :=
  ∀ n, P12681742423028097085.a n = (A062349 (n + 2) : ℚ)

end A062349

/-! ## A062349.P3912275513436004607

`(n+2)!/∑{p}[n+2, val(n+2, #)]`
-/

namespace A062349.P3912275513436004607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 2) p : ℕ) : ℚ)

end

end A062349.P3912275513436004607

namespace A062349

/-- `(n+2)!/∑{p}[n+2, val(n+2, #)]` -/
def P3912275513436004607.Spec : Prop :=
  ∀ n, P3912275513436004607.a n = (A062349 (n + 2) : ℚ)

end A062349

/-! ## A062349.P819056031994173213

`(n+2)*∏[n+1]/∑{e}[n+2, #]`
-/

namespace A062349.P819056031994173213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

end

end A062349.P819056031994173213

namespace A062349

/-- `(n+2)*∏[n+1]/∑{e}[n+2, #]` -/
def P819056031994173213.Spec : Prop :=
  ∀ n, P819056031994173213.a n = (A062349 (n + 2) : ℚ)

end A062349

/-! ## A062349.P10589793598173020999

`2/A001222((n+2)²)*∏[n+2]`
-/

namespace A062349.P10589793598173020999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001222 ((n + 2) ^ 2) : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A062349.P10589793598173020999

namespace A062349

/-- `2/A001222((n+2)²)*∏[n+2]` -/
def P10589793598173020999.Spec : Prop :=
  ∀ n, P10589793598173020999.a n = (A062349 (n + 2) : ℚ)

end A062349

/-! ## A062349.P13354067553512300458

`A000142(n+2)/A001222(n+2)`
-/

namespace A062349.P13354067553512300458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ)

end

end A062349.P13354067553512300458

namespace A062349

/-- `A000142(n+2)/A001222(n+2)` -/
def P13354067553512300458.Spec : Prop :=
  ∀ n, P13354067553512300458.a n = (A062349 (n + 2) : ℚ)

end A062349

/-!
# A062350: Primes having only {1, 2, 3} as digits.

The programs for A062350, the canonical program `A062350.P10684481247219108148` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062350 has offset 1).

The definition of A062350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062350.P1159774726803994651

`∩[A107715(n+1), A386085(n+1)]`
-/

namespace A062350.P1159774726803994651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P1159774726803994651

namespace A062350

/-- `∩[A107715(n+1), A386085(n+1)]` -/
def P1159774726803994651.Spec : Prop :=
  ∀ n, (P1159774726803994651.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P15263990734521116370

`∩[A107715(n+1), A386086(n+1)]`
-/

namespace A062350.P15263990734521116370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P15263990734521116370

namespace A062350

/-- `∩[A107715(n+1), A386086(n+1)]` -/
def P15263990734521116370.Spec : Prop :=
  ∀ n, (P15263990734521116370.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P9434318561859110487

`∩[A107715(n+1), A386087(n+1)]`
-/

namespace A062350.P9434318561859110487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P9434318561859110487

namespace A062350

/-- `∩[A107715(n+1), A386087(n+1)]` -/
def P9434318561859110487.Spec : Prop :=
  ∀ n, (P9434318561859110487.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P3423593759007097791

`∩[A107715(n+1), A386089(n+1)]`
-/

namespace A062350.P3423593759007097791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P3423593759007097791

namespace A062350

/-- `∩[A107715(n+1), A386089(n+1)]` -/
def P3423593759007097791.Spec : Prop :=
  ∀ n, (P3423593759007097791.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P2995212479588536376

`∩[A386085(n+1), A386086(n+1)]`
-/

namespace A062350.P2995212479588536376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P2995212479588536376

namespace A062350

/-- `∩[A386085(n+1), A386086(n+1)]` -/
def P2995212479588536376.Spec : Prop :=
  ∀ n, (P2995212479588536376.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P17475493042973433980

`∩[A107715(n+1), A386088(n+1)]`
-/

namespace A062350.P17475493042973433980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P17475493042973433980

namespace A062350

/-- `∩[A107715(n+1), A386088(n+1)]` -/
def P17475493042973433980.Spec : Prop :=
  ∀ n, (P17475493042973433980.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P12653088710886681725

`∩[A007932(n+1), A107715(n+1)]`
-/

namespace A062350.P12653088710886681725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P12653088710886681725

namespace A062350

/-- `∩[A007932(n+1), A107715(n+1)]` -/
def P12653088710886681725.Spec : Prop :=
  ∀ n, (P12653088710886681725.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P4084651774690434202

`∩[A007932(n+1), A386085(n+1)]`
-/

namespace A062350.P4084651774690434202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P4084651774690434202

namespace A062350

/-- `∩[A007932(n+1), A386085(n+1)]` -/
def P4084651774690434202.Spec : Prop :=
  ∀ n, (P4084651774690434202.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P16174085504811860876

`∩[A007932(n+1), A386086(n+1)]`
-/

namespace A062350.P16174085504811860876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P16174085504811860876

namespace A062350

/-- `∩[A007932(n+1), A386086(n+1)]` -/
def P16174085504811860876.Spec : Prop :=
  ∀ n, (P16174085504811860876.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P10864174354246339391

`∩[A007932(n+1), A386087(n+1)]`
-/

namespace A062350.P10864174354246339391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P10864174354246339391

namespace A062350

/-- `∩[A007932(n+1), A386087(n+1)]` -/
def P10864174354246339391.Spec : Prop :=
  ∀ n, (P10864174354246339391.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P10684481247219108148

`∩[A007932(n+1), A386088(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062350

/-- `∩[A007932(n+1), A386088(n+1)]` -/
def P10684481247219108148.Spec : Prop :=
  ∀ n, (P10684481247219108148.a n : ℤ) = A062350 (n + 1)

theorem P10684481247219108148.correct : P10684481247219108148.Spec := by
  intro n
  simp only [A062350, Nat.add_sub_cancel]

end A062350

/-! ## A062350.P10155603108676505006

`∩[A007932(n+1), A386089(n+1)]`
-/

namespace A062350.P10155603108676505006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P10155603108676505006

namespace A062350

/-- `∩[A007932(n+1), A386089(n+1)]` -/
def P10155603108676505006.Spec : Prop :=
  ∀ n, (P10155603108676505006.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P15276278109885745748

`∩[A007932(n+1), A386090(n+1)]`
-/

namespace A062350.P15276278109885745748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P15276278109885745748

namespace A062350

/-- `∩[A007932(n+1), A386090(n+1)]` -/
def P15276278109885745748.Spec : Prop :=
  ∀ n, (P15276278109885745748.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P17070770553551636555

`∩[A107715(n+1), A386090(n+1)]`
-/

namespace A062350.P17070770553551636555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P17070770553551636555

namespace A062350

/-- `∩[A107715(n+1), A386090(n+1)]` -/
def P17070770553551636555.Spec : Prop :=
  ∀ n, (P17070770553551636555.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P9655238351533054860

`∩[A386090(n+1), A386087(n+1)]`
-/

namespace A062350.P9655238351533054860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P9655238351533054860

namespace A062350

/-- `∩[A386090(n+1), A386087(n+1)]` -/
def P9655238351533054860.Spec : Prop :=
  ∀ n, (P9655238351533054860.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P8584196688760175841

`∩[A007932(n+1), A036956(n+1)]`
-/

namespace A062350.P8584196688760175841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P8584196688760175841

namespace A062350

/-- `∩[A007932(n+1), A036956(n+1)]` -/
def P8584196688760175841.Spec : Prop :=
  ∀ n, (P8584196688760175841.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P5687412421128019056

`∩[A036956(n+1), A386086(n+1)]`
-/

namespace A062350.P5687412421128019056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P5687412421128019056

namespace A062350

/-- `∩[A036956(n+1), A386086(n+1)]` -/
def P5687412421128019056.Spec : Prop :=
  ∀ n, (P5687412421128019056.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P15497088778512271912

`∩[A036956(n+1), A386087(n+1)]`
-/

namespace A062350.P15497088778512271912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P15497088778512271912

namespace A062350

/-- `∩[A036956(n+1), A386087(n+1)]` -/
def P15497088778512271912.Spec : Prop :=
  ∀ n, (P15497088778512271912.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P1752714951075084459

`∩[A036956(n+1), A386088(n+1)]`
-/

namespace A062350.P1752714951075084459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P1752714951075084459

namespace A062350

/-- `∩[A036956(n+1), A386088(n+1)]` -/
def P1752714951075084459.Spec : Prop :=
  ∀ n, (P1752714951075084459.a n : ℤ) = A062350 (n + 1)

end A062350

/-! ## A062350.P13465944801324806597

`∩[A036956(n+1), A386089(n+1)]`
-/

namespace A062350.P13465944801324806597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062350.P13465944801324806597

namespace A062350

/-- `∩[A036956(n+1), A386089(n+1)]` -/
def P13465944801324806597.Spec : Prop :=
  ∀ n, (P13465944801324806597.a n : ℤ) = A062350 (n + 1)

end A062350

/-!
# A062351: Palindromic primes with strictly increasing digits up to the middle and then strictly decreasing.

The programs for A062351, there is no canonical definition to state claims against.
-/

/-! ## A062351.P10255795052825763381

`∩[A084836(n+1), A343524(n+1)]`
-/

namespace A062351.P10255795052825763381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062351.P10255795052825763381

/-! ## A062351.P587975777091367514

`∩[A002385(n+1), A343524(n+1)]`
-/

namespace A062351.P587975777091367514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062351.P587975777091367514

/-! ## A062351.P17708611967854426741

`∩[A072299(n+1), A343524(n+1)]`
-/

namespace A062351.P17708611967854426741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062351.P17708611967854426741

/-! ## A062351.P18370257129213929418

`∩[A232183(n+1), A343524(n+1)]`
-/

namespace A062351.P18370257129213929418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062351.P18370257129213929418

/-! ## A062351.P2554431836664518787

`∩[A180440(n+1), A343524(n+1)]`
-/

namespace A062351.P2554431836664518787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062351.P2554431836664518787

/-!
# A062352: Palindromic primes with strictly decreasing digits up to the middle and then strictly increasing.

The programs for A062352, there is no canonical definition to state claims against.
-/

/-! ## A062352.P9766366630119909951

`A084837(A033620(n+1)%A217934(2*n+5))`
-/

namespace A062352.P9766366630119909951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084837 (Int.tmod (A033620 (n + 1)) (A217934 (2 * n + 5))).toNat

end

end A062352.P9766366630119909951

/-! ## A062352.P9863375566030917180

`A084837(A322847(n+1))^Δ[A055645(n)]`
-/

namespace A062352.P9863375566030917180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084837 (A322847 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062352.P9863375566030917180

/-! ## A062352.P3390659388411906998

`A084837(A033620(n+1)%A018952(n+2))`
-/

namespace A062352.P3390659388411906998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084837 (Int.tmod (A033620 (n + 1)) (A018952 (n + 2))).toNat

end

end A062352.P3390659388411906998

/-! ## A062352.P5080867388803077409

`A084837(A322847(n+1)%A018952(n+2))`
-/

namespace A062352.P5080867388803077409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084837 (Int.tmod (A322847 (n + 1)) (A018952 (n + 2))).toNat

end

end A062352.P5080867388803077409

/-! ## A062352.P12880252894209560332

`A084837(Δ[A055645(n)]²*A322847(n+1))`
-/

namespace A062352.P12880252894209560332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084837 ((f1 (n + 1) - f1 n) ^ 2 * A322847 (n + 1)).toNat

end

end A062352.P12880252894209560332

/-!
# A062353: Primes of the form bbbbba... where a and b are digits.

The programs for A062353, there is no canonical definition to state claims against.
-/

/-! ## A062353.P16222960564162846529

`A030291(lt[A236248(n+1), A028908(3*n+1)])`
-/

namespace A062353.P16222960564162846529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028908 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062353.P16222960564162846529

/-!
# A062354: a(n) = sigma(n)*phi(n).

The programs for A062354, the canonical program `A062354.P12090896162141185075` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062354 has offset 1).

The definition of A062354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A000010(n+1)` (program `A062354.P12090896162141185075`, by `A062354.P12090896162141185075.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062354.P12090896162141185075

`A000203(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062354

/-- `A000203(n+1)*A000010(n+1)` -/
def P12090896162141185075.Spec : Prop :=
  ∀ n, P12090896162141185075.a n = A062354 (n + 1)

theorem P12090896162141185075.correct : P12090896162141185075.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel]

end A062354

/-! ## A062354.P13583053230066252770

`∑{d}[n+1, A386624(#)]`
-/

namespace A062354.P13583053230066252770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A386624 d

end

end A062354.P13583053230066252770

namespace A062354

/-- `∑{d}[n+1, A386624(#)]` -/
def P13583053230066252770.Spec : Prop :=
  ∀ n, P13583053230066252770.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P13228127105024454985

`n²-A324331(n+1)`
-/

namespace A062354.P13228127105024454985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A324331 (n + 1)

end

end A062354.P13228127105024454985

namespace A062354

/-- `n²-A324331(n+1)` -/
def P13228127105024454985.Spec : Prop :=
  ∀ n, P13228127105024454985.a n = A062354 (n + 1)

theorem P13228127105024454985.correct : P13228127105024454985.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel, A062354.P13228127105024454985.a, A062354.P12090896162141185075.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A324331, A324331.P7732218609313798886.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062354

/-! ## A062354.P10699751563242988088

`(n+1)²-A069249(n+1)`
-/

namespace A062354.P10699751563242988088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A069249 (n + 1)

end

end A062354.P10699751563242988088

namespace A062354

/-- `(n+1)²-A069249(n+1)` -/
def P10699751563242988088.Spec : Prop :=
  ∀ n, P10699751563242988088.a n = A062354 (n + 1)

theorem P10699751563242988088.correct : P10699751563242988088.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel, A062354.P10699751563242988088.a, A062354.P12090896162141185075.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069249, A069249.P7873536691773802356.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062354

/-! ## A062354.P6940403869873467474

`Δ[A005728(n)]*∑{d}[n+1, #]`
-/

namespace A062354.P6940403869873467474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A062354.P6940403869873467474

namespace A062354

/-- `Δ[A005728(n)]*∑{d}[n+1, #]` -/
def P6940403869873467474.Spec : Prop :=
  ∀ n, P6940403869873467474.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P9955716616785319942

`∑{d}[n+1, #*A000010(n+1)]`
-/

namespace A062354.P9955716616785319942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000010 (n + 1)

end

end A062354.P9955716616785319942

namespace A062354

/-- `∑{d}[n+1, #*A000010(n+1)]` -/
def P9955716616785319942.Spec : Prop :=
  ∀ n, P9955716616785319942.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P5732553248545841218

`∑{d}[n+1, #]*A349137(Δ[n²])`
-/

namespace A062354.P5732553248545841218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A349137 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A062354.P5732553248545841218

namespace A062354

/-- `∑{d}[n+1, #]*A349137(Δ[n²])` -/
def P5732553248545841218.Spec : Prop :=
  ∀ n, P5732553248545841218.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P10325208879060948199

`sqrt(A127473(n+1))*∑{d}[n+1, #]`
-/

namespace A062354.P10325208879060948199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ)

end

end A062354.P10325208879060948199

namespace A062354

/-- `sqrt(A127473(n+1))*∑{d}[n+1, #]` -/
def P10325208879060948199.Spec : Prop :=
  ∀ n, P10325208879060948199.a n = (A062354 (n + 1) : ℝ)

end A062354

/-! ## A062354.P14097342873908703840

`Δ[A002088(n)]*Δ[A160664(n)]`
-/

namespace A062354.P14097342873908703840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A062354.P14097342873908703840

namespace A062354

/-- `Δ[A002088(n)]*Δ[A160664(n)]` -/
def P14097342873908703840.Spec : Prop :=
  ∀ n, P14097342873908703840.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P10900605698076890705

`Δ[A005728(n)]*Δ[A160664(n)]`
-/

namespace A062354.P10900605698076890705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A062354.P10900605698076890705

namespace A062354

/-- `Δ[A005728(n)]*Δ[A160664(n)]` -/
def P10900605698076890705.Spec : Prop :=
  ∀ n, P10900605698076890705.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P12505750984787290727

`A000203(n+1)*Δ[A002088(n)]`
-/

namespace A062354.P12505750984787290727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062354.P12505750984787290727

namespace A062354

/-- `A000203(n+1)*Δ[A002088(n)]` -/
def P12505750984787290727.Spec : Prop :=
  ∀ n, P12505750984787290727.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P4701125245344943965

`A000203(n+1)*Δ[A005728(n)]`
-/

namespace A062354.P4701125245344943965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062354.P4701125245344943965

namespace A062354

/-- `A000203(n+1)*Δ[A005728(n)]` -/
def P4701125245344943965.Spec : Prop :=
  ∀ n, P4701125245344943965.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P1428824471459128519

`A000010(n+1)*Δ[A160664(n)]`
-/

namespace A062354.P1428824471459128519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062354.P1428824471459128519

namespace A062354

/-- `A000010(n+1)*Δ[A160664(n)]` -/
def P1428824471459128519.Spec : Prop :=
  ∀ n, P1428824471459128519.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P7301125258628223606

`A007517(n+1)+A002618(n+1)`
-/

namespace A062354.P7301125258628223606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007517 (n + 1) + A002618 (n + 1)

end

end A062354.P7301125258628223606

namespace A062354

/-- `A007517(n+1)+A002618(n+1)` -/
def P7301125258628223606.Spec : Prop :=
  ∀ n, P7301125258628223606.a n = A062354 (n + 1)

theorem P7301125258628223606.correct : P7301125258628223606.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel, A062354.P7301125258628223606.a, A062354.P12090896162141185075.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002618, A002618.P8397693677428532773.a, A007517, A007517.P15231311022357601297.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062354

/-! ## A062354.P177868178230287591

`A391701(n+1)+A062355(n+1)`
-/

namespace A062354.P177868178230287591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391701 (n + 1) + A062355 (n + 1)

end

end A062354.P177868178230287591

namespace A062354

/-- `A391701(n+1)+A062355(n+1)` -/
def P177868178230287591.Spec : Prop :=
  ∀ n, P177868178230287591.a n = A062354 (n + 1)

theorem P177868178230287591.correct : P177868178230287591.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel, A062354.P177868178230287591.a, A062354.P12090896162141185075.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062355, A062355.P11902626262927596143.a, A391701, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062354

/-! ## A062354.P61788410329152902

`A072779(n+1)-A001157(n+1)`
-/

namespace A062354.P61788410329152902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072779 (n + 1) - A001157 (n + 1)

end

end A062354.P61788410329152902

namespace A062354

/-- `A072779(n+1)-A001157(n+1)` -/
def P61788410329152902.Spec : Prop :=
  ∀ n, P61788410329152902.a n = A062354 (n + 1)

theorem P61788410329152902.correct : P61788410329152902.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel, A062354.P61788410329152902.a, A062354.P12090896162141185075.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A072779, A072779.P6312362607993792786.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062354

/-! ## A062354.P11860990013689073145

`A000010(n+1)*A000203(n+1)`
-/

namespace A062354.P11860990013689073145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000203 (n + 1)

end

end A062354.P11860990013689073145

namespace A062354

/-- `A000010(n+1)*A000203(n+1)` -/
def P11860990013689073145.Spec : Prop :=
  ∀ n, P11860990013689073145.a n = A062354 (n + 1)

theorem P11860990013689073145.correct : P11860990013689073145.Spec := by
  intro n
  simp only [A062354, Nat.add_sub_cancel, A062354.P11860990013689073145.a, A062354.P12090896162141185075.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062354

/-! ## A062354.P3432228540099570467

`A009223(n+1)*A009286(n+1)`
-/

namespace A062354.P3432228540099570467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1) * A009286 (n + 1)

end

end A062354.P3432228540099570467

namespace A062354

/-- `A009223(n+1)*A009286(n+1)` -/
def P3432228540099570467.Spec : Prop :=
  ∀ n, P3432228540099570467.a n = A062354 (n + 1)

end A062354

/-! ## A062354.P10560366382899740074

`A070943(n+1)/A000252(n+1)`
-/

namespace A062354.P10560366382899740074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070943 (n + 1) : ℚ) / (A000252 (n + 1) : ℚ)

end

end A062354.P10560366382899740074

namespace A062354

/-- `A070943(n+1)/A000252(n+1)` -/
def P10560366382899740074.Spec : Prop :=
  ∀ n, P10560366382899740074.a n = (A062354 (n + 1) : ℚ)

end A062354

/-! ## A062354.P3918194341552668617

`abs(Δ[A330725(n)]*A000010(n+1))`
-/

namespace A062354.P3918194341552668617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000010 (n + 1)|

end

end A062354.P3918194341552668617

namespace A062354

/-- `abs(Δ[A330725(n)]*A000010(n+1))` -/
def P3918194341552668617.Spec : Prop :=
  ∀ n, P3918194341552668617.a n = A062354 (n + 1)

end A062354

/-!
# A062355: a(n) = d(n) * phi(n), where d(n) is the number of divisors function.

The programs for A062355, the canonical program `A062355.P11902626262927596143` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062355 has offset 1).

The definition of A062355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062355.P11902626262927596143

`A000005(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062355

/-- `A000005(n+1)*A000010(n+1)` -/
def P11902626262927596143.Spec : Prop :=
  ∀ n, P11902626262927596143.a n = A062355 (n + 1)

theorem P11902626262927596143.correct : P11902626262927596143.Spec := by
  intro n
  simp only [A062355, Nat.add_sub_cancel]

end A062355

/-! ## A062355.P12026838531053930106

`A003557(n+1)*A304408(n+1)`
-/

namespace A062355.P12026838531053930106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A304408 (n + 1)

end

end A062355.P12026838531053930106

namespace A062355

/-- `A003557(n+1)*A304408(n+1)` -/
def P12026838531053930106.Spec : Prop :=
  ∀ n, P12026838531053930106.a n = A062355 (n + 1)

theorem P12026838531053930106.correct : P12026838531053930106.Spec := by
  intro n
  simp only [A062355, Nat.add_sub_cancel, A062355.P12026838531053930106.a, A062355.P11902626262927596143.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A304408, A304408.P687258008927875395.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062355

/-! ## A062355.P5713966099988313625

`A173557(n+1)*A318519(n+1)`
-/

namespace A062355.P5713966099988313625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A318519 (n + 1)

end

end A062355.P5713966099988313625

namespace A062355

/-- `A173557(n+1)*A318519(n+1)` -/
def P5713966099988313625.Spec : Prop :=
  ∀ n, P5713966099988313625.a n = A062355 (n + 1)

theorem P5713966099988313625.correct : P5713966099988313625.Spec := by
  intro n
  simp only [A062355, Nat.add_sub_cancel, A062355.P5713966099988313625.a, A062355.P11902626262927596143.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A318519, A318519.P15155889368844815815.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062355

/-! ## A062355.P4484955327709544652

`∑{d}[n+1, A359954(#)]`
-/

namespace A062355.P4484955327709544652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359954 d

end

end A062355.P4484955327709544652

namespace A062355

/-- `∑{d}[n+1, A359954(#)]` -/
def P4484955327709544652.Spec : Prop :=
  ∀ n, P4484955327709544652.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P13493543271342899227

`A079535(n+1)+1+n`
-/

namespace A062355.P13493543271342899227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) + 1 + (n : ℤ)

end

end A062355.P13493543271342899227

namespace A062355

/-- `A079535(n+1)+1+n` -/
def P13493543271342899227.Spec : Prop :=
  ∀ n, P13493543271342899227.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P12675860464853325774

`A062816(n+1)+2*(n+1)`
-/

namespace A062355.P12675860464853325774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062816 (n + 1) + (2 * (n + 1) : ℤ)

end

end A062355.P12675860464853325774

namespace A062355

/-- `A062816(n+1)+2*(n+1)` -/
def P12675860464853325774.Spec : Prop :=
  ∀ n, P12675860464853325774.a n = A062355 (n + 1)

theorem P12675860464853325774.correct : P12675860464853325774.Spec := by
  intro n
  simp only [A062355, Nat.add_sub_cancel, A062355.P12675860464853325774.a, A062355.P11902626262927596143.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A062816, A062816.P6661153086151831594.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062355

/-! ## A062355.P16883939160022758310

`∑{d}[n+1, A000010(lcm(#, n+1))]`
-/

namespace A062355.P16883939160022758310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Nat.lcm d (n + 1))

end

end A062355.P16883939160022758310

namespace A062355

/-- `∑{d}[n+1, A000010(lcm(#, n+1))]` -/
def P16883939160022758310.Spec : Prop :=
  ∀ n, P16883939160022758310.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P13386251291679449923

`Δ[A005728(n)]*Δ[A006218(n)]`
-/

namespace A062355.P13386251291679449923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A062355.P13386251291679449923

namespace A062355

/-- `Δ[A005728(n)]*Δ[A006218(n)]` -/
def P13386251291679449923.Spec : Prop :=
  ∀ n, P13386251291679449923.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P4748375180440135841

`Δ[A005728(n)]*Δ[A054519(n)]`
-/

namespace A062355.P4748375180440135841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A062355.P4748375180440135841

namespace A062355

/-- `Δ[A005728(n)]*Δ[A054519(n)]` -/
def P4748375180440135841.Spec : Prop :=
  ∀ n, P4748375180440135841.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P13366393703811587307

`A000005(n+1)*Δ[A002088(n)]`
-/

namespace A062355.P13366393703811587307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062355.P13366393703811587307

namespace A062355

/-- `A000005(n+1)*Δ[A002088(n)]` -/
def P13366393703811587307.Spec : Prop :=
  ∀ n, P13366393703811587307.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P9548292165033463362

`A000005(n+1)*Δ[A005728(n)]`
-/

namespace A062355.P9548292165033463362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062355.P9548292165033463362

namespace A062355

/-- `A000005(n+1)*Δ[A005728(n)]` -/
def P9548292165033463362.Spec : Prop :=
  ∀ n, P9548292165033463362.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P5050713258506687271

`A000010(n+1)*Δ[A006218(n)]`
-/

namespace A062355.P5050713258506687271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062355.P5050713258506687271

namespace A062355

/-- `A000010(n+1)*Δ[A006218(n)]` -/
def P5050713258506687271.Spec : Prop :=
  ∀ n, P5050713258506687271.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P6885488539505926832

`A000010(n+1)*Δ[A054519(n)]`
-/

namespace A062355.P6885488539505926832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (f1 (n + 1) - f1 n)

end

end A062355.P6885488539505926832

namespace A062355

/-- `A000010(n+1)*Δ[A054519(n)]` -/
def P6885488539505926832.Spec : Prop :=
  ∀ n, P6885488539505926832.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P126062535252560136

`A079536(n+1)+A000203(n+1)`
-/

namespace A062355.P126062535252560136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079536 (n + 1) + A000203 (n + 1)

end

end A062355.P126062535252560136

namespace A062355

/-- `A079536(n+1)+A000203(n+1)` -/
def P126062535252560136.Spec : Prop :=
  ∀ n, P126062535252560136.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P2193452738510022853

`A062354(n+1)-A391701(n+1)`
-/

namespace A062355.P2193452738510022853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A391701 (n + 1)

end

end A062355.P2193452738510022853

namespace A062355

/-- `A062354(n+1)-A391701(n+1)` -/
def P2193452738510022853.Spec : Prop :=
  ∀ n, P2193452738510022853.a n = A062355 (n + 1)

theorem P2193452738510022853.correct : P2193452738510022853.Spec := by
  intro n
  simp only [A062355, Nat.add_sub_cancel, A062355.P2193452738510022853.a, A062355.P11902626262927596143.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A062354, A062354.P12090896162141185075.a, A391701, A391701.P296484889807869590.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062355

/-! ## A062355.P7764306886844834415

`A110601(n+1)/A000005(n+1)`
-/

namespace A062355.P7764306886844834415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110601 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062355.P7764306886844834415

namespace A062355

/-- `A110601(n+1)/A000005(n+1)` -/
def P7764306886844834415.Spec : Prop :=
  ∀ n, P7764306886844834415.a n = (A062355 (n + 1) : ℚ)

end A062355

/-! ## A062355.P12268921044273148288

`A126775(n+1)/A000010(n+1)`
-/

namespace A062355.P12268921044273148288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126775 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A062355.P12268921044273148288

namespace A062355

/-- `A126775(n+1)/A000010(n+1)` -/
def P12268921044273148288.Spec : Prop :=
  ∀ n, P12268921044273148288.a n = (A062355 (n + 1) : ℚ)

end A062355

/-! ## A062355.P13969687373916420410

`abs(A000010(n+1)*A329484(n+1))`
-/

namespace A062355.P13969687373916420410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (n + 1) * A329484 (n + 1)|

end

end A062355.P13969687373916420410

namespace A062355

/-- `abs(A000010(n+1)*A329484(n+1))` -/
def P13969687373916420410.Spec : Prop :=
  ∀ n, P13969687373916420410.a n = A062355 (n + 1)

end A062355

/-! ## A062355.P15281846592309322801

`sqrt(A035116(n+1))*A000010(n+1)`
-/

namespace A062355.P15281846592309322801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) * (A000010 (n + 1) : ℝ)

end

end A062355.P15281846592309322801

namespace A062355

/-- `sqrt(A035116(n+1))*A000010(n+1)` -/
def P15281846592309322801.Spec : Prop :=
  ∀ n, P15281846592309322801.a n = (A062355 (n + 1) : ℝ)

end A062355

/-! ## A062355.P8748244203845063934

`sqrt(A127473(n+1))*A000005(n+1)`
-/

namespace A062355.P8748244203845063934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) * (A000005 (n + 1) : ℝ)

end

end A062355.P8748244203845063934

namespace A062355

/-- `sqrt(A127473(n+1))*A000005(n+1)` -/
def P8748244203845063934.Spec : Prop :=
  ∀ n, P8748244203845063934.a n = (A062355 (n + 1) : ℝ)

end A062355

/-!
# A062356: a(n) = floor(n/phi(n)).

The programs for A062356, the canonical program `A062356.P12529185850995038875` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062356 has offset 1).

The definition of A062356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/A000010(n+1))` (program `A062356.P12529185850995038875`, by `A062356.P12529185850995038875.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062356.P12529185850995038875

`floor((n+1)/A000010(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062356

/-- `floor((n+1)/A000010(n+1))` -/
def P12529185850995038875.Spec : Prop :=
  ∀ n, P12529185850995038875.a n = A062356 (n + 1)

theorem P12529185850995038875.correct : P12529185850995038875.Spec := by
  intro n
  simp only [A062356, Nat.add_sub_cancel]

end A062356

/-! ## A062356.P16321656624759073194

`floor(∏{p}[n+1, #/(#-1)])`
-/

namespace A062356.P16321656624759073194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / ((p : ℤ) - 1 : ℚ)⌋

end

end A062356.P16321656624759073194

namespace A062356

/-- `floor(∏{p}[n+1, #/(#-1)])` -/
def P16321656624759073194.Spec : Prop :=
  ∀ n, P16321656624759073194.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P14603335904880628348

`floor((n+1)/Δ[A005728(n)])`
-/

namespace A062356.P14603335904880628348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A062356.P14603335904880628348

namespace A062356

/-- `floor((n+1)/Δ[A005728(n)])` -/
def P14603335904880628348.Spec : Prop :=
  ∀ n, P14603335904880628348.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P17716770302815013733

`floor((n+1)/Δ[A100449(n)/4])`
-/

namespace A062356.P17716770302815013733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n)⌋

end

end A062356.P17716770302815013733

namespace A062356

/-- `floor((n+1)/Δ[A100449(n)/4])` -/
def P17716770302815013733.Spec : Prop :=
  ∀ n, P17716770302815013733.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P530880597995771261

`floor((n+1)/(A109606(n+1)+1))`
-/

namespace A062356.P530880597995771261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A109606 (n + 1) + 1 : ℚ)⌋

end

end A062356.P530880597995771261

namespace A062356

/-- `floor((n+1)/(A109606(n+1)+1))` -/
def P530880597995771261.Spec : Prop :=
  ∀ n, P530880597995771261.a n = A062356 (n + 1)

theorem P530880597995771261.correct : P530880597995771261.Spec := by
  intro n
  simp only [A062356, Nat.add_sub_cancel, A062356.P530880597995771261.a, A062356.P12529185850995038875.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062356

/-! ## A062356.P575477016897956239

`floor((n+1)/(A039649(n+1)-1))`
-/

namespace A062356.P575477016897956239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A039649 (n + 1) - 1 : ℚ)⌋

end

end A062356.P575477016897956239

namespace A062356

/-- `floor((n+1)/(A039649(n+1)-1))` -/
def P575477016897956239.Spec : Prop :=
  ∀ n, P575477016897956239.a n = A062356 (n + 1)

theorem P575477016897956239.correct : P575477016897956239.Spec := by
  intro n
  simp only [A062356, Nat.add_sub_cancel, A062356.P575477016897956239.a, A062356.P12529185850995038875.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062356

/-! ## A062356.P17975791442254592047

`floor(A077582(n+1)/A000124(n))`
-/

namespace A062356.P17975791442254592047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077582 (n + 1) : ℚ) / (A000124 n : ℚ)⌋

end

end A062356.P17975791442254592047

namespace A062356

/-- `floor(A077582(n+1)/A000124(n))` -/
def P17975791442254592047.Spec : Prop :=
  ∀ n, P17975791442254592047.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P11131486419522054655

`floor(A213398(n)/A002618(n+1))`
-/

namespace A062356.P11131486419522054655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213398 n : ℚ) / (A002618 (n + 1) : ℚ)⌋

end

end A062356.P11131486419522054655

namespace A062356

/-- `floor(A213398(n)/A002618(n+1))` -/
def P11131486419522054655.Spec : Prop :=
  ∀ n, P11131486419522054655.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P5102743990824380318

`floor(∑[A005408(n)]/A002618(n+1))`
-/

namespace A062356.P5102743990824380318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A002618 (n + 1) : ℚ)⌋

end

end A062356.P5102743990824380318

namespace A062356

/-- `floor(∑[A005408(n)]/A002618(n+1))` -/
def P5102743990824380318.Spec : Prop :=
  ∀ n, P5102743990824380318.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P6689010433839400517

`floor(A000082(n+1)/A007434(n+1))`
-/

namespace A062356.P6689010433839400517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000082 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)⌋

end

end A062356.P6689010433839400517

namespace A062356

/-- `floor(A000082(n+1)/A007434(n+1))` -/
def P6689010433839400517.Spec : Prop :=
  ∀ n, P6689010433839400517.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P6396659693245541587

`floor(A007947(n+1)/A173557(n+1))`
-/

namespace A062356.P6396659693245541587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007947 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)⌋

end

end A062356.P6396659693245541587

namespace A062356

/-- `floor(A007947(n+1)/A173557(n+1))` -/
def P6396659693245541587.Spec : Prop :=
  ∀ n, P6396659693245541587.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P9606243207674925610

`floor(A109395(n+1)/A076512(n+1))`
-/

namespace A062356.P9606243207674925610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A109395 (n + 1) : ℚ) / (A076512 (n + 1) : ℚ)⌋

end

end A062356.P9606243207674925610

namespace A062356

/-- `floor(A109395(n+1)/A076512(n+1))` -/
def P9606243207674925610.Spec : Prop :=
  ∀ n, P9606243207674925610.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P8187723466358116901

`floor(abs(A007947(n+1)/A023900(n+1)))`
-/

namespace A062356.P8187723466358116901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A007947 (n + 1) : ℚ) / (A023900 (n + 1) : ℚ)|⌋

end

end A062356.P8187723466358116901

namespace A062356

/-- `floor(abs(A007947(n+1)/A023900(n+1)))` -/
def P8187723466358116901.Spec : Prop :=
  ∀ n, P8187723466358116901.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P17140536890934590947

`floor((n+1)/(A046073(n+1)*A060594(n+1)))`
-/

namespace A062356.P17140536890934590947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A046073 (n + 1) * A060594 (n + 1) : ℚ)⌋

end

end A062356.P17140536890934590947

namespace A062356

/-- `floor((n+1)/(A046073(n+1)*A060594(n+1)))` -/
def P17140536890934590947.Spec : Prop :=
  ∀ n, P17140536890934590947.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P1297009178710900255

`floor((n+1)/Δ[A206297(n+1)/2])`
-/

namespace A062356.P1297009178710900255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n)⌋

end

end A062356.P1297009178710900255

namespace A062356

/-- `floor((n+1)/Δ[A206297(n+1)/2])` -/
def P1297009178710900255.Spec : Prop :=
  ∀ n, P1297009178710900255.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P5966883320426893807

`val(A000079(n+1), A000079(A000010(n+1)))`
-/

namespace A062356.P5966883320426893807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 1)).toNat (A000079 (A000010 (n + 1)).toNat).toNat

end

end A062356.P5966883320426893807

namespace A062356

/-- `val(A000079(n+1), A000079(A000010(n+1)))` -/
def P5966883320426893807.Spec : Prop :=
  ∀ n, (P5966883320426893807.a n : ℤ) = A062356 (n + 1)

end A062356

/-! ## A062356.P6314326358706476942

`floor((n+1)/A002260(C(A039649(n+1), 2))%(n+2))`
-/

namespace A062356.P6314326358706476942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.tmod (A002260 (Nat.choose (A039649 (n + 1)).toNat 2)) (n + 2 : ℤ) : ℚ)⌋

end

end A062356.P6314326358706476942

namespace A062356

/-- `floor((n+1)/A002260(C(A039649(n+1), 2))%(n+2))` -/
def P6314326358706476942.Spec : Prop :=
  ∀ n, P6314326358706476942.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P11389431880937932574

`floor((n+1)/A282634(∑[n]+1))`
-/

namespace A062356.P11389431880937932574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)⌋

end

end A062356.P11389431880937932574

namespace A062356

/-- `floor((n+1)/A282634(∑[n]+1))` -/
def P11389431880937932574.Spec : Prop :=
  ∀ n, P11389431880937932574.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P1777349220323624612

`ceil(log2(A007978((n+1)²)))`
-/

namespace A062356.P1777349220323624612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A007978 ((n + 1) ^ 2) : ℝ)⌉

end

end A062356.P1777349220323624612

namespace A062356

/-- `ceil(log2(A007978((n+1)²)))` -/
def P1777349220323624612.Spec : Prop :=
  ∀ n, P1777349220323624612.a n = A062356 (n + 1)

end A062356

/-! ## A062356.P6177642288123544799

`A001511(A105770(n))`
-/

namespace A062356.P6177642288123544799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A105770 n).toNat

end

end A062356.P6177642288123544799

namespace A062356

/-- `A001511(A105770(n))` -/
def P6177642288123544799.Spec : Prop :=
  ∀ n, P6177642288123544799.a n = A062356 (n + 1)

end A062356

/-!
# A062357: a(n) = n*p(n+1)-(n+1)*p(n) = n*d(n)-p(n), where p(n) is the n-th prime and d(n) is the n-th prime-difference, A001223(n).

The programs for A062357, the canonical program `A062357.P6547862121818116138` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062357 has offset 1).

The definition of A062357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000040(n+2)-(n+2)*A000040(n+1)` (program `A062357.P6547862121818116138`, by `A062357.P6547862121818116138.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062357.P4018359812626694506

`(n+1)*A001223(n+1)-A000040(n+1)`
-/

namespace A062357.P4018359812626694506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001223 (n + 1) - A000040 (n + 1)

end

end A062357.P4018359812626694506

namespace A062357

/-- `(n+1)*A001223(n+1)-A000040(n+1)` -/
def P4018359812626694506.Spec : Prop :=
  ∀ n, P4018359812626694506.a n = A062357 (n + 1)

theorem P4018359812626694506.correct : P4018359812626694506.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P4018359812626694506.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P6547862121818116138

`(n+1)*A000040(n+2)-(n+2)*A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062357

/-- `(n+1)*A000040(n+2)-(n+2)*A000040(n+1)` -/
def P6547862121818116138.Spec : Prop :=
  ∀ n, P6547862121818116138.a n = A062357 (n + 1)

theorem P6547862121818116138.correct : P6547862121818116138.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel]

end A062357

/-! ## A062357.P1618563083005745358

`A033287(n)-A001043(n+1)`
-/

namespace A062357.P1618563083005745358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A001043 (n + 1)

end

end A062357.P1618563083005745358

namespace A062357

/-- `A033287(n)-A001043(n+1)` -/
def P1618563083005745358.Spec : Prop :=
  ∀ n, P1618563083005745358.a n = A062357 (n + 1)

theorem P1618563083005745358.correct : P1618563083005745358.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P1618563083005745358.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A033287, A033287.P5066765549217672205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P17569608645159817640

`A033287(n)-A011974(n+2)`
-/

namespace A062357.P17569608645159817640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A011974 (n + 2)

end

end A062357.P17569608645159817640

namespace A062357

/-- `A033287(n)-A011974(n+2)` -/
def P17569608645159817640.Spec : Prop :=
  ∀ n, P17569608645159817640.a n = A062357 (n + 1)

end A062357

/-! ## A062357.P2082966408629548434

`A141042(n+1)-Δ[A007504(n)]`
-/

namespace A062357.P2082966408629548434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - (f1 (n + 1) - f1 n)

end

end A062357.P2082966408629548434

namespace A062357

/-- `A141042(n+1)-Δ[A007504(n)]` -/
def P2082966408629548434.Spec : Prop :=
  ∀ n, P2082966408629548434.a n = A062357 (n + 1)

end A062357

/-! ## A062357.P11088906397078750832

`A033287(n)+1-A092949(n+1)`
-/

namespace A062357.P11088906397078750832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n + (1 - A092949 (n + 1))

end

end A062357.P11088906397078750832

namespace A062357

/-- `A033287(n)+1-A092949(n+1)` -/
def P11088906397078750832.Spec : Prop :=
  ∀ n, P11088906397078750832.a n = A062357 (n + 1)

theorem P11088906397078750832.correct : P11088906397078750832.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P11088906397078750832.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033287, A033287.P5066765549217672205.a, A092949, A092949.P1382492647621219255.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P1871030480992290525

`A141042(n+1)-A000040(n+1)`
-/

namespace A062357.P1871030480992290525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - A000040 (n + 1)

end

end A062357.P1871030480992290525

namespace A062357

/-- `A141042(n+1)-A000040(n+1)` -/
def P1871030480992290525.Spec : Prop :=
  ∀ n, P1871030480992290525.a n = A062357 (n + 1)

theorem P1871030480992290525.correct : P1871030480992290525.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P1871030480992290525.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A141042, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P8292337303190516785

`A147967(n+1)-A014689(n+1)`
-/

namespace A062357.P8292337303190516785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147967 (n + 1) - A014689 (n + 1)

end

end A062357.P8292337303190516785

namespace A062357

/-- `A147967(n+1)-A014689(n+1)` -/
def P8292337303190516785.Spec : Prop :=
  ∀ n, P8292337303190516785.a n = A062357 (n + 1)

theorem P8292337303190516785.correct : P8292337303190516785.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P8292337303190516785.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, A147967, A147967.P11868943010124678636.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P7916340135298882076

`A247380(n+1)-A100484(n+1)`
-/

namespace A062357.P7916340135298882076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) - A100484 (n + 1)

end

end A062357.P7916340135298882076

namespace A062357

/-- `A247380(n+1)-A100484(n+1)` -/
def P7916340135298882076.Spec : Prop :=
  ∀ n, P7916340135298882076.a n = A062357 (n + 1)

theorem P7916340135298882076.correct : P7916340135298882076.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P7916340135298882076.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, A247380, A247380.P8040246546011606999.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P10241863821684389314

`A141042(n+1)-(A006093(n+1)+1)`
-/

namespace A062357.P10241863821684389314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - (A006093 (n + 1) + 1)

end

end A062357.P10241863821684389314

namespace A062357

/-- `A141042(n+1)-(A006093(n+1)+1)` -/
def P10241863821684389314.Spec : Prop :=
  ∀ n, P10241863821684389314.a n = A062357 (n + 1)

theorem P10241863821684389314.correct : P10241863821684389314.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P10241863821684389314.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A141042, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P17302624839515977904

`A141042(n+1)+1-A008864(n+1)`
-/

namespace A062357.P17302624839515977904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (1 - A008864 (n + 1))

end

end A062357.P17302624839515977904

namespace A062357

/-- `A141042(n+1)+1-A008864(n+1)` -/
def P17302624839515977904.Spec : Prop :=
  ∀ n, P17302624839515977904.a n = A062357 (n + 1)

theorem P17302624839515977904.correct : P17302624839515977904.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P17302624839515977904.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A141042, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P14251814920449634094

`A141042(n+1)-(A040976(n+1)+2)`
-/

namespace A062357.P14251814920449634094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - (A040976 (n + 1) + 2)

end

end A062357.P14251814920449634094

namespace A062357

/-- `A141042(n+1)-(A040976(n+1)+2)` -/
def P14251814920449634094.Spec : Prop :=
  ∀ n, P14251814920449634094.a n = A062357 (n + 1)

theorem P14251814920449634094.correct : P14251814920449634094.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P14251814920449634094.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A141042, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P6348231605838383943

`A247380(n+1)-2*A000040(n+1)`
-/

namespace A062357.P6348231605838383943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) - 2 * A000040 (n + 1)

end

end A062357.P6348231605838383943

namespace A062357

/-- `A247380(n+1)-2*A000040(n+1)` -/
def P6348231605838383943.Spec : Prop :=
  ∀ n, P6348231605838383943.a n = A062357 (n + 1)

theorem P6348231605838383943.correct : P6348231605838383943.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P6348231605838383943.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A247380, A247380.P8040246546011606999.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P6158312670041988408

`2*A141042(n+1)-A247380(n+1)`
-/

namespace A062357.P6158312670041988408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141042 (n + 1) - A247380 (n + 1)

end

end A062357.P6158312670041988408

namespace A062357

/-- `2*A141042(n+1)-A247380(n+1)` -/
def P6158312670041988408.Spec : Prop :=
  ∀ n, P6158312670041988408.a n = A062357 (n + 1)

theorem P6158312670041988408.correct : P6158312670041988408.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P6158312670041988408.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A141042, A141042.P12825020349384849254.a, A247380, A247380.P8040246546011606999.a, A001223, A001223.P5034056745985311719.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P6072988253587847375

`n*A001223(n+1)-A062234(n+1)`
-/

namespace A062357.P6072988253587847375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001223 (n + 1) - A062234 (n + 1)

end

end A062357.P6072988253587847375

namespace A062357

/-- `n*A001223(n+1)-A062234(n+1)` -/
def P6072988253587847375.Spec : Prop :=
  ∀ n, P6072988253587847375.a n = A062357 (n + 1)

theorem P6072988253587847375.correct : P6072988253587847375.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P6072988253587847375.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P10612898981103996177

`(n+1)*(A046933(n+1)+1)-A000040(n+1)`
-/

namespace A062357.P10612898981103996177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A046933 (n + 1) + 1) - A000040 (n + 1)

end

end A062357.P10612898981103996177

namespace A062357

/-- `(n+1)*(A046933(n+1)+1)-A000040(n+1)` -/
def P10612898981103996177.Spec : Prop :=
  ∀ n, P10612898981103996177.a n = A062357 (n + 1)

theorem P10612898981103996177.correct : P10612898981103996177.Spec := by
  intro n
  simp only [A062357, Nat.add_sub_cancel, A062357.P10612898981103996177.a, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062357

/-! ## A062357.P17615301922345478396

`A141042(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A062357.P17615301922345478396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A062357.P17615301922345478396

namespace A062357

/-- `A141042(n+1)+A007504(n)-A007504(n+1)` -/
def P17615301922345478396.Spec : Prop :=
  ∀ n, P17615301922345478396.a n = A062357 (n + 1)

end A062357

/-! ## A062357.P1440547696833742418

`A141042(n+1)+A152535(n+1)-A189892(n+1)`
-/

namespace A062357.P1440547696833742418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) + (A152535 (n + 1) - A189892 (n + 1))

end

end A062357.P1440547696833742418

namespace A062357

/-- `A141042(n+1)+A152535(n+1)-A189892(n+1)` -/
def P1440547696833742418.Spec : Prop :=
  ∀ n, P1440547696833742418.a n = A062357 (n + 1)

end A062357

/-! ## A062357.P17321210382324770528

`A141042(n+1)-A161522(n+1)/A014689(n+1)`
-/

namespace A062357.P17321210382324770528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) - (A161522 (n + 1) : ℚ) / (A014689 (n + 1) : ℚ)

end

end A062357.P17321210382324770528

namespace A062357

/-- `A141042(n+1)-A161522(n+1)/A014689(n+1)` -/
def P17321210382324770528.Spec : Prop :=
  ∀ n, P17321210382324770528.a n = (A062357 (n + 1) : ℚ)

end A062357

/-! ## A062357.P10359528604361938946

`A141042(n+1)-A182986(n+2)`
-/

namespace A062357.P10359528604361938946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - A182986 (n + 2)

end

end A062357.P10359528604361938946

namespace A062357

/-- `A141042(n+1)-A182986(n+2)` -/
def P10359528604361938946.Spec : Prop :=
  ∀ n, P10359528604361938946.a n = A062357 (n + 1)

end A062357

/-!
# A062358: a(n) = n! / d(n), where d(n) is the number of divisors of n.

The programs for A062358, the canonical program `A062358.P16688096118729418345` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062358 has offset 1).

The definition of A062358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062358.P16688096118729418345

`(n+1)!/A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062358

/-- `(n+1)!/A000005(n+1)` -/
def P16688096118729418345.Spec : Prop :=
  ∀ n, P16688096118729418345.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P7593460889271527568

`(n+1)/∏{e}[n+1, #+1]*n!`
-/

namespace A062358.P7593460889271527568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A062358.P7593460889271527568

namespace A062358

/-- `(n+1)/∏{e}[n+1, #+1]*n!` -/
def P7593460889271527568.Spec : Prop :=
  ∀ n, P7593460889271527568.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P5385441481496333480

`(n+1)/∑{d}[n+1, gcd(n, #)]*n!`
-/

namespace A062358.P5385441481496333480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A062358.P5385441481496333480

namespace A062358

/-- `(n+1)/∑{d}[n+1, gcd(n, #)]*n!` -/
def P5385441481496333480.Spec : Prop :=
  ∀ n, P5385441481496333480.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P10497828883896721498

`(n+1)/(∑{d}[n+1, n²%#]+1)*n!`
-/

namespace A062358.P10497828883896721498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A062358.P10497828883896721498

namespace A062358

/-- `(n+1)/(∑{d}[n+1, n²%#]+1)*n!` -/
def P10497828883896721498.Spec : Prop :=
  ∀ n, P10497828883896721498.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P7771554492223015876

`(n+1)/floor(∑{d}[n+1, root(#, n+1)])*n!`
-/

namespace A062358.P7771554492223015876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (n + 1 : ℝ))⌋ : ℚ) * (Nat.factorial n : ℚ)

end

end A062358.P7771554492223015876

namespace A062358

/-- `(n+1)/floor(∑{d}[n+1, root(#, n+1)])*n!` -/
def P7771554492223015876.Spec : Prop :=
  ∀ n, P7771554492223015876.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P888603268306975711

`A062833(n+1)/2`
-/

namespace A062358.P888603268306975711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062833 (n + 1) : ℚ) / 2

end

end A062358.P888603268306975711

namespace A062358

/-- `A062833(n+1)/2` -/
def P888603268306975711.Spec : Prop :=
  ∀ n, P888603268306975711.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P8845520697830807309

`(n+1)/Δ[A006218(n)]*A000142(n)`
-/

namespace A062358.P8845520697830807309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (A000142 n : ℚ)

end

end A062358.P8845520697830807309

namespace A062358

/-- `(n+1)/Δ[A006218(n)]*A000142(n)` -/
def P8845520697830807309.Spec : Prop :=
  ∀ n, P8845520697830807309.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P67949503648491552

`(n+1)/A000005(n+1)*A000142(n)`
-/

namespace A062358.P67949503648491552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (n + 1) : ℚ) * (A000142 n : ℚ)

end

end A062358.P67949503648491552

namespace A062358

/-- `(n+1)/A000005(n+1)*A000142(n)` -/
def P67949503648491552.Spec : Prop :=
  ∀ n, P67949503648491552.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P8391370641759942323

`A006882(n+1)/A000005(n+1)*A006882(n)`
-/

namespace A062358.P8391370641759942323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A006882 n : ℚ)

end

end A062358.P8391370641759942323

namespace A062358

/-- `A006882(n+1)/A000005(n+1)*A006882(n)` -/
def P8391370641759942323.Spec : Prop :=
  ∀ n, P8391370641759942323.a n = (A062358 (n + 1) : ℚ)

end A062358

/-! ## A062358.P5533135222551444550

`A003418(n+1)/A000005(n+1)*A025527(n+1)`
-/

namespace A062358.P5533135222551444550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A025527 (n + 1) : ℚ)

end

end A062358.P5533135222551444550

namespace A062358

/-- `A003418(n+1)/A000005(n+1)*A025527(n+1)` -/
def P5533135222551444550.Spec : Prop :=
  ∀ n, P5533135222551444550.a n = (A062358 (n + 1) : ℚ)

end A062358

/-!
# A062359: a(n) = floor(n!/sigma(n)).

The programs for A062359, the canonical program `A062359.P7158364373409042328` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062359 has offset 1).

The definition of A062359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/A000203(n+1))` (program `A062359.P7158364373409042328`, by `A062359.P7158364373409042328.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062359.P7158364373409042328

`floor((n+1)!/A000203(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062359

/-- `floor((n+1)!/A000203(n+1))` -/
def P7158364373409042328.Spec : Prop :=
  ∀ n, P7158364373409042328.a n = A062359 (n + 1)

theorem P7158364373409042328.correct : P7158364373409042328.Spec := by
  intro n
  simp only [A062359, Nat.add_sub_cancel]

end A062359

/-! ## A062359.P2363525081573907684

`floor((n+1)!/∑{d}[n+1, #])`
-/

namespace A062359.P2363525081573907684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋

end

end A062359.P2363525081573907684

namespace A062359

/-- `floor((n+1)!/∑{d}[n+1, #])` -/
def P2363525081573907684.Spec : Prop :=
  ∀ n, P2363525081573907684.a n = A062359 (n + 1)

theorem P2363525081573907684.correct : P2363525081573907684.Spec := by
  intro n
  simp only [A062359, Nat.add_sub_cancel, A062359.P2363525081573907684.f1, A062359.P2363525081573907684.a, A062359.P7158364373409042328.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062359

/-! ## A062359.P17314299069788055615

`floor(A000142(n+1)/∑{d}[n+1, #])`
-/

namespace A062359.P17314299069788055615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000142 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋

end

end A062359.P17314299069788055615

namespace A062359

/-- `floor(A000142(n+1)/∑{d}[n+1, #])` -/
def P17314299069788055615.Spec : Prop :=
  ∀ n, P17314299069788055615.a n = A062359 (n + 1)

theorem P17314299069788055615.correct : P17314299069788055615.Spec := by
  intro n
  simp only [A062359, Nat.add_sub_cancel, A062359.P17314299069788055615.f1, A062359.P17314299069788055615.a, A062359.P7158364373409042328.a, A000142, A000142.P3272619076580183195.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062359

/-! ## A062359.P11060100522155253263

`floor((n+1)!/A216627(A000124(n)))`
-/

namespace A062359.P11060100522155253263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (A216627 (A000124 n).toNat : ℚ)⌋

end

end A062359.P11060100522155253263

namespace A062359

/-- `floor((n+1)!/A216627(A000124(n)))` -/
def P11060100522155253263.Spec : Prop :=
  ∀ n, P11060100522155253263.a n = A062359 (n + 1)

end A062359

/-! ## A062359.P11922715246218112529

`floor(record[A084938(n)]/A000203(n+1))`
-/

namespace A062359.P11922715246218112529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A062359.P11922715246218112529

namespace A062359

/-- `floor(record[A084938(n)]/A000203(n+1))` -/
def P11922715246218112529.Spec : Prop :=
  ∀ n, P11922715246218112529.a n = A062359 (n + 1)

end A062359

/-! ## A062359.P17737187479381617355

`floor(record[A094587(n)]/A000203(n+1))`
-/

namespace A062359.P17737187479381617355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A062359.P17737187479381617355

namespace A062359

/-- `floor(record[A094587(n)]/A000203(n+1))` -/
def P17737187479381617355.Spec : Prop :=
  ∀ n, P17737187479381617355.a n = A062359 (n + 1)

end A062359

/-! ## A062359.P10868283248053574433

`floor(record[A047917(n+1)]/A000203(n+1))`
-/

namespace A062359.P10868283248053574433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A062359.P10868283248053574433

namespace A062359

/-- `floor(record[A047917(n+1)]/A000203(n+1))` -/
def P10868283248053574433.Spec : Prop :=
  ∀ n, P10868283248053574433.a n = A062359 (n + 1)

end A062359

/-!
# A062360: a(n) = floor(e^(n*Pi)).

The programs for A062360, there is no canonical definition to state claims against.
-/

/-! ## A062360.P11386101831589857420

`floor(exp(π*n))`
-/

namespace A062360.P11386101831589857420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.pi * (n : ℝ))⌋

end

end A062360.P11386101831589857420

/-! ## A062360.P15455526158446859458

`A060456(n²)`
-/

namespace A062360.P15455526158446859458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060456 (n ^ 2)

end

end A062360.P15455526158446859458

/-! ## A062360.P14226514568547082874

`A124507(2*n)`
-/

namespace A062360.P14226514568547082874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124507 (2 * n)

end

end A062360.P14226514568547082874

/-! ## A062360.P10328560189106331205

`record[A124507(n)/(-1)^n]`
-/

namespace A062360.P10328560189106331205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124507 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062360.P10328560189106331205

/-! ## A062360.P8719874983249640179

`record[A124507(n+1)^(n%2)]`
-/

namespace A062360.P8719874983249640179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124507 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062360.P8719874983249640179

/-! ## A062360.P2622453553244308459

`record[A124507(n)^A033999(n)]`
-/

namespace A062360.P2622453553244308459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124507 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062360.P2622453553244308459

/-! ## A062360.P13432914069930553578

`A347029(2*n)-A057427(n)`
-/

namespace A062360.P13432914069930553578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347029 (2 * n) - A057427 n

end

end A062360.P13432914069930553578

/-! ## A062360.P10176585223806955409

`record[gcd(A007814(n+1), A124507(n))]`
-/

namespace A062360.P10176585223806955409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A124507 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062360.P10176585223806955409

/-! ## A062360.P6335274448675316112

`A010051(2*(n+1))+A347029(2*n)-1`
-/

namespace A062360.P6335274448675316112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (A347029 (2 * n) - 1)

end

end A062360.P6335274448675316112

/-!
# A062361: Number of triangular regions in regular n-gon with all diagonals drawn.

The programs for A062361, there is no canonical definition to state claims against.
-/

/-! ## A062361.P2961352705488645039

`A331451(∑[n]+3)`
-/

namespace A062361.P2961352705488645039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A062361.P2961352705488645039

/-! ## A062361.P8463281572744748308

`record[A331451((n+1)/10^val(n+1, 10)+2)]`
-/

namespace A062361.P8463281572744748308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062361.P8463281572744748308

/-! ## A062361.P12544718883533199968

`record[A331451(A274431(n+1)+2)]`
-/

namespace A062361.P12544718883533199968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (A274431 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062361.P12544718883533199968

/-! ## A062361.P13653694701070601146

`record[A331451(n+3)-A271439(n)]`
-/

namespace A062361.P13653694701070601146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331451 (n + 3) - A271439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062361.P13653694701070601146

/-! ## A062361.P3471789210789642398

`record[A010054(n)*A331451(n+3)]`
-/

namespace A062361.P3471789210789642398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A331451 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062361.P3471789210789642398

/-!
# A062362: a(n) = floor of Sum_{ d divides n } phi(d)/d.

The programs for A062362, the canonical program `A062362.P3475805551919053752` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062362 has offset 1).

The definition of A062362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062362.P3475805551919053752

`floor(A018804(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062362

/-- `floor(A018804(n+1)/(n+1))` -/
def P3475805551919053752.Spec : Prop :=
  ∀ n, P3475805551919053752.a n = A062362 (n + 1)

theorem P3475805551919053752.correct : P3475805551919053752.Spec := by
  intro n
  simp only [A062362, Nat.add_sub_cancel]

end A062362

/-! ## A062362.P13432527151832841289

`floor(A006579(n+1)/(n+1))+1`
-/

namespace A062362.P13432527151832841289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006579 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A062362.P13432527151832841289

namespace A062362

/-- `floor(A006579(n+1)/(n+1))+1` -/
def P13432527151832841289.Spec : Prop :=
  ∀ n, P13432527151832841289.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P15593378089806402665

`floor(A209295(n+1)/(n+1))-1`
-/

namespace A062362.P15593378089806402665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209295 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - 1

end

end A062362.P15593378089806402665

namespace A062362

/-- `floor(A209295(n+1)/(n+1))-1` -/
def P15593378089806402665.Spec : Prop :=
  ∀ n, P15593378089806402665.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P5236802597997238895

`ceil(A268631(n+1)/(n+1))+1`
-/

namespace A062362.P5236802597997238895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268631 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ + 1

end

end A062362.P5236802597997238895

namespace A062362

/-- `ceil(A268631(n+1)/(n+1))+1` -/
def P5236802597997238895.Spec : Prop :=
  ∀ n, P5236802597997238895.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P11009408641750139107

`round(A344598(n+1)/(2*n+1))`
-/

namespace A062362.P11009408641750139107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344598 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A062362.P11009408641750139107

namespace A062362

/-- `round(A344598(n+1)/(2*n+1))` -/
def P11009408641750139107.Spec : Prop :=
  ∀ n, P11009408641750139107.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P13368493404074580543

`floor(A347128(n+1)/A007947(n+1))`
-/

namespace A062362.P13368493404074580543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347128 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)⌋

end

end A062362.P13368493404074580543

namespace A062362

/-- `floor(A347128(n+1)/A007947(n+1))` -/
def P13368493404074580543.Spec : Prop :=
  ∀ n, P13368493404074580543.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P8017233498144858630

`floor(A347128(n+1)/A015052(A015052(n+1)))`
-/

namespace A062362.P8017233498144858630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347128 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)⌋

end

end A062362.P8017233498144858630

namespace A062362

/-- `floor(A347128(n+1)/A015052(A015052(n+1)))` -/
def P8017233498144858630.Spec : Prop :=
  ∀ n, P8017233498144858630.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P15199817070037120897

`floor(A127626(∑[n+1])/(n+1))`
-/

namespace A062362.P15199817070037120897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127626 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A062362.P15199817070037120897

namespace A062362

/-- `floor(A127626(∑[n+1])/(n+1))` -/
def P15199817070037120897.Spec : Prop :=
  ∀ n, P15199817070037120897.a n = A062362 (n + 1)

end A062362

/-! ## A062362.P4751533322324418294

`floor(A343516(∑[n+1])/(n+1))`
-/

namespace A062362.P4751533322324418294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A343516 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A062362.P4751533322324418294

namespace A062362

/-- `floor(A343516(∑[n+1])/(n+1))` -/
def P4751533322324418294.Spec : Prop :=
  ∀ n, P4751533322324418294.a n = A062362 (n + 1)

end A062362

/-!
# A062363: a(n) = Sum_{d|n} d!.

The programs for A062363, the canonical program `A062363.P15970050158880517038` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062363 has offset 0).

The definition of A062363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n, #!]` (program `A062363.P15970050158880517038`, by `A062363.P15970050158880517038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062363.P15970050158880517038

`∑{d}[n, #!]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062363

/-- `∑{d}[n, #!]` -/
def P15970050158880517038.Spec : Prop :=
  ∀ n, (P15970050158880517038.a n : ℤ) = A062363 n

theorem P15970050158880517038.correct : P15970050158880517038.Spec := by
  intro n
  simp only [A062363]

end A062363

/-! ## A062363.P8732501946439083919

`∑{d}[n, A000142(#)]`
-/

namespace A062363.P8732501946439083919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000142 d

end

end A062363.P8732501946439083919

namespace A062363

/-- `∑{d}[n, A000142(#)]` -/
def P8732501946439083919.Spec : Prop :=
  ∀ n, P8732501946439083919.a n = A062363 n

theorem P8732501946439083919.correct : P8732501946439083919.Spec := by
  intro n
  simp only [A062363, Nat.add_sub_cancel, A062363.P8732501946439083919.f1, A062363.P8732501946439083919.a, A062363.P15970050158880517038.f1, A062363.P15970050158880517038.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062363

/-! ## A062363.P4813186135751616672

`∑{d}[n, abs(A133942(#))]`
-/

namespace A062363.P4813186135751616672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A133942 d|

end

end A062363.P4813186135751616672

namespace A062363

/-- `∑{d}[n, abs(A133942(#))]` -/
def P4813186135751616672.Spec : Prop :=
  ∀ n, P4813186135751616672.a n = A062363 n

end A062363

/-! ## A062363.P10894390705611662723

`∑{d}[n, A214080(#²)]`
-/

namespace A062363.P10894390705611662723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A214080 (d ^ 2)

end

end A062363.P10894390705611662723

namespace A062363

/-- `∑{d}[n, A214080(#²)]` -/
def P10894390705611662723.Spec : Prop :=
  ∀ n, P10894390705611662723.a n = A062363 n

end A062363

/-! ## A062363.P1803860512764237181

`∑{d}[n, A104150(#+1)]`
-/

namespace A062363.P1803860512764237181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104150 (d + 1)

end

end A062363.P1803860512764237181

namespace A062363

/-- `∑{d}[n, A104150(#+1)]` -/
def P1803860512764237181.Spec : Prop :=
  ∀ n, P1803860512764237181.a n = A062363 n

end A062363

/-! ## A062363.P17128110755923444731

`∑{d}[n, A038507(#)-1]`
-/

namespace A062363.P17128110755923444731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A038507 d - 1)

end

end A062363.P17128110755923444731

namespace A062363

/-- `∑{d}[n, A038507(#)-1]` -/
def P17128110755923444731.Spec : Prop :=
  ∀ n, P17128110755923444731.a n = A062363 n

theorem P17128110755923444731.correct : P17128110755923444731.Spec := by
  intro n
  simp only [A062363, Nat.add_sub_cancel, A062363.P17128110755923444731.f1, A062363.P17128110755923444731.a, A062363.P15970050158880517038.f1, A062363.P15970050158880517038.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062363

/-! ## A062363.P2363162971697069743

`∑{d}[n, A081123(2*#)]`
-/

namespace A062363.P2363162971697069743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A081123 (2 * d)

end

end A062363.P2363162971697069743

namespace A062363

/-- `∑{d}[n, A081123(2*#)]` -/
def P2363162971697069743.Spec : Prop :=
  ∀ n, P2363162971697069743.a n = A062363 n

end A062363

/-! ## A062363.P13357127757218250653

`∑{d}[2*n, A361522(#)]`
-/

namespace A062363.P13357127757218250653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361522 d

end

end A062363.P13357127757218250653

namespace A062363

/-- `∑{d}[2*n, A361522(#)]` -/
def P13357127757218250653.Spec : Prop :=
  ∀ n, P13357127757218250653.a n = A062363 n

end A062363

/-! ## A062363.P12368957968651502944

`∑{d}[n, #*A104150(#)]`
-/

namespace A062363.P12368957968651502944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A104150 d

end

end A062363.P12368957968651502944

namespace A062363

/-- `∑{d}[n, #*A104150(#)]` -/
def P12368957968651502944.Spec : Prop :=
  ∀ n, P12368957968651502944.a n = A062363 n

end A062363

/-!
# A062364: Number of cyclic subgroups of the group A_n X A_n (where A_n is the alternating group of degree n).

The programs for A062364, there is no canonical definition to state claims against.
-/

/-! ## A062364.P2860596125585149507

`A131737(A049169(n)²)`
-/

namespace A062364.P2860596125585149507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A049169 n ^ 2).toNat

end

end A062364.P2860596125585149507

/-!
# A062365: Number of nonisomorphic cyclic subgroups of the group A_n X A_n (where A_n is the alternating group of degree n).

The programs for A062365, there is no canonical definition to state claims against.
-/

/-! ## A062365.P18427720592970666973

`A038548(A328357(n))+A000212(n)`
-/

namespace A062365.P18427720592970666973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A328357 n).toNat + A000212 n

end

end A062365.P18427720592970666973

/-! ## A062365.P5083087196640089653

`A337602(n)+A242357(A000079(n))`
-/

namespace A062365.P5083087196640089653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337602 n + A242357 (A000079 n).toNat

end

end A062365.P5083087196640089653

/-!
# A062366: Let f be a function on rationals p/q (p,q coprime) defined by f(p/q) = abs(p-q)/nextoddColl(p) (so the denominator is the next odd number in the Collatz trajectory of p). Start with f(n/1) and repeat application of f until it reaches again an integer, which is a(n). If no integer is reached, then a(n)=0.

The programs for A062366, there is no canonical definition to state claims against.
-/

/-! ## A062366.P3076551704713248394

`A063405(∑[n]+1)`
-/

namespace A062366.P3076551704713248394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A062366.P3076551704713248394

/-! ## A062366.P7760472924897147056

`A063405(A000124(n))%(n+2)`
-/

namespace A062366.P7760472924897147056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063405 (A000124 n).toNat) (n + 2 : ℤ)

end

end A062366.P7760472924897147056

/-! ## A062366.P3270452473526908811

`A063405(A000124(n))/A114523(n)²`
-/

namespace A062366.P3270452473526908811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063405 (A000124 n).toNat : ℚ) / (A114523 n ^ 2 : ℚ)

end

end A062366.P3270452473526908811

/-! ## A062366.P1262696004708017757

`A063405(A000124(n))/A007318(∑[n])`
-/

namespace A062366.P1262696004708017757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063405 (A000124 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A062366.P1262696004708017757

/-! ## A062366.P494952689182884635

`A185012(3*n)+A063405(A000124(n))`
-/

namespace A062366.P494952689182884635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (3 * n) + A063405 (A000124 n).toNat

end

end A062366.P494952689182884635

/-! ## A062366.P1065457803563475373

`A063405(A000124(n))+C(n, A002522(n))`
-/

namespace A062366.P1065457803563475373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063405 (A000124 n).toNat + (Nat.choose n (A002522 n).toNat : ℤ)

end

end A062366.P1065457803563475373

/-! ## A062366.P5019387440956799118

`A063405(A000124(n))+char[A027621(n)²]`
-/

namespace A062366.P5019387440956799118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027621 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063405 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A062366.P5019387440956799118

/-! ## A062366.P9534360350268771907

`A063405(A000124(n))-sqrt(A000290(n))+n`
-/

namespace A062366.P9534360350268771907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063405 (A000124 n).toNat : ℝ) - Real.sqrt (A000290 n : ℝ) + (n : ℝ)

end

end A062366.P9534360350268771907

/-! ## A062366.P516018437060939136

`A063405(A000124(n))-(∑[n]-A000217(n))`
-/

namespace A062366.P516018437060939136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063405 (A000124 n).toNat - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n)

end

end A062366.P516018437060939136

/-! ## A062366.P6436937383398308054

`A078898(2*n)+A063405(A000124(n))-n`
-/

namespace A062366.P6436937383398308054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * n) + (A063405 (A000124 n).toNat - (n : ℤ))

end

end A062366.P6436937383398308054

/-! ## A062366.P6199848484683404849

`A063405(A000124(n))+A010054(A007821(n+1))`
-/

namespace A062366.P6199848484683404849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063405 (A000124 n).toNat + A010054 (A007821 (n + 1)).toNat

end

end A062366.P6199848484683404849

/-! ## A062366.P13815396267702020766

`A259748(A008366(n+1))+A063405(A000124(n))`
-/

namespace A062366.P13815396267702020766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259748 (A008366 (n + 1)).toNat + A063405 (A000124 n).toNat

end

end A062366.P13815396267702020766

/-! ## A062366.P13279815957334140378

`A063405(A000124(n))*A189212(A000217(n)+1)`
-/

namespace A062366.P13279815957334140378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063405 (A000124 n).toNat * A189212 (A000217 n + 1).toNat

end

end A062366.P13279815957334140378

/-! ## A062366.P14936368049947597599

`A063405(A000124(n))/A001221(A014662(n+1))`
-/

namespace A062366.P14936368049947597599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063405 (A000124 n).toNat : ℚ) / (A001221 (A014662 (n + 1)).toNat : ℚ)

end

end A062366.P14936368049947597599

/-!
# A062367: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+3)/6.

The programs for A062367, the canonical program `A062367.P6945717950428540145` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062367 has offset 1).

The definition of A062367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062367.P6945717950428540145

`∑{d}[n+1, A000005(#)²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062367

/-- `∑{d}[n+1, A000005(#)²]` -/
def P6945717950428540145.Spec : Prop :=
  ∀ n, P6945717950428540145.a n = A062367 (n + 1)

theorem P6945717950428540145.correct : P6945717950428540145.Spec := by
  intro n
  simp only [A062367, Nat.add_sub_cancel]

end A062367

/-! ## A062367.P12669203090787426733

`∑{d}[n+1, A035116(#)]`
-/

namespace A062367.P12669203090787426733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d

end

end A062367.P12669203090787426733

namespace A062367

/-- `∑{d}[n+1, A035116(#)]` -/
def P12669203090787426733.Spec : Prop :=
  ∀ n, P12669203090787426733.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P13182524450785977824

`∏{e}[n+1, A047732(#)+#]`
-/

namespace A062367.P13182524450785977824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A047732 (Nat.factorization (f1 n) p) + (Nat.factorization (f1 n) p : ℤ))

end

end A062367.P13182524450785977824

namespace A062367

/-- `∏{e}[n+1, A047732(#)+#]` -/
def P13182524450785977824.Spec : Prop :=
  ∀ n, P13182524450785977824.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P12388424026683393886

`∑{d}[n+1, A000005((n+1)/#)^2]`
-/

namespace A062367.P12388424026683393886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A062367.P12388424026683393886

namespace A062367

/-- `∑{d}[n+1, A000005((n+1)/#)^2]` -/
def P12388424026683393886.Spec : Prop :=
  ∀ n, P12388424026683393886.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P3431514791681943726

`∑{d}[n+1, A007426(#)*A008966((n+1)/#)]`
-/

namespace A062367.P3431514791681943726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P3431514791681943726

namespace A062367

/-- `∑{d}[n+1, A007426(#)*A008966((n+1)/#)]` -/
def P3431514791681943726.Spec : Prop :=
  ∀ n, P3431514791681943726.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P11618492052404484689

`∑{d}[n+1, A007425(#)*A034444((n+1)/#)]`
-/

namespace A062367.P11618492052404484689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P11618492052404484689

namespace A062367

/-- `∑{d}[n+1, A007425(#)*A034444((n+1)/#)]` -/
def P11618492052404484689.Spec : Prop :=
  ∀ n, P11618492052404484689.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P7178801506532939097

`∑{d}[n+1, A000005(#)*A048691((n+1)/#)]`
-/

namespace A062367.P7178801506532939097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P7178801506532939097

namespace A062367

/-- `∑{d}[n+1, A000005(#)*A048691((n+1)/#)]` -/
def P7178801506532939097.Spec : Prop :=
  ∀ n, P7178801506532939097.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P4754689288102069251

`∑{d}[n+1, A023900(#)*A062369((n+1)/#)]`
-/

namespace A062367.P4754689288102069251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A062369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P4754689288102069251

namespace A062367

/-- `∑{d}[n+1, A023900(#)*A062369((n+1)/#)]` -/
def P4754689288102069251.Spec : Prop :=
  ∀ n, P4754689288102069251.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P15704469087631664153

`∑{d}[n+1, A069735(#)*A078644((n+1)/#)]`
-/

namespace A062367.P15704469087631664153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A078644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P15704469087631664153

namespace A062367

/-- `∑{d}[n+1, A069735(#)*A078644((n+1)/#)]` -/
def P15704469087631664153.Spec : Prop :=
  ∀ n, P15704469087631664153.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P16598327702301611570

`∑{d}[n+1, A060724(#)*A130054((n+1)/#)]`
-/

namespace A062367.P16598327702301611570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P16598327702301611570

namespace A062367

/-- `∑{d}[n+1, A060724(#)*A130054((n+1)/#)]` -/
def P16598327702301611570.Spec : Prop :=
  ∀ n, P16598327702301611570.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P16209717769231603272

`∑{d}[n+1, A061200(#)*A271102((n+1)/#)]`
-/

namespace A062367.P16209717769231603272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P16209717769231603272

namespace A062367

/-- `∑{d}[n+1, A061200(#)*A271102((n+1)/#)]` -/
def P16209717769231603272.Spec : Prop :=
  ∀ n, P16209717769231603272.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P9475122497568718573

`∑{d}[n+1, A034695(#)*A307445((n+1)/#)]`
-/

namespace A062367.P9475122497568718573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034695 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P9475122497568718573

namespace A062367

/-- `∑{d}[n+1, A034695(#)*A307445((n+1)/#)]` -/
def P9475122497568718573.Spec : Prop :=
  ∀ n, P9475122497568718573.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P366185474677605271

`∑{d}[n+1, A046951(#)*A322328((n+1)/#)]`
-/

namespace A062367.P366185474677605271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A322328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P366185474677605271

namespace A062367

/-- `∑{d}[n+1, A046951(#)*A322328((n+1)/#)]` -/
def P366185474677605271.Spec : Prop :=
  ∀ n, P366185474677605271.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P3145545994647710534

`∑{d}[n+1, A037227(#)*A335841((n+1)/#)]`
-/

namespace A062367.P3145545994647710534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037227 d * A335841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P3145545994647710534

namespace A062367

/-- `∑{d}[n+1, A037227(#)*A335841((n+1)/#)]` -/
def P3145545994647710534.Spec : Prop :=
  ∀ n, P3145545994647710534.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P15339176072289005788

`∑{d}[n+1, A078461(#)*A326417((n+1)/#)]`
-/

namespace A062367.P15339176072289005788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A326417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P15339176072289005788

namespace A062367

/-- `∑{d}[n+1, A078461(#)*A326417((n+1)/#)]` -/
def P15339176072289005788.Spec : Prop :=
  ∀ n, P15339176072289005788.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P5356207683056912009

`∑{d}[n+1, A162512(#)*A397549((n+1)/#)]`
-/

namespace A062367.P5356207683056912009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162512 d * A397549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P5356207683056912009

namespace A062367

/-- `∑{d}[n+1, A162512(#)*A397549((n+1)/#)]` -/
def P5356207683056912009.Spec : Prop :=
  ∀ n, P5356207683056912009.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P15867276343104452634

`∑{d}[n+1, A286779(#)*A353519((n+1)/#)]`
-/

namespace A062367.P15867276343104452634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A286779 d * A353519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062367.P15867276343104452634

namespace A062367

/-- `∑{d}[n+1, A286779(#)*A353519((n+1)/#)]` -/
def P15867276343104452634.Spec : Prop :=
  ∀ n, P15867276343104452634.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P8277729151902344969

`∑{d}[A003961(n+1), A001227(#)²]`
-/

namespace A062367.P8277729151902344969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001227 d ^ 2

end

end A062367.P8277729151902344969

namespace A062367

/-- `∑{d}[A003961(n+1), A001227(#)²]` -/
def P8277729151902344969.Spec : Prop :=
  ∀ n, P8277729151902344969.a n = A062367 (n + 1)

end A062367

/-! ## A062367.P16276918983585558933

`∑{d}[n+1, A124315(#²)]`
-/

namespace A062367.P16276918983585558933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 (d ^ 2)

end

end A062367.P16276918983585558933

namespace A062367

/-- `∑{d}[n+1, A124315(#²)]` -/
def P16276918983585558933.Spec : Prop :=
  ∀ n, P16276918983585558933.a n = A062367 (n + 1)

end A062367

/-!
# A062368: Multiplicative with a(p^e) = (e+1)*(e+2)*(4*e+3)/6.

The programs for A062368, the canonical program `A062368.P16406164343542022122` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062368 has offset 1).

The definition of A062368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062368.P7438358383359344495

`∑{d}[n+1, A356574(#)]`
-/

namespace A062368.P7438358383359344495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356574 d

end

end A062368.P7438358383359344495

namespace A062368

/-- `∑{d}[n+1, A356574(#)]` -/
def P7438358383359344495.Spec : Prop :=
  ∀ n, P7438358383359344495.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P16406164343542022122

`∑{d}[n+1, A007425(#²)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A062368

/-- `∑{d}[n+1, A007425(#²)]` -/
def P16406164343542022122.Spec : Prop :=
  ∀ n, P16406164343542022122.a n = A062368 (n + 1)

theorem P16406164343542022122.correct : P16406164343542022122.Spec := by
  intro n
  simp only [A062368, Nat.add_sub_cancel]

end A062368

/-! ## A062368.P5457933469599466770

`∑{d}[n+1, A000005(#^4)*A000005((n+1)/#)]`
-/

namespace A062368.P5457933469599466770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 4) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062368.P5457933469599466770

namespace A062368

/-- `∑{d}[n+1, A000005(#^4)*A000005((n+1)/#)]` -/
def P5457933469599466770.Spec : Prop :=
  ∀ n, P5457933469599466770.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P7963604696117707024

`∏{e}[n+1, A002623(#+#)]`
-/

namespace A062368.P7963604696117707024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002623 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)

end

end A062368.P7963604696117707024

namespace A062368

/-- `∏{e}[n+1, A002623(#+#)]` -/
def P7963604696117707024.Spec : Prop :=
  ∀ n, P7963604696117707024.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P13402460956514716600

`∏{e}[n+1, A104716(A000124(#))]`
-/

namespace A062368.P13402460956514716600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A104716 (A000124 (Nat.factorization (f1 n) p)).toNat

end

end A062368.P13402460956514716600

namespace A062368

/-- `∏{e}[n+1, A104716(A000124(#))]` -/
def P13402460956514716600.Spec : Prop :=
  ∀ n, P13402460956514716600.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P10577038911039872245

`∑{d}[n+1, A000005(#)*A344327((n+1)/#)]`
-/

namespace A062368.P10577038911039872245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A344327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062368.P10577038911039872245

namespace A062368

/-- `∑{d}[n+1, A000005(#)*A344327((n+1)/#)]` -/
def P10577038911039872245.Spec : Prop :=
  ∀ n, P10577038911039872245.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P5927497832225693925

`∑{d}[n+1, A007426(#)*A347149((n+1)/#)]`
-/

namespace A062368.P5927497832225693925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A347149 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062368.P5927497832225693925

namespace A062368

/-- `∑{d}[n+1, A007426(#)*A347149((n+1)/#)]` -/
def P5927497832225693925.Spec : Prop :=
  ∀ n, P5927497832225693925.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P14017557612608993872

`∏{e}[n+1, A213771(A000217(#)+1)+A000292(#)]`
-/

namespace A062368.P14017557612608993872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A213771 (A000217 (Nat.factorization (f1 n) p) + 1).toNat + A000292 (Nat.factorization (f1 n) p))

end

end A062368.P14017557612608993872

namespace A062368

/-- `∏{e}[n+1, A213771(A000217(#)+1)+A000292(#)]` -/
def P14017557612608993872.Spec : Prop :=
  ∀ n, P14017557612608993872.a n = A062368 (n + 1)

end A062368

/-! ## A062368.P12592232786961201370

`∑{d}[(n+1)², A124315(#)]`
-/

namespace A062368.P12592232786961201370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d

end

end A062368.P12592232786961201370

namespace A062368

/-- `∑{d}[(n+1)², A124315(#)]` -/
def P12592232786961201370.Spec : Prop :=
  ∀ n, P12592232786961201370.a n = A062368 (n + 1)

end A062368

/-!
# A062369: Dirichlet convolution of n and tau^2(n).

The programs for A062369, the canonical program `A062369.P1448251453459129178` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062369 has offset 1).

The definition of A062369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062369.P1448251453459129178

`∑{d}[n+1, #*A000005((n+1)/#)²]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062369

/-- `∑{d}[n+1, #*A000005((n+1)/#)²]` -/
def P1448251453459129178.Spec : Prop :=
  ∀ n, P1448251453459129178.a n = A062369 (n + 1)

theorem P1448251453459129178.correct : P1448251453459129178.Spec := by
  intro n
  simp only [A062369, Nat.add_sub_cancel]

end A062369

/-! ## A062369.P6825136104323839339

`∑{d}[n+1, A060724(#)]`
-/

namespace A062369.P6825136104323839339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d

end

end A062369.P6825136104323839339

namespace A062369

/-- `∑{d}[n+1, A060724(#)]` -/
def P6825136104323839339.Spec : Prop :=
  ∀ n, P6825136104323839339.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P1526305385144052589

`∑{d}[n+1, #*A035116((n+1)/#)]`
-/

namespace A062369.P1526305385144052589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A035116 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P1526305385144052589

namespace A062369

/-- `∑{d}[n+1, #*A035116((n+1)/#)]` -/
def P1526305385144052589.Spec : Prop :=
  ∀ n, P1526305385144052589.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P14212873667724536629

`∑{d}[n+1, A001615(#)*A007425((n+1)/#)]`
-/

namespace A062369.P14212873667724536629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P14212873667724536629

namespace A062369

/-- `∑{d}[n+1, A001615(#)*A007425((n+1)/#)]` -/
def P14212873667724536629.Spec : Prop :=
  ∀ n, P14212873667724536629.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P6294394869085806282

`∑{d}[n+1, A007430(#)*A008966((n+1)/#)]`
-/

namespace A062369.P6294394869085806282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P6294394869085806282

namespace A062369

/-- `∑{d}[n+1, A007430(#)*A008966((n+1)/#)]` -/
def P6294394869085806282.Spec : Prop :=
  ∀ n, P6294394869085806282.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P3429124794649421757

`∑{d}[n+1, A007429(#)*A034444((n+1)/#)]`
-/

namespace A062369.P3429124794649421757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P3429124794649421757

namespace A062369

/-- `∑{d}[n+1, A007429(#)*A034444((n+1)/#)]` -/
def P3429124794649421757.Spec : Prop :=
  ∀ n, P3429124794649421757.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P13098580143407545291

`∑{d}[n+1, A000203(#)*A048691((n+1)/#)]`
-/

namespace A062369.P13098580143407545291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P13098580143407545291

namespace A062369

/-- `∑{d}[n+1, A000203(#)*A048691((n+1)/#)]` -/
def P13098580143407545291.Spec : Prop :=
  ∀ n, P13098580143407545291.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P13102789832359855213

`∑{d}[n+1, A000005(#)*A060648((n+1)/#)]`
-/

namespace A062369.P13102789832359855213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P13102789832359855213

namespace A062369

/-- `∑{d}[n+1, A000005(#)*A060648((n+1)/#)]` -/
def P13102789832359855213.Spec : Prop :=
  ∀ n, P13102789832359855213.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P2676656439230326917

`∑{d}[n+1, A000010(#)*A062367((n+1)/#)]`
-/

namespace A062369.P2676656439230326917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P2676656439230326917

namespace A062369

/-- `∑{d}[n+1, A000010(#)*A062367((n+1)/#)]` -/
def P2676656439230326917.Spec : Prop :=
  ∀ n, P2676656439230326917.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P11155239517667195557

`∑{d}[n+1, A007426(#)*A063659((n+1)/#)]`
-/

namespace A062369.P11155239517667195557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P11155239517667195557

namespace A062369

/-- `∑{d}[n+1, A007426(#)*A063659((n+1)/#)]` -/
def P11155239517667195557.Spec : Prop :=
  ∀ n, P11155239517667195557.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P11291392813546288984

`∑{d}[n+1, A061200(#)*A130107((n+1)/#)]`
-/

namespace A062369.P11291392813546288984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P11291392813546288984

namespace A062369

/-- `∑{d}[n+1, A061200(#)*A130107((n+1)/#)]` -/
def P11291392813546288984.Spec : Prop :=
  ∀ n, P11291392813546288984.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P13375903254903440596

`∑{d}[n+1, A055155(#)*A328485((n+1)/#)]`
-/

namespace A062369.P13375903254903440596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055155 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P13375903254903440596

namespace A062369

/-- `∑{d}[n+1, A055155(#)*A328485((n+1)/#)]` -/
def P13375903254903440596.Spec : Prop :=
  ∀ n, P13375903254903440596.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P2517276532108727781

`∑{d}[n+1, A068976(#)*A319132((n+1)/#)]`
-/

namespace A062369.P2517276532108727781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P2517276532108727781

namespace A062369

/-- `∑{d}[n+1, A068976(#)*A319132((n+1)/#)]` -/
def P2517276532108727781.Spec : Prop :=
  ∀ n, P2517276532108727781.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P6396666823161351021

`∑{d}[n+1, A076752(#)*A322328((n+1)/#)]`
-/

namespace A062369.P6396666823161351021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A322328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P6396666823161351021

namespace A062369

/-- `∑{d}[n+1, A076752(#)*A322328((n+1)/#)]` -/
def P6396666823161351021.Spec : Prop :=
  ∀ n, P6396666823161351021.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P1902550832569118123

`∑{d}[n+1, A046951(#)*A390317((n+1)/#)]`
-/

namespace A062369.P1902550832569118123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A390317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P1902550832569118123

namespace A062369

/-- `∑{d}[n+1, A046951(#)*A390317((n+1)/#)]` -/
def P1902550832569118123.Spec : Prop :=
  ∀ n, P1902550832569118123.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P1405062540730270323

`∑{d}[n+1, A130054(#)*A365649((n+1)/#)]`
-/

namespace A062369.P1405062540730270323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062369.P1405062540730270323

namespace A062369

/-- `∑{d}[n+1, A130054(#)*A365649((n+1)/#)]` -/
def P1405062540730270323.Spec : Prop :=
  ∀ n, P1405062540730270323.a n = A062369 (n + 1)

end A062369

/-! ## A062369.P9762771061813741341

`∑{d}[n+1, A124316(#²)]`
-/

namespace A062369.P9762771061813741341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124316 (d ^ 2)

end

end A062369.P9762771061813741341

namespace A062369

/-- `∑{d}[n+1, A124316(#²)]` -/
def P9762771061813741341.Spec : Prop :=
  ∀ n, P9762771061813741341.a n = A062369 (n + 1)

end A062369

/-!
# A062370: a(n) = Sum_{i|n,j|n} sigma(i)*sigma(j)/sigma(gcd(i,j)), where sigma(n) = sum of divisors of n.

The programs for A062370, the canonical program `A062370.P2152810718572047867` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062370 has offset 1).

The definition of A062370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062370.P2152810718572047867

`∑{d}[n+1, A000005(#²)*A000203(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062370

/-- `∑{d}[n+1, A000005(#²)*A000203(#)]` -/
def P2152810718572047867.Spec : Prop :=
  ∀ n, P2152810718572047867.a n = A062370 (n + 1)

theorem P2152810718572047867.correct : P2152810718572047867.Spec := by
  intro n
  simp only [A062370, Nat.add_sub_cancel]

end A062370

/-! ## A062370.P15216578190729335330

`∑{d}[n+1, A007429(#)*A343569((n+1)/#)]`
-/

namespace A062370.P15216578190729335330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A343569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062370.P15216578190729335330

namespace A062370

/-- `∑{d}[n+1, A007429(#)*A343569((n+1)/#)]` -/
def P15216578190729335330.Spec : Prop :=
  ∀ n, P15216578190729335330.a n = A062370 (n + 1)

end A062370

/-!
# A062371: Numbers the product of whose nonzero digits is a perfect square.

The programs for A062371, the canonical program `A062371.P18105862137816597211` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062371 has offset 1).

The definition of A062371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062371.P6425798454475704395

`record[(n+1)*A000005(A051801(n+1))%2]`
-/

namespace A062371.P6425798454475704395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000005 (A051801 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062371.P6425798454475704395

namespace A062371

/-- `record[(n+1)*A000005(A051801(n+1))%2]` -/
def P6425798454475704395.Spec : Prop :=
  ∀ n, P6425798454475704395.a n = A062371 (n + 1)

end A062371

/-! ## A062371.P4036586561559168116

`eq[A000038(n), A003285(A051801(n))]`
-/

namespace A062371.P4036586561559168116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062371.P4036586561559168116

namespace A062371

/-- `eq[A000038(n), A003285(A051801(n))]` -/
def P4036586561559168116.Spec : Prop :=
  ∀ n, (P4036586561559168116.a n : ℤ) = A062371 (n + 1)

end A062371

/-! ## A062371.P18105862137816597211

`lt[A010051(2*(n+1)), A010052(A051801(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062371

/-- `lt[A010051(2*(n+1)), A010052(A051801(n))]` -/
def P18105862137816597211.Spec : Prop :=
  ∀ n, (P18105862137816597211.a n : ℤ) = A062371 (n + 1)

theorem P18105862137816597211.correct : P18105862137816597211.Spec := by
  intro n
  simp only [A062371, Nat.add_sub_cancel]

end A062371

/-! ## A062371.P7232663249441540462

`eq[A000007(n), A003285(A051801(n))]`
-/

namespace A062371.P7232663249441540462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062371.P7232663249441540462

namespace A062371

/-- `eq[A000007(n), A003285(A051801(n))]` -/
def P7232663249441540462.Spec : Prop :=
  ∀ n, (P7232663249441540462.a n : ℤ) = A062371 (n + 1)

end A062371

/-! ## A062371.P1434548934782918902

`eq[A000122(A051801(n)), A036453(n+1)]`
-/

namespace A062371.P1434548934782918902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062371.P1434548934782918902

namespace A062371

/-- `eq[A000122(A051801(n)), A036453(n+1)]` -/
def P1434548934782918902.Spec : Prop :=
  ∀ n, (P1434548934782918902.a n : ℤ) = A062371 (n + 1)

end A062371

/-!
# A062372: Numbers the product of whose nonzero digits is a cube.

The programs for A062372, the canonical program `A062372.P14434391431021769466` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062372 has offset 1).

The definition of A062372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062372.P14434391431021769466

`record[(n+1)*(1-A070923(A051801(n+1)))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062372

/-- `record[(n+1)*(1-A070923(A051801(n+1)))]` -/
def P14434391431021769466.Spec : Prop :=
  ∀ n, P14434391431021769466.a n = A062372 (n + 1)

theorem P14434391431021769466.correct : P14434391431021769466.Spec := by
  intro n
  simp only [A062372, Nat.add_sub_cancel]

end A062372

/-! ## A062372.P3418892892059961936

`eq[A000038(n), A070923(A051801(n))]`
-/

namespace A062372.P3418892892059961936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062372.P3418892892059961936

namespace A062372

/-- `eq[A000038(n), A070923(A051801(n))]` -/
def P3418892892059961936.Spec : Prop :=
  ∀ n, (P3418892892059961936.a n : ℤ) = A062372 (n + 1)

end A062372

/-! ## A062372.P8099376170549141800

`record[A000027(n+1)/(1-A070923(A051801(n+1)))]`
-/

namespace A062372.P8099376170549141800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (1 - A070923 (A051801 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062372.P8099376170549141800

namespace A062372

/-- `record[A000027(n+1)/(1-A070923(A051801(n+1)))]` -/
def P8099376170549141800.Spec : Prop :=
  ∀ n, P8099376170549141800.a n = (A062372 (n + 1) : ℚ)

end A062372

/-! ## A062372.P10919971518614275148

`record[(A005408(n)-n)/(1-A070923(A051801(n+1)))]`
-/

namespace A062372.P10919971518614275148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (1 - A070923 (A051801 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062372.P10919971518614275148

namespace A062372

/-- `record[(A005408(n)-n)/(1-A070923(A051801(n+1)))]` -/
def P10919971518614275148.Spec : Prop :=
  ∀ n, P10919971518614275148.a n = (A062372 (n + 1) : ℚ)

end A062372

/-! ## A062372.P15031633693165395449

`eq[A000007(n), A055400(A051801(n))]`
-/

namespace A062372.P15031633693165395449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062372.P15031633693165395449

namespace A062372

/-- `eq[A000007(n), A055400(A051801(n))]` -/
def P15031633693165395449.Spec : Prop :=
  ∀ n, (P15031633693165395449.a n : ℤ) = A062372 (n + 1)

end A062372

/-!
# A062373: Ratio of totient to Carmichael's lambda function is 2.

The programs for A062373, there is no canonical definition to state claims against.
-/

/-! ## A062373.P2933653144966249419

`eq[1, A353678(n+1)]+1`
-/

namespace A062373.P2933653144966249419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062373.P2933653144966249419

/-! ## A062373.P1878382664410736322

`filter[A344180(n), A353678(#)]`
-/

namespace A062373.P1878382664410736322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P1878382664410736322

/-! ## A062373.P9208407660201593322

`filter[A264828(n+1), A353678(#)]`
-/

namespace A062373.P9208407660201593322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P9208407660201593322

/-! ## A062373.P13809265531646605822

`filter[A366935(n+1), A353678(#)]`
-/

namespace A062373.P13809265531646605822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P13809265531646605822

/-! ## A062373.P5600575542806923212

`filter[A002808(n+1), A353678(#)]`
-/

namespace A062373.P5600575542806923212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P5600575542806923212

/-! ## A062373.P1603847882216226301

`filter[A018252(n+1), A353678(#)]`
-/

namespace A062373.P1603847882216226301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P1603847882216226301

/-! ## A062373.P9550717301073519870

`filter[A141468(n+3), A353678(#)]`
-/

namespace A062373.P9550717301073519870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P9550717301073519870

/-! ## A062373.P6697136268413362386

`filter[A222307(2*n+1), A353678(#)]`
-/

namespace A062373.P6697136268413362386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P6697136268413362386

/-! ## A062373.P6889678199183077610

`filter[A033949(n+1), A353678(#)]`
-/

namespace A062373.P6889678199183077610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P6889678199183077610

/-! ## A062373.P982948232686002152

`∩[A033949(n+1), A366935(n+1)]`
-/

namespace A062373.P982948232686002152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062373.P982948232686002152

/-! ## A062373.P8710704061761102007

`filter[A175594(n+2), A353678(#)]`
-/

namespace A062373.P8710704061761102007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P8710704061761102007

/-! ## A062373.P12351231351011816617

`∩[A175594(n+1), A366935(n+1)]`
-/

namespace A062373.P12351231351011816617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062373.P12351231351011816617

/-! ## A062373.P5132872732336506984

`filter[A180634(n+1), A353678(#)]`
-/

namespace A062373.P5132872732336506984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P5132872732336506984

/-! ## A062373.P5510684644577529539

`∩[A180634(n+1), A366935(n+1)]`
-/

namespace A062373.P5510684644577529539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062373.P5510684644577529539

/-! ## A062373.P5733024000963479594

`filter[A192450(n+1), A353678(#)]`
-/

namespace A062373.P5733024000963479594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P5733024000963479594

/-! ## A062373.P14463139227735078334

`filter[A080257(n+1), A353678(#)]`
-/

namespace A062373.P14463139227735078334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P14463139227735078334

/-! ## A062373.P11720566544742843123

`filter[A220571(n+1), A353678(#)]`
-/

namespace A062373.P11720566544742843123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P11720566544742843123

/-! ## A062373.P6725164945891969920

`filter[A056653(n+1), A353678(#)]`
-/

namespace A062373.P6725164945891969920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P6725164945891969920

/-! ## A062373.P14427134444703801321

`filter[A065090(n+1), A353678(#)]`
-/

namespace A062373.P14427134444703801321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P14427134444703801321

/-! ## A062373.P621546420215814887

`filter[A171581(n+1), A353678(#)]`
-/

namespace A062373.P621546420215814887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353678 (f1 j).toNat = 1) n)

end

end A062373.P621546420215814887

/-!
# A062374: Euler phi(n) / Carmichael lambda(n) = 4.

The programs for A062374, there is no canonical definition to state claims against.
-/

/-! ## A062374.P12431794270370618320

`eq[4, A034380(n+1)]+1`
-/

namespace A062374.P12431794270370618320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062374.P12431794270370618320

/-! ## A062374.P1382293795388595355

`eq[4, A034380(A028310(n))]`
-/

namespace A062374.P1382293795388595355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062374.P1382293795388595355

/-! ## A062374.P7738142500285868029

`A020725(eq[4, A034380(n+1)])`
-/

namespace A062374.P7738142500285868029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062374.P7738142500285868029

/-! ## A062374.P3821874558705293153

`A061767(eq[4, A034380(n+1)])`
-/

namespace A062374.P3821874558705293153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062374.P3821874558705293153

/-! ## A062374.P17474483424812656008

`A114637(eq[4, A034380(n+1)])`
-/

namespace A062374.P17474483424812656008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062374.P17474483424812656008

/-! ## A062374.P6773630359431148648

`A153152(eq[4, A034380(n+1)])`
-/

namespace A062374.P6773630359431148648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062374.P6773630359431148648

/-! ## A062374.P647325313373555530

`eq[4, A034380(A153151(n+1))]`
-/

namespace A062374.P647325313373555530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A153151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062374.P647325313373555530

/-! ## A062374.P13841444800029158334

`eq[4, A034380(A060000(n+1))]`
-/

namespace A062374.P13841444800029158334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062374.P13841444800029158334

/-! ## A062374.P701678742541654766

`A113484(eq[4, A034380(n+1)])`
-/

namespace A062374.P701678742541654766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062374.P701678742541654766

/-! ## A062374.P13300312969910265664

`eq[4, A034380(A233583(n+1))]`
-/

namespace A062374.P13300312969910265664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062374.P13300312969910265664

/-!
# A062375: Euler phi(n) / Carmichael lambda(n) = 6.

The programs for A062375, there is no canonical definition to state claims against.
-/

/-! ## A062375.P7987556960381351537

`eq[6, A034380(n+1)]+1`
-/

namespace A062375.P7987556960381351537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062375.P7987556960381351537

/-! ## A062375.P3083675601512261664

`eq[6, A034380(A028310(n))]`
-/

namespace A062375.P3083675601512261664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062375.P3083675601512261664

/-! ## A062375.P15051570255755032819

`A020725(eq[6, A034380(n+1)])`
-/

namespace A062375.P15051570255755032819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062375.P15051570255755032819

/-! ## A062375.P192380141244495925

`A065475(eq[6, A034380(n+1)])`
-/

namespace A062375.P192380141244495925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062375.P192380141244495925

/-! ## A062375.P314045565181632266

`A114637(eq[6, A034380(n+1)])`
-/

namespace A062375.P314045565181632266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062375.P314045565181632266

/-! ## A062375.P691338402258245936

`eq[6, A034380(A233583(n+1))]`
-/

namespace A062375.P691338402258245936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062375.P691338402258245936

/-!
# A062376: Numbers k such that Euler phi(k) / Carmichael lambda(k) = 8.

The programs for A062376, there is no canonical definition to state claims against.
-/

/-! ## A062376.P403223988309098328

`eq[8, A034380(n+1)]+1`
-/

namespace A062376.P403223988309098328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062376.P403223988309098328

/-! ## A062376.P12063625853995759741

`eq[8, A034380(A028310(n))]`
-/

namespace A062376.P12063625853995759741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062376.P12063625853995759741

/-! ## A062376.P4947850252081174892

`A020725(eq[8, A034380(n+1)])`
-/

namespace A062376.P4947850252081174892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062376.P4947850252081174892

/-! ## A062376.P8994053577122249148

`A061767(eq[8, A034380(n+1)])`
-/

namespace A062376.P8994053577122249148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062376.P8994053577122249148

/-! ## A062376.P519129017323203393

`A065475(eq[8, A034380(n+1)])`
-/

namespace A062376.P519129017323203393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062376.P519129017323203393

/-! ## A062376.P11994536864118005709

`A114637(eq[8, A034380(n+1)])`
-/

namespace A062376.P11994536864118005709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062376.P11994536864118005709

/-! ## A062376.P6760977679154261574

`A153152(eq[8, A034380(n+1)])`
-/

namespace A062376.P6760977679154261574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062376.P6760977679154261574

/-! ## A062376.P14485543217250568539

`A181569(eq[8, A034380(n+1)])`
-/

namespace A062376.P14485543217250568539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062376.P14485543217250568539

/-! ## A062376.P15176523482204698785

`eq[8, A034380(A233583(n+1))]`
-/

namespace A062376.P15176523482204698785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062376.P15176523482204698785

/-!
# A062377: Euler phi(n) / Carmichael lambda(n) = 10.

The programs for A062377, there is no canonical definition to state claims against.
-/

/-! ## A062377.P1742042799619416774

`eq[10, A034380(A028310(n))]`
-/

namespace A062377.P1742042799619416774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062377.P1742042799619416774

/-! ## A062377.P9854708788991502840

`A004830(eq[10, A034380(n+1)])`
-/

namespace A062377.P9854708788991502840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062377.P9854708788991502840

/-! ## A062377.P4820102965528931568

`A020725(eq[10, A034380(n+1)])`
-/

namespace A062377.P4820102965528931568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062377.P4820102965528931568

/-! ## A062377.P6282001572534202491

`A114637(eq[10, A034380(n+1)])`
-/

namespace A062377.P6282001572534202491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062377.P6282001572534202491

/-! ## A062377.P9981929953185251499

`eq[10, A034380(A060000(n+1))]`
-/

namespace A062377.P9981929953185251499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062377.P9981929953185251499

/-!
# A062378: n divided by largest cubefree factor of n.

The programs for A062378, the canonical program `A062378.P530133715863786862` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062378 has offset 1).

The definition of A062378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062378.P16573466314965201452

`(n+1)/A007948(n+1)`
-/

namespace A062378.P16573466314965201452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007948 (n + 1) : ℚ)

end

end A062378.P16573466314965201452

namespace A062378

/-- `(n+1)/A007948(n+1)` -/
def P16573466314965201452.Spec : Prop :=
  ∀ n, P16573466314965201452.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P530133715863786862

`A003557(A003557(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062378

/-- `A003557(A003557(n+1))` -/
def P530133715863786862.Spec : Prop :=
  ∀ n, P530133715863786862.a n = A062378 (n + 1)

theorem P530133715863786862.correct : P530133715863786862.Spec := by
  intro n
  simp only [A062378, Nat.add_sub_cancel]

end A062378

/-! ## A062378.P12791389862011159844

`(n+1)/∏{p}[n+1, gcd(n+1, #²)]`
-/

namespace A062378.P12791389862011159844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ)

end

end A062378.P12791389862011159844

namespace A062378

/-- `(n+1)/∏{p}[n+1, gcd(n+1, #²)]` -/
def P12791389862011159844.Spec : Prop :=
  ∀ n, P12791389862011159844.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P11589246219508909015

`floor((n+1)/∏{p}[n+1, #])/∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A062378.P11589246219508909015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)

end

end A062378.P11589246219508909015

namespace A062378

/-- `floor((n+1)/∏{p}[n+1, #])/∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P11589246219508909015.Spec : Prop :=
  ∀ n, P11589246219508909015.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P1871270790994734369

`ceil((n+1)/∏{p}[n+1, #])/∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A062378.P1871270790994734369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌉ : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)

end

end A062378.P1871270790994734369

namespace A062378

/-- `ceil((n+1)/∏{p}[n+1, #])/∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P1871270790994734369.Spec : Prop :=
  ∀ n, P1871270790994734369.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P12761177373474636106

`round((n+1)/∏{p}[n+1, #])/∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A062378.P12761177373474636106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ)

end

end A062378.P12761177373474636106

namespace A062378

/-- `round((n+1)/∏{p}[n+1, #])/∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P12761177373474636106.Spec : Prop :=
  ∀ n, P12761177373474636106.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P15346489139435447594

`gcd(n+1, A369915(n+1))`
-/

namespace A062378.P15346489139435447594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A369915 (n + 1))

end

end A062378.P15346489139435447594

namespace A062378

/-- `gcd(n+1, A369915(n+1))` -/
def P15346489139435447594.Spec : Prop :=
  ∀ n, (P15346489139435447594.a n : ℤ) = A062378 (n + 1)

end A062378

/-! ## A062378.P14372064546413496568

`(n+1)/(A097377(n+1)-1)`
-/

namespace A062378.P14372064546413496568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A097377 (n + 1) - 1 : ℚ)

end

end A062378.P14372064546413496568

namespace A062378

/-- `(n+1)/(A097377(n+1)-1)` -/
def P14372064546413496568.Spec : Prop :=
  ∀ n, P14372064546413496568.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P16550461626951220872

`A336551(A336551(n+1)+1)+1`
-/

namespace A062378.P16550461626951220872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A336551 (n + 1) + 1).toNat + 1

end

end A062378.P16550461626951220872

namespace A062378

/-- `A336551(A336551(n+1)+1)+1` -/
def P16550461626951220872.Spec : Prop :=
  ∀ n, P16550461626951220872.a n = A062378 (n + 1)

theorem P16550461626951220872.correct : P16550461626951220872.Spec := by
  intro n
  simp only [A062378, Nat.add_sub_cancel, A062378.P16550461626951220872.a, A062378.P530133715863786862.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062378

/-! ## A062378.P15533616774091908866

`A295657(n+1)*A295658(n+1)`
-/

namespace A062378.P15533616774091908866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1) * A295658 (n + 1)

end

end A062378.P15533616774091908866

namespace A062378

/-- `A295657(n+1)*A295658(n+1)` -/
def P15533616774091908866.Spec : Prop :=
  ∀ n, P15533616774091908866.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P16826045413465130421

`A197863(n+1)/A078615(n+1)`
-/

namespace A062378.P16826045413465130421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A078615 (n + 1) : ℚ)

end

end A062378.P16826045413465130421

namespace A062378

/-- `A197863(n+1)/A078615(n+1)` -/
def P16826045413465130421.Spec : Prop :=
  ∀ n, P16826045413465130421.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P10811979088435804168

`A254981(n+1)/A073185(n+1)`
-/

namespace A062378.P10811979088435804168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254981 (n + 1) : ℚ) / (A073185 (n + 1) : ℚ)

end

end A062378.P10811979088435804168

namespace A062378

/-- `A254981(n+1)/A073185(n+1)` -/
def P10811979088435804168.Spec : Prop :=
  ∀ n, P10811979088435804168.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P9898850024408018379

`A295658(n+1)²*A055229(n+1)`
-/

namespace A062378.P9898850024408018379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (n + 1) ^ 2 * A055229 (n + 1)

end

end A062378.P9898850024408018379

namespace A062378

/-- `A295658(n+1)²*A055229(n+1)` -/
def P9898850024408018379.Spec : Prop :=
  ∀ n, P9898850024408018379.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P14089107426654882052

`A057521(n+1)/A071773(n+1)²`
-/

namespace A062378.P14089107426654882052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A071773 (n + 1) ^ 2 : ℚ)

end

end A062378.P14089107426654882052

namespace A062378

/-- `A057521(n+1)/A071773(n+1)²` -/
def P14089107426654882052.Spec : Prop :=
  ∀ n, P14089107426654882052.a n = (A062378 (n + 1) : ℚ)

end A062378

/-! ## A062378.P14416081318807268481

`A295657((n+1)*A062379(n+1))`
-/

namespace A062378.P14416081318807268481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 ((n + 1 : ℤ) * A062379 (n + 1)).toNat

end

end A062378.P14416081318807268481

namespace A062378

/-- `A295657((n+1)*A062379(n+1))` -/
def P14416081318807268481.Spec : Prop :=
  ∀ n, P14416081318807268481.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P2955657355720715784

`A062379((n+1)*A071773(n+1))`
-/

namespace A062378.P2955657355720715784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 ((n + 1 : ℤ) * A071773 (n + 1)).toNat

end

end A062378.P2955657355720715784

namespace A062378

/-- `A062379((n+1)*A071773(n+1))` -/
def P2955657355720715784.Spec : Prop :=
  ∀ n, P2955657355720715784.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P17999297833662609994

`A062379(A249674(n+1))`
-/

namespace A062378.P17999297833662609994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (A249674 (n + 1)).toNat

end

end A062378.P17999297833662609994

namespace A062378

/-- `A062379(A249674(n+1))` -/
def P17999297833662609994.Spec : Prop :=
  ∀ n, P17999297833662609994.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P588448063509774303

`A056622(A102631(n+1))`
-/

namespace A062378.P588448063509774303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A102631 (n + 1)).toNat

end

end A062378.P588448063509774303

namespace A062378

/-- `A056622(A102631(n+1))` -/
def P588448063509774303.Spec : Prop :=
  ∀ n, P588448063509774303.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P7039174720863683326

`A295657(A295657((n+1)²)²)`
-/

namespace A062378.P7039174720863683326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A295657 ((n + 1) ^ 2) ^ 2).toNat

end

end A062378.P7039174720863683326

namespace A062378

/-- `A295657(A295657((n+1)²)²)` -/
def P7039174720863683326.Spec : Prop :=
  ∀ n, P7039174720863683326.a n = A062378 (n + 1)

end A062378

/-! ## A062378.P11214462068222038176

`A295658(A295658((n+1)²)²)`
-/

namespace A062378.P11214462068222038176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (A295658 ((n + 1) ^ 2) ^ 2).toNat

end

end A062378.P11214462068222038176

namespace A062378

/-- `A295658(A295658((n+1)²)²)` -/
def P11214462068222038176.Spec : Prop :=
  ∀ n, P11214462068222038176.a n = A062378 (n + 1)

end A062378

/-!
# A062379: n divided by largest 4th-power-free factor of n.

The programs for A062379, the canonical program `A062379.P2146115628841648253` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062379 has offset 1).

The definition of A062379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058035, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062379.P2146115628841648253

`(n+1)/A058035(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062379

/-- `(n+1)/A058035(n+1)` -/
def P2146115628841648253.Spec : Prop :=
  ∀ n, P2146115628841648253.a n = (A062379 (n + 1) : ℚ)

end A062379

/-! ## A062379.P15297451709030336472

`(n+1)/gcd(n+1, ∏{p}[n+1, #]^3)`
-/

namespace A062379.P15297451709030336472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ)

end

end A062379.P15297451709030336472

namespace A062379

/-- `(n+1)/gcd(n+1, ∏{p}[n+1, #]^3)` -/
def P15297451709030336472.Spec : Prop :=
  ∀ n, P15297451709030336472.a n = (A062379 (n + 1) : ℚ)

end A062379

/-! ## A062379.P1090692628810609273

`floor((n+1)/∏{p}[n+1, #])/A007948((n+1)/∏{p}[n+1, #])`
-/

namespace A062379.P1090692628810609273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ : ℚ) / (A007948 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A062379.P1090692628810609273

namespace A062379

/-- `floor((n+1)/∏{p}[n+1, #])/A007948((n+1)/∏{p}[n+1, #])` -/
def P1090692628810609273.Spec : Prop :=
  ∀ n, P1090692628810609273.a n = (A062379 (n + 1) : ℚ)

end A062379

/-! ## A062379.P16391056778960294724

`A062378(A003557(n+1))`
-/

namespace A062379.P16391056778960294724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A003557 (n + 1)).toNat

end

end A062379.P16391056778960294724

namespace A062379

/-- `A062378(A003557(n+1))` -/
def P16391056778960294724.Spec : Prop :=
  ∀ n, P16391056778960294724.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P17449708882617056195

`A073752(A062378(n+1))`
-/

namespace A062379.P17449708882617056195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (A062378 (n + 1)).toNat

end

end A062379.P17449708882617056195

namespace A062379

/-- `A073752(A062378(n+1))` -/
def P17449708882617056195.Spec : Prop :=
  ∀ n, P17449708882617056195.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P762201915285868666

`A003557((n+1)/A007948(n+1))`
-/

namespace A062379.P762201915285868666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007948 (n + 1) : ℚ))).toNat

end

end A062379.P762201915285868666

namespace A062379

/-- `A003557((n+1)/A007948(n+1))` -/
def P762201915285868666.Spec : Prop :=
  ∀ n, P762201915285868666.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P2766267232499923747

`A003557(A003557((n+1)/∏{p}[n+1, #]))`
-/

namespace A062379.P2766267232499923747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A062379.P2766267232499923747

namespace A062379

/-- `A003557(A003557((n+1)/∏{p}[n+1, #]))` -/
def P2766267232499923747.Spec : Prop :=
  ∀ n, P2766267232499923747.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P6540697895896470064

`A062378(A007947(n+1)*A062378(n+1))`
-/

namespace A062379.P6540697895896470064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A007947 (n + 1) * A062378 (n + 1)).toNat

end

end A062379.P6540697895896470064

namespace A062379

/-- `A062378(A007947(n+1)*A062378(n+1))` -/
def P6540697895896470064.Spec : Prop :=
  ∀ n, P6540697895896470064.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P17461968403053747222

`A062378(A062378(n+1)*A071773(n+1))`
-/

namespace A062379.P17461968403053747222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A062378 (n + 1) * A071773 (n + 1)).toNat

end

end A062379.P17461968403053747222

namespace A062379

/-- `A062378(A062378(n+1)*A071773(n+1))` -/
def P17461968403053747222.Spec : Prop :=
  ∀ n, P17461968403053747222.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P10471207018182902024

`A003557(A003557(n+1)/A071773(n+1))`
-/

namespace A062379.P10471207018182902024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((A003557 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ))).toNat

end

end A062379.P10471207018182902024

namespace A062379

/-- `A003557(A003557(n+1)/A071773(n+1))` -/
def P10471207018182902024.Spec : Prop :=
  ∀ n, P10471207018182902024.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P1490790732371702788

`A295657(A062378(n+1)²)`
-/

namespace A062379.P1490790732371702788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A062378 (n + 1) ^ 2).toNat

end

end A062379.P1490790732371702788

namespace A062379

/-- `A295657(A062378(n+1)²)` -/
def P1490790732371702788.Spec : Prop :=
  ∀ n, P1490790732371702788.a n = A062379 (n + 1)

end A062379

/-! ## A062379.P16469912634072816356

`sqrt(A062378(A062378(n+1)²))`
-/

namespace A062379.P16469912634072816356
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062378 (A062378 (n + 1) ^ 2).toNat : ℝ)

end

end A062379.P16469912634072816356

namespace A062379

/-- `sqrt(A062378(A062378(n+1)²))` -/
def P16469912634072816356.Spec : Prop :=
  ∀ n, P16469912634072816356.a n = (A062379 (n + 1) : ℝ)

end A062379

/-! ## A062379.P15565905385581995499

`∏{e}[(n+1)*∑[n], A219968(A065855(#+1))]`
-/

namespace A062379.P15565905385581995499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A219968 (A065855 (Nat.factorization (f1 n) p + 1)).toNat

end

end A062379.P15565905385581995499

namespace A062379

/-- `∏{e}[(n+1)*∑[n], A219968(A065855(#+1))]` -/
def P15565905385581995499.Spec : Prop :=
  ∀ n, P15565905385581995499.a n = A062379 (n + 1)

end A062379

/-!
# A062380: a(n) = Sum_{i|n,j|n} phi(i)*phi(j)/phi(gcd(i,j)), where phi is Euler totient function.

The programs for A062380, the canonical program `A062380.P11776332830920576052` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062380 has offset 1).

The definition of A062380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062380.P11776332830920576052

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))²)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062380

/-- `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))²)]` -/
def P11776332830920576052.Spec : Prop :=
  ∀ n, P11776332830920576052.a n = A062380 (n + 1)

theorem P11776332830920576052.correct : P11776332830920576052.Spec := by
  intro n
  simp only [A062380, Nat.add_sub_cancel]

end A062380

/-! ## A062380.P17678320528758903304

`∑{d}[n+1, A000010(#)*A000005(#²)]`
-/

namespace A062380.P17678320528758903304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000005 (d ^ 2)

end

end A062380.P17678320528758903304

namespace A062380

/-- `∑{d}[n+1, A000010(#)*A000005(#²)]` -/
def P17678320528758903304.Spec : Prop :=
  ∀ n, P17678320528758903304.a n = A062380 (n + 1)

end A062380

/-! ## A062380.P12737700324010002925

`∑{d}[n+1, A196524(#)]`
-/

namespace A062380.P12737700324010002925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A196524 d

end

end A062380.P12737700324010002925

namespace A062380

/-- `∑{d}[n+1, A196524(#)]` -/
def P12737700324010002925.Spec : Prop :=
  ∀ n, P12737700324010002925.a n = A062380 (n + 1)

end A062380

/-! ## A062380.P3842940140059394528

`∑{d}[n+1, #*A333557((n+1)/#)]`
-/

namespace A062380.P3842940140059394528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062380.P3842940140059394528

namespace A062380

/-- `∑{d}[n+1, #*A333557((n+1)/#)]` -/
def P3842940140059394528.Spec : Prop :=
  ∀ n, P3842940140059394528.a n = A062380 (n + 1)

end A062380

/-! ## A062380.P36864156183022467

`∑{d}[n+1, A000005(#²)*A000010(#)]`
-/

namespace A062380.P36864156183022467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 2) * A000010 d

end

end A062380.P36864156183022467

namespace A062380

/-- `∑{d}[n+1, A000005(#²)*A000010(#)]` -/
def P36864156183022467.Spec : Prop :=
  ∀ n, P36864156183022467.a n = A062380 (n + 1)

end A062380

/-! ## A062380.P2880033167686337636

`A216623(∑[n+1])`
-/

namespace A062380.P2880033167686337636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062380.P2880033167686337636

namespace A062380

/-- `A216623(∑[n+1])` -/
def P2880033167686337636.Spec : Prop :=
  ∀ n, P2880033167686337636.a n = A062380 (n + 1)

end A062380

/-! ## A062380.P14652561560374231489

`A216622(∑[4*n]+1)`
-/

namespace A062380.P14652561560374231489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216622 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A062380.P14652561560374231489

namespace A062380

/-- `A216622(∑[4*n]+1)` -/
def P14652561560374231489.Spec : Prop :=
  ∀ n, P14652561560374231489.a n = A062380 (n + 1)

end A062380

/-!
# A062381: Let A_n be the n X n matrix defined by A_n[i,j] = 1/F(i+j-1) for 1<=i,j<=n where F(k) is the k-th Fibonacci number (A000045). Then a_n = 1/det(A_n).

The programs for A062381, there is no canonical definition to state claims against.
-/

/-! ## A062381.P10182726814820108028

`A003266(n+1)*A094221(n+1)`
-/

namespace A062381.P10182726814820108028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1) * A094221 (n + 1)

end

end A062381.P10182726814820108028

/-!
# A062382: Positive numbers whose product of digits is 5 times their sum.

The programs for A062382, there is no canonical definition to state claims against.
-/

/-! ## A062382.P17708816449116912552

`eq[A007954(n), A008706(A007953(n))]`
-/

namespace A062382.P17708816449116912552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062382.P17708816449116912552

/-! ## A062382.P5510467554981990299

`eq[A008458(A007953(n)), A061762(n)]`
-/

namespace A062382.P5510467554981990299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062382.P5510467554981990299

/-! ## A062382.P14464352365955895022

`eq[A008486(A169805(n)), A061762(n)]`
-/

namespace A062382.P14464352365955895022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062382.P14464352365955895022

/-! ## A062382.P9848026835767126378

`eq[A007954(n), A184418(A169805(n))]`
-/

namespace A062382.P9848026835767126378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062382.P9848026835767126378

/-! ## A062382.P6920419386415692699

`eq[A008458(A169805(n)/2), A061762(n)]`
-/

namespace A062382.P6920419386415692699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062382.P6920419386415692699

/-!
# A062383: a(0) = 1: for n>0, a(n) = 2^floor(log_2(n)+1) or a(n) = 2*a(floor(n/2)).

The programs for A062383, the canonical program `A062383.P4595411753464333460` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062383 has offset 0).

The definition of A062383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(floor(n/2))` (program `A062383.P4595411753464333460`, by `A062383.P4595411753464333460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062383.P17689848256518389026

`2^ceil(log2(n+1))`
-/

namespace A062383.P17689848256518389026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A062383.P17689848256518389026

namespace A062383

/-- `2^ceil(log2(n+1))` -/
def P17689848256518389026.Spec : Prop :=
  ∀ n, P17689848256518389026.a n = (A062383 n : ℚ)

end A062383

/-! ## A062383.P4595411753464333460

`2*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062383

/-- `2*a(floor(n/2))` -/
def P4595411753464333460.Spec : Prop :=
  ∀ n, (P4595411753464333460.a n : ℤ) = A062383 n

theorem P4595411753464333460.correct : P4595411753464333460.Spec := by
  intro n
  simp only [A062383]

end A062383

/-! ## A062383.P2926710162899304200

`A264619(n)-A264618(n)`
-/

namespace A062383.P2926710162899304200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n - A264618 n

end

end A062383.P2926710162899304200

namespace A062383

/-- `A264619(n)-A264618(n)` -/
def P2926710162899304200.Spec : Prop :=
  ∀ n, P2926710162899304200.a n = A062383 n

end A062383

/-! ## A062383.P115569814408209487

`A142151(2*n)/2+1`
-/

namespace A062383.P115569814408209487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142151 (2 * n) : ℚ) / 2 + 1

end

end A062383.P115569814408209487

namespace A062383

/-- `A142151(2*n)/2+1` -/
def P115569814408209487.Spec : Prop :=
  ∀ n, P115569814408209487.a n = (A062383 n : ℚ)

end A062383

/-! ## A062383.P16282967696260429895

`∑[∏{p}[n, n*val(#, 2)]]`
-/

namespace A062383.P16282967696260429895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062383.P16282967696260429895

namespace A062383

/-- `∑[∏{p}[n, n*val(#, 2)]]` -/
def P16282967696260429895.Spec : Prop :=
  ∀ n, (P16282967696260429895.a n : ℤ) = A062383 n

end A062383

/-! ## A062383.P4423928843270461624

`∑[∏{p}[n, n*C(2, #)]]`
-/

namespace A062383.P4423928843270461624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062383.P4423928843270461624

namespace A062383

/-- `∑[∏{p}[n, n*C(2, #)]]` -/
def P4423928843270461624.Spec : Prop :=
  ∀ n, (P4423928843270461624.a n : ℤ) = A062383 n

end A062383

/-! ## A062383.P10195304540974448846

`and(2*n, -a(n-1))` with `a(0)=1`
-/

namespace A062383.P10195304540974448846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (2 * n : ℤ) (-a (n - 1))

end

end A062383.P10195304540974448846

namespace A062383

/-- `and(2*n, -a(n-1))` -/
def P10195304540974448846.Spec : Prop :=
  ∀ n, P10195304540974448846.a n = A062383 n

end A062383

/-! ## A062383.P9295014441714703410

`n-or(n, -a(n-1))` with `a(0)=1`
-/

namespace A062383.P9295014441714703410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.lor (n : ℤ) (-a (n - 1))

end

end A062383.P9295014441714703410

namespace A062383

/-- `n-or(n, -a(n-1))` -/
def P9295014441714703410.Spec : Prop :=
  ∀ n, P9295014441714703410.a n = A062383 n

end A062383

/-! ## A062383.P14016282496647615019

`2/a(floor(n/2))^(-1)` with `a(0)=1`
-/

namespace A062383.P14016282496647615019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a ⌊(n : ℚ) / 2⌋.toNat ^ (-1 : ℤ)

end

end A062383.P14016282496647615019

namespace A062383

/-- `2/a(floor(n/2))^(-1)` -/
def P14016282496647615019.Spec : Prop :=
  ∀ n, P14016282496647615019.a n = (A062383 n : ℚ)

end A062383

/-! ## A062383.P4223762685930229327

`or(n, a(n-1)-1)+1` with `a(0)=1`
-/

namespace A062383.P4223762685930229327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n : ℤ) (a (n - 1) - 1) + 1

end

end A062383.P4223762685930229327

namespace A062383

/-- `or(n, a(n-1)-1)+1` -/
def P4223762685930229327.Spec : Prop :=
  ∀ n, P4223762685930229327.a n = A062383 n

end A062383

/-! ## A062383.P11005263984527643712

`and(2*n, 3*a(n-1))` with `a(0)=1`
-/

namespace A062383.P11005263984527643712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (2 * n) (3 * a (n - 1))

end

end A062383.P11005263984527643712

namespace A062383

/-- `and(2*n, 3*a(n-1))` -/
def P11005263984527643712.Spec : Prop :=
  ∀ n, (P11005263984527643712.a n : ℤ) = A062383 n

end A062383

/-! ## A062383.P13893290808441263615

`a(floor(n/2))/(1-1/2)` with `a(0)=1`
-/

namespace A062383.P13893290808441263615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / (1 - (1 : ℚ) / 2)

end

end A062383.P13893290808441263615

namespace A062383

/-- `a(floor(n/2))/(1-1/2)` -/
def P13893290808441263615.Spec : Prop :=
  ∀ n, P13893290808441263615.a n = (A062383 n : ℚ)

end A062383

/-! ## A062383.P12928587397359451963

`and(a(n-1)+n, -(n+1))` with `a(0)=1`
-/

namespace A062383.P12928587397359451963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) + (n : ℤ)) (-(n + 1 : ℤ))

end

end A062383.P12928587397359451963

namespace A062383

/-- `and(a(n-1)+n, -(n+1))` -/
def P12928587397359451963.Spec : Prop :=
  ∀ n, P12928587397359451963.a n = A062383 n

end A062383

/-! ## A062383.P206257745249222278

`a(n-1)+and(n, a(n-1))` with `a(0)=1`
-/

namespace A062383.P206257745249222278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.land n (a (n - 1))

end

end A062383.P206257745249222278

namespace A062383

/-- `a(n-1)+and(n, a(n-1))` -/
def P206257745249222278.Spec : Prop :=
  ∀ n, (P206257745249222278.a n : ℤ) = A062383 n

end A062383

/-! ## A062383.P14203727820652049114

`a(floor(n/2))+a(floor(n/2))` with `a(0)=1`
-/

namespace A062383.P14203727820652049114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a ⌊(n : ℚ) / 2⌋.toNat

end

end A062383.P14203727820652049114

namespace A062383

/-- `a(floor(n/2))+a(floor(n/2))` -/
def P14203727820652049114.Spec : Prop :=
  ∀ n, (P14203727820652049114.a n : ℤ) = A062383 n

theorem P14203727820652049114.correct : P14203727820652049114.Spec := by
  intro n
  simp only [A062383, Nat.add_sub_cancel, A062383.P14203727820652049114.a, A062383.P4595411753464333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062383

/-! ## A062383.P2245692448573762638

`1-(1-a(n-1))%n+n` with `a(0)=1`
-/

namespace A062383.P2245692448573762638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.tmod (1 - a (n - 1)) (n : ℤ) + (n : ℤ)

end

end A062383.P2245692448573762638

namespace A062383

/-- `1-(1-a(n-1))%n+n` -/
def P2245692448573762638.Spec : Prop :=
  ∀ n, P2245692448573762638.a n = A062383 n

end A062383

/-! ## A062383.P4817366974827640221

`2*n-(2*n)%a(n-1)` with `a(0)=1`
-/

namespace A062383.P4817366974827640221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - Int.tmod (2 * n : ℤ) (a (n - 1))

end

end A062383.P4817366974827640221

namespace A062383

/-- `2*n-(2*n)%a(n-1)` -/
def P4817366974827640221.Spec : Prop :=
  ∀ n, P4817366974827640221.a n = A062383 n

end A062383

/-! ## A062383.P16615394858212339252

`lt[xor(n+1, 2*n), 2*n]-n`
-/

namespace A062383.P16615394858212339252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A062383.P16615394858212339252

namespace A062383

/-- `lt[xor(n+1, 2*n), 2*n]-n` -/
def P16615394858212339252.Spec : Prop :=
  ∀ n, P16615394858212339252.a n = A062383 n

end A062383

/-! ## A062383.P9614081054142207667

`1-((1-floor(a(n-1)))%n-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062383.P9614081054142207667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Int.tmod (1 - a (n - 1)) (n : ℤ) - (n : ℤ))

end

end A062383.P9614081054142207667

namespace A062383

/-- `1-((1-floor(a(n-1)))%n-n)` -/
def P9614081054142207667.Spec : Prop :=
  ∀ n, P9614081054142207667.a n = A062383 n

end A062383

/-! ## A062383.P15162817268420632165

`a(n-1)-(n%a(n-1)-n)` with `a(0)=1`
-/

namespace A062383.P15162817268420632165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (Int.tmod (n : ℤ) (a (n - 1)) - (n : ℤ))

end

end A062383.P15162817268420632165

namespace A062383

/-- `a(n-1)-(n%a(n-1)-n)` -/
def P15162817268420632165.Spec : Prop :=
  ∀ n, P15162817268420632165.a n = A062383 n

end A062383

/-!
# A062384: Positive numbers whose product of digits is 7 times their sum.

The programs for A062384, there is no canonical definition to state claims against.
-/

/-! ## A062384.P4290000887356108675

`eq[A008574(A169805(n)), A061762(n)]`
-/

namespace A062384.P4290000887356108675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062384.P4290000887356108675

/-!
# A062385: Numbers k such that sigma(k) - phi(k) is a cube.

The programs for A062385, there is no canonical definition to state claims against.
-/

/-! ## A062385.P3712151633828193790

`record[(n+1)*A010057(A051612(n+1))]`
-/

namespace A062385.P3712151633828193790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010057 (A051612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062385.P3712151633828193790

/-!
# A062386: Number of alternating link diagrams with n crossings, 1 connected component and two external legs.

The programs for A062386, there is no canonical definition to state claims against.
-/

/-! ## A062386.P14461183561457754721

`record[A062038(comp[floor((n/2)²)])]`
-/

namespace A062386.P14461183561457754721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062386.P14461183561457754721

/-! ## A062386.P18014889171786007968

`A062038(A328659(n)+3)`
-/

namespace A062386.P18014889171786007968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 (A328659 n + 3).toNat

end

end A062386.P18014889171786007968

/-! ## A062386.P2853452304862066876

`A062038(A362850(n+1)+A001055(2*(n+1)))`
-/

namespace A062386.P2853452304862066876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 (A362850 (n + 1) + A001055 (2 * (n + 1))).toNat

end

end A062386.P2853452304862066876

/-!
# A062387: Squares in which removing a suitably chosen digit yields another square and this process can be continued until the digits are exhausted.

The programs for A062387, there is no canonical definition to state claims against.
-/

/-! ## A062387.P17668651628996972957

`A034378(n+1)`
-/

namespace A062387.P17668651628996972957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034378 (n + 1)

end

end A062387.P17668651628996972957

/-! ## A062387.P13320031155876802691

`∑[abs(Δ[A034378(n)])]`
-/

namespace A062387.P13320031155876802691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062387.P13320031155876802691

/-! ## A062387.P7334027553055242531

`record[A034378(abs(1-n))]`
-/

namespace A062387.P7334027553055242531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034378 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062387.P7334027553055242531

/-! ## A062387.P12763684753755651670

`∩[A008740(n), A034378(n)]`
-/

namespace A062387.P12763684753755651670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062387.P12763684753755651670

/-! ## A062387.P2281727236220222638

`∩[A034378(n), A274583(n)]`
-/

namespace A062387.P2281727236220222638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062387.P2281727236220222638

/-!
# A062388: Smallest palindrome with digit sum = n.

The programs for A062388, there is no canonical definition to state claims against.
-/

/-! ## A062388.P4325934186993115589

`A070244(n)%A339462(A008706(n))`
-/

namespace A062388.P4325934186993115589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070244 n) (A339462 (A008706 n).toNat)

end

end A062388.P4325934186993115589

/-! ## A062388.P1311894915934599530

`∩[A173551(n+1), A191839(n+1)]`
-/

namespace A062388.P1311894915934599530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062388.P1311894915934599530

/-! ## A062388.P10689986307701160946

`A039723(n)%A331249(A314930(n))`
-/

namespace A062388.P10689986307701160946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039723 n) (A331249 (A314930 n).toNat)

end

end A062388.P10689986307701160946

/-! ## A062388.P569748532310981142

`eq[n, A118764(A118757(A004086(n)))]`
-/

namespace A062388.P569748532310981142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A118757 (A004086 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062388.P569748532310981142

/-! ## A062388.P8265975026062102745

`C(A185255(3*n), 2)+n`
-/

namespace A062388.P8265975026062102745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185255 (3 * n)).toNat 2 + n

end

end A062388.P8265975026062102745

/-!
# A062389: a(n) = floor( (2n-1)*Pi/2 ).

The programs for A062389, the canonical program `A062389.P7788462285685683562` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062389 has offset 1).

The definition of A062389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*(n+1)-1)*π/2)` (program `A062389.P7788462285685683562`, by `A062389.P7788462285685683562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062389.P7788462285685683562

`floor((2*(n+1)-1)*π/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062389

/-- `floor((2*(n+1)-1)*π/2)` -/
def P7788462285685683562.Spec : Prop :=
  ∀ n, P7788462285685683562.a n = A062389 (n + 1)

theorem P7788462285685683562.correct : P7788462285685683562.Spec := by
  intro n
  simp only [A062389, Nat.add_sub_cancel]

end A062389

/-! ## A062389.P10029086597118612431

`lt[cot(1), tan(n)]`
-/

namespace A062389.P10029086597118612431
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P10029086597118612431

namespace A062389

/-- `lt[cot(1), tan(n)]` -/
def P10029086597118612431.Spec : Prop :=
  ∀ n, (P10029086597118612431.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P12924425987593557558

`lt[cos(26), tan(n)]`
-/

namespace A062389.P12924425987593557558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (26 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P12924425987593557558

namespace A062389

/-- `lt[cos(26), tan(n)]` -/
def P12924425987593557558.Spec : Prop :=
  ∀ n, (P12924425987593557558.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P12824667102986083823

`lt[tanh(tanh(1)), tan(n)]`
-/

namespace A062389.P12824667102986083823
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (Real.tanh (1 : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P12824667102986083823

namespace A062389

/-- `lt[tanh(tanh(1)), tan(n)]` -/
def P12824667102986083823.Spec : Prop :=
  ∀ n, (P12824667102986083823.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P12988494620175832798

`lt[1, tan(1)*tan(n)]`
-/

namespace A062389.P12988494620175832798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ) * Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A062389.P12988494620175832798

namespace A062389

/-- `lt[1, tan(1)*tan(n)]` -/
def P12988494620175832798.Spec : Prop :=
  ∀ n, (P12988494620175832798.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P6772373739335079383

`lt[1/tan(1), tan(n)]`
-/

namespace A062389.P6772373739335079383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.tan (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P6772373739335079383

namespace A062389

/-- `lt[1/tan(1), tan(n)]` -/
def P6772373739335079383.Spec : Prop :=
  ∀ n, (P6772373739335079383.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P6228771274610895988

`lt[tan(n+1), tan(12)]`
-/

namespace A062389.P6228771274610895988
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (12 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P6228771274610895988

namespace A062389

/-- `lt[tan(n+1), tan(12)]` -/
def P6228771274610895988.Spec : Prop :=
  ∀ n, (P6228771274610895988.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P1350544675644906572

`comp[floor(n-sin(2*n))]`
-/

namespace A062389.P1350544675644906572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.sin (2 * n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A062389.P1350544675644906572

namespace A062389

/-- `comp[floor(n-sin(2*n))]` -/
def P1350544675644906572.Spec : Prop :=
  ∀ n, (P1350544675644906572.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P10707783529920206788

`floor((2*n+1)*asin(1))`
-/

namespace A062389.P10707783529920206788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) * Real.arcsin (1 : ℝ)⌋

end

end A062389.P10707783529920206788

namespace A062389

/-- `floor((2*n+1)*asin(1))` -/
def P10707783529920206788.Spec : Prop :=
  ∀ n, P10707783529920206788.a n = A062389 (n + 1)

theorem P10707783529920206788.correct : P10707783529920206788.Spec := by
  intro n
  simp only [A062389, Nat.add_sub_cancel, A062389.P10707783529920206788.a, A062389.P7788462285685683562.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A062389

/-! ## A062389.P11319279258682337651

`lt[cos(n)/cos(n+1), cos(n)]`
-/

namespace A062389.P11319279258682337651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) / Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P11319279258682337651

namespace A062389

/-- `lt[cos(n)/cos(n+1), cos(n)]` -/
def P11319279258682337651.Spec : Prop :=
  ∀ n, (P11319279258682337651.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P17215953124821351237

`A257984(n+1)-1`
-/

namespace A062389.P17215953124821351237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257984 (n + 1) - 1

end

end A062389.P17215953124821351237

namespace A062389

/-- `A257984(n+1)-1` -/
def P17215953124821351237.Spec : Prop :=
  ∀ n, P17215953124821351237.a n = A062389 (n + 1)

end A062389

/-! ## A062389.P4602086608821812194

`∪[A246393(n), A246394(n)]`
-/

namespace A062389.P4602086608821812194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062389.P4602086608821812194

namespace A062389

/-- `∪[A246393(n), A246394(n)]` -/
def P4602086608821812194.Spec : Prop :=
  ∀ n, (P4602086608821812194.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P6104637820365131382

`lt[A000209(n+1), A000209(n)]`
-/

namespace A062389.P6104637820365131382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000209 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062389.P6104637820365131382

namespace A062389

/-- `lt[A000209(n+1), A000209(n)]` -/
def P6104637820365131382.Spec : Prop :=
  ∀ n, (P6104637820365131382.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P8505881873799706439

`A140758(Δ[n²])`
-/

namespace A062389.P8505881873799706439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062389.P8505881873799706439

namespace A062389

/-- `A140758(Δ[n²])` -/
def P8505881873799706439.Spec : Prop :=
  ∀ n, P8505881873799706439.a n = A062389 (n + 1)

end A062389

/-! ## A062389.P10632283818569471698

`∩[A026316(n+1), A140758(n)]`
-/

namespace A062389.P10632283818569471698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062389.P10632283818569471698

namespace A062389

/-- `∩[A026316(n+1), A140758(n)]` -/
def P10632283818569471698.Spec : Prop :=
  ∀ n, (P10632283818569471698.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P2763072866054214976

`∩[A140758(n), A327422(n+1)]`
-/

namespace A062389.P2763072866054214976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062389.P2763072866054214976

namespace A062389

/-- `∩[A140758(n), A327422(n+1)]` -/
def P2763072866054214976.Spec : Prop :=
  ∀ n, (P2763072866054214976.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P9904093788191242655

`∩[A054386(n+1), A140758(n)]`
-/

namespace A062389.P9904093788191242655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062389.P9904093788191242655

namespace A062389

/-- `∩[A054386(n+1), A140758(n)]` -/
def P9904093788191242655.Spec : Prop :=
  ∀ n, (P9904093788191242655.a n : ℤ) = A062389 (n + 1)

end A062389

/-! ## A062389.P8123857727665932293

`A054386(A140758(2*n+1)-n)`
-/

namespace A062389.P8123857727665932293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (A140758 (2 * n + 1) - (n : ℤ)).toNat

end

end A062389.P8123857727665932293

namespace A062389

/-- `A054386(A140758(2*n+1)-n)` -/
def P8123857727665932293.Spec : Prop :=
  ∀ n, P8123857727665932293.a n = A062389 (n + 1)

end A062389

/-!
# A062390: Numbers k such that (k + R(k)) / (k - R(k)) = +-11 where R(k) is the digit reversal of k (A004086).

The programs for A062390, there is no canonical definition to state claims against.
-/

/-! ## A062390.P18112469996718635655

`∩[A085607(n+1), A087993(n+1)]`
-/

namespace A062390.P18112469996718635655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062390.P18112469996718635655

/-! ## A062390.P5272902465185091295

`filter[A087993(n+1), A266672(#)]`
-/

namespace A062390.P5272902465185091295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266672 (f1 j).toNat = 1) n)

end

end A062390.P5272902465185091295

/-!
# A062391: a(1) = 3, a(2) = 5; a(n+1) = smallest prime number > a(n) such that the sum of any three consecutive terms is a prime.

The programs for A062391, there is no canonical definition to state claims against.
-/

/-! ## A062391.P16782343500567258526

`p?[record[2*(n+1)-A033791(n)]]`
-/

namespace A062391.P16782343500567258526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062391.P16782343500567258526

/-! ## A062391.P7960166759129841987

`p?[A073286(record[A330195(n)])]`
-/

namespace A062391.P7960166759129841987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062391.P7960166759129841987

/-! ## A062391.P9425158803346868131

`p?[A089854(record[A330195(n)])]`
-/

namespace A062391.P9425158803346868131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062391.P9425158803346868131

/-! ## A062391.P5750753081683117551

`p?[A073286(eq[n, A330195(n)])]`
-/

namespace A062391.P5750753081683117551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073286 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062391.P5750753081683117551

/-! ## A062391.P12868720998772731143

`∩[A347468(n+1), A383679(n+1)]`
-/

namespace A062391.P12868720998772731143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062391.P12868720998772731143

/-!
# A062392: a(n) = n^4 - (n-1)^4 + (n-2)^4 - ... 0^4.

The programs for A062392, the canonical program `A062392.P10738096969649155249` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062392 has offset 0).

The definition of A062392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062392.P10738096969649155249

`n^4-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062392

/-- `n^4-a(n-1)` -/
def P10738096969649155249.Spec : Prop :=
  ∀ n, P10738096969649155249.a n = A062392 n

theorem P10738096969649155249.correct : P10738096969649155249.Spec := by
  intro n
  simp only [A062392]

end A062392

/-! ## A062392.P6953040911719250060

`ogf((x+10x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A062392.P6953040911719250060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10, 1] [1, -5, 10, -10, 5, -1] n

end

end A062392.P6953040911719250060

namespace A062392

/-- `ogf((x+10x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6953040911719250060.Spec : Prop :=
  ∀ n, P6953040911719250060.a n = A062392 n

end A062392

/-! ## A062392.P9677217626269560732

`(2*n²+n^3-1)*n/2`
-/

namespace A062392.P9677217626269560732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n ^ 2 + n ^ 3 : ℤ) - 1) * (n : ℤ) : ℚ) / 2

end

end A062392.P9677217626269560732

namespace A062392

/-- `(2*n²+n^3-1)*n/2` -/
def P9677217626269560732.Spec : Prop :=
  ∀ n, P9677217626269560732.a n = (A062392 n : ℚ)

theorem P9677217626269560732.correct : P9677217626269560732.Spec := by
  intro n
  induction n with
  | zero => simp [A062392, A062392.P9677217626269560732.a, A062392.P10738096969649155249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062392, Nat.add_sub_cancel, A062392.P9677217626269560732.a, A062392.P10738096969649155249.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062392

/-! ## A062392.P13233555063864856526

`A110450(n)-A002378(n)`
-/

namespace A062392.P13233555063864856526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n - A002378 n

end

end A062392.P13233555063864856526

namespace A062392

/-- `A110450(n)-A002378(n)` -/
def P13233555063864856526.Spec : Prop :=
  ∀ n, P13233555063864856526.a n = A062392 n

theorem P13233555063864856526.correct : P13233555063864856526.Spec := by
  intro n
  simp only [A062392, Nat.add_sub_cancel, A062392.P13233555063864856526.a, A062392.P10738096969649155249.a, A002378, A002378.P6342434596694243671.a, A110450, A110450.P114851272246151369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062392

/-! ## A062392.P6077075350125698494

`A000217(n)*(2*A000217(n)-1)`
-/

namespace A062392.P6077075350125698494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * (2 * A000217 n - 1)

end

end A062392.P6077075350125698494

namespace A062392

/-- `A000217(n)*(2*A000217(n)-1)` -/
def P6077075350125698494.Spec : Prop :=
  ∀ n, P6077075350125698494.a n = A062392 n

end A062392

/-! ## A062392.P11095402098715267362

`A000384(A000217(n))`
-/

namespace A062392.P11095402098715267362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000217 n).toNat

end

end A062392.P11095402098715267362

namespace A062392

/-- `A000384(A000217(n))` -/
def P11095402098715267362.Spec : Prop :=
  ∀ n, P11095402098715267362.a n = A062392 n

end A062392

/-! ## A062392.P12191761547677812218

`C(∑[2*n], 2)`
-/

namespace A062392.P12191761547677812218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A062392.P12191761547677812218

namespace A062392

/-- `C(∑[2*n], 2)` -/
def P12191761547677812218.Spec : Prop :=
  ∀ n, (P12191761547677812218.a n : ℤ) = A062392 n

end A062392

/-! ## A062392.P14756228456445492823

`lcm(1-∑[2*n], ∑[n])`
-/

namespace A062392.P14756228456445492823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A062392.P14756228456445492823

namespace A062392

/-- `lcm(1-∑[2*n], ∑[n])` -/
def P14756228456445492823.Spec : Prop :=
  ∀ n, (P14756228456445492823.a n : ℤ) = A062392 n

end A062392

/-! ## A062392.P13702837356178184940

`abs(a(n-1)-n²²)` with `a(0)=0`
-/

namespace A062392.P13702837356178184940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - ((n ^ 2) ^ 2 : ℤ)|

end

end A062392.P13702837356178184940

namespace A062392

/-- `abs(a(n-1)-n²²)` -/
def P13702837356178184940.Spec : Prop :=
  ∀ n, P13702837356178184940.a n = A062392 n

end A062392

/-! ## A062392.P17258473992431220589

`floor(n²²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A062392.P17258473992431220589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2) ^ 2 : ℤ) - a (n - 1)

end

end A062392.P17258473992431220589

namespace A062392

/-- `floor(n²²-a(n-1))` -/
def P17258473992431220589.Spec : Prop :=
  ∀ n, P17258473992431220589.a n = A062392 n

theorem P17258473992431220589.correct : P17258473992431220589.Spec := by
  intro n
  simp only [A062392, Nat.add_sub_cancel, A062392.P17258473992431220589.a, A062392.P10738096969649155249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062392

/-! ## A062392.P17979083634415756303

`ceil(n²²-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A062392.P17979083634415756303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2) ^ 2 : ℤ) - a (n - 1)

end

end A062392.P17979083634415756303

namespace A062392

/-- `ceil(n²²-a(n-1))` -/
def P17979083634415756303.Spec : Prop :=
  ∀ n, P17979083634415756303.a n = A062392 n

theorem P17979083634415756303.correct : P17979083634415756303.Spec := by
  intro n
  simp only [A062392, Nat.add_sub_cancel, A062392.P17979083634415756303.a, A062392.P10738096969649155249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062392

/-! ## A062392.P7768058894677082538

`round(n²²-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A062392.P7768058894677082538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2) ^ 2 : ℤ) - a (n - 1)

end

end A062392.P7768058894677082538

namespace A062392

/-- `round(n²²-a(n-1))` -/
def P7768058894677082538.Spec : Prop :=
  ∀ n, P7768058894677082538.a n = A062392 n

theorem P7768058894677082538.correct : P7768058894677082538.Spec := by
  intro n
  simp only [A062392, Nat.add_sub_cancel, A062392.P7768058894677082538.a, A062392.P10738096969649155249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062392

/-! ## A062392.P14573376067220797424

`n²²-C(n²-n, 2)`
-/

namespace A062392.P14573376067220797424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A062392.P14573376067220797424

namespace A062392

/-- `n²²-C(n²-n, 2)` -/
def P14573376067220797424.Spec : Prop :=
  ∀ n, P14573376067220797424.a n = A062392 n

end A062392

/-! ## A062392.P7733136354053619978

`lcm(n, n+1)²/2-∑[n]`
-/

namespace A062392.P7733136354053619978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) ^ 2 : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A062392.P7733136354053619978

namespace A062392

/-- `lcm(n, n+1)²/2-∑[n]` -/
def P7733136354053619978.Spec : Prop :=
  ∀ n, P7733136354053619978.a n = (A062392 n : ℚ)

end A062392

/-! ## A062392.P5373222769054233841

`(record[(n-1)²]-(n+2))*∑[n]`
-/

namespace A062392.P5373222769054233841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A062392.P5373222769054233841

namespace A062392

/-- `(record[(n-1)²]-(n+2))*∑[n]` -/
def P5373222769054233841.Spec : Prop :=
  ∀ n, P5373222769054233841.a n = A062392 n

end A062392

/-! ## A062392.P9054624607187499016

`∑[a(n-1)+2]*∑[n]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A062392.P9054624607187499016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A062392.P9054624607187499016

namespace A062392

/-- `∑[a(n-1)+2]*∑[n]` -/
def P9054624607187499016.Spec : Prop :=
  ∀ n, (P9054624607187499016.a n : ℤ) = A062392 n

end A062392

/-! ## A062392.P1806269400634183823

`C(n*(n+1), 2)-and(1, 2*n)`
-/

namespace A062392.P1806269400634183823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 1)) 2 : ℤ) - (Nat.land 1 (2 * n) : ℤ)

end

end A062392.P1806269400634183823

namespace A062392

/-- `C(n*(n+1), 2)-and(1, 2*n)` -/
def P1806269400634183823.Spec : Prop :=
  ∀ n, P1806269400634183823.a n = A062392 n

end A062392

/-! ## A062392.P4006206196699146965

`gcd(C(2, n+3), C(n*(n+1), 2))`
-/

namespace A062392.P4006206196699146965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 (n + 3)) (Nat.choose (n * (n + 1)) 2)

end

end A062392.P4006206196699146965

namespace A062392

/-- `gcd(C(2, n+3), C(n*(n+1), 2))` -/
def P4006206196699146965.Spec : Prop :=
  ∀ n, (P4006206196699146965.a n : ℤ) = A062392 n

end A062392

/-! ## A062392.P12920278576294989444

`Δ[a(n-2)+(1-n)²²]` with `a(0)=0, a(1)=0`
-/

namespace A062392.P12920278576294989444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + ((1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062392.P12920278576294989444

namespace A062392

/-- `Δ[a(n-2)+(1-n)²²]` -/
def P12920278576294989444.Spec : Prop :=
  ∀ n, P12920278576294989444.a n = A062392 n

end A062392

/-! ## A062392.P6678066662311177455

`(∑[2*n]-1)*∑[gcd(n, 2*n)]`
-/

namespace A062392.P6678066662311177455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A062392.P6678066662311177455

namespace A062392

/-- `(∑[2*n]-1)*∑[gcd(n, 2*n)]` -/
def P6678066662311177455.Spec : Prop :=
  ∀ n, P6678066662311177455.a n = A062392 n

end A062392

/-!
# A062393: a(n) = n^5 - (n-1)^5 + (n-2)^5 - ... +(-1)^n*0^5.

The programs for A062393, the canonical program `A062393.P398302141936561744` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062393 has offset 0).

The definition of A062393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062393.P398302141936561744

`n^5-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062393

/-- `n^5-a(n-1)` -/
def P398302141936561744.Spec : Prop :=
  ∀ n, P398302141936561744.a n = A062393 n

theorem P398302141936561744.correct : P398302141936561744.Spec := by
  intro n
  simp only [A062393]

end A062393

/-! ## A062393.P8462570253950962552

`ogf((x+26x^2+66x^3+26x^4+x^5)/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))`
-/

namespace A062393.P8462570253950962552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 26, 66, 26, 1] [1, -5, 9, -5, -5, 9, -5, 1] n

end

end A062393.P8462570253950962552

namespace A062393

/-- `ogf((x+26x^2+66x^3+26x^4+x^5)/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))` -/
def P8462570253950962552.Spec : Prop :=
  ∀ n, P8462570253950962552.a n = A062393 n

end A062393

/-! ## A062393.P13351119065989401296

`(1-(-1)^n+n²*(n²*(2*n+5)-5))/4`
-/

namespace A062393.P13351119065989401296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ n + (n ^ 2 : ℤ) * ((n ^ 2 * (2 * n + 5) : ℤ) - 5) : ℚ) / 4

end

end A062393.P13351119065989401296

namespace A062393

/-- `(1-(-1)^n+n²*(n²*(2*n+5)-5))/4` -/
def P13351119065989401296.Spec : Prop :=
  ∀ n, P13351119065989401296.a n = (A062393 n : ℚ)

theorem P13351119065989401296.correct : P13351119065989401296.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A062393, Nat.add_sub_cancel, A062393.P13351119065989401296.a, A062393.P398302141936561744.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A062393, Nat.add_sub_cancel, A062393.P13351119065989401296.a, A062393.P398302141936561744.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062393

/-! ## A062393.P8449501150568037424

`floor(n*n²²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A062393.P8449501150568037424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * (n ^ 2) ^ 2 : ℤ) - a (n - 1)

end

end A062393.P8449501150568037424

namespace A062393

/-- `floor(n*n²²-a(n-1))` -/
def P8449501150568037424.Spec : Prop :=
  ∀ n, P8449501150568037424.a n = A062393 n

theorem P8449501150568037424.correct : P8449501150568037424.Spec := by
  intro n
  simp only [A062393, Nat.add_sub_cancel, A062393.P8449501150568037424.a, A062393.P398302141936561744.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062393

/-! ## A062393.P15638362483666633952

`n*(n²²-a(n-1)/n)` with `a(0)=0`
-/

namespace A062393.P15638362483666633952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (((n ^ 2) ^ 2 : ℚ) - a (n - 1) / (n : ℚ))

end

end A062393.P15638362483666633952

namespace A062393

/-- `n*(n²²-a(n-1)/n)` -/
def P15638362483666633952.Spec : Prop :=
  ∀ n, P15638362483666633952.a n = (A062393 n : ℚ)

end A062393

/-! ## A062393.P8691239804060022901

`abs(a(n-1)-A000584(n))` with `a(0)=0`
-/

namespace A062393.P8691239804060022901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - A000584 n|

end

end A062393.P8691239804060022901

namespace A062393

/-- `abs(a(n-1)-A000584(n))` -/
def P8691239804060022901.Spec : Prop :=
  ∀ n, P8691239804060022901.a n = A062393 n

end A062393

/-! ## A062393.P17950253794200713895

`1-(A024003(n)+a(n-1))` with `a(0)=0`
-/

namespace A062393.P17950253794200713895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (A024003 n + a (n - 1))

end

end A062393.P17950253794200713895

namespace A062393

/-- `1-(A024003(n)+a(n-1))` -/
def P17950253794200713895.Spec : Prop :=
  ∀ n, P17950253794200713895.a n = A062393 n

theorem P17950253794200713895.correct : P17950253794200713895.Spec := by
  intro n
  simp only [A062393, Nat.add_sub_cancel, A062393.P17950253794200713895.a, A062393.P398302141936561744.a, A024003, A024003.P9184774219160180946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062393

/-! ## A062393.P8921241778824798183

`A061167(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A062393.P8921241778824798183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061167 n - a (n - 1) + (n : ℤ)

end

end A062393.P8921241778824798183

namespace A062393

/-- `A061167(n)-a(n-1)+n` -/
def P8921241778824798183.Spec : Prop :=
  ∀ n, P8921241778824798183.a n = A062393 n

theorem P8921241778824798183.correct : P8921241778824798183.Spec := by
  intro n
  simp only [A062393, Nat.add_sub_cancel, A062393.P8921241778824798183.a, A062393.P398302141936561744.a, A061167, A061167.P10314290942309870978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062393

/-! ## A062393.P17871149586951637558

`A131471(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A062393.P17871149586951637558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131471 n - (a (n - 1) + (n : ℤ))

end

end A062393.P17871149586951637558

namespace A062393

/-- `A131471(n)-(a(n-1)+n)` -/
def P17871149586951637558.Spec : Prop :=
  ∀ n, P17871149586951637558.a n = A062393 n

theorem P17871149586951637558.correct : P17871149586951637558.Spec := by
  intro n
  simp only [A062393, Nat.add_sub_cancel, A062393.P17871149586951637558.a, A062393.P398302141936561744.a, A131471, A131471.P12482115226042697987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062393

/-! ## A062393.P5468385208325881611

`∑[A281999(n+1)]-A281999(n+1)`
-/

namespace A062393.P5468385208325881611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A281999 (n + 1)

end

end A062393.P5468385208325881611

namespace A062393

/-- `∑[A281999(n+1)]-A281999(n+1)` -/
def P5468385208325881611.Spec : Prop :=
  ∀ n, P5468385208325881611.a n = A062393 n

end A062393

/-! ## A062393.P5070380408386200602

`A231304(n)-A231304(A004273(n)-n)`
-/

namespace A062393.P5070380408386200602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231304 n - A231304 (A004273 n - (n : ℤ)).toNat

end

end A062393.P5070380408386200602

namespace A062393

/-- `A231304(n)-A231304(A004273(n)-n)` -/
def P5070380408386200602.Spec : Prop :=
  ∀ n, P5070380408386200602.a n = A062393 n

end A062393

/-! ## A062393.P9182758000040851944

`record[Δ[A231304(A002264(n))]]`
-/

namespace A062393.P9182758000040851944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231304 (A002264 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062393.P9182758000040851944

namespace A062393

/-- `record[Δ[A231304(A002264(n))]]` -/
def P9182758000040851944.Spec : Prop :=
  ∀ n, P9182758000040851944.a n = A062393 n

end A062393

/-! ## A062393.P11959336544948602777

`∑{#}[n, (-1)^(n-#)*#^5]`
-/

namespace A062393.P11959336544948602777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (k ^ 5 : ℚ)

end

end A062393.P11959336544948602777

namespace A062393

/-- `∑{#}[n, (-1)^(n-#)*#^5]` -/
def P11959336544948602777.Spec : Prop :=
  ∀ n, P11959336544948602777.a n = (A062393 n : ℚ)

end A062393

/-!
# A062394: a(n) = 6^n + 1.

The programs for A062394, the canonical program `A062394.P9863555022327054882` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062394 has offset 0).

The definition of A062394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+1` (program `A062394.P9863555022327054882`, by `A062394.P9863555022327054882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062394.P9863555022327054882

`6^n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062394

/-- `6^n+1` -/
def P9863555022327054882.Spec : Prop :=
  ∀ n, (P9863555022327054882.a n : ℤ) = A062394 n

theorem P9863555022327054882.correct : P9863555022327054882.Spec := by
  intro n
  simp only [A062394]

end A062394

/-!
# A062395: a(n) = 8^n + 1.

The programs for A062395, the canonical program `A062395.P18355041700075076809` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062395 has offset 0).

The definition of A062395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+1` (program `A062395.P18355041700075076809`, by `A062395.P18355041700075076809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062395.P18355041700075076809

`8^n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062395

/-- `8^n+1` -/
def P18355041700075076809.Spec : Prop :=
  ∀ n, (P18355041700075076809.a n : ℤ) = A062395 n

theorem P18355041700075076809.correct : P18355041700075076809.Spec := by
  intro n
  simp only [A062395]

end A062395

/-!
# A062396: a(n) = 9^n + 1.

The programs for A062396, the canonical program `A062396.P17649402293761721907` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062396 has offset 0).

The definition of A062396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n+1` (program `A062396.P17649402293761721907`, by `A062396.P17649402293761721907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062396.P17649402293761721907

`9^n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062396

/-- `9^n+1` -/
def P17649402293761721907.Spec : Prop :=
  ∀ n, (P17649402293761721907.a n : ℤ) = A062396 n

theorem P17649402293761721907.correct : P17649402293761721907.Spec := by
  intro n
  simp only [A062396]

end A062396

/-!
# A062397: a(n) = 10^n + 1.

The programs for A062397, the canonical program `A062397.P11904164326522871108` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062397 has offset 0).

The definition of A062397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+1` (program `A062397.P11904164326522871108`, by `A062397.P11904164326522871108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062397.P11904164326522871108

`10^n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062397

/-- `10^n+1` -/
def P11904164326522871108.Spec : Prop :=
  ∀ n, (P11904164326522871108.a n : ℤ) = A062397 n

theorem P11904164326522871108.correct : P11904164326522871108.Spec := by
  intro n
  simp only [A062397]

end A062397

/-!
# A062398: Numbers such that the product of the digits and the sum of the digits are squares.

The programs for A062398, there is no canonical definition to state claims against.
-/

/-! ## A062398.P9601893431544099411

`∩[A028839(n+1), A161350(n+1)]`
-/

namespace A062398.P9601893431544099411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062398.P9601893431544099411

/-! ## A062398.P11689676240305304782

`∩[A028839(n+1), A174800(n)]`
-/

namespace A062398.P11689676240305304782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062398.P11689676240305304782

/-! ## A062398.P1143459047392152590

`∩[A197039(n+1), A107062(n)]`
-/

namespace A062398.P1143459047392152590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062398.P1143459047392152590

/-! ## A062398.P1162138834041959216

`∩[A197039(n+1), A325118(n+1)]`
-/

namespace A062398.P1162138834041959216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062398.P1162138834041959216

/-!
# A062399: Smallest multiple of n with property that each digit is one less (mod 10) than the previous digit; or 0 if no such multiple exists.

The programs for A062399, there is no canonical definition to state claims against.
-/

/-! ## A062399.P2817510879803599875

`n*A347445(A001987(n+1))`
-/

namespace A062399.P2817510879803599875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A347445 (A001987 (n + 1)).toNat

end

end A062399.P2817510879803599875

/-! ## A062399.P5619585328377446921

`n*A149032(A324233(n+1))`
-/

namespace A062399.P5619585328377446921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A149032 (A324233 (n + 1)).toNat

end

end A062399.P5619585328377446921

/-! ## A062399.P16392954064809251814

`lcm(n, A152271(A121050(n+1)))`
-/

namespace A062399.P16392954064809251814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A152271 (A121050 (n + 1)).toNat)

end

end A062399.P16392954064809251814

/-! ## A062399.P18247130437460194196

`n*A208354(A185284((5-n)²))`
-/

namespace A062399.P18247130437460194196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A208354 (A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A062399.P18247130437460194196

/-! ## A062399.P2350501493329403580

`n*A295555(A038754(A171145(n+1)))`
-/

namespace A062399.P2350501493329403580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A295555 (A038754 (A171145 (n + 1)).toNat).toNat

end

end A062399.P2350501493329403580

