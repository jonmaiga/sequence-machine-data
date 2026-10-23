import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A249600: Decimal expansion of 1/phi + 1/phi^3 + 1/phi^5, where phi is the golden ratio.

The programs for A249600, there is no canonical definition to state claims against.
-/

/-! ## A249600.P10119438123889970671

`A010532(n+1)`
-/

namespace A249600.P10119438123889970671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010532 (n + 1 + 1)

end

end A249600.P10119438123889970671

/-! ## A249600.P13881564824079951016

`A010532(ϕ²-(ϕ-n))%10`
-/

namespace A249600.P13881564824079951016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010532 ((SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat + 1)) 10

end

end A249600.P13881564824079951016

/-! ## A249600.P9980780938292447951

`9-A393801(n+1)`
-/

namespace A249600.P9980780938292447951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A393801 (n + 1)

end

end A249600.P9980780938292447951

/-! ## A249600.P1924014508356722414

`A378976(n+2)`
-/

namespace A249600.P1924014508356722414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378976 (n + 2 + 1)

end

end A249600.P1924014508356722414

/-! ## A249600.P4670867990725032762

`dr(A010532(A008619(2*n)))`
-/

namespace A249600.P4670867990725032762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A010532 ((A008619 (2 * n)).toNat + 1))

end

end A249600.P4670867990725032762

/-!
# A249602: Indices of primes in A084937.

The programs for A249602, there is no canonical definition to state claims against.
-/

/-! ## A249602.P13109415499665769198

`A084933(p?[comp[n²]])`
-/

namespace A249602.P13109415499665769198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A249602.P13109415499665769198

/-! ## A249602.P16645787106366174020

`A084933(A000040(n+1))`
-/

namespace A249602.P16645787106366174020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (A000040 (n + 1)).toNat

end

end A249602.P16645787106366174020

/-! ## A249602.P5692763047031268623

`A084933(A008578(n+2))`
-/

namespace A249602.P5692763047031268623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (A008578 (n + 2)).toNat

end

end A249602.P5692763047031268623

/-! ## A249602.P9321713512417564620

`A084933(A182986(n+2))`
-/

namespace A249602.P9321713512417564620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (A182986 (n + 2)).toNat

end

end A249602.P9321713512417564620

/-! ## A249602.P4441616326447965621

`A084933(record[A006530(n+2)])`
-/

namespace A249602.P4441616326447965621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249602.P4441616326447965621

/-! ## A249602.P308794407315455191

`A084933(record[A014963(n+2)])`
-/

namespace A249602.P308794407315455191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249602.P308794407315455191

/-! ## A249602.P15843270689737913551

`A084933(record[A020639(n+2)])`
-/

namespace A249602.P15843270689737913551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249602.P15843270689737913551

/-! ## A249602.P15837764485396184619

`A084933(ceil(sqrt(A084920(n+1))))`
-/

namespace A249602.P15837764485396184619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 ⌈Real.sqrt (A084920 (n + 1) : ℝ)⌉.toNat

end

end A249602.P15837764485396184619

/-! ## A249602.P8619467421729665773

`A084933(sqrt(A084920(n+1)+1))`
-/

namespace A249602.P8619467421729665773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (SequenceMachineLib.roundAway (Real.sqrt (A084920 (n + 1) + 1 : ℝ))).toNat

end

end A249602.P8619467421729665773

/-! ## A249602.P3421217611057536253

`eq[A014963(A084937(n+2)), A084937(n+2)]+2`
-/

namespace A249602.P3421217611057536253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A084937 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A249602.P3421217611057536253

/-!
# A249603: A084937 mod 3.

The programs for A249603, there is no canonical definition to state claims against.
-/

/-! ## A249603.P10894888579968663165

`A084937(n+1)%3`
-/

namespace A249603.P10894888579968663165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084937 (n + 1)) 3

end

end A249603.P10894888579968663165

/-! ## A249603.P12792058608277465336

`A010872(∑{digits}[A084937(n+1), #])`
-/

namespace A249603.P12792058608277465336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A249603.P12792058608277465336

/-! ## A249603.P3262869664145510441

`1-A057078(∑{digits}[A084937(n+1), #])`
-/

namespace A249603.P3262869664145510441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057078 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A249603.P3262869664145510441

/-! ## A249603.P12467921138780846093

`A010872(A084937(n+1))`
-/

namespace A249603.P12467921138780846093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A084937 (n + 1)).toNat

end

end A249603.P12467921138780846093

/-! ## A249603.P2375200103184776768

`A060588(6*A084937(n+1))`
-/

namespace A249603.P2375200103184776768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060588 (6 * A084937 (n + 1)).toNat

end

end A249603.P2375200103184776768

/-! ## A249603.P2312556324294542934

`1-(A353760(A353764(n+1))+A057078(A084937(n+1)))`
-/

namespace A249603.P2312556324294542934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A353760 (A353764 (n + 1)).toNat + A057078 (A084937 (n + 1)).toNat)

end

end A249603.P2312556324294542934

/-!
# A249604: a(n) = Sum_{i=1..n} Fibonacci(i)*10^(i-1).

The programs for A249604, the canonical program `A249604.P11983941165079165727` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249604 has offset 1).

The definition of A249604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249604.P11983941165079165727

`11*a(n-1)+90*a(n-2)-100*a(n-3)` with `a(0)=1, a(1)=11, a(2)=211`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249604

/-- `11*a(n-1)+90*a(n-2)-100*a(n-3)` -/
def P11983941165079165727.Spec : Prop :=
  ∀ n, P11983941165079165727.a n = A249604 (n + 1)

theorem P11983941165079165727.correct : P11983941165079165727.Spec := by
  intro n
  simp only [A249604, Nat.add_sub_cancel]

end A249604

/-! ## A249604.P15893395496011668519

`∑[10^n*∑[A212804(n)]]`
-/

namespace A249604.P15893395496011668519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P15893395496011668519

namespace A249604

/-- `∑[10^n*∑[A212804(n)]]` -/
def P15893395496011668519.Spec : Prop :=
  ∀ n, P15893395496011668519.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P1879772140643786454

`∑[10^n*A000045(n+1)]`
-/

namespace A249604.P1879772140643786454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P1879772140643786454

namespace A249604

/-- `∑[10^n*A000045(n+1)]` -/
def P1879772140643786454.Spec : Prop :=
  ∀ n, P1879772140643786454.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P2072200642921528725

`∑[10^n*A163227(2*n+1)]`
-/

namespace A249604.P2072200642921528725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A163227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P2072200642921528725

namespace A249604

/-- `∑[10^n*A163227(2*n+1)]` -/
def P2072200642921528725.Spec : Prop :=
  ∀ n, P2072200642921528725.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P917937718425868015

`∑[A011557(n)*A058071(∑[n])]`
-/

namespace A249604.P917937718425868015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A058071 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P917937718425868015

namespace A249604

/-- `∑[A011557(n)*A058071(∑[n])]` -/
def P917937718425868015.Spec : Prop :=
  ∀ n, P917937718425868015.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P14965999177089555932

`∑[A000045(n+1)*A011557(n)]`
-/

namespace A249604.P14965999177089555932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P14965999177089555932

namespace A249604

/-- `∑[A000045(n+1)*A011557(n)]` -/
def P14965999177089555932.Spec : Prop :=
  ∀ n, P14965999177089555932.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P15241497585620101826

`∑[A000045(n+1)*Δ[A002275(n)]]`
-/

namespace A249604.P15241497585620101826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P15241497585620101826

namespace A249604

/-- `∑[A000045(n+1)*Δ[A002275(n)]]` -/
def P15241497585620101826.Spec : Prop :=
  ∀ n, P15241497585620101826.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P6644314477344398838

`∑[A000045(n+1)*A004643(2*n)]`
-/

namespace A249604.P6644314477344398838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A004643 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P6644314477344398838

namespace A249604

/-- `∑[A000045(n+1)*A004643(2*n)]` -/
def P6644314477344398838.Spec : Prop :=
  ∀ n, P6644314477344398838.a n = A249604 (n + 1)

end A249604

/-! ## A249604.P1838401983259112728

`∑[A000045(n+1)*A017936(2*n+1)]`
-/

namespace A249604.P1838401983259112728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A017936 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249604.P1838401983259112728

namespace A249604

/-- `∑[A000045(n+1)*A017936(2*n+1)]` -/
def P1838401983259112728.Spec : Prop :=
  ∀ n, P1838401983259112728.a n = A249604 (n + 1)

end A249604

/-!
# A249605: Dissectible numbers in the sense of Gunjikar and Kaprekar.

The programs for A249605, there is no canonical definition to state claims against.
-/

/-! ## A249605.P18283732323326079161

`9*(A329299(n+1)+1)`
-/

namespace A249605.P18283732323326079161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A329299 (n + 1) + 1)

end

end A249605.P18283732323326079161

/-! ## A249605.P17947430110384692127

`A008591(A329299(n+1)+1)`
-/

namespace A249605.P17947430110384692127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A329299 (n + 1) + 1).toNat

end

end A249605.P17947430110384692127

/-! ## A249605.P11807650850687255604

`9*A028904(A092598(n+1))`
-/

namespace A249605.P11807650850687255604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A028904 (A092598 (n + 1)).toNat

end

end A249605.P11807650850687255604

/-!
# A249606: Primes of the form 2k^2 + k + 2.

The programs for A249606, there is no canonical definition to state claims against.
-/

/-! ## A249606.P17287877790192434211

`∩[A055472(n+1), A096376(n)]`
-/

namespace A249606.P17287877790192434211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P17287877790192434211

/-! ## A249606.P7337195624682831893

`∩[A055472(n+1), A116735(n+1)]`
-/

namespace A249606.P7337195624682831893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P7337195624682831893

/-! ## A249606.P17928597856787452941

`∩[A055472(n+1), A089781(n+1)]`
-/

namespace A249606.P17928597856787452941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P17928597856787452941

/-! ## A249606.P4098775909636412327

`∩[A055472(n+1), A236453(n)+1]`
-/

namespace A249606.P4098775909636412327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P4098775909636412327

/-! ## A249606.P15199857962931149998

`∩[A055472(n+1), A373662(n+1)]`
-/

namespace A249606.P15199857962931149998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P15199857962931149998

/-! ## A249606.P9462876738436533015

`∩[A055472(n+1), A022856(A005843(n+2))]`
-/

namespace A249606.P9462876738436533015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A005843 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P9462876738436533015

/-! ## A249606.P9491245260769263387

`∩[A077128(n+1), A096376(n)]`
-/

namespace A249606.P9491245260769263387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P9491245260769263387

/-! ## A249606.P7117236953175782736

`∩[A077128(n+1), A116735(n+1)]`
-/

namespace A249606.P7117236953175782736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P7117236953175782736

/-! ## A249606.P17269544122038122

`∩[A077128(n+1), A373662(n+1)]`
-/

namespace A249606.P17269544122038122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P17269544122038122

/-! ## A249606.P1678677355435228399

`∩[A106858(n+1), A096376(n)]`
-/

namespace A249606.P1678677355435228399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249606.P1678677355435228399

/-!
# A249607: E.g.f.: BesselJ(0,2)*P(x) + Q(x), where P(x) = 1/Product_{n>=1} (1 - x^n/n^2) and Q(x) = Sum_{n>=1} -(-1)^n/Product_{k=1..n} (k^2 - x^k).

The programs for A249607, there is no canonical definition to state claims against.
-/

/-! ## A249607.P18349633464606113355

`A117893(n!²)`
-/

namespace A249607.P18349633464606113355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117893 (Nat.factorial n ^ 2)

end

end A249607.P18349633464606113355

/-!
# A249608: Expansion of e.g.f.: exp(x) * BesselI(0, 2*x) * BesselI(0, 2*sqrt(2)*x).

The programs for A249608, there is no canonical definition to state claims against.
-/

/-! ## A249608.P14829654661016413331

`A000265(A098264(n)+A002426(n))`
-/

namespace A249608.P14829654661016413331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A098264 n + A002426 n).toNat

end

end A249608.P14829654661016413331

/-! ## A249608.P15841685393015223855

`A004526(A098264(n)+A002426(n))`
-/

namespace A249608.P15841685393015223855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098264 n + A002426 n).toNat

end

end A249608.P15841685393015223855

/-! ## A249608.P5158541043420243955

`A025480(A098264(n)+A002426(n))`
-/

namespace A249608.P5158541043420243955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A098264 n + A002426 n).toNat

end

end A249608.P5158541043420243955

/-!
# A249609: a(n) is the smallest m, 1<=m<=n, such that binomial(n,m) is evil (A001969); a(n)=0 if there is no such m.

The programs for A249609, there is no canonical definition to state claims against.
-/

/-! ## A249609.P17891411427779254111

`val(A249664(n)+1, 2)%(n+1)`
-/

namespace A249609.P17891411427779254111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249664 n + 1).toNat 2 % (n + 1)

end

end A249609.P17891411427779254111

/-!
# A249612: Integers that reach the (448, 127, 128, 255, 144, 403) cycle described in A234534, after iterations of numerator(sigma(n)/n) = A017665(n).

The programs for A249612, there is no canonical definition to state claims against.
-/

/-! ## A249612.P11546961892109139580

`lt[A174097(A174050(n+3)), A174057(n+1)]`
-/

namespace A249612.P11546961892109139580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174097 (A174050 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249612.P11546961892109139580

/-! ## A249612.P17911344745977365223

`lt[A000002(2*n+5), A242784(A035064(n+1))]`
-/

namespace A249612.P17911344745977365223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A035064 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249612.P17911344745977365223

/-! ## A249612.P16344799043777438715

`lt[A100484(n+5), A292247(A240877(n))]`
-/

namespace A249612.P16344799043777438715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292247 (A240877 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249612.P16344799043777438715

/-! ## A249612.P17651767970514813574

`lt[A338392(n+1), A301784(A022544(n+1))]`
-/

namespace A249612.P17651767970514813574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (A022544 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249612.P17651767970514813574

/-!
# A249615: Number of non-singleton blocks in the n-th set partition (A231428).

The programs for A249615, there is no canonical definition to state claims against.
-/

/-! ## A249615.P18280229581620322054

`A194548(A249617(n)+1)`
-/

namespace A249615.P18280229581620322054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (A249617 n + 1).toNat

end

end A249615.P18280229581620322054

/-! ## A249615.P3586846501286719722

`A193330(A249617(n))%(A016365(n)+5)`
-/

namespace A249615.P3586846501286719722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193330 (A249617 n).toNat) (A016365 n + 5)

end

end A249615.P3586846501286719722

/-! ## A249615.P9969479493161933915

`A051903(A086715(n+1))*A193330(A249617(n))`
-/

namespace A249615.P9969479493161933915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A086715 (n + 1)).toNat * A193330 (A249617 n).toNat

end

end A249615.P9969479493161933915

/-! ## A249615.P2851515586674146168

`A051903(A086715(n+2))+A193330(A249617(n))-1`
-/

namespace A249615.P2851515586674146168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A086715 (n + 2)).toNat + (A193330 (A249617 n).toNat - 1)

end

end A249615.P2851515586674146168

/-! ## A249615.P18420182540699652069

