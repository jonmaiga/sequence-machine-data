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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
# A396104: First differences of A396086, the number of dyadic intervals of length 2^(-n) that intersect the classical middle-third Cantor set.

The programs for A396104, there is no canonical definition to state claims against.
-/

/-! ## A396104.P7361116016020210948

`A396086(n+1)-A396086(n)`
-/

namespace A396104.P7361116016020210948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396086 (n + 1) - A396086 n

end

end A396104.P7361116016020210948

/-! ## A396104.P866357667588948466

`Δ[A396086(n)]`
-/

namespace A396104.P866357667588948466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396104.P866357667588948466

/-! ## A396104.P18060904367075622545

`A131996(A163658(n+1))`
-/

namespace A396104.P18060904367075622545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A163658 (n + 1)).toNat

end

end A396104.P18060904367075622545

/-!
# A396105: Numbers k such that there are no solutions to A048050(x) + A048050(x+k) = k.

The programs for A396105, there is no canonical definition to state claims against.
-/

/-! ## A396105.P9550580407373117912

`∪[A191067(n+1), A191301(n+1)]%A128336(n+1)`
-/

namespace A396105.P9550580407373117912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191301 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A128336 (n + 1))

end

end A396105.P9550580407373117912

/-! ## A396105.P16481740168031126469

`∪[A191067(n+1), A191301(2*n)]%A153588(3*n+2)`
-/

namespace A396105.P16481740168031126469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191301 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A153588 (3 * n + 2))

end

end A396105.P16481740168031126469

/-! ## A396105.P9498521678244498187

`∪[A191067(n+1)%A128338(n+1), A191301(n+1)]`
-/

namespace A396105.P9498521678244498187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191067 (n + 1)) (A128338 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A396105.P9498521678244498187

/-! ## A396105.P2762811906732757856

`∪[A191067(n+1), A191301(2*n)]%A127997(n+1)`
-/

namespace A396105.P2762811906732757856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191301 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A127997 (n + 1))

end

end A396105.P2762811906732757856

/-!
# A396106: n-th prime greater than 10^n.

The programs for A396106, there is no canonical definition to state claims against.
-/

/-! ## A396106.P4912527043536665882

`A073914(∑[n+1]+n)`
-/

namespace A396106.P4912527043536665882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073914 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A396106.P4912527043536665882

/-! ## A396106.P1922736384459852294

`A045707(A073517(n+1)+1+n)`
-/

namespace A396106.P1922736384459852294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (A073517 (n + 1) + 1 + (n : ℤ)).toNat

end

end A396106.P1922736384459852294

/-!
# A396108: Expansion of e.g.f. 1/(1 - sinh(x) - sinh(x)^2).

The programs for A396108, there is no canonical definition to state claims against.
-/

/-! ## A396108.P11284578451828131190

`A103354(∏[∑[A274143(n)]])`
-/

namespace A396108.P11284578451828131190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A396108.P11284578451828131190

/-! ## A396108.P12986992814896420585

`A103354(∏[∑[A274156(n)]])`
-/

namespace A396108.P12986992814896420585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A396108.P12986992814896420585

/-!
# A396110: Number of digraphs on n labeled nodes such that every node is reachable from node 1.

The programs for A396110, there is no canonical definition to state claims against.
-/

/-! ## A396110.P661182707046412769

`record[A108084(n)*A143543(n+1)]`
-/

namespace A396110.P661182707046412769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108084 n * A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396110.P661182707046412769

/-! ## A396110.P8201395734999727499

`A001187(n+1)*A006125(n+1)`
-/

namespace A396110.P8201395734999727499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 (n + 1) * A006125 (n + 1)

end

end A396110.P8201395734999727499

/-! ## A396110.P12419306822846890147

`A062740(n+1)/2*A006125(n)`
-/

namespace A396110.P12419306822846890147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062740 (n + 1) : ℚ) / 2 * (A006125 n : ℚ)

end

end A396110.P12419306822846890147

/-! ## A396110.P2681788259973045310

`A000079(n)*A350792(n+1)/(n+1)`
-/

namespace A396110.P2681788259973045310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A350792 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A396110.P2681788259973045310

/-! ## A396110.P18141514911801283647

`(A054592(n+1)+A001187(n+1))*A001187(n+1)`
-/

namespace A396110.P18141514911801283647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054592 (n + 1) + A001187 (n + 1)) * A001187 (n + 1)

end

end A396110.P18141514911801283647

/-!
# A396111: a(n) = n^4 mod (2*n+1).

The programs for A396111, the canonical program `A396111.P7594967389268569643` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396111 has offset 0).

The definition of A396111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%(2*n+1)` (program `A396111.P7594967389268569643`, by `A396111.P7594967389268569643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396111.P7594967389268569643

