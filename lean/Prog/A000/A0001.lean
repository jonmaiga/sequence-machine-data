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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A000100: a(n) is the number of compositions of n in which the maximal part is 3.

The programs for A000100, the canonical program `A000100.P13808047823353721647` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000100 has offset 0).

The definition of A000100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000100.P13808047823353721647

`2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000100

/-- `2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` -/
def P13808047823353721647.Spec : Prop :=
  ∀ n, P13808047823353721647.a n = A000100 n

theorem P13808047823353721647.correct : P13808047823353721647.Spec := by
  intro n
  simp only [A000100]

end A000100

/-! ## A000100.P11677660932107843901

`A089068(n)-A000071(n+1)`
-/

namespace A000100.P11677660932107843901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n - A000071 (n + 1)

end

end A000100.P11677660932107843901

namespace A000100

/-- `A089068(n)-A000071(n+1)` -/
def P11677660932107843901.Spec : Prop :=
  ∀ n, P11677660932107843901.a n = A000100 n

end A000100

/-! ## A000100.P15888510080820308515

`∑[A001590(n+1)-A212804(n)]`
-/

namespace A000100.P15888510080820308515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000100.P15888510080820308515

namespace A000100

/-- `∑[A001590(n+1)-A212804(n)]` -/
def P15888510080820308515.Spec : Prop :=
  ∀ n, P15888510080820308515.a n = A000100 n

end A000100

/-! ## A000100.P12708165796577350529

`A000073(n+2)-∑[A212804(n)]`
-/

namespace A000100.P12708165796577350529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000100.P12708165796577350529

namespace A000100

/-- `A000073(n+2)-∑[A212804(n)]` -/
def P12708165796577350529.Spec : Prop :=
  ∀ n, P12708165796577350529.a n = A000100 n

end A000100

/-! ## A000100.P9354536643419329536

`A000073(n+2)-A000045(n+1)`
-/

namespace A000100.P9354536643419329536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A000045 (n + 1)

end

end A000100.P9354536643419329536

namespace A000100

/-- `A000073(n+2)-A000045(n+1)` -/
def P9354536643419329536.Spec : Prop :=
  ∀ n, P9354536643419329536.a n = A000100 n

end A000100

/-! ## A000100.P13476277470784376793

`A000073(n+2)-A212804(n+2)`
-/

namespace A000100.P13476277470784376793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A212804 (n + 2)

end

end A000100.P13476277470784376793

namespace A000100

/-- `A000073(n+2)-A212804(n+2)` -/
def P13476277470784376793.Spec : Prop :=
  ∀ n, P13476277470784376793.a n = A000100 n

end A000100

/-! ## A000100.P5171053729336480479

`∑[A001590(n+1)]-A000045(n+1)`
-/

namespace A000100.P5171053729336480479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n + 1)

end

end A000100.P5171053729336480479

namespace A000100

/-- `∑[A001590(n+1)]-A000045(n+1)` -/
def P5171053729336480479.Spec : Prop :=
  ∀ n, P5171053729336480479.a n = A000100 n

end A000100

/-! ## A000100.P14955865200028252484

`A000073(n+2)-Δ[A000071(n+2)]`
-/

namespace A000100.P14955865200028252484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - (f1 (n + 1) - f1 n)

end

end A000100.P14955865200028252484

namespace A000100

/-- `A000073(n+2)-Δ[A000071(n+2)]` -/
def P14955865200028252484.Spec : Prop :=
  ∀ n, P14955865200028252484.a n = A000100 n

end A000100

/-! ## A000100.P13206365932363057548

`A213816(2*n+1)-A000045(n+1)`
-/

namespace A000100.P13206365932363057548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 1) - A000045 (n + 1)

end

end A000100.P13206365932363057548

namespace A000100

/-- `A213816(2*n+1)-A000045(n+1)` -/
def P13206365932363057548.Spec : Prop :=
  ∀ n, P13206365932363057548.a n = A000100 n

end A000100

/-! ## A000100.P12185355077792299392

`A000073(n+2)-A123231(2*n+1)`
-/

namespace A000100.P12185355077792299392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A123231 (2 * n + 1)

end

end A000100.P12185355077792299392

namespace A000100

/-- `A000073(n+2)-A123231(2*n+1)` -/
def P12185355077792299392.Spec : Prop :=
  ∀ n, P12185355077792299392.a n = A000100 n

end A000100

/-! ## A000100.P7254405835977642451

`A000073(n+2)-A103609(A005408(n+1))`
-/

namespace A000100.P7254405835977642451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A103609 (A005408 (n + 1)).toNat

end

end A000100.P7254405835977642451

namespace A000100

/-- `A000073(n+2)-A103609(A005408(n+1))` -/
def P7254405835977642451.Spec : Prop :=
  ∀ n, P7254405835977642451.a n = A000100 n

end A000100

/-! ## A000100.P8740313403538275371

`A000073(n+2)-A103609(A014601(n+1))`
-/

namespace A000100.P8740313403538275371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A103609 (A014601 (n + 1)).toNat

end

end A000100.P8740313403538275371

namespace A000100

/-- `A000073(n+2)-A103609(A014601(n+1))` -/
def P8740313403538275371.Spec : Prop :=
  ∀ n, P8740313403538275371.a n = A000100 n

end A000100

/-! ## A000100.P10263060519928656472

`A081172(n+1)+A001590(n)-A000045(n+1)`
-/

namespace A000100.P10263060519928656472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) + (A001590 n - A000045 (n + 1))

end

end A000100.P10263060519928656472

namespace A000100

/-- `A081172(n+1)+A001590(n)-A000045(n+1)` -/
def P10263060519928656472.Spec : Prop :=
  ∀ n, P10263060519928656472.a n = A000100 n

end A000100

/-! ## A000100.P18288402079306893354

`A000213(n+1)+A001590(n)-A338192(n+1)`
-/

namespace A000100.P18288402079306893354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (A001590 n - A338192 (n + 1))

end

end A000100.P18288402079306893354

namespace A000100

/-- `A000213(n+1)+A001590(n)-A338192(n+1)` -/
def P18288402079306893354.Spec : Prop :=
  ∀ n, P18288402079306893354.a n = A000100 n

end A000100

/-! ## A000100.P5907808611645069652

`A020992(n+1)-(A001590(n+1)+A000045(n+1))`
-/

namespace A000100.P5907808611645069652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) - (A001590 (n + 1) + A000045 (n + 1))

end

end A000100.P5907808611645069652

namespace A000100

/-- `A020992(n+1)-(A001590(n+1)+A000045(n+1))` -/
def P5907808611645069652.Spec : Prop :=
  ∀ n, P5907808611645069652.a n = A000100 n

end A000100

/-! ## A000100.P17795029367136408315

`Δ[A008937(n)-A212804(n+3)]`
-/

namespace A000100.P17795029367136408315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n - A212804 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000100.P17795029367136408315

namespace A000100

/-- `Δ[A008937(n)-A212804(n+3)]` -/
def P17795029367136408315.Spec : Prop :=
  ∀ n, P17795029367136408315.a n = A000100 n

end A000100

/-! ## A000100.P18345173439976838691

`A008937(n+1)-(A008937(n)+A000045(n+1))`
-/

namespace A000100.P18345173439976838691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1) - (A008937 n + A000045 (n + 1))

end

end A000100.P18345173439976838691

namespace A000100

/-- `A008937(n+1)-(A008937(n)+A000045(n+1))` -/
def P18345173439976838691.Spec : Prop :=
  ∀ n, P18345173439976838691.a n = A000100 n

end A000100

/-! ## A000100.P10435118813041651325

`Δ[A000213(n+2)/2-A212804(n+3)]`
-/

namespace A000100.P10435118813041651325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 2) : ℚ) / 2 - (A212804 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000100.P10435118813041651325

namespace A000100

/-- `Δ[A000213(n+2)/2-A212804(n+3)]` -/
def P10435118813041651325.Spec : Prop :=
  ∀ n, P10435118813041651325.a n = (A000100 n : ℚ)

end A000100

/-! ## A000100.P10978092003265585328

`A238913(n)-A000102(n)`
-/

namespace A000100.P10978092003265585328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238913 n - A000102 n

end

end A000100.P10978092003265585328

namespace A000100

/-- `A238913(n)-A000102(n)` -/
def P10978092003265585328.Spec : Prop :=
  ∀ n, P10978092003265585328.a n = A000100 n

end A000100

/-! ## A000100.P209057994117889128

`A200541(n)/A000045(n+1)-A000045(n+1)`
-/

namespace A000100.P209057994117889128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200541 n : ℚ) / (A000045 (n + 1) : ℚ) - (A000045 (n + 1) : ℚ)

end

end A000100.P209057994117889128

namespace A000100

/-- `A200541(n)/A000045(n+1)-A000045(n+1)` -/
def P209057994117889128.Spec : Prop :=
  ∀ n, P209057994117889128.a n = (A000100 n : ℚ)

end A000100

/-!
# A000101: Record gaps between primes (upper end) (compare A002386, which gives lower ends of these gaps).

The programs for A000101, there is no canonical definition to state claims against.
-/

/-! ## A000101.P899277046453084980

`A002386(n+1)+A005250(n+1)`
-/

namespace A000101.P899277046453084980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + A005250 (n + 1)

end

end A000101.P899277046453084980

/-! ## A000101.P8824583412652236296

`A002386(n+1)+∑[A053695(C(2, n+2)+n)]`
-/

namespace A000101.P8824583412652236296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000101.P8824583412652236296

/-! ## A000101.P18399242049384183478

`A002386(n+1)+∑[A053695(A000196(n²+1))]`
-/

namespace A000101.P18399242049384183478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A000196 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000101.P18399242049384183478

/-! ## A000101.P10198952568404392537

`A002386(n+1)+∑[A053695(A004273(n)+1-n)]`
-/

namespace A000101.P10198952568404392537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053695 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000101.P10198952568404392537

/-! ## A000101.P14932739249915512945

`A002386(n+1)+record[A014320(n+1)]`
-/

namespace A000101.P14932739249915512945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000101.P14932739249915512945

/-! ## A000101.P2548806821448023368

`A005250(n+1)+A114058(n+1)/2`
-/

namespace A000101.P2548806821448023368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005250 (n + 1) : ℚ) + (A114058 (n + 1) : ℚ) / 2

end

end A000101.P2548806821448023368

/-! ## A000101.P2667626603368782805

`record[A014320(n+1)]+A114058(n+1)/2`
-/

namespace A000101.P2667626603368782805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (A114058 (n + 1) : ℚ) / 2

end

end A000101.P2667626603368782805

/-! ## A000101.P5330148991046936251

`A002386(n+1)+A246789(n+1)-A246777(n+1)`
-/

namespace A000101.P5330148991046936251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + (A246789 (n + 1) - A246777 (n + 1))

end

end A000101.P5330148991046936251

/-! ## A000101.P13046247631513539793

`A005250(n+1)+A000230(floor(A005250(n+1)/2))`
-/

namespace A000101.P13046247631513539793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (n + 1) + A000230 ⌊(A005250 (n + 1) : ℚ) / 2⌋.toNat

end

end A000101.P13046247631513539793

/-! ## A000101.P16437441674301752603

`A104138(A005250(n+1)-1)+A005250(n+1)`
-/

namespace A000101.P16437441674301752603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A005250 (n + 1) - 1).toNat + A005250 (n + 1)

end

end A000101.P16437441674301752603

/-!
# A000102: a(n) = number of compositions of n in which the maximum part size is 4.

The programs for A000102, the canonical program `A000102.P12334321088699624445` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000102 has offset 0).

The definition of A000102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000102.P9957934755632679097

`A238913(n)-A000100(n)`
-/

namespace A000102.P9957934755632679097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238913 n - A000100 n

end

end A000102.P9957934755632679097

namespace A000102

/-- `A238913(n)-A000100(n)` -/
def P9957934755632679097.Spec : Prop :=
  ∀ n, P9957934755632679097.a n = A000102 n

end A000102

/-! ## A000102.P12334321088699624445

`A000078(n+3)-Δ[A008937(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000102

/-- `A000078(n+3)-Δ[A008937(n)]` -/
def P12334321088699624445.Spec : Prop :=
  ∀ n, P12334321088699624445.a n = A000102 n

theorem P12334321088699624445.correct : P12334321088699624445.Spec := by
  intro n
  simp only [A000102]

end A000102

/-! ## A000102.P207389594338192622

`A000078(n+3)-A000073(n+2)`
-/

namespace A000102.P207389594338192622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - A000073 (n + 2)

end

end A000102.P207389594338192622

namespace A000102

/-- `A000078(n+3)-A000073(n+2)` -/
def P207389594338192622.Spec : Prop :=
  ∀ n, P207389594338192622.a n = A000102 n

end A000102

/-! ## A000102.P5540927561741185757

`A000078(n+3)-∑[A001590(n+1)]`
-/

namespace A000102.P5540927561741185757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000102.P5540927561741185757

namespace A000102

/-- `A000078(n+3)-∑[A001590(n+1)]` -/
def P5540927561741185757.Spec : Prop :=
  ∀ n, P5540927561741185757.a n = A000102 n

end A000102

/-! ## A000102.P4602871684568931282

`∑[A001631(n+2)]-A000073(n+2)`
-/

namespace A000102.P4602871684568931282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000073 (n + 2)

end

end A000102.P4602871684568931282

namespace A000102

/-- `∑[A001631(n+2)]-A000073(n+2)` -/
def P4602871684568931282.Spec : Prop :=
  ∀ n, P4602871684568931282.a n = A000102 n

end A000102

/-! ## A000102.P4059352577075946662

`A274759(3*n+1)-Δ[A008937(n)]`
-/

namespace A000102.P4059352577075946662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n + 1) - (f1 (n + 1) - f1 n)

end

end A000102.P4059352577075946662

namespace A000102

/-- `A274759(3*n+1)-Δ[A008937(n)]` -/
def P4059352577075946662.Spec : Prop :=
  ∀ n, P4059352577075946662.a n = A000102 n

end A000102

/-! ## A000102.P547654657945328885

`A274759(3*n+1)-A213816(2*n+1)`
-/

namespace A000102.P547654657945328885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n + 1) - A213816 (2 * n + 1)

end

end A000102.P547654657945328885

namespace A000102

/-- `A274759(3*n+1)-A213816(2*n+1)` -/
def P547654657945328885.Spec : Prop :=
  ∀ n, P547654657945328885.a n = A000102 n

end A000102

/-!
# A000103: Number of n-node triangulations of sphere in which every node has degree >= 4.

The programs for A000103, there is no canonical definition to state claims against.
-/

/-! ## A000103.P12471791956349927809

`A186444(n+1)+A061392(A001267(n))`
-/

namespace A000103.P12471791956349927809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (n + 1) + A061392 (A001267 n).toNat

end

end A000103.P12471791956349927809

/-! ## A000103.P9032935280405352561

`A001462(A002854(n+1))-A008621(n)`
-/

namespace A000103.P9032935280405352561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A002854 (n + 1)).toNat - A008621 n

end

end A000103.P9032935280405352561

/-! ## A000103.P10027550878817784371

`A326622(A020091(n))+A251746(2*n)`
-/

namespace A000103.P10027550878817784371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A020091 n).toNat + A251746 (2 * n)

end

end A000103.P10027550878817784371

/-! ## A000103.P8611819133128413163

`A186444(n+1)+A061392(A086854(n)/2)`
-/

namespace A000103.P8611819133128413163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (n + 1) + A061392 (SequenceMachineLib.roundAway ((A086854 n : ℚ) / 2)).toNat

end

end A000103.P8611819133128413163

/-! ## A000103.P6389167210595767873

`A001462(A002854(n+1))-A265260(4*n)`
-/

namespace A000103.P6389167210595767873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A002854 (n + 1)).toNat - A265260 (4 * n)

end

end A000103.P6389167210595767873

/-!
# A000104: Number of n-celled free polyominoes without holes.

The programs for A000104, there is no canonical definition to state claims against.
-/

/-! ## A000104.P16980431498079833903

`A000105(n)-A001419(A028310(n))`
-/

namespace A000104.P16980431498079833903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A001419 (A028310 n).toNat

end

end A000104.P16980431498079833903

/-! ## A000104.P14192688557538342567

`A000105(n)-A001419(A233583(n+1))`
-/

namespace A000104.P14192688557538342567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A001419 (A233583 (n + 1)).toNat

end

end A000104.P14192688557538342567

/-! ## A000104.P13225754191418021739

`A000105(n)-A001419(A065033(2*n))`
-/

namespace A000104.P13225754191418021739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A001419 (A065033 (2 * n)).toNat

end

end A000104.P13225754191418021739

/-! ## A000104.P16875581107182226208

`A000105(n)-A001419(A123108(2*n))`
-/

namespace A000104.P16875581107182226208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A001419 (A123108 (2 * n)).toNat

end

end A000104.P16875581107182226208

/-! ## A000104.P17294052739674226327

`A000105(n)-A001419(A000007(n)+n)`
-/

namespace A000104.P17294052739674226327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n - A001419 (A000007 n + (n : ℤ)).toNat

end

end A000104.P17294052739674226327

/-!
# A000105: Number of free polyominoes (or square animals) with n cells.

The programs for A000105, there is no canonical definition to state claims against.
-/

/-! ## A000105.P970628790217281083

`A030228(n)+A030227(n)`
-/

namespace A000105.P970628790217281083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030228 n + A030227 n

end

end A000105.P970628790217281083

/-! ## A000105.P5373213375206060788

`A000988(n)-A030228(n)`
-/

namespace A000105.P5373213375206060788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000988 n - A030228 n

end

end A000105.P5373213375206060788

/-! ## A000105.P4126507562955150162

`(A030227(n)+A000988(n))/2`
-/

namespace A000105.P4126507562955150162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030227 n + A000988 n : ℚ) / 2

end

end A000105.P4126507562955150162

/-! ## A000105.P16260615304996686708

`A006765(A028310(n))+1`
-/

namespace A000105.P16260615304996686708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A028310 n).toNat + 1

end

end A000105.P16260615304996686708

/-! ## A000105.P5902082853924535156

`A001168(n)-A283108(n)`
-/

namespace A000105.P5902082853924535156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 n - A283108 n

end

end A000105.P5902082853924535156

/-! ## A000105.P18064104810061018495

`A006765(A233583(n+1))+1`
-/

namespace A000105.P18064104810061018495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A233583 (n + 1)).toNat + 1

end

end A000105.P18064104810061018495

/-! ## A000105.P2947462738904811304

`A006765(A004277(n)-n)+1`
-/

namespace A000105.P2947462738904811304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (A004277 n - (n : ℤ)).toNat + 1

end

end A000105.P2947462738904811304

/-! ## A000105.P4000493365326422256

`Δ[A173271(n)]-A283109(n)`
-/

namespace A000105.P4000493365326422256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A283109 n

end

end A000105.P4000493365326422256

/-!
# A000106: 2nd power of rooted tree enumerator; number of linear forests of 2 rooted trees.

The programs for A000106, there is no canonical definition to state claims against.
-/

/-! ## A000106.P16384143925172682446

`A328779(n+2)-A000055(n+2)`
-/

namespace A000106.P16384143925172682446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328779 (n + 2) - A000055 (n + 2)

end

end A000106.P16384143925172682446

/-! ## A000106.P8370820355125704175

`A068051(n+2)-A005703(n+2)`
-/

namespace A000106.P8370820355125704175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068051 (n + 2) - A005703 (n + 2)

end

end A000106.P8370820355125704175

/-! ## A000106.P17054158518672930948

`A339067(∑[n+1]+2)`
-/

namespace A000106.P17054158518672930948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000106.P17054158518672930948

/-! ## A000106.P8843064043736422653

`record[A339067(n+3)/A339067(n+1)]`
-/

namespace A000106.P8843064043736422653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339067 (n + 3) : ℚ) / (A339067 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000106.P8843064043736422653

/-! ## A000106.P2737629867485170498

`gcd(A000038(n), A339067(A133263(n+1)))`
-/

namespace A000106.P2737629867485170498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A339067 (A133263 (n + 1)).toNat)

end

end A000106.P2737629867485170498

/-! ## A000106.P12954632297091692865

`or(A000007(n), A339067(A133263(n+1)))`
-/

namespace A000106.P12954632297091692865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A339067 (A133263 (n + 1)).toNat)

end

end A000106.P12954632297091692865

/-! ## A000106.P9005046029570689822

`A339067(A133263(n+1))%A000485(n+4)`
-/

namespace A000106.P9005046029570689822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339067 (A133263 (n + 1)).toNat) (A000485 (n + 4))

end

end A000106.P9005046029570689822

/-! ## A000106.P3001468139286836984

`A339067(A133263(n+1))-and(2, A000290(n))`
-/

namespace A000106.P3001468139286836984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A133263 (n + 1)).toNat - Int.land 2 (A000290 n)

end

end A000106.P3001468139286836984

/-! ## A000106.P5262478466876663052

`A339067(A133263(n+1))+A008683(8*(n+1))`
-/

namespace A000106.P5262478466876663052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A133263 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A000106.P5262478466876663052

/-! ## A000106.P4912777820472777739

`A000188(A172186(n+1))*A339067(A133263(n+1))`
-/

namespace A000106.P4912777820472777739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A172186 (n + 1)).toNat * A339067 (A133263 (n + 1)).toNat

end

end A000106.P4912777820472777739

/-! ## A000106.P12574779984151274612

`A032742(A213521(n+1))*A339067(A133263(n+1))`
-/

namespace A000106.P12574779984151274612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A213521 (n + 1)).toNat * A339067 (A133263 (n + 1)).toNat

end

end A000106.P12574779984151274612

/-! ## A000106.P13972122629410562374

`A316789(A316789(n+1)+1)*A339067(A133263(n+1))`
-/

namespace A000106.P13972122629410562374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A316789 (n + 1) + 1).toNat * A339067 (A133263 (n + 1)).toNat

end

end A000106.P13972122629410562374

/-! ## A000106.P18108222414612597378

`record[gcd(A124926(n), A339067(n+1))]`
-/

namespace A000106.P18108222414612597378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124926 n) (A339067 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000106.P18108222414612597378

/-!
# A000107: Number of rooted trees with n nodes and a single labeled node; pointed rooted trees; vertebrates.

The programs for A000107, there is no canonical definition to state claims against.
-/

/-! ## A000107.P15275302007182949226

`A255705(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A000107.P15275302007182949226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A255705 (n - 1) + a (n - 1)

end

end A000107.P15275302007182949226

/-! ## A000107.P13498473215570266329

`∑[A255705(n)]-A255705(n)`
-/

namespace A000107.P13498473215570266329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255705 n

end

end A000107.P13498473215570266329

/-! ## A000107.P12471253309574991531

`∑[A318754(A016825(∑[n]))]`
-/

namespace A000107.P12471253309574991531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (A016825 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000107.P12471253309574991531

/-! ## A000107.P12566025530588371723

`∑[A318758(A001844(n)+1)]`
-/

namespace A000107.P12566025530588371723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A001844 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000107.P12566025530588371723

/-! ## A000107.P8269415131419456377

`∑[A318758(A046092(n)+2)]`
-/

namespace A000107.P8269415131419456377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A046092 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000107.P8269415131419456377

/-! ## A000107.P13409846654143444504

`∑[A318758(A098180(A001844(n)))]`
-/

namespace A000107.P13409846654143444504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A098180 (A001844 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000107.P13409846654143444504

/-! ## A000107.P9226575377119771784

`∑[A318758(A008619(A164897(n)))]`
-/

namespace A000107.P9226575377119771784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A008619 (A164897 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000107.P9226575377119771784

/-!
# A000108: Catalan numbers: C(n) = binomial(2n,n)/(n+1) = (2n)!/(n!(n+1)!).

The programs for A000108, the canonical program `A000108.P17551949696095299361` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000108 has offset 0).

The definition of A000108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000108.P17551949696095299361

`a(n-1)*(4-6/(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000108

/-- `a(n-1)*(4-6/(n+1))` -/
def P17551949696095299361.Spec : Prop :=
  ∀ n, P17551949696095299361.a n = (A000108 n : ℚ)

end A000108

/-! ## A000108.P11625411064366851590

`A208355(2*n)`
-/

namespace A000108.P11625411064366851590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

end

end A000108.P11625411064366851590

namespace A000108

/-- `A208355(2*n)` -/
def P11625411064366851590.Spec : Prop :=
  ∀ n, P11625411064366851590.a n = A000108 n

end A000108

/-! ## A000108.P6793415806499731197

`A000984(n)/(n+1)`
-/

namespace A000108.P6793415806499731197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (n + 1 : ℚ)

end

end A000108.P6793415806499731197

namespace A000108

/-- `A000984(n)/(n+1)` -/
def P6793415806499731197.Spec : Prop :=
  ∀ n, P6793415806499731197.a n = (A000108 n : ℚ)

end A000108

/-! ## A000108.P11773376726688197930

`A001700(n)-A162551(n)`
-/

namespace A000108.P11773376726688197930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A162551 n

end

end A000108.P11773376726688197930

namespace A000108

/-- `A001700(n)-A162551(n)` -/
def P11773376726688197930.Spec : Prop :=
  ∀ n, P11773376726688197930.a n = A000108 n

end A000108

/-! ## A000108.P14429211010732721610

`A363448(n)+A363449(n)`
-/

namespace A000108.P14429211010732721610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363448 n + A363449 n

end

end A000108.P14429211010732721610

namespace A000108

/-- `A363448(n)+A363449(n)` -/
def P14429211010732721610.Spec : Prop :=
  ∀ n, P14429211010732721610.a n = A000108 n

end A000108

/-!
# A000109: Number of simplicial polyhedra with n vertices; simple planar graphs with n vertices and 3n-6 edges; maximal simple planar graphs with n vertices; planar triangulations with n vertices; triangulations of the sphere with n vertices; 3-connected cubic planar graphs on 2n-4 vertices.

The programs for A000109, there is no canonical definition to state claims against.
-/

/-! ## A000109.P3229540105483390974

`A212438(n^ceil(atan(n))+3)`
-/

namespace A000109.P3229540105483390974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + 3)).toNat

end

end A000109.P3229540105483390974

/-! ## A000109.P11347629246071027301

`A212438(A253909(n)+3)`
-/

namespace A000109.P11347629246071027301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (A253909 n + 3).toNat

end

end A000109.P11347629246071027301

/-! ## A000109.P8079316965442421841

`A212438(A028310(n²)+3)`
-/

namespace A000109.P8079316965442421841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (A028310 (n ^ 2) + 3).toNat

end

end A000109.P8079316965442421841

/-! ## A000109.P15334765934290755919

`A212438(A233583(n+1)²+3)`
-/

namespace A000109.P15334765934290755919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (A233583 (n + 1) ^ 2 + 3).toNat

end

end A000109.P15334765934290755919

/-! ## A000109.P6872467415781658704

`A212438(A197985(n+1)-2*n)`
-/

namespace A000109.P6872467415781658704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212438 (A197985 (n + 1) - (2 * n : ℤ)).toNat

end

end A000109.P6872467415781658704

/-!
# A000110: Bell or exponential numbers: number of ways to partition a set of n labeled elements.

The programs for A000110, there is no canonical definition to state claims against.
-/

/-! ## A000110.P1799662239526744727

`abs(A292935(n))`
-/

namespace A000110.P1799662239526744727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n|

end

end A000110.P1799662239526744727

/-! ## A000110.P5124757193751156887

`A011971(∑[n])`
-/

namespace A000110.P5124757193751156887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P5124757193751156887

/-! ## A000110.P14204412640811812958

`A095149(∑[n])`
-/

namespace A000110.P14204412640811812958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P14204412640811812958

/-! ## A000110.P4380404213799359226

`A108087(∑[n])`
-/

namespace A000110.P4380404213799359226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P4380404213799359226

/-! ## A000110.P16793277062010628862

`A123081(∑[n])`
-/

namespace A000110.P16793277062010628862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P16793277062010628862

/-! ## A000110.P9968723044499880976

`A144155(∑[n])`
-/

namespace A000110.P9968723044499880976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P9968723044499880976

/-! ## A000110.P11505670893383613824

`A154380(∑[n])`
-/

namespace A000110.P11505670893383613824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P11505670893383613824

/-! ## A000110.P382886824748001434

`A186020(∑[n])`
-/

namespace A000110.P382886824748001434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P382886824748001434

/-! ## A000110.P4822312938834305870

`A212431(∑[n])`
-/

namespace A000110.P4822312938834305870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P4822312938834305870

/-! ## A000110.P793301414619929825

`A259691(∑[n])`
-/

namespace A000110.P793301414619929825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000110.P793301414619929825

/-!
# A000111: Euler or up/down numbers: e.g.f. sec(x) + tan(x). Also for n >= 2, half the number of alternating permutations on n letters (A001250).

The programs for A000111, there is no canonical definition to state claims against.
-/

/-! ## A000111.P17821233124367533719

`abs(A346838(n))`
-/

namespace A000111.P17821233124367533719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n|

end

end A000111.P17821233124367533719

/-! ## A000111.P10467723122950040872

`A104345(∑[n])`
-/

namespace A000111.P10467723122950040872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000111.P10467723122950040872

/-! ## A000111.P10102964620765352166

`A109449(∑[n])`
-/

namespace A000111.P10102964620765352166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000111.P10102964620765352166

/-! ## A000111.P5147643746953631588

`abs(A247453(∑[n]))`
-/

namespace A000111.P5147643746953631588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A000111.P5147643746953631588

/-! ## A000111.P15266728143734077895

`A008282(∑[n]+1)`
-/

namespace A000111.P15266728143734077895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000111.P15266728143734077895

/-! ## A000111.P12080723019770925311

`A229892(∑[n]+1)`
-/

namespace A000111.P12080723019770925311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000111.P12080723019770925311

/-! ## A000111.P1811808534270635924

`A250261(∑[n+3])`
-/

namespace A000111.P1811808534270635924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000111.P1811808534270635924

/-! ## A000111.P8416589153223515874

`A008281(∑[n]+n)`
-/

namespace A000111.P8416589153223515874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000111.P8416589153223515874

/-! ## A000111.P17378955955104672473

`A181937(∑[n]+n)`
-/

namespace A000111.P17378955955104672473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000111.P17378955955104672473

/-! ## A000111.P16448294920960008570

`A292975(∑[n]+n)`
-/

namespace A000111.P16448294920960008570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000111.P16448294920960008570

/-!
# A000112: Number of partially ordered sets ("posets") with n unlabeled elements.

The programs for A000112, there is no canonical definition to state claims against.
-/

/-! ## A000112.P9758721591531253680

`∑[A381121(n)]`
-/

namespace A000112.P9758721591531253680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000112.P9758721591531253680

/-! ## A000112.P16575139155444467550

`A349401(n)+A000608(n)`
-/

namespace A000112.P16575139155444467550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n + A000608 n

end

end A000112.P16575139155444467550

/-! ## A000112.P4036275654328620868

`A349401(n)+A263864(C(n, 2)+1)`
-/

namespace A000112.P4036275654328620868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n + A263864 (Nat.choose n 2 + 1)

end

end A000112.P4036275654328620868

/-! ## A000112.P6338179820935636045

`A349401(n)+A263864(∑[abs(1-n)])`
-/

namespace A000112.P6338179820935636045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n + A263864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000112.P6338179820935636045

/-! ## A000112.P9043285325155360914

`A349401(n)+A263864(A152947(n+1))+char[30]`
-/

namespace A000112.P9043285325155360914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n + (A263864 (A152947 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A000112.P9043285325155360914

/-!
# A000113: Number of transformation groups of order n.

The programs for A000113, there is no canonical definition to state claims against.
-/

/-! ## A000113.P12592879980902468876

`A392166(A328618(n+1))`
-/

namespace A000113.P12592879980902468876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392166 (A328618 (n + 1)).toNat

end

end A000113.P12592879980902468876

/-! ## A000113.P5028276112977258104

`A295657(A328617(n+1))*A323363(A328617(n+1)²)`
-/

namespace A000113.P5028276112977258104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A328617 (n + 1)).toNat * A323363 (A328617 (n + 1) ^ 2).toNat

end

end A000113.P5028276112977258104

/-! ## A000113.P14753369508883960979

`A001615(A000188(5*A064549(n+1)))`
-/

namespace A000113.P14753369508883960979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A000188 (5 * A064549 (n + 1)).toNat).toNat

end

end A000113.P14753369508883960979

/-! ## A000113.P10308270957614852348

`A295657(A328617(n+1))*A323363(A059479(n+1))`
-/

namespace A000113.P10308270957614852348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A328617 (n + 1)).toNat * A323363 (A059479 (n + 1)).toNat

end

end A000113.P10308270957614852348

/-! ## A000113.P7654433624824356725

`∑{d}[∏{p}[n+1, #], (n+1)/#]/A043568(A351308(n+1))`
-/

namespace A000113.P7654433624824356725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) / (A043568 (A351308 (n + 1)).toNat : ℚ)

end

end A000113.P7654433624824356725

/-!
# A000114: Number of cusps of principal congruence subgroup Gamma^{hat}(n).

The programs for A000114, the canonical program `A000114.P10789346743923345405` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000114 has offset 2).

The definition of A000114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000114.P10945104282072812795

`lcm(2, A007434(n+2))/2`
-/

namespace A000114.P10945104282072812795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A007434 (n + 2)) : ℚ) / 2

end

end A000114.P10945104282072812795

namespace A000114

/-- `lcm(2, A007434(n+2))/2` -/
def P10945104282072812795.Spec : Prop :=
  ∀ n, P10945104282072812795.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P10789346743923345405

`A001766(n+2)/(n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A000114

/-- `A001766(n+2)/(n+2)` -/
def P10789346743923345405.Spec : Prop :=
  ∀ n, P10789346743923345405.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P6295081017958207204

`A001615(n+2)*A023022(n+2)`
-/

namespace A000114.P6295081017958207204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 2) * A023022 (n + 2)

end

end A000114.P6295081017958207204

namespace A000114

/-- `A001615(n+2)*A023022(n+2)` -/
def P6295081017958207204.Spec : Prop :=
  ∀ n, P6295081017958207204.a n = A000114 (n + 2)

end A000114

/-! ## A000114.P6311577358722193779

`A007434(n+2)/(A057427(n)+1)`
-/

namespace A000114.P6311577358722193779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A057427 n + 1 : ℚ)

end

end A000114.P6311577358722193779

namespace A000114

/-- `A007434(n+2)/(A057427(n)+1)` -/
def P6311577358722193779.Spec : Prop :=
  ∀ n, P6311577358722193779.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P7912276897168968260

`A007434(n+2)/(2-A000007(n))`
-/

namespace A000114.P7912276897168968260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (2 - A000007 n : ℚ)

end

end A000114.P7912276897168968260

namespace A000114

/-- `A007434(n+2)/(2-A000007(n))` -/
def P7912276897168968260.Spec : Prop :=
  ∀ n, P7912276897168968260.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P5543687342029728877

`A007434(n+2)/A040001(2*n)`
-/

namespace A000114.P5543687342029728877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A000114.P5543687342029728877

namespace A000114

/-- `A007434(n+2)/A040001(2*n)` -/
def P5543687342029728877.Spec : Prop :=
  ∀ n, P5543687342029728877.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P14476901093676241962

`A007434(n+2)/gcd(2, A298026(n))`
-/

namespace A000114.P14476901093676241962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (Int.gcd 2 (A298026 n) : ℚ)

end

end A000114.P14476901093676241962

namespace A000114

/-- `A007434(n+2)/gcd(2, A298026(n))` -/
def P14476901093676241962.Spec : Prop :=
  ∀ n, P14476901093676241962.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P1613436578370755157

`A007434(n+2)/A007947(n²%(n+1)+1)`
-/

namespace A000114.P1613436578370755157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A007947 (n ^ 2 % (n + 1) + 1) : ℚ)

end

end A000114.P1613436578370755157

namespace A000114

/-- `A007434(n+2)/A007947(n²%(n+1)+1)` -/
def P1613436578370755157.Spec : Prop :=
  ∀ n, P1613436578370755157.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P10120741501726959626

`A007434(n+2)/A137313(ceil(n/(n+1))+1)`
-/

namespace A000114.P10120741501726959626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A137313 (⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat : ℚ)

end

end A000114.P10120741501726959626

namespace A000114

/-- `A007434(n+2)/A137313(ceil(n/(n+1))+1)` -/
def P10120741501726959626.Spec : Prop :=
  ∀ n, P10120741501726959626.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P3708817775996914366

`A007434(n+2)/A034444(A034444(n+1))`
-/

namespace A000114.P3708817775996914366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A000114.P3708817775996914366

namespace A000114

/-- `A007434(n+2)/A034444(A034444(n+1))` -/
def P3708817775996914366.Spec : Prop :=
  ∀ n, P3708817775996914366.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P14370678345235842315

`A007434(n+2)/A007947(A060594(n+2))`
-/

namespace A000114.P14370678345235842315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A007947 (A060594 (n + 2)).toNat : ℚ)

end

end A000114.P14370678345235842315

namespace A000114

/-- `A007434(n+2)/A007947(A060594(n+2))` -/
def P14370678345235842315.Spec : Prop :=
  ∀ n, P14370678345235842315.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P15502886253099425088

`A007434(n+2)/(2-A049283(2*n+1))`
-/

namespace A000114.P15502886253099425088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (2 - A049283 (2 * n + 1) : ℚ)

end

end A000114.P15502886253099425088

namespace A000114

/-- `A007434(n+2)/(2-A049283(2*n+1))` -/
def P15502886253099425088.Spec : Prop :=
  ∀ n, P15502886253099425088.a n = (A000114 (n + 2) : ℚ)

end A000114

/-! ## A000114.P14449910052758726849

`A195019(A346758(n+2))`
-/

namespace A000114.P14449910052758726849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (A346758 (n + 2)).toNat

end

end A000114.P14449910052758726849

namespace A000114

/-- `A195019(A346758(n+2))` -/
def P14449910052758726849.Spec : Prop :=
  ∀ n, P14449910052758726849.a n = A000114 (n + 2)

end A000114

/-! ## A000114.P9537902384445860248

`A007434(n+2)/A020639(A007434(2*n+1))`
-/

namespace A000114.P9537902384445860248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 2) : ℚ) / (A020639 (A007434 (2 * n + 1)).toNat : ℚ)

end

end A000114.P9537902384445860248

namespace A000114

/-- `A007434(n+2)/A020639(A007434(2*n+1))` -/
def P9537902384445860248.Spec : Prop :=
  ∀ n, P9537902384445860248.a n = (A000114 (n + 2) : ℚ)

end A000114

/-!
# A000115: Denumerants: Expansion of 1/((1-x)*(1-x^2)*(1-x^5)).

The programs for A000115, the canonical program `A000115.P11449412903321542619` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000115 has offset 0).

The definition of A000115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000115.P11449412903321542619

`round((n+4)²/20)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000115

/-- `round((n+4)²/20)` -/
def P11449412903321542619.Spec : Prop :=
  ∀ n, P11449412903321542619.a n = A000115 n

theorem P11449412903321542619.correct : P11449412903321542619.Spec := by
  intro n
  simp only [A000115]

end A000115

/-! ## A000115.P2784587660374809430

`floor((∑[or(3, n)+2]+6)/10)`
-/

namespace A000115.P2784587660374809430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℚ) / 10⌋

end

end A000115.P2784587660374809430

namespace A000115

/-- `floor((∑[or(3, n)+2]+6)/10)` -/
def P2784587660374809430.Spec : Prop :=
  ∀ n, P2784587660374809430.a n = A000115 n

end A000115

/-! ## A000115.P17242317992829372243

`∑[char[5*n]+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A000115.P17242317992829372243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P17242317992829372243

namespace A000115

/-- `∑[char[5*n]+a(n-2)]` -/
def P17242317992829372243.Spec : Prop :=
  ∀ n, (P17242317992829372243.a n : ℤ) = A000115 n

end A000115

/-! ## A000115.P4110658880276504268

`∑[∑[char[5*n]-a(n-1)]]` with `a(0)=1`
-/

namespace A000115.P4110658880276504268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P4110658880276504268

namespace A000115

/-- `∑[∑[char[5*n]-a(n-1)]]` -/
def P4110658880276504268.Spec : Prop :=
  ∀ n, P4110658880276504268.a n = A000115 n

end A000115

/-! ## A000115.P11126985579590700764

`floor(∑[a(n-2)+1]/5)` with `a(0)=5, a(1)=1, a(2)=4`
-/

namespace A000115.P11126985579590700764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 4] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A000115.P11126985579590700764

namespace A000115

/-- `floor(∑[a(n-2)+1]/5)` -/
def P11126985579590700764.Spec : Prop :=
  ∀ n, P11126985579590700764.a n = A000115 n

end A000115

/-! ## A000115.P6447908993186259601

`floor(a(n-2)+n/5+1)` with `a(0)=1, a(1)=1`
-/

namespace A000115.P6447908993186259601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 5 + 1)⌋

end

end A000115.P6447908993186259601

namespace A000115

/-- `floor(a(n-2)+n/5+1)` -/
def P6447908993186259601.Spec : Prop :=
  ∀ n, P6447908993186259601.a n = A000115 n

end A000115

/-! ## A000115.P9460844486647083262

`ceil(a(n-2)+(n+1)/5)` with `a(0)=1, a(1)=1`
-/

namespace A000115.P9460844486647083262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 5⌉

end

end A000115.P9460844486647083262

namespace A000115

/-- `ceil(a(n-2)+(n+1)/5)` -/
def P9460844486647083262.Spec : Prop :=
  ∀ n, P9460844486647083262.a n = A000115 n

end A000115

/-! ## A000115.P13489552254939223346

`∑[1-(a(n-1)-floor(n/5))]` with `a(0)=1`
-/

namespace A000115.P13489552254939223346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (f1 (n - 1) - ⌊(n : ℚ) / 5⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P13489552254939223346

namespace A000115

/-- `∑[1-(a(n-1)-floor(n/5))]` -/
def P13489552254939223346.Spec : Prop :=
  ∀ n, P13489552254939223346.a n = A000115 n

end A000115

/-! ## A000115.P1012389206607459201

`∑[a(n-2)+(n+1)%gcd(5, n)]` with `a(0)=1, a(1)=0`
-/

namespace A000115.P1012389206607459201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (n + 1) % Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P1012389206607459201

namespace A000115

/-- `∑[a(n-2)+(n+1)%gcd(5, n)]` -/
def P1012389206607459201.Spec : Prop :=
  ∀ n, (P1012389206607459201.a n : ℤ) = A000115 n

end A000115

/-! ## A000115.P2016707765622869247

`∑[A008616(n)]`
-/

namespace A000115.P2016707765622869247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P2016707765622869247

namespace A000115

/-- `∑[A008616(n)]` -/
def P2016707765622869247.Spec : Prop :=
  ∀ n, P2016707765622869247.a n = A000115 n

end A000115

/-! ## A000115.P10117419392014577381

`A008732(n)-a(n-1)` with `a(0)=1`
-/

namespace A000115.P10117419392014577381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008732 n - a (n - 1)

end

end A000115.P10117419392014577381

namespace A000115

/-- `A008732(n)-a(n-1)` -/
def P10117419392014577381.Spec : Prop :=
  ∀ n, P10117419392014577381.a n = A000115 n

end A000115

/-! ## A000115.P15509646632011607146

`∑[A008619(n)+A057355(n)-n]`
-/

namespace A000115.P15509646632011607146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A057355 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P15509646632011607146

namespace A000115

/-- `∑[A008619(n)+A057355(n)-n]` -/
def P15509646632011607146.Spec : Prop :=
  ∀ n, P15509646632011607146.a n = A000115 n

end A000115

/-! ## A000115.P7417092925347513554

`A002620(n+2)-A011858(n+2)`
-/

namespace A000115.P7417092925347513554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A011858 (n + 2)

end

end A000115.P7417092925347513554

namespace A000115

/-- `A002620(n+2)-A011858(n+2)` -/
def P7417092925347513554.Spec : Prop :=
  ∀ n, P7417092925347513554.a n = A000115 n

end A000115

/-! ## A000115.P11355466570189445582

`A008720(n+1)+A008720(n)-A008616(n+1)`
-/

namespace A000115.P11355466570189445582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (n + 1) + (A008720 n - A008616 (n + 1))

end

end A000115.P11355466570189445582

namespace A000115

/-- `A008720(n+1)+A008720(n)-A008616(n+1)` -/
def P11355466570189445582.Spec : Prop :=
  ∀ n, P11355466570189445582.a n = A000115 n

end A000115

/-! ## A000115.P2729520863245215216

`A008672(n+1)+A025767(n)-A025772(n+1)`
-/

namespace A000115.P2729520863245215216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) + (A025767 n - A025772 (n + 1))

end

end A000115.P2729520863245215216

namespace A000115

/-- `A008672(n+1)+A025767(n)-A025772(n+1)` -/
def P2729520863245215216.Spec : Prop :=
  ∀ n, P2729520863245215216.a n = A000115 n

end A000115

/-! ## A000115.P15212533663295571993

`Δ[A177239(n+3)]`
-/

namespace A000115.P15212533663295571993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000115.P15212533663295571993

namespace A000115

/-- `Δ[A177239(n+3)]` -/
def P15212533663295571993.Spec : Prop :=
  ∀ n, P15212533663295571993.a n = A000115 n

end A000115

/-! ## A000115.P12619770308342044326

`∑[A008617(A047287(n+1))]`
-/

namespace A000115.P12619770308342044326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A047287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P12619770308342044326

namespace A000115

/-- `∑[A008617(A047287(n+1))]` -/
def P12619770308342044326.Spec : Prop :=
  ∀ n, P12619770308342044326.a n = A000115 n

end A000115

/-! ## A000115.P6789039991688850172

`∑[A165190(2*n)]`
-/

namespace A000115.P6789039991688850172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000115.P6789039991688850172

namespace A000115

/-- `∑[A165190(2*n)]` -/
def P6789039991688850172.Spec : Prop :=
  ∀ n, P6789039991688850172.a n = A000115 n

end A000115

/-! ## A000115.P123535408610699585

`A005868(2*n)`
-/

namespace A000115.P123535408610699585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005868 (2 * n)

end

end A000115.P123535408610699585

namespace A000115

/-- `A005868(2*n)` -/
def P123535408610699585.Spec : Prop :=
  ∀ n, P123535408610699585.a n = A000115 n

end A000115

/-! ## A000115.P566088408973921435

`A025802(2*n)`
-/

namespace A000115.P566088408973921435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (2 * n)

end

end A000115.P566088408973921435

namespace A000115

/-- `A025802(2*n)` -/
def P566088408973921435.Spec : Prop :=
  ∀ n, P566088408973921435.a n = A000115 n

end A000115

/-!
# A000116: Number of even sequences with period 2n (bisection of A000013).

The programs for A000116, the canonical program `A000116.P1543949268755805293` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000116 has offset 0).

The definition of A000116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000116.P2749059370860222834

`A000013(2*n)`
-/

namespace A000116.P2749059370860222834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (2 * n)

end

end A000116.P2749059370860222834

namespace A000116

/-- `A000013(2*n)` -/
def P2749059370860222834.Spec : Prop :=
  ∀ n, P2749059370860222834.a n = A000116 n

end A000116

/-! ## A000116.P10753974430086448762

`record[A000013((n-1)^(n%2))]`
-/

namespace A000116.P10753974430086448762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000116.P10753974430086448762

namespace A000116

/-- `record[A000013((n-1)^(n%2))]` -/
def P10753974430086448762.Spec : Prop :=
  ∀ n, P10753974430086448762.a n = A000116 n

end A000116

/-! ## A000116.P1753306681352759750

`record[A000013(n)/and(n+1, -(n+1))]`
-/

namespace A000116.P1753306681352759750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000116.P1753306681352759750

namespace A000116

/-- `record[A000013(n)/and(n+1, -(n+1))]` -/
def P1753306681352759750.Spec : Prop :=
  ∀ n, P1753306681352759750.a n = (A000116 n : ℚ)

end A000116

/-! ## A000116.P9011369066777053275

`record[A000013(round(sqrt(n²+1))-(-1)^n)]`
-/

namespace A000116.P9011369066777053275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000116.P9011369066777053275

namespace A000116

/-- `record[A000013(round(sqrt(n²+1))-(-1)^n)]` -/
def P9011369066777053275.Spec : Prop :=
  ∀ n, P9011369066777053275.a n = A000116 n

end A000116

/-! ## A000116.P1543949268755805293

`A056295(A004277(n))+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A000116

/-- `A056295(A004277(n))+1` -/
def P1543949268755805293.Spec : Prop :=
  ∀ n, P1543949268755805293.a n = A000116 n

theorem P1543949268755805293.correct : P1543949268755805293.Spec := by
  intro n
  simp only [A000116]

end A000116

/-! ## A000116.P13455481292592253189

`∑{d}[A004277(n), A000048(#)]`
-/

namespace A000116.P13455481292592253189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000048 d

end

end A000116.P13455481292592253189

namespace A000116

/-- `∑{d}[A004277(n), A000048(#)]` -/
def P13455481292592253189.Spec : Prop :=
  ∀ n, P13455481292592253189.a n = A000116 n

end A000116

/-! ## A000116.P11242914547673332579

`record[A000013(n)/A000034(n)]`
-/

namespace A000116.P11242914547673332579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000116.P11242914547673332579

namespace A000116

/-- `record[A000013(n)/A000034(n)]` -/
def P11242914547673332579.Spec : Prop :=
  ∀ n, P11242914547673332579.a n = (A000116 n : ℚ)

end A000116

/-! ## A000116.P14533470281799069959

`A059053(2*n)+A000117(n)`
-/

namespace A000116.P14533470281799069959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) + A000117 n

end

end A000116.P14533470281799069959

namespace A000116

/-- `A059053(2*n)+A000117(n)` -/
def P14533470281799069959.Spec : Prop :=
  ∀ n, P14533470281799069959.a n = A000116 n

end A000116

/-! ## A000116.P2559815187726880328

`∑{d}[A028310(2*n), A000048(#)]`
-/

namespace A000116.P2559815187726880328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000048 d

end

end A000116.P2559815187726880328

namespace A000116

/-- `∑{d}[A028310(2*n), A000048(#)]` -/
def P2559815187726880328.Spec : Prop :=
  ∀ n, P2559815187726880328.a n = A000116 n

end A000116

/-! ## A000116.P12496741128464577164

`∑{d}[A028310(n)+n, A000048(#)]`
-/

namespace A000116.P12496741128464577164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000048 d

end

end A000116.P12496741128464577164

namespace A000116

/-- `∑{d}[A028310(n)+n, A000048(#)]` -/
def P12496741128464577164.Spec : Prop :=
  ∀ n, P12496741128464577164.a n = A000116 n

end A000116

/-! ## A000116.P18440616639270930956

`record[A000013(n)/A001511(n+1)]`
-/

namespace A000116.P18440616639270930956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000116.P18440616639270930956

namespace A000116

/-- `record[A000013(n)/A001511(n+1)]` -/
def P18440616639270930956.Spec : Prop :=
  ∀ n, P18440616639270930956.a n = (A000116 n : ℚ)

end A000116

/-! ## A000116.P2806008996170226059

`record[A000013(n)/A247339(n+1)]`
-/

namespace A000116.P2806008996170226059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 n : ℚ) / (A247339 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000116.P2806008996170226059

namespace A000116

/-- `record[A000013(n)/A247339(n+1)]` -/
def P2806008996170226059.Spec : Prop :=
  ∀ n, P2806008996170226059.a n = (A000116 n : ℚ)

end A000116

/-! ## A000116.P16772021288735044709

`A059053(2*n)+A000011(2*n)`
-/

namespace A000116.P16772021288735044709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) + A000011 (2 * n)

end

end A000116.P16772021288735044709

namespace A000116

/-- `A059053(2*n)+A000011(2*n)` -/
def P16772021288735044709.Spec : Prop :=
  ∀ n, P16772021288735044709.a n = A000116 n

end A000116

/-! ## A000116.P2909916270326152062

`A045677(2*n)+A045674(2*n)`
-/

namespace A000116.P2909916270326152062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045677 (2 * n) + A045674 (2 * n)

end

end A000116.P2909916270326152062

namespace A000116

/-- `A045677(2*n)+A045674(2*n)` -/
def P2909916270326152062.Spec : Prop :=
  ∀ n, P2909916270326152062.a n = A000116 n

end A000116

/-! ## A000116.P17200799293704570938

`A115118(2*n)+A000048(2*n)`
-/

namespace A000116.P17200799293704570938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 (2 * n) + A000048 (2 * n)

end

end A000116.P17200799293704570938

namespace A000116

/-- `A115118(2*n)+A000048(2*n)` -/
def P17200799293704570938.Spec : Prop :=
  ∀ n, P17200799293704570938.a n = A000116 n

end A000116

/-! ## A000116.P15906197720680286819

`lcm(A000013(n+n), A343785(n+1))`
-/

namespace A000116.P15906197720680286819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000013 (n + n)) (A343785 (n + 1))

end

end A000116.P15906197720680286819

namespace A000116

/-- `lcm(A000013(n+n), A343785(n+1))` -/
def P15906197720680286819.Spec : Prop :=
  ∀ n, (P15906197720680286819.a n : ℤ) = A000116 n

end A000116

/-! ## A000116.P9313343563583406910

`A016116(2*n)+2*A059053(2*n)`
-/

namespace A000116.P9313343563583406910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + 2 * A059053 (2 * n)

end

end A000116.P9313343563583406910

namespace A000116

/-- `A016116(2*n)+2*A059053(2*n)` -/
def P9313343563583406910.Spec : Prop :=
  ∀ n, P9313343563583406910.a n = A000116 n

end A000116

/-! ## A000116.P9205771765649763679

`A060546(2*n)+2*A059053(2*n)`
-/

namespace A000116.P9205771765649763679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) + 2 * A059053 (2 * n)

end

end A000116.P9205771765649763679

namespace A000116

/-- `A060546(2*n)+2*A059053(2*n)` -/
def P9205771765649763679.Spec : Prop :=
  ∀ n, P9205771765649763679.a n = A000116 n

end A000116

/-! ## A000116.P9659905185970373540

`A077957(2*n)+2*A059053(2*n)`
-/

namespace A000116.P9659905185970373540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + 2 * A059053 (2 * n)

end

end A000116.P9659905185970373540

namespace A000116

/-- `A077957(2*n)+2*A059053(2*n)` -/
def P9659905185970373540.Spec : Prop :=
  ∀ n, P9659905185970373540.a n = A000116 n

end A000116

/-! ## A000116.P7242711646721871945

`2*A000011(2*n)-A016116(2*n)`
-/

namespace A000116.P7242711646721871945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000011 (2 * n) - A016116 (2 * n)

end

end A000116.P7242711646721871945

namespace A000116

/-- `2*A000011(2*n)-A016116(2*n)` -/
def P7242711646721871945.Spec : Prop :=
  ∀ n, P7242711646721871945.a n = A000116 n

end A000116

/-!
# A000117: Number of even sequences with period 2n (bisection of A000011).

The programs for A000117, the canonical program `A000117.P16867571138849897443` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000117 has offset 0).

The definition of A000117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000117.P16867571138849897443

`A000011(2*n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A000117

/-- `A000011(2*n)` -/
def P16867571138849897443.Spec : Prop :=
  ∀ n, P16867571138849897443.a n = A000117 n

theorem P16867571138849897443.correct : P16867571138849897443.Spec := by
  intro n
  simp only [A000117]

end A000117

/-! ## A000117.P16996536366570610077

`record[A000011(n%8+n)]`
-/

namespace A000117.P16996536366570610077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n % 8 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P16996536366570610077

namespace A000117

/-- `record[A000011(n%8+n)]` -/
def P16996536366570610077.Spec : Prop :=
  ∀ n, P16996536366570610077.a n = A000117 n

end A000117

/-! ## A000117.P15368593413754951920

`xor(1, xor(1, A000011(n+n)))`
-/

namespace A000117.P15368593413754951920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000011 (n + n)))

end

end A000117.P15368593413754951920

namespace A000117

/-- `xor(1, xor(1, A000011(n+n)))` -/
def P15368593413754951920.Spec : Prop :=
  ∀ n, P15368593413754951920.a n = A000117 n

end A000117

/-! ## A000117.P11286803319243920544

`record[A000011(n)/(-1)^n]`
-/

namespace A000117.P11286803319243920544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000011 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P11286803319243920544

namespace A000117

/-- `record[A000011(n)/(-1)^n]` -/
def P11286803319243920544.Spec : Prop :=
  ∀ n, P11286803319243920544.a n = (A000117 n : ℚ)

end A000117

/-! ## A000117.P5121105312707423966

`record[A000011(A014681(n))]`
-/

namespace A000117.P5121105312707423966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P5121105312707423966

namespace A000117

/-- `record[A000011(A014681(n))]` -/
def P5121105312707423966.Spec : Prop :=
  ∀ n, P5121105312707423966.a n = A000117 n

end A000117

/-! ## A000117.P13181972131123395690

`record[A000011(A083220(n))]`
-/

namespace A000117.P13181972131123395690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P13181972131123395690

namespace A000117

/-- `record[A000011(A083220(n))]` -/
def P13181972131123395690.Spec : Prop :=
  ∀ n, P13181972131123395690.a n = A000117 n

end A000117

/-! ## A000117.P11195064603664341729

`record[A000011(A273724(n))]`
-/

namespace A000117.P11195064603664341729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A273724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P11195064603664341729

namespace A000117

/-- `record[A000011(A273724(n))]` -/
def P11195064603664341729.Spec : Prop :=
  ∀ n, P11195064603664341729.a n = A000117 n

end A000117

/-! ## A000117.P12019536521681176739

`record[A000011(A006257(n)+1)]`
-/

namespace A000117.P12019536521681176739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P12019536521681176739

namespace A000117

/-- `record[A000011(A006257(n)+1)]` -/
def P12019536521681176739.Spec : Prop :=
  ∀ n, P12019536521681176739.a n = A000117 n

end A000117

/-! ## A000117.P13321132057996683406

`record[A000011(A026741(n)+1)]`
-/

namespace A000117.P13321132057996683406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P13321132057996683406

namespace A000117

/-- `record[A000011(A026741(n)+1)]` -/
def P13321132057996683406.Spec : Prop :=
  ∀ n, P13321132057996683406.a n = A000117 n

end A000117

/-! ## A000117.P6882406278901098225

`A059053(2*n)+A000079(n)`
-/

namespace A000117.P6882406278901098225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) + A000079 n

end

end A000117.P6882406278901098225

namespace A000117

/-- `A059053(2*n)+A000079(n)` -/
def P6882406278901098225.Spec : Prop :=
  ∀ n, P6882406278901098225.a n = A000117 n

end A000117

/-! ## A000117.P10345432735624545059

`A059053(2*n)+A011782(n+1)`
-/

namespace A000117.P10345432735624545059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) + A011782 (n + 1)

end

end A000117.P10345432735624545059

namespace A000117

/-- `A059053(2*n)+A011782(n+1)` -/
def P10345432735624545059.Spec : Prop :=
  ∀ n, P10345432735624545059.a n = A000117 n

end A000117

/-! ## A000117.P2435911994486182809

`A059053(2*n)-A154589(n+1)`
-/

namespace A000117.P2435911994486182809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) - A154589 (n + 1)

end

end A000117.P2435911994486182809

namespace A000117

/-- `A059053(2*n)-A154589(n+1)` -/
def P2435911994486182809.Spec : Prop :=
  ∀ n, P2435911994486182809.a n = A000117 n

end A000117

/-! ## A000117.P11656146791380228701

`A059053(2*n)+A016116(2*n)`
-/

namespace A000117.P11656146791380228701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) + A016116 (2 * n)

end

end A000117.P11656146791380228701

namespace A000117

/-- `A059053(2*n)+A016116(2*n)` -/
def P11656146791380228701.Spec : Prop :=
  ∀ n, P11656146791380228701.a n = A000117 n

end A000117

/-! ## A000117.P14049719707969334382

`A060546(2*n)+A059053(2*n)`
-/

namespace A000117.P14049719707969334382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) + A059053 (2 * n)

end

end A000117.P14049719707969334382

namespace A000117

/-- `A060546(2*n)+A059053(2*n)` -/
def P14049719707969334382.Spec : Prop :=
  ∀ n, P14049719707969334382.a n = A000117 n

end A000117

/-! ## A000117.P15440770853878330161

`A077957(2*n)+A059053(2*n)`
-/

namespace A000117.P15440770853878330161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + A059053 (2 * n)

end

end A000117.P15440770853878330161

namespace A000117

/-- `A077957(2*n)+A059053(2*n)` -/
def P15440770853878330161.Spec : Prop :=
  ∀ n, P15440770853878330161.a n = A000117 n

end A000117

/-! ## A000117.P1753179658602012474

`A059053(2*n)+A045674(2*n+1)`
-/

namespace A000117.P1753179658602012474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n) + A045674 (2 * n + 1)

end

end A000117.P1753179658602012474

namespace A000117

/-- `A059053(2*n)+A045674(2*n+1)` -/
def P1753179658602012474.Spec : Prop :=
  ∀ n, P1753179658602012474.a n = A000117 n

end A000117

/-! ## A000117.P17610363560943554132

`A131572(2*n+1)+A059053(2*n)`
-/

namespace A000117.P17610363560943554132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (2 * n + 1) + A059053 (2 * n)

end

end A000117.P17610363560943554132

namespace A000117

/-- `A131572(2*n+1)+A059053(2*n)` -/
def P17610363560943554132.Spec : Prop :=
  ∀ n, P17610363560943554132.a n = A000117 n

end A000117

/-! ## A000117.P7103901967645839365

`A131575(2*n+1)+A059053(2*n)`
-/

namespace A000117.P7103901967645839365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (2 * n + 1) + A059053 (2 * n)

end

end A000117.P7103901967645839365

namespace A000117

/-- `A131575(2*n+1)+A059053(2*n)` -/
def P7103901967645839365.Spec : Prop :=
  ∀ n, P7103901967645839365.a n = A000117 n

end A000117

/-! ## A000117.P2435928181372025381

`A059053(2*n)+A029744(2*(n+1))/2`
-/

namespace A000117.P2435928181372025381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059053 (2 * n) : ℚ) + (A029744 (2 * (n + 1)) : ℚ) / 2

end

end A000117.P2435928181372025381

namespace A000117

/-- `A059053(2*n)+A029744(2*(n+1))/2` -/
def P2435928181372025381.Spec : Prop :=
  ∀ n, P2435928181372025381.a n = (A000117 n : ℚ)

end A000117

/-! ## A000117.P4609102377265040829

`record[A000011(A002264(A001281(n)))]`
-/

namespace A000117.P4609102377265040829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (A002264 (A001281 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000117.P4609102377265040829

namespace A000117

/-- `record[A000011(A002264(A001281(n)))]` -/
def P4609102377265040829.Spec : Prop :=
  ∀ n, P4609102377265040829.a n = A000117 n

end A000117

/-!
# A000118: Number of ways of writing n as a sum of 4 squares; also theta series of four-dimensional cubic lattice Z^4.

The programs for A000118, there is no canonical definition to state claims against.
-/

/-! ## A000118.P8504491431873018553

`abs(A096727(n))`
-/

namespace A000118.P8504491431873018553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 n|

end

end A000118.P8504491431873018553

/-! ## A000118.P2233245184001743021

`A033999(n)*A096727(n)`
-/

namespace A000118.P2233245184001743021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096727 n

end

end A000118.P2233245184001743021

/-! ## A000118.P15288372159617505741

`A068073(n)*A097057(n)`
-/

namespace A000118.P15288372159617505741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A097057 n

end

end A000118.P15288372159617505741

/-! ## A000118.P14918187246377634004

`A004011(n)/A010684(n)`
-/

namespace A000118.P14918187246377634004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (A010684 n : ℚ)

end

end A000118.P14918187246377634004

/-! ## A000118.P11011456579221587818

`gcd(A000038(n), A096727(n))`
-/

namespace A000118.P11011456579221587818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A096727 n)

end

end A000118.P11011456579221587818

/-! ## A000118.P868325937804447019

`lcm(A000034(n), A096727(n))`
-/

namespace A000118.P868325937804447019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A096727 n)

end

end A000118.P868325937804447019

/-! ## A000118.P4691249870197064133

`A004011(n)/Δ[A042948(n)]`
-/

namespace A000118.P4691249870197064133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A000118.P4691249870197064133

/-! ## A000118.P10511978125491861150

`(A096727(n)+A004011(n))/2`
-/

namespace A000118.P10511978125491861150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096727 n + A004011 n : ℚ) / 2

end

end A000118.P10511978125491861150

/-! ## A000118.P1089162809126644846

`(2-A010684(n))*A096727(n)`
-/

namespace A000118.P1089162809126644846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A096727 n

end

end A000118.P1089162809126644846

/-! ## A000118.P14454993133133665989

`A004011(n)/(2-A033999(n))`
-/

namespace A000118.P14454993133133665989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (2 - A033999 n : ℚ)

end

end A000118.P14454993133133665989

/-! ## A000118.P5879692240753298897

`2*A004011(n)/A010696(n)`
-/

namespace A000118.P5879692240753298897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A004011 n : ℚ) / (A010696 n : ℚ))

end

end A000118.P5879692240753298897

/-! ## A000118.P15215019915362214157

`A004011(n)/A046897(A006519(n+1))`
-/

namespace A000118.P15215019915362214157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (A046897 (A006519 (n + 1)).toNat : ℚ)

end

end A000118.P15215019915362214157

/-! ## A000118.P9982801778898984869

`2*A122858(A026741(n))-A122858(n)`
-/

namespace A000118.P9982801778898984869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122858 (A026741 n).toNat - A122858 n

end

end A000118.P9982801778898984869

/-! ## A000118.P13201087769396048953

`A004011(n)/A125510(n)*A282544(n)`
-/

namespace A000118.P13201087769396048953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (A125510 n : ℚ) * (A282544 n : ℚ)

end

end A000118.P13201087769396048953

/-! ## A000118.P4452066481439492254

`A000152(n)*A096727(n)/A319307(n)`
-/

namespace A000118.P4452066481439492254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 n * A096727 n : ℚ) / (A319307 n : ℚ)

end

end A000118.P4452066481439492254

/-! ## A000118.P11392954162516053016

`A000156(n)*A096727(n)/A319309(n)`
-/

namespace A000118.P11392954162516053016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n * A096727 n : ℚ) / (A319309 n : ℚ)

end

end A000118.P11392954162516053016

/-! ## A000118.P8609386657726351463

`(A000035(n+1)-A000035(n))*A096727(n)`
-/

namespace A000118.P8609386657726351463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A096727 n

end

end A000118.P8609386657726351463

/-! ## A000118.P16028583529471960006

`A097057(2*n)`
-/

namespace A000118.P16028583529471960006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (2 * n)

end

end A000118.P16028583529471960006

/-! ## A000118.P12381115244699719719

`A096727(2*n)/A010684(n)`
-/

namespace A000118.P12381115244699719719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096727 (2 * n) : ℚ) / (A010684 n : ℚ)

end

end A000118.P12381115244699719719

/-! ## A000118.P11109844588322537780

`A103640(2*n)/A010684(n)`
-/

namespace A000118.P11109844588322537780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103640 (2 * n) : ℚ) / (A010684 n : ℚ)

end

end A000118.P11109844588322537780

/-!
# A000119: Number of representations of n as a sum of distinct Fibonacci numbers.

The programs for A000119, there is no canonical definition to state claims against.
-/

/-! ## A000119.P1387508049978083938

`∑[A303903(n)]`
-/

namespace A000119.P1387508049978083938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000119.P1387508049978083938

/-! ## A000119.P13750722892655455543

`A000121(A019586(n+1))`
-/

namespace A000119.P13750722892655455543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (A019586 (n + 1)).toNat

end

end A000119.P13750722892655455543

/-! ## A000119.P4230747636431952216

`A350240(A348853(n+1))`
-/

namespace A000119.P4230747636431952216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A348853 (n + 1)).toNat

end

end A000119.P4230747636431952216

/-! ## A000119.P16461609641122869146

`A103344(lt[0, A103344(n)])`
-/

namespace A000119.P16461609641122869146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A000119.P16461609641122869146

/-! ## A000119.P7692358195556950169

`A093998(n)+A093997(n)`
-/

namespace A000119.P7692358195556950169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n + A093997 n

end

end A000119.P7692358195556950169

/-! ## A000119.P5576687152406263500

`A093996(n)+2*A093997(n)`
-/

namespace A000119.P5576687152406263500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093996 n + 2 * A093997 n

end

end A000119.P5576687152406263500

/-! ## A000119.P13214949114484937443

`A350240(n+1)-A239002(n+1)`
-/

namespace A000119.P13214949114484937443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (n + 1) - A239002 (n + 1)

end

end A000119.P13214949114484937443

/-! ## A000119.P5698731754200723406

`A093998(n)+A093998(n)-A093996(n)`
-/

namespace A000119.P5698731754200723406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n + (A093998 n - A093996 n)

end

end A000119.P5698731754200723406

/-! ## A000119.P15704848932753109513

`A103344(A016945(n)%A035336(n+1)-1)`
-/

namespace A000119.P15704848932753109513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (Int.tmod (A016945 n) (A035336 (n + 1)) - 1).toNat

end

end A000119.P15704848932753109513

/-! ## A000119.P251349491645650886

`A239002(n+1)+A239002(n)-A303903(n+1)`
-/

namespace A000119.P251349491645650886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (n + 1) + (A239002 n - A303903 (n + 1))

end

end A000119.P251349491645650886

/-! ## A000119.P4891136679268301556

`A000121(n)-a(n-1)` with `a(0)=1`
-/

namespace A000119.P4891136679268301556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000121 n - a (n - 1)

end

end A000119.P4891136679268301556

/-! ## A000119.P5003209410113759468

`A239002(floor(ϕ*(n+1))-1)`
-/

namespace A000119.P5003209410113759468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1).toNat

end

end A000119.P5003209410113759468

/-! ## A000119.P17150082309471543403

`A116402(lt[0, A116402(n)])`
-/

namespace A000119.P17150082309471543403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A000119.P17150082309471543403

/-! ## A000119.P12608412526983426313

`A000121(n)+A239002(n)-A350240(n)`
-/

namespace A000119.P12608412526983426313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n + (A239002 n - A350240 n)

end

end A000119.P12608412526983426313

/-! ## A000119.P10590388016905447899

`A000121(n+1)-(A239002(n+1)+A239002(n))`
-/

namespace A000119.P10590388016905447899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (n + 1) - (A239002 (n + 1) + A239002 n)

end

end A000119.P10590388016905447899

/-! ## A000119.P3051647620028427334

`A003263(A190511(n+1))`
-/

namespace A000119.P3051647620028427334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 (A190511 (n + 1)).toNat

end

end A000119.P3051647620028427334

/-! ## A000119.P6158876814512541111

`A294203(A050140(n+1)-1)`
-/

namespace A000119.P6158876814512541111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A050140 (n + 1) - 1).toNat

end

end A000119.P6158876814512541111

/-! ## A000119.P12879115558872841121

`A294203(comp[A287775(n+1)-1])`
-/

namespace A000119.P12879115558872841121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A000119.P12879115558872841121

/-! ## A000119.P16115974681633772151

`A003263(A063732(A022342(n+2)))`
-/

namespace A000119.P16115974681633772151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003263 (A063732 (A022342 (n + 2)).toNat).toNat

end

end A000119.P16115974681633772151

/-! ## A000119.P8717408239675735534

`A294203(A063732(A003622(n+1)-n))`
-/

namespace A000119.P8717408239675735534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (A063732 (A003622 (n + 1) - (n : ℤ)).toNat).toNat

end

end A000119.P8717408239675735534

/-!
# A000120: Ones-counting sequence: number of 1's in binary expansion of n (or the binary weight of n).

The programs for A000120, the canonical program `A000120.P2816527436160941581` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000120 has offset 0).

The definition of A000120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000120.P28314181453216102

`a(n-2^floor(log2(n)))+1` with `a(0)=0`
-/

namespace A000120.P28314181453216102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 2 ^ Nat.log 2 n) + 1

end

end A000120.P28314181453216102

namespace A000120

/-- `a(n-2^floor(log2(n)))+1` -/
def P28314181453216102.Spec : Prop :=
  ∀ n, (P28314181453216102.a n : ℤ) = A000120 n

end A000120

/-! ## A000120.P11485754525482650275

`log2(A001316(n))`
-/

namespace A000120.P11485754525482650275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

end

end A000120.P11485754525482650275

namespace A000120

/-- `log2(A001316(n))` -/
def P11485754525482650275.Spec : Prop :=
  ∀ n, P11485754525482650275.a n = (A000120 n : ℝ)

end A000120

/-! ## A000120.P2049139522769655220

`n-A011371(n)`
-/

namespace A000120.P2049139522769655220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

end

end A000120.P2049139522769655220

namespace A000120

/-- `n-A011371(n)` -/
def P2049139522769655220.Spec : Prop :=
  ∀ n, P2049139522769655220.a n = A000120 n

end A000120

/-! ## A000120.P2816527436160941581

`2*n-A005187(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000120

/-- `2*n-A005187(n)` -/
def P2816527436160941581.Spec : Prop :=
  ∀ n, P2816527436160941581.a n = A000120 n

theorem P2816527436160941581.correct : P2816527436160941581.Spec := by
  intro n
  simp only [A000120]

end A000120

/-! ## A000120.P12431247011439044563

`A139351(n)+A139352(n)`
-/

namespace A000120.P12431247011439044563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + A139352 n

end

end A000120.P12431247011439044563

namespace A000120

/-- `A139351(n)+A139352(n)` -/
def P12431247011439044563.Spec : Prop :=
  ∀ n, P12431247011439044563.a n = A000120 n

end A000120

/-! ## A000120.P10199487397994143553

`A070939(n)-A023416(n)`
-/

namespace A000120.P10199487397994143553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A023416 n

end

end A000120.P10199487397994143553

namespace A000120

/-- `A070939(n)-A023416(n)` -/
def P10199487397994143553.Spec : Prop :=
  ∀ n, P10199487397994143553.a n = A000120 n

end A000120

/-! ## A000120.P6903933818887694682

`log2(A000984(n)/A001790(n))`
-/

namespace A000120.P6903933818887694682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000984 n : ℚ) / (A001790 n : ℚ) : ℝ)

end

end A000120.P6903933818887694682

namespace A000120

/-- `log2(A000984(n)/A001790(n))` -/
def P6903933818887694682.Spec : Prop :=
  ∀ n, P6903933818887694682.a n = (A000120 n : ℝ)

end A000120

/-! ## A000120.P3117984260040974970

`∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A000120.P3117984260040974970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000120.P3117984260040974970

namespace A000120

/-- `∑[∑{e}[xor(n, -n), 2-#]]` -/
def P3117984260040974970.Spec : Prop :=
  ∀ n, P3117984260040974970.a n = A000120 n

end A000120

/-! ## A000120.P7893388184828182773

`n%2+a(floor(n/2))` with `a(0)=0`
-/

namespace A000120.P7893388184828182773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + a ⌊(n : ℚ) / 2⌋.toNat

end

end A000120.P7893388184828182773

namespace A000120

/-- `n%2+a(floor(n/2))` -/
def P7893388184828182773.Spec : Prop :=
  ∀ n, (P7893388184828182773.a n : ℤ) = A000120 n

end A000120

/-! ## A000120.P10154511325136042169

`1-(val(n, 2)-a(n-1))` with `a(0)=0`
-/

namespace A000120.P10154511325136042169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - a (n - 1))

end

end A000120.P10154511325136042169

namespace A000120

/-- `1-(val(n, 2)-a(n-1))` -/
def P10154511325136042169.Spec : Prop :=
  ∀ n, P10154511325136042169.a n = A000120 n

end A000120

/-! ## A000120.P9349527930129951224

`∑[1-∑{e}[or(n, -n), #]]-1`
-/

namespace A000120.P9349527930129951224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000120.P9349527930129951224

namespace A000120

/-- `∑[1-∑{e}[or(n, -n), #]]-1` -/
def P9349527930129951224.Spec : Prop :=
  ∀ n, P9349527930129951224.a n = A000120 n

end A000120

/-! ## A000120.P2970630284978716395

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A000120.P2970630284978716395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000120.P2970630284978716395

namespace A000120

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P2970630284978716395.Spec : Prop :=
  ∀ n, P2970630284978716395.a n = A000120 n

end A000120

/-! ## A000120.P282310366930998028

`∑[A088705(n)]`
-/

namespace A000120.P282310366930998028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000120.P282310366930998028

namespace A000120

/-- `∑[A088705(n)]` -/
def P282310366930998028.Spec : Prop :=
  ∀ n, P282310366930998028.a n = A000120 n

end A000120

/-! ## A000120.P13350016881666136524

`val(A102377(n), 2)`
-/

namespace A000120.P13350016881666136524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

end

end A000120.P13350016881666136524

namespace A000120

/-- `val(A102377(n), 2)` -/
def P13350016881666136524.Spec : Prop :=
  ∀ n, (P13350016881666136524.a n : ℤ) = A000120 n

end A000120

/-! ## A000120.P12265059050884304074

`val(A160713(n), 2)`
-/

namespace A000120.P12265059050884304074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2

end

end A000120.P12265059050884304074

namespace A000120

/-- `val(A160713(n), 2)` -/
def P12265059050884304074.Spec : Prop :=
  ∀ n, (P12265059050884304074.a n : ℤ) = A000120 n

end A000120

/-! ## A000120.P11134587895240565615

`val(A246037(n), 2)`
-/

namespace A000120.P11134587895240565615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246037 n).toNat 2

end

end A000120.P11134587895240565615

namespace A000120

/-- `val(A246037(n), 2)` -/
def P11134587895240565615.Spec : Prop :=
  ∀ n, (P11134587895240565615.a n : ℤ) = A000120 n

end A000120

/-! ## A000120.P17207746509433462364

`val(A283477(n), 2)`
-/

namespace A000120.P17207746509433462364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283477 n).toNat 2

end

end A000120.P17207746509433462364

namespace A000120

/-- `val(A283477(n), 2)` -/
def P17207746509433462364.Spec : Prop :=
  ∀ n, (P17207746509433462364.a n : ℤ) = A000120 n

end A000120

/-!
# A000121: Number of representations of n as a sum of Fibonacci numbers (1 is allowed twice as a part).

The programs for A000121, there is no canonical definition to state claims against.
-/

/-! ## A000121.P9204160177654990064

`2*A000119(n)-A303903(n)`
-/

namespace A000121.P9204160177654990064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000119 n - A303903 n

end

end A000121.P9204160177654990064

/-! ## A000121.P2325624030211544432

`A000119(n)+A350240(n)-A239002(n)`
-/

namespace A000121.P2325624030211544432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n + (A350240 n - A239002 n)

end

end A000121.P2325624030211544432

/-! ## A000121.P10297614382647495269

`A350240(n+1)+A350240(n)-A000119(n+1)`
-/

namespace A000121.P10297614382647495269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (n + 1) + (A350240 n - A000119 (n + 1))

end

end A000121.P10297614382647495269

/-! ## A000121.P9840643856421721209

`A350240(A004956(n))`
-/

namespace A000121.P9840643856421721209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A004956 n).toNat

end

end A000121.P9840643856421721209

/-! ## A000121.P9898933336231079517

`A350240(A026351(n))`
-/

namespace A000121.P9898933336231079517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A026351 n).toNat

end

end A000121.P9898933336231079517

/-! ## A000121.P17090600132611225786

`A350240(A022342(n+1))`
-/

namespace A000121.P17090600132611225786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A022342 (n + 1)).toNat

end

end A000121.P17090600132611225786

/-! ## A000121.P16556991057717492604

`A350240(A026277(n+1))`
-/

namespace A000121.P16556991057717492604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A026277 (n + 1)).toNat

end

end A000121.P16556991057717492604

/-! ## A000121.P14816095032491468663

`A067595(A054770(n+1))`
-/

namespace A000121.P14816095032491468663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A054770 (n + 1)).toNat

end

end A000121.P14816095032491468663

/-! ## A000121.P8710993511605441242

`A067595(A284624(n+1))`
-/

namespace A000121.P8710993511605441242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A284624 (n + 1)).toNat

end

end A000121.P8710993511605441242

/-! ## A000121.P8068848273295564978

`A104450(A285679(n+1))`
-/

namespace A000121.P8068848273295564978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104450 (A285679 (n + 1)).toNat

end

end A000121.P8068848273295564978

/-! ## A000121.P17335472212739896013

`A067595(A356217(n+1))`
-/

namespace A000121.P17335472212739896013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A356217 (n + 1)).toNat

end

end A000121.P17335472212739896013

/-! ## A000121.P2316778455964077711

`A067595(A004957(n)+n)`
-/

namespace A000121.P2316778455964077711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A004957 n + (n : ℤ)).toNat

end

end A000121.P2316778455964077711

/-! ## A000121.P9894202979658654029

`A067595(lt[A067595(n), A067595(n+1)])`
-/

namespace A000121.P9894202979658654029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A000121.P9894202979658654029

/-! ## A000121.P13943376724596357144

`A000119(floor((n+1)/ϕ+n)+n)`
-/

namespace A000121.P13943376724596357144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (⌊(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A000121.P13943376724596357144

/-! ## A000121.P10704286179930115509

`A350240(A003259(n+1))`
-/

namespace A000121.P10704286179930115509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A003259 (n + 1)).toNat

end

end A000121.P10704286179930115509

/-! ## A000121.P8721465287123946302

`A350240(A003622(n+1))`
-/

namespace A000121.P8721465287123946302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A003622 (n + 1)).toNat

end

end A000121.P8721465287123946302

/-! ## A000121.P17702165222866248347

`A350240(A001950(n+1)-1)`
-/

namespace A000121.P17702165222866248347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350240 (A001950 (n + 1) - 1).toNat

end

end A000121.P17702165222866248347

/-! ## A000121.P11610546550481962215

`A104450(A285682(n+1))`
-/

namespace A000121.P11610546550481962215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104450 (A285682 (n + 1)).toNat

end

end A000121.P11610546550481962215

/-! ## A000121.P9781210716860298849

`A239002(A047924(n)-1)`
-/

namespace A000121.P9781210716860298849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A047924 n - 1).toNat

end

end A000121.P9781210716860298849

/-! ## A000121.P7970366712651444844

`A239002(A035336(n+1)-2)`
-/

namespace A000121.P7970366712651444844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A035336 (n + 1) - 2).toNat

end

end A000121.P7970366712651444844

/-!
# A000122: Expansion of Jacobi theta function theta_3(x) = Sum_{m =-oo..oo} x^(m^2) (number of integer solutions to k^2 = n).

The programs for A000122, the canonical program `A000122.P2586650665158271412` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000122 has offset 0).

The definition of A000122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000122.P2586650665158271412

`char[(n+1)²]+char[n²]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000122

/-- `char[(n+1)²]+char[n²]` -/
def P2586650665158271412.Spec : Prop :=
  ∀ n, (P2586650665158271412.a n : ℤ) = A000122 n

theorem P2586650665158271412.correct : P2586650665158271412.Spec := by
  intro n
  simp only [A000122]

end A000122

/-! ## A000122.P11767622582840173749

`(2-Δ[floor(sqrt(n))])!*char[n²]`
-/

namespace A000122.P11767622582840173749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat * (if ∃ j, f2 j = n then 1 else 0)

end

end A000122.P11767622582840173749

namespace A000122

/-- `(2-Δ[floor(sqrt(n))])!*char[n²]` -/
def P11767622582840173749.Spec : Prop :=
  ∀ n, (P11767622582840173749.a n : ℤ) = A000122 n

end A000122

/-! ## A000122.P6648149473866067225

`abs(A002448(n))`
-/

namespace A000122.P6648149473866067225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002448 n|

end

end A000122.P6648149473866067225

namespace A000122

/-- `abs(A002448(n))` -/
def P6648149473866067225.Spec : Prop :=
  ∀ n, P6648149473866067225.a n = A000122 n

end A000122

/-! ## A000122.P11777384375145802241

`A214304(2*n)`
-/

namespace A000122.P11777384375145802241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 (2 * n)

end

end A000122.P11777384375145802241

namespace A000122

/-- `A214304(2*n)` -/
def P11777384375145802241.Spec : Prop :=
  ∀ n, P11777384375145802241.a n = A000122 n

end A000122

/-! ## A000122.P12878158578755817142

`A014452(n)%3`
-/

namespace A000122.P12878158578755817142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014452 n) 3

end

end A000122.P12878158578755817142

namespace A000122

/-- `A014452(n)%3` -/
def P12878158578755817142.Spec : Prop :=
  ∀ n, P12878158578755817142.a n = A000122 n

end A000122

/-! ## A000122.P4932249380321232360

`A014453(n)%3`
-/

namespace A000122.P4932249380321232360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014453 n) 3

end

end A000122.P4932249380321232360

namespace A000122

/-- `A014453(n)%3` -/
def P4932249380321232360.Spec : Prop :=
  ∀ n, P4932249380321232360.a n = A000122 n

end A000122

/-! ## A000122.P11115937621143757215

`A071967(n)%3`
-/

namespace A000122.P11115937621143757215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071967 n) 3

end

end A000122.P11115937621143757215

namespace A000122

/-- `A071967(n)%3` -/
def P11115937621143757215.Spec : Prop :=
  ∀ n, P11115937621143757215.a n = A000122 n

end A000122

/-! ## A000122.P9634913119915216353

`A261394(n)%3`
-/

namespace A000122.P9634913119915216353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261394 n) 3

end

end A000122.P9634913119915216353

namespace A000122

/-- `A261394(n)%3` -/
def P9634913119915216353.Spec : Prop :=
  ∀ n, P9634913119915216353.a n = A000122 n

end A000122

/-! ## A000122.P5402214701218753942

`A000132(n)%4`
-/

namespace A000122.P5402214701218753942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000132 n) 4

end

end A000122.P5402214701218753942

namespace A000122

/-- `A000132(n)%4` -/
def P5402214701218753942.Spec : Prop :=
  ∀ n, P5402214701218753942.a n = A000122 n

end A000122

/-! ## A000122.P16289219582840279003

`A005875(n)%4`
-/

namespace A000122.P16289219582840279003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005875 n) 4

end

end A000122.P16289219582840279003

namespace A000122

/-- `A005875(n)%4` -/
def P16289219582840279003.Spec : Prop :=
  ∀ n, P16289219582840279003.a n = A000122 n

end A000122

/-! ## A000122.P11486731592351860163

`A008451(n)%4`
-/

namespace A000122.P11486731592351860163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008451 n) 4

end

end A000122.P11486731592351860163

namespace A000122

/-- `A008451(n)%4` -/
def P11486731592351860163.Spec : Prop :=
  ∀ n, P11486731592351860163.a n = A000122 n

end A000122

/-! ## A000122.P9334595089677980733

`A008452(n)%4`
-/

namespace A000122.P9334595089677980733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008452 n) 4

end

end A000122.P9334595089677980733

namespace A000122

/-- `A008452(n)%4` -/
def P9334595089677980733.Spec : Prop :=
  ∀ n, P9334595089677980733.a n = A000122 n

end A000122

/-! ## A000122.P1522645402861985334

`A008453(n)%4`
-/

namespace A000122.P1522645402861985334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008453 n) 4

end

end A000122.P1522645402861985334

namespace A000122

/-- `A008453(n)%4` -/
def P1522645402861985334.Spec : Prop :=
  ∀ n, P1522645402861985334.a n = A000122 n

end A000122

/-! ## A000122.P13385508812843987605

`A153176(n)%4`
-/

namespace A000122.P13385508812843987605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153176 n) 4

end

end A000122.P13385508812843987605

namespace A000122

/-- `A153176(n)%4` -/
def P13385508812843987605.Spec : Prop :=
  ∀ n, P13385508812843987605.a n = A000122 n

end A000122

/-! ## A000122.P9768273408131830251

`A246631(n)%4`
-/

namespace A000122.P9768273408131830251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246631 n) 4

end

end A000122.P9768273408131830251

namespace A000122

/-- `A246631(n)%4` -/
def P9768273408131830251.Spec : Prop :=
  ∀ n, P9768273408131830251.a n = A000122 n

end A000122

/-! ## A000122.P16852531512130159380

`A246928(n)%4`
-/

namespace A000122.P16852531512130159380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246928 n) 4

end

end A000122.P16852531512130159380

namespace A000122

/-- `A246928(n)%4` -/
def P16852531512130159380.Spec : Prop :=
  ∀ n, P16852531512130159380.a n = A000122 n

end A000122

/-! ## A000122.P9189136321456134501

`and(3, A212885(n))`
-/

namespace A000122.P9189136321456134501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A212885 n)

end

end A000122.P9189136321456134501

namespace A000122

/-- `and(3, A212885(n))` -/
def P9189136321456134501.Spec : Prop :=
  ∀ n, P9189136321456134501.a n = A000122 n

end A000122

/-! ## A000122.P5296195558592174502

`C(2, A002828(n)²)`
-/

namespace A000122.P5296195558592174502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A002828 n ^ 2).toNat

end

end A000122.P5296195558592174502

namespace A000122

/-- `C(2, A002828(n)²)` -/
def P5296195558592174502.Spec : Prop :=
  ∀ n, (P5296195558592174502.a n : ℤ) = A000122 n

end A000122

/-! ## A000122.P6276952520985598060

`A023939(2*n)%4`
-/

namespace A000122.P6276952520985598060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023939 (2 * n)) 4

end

end A000122.P6276952520985598060

namespace A000122

/-- `A023939(2*n)%4` -/
def P6276952520985598060.Spec : Prop :=
  ∀ n, P6276952520985598060.a n = A000122 n

end A000122

/-! ## A000122.P12317363430429905533

`A007877(A005875(n))`
-/

namespace A000122.P12317363430429905533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A005875 n).toNat

end

end A000122.P12317363430429905533

namespace A000122

/-- `A007877(A005875(n))` -/
def P12317363430429905533.Spec : Prop :=
  ∀ n, P12317363430429905533.a n = A000122 n

end A000122

/-!
# A000123: Number of binary partitions: number of partitions of 2n into powers of 2.

The programs for A000123, the canonical program `A000123.P11241588647392221204` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000123 has offset 0).

The definition of A000123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000123.P11241588647392221204

`a(n-1)+a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000123

/-- `a(n-1)+a(floor(n/2))` -/
def P11241588647392221204.Spec : Prop :=
  ∀ n, (P11241588647392221204.a n : ℤ) = A000123 n

theorem P11241588647392221204.correct : P11241588647392221204.Spec := by
  intro n
  simp only [A000123]

end A000123

/-! ## A000123.P17611652720749569057

`A018819(2*n)`
-/

namespace A000123.P17611652720749569057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (2 * n)

end

end A000123.P17611652720749569057

namespace A000123

/-- `A018819(2*n)` -/
def P17611652720749569057.Spec : Prop :=
  ∀ n, P17611652720749569057.a n = A000123 n

end A000123

/-! ## A000123.P10626353082027960535

`∑[a(n-2)+a(and(n, -2)/2)]` with `a(0)=1, a(1)=1`
-/

namespace A000123.P10626353082027960535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000123.P10626353082027960535

namespace A000123

/-- `∑[a(n-2)+a(and(n, -2)/2)]` -/
def P10626353082027960535.Spec : Prop :=
  ∀ n, (P10626353082027960535.a n : ℤ) = A000123 n

end A000123

/-! ## A000123.P3251439343051327489

`1-floor(1-a(n-1)-a(floor(n/2)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000123.P3251439343051327489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (1 - a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A000123.P3251439343051327489

namespace A000123

/-- `1-floor(1-a(n-1)-a(floor(n/2)))` -/
def P3251439343051327489.Spec : Prop :=
  ∀ n, P3251439343051327489.a n = A000123 n

end A000123

/-! ## A000123.P7648119978539466592

`∑[A018819(n)]`
-/

namespace A000123.P7648119978539466592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000123.P7648119978539466592

namespace A000123

/-- `∑[A018819(n)]` -/
def P7648119978539466592.Spec : Prop :=
  ∀ n, P7648119978539466592.a n = A000123 n

end A000123

/-! ## A000123.P11954309198800439934

`(A346912(n)+1)/2`
-/

namespace A000123.P11954309198800439934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346912 n + 1 : ℚ) / 2

end

end A000123.P11954309198800439934

namespace A000123

/-- `(A346912(n)+1)/2` -/
def P11954309198800439934.Spec : Prop :=
  ∀ n, P11954309198800439934.a n = (A000123 n : ℚ)

end A000123

/-! ## A000123.P2773591374892388230

`floor(a(A004526(n))+a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000123.P2773591374892388230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat + a (n - 1)

end

end A000123.P2773591374892388230

namespace A000123

/-- `floor(a(A004526(n))+a(n-1))` -/
def P2773591374892388230.Spec : Prop :=
  ∀ n, (P2773591374892388230.a n : ℤ) = A000123 n

end A000123

/-! ## A000123.P1502476863737401011

`A001316(n)+2*A268128(n)`
-/

namespace A000123.P1502476863737401011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 2 * A268128 n

end

end A000123.P1502476863737401011

namespace A000123

/-- `A001316(n)+2*A268128(n)` -/
def P1502476863737401011.Spec : Prop :=
  ∀ n, P1502476863737401011.a n = A000123 n

end A000123

/-! ## A000123.P12698438907470207663

`∑[A307148(comp[2*n])]`
-/

namespace A000123.P12698438907470207663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000123.P12698438907470207663

namespace A000123

/-- `∑[A307148(comp[2*n])]` -/
def P12698438907470207663.Spec : Prop :=
  ∀ n, P12698438907470207663.a n = A000123 n

end A000123

/-! ## A000123.P9669526791954048846

`A304909(2*n+1)/(2*n+1)`
-/

namespace A000123.P9669526791954048846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304909 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A000123.P9669526791954048846

namespace A000123

/-- `A304909(2*n+1)/(2*n+1)` -/
def P9669526791954048846.Spec : Prop :=
  ∀ n, P9669526791954048846.a n = (A000123 n : ℚ)

end A000123

/-! ## A000123.P13625350890385540760

`record[gcd(A018819(n+1), A018819(n))]`
-/

namespace A000123.P13625350890385540760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018819 (n + 1)) (A018819 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000123.P13625350890385540760

namespace A000123

/-- `record[gcd(A018819(n+1), A018819(n))]` -/
def P13625350890385540760.Spec : Prop :=
  ∀ n, (P13625350890385540760.a n : ℤ) = A000123 n

end A000123

/-! ## A000123.P10729569410709286633

`A357476(2*n+1-A154955(n+2))`
-/

namespace A000123.P10729569410709286633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357476 ((2 * n + 1 : ℤ) - A154955 (n + 2)).toNat

end

end A000123.P10729569410709286633

namespace A000123

/-- `A357476(2*n+1-A154955(n+2))` -/
def P10729569410709286633.Spec : Prop :=
  ∀ n, P10729569410709286633.a n = A000123 n

end A000123

/-! ## A000123.P6729297121367715602

`A304909(2*n+1)-A304909(2*n)`
-/

namespace A000123.P6729297121367715602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304909 (2 * n + 1) - A304909 (2 * n)

end

end A000123.P6729297121367715602

namespace A000123

/-- `A304909(2*n+1)-A304909(2*n)` -/
def P6729297121367715602.Spec : Prop :=
  ∀ n, P6729297121367715602.a n = A000123 n

end A000123

/-! ## A000123.P11125505391654102938

`A018819(A000069(n+2))-A018819(n+1)`
-/

namespace A000123.P11125505391654102938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A000069 (n + 2)).toNat - A018819 (n + 1)

end

end A000123.P11125505391654102938

namespace A000123

/-- `A018819(A000069(n+2))-A018819(n+1)` -/
def P11125505391654102938.Spec : Prop :=
  ∀ n, P11125505391654102938.a n = A000123 n

end A000123

/-! ## A000123.P11826665108954127016

`A018819(A001969(n+2))-A018819(n+1)`
-/

namespace A000123.P11826665108954127016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A001969 (n + 2)).toNat - A018819 (n + 1)

end

end A000123.P11826665108954127016

namespace A000123

/-- `A018819(A001969(n+2))-A018819(n+1)` -/
def P11826665108954127016.Spec : Prop :=
  ∀ n, P11826665108954127016.a n = A000123 n

end A000123

/-! ## A000123.P10464258870376964852

`A307148(4*n+1)`
-/

namespace A000123.P10464258870376964852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307148 (4 * n + 1)

end

end A000123.P10464258870376964852

namespace A000123

/-- `A307148(4*n+1)` -/
def P10464258870376964852.Spec : Prop :=
  ∀ n, P10464258870376964852.a n = A000123 n

end A000123

/-! ## A000123.P10572675020219070578

`record[Δ[A018819(n+1)]]`
-/

namespace A000123.P10572675020219070578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000123.P10572675020219070578

namespace A000123

/-- `record[Δ[A018819(n+1)]]` -/
def P10572675020219070578.Spec : Prop :=
  ∀ n, P10572675020219070578.a n = A000123 n

end A000123

/-! ## A000123.P11373057237919328957

`record[Δ[A042951(n+1)]]`
-/

namespace A000123.P11373057237919328957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000123.P11373057237919328957

namespace A000123

/-- `record[Δ[A042951(n+1)]]` -/
def P11373057237919328957.Spec : Prop :=
  ∀ n, P11373057237919328957.a n = A000123 n

end A000123

/-! ## A000123.P10723554097821191118

`record[A042951(n)-A042951(n+1)]`
-/

namespace A000123.P10723554097821191118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n - A042951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000123.P10723554097821191118

namespace A000123

/-- `record[A042951(n)-A042951(n+1)]` -/
def P10723554097821191118.Spec : Prop :=
  ∀ n, P10723554097821191118.a n = A000123 n

end A000123

/-! ## A000123.P4491896498192951392

`∑[A101566(∑[n])]`
-/

namespace A000123.P4491896498192951392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101566 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000123.P4491896498192951392

namespace A000123

/-- `∑[A101566(∑[n])]` -/
def P4491896498192951392.Spec : Prop :=
  ∀ n, P4491896498192951392.a n = A000123 n

end A000123

/-!
# A000124: Central polygonal numbers (the Lazy Caterer's sequence): n(n+1)/2 + 1; or, maximal number of pieces formed when slicing a pancake with n cuts.

The programs for A000124, the canonical program `A000124.P675563980313077261` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000124 has offset 0).

The definition of A000124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)/2+1` (program `A000124.P6704747725972735809`, by `A000124.P6704747725972735809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000124.P675563980313077261

`a(n-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000124

/-- `a(n-1)+n` -/
def P675563980313077261.Spec : Prop :=
  ∀ n, (P675563980313077261.a n : ℤ) = A000124 n

theorem P675563980313077261.correct : P675563980313077261.Spec := by
  intro n
  simp only [A000124]

end A000124

/-! ## A000124.P14456670637677022538

`(n²+n)/2+1`
-/

namespace A000124.P14456670637677022538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2 + 1

end

end A000124.P14456670637677022538

namespace A000124

/-- `(n²+n)/2+1` -/
def P14456670637677022538.Spec : Prop :=
  ∀ n, P14456670637677022538.a n = (A000124 n : ℚ)

theorem P14456670637677022538.correct : P14456670637677022538.Spec := by
  intro n
  induction n with
  | zero => simp [A000124, A000124.P14456670637677022538.a, A000124.P675563980313077261.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A000124, Nat.add_sub_cancel, A000124.P14456670637677022538.a, A000124.P675563980313077261.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A000124

/-! ## A000124.P6704747725972735809

`n*(n+1)/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000124.P6704747725972735809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / 2) + 1

end

end A000124.P6704747725972735809

namespace A000124

/-- `n*(n+1)/2+1` -/
def P6704747725972735809.Spec : Prop :=
  ∀ n, P6704747725972735809.a n = (A000124 n : ℚ)

theorem P6704747725972735809.correct : P6704747725972735809.Spec := by
  intro n
  induction n with
  | zero => simp [A000124, A000124.P6704747725972735809.a, A000124.P675563980313077261.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A000124, Nat.add_sub_cancel, A000124.P6704747725972735809.a, A000124.P675563980313077261.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A000124

/-! ## A000124.P10023525442225561518

`(A002378(n)+2)/2`
-/

namespace A000124.P10023525442225561518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 n + 2 : ℚ) / 2

end

end A000124.P10023525442225561518

namespace A000124

/-- `(A002378(n)+2)/2` -/
def P10023525442225561518.Spec : Prop :=
  ∀ n, P10023525442225561518.a n = (A000124 n : ℚ)

end A000124

/-! ## A000124.P5254460588888879271

`(A002061(n)+A002061(n+2))/4`
-/

namespace A000124.P5254460588888879271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 n + A002061 (n + 2) : ℚ) / 4

end

end A000124.P5254460588888879271

namespace A000124

/-- `(A002061(n)+A002061(n+2))/4` -/
def P5254460588888879271.Spec : Prop :=
  ∀ n, P5254460588888879271.a n = (A000124 n : ℚ)

end A000124

/-! ## A000124.P15281597340023302366

`abs(xor(∑[n], -1))`
-/

namespace A000124.P15281597340023302366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)|

end

end A000124.P15281597340023302366

namespace A000124

/-- `abs(xor(∑[n], -1))` -/
def P15281597340023302366.Spec : Prop :=
  ∀ n, P15281597340023302366.a n = A000124 n

end A000124

/-! ## A000124.P6090874209466663506

`-xor(∑[n], -1)`
-/

namespace A000124.P6090874209466663506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A000124.P6090874209466663506

namespace A000124

/-- `-xor(∑[n], -1)` -/
def P6090874209466663506.Spec : Prop :=
  ∀ n, P6090874209466663506.a n = A000124 n

end A000124

/-! ## A000124.P10701091741274513101

`ceil(1/acot(∑[n]))`
-/

namespace A000124.P10701091741274513101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A000124.P10701091741274513101

namespace A000124

/-- `ceil(1/acot(∑[n]))` -/
def P10701091741274513101.Spec : Prop :=
  ∀ n, P10701091741274513101.a n = A000124 n

end A000124

/-! ## A000124.P4752477355673088753

`∑[round(1/acot(n))]`
-/

namespace A000124.P4752477355673088753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P4752477355673088753

namespace A000124

/-- `∑[round(1/acot(n))]` -/
def P4752477355673088753.Spec : Prop :=
  ∀ n, P4752477355673088753.a n = A000124 n

end A000124

/-! ## A000124.P2647269752943483872

`∑[floor(acot(n)+n)]`
-/

namespace A000124.P2647269752943483872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P2647269752943483872

namespace A000124

/-- `∑[floor(acot(n)+n)]` -/
def P2647269752943483872.Spec : Prop :=
  ∀ n, P2647269752943483872.a n = A000124 n

end A000124

/-! ## A000124.P4043047328820402625

`∑[n^floor(atan(n))]`
-/

namespace A000124.P4043047328820402625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P4043047328820402625

namespace A000124

/-- `∑[n^floor(atan(n))]` -/
def P4043047328820402625.Spec : Prop :=
  ∀ n, P4043047328820402625.a n = (A000124 n : ℚ)

end A000124

/-! ## A000124.P8959219274638008909

`∑[C(n, floor(atan(n)))]`
-/

namespace A000124.P8959219274638008909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P8959219274638008909

namespace A000124

/-- `∑[C(n, floor(atan(n)))]` -/
def P8959219274638008909.Spec : Prop :=
  ∀ n, (P8959219274638008909.a n : ℤ) = A000124 n

end A000124

/-! ## A000124.P6917773807305806265

`∑[gcd(n, floor(acot(n)))]`
-/

namespace A000124.P6917773807305806265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P6917773807305806265

namespace A000124

/-- `∑[gcd(n, floor(acot(n)))]` -/
def P6917773807305806265.Spec : Prop :=
  ∀ n, (P6917773807305806265.a n : ℤ) = A000124 n

end A000124

/-! ## A000124.P1279956656453673280

`∑[or(n, floor(acot(n)))]`
-/

namespace A000124.P1279956656453673280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P1279956656453673280

namespace A000124

/-- `∑[or(n, floor(acot(n)))]` -/
def P1279956656453673280.Spec : Prop :=
  ∀ n, P1279956656453673280.a n = A000124 n

end A000124

/-! ## A000124.P16649876729845628860

`∑[xor(n, floor(acot(n)))]`
-/

namespace A000124.P16649876729845628860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P16649876729845628860

namespace A000124

/-- `∑[xor(n, floor(acot(n)))]` -/
def P16649876729845628860.Spec : Prop :=
  ∀ n, P16649876729845628860.a n = A000124 n

end A000124

/-! ## A000124.P6637764165970926589

`round(cosh(log(Δ[atan(n)])))`
-/

namespace A000124.P6637764165970926589
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (f1 (n + 1) - f1 n)))

end

end A000124.P6637764165970926589

namespace A000124

/-- `round(cosh(log(Δ[atan(n)])))` -/
def P6637764165970926589.Spec : Prop :=
  ∀ n, P6637764165970926589.a n = A000124 n

end A000124

/-! ## A000124.P7699499886611226395

`ceil(cot(cos(atan(∑[n]))))`
-/

namespace A000124.P7699499886611226395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.cos (Real.arctan ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))⌉

end

end A000124.P7699499886611226395

namespace A000124

/-- `ceil(cot(cos(atan(∑[n]))))` -/
def P7699499886611226395.Spec : Prop :=
  ∀ n, P7699499886611226395.a n = A000124 n

end A000124

/-! ## A000124.P17908902566677952835

`∑[round(cot(cos(atan(n))))]`
-/

namespace A000124.P17908902566677952835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.cos (Real.arctan (n : ℝ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P17908902566677952835

namespace A000124

/-- `∑[round(cot(cos(atan(n))))]` -/
def P17908902566677952835.Spec : Prop :=
  ∀ n, P17908902566677952835.a n = A000124 n

end A000124

/-! ## A000124.P7321421964742996324

`ceil(cot(sin(acot(∑[n]))))`
-/

namespace A000124.P7321421964742996324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.sin (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))⌉

end

end A000124.P7321421964742996324

namespace A000124

/-- `ceil(cot(sin(acot(∑[n]))))` -/
def P7321421964742996324.Spec : Prop :=
  ∀ n, P7321421964742996324.a n = A000124 n

end A000124

/-! ## A000124.P12111452624442575662

`∑[round(cot(sin(acot(n))))]`
-/

namespace A000124.P12111452624442575662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.sin (SequenceMachineLib.acot (n : ℝ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000124.P12111452624442575662

namespace A000124

/-- `∑[round(cot(sin(acot(n))))]` -/
def P12111452624442575662.Spec : Prop :=
  ∀ n, P12111452624442575662.a n = A000124 n

end A000124

/-!
# A000125: Cake numbers: maximal number of pieces resulting from n planar cuts through a cube (or cake): C(n+1,3) + n + 1.

The programs for A000125, the canonical program `A000125.P4758784619983408329` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000125 has offset 0).

The definition of A000125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000125.P4758784619983408329

`(n²+5)*n/6+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000125

/-- `(n²+5)*n/6+1` -/
def P4758784619983408329.Spec : Prop :=
  ∀ n, P4758784619983408329.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P13270110918493807800

`∑[C(n, 2)+1]`
-/

namespace A000125.P13270110918493807800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P13270110918493807800

namespace A000125

/-- `∑[C(n, 2)+1]` -/
def P13270110918493807800.Spec : Prop :=
  ∀ n, (P13270110918493807800.a n : ℤ) = A000125 n

end A000125

/-! ## A000125.P13500882191444095975

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=0`
-/

namespace A000125.P13500882191444095975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P13500882191444095975

namespace A000125

/-- `∑[∑[a(n-1)+1]]` -/
def P13500882191444095975.Spec : Prop :=
  ∀ n, (P13500882191444095975.a n : ℤ) = A000125 n

end A000125

/-! ## A000125.P2977504907009166925

`∑[lcm(n, n-1)+2]/2`
-/

namespace A000125.P2977504907009166925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000125.P2977504907009166925

namespace A000125

/-- `∑[lcm(n, n-1)+2]/2` -/
def P2977504907009166925.Spec : Prop :=
  ∀ n, P2977504907009166925.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P15998526031801981161

`∑[n-(1-a(n-1))]` with `a(0)=1`
-/

namespace A000125.P15998526031801981161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P15998526031801981161

namespace A000125

/-- `∑[n-(1-a(n-1))]` -/
def P15998526031801981161.Spec : Prop :=
  ∀ n, P15998526031801981161.a n = A000125 n

end A000125

/-! ## A000125.P4180276474166791533

`∑[∑[lcm(2, 2*(n-1))]]/2`
-/

namespace A000125.P4180276474166791533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A000125.P4180276474166791533

namespace A000125

/-- `∑[∑[lcm(2, 2*(n-1))]]/2` -/
def P4180276474166791533.Spec : Prop :=
  ∀ n, P4180276474166791533.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P15771825187084951603

`gcd(n, n+1)*∑[∑[n-1]+2]`
-/

namespace A000125.P15771825187084951603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000125.P15771825187084951603

namespace A000125

/-- `gcd(n, n+1)*∑[∑[n-1]+2]` -/
def P15771825187084951603.Spec : Prop :=
  ∀ n, P15771825187084951603.a n = A000125 n

end A000125

/-! ## A000125.P2097693284461550739

`∑[∑[gcd(n-1, (1-n)²²²²)]]`
-/

namespace A000125.P2097693284461550739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (((((1 - (n : ℤ)) ^ 2) ^ 2) ^ 2) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P2097693284461550739

namespace A000125

/-- `∑[∑[gcd(n-1, (1-n)²²²²)]]` -/
def P2097693284461550739.Spec : Prop :=
  ∀ n, (P2097693284461550739.a n : ℤ) = A000125 n

end A000125

/-! ## A000125.P14964905487876183471

`∑[∑[n-1]+2]/gcd(n+2, n+3)`
-/

namespace A000125.P14964905487876183471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.gcd (n + 2) (n + 3) : ℚ)

end

end A000125.P14964905487876183471

namespace A000125

/-- `∑[∑[n-1]+2]/gcd(n+2, n+3)` -/
def P14964905487876183471.Spec : Prop :=
  ∀ n, P14964905487876183471.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P11330294242641360746

`∑[A152947(n+1)]`
-/

namespace A000125.P11330294242641360746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P11330294242641360746

namespace A000125

/-- `∑[A152947(n+1)]` -/
def P11330294242641360746.Spec : Prop :=
  ∀ n, P11330294242641360746.a n = A000125 n

end A000125

/-! ## A000125.P14302159818655247480

`∑[A161680(n)+1]`
-/

namespace A000125.P14302159818655247480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P14302159818655247480

namespace A000125

/-- `∑[A161680(n)+1]` -/
def P14302159818655247480.Spec : Prop :=
  ∀ n, P14302159818655247480.a n = A000125 n

end A000125

/-! ## A000125.P6459238347693801770

`∑[2-A080956(n)]`
-/

namespace A000125.P6459238347693801770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P6459238347693801770

namespace A000125

/-- `∑[2-A080956(n)]` -/
def P6459238347693801770.Spec : Prop :=
  ∀ n, P6459238347693801770.a n = A000125 n

end A000125

/-! ## A000125.P2200216709928017821

`∑[A082450(n)/5]`
-/

namespace A000125.P2200216709928017821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082450 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P2200216709928017821

namespace A000125

/-- `∑[A082450(n)/5]` -/
def P2200216709928017821.Spec : Prop :=
  ∀ n, P2200216709928017821.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P1276024641875674426

`∑[A000124(n)-n]`
-/

namespace A000125.P1276024641875674426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000125.P1276024641875674426

namespace A000125

/-- `∑[A000124(n)-n]` -/
def P1276024641875674426.Spec : Prop :=
  ∀ n, P1276024641875674426.a n = A000125 n

end A000125

/-! ## A000125.P2480494313314743920

`(A006001(n)+2)/3`
-/

namespace A000125.P2480494313314743920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006001 n + 2 : ℚ) / 3

end

end A000125.P2480494313314743920

namespace A000125

/-- `(A006001(n)+2)/3` -/
def P2480494313314743920.Spec : Prop :=
  ∀ n, P2480494313314743920.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P11165474715442278812

`A361099(n+1)/(n+1)`
-/

namespace A000125.P11165474715442278812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000125.P11165474715442278812

namespace A000125

/-- `A361099(n+1)/(n+1)` -/
def P11165474715442278812.Spec : Prop :=
  ∀ n, P11165474715442278812.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P211967157695840397

`(A116731(n+1)+n+1)/2`
-/

namespace A000125.P211967157695840397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116731 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A000125.P211967157695840397

namespace A000125

/-- `(A116731(n+1)+n+1)/2` -/
def P211967157695840397.Spec : Prop :=
  ∀ n, P211967157695840397.a n = (A000125 n : ℚ)

end A000125

/-! ## A000125.P5445243552027012046

`(n+1)/3*A152949(n+1)`
-/

namespace A000125.P5445243552027012046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A152949 (n + 1) : ℚ)

end

end A000125.P5445243552027012046

namespace A000125

/-- `(n+1)/3*A152949(n+1)` -/
def P5445243552027012046.Spec : Prop :=
  ∀ n, P5445243552027012046.a n = (A000125 n : ℚ)

end A000125

/-!
# A000126: A nonlinear binomial sum.

The programs for A000126, the canonical program `A000126.P5206910093701495392` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000126 has offset 1).

The definition of A000126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000126.P5206910093701495392

`a(n-1)+a(n-2)+n-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000126

/-- `a(n-1)+a(n-2)+n-1` -/
def P5206910093701495392.Spec : Prop :=
  ∀ n, P5206910093701495392.a n = A000126 (n + 1)

theorem P5206910093701495392.correct : P5206910093701495392.Spec := by
  intro n
  simp only [A000126, Nat.add_sub_cancel]

end A000126

/-! ## A000126.P13096925310220531807

`A001924(n)+1`
-/

namespace A000126.P13096925310220531807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + 1

end

end A000126.P13096925310220531807

namespace A000126

/-- `A001924(n)+1` -/
def P13096925310220531807.Spec : Prop :=
  ∀ n, P13096925310220531807.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P4453212446347306261

`A065220(n+4)+2`
-/

namespace A000126.P4453212446347306261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 4) + 2

end

end A000126.P4453212446347306261

namespace A000126

/-- `A065220(n+4)+2` -/
def P4453212446347306261.Spec : Prop :=
  ∀ n, P4453212446347306261.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P16563597494936810725

`∑[ceil(ϕ*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A000126.P16563597494936810725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000126.P16563597494936810725

namespace A000126

/-- `∑[ceil(ϕ*a(n-1))]` -/
def P16563597494936810725.Spec : Prop :=
  ∀ n, P16563597494936810725.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P11417895730872325918

`∑[floor(ϕ*a(n-1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A000126.P11417895730872325918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000126.P11417895730872325918

namespace A000126

/-- `∑[floor(ϕ*a(n-1))+1]` -/
def P11417895730872325918.Spec : Prop :=
  ∀ n, P11417895730872325918.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P13686898654695666765

`floor(ϕ*(a(n-1)+n)-n)` with `a(0)=1`
-/

namespace A000126.P13686898654695666765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + (n : ℤ) : ℝ) - (n : ℝ)⌋

end

end A000126.P13686898654695666765

namespace A000126

/-- `floor(ϕ*(a(n-1)+n)-n)` -/
def P13686898654695666765.Spec : Prop :=
  ∀ n, P13686898654695666765.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P5649514376726647362

`∑[a(n-1)+a(n-2)]-n` with `a(0)=1, a(1)=2`
-/

namespace A000126.P5649514376726647362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A000126.P5649514376726647362

namespace A000126

/-- `∑[a(n-1)+a(n-2)]-n` -/
def P5649514376726647362.Spec : Prop :=
  ∀ n, P5649514376726647362.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P6003211643655589165

`n-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A000126.P6003211643655589165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A000126.P6003211643655589165

namespace A000126

/-- `n-(1-a(n-1)-a(n-2))` -/
def P6003211643655589165.Spec : Prop :=
  ∀ n, P6003211643655589165.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P2414718906402367349

`A001911(n+1)-n`
-/

namespace A000126.P2414718906402367349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) - (n : ℤ)

end

end A000126.P2414718906402367349

namespace A000126

/-- `A001911(n+1)-n` -/
def P2414718906402367349.Spec : Prop :=
  ∀ n, P2414718906402367349.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P9572005085877759821

`A020701(n)-(n+2)`
-/

namespace A000126.P9572005085877759821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - (n + 2 : ℤ)

end

end A000126.P9572005085877759821

namespace A000126

/-- `A020701(n)-(n+2)` -/
def P9572005085877759821.Spec : Prop :=
  ∀ n, P9572005085877759821.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P4291280056504761760

`A020706(n)-(n+3)`
-/

namespace A000126.P4291280056504761760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - (n + 3 : ℤ)

end

end A000126.P4291280056504761760

namespace A000126

/-- `A020706(n)-(n+3)` -/
def P4291280056504761760.Spec : Prop :=
  ∀ n, P4291280056504761760.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P5646163640780177426

`A048584(n)-(n+4)`
-/

namespace A000126.P5646163640780177426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - (n + 4 : ℤ)

end

end A000126.P5646163640780177426

namespace A000126

/-- `A048584(n)-(n+4)` -/
def P5646163640780177426.Spec : Prop :=
  ∀ n, P5646163640780177426.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P14283635442524562022

`A355019(2*n)-n`
-/

namespace A000126.P14283635442524562022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 (2 * n) - (n : ℤ)

end

end A000126.P14283635442524562022

namespace A000126

/-- `A355019(2*n)-n` -/
def P14283635442524562022.Spec : Prop :=
  ∀ n, P14283635442524562022.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P12823877121140444221

`∑[∑[A000045(n)]]+1`
-/

namespace A000126.P12823877121140444221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000126.P12823877121140444221

namespace A000126

/-- `∑[∑[A000045(n)]]+1` -/
def P12823877121140444221.Spec : Prop :=
  ∀ n, P12823877121140444221.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P9494894371936588126

`A226538(Δ[n²])-n`
-/

namespace A000126.P9494894371936588126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A000126.P9494894371936588126

namespace A000126

/-- `A226538(Δ[n²])-n` -/
def P9494894371936588126.Spec : Prop :=
  ∀ n, P9494894371936588126.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P7014955785623640311

`∑[record[A212804(n)]]-n`
-/

namespace A000126.P7014955785623640311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A000126.P7014955785623640311

namespace A000126

/-- `∑[record[A212804(n)]]-n` -/
def P7014955785623640311.Spec : Prop :=
  ∀ n, P7014955785623640311.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P4704598608170932914

`∑[A000071(n+2)]+1`
-/

namespace A000126.P4704598608170932914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000126.P4704598608170932914

namespace A000126

/-- `∑[A000071(n+2)]+1` -/
def P4704598608170932914.Spec : Prop :=
  ∀ n, P4704598608170932914.a n = A000126 (n + 1)

end A000126

/-! ## A000126.P17233841306838454540

`∑[A339572(2*n)]+1`
-/

namespace A000126.P17233841306838454540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000126.P17233841306838454540

namespace A000126

/-- `∑[A339572(2*n)]+1` -/
def P17233841306838454540.Spec : Prop :=
  ∀ n, P17233841306838454540.a n = A000126 (n + 1)

end A000126

/-!
# A000127: Maximal number of regions obtained by joining n points around a circle by straight lines. Also number of regions in 4-space formed by n-1 hyperplanes.

The programs for A000127, the canonical program `A000127.P3574234740416859874` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000127 has offset 1).

The definition of A000127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000127.P14091292176206898307

`C(n+1, 4)+C(n+1, 2)+1`
-/

namespace A000127.P14091292176206898307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 + Nat.choose (n + 1) 2 + 1

end

end A000127.P14091292176206898307

namespace A000127

/-- `C(n+1, 4)+C(n+1, 2)+1` -/
def P14091292176206898307.Spec : Prop :=
  ∀ n, (P14091292176206898307.a n : ℤ) = A000127 (n + 1)

end A000127

/-! ## A000127.P6928796084118263952

`((n+1)^4-6*(n+1)^3+23*(n+1)²-18*(n+1)+24)/24`
-/

namespace A000127.P6928796084118263952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 4 : ℤ) - (6 * (n + 1) ^ 3 : ℤ) + (23 * (n + 1) ^ 2 : ℤ) - (18 * (n + 1) : ℤ) + 24 : ℚ) / 24

end

end A000127.P6928796084118263952

namespace A000127

/-- `((n+1)^4-6*(n+1)^3+23*(n+1)²-18*(n+1)+24)/24` -/
def P6928796084118263952.Spec : Prop :=
  ∀ n, P6928796084118263952.a n = (A000127 (n + 1) : ℚ)

theorem P6928796084118263952.correct : P6928796084118263952.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A000127, Nat.add_sub_cancel, A000127.P6928796084118263952.a, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A000127, Nat.add_sub_cancel, A000127.P6928796084118263952.a, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000127

/-! ## A000127.P3574234740416859874

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000127

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3574234740416859874.Spec : Prop :=
  ∀ n, P3574234740416859874.a n = A000127 (n + 1)

theorem P3574234740416859874.correct : P3574234740416859874.Spec := by
  intro n
  simp only [A000127, Nat.add_sub_cancel]

end A000127

/-! ## A000127.P9383440630134627204

`A055795(n+1)+1`
-/

namespace A000127.P9383440630134627204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + 1

end

end A000127.P9383440630134627204

namespace A000127

/-- `A055795(n+1)+1` -/
def P9383440630134627204.Spec : Prop :=
  ∀ n, P9383440630134627204.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P7732453914078436929

`2^n-A002664(n)`
-/

namespace A000127.P7732453914078436929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A002664 n

end

end A000127.P7732453914078436929

namespace A000127

/-- `2^n-A002664(n)` -/
def P7732453914078436929.Spec : Prop :=
  ∀ n, P7732453914078436929.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P9531880640763396587

`∑[C(n, 3)+n]+1`
-/

namespace A000127.P9531880640763396587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000127.P9531880640763396587

namespace A000127

/-- `∑[C(n, 3)+n]+1` -/
def P9531880640763396587.Spec : Prop :=
  ∀ n, (P9531880640763396587.a n : ℤ) = A000127 (n + 1)

end A000127

/-! ## A000127.P13208994476823262792

`a(n-1)+C(n, 3)+n` with `a(0)=1`
-/

namespace A000127.P13208994476823262792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose n 3 + n)

end

end A000127.P13208994476823262792

namespace A000127

/-- `a(n-1)+C(n, 3)+n` -/
def P13208994476823262792.Spec : Prop :=
  ∀ n, (P13208994476823262792.a n : ℤ) = A000127 (n + 1)

end A000127

/-! ## A000127.P3800205435648854388

`∑[∑[a(n-1)-2+n]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A000127.P3800205435648854388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 1) - 2 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000127.P3800205435648854388

namespace A000127

/-- `∑[∑[a(n-1)-2+n]]` -/
def P3800205435648854388.Spec : Prop :=
  ∀ n, P3800205435648854388.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P5395359200666996585

`∑[∑[a(n-1)-(2-n)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A000127.P5395359200666996585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 1) - (2 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000127.P5395359200666996585

namespace A000127

/-- `∑[∑[a(n-1)-(2-n)]]` -/
def P5395359200666996585.Spec : Prop :=
  ∀ n, P5395359200666996585.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P8621702554333739892

`Δ[A006261(n)]`
-/

namespace A000127.P8621702554333739892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P8621702554333739892

namespace A000127

/-- `Δ[A006261(n)]` -/
def P8621702554333739892.Spec : Prop :=
  ∀ n, P8621702554333739892.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P3835518797917641861

`∑[A003600(n)-n²]`
-/

namespace A000127.P3835518797917641861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000127.P3835518797917641861

namespace A000127

/-- `∑[A003600(n)-n²]` -/
def P3835518797917641861.Spec : Prop :=
  ∀ n, P3835518797917641861.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P7252093854400435268

`∑[∑[A238531(n)-n]]`
-/

namespace A000127.P7252093854400435268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000127.P7252093854400435268

namespace A000127

/-- `∑[∑[A238531(n)-n]]` -/
def P7252093854400435268.Spec : Prop :=
  ∀ n, P7252093854400435268.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P13359216967333924081

`Δ[A057703(n)]`
-/

namespace A000127.P13359216967333924081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P13359216967333924081

namespace A000127

/-- `Δ[A057703(n)]` -/
def P13359216967333924081.Spec : Prop :=
  ∀ n, P13359216967333924081.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P14885678530444727148

`Δ[Δ[A008859(n)]]`
-/

namespace A000127.P14885678530444727148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P14885678530444727148

namespace A000127

/-- `Δ[Δ[A008859(n)]]` -/
def P14885678530444727148.Spec : Prop :=
  ∀ n, P14885678530444727148.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P13437817255937298642

`Δ[A059174(n+1)/2]`
-/

namespace A000127.P13437817255937298642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059174 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P13437817255937298642

namespace A000127

/-- `Δ[A059174(n+1)/2]` -/
def P13437817255937298642.Spec : Prop :=
  ∀ n, P13437817255937298642.a n = (A000127 (n + 1) : ℚ)

end A000127

/-! ## A000127.P11404897941105009793

`∑[∑[A022856(n+2)]-n]`
-/

namespace A000127.P11404897941105009793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000127.P11404897941105009793

namespace A000127

/-- `∑[∑[A022856(n+2)]-n]` -/
def P11404897941105009793.Spec : Prop :=
  ∀ n, P11404897941105009793.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P14185068618705091499

`Δ[A188556(n+1)-A188555(n+1)]`
-/

namespace A000127.P14185068618705091499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) - A188555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P14185068618705091499

namespace A000127

/-- `Δ[A188556(n+1)-A188555(n+1)]` -/
def P14185068618705091499.Spec : Prop :=
  ∀ n, P14185068618705091499.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P414206142484358310

`Δ[Δ[A115567(n)]]`
-/

namespace A000127.P414206142484358310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P414206142484358310

namespace A000127

/-- `Δ[Δ[A115567(n)]]` -/
def P414206142484358310.Spec : Prop :=
  ∀ n, P414206142484358310.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P6911140293830668162

`Δ[Δ[A362194(n)]]`
-/

namespace A000127.P6911140293830668162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P6911140293830668162

namespace A000127

/-- `Δ[Δ[A362194(n)]]` -/
def P6911140293830668162.Spec : Prop :=
  ∀ n, P6911140293830668162.a n = A000127 (n + 1)

end A000127

/-! ## A000127.P11409116184242844698

`Δ[A000079(n+1)-A084637(n+1)]`
-/

namespace A000127.P11409116184242844698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A084637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000127.P11409116184242844698

namespace A000127

/-- `Δ[A000079(n+1)-A084637(n+1)]` -/
def P11409116184242844698.Spec : Prop :=
  ∀ n, P11409116184242844698.a n = A000127 (n + 1)

end A000127

/-!
# A000128: A nonlinear binomial sum.

The programs for A000128, the canonical program `A000128.P2288766107798058255` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000128 has offset 1).

The definition of A000128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000128.P2288766107798058255

`2*a(n-1)-a(n-3)+n-2` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000128

/-- `2*a(n-1)-a(n-3)+n-2` -/
def P2288766107798058255.Spec : Prop :=
  ∀ n, P2288766107798058255.a n = A000128 (n + 1)

theorem P2288766107798058255.correct : P2288766107798058255.Spec := by
  intro n
  simp only [A000128, Nat.add_sub_cancel]

end A000128

/-! ## A000128.P4438746544765280624

`∑[∑[a(n-1)+a(n-2)]-n]` with `a(0)=1, a(1)=1`
-/

namespace A000128.P4438746544765280624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P4438746544765280624

namespace A000128

/-- `∑[∑[a(n-1)+a(n-2)]-n]` -/
def P4438746544765280624.Spec : Prop :=
  ∀ n, P4438746544765280624.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P14978756009724369345

`∑[a(n-1)-(2-a(n-2)-n)]` with `a(0)=1, a(1)=1`
-/

namespace A000128.P14978756009724369345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P14978756009724369345

namespace A000128

/-- `∑[a(n-1)-(2-a(n-2)-n)]` -/
def P14978756009724369345.Spec : Prop :=
  ∀ n, P14978756009724369345.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P3077083984968792220

`∑[Δ[A001924(n)]-n]`
-/

namespace A000128.P3077083984968792220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P3077083984968792220

namespace A000128

/-- `∑[Δ[A001924(n)]-n]` -/
def P3077083984968792220.Spec : Prop :=
  ∀ n, P3077083984968792220.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P14798126070249425192

`∑[A065220(n+3)+2]`
-/

namespace A000128.P14798126070249425192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P14798126070249425192

namespace A000128

/-- `∑[A065220(n+3)+2]` -/
def P14798126070249425192.Spec : Prop :=
  ∀ n, P14798126070249425192.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P2205897216368265931

`A001891(n)+∑[1-n]`
-/

namespace A000128.P2205897216368265931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P2205897216368265931

namespace A000128

/-- `A001891(n)+∑[1-n]` -/
def P2205897216368265931.Spec : Prop :=
  ∀ n, P2205897216368265931.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P4046675652391543018

`∑[A001911(n)+1-n]`
-/

namespace A000128.P4046675652391543018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P4046675652391543018

namespace A000128

/-- `∑[A001911(n)+1-n]` -/
def P4046675652391543018.Spec : Prop :=
  ∀ n, P4046675652391543018.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P11132734128365821179

`A001924(n+1)-∑[n]`
-/

namespace A000128.P11132734128365821179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000128.P11132734128365821179

namespace A000128

/-- `A001924(n+1)-∑[n]` -/
def P11132734128365821179.Spec : Prop :=
  ∀ n, P11132734128365821179.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P16095158560958662328

`∑[A020695(n)-(n+1)]`
-/

namespace A000128.P16095158560958662328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P16095158560958662328

namespace A000128

/-- `∑[A020695(n)-(n+1)]` -/
def P16095158560958662328.Spec : Prop :=
  ∀ n, P16095158560958662328.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P5687265691599953453

`∑[A048577(n)-(n+2)]`
-/

namespace A000128.P5687265691599953453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P5687265691599953453

namespace A000128

/-- `∑[A048577(n)-(n+2)]` -/
def P5687265691599953453.Spec : Prop :=
  ∀ n, P5687265691599953453.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P7616250632168468496

`∑[A000071(n+3)-n]`
-/

namespace A000128.P7616250632168468496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P7616250632168468496

namespace A000128

/-- `∑[A000071(n+3)-n]` -/
def P7616250632168468496.Spec : Prop :=
  ∀ n, P7616250632168468496.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P12033153075887500171

`∑[A018910(n)-(n+3)]`
-/

namespace A000128.P12033153075887500171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P12033153075887500171

namespace A000128

/-- `∑[A018910(n)-(n+3)]` -/
def P12033153075887500171.Spec : Prop :=
  ∀ n, P12033153075887500171.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P6366117037555989915

`∑[A226538(2*n)-n]`
-/

namespace A000128.P6366117037555989915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P6366117037555989915

namespace A000128

/-- `∑[A226538(2*n)-n]` -/
def P6366117037555989915.Spec : Prop :=
  ∀ n, P6366117037555989915.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P14189583614542295605

`A000126(n)+a(n-1)` with `a(0)=1`
-/

namespace A000128.P14189583614542295605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000126 n + a (n - 1)

end

end A000128.P14189583614542295605

namespace A000128

/-- `A000126(n)+a(n-1)` -/
def P14189583614542295605.Spec : Prop :=
  ∀ n, P14189583614542295605.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P5460125211180173858

`∑[∑[A000071(n+1)]+1]`
-/

namespace A000128.P5460125211180173858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P5460125211180173858

namespace A000128

/-- `∑[∑[A000071(n+1)]+1]` -/
def P5460125211180173858.Spec : Prop :=
  ∀ n, P5460125211180173858.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P17282461652245756501

`∑[∑[A226649(2*n)]+1]`
-/

namespace A000128.P17282461652245756501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P17282461652245756501

namespace A000128

/-- `∑[∑[A226649(2*n)]+1]` -/
def P17282461652245756501.Spec : Prop :=
  ∀ n, P17282461652245756501.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P8758699631855719951

`∑[∑[A000045(n+1)]-n]`
-/

namespace A000128.P8758699631855719951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P8758699631855719951

namespace A000128

/-- `∑[∑[A000045(n+1)]-n]` -/
def P8758699631855719951.Spec : Prop :=
  ∀ n, P8758699631855719951.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P2284050074060319557

`∑[∑[A324969(n+2)]-n]`
-/

namespace A000128.P2284050074060319557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P2284050074060319557

namespace A000128

/-- `∑[∑[A324969(n+2)]-n]` -/
def P2284050074060319557.Spec : Prop :=
  ∀ n, P2284050074060319557.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P3861320078574086023

`∑[∑[A079977(2*n)]-n]`
-/

namespace A000128.P3861320078574086023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P3861320078574086023

namespace A000128

/-- `∑[∑[A079977(2*n)]-n]` -/
def P3861320078574086023.Spec : Prop :=
  ∀ n, P3861320078574086023.a n = A000128 (n + 1)

end A000128

/-! ## A000128.P452058029968009881

`∑[A163227(2*(n+1))-n]`
-/

namespace A000128.P452058029968009881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000128.P452058029968009881

namespace A000128

/-- `∑[A163227(2*(n+1))-n]` -/
def P452058029968009881.Spec : Prop :=
  ∀ n, P452058029968009881.a n = A000128 (n + 1)

end A000128

/-!
# A000129: Pell numbers: a(0) = 0, a(1) = 1; for n > 1, a(n) = 2*a(n-1) + a(n-2).

The programs for A000129, the canonical program `A000129.P3563729298025900801` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000129 has offset 0).

The definition of A000129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A000129.P3563729298025900801`, by `A000129.P3563729298025900801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000129.P3563729298025900801

`2*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000129

/-- `2*a(n-1)+a(n-2)` -/
def P3563729298025900801.Spec : Prop :=
  ∀ n, (P3563729298025900801.a n : ℤ) = A000129 n

theorem P3563729298025900801.correct : P3563729298025900801.Spec := by
  intro n
  simp only [A000129]

end A000129

/-! ## A000129.P9135819955237678261

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A000129.P9135819955237678261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A000129.P9135819955237678261

namespace A000129

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P9135819955237678261.Spec : Prop :=
  ∀ n, P9135819955237678261.a n = A000129 n

end A000129

/-! ## A000129.P13372172159889014673

`A001333(n)-a(n-1)` with `a(0)=0`
-/

namespace A000129.P13372172159889014673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001333 n - a (n - 1)

end

end A000129.P13372172159889014673

namespace A000129

/-- `A001333(n)-a(n-1)` -/
def P13372172159889014673.Spec : Prop :=
  ∀ n, P13372172159889014673.a n = A000129 n

end A000129

/-! ## A000129.P5223541004475152793

`ceil(sqrt(A001108(n)/2))`
-/

namespace A000129.P5223541004475152793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A001108 n : ℚ) / 2 : ℝ)⌉

end

end A000129.P5223541004475152793

namespace A000129

/-- `ceil(sqrt(A001108(n)/2))` -/
def P5223541004475152793.Spec : Prop :=
  ∀ n, P5223541004475152793.a n = A000129 n

end A000129

/-! ## A000129.P17410370907368759870

`A001109(n)/A001333(n)`
-/

namespace A000129.P17410370907368759870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001109 n : ℚ) / (A001333 n : ℚ)

end

end A000129.P17410370907368759870

namespace A000129

/-- `A001109(n)/A001333(n)` -/
def P17410370907368759870.Spec : Prop :=
  ∀ n, P17410370907368759870.a n = (A000129 n : ℚ)

end A000129

/-! ## A000129.P3811246805647995389

`∑[a(n-2)+lcm(2, a(n-1))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A000129.P3811246805647995389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000129.P3811246805647995389

namespace A000129

/-- `∑[a(n-2)+lcm(2, a(n-1))]` -/
def P3811246805647995389.Spec : Prop :=
  ∀ n, (P3811246805647995389.a n : ℤ) = A000129 n

end A000129

/-! ## A000129.P10140121793237891435

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000129.P10140121793237891435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A000129.P10140121793237891435

namespace A000129

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P10140121793237891435.Spec : Prop :=
  ∀ n, (P10140121793237891435.a n : ℤ) = A000129 n

theorem P10140121793237891435.correct : P10140121793237891435.Spec := by
  intro n
  simp only [A000129, Nat.add_sub_cancel, A000129.P10140121793237891435.a, A000129.P3563729298025900801.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000129

/-! ## A000129.P6542207441399444419

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=0, a(1)=1`
-/

namespace A000129.P6542207441399444419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A000129.P6542207441399444419

namespace A000129

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P6542207441399444419.Spec : Prop :=
  ∀ n, P6542207441399444419.a n = (A000129 n : ℚ)

end A000129

/-! ## A000129.P2349735111669915315

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A000129.P2349735111669915315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A000129.P2349735111669915315

namespace A000129

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P2349735111669915315.Spec : Prop :=
  ∀ n, P2349735111669915315.a n = A000129 n

end A000129

/-! ## A000129.P258084761054885670

`A174191(n)-1`
-/

namespace A000129.P258084761054885670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n - 1

end

end A000129.P258084761054885670

namespace A000129

/-- `A174191(n)-1` -/
def P258084761054885670.Spec : Prop :=
  ∀ n, P258084761054885670.a n = A000129 n

end A000129

/-! ## A000129.P8142086388162842946

`A002965(2*n)`
-/

namespace A000129.P8142086388162842946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n)

end

end A000129.P8142086388162842946

namespace A000129

/-- `A002965(2*n)` -/
def P8142086388162842946.Spec : Prop :=
  ∀ n, P8142086388162842946.a n = A000129 n

end A000129

/-! ## A000129.P10365952465715036665

`A135153(2*n)`
-/

namespace A000129.P10365952465715036665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n)

end

end A000129.P10365952465715036665

namespace A000129

/-- `A135153(2*n)` -/
def P10365952465715036665.Spec : Prop :=
  ∀ n, P10365952465715036665.a n = A000129 n

end A000129

/-! ## A000129.P6062247408959327358

`A249576(3*n)`
-/

namespace A000129.P6062247408959327358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n)

end

end A000129.P6062247408959327358

namespace A000129

/-- `A249576(3*n)` -/
def P6062247408959327358.Spec : Prop :=
  ∀ n, P6062247408959327358.a n = A000129 n

end A000129

/-! ## A000129.P8402113517901574647

`A116560(6*n)`
-/

namespace A000129.P8402113517901574647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (6 * n)

end

end A000129.P8402113517901574647

namespace A000129

/-- `A116560(6*n)` -/
def P8402113517901574647.Spec : Prop :=
  ∀ n, P8402113517901574647.a n = A000129 n

end A000129

/-! ## A000129.P7405834357398971513

`xor(1, A111954(n))`
-/

namespace A000129.P7405834357398971513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n)

end

end A000129.P7405834357398971513

namespace A000129

/-- `xor(1, A111954(n))` -/
def P7405834357398971513.Spec : Prop :=
  ∀ n, P7405834357398971513.a n = A000129 n

end A000129

/-! ## A000129.P9858582222486479191

`A209971(n)-n`
-/

namespace A000129.P9858582222486479191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n - (n : ℤ)

end

end A000129.P9858582222486479191

namespace A000129

/-- `A209971(n)-n` -/
def P9858582222486479191.Spec : Prop :=
  ∀ n, P9858582222486479191.a n = A000129 n

end A000129

/-! ## A000129.P15407490142050355961

`∑{d}[n, A133726(#)]`
-/

namespace A000129.P15407490142050355961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133726 d

end

end A000129.P15407490142050355961

namespace A000129

/-- `∑{d}[n, A133726(#)]` -/
def P15407490142050355961.Spec : Prop :=
  ∀ n, P15407490142050355961.a n = A000129 n

end A000129

/-! ## A000129.P4463680439144774564

`abs(A176981(n+1))`
-/

namespace A000129.P4463680439144774564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 1)|

end

end A000129.P4463680439144774564

namespace A000129

/-- `abs(A176981(n+1))` -/
def P4463680439144774564.Spec : Prop :=
  ∀ n, P4463680439144774564.a n = A000129 n

end A000129

/-! ## A000129.P16732064781049662411

`abs(A215936(n+2))`
-/

namespace A000129.P16732064781049662411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215936 (n + 2)|

end

end A000129.P16732064781049662411

namespace A000129

/-- `abs(A215936(n+2))` -/
def P16732064781049662411.Spec : Prop :=
  ∀ n, P16732064781049662411.a n = A000129 n

end A000129

/-!
# A000130: One-half the number of permutations of length n with exactly 1 rising or falling succession.

The programs for A000130, there is no canonical definition to state claims against.
-/

/-! ## A000130.P3454852172685471719

`A086852(n)/2`
-/

namespace A000130.P3454852172685471719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086852 n : ℚ) / 2

end

end A000130.P3454852172685471719

/-! ## A000130.P10895559918964500536

`A086856(∑[n-1]+3)`
-/

namespace A000130.P10895559918964500536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A000130.P10895559918964500536

/-! ## A000130.P13821737340886499154

`A001100(∑[n-1]+3)/2`
-/

namespace A000130.P13821737340886499154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat : ℚ) / 2

end

end A000130.P13821737340886499154

/-! ## A000130.P14981902828607015167

`lcm(2, A001100(A152948(n+1)))/2`
-/

namespace A000130.P14981902828607015167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001100 (A152948 (n + 1)).toNat) : ℚ) / 2

end

end A000130.P14981902828607015167

/-! ## A000130.P18230126858043163370

`A086856(A238531(n))%A000138(n)`
-/

namespace A000130.P18230126858043163370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086856 (A238531 n).toNat) (A000138 n)

end

end A000130.P18230126858043163370

/-! ## A000130.P16720681571994230024

`A086852(n)-A086856(A152948(n+1))`
-/

namespace A000130.P16720681571994230024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086852 n - A086856 (A152948 (n + 1)).toNat

end

end A000130.P16720681571994230024

/-! ## A000130.P4421564820253189886

`and(A001100(A152948(n+1)), A057428(n))/2`
-/

namespace A000130.P4421564820253189886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A001100 (A152948 (n + 1)).toNat) (A057428 n) : ℚ) / 2

end

end A000130.P4421564820253189886

/-!
# A000131: Number of asymmetrical dissections of n-gon.

The programs for A000131, there is no canonical definition to state claims against.
-/

/-! ## A000131.P10334890883718135398

`A025428(A204708(n+2))`
-/

namespace A000131.P10334890883718135398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A204708 (n + 2)).toNat

end

end A000131.P10334890883718135398

/-!
# A000132: Number of ways of writing n as a sum of 5 squares.

The programs for A000132, there is no canonical definition to state claims against.
-/

/-! ## A000132.P12290067311906008873

`A008422(4*n)`
-/

namespace A000132.P12290067311906008873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008422 (4 * n)

end

end A000132.P12290067311906008873

/-! ## A000132.P8311509302420019085

`and(-5, A008422(Δ[A051890(n)]))`
-/

namespace A000132.P8311509302420019085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A008422 (f1 (n + 1) - f1 n).toNat)

end

end A000132.P8311509302420019085

/-! ## A000132.P5127829628434183932

`and(-5, A008422(record[A066104(n)]))`
-/

namespace A000132.P5127829628434183932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A008422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A000132.P5127829628434183932

/-! ## A000132.P7562364806995403524

`A008422(A008586(n))%((n+2)^3)`
-/

namespace A000132.P7562364806995403524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008422 (A008586 n).toNat) ((n + 2) ^ 3 : ℤ)

end

end A000132.P7562364806995403524

/-! ## A000132.P8521677541847913016

`A008422(A008574(n))+floor(1/(n+1))`
-/

namespace A000132.P8521677541847913016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008422 (A008574 n).toNat + ⌊1 / (n + 1 : ℚ)⌋

end

end A000132.P8521677541847913016

/-! ## A000132.P16801667667918297160

`or(A000122(n), A008422(A008574(n)))`
-/

namespace A000132.P16801667667918297160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A008422 (A008574 n).toNat)

end

end A000132.P16801667667918297160

/-! ## A000132.P3086129036124232565

`A008422(Δ[A051890(n)])%A017500(n)`
-/

namespace A000132.P3086129036124232565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008422 (f1 (n + 1) - f1 n).toNat) (A017500 n)

end

end A000132.P3086129036124232565

/-! ## A000132.P13168205695279109938

`A008422(record[A066104(n)])%A016935(n)`
-/

namespace A000132.P13168205695279109938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A016935 n)

end

end A000132.P13168205695279109938

/-! ## A000132.P17094351668716874818

`A008422(record[A066104(n)])/(A004442(n)-n)²`
-/

namespace A000132.P17094351668716874818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A000132.P17094351668716874818

/-! ## A000132.P14777197753432669974

`A122141(∑[n+5]+6)`
-/

namespace A000132.P14777197753432669974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A000132.P14777197753432669974

/-!
# A000133: Number of Boolean functions of n variables.

The programs for A000133, the canonical program `A000133.P828645087227429052` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000133 has offset 1).

The definition of A000133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000133.P828645087227429052

`(2^2^(n+1)+(2^(n+1)-1)*2^(2^n+1))/2^(n+2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000133

/-- `(2^2^(n+1)+(2^(n+1)-1)*2^(2^n+1))/2^(n+2)` -/
def P828645087227429052.Spec : Prop :=
  ∀ n, P828645087227429052.a n = (A000133 (n + 1) : ℚ)

end A000133

/-! ## A000133.P10089146397074683918

`A001320(n+1)+abs(A331691(n))`
-/

namespace A000133.P10089146397074683918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001320 (n + 1) + |A331691 n|

end

end A000133.P10089146397074683918

namespace A000133

/-- `A001320(n+1)+abs(A331691(n))` -/
def P10089146397074683918.Spec : Prop :=
  ∀ n, P10089146397074683918.a n = A000133 (n + 1)

end A000133

/-! ## A000133.P17515068598489514774

`A016031(n+2)+A001320(n+1)`
-/

namespace A000133.P17515068598489514774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016031 (n + 2) + A001320 (n + 1)

end

end A000133.P17515068598489514774

namespace A000133

/-- `A016031(n+2)+A001320(n+1)` -/
def P17515068598489514774.Spec : Prop :=
  ∀ n, P17515068598489514774.a n = A000133 (n + 1)

end A000133

/-!
# A000134: Positive zeros of Bessel function of order 0 rounded to nearest integer.

The programs for A000134, the canonical program `A000134.P4874544942946610116` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000134 has offset 1).

The definition of A000134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000134.P4874544942946610116

`floor(π*(n-1))+6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000134

/-- `floor(π*(n-1))+6` -/
def P4874544942946610116.Spec : Prop :=
  ∀ n, P4874544942946610116.a n = A000134 (n + 1)

theorem P4874544942946610116.correct : P4874544942946610116.Spec := by
  intro n
  simp only [A000134, Nat.add_sub_cancel]

end A000134

/-! ## A000134.P5266890269305862879

`floor(∑[2*atan(A270510(n+1)²)])`
-/

namespace A000134.P5266890269305862879
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.arctan (A270510 (n + 1) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A000134.P5266890269305862879

namespace A000134

/-- `floor(∑[2*atan(A270510(n+1)²)])` -/
def P5266890269305862879.Spec : Prop :=
  ∀ n, P5266890269305862879.a n = A000134 (n + 1)

end A000134

/-! ## A000134.P3197496643008438239

`floor(2*(n+1)*acot(acot(A016993(n+1))))`
-/

namespace A000134.P3197496643008438239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 1 : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (A016993 (n + 1) : ℝ)))⌋

end

end A000134.P3197496643008438239

namespace A000134

/-- `floor(2*(n+1)*acot(acot(A016993(n+1))))` -/
def P3197496643008438239.Spec : Prop :=
  ∀ n, P3197496643008438239.a n = A000134 (n + 1)

end A000134

/-! ## A000134.P8903399808963821081

`A110654(A246394(n)+char[1])`
-/

namespace A000134.P8903399808963821081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A246394 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A000134.P8903399808963821081

namespace A000134

/-- `A110654(A246394(n)+char[1])` -/
def P8903399808963821081.Spec : Prop :=
  ∀ n, P8903399808963821081.a n = A000134 (n + 1)

end A000134

/-! ## A000134.P4992089700315940788

`A110654(xor(char[1], A246394(n)))`
-/

namespace A000134.P4992089700315940788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A246394 n)).toNat

end

end A000134.P4992089700315940788

namespace A000134

/-- `A110654(xor(char[1], A246394(n)))` -/
def P4992089700315940788.Spec : Prop :=
  ∀ n, P4992089700315940788.a n = A000134 (n + 1)

end A000134

/-! ## A000134.P5066447663315199213

`A110654(A248521(4*n+3))`
-/

namespace A000134.P5066447663315199213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A248521 (4 * n + 3)).toNat

end

end A000134.P5066447663315199213

namespace A000134

/-- `A110654(A248521(4*n+3))` -/
def P5066447663315199213.Spec : Prop :=
  ∀ n, P5066447663315199213.a n = A000134 (n + 1)

end A000134

/-!
# A000135: Number of partitions into non-integral powers.

The programs for A000135, there is no canonical definition to state claims against.
-/

/-! ## A000135.P5628322438640343446

`A184421(ceil(2^(n-1)))+∑[floor(3*n/2)]`
-/

namespace A000135.P5628322438640343446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000135.P5628322438640343446

/-! ## A000135.P4110313277279954868

`A023566(A369682(n+1))`
-/

namespace A000135.P4110313277279954868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023566 (A369682 (n + 1)).toNat

end

end A000135.P4110313277279954868

/-! ## A000135.P9755053385927086498

`n²+A000196(A149737(n))`
-/

namespace A000135.P9755053385927086498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000196 (A149737 n).toNat

end

end A000135.P9755053385927086498

/-! ## A000135.P12525957441413426451

`A003056(∑[∑[A032020(3*n+1)]])`
-/

namespace A000135.P12525957441413426451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000135.P12525957441413426451

/-!
# A000136: Number of ways of folding a strip of n labeled stamps.

The programs for A000136, there is no canonical definition to state claims against.
-/

/-! ## A000136.P10042653829233410034

`(n+1)*A000682(n+1)`
-/

namespace A000136.P10042653829233410034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000682 (n + 1)

end

end A000136.P10042653829233410034

/-! ## A000136.P4876158347012535153

`gcd(2, n+1)*A227167(n+1)`
-/

namespace A000136.P4876158347012535153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A227167 (n + 1)

end

end A000136.P4876158347012535153

/-! ## A000136.P12216137568335005785

`A000034(n)*A227167(n+1)`
-/

namespace A000136.P12216137568335005785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A227167 (n + 1)

end

end A000136.P12216137568335005785

/-! ## A000136.P4204019661240417231

`Δ[A032766(n)]*A227167(n+1)`
-/

namespace A000136.P4204019661240417231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A227167 (n + 1)

end

end A000136.P4204019661240417231

/-! ## A000136.P17761735166372046047

`A001511(n²+1)*A227167(n+1)`
-/

namespace A000136.P17761735166372046047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 1) * A227167 (n + 1)

end

end A000136.P17761735166372046047

/-!
# A000137: Series-parallel numbers.

The programs for A000137, there is no canonical definition to state claims against.
-/

/-! ## A000137.P6558957373903930489

`A036654(∑[n+1]+1)`
-/

namespace A000137.P6558957373903930489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000137.P6558957373903930489

/-! ## A000137.P15135447929162909608

`record[gcd(A036654(n), A098825(n))]`
-/

namespace A000137.P15135447929162909608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036654 n) (A098825 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000137.P15135447929162909608

/-! ## A000137.P14122551667426287327

`record[A036654(Δ[A263794(n+1)])]`
-/

namespace A000137.P14122551667426287327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000137.P14122551667426287327

/-! ## A000137.P16503196812870348704

`A036654(A134869(n+1))+A000007(n+4)`
-/

namespace A000137.P16503196812870348704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (A134869 (n + 1)).toNat + A000007 (n + 4)

end

end A000137.P16503196812870348704

/-! ## A000137.P3789109036771499563

`A171386(3*n+1)+A036654(A134869(n+1))`
-/

namespace A000137.P3789109036771499563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (3 * n + 1) + A036654 (A134869 (n + 1)).toNat

end

end A000137.P3789109036771499563

/-!
# A000138: Expansion of e.g.f. exp(-x^4/4)/(1-x).

The programs for A000138, there is no canonical definition to state claims against.
-/

/-! ## A000138.P6716642974549144780

`A000166(n)+A002467(n)-A029571(n)`
-/

namespace A000138.P6716642974549144780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A002467 n - A029571 n)

end

end A000138.P6716642974549144780

/-! ## A000138.P15504536310721227643

`n!-A029571(n)`
-/

namespace A000138.P15504536310721227643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A029571 n

end

end A000138.P15504536310721227643

/-! ## A000138.P15591925235096149324

`A000142(n)-A029571(n)`
-/

namespace A000138.P15591925235096149324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A029571 n

end

end A000138.P15591925235096149324

/-! ## A000138.P12539105498169464511

`Δ[A003422(n)]-A029571(n)`
-/

namespace A000138.P12539105498169464511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A029571 n

end

end A000138.P12539105498169464511

/-! ## A000138.P9401789640312264952

`∏[A028310(n)]-A029571(n)`
-/

namespace A000138.P9401789640312264952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A029571 n

end

end A000138.P9401789640312264952

/-!
# A000139: a(n) = 2*(3*n)! / ((2*n+1)!*(n+1)!).

The programs for A000139, the canonical program `A000139.P12341560060847707045` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000139 has offset 0).

The definition of A000139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000139.P12341560060847707045

`2/(n+1)*A001764(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000139

/-- `2/(n+1)*A001764(n)` -/
def P12341560060847707045.Spec : Prop :=
  ∀ n, P12341560060847707045.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P3755006178668197064

`A103938(n+1)-A001764(n)`
-/

namespace A000139.P3755006178668197064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A001764 n

end

end A000139.P3755006178668197064

namespace A000139

/-- `A103938(n+1)-A001764(n)` -/
def P3755006178668197064.Spec : Prop :=
  ∀ n, P3755006178668197064.a n = A000139 n

end A000139

/-! ## A000139.P9276897522027730178

`A103938(n+1)-A110616(∑[n])`
-/

namespace A000139.P9276897522027730178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A110616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000139.P9276897522027730178

namespace A000139

/-- `A103938(n+1)-A110616(∑[n])` -/
def P9276897522027730178.Spec : Prop :=
  ∀ n, P9276897522027730178.a n = A000139 n

end A000139

/-! ## A000139.P10019664220907881823

`A103938(n+1)-A047749(2*n)`
-/

namespace A000139.P10019664220907881823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A047749 (2 * n)

end

end A000139.P10019664220907881823

namespace A000139

/-- `A103938(n+1)-A047749(2*n)` -/
def P10019664220907881823.Spec : Prop :=
  ∀ n, P10019664220907881823.a n = A000139 n

end A000139

/-! ## A000139.P5566769966767771124

`A103938(n+1)-A127898(C(n, 2))`
-/

namespace A000139.P5566769966767771124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A127898 (Nat.choose n 2)

end

end A000139.P5566769966767771124

namespace A000139

/-- `A103938(n+1)-A127898(C(n, 2))` -/
def P5566769966767771124.Spec : Prop :=
  ∀ n, P5566769966767771124.a n = A000139 n

end A000139

/-! ## A000139.P9572299319281435292

`A103938(n+1)-∑{d}[n+1, A251662(#)]`
-/

namespace A000139.P9572299319281435292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A251662 d

end

end A000139.P9572299319281435292

namespace A000139

/-- `A103938(n+1)-∑{d}[n+1, A251662(#)]` -/
def P9572299319281435292.Spec : Prop :=
  ∀ n, P9572299319281435292.a n = A000139 n

end A000139

/-! ## A000139.P6052593030351227829

`A103938(n+1)-A047761(abs(1-2*n))`
-/

namespace A000139.P6052593030351227829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A047761 |1 - (2 * n : ℤ)|.toNat

end

end A000139.P6052593030351227829

namespace A000139

/-- `A103938(n+1)-A047761(abs(1-2*n))` -/
def P6052593030351227829.Spec : Prop :=
  ∀ n, P6052593030351227829.a n = A000139 n

end A000139

/-! ## A000139.P18176212674342037994

`A103938(n+1)-A047764(A017545(n))`
-/

namespace A000139.P18176212674342037994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A047764 (A017545 n).toNat

end

end A000139.P18176212674342037994

namespace A000139

/-- `A103938(n+1)-A047764(A017545(n))` -/
def P18176212674342037994.Spec : Prop :=
  ∀ n, P18176212674342037994.a n = A000139 n

end A000139

/-! ## A000139.P7620178353006844904

`2*A001764(n)/A028242(A005843(n))`
-/

namespace A000139.P7620178353006844904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001764 n : ℚ) / (A028242 (A005843 n).toNat : ℚ))

end

end A000139.P7620178353006844904

namespace A000139

/-- `2*A001764(n)/A028242(A005843(n))` -/
def P7620178353006844904.Spec : Prop :=
  ∀ n, P7620178353006844904.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P743948650283614972

`2*A001764(n)/A008619(A059009(n))`
-/

namespace A000139.P743948650283614972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001764 n : ℚ) / (A008619 (A059009 n).toNat : ℚ))

end

end A000139.P743948650283614972

namespace A000139

/-- `2*A001764(n)/A008619(A059009(n))` -/
def P743948650283614972.Spec : Prop :=
  ∀ n, P743948650283614972.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P13762683907538320814

`A007226(n)/Δ[n²]`
-/

namespace A000139.P13762683907538320814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007226 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A000139.P13762683907538320814

namespace A000139

/-- `A007226(n)/Δ[n²]` -/
def P13762683907538320814.Spec : Prop :=
  ∀ n, P13762683907538320814.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P16273066585595613560

`A116637(2*n+1)/(3*n+1)`
-/

namespace A000139.P16273066585595613560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (2 * n + 1) : ℚ) / (3 * n + 1 : ℚ)

end

end A000139.P16273066585595613560

namespace A000139

/-- `A116637(2*n+1)/(3*n+1)` -/
def P16273066585595613560.Spec : Prop :=
  ∀ n, P16273066585595613560.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P1499966464088215164

`3*A001764(n)-A006013(n)`
-/

namespace A000139.P1499966464088215164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001764 n - A006013 n

end

end A000139.P1499966464088215164

namespace A000139

/-- `3*A001764(n)-A006013(n)` -/
def P1499966464088215164.Spec : Prop :=
  ∀ n, P1499966464088215164.a n = A000139 n

end A000139

/-! ## A000139.P3614929252042577346

`2*A006013(n)/A016777(n)`
-/

namespace A000139.P3614929252042577346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A006013 n : ℚ) / (A016777 n : ℚ))

end

end A000139.P3614929252042577346

namespace A000139

/-- `2*A006013(n)/A016777(n)` -/
def P3614929252042577346.Spec : Prop :=
  ∀ n, P3614929252042577346.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P3960876311931328352

`gcd(2*A001764(n), A007226(n))`
-/

namespace A000139.P3960876311931328352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A001764 n) (A007226 n)

end

end A000139.P3960876311931328352

namespace A000139

/-- `gcd(2*A001764(n), A007226(n))` -/
def P3960876311931328352.Spec : Prop :=
  ∀ n, (P3960876311931328352.a n : ℤ) = A000139 n

end A000139

/-! ## A000139.P407458019458354920

`(A001764(n+1)-A336945(n+1))/(n+1)`
-/

namespace A000139.P407458019458354920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 (n + 1) - A336945 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000139.P407458019458354920

namespace A000139

/-- `(A001764(n+1)-A336945(n+1))/(n+1)` -/
def P407458019458354920.Spec : Prop :=
  ∀ n, P407458019458354920.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P12210063347292585389

`(A047749(2*n+1)+A047749(2*n))/(2*n+1)`
-/

namespace A000139.P12210063347292585389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047749 (2 * n + 1) + A047749 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A000139.P12210063347292585389

namespace A000139

/-- `(A047749(2*n+1)+A047749(2*n))/(2*n+1)` -/
def P12210063347292585389.Spec : Prop :=
  ∀ n, P12210063347292585389.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P9533838431681693272

`A052183(n)/∑[n+1]`
-/

namespace A000139.P9533838431681693272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052183 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A000139.P9533838431681693272

namespace A000139

/-- `A052183(n)/∑[n+1]` -/
def P9533838431681693272.Spec : Prop :=
  ∀ n, P9533838431681693272.a n = (A000139 n : ℚ)

end A000139

/-! ## A000139.P13980995076109543965

`A052183(n)-n*A103938(n+1)`
-/

namespace A000139.P13980995076109543965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052183 n - (n : ℤ) * A103938 (n + 1)

end

end A000139.P13980995076109543965

namespace A000139

/-- `A052183(n)-n*A103938(n+1)` -/
def P13980995076109543965.Spec : Prop :=
  ∀ n, P13980995076109543965.a n = A000139 n

end A000139

/-! ## A000139.P16743443857026764344

`2/A000217(2*n+1)*A081204(2*n)`
-/

namespace A000139.P16743443857026764344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000217 (2 * n + 1) : ℚ) * (A081204 (2 * n) : ℚ)

end

end A000139.P16743443857026764344

namespace A000139

/-- `2/A000217(2*n+1)*A081204(2*n)` -/
def P16743443857026764344.Spec : Prop :=
  ∀ n, P16743443857026764344.a n = (A000139 n : ℚ)

end A000139

/-!
# A000140: Kendall-Mann numbers: the most common number of inversions in a permutation on n letters is floor(n*(n-1)/4); a(n) is the number of permutations with this many inversions.

The programs for A000140, there is no canonical definition to state claims against.
-/

/-! ## A000140.P15979249844385278498

`A008302(∑[A000124(n)-A004525(n)])`
-/

namespace A000140.P15979249844385278498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000140.P15979249844385278498

/-! ## A000140.P17895568485051936778

`A274887(∑[A000124(n)-A004525(n)])`
-/

namespace A000140.P17895568485051936778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000140.P17895568485051936778

/-! ## A000140.P12964032385444458734

`A274887(A008619(∑[A010000(n)]))`
-/

namespace A000140.P12964032385444458734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A000140.P12964032385444458734

/-! ## A000140.P3683874725001640314

`A274887(A004525(∑[A059100(n)]))`
-/

namespace A000140.P3683874725001640314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274887 (A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A000140.P3683874725001640314

/-! ## A000140.P14888965666374270845

`A008302(A008619(Δ[A006008(n)]))`
-/

namespace A000140.P14888965666374270845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 (A008619 (f1 (n + 1) - f1 n).toNat).toNat

end

end A000140.P14888965666374270845

/-!
# A000141: Number of ways of writing n as a sum of 6 squares.

The programs for A000141, there is no canonical definition to state claims against.
-/

/-! ## A000141.P12910804027515548539

`A008425(2*n)`
-/

namespace A000141.P12910804027515548539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 (2 * n)

end

end A000141.P12910804027515548539

/-! ## A000141.P6496915722156601507

`A008425(n+n)%Δ[A035604(n)]`
-/

namespace A000141.P6496915722156601507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008425 (n + n)) (f1 (n + 1) - f1 n)

end

end A000141.P6496915722156601507

/-! ## A000141.P7331887535140360658

`A008425(n+n)/A001222(A151800(n))`
-/

namespace A000141.P7331887535140360658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008425 (n + n) : ℚ) / (A001222 (A151800 n).toNat : ℚ)

end

end A000141.P7331887535140360658

/-! ## A000141.P2389251929561390460

`A008425(n+n)/A001222(A270753(n+1))`
-/

namespace A000141.P2389251929561390460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008425 (n + n) : ℚ) / (A001222 (A270753 (n + 1)).toNat : ℚ)

end

end A000141.P2389251929561390460

/-! ## A000141.P14818487517630130367

`A014025(A047482(n+1))+A008425(n+n)`
-/

namespace A000141.P14818487517630130367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A047482 (n + 1)).toNat + A008425 (n + n)

end

end A000141.P14818487517630130367

/-! ## A000141.P17977639758284155886

`A028584(4*4*n)`
-/

namespace A000141.P17977639758284155886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028584 (4 * (4 * n))

end

end A000141.P17977639758284155886

/-! ## A000141.P2837632187011111674

`A008665(4*n)`
-/

namespace A000141.P2837632187011111674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008665 (4 * n)

end

end A000141.P2837632187011111674

/-! ## A000141.P8720033800245130896

`A070204(A087845(n+1))+A008425(n+n)`
-/

namespace A000141.P8720033800245130896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (A087845 (n + 1)).toNat + A008425 (n + n)

end

end A000141.P8720033800245130896

/-!
# A000142: Factorial numbers: n! = 1*2*3*4*...*n (order of symmetric group S_n, number of permutations of n letters).

The programs for A000142, the canonical program `A000142.P3272619076580183195` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000142 has offset 0).

The definition of A000142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!` (program `A000142.P3272619076580183195`, by `A000142.P3272619076580183195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000142.P3272619076580183195

`n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000142

/-- `n!` -/
def P3272619076580183195.Spec : Prop :=
  ∀ n, (P3272619076580183195.a n : ℤ) = A000142 n

theorem P3272619076580183195.correct : P3272619076580183195.Spec := by
  intro n
  simp only [A000142]

end A000142

/-! ## A000142.P7858992319579041371

`n*a(n-1)` with `a(0)=1`
-/

namespace A000142.P7858992319579041371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (n - 1)

end

end A000142.P7858992319579041371

namespace A000142

/-- `n*a(n-1)` -/
def P7858992319579041371.Spec : Prop :=
  ∀ n, (P7858992319579041371.a n : ℤ) = A000142 n

end A000142

/-! ## A000142.P15786840198283418343

`a(n-1)²/a(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A000142.P15786840198283418343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 / a (n - 2) + a (n - 1)

end

end A000142.P15786840198283418343

namespace A000142

/-- `a(n-1)²/a(n-2)+a(n-1)` -/
def P15786840198283418343.Spec : Prop :=
  ∀ n, P15786840198283418343.a n = (A000142 n : ℚ)

end A000142

/-! ## A000142.P9743270134642019327

`∏[round(1/acot(n))]`
-/

namespace A000142.P9743270134642019327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000142.P9743270134642019327

namespace A000142

/-- `∏[round(1/acot(n))]` -/
def P9743270134642019327.Spec : Prop :=
  ∀ n, P9743270134642019327.a n = A000142 n

end A000142

/-! ## A000142.P17306857700508029365

`∏[ceil(abs(γ-n))]`
-/

namespace A000142.P17306857700508029365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000142.P17306857700508029365

namespace A000142

/-- `∏[ceil(abs(γ-n))]` -/
def P17306857700508029365.Spec : Prop :=
  ∀ n, P17306857700508029365.a n = A000142 n

end A000142

/-! ## A000142.P16063676314904157351

`abs(∏[floor(acot(n)-n)])`
-/

namespace A000142.P16063676314904157351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A000142.P16063676314904157351

namespace A000142

/-- `abs(∏[floor(acot(n)-n)])` -/
def P16063676314904157351.Spec : Prop :=
  ∀ n, P16063676314904157351.a n = A000142 n

end A000142

/-! ## A000142.P1245408614088712763

`-∏[n-C(2, n+2)]`
-/

namespace A000142.P1245408614088712763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A000142.P1245408614088712763

namespace A000142

/-- `-∏[n-C(2, n+2)]` -/
def P1245408614088712763.Spec : Prop :=
  ∀ n, P1245408614088712763.a n = A000142 n

end A000142

/-! ## A000142.P6915983515722723737

`A104150(n+1)`
-/

namespace A000142.P6915983515722723737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 1)

end

end A000142.P6915983515722723737

namespace A000142

/-- `A104150(n+1)` -/
def P6915983515722723737.Spec : Prop :=
  ∀ n, P6915983515722723737.a n = A000142 n

end A000142

/-!
# A000143: Number of ways of writing n as a sum of 8 squares.

The programs for A000143, there is no canonical definition to state claims against.
-/

/-! ## A000143.P13935581209134171473

`abs(A035016(n))`
-/

namespace A000143.P13935581209134171473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035016 n|

end

end A000143.P13935581209134171473

/-! ## A000143.P16175582695223355295

`A033999(n)*A035016(n)`
-/

namespace A000143.P16175582695223355295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A035016 n

end

end A000143.P16175582695223355295

/-! ## A000143.P12054041745980958042

`gcd(A000038(n), A035016(n))`
-/

namespace A000143.P12054041745980958042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A035016 n)

end

end A000143.P12054041745980958042

/-! ## A000143.P3316539534457893627

`lcm(A000034(n), A035016(n))`
-/

namespace A000143.P3316539534457893627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A035016 n)

end

end A000143.P3316539534457893627

/-! ## A000143.P8275152851285634363

`(A004442(n)-n)*A035016(n)`
-/

namespace A000143.P8275152851285634363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A035016 n

end

end A000143.P8275152851285634363

/-! ## A000143.P11563041136701257117

`(1-2*A000035(n))*A035016(n)`
-/

namespace A000143.P11563041136701257117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A035016 n

end

end A000143.P11563041136701257117

/-! ## A000143.P10109776637626354557

`A000118(n)*A035016(n)/A096727(n)`
-/

namespace A000143.P10109776637626354557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n * A035016 n : ℚ) / (A096727 n : ℚ)

end

end A000143.P10109776637626354557

/-! ## A000143.P17862560291375599085

`A000152(n)*A035016(n)/A319307(n)`
-/

namespace A000143.P17862560291375599085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 n * A035016 n : ℚ) / (A319307 n : ℚ)

end

end A000143.P17862560291375599085

/-! ## A000143.P9830189869055629613

`A000156(n)*A035016(n)/A319309(n)`
-/

namespace A000143.P9830189869055629613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n * A035016 n : ℚ) / (A319309 n : ℚ)

end

end A000143.P9830189869055629613

/-! ## A000143.P10677263729087810610

`A008457(n+1)/A138503(n+1)*A035016(n)`
-/

namespace A000143.P10677263729087810610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (n + 1) : ℚ) / (A138503 (n + 1) : ℚ) * (A035016 n : ℚ)

end

end A000143.P10677263729087810610

/-! ## A000143.P2108087182896441949

`abs(A259491(4*n))`
-/

namespace A000143.P2108087182896441949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259491 (4 * n)|

end

end A000143.P2108087182896441949

/-! ## A000143.P12437021391934799364

`A002408(n+1)/A007331(n+1)*A035016(n)`
-/

namespace A000143.P12437021391934799364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002408 (n + 1) : ℚ) / (A007331 (n + 1) : ℚ) * (A035016 n : ℚ)

end

end A000143.P12437021391934799364

/-! ## A000143.P17945524979179928015

`A004409(n)/A319553(n)*A035016(n)`
-/

namespace A000143.P17945524979179928015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004409 n : ℚ) / (A319553 n : ℚ) * (A035016 n : ℚ)

end

end A000143.P17945524979179928015

/-! ## A000143.P10434443346691249388

`A205964(n)/A324969(n+1)`
-/

namespace A000143.P10434443346691249388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205964 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A000143.P10434443346691249388

/-! ## A000143.P5957789511889710259

`A000118(n)/A205963(n)*A205964(n)`
-/

namespace A000143.P5957789511889710259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n : ℚ) / (A205963 n : ℚ) * (A205964 n : ℚ)

end

end A000143.P5957789511889710259

/-! ## A000143.P2979264286013220788

`A209444(n)/A215928(n)`
-/

namespace A000143.P2979264286013220788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209444 n : ℚ) / (A215928 n : ℚ)

end

end A000143.P2979264286013220788

/-! ## A000143.P9665652838633933280

`A000118(n)/A209443(n)*A209444(n)`
-/

namespace A000143.P9665652838633933280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n : ℚ) / (A209443 n : ℚ) * (A209444 n : ℚ)

end

end A000143.P9665652838633933280

/-!
# A000144: Number of ways of writing n as a sum of 10 squares.

The programs for A000144, there is no canonical definition to state claims against.
-/

/-! ## A000144.P14550199219330421476

`A008426(2*n)`
-/

namespace A000144.P14550199219330421476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008426 (2 * n)

end

end A000144.P14550199219330421476

/-! ## A000144.P4544446273825353612

`A008426(A005843(n))/gcd(n, n+1)`
-/

namespace A000144.P4544446273825353612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008426 (A005843 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A000144.P4544446273825353612

/-! ## A000144.P12651099494269763168

`A008426(A004277(n))+A000007(n)`
-/

namespace A000144.P12651099494269763168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008426 (A004277 n).toNat + A000007 n

end

end A000144.P12651099494269763168

/-! ## A000144.P17849567503037406326

`lcm(A008426(A005843(n)), A115362(n))`
-/

namespace A000144.P17849567503037406326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008426 (A005843 n).toNat) (A115362 n)

end

end A000144.P17849567503037406326

/-! ## A000144.P988175206585059000

`A008426(A005843(n))%A027569(n+1)`
-/

namespace A000144.P988175206585059000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008426 (A005843 n).toNat) (A027569 (n + 1))

end

end A000144.P988175206585059000

/-! ## A000144.P3263567658363883618

`A122141(A052905(n+7)-4)`
-/

namespace A000144.P3263567658363883618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A052905 (n + 7) - 4).toNat

end

end A000144.P3263567658363883618

/-! ## A000144.P7402341219467284676

`A122141(n+1+A000217(n+9))`
-/

namespace A000144.P7402341219467284676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 ((n + 1 : ℤ) + A000217 (n + 9)).toNat

end

end A000144.P7402341219467284676

/-! ## A000144.P14252711657509481805

`A319574(A027379(n+1)+A017053(n+8))`
-/

namespace A000144.P14252711657509481805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A027379 (n + 1) + A017053 (n + 8)).toNat

end

end A000144.P14252711657509481805

/-! ## A000144.P5066607905090857784

`A286815(A000217(n+11)-11)`
-/

namespace A000144.P5066607905090857784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A000217 (n + 11) - 11).toNat

end

end A000144.P5066607905090857784

/-! ## A000144.P5163167048675272694

`A286815(A055999(n+6)+A005843(n+8))`
-/

namespace A000144.P5163167048675272694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A055999 (n + 6) + A005843 (n + 8)).toNat

end

end A000144.P5163167048675272694

/-!
# A000145: Number of ways of writing n as a sum of 12 squares.

The programs for A000145, there is no canonical definition to state claims against.
-/

/-! ## A000145.P9019589258662000349

`abs(A286346(n))`
-/

namespace A000145.P9019589258662000349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286346 n|

end

end A000145.P9019589258662000349

/-! ## A000145.P15597406565435245429

`A033999(n)*A286346(n)`
-/

namespace A000145.P15597406565435245429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A286346 n

end

end A000145.P15597406565435245429

/-! ## A000145.P12027758117357443103

`gcd(A000038(n), A286346(n))`
-/

namespace A000145.P12027758117357443103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A286346 n)

end

end A000145.P12027758117357443103

/-! ## A000145.P14132625348202946265

`lcm(A000034(n), A286346(n))`
-/

namespace A000145.P14132625348202946265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A286346 n)

end

end A000145.P14132625348202946265

/-! ## A000145.P3568669869226545076

`(A004442(n)-n)*A286346(n)`
-/

namespace A000145.P3568669869226545076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A286346 n

end

end A000145.P3568669869226545076

/-! ## A000145.P14523332134302169831

`A000152(n)*A286346(n)/A319307(n)`
-/

namespace A000145.P14523332134302169831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 n * A286346 n : ℚ) / (A319307 n : ℚ)

end

end A000145.P14523332134302169831

/-! ## A000145.P14641687500586613328

`A000156(n)*A286346(n)/A319309(n)`
-/

namespace A000145.P14641687500586613328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n * A286346 n : ℚ) / (A319309 n : ℚ)

end

end A000145.P14641687500586613328

/-! ## A000145.P7382030997121851206

`∑[A002448(n²)]*A286346(n)`
-/

namespace A000145.P7382030997121851206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A286346 n

end

end A000145.P7382030997121851206

/-!
# A000146: From von Staudt-Clausen representation of Bernoulli numbers: a(n) = Bernoulli(2n) + Sum_{(p-1)|2n} 1/p.

The programs for A000146, there is no canonical definition to state claims against.
-/

/-! ## A000146.P15776081151084943039

`A002882(n+1)+1`
-/

namespace A000146.P15776081151084943039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002882 (n + 1) + 1

end

end A000146.P15776081151084943039

/-! ## A000146.P9006963578591646409

`Δ[∑[A002882(n)]-A001489(n)]`
-/

namespace A000146.P9006963578591646409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000146.P9006963578591646409

/-! ## A000146.P17204614136991065155

`(A027761(n+1)+A000367(n+1))/A002445(n+1)`
-/

namespace A000146.P17204614136991065155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027761 (n + 1) + A000367 (n + 1) : ℚ) / (A002445 (n + 1) : ℚ)

end

end A000146.P17204614136991065155

/-! ## A000146.P9736952294102001657

`(A027761(n+1)+A000367(n+1))/A027762(n+1)`
-/

namespace A000146.P9736952294102001657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027761 (n + 1) + A000367 (n + 1) : ℚ) / (A027762 (n + 1) : ℚ)

end

end A000146.P9736952294102001657

/-! ## A000146.P14727473534903056922

`ceil(A228954(n)/A172087(2*(n+1)))`
-/

namespace A000146.P14727473534903056922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228954 n : ℚ) / (A172087 (2 * (n + 1)) : ℚ)⌉

end

end A000146.P14727473534903056922

/-!
# A000147: Number of trees of diameter 5.

The programs for A000147, there is no canonical definition to state claims against.
-/

/-! ## A000147.P4208423247965221148

`Δ[A338706(A101279(Δ[n²]))]`
-/

namespace A000147.P4208423247965221148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A101279 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P4208423247965221148

/-! ## A000147.P5931207426065706020

`Δ[A338706(A008619(A004273(n)))]`
-/

namespace A000147.P5931207426065706020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P5931207426065706020

/-! ## A000147.P2334795904304161326

`Δ[A338706(A110654(A053438(n)))]`
-/

namespace A000147.P2334795904304161326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A110654 (A053438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P2334795904304161326

/-! ## A000147.P1048406876601643189

`A338706(n+1)-A338706(A028310(n))`
-/

namespace A000147.P1048406876601643189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (n + 1) - A338706 (A028310 n).toNat

end

end A000147.P1048406876601643189

/-! ## A000147.P9063015223672188277

`Δ[A338706(A033270(A008864(n+1)))]`
-/

namespace A000147.P9063015223672188277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A033270 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P9063015223672188277

/-! ## A000147.P15240947607093116745

`A338706(n+1)-A338706(A233583(n+1))`
-/

namespace A000147.P15240947607093116745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (n + 1) - A338706 (A233583 (n + 1)).toNat

end

end A000147.P15240947607093116745

/-! ## A000147.P6344346430373454839

`Δ[A338706(A233583(n+1))]`
-/

namespace A000147.P6344346430373454839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P6344346430373454839

/-! ## A000147.P17971338338117216230

`Δ[A338706(A002260(A034856(n+1)))]`
-/

namespace A000147.P17971338338117216230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A002260 (A034856 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P17971338338117216230

/-! ## A000147.P14981468318702877179

`Δ[A338706(A007318(A000124(n)))]`
-/

namespace A000147.P14981468318702877179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P14981468318702877179

/-! ## A000147.P15788744754296792544

`A338706(n+1)-A338706(A137735(n²))`
-/

namespace A000147.P15788744754296792544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (n + 1) - A338706 (A137735 (n ^ 2)).toNat

end

end A000147.P15788744754296792544

/-! ## A000147.P1861852191332298725

`Δ[A338706(A137735(n²))]`
-/

namespace A000147.P1861852191332298725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338706 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000147.P1861852191332298725

/-!
# A000148: Number of partitions into non-integral powers.

The programs for A000148, there is no canonical definition to state claims against.
-/

/-! ## A000148.P2912205259088367997

`A259447(∑[n+1]+2)`
-/

namespace A000148.P2912205259088367997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000148.P2912205259088367997

/-! ## A000148.P16076050648478022590

`record[A259447(A022856(n+1))]`
-/

namespace A000148.P16076050648478022590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000148.P16076050648478022590

/-! ## A000148.P16915203668846361527

`record[A259447(A089071(n+1))]`
-/

namespace A000148.P16915203668846361527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000148.P16915203668846361527

/-! ## A000148.P14403875148516270600

`record[A259447(n+1)/A119825(n)]`
-/

namespace A000148.P14403875148516270600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259447 (n + 1) : ℚ) / (A119825 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000148.P14403875148516270600

/-! ## A000148.P10927210853222961208

`record[gcd(A098825(n), A259447(n+1))]`
-/

namespace A000148.P10927210853222961208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A259447 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000148.P10927210853222961208

/-!
# A000149: a(n) = floor(e^n).

The programs for A000149, the canonical program `A000149.P348263657615241890` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000149 has offset 0).

The definition of A000149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000149.P348263657615241890

`floor(exp(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000149

/-- `floor(exp(n))` -/
def P348263657615241890.Spec : Prop :=
  ∀ n, P348263657615241890.a n = A000149 n

theorem P348263657615241890.correct : P348263657615241890.Spec := by
  intro n
  simp only [A000149]

end A000149

/-! ## A000149.P2486002394440275992

`ceil(exp(n))-ceil(sin(n)²)`
-/

namespace A000149.P2486002394440275992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ)⌉ - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A000149.P2486002394440275992

namespace A000149

/-- `ceil(exp(n))-ceil(sin(n)²)` -/
def P2486002394440275992.Spec : Prop :=
  ∀ n, P2486002394440275992.a n = A000149 n

end A000149

/-! ## A000149.P6746100304777258838

`ceil(e^n-ceil(sin(n)²))`
-/

namespace A000149.P6746100304777258838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 ^ n - (⌈Real.sin (n : ℝ) ^ 2⌉ : ℝ)⌉

end

end A000149.P6746100304777258838

namespace A000149

/-- `ceil(e^n-ceil(sin(n)²))` -/
def P6746100304777258838.Spec : Prop :=
  ∀ n, P6746100304777258838.a n = A000149 n

end A000149

/-! ## A000149.P5996592151436159101

`gcd(C(2, n+2), floor(e^n))`
-/

namespace A000149.P5996592151436159101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) ⌊Real.exp 1 ^ n⌋

end

end A000149.P5996592151436159101

namespace A000149

/-- `gcd(C(2, n+2), floor(e^n))` -/
def P5996592151436159101.Spec : Prop :=
  ∀ n, (P5996592151436159101.a n : ℤ) = A000149 n

end A000149

/-! ## A000149.P16131565209197516907

`ceil(e^n-floor(atan(n+1)))`
-/

namespace A000149.P16131565209197516907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 ^ n - (⌊Real.arctan (n + 1 : ℝ)⌋ : ℝ)⌉

end

end A000149.P16131565209197516907

namespace A000149

/-- `ceil(e^n-floor(atan(n+1)))` -/
def P16131565209197516907.Spec : Prop :=
  ∀ n, P16131565209197516907.a n = A000149 n

end A000149

/-! ## A000149.P16792555422174545230

`A005182(Δ[n²])`
-/

namespace A000149.P16792555422174545230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000149.P16792555422174545230

namespace A000149

/-- `A005182(Δ[n²])` -/
def P16792555422174545230.Spec : Prop :=
  ∀ n, P16792555422174545230.a n = A000149 n

end A000149

/-! ## A000149.P3350405665110012514

`record[floor(e^A001057(n))]`
-/

namespace A000149.P3350405665110012514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ (A001057 n : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000149.P3350405665110012514

namespace A000149

/-- `record[floor(e^A001057(n))]` -/
def P3350405665110012514.Spec : Prop :=
  ∀ n, P3350405665110012514.a n = A000149 n

end A000149

/-! ## A000149.P13277979425754169643

`record[floor(e^A025480(n))]`
-/

namespace A000149.P13277979425754169643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ (A025480 n : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000149.P13277979425754169643

namespace A000149

/-- `record[floor(e^A025480(n))]` -/
def P13277979425754169643.Spec : Prop :=
  ∀ n, P13277979425754169643.a n = A000149 n

end A000149

/-! ## A000149.P14550021866880611325

`A214077(A008486(n))`
-/

namespace A000149.P14550021866880611325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214077 (A008486 n).toNat

end

end A000149.P14550021866880611325

namespace A000149

/-- `A214077(A008486(n))` -/
def P14550021866880611325.Spec : Prop :=
  ∀ n, P14550021866880611325.a n = A000149 n

end A000149

/-! ## A000149.P14809722290423359995

`A000501(n)+A000495(n)`
-/

namespace A000149.P14809722290423359995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 n + A000495 n

end

end A000149.P14809722290423359995

namespace A000149

/-- `A000501(n)+A000495(n)` -/
def P14809722290423359995.Spec : Prop :=
  ∀ n, P14809722290423359995.a n = A000149 n

end A000149

/-! ## A000149.P7687307472493792402

`A057428(n)+A001671(n)`
-/

namespace A000149.P7687307472493792402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001671 n

end

end A000149.P7687307472493792402

namespace A000149

/-- `A057428(n)+A001671(n)` -/
def P7687307472493792402.Spec : Prop :=
  ∀ n, P7687307472493792402.a n = A000149 n

end A000149

/-! ## A000149.P17049873543691438445

`A001671(n)-A057427(n)`
-/

namespace A000149.P17049873543691438445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n - A057427 n

end

end A000149.P17049873543691438445

namespace A000149

/-- `A001671(n)-A057427(n)` -/
def P17049873543691438445.Spec : Prop :=
  ∀ n, P17049873543691438445.a n = A000149 n

end A000149

/-! ## A000149.P1262035836033975

`A005181(A004273(n)+2)-1`
-/

namespace A000149.P1262035836033975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (A004273 n + 2).toNat - 1

end

end A000149.P1262035836033975

namespace A000149

/-- `A005181(A004273(n)+2)-1` -/
def P1262035836033975.Spec : Prop :=
  ∀ n, P1262035836033975.a n = A000149 n

end A000149

/-! ## A000149.P12158603191736949604

`A214077(A133223(2*n+1)-1)`
-/

namespace A000149.P12158603191736949604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214077 (A133223 (2 * n + 1) - 1).toNat

end

end A000149.P12158603191736949604

namespace A000149

/-- `A214077(A133223(2*n+1)-1)` -/
def P12158603191736949604.Spec : Prop :=
  ∀ n, P12158603191736949604.a n = A000149 n

end A000149

/-! ## A000149.P1779467440571905059

`A057428(n)+A005181(2*n+1)`
-/

namespace A000149.P1779467440571905059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005181 (2 * n + 1)

end

end A000149.P1779467440571905059

namespace A000149

/-- `A057428(n)+A005181(2*n+1)` -/
def P1779467440571905059.Spec : Prop :=
  ∀ n, P1779467440571905059.a n = A000149 n

end A000149

/-! ## A000149.P7532845725867524587

`A005181(2*n+1)-A060576(n+1)`
-/

namespace A000149.P7532845725867524587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (2 * n + 1) - A060576 (n + 1)

end

end A000149.P7532845725867524587

namespace A000149

/-- `A005181(2*n+1)-A060576(n+1)` -/
def P7532845725867524587.Spec : Prop :=
  ∀ n, P7532845725867524587.a n = A000149 n

end A000149

/-! ## A000149.P4031135504824390098

`A005181(2*n+1)-(n-A014681(n))²`
-/

namespace A000149.P4031135504824390098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (2 * n + 1) - ((n : ℤ) - A014681 n) ^ 2

end

end A000149.P4031135504824390098

namespace A000149

/-- `A005181(2*n+1)-(n-A014681(n))²` -/
def P4031135504824390098.Spec : Prop :=
  ∀ n, P4031135504824390098.a n = A000149 n

end A000149

/-! ## A000149.P15125123881204807720

`A001671(n)-A066328(A102376(n))`
-/

namespace A000149.P15125123881204807720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n - A066328 (A102376 n).toNat

end

end A000149.P15125123881204807720

namespace A000149

/-- `A001671(n)-A066328(A102376(n))` -/
def P15125123881204807720.Spec : Prop :=
  ∀ n, P15125123881204807720.a n = A000149 n

end A000149

/-! ## A000149.P16672475580708020042

`ceil(A055876(2*(n+1))/A055876(n+2))`
-/

namespace A000149.P16672475580708020042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055876 (2 * (n + 1)) : ℚ) / (A055876 (n + 2) : ℚ)⌉

end

end A000149.P16672475580708020042

namespace A000149

/-- `ceil(A055876(2*(n+1))/A055876(n+2))` -/
def P16672475580708020042.Spec : Prop :=
  ∀ n, P16672475580708020042.a n = A000149 n

end A000149

/-! ## A000149.P18234280079522950910

`ceil(exp(n)-tanh(n))`
-/

namespace A000149.P18234280079522950910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ) - Real.tanh (n : ℝ)⌉

end

end A000149.P18234280079522950910

namespace A000149

/-- `ceil(exp(n)-tanh(n))` -/
def P18234280079522950910.Spec : Prop :=
  ∀ n, P18234280079522950910.a n = A000149 n

end A000149

/-!
# A000150: Number of dissections of an n-gon, rooted at an exterior edge, asymmetric with respect to that edge.

The programs for A000150, the canonical program `A000150.P13871546353888305123` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000150 has offset 0).

The definition of A000150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000150.P13871546353888305123

`floor(A000912(n)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A000150

/-- `floor(A000912(n)/2)` -/
def P13871546353888305123.Spec : Prop :=
  ∀ n, P13871546353888305123.a n = A000150 n

theorem P13871546353888305123.correct : P13871546353888305123.Spec := by
  intro n
  simp only [A000150]

end A000150

/-! ## A000150.P10230533902057412813

`A003239(n)-A002995(n+1)`
-/

namespace A000150.P10230533902057412813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A002995 (n + 1)

end

end A000150.P10230533902057412813

namespace A000150

/-- `A003239(n)-A002995(n+1)` -/
def P10230533902057412813.Spec : Prop :=
  ∀ n, P10230533902057412813.a n = A000150 n

end A000150

/-! ## A000150.P6774723989292795483

`A007123(n+1)-A210736(n)`
-/

namespace A000150.P6774723989292795483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 1) - A210736 n

end

end A000150.P6774723989292795483

namespace A000150

/-- `A007123(n+1)-A210736(n)` -/
def P6774723989292795483.Spec : Prop :=
  ∀ n, P6774723989292795483.a n = A000150 n

end A000150

/-! ## A000150.P149591655114404911

`(A000108(n)-A097331(n))/2`
-/

namespace A000150.P149591655114404911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n - A097331 n : ℚ) / 2

end

end A000150.P149591655114404911

namespace A000150

/-- `(A000108(n)-A097331(n))/2` -/
def P149591655114404911.Spec : Prop :=
  ∀ n, P149591655114404911.a n = (A000150 n : ℚ)

end A000150

/-! ## A000150.P9101632211313120052

`(abs(A168491(n))-A097331(n))/2`
-/

namespace A000150.P9101632211313120052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A168491 n| - A097331 n : ℚ) / 2

end

end A000150.P9101632211313120052

namespace A000150

/-- `(abs(A168491(n))-A097331(n))/2` -/
def P9101632211313120052.Spec : Prop :=
  ∀ n, P9101632211313120052.a n = (A000150 n : ℚ)

end A000150

/-! ## A000150.P9631341554870500818

`(A120588(n+1)-A097331(n))/2`
-/

namespace A000150.P9631341554870500818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120588 (n + 1) - A097331 n : ℚ) / 2

end

end A000150.P9631341554870500818

namespace A000150

/-- `(A120588(n+1)-A097331(n))/2` -/
def P9631341554870500818.Spec : Prop :=
  ∀ n, P9631341554870500818.a n = (A000150 n : ℚ)

end A000150

/-! ## A000150.P1891360834206052184

`(A120304(n)+2-A097331(n))/2`
-/

namespace A000150.P1891360834206052184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2 - A097331 n : ℚ) / 2

end

end A000150.P1891360834206052184

namespace A000150

/-- `(A120304(n)+2-A097331(n))/2` -/
def P1891360834206052184.Spec : Prop :=
  ∀ n, P1891360834206052184.a n = (A000150 n : ℚ)

end A000150

/-! ## A000150.P7156598257870004400

`(A089408(Δ[n²])-A097331(n))/2`
-/

namespace A000150.P7156598257870004400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A097331 n : ℚ) / 2

end

end A000150.P7156598257870004400

namespace A000150

/-- `(A089408(Δ[n²])-A097331(n))/2` -/
def P7156598257870004400.Spec : Prop :=
  ∀ n, P7156598257870004400.a n = (A000150 n : ℚ)

end A000150

/-! ## A000150.P10353052600724930952

`(A097331(A005408(n))-A097331(n))/2`
-/

namespace A000150.P10353052600724930952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 (A005408 n).toNat - A097331 n : ℚ) / 2

end

end A000150.P10353052600724930952

namespace A000150

/-- `(A097331(A005408(n))-A097331(n))/2` -/
def P10353052600724930952.Spec : Prop :=
  ∀ n, P10353052600724930952.a n = (A000150 n : ℚ)

end A000150

/-! ## A000150.P2416102977798684740

`A003239(n)-A002995(n)-Δ[A002995(n)]`
-/

namespace A000150.P2416102977798684740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A002995 n - (f1 (n + 1) - f1 n)

end

end A000150.P2416102977798684740

namespace A000150

/-- `A003239(n)-A002995(n)-Δ[A002995(n)]` -/
def P2416102977798684740.Spec : Prop :=
  ∀ n, P2416102977798684740.a n = A000150 n

end A000150

/-!
# A000151: Number of oriented rooted trees with n nodes. Also rooted trees with n nodes and 2-colored non-root nodes.

The programs for A000151, there is no canonical definition to state claims against.
-/

/-! ## A000151.P11521074379101918298

`A038055(n+1)/2`
-/

namespace A000151.P11521074379101918298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038055 (n + 1) : ℚ) / 2

end

end A000151.P11521074379101918298

/-! ## A000151.P14778094195090769839

`A271878(∑[n]+1)/2`
-/

namespace A000151.P14778094195090769839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271878 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A000151.P14778094195090769839

/-! ## A000151.P3165391881774410571

`record[A271878(n+1)/2]`
-/

namespace A000151.P3165391881774410571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271878 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000151.P3165391881774410571

/-! ## A000151.P7596206231296412572

`(A000081(n+1)+A339642(n+1)+A000081(n+1))/2`
-/

namespace A000151.P7596206231296412572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) + (A339642 (n + 1) + A000081 (n + 1)) : ℚ) / 2

end

end A000151.P7596206231296412572

/-! ## A000151.P194135892233748709

`A007748(2*(n+1))`
-/

namespace A000151.P194135892233748709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007748 (2 * (n + 1))

end

end A000151.P194135892233748709

/-! ## A000151.P12347948548428823656

`lcm(A007748(A005408(n)+1), A008836(n+1))`
-/

namespace A000151.P12347948548428823656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007748 (A005408 n + 1).toNat) (A008836 (n + 1))

end

end A000151.P12347948548428823656

/-! ## A000151.P18217821512263258850

`A242249(A052905(n+1)+2)`
-/

namespace A000151.P18217821512263258850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 (n + 1) + 2).toNat

end

end A000151.P18217821512263258850

/-! ## A000151.P12441006092472259575

`A000060(2*(n+1))-A000238(2*(n+1))`
-/

namespace A000151.P12441006092472259575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000060 (2 * (n + 1)) - A000238 (2 * (n + 1))

end

end A000151.P12441006092472259575

/-! ## A000151.P10545535710668705764

`2*A005751(2*(n+1))-A000238(2*(n+1))`
-/

namespace A000151.P10545535710668705764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (2 * (n + 1)) - A000238 (2 * (n + 1))

end

end A000151.P10545535710668705764

/-! ## A000151.P1421372578813900133

`2*A000060(2*(n+1))-A038056(2*(n+1))`
-/

namespace A000151.P1421372578813900133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000060 (2 * (n + 1)) - A038056 (2 * (n + 1))

end

end A000151.P1421372578813900133

/-!
# A000152: Number of ways of writing n as a sum of 16 squares.

The programs for A000152, there is no canonical definition to state claims against.
-/

/-! ## A000152.P8108634908094803034

`abs(A319307(n))`
-/

namespace A000152.P8108634908094803034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319307 n|

end

end A000152.P8108634908094803034

/-! ## A000152.P9357853430187078202

`A033999(n)*A319307(n)`
-/

namespace A000152.P9357853430187078202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319307 n

end

end A000152.P9357853430187078202

/-! ## A000152.P5786834490956581532

`gcd(A000038(n), A319307(n))`
-/

namespace A000152.P5786834490956581532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319307 n)

end

end A000152.P5786834490956581532

/-! ## A000152.P247216126061453358

`lcm(A000034(n), A319307(n))`
-/

namespace A000152.P247216126061453358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A319307 n)

end

end A000152.P247216126061453358

/-! ## A000152.P9184645791140934403

`(A004442(n)-n)*A319307(n)`
-/

namespace A000152.P9184645791140934403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A319307 n

end

end A000152.P9184645791140934403

/-! ## A000152.P18045906469673288707

`or((-1)^n, A324823(n+1))*A319307(n)`
-/

namespace A000152.P18045906469673288707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A324823 (n + 1)) * A319307 n

end

end A000152.P18045906469673288707

/-! ## A000152.P10050645392353058503

`A000145(n)/A286346(n)*A319307(n)`
-/

namespace A000152.P10050645392353058503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n : ℚ) / (A286346 n : ℚ) * (A319307 n : ℚ)

end

end A000152.P10050645392353058503

/-! ## A000152.P15571963040077284008

`A000156(n)*A319307(n)/A319309(n)`
-/

namespace A000152.P15571963040077284008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n * A319307 n : ℚ) / (A319309 n : ℚ)

end

end A000152.P15571963040077284008

/-!
# A000153: a(n) = n*a(n-1) + (n-2)*a(n-2), with a(0) = 0, a(1) = 1.

The programs for A000153, the canonical program `A000153.P16769019892581062257` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000153 has offset 0).

The definition of A000153 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(n-2)*a(n-2)` (program `A000153.P16769019892581062257`, by `A000153.P16769019892581062257.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000153.P16769019892581062257

`n*a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000153

/-- `n*a(n-1)+(n-2)*a(n-2)` -/
def P16769019892581062257.Spec : Prop :=
  ∀ n, P16769019892581062257.a n = A000153 n

theorem P16769019892581062257.correct : P16769019892581062257.Spec := by
  intro n
  simp only [A000153]

end A000153

/-! ## A000153.P18398822595128795171

`1/2*A055790(n)`
-/

namespace A000153.P18398822595128795171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A055790 n : ℚ)

end

end A000153.P18398822595128795171

namespace A000153

/-- `1/2*A055790(n)` -/
def P18398822595128795171.Spec : Prop :=
  ∀ n, P18398822595128795171.a n = (A000153 n : ℚ)

end A000153

/-! ## A000153.P13491874427626318475

`A055790(n)/2`
-/

namespace A000153.P13491874427626318475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055790 n : ℚ) / 2

end

end A000153.P13491874427626318475

namespace A000153

/-- `A055790(n)/2` -/
def P13491874427626318475.Spec : Prop :=
  ∀ n, P13491874427626318475.a n = (A000153 n : ℚ)

end A000153

/-! ## A000153.P1938231750306521613

`A247490(∑[n+3])`
-/

namespace A000153.P1938231750306521613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000153.P1938231750306521613

namespace A000153

/-- `A247490(∑[n+3])` -/
def P1938231750306521613.Spec : Prop :=
  ∀ n, P1938231750306521613.a n = A000153 n

end A000153

/-! ## A000153.P17342911310769308444

`A076731(A186752(n+2))`
-/

namespace A000153.P17342911310769308444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076731 (A186752 (n + 2)).toNat

end

end A000153.P17342911310769308444

namespace A000153

/-- `A076731(A186752(n+2))` -/
def P17342911310769308444.Spec : Prop :=
  ∀ n, P17342911310769308444.a n = A000153 n

end A000153

/-! ## A000153.P9248320051310053945

`A086764(A056943(∑[n+3]))`
-/

namespace A000153.P9248320051310053945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A056943 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000153.P9248320051310053945

namespace A000153

/-- `A086764(A056943(∑[n+3]))` -/
def P9248320051310053945.Spec : Prop :=
  ∀ n, P9248320051310053945.a n = A000153 n

end A000153

/-! ## A000153.P16027328045278034313

`(A259834(n+1)+A000166(n+1))/2`
-/

namespace A000153.P16027328045278034313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259834 (n + 1) + A000166 (n + 1) : ℚ) / 2

end

end A000153.P16027328045278034313

namespace A000153

/-- `(A259834(n+1)+A000166(n+1))/2` -/
def P16027328045278034313.Spec : Prop :=
  ∀ n, P16027328045278034313.a n = (A000153 n : ℚ)

end A000153

/-! ## A000153.P9161529422999558688

`A000166(n+1)-A331007(n+1)/2`
-/

namespace A000153.P9161529422999558688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 (n + 1) : ℚ) - (A331007 (n + 1) : ℚ) / 2

end

end A000153.P9161529422999558688

namespace A000153

/-- `A000166(n+1)-A331007(n+1)/2` -/
def P9161529422999558688.Spec : Prop :=
  ∀ n, P9161529422999558688.a n = (A000153 n : ℚ)

end A000153

/-! ## A000153.P16672392206174230912

`A060475(A027379(n)+A000007(n))`
-/

namespace A000153.P16672392206174230912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A027379 n + A000007 n).toNat

end

end A000153.P16672392206174230912

namespace A000153

/-- `A060475(A027379(n)+A000007(n))` -/
def P16672392206174230912.Spec : Prop :=
  ∀ n, P16672392206174230912.a n = A000153 n

end A000153

/-! ## A000153.P253998438387737114

`A060475(A055998(n)+A000038(n))`
-/

namespace A000153.P253998438387737114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A055998 n + A000038 n).toNat

end

end A000153.P253998438387737114

namespace A000153

/-- `A060475(A055998(n)+A000038(n))` -/
def P253998438387737114.Spec : Prop :=
  ∀ n, P253998438387737114.a n = A000153 n

end A000153

/-!
# A000155: Nearest integer to modified Bessel function K_n(1).

The programs for A000155, the canonical program `A000155.P14827663990115693541` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000155 has offset 0).

The definition of A000155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000155.P14827663990115693541

`a(n-4)+2*(n-3)*a(n-3)+2*(n-1)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000155

/-- `a(n-4)+2*(n-3)*a(n-3)+2*(n-1)*a(n-1)` -/
def P14827663990115693541.Spec : Prop :=
  ∀ n, P14827663990115693541.a n = A000155 n

theorem P14827663990115693541.correct : P14827663990115693541.Spec := by
  intro n
  simp only [A000155]

end A000155

/-! ## A000155.P7907057275867131882

`A054404(A144503(n))`
-/

namespace A000155.P7907057275867131882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A144503 n).toNat

end

end A000155.P7907057275867131882

namespace A000155

/-- `A054404(A144503(n))` -/
def P7907057275867131882.Spec : Prop :=
  ∀ n, P7907057275867131882.a n = A000155 n

end A000155

/-!
# A000156: Number of ways of writing n as a sum of 24 squares.

The programs for A000156, there is no canonical definition to state claims against.
-/

/-! ## A000156.P4890429511328323279

`abs(A319309(n))`
-/

namespace A000156.P4890429511328323279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319309 n|

end

end A000156.P4890429511328323279

/-! ## A000156.P6698952084946893582

`A033999(n)*A319309(n)`
-/

namespace A000156.P6698952084946893582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319309 n

end

end A000156.P6698952084946893582

/-! ## A000156.P4617368474705390077

`gcd(A000038(n), A319309(n))`
-/

namespace A000156.P4617368474705390077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319309 n)

end

end A000156.P4617368474705390077

/-! ## A000156.P5152678458676343293

`lcm(A000034(n), A319309(n))`
-/

namespace A000156.P5152678458676343293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A319309 n)

end

end A000156.P5152678458676343293

/-! ## A000156.P11291071927189126159

`A062157(n+1)*A319309(n)`
-/

namespace A000156.P11291071927189126159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A319309 n

end

end A000156.P11291071927189126159

/-! ## A000156.P17644969031381944799

`A000145(n)/A286346(n)*A319309(n)`
-/

namespace A000156.P17644969031381944799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000145 n : ℚ) / (A286346 n : ℚ) * (A319309 n : ℚ)

end

end A000156.P17644969031381944799

/-! ## A000156.P10681899722431723193

`A008683(Δ[comp[3*n]])*A319309(n)`
-/

namespace A000156.P10681899722431723193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A319309 n

end

end A000156.P10681899722431723193

/-! ## A000156.P13406366384851076662

`A008836(A143691(n+1))*A319309(n)`
-/

namespace A000156.P13406366384851076662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A143691 (n + 1)).toNat * A319309 n

end

end A000156.P13406366384851076662

/-! ## A000156.P8119173918794108936

`∑[A002448(n²)]*A319309(n)`
-/

namespace A000156.P8119173918794108936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A319309 n

end

end A000156.P8119173918794108936

/-!
# A000157: Number of Boolean functions of n variables.

The programs for A000157, there is no canonical definition to state claims against.
-/

/-! ## A000157.P16367147531990873459

`A000370(n+1)/2`
-/

namespace A000157.P16367147531990873459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000370 (n + 1) : ℚ) / 2

end

end A000157.P16367147531990873459

/-!
# A000158: Number of partitions into non-integral powers.

The programs for A000158, there is no canonical definition to state claims against.
-/

/-! ## A000158.P9637762270089059306

`A259447(∑[n+2]+4)`
-/

namespace A000158.P9637762270089059306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000158.P9637762270089059306

/-! ## A000158.P5467641992995830281

`record[gcd(A259447(n+4), A259475(n))]`
-/

namespace A000158.P5467641992995830281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259447 (n + 4)) (A259475 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000158.P5467641992995830281

/-! ## A000158.P17925425581843638488

`A259447(A167614(n+1))+A185284(n)`
-/

namespace A000158.P17925425581843638488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A167614 (n + 1)).toNat + A185284 n

end

end A000158.P17925425581843638488

/-! ## A000158.P3085770116151800609

`A259447(A167614(n+1))+A185293(n)`
-/

namespace A000158.P3085770116151800609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A167614 (n + 1)).toNat + A185293 n

end

end A000158.P3085770116151800609

/-!
# A000159: a(n) = A058087(n,n-3).

The programs for A000159, there is no canonical definition to state claims against.
-/

/-! ## A000159.P8187052641286498342

`A094314(A167614(n+2))`
-/

namespace A000159.P8187052641286498342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A167614 (n + 2)).toNat

end

end A000159.P8187052641286498342

/-! ## A000159.P2469244805301254687

`A058087(eq[3, A025581(n)])`
-/

namespace A000159.P2469244805301254687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000159.P2469244805301254687

/-! ## A000159.P17526090571175441729

`A094314(eq[3, A002262(n)])`
-/

namespace A000159.P17526090571175441729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000159.P17526090571175441729

/-! ## A000159.P16471042652783940524

`A156996(eq[3, A002262(n)])`
-/

namespace A000159.P16471042652783940524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000159.P16471042652783940524

/-! ## A000159.P8531986297746152265

`A058087(A052905(n+1)+1)`
-/

namespace A000159.P8531986297746152265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A052905 (n + 1) + 1).toNat

end

end A000159.P8531986297746152265

/-! ## A000159.P1107239338101842166

`A058087(A055999(n+1)+2)`
-/

namespace A000159.P1107239338101842166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A055999 (n + 1) + 2).toNat

end

end A000159.P1107239338101842166

/-! ## A000159.P13721259098326912098

`A094314(A253145(n+2)+3)`
-/

namespace A000159.P13721259098326912098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A253145 (n + 2) + 3).toNat

end

end A000159.P13721259098326912098

/-! ## A000159.P16154649589120791343

`A094314(A000096(n+2)+4)`
-/

namespace A000159.P16154649589120791343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A000096 (n + 2) + 4).toNat

end

end A000159.P16154649589120791343

/-! ## A000159.P10092390058090677109

`A094314(A034856(n+2)+5)`
-/

namespace A000159.P10092390058090677109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A034856 (n + 2) + 5).toNat

end

end A000159.P10092390058090677109

/-! ## A000159.P16813619952148102120

`A094314(A055998(n+1)+6)`
-/

namespace A000159.P16813619952148102120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A055998 (n + 1) + 6).toNat

end

end A000159.P16813619952148102120

/-!
# A000160: Number of partitions into non-integral powers.

The programs for A000160, there is no canonical definition to state claims against.
-/

/-! ## A000160.P13825372500304656071

`A259447(A141214(n)+7)`
-/

namespace A000160.P13825372500304656071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A141214 n + 7).toNat

end

end A000160.P13825372500304656071

/-! ## A000160.P2197708601281765171

`A259447(A052905(n)+9)`
-/

namespace A000160.P2197708601281765171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A052905 n + 9).toNat

end

end A000160.P2197708601281765171

/-! ## A000160.P1450658501202364996

`A259447(A055999(n)+10)`
-/

namespace A000160.P1450658501202364996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259447 (A055999 n + 10).toNat

end

end A000160.P1450658501202364996

/-!
# A000161: Number of partitions of n into 2 squares.

The programs for A000161, the canonical program `A000161.P12733227588245460575` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000161 has offset 0).

The definition of A000161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000161.P11457087645126101012

`ceil(A000925(n)/2)`
-/

namespace A000161.P11457087645126101012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000925 n : ℚ) / 2⌉

end

end A000161.P11457087645126101012

namespace A000161

/-- `ceil(A000925(n)/2)` -/
def P11457087645126101012.Spec : Prop :=
  ∀ n, P11457087645126101012.a n = A000161 n

end A000161

/-! ## A000161.P13124477316375676863

`ceil(A004018(n)/8)`
-/

namespace A000161.P13124477316375676863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004018 n : ℚ) / 8⌉

end

end A000161.P13124477316375676863

namespace A000161

/-- `ceil(A004018(n)/8)` -/
def P13124477316375676863.Spec : Prop :=
  ∀ n, P13124477316375676863.a n = A000161 n

end A000161

/-! ## A000161.P11116071287423089878

`A025426(n)+char[n²]`
-/

namespace A000161.P11116071287423089878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000161.P11116071287423089878

namespace A000161

/-- `A025426(n)+char[n²]` -/
def P11116071287423089878.Spec : Prop :=
  ∀ n, P11116071287423089878.a n = A000161 n

end A000161

/-! ## A000161.P12733227588245460575

`ceil((A063725(n)+char[(n+1)²]+char[n²])/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A000161

/-- `ceil((A063725(n)+char[(n+1)²]+char[n²])/2)` -/
def P12733227588245460575.Spec : Prop :=
  ∀ n, P12733227588245460575.a n = A000161 n

theorem P12733227588245460575.correct : P12733227588245460575.Spec := by
  intro n
  simp only [A000161]

end A000161

/-! ## A000161.P16060271685754908071

`A110654(A000925(n))`
-/

namespace A000161.P16060271685754908071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat

end

end A000161.P16060271685754908071

namespace A000161

/-- `A110654(A000925(n))` -/
def P16060271685754908071.Spec : Prop :=
  ∀ n, P16060271685754908071.a n = A000161 n

end A000161

/-! ## A000161.P2815551996238542903

`A004526(A000925(n)+1)`
-/

namespace A000161.P2815551996238542903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000925 n + 1).toNat

end

end A000161.P2815551996238542903

namespace A000161

/-- `A004526(A000925(n)+1)` -/
def P2815551996238542903.Spec : Prop :=
  ∀ n, P2815551996238542903.a n = A000161 n

end A000161

/-! ## A000161.P17778930432593695501

`A093709(n)+A025441(n)`
-/

namespace A000161.P17778930432593695501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n + A025441 n

end

end A000161.P17778930432593695501

namespace A000161

/-- `A093709(n)+A025441(n)` -/
def P17778930432593695501.Spec : Prop :=
  ∀ n, P17778930432593695501.a n = A000161 n

end A000161

/-! ## A000161.P17276735573362442877

`A379480(n)+A025435(n)`
-/

namespace A000161.P17276735573362442877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n + A025435 n

end

end A000161.P17276735573362442877

namespace A000161

/-- `A379480(n)+A025435(n)` -/
def P17276735573362442877.Spec : Prop :=
  ∀ n, P17276735573362442877.a n = A000161 n

end A000161

/-! ## A000161.P12434817511010261684

`A000164(n)-A025427(n)`
-/

namespace A000161.P12434817511010261684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A025427 n

end

end A000161.P12434817511010261684

namespace A000161

/-- `A000164(n)-A025427(n)` -/
def P12434817511010261684.Spec : Prop :=
  ∀ n, P12434817511010261684.a n = A000161 n

end A000161

/-! ## A000161.P14846250132479296387

`A000925(n)-A025435(n)`
-/

namespace A000161.P14846250132479296387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - A025435 n

end

end A000161.P14846250132479296387

namespace A000161

/-- `A000925(n)-A025435(n)` -/
def P14846250132479296387.Spec : Prop :=
  ∀ n, P14846250132479296387.a n = A000161 n

end A000161

/-! ## A000161.P2487771776970859349

`A002265(2*(A000925(n)+1))`
-/

namespace A000161.P2487771776970859349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A000925 n + 1)).toNat

end

end A000161.P2487771776970859349

namespace A000161

/-- `A002265(2*(A000925(n)+1))` -/
def P2487771776970859349.Spec : Prop :=
  ∀ n, P2487771776970859349.a n = A000161 n

end A000161

/-! ## A000161.P2167928649223111470

`A379480(2*n)+A025426(n)`
-/

namespace A000161.P2167928649223111470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (2 * n) + A025426 n

end

end A000161.P2167928649223111470

namespace A000161

/-- `A379480(2*n)+A025426(n)` -/
def P2167928649223111470.Spec : Prop :=
  ∀ n, P2167928649223111470.a n = A000161 n

end A000161

/-! ## A000161.P9287559106025875612

`A025435(2*n)+char[n²]`
-/

namespace A000161.P9287559106025875612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000161.P9287559106025875612

namespace A000161

/-- `A025435(2*n)+char[n²]` -/
def P9287559106025875612.Spec : Prop :=
  ∀ n, P9287559106025875612.a n = A000161 n

end A000161

/-! ## A000161.P12178867982409591128

`A000925(2*n)-A025426(n)`
-/

namespace A000161.P12178867982409591128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * n) - A025426 n

end

end A000161.P12178867982409591128

namespace A000161

/-- `A000925(2*n)-A025426(n)` -/
def P12178867982409591128.Spec : Prop :=
  ∀ n, P12178867982409591128.a n = A000161 n

end A000161

/-! ## A000161.P15948924740437487021

`A025441(5^A000925(n))`
-/

namespace A000161.P15948924740437487021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A000925 n : ℤ))).toNat

end

end A000161.P15948924740437487021

namespace A000161

/-- `A025441(5^A000925(n))` -/
def P15948924740437487021.Spec : Prop :=
  ∀ n, P15948924740437487021.a n = A000161 n

end A000161

/-!
# A000162: Number of 3-dimensional polyominoes (or polycubes) with n cells.

The programs for A000162, there is no canonical definition to state claims against.
-/

/-! ## A000162.P1721639912676481180

`A038119(n+1)+A371397(n+1)`
-/

namespace A000162.P1721639912676481180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038119 (n + 1) + A371397 (n + 1)

end

end A000162.P1721639912676481180

/-! ## A000162.P14736594357545113664

`2*A371397(n+1)+A007743(n+1)`
-/

namespace A000162.P14736594357545113664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371397 (n + 1) + A007743 (n + 1)

end

end A000162.P14736594357545113664

/-! ## A000162.P693135654212453676

`2*A038119(n+1)-A007743(n+1)`
-/

namespace A000162.P693135654212453676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038119 (n + 1) - A007743 (n + 1)

end

end A000162.P693135654212453676

/-! ## A000162.P17148319450871889271

`A371397(A000027(n+1))+A371397(n+1)+A007743(n+1)`
-/

namespace A000162.P17148319450871889271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371397 (A000027 (n + 1)).toNat + (A371397 (n + 1) + A007743 (n + 1))

end

end A000162.P17148319450871889271

/-! ## A000162.P11704985178235788847

`A006759(n+1)+Δ[A173271(n)]`
-/

namespace A000162.P11704985178235788847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006759 (n + 1) + (f1 (n + 1) - f1 n)

end

end A000162.P11704985178235788847

/-!
# A000163: Series-parallel numbers.

The programs for A000163, there is no canonical definition to state claims against.
-/

/-! ## A000163.P18360988632118723281

`A036654(∑[n+2]+3)`
-/

namespace A000163.P18360988632118723281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036654 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000163.P18360988632118723281

/-! ## A000163.P2468678488573675532

`2*A292505(A110286(n))`
-/

namespace A000163.P2468678488573675532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292505 (A110286 n).toNat

end

end A000163.P2468678488573675532

/-!
# A000164: Number of partitions of n into 3 squares (allowing part zero).

The programs for A000164, there is no canonical definition to state claims against.
-/

/-! ## A000164.P8259131134148604164

`A025427(n)+A000161(n)`
-/

namespace A000164.P8259131134148604164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

end

end A000164.P8259131134148604164

/-! ## A000164.P15919406184208975018

`A002635(n)-A025428(n)`
-/

namespace A000164.P15919406184208975018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

end

end A000164.P15919406184208975018

/-! ## A000164.P8735508117354997525

`A110654(A000925(n))+A025427(n)`
-/

namespace A000164.P8735508117354997525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

end

end A000164.P8735508117354997525

/-! ## A000164.P14493878366618970764

`A216282(A008574(n))+A025436(n)`
-/

namespace A000164.P14493878366618970764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A008574 n).toNat + A025436 n

end

end A000164.P14493878366618970764

/-! ## A000164.P10562467440240065106

`A010052(n)+A025427(n)+A025426(n)`
-/

namespace A000164.P10562467440240065106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

end

end A000164.P10562467440240065106

/-! ## A000164.P17083083248084552577

`A216282(A022144(n))+A025436(n)`
-/

namespace A000164.P17083083248084552577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat + A025436 n

end

end A000164.P17083083248084552577

/-! ## A000164.P7611260690629944919

`A243148(∑[n]+3)+A000161(n)`
-/

namespace A000164.P7611260690629944919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + A000161 n

end

end A000164.P7611260690629944919

/-!
# A000165: Double factorial of even numbers: (2n)!! = 2^n*n!.

The programs for A000165, the canonical program `A000165.P16837922414982216743` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000165 has offset 0).

The definition of A000165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*n!` (program `A000165.P16837922414982216743`, by `A000165.P16837922414982216743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000165.P16837922414982216743

`2^n*n!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000165

/-- `2^n*n!` -/
def P16837922414982216743.Spec : Prop :=
  ∀ n, (P16837922414982216743.a n : ℤ) = A000165 n

theorem P16837922414982216743.correct : P16837922414982216743.Spec := by
  intro n
  simp only [A000165]

end A000165

/-! ## A000165.P5289549580137789310

`2*n*a(n-1)` with `a(0)=1`
-/

namespace A000165.P5289549580137789310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n * a (n - 1))

end

end A000165.P5289549580137789310

namespace A000165

/-- `2*n*a(n-1)` -/
def P5289549580137789310.Spec : Prop :=
  ∀ n, (P5289549580137789310.a n : ℤ) = A000165 n

end A000165

/-! ## A000165.P16808714196652299581

`A006882(2*n)`
-/

namespace A000165.P16808714196652299581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n)

end

end A000165.P16808714196652299581

namespace A000165

/-- `A006882(2*n)` -/
def P16808714196652299581.Spec : Prop :=
  ∀ n, P16808714196652299581.a n = A000165 n

end A000165

/-! ## A000165.P9541748023869021943

`A000142(n)*A000079(n)`
-/

namespace A000165.P9541748023869021943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000079 n

end

end A000165.P9541748023869021943

namespace A000165

/-- `A000142(n)*A000079(n)` -/
def P9541748023869021943.Spec : Prop :=
  ∀ n, P9541748023869021943.a n = A000165 n

end A000165

/-! ## A000165.P4199328839499884676

`∏[floor(2/acot(n))]`
-/

namespace A000165.P4199328839499884676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000165.P4199328839499884676

namespace A000165

/-- `∏[floor(2/acot(n))]` -/
def P4199328839499884676.Spec : Prop :=
  ∀ n, P4199328839499884676.a n = A000165 n

end A000165

/-! ## A000165.P8020570247182104746

`∏[log2(lcm(2, 4^n))]`
-/

namespace A000165.P8020570247182104746
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 (4 ^ n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000165.P8020570247182104746

namespace A000165

/-- `∏[log2(lcm(2, 4^n))]` -/
def P8020570247182104746.Spec : Prop :=
  ∀ n, P8020570247182104746.a n = (A000165 n : ℝ)

end A000165

/-! ## A000165.P6486594614619670583

`n!/2^-n`
-/

namespace A000165.P6486594614619670583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A000165.P6486594614619670583

namespace A000165

/-- `n!/2^-n` -/
def P6486594614619670583.Spec : Prop :=
  ∀ n, P6486594614619670583.a n = (A000165 n : ℚ)

theorem P6486594614619670583.correct : P6486594614619670583.Spec := by
  intro n
  simp only [A000165, Nat.add_sub_cancel, A000165.P6486594614619670583.a, A000165.P16837922414982216743.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000165

/-! ## A000165.P17723283145086556179

`2^(log2(n!)+n)`
-/

namespace A000165.P17723283145086556179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

end

end A000165.P17723283145086556179

namespace A000165

/-- `2^(log2(n!)+n)` -/
def P17723283145086556179.Spec : Prop :=
  ∀ n, P17723283145086556179.a n = (A000165 n : ℝ)

end A000165

/-! ## A000165.P4158555570217088314

`∏[round(1/acot(2*n))]`
-/

namespace A000165.P4158555570217088314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000165.P4158555570217088314

namespace A000165

/-- `∏[round(1/acot(2*n))]` -/
def P4158555570217088314.Spec : Prop :=
  ∀ n, P4158555570217088314.a n = A000165 n

end A000165

/-!
# A000166: Subfactorial or rencontres numbers, or derangements: number of permutations of n elements with no fixed points.

The programs for A000166, the canonical program `A000166.P17301805902585999237` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000166 has offset 0).

The definition of A000166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000166.P17301805902585999237

`n*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000166

/-- `n*a(n-1)+(-1)^n` -/
def P17301805902585999237.Spec : Prop :=
  ∀ n, P17301805902585999237.a n = A000166 n

theorem P17301805902585999237.correct : P17301805902585999237.Spec := by
  intro n
  simp only [A000166]

end A000166

/-! ## A000166.P17598426150169885042

`(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A000166.P17598426150169885042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) + a (n - 2))

end

end A000166.P17598426150169885042

namespace A000166

/-- `(n-1)*(a(n-1)+a(n-2))` -/
def P17598426150169885042.Spec : Prop :=
  ∀ n, P17598426150169885042.a n = A000166 n

end A000166

/-! ## A000166.P18007168031471533592

`xor(1, n*a(n-1))` with `a(0)=1`
-/

namespace A000166.P18007168031471533592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * a (n - 1))

end

end A000166.P18007168031471533592

namespace A000166

/-- `xor(1, n*a(n-1))` -/
def P18007168031471533592.Spec : Prop :=
  ∀ n, (P18007168031471533592.a n : ℤ) = A000166 n

end A000166

/-! ## A000166.P1004945367627000334

`xor(1, a(n-1)/tan(acot(n)))` with `a(0)=1`
-/

namespace A000166.P1004945367627000334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A000166.P1004945367627000334

namespace A000166

/-- `xor(1, a(n-1)/tan(acot(n)))` -/
def P1004945367627000334.Spec : Prop :=
  ∀ n, P1004945367627000334.a n = A000166 n

end A000166

/-! ## A000166.P9531769427380613988

`xor(1, a(n-1)/cot(atan(n)))` with `a(0)=1`
-/

namespace A000166.P9531769427380613988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A000166.P9531769427380613988

namespace A000166

/-- `xor(1, a(n-1)/cot(atan(n)))` -/
def P9531769427380613988.Spec : Prop :=
  ∀ n, P9531769427380613988.a n = A000166 n

end A000166

/-! ## A000166.P7097380912053647324

`xor(1, a(n-1)/n^(-1))` with `a(0)=1`
-/

namespace A000166.P7097380912053647324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A000166.P7097380912053647324

namespace A000166

/-- `xor(1, a(n-1)/n^(-1))` -/
def P7097380912053647324.Spec : Prop :=
  ∀ n, P7097380912053647324.a n = A000166 n

end A000166

/-! ## A000166.P16565660539850509009

`(-1)^n+n*a(n-1)` with `a(0)=1`
-/

namespace A000166.P16565660539850509009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + (n : ℤ) * a (n - 1)

end

end A000166.P16565660539850509009

namespace A000166

/-- `(-1)^n+n*a(n-1)` -/
def P16565660539850509009.Spec : Prop :=
  ∀ n, P16565660539850509009.a n = A000166 n

theorem P16565660539850509009.correct : P16565660539850509009.Spec := by
  intro n
  simp only [A000166, Nat.add_sub_cancel, A000166.P16565660539850509009.a, A000166.P17301805902585999237.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000166

/-! ## A000166.P7943442621941494134

`(-1)^n+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A000166.P7943442621941494134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((-1) ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A000166.P7943442621941494134

namespace A000166

/-- `(-1)^n+a(n-1)/n^(-1)` -/
def P7943442621941494134.Spec : Prop :=
  ∀ n, P7943442621941494134.a n = (A000166 n : ℚ)

end A000166

/-! ## A000166.P6904037984850143221

`xor(1, floor(n*a(floor(n²/(n+1)))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000166.P6904037984850143221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A000166.P6904037984850143221

namespace A000166

/-- `xor(1, floor(n*a(floor(n²/(n+1)))))` -/
def P6904037984850143221.Spec : Prop :=
  ∀ n, (P6904037984850143221.a n : ℤ) = A000166 n

end A000166

/-! ## A000166.P13944984061280925370

`1-(2*a(n-1)%2-n*a(n-1))` with `a(0)=1`
-/

namespace A000166.P13944984061280925370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (2 * Int.tmod (a (n - 1)) 2 - (n : ℤ) * a (n - 1))

end

end A000166.P13944984061280925370

namespace A000166

/-- `1-(2*a(n-1)%2-n*a(n-1))` -/
def P13944984061280925370.Spec : Prop :=
  ∀ n, P13944984061280925370.a n = A000166 n

end A000166

/-!
# A000167: Nearest integer to modified Bessel function K_n(2).

The programs for A000167, there is no canonical definition to state claims against.
-/

/-! ## A000167.P12626008256012908197

`floor(A370524(n)/2)`
-/

namespace A000167.P12626008256012908197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A370524 n : ℚ) / 2⌋

end

end A000167.P12626008256012908197

/-! ## A000167.P2081456881243798734

`floor(A370527(A152948(n+1))/2)`
-/

namespace A000167.P2081456881243798734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A370527 (A152948 (n + 1)).toNat : ℚ) / 2⌋

end

end A000167.P2081456881243798734

/-! ## A000167.P10615988084154797999

`A004526(A370524(n))`
-/

namespace A000167.P10615988084154797999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A370524 n).toNat

end

end A000167.P10615988084154797999

/-! ## A000167.P13724065583983518535

`A025480(A370524(n)-char[A319866(n+1)])`
-/

namespace A000167.P13724065583983518535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319866 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A370524 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A000167.P13724065583983518535

/-! ## A000167.P14233467026263711824

`A025480(A370524(n)-char[A074427(3*(n+1))])`
-/

namespace A000167.P14233467026263711824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074427 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A370524 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A000167.P14233467026263711824

/-!
# A000168: a(n) = 2*3^n*(2*n)!/(n!*(n+2)!).

The programs for A000168, the canonical program `A000168.P4170136352937727920` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000168 has offset 0).

The definition of A000168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000168.P4170136352937727920

`2*3^n*A000108(n)/(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000168

/-- `2*3^n*A000108(n)/(n+2)` -/
def P4170136352937727920.Spec : Prop :=
  ∀ n, P4170136352937727920.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P5619124762946547936

`2*3^n*(2*n)!/(n!*(n+2)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000168.P5619124762946547936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n * Nat.factorial (n + 2) : ℚ)

end

end A000168.P5619124762946547936

namespace A000168

/-- `2*3^n*(2*n)!/(n!*(n+2)!)` -/
def P5619124762946547936.Spec : Prop :=
  ∀ n, P5619124762946547936.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P11459790489726492060

`3^(n-1)*A007054(n)`
-/

namespace A000168.P11459790489726492060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A007054 n : ℚ)

end

end A000168.P11459790489726492060

namespace A000168

/-- `3^(n-1)*A007054(n)` -/
def P11459790489726492060.Spec : Prop :=
  ∀ n, P11459790489726492060.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P202004021724589141

`A000244(n)²/A027472(n+3)*A000984(n)`
-/

namespace A000168.P202004021724589141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 : ℚ) / (A027472 (n + 3) : ℚ) * (A000984 n : ℚ)

end

end A000168.P202004021724589141

namespace A000168

/-- `A000244(n)²/A027472(n+3)*A000984(n)` -/
def P202004021724589141.Spec : Prop :=
  ∀ n, P202004021724589141.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P14686363035633587558

`3*(4*n-2)*a(n-1)/(n+2)` with `a(0)=1`
-/

namespace A000168.P14686363035633587558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (((4 * n : ℤ) - 2 : ℚ) * a (n - 1)) / (n + 2 : ℚ)

end

end A000168.P14686363035633587558

namespace A000168

/-- `3*(4*n-2)*a(n-1)/(n+2)` -/
def P14686363035633587558.Spec : Prop :=
  ∀ n, P14686363035633587558.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P17278995433073900765

`A275607(n)/(n+1)`
-/

namespace A000168.P17278995433073900765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275607 n : ℚ) / (n + 1 : ℚ)

end

end A000168.P17278995433073900765

namespace A000168

/-- `A275607(n)/(n+1)` -/
def P17278995433073900765.Spec : Prop :=
  ∀ n, P17278995433073900765.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P6503414080046547969

`A101600(n)/(2*n+1)`
-/

namespace A000168.P6503414080046547969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101600 n : ℚ) / (2 * n + 1 : ℚ)

end

end A000168.P6503414080046547969

namespace A000168

/-- `A101600(n)/(2*n+1)` -/
def P6503414080046547969.Spec : Prop :=
  ∀ n, P6503414080046547969.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P14070004279137651072

`2*A005159(n)-A275607(n)`
-/

namespace A000168.P14070004279137651072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005159 n - A275607 n

end

end A000168.P14070004279137651072

namespace A000168

/-- `2*A005159(n)-A275607(n)` -/
def P14070004279137651072.Spec : Prop :=
  ∀ n, P14070004279137651072.a n = A000168 n

end A000168

/-! ## A000168.P1303091799517439966

`A098658(n)/∑[n+1]`
-/

namespace A000168.P1303091799517439966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098658 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A000168.P1303091799517439966

namespace A000168

/-- `A098658(n)/∑[n+1]` -/
def P1303091799517439966.Spec : Prop :=
  ∀ n, P1303091799517439966.a n = (A000168 n : ℚ)

end A000168

/-! ## A000168.P3895937435783232601

`A098662(2*n)/∑[n+1]`
-/

namespace A000168.P3895937435783232601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098662 (2 * n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A000168.P3895937435783232601

namespace A000168

/-- `A098662(2*n)/∑[n+1]` -/
def P3895937435783232601.Spec : Prop :=
  ∀ n, P3895937435783232601.a n = (A000168 n : ℚ)

end A000168

/-!
# A000169: Number of labeled rooted trees with n nodes: n^(n-1).

The programs for A000169, the canonical program `A000169.P4048163930515893600` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000169 has offset 1).

The definition of A000169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n` (program `A000169.P4048163930515893600`, by `A000169.P4048163930515893600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000169.P4048163930515893600

`(n+1)^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000169

/-- `(n+1)^n` -/
def P4048163930515893600.Spec : Prop :=
  ∀ n, (P4048163930515893600.a n : ℤ) = A000169 (n + 1)

theorem P4048163930515893600.correct : P4048163930515893600.Spec := by
  intro n
  simp only [A000169, Nat.add_sub_cancel]

end A000169

/-!
# A000170: Number of ways of placing n nonattacking queens on an n X n board.

The programs for A000170, there is no canonical definition to state claims against.
-/

/-! ## A000170.P14858350121160965840

`A319284(∑[n]+n)`
-/

namespace A000170.P14858350121160965840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000170.P14858350121160965840

/-! ## A000170.P10976340743625085518

`and(-1, A319284(A000096(n)))`
-/

namespace A000170.P10976340743625085518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A319284 (A000096 n).toNat)

end

end A000170.P10976340743625085518

/-! ## A000170.P13427488403297336165

`and(-1, A319284(A212342(n+1)))`
-/

namespace A000170.P13427488403297336165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A319284 (A212342 (n + 1)).toNat)

end

end A000170.P13427488403297336165

/-! ## A000170.P8170179368861351760

`A319284(n*(n+3)/2)%A205352(2*(n+2))`
-/

namespace A000170.P8170179368861351760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319284 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat) (A205352 (2 * (n + 2)))

end

end A000170.P8170179368861351760

/-! ## A000170.P16616318229481679831

`A319284(A000096(n))+A185264(n)`
-/

namespace A000170.P16616318229481679831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319284 (A000096 n).toNat + A185264 n

end

end A000170.P16616318229481679831

/-!
# A000171: Number of self-complementary graphs with n nodes.

The programs for A000171, there is no canonical definition to state claims against.
-/

/-! ## A000171.P4209284954121634001

`A007869(n+1)-A054960(n+1)`
-/

namespace A000171.P4209284954121634001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007869 (n + 1) - A054960 (n + 1)

end

end A000171.P4209284954121634001

/-! ## A000171.P334438851630643229

`2*A007869(n+1)-Δ[A006897(n)]`
-/

namespace A000171.P334438851630643229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007869 (n + 1) - (f1 (n + 1) - f1 n)

end

end A000171.P334438851630643229

/-! ## A000171.P1436978798091460293

`2*A054931(n+1)-A054915(n+1)`
-/

namespace A000171.P1436978798091460293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054931 (n + 1) - A054915 (n + 1)

end

end A000171.P1436978798091460293

/-! ## A000171.P1646045004111777154

`A000088(n+1)-(A054960(n+1)+A054960(n+1))`
-/

namespace A000171.P1646045004111777154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A054960 (n + 1) + A054960 (n + 1))

end

end A000171.P1646045004111777154

/-! ## A000171.P6118619068695868457

`abs(A137858(n+1)-A137861(n+1))`
-/

namespace A000171.P6118619068695868457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137858 (n + 1) - A137861 (n + 1)|

end

end A000171.P6118619068695868457

/-!
# A000172: The Franel number a(n) = Sum_{k = 0..n} binomial(n,k)^3.

The programs for A000172, there is no canonical definition to state claims against.
-/

/-! ## A000172.P9958956690739522027

`abs(Δ[A207318(n)])`
-/

namespace A000172.P9958956690739522027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000172.P9958956690739522027

/-! ## A000172.P17392728316610740565

`A336163(∑[n+1]+n)`
-/

namespace A000172.P17392728316610740565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000172.P17392728316610740565

/-! ## A000172.P3532862208466165547

`A181418(n)/A000984(n)`
-/

namespace A000172.P3532862208466165547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181418 n : ℚ) / (A000984 n : ℚ)

end

end A000172.P3532862208466165547

/-! ## A000172.P6669178572286294456

`A181418(n)/record[A126930(n)]`
-/

namespace A000172.P6669178572286294456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181418 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A000172.P6669178572286294456

/-! ## A000172.P3884321600649119697

`A181418(n)/A126930(2*n)`
-/

namespace A000172.P3884321600649119697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181418 n : ℚ) / (A126930 (2 * n) : ℚ)

end

end A000172.P3884321600649119697

/-! ## A000172.P3142393657353357333

`A181418(n)/A092392(A000217(n))`
-/

namespace A000172.P3142393657353357333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181418 n : ℚ) / (A092392 (A000217 n).toNat : ℚ)

end

end A000172.P3142393657353357333

/-! ## A000172.P3512606610414232774

`A059066(A000326(n))`
-/

namespace A000172.P3512606610414232774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A000326 n).toNat

end

end A000172.P3512606610414232774

/-! ## A000172.P11677386720578402505

`A059066(A143689(n)-1)`
-/

namespace A000172.P11677386720578402505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059066 (A143689 n - 1).toNat

end

end A000172.P11677386720578402505

/-! ## A000172.P16464174541317359134

`sqrt(A052144(n))`
-/

namespace A000172.P16464174541317359134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A052144 n : ℝ)

end

end A000172.P16464174541317359134

/-! ## A000172.P11092127502559073396

`root(A052144(n), A085058(2*n))`
-/

namespace A000172.P11092127502559073396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052144 n : ℝ) ^ (1 / (A085058 (2 * n) : ℝ))

end

end A000172.P11092127502559073396

/-!
# A000173: Unitary-sociable numbers (smallest member of each cycle).

The programs for A000173, there is no canonical definition to state claims against.
-/

/-! ## A000173.P8587724827307369341

`6*A097323(n+1)`
-/

namespace A000173.P8587724827307369341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A097323 (n + 1)

end

end A000173.P8587724827307369341

/-!
# A000174: Number of partitions of n into 5 squares.

The programs for A000174, there is no canonical definition to state claims against.
-/

/-! ## A000174.P14941017550574017152

`A025429(n)+A002635(n)`
-/

namespace A000174.P14941017550574017152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + A002635 n

end

end A000174.P14941017550574017152

/-! ## A000174.P5906592338797483092

`A000177(n)-A025430(n)`
-/

namespace A000174.P5906592338797483092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - A025430 n

end

end A000174.P5906592338797483092

/-! ## A000174.P7504683655316068662

`A000164(n)+A025429(n)+A025428(n)`
-/

namespace A000174.P7504683655316068662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + (A025429 n + A025428 n)

end

end A000174.P7504683655316068662

/-! ## A000174.P12506098078586133126

`A025422(n)-(A025431(n)+A025430(n))`
-/

namespace A000174.P12506098078586133126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n - (A025431 n + A025430 n)

end

end A000174.P12506098078586133126

/-! ## A000174.P7871745840466072170

`A001489(A025430(n))+A000177(A028310(n))`
-/

namespace A000174.P7871745840466072170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A025430 n).toNat + A000177 (A028310 n).toNat

end

end A000174.P7871745840466072170

/-! ## A000174.P12513257304104891688

`A001489(A025430(n))+A000177(A233583(n+1))`
-/

namespace A000174.P12513257304104891688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A025430 n).toNat + A000177 (A233583 (n + 1)).toNat

end

end A000174.P12513257304104891688

/-!
# A000175: Related to zeros of Bessel function.

The programs for A000175, there is no canonical definition to state claims against.
-/

/-! ## A000175.P13229539728039220004

`A158616(A158611(n+1)+A053497(n)²)`
-/

namespace A000175.P13229539728039220004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158616 (A158611 (n + 1) + A053497 n ^ 2).toNat

end

end A000175.P13229539728039220004

/-! ## A000175.P9691179522118279586

`A284345(∑[3^A210590(n)])`
-/

namespace A000175.P9691179522118279586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A210590 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000175.P9691179522118279586

/-!
# A000176: Generalized tangent numbers d_(n,2).

The programs for A000176, there is no canonical definition to state claims against.
-/

/-! ## A000176.P5815355720240173241

`A235606(∑[n+1]+2)`
-/

namespace A000176.P5815355720240173241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000176.P5815355720240173241

/-! ## A000176.P9360043537948543213

`record[A023531(n)*A235606(n+3)]`
-/

namespace A000176.P9360043537948543213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A235606 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000176.P9360043537948543213

/-! ## A000176.P14779630225292660588

`record[gcd(A235606(n+3), A264428(n+1))]`
-/

namespace A000176.P14779630225292660588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235606 (n + 3)) (A264428 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000176.P14779630225292660588

/-!
# A000177: Number of partitions of n into 6 squares.

The programs for A000177, there is no canonical definition to state claims against.
-/

/-! ## A000177.P2167296239172583124

`A025430(n)+A000174(n)`
-/

namespace A000177.P2167296239172583124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n + A000174 n

end

end A000177.P2167296239172583124

/-! ## A000177.P2651771580659158823

`A025422(n)-A025431(n)`
-/

namespace A000177.P2651771580659158823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n - A025431 n

end

end A000177.P2651771580659158823

/-! ## A000177.P13622783927224143632

`A002635(n)+A025430(n)+A025429(n)`
-/

namespace A000177.P13622783927224143632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + (A025430 n + A025429 n)

end

end A000177.P13622783927224143632

/-! ## A000177.P6301909542163105744

`A025423(n)-(A025432(n)+A025431(n))`
-/

namespace A000177.P6301909542163105744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 n - (A025432 n + A025431 n)

end

end A000177.P6301909542163105744

/-! ## A000177.P6396318637065883775

`A025430(A028310(n))-A001489(A000174(n))`
-/

namespace A000177.P6396318637065883775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 (A028310 n).toNat - A001489 (A000174 n).toNat

end

end A000177.P6396318637065883775

/-!
# A000178: Superfactorials: product of first n factorials.

The programs for A000178, the canonical program `A000178.P16289225849700583148` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000178 has offset 0).

The definition of A000178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000178.P16289225849700583148

`n!*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000178

/-- `n!*a(n-1)` -/
def P16289225849700583148.Spec : Prop :=
  ∀ n, (P16289225849700583148.a n : ℤ) = A000178 n

theorem P16289225849700583148.correct : P16289225849700583148.Spec := by
  intro n
  simp only [A000178]

end A000178

/-! ## A000178.P13309645164925762454

`sqrt(A055209(n))`
-/

namespace A000178.P13309645164925762454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055209 n : ℝ)

end

end A000178.P13309645164925762454

namespace A000178

/-- `sqrt(A055209(n))` -/
def P13309645164925762454.Spec : Prop :=
  ∀ n, P13309645164925762454.a n = (A000178 n : ℝ)

end A000178

/-! ## A000178.P4615859344398946344

`∏[n!]`
-/

namespace A000178.P4615859344398946344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000178.P4615859344398946344

namespace A000178

/-- `∏[n!]` -/
def P4615859344398946344.Spec : Prop :=
  ∀ n, (P4615859344398946344.a n : ℤ) = A000178 n

end A000178

/-! ## A000178.P6317223105143694069

`a(n-1)*n!` with `a(0)=1`
-/

namespace A000178.P6317223105143694069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Nat.factorial n

end

end A000178.P6317223105143694069

namespace A000178

/-- `a(n-1)*n!` -/
def P6317223105143694069.Spec : Prop :=
  ∀ n, (P6317223105143694069.a n : ℤ) = A000178 n

end A000178

/-!
# A000179: Ménage numbers: a(0) = 1, a(1) = -1, and for n >= 2, a(n) = number of permutations s of [0, ..., n-1] such that s(i) != i and s(i) != i+1 (mod n) for all i.

The programs for A000179, the canonical program `A000179.P7126102324158597709` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000179 has offset 0).

The definition of A000179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000179.P7126102324158597709

`((n²-2*n)*a(n-1)+n*a(n-2)-4*(-1)^n)/(n-2)` with `a(0)=1, a(1)=-1, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000179

/-- `((n²-2*n)*a(n-1)+n*a(n-2)-4*(-1)^n)/(n-2)` -/
def P7126102324158597709.Spec : Prop :=
  ∀ n, P7126102324158597709.a n = (A000179 n : ℚ)

end A000179

/-! ## A000179.P75949255327054524

`A156996(∑[n])`
-/

namespace A000179.P75949255327054524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000179.P75949255327054524

namespace A000179

/-- `A156996(∑[n])` -/
def P75949255327054524.Spec : Prop :=
  ∀ n, P75949255327054524.a n = A000179 n

end A000179

/-! ## A000179.P13031583651075149430

`A058087(∑[n]+n)`
-/

namespace A000179.P13031583651075149430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A000179.P13031583651075149430

namespace A000179

/-- `A058087(∑[n]+n)` -/
def P13031583651075149430.Spec : Prop :=
  ∀ n, P13031583651075149430.a n = A000179 n

end A000179

/-! ## A000179.P8176775807307928964

`Δ[A000271(abs(1-n))]`
-/

namespace A000179.P8176775807307928964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000179.P8176775807307928964

namespace A000179

/-- `Δ[A000271(abs(1-n))]` -/
def P8176775807307928964.Spec : Prop :=
  ∀ n, P8176775807307928964.a n = A000179 n

end A000179

/-! ## A000179.P17913138597068204556

`A094314(∑[n])-char[1]`
-/

namespace A000179.P17913138597068204556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A000179.P17913138597068204556

namespace A000179

/-- `A094314(∑[n])-char[1]` -/
def P17913138597068204556.Spec : Prop :=
  ∀ n, P17913138597068204556.a n = A000179 n

end A000179

/-! ## A000179.P14439271509361420772

`A102761(n)-char[1]-round(cos(4)^n)`
-/

namespace A000179.P14439271509361420772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102761 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

end

end A000179.P14439271509361420772

namespace A000179

/-- `A102761(n)-char[1]-round(cos(4)^n)` -/
def P14439271509361420772.Spec : Prop :=
  ∀ n, P14439271509361420772.a n = A000179 n

end A000179

/-! ## A000179.P17537532883640642993

`A102761(n)-A000007(n)`
-/

namespace A000179.P17537532883640642993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102761 n - A000007 n

end

end A000179.P17537532883640642993

namespace A000179

/-- `A102761(n)-A000007(n)` -/
def P17537532883640642993.Spec : Prop :=
  ∀ n, P17537532883640642993.a n = A000179 n

end A000179

/-! ## A000179.P11715548548408757767

`A102761(n)-A151909(n)`
-/

namespace A000179.P11715548548408757767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102761 n - A151909 n

end

end A000179.P11715548548408757767

namespace A000179

/-- `A102761(n)-A151909(n)` -/
def P11715548548408757767.Spec : Prop :=
  ∀ n, P11715548548408757767.a n = A000179 n

end A000179

/-! ## A000179.P10037917922482614933

`A102761(n)^A178334(n)`
-/

namespace A000179.P10037917922482614933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102761 n : ℚ) ^ (A178334 n : ℤ)

end

end A000179.P10037917922482614933

namespace A000179

/-- `A102761(n)^A178334(n)` -/
def P10037917922482614933.Spec : Prop :=
  ∀ n, P10037917922482614933.a n = (A000179 n : ℚ)

end A000179

/-! ## A000179.P18404399398915529027

`2*A000271(n)-A127548(n)`
-/

namespace A000179.P18404399398915529027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000271 n - A127548 n

end

end A000179.P18404399398915529027

namespace A000179

/-- `2*A000271(n)-A127548(n)` -/
def P18404399398915529027.Spec : Prop :=
  ∀ n, P18404399398915529027.a n = A000179 n

end A000179

/-!
# A000180: Expansion of E.g.f. exp(-x)/(1-3x).

The programs for A000180, the canonical program `A000180.P3196169466671646558` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000180 has offset 0).

The definition of A000180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000180.P3196169466671646558

`3*n*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000180

/-- `3*n*a(n-1)+(-1)^n` -/
def P3196169466671646558.Spec : Prop :=
  ∀ n, P3196169466671646558.a n = A000180 n

theorem P3196169466671646558.correct : P3196169466671646558.Spec := by
  intro n
  simp only [A000180]

end A000180

/-! ## A000180.P7078852740327794571

`xor(1, 3*n*a(n-1))` with `a(0)=1`
-/

namespace A000180.P7078852740327794571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (3 * (n * a (n - 1)))

end

end A000180.P7078852740327794571

namespace A000180

/-- `xor(1, 3*n*a(n-1))` -/
def P7078852740327794571.Spec : Prop :=
  ∀ n, (P7078852740327794571.a n : ℤ) = A000180 n

end A000180

/-! ## A000180.P14150913519417420894

`(-1)^n+3*n*a(n-1)` with `a(0)=1`
-/

namespace A000180.P14150913519417420894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + 3 * ((n : ℤ) * a (n - 1))

end

end A000180.P14150913519417420894

namespace A000180

/-- `(-1)^n+3*n*a(n-1)` -/
def P14150913519417420894.Spec : Prop :=
  ∀ n, P14150913519417420894.a n = A000180 n

theorem P14150913519417420894.correct : P14150913519417420894.Spec := by
  intro n
  simp only [A000180, Nat.add_sub_cancel, A000180.P14150913519417420894.a, A000180.P3196169466671646558.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000180

/-! ## A000180.P14793626614227216650

`abs(Δ[A353549(n)])`
-/

namespace A000180.P14793626614227216650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A000180.P14793626614227216650

namespace A000180

/-- `abs(Δ[A353549(n)])` -/
def P14793626614227216650.Spec : Prop :=
  ∀ n, P14793626614227216650.a n = A000180 n

end A000180

/-! ## A000180.P5908326334980926598

`xor(1, a(n-1)*A008486(n))` with `a(0)=1`
-/

namespace A000180.P5908326334980926598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A008486 n)

end

end A000180.P5908326334980926598

namespace A000180

/-- `xor(1, a(n-1)*A008486(n))` -/
def P5908326334980926598.Spec : Prop :=
  ∀ n, P5908326334980926598.a n = A000180 n

end A000180

/-! ## A000180.P16085673928052530779

`xor(1, a(n-1)*A008585(n))` with `a(0)=1`
-/

namespace A000180.P16085673928052530779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A008585 n)

end

end A000180.P16085673928052530779

namespace A000180

/-- `xor(1, a(n-1)*A008585(n))` -/
def P16085673928052530779.Spec : Prop :=
  ∀ n, P16085673928052530779.a n = A000180 n

end A000180

/-! ## A000180.P6661209374918392965

`a(n-1)*A008486(n)-A062157(n)` with `a(0)=1`
-/

namespace A000180.P6661209374918392965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008486 n - A062157 n

end

end A000180.P6661209374918392965

namespace A000180

/-- `a(n-1)*A008486(n)-A062157(n)` -/
def P6661209374918392965.Spec : Prop :=
  ∀ n, P6661209374918392965.a n = A000180 n

end A000180

/-! ## A000180.P3296104563972261270

`A320032(∑[n+3]+n+3)`
-/

namespace A000180.P3296104563972261270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320032 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A000180.P3296104563972261270

namespace A000180

/-- `A320032(∑[n+3]+n+3)` -/
def P3296104563972261270.Spec : Prop :=
  ∀ n, P3296104563972261270.a n = A000180 n

end A000180

/-!
# A000181: a(n) = A058087(n,n-4).

The programs for A000181, there is no canonical definition to state claims against.
-/

/-! ## A000181.P1489811484562513115

`record[A058087(A052905(n))]`
-/

namespace A000181.P1489811484562513115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000181.P1489811484562513115

/-! ## A000181.P6494659937003035570

`A058087(A052905(n+2))`
-/

namespace A000181.P6494659937003035570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A052905 (n + 2)).toNat

end

end A000181.P6494659937003035570

/-! ## A000181.P3051718812871240780

`A058087(eq[4, A025581(n)])`
-/

namespace A000181.P3051718812871240780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000181.P3051718812871240780

/-! ## A000181.P8835379722278964306

`A094314(eq[4, A002262(n)])`
-/

namespace A000181.P8835379722278964306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000181.P8835379722278964306

/-! ## A000181.P11983219483742561407

`A156996(eq[4, A002262(n)])`
-/

namespace A000181.P11983219483742561407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000181.P11983219483742561407

/-! ## A000181.P13490614613550953185

`A058087(Δ[A111396(n)]-2)`
-/

namespace A000181.P13490614613550953185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (f1 (n + 1) - f1 n - 2).toNat

end

end A000181.P13490614613550953185

/-! ## A000181.P13582315543166234740

`A094314(A034856(n+3)+6)`
-/

namespace A000181.P13582315543166234740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A034856 (n + 3) + 6).toNat

end

end A000181.P13582315543166234740

/-! ## A000181.P10848049309453161406

`A094314(A055998(n+2)+7)`
-/

namespace A000181.P10848049309453161406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A055998 (n + 2) + 7).toNat

end

end A000181.P10848049309453161406

/-! ## A000181.P11706496426385430442

`A156996(eq[2, A144328(n+1)-2])`
-/

namespace A000181.P11706496426385430442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000181.P11706496426385430442

/-!
# A000182: Tangent (or "Zag") numbers: e.g.f. tan(x), also (up to signs) e.g.f. tanh(x).

The programs for A000182, there is no canonical definition to state claims against.
-/

/-! ## A000182.P13718885367818246785

`A110501(n+1)*4^n/(n+1)`
-/

namespace A000182.P13718885367818246785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110501 (n + 1) * (4 ^ n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A000182.P13718885367818246785

/-! ## A000182.P11388156158121513146

`A064190(∑[n])`
-/

namespace A000182.P11388156158121513146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000182.P11388156158121513146

/-! ## A000182.P1101365140144000377

`A085734(∑[n])`
-/

namespace A000182.P1101365140144000377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000182.P1101365140144000377

/-! ## A000182.P10191313267914908080

`record[A009006(n)]`
-/

namespace A000182.P10191313267914908080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000182.P10191313267914908080

/-! ## A000182.P3577056671367072791

`A000111(Δ[n²])`
-/

namespace A000182.P3577056671367072791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000182.P3577056671367072791

/-!
# A000183: Number of discordant permutations of length n.

The programs for A000183, there is no canonical definition to state claims against.
-/

/-! ## A000183.P16234642654271735647

`A094315(∑[n+1])`
-/

namespace A000183.P16234642654271735647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000183.P16234642654271735647

/-! ## A000183.P4924712161121367255

`floor(atan(n))*A094315(A253145(n))`
-/

namespace A000183.P4924712161121367255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * A094315 (A253145 n).toNat

end

end A000183.P4924712161121367255

/-! ## A000183.P2625301294465421299

`A094315(A253145(n))-A000007(n)`
-/

namespace A000183.P2625301294465421299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A253145 n).toNat - A000007 n

end

end A000183.P2625301294465421299

/-! ## A000183.P2597029183407868277

`A094315(A253145(n))-A015161(n)`
-/

namespace A000183.P2597029183407868277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A253145 n).toNat - A015161 n

end

end A000183.P2597029183407868277

/-!
# A000184: Number of genus 0 rooted maps with 3 faces with n vertices.

The programs for A000184, the canonical program `A000184.P18437926326760812806` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000184 has offset 2).

The definition of A000184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000184.P18437926326760812806

`2*A029887(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A000184

/-- `2*A029887(n)` -/
def P18437926326760812806.Spec : Prop :=
  ∀ n, P18437926326760812806.a n = A000184 (n + 2)

theorem P18437926326760812806.correct : P18437926326760812806.Spec := by
  intro n
  simp only [A000184, Nat.add_sub_cancel]

end A000184

/-! ## A000184.P14444509183816097968

`A038836(n)+A038806(n+1)`
-/

namespace A000184.P14444509183816097968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038836 n + A038806 (n + 1)

end

end A000184.P14444509183816097968

namespace A000184

/-- `A038836(n)+A038806(n+1)` -/
def P14444509183816097968.Spec : Prop :=
  ∀ n, P14444509183816097968.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P3127407177523818155

`A002802(n+1)-A002697(n+2)`
-/

namespace A000184.P3127407177523818155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 (n + 1) - A002697 (n + 2)

end

end A000184.P3127407177523818155

namespace A000184

/-- `A002802(n+1)-A002697(n+2)` -/
def P3127407177523818155.Spec : Prop :=
  ∀ n, P3127407177523818155.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P13674796509115806374

`A029887(n)+A029887(n%(n+1))`
-/

namespace A000184.P13674796509115806374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029887 n + A029887 (n % (n + 1))

end

end A000184.P13674796509115806374

namespace A000184

/-- `A029887(n)+A029887(n%(n+1))` -/
def P13674796509115806374.Spec : Prop :=
  ∀ n, P13674796509115806374.a n = A000184 (n + 2)

theorem P13674796509115806374.correct : P13674796509115806374.Spec := by
  intro n
  simp only [A000184, Nat.add_sub_cancel, A000184.P13674796509115806374.a, A000184.P18437926326760812806.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A000184

/-! ## A000184.P4711549080626218315

`A002802(n+1)+A014916(n+1)-A014916(n+2)`
-/

namespace A000184.P4711549080626218315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002802 (n + 1) + (A014916 (n + 1) - A014916 (n + 2))

end

end A000184.P4711549080626218315

namespace A000184

/-- `A002802(n+1)+A014916(n+1)-A014916(n+2)` -/
def P4711549080626218315.Spec : Prop :=
  ∀ n, P4711549080626218315.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P13488943118544416168

`2*A046658(A167614(n+1))`
-/

namespace A000184.P13488943118544416168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046658 (A167614 (n + 1)).toNat

end

end A000184.P13488943118544416168

namespace A000184

/-- `2*A046658(A167614(n+1))` -/
def P13488943118544416168.Spec : Prop :=
  ∀ n, P13488943118544416168.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P15338981581992175360

`2*A046658(A167499(n)+n)`
-/

namespace A000184.P15338981581992175360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046658 (A167499 n + (n : ℤ)).toNat

end

end A000184.P15338981581992175360

namespace A000184

/-- `2*A046658(A167499(n)+n)` -/
def P15338981581992175360.Spec : Prop :=
  ∀ n, P15338981581992175360.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P11280168637674082869

`A269920(∑[n+2]+3)`
-/

namespace A000184.P11280168637674082869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000184.P11280168637674082869

namespace A000184

/-- `A269920(∑[n+2]+3)` -/
def P11280168637674082869.Spec : Prop :=
  ∀ n, P11280168637674082869.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P17774404825008222364

`or(a(n-1)%2, A269920(A340266(n+1)))` with `a(0)=2`
-/

namespace A000184.P17774404825008222364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (Int.tmod (a (n - 1)) 2) (A269920 (A340266 (n + 1)).toNat)

end

end A000184.P17774404825008222364

namespace A000184

/-- `or(a(n-1)%2, A269920(A340266(n+1)))` -/
def P17774404825008222364.Spec : Prop :=
  ∀ n, P17774404825008222364.a n = A000184 (n + 2)

end A000184

/-! ## A000184.P14882872007345405080

`A270407(A290743(n+1))`
-/

namespace A000184.P14882872007345405080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270407 (A290743 (n + 1)).toNat

end

end A000184.P14882872007345405080

namespace A000184

/-- `A270407(A290743(n+1))` -/
def P14882872007345405080.Spec : Prop :=
  ∀ n, P14882872007345405080.a n = A000184 (n + 2)

end A000184

/-!
# A000185: a(n) = A058087(n,n-5).

The programs for A000185, there is no canonical definition to state claims against.
-/

/-! ## A000185.P14097286679135441378

`A058087(Δ[A023551(n+1)])`
-/

namespace A000185.P14097286679135441378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (f1 (n + 1) - f1 n).toNat

end

end A000185.P14097286679135441378

/-! ## A000185.P68219014920156787

`A058087(A052905(n+3)-1)`
-/

namespace A000185.P68219014920156787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A052905 (n + 3) - 1).toNat

end

end A000185.P68219014920156787

/-! ## A000185.P18279808606714406040

`A058087(A000217(n+6)-6)`
-/

namespace A000185.P18279808606714406040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A000217 (n + 6) - 6).toNat

end

end A000185.P18279808606714406040

/-! ## A000185.P2628027145143771776

`A094314(A246172(n+1)+19)`
-/

namespace A000185.P2628027145143771776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (A246172 (n + 1) + 19).toNat

end

end A000185.P2628027145143771776

/-! ## A000185.P6923084624361214387

`A058087(eq[4, A025581(n)]+n+5)`
-/

namespace A000185.P6923084624361214387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 5))

end

end A000185.P6923084624361214387

/-!
# A000186: Number of 3 X n Latin rectangles in which the first row is in order.

The programs for A000186, there is no canonical definition to state claims against.
-/

/-! ## A000186.P1595586497852189479

`A220905(A048093(n+2))`
-/

namespace A000186.P1595586497852189479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220905 (A048093 (n + 2)).toNat

end

end A000186.P1595586497852189479

/-! ## A000186.P1234474605233835908

`A220905(∑[record[A014085(n)]])`
-/

namespace A000186.P1234474605233835908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220905 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000186.P1234474605233835908

/-! ## A000186.P5502950824085873840

`A220905(∑[comp[A005897(n)]])`
-/

namespace A000186.P5502950824085873840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000186.P5502950824085873840

/-!
# A000187: Generalized Euler numbers, c(5,n).

The programs for A000187, there is no canonical definition to state claims against.
-/

/-! ## A000187.P9365859893972246111

`A349265(2*n)`
-/

namespace A000187.P9365859893972246111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349265 (2 * n)

end

end A000187.P9365859893972246111

/-! ## A000187.P11966077968178293519

`record[A349265(A014681(n))]`
-/

namespace A000187.P11966077968178293519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349265 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000187.P11966077968178293519

/-! ## A000187.P906972284746840840

`or(2, A349265(A005843(n)))`
-/

namespace A000187.P906972284746840840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A349265 (A005843 n).toNat)

end

end A000187.P906972284746840840

/-! ## A000187.P4548973957443589874

`record[A349265(n)/A033999(n)]`
-/

namespace A000187.P4548973957443589874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349265 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000187.P4548973957443589874

/-! ## A000187.P12488823261977490208

`A349265(A005843(n))+A000007(n+4)`
-/

namespace A000187.P12488823261977490208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349265 (A005843 n).toNat + A000007 (n + 4)

end

end A000187.P12488823261977490208

/-!
# A000188: (1) Number of solutions to x^2 == 0 (mod n). (2) Also square root of largest square dividing n. (3) Also max_{ d divides n } gcd(d, n/d).

The programs for A000188, the canonical program `A000188.P7486858720566838181` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000188 has offset 1).

The definition of A000188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000188.P7486858720566838181

`sqrt(A008833(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A000188

/-- `sqrt(A008833(n+1))` -/
def P7486858720566838181.Spec : Prop :=
  ∀ n, P7486858720566838181.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P16039707432470464743

`(n+1)/A019554(n+1)`
-/

namespace A000188.P16039707432470464743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019554 (n + 1) : ℚ)

end

end A000188.P16039707432470464743

namespace A000188

/-- `(n+1)/A019554(n+1)` -/
def P16039707432470464743.Spec : Prop :=
  ∀ n, P16039707432470464743.a n = (A000188 (n + 1) : ℚ)

end A000188

/-! ## A000188.P17495067849405576234

`sqrt((n+1)/A007913(n+1))`
-/

namespace A000188.P17495067849405576234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ)

end

end A000188.P17495067849405576234

namespace A000188

/-- `sqrt((n+1)/A007913(n+1))` -/
def P17495067849405576234.Spec : Prop :=
  ∀ n, P17495067849405576234.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P18128357374562736993

`∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A000188.P18128357374562736993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

end

end A000188.P18128357374562736993

namespace A000188

/-- `∏{p}[n+1, #^val(n+1, #²)]` -/
def P18128357374562736993.Spec : Prop :=
  ∀ n, (P18128357374562736993.a n : ℤ) = A000188 (n + 1)

end A000188

/-! ## A000188.P5857494473105492224

`Δ[A211422(n)/8]`
-/

namespace A000188.P5857494473105492224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211422 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000188.P5857494473105492224

namespace A000188

/-- `Δ[A211422(n)/8]` -/
def P5857494473105492224.Spec : Prop :=
  ∀ n, P5857494473105492224.a n = (A000188 (n + 1) : ℚ)

end A000188

/-! ## A000188.P7071724769007119423

`A057918(n+1)+1`
-/

namespace A000188.P7071724769007119423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + 1

end

end A000188.P7071724769007119423

namespace A000188

/-- `A057918(n+1)+1` -/
def P7071724769007119423.Spec : Prop :=
  ∀ n, P7071724769007119423.a n = A000188 (n + 1)

end A000188

/-! ## A000188.P18050137980556003727

`A337101(2*(n+1))`
-/

namespace A000188.P18050137980556003727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

end

end A000188.P18050137980556003727

namespace A000188

/-- `A337101(2*(n+1))` -/
def P18050137980556003727.Spec : Prop :=
  ∀ n, P18050137980556003727.a n = A000188 (n + 1)

end A000188

/-! ## A000188.P7203978646678560045

`sqrt(abs(A358272(n+1)))`
-/

namespace A000188.P7203978646678560045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A358272 (n + 1)| : ℝ)

end

end A000188.P7203978646678560045

namespace A000188

/-- `sqrt(abs(A358272(n+1)))` -/
def P7203978646678560045.Spec : Prop :=
  ∀ n, P7203978646678560045.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P14419503592987062315

`sqrt(A336642(n+1)+1)`
-/

namespace A000188.P14419503592987062315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A336642 (n + 1) + 1 : ℝ)

end

end A000188.P14419503592987062315

namespace A000188

/-- `sqrt(A336642(n+1)+1)` -/
def P14419503592987062315.Spec : Prop :=
  ∀ n, P14419503592987062315.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P10037668833924117838

`A355264(n+1)/(n+1)`
-/

namespace A000188.P10037668833924117838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355264 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A000188.P10037668833924117838

namespace A000188

/-- `A355264(n+1)/(n+1)` -/
def P10037668833924117838.Spec : Prop :=
  ∀ n, P10037668833924117838.a n = (A000188 (n + 1) : ℚ)

end A000188

/-! ## A000188.P13636255000383668047

`floor(sqrt(A336644(n+1)))+1`
-/

namespace A000188.P13636255000383668047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A336644 (n + 1)) + 1

end

end A000188.P13636255000383668047

namespace A000188

/-- `floor(sqrt(A336644(n+1)))+1` -/
def P13636255000383668047.Spec : Prop :=
  ∀ n, P13636255000383668047.a n = A000188 (n + 1)

end A000188

/-! ## A000188.P17561117217814254342

`sqrt(1-A326055(n+1)+n)`
-/

namespace A000188.P17561117217814254342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 - A326055 (n + 1) + (n : ℤ) : ℝ)

end

end A000188.P17561117217814254342

namespace A000188

/-- `sqrt(1-A326055(n+1)+n)` -/
def P17561117217814254342.Spec : Prop :=
  ∀ n, P17561117217814254342.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P5436436879916409167

`(n+1)/sqrt(A053143(n+1))`
-/

namespace A000188.P5436436879916409167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A053143 (n + 1) : ℝ)

end

end A000188.P5436436879916409167

namespace A000188

/-- `(n+1)/sqrt(A053143(n+1))` -/
def P5436436879916409167.Spec : Prop :=
  ∀ n, P5436436879916409167.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P13987090994943078295

`sqrt(A059479(n+1))/(n+1)`
-/

namespace A000188.P13987090994943078295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059479 (n + 1) : ℝ) / (n + 1 : ℝ)

end

end A000188.P13987090994943078295

namespace A000188

/-- `sqrt(A059479(n+1))/(n+1)` -/
def P13987090994943078295.Spec : Prop :=
  ∀ n, P13987090994943078295.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P13938733394834882636

`sqrt(gcd(n+1, A011264(n+1)))`
-/

namespace A000188.P13938733394834882636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (n + 1 : ℤ) (A011264 (n + 1)) : ℝ)

end

end A000188.P13938733394834882636

namespace A000188

/-- `sqrt(gcd(n+1, A011264(n+1)))` -/
def P13938733394834882636.Spec : Prop :=
  ∀ n, P13938733394834882636.a n = (A000188 (n + 1) : ℝ)

end A000188

/-! ## A000188.P2986056595010483871

`(n+1)/(A254732(n+1)-(n+1))`
-/

namespace A000188.P2986056595010483871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A254732 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A000188.P2986056595010483871

namespace A000188

/-- `(n+1)/(A254732(n+1)-(n+1))` -/
def P2986056595010483871.Spec : Prop :=
  ∀ n, P2986056595010483871.a n = (A000188 (n + 1) : ℚ)

end A000188

/-! ## A000188.P8078177882079891369

`A019554(A003557(n+1))`
-/

namespace A000188.P8078177882079891369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat

end

end A000188.P8078177882079891369

namespace A000188

/-- `A019554(A003557(n+1))` -/
def P8078177882079891369.Spec : Prop :=
  ∀ n, P8078177882079891369.a n = A000188 (n + 1)

end A000188

/-! ## A000188.P1022732098810510745

`A003557(A355261(n+1))`
-/

namespace A000188.P1022732098810510745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A355261 (n + 1)).toNat

end

end A000188.P1022732098810510745

namespace A000188

/-- `A003557(A355261(n+1))` -/
def P1022732098810510745.Spec : Prop :=
  ∀ n, P1022732098810510745.a n = A000188 (n + 1)

end A000188

/-! ## A000188.P10584703643687894434

`A019554(A336642(n+1)+1)`
-/

namespace A000188.P10584703643687894434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A336642 (n + 1) + 1).toNat

end

end A000188.P10584703643687894434

namespace A000188

/-- `A019554(A336642(n+1)+1)` -/
def P10584703643687894434.Spec : Prop :=
  ∀ n, P10584703643687894434.a n = A000188 (n + 1)

end A000188

/-! ## A000188.P11400738460479911321

`A162401(A336642(n+1)+1)`
-/

namespace A000188.P11400738460479911321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A336642 (n + 1) + 1).toNat

end

end A000188.P11400738460479911321

namespace A000188

/-- `A162401(A336642(n+1)+1)` -/
def P11400738460479911321.Spec : Prop :=
  ∀ n, P11400738460479911321.a n = A000188 (n + 1)

end A000188

/-!
# A000189: Number of solutions to x^3 == 0 (mod n).

The programs for A000189, the canonical program `A000189.P11210685475351648118` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000189 has offset 1).

The definition of A000189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000189.P8581785558402720181

`(n+1)/A019555(n+1)`
-/

namespace A000189.P8581785558402720181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019555 (n + 1) : ℚ)

end

end A000189.P8581785558402720181

namespace A000189

/-- `(n+1)/A019555(n+1)` -/
def P8581785558402720181.Spec : Prop :=
  ∀ n, P8581785558402720181.a n = (A000189 (n + 1) : ℚ)

end A000189

/-! ## A000189.P11210685475351648118

`(n+1)/A053149(n+1)^(1/3)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A000189

/-- `(n+1)/A053149(n+1)^(1/3)` -/
def P11210685475351648118.Spec : Prop :=
  ∀ n, P11210685475351648118.a n = (A000189 (n + 1) : ℝ)

end A000189

/-! ## A000189.P16161048340031904619

`(n+1)/(A254733(n+1)-(n+1))`
-/

namespace A000189.P16161048340031904619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A254733 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A000189.P16161048340031904619

namespace A000189

/-- `(n+1)/(A254733(n+1)-(n+1))` -/
def P16161048340031904619.Spec : Prop :=
  ∀ n, P16161048340031904619.a n = (A000189 (n + 1) : ℚ)

end A000189

/-! ## A000189.P314635676028058365

`A000010(n+1)/A390753(n+1)`
-/

namespace A000189.P314635676028058365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A390753 (n + 1) : ℚ)

end

end A000189.P314635676028058365

namespace A000189

/-- `A000010(n+1)/A390753(n+1)` -/
def P314635676028058365.Spec : Prop :=
  ∀ n, P314635676028058365.a n = (A000189 (n + 1) : ℚ)

end A000189

/-! ## A000189.P3112146117563627776

`A000188((n+1)*A053150(n+1))`
-/

namespace A000189.P3112146117563627776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A000189.P3112146117563627776

namespace A000189

/-- `A000188((n+1)*A053150(n+1))` -/
def P3112146117563627776.Spec : Prop :=
  ∀ n, P3112146117563627776.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P16536392334676279542

`A000188((n+1)*A000188(A000190(n+1)))`
-/

namespace A000189.P16536392334676279542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A000188 (A000190 (n + 1)).toNat).toNat

end

end A000189.P16536392334676279542

namespace A000189

/-- `A000188((n+1)*A000188(A000190(n+1)))` -/
def P16536392334676279542.Spec : Prop :=
  ∀ n, P16536392334676279542.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P13336312704901156004

`A000188((n+1)*A019554(A000188(n+1)))`
-/

namespace A000189.P13336312704901156004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A019554 (A000188 (n + 1)).toNat).toNat

end

end A000189.P13336312704901156004

namespace A000189

/-- `A000188((n+1)*A019554(A000188(n+1)))` -/
def P13336312704901156004.Spec : Prop :=
  ∀ n, P13336312704901156004.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P8108737181766837824

`A019555(A003557(n+1)²)`
-/

namespace A000189.P8108737181766837824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A003557 (n + 1) ^ 2).toNat

end

end A000189.P8108737181766837824

namespace A000189

/-- `A019555(A003557(n+1)²)` -/
def P8108737181766837824.Spec : Prop :=
  ∀ n, P8108737181766837824.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P880636644621672371

`A019555(A008833(A102631(n+1)))`
-/

namespace A000189.P880636644621672371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A008833 (A102631 (n + 1)).toNat).toNat

end

end A000189.P880636644621672371

namespace A000189

/-- `A019555(A008833(A102631(n+1)))` -/
def P880636644621672371.Spec : Prop :=
  ∀ n, P880636644621672371.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P11734346334017148469

`A295657((n+1)*A355263(n+1))`
-/

namespace A000189.P11734346334017148469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 ((n + 1 : ℤ) * A355263 (n + 1)).toNat

end

end A000189.P11734346334017148469

namespace A000189

/-- `A295657((n+1)*A355263(n+1))` -/
def P11734346334017148469.Spec : Prop :=
  ∀ n, P11734346334017148469.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P2802012259181701652

`A048766(A113061((n+1)²))`
-/

namespace A000189.P2802012259181701652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A113061 ((n + 1) ^ 2)).toNat

end

end A000189.P2802012259181701652

namespace A000189

/-- `A048766(A113061((n+1)²))` -/
def P2802012259181701652.Spec : Prop :=
  ∀ n, P2802012259181701652.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P13097635232726825545

`A053150(A170826(n+1))`
-/

namespace A000189.P13097635232726825545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A170826 (n + 1)).toNat

end

end A000189.P13097635232726825545

namespace A000189

/-- `A053150(A170826(n+1))` -/
def P13097635232726825545.Spec : Prop :=
  ∀ n, P13097635232726825545.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P17094572768286837146

`A053150(A103390(n+2))`
-/

namespace A000189.P17094572768286837146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A103390 (n + 2)).toNat

end

end A000189.P17094572768286837146

namespace A000189

/-- `A053150(A103390(n+2))` -/
def P17094572768286837146.Spec : Prop :=
  ∀ n, P17094572768286837146.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P8134517283027940865

`A053150((n+1)²)`
-/

namespace A000189.P8134517283027940865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 ((n + 1) ^ 2)

end

end A000189.P8134517283027940865

namespace A000189

/-- `A053150((n+1)²)` -/
def P8134517283027940865.Spec : Prop :=
  ∀ n, P8134517283027940865.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P15532259783330345437

`(n+1)/A015053((n+1)²)`
-/

namespace A000189.P15532259783330345437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015053 ((n + 1) ^ 2) : ℚ)

end

end A000189.P15532259783330345437

namespace A000189

/-- `(n+1)/A015053((n+1)²)` -/
def P15532259783330345437.Spec : Prop :=
  ∀ n, P15532259783330345437.a n = (A000189 (n + 1) : ℚ)

end A000189

/-! ## A000189.P12530884668071574820

`A019555(A008834((n+1)²))`
-/

namespace A000189.P12530884668071574820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A008834 ((n + 1) ^ 2)).toNat

end

end A000189.P12530884668071574820

namespace A000189

/-- `A019555(A008834((n+1)²))` -/
def P12530884668071574820.Spec : Prop :=
  ∀ n, P12530884668071574820.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P14978581795625587292

`A019555(A062378((n+1)²))`
-/

namespace A000189.P14978581795625587292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A062378 ((n + 1) ^ 2)).toNat

end

end A000189.P14978581795625587292

namespace A000189

/-- `A019555(A062378((n+1)²))` -/
def P14978581795625587292.Spec : Prop :=
  ∀ n, P14978581795625587292.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P14581870795659393429

`A003557(A355263((n+1)²))`
-/

namespace A000189.P14581870795659393429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A355263 ((n + 1) ^ 2)).toNat

end

end A000189.P14581870795659393429

namespace A000189

/-- `A003557(A355263((n+1)²))` -/
def P14581870795659393429.Spec : Prop :=
  ∀ n, P14581870795659393429.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P9107644805020326726

`A295657(A355263((n+1)²)²)`
-/

namespace A000189.P9107644805020326726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A355263 ((n + 1) ^ 2) ^ 2).toNat

end

end A000189.P9107644805020326726

namespace A000189

/-- `A295657(A355263((n+1)²)²)` -/
def P9107644805020326726.Spec : Prop :=
  ∀ n, P9107644805020326726.a n = A000189 (n + 1)

end A000189

/-! ## A000189.P4086743417396729976

`(n+1)/A053166(A064549(n+1))`
-/

namespace A000189.P4086743417396729976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053166 (A064549 (n + 1)).toNat : ℚ)

end

end A000189.P4086743417396729976

namespace A000189

/-- `(n+1)/A053166(A064549(n+1))` -/
def P4086743417396729976.Spec : Prop :=
  ∀ n, P4086743417396729976.a n = (A000189 (n + 1) : ℚ)

end A000189

/-!
# A000190: Number of solutions to x^4 == 0 (mod n).

The programs for A000190, the canonical program `A000190.P2108716071587575808` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000190 has offset 1).

The definition of A000190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000190.P2108716071587575808

`(n+1)/A053166(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A000190

/-- `(n+1)/A053166(n+1)` -/
def P2108716071587575808.Spec : Prop :=
  ∀ n, P2108716071587575808.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P12163024446512016578

`(n+1)/sqrt(sqrt(A053167(n+1)))`
-/

namespace A000190.P12163024446512016578
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (Real.sqrt (A053167 (n + 1) : ℝ))

end

end A000190.P12163024446512016578

namespace A000190

/-- `(n+1)/sqrt(sqrt(A053167(n+1)))` -/
def P12163024446512016578.Spec : Prop :=
  ∀ n, P12163024446512016578.a n = (A000190 (n + 1) : ℝ)

end A000190

/-! ## A000190.P5521618404318495760

`(n+1)/A019554(A019554(n+1))`
-/

namespace A000190.P5521618404318495760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019554 (A019554 (n + 1)).toNat : ℚ)

end

end A000190.P5521618404318495760

namespace A000190

/-- `(n+1)/A019554(A019554(n+1))` -/
def P5521618404318495760.Spec : Prop :=
  ∀ n, P5521618404318495760.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P11876554912645301274

`A000188(n+1)*A000188(A019554(n+1))`
-/

namespace A000190.P11876554912645301274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A000188 (A019554 (n + 1)).toNat

end

end A000190.P11876554912645301274

namespace A000190

/-- `A000188(n+1)*A000188(A019554(n+1))` -/
def P11876554912645301274.Spec : Prop :=
  ∀ n, P11876554912645301274.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P4059340990265645660

`A003557((n+1)/A053164(A003557(n+1)))`
-/

namespace A000190.P4059340990265645660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053164 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A000190.P4059340990265645660

namespace A000190

/-- `A003557((n+1)/A053164(A003557(n+1)))` -/
def P4059340990265645660.Spec : Prop :=
  ∀ n, P4059340990265645660.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P4585979171198076010

`A003557((n+1)/A000188(A295657(n+1)))`
-/

namespace A000190.P4585979171198076010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (A295657 (n + 1)).toNat : ℚ))).toNat

end

end A000190.P4585979171198076010

namespace A000190

/-- `A003557((n+1)/A000188(A295657(n+1)))` -/
def P4585979171198076010.Spec : Prop :=
  ∀ n, P4585979171198076010.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P4979456346132412155

`(n+1)/(A254734(n+1)-(n+1))`
-/

namespace A000190.P4979456346132412155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A254734 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A000190.P4979456346132412155

namespace A000190

/-- `(n+1)/(A254734(n+1)-(n+1))` -/
def P4979456346132412155.Spec : Prop :=
  ∀ n, P4979456346132412155.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P3731192392927342860

`sqrt(A008833((n+1)*sqrt(A008833(n+1))))`
-/

namespace A000190.P3731192392927342860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (A008833 (n + 1) : ℝ))).toNat : ℝ)

end

end A000190.P3731192392927342860

namespace A000190

/-- `sqrt(A008833((n+1)*sqrt(A008833(n+1))))` -/
def P3731192392927342860.Spec : Prop :=
  ∀ n, P3731192392927342860.a n = (A000190 (n + 1) : ℝ)

end A000190

/-! ## A000190.P491039297315100139

`A000188(A355264(n+1))`
-/

namespace A000190.P491039297315100139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A355264 (n + 1)).toNat

end

end A000190.P491039297315100139

namespace A000190

/-- `A000188(A355264(n+1))` -/
def P491039297315100139.Spec : Prop :=
  ∀ n, P491039297315100139.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P17914042088113628597

`A000188((n+1)*A000188(n+1))`
-/

namespace A000190.P17914042088113628597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A000190.P17914042088113628597

namespace A000190

/-- `A000188((n+1)*A000188(n+1))` -/
def P17914042088113628597.Spec : Prop :=
  ∀ n, P17914042088113628597.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P5107494456826430812

`A355263(A003557(n+1)²)`
-/

namespace A000190.P5107494456826430812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (A003557 (n + 1) ^ 2).toNat

end

end A000190.P5107494456826430812

namespace A000190

/-- `A355263(A003557(n+1)²)` -/
def P5107494456826430812.Spec : Prop :=
  ∀ n, P5107494456826430812.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P2762016946793747704

`(n+1)/A015052(A114562(n+1))`
-/

namespace A000190.P2762016946793747704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015052 (A114562 (n + 1)).toNat : ℚ)

end

end A000190.P2762016946793747704

namespace A000190

/-- `(n+1)/A015052(A114562(n+1))` -/
def P2762016946793747704.Spec : Prop :=
  ∀ n, P2762016946793747704.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P14223562952738066428

`A355263(A295657((n+1)²)²)`
-/

namespace A000190.P14223562952738066428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (A295657 ((n + 1) ^ 2) ^ 2).toNat

end

end A000190.P14223562952738066428

namespace A000190

/-- `A355263(A295657((n+1)²)²)` -/
def P14223562952738066428.Spec : Prop :=
  ∀ n, P14223562952738066428.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P5793044676325117812

`A295657((n+1)*A355261(n+1))`
-/

namespace A000190.P5793044676325117812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 ((n + 1 : ℤ) * A355261 (n + 1)).toNat

end

end A000190.P5793044676325117812

namespace A000190

/-- `A295657((n+1)*A355261(n+1))` -/
def P5793044676325117812.Spec : Prop :=
  ∀ n, P5793044676325117812.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P6541932634649451873

`A295657((n+1)²/A295657(n+1))`
-/

namespace A000190.P6541932634649451873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A295657 (n + 1) : ℚ))).toNat

end

end A000190.P6541932634649451873

namespace A000190

/-- `A295657((n+1)²/A295657(n+1))` -/
def P6541932634649451873.Spec : Prop :=
  ∀ n, P6541932634649451873.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P15925900573813901470

`A019554(A000189((n+1)*A008833(n+1)))`
-/

namespace A000190.P15925900573813901470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A000189 ((n + 1 : ℤ) * A008833 (n + 1)).toNat).toNat

end

end A000190.P15925900573813901470

namespace A000190

/-- `A019554(A000189((n+1)*A008833(n+1)))` -/
def P15925900573813901470.Spec : Prop :=
  ∀ n, P15925900573813901470.a n = A000190 (n + 1)

end A000190

/-! ## A000190.P17384179435084340259

`(n+1)/A015052(A053143(n+1))`
-/

namespace A000190.P17384179435084340259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015052 (A053143 (n + 1)).toNat : ℚ)

end

end A000190.P17384179435084340259

namespace A000190

/-- `(n+1)/A015052(A053143(n+1))` -/
def P17384179435084340259.Spec : Prop :=
  ∀ n, P17384179435084340259.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P7226076528699306828

`(n+1)/A015052(A064549(n+1))`
-/

namespace A000190.P7226076528699306828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015052 (A064549 (n + 1)).toNat : ℚ)

end

end A000190.P7226076528699306828

namespace A000190

/-- `(n+1)/A015052(A064549(n+1))` -/
def P7226076528699306828.Spec : Prop :=
  ∀ n, P7226076528699306828.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P16106272620332705673

`(n+1)/A015052(A285109(n+1))`
-/

namespace A000190.P16106272620332705673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015052 (A285109 (n + 1)).toNat : ℚ)

end

end A000190.P16106272620332705673

namespace A000190

/-- `(n+1)/A015052(A285109(n+1))` -/
def P16106272620332705673.Spec : Prop :=
  ∀ n, P16106272620332705673.a n = (A000190 (n + 1) : ℚ)

end A000190

/-! ## A000190.P1616976811826998009

`(n+1)/A019555(A019555((n+1)²))`
-/

namespace A000190.P1616976811826998009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019555 (A019555 ((n + 1) ^ 2)).toNat : ℚ)

end

end A000190.P1616976811826998009

namespace A000190

/-- `(n+1)/A019555(A019555((n+1)²))` -/
def P1616976811826998009.Spec : Prop :=
  ∀ n, P1616976811826998009.a n = (A000190 (n + 1) : ℚ)

end A000190

/-!
# A000191: Generalized tangent numbers d(3, n).

The programs for A000191, there is no canonical definition to state claims against.
-/

/-! ## A000191.P6633713194555539371

`2*A002439(n)`
-/

namespace A000191.P6633713194555539371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002439 n

end

end A000191.P6633713194555539371

/-! ## A000191.P13444842109555423975

`A007289(Δ[n²])`
-/

namespace A000191.P13444842109555423975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000191.P13444842109555423975

/-! ## A000191.P12259118659618408272

`abs(A225147(Δ[n²]))`
-/

namespace A000191.P12259118659618408272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225147 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A000191.P12259118659618408272

/-! ## A000191.P18245825348116478376

`lcm(2, A007289(2*n+1))`
-/

namespace A000191.P18245825348116478376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A007289 (2 * n + 1))

end

end A000191.P18245825348116478376

/-! ## A000191.P7581345369381658152

`abs(2*A156187(2*n+1))`
-/

namespace A000191.P7581345369381658152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A156187 (2 * n + 1)|

end

end A000191.P7581345369381658152

/-!
# A000192: Generalized Euler numbers c(6,n).

The programs for A000192, there is no canonical definition to state claims against.
-/

/-! ## A000192.P10047662652129414505

`A001587(2*n)`
-/

namespace A000192.P10047662652129414505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001587 (2 * n)

end

end A000192.P10047662652129414505

/-! ## A000192.P13623698130441397058

`2*A352977(n)`
-/

namespace A000192.P13623698130441397058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352977 n

end

end A000192.P13623698130441397058

/-! ## A000192.P676321376976450175

`lcm(2, A001587(A005843(n)))`
-/

namespace A000192.P676321376976450175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001587 (A005843 n).toNat)

end

end A000192.P676321376976450175

/-! ## A000192.P7428713828229478002

`abs(A156332(2*n)+A156330(2*n))`
-/

namespace A000192.P7428713828229478002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156332 (2 * n) + A156330 (2 * n)|

end

end A000192.P7428713828229478002

/-! ## A000192.P13996397704584713421

`A001587(A005843(n))+A008683(A089552(n+1))²`
-/

namespace A000192.P13996397704584713421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001587 (A005843 n).toNat + A008683 (A089552 (n + 1)).toNat ^ 2

end

end A000192.P13996397704584713421

/-!
# A000193: Nearest integer to log n.

The programs for A000193, the canonical program `A000193.P1927947297861182281` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000193 has offset 1).

The definition of A000193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000193.P1927947297861182281

`round(log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000193

/-- `round(log(n+1))` -/
def P1927947297861182281.Spec : Prop :=
  ∀ n, P1927947297861182281.a n = A000193 (n + 1)

theorem P1927947297861182281.correct : P1927947297861182281.Spec := by
  intro n
  simp only [A000193, Nat.add_sub_cancel]

end A000193

/-! ## A000193.P16945754383328539855

`dr(round(log(2*n-(n-1))))`
-/

namespace A000193.P16945754383328539855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.log ((2 * n : ℤ) - ((n : ℤ) - 1) : ℝ)))

end

end A000193.P16945754383328539855

namespace A000193

/-- `dr(round(log(2*n-(n-1))))` -/
def P16945754383328539855.Spec : Prop :=
  ∀ n, (P16945754383328539855.a n : ℤ) = A000193 (n + 1)

end A000193

/-! ## A000193.P1912714905780301176

`∑[char[A219092(n)]]`
-/

namespace A000193.P1912714905780301176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000193.P1912714905780301176

namespace A000193

/-- `∑[char[A219092(n)]]` -/
def P1912714905780301176.Spec : Prop :=
  ∀ n, (P1912714905780301176.a n : ℤ) = A000193 (n + 1)

end A000193

/-! ## A000193.P6726491875411415770

`∑[char[A005182(2*n)]]-1`
-/

namespace A000193.P6726491875411415770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000193.P6726491875411415770

namespace A000193

/-- `∑[char[A005182(2*n)]]-1` -/
def P6726491875411415770.Spec : Prop :=
  ∀ n, P6726491875411415770.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P11971136073564401504

`A004526(floor(log((n+1)²))+1)`
-/

namespace A000193.P11971136073564401504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ + 1).toNat

end

end A000193.P11971136073564401504

namespace A000193

/-- `A004526(floor(log((n+1)²))+1)` -/
def P11971136073564401504.Spec : Prop :=
  ∀ n, P11971136073564401504.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P17892392693680527348

`A123108(floor(log((n+1)²))+1)`
-/

namespace A000193.P17892392693680527348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ + 1).toNat

end

end A000193.P17892392693680527348

namespace A000193

/-- `A123108(floor(log((n+1)²))+1)` -/
def P17892392693680527348.Spec : Prop :=
  ∀ n, P17892392693680527348.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P7693251791176572418

`A002265(ceil(4*log(n+1))+1)`
-/

namespace A000193.P7693251791176572418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (⌈4 * Real.log (n + 1 : ℝ)⌉ + 1).toNat

end

end A000193.P7693251791176572418

namespace A000193

/-- `A002265(ceil(4*log(n+1))+1)` -/
def P7693251791176572418.Spec : Prop :=
  ∀ n, P7693251791176572418.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P16229788589558864525

`A032517(ceil(floor(log((n+1)²))/2))`
-/

namespace A000193.P16229788589558864525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032517 ⌈(⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ : ℚ) / 2⌉.toNat

end

end A000193.P16229788589558864525

namespace A000193

/-- `A032517(ceil(floor(log((n+1)²))/2))` -/
def P16229788589558864525.Spec : Prop :=
  ∀ n, P16229788589558864525.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P12086314193160478865

`ceil(log(log(A288599(n))))`
-/

namespace A000193.P12086314193160478865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.log (A288599 n : ℝ))⌉

end

end A000193.P12086314193160478865

namespace A000193

/-- `ceil(log(log(A288599(n))))` -/
def P12086314193160478865.Spec : Prop :=
  ∀ n, P12086314193160478865.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P10707825793657076989

`ceil(log(log(A192804(n+3))))`
-/

namespace A000193.P10707825793657076989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.log (A192804 (n + 3) : ℝ))⌉

end

end A000193.P10707825793657076989

namespace A000193

/-- `ceil(log(log(A192804(n+3))))` -/
def P10707825793657076989.Spec : Prop :=
  ∀ n, P10707825793657076989.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P7016556790146173780

`floor(log(log(A145027(n+1))))+1`
-/

namespace A000193.P7016556790146173780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.log (A145027 (n + 1) : ℝ))⌋ + 1

end

end A000193.P7016556790146173780

namespace A000193

/-- `floor(log(log(A145027(n+1))))+1` -/
def P7016556790146173780.Spec : Prop :=
  ∀ n, P7016556790146173780.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P9225975672401751483

`A070939(A276611(A000217(n)+1))-1`
-/

namespace A000193.P9225975672401751483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A276611 (A000217 n + 1).toNat).toNat - 1

end

end A000193.P9225975672401751483

namespace A000193

/-- `A070939(A276611(A000217(n)+1))-1` -/
def P9225975672401751483.Spec : Prop :=
  ∀ n, P9225975672401751483.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P9605154035671988849

`floor(log(log(A022032(n))))`
-/

namespace A000193.P9605154035671988849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.log (A022032 n : ℝ))⌋

end

end A000193.P9605154035671988849

namespace A000193

/-- `floor(log(log(A022032(n))))` -/
def P9605154035671988849.Spec : Prop :=
  ∀ n, P9605154035671988849.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P5702230795275296

`A000195((n+1)²)-A000195(n+1)`
-/

namespace A000193.P5702230795275296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 ((n + 1) ^ 2) - A000195 (n + 1)

end

end A000193.P5702230795275296

namespace A000193

/-- `A000195((n+1)²)-A000195(n+1)` -/
def P5702230795275296.Spec : Prop :=
  ∀ n, P5702230795275296.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P11765807058859101850

`A004233((n+1)²)-A004233(n+1)`
-/

namespace A000193.P11765807058859101850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 ((n + 1) ^ 2) - A004233 (n + 1)

end

end A000193.P11765807058859101850

namespace A000193

/-- `A004233((n+1)²)-A004233(n+1)` -/
def P11765807058859101850.Spec : Prop :=
  ∀ n, P11765807058859101850.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P16345904618883134392

`A363832((n+1)²)-A363832(n+1)`
-/

namespace A000193.P16345904618883134392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 ((n + 1) ^ 2) - A363832 (n + 1)

end

end A000193.P16345904618883134392

namespace A000193

/-- `A363832((n+1)²)-A363832(n+1)` -/
def P16345904618883134392.Spec : Prop :=
  ∀ n, P16345904618883134392.a n = A000193 (n + 1)

end A000193

/-! ## A000193.P5077165646111917211

`A000195(A307074(A004233((n+1)²)))`
-/

namespace A000193.P5077165646111917211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A307074 (A004233 ((n + 1) ^ 2)).toNat).toNat

end

end A000193.P5077165646111917211

namespace A000193

/-- `A000195(A307074(A004233((n+1)²)))` -/
def P5077165646111917211.Spec : Prop :=
  ∀ n, P5077165646111917211.a n = A000193 (n + 1)

end A000193

/-!
# A000194: n appears 2n times, for n >= 1; also nearest integer to square root of n.

The programs for A000194, the canonical program `A000194.P3625933274776871084` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000194 has offset 0).

The definition of A000194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000194.P15920624006598728227

`floor(sqrt(n)+1/2)`
-/

namespace A000194.P15920624006598728227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A000194.P15920624006598728227

namespace A000194

/-- `floor(sqrt(n)+1/2)` -/
def P15920624006598728227.Spec : Prop :=
  ∀ n, P15920624006598728227.a n = A000194 n

end A000194

/-! ## A000194.P3625933274776871084

`a(n-2*a(n-a(n-1)))+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000194

/-- `a(n-2*a(n-a(n-1)))+1` -/
def P3625933274776871084.Spec : Prop :=
  ∀ n, (P3625933274776871084.a n : ℤ) = A000194 n

theorem P3625933274776871084.correct : P3625933274776871084.Spec := by
  intro n
  simp only [A000194]

end A000194

/-! ## A000194.P7529361376694325985

`sqrt(A053187(n))`
-/

namespace A000194.P7529361376694325985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053187 n : ℝ)

end

end A000194.P7529361376694325985

namespace A000194

/-- `sqrt(A053187(n))` -/
def P7529361376694325985.Spec : Prop :=
  ∀ n, P7529361376694325985.a n = (A000194 n : ℝ)

end A000194

/-! ## A000194.P13445772663958643332

`∑[char[or(1, ∑[2*n])]]`
-/

namespace A000194.P13445772663958643332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P13445772663958643332

namespace A000194

/-- `∑[char[or(1, ∑[2*n])]]` -/
def P13445772663958643332.Spec : Prop :=
  ∀ n, (P13445772663958643332.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P3591269986447053220

`∑[char[xor(1, ∑[2*n])]]`
-/

namespace A000194.P3591269986447053220
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P3591269986447053220

namespace A000194

/-- `∑[char[xor(1, ∑[2*n])]]` -/
def P3591269986447053220.Spec : Prop :=
  ∀ n, (P3591269986447053220.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P11329683572579769164

`comp[record[(1-n)²]]-n`
-/

namespace A000194.P11329683572579769164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A000194.P11329683572579769164

namespace A000194

/-- `comp[record[(1-n)²]]-n` -/
def P11329683572579769164.Spec : Prop :=
  ∀ n, P11329683572579769164.a n = A000194 n

end A000194

/-! ## A000194.P9941448708576655364

`comp[∑[comp[lcm(2, n)]]]-n`
-/

namespace A000194.P9941448708576655364
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P9941448708576655364

namespace A000194

/-- `comp[∑[comp[lcm(2, n)]]]-n` -/
def P9941448708576655364.Spec : Prop :=
  ∀ n, P9941448708576655364.a n = A000194 n

end A000194

/-! ## A000194.P1839222442755669078

`∑[char[2*C(n, 2)+1]]`
-/

namespace A000194.P1839222442755669078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P1839222442755669078

namespace A000194

/-- `∑[char[2*C(n, 2)+1]]` -/
def P1839222442755669078.Spec : Prop :=
  ∀ n, (P1839222442755669078.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P10902312524869338938

`ceil(sqrt(n-a(n-1)))` with `a(0)=0`
-/

namespace A000194.P10902312524869338938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.sqrt ((n : ℤ) - a (n - 1) : ℝ)⌉

end

end A000194.P10902312524869338938

namespace A000194

/-- `ceil(sqrt(n-a(n-1)))` -/
def P10902312524869338938.Spec : Prop :=
  ∀ n, P10902312524869338938.a n = A000194 n

end A000194

/-! ## A000194.P513366730357698268

`comp[n²+1]%(n+1)`
-/

namespace A000194.P513366730357698268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A000194.P513366730357698268

namespace A000194

/-- `comp[n²+1]%(n+1)` -/
def P513366730357698268.Spec : Prop :=
  ∀ n, (P513366730357698268.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P14837593111869757606

`comp[C(n+1, n)²]-n`
-/

namespace A000194.P14837593111869757606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P14837593111869757606

namespace A000194

/-- `comp[C(n+1, n)²]-n` -/
def P14837593111869757606.Spec : Prop :=
  ∀ n, P14837593111869757606.a n = A000194 n

end A000194

/-! ## A000194.P8361286603460556657

`comp[n^(2%(n+1))]-n`
-/

namespace A000194.P8361286603460556657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P8361286603460556657

namespace A000194

/-- `comp[n^(2%(n+1))]-n` -/
def P8361286603460556657.Spec : Prop :=
  ∀ n, P8361286603460556657.a n = A000194 n

end A000194

/-! ## A000194.P18208577205331973199

`∑[and(1, char[n²+1+n])]`
-/

namespace A000194.P18208577205331973199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P18208577205331973199

namespace A000194

/-- `∑[and(1, char[n²+1+n])]` -/
def P18208577205331973199.Spec : Prop :=
  ∀ n, (P18208577205331973199.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P7512827460302668468

`comp[∑[and(1, n+1)]²]-n`
-/

namespace A000194.P7512827460302668468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P7512827460302668468

namespace A000194

/-- `comp[∑[and(1, n+1)]²]-n` -/
def P7512827460302668468.Spec : Prop :=
  ∀ n, P7512827460302668468.a n = A000194 n

end A000194

/-! ## A000194.P4074679606709853803

`∑[char[or(2, n²)-(n+1)]]`
-/

namespace A000194.P4074679606709853803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n ^ 2) : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P4074679606709853803

namespace A000194

/-- `∑[char[or(2, n²)-(n+1)]]` -/
def P4074679606709853803.Spec : Prop :=
  ∀ n, (P4074679606709853803.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P9502206348820573887

`∑[char[xor(2, n²)-(n+1)]]`
-/

namespace A000194.P9502206348820573887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n ^ 2) : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P9502206348820573887

namespace A000194

/-- `∑[char[xor(2, n²)-(n+1)]]` -/
def P9502206348820573887.Spec : Prop :=
  ∀ n, (P9502206348820573887.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P18290757313623133331

`∑[char[∑[n+1]+C(n, 2)]]`
-/

namespace A000194.P18290757313623133331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000194.P18290757313623133331

namespace A000194

/-- `∑[char[∑[n+1]+C(n, 2)]]` -/
def P18290757313623133331.Spec : Prop :=
  ∀ n, (P18290757313623133331.a n : ℤ) = A000194 n

end A000194

/-! ## A000194.P10613781174180752696

`comp[gcd(n+1, ∑[n])²]-n`
-/

namespace A000194.P10613781174180752696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P10613781174180752696

namespace A000194

/-- `comp[gcd(n+1, ∑[n])²]-n` -/
def P10613781174180752696.Spec : Prop :=
  ∀ n, P10613781174180752696.a n = A000194 n

end A000194

/-! ## A000194.P2700451241023279630

`comp[∩[(n+1)², n²]]-n`
-/

namespace A000194.P2700451241023279630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P2700451241023279630

namespace A000194

/-- `comp[∩[(n+1)², n²]]-n` -/
def P2700451241023279630.Spec : Prop :=
  ∀ n, P2700451241023279630.a n = A000194 n

end A000194

/-! ## A000194.P10626973611760752300

`comp[∑[comp[and(n, n+1)]]]-n`
-/

namespace A000194.P10626973611760752300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A000194.P10626973611760752300

namespace A000194

/-- `comp[∑[comp[and(n, n+1)]]]-n` -/
def P10626973611760752300.Spec : Prop :=
  ∀ n, P10626973611760752300.a n = A000194 n

end A000194

/-!
# A000195: a(n) = floor(log(n)).

The programs for A000195, the canonical program `A000195.P8688712411297485984` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000195 has offset 1).

The definition of A000195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(n+1))` (program `A000195.P8688712411297485984`, by `A000195.P8688712411297485984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000195.P8688712411297485984

`floor(log(n+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000195

/-- `floor(log(n+1))` -/
def P8688712411297485984.Spec : Prop :=
  ∀ n, P8688712411297485984.a n = A000195 (n + 1)

theorem P8688712411297485984.correct : P8688712411297485984.Spec := by
  intro n
  simp only [A000195, Nat.add_sub_cancel]

end A000195

/-! ## A000195.P464700045013110400

`abs(ceil(log(acot(n+1))))`
-/

namespace A000195.P464700045013110400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌉|

end

end A000195.P464700045013110400

namespace A000195

/-- `abs(ceil(log(acot(n+1))))` -/
def P464700045013110400.Spec : Prop :=
  ∀ n, P464700045013110400.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P10094981741589342421

`-ceil(log(acot(n+1)))`
-/

namespace A000195.P10094981741589342421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A000195.P10094981741589342421

namespace A000195

/-- `-ceil(log(acot(n+1)))` -/
def P10094981741589342421.Spec : Prop :=
  ∀ n, P10094981741589342421.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P10013879104918948371

`dr(ceil(log(acot(n+1))))`
-/

namespace A000195.P10013879104918948371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈Real.log (SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A000195.P10013879104918948371

namespace A000195

/-- `dr(ceil(log(acot(n+1))))` -/
def P10013879104918948371.Spec : Prop :=
  ∀ n, (P10013879104918948371.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P13180932881267401177

`dr(ceil(log(1/(n+1))))`
-/

namespace A000195.P13180932881267401177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌈Real.log (1 / (n + 1 : ℚ) : ℝ)⌉

end

end A000195.P13180932881267401177

namespace A000195

/-- `dr(ceil(log(1/(n+1))))` -/
def P13180932881267401177.Spec : Prop :=
  ∀ n, (P13180932881267401177.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P2947537434135567416

`round(log(cosh(ceil(log(n+1)))))`
-/

namespace A000195.P2947537434135567416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (⌈Real.log (n + 1 : ℝ)⌉ : ℝ)))

end

end A000195.P2947537434135567416

namespace A000195

/-- `round(log(cosh(ceil(log(n+1)))))` -/
def P2947537434135567416.Spec : Prop :=
  ∀ n, P2947537434135567416.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P13658142763432526346

`abs(ceil(log(cos(atan(n+1)))))`
-/

namespace A000195.P13658142763432526346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.log (Real.cos (Real.arctan (n + 1 : ℝ)))⌉|

end

end A000195.P13658142763432526346

namespace A000195

/-- `abs(ceil(log(cos(atan(n+1)))))` -/
def P13658142763432526346.Spec : Prop :=
  ∀ n, P13658142763432526346.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P7655226830904727027

`-ceil(log(cos(atan(n+1))))`
-/

namespace A000195.P7655226830904727027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.log (Real.cos (Real.arctan (n + 1 : ℝ)))⌉

end

end A000195.P7655226830904727027

namespace A000195

/-- `-ceil(log(cos(atan(n+1))))` -/
def P7655226830904727027.Spec : Prop :=
  ∀ n, P7655226830904727027.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P11723835983669717954

`(ceil(log(n+1))-1)%(n+1)`
-/

namespace A000195.P11723835983669717954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.log (n + 1 : ℝ)⌉ - 1) (n + 1 : ℤ)

end

end A000195.P11723835983669717954

namespace A000195

/-- `(ceil(log(n+1))-1)%(n+1)` -/
def P11723835983669717954.Spec : Prop :=
  ∀ n, P11723835983669717954.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P16783788490668072912

`∑[char[Δ[A117869(n)]]]`
-/

namespace A000195.P16783788490668072912
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000195.P16783788490668072912

namespace A000195

/-- `∑[char[Δ[A117869(n)]]]` -/
def P16783788490668072912.Spec : Prop :=
  ∀ n, (P16783788490668072912.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P14161164078747534913

`A363832(n+1)-1`
-/

namespace A000195.P14161164078747534913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (n + 1) - 1

end

end A000195.P14161164078747534913

namespace A000195

/-- `A363832(n+1)-1` -/
def P14161164078747534913.Spec : Prop :=
  ∀ n, P14161164078747534913.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P9274839647087855938

`A172275(ceil(log(n+1)))`
-/

namespace A000195.P9274839647087855938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172275 ⌈Real.log (n + 1 : ℝ)⌉.toNat

end

end A000195.P9274839647087855938

namespace A000195

/-- `A172275(ceil(log(n+1)))` -/
def P9274839647087855938.Spec : Prop :=
  ∀ n, P9274839647087855938.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P17551689660735552262

`∑[char[A000149(n+1)]]`
-/

namespace A000195.P17551689660735552262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000195.P17551689660735552262

namespace A000195

/-- `∑[char[A000149(n+1)]]` -/
def P17551689660735552262.Spec : Prop :=
  ∀ n, (P17551689660735552262.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P15061325668492869137

`∑[char[floor(exp(A007318(n)))]]`
-/

namespace A000195.P15061325668492869137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A007318 n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000195.P15061325668492869137

namespace A000195

/-- `∑[char[floor(exp(A007318(n)))]]` -/
def P15061325668492869137.Spec : Prop :=
  ∀ n, (P15061325668492869137.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P7609248558758170342

`A212445(n+1)-(n+1)`
-/

namespace A000195.P7609248558758170342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1) - (n + 1 : ℤ)

end

end A000195.P7609248558758170342

namespace A000195

/-- `A212445(n+1)-(n+1)` -/
def P7609248558758170342.Spec : Prop :=
  ∀ n, P7609248558758170342.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P6981830222950818276

`∑[char[floor(exp(A000005(n+1)))]]`
-/

namespace A000195.P6981830222950818276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A000005 (n + 1) : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000195.P6981830222950818276

namespace A000195

/-- `∑[char[floor(exp(A000005(n+1)))]]` -/
def P6981830222950818276.Spec : Prop :=
  ∀ n, (P6981830222950818276.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P12499767708309900597

`∑[char[floor(exp(A001222(n+2)))]]`
-/

namespace A000195.P12499767708309900597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A001222 (n + 2) : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000195.P12499767708309900597

namespace A000195

/-- `∑[char[floor(exp(A001222(n+2)))]]` -/
def P12499767708309900597.Spec : Prop :=
  ∀ n, (P12499767708309900597.a n : ℤ) = A000195 (n + 1)

end A000195

/-! ## A000195.P13104701430332121008

`A054899(A004234(n+1))`
-/

namespace A000195.P13104701430332121008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A004234 (n + 1)).toNat

end

end A000195.P13104701430332121008

namespace A000195

/-- `A054899(A004234(n+1))` -/
def P13104701430332121008.Spec : Prop :=
  ∀ n, P13104701430332121008.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P6339446636845438669

`A028310(A004233(n+1))-1`
-/

namespace A000195.P6339446636845438669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004233 (n + 1)).toNat - 1

end

end A000195.P6339446636845438669

namespace A000195

/-- `A028310(A004233(n+1))-1` -/
def P6339446636845438669.Spec : Prop :=
  ∀ n, P6339446636845438669.a n = A000195 (n + 1)

end A000195

/-! ## A000195.P2237584293941162712

`A057428(n)+A004233(n+1)`
-/

namespace A000195.P2237584293941162712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004233 (n + 1)

end

end A000195.P2237584293941162712

namespace A000195

/-- `A057428(n)+A004233(n+1)` -/
def P2237584293941162712.Spec : Prop :=
  ∀ n, P2237584293941162712.a n = A000195 (n + 1)

end A000195

/-!
# A000196: Integer part of square root of n. Or, number of positive squares <= n. Or, n appears 2n+1 times.

The programs for A000196, the canonical program `A000196.P15434771586934192083` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000196 has offset 0).

The definition of A000196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000196.P15434771586934192083

`floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000196

/-- `floor(sqrt(n))` -/
def P15434771586934192083.Spec : Prop :=
  ∀ n, (P15434771586934192083.a n : ℤ) = A000196 n

theorem P15434771586934192083.correct : P15434771586934192083.Spec := by
  intro n
  simp only [A000196]

end A000196

/-! ## A000196.P12011894640370971021

`a(n-1)+floor(n/(a(n-1)+1)²)` with `a(0)=0`
-/

namespace A000196.P12011894640370971021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(n : ℚ) / ((a (n - 1) + 1) ^ 2 : ℚ)⌋

end

end A000196.P12011894640370971021

namespace A000196

/-- `a(n-1)+floor(n/(a(n-1)+1)²)` -/
def P12011894640370971021.Spec : Prop :=
  ∀ n, P12011894640370971021.a n = A000196 n

end A000196

/-! ## A000196.P95538901108365295

`sqrt(A048760(n))`
-/

namespace A000196.P95538901108365295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 n : ℝ)

end

end A000196.P95538901108365295

namespace A000196

/-- `sqrt(A048760(n))` -/
def P95538901108365295.Spec : Prop :=
  ∀ n, P95538901108365295.a n = (A000196 n : ℝ)

end A000196

/-! ## A000196.P3672418040694833639

`∑[char[xor(n, -1)²]]`
-/

namespace A000196.P3672418040694833639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P3672418040694833639

namespace A000196

/-- `∑[char[xor(n, -1)²]]` -/
def P3672418040694833639.Spec : Prop :=
  ∀ n, (P3672418040694833639.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P9679898074276162933

`∑[char[record[(1-n)²]]]`
-/

namespace A000196.P9679898074276162933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P9679898074276162933

namespace A000196

/-- `∑[char[record[(1-n)²]]]` -/
def P9679898074276162933.Spec : Prop :=
  ∀ n, (P9679898074276162933.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P13029377986942641145

`∑[and(1, char[(n+1)²])]`
-/

namespace A000196.P13029377986942641145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P13029377986942641145

namespace A000196

/-- `∑[and(1, char[(n+1)²])]` -/
def P13029377986942641145.Spec : Prop :=
  ∀ n, (P13029377986942641145.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P15133806717784479964

`∑[and(1, char[n²])]-1`
-/

namespace A000196.P15133806717784479964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A000196.P15133806717784479964

namespace A000196

/-- `∑[and(1, char[n²])]-1` -/
def P15133806717784479964.Spec : Prop :=
  ∀ n, P15133806717784479964.a n = A000196 n

end A000196

/-! ## A000196.P883402872143978866

`∑[char[∑[or(1, 2*n)]]]`
-/

namespace A000196.P883402872143978866
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P883402872143978866

namespace A000196

/-- `∑[char[∑[or(1, 2*n)]]]` -/
def P883402872143978866.Spec : Prop :=
  ∀ n, (P883402872143978866.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P5749078731049921676

`∑[char[∑[xor(1, 2*n)]]]`
-/

namespace A000196.P5749078731049921676
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P5749078731049921676

namespace A000196

/-- `∑[char[∑[xor(1, 2*n)]]]` -/
def P5749078731049921676.Spec : Prop :=
  ∀ n, (P5749078731049921676.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P17762253297309580252

`∑[char[C(n+1, n)²]]`
-/

namespace A000196.P17762253297309580252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P17762253297309580252

namespace A000196

/-- `∑[char[C(n+1, n)²]]` -/
def P17762253297309580252.Spec : Prop :=
  ∀ n, (P17762253297309580252.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P5648102905579245529

`round(log(cosh(ceil(sqrt(n+1)))))`
-/

namespace A000196.P5648102905579245529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (⌈Real.sqrt (n + 1 : ℝ)⌉ : ℝ)))

end

end A000196.P5648102905579245529

namespace A000196

/-- `round(log(cosh(ceil(sqrt(n+1)))))` -/
def P5648102905579245529.Spec : Prop :=
  ∀ n, P5648102905579245529.a n = A000196 n

end A000196

/-! ## A000196.P14810594397800423766

`round(log(sinh(ceil(sqrt(n+1)))))`
-/

namespace A000196.P14810594397800423766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sinh (⌈Real.sqrt (n + 1 : ℝ)⌉ : ℝ)))

end

end A000196.P14810594397800423766

namespace A000196

/-- `round(log(sinh(ceil(sqrt(n+1)))))` -/
def P14810594397800423766.Spec : Prop :=
  ∀ n, P14810594397800423766.a n = A000196 n

end A000196

/-! ## A000196.P15107143799114677719

`∑[char[∑[char[lcm(2, n)]]²]]`
-/

namespace A000196.P15107143799114677719
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P15107143799114677719

namespace A000196

/-- `∑[char[∑[char[lcm(2, n)]]²]]` -/
def P15107143799114677719.Spec : Prop :=
  ∀ n, (P15107143799114677719.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P5950309550493200881

`∑[char[∑[char[C(n, 2)]]²]]`
-/

namespace A000196.P5950309550493200881
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P5950309550493200881

namespace A000196

/-- `∑[char[∑[char[C(n, 2)]]²]]` -/
def P5950309550493200881.Spec : Prop :=
  ∀ n, (P5950309550493200881.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P10067405697075949379

`∑[char[∑[char[∑{d}[n, #]]]²]]`
-/

namespace A000196.P10067405697075949379
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f5 n), d

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P10067405697075949379

namespace A000196

/-- `∑[char[∑[char[∑{d}[n, #]]]²]]` -/
def P10067405697075949379.Spec : Prop :=
  ∀ n, (P10067405697075949379.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P15970350764018054814

`round(sqrt(n-a(n-1)))` with `a(0)=0`
-/

namespace A000196.P15970350764018054814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℤ) - a (n - 1) : ℝ))

end

end A000196.P15970350764018054814

namespace A000196

/-- `round(sqrt(n-a(n-1)))` -/
def P15970350764018054814.Spec : Prop :=
  ∀ n, P15970350764018054814.a n = A000196 n

end A000196

/-! ## A000196.P10789539851387307565

`char[n²]+a(n-1)` with `a(0)=0`
-/

namespace A000196.P10789539851387307565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A000196.P10789539851387307565

namespace A000196

/-- `char[n²]+a(n-1)` -/
def P10789539851387307565.Spec : Prop :=
  ∀ n, (P10789539851387307565.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P48583918842436704

`comp[∑[2*n]]%(n+1)`
-/

namespace A000196.P48583918842436704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A000196.P48583918842436704

namespace A000196

/-- `comp[∑[2*n]]%(n+1)` -/
def P48583918842436704.Spec : Prop :=
  ∀ n, (P48583918842436704.a n : ℤ) = A000196 n

end A000196

/-! ## A000196.P14204597362499252492

`∑[char[∩[(n+1)², n²]]]`
-/

namespace A000196.P14204597362499252492
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∧ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000196.P14204597362499252492

namespace A000196

/-- `∑[char[∩[(n+1)², n²]]]` -/
def P14204597362499252492.Spec : Prop :=
  ∀ n, (P14204597362499252492.a n : ℤ) = A000196 n

end A000196

/-!
# A000197: 

The programs for A000197, there is no canonical definition to state claims against.
-/

/-! ## A000197.P5212894113113657982

`n!!`
-/

namespace A000197.P5212894113113657982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial n)

end

end A000197.P5212894113113657982

/-!
# A000198: Largest order of automorphism group of a tournament with n nodes.

The programs for A000198, there is no canonical definition to state claims against.
-/

/-! ## A000198.P8793682294331365480

`A050354(A170834(n+2))`
-/

namespace A000198.P8793682294331365480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (A170834 (n + 2)).toNat

end

end A000198.P8793682294331365480

/-! ## A000198.P8025102231631174772

`A348582(∏[(n+1)/2^val(n+1, 2)])`
-/

namespace A000198.P8025102231631174772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A000198.P8025102231631174772

/-! ## A000198.P15624974049543319015

`A274773(A302287(n))`
-/

namespace A000198.P15624974049543319015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (A302287 n).toNat

end

end A000198.P15624974049543319015

/-! ## A000198.P8877212977555245417

`A361782(A160612(n+1))`
-/

namespace A000198.P8877212977555245417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361782 (A160612 (n + 1)).toNat

end

end A000198.P8877212977555245417

/-! ## A000198.P14245958328743151464

`A348582(A209430(n+1))`
-/

namespace A000198.P14245958328743151464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (A209430 (n + 1)).toNat

end

end A000198.P14245958328743151464

/-!
# A000199: Coefficient of q^(2n-1) in the series expansion of Ramanujan's mock theta function f(q).

The programs for A000199, there is no canonical definition to state claims against.
-/

/-! ## A000199.P1955708599081158610

`A000025(Δ[n²])`
-/

namespace A000199.P1955708599081158610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000199.P1955708599081158610

/-! ## A000199.P325849111431104178

`abs(A000025(2*n+1))`
-/

namespace A000199.P325849111431104178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000025 (2 * n + 1)|

end

end A000199.P325849111431104178

/-! ## A000199.P5551249902119378666

`2-4/2+A000025(n+1+n)`
-/

namespace A000199.P5551249902119378666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + (A000025 (n + 1 + n) : ℚ)

end

end A000199.P5551249902119378666

/-! ## A000199.P317756149337712801

`A000025(2*n+1)+A000007(n+2)`
-/

namespace A000199.P317756149337712801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + A000007 (n + 2)

end

end A000199.P317756149337712801

/-! ## A000199.P5887022342712488169

`A000025(2*n+1)+∑[A033487(n)]%3`
-/

namespace A000199.P5887022342712488169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A000199.P5887022342712488169

/-! ## A000199.P6084586193256031726

`A000025(2*n+1)%A000025(A140978(n+1))`
-/

namespace A000199.P6084586193256031726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000025 (2 * n + 1)) (A000025 (A140978 (n + 1)).toNat)

end

end A000199.P6084586193256031726

/-! ## A000199.P15249437390381083625

`A340601(2*n+1)-2*A101707(2*n+1)`
-/

namespace A000199.P15249437390381083625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 (2 * n + 1) - 2 * A101707 (2 * n + 1)

end

end A000199.P15249437390381083625

/-! ## A000199.P8423064905842495936

`2*A340601(2*n+1)-A000041(2*n+1)`
-/

namespace A000199.P8423064905842495936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340601 (2 * n + 1) - A000041 (2 * n + 1)

end

end A000199.P8423064905842495936

/-! ## A000199.P9805970050658367783

`2*A053251(2*n+1)-A053250(2*n+1)`
-/

namespace A000199.P9805970050658367783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053251 (2 * n + 1) - A053250 (2 * n + 1)

end

end A000199.P9805970050658367783

/-! ## A000199.P289617192763792973

`A132969(2*n+1)-2*A053250(2*n+1)`
-/

namespace A000199.P289617192763792973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 (2 * n + 1) - 2 * A053250 (2 * n + 1)

end

end A000199.P289617192763792973

/-! ## A000199.P10701191362495633294

`abs(A260460(2*n+1))`
-/

namespace A000199.P10701191362495633294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260460 (2 * n + 1)|

end

end A000199.P10701191362495633294

/-! ## A000199.P9312807335330721934

`A033999(2*n+1)*A260460(2*n+1)`
-/

namespace A000199.P9312807335330721934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A260460 (2 * n + 1)

end

end A000199.P9312807335330721934

/-! ## A000199.P14512179142817222497

`A057979(A057979(2*n))-A260460(2*n+1)`
-/

namespace A000199.P14512179142817222497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 (2 * n)).toNat - A260460 (2 * n + 1)

end

end A000199.P14512179142817222497

/-! ## A000199.P15217586199837464716

`A000025(2*n+1)+and(1, A285944(n+10))`
-/

namespace A000199.P15217586199837464716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.land 1 (A285944 (n + 10))

end

end A000199.P15217586199837464716

/-! ## A000199.P7301314570996013507

`A000025(2*n+1)+and(1, A285437(n+11))`
-/

namespace A000199.P7301314570996013507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.land 1 (A285437 (n + 11))

end

end A000199.P7301314570996013507

/-! ## A000199.P10417933988284606208

`A000025(2*n+1)+and(1, A288808(n+11))`
-/

namespace A000199.P10417933988284606208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.land 1 (A288808 (n + 11))

end

end A000199.P10417933988284606208

/-! ## A000199.P2294394000553346089

`A340601(2*n+1)-A340692(2*n+1)`
-/

namespace A000199.P2294394000553346089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 (2 * n + 1) - A340692 (2 * n + 1)

end

end A000199.P2294394000553346089

/-! ## A000199.P1879302711806320348

`A000025(2*n+1)+A094033(n+1)%3`
-/

namespace A000199.P1879302711806320348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.tmod (A094033 (n + 1)) 3

end

end A000199.P1879302711806320348

/-! ## A000199.P3462876151582860140

`A000025(2*n+1)+and(2, A000079(2*n))`
-/

namespace A000199.P3462876151582860140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.land 2 (A000079 (2 * n))

end

end A000199.P3462876151582860140

/-! ## A000199.P15189260736815701690

`A000025(2*n+1)+and(1, A285942(n+1))`
-/

namespace A000199.P15189260736815701690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (2 * n + 1) + Int.land 1 (A285942 (n + 1))

end

end A000199.P15189260736815701690