`A000034(A078492(n))*A193330(A249617(n))`
-/

namespace A249615.P18420182540699652069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A078492 n).toNat * A193330 (A249617 n).toNat

end

end A249615.P18420182540699652069

/-! ## A249615.P10289649913201852936

`gcd(A193330(A249617(n)), A204220(A267124(2*n+3)))`
-/

namespace A249615.P10289649913201852936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193330 (A249617 n).toNat) (A204220 (A267124 (2 * n + 3)).toNat)

end

end A249615.P10289649913201852936

/-! ## A249615.P6533214439556275105

`A209229(A338529(n+1))+A193330(A249617(n))`
-/

namespace A249615.P6533214439556275105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A338529 (n + 1)).toNat + A193330 (A249617 n).toNat

end

end A249615.P6533214439556275105

/-! ## A249615.P6202346629135395117

`A193330(A249617(n))+A000007(A050322(n+1))`
-/

namespace A249615.P6202346629135395117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A249617 n).toNat + A000007 (A050322 (n + 1)).toNat

end

end A249615.P6202346629135395117

/-! ## A249615.P7901406762941317391

`A000035(A152714(n))*A193330(A249617(n))`
-/

namespace A249615.P7901406762941317391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A152714 n).toNat * A193330 (A249617 n).toNat

end

end A249615.P7901406762941317391

/-! ## A249615.P10734936537018244217

`A115362(A266074(n))*A193330(A249617(n))`
-/

namespace A249615.P10734936537018244217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A266074 n).toNat * A193330 (A249617 n).toNat

end

end A249615.P10734936537018244217

/-! ## A249615.P4613941045284211240

`A193330(A249617(n))+A000122(A304839(n+1)+6)`
-/

namespace A249615.P4613941045284211240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A249617 n).toNat + A000122 (A304839 (n + 1) + 6).toNat

end

end A249615.P4613941045284211240

/-! ## A249615.P14402844870566853392

`A001222(A249617(n)+A001222(A171600(n+1)))`
-/

namespace A249615.P14402844870566853392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249617 n + A001222 (A171600 (n + 1)).toNat).toNat

end

end A249615.P14402844870566853392

/-! ## A249615.P5912545360376314048

`A193330(A249617(n))^A020513(A030664(n))²`
-/

namespace A249615.P5912545360376314048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193330 (A249617 n).toNat : ℚ) ^ (A020513 (A030664 n).toNat ^ 2 : ℤ)

end

end A249615.P5912545360376314048

/-! ## A249615.P2629226150234771606

`A034947(n²+5)²*A193330(A249617(n))`
-/

namespace A249615.P2629226150234771606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) ^ 2 * A193330 (A249617 n).toNat

end

end A249615.P2629226150234771606

/-!
# A249616: Number of elements in non-singleton blocks in the n-th set partition (A231428).

The programs for A249616, there is no canonical definition to state claims against.
-/

/-! ## A249616.P15787030254873197189

`floor(log2((A249617(n)+1)²))`
-/

namespace A249616.P15787030254873197189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((A249617 n + 1) ^ 2).toNat

end

end A249616.P15787030254873197189

/-! ## A249616.P4081035518688270792

`A267530(A249617(n))+A079979(A016778(n))`
-/

namespace A249616.P4081035518688270792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A249617 n).toNat + A079979 (A016778 n).toNat

end

end A249616.P4081035518688270792

/-! ## A249616.P1029019843889665348

`A267530(A249617(n))+A000007(A126854(n))`
-/

namespace A249616.P1029019843889665348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A249617 n).toNat + A000007 (A126854 n).toNat

end

end A249616.P1029019843889665348

/-! ## A249616.P14332822138954091997

`A267530(A249617(n))+A000122(A107755(3*n+2))`
-/

namespace A249616.P14332822138954091997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A249617 n).toNat + A000122 (A107755 (3 * n + 2)).toNat

end

end A249616.P14332822138954091997

/-! ## A249616.P18008376791666606406

`A267530(A249617(n))+A079979(A202511(n+1))`
-/

namespace A249616.P18008376791666606406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A249617 n).toNat + A079979 (A202511 (n + 1)).toNat

end

end A249616.P18008376791666606406

/-! ## A249616.P13002824472741376546

`A267530(A249617(n))+A008683(A001248(n+1))`
-/

namespace A249616.P13002824472741376546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (A249617 n).toNat + A008683 (A001248 (n + 1)).toNat

end

end A249616.P13002824472741376546

/-! ## A249616.P13473398534984820255

`A008683(A033476(2*n+1))*A267530(A249617(n))`
-/

namespace A249616.P13473398534984820255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A033476 (2 * n + 1)).toNat * A267530 (A249617 n).toNat

end

end A249616.P13473398534984820255

/-!
# A249617: Integer partition (A194602) of the n-th set partition (A231428).

The programs for A249617, there is no canonical definition to state claims against.
-/

/-! ## A249617.P9977724604328058085

`A064547(A215327(n)-A324965(n))`
-/

namespace A249617.P9977724604328058085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A215327 n - A324965 n).toNat

end

end A249617.P9977724604328058085

/-! ## A249617.P17372004210461899508

`A001222(A131666(A038722(n+1)+2))`
-/

namespace A249617.P17372004210461899508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A131666 (A038722 (n + 1) + 2).toNat).toNat

end

end A249617.P17372004210461899508

/-! ## A249617.P13221288222430448770

`A353835(A271269(n+1)+A213683(n))`
-/

namespace A249617.P13221288222430448770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A271269 (n + 1) + A213683 n).toNat

end

end A249617.P13221288222430448770

/-! ## A249617.P8056224115523005110

`A001222(or(A032012(n), A050065(n+1)))`
-/

namespace A249617.P8056224115523005110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A032012 n) (A050065 (n + 1))).toNat

end

end A249617.P8056224115523005110

/-! ## A249617.P2725314959042330062

`A072789(n+1)-A066099(A091351(3*(n+1)))`
-/

namespace A249617.P2725314959042330062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072789 (n + 1) - A066099 (A091351 (3 * (n + 1))).toNat

end

end A249617.P2725314959042330062

/-!
# A249619: Triangle T(m,n) = number of permutations of a multiset with m elements and signature corresponding to n-th integer partition (A194602).

The programs for A249619, there is no canonical definition to state claims against.
-/

/-! ## A249619.P14237274213655158048

`A318762(A334437(n))`
-/

namespace A249619.P14237274213655158048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A334437 n).toNat

end

end A249619.P14237274213655158048

/-! ## A249619.P17742884838454647650

`A318808(2*A334437(n))`
-/

namespace A249619.P17742884838454647650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A334437 n).toNat

end

end A249619.P17742884838454647650

/-! ## A249619.P15940944949592894290

`A318810(2*A334437(n))`
-/

namespace A249619.P15940944949592894290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A334437 n).toNat

end

end A249619.P15940944949592894290

/-! ## A249619.P5149877985339794539

`A318808(A334437(n)+A334437(n))`
-/

namespace A249619.P5149877985339794539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A334437 n + A334437 n).toNat

end

end A249619.P5149877985339794539

/-! ## A249619.P2710380194271163780

`A221915(n)*A336839(A221925(n+3))`
-/

namespace A249619.P2710380194271163780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221915 n * A336839 (A221925 (n + 3)).toNat

end

end A249619.P2710380194271163780

/-!
# A249620: Triangle read by rows: T(m,n) = number of partitions of the multiset with m elements and signature corresponding to n-th integer partition (A194602).

The programs for A249620, there is no canonical definition to state claims against.
-/

/-! ## A249620.P5171444432308851972

`A318284(A334437(n))`
-/

namespace A249620.P5171444432308851972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A334437 n).toNat

end

end A249620.P5171444432308851972

/-!
# A249621: 

The programs for A249621, there is no canonical definition to state claims against.
-/

/-! ## A249621.P5744984643321895871

`A249633(n+1)²`
-/

namespace A249621.P5744984643321895871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249633 (n + 1) ^ 2

end

end A249621.P5744984643321895871

/-!
# A249622: a(n) = number of ways to express A117048(n) as the sum of two positive triangular numbers.

The programs for A249622, the canonical program `A249622.P13007679305527716333` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249622 has offset 1).

The definition of A249622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249622.P3400038199123349635

`A052343(A117048(n+1))`
-/

namespace A249622.P3400038199123349635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A117048 (n + 1)).toNat

end

end A249622.P3400038199123349635

namespace A249622

/-- `A052343(A117048(n+1))` -/
def P3400038199123349635.Spec : Prop :=
  ∀ n, P3400038199123349635.a n = A249622 (n + 1)

end A249622

/-! ## A249622.P4535958397749857171

`A052343(A117112(n+2))`
-/

namespace A249622.P4535958397749857171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A117112 (n + 2)).toNat

end

end A249622.P4535958397749857171

namespace A249622

/-- `A052343(A117112(n+2))` -/
def P4535958397749857171.Spec : Prop :=
  ∀ n, P4535958397749857171.a n = A249622 (n + 1)

end A249622

/-! ## A249622.P13007679305527716333

`A052343(p?[A020756(n+4)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A249622

/-- `A052343(p?[A020756(n+4)])` -/
def P13007679305527716333.Spec : Prop :=
  ∀ n, P13007679305527716333.a n = A249622 (n + 1)

theorem P13007679305527716333.correct : P13007679305527716333.Spec := by
  intro n
  simp only [A249622, Nat.add_sub_cancel]

end A249622

/-! ## A249622.P8465521432426907466

`A052343(record[A006530(A020756(n+4))])`
-/

namespace A249622.P8465521432426907466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020756 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249622.P8465521432426907466

namespace A249622

/-- `A052343(record[A006530(A020756(n+4))])` -/
def P8465521432426907466.Spec : Prop :=
  ∀ n, P8465521432426907466.a n = A249622 (n + 1)

end A249622

/-! ## A249622.P8797497613869033092

`A052343(record[A014963(A020756(n+4))])`
-/

namespace A249622.P8797497613869033092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020756 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249622.P8797497613869033092

namespace A249622

/-- `A052343(record[A014963(A020756(n+4))])` -/
def P8797497613869033092.Spec : Prop :=
  ∀ n, P8797497613869033092.a n = A249622 (n + 1)

end A249622

/-! ## A249622.P7339604782611621542

`A052343(record[A020639(A020756(n+4))])`
-/

namespace A249622.P7339604782611621542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020756 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249622.P7339604782611621542

namespace A249622

/-- `A052343(record[A020639(A020756(n+4))])` -/
def P7339604782611621542.Spec : Prop :=
  ∀ n, P7339604782611621542.a n = A249622 (n + 1)

end A249622

/-! ## A249622.P8275814856344141773

`A052344(record[A014963(A020756(n+5))])`
-/

namespace A249622.P8275814856344141773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A020756 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249622.P8275814856344141773

namespace A249622

/-- `A052344(record[A014963(A020756(n+5))])` -/
def P8275814856344141773.Spec : Prop :=
  ∀ n, P8275814856344141773.a n = A249622 (n + 1)

end A249622

/-!
# A249624: Numbers n such that the sum of n and the least prime>n (A151800(n)) is prime.

The programs for A249624, there is no canonical definition to state claims against.
-/

/-! ## A249624.P4527242384603019817

`eq[1, A001222(A013634(n))]`
-/

namespace A249624.P4527242384603019817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A013634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249624.P4527242384603019817

/-! ## A249624.P13991814120778430871

`eq[1, A231820(A013634(n)+1)]`
-/

namespace A249624.P13991814120778430871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (A013634 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249624.P13991814120778430871

/-! ## A249624.P1579355338280031279

`eq[1, A001222(A151800(n)+n)]`
-/

namespace A249624.P1579355338280031279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249624.P1579355338280031279

/-! ## A249624.P11899544370821950710

`eq[2, A000005(A151800(n)+n)]`
-/

namespace A249624.P11899544370821950710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A151800 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249624.P11899544370821950710

/-! ## A249624.P710087391668718785

`lt[n, A006530(A151800(n)+n)]`
-/

namespace A249624.P710087391668718785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A151800 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249624.P710087391668718785

/-! ## A249624.P3608725183434778491

`lt[n, A020639(A151800(n)+n)]`
-/

namespace A249624.P3608725183434778491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A151800 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249624.P3608725183434778491

/-! ## A249624.P12565813927806267536

`lt[A000005(A013632(n)+2*n), 3]`
-/

namespace A249624.P12565813927806267536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A013632 n + (2 * n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249624.P12565813927806267536

/-!
# A249627: Product of the lowest and highest prime factors of n-th repunit A002275(n).

The programs for A249627, there is no canonical definition to state claims against.
-/

/-! ## A249627.P5364424770826573808

`A003020(n+2)*A067063(n+2)`
-/

namespace A249627.P5364424770826573808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003020 (n + 2) * A067063 (n + 2)

end

end A249627.P5364424770826573808

/-! ## A249627.P2194084784206656240

`A005422(n+2)*A067063(n+2)`
-/

namespace A249627.P2194084784206656240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005422 (n + 2) * A067063 (n + 2)

end

end A249627.P2194084784206656240

/-! ## A249627.P13354108427071547436

`A003020(n+2)*A102380(∑[A046053(n+1)]+2)`
-/

namespace A249627.P13354108427071547436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003020 (n + 2) * A102380 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A249627.P13354108427071547436

/-! ## A249627.P17520785953251730084

`A005422(n+2)*A102380(∑[A046053(n+1)]+2)`
-/

namespace A249627.P17520785953251730084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005422 (n + 2) * A102380 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A249627.P17520785953251730084

/-! ## A249627.P2468359883138424975

`A001270(∑[A057951(n+1)]+3)*A003020(n+2)`
-/

namespace A249627.P2468359883138424975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001270 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat * A003020 (n + 2)

end

end A249627.P2468359883138424975

/-!
# A249628: Sums of two numbers that are the average of a twin prime pair (A014574).

The programs for A249628, there is no canonical definition to state claims against.
-/

/-! ## A249628.P16285161566495467202

`A152126(n+1)+2`
-/

namespace A249628.P16285161566495467202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152126 (n + 1) + 2

end

end A249628.P16285161566495467202

/-! ## A249628.P662441145231440397

`A009056(A152126(n+1))`
-/

namespace A249628.P662441145231440397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A152126 (n + 1)).toNat

end

end A249628.P662441145231440397

/-! ## A249628.P143516272397687359

`A061228(A152126(1-(n-2*n)))`
-/

namespace A249628.P143516272397687359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (A152126 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A249628.P143516272397687359

/-! ## A249628.P12159242764217702785

`A123883(A215848(n+1))+4`
-/

namespace A249628.P12159242764217702785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (A215848 (n + 1)).toNat + 4

end

end A249628.P12159242764217702785

/-! ## A249628.P10941585726895005371

`A123883(A000040(n+3))+4`
-/

namespace A249628.P10941585726895005371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123883 (A000040 (n + 3)).toNat + 4

end

end A249628.P10941585726895005371

/-!
# A249629: Number of strings of length n over a 4-letter alphabet that begin with a nontrivial palindrome.

The programs for A249629, there is no canonical definition to state claims against.
-/

/-! ## A249629.P12454508473777490832

`A000302(n)-(A252697(n)+A000007(n))`
-/

namespace A249629.P12454508473777490832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - (A252697 n + A000007 n)

end

end A249629.P12454508473777490832

/-! ## A249629.P12475188271763423365

`A342237(A027379(n)+3+n)`
-/

namespace A249629.P12475188271763423365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A027379 n + 3 + (n : ℤ)).toNat

end

end A249629.P12475188271763423365

/-! ## A249629.P7102896287396015732

`A342237(A133263(n)+A016777(n))`
-/

namespace A249629.P7102896287396015732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A133263 n + A016777 n).toNat

end

end A249629.P7102896287396015732

/-! ## A249629.P12244141990834380759

`A342237(A016789(n)+∑[A254667(n)])`
-/

namespace A249629.P12244141990834380759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A016789 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249629.P12244141990834380759

/-! ## A249629.P13475539391810764926

`A342237(A057427(n)+A046691(n+1))`
-/

namespace A249629.P13475539391810764926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A057427 n + A046691 (n + 1)).toNat

end

end A249629.P13475539391810764926

/-! ## A249629.P3079402526177043124

`A342237(A134869(n+1)+A005408(n))`
-/

namespace A249629.P3079402526177043124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A134869 (n + 1) + A005408 n).toNat

end

end A249629.P3079402526177043124

/-! ## A249629.P17241669070959557098

`A342237(A046691(n+1)-A057428(n))`
-/

namespace A249629.P17241669070959557098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A046691 (n + 1) - A057428 n).toNat

end

end A249629.P17241669070959557098

/-! ## A249629.P9045345036788854798

`A342237(A055999(n)+A057427(n)+2)`
-/

namespace A249629.P9045345036788854798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A055999 n + (A057427 n + 2)).toNat

end

end A249629.P9045345036788854798

/-! ## A249629.P9024872239480199031

`A342237(A055999(n)+A178334(n)+2)`
-/

namespace A249629.P9024872239480199031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A055999 n + (A178334 n + 2)).toNat

end

end A249629.P9024872239480199031

/-!
# A249630: Sums of the composite numbers placed between two consecutive prime numbers (A054265), sorted in increasing order.

The programs for A249630, there is no canonical definition to state claims against.
-/

/-! ## A249630.P12693940015167919056

`eq[char[A054265(n+1)], A124779(n)]`
-/

namespace A249630.P12693940015167919056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249630.P12693940015167919056

/-! ## A249630.P15585993531955425229

`A110654(eq[A323761(n+1), A334466(n+1)])`
-/

namespace A249630.P15585993531955425229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A249630.P15585993531955425229

/-!
# A249632: Triangular array read by rows. T(n,k) is the number of labeled trees with black and white nodes having exactly k black nodes, n>=0, 0<=k<=n.

The programs for A249632, there is no canonical definition to state claims against.
-/

/-! ## A249632.P15588746997960290814

`(A014473(n)+1)*A000272(∑[char[∑[n+1]]])`
-/

namespace A249632.P15588746997960290814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A000272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249632.P15588746997960290814

/-! ## A249632.P15060909717168432990

`(A131060(n)+2)/3*A000272(∑[char[∑[n+1]]])`
-/

namespace A249632.P15060909717168432990
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3 * (A000272 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A249632.P15060909717168432990

/-! ## A249632.P18281203779374191814

`(A131063(n)+4)/5*A000272(∑[char[∑[n+1]]])`
-/

namespace A249632.P18281203779374191814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5 * (A000272 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A249632.P18281203779374191814

/-! ## A249632.P13343381083353480141

`A000272(A003056(n))*A007318(n)`
-/

namespace A249632.P13343381083353480141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (A003056 n).toNat * A007318 n

end

end A249632.P13343381083353480141

/-! ## A249632.P16712156927705281045

`A000272(A117707(n))*A007318(n)`
-/

namespace A249632.P16712156927705281045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (A117707 n).toNat * A007318 n

end

end A249632.P16712156927705281045

/-!
# A249635: Indices of prime Fibonacci 6-step numbers, A001592.

The programs for A249635, there is no canonical definition to state claims against.
-/

/-! ## A249635.P5954514024549492853

`A105758(n+1)+4`
-/

namespace A249635.P5954514024549492853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105758 (n + 1) + 4

end

end A249635.P5954514024549492853

/-! ## A249635.P16235127028349116755

`A020705(A105758(n+1))`
-/

namespace A249635.P16235127028349116755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A105758 (n + 1)).toNat

end

end A249635.P16235127028349116755

/-!
# A249636: G.f.: Sum_{n>=0} x^n / Product_{k=n..2*n-1} (1 - k*x).

The programs for A249636, there is no canonical definition to state claims against.
-/

/-! ## A249636.P6447169744196226978

`A127763(A288964(n)+1)`
-/

namespace A249636.P6447169744196226978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A288964 n + 1).toNat

end

end A249636.P6447169744196226978

/-! ## A249636.P416618279506486290

`A127763(or(1, A288964(n)))`
-/

namespace A249636.P416618279506486290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (Int.lor 1 (A288964 n)).toNat

end

end A249636.P416618279506486290

/-! ## A249636.P14980051245035526095

`A127763(xor(1, A288964(n)))`
-/

namespace A249636.P14980051245035526095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (Int.xor 1 (A288964 n)).toNat

end

end A249636.P14980051245035526095

/-!
# A249637: G.f.: Sum_{n>=0} x^n / Product_{k=n*(n-1)/2+1..n*(n+1)/2} (1 - k*x).

The programs for A249637, there is no canonical definition to state claims against.
-/

/-! ## A249637.P2029695625009342701

`A358196(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A249637.P2029695625009342701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A358196 (a (n - 1)).toNat + 2

end

end A249637.P2029695625009342701

/-! ## A249637.P1668386112123972110

`A001462(A168562(n))`
-/

namespace A249637.P1668386112123972110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A168562 n).toNat