`(n^4)%(2*n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396111

/-- `(n^4)%(2*n+1)` -/
def P7594967389268569643.Spec : Prop :=
  ∀ n, (P7594967389268569643.a n : ℤ) = A396111 n

theorem P7594967389268569643.correct : P7594967389268569643.Spec := by
  intro n
  simp only [A396111]

end A396111

/-! ## A396111.P18238307676123888715

`n²²%record[xor(1, n)]`
-/

namespace A396111.P18238307676123888715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 % f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396111.P18238307676123888715

namespace A396111

/-- `n²²%record[xor(1, n)]` -/
def P18238307676123888715.Spec : Prop :=
  ∀ n, (P18238307676123888715.a n : ℤ) = A396111 n

end A396111

/-! ## A396111.P3232016543635420488

`abs(-xor(1, 2*n-∑[2*n]²)%A005408(n))`
-/

namespace A396111.P3232016543635420488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-Int.xor 1 ((2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ))) (A005408 n)|

end

end A396111.P3232016543635420488

namespace A396111

/-- `abs(-xor(1, 2*n-∑[2*n]²)%A005408(n))` -/
def P3232016543635420488.Spec : Prop :=
  ∀ n, P3232016543635420488.a n = A396111 n

end A396111

/-! ## A396111.P9115468190657824563

`abs(A165568(n)%A005408(n))`
-/

namespace A396111.P9115468190657824563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A165568 n) (A005408 n)|

end

end A396111.P9115468190657824563

namespace A396111

/-- `abs(A165568(n)%A005408(n))` -/
def P9115468190657824563.Spec : Prop :=
  ∀ n, P9115468190657824563.a n = A396111 n

end A396111

/-! ## A396111.P17099035488636955668

`abs(((A152017(n+1)+1)/(n+2))%A005408(n))`
-/

namespace A396111.P17099035488636955668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((A152017 (n + 1) + 1 : ℚ) / (n + 2 : ℚ))) (A005408 n)|

end

end A396111.P17099035488636955668

namespace A396111

/-- `abs(((A152017(n+1)+1)/(n+2))%A005408(n))` -/
def P17099035488636955668.Spec : Prop :=
  ∀ n, P17099035488636955668.a n = A396111 n

end A396111

/-! ## A396111.P16250721917738967438

`abs(A171733(2*n)%A005408(n))`
-/

namespace A396111.P16250721917738967438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A171733 (2 * n)) (A005408 n)|

end

end A396111.P16250721917738967438

namespace A396111

/-- `abs(A171733(2*n)%A005408(n))` -/
def P16250721917738967438.Spec : Prop :=
  ∀ n, P16250721917738967438.a n = A396111 n

end A396111

/-! ## A396111.P2637450293019924877

`A048152(2*n*(n+1)+1+floor(n/2))`
-/

namespace A396111.P2637450293019924877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 ((2 * n * (n + 1) : ℤ) + (1 + ⌊(n : ℚ) / 2⌋)).toNat

end

end A396111.P2637450293019924877

namespace A396111

/-- `A048152(2*n*(n+1)+1+floor(n/2))` -/
def P2637450293019924877.Spec : Prop :=
  ∀ n, P2637450293019924877.a n = A396111 n

end A396111

/-! ## A396111.P4746481588530227925

`A048156(A001844(n))`
-/

namespace A396111.P4746481588530227925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (A001844 n).toNat

end

end A396111.P4746481588530227925

namespace A396111

/-- `A048156(A001844(n))` -/
def P4746481588530227925.Spec : Prop :=
  ∀ n, P4746481588530227925.a n = A396111 n

end A396111

/-! ## A396111.P16554986999964650632

`A048156(A082019(n+1))`
-/

namespace A396111.P16554986999964650632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (A082019 (n + 1)).toNat

end

end A396111.P16554986999964650632

namespace A396111

/-- `A048156(A082019(n+1))` -/
def P16554986999964650632.Spec : Prop :=
  ∀ n, P16554986999964650632.a n = A396111 n

end A396111

/-! ## A396111.P17031781745322209978

`A048156(A255840(n+1))`
-/

namespace A396111.P17031781745322209978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048156 (A255840 (n + 1)).toNat

end

end A396111.P17031781745322209978

namespace A396111

/-- `A048156(A255840(n+1))` -/
def P17031781745322209978.Spec : Prop :=
  ∀ n, P17031781745322209978.a n = A396111 n

end A396111

/-!
# A396112: Recamán's Choice. Take the integers 1..n and order them any way you choose to form a vector. Starting with the first element, add or subtract the numbers, keeping a running tally of the result. You must always use subtraction if you can, but the running tally can never be negative and can never duplicate a previous number in the running tally. a(n) is the largest possible final result of the running tally.

The programs for A396112, there is no canonical definition to state claims against.
-/

/-! ## A396112.P1930112037311324950

`eq[row(n)-col(n), 2*A339369(n)]+1`
-/

namespace A396112.P1930112037311324950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339369 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396112.P1930112037311324950

/-! ## A396112.P12016220164610490437

`∑[A020985(A221882(n+1))+n]`
-/

namespace A396112.P12016220164610490437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A221882 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396112.P12016220164610490437

/-! ## A396112.P2376305065667831596

`eq[2*A339369(n), A025581(n)]+1`
-/

namespace A396112.P2376305065667831596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396112.P2376305065667831596

/-! ## A396112.P3987646543124259579

`∑[A034947(A016021(n+1)+1)+n]`
-/

namespace A396112.P3987646543124259579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A016021 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396112.P3987646543124259579

/-! ## A396112.P18377567922037841818

`A000217(n)-∑[A134323(A357639(2*(n+2))+1)]`
-/

namespace A396112.P18377567922037841818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (A357639 (2 * (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396112.P18377567922037841818

/-!
# A396113: a(n) = sopf(n) * phi(n), where sopf = A008472 and phi = A000010.

The programs for A396113, the canonical program `A396113.P1790873692820670444` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396113 has offset 1).

The definition of A396113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008472(n+1)*A000010(n+1)` (program `A396113.P1790873692820670444`, by `A396113.P1790873692820670444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396113.P1790873692820670444

`A008472(n+1)*A000010(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A396113

/-- `A008472(n+1)*A000010(n+1)` -/
def P1790873692820670444.Spec : Prop :=
  ∀ n, P1790873692820670444.a n = A396113 (n + 1)

theorem P1790873692820670444.correct : P1790873692820670444.Spec := by
  intro n
  simp only [A396113, Nat.add_sub_cancel]

end A396113

/-! ## A396113.P173773904168404842

`Δ[A002088(n)]*∑{p}[1+n, #]`
-/

namespace A396113.P173773904168404842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A396113.P173773904168404842

namespace A396113

/-- `Δ[A002088(n)]*∑{p}[1+n, #]` -/
def P173773904168404842.Spec : Prop :=
  ∀ n, P173773904168404842.a n = A396113 (n + 1)

end A396113

/-! ## A396113.P17219442984012357103

`Δ[A005728(n)]*∑{p}[n+1, #]`
-/

namespace A396113.P17219442984012357103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A396113.P17219442984012357103

namespace A396113

/-- `Δ[A005728(n)]*∑{p}[n+1, #]` -/
def P17219442984012357103.Spec : Prop :=
  ∀ n, P17219442984012357103.a n = A396113 (n + 1)

end A396113

/-! ## A396113.P10838389712377069664

`∑{p}[1+n, #]*A000010(n+1)`
-/

namespace A396113.P10838389712377069664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A000010 (n + 1)

end

end A396113.P10838389712377069664

namespace A396113

/-- `∑{p}[1+n, #]*A000010(n+1)` -/
def P10838389712377069664.Spec : Prop :=
  ∀ n, P10838389712377069664.a n = A396113 (n + 1)

theorem P10838389712377069664.correct : P10838389712377069664.Spec := by
  intro n
  simp only [A396113, Nat.add_sub_cancel, A396113.P10838389712377069664.f1, A396113.P10838389712377069664.a, A396113.P1790873692820670444.a, A000010, A000010.P4673923239450215316.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A396113

/-! ## A396113.P396138545805501402

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A008472(n+1)`
-/

namespace A396113.P396138545805501402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A008472 (n + 1) : ℚ)

end

end A396113.P396138545805501402

namespace A396113

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A008472(n+1)` -/
def P396138545805501402.Spec : Prop :=
  ∀ n, P396138545805501402.a n = (A396113 (n + 1) : ℚ)

end A396113

/-! ## A396113.P14722730796520146371

`Δ[A002088(n)]*A008472(n+1)`
-/

namespace A396113.P14722730796520146371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008472 (n + 1)

end

end A396113.P14722730796520146371

namespace A396113

/-- `Δ[A002088(n)]*A008472(n+1)` -/
def P14722730796520146371.Spec : Prop :=
  ∀ n, P14722730796520146371.a n = A396113 (n + 1)

end A396113

/-! ## A396113.P13134113971685485562

`Δ[A005728(n)]*A008472(n+1)`
-/

namespace A396113.P13134113971685485562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008472 (n + 1)

end

end A396113.P13134113971685485562

namespace A396113

/-- `Δ[A005728(n)]*A008472(n+1)` -/
def P13134113971685485562.Spec : Prop :=
  ∀ n, P13134113971685485562.a n = A396113 (n + 1)

end A396113

/-! ## A396113.P15334765419014809703

`A000010(n+1)*A008472(n+1)`
-/

namespace A396113.P15334765419014809703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A008472 (n + 1)

end

end A396113.P15334765419014809703

namespace A396113

/-- `A000010(n+1)*A008472(n+1)` -/
def P15334765419014809703.Spec : Prop :=
  ∀ n, P15334765419014809703.a n = A396113 (n + 1)

theorem P15334765419014809703.correct : P15334765419014809703.Spec := by
  intro n
  simp only [A396113, Nat.add_sub_cancel, A396113.P15334765419014809703.a, A396113.P1790873692820670444.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A396113

/-! ## A396113.P14878296544748048558

`A000010(n+1)*A001414(∏{p}[n+1, #])`
-/

namespace A396113.P14878296544748048558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A396113.P14878296544748048558

namespace A396113

/-- `A000010(n+1)*A001414(∏{p}[n+1, #])` -/
def P14878296544748048558.Spec : Prop :=
  ∀ n, P14878296544748048558.a n = A396113 (n + 1)

end A396113

/-! ## A396113.P13890207577351681098

`A000010(n+1)*A001414(A007947(n+1))`
-/

namespace A396113.P13890207577351681098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001414 (A007947 (n + 1)).toNat

end

end A396113.P13890207577351681098

namespace A396113

/-- `A000010(n+1)*A001414(A007947(n+1))` -/
def P13890207577351681098.Spec : Prop :=
  ∀ n, P13890207577351681098.a n = A396113 (n + 1)

end A396113

/-! ## A396113.P13266567199957958252

`(A096397(n+1)+A096396(n+1))*A008472(n+1)`
-/

namespace A396113.P13266567199957958252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096397 (n + 1) + A096396 (n + 1)) * A008472 (n + 1)

end

end A396113.P13266567199957958252

namespace A396113

/-- `(A096397(n+1)+A096396(n+1))*A008472(n+1)` -/
def P13266567199957958252.Spec : Prop :=
  ∀ n, P13266567199957958252.a n = A396113 (n + 1)

end A396113

/-!
# A396114: a(n) is the first multiple of n encountered when reading Pascal's triangle row-by-row, left to right.

The programs for A396114, there is no canonical definition to state claims against.
-/

/-! ## A396114.P17556431324164236476

`(n+1)*A375082(n+1)`
-/

namespace A396114.P17556431324164236476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A375082 (n + 1)

end

end A396114.P17556431324164236476

/-! ## A396114.P2079314304613329028

`C(A349958(n+1), A374959(n+1))`
-/

namespace A396114.P2079314304613329028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349958 (n + 1)).toNat (A374959 (n + 1)).toNat

end

end A396114.P2079314304613329028

/-! ## A396114.P6900859827730894637

`A375082(1+n)*(n+1)`
-/

namespace A396114.P6900859827730894637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375082 (1 + n) * (n + 1 : ℤ)

end

end A396114.P6900859827730894637

/-! ## A396114.P6014555765017191201

`A160267(A005132(2*n+3)*A064293(n+2))*(n+1)`
-/

namespace A396114.P6014555765017191201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160267 (A005132 (2 * n + 3) * A064293 (n + 2)).toNat * (n + 1 : ℤ)

end

end A396114.P6014555765017191201

/-! ## A396114.P7218403149880584301

`(A007814(n+1)%(A144151(n)/A194333(A000045(n+3)))+1)*(n+1)`
-/

namespace A396114.P7218403149880584301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A007814 (n + 1)) (SequenceMachineLib.roundAway ((A144151 n : ℚ) / (A194333 (A000045 (n + 3)).toNat : ℚ))) + 1) * (n + 1 : ℤ)

end

end A396114.P7218403149880584301

/-!
# A396116: Consider the square spiral with its cells numbered starting at 0. Four players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the first player.

The programs for A396116, there is no canonical definition to state claims against.
-/

/-! ## A396116.P11371135481523122263

`eq[1, A396121(n)%4]`
-/

namespace A396116.P11371135481523122263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396121 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396116.P11371135481523122263

/-! ## A396116.P14064502476017896929

`eq[3, A385047(A396121(n)+1)]`
-/