end

end A249637.P1668386112123972110

/-!
# A249638: Number of strings of length n over a 5-letter alphabet that begin with a nontrivial palindrome.

The programs for A249638, there is no canonical definition to state claims against.
-/

/-! ## A249638.P10061734178974317499

`A342237(A046691(n+2)+C(2, n+2))`
-/

namespace A249638.P10061734178974317499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A046691 (n + 2) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A249638.P10061734178974317499

/-! ## A249638.P13866596563525796064

`A342237(A167499(n)+A008486(n))`
-/

namespace A249638.P13866596563525796064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A167499 n + A008486 n).toNat

end

end A249638.P13866596563525796064

/-! ## A249638.P3252437914240923286

`A342237(A167614(n+1)+A004277(n))`
-/

namespace A249638.P3252437914240923286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A167614 (n + 1) + A004277 n).toNat

end

end A249638.P3252437914240923286

/-! ## A249638.P1378086608898463441

`A057427(n)*A342237(A046691(n+2))`
-/

namespace A249638.P1378086608898463441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A342237 (A046691 (n + 2)).toNat

end

end A249638.P1378086608898463441

/-! ## A249638.P2962106737773914952

`A342237(A004277(n)+A167499(n)+n)`
-/

namespace A249638.P2962106737773914952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A004277 n + (A167499 n + (n : ℤ))).toNat

end

end A249638.P2962106737773914952

/-! ## A249638.P1392168294087266765

`A342237(A233583(n+2)+A000096(n+2))`
-/

namespace A249638.P1392168294087266765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A233583 (n + 2) + A000096 (n + 2)).toNat

end

end A249638.P1392168294087266765

/-! ## A249638.P13968862285978717875

`A342237(A046691(n+2)%A066872(n+1))`
-/

namespace A249638.P13968862285978717875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (Int.tmod (A046691 (n + 2)) (A066872 (n + 1))).toNat

end

end A249638.P13968862285978717875

/-!
# A249639: Number of strings of length n over a 6 letter alphabet that begin with a nontrivial palindrome.

The programs for A249639, there is no canonical definition to state claims against.
-/

/-! ## A249639.P9236728246813553609

`A342237(A000124(n+4)+(2*n)%(n+1))`
-/

namespace A249639.P9236728246813553609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A000124 (n + 4) + ((2 * n % (n + 1) : ℕ) : ℤ)).toNat

end

end A249639.P9236728246813553609

/-! ## A249639.P12973734343887964640

`A342237(A057428(n)+A046691(n+3))`
-/

namespace A249639.P12973734343887964640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A057428 n + A046691 (n + 3)).toNat

end

end A249639.P12973734343887964640

/-! ## A249639.P2293865995124037960

`A342237(eq[4, A025581(n)]%A061793(n))`
-/

namespace A249639.P2293865995124037960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A061793 n)).toNat

end

end A249639.P2293865995124037960

/-! ## A249639.P3022118373321647266

`A342237(A055998(n+3)-A036453(n+1))`
-/

namespace A249639.P3022118373321647266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A055998 (n + 3) - A036453 (n + 1)).toNat

end

end A249639.P3022118373321647266

/-! ## A249639.P8652267816043827103

`A342237(A057428(n)+A000124(n+5)-5)`
-/

namespace A249639.P8652267816043827103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A057428 n + (A000124 (n + 5) - 5)).toNat

end

end A249639.P8652267816043827103

/-! ## A249639.P9654190242876427686

`A342237(A000217(n+4)+A000007(n)+n)`
-/

namespace A249639.P9654190242876427686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A000217 (n + 4) + (A000007 n + (n : ℤ))).toNat

end

end A249639.P9654190242876427686

/-!
# A249640: Number of strings of length n over a 7-letter alphabet that begin with a nontrivial palindrome.

The programs for A249640, there is no canonical definition to state claims against.
-/

/-! ## A249640.P8492749424182316186

`A342237(A028310(n)+A000217(n+5))`
-/

namespace A249640.P8492749424182316186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A028310 n + A000217 (n + 5)).toNat

end

end A249640.P8492749424182316186

/-! ## A249640.P11964840088863266964

`A342237(A000217(n+6)-6)-A000007(n)`
-/

namespace A249640.P11964840088863266964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A000217 (n + 6) - 6).toNat - A000007 n

end

end A249640.P11964840088863266964

/-! ## A249640.P5327250226420640370

`A342237(A000124(n+6)-6-A057427(n))`
-/

namespace A249640.P5327250226420640370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A000124 (n + 6) - 6 - A057427 n).toNat

end

end A249640.P5327250226420640370

/-! ## A249640.P4235199010149808463

`A057427(n)*A342237(A000217(n+6)-6)`
-/

namespace A249640.P4235199010149808463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A342237 (A000217 (n + 6) - 6).toNat

end

end A249640.P4235199010149808463

/-! ## A249640.P9572368369039766715

`A342237(A000217(n+6)-6)-A048993(∑[n])`
-/

namespace A249640.P9572368369039766715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A000217 (n + 6) - 6).toNat - A048993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249640.P9572368369039766715

/-! ## A249640.P10442213088586803719

`A342237(A000217(n+6)-6)-A036987(2*n)`
-/

namespace A249640.P10442213088586803719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A000217 (n + 6) - 6).toNat - A036987 (2 * n)

end

end A249640.P10442213088586803719

/-! ## A249640.P3791303372255520842

`char[A002260(n+1)]*A342237(A000217(n+6)-6)`
-/

namespace A249640.P3791303372255520842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A342237 (A000217 (n + 6) - 6).toNat

end

end A249640.P3791303372255520842

/-! ## A249640.P5868288299104833121

`char[A004736(n+1)]*A342237(A000217(n+6)-6)`
-/

namespace A249640.P5868288299104833121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A342237 (A000217 (n + 6) - 6).toNat

end

end A249640.P5868288299104833121

/-! ## A249640.P17279172128502513098

`A001221(A000961(n+1))*A342237(A000217(n+6)-6)`
-/

namespace A249640.P17279172128502513098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A342237 (A000217 (n + 6) - 6).toNat

end

end A249640.P17279172128502513098

/-!
# A249641: Number of strings of length n over an 8-letter alphabet that begin with a nontrivial palindrome.

The programs for A249641, there is no canonical definition to state claims against.
-/

/-! ## A249641.P2971006035451288071

`A342237(A055999(n+4)-A057427(n))`
-/

namespace A249641.P2971006035451288071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A055999 (n + 4) - A057427 n).toNat

end

end A249641.P2971006035451288071

/-! ## A249641.P10438916537446763694

`A342237(A055999(n+4)-A178334(n))`
-/

namespace A249641.P10438916537446763694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A055999 (n + 4) - A178334 n).toNat

end

end A249641.P10438916537446763694

/-! ## A249641.P8228283199883522314

`A342237(A028310(n)+A000217(n+6))`
-/

namespace A249641.P8228283199883522314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (A028310 n + A000217 (n + 6)).toNat

end

end A249641.P8228283199883522314

/-!
# A249642: Number of strings of length n over a 9-letter alphabet that begin with a nontrivial palindrome.

The programs for A249642, there is no canonical definition to state claims against.
-/

/-! ## A249642.P16810022860053997908

`A342237(eq[4, A263233(n)])`
-/

namespace A249642.P16810022860053997908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249642.P16810022860053997908

/-! ## A249642.P2047158135185785597

`A057427(n)*A342237(A056126(n)+28)`
-/

namespace A249642.P2047158135185785597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A342237 (A056126 n + 28).toNat

end

end A249642.P2047158135185785597

/-! ## A249642.P10130950764608773899

`A342237((A056126(n)+28)%A002148(n))`
-/

namespace A249642.P10130950764608773899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (Int.tmod (A056126 n + 28) (A002148 n)).toNat

end

end A249642.P10130950764608773899

/-! ## A249642.P13124683723033413365

`A342237(A056126(n)+28)%A021829(n)`
-/

namespace A249642.P13124683723033413365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342237 (A056126 n + 28).toNat) (A021829 n)

end

end A249642.P13124683723033413365

/-! ## A249642.P5129488426948083562

`A342237((A161680(n+9)-8)%A002148(n))`
-/

namespace A249642.P5129488426948083562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (Int.tmod (A161680 (n + 9) - 8) (A002148 n)).toNat

end

end A249642.P5129488426948083562

/-!
# A249643: Number of strings of length n over a 10-letter alphabet that begin with a nontrivial palindrome.

The programs for A249643, there is no canonical definition to state claims against.
-/

/-! ## A249643.P4257541206739867768

`and(-2, 10^n)-A252703(n)`
-/

namespace A249643.P4257541206739867768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ) - A252703 n

end

end A249643.P4257541206739867768

/-! ## A249643.P16422791947631813023

`A000533(n)-(A252703(n)+1)`
-/

namespace A249643.P16422791947631813023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 n - (A252703 n + 1)

end

end A249643.P16422791947631813023

/-! ## A249643.P12744928551284028669

`A000533(A028310(n))%(A252703(n)+1)`
-/

namespace A249643.P12744928551284028669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000533 (A028310 n).toNat) (A252703 n + 1)

end

end A249643.P12744928551284028669

/-! ## A249643.P14500333744131982572

`A000533(A123108(2*n))%(A252703(n)+1)`
-/

namespace A249643.P14500333744131982572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000533 (A123108 (2 * n)).toNat) (A252703 n + 1)

end

end A249643.P14500333744131982572