namespace A396116.P14064502476017896929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385047 (A396121 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396116.P14064502476017896929

/-! ## A396116.P8489698004100797543

`lt[1, A134746(A396121(n))]`
-/

namespace A396116.P8489698004100797543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (A396121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396116.P8489698004100797543

/-!
# A396117: Consider the square spiral with its cells numbered starting at 0. Four players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the second player.

The programs for A396117, there is no canonical definition to state claims against.
-/

/-! ## A396117.P4640240876260613894

`eq[2, A396121(n)%4]`
-/

namespace A396117.P4640240876260613894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396121 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396117.P4640240876260613894

/-!
# A396118: Consider the square spiral with its cells numbered starting at 0. Four players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the third player.

The programs for A396118, there is no canonical definition to state claims against.
-/

/-! ## A396118.P8134679740678498825

`lt[2, A396121(n)%4]`
-/

namespace A396118.P8134679740678498825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396121 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396118.P8134679740678498825

/-! ## A396118.P16460744012620690846

`lt[A134746(A396121(n)), 0]`
-/

namespace A396118.P16460744012620690846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134746 (A396121 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396118.P16460744012620690846

/-!
# A396120: Consider the square spiral with its cells numbered starting at 0. Four players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396120, there is no canonical definition to state claims against.
-/

/-! ## A396120.P8760358485971815234

`eq[0, A396121(n)]`
-/

namespace A396120.P8760358485971815234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396120.P8760358485971815234

/-! ## A396120.P6908129429374052160

`lt[A396121(1+n), 1]+1`
-/

namespace A396120.P6908129429374052160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396120.P6908129429374052160

/-! ## A396120.P18399823836870756077

`A028310(lt[A396121(n), 1])`
-/

namespace A396120.P18399823836870756077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A396120.P18399823836870756077

/-! ## A396120.P16984111714350737178

`lt[A396121(A254667(n)), 1]`
-/

namespace A396120.P16984111714350737178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396120.P16984111714350737178

/-! ## A396120.P16153886658572901095

`lt[A396121(n), A000034(n)]`
-/

namespace A396120.P16153886658572901095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P16153886658572901095

/-! ## A396120.P13932352167910232140

`lt[A396121(n), A007895(n)]`
-/

namespace A396120.P13932352167910232140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P13932352167910232140

/-! ## A396120.P7364081634344459091

`lt[A396121(n), A070939(n)]`
-/

namespace A396120.P7364081634344459091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P7364081634344459091

/-! ## A396120.P4969166712881847648

`lt[A396121(n)², A001316(n)]`
-/

namespace A396120.P4969166712881847648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P4969166712881847648

/-! ## A396120.P5513067930230954888

`lt[A396121(n)², A003415(n)]`
-/

namespace A396120.P5513067930230954888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P5513067930230954888

/-! ## A396120.P1005296510920319145

`lt[A396121(n)², A193592(n)]`
-/

namespace A396120.P1005296510920319145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P1005296510920319145

/-! ## A396120.P4905024904407279796

`lt[A396121(n)², A219347(n)]`
-/

namespace A396120.P4905024904407279796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P4905024904407279796

/-! ## A396120.P10414590585582112331

`lt[A396121(n)², A254104(n)]`
-/

namespace A396120.P10414590585582112331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P10414590585582112331

/-! ## A396120.P17354476944883399134

`lt[A396121(n)², A396111(n)]`
-/

namespace A396120.P17354476944883399134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P17354476944883399134

/-! ## A396120.P4567146852659535254

`comp[lt[A063725(n), A396121(n)]]`
-/

namespace A396120.P4567146852659535254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A396120.P4567146852659535254

/-! ## A396120.P9657744835009646146

`lt[A396121(n)-A399998(n), 0]`
-/

namespace A396120.P9657744835009646146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n - A399998 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396120.P9657744835009646146

/-! ## A396120.P11521318632461048177

`lt[A083920(n), n-A396121(n)]`
-/

namespace A396120.P11521318632461048177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A396121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P11521318632461048177

/-! ## A396120.P4114600482295803853

`lt[A005586(n)*A396121(n), n-1]`
-/

namespace A396120.P4114600482295803853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n * A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P4114600482295803853

/-! ## A396120.P1252316055878270326

`lt[A187093(n)*A396121(n), n-1]`
-/

namespace A396120.P1252316055878270326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187093 n * A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P1252316055878270326

/-! ## A396120.P11548970536613498945

`lt[A270109(n)*A396121(n), n-1]`
-/

namespace A396120.P11548970536613498945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 n * A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P11548970536613498945

/-! ## A396120.P13279050487777970223

`lt[A396121(n), A395352(n)]`
-/

namespace A396120.P13279050487777970223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396120.P13279050487777970223

/-!
# A396122: Consider the square spiral with its cells numbered starting at 0. Five players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the first player.

The programs for A396122, there is no canonical definition to state claims against.
-/

/-! ## A396122.P3428362023760360033

`eq[1, A010874(A396128(n))]`
-/

namespace A396122.P3428362023760360033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A396128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396122.P3428362023760360033

/-!
# A396123: Consider the square spiral with its cells numbered starting at 0. Five players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the second player.

The programs for A396123, there is no canonical definition to state claims against.
-/

/-! ## A396123.P17751083130589419525

`eq[2, A010874(A396128(n))]`
-/

namespace A396123.P17751083130589419525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A396128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396123.P17751083130589419525

/-!
# A396124: Consider the square spiral with its cells numbered starting at 0. Five players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the third player.

The programs for A396124, there is no canonical definition to state claims against.
-/

/-! ## A396124.P3421948897022011150

`eq[3, A010874(A396128(n))]`
-/

namespace A396124.P3421948897022011150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A396128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396124.P3421948897022011150

/-!
# A396125: Consider the square spiral with its cells numbered starting at 0. Five players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists squares occupied by the fourth player.

The programs for A396125, there is no canonical definition to state claims against.
-/

/-! ## A396125.P6525247042187168399

`eq[4, A010874(A396128(n))]`
-/

namespace A396125.P6525247042187168399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A396128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396125.P6525247042187168399

/-!
# A396127: Consider the square spiral with its cells numbered starting at 0. Five players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396127, there is no canonical definition to state claims against.
-/

/-! ## A396127.P3019190789606776648

`eq[0, A396128(n)]`
-/

namespace A396127.P3019190789606776648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396127.P3019190789606776648

/-! ## A396127.P12583213428970205908

`lt[A396128(n+1), 1]+1`
-/

namespace A396127.P12583213428970205908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396127.P12583213428970205908

/-! ## A396127.P8438127564050303240

`lt[A396128(A028310(n)), 1]`
-/

namespace A396127.P8438127564050303240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396127.P8438127564050303240

/-! ## A396127.P2692793246842889892

`lt[A396128(A254667(n)), 1]`
-/

namespace A396127.P2692793246842889892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396127.P2692793246842889892

/-! ## A396127.P16423148803233919642

`lt[A396128(n), A000034(n)]`
-/

namespace A396127.P16423148803233919642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P16423148803233919642

/-! ## A396127.P18334465633523462381

`lt[A396128(n), A000120(n)]`
-/

namespace A396127.P18334465633523462381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P18334465633523462381

/-! ## A396127.P7941351425744909423

`lt[A396128(n), A007895(n)]`
-/

namespace A396127.P7941351425744909423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P7941351425744909423

/-! ## A396127.P10851242681730002074

`lt[A396128(n), A070939(n)]`
-/

namespace A396127.P10851242681730002074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P10851242681730002074

/-! ## A396127.P18042435586495539104

`lt[A396128(n), A193592(n)]`
-/

namespace A396127.P18042435586495539104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P18042435586495539104

/-! ## A396127.P16102379516250391071

`lt[A396128(n)², A003415(n)]`
-/

namespace A396127.P16102379516250391071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P16102379516250391071

/-! ## A396127.P1237926227000475969

`lt[A396128(n)², A219347(n)]`
-/

namespace A396127.P1237926227000475969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P1237926227000475969

/-! ## A396127.P6530037421517531597

`lt[A396128(n)², A254104(n)]`
-/

namespace A396127.P6530037421517531597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P6530037421517531597

/-! ## A396127.P11901406551395104052

`lt[A396128(n)², A396111(n)]`
-/

namespace A396127.P11901406551395104052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P11901406551395104052

/-! ## A396127.P3614641612085799282

`lt[A396128(n), A000122(n)!]`
-/

namespace A396127.P3614641612085799282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396127.P3614641612085799282

/-! ## A396127.P17986874602270904854

`lt[A396128(n), A001221(n+1)]`
-/

namespace A396127.P17986874602270904854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P17986874602270904854

/-! ## A396127.P14747032865175980585

`lt[A396128(n), A034380(n+1)]`
-/

namespace A396127.P14747032865175980585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P14747032865175980585

/-! ## A396127.P2225422702309126495

`lt[A396128(n), A322361(n+1)]`
-/

namespace A396127.P2225422702309126495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396127.P2225422702309126495

/-! ## A396127.P3081054585424337923

`lt[A396128(n), ∑{e}[n, A001221(#)!]]`
-/

namespace A396127.P3081054585424337923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396128 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorial (A001221 (Nat.factorization (f3 n) p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396127.P3081054585424337923

/-!
# A396135: Consider the square spiral with its cells numbered starting at 0. Six players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396135, there is no canonical definition to state claims against.
-/

/-! ## A396135.P17425714248390215744

`eq[0, A396166(n)]`
-/

namespace A396135.P17425714248390215744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396135.P17425714248390215744

/-! ## A396135.P14708589137254120440

`lt[A396166(A028310(n)), 1]`
-/

namespace A396135.P14708589137254120440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396135.P14708589137254120440

/-! ## A396135.P1191499162896280775

`lt[A396166(n), A000034(n)]`
-/

namespace A396135.P1191499162896280775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P1191499162896280775

/-! ## A396135.P3209122551661403236

`lt[A396166(n), A000120(n)]`
-/

namespace A396135.P3209122551661403236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P3209122551661403236

/-! ## A396135.P6224352310306327689

`lt[A396166(n), A000196(n)]`
-/

namespace A396135.P6224352310306327689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P6224352310306327689

/-! ## A396135.P6231861549722571442

`lt[A396166(n), A001285(n)]`
-/

namespace A396135.P6231861549722571442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P6231861549722571442

/-! ## A396135.P11687291219138876081

`lt[A396166(n), A027868(n)]`
-/

namespace A396135.P11687291219138876081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P11687291219138876081

/-! ## A396135.P17259718549178235997

`lt[A396166(n), A048793(n)]`
-/

namespace A396135.P17259718549178235997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P17259718549178235997

/-! ## A396135.P947855225798779425

`lt[A396166(n), A070939(n)]`
-/

namespace A396135.P947855225798779425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P947855225798779425

/-! ## A396135.P1308028064706119990

`lt[A396166(n), A253641(n)]`
-/

namespace A396135.P1308028064706119990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P1308028064706119990

/-! ## A396135.P4158948449754447273

`lt[A396166(n)², A396111(n)]`
-/

namespace A396135.P4158948449754447273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P4158948449754447273

/-! ## A396135.P17219629209573386077

`lt[A396166(n), A000523(n+1)]`
-/

namespace A396135.P17219629209573386077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P17219629209573386077

/-! ## A396135.P7245746887940506510

`lt[A396166(n), A001222(n+1)]`
-/

namespace A396135.P7245746887940506510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P7245746887940506510

/-! ## A396135.P14502836250558197055

`lt[A396166(n), A187188(n+1)]`
-/

namespace A396135.P14502836250558197055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P14502836250558197055

/-! ## A396135.P15847439577207945549

`lt[A396166(n), A237593(n+1)]`
-/

namespace A396135.P15847439577207945549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P15847439577207945549

/-! ## A396135.P831530538152467211

`lt[A396166(n), A396196(n+1)]`
-/

namespace A396135.P831530538152467211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P831530538152467211

/-! ## A396135.P16923649361922657670

`lt[A396166(n)², A337030(n+1)]`
-/

namespace A396135.P16923649361922657670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P16923649361922657670

/-! ## A396135.P2751158924966169280

`lt[A396166(n)-A008683(n+2), 2]`
-/

namespace A396135.P2751158924966169280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n - A008683 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396135.P2751158924966169280

/-! ## A396135.P14290449341829241650

`lt[A396166(n), A001462(A001462(n+1))]`
-/

namespace A396135.P14290449341829241650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P14290449341829241650

/-! ## A396135.P7168814989485396289

`lt[A396166(n), A161974(A276571(n))]`
-/

namespace A396135.P7168814989485396289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161974 (A276571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396135.P7168814989485396289

/-!
# A396137: Numbers that are neither the sum nor difference of two 5-smooth numbers.

The programs for A396137, there is no canonical definition to state claims against.
-/

/-! ## A396137.P2542709095963230355

`∩[A308456(n+1), A323049(n+1)]`
-/

namespace A396137.P2542709095963230355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396137.P2542709095963230355

/-!
# A396139: a(1) = 1; for n > 1, a(n) is the smallest number > 2^(n-1) with exactly n divisors.

The programs for A396139, there is no canonical definition to state claims against.
-/

/-! ## A396139.P15842831428696799035

`A079427(2^n)`
-/

namespace A396139.P15842831428696799035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (2 ^ n)

end

end A396139.P15842831428696799035

/-! ## A396139.P8348767294393235075

`A171937(A000079(n))+A000079(n)`
-/

namespace A396139.P8348767294393235075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (A000079 n).toNat + A000079 n

end

end A396139.P8348767294393235075

/-! ## A396139.P11958249870220578484

`A079427(A000079(n))%A263968(n)`
-/

namespace A396139.P11958249870220578484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079427 (A000079 n).toNat) (A263968 n)

end

end A396139.P11958249870220578484

/-! ## A396139.P13276010169750225439

`A111899(n+1)+A079427(A000079(n))`
-/

namespace A396139.P13276010169750225439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111899 (n + 1) + A079427 (A000079 n).toNat

end

end A396139.P13276010169750225439

/-! ## A396139.P3334403163548228358

`A130779(n+3)+A079427(A000079(n))`
-/

namespace A396139.P3334403163548228358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (n + 3) + A079427 (A000079 n).toNat

end

end A396139.P3334403163548228358

/-!
# A396142: Number of endless undirected self-avoiding paths in the square lattice, comprised of a repeating primitive path of length n, with rotations, reflections, and translations not counted as distinct.

The programs for A396142, there is no canonical definition to state claims against.
-/

/-! ## A396142.P11638958508329934364

`A111654(A151482(n))`
-/

namespace A396142.P11638958508329934364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A151482 n).toNat

end

end A396142.P11638958508329934364

/-! ## A396142.P2758145871447480994

`A100795(A361359(n))`
-/

namespace A396142.P2758145871447480994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A361359 n).toNat

end

end A396142.P2758145871447480994

/-! ## A396142.P2031514760588174881

`A089646(A189600(n+1))`
-/

namespace A396142.P2031514760588174881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (A189600 (n + 1)).toNat

end

end A396142.P2031514760588174881

/-! ## A396142.P13499622254717906862

`A201997(A303023(n+1))`
-/

namespace A396142.P13499622254717906862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 (A303023 (n + 1)).toNat

end

end A396142.P13499622254717906862

/-!
# A396143: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) is the number of strict integer partitions of 2*n with reverse-alternating sum -2*k.

The programs for A396143, there is no canonical definition to state claims against.
-/

/-! ## A396143.P7916975614368929919

`A008483(A200370(n+1)%record[A200370(n+1)])`
-/

namespace A396143.P7916975614368929919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (Int.tmod (A200370 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A396143.P7916975614368929919

/-! ## A396143.P6426637951405289267

`A323022(A228900(n)+2*T(n-1,k-1)-T(n-2,k))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A396143.P6426637951405289267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n a =>
  A323022 (A228900 n + 2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n).toNat

end

end A396143.P6426637951405289267

/-! ## A396143.P16257426163916336976

`A347609(A193592(n)%A105999(n))`
-/

namespace A396143.P16257426163916336976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347609 (Int.tmod (A193592 n) (A105999 n)).toNat

end

end A396143.P16257426163916336976

/-! ## A396143.P8501837321362199703

`A292262(A008517(n+2)+A008517(n+1))`
-/

namespace A396143.P8501837321362199703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (A008517 (n + 2) + A008517 (n + 1)).toNat

end

end A396143.P8501837321362199703

/-! ## A396143.P17508983553129839478

`A001221(A048004(n))^A378345(n)`
-/

namespace A396143.P17508983553129839478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A048004 n).toNat : ℚ) ^ (A378345 n : ℤ)

end

end A396143.P17508983553129839478

/-!
# A396144: Number of strict integer partitions of 2*n with reverse-alternating sum -6.

The programs for A396144, there is no canonical definition to state claims against.
-/

/-! ## A396144.P325318196956523651

`A026812(n+3)-A395257(n)`
-/

namespace A396144.P325318196956523651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 3) - A395257 n

end

end A396144.P325318196956523651

/-!
# A396145: Number of strict integer partitions of 2*n with reverse-alternating sum -8.

The programs for A396145, there is no canonical definition to state claims against.
-/

/-! ## A396145.P1599108752372682463

`A026814(n+4)-A396075(n)`
-/

namespace A396145.P1599108752372682463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 4) - A396075 n

end

end A396145.P1599108752372682463

/-!
# A396148: Numbers reaching a fixed point in a single step of the Kaprekar mapping A151949.

The programs for A396148, there is no canonical definition to state claims against.
-/

/-! ## A396148.P3711459844419008033

`eq[A151949(n), A151949(A151949(n))]`
-/

namespace A396148.P3711459844419008033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396148.P3711459844419008033

/-! ## A396148.P9934986235776877973

`lt[A151962(n), 2]`
-/

namespace A396148.P9934986235776877973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396148.P9934986235776877973

/-! ## A396148.P10747465323521187422

`lt[A151963(n), 3]`
-/

namespace A396148.P10747465323521187422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151963 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396148.P10747465323521187422

/-! ## A396148.P8788391557060562412

`eq[0, A151962(A151949(n))]`
-/

namespace A396148.P8788391557060562412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A151949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396148.P8788391557060562412

/-! ## A396148.P7062162241633125270

`eq[A139600(A347689(n)), A347689(n)]`
-/

namespace A396148.P7062162241633125270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A347689 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396148.P7062162241633125270

/-!
# A396151: a(n) = 2^(n+1) + 1 - 2*Re((1+i)^n), where i is the imaginary unit.

The programs for A396151, the canonical program `A396151.P82576254118047464` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396151 has offset 0).

The definition of A396151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396151.P15635010247007219615

`2^(n+1)+1-2^(n/2+1)*cos(π*n/4)`
-/

namespace A396151.P15635010247007219615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 1 : ℝ) - (2 : ℝ) ^ ((n : ℚ) / 2 + 1 : ℝ) * Real.cos (Real.pi * (n : ℝ) / 4)

end

end A396151.P15635010247007219615

namespace A396151

/-- `2^(n+1)+1-2^(n/2+1)*cos(π*n/4)` -/
def P15635010247007219615.Spec : Prop :=
  ∀ n, P15635010247007219615.a n = (A396151 n : ℝ)

end A396151

/-! ## A396151.P82576254118047464

`2*A000749(n+2)+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396151

/-- `2*A000749(n+2)+1` -/
def P82576254118047464.Spec : Prop :=
  ∀ n, P82576254118047464.a n = A396151 n

theorem P82576254118047464.correct : P82576254118047464.Spec := by
  intro n
  simp only [A396151]

end A396151

/-! ## A396151.P17419832492284064431

`ogf((1-2x+4x^2-4x^3)/(1-5x+10x^2-10x^3+4x^4))`
-/

namespace A396151.P17419832492284064431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -4] [1, -5, 10, -10, 4] n

end

end A396151.P17419832492284064431

namespace A396151

/-- `ogf((1-2x+4x^2-4x^3)/(1-5x+10x^2-10x^3+4x^4))` -/
def P17419832492284064431.Spec : Prop :=
  ∀ n, P17419832492284064431.a n = A396151 n

end A396151

/-! ## A396151.P10543295295559105431

`∑[2*∑[A038504(n)]]+1`
-/

namespace A396151.P10543295295559105431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A396151.P10543295295559105431

namespace A396151

/-- `∑[2*∑[A038504(n)]]+1` -/
def P10543295295559105431.Spec : Prop :=
  ∀ n, P10543295295559105431.a n = A396151 n

end A396151

/-! ## A396151.P18075803463673334565

`2*∑[A038505(1+n)]+1`
-/

namespace A396151.P18075803463673334565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A396151.P18075803463673334565

namespace A396151

/-- `2*∑[A038505(1+n)]+1` -/
def P18075803463673334565.Spec : Prop :=
  ∀ n, P18075803463673334565.a n = A396151 n

end A396151

/-! ## A396151.P16440323691920956600

`2^(n+1)+1-A099087(n+1)`
-/

namespace A396151.P16440323691920956600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) + 1 : ℤ) - A099087 (n + 1)

end

end A396151.P16440323691920956600

namespace A396151

/-- `2^(n+1)+1-A099087(n+1)` -/
def P16440323691920956600.Spec : Prop :=
  ∀ n, P16440323691920956600.a n = A396151 n

end A396151

/-! ## A396151.P17380610657914823327

`A048578(n)-Δ[A077860(n)]`
-/

namespace A396151.P17380610657914823327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (f1 (n + 1) - f1 n)

end

end A396151.P17380610657914823327

namespace A396151

/-- `A048578(n)-Δ[A077860(n)]` -/
def P17380610657914823327.Spec : Prop :=
  ∀ n, P17380610657914823327.a n = A396151 n

end A396151

/-! ## A396151.P2096786301744087521

`A094373(n+2)-A009545(n+2)`
-/

namespace A396151.P2096786301744087521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 2) - A009545 (n + 2)

end

end A396151.P2096786301744087521

namespace A396151

/-- `A094373(n+2)-A009545(n+2)` -/
def P2096786301744087521.Spec : Prop :=
  ∀ n, P2096786301744087521.a n = A396151 n

end A396151

/-! ## A396151.P11158299952408522224

`A164094(n)-A238187(n)`
-/

namespace A396151.P11158299952408522224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n - A238187 n

end

end A396151.P11158299952408522224

namespace A396151

/-- `A164094(n)-A238187(n)` -/
def P11158299952408522224.Spec : Prop :=
  ∀ n, P11158299952408522224.a n = A396151 n

end A396151

/-!
# A396152: a(n) is the number of possible outcomes having a run of 3 or more sixes when a die is rolled n times.

The programs for A396152, the canonical program `A396152.P13248214911873048844` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396152 has offset 0).