/-! ## A249643.P11438703401995042716

`A000533(n)%((A252703(n)+1)/A343785(n+1)²)`
-/

namespace A249643.P11438703401995042716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000533 n) (SequenceMachineLib.roundAway ((A252703 n + 1 : ℚ) / (A343785 (n + 1) ^ 2 : ℚ)))

end

end A249643.P11438703401995042716

/-! ## A249643.P16475855441549912868

`A000533(A151909(n)+n)%(A252703(n)+1)`
-/

namespace A249643.P16475855441549912868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000533 (A151909 n + (n : ℤ)).toNat) (A252703 n + 1)

end

end A249643.P16475855441549912868

/-!
# A249644: Primes p such that sigma(p-k) = sigma(p+k) has no solution, where sigma is A000203.

The programs for A249644, there is no canonical definition to state claims against.
-/

/-! ## A249644.P2027480771638376285

`eq[A202924(A131268(n)), A269252(n+1)]`
-/

namespace A249644.P2027480771638376285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202924 (A131268 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249644.P2027480771638376285

/-! ## A249644.P13448747142969725699

`A000040(lt[A008859(n), A108564(2*(n+1))])`
-/

namespace A249644.P13448747142969725699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108564 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249644.P13448747142969725699

/-! ## A249644.P6656378332741136493

`eq[∑{e}[n, #], A085737(n)]`
-/

namespace A249644.P6656378332741136493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A249644.P6656378332741136493

/-! ## A249644.P10244756655237603554

`eq[A003415(n), A085737(n)]`
-/

namespace A249644.P10244756655237603554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249644.P10244756655237603554

/-! ## A249644.P9498876186061045347

`eq[A018783(n), A085737(n)]`
-/

namespace A249644.P9498876186061045347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249644.P9498876186061045347

/-!
# A249646: Denominators of 2*H(n)-H(n*(n+1)), a sequence the limit of which is gamma, the Euler-Mascheroni constant, where H(n) is the n-th harmonic number.

The programs for A249646, there is no canonical definition to state claims against.
-/

/-! ## A249646.P5947113175105423319

`A027611(p?[∑[A283501(n+1)]])`
-/

namespace A249646.P5947113175105423319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283501 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249646.P5947113175105423319

/-!
# A249647: Numbers k that divide the concatenation of k+1 and k-1.

The programs for A249647, there is no canonical definition to state claims against.
-/

/-! ## A249647.P4583632927248523629

`record[A226477(n+1)]`
-/

namespace A249647.P4583632927248523629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249647.P4583632927248523629

/-! ## A249647.P15582549920500987123

`A045876(A004669(n))`
-/

namespace A249647.P15582549920500987123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045876 (A004669 n).toNat

end

end A249647.P15582549920500987123

/-! ## A249647.P14541795570375923269

`∩[A134336(n+1), A174813(n+1)]`
-/

namespace A249647.P14541795570375923269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249647.P14541795570375923269

/-!
# A249648: Positions of terms in A249626, having a zero in their decimal representation.

The programs for A249648, there is no canonical definition to state claims against.
-/

/-! ## A249648.P8676315781039672626

`eq[0, A249626(A321243(A249626(n)))]`
-/

namespace A249648.P8676315781039672626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249626 (A321243 (A249626 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249648.P8676315781039672626

/-! ## A249648.P6384096204952983636

`lt[A098736(A249626(n)), A213217(n)]`
-/

namespace A249648.P6384096204952983636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (A249626 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249648.P6384096204952983636

/-! ## A249648.P11737834846084576749

`eq[A054054(A249626(n)), A226463(n²)]`
-/

namespace A249648.P11737834846084576749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A249626 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226463 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249648.P11737834846084576749

/-! ## A249648.P2170060127096839523

`eq[A178334(n)!, A217096(A249626(n))]`
-/

namespace A249648.P2170060127096839523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A249626 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249648.P2170060127096839523

/-! ## A249648.P673752903273627215

`eq[A178334(n+1), A217096(A249626(n))]`
-/

namespace A249648.P673752903273627215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A249626 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249648.P673752903273627215

/-!
# A249653: Number of length n+4 0..5 arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249653, there is no canonical definition to state claims against.
-/

/-! ## A249653.P15754049175137028892

`A249656(∑[n+5]+6)`
-/

namespace A249653.P15754049175137028892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A249653.P15754049175137028892

/-! ## A249653.P6254388976345669295

`lcm(2, A249656(A052905(n+2)+1))`
-/

namespace A249653.P6254388976345669295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249656 (A052905 (n + 2) + 1).toNat)

end

end A249653.P6254388976345669295

/-! ## A249653.P495118665831300263

`A249656(A000124(n+5)-5)+A000007(n+1)`
-/

namespace A249653.P495118665831300263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000124 (n + 5) - 5).toNat + A000007 (n + 1)

end

end A249653.P495118665831300263

/-! ## A249653.P17977175053426540454

`lcm(A249656(A000124(n+5)-5), A309873(n+1))`
-/

namespace A249653.P17977175053426540454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A249656 (A000124 (n + 5) - 5).toNat) (A309873 (n + 1))

end

end A249653.P17977175053426540454

/-! ## A249653.P4576684280095696439

`A007877(Δ[n²])*A249656(A000124(n+5)-5)`
-/

namespace A249653.P4576684280095696439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A249656 (A000124 (n + 5) - 5).toNat

end

end A249653.P4576684280095696439

/-! ## A249653.P6245674782322667060

`A001511(2*n+1)*A249656(A000124(n+5)-5)`
-/

namespace A249653.P6245674782322667060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A249656 (A000124 (n + 5) - 5).toNat

end

end A249653.P6245674782322667060

/-!
# A249654: Number of length n+4 0..6 arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249654, there is no canonical definition to state claims against.
-/

/-! ## A249654.P8210132889492435770

`A249656(A052905(n+3))`
-/

namespace A249654.P8210132889492435770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A052905 (n + 3)).toNat

end

end A249654.P8210132889492435770

/-! ## A249654.P15360754012606316314

`A249656(A000217(n+6)-5)`
-/

namespace A249654.P15360754012606316314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000217 (n + 6) - 5).toNat

end

end A249654.P15360754012606316314

/-! ## A249654.P8219365906129519256

`A249656(A000124(n+6)-6)`
-/

namespace A249654.P8219365906129519256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000124 (n + 6) - 6).toNat

end

end A249654.P8219365906129519256

/-! ## A249654.P3160746489117530844

`A249656(Δ[Δ[A006504(n+1)]])`
-/

namespace A249654.P3160746489117530844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (f1 (n + 1) - f1 n).toNat

end

end A249654.P3160746489117530844

/-! ## A249654.P970818413513192597

`A249656(Δ[A023551(n+1)]+1)`
-/

namespace A249654.P970818413513192597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (f1 (n + 1) - f1 n + 1).toNat

end

end A249654.P970818413513192597

/-! ## A249654.P8520093117330609181

`A249656(Δ[A023545(n+2)]-1)`
-/

namespace A249654.P8520093117330609181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (f1 (n + 1) - f1 n - 1).toNat

end

end A249654.P8520093117330609181

/-! ## A249654.P5879006990850270163

`A249656(A167499(n+4)+n-4)`
-/

namespace A249654.P5879006990850270163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A167499 (n + 4) + ((n : ℤ) - 4)).toNat

end

end A249654.P5879006990850270163

/-! ## A249654.P15604378611334135249

`A249656(Δ[n²]+A000217(n+4)+5)`
-/

namespace A249654.P15604378611334135249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A249654.P15604378611334135249

/-!
# A249655: Number of length n+4 0..7 arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249655, there is no canonical definition to state claims against.
-/

/-! ## A249655.P13366413572308022807

`A249656(A055999(n+4))`
-/

namespace A249655.P13366413572308022807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A055999 (n + 4)).toNat

end

end A249655.P13366413572308022807

/-! ## A249655.P18375467552128335655

`A249656(Δ[A023551(n+2)])`
-/

namespace A249655.P18375467552128335655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (f1 (n + 1) - f1 n).toNat

end

end A249655.P18375467552128335655

/-! ## A249655.P13208371366849423208

`A249656(A056000(n+3)+4)`
-/

namespace A249655.P13208371366849423208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A056000 (n + 3) + 4).toNat

end

end A249655.P13208371366849423208

/-! ## A249655.P14114596948658098291

`A249656(A000217(n+7)-6)`
-/

namespace A249655.P14114596948658098291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000217 (n + 7) - 6).toNat

end

end A249655.P14114596948658098291

/-! ## A249655.P4191329409428769294

`A249656(A000124(n+7)-7)`
-/

namespace A249655.P4191329409428769294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000124 (n + 7) - 7).toNat

end

end A249655.P4191329409428769294

/-! ## A249655.P18178424182705319213

`A249656(A000096(n+5)+n+2)`
-/

namespace A249655.P18178424182705319213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A249655.P18178424182705319213

/-!
# A249656: T(n,k)=Number of length n+4 0..k arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249656, there is no canonical definition to state claims against.
-/

/-! ## A249656.P16903747436860555386

`A249657(A004736(n+1)%A072843(n))`
-/

namespace A249656.P16903747436860555386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249657 (Int.tmod (A004736 (n + 1)) (A072843 n)).toNat

end

end A249656.P16903747436860555386

/-! ## A249656.P6543236505669827785

`A249657(A004736(n+1))%A208573(2*(n+1))`
-/

namespace A249656.P6543236505669827785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249657 (A004736 (n + 1)).toNat) (A208573 (2 * (n + 1)))

end

end A249656.P6543236505669827785

/-! ## A249656.P10914207571763360724

`A001222(A208573(n+1))*A249657(A004736(n+1))`
-/

namespace A249656.P10914207571763360724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A208573 (n + 1)).toNat * A249657 (A004736 (n + 1)).toNat

end

end A249656.P10914207571763360724

/-! ## A249656.P4571623782237450087

`A249657(A004736(n+1))%A023551(A052548(n))`
-/

namespace A249656.P4571623782237450087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249657 (A004736 (n + 1)).toNat) (A023551 (A052548 n).toNat)

end

end A249656.P4571623782237450087

/-! ## A249656.P279655449746313935

`A249657(A004736(n+1)^A367764(n+3))`
-/

namespace A249656.P279655449746313935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249657 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A367764 (n + 3) : ℤ))).toNat

end

end A249656.P279655449746313935

/-!
# A249657: Number of length 1+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249657, there is no canonical definition to state claims against.
-/

/-! ## A249657.P11054283511261726759

`(n+2)^5-A249467(n+1)`
-/

namespace A249657.P11054283511261726759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - A249467 (n + 1)

end

end A249657.P11054283511261726759

/-! ## A249657.P3786374986440232150

`A249656(∑[n]+1)`
-/

namespace A249657.P3786374986440232150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249657.P3786374986440232150

/-! ## A249657.P6775758275521129412

`record[A249656(n+1)/A007318(n)²]`
-/

namespace A249657.P6775758275521129412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249656 (n + 1) : ℚ) / (A007318 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249657.P6775758275521129412

/-! ## A249657.P397125133377042957

`record[A249656(record[2-A007318(n)+n])]`
-/

namespace A249657.P397125133377042957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007318 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249657.P397125133377042957

/-! ## A249657.P7049467646660913502

`record[A249656(record[n/A007318(n)]+1)]`
-/

namespace A249657.P7049467646660913502
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007318 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249657.P7049467646660913502

/-!
# A249658: Number of length 2+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249658, there is no canonical definition to state claims against.
-/

/-! ## A249658.P12176770959557020967

`A249656(∑[n+1]+2)`
-/

namespace A249658.P12176770959557020967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249658.P12176770959557020967

/-! ## A249658.P3008372962800583051

`record[A249656(A022856(n+1))]`
-/

namespace A249658.P3008372962800583051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249658.P3008372962800583051

/-! ## A249658.P3013871500099656791

`record[A249656(A016028(n+2)-1)]`
-/

namespace A249658.P3013871500099656791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A016028 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249658.P3013871500099656791

/-! ## A249658.P3601933954878940010

`record[root(A249656(n+1), A128724(n))]`
-/

namespace A249658.P3601933954878940010
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249656 (n + 1) : ℝ) ^ (1 / (A128724 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249658.P3601933954878940010

/-! ## A249658.P3036936823502146367

`record[root(A249656(n+1), A162975(n))]`
-/

namespace A249658.P3036936823502146367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A249656 (n + 1) : ℝ) ^ (1 / (A162975 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249658.P3036936823502146367

/-!
# A249659: Number of length 3+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249659, there is no canonical definition to state claims against.
-/

/-! ## A249659.P6661586261417349524

`A249656(∑[n+2]+4)`
-/

namespace A249659.P6661586261417349524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249659.P6661586261417349524

/-! ## A249659.P11005897987185594689

`record[A249656(A016028(n+1))]`
-/

namespace A249659.P11005897987185594689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249659.P11005897987185594689

/-! ## A249659.P16509203592869294902

`record[A249656(A022856(n+2)+n)]`
-/

namespace A249659.P16509203592869294902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A022856 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249659.P16509203592869294902

/-! ## A249659.P5649416636750398769

`or(n%2, A249656(A167614(n+1)))`
-/

namespace A249659.P5649416636750398769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A249656 (A167614 (n + 1)).toNat)

end

end A249659.P5649416636750398769

/-! ## A249659.P3761618531288881608

`lcm(A033999(n), A249656(A167614(n+1)))`
-/

namespace A249659.P3761618531288881608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A249656 (A167614 (n + 1)).toNat)

end

end A249659.P3761618531288881608

/-! ## A249659.P1690939058664588654

`A249656(A055998(n)+6)%A017057(n)`
-/

namespace A249659.P1690939058664588654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249656 (A055998 n + 6).toNat) (A017057 n)

end

end A249659.P1690939058664588654

/-! ## A249659.P17323962441110392122

`or(A000038(n), A249656(A167614(n+1)))`
-/

namespace A249659.P17323962441110392122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A249656 (A167614 (n + 1)).toNat)

end

end A249659.P17323962441110392122

/-! ## A249659.P16389602183233782227

`A249656(A167614(n+1))%A024407(n+1)`
-/

namespace A249659.P16389602183233782227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249656 (A167614 (n + 1)).toNat) (A024407 (n + 1))

end

end A249659.P16389602183233782227

/-! ## A249659.P5715583780860017607

`A249656(A167614(n+1))+A001222(C(n, n²)!)`
-/

namespace A249659.P5715583780860017607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A167614 (n + 1)).toNat + A001222 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A249659.P5715583780860017607

/-! ## A249659.P13911325332873994544

`A001221(A351318(n+1))*A249656(A167614(n+1))`
-/

namespace A249659.P13911325332873994544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A351318 (n + 1)).toNat * A249656 (A167614 (n + 1)).toNat

end

end A249659.P13911325332873994544

/-!
# A249660: Number of length 4+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249660, there is no canonical definition to state claims against.
-/

/-! ## A249660.P11036300403758125859

`A249656(∑[n+3]+7)`
-/

namespace A249660.P11036300403758125859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249660.P11036300403758125859

/-! ## A249660.P16646892921090141159

`record[A249656(A038722(A027379(n)))]`
-/

namespace A249660.P16646892921090141159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A038722 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249660.P16646892921090141159

/-! ## A249660.P8311850504193638989

`gcd(A000038(n), A249656(A055999(n)+10))`
-/

namespace A249660.P8311850504193638989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A249656 (A055999 n + 10).toNat)

end

end A249660.P8311850504193638989

/-! ## A249660.P773066823664288615

`A249656(A055999(n)+10)%A201117(n+1)`
-/

namespace A249660.P773066823664288615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249656 (A055999 n + 10).toNat) (A201117 (n + 1))

end

end A249660.P773066823664288615

/-! ## A249660.P16388726416718289123

`or(A000038(n), A249656(A000124(n+3)+3))`
-/

namespace A249660.P16388726416718289123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A249656 (A000124 (n + 3) + 3).toNat)

end

end A249660.P16388726416718289123

/-!
# A249661: Number of length 5+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249661, there is no canonical definition to state claims against.
-/

/-! ## A249661.P9731754401522812186

`A249656(A167499(n+3))`
-/

namespace A249661.P9731754401522812186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A167499 (n + 3)).toNat

end

end A249661.P9731754401522812186

/-! ## A249661.P17310555533843070252

`A249656(∑[A020705(n)]+11)`
-/

namespace A249661.P17310555533843070252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A249661.P17310555533843070252

/-! ## A249661.P18229010651175149117

`A249656(A167614(n+3)+2)`
-/

namespace A249661.P18229010651175149117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A167614 (n + 3) + 2).toNat

end

end A249661.P18229010651175149117

/-! ## A249661.P12132476904264885828

`A249656(A000217(n+4)+5)`
-/

namespace A249661.P12132476904264885828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000217 (n + 4) + 5).toNat

end

end A249661.P12132476904264885828

/-! ## A249661.P9734865509545005433

`A249656(A038722(Δ[A023545(n+1)]))`
-/

namespace A249661.P9734865509545005433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A249661.P9734865509545005433

/-!
# A249662: Number of length 6+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249662, there is no canonical definition to state claims against.
-/

/-! ## A249662.P2560802457252795776

`A249656(A167614(n+4)+3)`
-/

namespace A249662.P2560802457252795776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A167614 (n + 4) + 3).toNat

end

end A249662.P2560802457252795776

/-! ## A249662.P1049269070032297629

`A249656(A000217(n+5)+6)`
-/

namespace A249662.P1049269070032297629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000217 (n + 5) + 6).toNat

end

end A249662.P1049269070032297629

/-! ## A249662.P5747041969341121873

`A249656(A179865(n+6)+6)`
-/

namespace A249662.P5747041969341121873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A179865 (n + 6) + 6).toNat

end

end A249662.P5747041969341121873

/-! ## A249662.P17265491761466185041

`A249656(A055999(n+5)-A008585(n+3))`
-/

namespace A249662.P17265491761466185041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A055999 (n + 5) - A008585 (n + 3)).toNat

end

end A249662.P17265491761466185041

/-! ## A249662.P10888080279031520344

`A249656(A002620(n+2)+A002620(n+9))`
-/

namespace A249662.P10888080279031520344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A249662.P10888080279031520344

/-!
# A249663: Number of length 7+4 0..n arrays with every five consecutive terms having four times some element equal to the sum of the remaining four.

The programs for A249663, there is no canonical definition to state claims against.
-/

/-! ## A249663.P12276985691653954428

`A249656(A000217(n+6)+7)`
-/

namespace A249663.P12276985691653954428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000217 (n + 6) + 7).toNat

end

end A249663.P12276985691653954428

/-! ## A249663.P8741938390662667439

`A249656(A027379(n+4)+10)`
-/

namespace A249663.P8741938390662667439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A027379 (n + 4) + 10).toNat

end

end A249663.P8741938390662667439

/-! ## A249663.P18232725006102920677

`A249656(A055998(n+4)+10)`
-/

namespace A249663.P18232725006102920677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A055998 (n + 4) + 10).toNat

end

end A249663.P18232725006102920677

/-! ## A249663.P15361644806831697185

`A249656(A179865(n+7)+7)`
-/

namespace A249663.P15361644806831697185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A179865 (n + 7) + 7).toNat

end

end A249663.P15361644806831697185

/-! ## A249663.P86415609262737827

`A249656(A052905(n+3)+12)`
-/

namespace A249663.P86415609262737827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A052905 (n + 3) + 12).toNat

end

end A249663.P86415609262737827

/-! ## A249663.P11711384533698948088

`A249656(A000124(n+7)-(n+1))`
-/

namespace A249663.P11711384533698948088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A249663.P11711384533698948088

/-! ## A249663.P17867362321839760452

`A249656(A133263(n+7)-(n+2))`
-/

namespace A249663.P17867362321839760452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249656 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A249663.P17867362321839760452

/-!
# A249666: Numbers n such that the sum of n and the largest prime

The programs for A249666, the canonical program `A249666.P16235947781865661960` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249666 has offset 1).

The definition of A249666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249666.P3876302874680948632

`eq[2, A000005(A013635(n+3))]+3`
-/

namespace A249666.P3876302874680948632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A013635 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A249666.P3876302874680948632

namespace A249666

/-- `eq[2, A000005(A013635(n+3))]+3` -/
def P3876302874680948632.Spec : Prop :=
  ∀ n, (P3876302874680948632.a n : ℤ) = A249666 (n + 1)

end A249666

/-! ## A249666.P6746591863941558599

`record[A020639(A013635(n+3))-A007917(n+2)]`
-/

namespace A249666.P6746591863941558599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013635 (n + 3)).toNat - A007917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249666.P6746591863941558599

namespace A249666

/-- `record[A020639(A013635(n+3))-A007917(n+2)]` -/
def P6746591863941558599.Spec : Prop :=
  ∀ n, P6746591863941558599.a n = A249666 (n + 1)

end A249666

/-! ## A249666.P16235947781865661960

`record[(n+3)%A006530(A286901(n+3))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A249666

/-- `record[(n+3)%A006530(A286901(n+3))]` -/
def P16235947781865661960.Spec : Prop :=
  ∀ n, P16235947781865661960.a n = A249666 (n + 1)

theorem P16235947781865661960.correct : P16235947781865661960.Spec := by
  intro n
  simp only [A249666, Nat.add_sub_cancel]

end A249666

/-! ## A249666.P16968579285831381837

`record[A006530(A286901(n+3))-A007917(n+2)]`
-/

namespace A249666.P16968579285831381837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A286901 (n + 3)).toNat - A007917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249666.P16968579285831381837

namespace A249666

/-- `record[A006530(A286901(n+3))-A007917(n+2)]` -/
def P16968579285831381837.Spec : Prop :=
  ∀ n, P16968579285831381837.a n = A249666 (n + 1)

end A249666

/-!
# A249667: Numbers n such that the sum of n and the largest primen is also prime.

The programs for A249667, there is no canonical definition to state claims against.
-/

/-! ## A249667.P11438824430965096832

`∩[A249624(n+1), A249666(n+2)]`
-/

namespace A249667.P11438824430965096832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249666 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249667.P11438824430965096832

/-!
# A249668: Population of the n-th generation of the pattern 101//010 in the Life Without Death cellular automaton.

The programs for A249668, there is no canonical definition to state claims against.
-/

/-! ## A249668.P5329122143584110940

`A000791(n+1)+2/A271518(n)`
-/

namespace A249668.P5329122143584110940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000791 (n + 1) : ℚ) + 2 / (A271518 n : ℚ)

end

end A249668.P5329122143584110940

/-! ## A249668.P6644702710112487413

`A001285(A029877(n))+A000791(n+1)`
-/

namespace A249668.P6644702710112487413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A029877 n).toNat + A000791 (n + 1)

end

end A249668.P6644702710112487413

/-! ## A249668.P12112562838631549624

`A025143(A051740(n))+A000791(n+1)`
-/

namespace A249668.P12112562838631549624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025143 (A051740 n).toNat + A000791 (n + 1)

end

end A249668.P12112562838631549624

/-! ## A249668.P11083333156554441276

`A079882(A005803(n))+A000791(n+1)`
-/

namespace A249668.P11083333156554441276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (A005803 n).toNat + A000791 (n + 1)

end

end A249668.P11083333156554441276

/-! ## A249668.P8852990640862976755

`A103586(A052919(n))+A003075(n+1)`
-/

namespace A249668.P8852990640862976755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (A052919 n).toNat + A003075 (n + 1)

end

end A249668.P8852990640862976755

/-!
# A249669: a(n) = floor(prime(n)^(1+1/n)).

The programs for A249669, the canonical program `A249669.P11307284954815266354` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249669 has offset 1).

The definition of A249669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249669.P11307284954815266354

`floor(A000040(n+1)^ratio[n+1])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249669

/-- `floor(A000040(n+1)^ratio[n+1])` -/
def P11307284954815266354.Spec : Prop :=
  ∀ n, P11307284954815266354.a n = A249669 (n + 1)

theorem P11307284954815266354.correct : P11307284954815266354.Spec := by
  intro n
  simp only [A249669, Nat.add_sub_cancel]

end A249669

/-! ## A249669.P3158742332211074061

`A246778(n+1)+A000040(n+1)`
-/

namespace A249669.P3158742332211074061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + A000040 (n + 1)

end

end A249669.P3158742332211074061

namespace A249669

/-- `A246778(n+1)+A000040(n+1)` -/
def P3158742332211074061.Spec : Prop :=
  ∀ n, P3158742332211074061.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P1873729427660971751

`A246776(n+1)+A065091(n+1)`
-/

namespace A249669.P1873729427660971751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246776 (n + 1) + A065091 (n + 1)

end

end A249669.P1873729427660971751

namespace A249669

/-- `A246776(n+1)+A065091(n+1)` -/
def P1873729427660971751.Spec : Prop :=
  ∀ n, P1873729427660971751.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P5304131338600778557

`A246778(n+1)+p?[A015919(n+1)]`
-/

namespace A249669.P5304131338600778557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P5304131338600778557

namespace A249669

/-- `A246778(n+1)+p?[A015919(n+1)]` -/
def P5304131338600778557.Spec : Prop :=
  ∀ n, P5304131338600778557.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P4389125855279732302

`A246776(n+1)+A000040(n+2)`
-/

namespace A249669.P4389125855279732302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246776 (n + 1) + A000040 (n + 2)

end

end A249669.P4389125855279732302

namespace A249669

/-- `A246776(n+1)+A000040(n+2)` -/
def P4389125855279732302.Spec : Prop :=
  ∀ n, P4389125855279732302.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P7753920744976777129

`A246778(n+1)+A008578(n+2)`
-/

namespace A249669.P7753920744976777129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + A008578 (n + 2)

end

end A249669.P7753920744976777129

namespace A249669

/-- `A246778(n+1)+A008578(n+2)` -/
def P7753920744976777129.Spec : Prop :=
  ∀ n, P7753920744976777129.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P12963943627634706650

`A246778(n+1)+p?[A000961(n+1)]`
-/

namespace A249669.P12963943627634706650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P12963943627634706650

namespace A249669

/-- `A246778(n+1)+p?[A000961(n+1)]` -/
def P12963943627634706650.Spec : Prop :=
  ∀ n, P12963943627634706650.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P5961463941189549448

`A246778(n+1)+record[A006530(n+2)]`
-/

namespace A249669.P5961463941189549448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249669.P5961463941189549448

namespace A249669

/-- `A246778(n+1)+record[A006530(n+2)]` -/
def P5961463941189549448.Spec : Prop :=
  ∀ n, P5961463941189549448.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P11781450864722435751

`A246778(n+1)+p?[A026239(n+1)]`
-/

namespace A249669.P11781450864722435751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P11781450864722435751

namespace A249669

/-- `A246778(n+1)+p?[A026239(n+1)]` -/
def P11781450864722435751.Spec : Prop :=
  ∀ n, P11781450864722435751.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P7155969224464359139

`A246778(n+1)+record[A134735(n+1)]`
-/

namespace A249669.P7155969224464359139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249669.P7155969224464359139

namespace A249669

/-- `A246778(n+1)+record[A134735(n+1)]` -/
def P7155969224464359139.Spec : Prop :=
  ∀ n, P7155969224464359139.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P10341137018610573783

`A246778(n+1)+p?[A014681(n)]`
-/

namespace A249669.P10341137018610573783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P10341137018610573783

namespace A249669

/-- `A246778(n+1)+p?[A014681(n)]` -/
def P10341137018610573783.Spec : Prop :=
  ∀ n, P10341137018610573783.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P7093760982588405136

`A246778(n+1)+record[A093074(n+1)]`
-/

namespace A249669.P7093760982588405136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249669.P7093760982588405136

namespace A249669

/-- `A246778(n+1)+record[A093074(n+1)]` -/
def P7093760982588405136.Spec : Prop :=
  ∀ n, P7093760982588405136.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P2398268528657781716

`A246778(n+1)+p?[A061397(n+1)]`
-/

namespace A249669.P2398268528657781716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P2398268528657781716

namespace A249669

/-- `A246778(n+1)+p?[A061397(n+1)]` -/
def P2398268528657781716.Spec : Prop :=
  ∀ n, P2398268528657781716.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P8618414245712765693

`A246778(n+1)+p?[A089026(n+1)]`
-/

namespace A249669.P8618414245712765693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P8618414245712765693

namespace A249669

/-- `A246778(n+1)+p?[A089026(n+1)]` -/
def P8618414245712765693.Spec : Prop :=
  ∀ n, P8618414245712765693.a n = A249669 (n + 1)

end A249669

/-! ## A249669.P236172781054497341

`A246778(n+1)+p?[A091203(n)]`
-/

namespace A249669.P236172781054497341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246778 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249669.P236172781054497341

namespace A249669

/-- `A246778(n+1)+p?[A091203(n)]` -/
def P236172781054497341.Spec : Prop :=
  ∀ n, P236172781054497341.a n = A249669 (n + 1)

end A249669

/-!
# A249670: a(n) = A017665(n)*A017666(n).

The programs for A249670, the canonical program `A249670.P6555047459186973760` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249670 has offset 1).

The definition of A249670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A249670.P6555047459186973760

`A017665(n+1)*A017666(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A249670

/-- `A017665(n+1)*A017666(n+1)` -/
def P6555047459186973760.Spec : Prop :=
  ∀ n, P6555047459186973760.a n = A249670 (n + 1)

theorem P6555047459186973760.correct : P6555047459186973760.Spec := by
  intro n
  simp only [A249670, Nat.add_sub_cancel]

end A249670

/-! ## A249670.P2107384443195596137

`A064987(n+1)/A009194(n+1)²`
-/

namespace A249670.P2107384443195596137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A009194 (n + 1) ^ 2 : ℚ)

end

end A249670.P2107384443195596137

namespace A249670

/-- `A064987(n+1)/A009194(n+1)²` -/
def P2107384443195596137.Spec : Prop :=
  ∀ n, P2107384443195596137.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P14975896959987035048

`(n+1)*∑{d}[n+1, #]/gcd(n-1-2*n, ∑{d}[n+1, #])²`
-/

namespace A249670.P14975896959987035048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) / (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) ^ 2 : ℚ)