The definition of A396152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396152.P13248214911873048844

`ogf(x^3/(1-11x+25x^2+25x^3+30x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396152

/-- `ogf(x^3/(1-11x+25x^2+25x^3+30x^4))` -/
def P13248214911873048844.Spec : Prop :=
  ∀ n, P13248214911873048844.a n = A396152 n

theorem P13248214911873048844.correct : P13248214911873048844.Spec := by
  intro n
  simp only [A396152]

end A396152

/-! ## A396152.P8107146555167104055

`A396153(A073789(n+1))`
-/

namespace A396152.P8107146555167104055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396153 (A073789 (n + 1)).toNat

end

end A396152.P8107146555167104055

namespace A396152

/-- `A396153(A073789(n+1))` -/
def P8107146555167104055.Spec : Prop :=
  ∀ n, P8107146555167104055.a n = A396152 n

end A396152

/-! ## A396152.P9930920879307401055

`A396155(A392568(n+1))`
-/

namespace A396152.P9930920879307401055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A392568 (n + 1)).toNat

end

end A396152.P9930920879307401055

namespace A396152

/-- `A396155(A392568(n+1))` -/
def P9930920879307401055.Spec : Prop :=
  ∀ n, P9930920879307401055.a n = A396152 n

end A396152

/-!
# A396153: a(n) is the number of possible outcomes having a run of 4 or more sixes when a die is rolled n times.

The programs for A396153, the canonical program `A396153.P2234032032696374607` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396153 has offset 0).

The definition of A396153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396153.P2234032032696374607

`ogf(x^4/(1-11x+25x^2+25x^3+25x^4+30x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396153

/-- `ogf(x^4/(1-11x+25x^2+25x^3+25x^4+30x^5))` -/
def P2234032032696374607.Spec : Prop :=
  ∀ n, P2234032032696374607.a n = A396153 n

theorem P2234032032696374607.correct : P2234032032696374607.Spec := by
  intro n
  simp only [A396153]

end A396153

/-! ## A396153.P3387307290187662988

`A396155(gcd(∏{digits}[n+1, #], ∏[n+3])+1)`
-/

namespace A396153.P3387307290187662988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (Nat.gcd ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod (∏ j ∈ Finset.range (n + 1), f2 j) + 1)

end

end A396153.P3387307290187662988

namespace A396153

/-- `A396155(gcd(∏{digits}[n+1, #], ∏[n+3])+1)` -/
def P3387307290187662988.Spec : Prop :=
  ∀ n, P3387307290187662988.a n = A396153 n

end A396153

/-! ## A396153.P6243788132580020653

`A396154(A002998(n+1))`
-/

namespace A396153.P6243788132580020653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396154 (A002998 (n + 1)).toNat

end

end A396153.P6243788132580020653

namespace A396153

/-- `A396154(A002998(n+1))` -/
def P6243788132580020653.Spec : Prop :=
  ∀ n, P6243788132580020653.a n = A396153 n

end A396153

/-! ## A396153.P6938655858043255917

`A396155(A078295(n+2))`
-/

namespace A396153.P6938655858043255917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A078295 (n + 2)).toNat

end

end A396153.P6938655858043255917

namespace A396153

/-- `A396155(A078295(n+2))` -/
def P6938655858043255917.Spec : Prop :=
  ∀ n, P6938655858043255917.a n = A396153 n

end A396153

/-! ## A396153.P8779400727384285153

`A023443(A396155(n+2)+1)`
-/

namespace A396153.P8779400727384285153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A396155 (n + 2) + 1).toNat

end

end A396153.P8779400727384285153

namespace A396153

/-- `A023443(A396155(n+2)+1)` -/
def P8779400727384285153.Spec : Prop :=
  ∀ n, P8779400727384285153.a n = A396153 n

end A396153

/-!
# A396154: a(n) is the number of possible outcomes having a run of 5 or more sixes when a die is rolled n times.

The programs for A396154, the canonical program `A396154.P7405258141454317451` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396154 has offset 0).

The definition of A396154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396154.P7405258141454317451

`ogf(x^5/(1-11x+25x^2+25x^3+25x^4+25x^5+30x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396154

/-- `ogf(x^5/(1-11x+25x^2+25x^3+25x^4+25x^5+30x^6))` -/
def P7405258141454317451.Spec : Prop :=
  ∀ n, P7405258141454317451.a n = A396154 n

theorem P7405258141454317451.correct : P7405258141454317451.Spec := by
  intro n
  simp only [A396154]

end A396154

/-! ## A396154.P17724032394732416753

`A396155(A043316(n+1))`
-/

namespace A396154.P17724032394732416753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A043316 (n + 1)).toNat

end

end A396154.P17724032394732416753

namespace A396154

/-- `A396155(A043316(n+1))` -/
def P17724032394732416753.Spec : Prop :=
  ∀ n, P17724032394732416753.a n = A396154 n

end A396154

/-! ## A396154.P10778239702155268840

`A396155(A044913(n+1))`
-/

namespace A396154.P10778239702155268840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A044913 (n + 1)).toNat

end

end A396154.P10778239702155268840

namespace A396154

/-- `A396155(A044913(n+1))` -/
def P10778239702155268840.Spec : Prop :=
  ∀ n, P10778239702155268840.a n = A396154 n

end A396154

/-! ## A396154.P15742339239153537546

`A396155(A061147(n+1))`
-/

namespace A396154.P15742339239153537546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A061147 (n + 1)).toNat

end

end A396154.P15742339239153537546

namespace A396154

/-- `A396155(A061147(n+1))` -/
def P15742339239153537546.Spec : Prop :=
  ∀ n, P15742339239153537546.a n = A396154 n

end A396154

/-! ## A396154.P5371782677806867520

`A396155(A061497(n+1))`
-/

namespace A396154.P5371782677806867520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396155 (A061497 (n + 1)).toNat

end

end A396154.P5371782677806867520

namespace A396154

/-- `A396155(A061497(n+1))` -/
def P5371782677806867520.Spec : Prop :=
  ∀ n, P5371782677806867520.a n = A396154 n

end A396154

/-!
# A396155: a(n) is the number of possible outcomes having a run of 6 or more sixes when a die is rolled n times.

The programs for A396155, the canonical program `A396155.P6670983181732114599` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396155 has offset 0).

The definition of A396155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396155.P6670983181732114599

`ogf(x^6/(1-11x+25x^2+25x^3+25x^4+25x^5+25x^6+30x^7))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396155

/-- `ogf(x^6/(1-11x+25x^2+25x^3+25x^4+25x^5+25x^6+30x^7))` -/
def P6670983181732114599.Spec : Prop :=
  ∀ n, P6670983181732114599.a n = A396155 n

theorem P6670983181732114599.correct : P6670983181732114599.Spec := by
  intro n
  simp only [A396155]

end A396155

/-! ## A396155.P3375899052565003898

`A396156(A043318(n+1))`
-/

namespace A396155.P3375899052565003898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A043318 (n + 1)).toNat

end

end A396155.P3375899052565003898

namespace A396155

/-- `A396156(A043318(n+1))` -/
def P3375899052565003898.Spec : Prop :=
  ∀ n, P3375899052565003898.a n = A396155 n

end A396155

/-! ## A396155.P13119151444139573738

`A396156(A044915(n+1))`
-/

namespace A396155.P13119151444139573738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A044915 (n + 1)).toNat

end

end A396155.P13119151444139573738

namespace A396155

/-- `A396156(A044915(n+1))` -/
def P13119151444139573738.Spec : Prop :=
  ∀ n, P13119151444139573738.a n = A396155 n

end A396155

/-! ## A396155.P122631647556456415

`A396156(A161951(n+1))`
-/

namespace A396155.P122631647556456415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (A161951 (n + 1)).toNat

end

end A396155.P122631647556456415

namespace A396155

/-- `A396156(A161951(n+1))` -/
def P122631647556456415.Spec : Prop :=
  ∀ n, P122631647556456415.a n = A396155 n

end A396155

/-! ## A396155.P8112739359593354994

`A396156(gcd(n+1, A135474(n+1)))`
-/

namespace A396155.P8112739359593354994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396156 (Int.gcd (n + 1 : ℤ) (A135474 (n + 1)))

end

end A396155.P8112739359593354994

namespace A396155

/-- `A396156(gcd(n+1, A135474(n+1)))` -/
def P8112739359593354994.Spec : Prop :=
  ∀ n, P8112739359593354994.a n = A396155 n

end A396155

/-!
# A396156: a(n) is the number of possible outcomes having a run of 7 or more sixes when a die is rolled n times.

The programs for A396156, the canonical program `A396156.P16466360952567262097` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396156 has offset 0).

The definition of A396156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396156.P16466360952567262097