end

end A249670.P14975896959987035048

namespace A249670

/-- `(n+1)*∑{d}[n+1, #]/gcd(n-1-2*n, ∑{d}[n+1, #])²` -/
def P14975896959987035048.Spec : Prop :=
  ∀ n, P14975896959987035048.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P7361555499465733769

`A009242(n+1)/A009194(n+1)`
-/

namespace A249670.P7361555499465733769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A249670.P7361555499465733769

namespace A249670

/-- `A009242(n+1)/A009194(n+1)` -/
def P7361555499465733769.Spec : Prop :=
  ∀ n, P7361555499465733769.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P8272692370754021514

`A009242(n+1)²/A064987(n+1)`
-/

namespace A249670.P8272692370754021514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) ^ 2 : ℚ) / (A064987 (n + 1) : ℚ)

end

end A249670.P8272692370754021514

namespace A249670

/-- `A009242(n+1)²/A064987(n+1)` -/
def P8272692370754021514.Spec : Prop :=
  ∀ n, P8272692370754021514.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P343491597825688113

`(n+1)/A009194(n+1)*A017665(n+1)`
-/

namespace A249670.P343491597825688113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009194 (n + 1) : ℚ) * (A017665 (n + 1) : ℚ)

end

end A249670.P343491597825688113

namespace A249670

/-- `(n+1)/A009194(n+1)*A017665(n+1)` -/
def P343491597825688113.Spec : Prop :=
  ∀ n, P343491597825688113.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P11916792108304563940

`lcm(n+1, A000203(n+1))/A009194(n+1)`
-/

namespace A249670.P11916792108304563940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000203 (n + 1)) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A249670.P11916792108304563940

namespace A249670

/-- `lcm(n+1, A000203(n+1))/A009194(n+1)` -/
def P11916792108304563940.Spec : Prop :=
  ∀ n, P11916792108304563940.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P15418043386850509975

`(n+1)/A000203(n+1)*A017665(n+1)²`
-/

namespace A249670.P15418043386850509975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (n + 1) : ℚ) * (A017665 (n + 1) ^ 2 : ℚ)

end

end A249670.P15418043386850509975

namespace A249670

/-- `(n+1)/A000203(n+1)*A017665(n+1)²` -/
def P15418043386850509975.Spec : Prop :=
  ∀ n, P15418043386850509975.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P4660323004006462016

`A000203(n+1)/(n+1)*A017666(n+1)²`
-/

namespace A249670.P4660323004006462016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (n + 1 : ℚ) * (A017666 (n + 1) ^ 2 : ℚ)

end

end A249670.P4660323004006462016

namespace A249670

/-- `A000203(n+1)/(n+1)*A017666(n+1)²` -/
def P4660323004006462016.Spec : Prop :=
  ∀ n, P4660323004006462016.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P354156059277871530

`lcm(A017665(A000027(n+1)), A017666(n+1))`
-/

namespace A249670.P354156059277871530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017665 (A000027 (n + 1)).toNat) (A017666 (n + 1))

end

end A249670.P354156059277871530

namespace A249670

/-- `lcm(A017665(A000027(n+1)), A017666(n+1))` -/
def P354156059277871530.Spec : Prop :=
  ∀ n, (P354156059277871530.a n : ℤ) = A249670 (n + 1)

end A249670

/-! ## A249670.P10255683484776652545

`(A243473(n+1)+A017666(n+1))*A017666(n+1)`
-/

namespace A249670.P10255683484776652545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243473 (n + 1) + A017666 (n + 1)) * A017666 (n + 1)

end

end A249670.P10255683484776652545

namespace A249670

/-- `(A243473(n+1)+A017666(n+1))*A017666(n+1)` -/
def P10255683484776652545.Spec : Prop :=
  ∀ n, P10255683484776652545.a n = A249670 (n + 1)

end A249670

/-! ## A249670.P11136968362409149035

`(A017665(n+1)-A243473(n+1))*A017665(n+1)`
-/

namespace A249670.P11136968362409149035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017665 (n + 1) - A243473 (n + 1)) * A017665 (n + 1)

end

end A249670.P11136968362409149035

namespace A249670

/-- `(A017665(n+1)-A243473(n+1))*A017665(n+1)` -/
def P11136968362409149035.Spec : Prop :=
  ∀ n, P11136968362409149035.a n = A249670 (n + 1)

end A249670

/-! ## A249670.P7267474526798906977

`A000203(n+1)/A009194(n+1)*A017666(n+1)`
-/

namespace A249670.P7267474526798906977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ) * (A017666 (n + 1) : ℚ)

end

end A249670.P7267474526798906977

namespace A249670

/-- `A000203(n+1)/A009194(n+1)*A017666(n+1)` -/
def P7267474526798906977.Spec : Prop :=
  ∀ n, P7267474526798906977.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P14643548708755769925

`A009242(n+1)/gcd(A009242(n+1), A155085(n+1))`
-/

namespace A249670.P14643548708755769925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009242 (n + 1) : ℚ) / (Int.gcd (A009242 (n + 1)) (A155085 (n + 1)) : ℚ)

end

end A249670.P14643548708755769925

namespace A249670

/-- `A009242(n+1)/gcd(A009242(n+1), A155085(n+1))` -/
def P14643548708755769925.Spec : Prop :=
  ∀ n, P14643548708755769925.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P6430167035835478017

`A000203(n+1)*A000027(n+1)/A009194(n+1)²`
-/

namespace A249670.P6430167035835478017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A000027 (n + 1) : ℚ) / (A009194 (n + 1) ^ 2 : ℚ)

end

end A249670.P6430167035835478017

namespace A249670

/-- `A000203(n+1)*A000027(n+1)/A009194(n+1)²` -/
def P6430167035835478017.Spec : Prop :=
  ∀ n, P6430167035835478017.a n = (A249670 (n + 1) : ℚ)

end A249670

/-! ## A249670.P7673974527341611962

`(A240923(n+1)+A000203(A017666(n+1)))*A017666(n+1)`
-/

namespace A249670.P7673974527341611962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A240923 (n + 1) + A000203 (A017666 (n + 1)).toNat) * A017666 (n + 1)

end

end A249670.P7673974527341611962

namespace A249670

/-- `(A240923(n+1)+A000203(A017666(n+1)))*A017666(n+1)` -/
def P7673974527341611962.Spec : Prop :=
  ∀ n, P7673974527341611962.a n = A249670 (n + 1)

end A249670

/-!
# A249674: a(n) = 30*n.

The programs for A249674, the canonical program `A249674.P13656214549216497831` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249674 has offset 0).

The definition of A249674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n` (program `A249674.P13656214549216497831`, by `A249674.P13656214549216497831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249674.P13656214549216497831

`30*n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249674

/-- `30*n` -/
def P13656214549216497831.Spec : Prop :=
  ∀ n, (P13656214549216497831.a n : ℤ) = A249674 n

theorem P13656214549216497831.correct : P13656214549216497831.Spec := by
  intro n
  simp only [A249674]

end A249674

/-!
# A249675: Multinomial coefficient (2+3+...+prime(n); 2,3,5,7,...,prime(n)) = A007504(n)! / A111180(n).

The programs for A249675, there is no canonical definition to state claims against.
-/

/-! ## A249675.P7821752461324932869

`∏[C(A007504(n+1), A007504(n))]`
-/

namespace A249675.P7821752461324932869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007504 (n + 1)).toNat (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A249675.P7821752461324932869

/-!
# A249676: Terms k of A249667 such that k-A151799(k) = A151800(k)-k.

The programs for A249676, there is no canonical definition to state claims against.
-/

/-! ## A249676.P3925321277184581031

`∩[A072568(n+1), A249667(n+1)]`
-/

namespace A249676.P3925321277184581031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249676.P3925321277184581031

/-! ## A249676.P8463266677859470680

`∩[A249667(n+1), A162800(n)]`
-/

namespace A249676.P8463266677859470680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249676.P8463266677859470680

/-! ## A249676.P6188953888538006726

`∩[A024675(n+1), A249667(n+1)]`
-/

namespace A249676.P6188953888538006726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249676.P6188953888538006726

/-! ## A249676.P11390826688518069229

`∩[A162735(n+1), A249667(n+1)]`
-/

namespace A249676.P11390826688518069229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249676.P11390826688518069229

/-! ## A249676.P12130198384449284932

`∩[A145025(n+1), A249667(n+1)]`
-/

namespace A249676.P12130198384449284932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249676.P12130198384449284932

/-! ## A249676.P12208810026223429908

`∩[A063934(n+1), A249667(n+1)]`
-/

namespace A249676.P12208810026223429908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249676.P12208810026223429908

/-!
# A249677: Triangle, read by rows, with row n forming the coefficients in Product_{k=0..n} (1 + k^3*x).

The programs for A249677, there is no canonical definition to state claims against.
-/

/-! ## A249677.P2189558443499198247

`A269947(A099375(n)+1+n)`
-/

namespace A249677.P2189558443499198247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A099375 n + 1 + (n : ℤ)).toNat

end

end A249677.P2189558443499198247

/-! ## A249677.P7857549635057254698

`A269947(A014132(A038722(n+1)))`
-/

namespace A249677.P7857549635057254698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A014132 (A038722 (n + 1)).toNat).toNat

end

end A249677.P7857549635057254698

/-! ## A249677.P14094162836338349641

`A269947(A114327(n)+∑[A035214(n)])`
-/

namespace A249677.P14094162836338349641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A114327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249677.P14094162836338349641

/-! ## A249677.P13091018083816895456

`A269947(A114327(n)+A014132(n+1))`
-/

namespace A249677.P13091018083816895456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A114327 n + A014132 (n + 1)).toNat

end

end A249677.P13091018083816895456

/-! ## A249677.P17286710249504710071

`A269947(A061579(n)+A003057(n+2))`
-/

namespace A249677.P17286710249504710071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A061579 n + A003057 (n + 2)).toNat

end

end A249677.P17286710249504710071

/-! ## A249677.P5122046067694784482

`A269947(A038722(n+1)+A002024(n+1))`
-/

namespace A249677.P5122046067694784482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A249677.P5122046067694784482

/-!
# A249679: Terms of A007504 divisible by 3.

The programs for A249679, the canonical program `A249679.P425418324060059187` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249679 has offset 1).

The definition of A249679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249679.P425418324060059187

`A007504(eq[0, A007504(n)%3])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A249679

/-- `A007504(eq[0, A007504(n)%3])` -/
def P425418324060059187.Spec : Prop :=
  ∀ n, P425418324060059187.a n = A249679 (n + 1)

theorem P425418324060059187.correct : P425418324060059187.Spec := by
  intro n
  simp only [A249679, Nat.add_sub_cancel]

end A249679

/-! ## A249679.P11474519679928087130

`A007504(eq[3, gcd(3, A007504(n))])`
-/

namespace A249679.P11474519679928087130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A007504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A249679.P11474519679928087130

namespace A249679

/-- `A007504(eq[3, gcd(3, A007504(n))])` -/
def P11474519679928087130.Spec : Prop :=
  ∀ n, P11474519679928087130.a n = A249679 (n + 1)

end A249679

/-! ## A249679.P993292982214985682

`A007504(A103208(n))+n*a(A000038(n))` with `a(0)=0`
-/

namespace A249679.P993292982214985682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007504 (A103208 n).toNat + (n : ℤ) * a (A000038 n).toNat

end

end A249679.P993292982214985682

namespace A249679

/-- `A007504(A103208(n))+n*a(A000038(n))` -/
def P993292982214985682.Spec : Prop :=
  ∀ n, P993292982214985682.a n = A249679 (n + 1)

end A249679

/-! ## A249679.P9205491392886523835

`A007504(A103208(n))+3*a(A020985(n)²-1)` with `a(0)=0`
-/

namespace A249679.P9205491392886523835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007504 (A103208 n).toNat + 3 * a (A020985 n ^ 2 - 1).toNat

end

end A249679.P9205491392886523835

namespace A249679

/-- `A007504(A103208(n))+3*a(A020985(n)²-1)` -/
def P9205491392886523835.Spec : Prop :=
  ∀ n, P9205491392886523835.a n = A249679 (n + 1)

end A249679

/-! ## A249679.P13306510751233844401

`A007504(A103208(n))+a(n-n/A057428(n)²)` with `a(0)=0`
-/

namespace A249679.P13306510751233844401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007504 (A103208 n).toNat + a (SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (A057428 n ^ 2 : ℚ))).toNat

end

end A249679.P13306510751233844401

namespace A249679

/-- `A007504(A103208(n))+a(n-n/A057428(n)²)` -/
def P13306510751233844401.Spec : Prop :=
  ∀ n, P13306510751233844401.a n = A249679 (n + 1)

end A249679

/-!
# A249680: A084937(3n+1).

The programs for A249680, there is no canonical definition to state claims against.
-/

/-! ## A249680.P4251719224539318991

`A084937(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249680.P4251719224539318991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (3 * n + 1)

end

end A249680.P4251719224539318991

/-! ## A249680.P17572650852624097288

`or(1, A084937(A016777(n)))`
-/

namespace A249680.P17572650852624097288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084937 (A016777 n).toNat)

end

end A249680.P17572650852624097288

/-! ## A249680.P3124986027891150201

`or(1, A084937(A008585(n)+1))`
-/

namespace A249680.P3124986027891150201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084937 (A008585 n + 1).toNat)

end

end A249680.P3124986027891150201

/-! ## A249680.P16207901040688350785

`or(1, A084937(A016813(n)-n))`
-/

namespace A249680.P16207901040688350785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084937 (A016813 n - (n : ℤ)).toNat)

end

end A249680.P16207901040688350785

/-! ## A249680.P16151985170890584892

`A000265(A084937(Δ[n²]+n))`
-/

namespace A249680.P16151985170890584892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A084937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat).toNat

end

end A249680.P16151985170890584892

/-! ## A249680.P11518700492074105326

`A084937(n+1+n+n)%A001248(n+1)`
-/

namespace A249680.P11518700492074105326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084937 (n + 1 + n + n)) (A001248 (n + 1))

end

end A249680.P11518700492074105326

/-! ## A249680.P10620982290307426020

`A022998(A084937(n+n+n+1))`
-/

namespace A249680.P10620982290307426020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A084937 (n + n + (n + 1))).toNat

end

end A249680.P10620982290307426020

/-! ## A249680.P4996182361912647818

`A283971(A084937(n+1+n+n))`
-/

namespace A249680.P4996182361912647818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A084937 (n + 1 + n + n)).toNat

end

end A249680.P4996182361912647818

/-!
# A249681: A084937(3n+2).

The programs for A249681, there is no canonical definition to state claims against.
-/

/-! ## A249681.P9014400062080525702

`A084937(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249681.P9014400062080525702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (3 * n + 2)

end

end A249681.P9014400062080525702

/-! ## A249681.P16851715506234119952

`2*A249683(n)`
-/

namespace A249681.P16851715506234119952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249683 n

end

end A249681.P16851715506234119952

/-! ## A249681.P15661848226902025046

`A249683(n)+A249683(n%A249680(n))`
-/

namespace A249681.P15661848226902025046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249683 n + A249683 (Int.tmod (n : ℤ) (A249680 n)).toNat

end

end A249681.P15661848226902025046

/-! ## A249681.P12599450572820859161

`A249683(n)+A249683(n)%A249682(n+1)`
-/

namespace A249681.P12599450572820859161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249683 n + Int.tmod (A249683 n) (A249682 (n + 1))

end

end A249681.P12599450572820859161

/-! ## A249681.P2421252856704978717

`(A249683(n)+A249683(n))%A008458(n+1)`
-/

namespace A249681.P2421252856704978717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249683 n + A249683 n) (A008458 (n + 1))