`ogf(x^7/(1-11x+25x^2+25x^3+25x^4+25x^5+25x^6+25x^7+30x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396156

/-- `ogf(x^7/(1-11x+25x^2+25x^3+25x^4+25x^5+25x^6+25x^7+30x^8))` -/
def P16466360952567262097.Spec : Prop :=
  ∀ n, P16466360952567262097.a n = A396156 n

theorem P16466360952567262097.correct : P16466360952567262097.Spec := by
  intro n
  simp only [A396156]

end A396156

/-! ## A396156.P9745906423325681409

`A383711(A393251(n))`
-/

namespace A396156.P9745906423325681409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A393251 n).toNat

end

end A396156.P9745906423325681409

namespace A396156

/-- `A383711(A393251(n))` -/
def P9745906423325681409.Spec : Prop :=
  ∀ n, P9745906423325681409.a n = A396156 n

end A396156

/-! ## A396156.P14428520259074131157

`A176744(A338707(n+1))`
-/

namespace A396156.P14428520259074131157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176744 (A338707 (n + 1)).toNat

end

end A396156.P14428520259074131157

namespace A396156

/-- `A176744(A338707(n+1))` -/
def P14428520259074131157.Spec : Prop :=
  ∀ n, P14428520259074131157.a n = A396156 n

end A396156

/-! ## A396156.P18170697767181224397

`A383711(A146058(n+1))`
-/

namespace A396156.P18170697767181224397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383711 (A146058 (n + 1)).toNat

end

end A396156.P18170697767181224397

namespace A396156

/-- `A383711(A146058(n+1))` -/
def P18170697767181224397.Spec : Prop :=
  ∀ n, P18170697767181224397.a n = A396156 n

end A396156

/-! ## A396156.P5012629791722240283

`A358475(A387805(n+1))`
-/

namespace A396156.P5012629791722240283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358475 (A387805 (n + 1)).toNat

end

end A396156.P5012629791722240283

namespace A396156

/-- `A358475(A387805(n+1))` -/
def P5012629791722240283.Spec : Prop :=
  ∀ n, P5012629791722240283.a n = A396156 n

end A396156

/-!
# A396158: Triangle; T(n,m) is the number of possible outcomes having a run of m or more sixes when a die is rolled n times.

The programs for A396158, there is no canonical definition to state claims against.
-/

/-! ## A396158.P15864174222855653494

`A038255(n)-A227837(A269716(n))`
-/

namespace A396158.P15864174222855653494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n - A227837 (A269716 n).toNat

end

end A396158.P15864174222855653494

/-! ## A396158.P14880714593183886697

`A038255(n)-A367403(A246051(n))`
-/

namespace A396158.P14880714593183886697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n - A367403 (A246051 n).toNat

end

end A396158.P14880714593183886697

/-! ## A396158.P10256180808564367280

`A038255(n)-A306710(A017673(n+1))`
-/

namespace A396158.P10256180808564367280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n - A306710 (A017673 (n + 1)).toNat

end

end A396158.P10256180808564367280

/-!
# A396160: Positive integers k such that the greedy Egyptian fraction representation of 1-1/k has more terms than the shortest representation of 1-1/k as a sum of unit fractions.

The programs for A396160, there is no canonical definition to state claims against.
-/

/-! ## A396160.P9894938597515153007

`lt[n, A395996(n+2)]+2`
-/

namespace A396160.P9894938597515153007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395996 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A396160.P9894938597515153007

/-!
# A396161: First column of the triangular array with T(0, m) = m^m and T(n, m) = T(n - 1, m + 3) - T(n - 1, m + 2).

The programs for A396161, the canonical program `A396161.P5884743478724773343` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396161 has offset 0).

The definition of A396161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396161.P5884743478724773343

`∑{#}[n, (-1)^(n-#)*C(n, #)*(2*n+#)^(2*n+#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396161

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*(2*n+#)^(2*n+#)]` -/
def P5884743478724773343.Spec : Prop :=
  ∀ n, P5884743478724773343.a n = (A396161 n : ℚ)

end A396161

/-!
# A396162: First column of the triangular array with T(0, m) = m^m and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

The programs for A396162, the canonical program `A396162.P15112988153262471535` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396162 has offset 0).

The definition of A396162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396162.P15112988153262471535

`∑{#}[2*n, (-1)^#*C(2*n, #)*(n+#)^(n+#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396162

/-- `∑{#}[2*n, (-1)^#*C(2*n, #)*(n+#)^(n+#)]` -/
def P15112988153262471535.Spec : Prop :=
  ∀ n, P15112988153262471535.a n = A396162 n

theorem P15112988153262471535.correct : P15112988153262471535.Spec := by
  intro n
  simp only [A396162]

end A396162

/-!
# A396164: Index where A396163(n) first appears in the simple Sisyphus sequence A347297.

The programs for A396164, there is no canonical definition to state claims against.
-/

/-! ## A396164.P2396834322090756343

`record[A211453(3*n+5)-n]`
-/

namespace A396164.P2396834322090756343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211453 (3 * n + 5) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396164.P2396834322090756343

/-! ## A396164.P5907772081775450600

`∩[A306070(n+1), A288793(n+2)]`
-/

namespace A396164.P5907772081775450600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288793 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396164.P5907772081775450600

/-!
# A396174: Consider the square spiral with its cells numbered starting at 0. Seven players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of a different player. Sequence lists unoccupied squares.

The programs for A396174, there is no canonical definition to state claims against.
-/

/-! ## A396174.P16630669548813308685

`eq[0, A396175(n)]`
-/

namespace A396174.P16630669548813308685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A396174.P16630669548813308685

/-! ## A396174.P8117355966770679706

`lt[A396175(n+1), 1]+1`
-/

namespace A396174.P8117355966770679706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A396174.P8117355966770679706

/-! ## A396174.P3763044249451366593

`lt[A396175(A028310(n)), 1]`
-/

namespace A396174.P3763044249451366593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396174.P3763044249451366593

/-! ## A396174.P17933819924559702624

`lt[A396175(A254667(n)), 1]`
-/

namespace A396174.P17933819924559702624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 (A254667 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396174.P17933819924559702624

/-! ## A396174.P8483706326406226990

`lt[A396175(n), A002266(n)]`
-/

namespace A396174.P8483706326406226990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P8483706326406226990

/-! ## A396174.P5966862700305081633

`lt[A396175(n), A007895(n)]`
-/

namespace A396174.P5966862700305081633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P5966862700305081633

/-! ## A396174.P8399515226408183822

`lt[A396175(n), A057427(n)]`
-/

namespace A396174.P8399515226408183822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P8399515226408183822

/-! ## A396174.P8538296929798668932

`lt[A396175(n), A070939(n)]`
-/

namespace A396174.P8538296929798668932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P8538296929798668932

/-! ## A396174.P10668534683257455819

`lt[A396175(n), A193592(n)]`
-/

namespace A396174.P10668534683257455819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P10668534683257455819

/-! ## A396174.P6604606411312209055

`lt[A396175(n)², A003415(n)]`
-/

namespace A396174.P6604606411312209055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P6604606411312209055

/-! ## A396174.P7687455482860793990

`lt[A396175(n)², A027869(n)]`
-/

namespace A396174.P7687455482860793990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P7687455482860793990

/-! ## A396174.P5155556117707743420

`lt[A396175(n)², A040001(n)]`
-/

namespace A396174.P5155556117707743420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P5155556117707743420

/-! ## A396174.P1072531946543239709

`lt[A396175(n)², A063826(n)]`
-/

namespace A396174.P1072531946543239709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P1072531946543239709

/-! ## A396174.P14919310500892650663

`lt[A396175(n)², A219347(n)]`
-/

namespace A396174.P14919310500892650663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P14919310500892650663

/-! ## A396174.P3563011964875448341

`comp[lt[A063725(n), A396175(n)]]`
-/

namespace A396174.P3563011964875448341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A396174.P3563011964875448341

/-! ## A396174.P460075052345223625

`lt[A396175(n), A000005(n+1)]`
-/

namespace A396174.P460075052345223625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P460075052345223625

/-! ## A396174.P6101233463006770734

`lt[A396175(n), A000688(n+1)]`
-/

namespace A396174.P6101233463006770734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P6101233463006770734

/-! ## A396174.P15257980913926609550

`lt[A396175(n), A001055(n+1)]`
-/

namespace A396174.P15257980913926609550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P15257980913926609550

/-! ## A396174.P3956834153620654699

`lt[A396175(n), A001221(n+1)]`
-/

namespace A396174.P3956834153620654699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P3956834153620654699

/-! ## A396174.P6751750371878518520

`lt[A396175(n), A027750(n+1)]`
-/

namespace A396174.P6751750371878518520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396175 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396174.P6751750371878518520

/-!
# A396176: a(n) = primepi(A394720(n)).

The programs for A396176, there is no canonical definition to state claims against.
-/

/-! ## A396176.P2259301956495280658

`A000720(A394720(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396176.P2259301956495280658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A394720 (n + 1)).toNat

end

end A396176.P2259301956495280658

/-! ## A396176.P998198740706667956

`A396177(n)+a(n-1)` with `a(0)=1`
-/

namespace A396176.P998198740706667956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A396177 n + a (n - 1)

end

end A396176.P998198740706667956

/-! ## A396176.P6724244236006100471

`A344616(A394720(1+n))`
-/

namespace A396176.P6724244236006100471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A394720 (1 + n)).toNat

end

end A396176.P6724244236006100471

/-! ## A396176.P10548747703348188546

`A337917(n+1)+A289508(A394720(n+1))`
-/

namespace A396176.P10548747703348188546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337917 (n + 1) + A289508 (A394720 (n + 1)).toNat

end

end A396176.P10548747703348188546

/-! ## A396176.P17177454511928981386

`A289508(A394720(n+1)%A067885(n+1))`
-/

namespace A396176.P17177454511928981386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.tmod (A394720 (n + 1)) (A067885 (n + 1))).toNat

end

end A396176.P17177454511928981386

/-!
# A396177: First differences of A396176.

The programs for A396177, there is no canonical definition to state claims against.
-/

/-! ## A396177.P4224426725892022146

`Δ[A396176(n+1)]`
-/

namespace A396177.P4224426725892022146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396177.P4224426725892022146

/-! ## A396177.P11397456563951806501

`Δ[record[A396176(A305296(n))]]`
-/

namespace A396177.P11397456563951806501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396176 (A305296 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396177.P11397456563951806501

/-! ## A396177.P7195245085222853707

`A396176(n+2)-A396176(n+1)`
-/

namespace A396177.P7195245085222853707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396176 (n + 2) - A396176 (n + 1)

end

end A396177.P7195245085222853707

/-! ## A396177.P17730277807997854497

`Δ[A056239(A394720(n+1))]`
-/

namespace A396177.P17730277807997854497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A394720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A396177.P17730277807997854497

/-!
# A396178: Lexicographically earliest sequence of the form 1, 2, followed by squarefree semiprimes (A006881), with the property that (a) for all k>=0, a(k) shares a factor with exactly k other terms, and (b) for all k >= 1, a(k) is divisible by a prime which does not divide any earlier term.

The programs for A396178, there is no canonical definition to state claims against.
-/

/-! ## A396178.P646052792417070343

`∏{p}[A395795(n), #]`
-/

namespace A396178.P646052792417070343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A396178.P646052792417070343

/-! ## A396178.P6917620350969867202

`A007947(A395795(n))`
-/

namespace A396178.P6917620350969867202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A395795 n).toNat

end

end A396178.P6917620350969867202

/-! ## A396178.P2925561555160231171

`A395795(n)/A373565(n)`
-/

namespace A396178.P2925561555160231171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395795 n : ℚ) / (A373565 n : ℚ)

end

end A396178.P2925561555160231171

/-! ## A396178.P7322155248123617731

`gcd(A130706(n), A395795(n))`
-/

namespace A396178.P7322155248123617731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A395795 n)

end

end A396178.P7322155248123617731

/-! ## A396178.P13983601995882845961

`A205959(A395795(n)%A016946(n))`
-/

namespace A396178.P13983601995882845961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (Int.tmod (A395795 n) (A016946 n)).toNat

end

end A396178.P13983601995882845961

/-!
# A396179: Positive integers not in A008726.

The programs for A396179, the canonical program `A396179.P6313024239879174676` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396179 has offset 1).

The definition of A396179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396179.P6313024239879174676

`comp[∑[floor(n/8)]]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396179

/-- `comp[∑[floor(n/8)]]` -/
def P6313024239879174676.Spec : Prop :=
  ∀ n, (P6313024239879174676.a n : ℤ) = A396179 (n + 1)

theorem P6313024239879174676.correct : P6313024239879174676.Spec := by
  intro n
  simp only [A396179, Nat.add_sub_cancel]

end A396179

/-! ## A396179.P8527866917949394434

`lt[0, n%round(sqrt(floor(n/4)+1))]`
-/

namespace A396179.P8527866917949394434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (⌊(n : ℚ) / 4⌋ + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396179.P8527866917949394434

namespace A396179

/-- `lt[0, n%round(sqrt(floor(n/4)+1))]` -/
def P8527866917949394434.Spec : Prop :=
  ∀ n, (P8527866917949394434.a n : ℤ) = A396179 (n + 1)

end A396179

/-! ## A396179.P17563632008957151227

`comp[∑[A110656(n)-1]]+1`
-/

namespace A396179.P17563632008957151227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396179.P17563632008957151227

namespace A396179

/-- `comp[∑[A110656(n)-1]]+1` -/
def P17563632008957151227.Spec : Prop :=
  ∀ n, (P17563632008957151227.a n : ℤ) = A396179 (n + 1)

end A396179

/-! ## A396179.P4941740829681382125

`comp[A118729(1+n)-1]+1`
-/

namespace A396179.P4941740829681382125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396179.P4941740829681382125

namespace A396179

/-- `comp[A118729(1+n)-1]+1` -/
def P4941740829681382125.Spec : Prop :=
  ∀ n, (P4941740829681382125.a n : ℤ) = A396179 (n + 1)

end A396179

/-! ## A396179.P10529189028884052533

`comp[∑[A132292(n+1)]-1]+1`
-/

namespace A396179.P10529189028884052533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396179.P10529189028884052533

namespace A396179

/-- `comp[∑[A132292(n+1)]-1]+1` -/
def P10529189028884052533.Spec : Prop :=
  ∀ n, (P10529189028884052533.a n : ℤ) = A396179 (n + 1)

end A396179

/-! ## A396179.P8601648747356527553

`A033999(n)²*comp[∑[ceil(n/8)]]`
-/

namespace A396179.P8601648747356527553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A396179.P8601648747356527553

namespace A396179

/-- `A033999(n)²*comp[∑[ceil(n/8)]]` -/
def P8601648747356527553.Spec : Prop :=
  ∀ n, P8601648747356527553.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P11963098669527844886

`comp[∑[ceil(n/8)]]%A241177(n+1)`
-/

namespace A396179.P11963098669527844886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A241177 (n + 1))

end

end A396179.P11963098669527844886

namespace A396179

/-- `comp[∑[ceil(n/8)]]%A241177(n+1)` -/
def P11963098669527844886.Spec : Prop :=
  ∀ n, P11963098669527844886.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P10829731259247115810

`comp[floor(n/8)*(n-3-4*floor(n/8))]%A005845(n+1)`
-/

namespace A396179.P10829731259247115810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋ * ((n : ℤ) - 3 - 4 * ⌊(n : ℚ) / 8⌋)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A005845 (n + 1))

end

end A396179.P10829731259247115810

namespace A396179

/-- `comp[floor(n/8)*(n-3-4*floor(n/8))]%A005845(n+1)` -/
def P10829731259247115810.Spec : Prop :=
  ∀ n, P10829731259247115810.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P12517295190766615346

`comp[A118729(n)]%A030514(n+1)`
-/

namespace A396179.P12517295190766615346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A030514 (n + 1))

end

end A396179.P12517295190766615346

namespace A396179

/-- `comp[A118729(n)]%A030514(n+1)` -/
def P12517295190766615346.Spec : Prop :=
  ∀ n, P12517295190766615346.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P17172061005318612027

`lt[char[A118729(n)], 1]`
-/

namespace A396179.P17172061005318612027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A396179.P17172061005318612027

namespace A396179

/-- `lt[char[A118729(n)], 1]` -/
def P17172061005318612027.Spec : Prop :=
  ∀ n, (P17172061005318612027.a n : ℤ) = A396179 (n + 1)

end A396179

/-! ## A396179.P18332821401200981455

`A028310(comp[A118729(n)])`
-/

namespace A396179.P18332821401200981455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A396179.P18332821401200981455

namespace A396179

/-- `A028310(comp[A118729(n)])` -/
def P18332821401200981455.Spec : Prop :=
  ∀ n, P18332821401200981455.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P14905199202320379894

`A028310(comp[∑[A110656(n)]])`
-/

namespace A396179.P14905199202320379894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A396179.P14905199202320379894

namespace A396179

/-- `A028310(comp[∑[A110656(n)]])` -/
def P14905199202320379894.Spec : Prop :=
  ∀ n, P14905199202320379894.a n = A396179 (n + 1)

end A396179

/-! ## A396179.P4942900103339951004

`comp[A118729(n+3)]%A103123(n+1)`
-/

namespace A396179.P4942900103339951004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A103123 (n + 1))

end

end A396179.P4942900103339951004

namespace A396179

/-- `comp[A118729(n+3)]%A103123(n+1)` -/
def P4942900103339951004.Spec : Prop :=
  ∀ n, P4942900103339951004.a n = A396179 (n + 1)

end A396179

/-!
# A396184: Irregular triangle read by rows: row 0 is 0, row n for n >= 1 is 6*n^2-3*n+k for k = 1..6*n.

The programs for A396184, there is no canonical definition to state claims against.
-/

/-! ## A396184.P14497587742157151183

`∑[A245552(3*n)]+n`
-/

namespace A396184.P14497587742157151183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A396184.P14497587742157151183

/-! ## A396184.P15901739938710472054

`3*∑[char[∑[A315758(n)]]]²+n`
-/

namespace A396184.P15901739938710472054
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n

end

end A396184.P15901739938710472054

/-! ## A396184.P3611937015344002066

`lt[A252650(A143182(3*n)), 1]`
-/

namespace A396184.P3611937015344002066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252650 (A143182 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396184.P3611937015344002066

/-! ## A396184.P8783715731877723053

`eq[∑[A133988(3*n+1)], A133988(3*n+1)]`
-/

namespace A396184.P8783715731877723053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A396184.P8783715731877723053

/-! ## A396184.P10687092669185408698

`eq[∑[A143434(3*n+1)], A143434(3*n+1)]`
-/

namespace A396184.P10687092669185408698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A396184.P10687092669185408698

/-! ## A396184.P3924952908648023142

`eq[∑[A197870(3*n+1)], A197870(3*n+1)]`
-/

namespace A396184.P3924952908648023142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A396184.P3924952908648023142

/-! ## A396184.P14710018275810643862

`eq[∑[A059778(3*n+2)], A059778(3*n+2)]`
-/

namespace A396184.P14710018275810643862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059778 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059778 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A396184.P14710018275810643862

/-!
# A396188: Index of 2^n in A394166, or -1 if 2^n does not appear.

The programs for A396188, there is no canonical definition to state claims against.
-/

/-! ## A396188.P16362066895089536713

`A396484(2^n)`
-/

namespace A396188.P16362066895089536713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (2 ^ n)

end

end A396188.P16362066895089536713

/-! ## A396188.P7405565598990900077

`A396484(A000079(n))%A399512(n)`
-/

namespace A396188.P7405565598990900077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396484 (A000079 n).toNat) (A399512 n)

end

end A396188.P7405565598990900077

/-! ## A396188.P13644654617001267280

`A396484(A000079(n))+A336355(n+1)`
-/

namespace A396188.P13644654617001267280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (A000079 n).toNat + A336355 (n + 1)

end

end A396188.P13644654617001267280

/-! ## A396188.P7204705614995719954

`A396484(A000079(n))+A372064(n+1)`
-/

namespace A396188.P7204705614995719954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (A000079 n).toNat + A372064 (n + 1)

end

end A396188.P7204705614995719954

/-! ## A396188.P2812798203297749511

`A272901(n+1)*A396484(A000079(n))`
-/

namespace A396188.P2812798203297749511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (n + 1) * A396484 (A000079 n).toNat

end

end A396188.P2812798203297749511

/-!
# A396189: Record high-points in A396484.

The programs for A396189, there is no canonical definition to state claims against.
-/

/-! ## A396189.P470541371178443106

`record[A396484(n)]`
-/

namespace A396189.P470541371178443106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396189.P470541371178443106

/-! ## A396189.P3238737471596200919

`A396484(A396190(1+n))`
-/

namespace A396189.P3238737471596200919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (A396190 (1 + n)).toNat

end

end A396189.P3238737471596200919

/-! ## A396189.P1753369862901059574

`record[fo[A394166(n)]]`
-/

namespace A396189.P1753369862901059574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394166 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396189.P1753369862901059574

/-! ## A396189.P10089485220400561031

`lt[A396192(n), 2*A091567(n+1)]`
-/

namespace A396189.P10089485220400561031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396189.P10089485220400561031

/-! ## A396189.P14881155880817593145

`lt[A396192(n), A304741(A091567(n+2))]`
-/

namespace A396189.P14881155880817593145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (A091567 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396189.P14881155880817593145

/-!
# A396190: These numbers are the slowest to appear in A394166.

The programs for A396190, there is no canonical definition to state claims against.
-/

/-! ## A396190.P13475576622145757482

`A394166(record[A396484(n)])`
-/

namespace A396190.P13475576622145757482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A396190.P13475576622145757482

/-! ## A396190.P1992609194335234687

`A394166(A396189(1+n))`
-/

namespace A396190.P1992609194335234687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394166 (A396189 (1 + n)).toNat

end

end A396190.P1992609194335234687

/-! ## A396190.P11347124027188274967

`lt[A276156(n), xor(6, A365321(n))]`
-/

namespace A396190.P11347124027188274967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A365321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396190.P11347124027188274967

/-! ## A396190.P10999539121534007148

`lt[A119676(n), A119652(A119671(n))]`
-/

namespace A396190.P10999539121534007148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119652 (A119671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396190.P10999539121534007148

/-! ## A396190.P7986431022764723823

`lt[A385643(n+1), A139827(A385610(n+1))]`
-/

namespace A396190.P7986431022764723823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (A385610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396190.P7986431022764723823

/-!
# A396191: Length of binary representation of A394166(n).

The programs for A396191, there is no canonical definition to state claims against.
-/

/-! ## A396191.P395868726548488440

`∑{digits}[A396192(n), A000041(#)]`
-/

namespace A396191.P395868726548488440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 x).sum

end

end A396191.P395868726548488440

/-! ## A396191.P10192044190070607429

`∑{digits}[A396192(n), A000055(#)]`
-/

namespace A396191.P10192044190070607429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000055 x).sum

end

end A396191.P10192044190070607429

/-! ## A396191.P7302177392281466411

`∑{digits}[A396192(n), A000142(#)]`
-/

namespace A396191.P7302177392281466411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000142 x).sum

end

end A396191.P7302177392281466411

/-! ## A396191.P6382777734436763134

`∑{digits}[A396192(n), A003430(#)]`
-/

namespace A396191.P6382777734436763134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003430 x).sum

end

end A396191.P6382777734436763134

/-! ## A396191.P3447262484572040508

`∑{digits}[A396192(n), A008279(#)]`
-/

namespace A396191.P3447262484572040508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008279 x).sum

end

end A396191.P3447262484572040508

/-! ## A396191.P6818480676538067778

`∑{digits}[A396192(n), A026300(#)]`
-/

namespace A396191.P6818480676538067778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A026300 x).sum

end

end A396191.P6818480676538067778

/-! ## A396191.P8354505906621993007

`∑{digits}[A396192(n), A052873(#)]`
-/

namespace A396191.P8354505906621993007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A052873 x).sum

end

end A396191.P8354505906621993007

/-! ## A396191.P4438714571050929313

`A070939(A394166(n))`
-/

namespace A396191.P4438714571050929313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A394166 n).toNat

end

end A396191.P4438714571050929313

/-!
# A396192: A394166(n) written in binary.

The programs for A396192, there is no canonical definition to state claims against.
-/

/-! ## A396192.P16434137966950536472

`A007088(A394166(n))`
-/

namespace A396192.P16434137966950536472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A394166 n).toNat

end

end A396192.P16434137966950536472

/-! ## A396192.P11717797303864204156

`A185544(2*A394166(n))`
-/

namespace A396192.P11717797303864204156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A394166 n).toNat

end

end A396192.P11717797303864204156

/-! ## A396192.P11078376498395282141

`A230891(lt[A056239(2*n+1), A272413(n)])`
-/

namespace A396192.P11078376498395282141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230891 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A396192.P11078376498395282141

/-!
# A396193: Index of 2^n-1 in A394166, or -1 if 2^n-1 does not appear.

The programs for A396193, there is no canonical definition to state claims against.
-/

/-! ## A396193.P12725862990356316864