end

end A249681.P2421252856704978717

/-! ## A249681.P3817290398892681023

`A004277(A249683(n))`
-/

namespace A249681.P3817290398892681023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A249683 n).toNat

end

end A249681.P3817290398892681023

/-! ## A249681.P14081425691058397511

`filter[A084937(n+1), A059841(#)]`
-/

namespace A249681.P14081425691058397511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A249681.P14081425691058397511

/-! ## A249681.P9817942489908140792

`filter[A084937(n+2), A135528(#)]`
-/

namespace A249681.P9817942489908140792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A249681.P9817942489908140792

/-! ## A249681.P8693637242424217972

`filter[A084937(n+2), A266591(#)]`
-/

namespace A249681.P8693637242424217972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A249681.P8693637242424217972

/-!
# A249682: A084937(3n).

The programs for A249682, there is no canonical definition to state claims against.
-/

/-! ## A249682.P16344344873154398985

`A084937(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249682.P16344344873154398985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (3 * (n + 1))

end

end A249682.P16344344873154398985

/-! ## A249682.P1400564899041641928

`A000265(A084937(Δ[(n+1)²]+n))`
-/

namespace A249682.P1400564899041641928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A084937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat).toNat

end

end A249682.P1400564899041641928

/-! ## A249682.P2305661737156659996

`or(1, A084937(A008585(n+1)))`
-/

namespace A249682.P2305661737156659996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084937 (A008585 (n + 1)).toNat)

end

end A249682.P2305661737156659996

/-! ## A249682.P2196747906708394237

`A084937(A008585(n+1))%Δ[A005902(n)]`
-/

namespace A249682.P2196747906708394237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084937 (A008585 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A249682.P2196747906708394237

/-! ## A249682.P2364269168768073076

`A084937(A008585(n+1))+A000007(n+1)`
-/

namespace A249682.P2364269168768073076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (A008585 (n + 1)).toNat + A000007 (n + 1)

end

end A249682.P2364269168768073076

/-! ## A249682.P9222183726264485133

`A084937(A008585(n+1))+A059841(A000265(n+1))`
-/

namespace A249682.P9222183726264485133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (A008585 (n + 1)).toNat + A059841 (A000265 (n + 1)).toNat

end

end A249682.P9222183726264485133

/-! ## A249682.P9425788935155707360

`A084937(A008585(n+1))+A000035(A005843(n))`
-/

namespace A249682.P9425788935155707360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (A008585 (n + 1)).toNat + A000035 (A005843 n).toNat

end

end A249682.P9425788935155707360

/-! ## A249682.P9767718155052225523

`A340370(A140513(n))+A084937(A008585(n+1))`
-/

namespace A249682.P9767718155052225523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340370 (A140513 n).toNat + A084937 (A008585 (n + 1)).toNat

end

end A249682.P9767718155052225523

/-! ## A249682.P14309745006950508740

`A084937(A008585(n+1))/A082061(A152313(n+1))`
-/

namespace A249682.P14309745006950508740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084937 (A008585 (n + 1)).toNat : ℚ) / (A082061 (A152313 (n + 1)).toNat : ℚ)

end

end A249682.P14309745006950508740

/-!
# A249683: a(n) = A084937(3n+2)/2.

The programs for A249683, there is no canonical definition to state claims against.
-/

/-! ## A249683.P7619354699070319349

`A084937(3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249683.P7619354699070319349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084937 (3 * n + 2) : ℚ) / 2

end

end A249683.P7619354699070319349

/-! ## A249683.P9599263725150352360

`A249681(n)/2`
-/

namespace A249683.P9599263725150352360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249681 n : ℚ) / 2

end

end A249683.P9599263725150352360

/-! ## A249683.P15468578076342493363

`A014682(A084937(3*n+2))`
-/

namespace A249683.P15468578076342493363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A084937 (3 * n + 2)).toNat

end

end A249683.P15468578076342493363

/-! ## A249683.P17672655715005843808

`A008619(A249681(n)-2)`
-/

namespace A249683.P17672655715005843808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A249681 n - 2).toNat

end

end A249683.P17672655715005843808

/-! ## A249683.P11607403191078295632

`A289436(A249681(n))`
-/

namespace A249683.P11607403191078295632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A249681 n).toNat

end

end A249683.P11607403191078295632

/-! ## A249683.P14828930233512169661

`A003602(A249681(n)-1)`
-/

namespace A249683.P14828930233512169661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A249681 n - 1).toNat

end

end A249683.P14828930233512169661

/-! ## A249683.P2878167841932326447

`A004526(A249681(n)+1)`
-/

namespace A249683.P2878167841932326447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A249681 n + 1).toNat

end

end A249683.P2878167841932326447

/-! ## A249683.P12162658257941389265

`A008615(A249681(n)+2*A249681(n))`
-/

namespace A249683.P12162658257941389265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A249681 n + 2 * A249681 n).toNat

end

end A249683.P12162658257941389265

/-!
# A249684: Numbers that take a record number of steps before they appear in A084937.

The programs for A249684, there is no canonical definition to state claims against.
-/

/-! ## A249684.P4129014309773841347

`record[A084933(n+1)]`
-/

namespace A249684.P4129014309773841347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249684.P4129014309773841347

/-! ## A249684.P6927272022157680334

`eq[0, A249777(n+1)]+1`
-/

namespace A249684.P6927272022157680334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249684.P6927272022157680334

/-! ## A249684.P7391172917606697556

`record[gcd(A000027(n+1), A249777(n+1))]`
-/

namespace A249684.P7391172917606697556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A249777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249684.P7391172917606697556

/-! ## A249684.P14008485004217562085

`record[(n+1)/A006530(A249777(n+1)+1)]`
-/

namespace A249684.P14008485004217562085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (A249777 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249684.P14008485004217562085

/-! ## A249684.P5901378574089710622

`record[(n+1)/A084937(4*A249777(n+1)+1)]`
-/

namespace A249684.P5901378574089710622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084937 (4 * A249777 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249684.P5901378574089710622

/-! ## A249684.P6165378578650969266

`record[(n+1)/A103683(4*A249777(n+1)+1)]`
-/

namespace A249684.P6165378578650969266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A103683 (4 * A249777 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249684.P6165378578650969266

/-! ## A249684.P2440821395903895930

`A084933(A249685(n+1))`
-/

namespace A249684.P2440821395903895930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084933 (A249685 (n + 1)).toNat

end

end A249684.P2440821395903895930

/-!
# A249685: Indices where terms of A249684 appear in A084933.

The programs for A249685, there is no canonical definition to state claims against.
-/

/-! ## A249685.P16539194354311349148

`A084937(A249684(n+1))`
-/

namespace A249685.P16539194354311349148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (A249684 (n + 1)).toNat

end

end A249685.P16539194354311349148

/-! ## A249685.P14595774574745826329

`A084937(eq[0, A249777(n+1)]+1)`
-/

namespace A249685.P14595774574745826329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249685.P14595774574745826329

/-! ## A249685.P15097913749521221177

`eq[1, A347578(A278233(n+1))]`
-/

namespace A249685.P15097913749521221177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A278233 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249685.P15097913749521221177

/-! ## A249685.P17324641484811044007

`record[A062068(A326701(n+1)+1)]`
-/

namespace A249685.P17324641484811044007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A326701 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249685.P17324641484811044007

/-! ## A249685.P3984694399309112077

`A084937(lt[A249858(n+1), 1]+1)`
-/

namespace A249685.P3984694399309112077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249858 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A249685.P3984694399309112077

/-!
# A249686: After A084937(n) has been computed, let m = largest term so far in A084937. Then a(n) = number of positive integers < m that are missing from A084937 at this point.

The programs for A249686, there is no canonical definition to state claims against.
-/

/-! ## A249686.P5241272422993916174

`A250100(n+1)+A250099(n+1)`
-/

namespace A249686.P5241272422993916174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250100 (n + 1) + A250099 (n + 1)

end

end A249686.P5241272422993916174

/-! ## A249686.P6072345354898763939

`A001068(A250099(n+1)%A000112(n))`
-/

namespace A249686.P6072345354898763939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (Int.tmod (A250099 (n + 1)) (A000112 n)).toNat

end

end A249686.P6072345354898763939

/-! ## A249686.P2041174206255161153

`A250099(n+1)+∑[A294930(A048587(n))]`
-/

namespace A249686.P2041174206255161153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A048587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250099 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249686.P2041174206255161153

/-! ## A249686.P16044951313934919739

`A005811(A227549(n+1)%A076928(n+1))`
-/

namespace A249686.P16044951313934919739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A227549 (n + 1)) (A076928 (n + 1))).toNat

end

end A249686.P16044951313934919739

/-! ## A249686.P18418929978745105337

`A001068(A250099(n+1))%A083340(n+1)`
-/

namespace A249686.P18418929978745105337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001068 (A250099 (n + 1)).toNat) (A083340 (n + 1))

end

end A249686.P18418929978745105337

/-!
# A249688: a(n) = n-th Ramanujan number A000594(n), squared.

The programs for A249688, there is no canonical definition to state claims against.
-/

/-! ## A249688.P8176067137189742073

`A000594(n+1)²`
-/

namespace A249688.P8176067137189742073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (n + 1) ^ 2

end

end A249688.P8176067137189742073

/-! ## A249688.P2161101516621753022

`(A145155(n)/(n+1))²`
-/

namespace A249688.P2161101516621753022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A145155 n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A249688.P2161101516621753022

/-! ## A249688.P14541334558691783651

`A000594(n+1)^A020639(2*(n+1))`
-/

namespace A249688.P14541334558691783651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A249688.P14541334558691783651

/-! ## A249688.P982627491894624584

`A000594(n+1)^and(2, A141123(n+1))`
-/

namespace A249688.P982627491894624584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 (n + 1) : ℚ) ^ (Int.land 2 (A141123 (n + 1)) : ℤ)

end

end A249688.P982627491894624584

/-! ## A249688.P8195461356289835245

`A000594(n+1)^(A074093(2*n+3)+1)`
-/

namespace A249688.P8195461356289835245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 (n + 1) : ℚ) ^ (A074093 (2 * n + 3) + 1 : ℤ)

end

end A249688.P8195461356289835245

/-! ## A249688.P9915184621519642763

`A000594(A000027(n+1))*A000594(n+1)`
-/

namespace A249688.P9915184621519642763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A000027 (n + 1)).toNat * A000594 (n + 1)

end

end A249688.P9915184621519642763

/-! ## A249688.P3977654827494445745

`A292781(A075349(n+1)-1)²`
-/

namespace A249688.P3977654827494445745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 1) - 1).toNat ^ 2

end

end A249688.P3977654827494445745

/-! ## A249688.P2756031647985456504

`A292781(A075349(n+2))²`
-/

namespace A249688.P2756031647985456504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (n + 2)).toNat ^ 2

end

end A249688.P2756031647985456504

/-! ## A249688.P6909823589159340086

`A055978(4*(n+1))²`
-/

namespace A249688.P6909823589159340086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (4 * (n + 1)) ^ 2

end

end A249688.P6909823589159340086

/-!
# A249691: a(n) = binomial(3*n,n)*(5*n+2)/(2*n+1).

The programs for A249691, the canonical program `A249691.P15060400557879782247` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249691 has offset 0).

The definition of A249691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249691.P15060400557879782247

`C(3*n, n)*(5*n+2)/(2*n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249691

/-- `C(3*n, n)*(5*n+2)/(2*n+1)` -/
def P15060400557879782247.Spec : Prop :=
  ∀ n, P15060400557879782247.a n = (A249691 n : ℚ)

end A249691

/-! ## A249691.P11950307438969305594

`(5*n+2)*A001764(n)`
-/

namespace A249691.P11950307438969305594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) * A001764 n

end

end A249691.P11950307438969305594

namespace A249691

/-- `(5*n+2)*A001764(n)` -/
def P11950307438969305594.Spec : Prop :=
  ∀ n, P11950307438969305594.a n = A249691 n

end A249691

/-! ## A249691.P8504375148509922939

`(4*n+n+2)*A047749(2*n)`
-/

namespace A249691.P8504375148509922939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + (n + 2) : ℤ) * A047749 (2 * n)

end

end A249691.P8504375148509922939

namespace A249691

/-- `(4*n+n+2)*A047749(2*n)` -/
def P8504375148509922939.Spec : Prop :=
  ∀ n, P8504375148509922939.a n = A249691 n

end A249691

/-! ## A249691.P16412723557681686138

`A045721(n)+A005809(n)`
-/

namespace A249691.P16412723557681686138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + A005809 n

end

end A249691.P16412723557681686138

namespace A249691

/-- `A045721(n)+A005809(n)` -/
def P16412723557681686138.Spec : Prop :=
  ∀ n, P16412723557681686138.a n = A249691 n

end A249691

/-! ## A249691.P11272973412237107773

`A174687(n)+A052227(n)`
-/

namespace A249691.P11272973412237107773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 n + A052227 n

end

end A249691.P11272973412237107773

namespace A249691

/-- `A174687(n)+A052227(n)` -/
def P11272973412237107773.Spec : Prop :=
  ∀ n, P11272973412237107773.a n = A249691 n

end A249691

/-! ## A249691.P314158419560829175

`A264772(∑[n])+A045721(n)`
-/

namespace A249691.P314158419560829175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) + A045721 n

end

end A249691.P314158419560829175

namespace A249691

/-- `A264772(∑[n])+A045721(n)` -/
def P314158419560829175.Spec : Prop :=
  ∀ n, P314158419560829175.a n = A249691 n

end A249691

/-! ## A249691.P2199087939598742641

`∑[A016861(n)]*A000139(n)`
-/

namespace A249691.P2199087939598742641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000139 n

end

end A249691.P2199087939598742641

namespace A249691

/-- `∑[A016861(n)]*A000139(n)` -/
def P2199087939598742641.Spec : Prop :=
  ∀ n, P2199087939598742641.a n = A249691 n

end A249691

/-! ## A249691.P17104559988759782545

`Δ[A002413(n)]*A000139(n)`
-/

namespace A249691.P17104559988759782545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000139 n

end

end A249691.P17104559988759782545

namespace A249691

/-- `Δ[A002413(n)]*A000139(n)` -/
def P17104559988759782545.Spec : Prop :=
  ∀ n, P17104559988759782545.a n = A249691 n

end A249691

/-! ## A249691.P9876212097681219226

`A099578(2*n)+A005809(n)`
-/

namespace A249691.P9876212097681219226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n) + A005809 n

end

end A249691.P9876212097681219226

namespace A249691

/-- `A099578(2*n)+A005809(n)` -/
def P9876212097681219226.Spec : Prop :=
  ∀ n, P9876212097681219226.a n = A249691 n

end A249691

/-! ## A249691.P5777109151872595671

`A065942(2*n)+A045721(n)`
-/

namespace A249691.P5777109151872595671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) + A045721 n

end

end A249691.P5777109151872595671

namespace A249691

/-- `A065942(2*n)+A045721(n)` -/
def P5777109151872595671.Spec : Prop :=
  ∀ n, P5777109151872595671.a n = A249691 n

end A249691

/-! ## A249691.P16533708120463416505

`A081204(2*n)+A045721(n)`
-/

namespace A249691.P16533708120463416505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n) + A045721 n

end

end A249691.P16533708120463416505

namespace A249691

/-- `A081204(2*n)+A045721(n)` -/
def P16533708120463416505.Spec : Prop :=
  ∀ n, P16533708120463416505.a n = A249691 n

end A249691

/-! ## A249691.P7966556967647930580

`3*A045721(n)-A052227(n)`
-/

namespace A249691.P7966556967647930580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045721 n - A052227 n

end

end A249691.P7966556967647930580

namespace A249691

/-- `3*A045721(n)-A052227(n)` -/
def P7966556967647930580.Spec : Prop :=
  ∀ n, P7966556967647930580.a n = A249691 n

end A249691

/-! ## A249691.P17742060973071708867

`3*A005809(n)-A174687(n)`
-/

namespace A249691.P17742060973071708867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005809 n - A174687 n

end

end A249691.P17742060973071708867

namespace A249691

/-- `3*A005809(n)-A174687(n)` -/
def P17742060973071708867.Spec : Prop :=
  ∀ n, P17742060973071708867.a n = A249691 n

end A249691

/-! ## A249691.P14284895539206075243

`A065942(2*n+1)+A005809(n)`
-/

namespace A249691.P14284895539206075243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n + 1) + A005809 n

end

end A249691.P14284895539206075243

namespace A249691

/-- `A065942(2*n+1)+A005809(n)` -/
def P14284895539206075243.Spec : Prop :=
  ∀ n, P14284895539206075243.a n = A249691 n

end A249691

/-! ## A249691.P17718231714496800211

`A303259(2*n+1)+A045721(n)`
-/

namespace A249691.P17718231714496800211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 (2 * n + 1) + A045721 n

end

end A249691.P17718231714496800211

namespace A249691

/-- `A303259(2*n+1)+A045721(n)` -/
def P17718231714496800211.Spec : Prop :=
  ∀ n, P17718231714496800211.a n = A249691 n

end A249691

/-! ## A249691.P1138287742312687809

`A065942(2*n+1)+A065942(2*n)`
-/

namespace A249691.P1138287742312687809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n + 1) + A065942 (2 * n)

end

end A249691.P1138287742312687809

namespace A249691

/-- `A065942(2*n+1)+A065942(2*n)` -/
def P1138287742312687809.Spec : Prop :=
  ∀ n, P1138287742312687809.a n = A249691 n

end A249691

/-! ## A249691.P16100812977129061354

`A051033(3*n+1)+A051033(3*n)`
-/

namespace A249691.P16100812977129061354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (3 * n + 1) + A051033 (3 * n)

end

end A249691.P16100812977129061354

namespace A249691

/-- `A051033(3*n+1)+A051033(3*n)` -/
def P16100812977129061354.Spec : Prop :=
  ∀ n, P16100812977129061354.a n = A249691 n

end A249691

/-! ## A249691.P9362404308029995170

`A116637(2*n+1)+n*A047750(2*n)`
-/

namespace A249691.P9362404308029995170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (2 * n + 1) + (n : ℤ) * A047750 (2 * n)

end

end A249691.P9362404308029995170

namespace A249691

/-- `A116637(2*n+1)+n*A047750(2*n)` -/
def P9362404308029995170.Spec : Prop :=
  ∀ n, P9362404308029995170.a n = A249691 n

end A249691

/-! ## A249691.P7239139128006136393

`A001764(n)*A008619(A017305(n))`
-/

namespace A249691.P7239139128006136393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A008619 (A017305 n).toNat

end

end A249691.P7239139128006136393

namespace A249691

/-- `A001764(n)*A008619(A017305(n))` -/
def P7239139128006136393.Spec : Prop :=
  ∀ n, P7239139128006136393.a n = A249691 n

end A249691

/-! ## A249691.P15731145885309578984

`A025174(n)+A165817(n)+A045721(n)`
-/

namespace A249691.P15731145885309578984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 n + (A165817 n + A045721 n)

end

end A249691.P15731145885309578984

namespace A249691

/-- `A025174(n)+A165817(n)+A045721(n)` -/
def P15731145885309578984.Spec : Prop :=
  ∀ n, P15731145885309578984.a n = A249691 n

end A249691

/-!
# A249693: a(4n) = 3*n+1, a(2n+1) = 3*n+2, a(4n+2) = 3*n.

The programs for A249693, the canonical program `A249693.P15949800274015004550` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249693 has offset 0).

The definition of A249693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249693.P15949800274015004550

`(1+9*n-3*(n+1)*(-1)^n+10*cos(n*π/2))/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A249693

/-- `(1+9*n-3*(n+1)*(-1)^n+10*cos(n*π/2))/8` -/
def P15949800274015004550.Spec : Prop :=
  ∀ n, P15949800274015004550.a n = (A249693 n : ℝ)

end A249693

/-! ## A249693.P15272277925839011881

`A165351(n)-2-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A249693.P15272277925839011881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A165351 n - 2 - a (n - 2)

end

end A249693.P15272277925839011881

namespace A249693

/-- `A165351(n)-2-a(n-2)` -/
def P15272277925839011881.Spec : Prop :=
  ∀ n, P15272277925839011881.a n = A249693 n

end A249693

/-! ## A249693.P3044567996383153693

`A342131(A263426(n))`
-/

namespace A249693.P3044567996383153693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (A263426 n).toNat

end

end A249693.P3044567996383153693

namespace A249693

/-- `A342131(A263426(n))` -/
def P3044567996383153693.Spec : Prop :=
  ∀ n, P3044567996383153693.a n = A249693 n

end A249693

/-! ## A249693.P17607609902858504298

`A342131(n)+A056594(n)`
-/

namespace A249693.P17607609902858504298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 n + A056594 n

end

end A249693.P17607609902858504298

namespace A249693

/-- `A342131(n)+A056594(n)` -/
def P17607609902858504298.Spec : Prop :=
  ∀ n, P17607609902858504298.a n = A249693 n

end A249693

/-! ## A249693.P10019594798144379783

`A006368(A159966(n+1))-1`
-/

namespace A249693.P10019594798144379783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A159966 (n + 1)).toNat - 1

end

end A249693.P10019594798144379783

namespace A249693

/-- `A006368(A159966(n+1))-1` -/
def P10019594798144379783.Spec : Prop :=
  ∀ n, P10019594798144379783.a n = A249693 n

end A249693

/-! ## A249693.P16364442771262705638

`A074306(n+1)-1`
-/

namespace A249693.P16364442771262705638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (n + 1) - 1

end

end A249693.P16364442771262705638

namespace A249693

/-- `A074306(n+1)-1` -/
def P16364442771262705638.Spec : Prop :=
  ∀ n, P16364442771262705638.a n = A249693 n

end A249693

/-! ## A249693.P17850799819610453974

`A074308(A074305(n+1))-1`
-/

namespace A249693.P17850799819610453974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074308 (A074305 (n + 1)).toNat - 1

end

end A249693.P17850799819610453974

namespace A249693

/-- `A074308(A074305(n+1))-1` -/
def P17850799819610453974.Spec : Prop :=
  ∀ n, P17850799819610453974.a n = A249693 n

end A249693

/-! ## A249693.P9578237882387610231

`A236348(A342131(n))`
-/

namespace A249693.P9578237882387610231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A342131 n).toNat

end

end A249693.P9578237882387610231

namespace A249693

/-- `A236348(A342131(n))` -/
def P9578237882387610231.Spec : Prop :=
  ∀ n, P9578237882387610231.a n = A249693 n

end A249693

/-! ## A249693.P1809560392412190000

`A023443(A074306(n+1))`
-/

namespace A249693.P1809560392412190000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074306 (n + 1)).toNat

end

end A249693.P1809560392412190000

namespace A249693

/-- `A023443(A074306(n+1))` -/
def P1809560392412190000.Spec : Prop :=
  ∀ n, P1809560392412190000.a n = A249693 n

end A249693

/-! ## A249693.P16920282044409073466

`A064429(A006368(n+1))-1`
-/

namespace A249693.P16920282044409073466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A006368 (n + 1)).toNat - 1

end

end A249693.P16920282044409073466

namespace A249693

/-- `A064429(A006368(n+1))-1` -/
def P16920282044409073466.Spec : Prop :=
  ∀ n, P16920282044409073466.a n = A249693 n

end A249693

/-! ## A249693.P9214709927331956401

`A080782(A006368(n+1)+1)-2`
-/

namespace A249693.P9214709927331956401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A006368 (n + 1) + 1).toNat - 2

end

end A249693.P9214709927331956401

namespace A249693

/-- `A080782(A006368(n+1)+1)-2` -/
def P9214709927331956401.Spec : Prop :=
  ∀ n, P9214709927331956401.a n = A249693 n

end A249693

/-! ## A249693.P10885990170092892026

`A001651(A186421(n+1)+n+1)-A047273(n+2)`
-/

namespace A249693.P10885990170092892026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A186421 (n + 1) + (n : ℤ) + 1).toNat - A047273 (n + 2)

end

end A249693.P10885990170092892026

namespace A249693

/-- `A001651(A186421(n+1)+n+1)-A047273(n+2)` -/
def P10885990170092892026.Spec : Prop :=
  ∀ n, P10885990170092892026.a n = A249693 n

end A249693

/-!
# A249694: a(n) = gcd(A084937(n), A084937(n+3)).

The programs for A249694, there is no canonical definition to state claims against.
-/

/-! ## A249694.P5027678821976571310

`gcd(A084937(n+1), A084937(n+4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249694.P5027678821976571310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084937 (n + 1)) (A084937 (n + 4))

end

end A249694.P5027678821976571310

/-! ## A249694.P7816132918869822496

`gcd(A133310(2*(n+1)), A328772(A300738(2*(n+1))))`
-/

namespace A249694.P7816132918869822496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133310 (2 * (n + 1))) (A328772 (A300738 (2 * (n + 1))).toNat)

end

end A249694.P7816132918869822496

/-! ## A249694.P4095352149920090227

`gcd(A065111(n+3)+1, A000045(n+2))`
-/

namespace A249694.P4095352149920090227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065111 (n + 3) + 1) (A000045 (n + 2))

end

end A249694.P4095352149920090227

/-! ## A249694.P17456091839579412342

`A178058(A382314(n+1))`
-/

namespace A249694.P17456091839579412342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178058 (A382314 (n + 1)).toNat

end

end A249694.P17456091839579412342

/-!
# A249695: a(n)=0, if A249441(n)=0; otherwise, a(n) is the smallest i such that A249441(n)^2 divides binomial(n,i).

The programs for A249695, there is no canonical definition to state claims against.
-/

/-! ## A249695.P6130408777503065761

`(n+1)%A034444(A336103(n))`
-/

namespace A249695.P6130408777503065761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A034444 (A336103 n).toNat)

end

end A249695.P6130408777503065761

/-! ## A249695.P5783351812453219619

`A065621(n+1)%Δ[A003174(n+1)]`
-/

namespace A249695.P5783351812453219619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065621 (n + 1)) (f1 (n + 1) - f1 n)

end

end A249695.P5783351812453219619

/-! ## A249695.P14591686555475524640

`A279879(n)%A275729(A279879(n))`
-/

namespace A249695.P14591686555475524640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279879 n) (A275729 (A279879 n).toNat)

end

end A249695.P14591686555475524640

/-! ## A249695.P672430422921061873

`A187829(n+1)%A000189(A109767(n))`
-/

namespace A249695.P672430422921061873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187829 (n + 1)) (A000189 (A109767 n).toNat)

end

end A249695.P672430422921061873

/-! ## A249695.P1852063618645210814

`A250246(n+1)%A000189(A109767(n))`
-/

namespace A249695.P1852063618645210814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250246 (n + 1)) (A000189 (A109767 n).toNat)

end

end A249695.P1852063618645210814

/-!
# A249696: Number of distinct permanental polynomials among all simple undirected graphs on n nodes.

The programs for A249696, there is no canonical definition to state claims against.
-/

/-! ## A249696.P13162427700455419967

`A132999(A000088(n)-A073778(n))`
-/

namespace A249696.P13162427700455419967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (A000088 n - A073778 n).toNat

end

end A249696.P13162427700455419967

/-! ## A249696.P628028789271878233

`A000088(n)-A004442(A309860(n))`
-/

namespace A249696.P628028789271878233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A004442 (A309860 n).toNat

end

end A249696.P628028789271878233

/-! ## A249696.P11188611004631692356

`∑[A002494(n)]-A004442(A309860(n))`
-/

namespace A249696.P11188611004631692356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004442 (A309860 n).toNat

end

end A249696.P11188611004631692356

/-! ## A249696.P17715576807538026403

`A327805(∑[n])-A004442(A309860(n))`
-/

namespace A249696.P17715576807538026403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (∑ j ∈ Finset.range (n + 1), f1 j) - A004442 (A309860 n).toNat

end

end A249696.P17715576807538026403

/-!
# A249698: E.g.f.: Sum_{n>=0} Product_{k=1..n} cosh(k*x).

The programs for A249698, there is no canonical definition to state claims against.
-/

/-! ## A249698.P7406793709424146356

`A102899(A303486(n))-char[2^n]`
-/

namespace A249698.P7406793709424146356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (A303486 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249698.P7406793709424146356

/-!
# A249699: Numerators of coefficients in series expansion of Cl_2(x)+x*log(x), where Cl_2 is the Clausen function of order 2.

The programs for A249699, there is no canonical definition to state claims against.
-/

/-! ## A249699.P16043742425262470142

`abs(A120086(A165754(n)))`
-/

namespace A249699.P16043742425262470142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120086 (A165754 n).toNat|

end

end A249699.P16043742425262470142

/-! ## A249699.P3596062159032100814

`lcm(A011592(n), A120086(A004442(n)))`
-/

namespace A249699.P3596062159032100814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011592 n) (A120086 (A004442 n).toNat)

end

end A249699.P3596062159032100814

/-! ## A249699.P6086362181633223738

`lcm(A046978(n), A120082(A004442(n)))`
-/

namespace A249699.P6086362181633223738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046978 n) (A120082 (A004442 n).toNat)

end

end A249699.P6086362181633223738

/-! ## A249699.P3702934403536754211

`lcm(A010156(n), A120082(A165754(n)))`
-/

namespace A249699.P3702934403536754211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010156 n) (A120082 (A165754 n).toNat)

end

end A249699.P3702934403536754211

/-! ## A249699.P15298944940195736892

`lcm(A120086(A165754(n)), A158388(n))`
-/

namespace A249699.P15298944940195736892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A120086 (A165754 n).toNat) (A158388 n)

end

end A249699.P15298944940195736892