`A396484(2^n-1)`
-/

namespace A396193.P12725862990356316864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (2 ^ n - 1)

end

end A396193.P12725862990356316864

/-! ## A396193.P16536951514332859390

`and(-1, A396484(A000225(n)))`
-/

namespace A396193.P16536951514332859390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A396484 (A000225 n).toNat)

end

end A396193.P16536951514332859390

/-! ## A396193.P16094290526468916654

`record[A396484(∑{d}[A114994(n), #])]`
-/

namespace A396193.P16094290526468916654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396193.P16094290526468916654

/-! ## A396193.P1014397258843106628

`A396484(A000225(n))%A000400(n)`
-/

namespace A396193.P1014397258843106628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396484 (A000225 n).toNat) (A000400 n)

end

end A396193.P1014397258843106628

/-! ## A396193.P10947521231689637965

`A396484(A000225(n))+A336355(n+1)`
-/

namespace A396193.P10947521231689637965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396484 (A000225 n).toNat + A336355 (n + 1)

end

end A396193.P10947521231689637965

/-!
# A396194: a(n) = smallest index t such that the binary expansions of A394166(t) and A394166(t+1) both end in at least n zeros.

The programs for A396194, there is no canonical definition to state claims against.
-/

/-! ## A396194.P14110847517217538176

`A396195(A396155(n)+A061775(n+1))`
-/

namespace A396194.P14110847517217538176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396195 (A396155 n + A061775 (n + 1)).toNat

end

end A396194.P14110847517217538176

/-!
# A396195: A396194 with duplicates removed.

The programs for A396195, there is no canonical definition to state claims against.
-/

/-! ## A396195.P13406043873967747384

`record[A396194(col(n)+1)]`
-/

namespace A396195.P13406043873967747384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (SequenceMachineLib.triCol n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396195.P13406043873967747384

/-! ## A396195.P14160141476141130834

`record[A396194(n+1)/gcd(n-6, n+1)]`
-/

namespace A396195.P14160141476141130834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396194 (n + 1) : ℚ) / (Int.gcd ((n : ℤ) - 6) (n + 1 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396195.P14160141476141130834

/-! ## A396195.P11890279573655416052

`record[A396194(A328396(n))]`
-/

namespace A396195.P11890279573655416052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (A328396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396195.P11890279573655416052

/-! ## A396195.P17869624252457543341

`record[A396194(A396191(n))]`
-/

namespace A396195.P17869624252457543341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (A396191 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396195.P17869624252457543341

/-! ## A396195.P5260092121669519328

`A396194(A392622(n+1))`
-/

namespace A396195.P5260092121669519328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396194 (A392622 (n + 1)).toNat

end

end A396195.P5260092121669519328

/-!
# A396196: The n-th digit of the n-th term of the Look-and-Say sequence (A005150), padded with 0 if the term has fewer than n digits.

The programs for A396196, there is no canonical definition to state claims against.
-/

/-! ## A396196.P2493904498820410860

`A069010(and(A020941(n+1), A117186(n)))`
-/

namespace A396196.P2493904498820410860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.land (A020941 (n + 1)) (A117186 n)).toNat

end

end A396196.P2493904498820410860

/-! ## A396196.P2383417152873724316

`A104608(A056965(n)+A024674(n+1))`
-/

namespace A396196.P2383417152873724316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104608 (A056965 n + A024674 (n + 1)).toNat

end

end A396196.P2383417152873724316

/-! ## A396196.P8246686820176984410

`A353849(and(A123209(n+1), A244207(n+1)))`
-/

namespace A396196.P8246686820176984410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (Int.land (A123209 (n + 1 + 33)) (A244207 (n + 1))).toNat

end

end A396196.P8246686820176984410

/-! ## A396196.P4040528268246001306

`A262680(A206883(2*n+5)+A084938(2*n))`
-/

namespace A396196.P4040528268246001306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262680 (A206883 (2 * n + 5) + A084938 (2 * n)).toNat

end

end A396196.P4040528268246001306

/-! ## A396196.P17482798673322663950

`A109066(lcm(A380615(2*n+3), A384886(n+3)))`
-/

namespace A396196.P17482798673322663950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (Int.lcm (A380615 (2 * n + 3)) (A384886 (n + 3)))

end

end A396196.P17482798673322663950

/-!
# A396197: Triangle read by rows: T(n, k) = (-1)^k*binomial(n, k) * (2*F(n - k) + F(n - k + 2)) where F(n) are the Fibonacci numbers.

The programs for A396197, the canonical program `A396197.P11192290453794693208` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396197 has offset 0).

The definition of A396197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396197.P11192290453794693208

`(-1)^col(n)*C(row(n), col(n))*A000285(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396197

/-- `(-1)^col(n)*C(row(n), col(n))*A000285(row(n)-col(n))` -/
def P11192290453794693208.Spec : Prop :=
  ∀ n, P11192290453794693208.a n = A396197 n

theorem P11192290453794693208.correct : P11192290453794693208.Spec := by
  intro n
  simp only [A396197]

end A396197

/-! ## A396197.P3202737007398113771

`(-1)^col(n)*C(row(n), col(n))*(2*A000045(row(n)-col(n))+A000045(row(n)-col(n)+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396197.P3202737007398113771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * (2 * A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat)

end

end A396197.P3202737007398113771

namespace A396197

/-- `(-1)^col(n)*C(row(n), col(n))*(2*A000045(row(n)-col(n))+A000045(row(n)-col(n)+2))` -/
def P3202737007398113771.Spec : Prop :=
  ∀ n, P3202737007398113771.a n = A396197 n

end A396197

/-!
# A396198: a(n) = Sum_{k=0..n} (-1)^k*A396200(n, k), even bisection only.

The programs for A396198, there is no canonical definition to state claims against.
-/

/-! ## A396198.P10467537255143697534

`xor(A140323(n+1), A286033(n+1))`
-/

namespace A396198.P10467537255143697534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A140323 (n + 1)) (A286033 (n + 1))

end

end A396198.P10467537255143697534

/-! ## A396198.P13670693876374874998

`A000079(2*n+1)-(n+1)*A168491(n)`
-/

namespace A396198.P13670693876374874998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - (n + 1 : ℤ) * A168491 n

end

end A396198.P13670693876374874998

/-! ## A396198.P17041267060112452167

`A000984(n)*A010892(3*(n+1))+2*4^n`
-/

namespace A396198.P17041267060112452167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A010892 (3 * (n + 1)) + (2 * 4 ^ n : ℤ)

end

end A396198.P17041267060112452167

/-!
# A396199: a(n) = (n + 1)*(2^(n + 1) - binomial(n, floor(n / 2))), row sums of A396200.

The programs for A396199, the canonical program `A396199.P13714647059472639932` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396199 has offset 0).

The definition of A396199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2^(n+1)-C(n, floor(n/2)))` (program `A396199.P13714647059472639932`, by `A396199.P13714647059472639932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A396199.P13714647059472639932

`(n+1)*(2^(n+1)-C(n, floor(n/2)))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396199

/-- `(n+1)*(2^(n+1)-C(n, floor(n/2)))` -/
def P13714647059472639932.Spec : Prop :=
  ∀ n, P13714647059472639932.a n = A396199 n

theorem P13714647059472639932.correct : P13714647059472639932.Spec := by
  intro n
  simp only [A396199]

end A396199

/-! ## A396199.P12564347408714651384

`(n+1)*A164991(n+2)`
-/

namespace A396199.P12564347408714651384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A164991 (n + 2)

end

end A396199.P12564347408714651384

namespace A396199

/-- `(n+1)*A164991(n+2)` -/
def P12564347408714651384.Spec : Prop :=
  ∀ n, P12564347408714651384.a n = A396199 n

end A396199

/-! ## A396199.P11832934955928665536

`A153335(n+1)+A053220(n+1)`
-/

namespace A396199.P11832934955928665536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A053220 (n + 1)

end

end A396199.P11832934955928665536

namespace A396199

/-- `A153335(n+1)+A053220(n+1)` -/
def P11832934955928665536.Spec : Prop :=
  ∀ n, P11832934955928665536.a n = A396199 n

end A396199

/-! ## A396199.P13681467392811536721

`(A045621(n)+A000079(n))*(n+1)`
-/

namespace A396199.P13681467392811536721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045621 n + A000079 n) * (n + 1 : ℤ)

end

end A396199.P13681467392811536721

namespace A396199

/-- `(A045621(n)+A000079(n))*(n+1)` -/
def P13681467392811536721.Spec : Prop :=
  ∀ n, P13681467392811536721.a n = A396199 n

theorem P13681467392811536721.correct : P13681467392811536721.Spec := by
  intro n
  simp only [A396199, Nat.add_sub_cancel, A396199.P13681467392811536721.a, A396199.P13714647059472639932.a, A000079, A000079.P10855139691139572931.a, A045621, A045621.P8822809560474784251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A396199

/-! ## A396199.P14864572296820672391

`(A202736(n+1)-A126930(n))*(n+1)`
-/

namespace A396199.P14864572296820672391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A202736 (n + 1) - A126930 n) * (n + 1 : ℤ)

end

end A396199.P14864572296820672391

namespace A396199

/-- `(A202736(n+1)-A126930(n))*(n+1)` -/
def P14864572296820672391.Spec : Prop :=
  ∀ n, P14864572296820672391.a n = A396199 n

end A396199

/-! ## A396199.P18156272285902964474

`(1+n)*abs(A001405(n)-A166444(n+3))`
-/

namespace A396199.P18156272285902964474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * |A001405 n - A166444 (n + 3)|

end

end A396199.P18156272285902964474

namespace A396199

/-- `(1+n)*abs(A001405(n)-A166444(n+3))` -/
def P18156272285902964474.Spec : Prop :=
  ∀ n, P18156272285902964474.a n = A396199 n

end A396199

/-! ## A396199.P14916889936572828378

`A001787(n+1)+A348864(n+1)-A002378(n)`
-/

namespace A396199.P14916889936572828378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A348864 (n + 1) - A002378 n)

end

end A396199.P14916889936572828378

namespace A396199

/-- `A001787(n+1)+A348864(n+1)-A002378(n)` -/
def P14916889936572828378.Spec : Prop :=
  ∀ n, P14916889936572828378.a n = A396199 n

end A396199

/-! ## A396199.P8937991024390299822

`A001787(n+1)+A001787(n+1)-A100071(n+1)`
-/

namespace A396199.P8937991024390299822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A001787 (n + 1) - A100071 (n + 1))

end

end A396199.P8937991024390299822

namespace A396199

/-- `A001787(n+1)+A001787(n+1)-A100071(n+1)` -/
def P8937991024390299822.Spec : Prop :=
  ∀ n, P8937991024390299822.a n = A396199 n

end A396199

