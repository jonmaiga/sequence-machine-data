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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080900: a(1)=1; for n>1, a(n)=a(n-1)-2 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A080900, there is no canonical definition to state claims against.
-/

/-! ## A080900.P2782538497647110318

`A081746(A187829(n+1))+A002266(n)`
-/

namespace A080900.P2782538497647110318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081746 (A187829 (n + 1)).toNat + A002266 n

end

end A080900.P2782538497647110318

/-! ## A080900.P748696147170322438

`(A080783(A187829(n+1))-A002266(n))%A337754(n)`
-/

namespace A080900.P748696147170322438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080783 (A187829 (n + 1)).toNat - A002266 n) (A337754 n)

end

end A080900.P748696147170322438

/-! ## A080900.P18212346049114680352

`gcd(A080783(A187829(n+1))-A002266(n), A151933(n))`
-/

namespace A080900.P18212346049114680352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080783 (A187829 (n + 1)).toNat - A002266 n) (A151933 n)

end

end A080900.P18212346049114680352

/-!
# A080901: a(1)=2; for n>1, a(n)=a(n-1)-2 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A080901, there is no canonical definition to state claims against.
-/

/-! ## A080901.P2842298992467481469

`A081745(n+1)+1+n`
-/

namespace A080901.P2842298992467481469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081745 (n + 1) + 1 + (n : ℤ)

end

end A080901.P2842298992467481469

/-! ## A080901.P16851118131762218249

`A081745(A008619(2*n))-xor(n, -1)`
-/

namespace A080901.P16851118131762218249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081745 (A008619 (2 * n)).toNat - Int.xor (n : ℤ) (-1)

end

end A080901.P16851118131762218249

/-! ## A080901.P1501968192816504511

`A081745(A077168(n))+n+1`
-/

namespace A080901.P1501968192816504511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081745 (A077168 n).toNat + (n + 1 : ℤ)

end

end A080901.P1501968192816504511

/-!
# A080902: a(1)=1, a(n)=a(n-1)+2 if (n and n+3 are in the sequence), a(n)=a(n-1)+3 otherwise.

The programs for A080902, the canonical program `A080902.P13254032545939326057` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080902 has offset 1).

The definition of A080902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080902.P13254032545939326057

`record[A010684(n)+comp[A026364(n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080902

/-- `record[A010684(n)+comp[A026364(n+1)]]` -/
def P13254032545939326057.Spec : Prop :=
  ∀ n, P13254032545939326057.a n = A080902 (n + 1)

theorem P13254032545939326057.correct : P13254032545939326057.Spec := by
  intro n
  simp only [A080902, Nat.add_sub_cancel]

end A080902

/-! ## A080902.P2254833007835473155

`A026363(2*n+1)+char[A026364(n+1)]`
-/

namespace A080902.P2254833007835473155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080902.P2254833007835473155

namespace A080902

/-- `A026363(2*n+1)+char[A026364(n+1)]` -/
def P2254833007835473155.Spec : Prop :=
  ∀ n, P2254833007835473155.a n = A080902 (n + 1)

end A080902

/-! ## A080902.P14349810779909543201

`A026363(Δ[n²])+char[A284753(n+1)+n]`
-/

namespace A080902.P14349810779909543201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080902.P14349810779909543201

namespace A080902

/-- `A026363(Δ[n²])+char[A284753(n+1)+n]` -/
def P14349810779909543201.Spec : Prop :=
  ∀ n, P14349810779909543201.a n = A080902 (n + 1)

end A080902

/-! ## A080902.P6640232113900176546

`A026363(Δ[n²])+char[A086398(n+1)+1+n]`
-/

namespace A080902.P6640232113900176546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080902.P6640232113900176546

namespace A080902

/-- `A026363(Δ[n²])+char[A086398(n+1)+1+n]` -/
def P6640232113900176546.Spec : Prop :=
  ∀ n, P6640232113900176546.a n = A080902 (n + 1)

end A080902

/-! ## A080902.P6043011920144755807

`A026363(Δ[n²])+char[A080903(n+2)-1+n]`
-/

namespace A080902.P6043011920144755807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080903 (n + 2) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080902.P6043011920144755807

namespace A080902

/-- `A026363(Δ[n²])+char[A080903(n+2)-1+n]` -/
def P6043011920144755807.Spec : Prop :=
  ∀ n, P6043011920144755807.a n = A080902 (n + 1)

end A080902

/-! ## A080902.P6831253887150231087

`A026363(Δ[n²])+char[2*A026363(n+1)+n]`
-/

namespace A080902.P6831253887150231087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080902.P6831253887150231087

namespace A080902

/-- `A026363(Δ[n²])+char[2*A026363(n+1)+n]` -/
def P6831253887150231087.Spec : Prop :=
  ∀ n, P6831253887150231087.a n = A080902 (n + 1)

end A080902

/-! ## A080902.P12841000863578766843

`char[A284753(n+1)+n]+(A080903(2*n+1)+1)/2`
-/

namespace A080902.P12841000863578766843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A080903 (2 * n + 1) + 1 : ℚ) / 2

end

end A080902.P12841000863578766843

namespace A080902

/-- `char[A284753(n+1)+n]+(A080903(2*n+1)+1)/2` -/
def P12841000863578766843.Spec : Prop :=
  ∀ n, P12841000863578766843.a n = (A080902 (n + 1) : ℚ)

end A080902

/-! ## A080902.P16570667448278114714

`char[A086398(n+1)+1+n]+(A080903(2*n+1)+1)/2`
-/

namespace A080902.P16570667448278114714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A080903 (2 * n + 1) + 1 : ℚ) / 2

end

end A080902.P16570667448278114714

namespace A080902

/-- `char[A086398(n+1)+1+n]+(A080903(2*n+1)+1)/2` -/
def P16570667448278114714.Spec : Prop :=
  ∀ n, P16570667448278114714.a n = (A080902 (n + 1) : ℚ)

end A080902

/-! ## A080902.P10211077903318055008

`char[2*A026363(n+1)+n]+(A080903(2*n+1)+1)/2`
-/

namespace A080902.P10211077903318055008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A080903 (2 * n + 1) + 1 : ℚ) / 2

end

end A080902.P10211077903318055008

namespace A080902

/-- `char[2*A026363(n+1)+n]+(A080903(2*n+1)+1)/2` -/
def P10211077903318055008.Spec : Prop :=
  ∀ n, P10211077903318055008.a n = (A080902 (n + 1) : ℚ)

end A080902

/-! ## A080902.P15759877020761564873

`char[eq[0, A284751(2*(n+1))]+1]+(A080903(2*n+1)+1)/2`
-/

namespace A080902.P15759877020761564873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A080903 (2 * n + 1) + 1 : ℚ) / 2

end

end A080902.P15759877020761564873

namespace A080902

/-- `char[eq[0, A284751(2*(n+1))]+1]+(A080903(2*n+1)+1)/2` -/
def P15759877020761564873.Spec : Prop :=
  ∀ n, P15759877020761564873.a n = (A080902 (n + 1) : ℚ)

end A080902

/-!
# A080903: a(1)=1; for n>1, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

The programs for A080903, the canonical program `A080903.P12103839465626112779` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080903 has offset 1).

The definition of A080903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080903.P6260411794384506691

`2*comp[A026364(n+1)]+1`
-/

namespace A080903.P6260411794384506691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080903.P6260411794384506691

namespace A080903

/-- `2*comp[A026364(n+1)]+1` -/
def P6260411794384506691.Spec : Prop :=
  ∀ n, (P6260411794384506691.a n : ℤ) = A080903 (n + 1)

end A080903

/-! ## A080903.P11758483113348290351

`n+1+comp[A284370(n+1)]`
-/

namespace A080903.P11758483113348290351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080903.P11758483113348290351

namespace A080903

/-- `n+1+comp[A284370(n+1)]` -/
def P11758483113348290351.Spec : Prop :=
  ∀ n, (P11758483113348290351.a n : ℤ) = A080903 (n + 1)

end A080903

/-! ## A080903.P12103839465626112779

`A086398(n+1)-2*A284751(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080903

/-- `A086398(n+1)-2*A284751(n+1)` -/
def P12103839465626112779.Spec : Prop :=
  ∀ n, P12103839465626112779.a n = A080903 (n + 1)

theorem P12103839465626112779.correct : P12103839465626112779.Spec := by
  intro n
  simp only [A080903, Nat.add_sub_cancel]

end A080903

/-! ## A080903.P11011412772770599653

`A004442(record[(n+1)*A284751(n+1)])`
-/

namespace A080903.P11011412772770599653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080903.P11011412772770599653

namespace A080903

/-- `A004442(record[(n+1)*A284751(n+1)])` -/
def P11011412772770599653.Spec : Prop :=
  ∀ n, P11011412772770599653.a n = A080903 (n + 1)

end A080903

/-! ## A080903.P6428706876450694297

`eq[1, A284751(A016813(n)%(n+1)+1)]`
-/

namespace A080903.P6428706876450694297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (Int.tmod (A016813 n) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080903.P6428706876450694297

namespace A080903

/-- `eq[1, A284751(A016813(n)%(n+1)+1)]` -/
def P6428706876450694297.Spec : Prop :=
  ∀ n, (P6428706876450694297.a n : ℤ) = A080903 (n + 1)

end A080903

/-! ## A080903.P14634227093094787934

`record[A000265(A284752(n+1)+1)-n]`
-/

namespace A080903.P14634227093094787934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A284752 (n + 1) + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080903.P14634227093094787934

namespace A080903

/-- `record[A000265(A284752(n+1)+1)-n]` -/
def P14634227093094787934.Spec : Prop :=
  ∀ n, P14634227093094787934.a n = A080903 (n + 1)

end A080903

/-!
# A080904: a(1)=1; for n>1, a(n)=a(n-1)-4 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A080904, there is no canonical definition to state claims against.
-/

/-! ## A080904.P9579757625947030335

`A007953(record[A187469(n+1)])+3*n`
-/

namespace A080904.P9579757625947030335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (3 * n : ℤ)

end

end A080904.P9579757625947030335

/-! ## A080904.P10739277787922403618

`A008585(n)+A007953(record[A187469(n+1)])`
-/

namespace A080904.P10739277787922403618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080904.P10739277787922403618

/-! ## A080904.P11568910870474784780

`A347102(A000079(n+1))+A062028(2*n)`
-/

namespace A080904.P11568910870474784780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347102 (A000079 (n + 1)).toNat + A062028 (2 * n)

end

end A080904.P11568910870474784780

/-! ## A080904.P4770422455586420408

`A081746(A187829(n+1))-A002266(n)`
-/

namespace A080904.P4770422455586420408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081746 (A187829 (n + 1)).toNat - A002266 n

end

end A080904.P4770422455586420408

/-! ## A080904.P6376548502106934875

`A103586(A000225(n))+A062028(2*n)`
-/

namespace A080904.P6376548502106934875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (A000225 n).toNat + A062028 (2 * n)

end

end A080904.P6376548502106934875

/-!
# A080905: Sequence of run lengths in first differences of A080900.

The programs for A080905, there is no canonical definition to state claims against.
-/

/-! ## A080905.P8194839171194613100

`gcd(gcd(2, n)², A306534(A233550(n+3)))`
-/

namespace A080905.P8194839171194613100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.gcd 2 n ^ 2 : ℤ) (A306534 (A233550 (n + 3)).toNat)

end

end A080905.P8194839171194613100

/-! ## A080905.P14050448135804969400

`gcd(A010711(n), A217559(A019554(3*(n+1))))`
-/

namespace A080905.P14050448135804969400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010711 n) (A217559 (A019554 (3 * (n + 1))).toNat)

end

end A080905.P14050448135804969400

/-! ## A080905.P3203367339617595584

`gcd(4, A311262(A077957(n)))`
-/

namespace A080905.P3203367339617595584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A311262 (A077957 n).toNat)

end

end A080905.P3203367339617595584

/-! ## A080905.P13951021971201988133

`A204690(A204675(n)+A005919(n))`
-/

namespace A080905.P13951021971201988133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 (A204675 n + A005919 n).toNat

end

end A080905.P13951021971201988133

/-!
# A080906: Primes with an even number of digits such that the first half of the digits and the second half of the digits are both primes.

The programs for A080906, there is no canonical definition to state claims against.
-/

/-! ## A080906.P10943229508680905544

`∩[A001637(n+1), A125525(n+1)]`
-/

namespace A080906.P10943229508680905544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080906.P10943229508680905544

/-!
# A080907: Numbers whose aliquot sequence terminates in a 1.

The programs for A080907, there is no canonical definition to state claims against.
-/

/-! ## A080907.P9252369463231681033

`lt[1/2, A007906(n+1)]+1`
-/

namespace A080907.P9252369463231681033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A080907.P9252369463231681033

/-! ## A080907.P7518667129142875724

`lt[1, n*A007906(A233583(n+1))]`
-/

namespace A080907.P7518667129142875724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007906 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080907.P7518667129142875724

/-! ## A080907.P5620297291372779570

`eq[A007906(n+1), A044050(n+1)]+1`
-/

namespace A080907.P5620297291372779570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080907.P5620297291372779570

/-! ## A080907.P5213831484917768795

`eq[A007906(n+1), A098008(n+1)]+1`
-/

namespace A080907.P5213831484917768795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080907.P5213831484917768795

/-! ## A080907.P822395096205160796

`lt[A003023(n+1), A098008(n+1)]+1`
-/

namespace A080907.P822395096205160796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A080907.P822395096205160796

/-! ## A080907.P11240400968078733332

`lt[1, A007906((A016777(n)+char[1])%(n+1)+1)]`
-/

namespace A080907.P11240400968078733332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (Int.tmod (A016777 n + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080907.P11240400968078733332

/-! ## A080907.P6015026289917458977

`lt[A054977(n), A007906(A233583(n+1))]`
-/

namespace A080907.P6015026289917458977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080907.P6015026289917458977

/-! ## A080907.P12380901145208630003

`lt[A000007(n), A007906(A000007(n)+n)]`
-/

namespace A080907.P12380901145208630003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080907.P12380901145208630003

/-! ## A080907.P17107678460827476143

`lt[A000038(n), A007906(A000038(n)+n)]`
-/

namespace A080907.P17107678460827476143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080907.P17107678460827476143

/-! ## A080907.P8463865542452510034

`comp[A126016(n+1)-1]+1`
-/

namespace A080907.P8463865542452510034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080907.P8463865542452510034

/-!
# A080908: a(n) = the sign of r(n), where r(n) is the integer in [ -2n,2n] which is congruent to (2n)! modulo 4n+1.

The programs for A080908, there is no canonical definition to state claims against.
-/

/-! ## A080908.P7934563732348766517

`A000002(A005179(n+1))-A161175(n+1)`
-/

namespace A080908.P7934563732348766517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A005179 (n + 1)).toNat - A161175 (n + 1)

end

end A080908.P7934563732348766517

/-! ## A080908.P11972432226014429322

`Δ[A160382(A094233(n))]`
-/

namespace A080908.P11972432226014429322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A094233 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080908.P11972432226014429322

/-! ## A080908.P2357516075528767749

`Δ[A078808(n)]^A075978(n)`
-/

namespace A080908.P2357516075528767749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A075978 n : ℤ)

end

end A080908.P2357516075528767749

/-! ## A080908.P10246354684079963951

`Δ[A078808(n)]^A119459(2*n+5)`
-/

namespace A080908.P10246354684079963951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A119459 (2 * n + 5) : ℤ)

end

end A080908.P10246354684079963951

/-! ## A080908.P8532390622466853952

`A267868(n+3)-A189479(A011782(n))`
-/

namespace A080908.P8532390622466853952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267868 (n + 3) - A189479 (A011782 n).toNat

end

end A080908.P8532390622466853952

/-!
# A080909: a(n) = (2n+1)! modulo 4n+3, |a(n)| <= 1.

The programs for A080909, there is no canonical definition to state claims against.
-/

/-! ## A080909.P5407925409651477966

`A156707(2*n+1)^A154740(A301919(2*n+1))`
-/

namespace A080909.P5407925409651477966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156707 (2 * n + 1) : ℚ) ^ (A154740 (A301919 (2 * n + 1)).toNat : ℤ)

end

end A080909.P5407925409651477966

/-! ## A080909.P1596949255843069305

`A110161(or(A017342(n), A130695(n+1)))`
-/

namespace A080909.P1596949255843069305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (Int.lor (A017342 n) (A130695 (n + 1))).toNat

end

end A080909.P1596949255843069305

/-! ## A080909.P717861884270241265

`A008683(A002106(∑[A323287(n+1)]))`
-/

namespace A080909.P717861884270241265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002106 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A080909.P717861884270241265

/-! ## A080909.P1306838921021585637

`A008683(A282909(n)-A059365(n))`
-/

namespace A080909.P1306838921021585637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A282909 n - A059365 n).toNat

end

end A080909.P1306838921021585637

/-! ## A080909.P7835016580312671016

`A008683(or(A045654(n), A052931(n)))`
-/

namespace A080909.P7835016580312671016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A045654 n) (A052931 n)).toNat

end

end A080909.P7835016580312671016

/-!
# A080911: 

The programs for A080911, there is no canonical definition to state claims against.
-/

/-! ## A080911.P703558235380182735

`C((n+1)!, n!)`
-/

namespace A080911.P703558235380182735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n + 1)) (Nat.factorial n)

end

end A080911.P703558235380182735

/-!
# A080912: a(n) = first number that appears n times in A080900.

The programs for A080912, there is no canonical definition to state claims against.
-/

/-! ## A080912.P12597181450336582033

`A080900(A080913(n+1))`
-/

namespace A080912.P12597181450336582033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (A080913 (n + 1)).toNat

end

end A080912.P12597181450336582033

/-!
# A080914: A080900 sorted and duplicates removed.

The programs for A080914, there is no canonical definition to state claims against.
-/

/-! ## A080914.P3521270152537283782

`record[A080900(n+1)%(A080900(n+2)-n)]`
-/

namespace A080914.P3521270152537283782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080900 (n + 1)) (A080900 (n + 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080914.P3521270152537283782

/-! ## A080914.P4741260665107093925

`lt[1, char[A080900(n+1)]*A043016(n+1)]`
-/

namespace A080914.P4741260665107093925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A043016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080914.P4741260665107093925

/-! ## A080914.P1552136116522016224

`eq[char[A080919(n+1)], A151933(n)]`
-/

namespace A080914.P1552136116522016224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080914.P1552136116522016224

/-! ## A080914.P12271856336271554150

`eq[A151933(n)+1, char[A080900(n+1)]]`
-/

namespace A080914.P12271856336271554150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A080914.P12271856336271554150

/-! ## A080914.P11813907650492152722

`eq[A001204(n), A379797(n+1)]`
-/

namespace A080914.P11813907650492152722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379797 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080914.P11813907650492152722

/-!
# A080915: Number of electrons in outermost electron shell (valence electrons) in chemical element number n.

The programs for A080915, there is no canonical definition to state claims against.
-/

/-! ## A080915.P11938221866972989536

`A137846(n)+A092573(A273730(n))`
-/

namespace A080915.P11938221866972989536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137846 n + A092573 (A273730 n).toNat

end

end A080915.P11938221866972989536

/-! ## A080915.P16366926578121307654

`A137846(n)+A000122(A110359(n+1))`
-/

namespace A080915.P16366926578121307654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137846 n + A000122 (A110359 (n + 1)).toNat

end

end A080915.P16366926578121307654

/-! ## A080915.P10412262296592723302

`A247629(A034856(n+2))+A137846(n)`
-/

namespace A080915.P10412262296592723302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247629 (A034856 (n + 2)).toNat + A137846 n

end

end A080915.P10412262296592723302

/-! ## A080915.P16328839975021259950

`A001221(A180302(n+1))*A137846(n)`
-/

namespace A080915.P16328839975021259950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A180302 (n + 1)).toNat * A137846 n

end

end A080915.P16328839975021259950

/-! ## A080915.P6417138970399793188

`A137846(n)+A092573(A104164(n+4))`
-/

namespace A080915.P6417138970399793188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137846 n + A092573 (A104164 (n + 4)).toNat

end

end A080915.P6417138970399793188

/-!
# A080916: Number of electrons in outermost electron subshell in chemical element number n.

The programs for A080916, there is no canonical definition to state claims against.
-/

/-! ## A080916.P7341001137323473802

`A080915(n)-2%dr(A080915(n))`
-/

namespace A080916.P7341001137323473802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080915 n - ((2 % SequenceMachineLib.digitalRoot (A080915 n) : ℕ) : ℤ)

end

end A080916.P7341001137323473802

/-! ## A080916.P4227071162649052779

`A137846(and(A137846(n)-1, A335574(n)))`
-/

namespace A080916.P4227071162649052779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137846 (Int.land (A137846 n - 1) (A335574 n)).toNat

end

end A080916.P4227071162649052779

/-!
# A080917: Number of integer solutions to the equation 2*x^2 + y^2 + 8*z^2 = n.

The programs for A080917, there is no canonical definition to state claims against.
-/

/-! ## A080917.P15798915661263061581

`2*A080918(n)-A080963(n)`
-/

namespace A080917.P15798915661263061581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 n - A080963 n

end

end A080917.P15798915661263061581

/-! ## A080917.P237671793382318983

`A080918(4*n)`
-/

namespace A080917.P237671793382318983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (4 * n)

end

end A080917.P237671793382318983

/-! ## A080917.P5163005271862555003

`A080918(A008586(n))%(n+3)`
-/

namespace A080917.P5163005271862555003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080918 (A008586 n).toNat) (n + 3 : ℤ)

end

end A080917.P5163005271862555003

/-! ## A080917.P17482384963959514121

`A080918(A008574(n))-A000007(n)`
-/

namespace A080917.P17482384963959514121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 (A008574 n).toNat - A000007 n

end

end A080917.P17482384963959514121

/-! ## A080917.P11693121431692760064

`gcd(A004013(n), A080918(A008574(n)))`
-/

namespace A080917.P11693121431692760064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 n) (A080918 (A008574 n).toNat)

end

end A080917.P11693121431692760064

/-! ## A080917.P16370588410184062894

`lcm(A001285(n), A080918(A008586(n)))`
-/

namespace A080917.P16370588410184062894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A080918 (A008586 n).toNat)

end

end A080917.P16370588410184062894

/-! ## A080917.P11554965179368737545

`A080918(A008586(n))^(-1)^A001043(n+1)`
-/

namespace A080917.P11554965179368737545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080918 (A008586 n).toNat : ℝ) ^ ((-1 : ℚ) ^ (A001043 (n + 1) : ℤ) : ℝ)

end

end A080917.P11554965179368737545

/-! ## A080917.P142163883675198086

`A080918(A008574(n))/A001511(A000040(n+1))`
-/

namespace A080917.P142163883675198086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080918 (A008574 n).toNat : ℚ) / (A001511 (A000040 (n + 1)).toNat : ℚ)

end

end A080917.P142163883675198086

/-! ## A080917.P15542197084704967392

`A080918(A008574(n))/A014963(lcm(n+1, n+2))`
-/

namespace A080917.P15542197084704967392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080918 (A008574 n).toNat : ℚ) / (A014963 (Nat.lcm (n + 1) (n + 2)) : ℚ)

end

end A080917.P15542197084704967392

/-!
# A080918: Number of integer solutions to the equation 2x^2+y^2+32z^2=n.

The programs for A080918, there is no canonical definition to state claims against.
-/

/-! ## A080918.P11097937340329868769

`(A080963(n)+A080917(n))/2`
-/

namespace A080918.P11097937340329868769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 n + A080917 n : ℚ) / 2

end

end A080918.P11097937340329868769

/-! ## A080918.P2864443211868319153

`A001281(A080963(n)+A080917(n))`
-/

namespace A080918.P2864443211868319153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A080963 n + A080917 n).toNat

end

end A080918.P2864443211868319153

/-! ## A080918.P871155165848836545

`A004525(A080963(n)+A080917(n))`
-/

namespace A080918.P871155165848836545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A080963 n + A080917 n).toNat

end

end A080918.P871155165848836545

/-! ## A080918.P5438627591671487525

`A004526(A080963(n)+A080917(n))`
-/

namespace A080918.P5438627591671487525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080963 n + A080917 n).toNat

end

end A080918.P5438627591671487525

/-! ## A080918.P5171111425859977333

`A014682(A080963(n)+A080917(n))`
-/

namespace A080918.P5171111425859977333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A080963 n + A080917 n).toNat

end

end A080918.P5171111425859977333

/-! ## A080918.P9609313685606818616

`A029578(A080963(n)+A080917(n))`
-/

namespace A080918.P9609313685606818616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A080963 n + A080917 n).toNat

end

end A080918.P9609313685606818616

/-! ## A080918.P16720903777246629060

`A064680(A080963(n)+A080917(n))`
-/

namespace A080918.P16720903777246629060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A080963 n + A080917 n).toNat

end

end A080918.P16720903777246629060

/-! ## A080918.P7050158021457068957

`A080917(n)-A004526(A080917(n)-A080963(n))`
-/

namespace A080918.P7050158021457068957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 n - A004526 (A080917 n - A080963 n).toNat

end

end A080918.P7050158021457068957

/-!
# A080919: Numbers that do not appear in A080900.

The programs for A080919, there is no canonical definition to state claims against.
-/

/-! ## A080919.P15215383209547195981

`comp[A080900(n+1)-1]+1`
-/

namespace A080919.P15215383209547195981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080919.P15215383209547195981

/-! ## A080919.P993909759941652618

`comp[A080914(n+1)-1]+1`
-/

namespace A080919.P993909759941652618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080914 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080919.P993909759941652618

/-! ## A080919.P11472100010411282415

`lt[char[A080900(n+1)], n/A043016(n+1)]`
-/

namespace A080919.P11472100010411282415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A043016 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A080919.P11472100010411282415

/-! ## A080919.P4764346207276279713

`eq[char[A080900(n+1)], A151933(n)]`
-/

namespace A080919.P4764346207276279713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080919.P4764346207276279713

/-! ## A080919.P18276124370785557298

`eq[char[A080914(n+1)], A151933(n)]`
-/

namespace A080919.P18276124370785557298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080914 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080919.P18276124370785557298

/-!
# A080920: a(n) = 2*a(n-1) + 35*a(n-2), a(0) = 0, a(1) = 1.

The programs for A080920, the canonical program `A080920.P11962860491409329396` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080920 has offset 0).

The definition of A080920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+35*a(n-2)` (program `A080920.P11962860491409329396`, by `A080920.P11962860491409329396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080920.P11962860491409329396

`2*a(n-1)+35*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080920

/-- `2*a(n-1)+35*a(n-2)` -/
def P11962860491409329396.Spec : Prop :=
  ∀ n, (P11962860491409329396.a n : ℤ) = A080920 n

theorem P11962860491409329396.correct : P11962860491409329396.Spec := by
  intro n
  simp only [A080920]

end A080920

/-! ## A080920.P4288720791983725110

`(7^n-(-5)^n)/12`
-/

namespace A080920.P4288720791983725110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - (-5) ^ n : ℚ) / 12

end

end A080920.P4288720791983725110

namespace A080920

/-- `(7^n-(-5)^n)/12` -/
def P4288720791983725110.Spec : Prop :=
  ∀ n, P4288720791983725110.a n = (A080920 n : ℚ)

theorem P4288720791983725110.correct : P4288720791983725110.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A080920, Nat.add_sub_cancel, A080920.P4288720791983725110.a, A080920.P11962860491409329396.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A080920, Nat.add_sub_cancel, A080920.P4288720791983725110.a, A080920.P11962860491409329396.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A080920

/-! ## A080920.P751678395449736789

`7^(n-1)-5*a(n-1)` with `a(0)=0`
-/

namespace A080920.P751678395449736789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 5 * a (n - 1)

end

end A080920.P751678395449736789

namespace A080920

/-- `7^(n-1)-5*a(n-1)` -/
def P751678395449736789.Spec : Prop :=
  ∀ n, P751678395449736789.a n = (A080920 n : ℚ)

end A080920

/-!
# A080923: First differences of A003946.

The programs for A080923, the canonical program `A080923.P17321636921600416847` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080923 has offset 0).

The definition of A080923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080923.P12954978958879900802

`ogf((1-x^2)/(1-3x))`
-/

namespace A080923.P12954978958879900802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -3] n

end

end A080923.P12954978958879900802

namespace A080923

/-- `ogf((1-x^2)/(1-3x))` -/
def P12954978958879900802.Spec : Prop :=
  ∀ n, P12954978958879900802.a n = A080923 n

end A080923

/-! ## A080923.P17321636921600416847

`ceil(8*3^(n-2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080923

/-- `ceil(8*3^(n-2))` -/
def P17321636921600416847.Spec : Prop :=
  ∀ n, P17321636921600416847.a n = A080923 n

theorem P17321636921600416847.correct : P17321636921600416847.Spec := by
  intro n
  simp only [A080923]

end A080923

/-! ## A080923.P13866831984599524204

`3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A080923.P13866831984599524204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  3 * a (n - 1)

end

end A080923.P13866831984599524204

namespace A080923

/-- `3*a(n-1)` -/
def P13866831984599524204.Spec : Prop :=
  ∀ n, (P13866831984599524204.a n : ℤ) = A080923 n

end A080923

/-! ## A080923.P14460519915749237290

`a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A080923.P14460519915749237290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A080923.P14460519915749237290

namespace A080923

/-- `a(n-1)/cot(atan(3))` -/
def P14460519915749237290.Spec : Prop :=
  ∀ n, P14460519915749237290.a n = (A080923 n : ℝ)

end A080923

/-! ## A080923.P14426972487133935571

`∑[lcm((-1)^n, round(16*3^(n-3)))]`
-/

namespace A080923.P14426972487133935571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (SequenceMachineLib.roundAway (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080923.P14426972487133935571

namespace A080923

/-- `∑[lcm((-1)^n, round(16*3^(n-3)))]` -/
def P14426972487133935571.Spec : Prop :=
  ∀ n, (P14426972487133935571.a n : ℤ) = A080923 n

end A080923

/-! ## A080923.P3515827946993352122

`abs(Δ[a(n-1)/sqrt(1/9)])` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A080923.P3515827946993352122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A080923.P3515827946993352122

namespace A080923

/-- `abs(Δ[a(n-1)/sqrt(1/9)])` -/
def P3515827946993352122.Spec : Prop :=
  ∀ n, P3515827946993352122.a n = (A080923 n : ℝ)

end A080923

/-! ## A080923.P4911392397163770945

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A080923.P4911392397163770945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A080923.P4911392397163770945

namespace A080923

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P4911392397163770945.Spec : Prop :=
  ∀ n, (P4911392397163770945.a n : ℤ) = A080923 n

end A080923

/-! ## A080923.P11314357662829535131

`record[A118264(n)]`
-/

namespace A080923.P11314357662829535131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080923.P11314357662829535131

namespace A080923

/-- `record[A118264(n)]` -/
def P11314357662829535131.Spec : Prop :=
  ∀ n, P11314357662829535131.a n = A080923 n

end A080923

/-! ## A080923.P8630443853013444440

`∑[A257970(n+1)]`
-/

namespace A080923.P8630443853013444440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080923.P8630443853013444440

namespace A080923

/-- `∑[A257970(n+1)]` -/
def P8630443853013444440.Spec : Prop :=
  ∀ n, P8630443853013444440.a n = A080923 n

end A080923

/-! ## A080923.P17783256897986331730

`Δ[A326339(n+1)]`
-/

namespace A080923.P17783256897986331730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080923.P17783256897986331730

namespace A080923

/-- `Δ[A326339(n+1)]` -/
def P17783256897986331730.Spec : Prop :=
  ∀ n, P17783256897986331730.a n = A080923 n

end A080923

/-! ## A080923.P17564855457538444959

`A118264((n+1)%(2*n+1))`
-/

namespace A080923.P17564855457538444959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 ((n + 1) % (2 * n + 1))

end

end A080923.P17564855457538444959

namespace A080923

/-- `A118264((n+1)%(2*n+1))` -/
def P17564855457538444959.Spec : Prop :=
  ∀ n, P17564855457538444959.a n = A080923 n

end A080923

/-! ## A080923.P18334256594361026595

`3^(n-2)*A329513(n+3)`
-/

namespace A080923.P18334256594361026595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A329513 (n + 3) : ℚ)

end

end A080923.P18334256594361026595

namespace A080923

/-- `3^(n-2)*A329513(n+3)` -/
def P18334256594361026595.Spec : Prop :=
  ∀ n, P18334256594361026595.a n = (A080923 n : ℚ)

end A080923

/-! ## A080923.P11620552017554753115

`A118264(A087156(n+1))`
-/

namespace A080923.P11620552017554753115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (A087156 (n + 1)).toNat

end

end A080923.P11620552017554753115

namespace A080923

/-- `A118264(A087156(n+1))` -/
def P11620552017554753115.Spec : Prop :=
  ∀ n, P11620552017554753115.a n = A080923 n

end A080923

/-! ## A080923.P6251704580894491611

`A036561(A027379(n)-1)`
-/

namespace A080923.P6251704580894491611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A027379 n - 1).toNat

end

end A080923.P6251704580894491611

namespace A080923

/-- `A036561(A027379(n)-1)` -/
def P6251704580894491611.Spec : Prop :=
  ∀ n, P6251704580894491611.a n = A080923 n

end A080923

/-! ## A080923.P608355918944148358

`A118264(A199969(n+2))`
-/

namespace A080923.P608355918944148358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (A199969 (n + 2)).toNat

end

end A080923.P608355918944148358

namespace A080923

/-- `A118264(A199969(n+2))` -/
def P608355918944148358.Spec : Prop :=
  ∀ n, P608355918944148358.a n = A080923 n

end A080923

/-! ## A080923.P14988751920054809200

`A154992(n)+A100702(n)`
-/

namespace A080923.P14988751920054809200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 n + A100702 n

end

end A080923.P14988751920054809200

namespace A080923

/-- `A154992(n)+A100702(n)` -/
def P14988751920054809200.Spec : Prop :=
  ∀ n, P14988751920054809200.a n = A080923 n

end A080923

/-! ## A080923.P7989201109570656763

`A003946(n)-A326339(n+1)`
-/

namespace A080923.P7989201109570656763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A326339 (n + 1)

end

end A080923.P7989201109570656763

namespace A080923

/-- `A003946(n)-A326339(n+1)` -/
def P7989201109570656763.Spec : Prop :=
  ∀ n, P7989201109570656763.a n = A080923 n

end A080923

/-! ## A080923.P11230143351570837870

`A025579(n+2)-A052156(n)`
-/

namespace A080923.P11230143351570837870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 2) - A052156 n

end

end A080923.P11230143351570837870

namespace A080923

/-- `A025579(n+2)-A052156(n)` -/
def P11230143351570837870.Spec : Prop :=
  ∀ n, P11230143351570837870.a n = A080923 n

end A080923

/-!
# A080924: Jacobsthal gap sequence.

The programs for A080924, the canonical program `A080924.P13888229966515441659` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080924 has offset 0).

The definition of A080924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080924.P13888229966515441659

`(2^n-2*(-1)^n+(-2)^n)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080924

/-- `(2^n-2*(-1)^n+(-2)^n)/2` -/
def P13888229966515441659.Spec : Prop :=
  ∀ n, P13888229966515441659.a n = (A080924 n : ℚ)

end A080924

/-! ## A080924.P14737859109642464740

`ogf((x+4x^2)/(1+x-4x^2-4x^3))`
-/

namespace A080924.P14737859109642464740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 1, -4, -4] n

end

end A080924.P14737859109642464740

namespace A080924

/-- `ogf((x+4x^2)/(1+x-4x^2-4x^3))` -/
def P14737859109642464740.Spec : Prop :=
  ∀ n, P14737859109642464740.a n = A080924 n

end A080924

/-! ## A080924.P1486323170362361774

`2^n^((n+1)%2)-1`
-/

namespace A080924.P1486323170362361774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ ((n + 1) % 2) : ℤ) - 1

end

end A080924.P1486323170362361774

namespace A080924

/-- `2^n^((n+1)%2)-1` -/
def P1486323170362361774.Spec : Prop :=
  ∀ n, P1486323170362361774.a n = A080924 n

end A080924

/-! ## A080924.P4683671367908171454

`4^floor(n/2)-a(n-1)` with `a(0)=0`
-/

namespace A080924.P4683671367908171454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - a (n - 1)

end

end A080924.P4683671367908171454

namespace A080924

/-- `4^floor(n/2)-a(n-1)` -/
def P4683671367908171454.Spec : Prop :=
  ∀ n, P4683671367908171454.a n = (A080924 n : ℚ)

end A080924

/-! ## A080924.P18150889070797503199

`gcd(4*a(n-2)+3, n%2)` with `a(0)=0, a(1)=1`
-/

namespace A080924.P18150889070797503199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd (4 * a (n - 2) + 3) (n % 2)

end

end A080924.P18150889070797503199

namespace A080924

/-- `gcd(4*a(n-2)+3, n%2)` -/
def P18150889070797503199.Spec : Prop :=
  ∀ n, (P18150889070797503199.a n : ℤ) = A080924 n

end A080924

/-! ## A080924.P16398735725927177960

`abs(1-A077957(n)²)`
-/

namespace A080924.P16398735725927177960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077957 n ^ 2|

end

end A080924.P16398735725927177960

namespace A080924

/-- `abs(1-A077957(n)²)` -/
def P16398735725927177960.Spec : Prop :=
  ∀ n, P16398735725927177960.a n = A080924 n

end A080924

/-! ## A080924.P16608069643646804159

`abs(1-A077966(n)²)`
-/

namespace A080924.P16608069643646804159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077966 n ^ 2|

end

end A080924.P16608069643646804159

namespace A080924

/-- `abs(1-A077966(n)²)` -/
def P16608069643646804159.Spec : Prop :=
  ∀ n, P16608069643646804159.a n = A080924 n

end A080924

/-! ## A080924.P15282886346727221408

`2^A124625(n+1)-1`
-/

namespace A080924.P15282886346727221408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A124625 (n + 1) : ℤ) - 1

end

end A080924.P15282886346727221408

namespace A080924

/-- `2^A124625(n+1)-1` -/
def P15282886346727221408.Spec : Prop :=
  ∀ n, P15282886346727221408.a n = (A080924 n : ℚ)

end A080924

/-! ## A080924.P13369698588690088892

`abs(1-A131575(n+1)²)`
-/

namespace A080924.P13369698588690088892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A131575 (n + 1) ^ 2|

end

end A080924.P13369698588690088892

namespace A080924

/-- `abs(1-A131575(n+1)²)` -/
def P13369698588690088892.Spec : Prop :=
  ∀ n, P13369698588690088892.a n = A080924 n

end A080924

/-! ## A080924.P17862615105345890621

`abs(1-abs(A009116(2*n)))`
-/

namespace A080924.P17862615105345890621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A009116 (2 * n)|)|

end

end A080924.P17862615105345890621

namespace A080924

/-- `abs(1-abs(A009116(2*n)))` -/
def P17862615105345890621.Spec : Prop :=
  ∀ n, P17862615105345890621.a n = A080924 n

end A080924

/-! ## A080924.P9273032150735669180

`abs(1-abs(A146559(2*n)))`
-/

namespace A080924.P9273032150735669180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A146559 (2 * n)|)|

end

end A080924.P9273032150735669180

namespace A080924

/-- `abs(1-abs(A146559(2*n)))` -/
def P9273032150735669180.Spec : Prop :=
  ∀ n, P9273032150735669180.a n = A080924 n

end A080924

/-! ## A080924.P12459966867482468933

`abs(log2(A177499(2*(n+1)))^n-1)`
-/

namespace A080924.P12459966867482468933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 (A177499 (2 * (n + 1)) : ℝ) ^ n - 1|

end

end A080924.P12459966867482468933

namespace A080924

/-- `abs(log2(A177499(2*(n+1)))^n-1)` -/
def P12459966867482468933.Spec : Prop :=
  ∀ n, P12459966867482468933.a n = (A080924 n : ℝ)

end A080924

/-! ## A080924.P11750342088289442836

`A087100(A266724(n))`
-/

namespace A080924.P11750342088289442836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 (A266724 n).toNat

end

end A080924.P11750342088289442836

namespace A080924

/-- `A087100(A266724(n))` -/
def P11750342088289442836.Spec : Prop :=
  ∀ n, P11750342088289442836.a n = A080924 n

end A080924

/-! ## A080924.P10685932395280429238

`A387325(A266073(n))`
-/

namespace A080924.P10685932395280429238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (A266073 n).toNat

end

end A080924.P10685932395280429238

namespace A080924

/-- `A387325(A266073(n))` -/
def P10685932395280429238.Spec : Prop :=
  ∀ n, P10685932395280429238.a n = A080924 n

end A080924

/-! ## A080924.P11181127911049700175

`A000225(A124625(n+1))`
-/

namespace A080924.P11181127911049700175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A124625 (n + 1)).toNat

end

end A080924.P11181127911049700175

namespace A080924

/-- `A000225(A124625(n+1))` -/
def P11181127911049700175.Spec : Prop :=
  ∀ n, P11181127911049700175.a n = A080924 n

end A080924

/-! ## A080924.P14458316540932015893

`A056508(A266256(n+1))`
-/

namespace A080924.P14458316540932015893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056508 (A266256 (n + 1)).toNat

end

end A080924.P14458316540932015893

namespace A080924

/-- `A056508(A266256(n+1))` -/
def P14458316540932015893.Spec : Prop :=
  ∀ n, P14458316540932015893.a n = A080924 n

end A080924

/-! ## A080924.P1780876225681830789

`A116601(A267352(n+1))`
-/

namespace A080924.P1780876225681830789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (A267352 (n + 1)).toNat

end

end A080924.P1780876225681830789

namespace A080924

/-- `A116601(A267352(n+1))` -/
def P1780876225681830789.Spec : Prop :=
  ∀ n, P1780876225681830789.a n = A080924 n

end A080924

/-! ## A080924.P13040990526299337791

`A277800(A193356(n+1))`
-/

namespace A080924.P13040990526299337791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 (A193356 (n + 1)).toNat

end

end A080924.P13040990526299337791

namespace A080924

/-- `A277800(A193356(n+1))` -/
def P13040990526299337791.Spec : Prop :=
  ∀ n, P13040990526299337791.a n = A080924 n

end A080924

/-! ## A080924.P9626936260482238273

`A316742(A266593(n+1))`
-/

namespace A080924.P9626936260482238273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 (A266593 (n + 1)).toNat

end

end A080924.P9626936260482238273

namespace A080924

/-- `A316742(A266593(n+1))` -/
def P9626936260482238273.Spec : Prop :=
  ∀ n, P9626936260482238273.a n = A080924 n

end A080924

/-! ## A080924.P16898845889665069239

`A000225(A141310(n)-1)`
-/

namespace A080924.P16898845889665069239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A141310 n - 1).toNat

end

end A080924.P16898845889665069239

namespace A080924

/-- `A000225(A141310(n)-1)` -/
def P16898845889665069239.Spec : Prop :=
  ∀ n, P16898845889665069239.a n = A080924 n

end A080924

/-!
# A080925: Binomial transform of Jacobsthal gap sequence (A080924).

The programs for A080925, the canonical program `A080925.P14671343220294075664` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080925 has offset 0).

The definition of A080925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080925.P4293455848562125327

`ogf((x+3x^2)/(1-2x-3x^2))`
-/

namespace A080925.P4293455848562125327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -2, -3] n

end

end A080925.P4293455848562125327

namespace A080925

/-- `ogf((x+3x^2)/(1-2x-3x^2))` -/
def P4293455848562125327.Spec : Prop :=
  ∀ n, P4293455848562125327.a n = A080925 n

end A080925

/-! ## A080925.P14671343220294075664

`∑[ceil(3^(n-1))]-(n%2)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080925

/-- `∑[ceil(3^(n-1))]-(n%2)^n` -/
def P14671343220294075664.Spec : Prop :=
  ∀ n, P14671343220294075664.a n = A080925 n

theorem P14671343220294075664.correct : P14671343220294075664.Spec := by
  intro n
  simp only [A080925]

end A080925

/-! ## A080925.P11403333850680933054

`∑[ceil(3^(n-1))]-char[comp[2*(n+1)]]`
-/

namespace A080925.P11403333850680933054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080925.P11403333850680933054

namespace A080925

/-- `∑[ceil(3^(n-1))]-char[comp[2*(n+1)]]` -/
def P11403333850680933054.Spec : Prop :=
  ∀ n, P11403333850680933054.a n = A080925 n

end A080925

/-! ## A080925.P17183046162083166863

`round(5*2^n/3)%2*or(1, ∑[floor(3^(n-1))])`
-/

namespace A080925.P17183046162083166863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))) 2 * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080925.P17183046162083166863

namespace A080925

/-- `round(5*2^n/3)%2*or(1, ∑[floor(3^(n-1))])` -/
def P17183046162083166863.Spec : Prop :=
  ∀ n, P17183046162083166863.a n = A080925 n

end A080925

/-! ## A080925.P2945056080771515483

`xor(3, or(2, A152011(n)))`
-/

namespace A080925.P2945056080771515483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.lor 2 (A152011 n))

end

end A080925.P2945056080771515483

namespace A080925

/-- `xor(3, or(2, A152011(n)))` -/
def P2945056080771515483.Spec : Prop :=
  ∀ n, P2945056080771515483.a n = A080925 n

end A080925

/-! ## A080925.P15389304714926530218

`or(ceil(sin(n)²), A003462(n))`
-/

namespace A080925.P15389304714926530218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.sin (n : ℝ) ^ 2⌉ (A003462 n)

end

end A080925.P15389304714926530218

namespace A080925

/-- `or(ceil(sin(n)²), A003462(n))` -/
def P15389304714926530218.Spec : Prop :=
  ∀ n, P15389304714926530218.a n = A080925 n

end A080925

/-! ## A080925.P11328833376795880766

`ceil(n/(n+1))*A046717(n)`
-/

namespace A080925.P11328833376795880766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉ * A046717 n

end

end A080925.P11328833376795880766

namespace A080925

/-- `ceil(n/(n+1))*A046717(n)` -/
def P11328833376795880766.Spec : Prop :=
  ∀ n, P11328833376795880766.a n = A080925 n

end A080925

/-! ## A080925.P6894471992971086290

`or(A007051(n)-1, ceil(sin(n)²))`
-/

namespace A080925.P6894471992971086290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007051 n - 1) ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A080925.P6894471992971086290

namespace A080925

/-- `or(A007051(n)-1, ceil(sin(n)²))` -/
def P6894471992971086290.Spec : Prop :=
  ∀ n, P6894471992971086290.a n = A080925 n

end A080925

/-! ## A080925.P2281850460434082342

`A046717(n)*A057427(n)`
-/

namespace A080925.P2281850460434082342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n * A057427 n

end

end A080925.P2281850460434082342

namespace A080925

/-- `A046717(n)*A057427(n)` -/
def P2281850460434082342.Spec : Prop :=
  ∀ n, P2281850460434082342.a n = A080925 n

end A080925

/-! ## A080925.P18072521313895656501

`A046717(n)%A001444(n)`
-/

namespace A080925.P18072521313895656501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046717 n) (A001444 n)

end

end A080925.P18072521313895656501

namespace A080925

/-- `A046717(n)%A001444(n)` -/
def P18072521313895656501.Spec : Prop :=
  ∀ n, P18072521313895656501.a n = A080925 n

end A080925

/-! ## A080925.P16122939730376743861

`and(A046717(n), A057428(n))`
-/

namespace A080925.P16122939730376743861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046717 n) (A057428 n)

end

end A080925.P16122939730376743861

namespace A080925

/-- `and(A046717(n), A057428(n))` -/
def P16122939730376743861.Spec : Prop :=
  ∀ n, P16122939730376743861.a n = A080925 n

end A080925

/-! ## A080925.P9012848376076658676

`and(A046717(n), A134824(n))`
-/

namespace A080925.P9012848376076658676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046717 n) (A134824 n)

end

end A080925.P9012848376076658676

namespace A080925

/-- `and(A046717(n), A134824(n))` -/
def P9012848376076658676.Spec : Prop :=
  ∀ n, P9012848376076658676.a n = A080925 n

end A080925

/-! ## A080925.P6405723119473493769

`xor(A000007(n), A046717(n))`
-/

namespace A080925.P6405723119473493769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A046717 n)

end

end A080925.P6405723119473493769

namespace A080925

/-- `xor(A000007(n), A046717(n))` -/
def P6405723119473493769.Spec : Prop :=
  ∀ n, P6405723119473493769.a n = A080925 n

end A080925

/-! ## A080925.P16902195427625419651

`xor(A010684(n), A152011(n))`
-/

namespace A080925.P16902195427625419651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A152011 n)

end

end A080925.P16902195427625419651

namespace A080925

/-- `xor(A010684(n), A152011(n))` -/
def P16902195427625419651.Spec : Prop :=
  ∀ n, P16902195427625419651.a n = A080925 n

end A080925

/-! ## A080925.P6783327279356245197

`xor(A059841(n), A261547(n))`
-/

namespace A080925.P6783327279356245197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A261547 n)

end

end A080925.P6783327279356245197

namespace A080925

/-- `xor(A059841(n), A261547(n))` -/
def P6783327279356245197.Spec : Prop :=
  ∀ n, P6783327279356245197.a n = A080925 n

end A080925

/-! ## A080925.P18345681901224010499

`lcm(Δ[A073097(n)], A046717(n))`
-/

namespace A080925.P18345681901224010499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A046717 n)

end

end A080925.P18345681901224010499

namespace A080925

/-- `lcm(Δ[A073097(n)], A046717(n))` -/
def P18345681901224010499.Spec : Prop :=
  ∀ n, (P18345681901224010499.a n : ℤ) = A080925 n

end A080925

/-! ## A080925.P8577559762021782863

`or(char[A004277(n)], A003462(n))`
-/

namespace A080925.P8577559762021782863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A003462 n)

end

end A080925.P8577559762021782863

namespace A080925

/-- `or(char[A004277(n)], A003462(n))` -/
def P8577559762021782863.Spec : Prop :=
  ∀ n, P8577559762021782863.a n = A080925 n

end A080925

/-! ## A080925.P8084292304546087563

`and(-A157532(n+1), A103425(n))`
-/

namespace A080925.P8084292304546087563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A157532 (n + 1)) (A103425 n)

end

end A080925.P8084292304546087563

namespace A080925

/-- `and(-A157532(n+1), A103425(n))` -/
def P8084292304546087563.Spec : Prop :=
  ∀ n, P8084292304546087563.a n = A080925 n

end A080925

/-! ## A080925.P13017018523336591663

`or(char[A048673(n+1)], A003462(n))`
-/

namespace A080925.P13017018523336591663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A003462 n)

end

end A080925.P13017018523336591663

namespace A080925

/-- `or(char[A048673(n+1)], A003462(n))` -/
def P13017018523336591663.Spec : Prop :=
  ∀ n, P13017018523336591663.a n = A080925 n

end A080925

/-! ## A080925.P5835686956341363303

`or(char[A054429(n+1)], A003462(n))`
-/

namespace A080925.P5835686956341363303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A003462 n)

end

end A080925.P5835686956341363303

namespace A080925

/-- `or(char[A054429(n+1)], A003462(n))` -/
def P5835686956341363303.Spec : Prop :=
  ∀ n, P5835686956341363303.a n = A080925 n

end A080925

/-!
# A080926: Partial sums of A080925.

The programs for A080926, the canonical program `A080926.P13495431233528803592` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080926 has offset 0).

The definition of A080926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080926.P13495431233528803592

`2*a(n-1)+3*a(n-2)+4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080926

/-- `2*a(n-1)+3*a(n-2)+4` -/
def P13495431233528803592.Spec : Prop :=
  ∀ n, (P13495431233528803592.a n : ℤ) = A080926 n

theorem P13495431233528803592.correct : P13495431233528803592.Spec := by
  intro n
  simp only [A080926]

end A080926

/-! ## A080926.P272186997469431798

`(3*3^n+(-1)^n)/4-1`
-/

namespace A080926.P272186997469431798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 3 ^ n : ℤ) + (-1) ^ n : ℚ) / 4 - 1

end

end A080926.P272186997469431798

namespace A080926

/-- `(3*3^n+(-1)^n)/4-1` -/
def P272186997469431798.Spec : Prop :=
  ∀ n, P272186997469431798.a n = (A080926 n : ℚ)

theorem P272186997469431798.correct : P272186997469431798.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A080926, Nat.add_sub_cancel, A080926.P272186997469431798.a, A080926.P13495431233528803592.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A080926, Nat.add_sub_cancel, A080926.P272186997469431798.a, A080926.P13495431233528803592.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A080926

/-! ## A080926.P4494531427634333223

`xor((-1)^n, ∑[(-3)^n])`
-/

namespace A080926.P4494531427634333223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080926.P4494531427634333223

namespace A080926

/-- `xor((-1)^n, ∑[(-3)^n])` -/
def P4494531427634333223.Spec : Prop :=
  ∀ n, P4494531427634333223.a n = A080926 n

end A080926

/-! ## A080926.P17652446463354030531

`ogf((x+3x^2)/(1-3x-x^2+3x^3))`
-/

namespace A080926.P17652446463354030531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -3, -1, 3] n

end

end A080926.P17652446463354030531

namespace A080926

/-- `ogf((x+3x^2)/(1-3x-x^2+3x^3))` -/
def P17652446463354030531.Spec : Prop :=
  ∀ n, P17652446463354030531.a n = A080926 n

end A080926

/-! ## A080926.P12641985091526868791

`floor(∑[3*a(n-1)]/2)` with `a(0)=0, a(1)=3`
-/

namespace A080926.P12641985091526868791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A080926.P12641985091526868791

namespace A080926

/-- `floor(∑[3*a(n-1)]/2)` -/
def P12641985091526868791.Spec : Prop :=
  ∀ n, P12641985091526868791.a n = A080926 n

end A080926

/-! ## A080926.P7937441036572156313

`abs(2-(3^n-a(n-1)))` with `a(0)=0`
-/

namespace A080926.P7937441036572156313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |2 - ((3 ^ n : ℤ) - a (n - 1))|

end

end A080926.P7937441036572156313

namespace A080926

/-- `abs(2-(3^n-a(n-1)))` -/
def P7937441036572156313.Spec : Prop :=
  ∀ n, P7937441036572156313.a n = A080926 n

end A080926

/-! ## A080926.P10644081891347160040

`(∑[3^n]-1-n%2)/2`
-/

namespace A080926.P10644081891347160040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - ((n % 2 : ℕ) : ℤ) : ℚ) / 2

end

end A080926.P10644081891347160040

namespace A080926

/-- `(∑[3^n]-1-n%2)/2` -/
def P10644081891347160040.Spec : Prop :=
  ∀ n, P10644081891347160040.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P17152412360852669554

`(∑[3^n]-gcd(2, n+1))/2`
-/

namespace A080926.P17152412360852669554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd 2 (n + 1) : ℤ) : ℚ) / 2

end

end A080926.P17152412360852669554

namespace A080926

/-- `(∑[3^n]-gcd(2, n+1))/2` -/
def P17152412360852669554.Spec : Prop :=
  ∀ n, P17152412360852669554.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P4432679750765711872

`floor(∑[3^n*ceil(sin(n)²)]/2)`
-/

namespace A080926.P4432679750765711872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A080926.P4432679750765711872

namespace A080926

/-- `floor(∑[3^n*ceil(sin(n)²)]/2)` -/
def P4432679750765711872.Spec : Prop :=
  ∀ n, P4432679750765711872.a n = A080926 n

end A080926

/-! ## A080926.P2298064402784585856

`floor(∑[3^n*floor(atan(n+1))]/2)`
-/

namespace A080926.P2298064402784585856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊Real.arctan (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A080926.P2298064402784585856

namespace A080926

/-- `floor(∑[3^n*floor(atan(n+1))]/2)` -/
def P2298064402784585856.Spec : Prop :=
  ∀ n, P2298064402784585856.a n = A080926 n

end A080926

/-! ## A080926.P8658639604088253678

`∑[A080925(n)]`
-/

namespace A080926.P8658639604088253678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080926.P8658639604088253678

namespace A080926

/-- `∑[A080925(n)]` -/
def P8658639604088253678.Spec : Prop :=
  ∀ n, P8658639604088253678.a n = A080926 n

end A080926

/-! ## A080926.P4547205582785927079

`Δ[A039300(n)-n]`
-/

namespace A080926.P4547205582785927079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080926.P4547205582785927079

namespace A080926

/-- `Δ[A039300(n)-n]` -/
def P4547205582785927079.Spec : Prop :=
  ∀ n, P4547205582785927079.a n = A080926 n

end A080926

/-! ## A080926.P683494224345444080

`floor(A029858(n+1)/2)`
-/

namespace A080926.P683494224345444080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A029858 (n + 1) : ℚ) / 2⌋

end

end A080926.P683494224345444080

namespace A080926

/-- `floor(A029858(n+1)/2)` -/
def P683494224345444080.Spec : Prop :=
  ∀ n, P683494224345444080.a n = A080926 n

end A080926

/-! ## A080926.P8008445422615791136

`(∑[A084182(n)]-1)/2`
-/

namespace A080926.P8008445422615791136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A080926.P8008445422615791136

namespace A080926

/-- `(∑[A084182(n)]-1)/2` -/
def P8008445422615791136.Spec : Prop :=
  ∀ n, P8008445422615791136.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P15609796491387394244

`(A103425(n+1)-3)/2`
-/

namespace A080926.P15609796491387394244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103425 (n + 1) - 3 : ℚ) / 2

end

end A080926.P15609796491387394244

namespace A080926

/-- `(A103425(n+1)-3)/2` -/
def P15609796491387394244.Spec : Prop :=
  ∀ n, P15609796491387394244.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P6181187899833933009

`abs(1-∑[Δ[A103425(n)]/2])`
-/

namespace A080926.P6181187899833933009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103425 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A080926.P6181187899833933009

namespace A080926

/-- `abs(1-∑[Δ[A103425(n)]/2])` -/
def P6181187899833933009.Spec : Prop :=
  ∀ n, P6181187899833933009.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P12197322855858614286

`(∑[3^n]-A176895(2*n))/2`
-/

namespace A080926.P12197322855858614286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A176895 (2 * n) : ℚ) / 2

end

end A080926.P12197322855858614286

namespace A080926

/-- `(∑[3^n]-A176895(2*n))/2` -/
def P12197322855858614286.Spec : Prop :=
  ∀ n, P12197322855858614286.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P2094068129661015126

`(A164907(n)-A010684(n))/2`
-/

namespace A080926.P2094068129661015126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164907 n - A010684 n : ℚ) / 2

end

end A080926.P2094068129661015126

namespace A080926

/-- `(A164907(n)-A010684(n))/2` -/
def P2094068129661015126.Spec : Prop :=
  ∀ n, P2094068129661015126.a n = (A080926 n : ℚ)

end A080926

/-! ## A080926.P10798081116390807505

`Δ[A006342(n)-2*A008619(n)]`
-/

namespace A080926.P10798081116390807505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 n - 2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080926.P10798081116390807505

namespace A080926

/-- `Δ[A006342(n)-2*A008619(n)]` -/
def P10798081116390807505.Spec : Prop :=
  ∀ n, P10798081116390807505.a n = A080926 n

end A080926

/-! ## A080926.P5110181709823859473

`Δ[2*A097137(n)-A004526(n)]`
-/

namespace A080926.P5110181709823859473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097137 n - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080926.P5110181709823859473

namespace A080926

/-- `Δ[2*A097137(n)-A004526(n)]` -/
def P5110181709823859473.Spec : Prop :=
  ∀ n, P5110181709823859473.a n = A080926 n

end A080926

/-!
# A080928: Triangle T(n,k) read by rows: T(n,k) = Sum_{i=0..n} C(n,2i)*C(2i,k).

The programs for A080928, the canonical program `A080928.P9505429453997537061` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080928 has offset 0).

The definition of A080928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080928.P9505429453997537061

`abs(ceil(A065109(n)/2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080928

/-- `abs(ceil(A065109(n)/2))` -/
def P9505429453997537061.Spec : Prop :=
  ∀ n, P9505429453997537061.a n = A080928 n

theorem P9505429453997537061.correct : P9505429453997537061.Spec := by
  intro n
  simp only [A080928]

end A080928

/-! ## A080928.P9216246514589312184

`and(-A051340(n), A119468(n))`
-/

namespace A080928.P9216246514589312184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A051340 n) (A119468 n)

end

end A080928.P9216246514589312184

namespace A080928

/-- `and(-A051340(n), A119468(n))` -/
def P9216246514589312184.Spec : Prop :=
  ∀ n, P9216246514589312184.a n = A080928 n

end A080928

/-! ## A080928.P6300000966633848887

`gcd(ceil(A065109(n)/2), A000038(n))`
-/

namespace A080928.P6300000966633848887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(A065109 n : ℚ) / 2⌉ (A000038 n)

end

end A080928.P6300000966633848887

namespace A080928

/-- `gcd(ceil(A065109(n)/2), A000038(n))` -/
def P6300000966633848887.Spec : Prop :=
  ∀ n, (P6300000966633848887.a n : ℤ) = A080928 n

end A080928

/-! ## A080928.P9812480004742014677

`and(Δ[A025581(n)], A119468(n))`
-/

namespace A080928.P9812480004742014677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A119468 n)

end

end A080928.P9812480004742014677

namespace A080928

/-- `and(Δ[A025581(n)], A119468(n))` -/
def P9812480004742014677.Spec : Prop :=
  ∀ n, P9812480004742014677.a n = A080928 n

end A080928

/-! ## A080928.P1660249932290699731

`and(Δ[A004736(n+1)], A119468(n))`
-/

namespace A080928.P1660249932290699731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A119468 n)

end

end A080928.P1660249932290699731

namespace A080928

/-- `and(Δ[A004736(n+1)], A119468(n))` -/
def P1660249932290699731.Spec : Prop :=
  ∀ n, P1660249932290699731.a n = A080928 n

end A080928

/-! ## A080928.P4460368261632016691

`A119468(n)-A119467(n+1)*A119467(n)`
-/

namespace A080928.P4460368261632016691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119468 n - A119467 (n + 1) * A119467 n

end

end A080928.P4460368261632016691

namespace A080928

/-- `A119468(n)-A119467(n+1)*A119467(n)` -/
def P4460368261632016691.Spec : Prop :=
  ∀ n, P4460368261632016691.a n = A080928 n

end A080928

/-! ## A080928.P4096715177807476060

`A007318(n)*A166692(A061579(n))`
-/

namespace A080928.P4096715177807476060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166692 (A061579 n).toNat

end

end A080928.P4096715177807476060

namespace A080928

/-- `A007318(n)*A166692(A061579(n))` -/
def P4096715177807476060.Spec : Prop :=
  ∀ n, P4096715177807476060.a n = A080928 n

end A080928

/-! ## A080928.P8111329325119716279

`ceil(A038207(n)/Δ[A210521(n+1)])`
-/

namespace A080928.P8111329325119716279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038207 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A080928.P8111329325119716279

namespace A080928

/-- `ceil(A038207(n)/Δ[A210521(n+1)])` -/
def P8111329325119716279.Spec : Prop :=
  ∀ n, P8111329325119716279.a n = A080928 n

end A080928

/-! ## A080928.P12228083460017540968

`lcm(ceil(A065109(n)/2), A242179(n))`
-/

namespace A080928.P12228083460017540968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(A065109 n : ℚ) / 2⌉ (A242179 n)

end

end A080928.P12228083460017540968

namespace A080928

/-- `lcm(ceil(A065109(n)/2), A242179(n))` -/
def P12228083460017540968.Spec : Prop :=
  ∀ n, (P12228083460017540968.a n : ℤ) = A080928 n

end A080928

/-! ## A080928.P9294354064389392764

`and(A119468(n), A127949(n+1))`
-/

namespace A080928.P9294354064389392764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A119468 n) (A127949 (n + 1))

end

end A080928.P9294354064389392764

namespace A080928

/-- `and(A119468(n), A127949(n+1))` -/
def P9294354064389392764.Spec : Prop :=
  ∀ n, P9294354064389392764.a n = A080928 n

end A080928

/-!
# A080929: Sequence associated with a(n) = 2*a(n-1) + k*(k+2)*a(n-2).

The programs for A080929, the canonical program `A080929.P10360657957411679561` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080929 has offset 0).

The definition of A080929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080929.P10360657957411679561

`ceil(C(n+2, 2)*2^(n-1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080929

/-- `ceil(C(n+2, 2)*2^(n-1))` -/
def P10360657957411679561.Spec : Prop :=
  ∀ n, P10360657957411679561.a n = A080929 n

theorem P10360657957411679561.correct : P10360657957411679561.Spec := by
  intro n
  simp only [A080929]

end A080929

/-! ## A080929.P5079740825883921856

`ceil(2^(n-1)*∑[n+1])`
-/

namespace A080929.P5079740825883921856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A080929.P5079740825883921856

namespace A080929

/-- `ceil(2^(n-1)*∑[n+1])` -/
def P5079740825883921856.Spec : Prop :=
  ∀ n, P5079740825883921856.a n = A080929 n

end A080929

/-! ## A080929.P440250044290704466

`(4/n+2)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A080929.P440250044290704466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (4 / (n : ℚ) + 2) * a (n - 1)

end

end A080929.P440250044290704466

namespace A080929

/-- `(4/n+2)*a(n-1)` -/
def P440250044290704466.Spec : Prop :=
  ∀ n, P440250044290704466.a n = (A080929 n : ℚ)

end A080929

/-! ## A080929.P7474270436937442398

`round(2^(n-1)*C(n+2, 2))`
-/

namespace A080929.P7474270436937442398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 2) 2 : ℚ))

end

end A080929.P7474270436937442398

namespace A080929

/-- `round(2^(n-1)*C(n+2, 2))` -/
def P7474270436937442398.Spec : Prop :=
  ∀ n, P7474270436937442398.a n = A080929 n

end A080929

/-! ## A080929.P11620159009329428760

`∑[n+1]*Δ[2*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A080929.P11620159009329428760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A080929.P11620159009329428760

namespace A080929

/-- `∑[n+1]*Δ[2*a(n-1)]` -/
def P11620159009329428760.Spec : Prop :=
  ∀ n, P11620159009329428760.a n = A080929 n

end A080929

/-! ## A080929.P1472228855714578590

`2^((n-1)%(n+1))*∑[n+1]`
-/

namespace A080929.P1472228855714578590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A080929.P1472228855714578590

namespace A080929

/-- `2^((n-1)%(n+1))*∑[n+1]` -/
def P1472228855714578590.Spec : Prop :=
  ∀ n, P1472228855714578590.a n = (A080929 n : ℚ)

end A080929

/-! ## A080929.P3430683624786082763

`∑[n+1]/2^((1-n)%(n+1))`
-/

namespace A080929.P3430683624786082763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) : ℤ)

end

end A080929.P3430683624786082763

namespace A080929

/-- `∑[n+1]/2^((1-n)%(n+1))` -/
def P3430683624786082763.Spec : Prop :=
  ∀ n, P3430683624786082763.a n = (A080929 n : ℚ)

end A080929

/-! ## A080929.P11073938047777404290

`∑[n+1]*A011782(n)`
-/

namespace A080929.P11073938047777404290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 n

end

end A080929.P11073938047777404290

namespace A080929

/-- `∑[n+1]*A011782(n)` -/
def P11073938047777404290.Spec : Prop :=
  ∀ n, P11073938047777404290.a n = A080929 n

end A080929

/-! ## A080929.P17290526986551903691

`∑[(n+1)*A045891(n)]`
-/

namespace A080929.P17290526986551903691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A045891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080929.P17290526986551903691

namespace A080929

/-- `∑[(n+1)*A045891(n)]` -/
def P17290526986551903691.Spec : Prop :=
  ∀ n, P17290526986551903691.a n = A080929 n

end A080929

/-! ## A080929.P7712471591539042922

`∑[(n+1)*∑[A034007(n)]]`
-/

namespace A080929.P7712471591539042922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080929.P7712471591539042922

namespace A080929

/-- `∑[(n+1)*∑[A034007(n)]]` -/
def P7712471591539042922.Spec : Prop :=
  ∀ n, P7712471591539042922.a n = A080929 n

end A080929

/-! ## A080929.P12082902911206078639

`round((n+1)*A001792(n)/2)`
-/

namespace A080929.P12082902911206078639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A001792 n : ℚ) / 2))

end

end A080929.P12082902911206078639

namespace A080929

/-- `round((n+1)*A001792(n)/2)` -/
def P12082902911206078639.Spec : Prop :=
  ∀ n, P12082902911206078639.a n = A080929 n

end A080929

/-! ## A080929.P6207265996189879762

`∑[n+1]*A166444(n+1)`
-/

namespace A080929.P6207265996189879762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A166444 (n + 1)

end

end A080929.P6207265996189879762

namespace A080929

/-- `∑[n+1]*A166444(n+1)` -/
def P6207265996189879762.Spec : Prop :=
  ∀ n, P6207265996189879762.a n = A080929 n

end A080929

/-! ## A080929.P12805555900530103806

`∑[n+1]*A211164(2*n)`
-/

namespace A080929.P12805555900530103806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A211164 (2 * n)

end

end A080929.P12805555900530103806

namespace A080929

/-- `∑[n+1]*A211164(2*n)` -/
def P12805555900530103806.Spec : Prop :=
  ∀ n, P12805555900530103806.a n = A080929 n

end A080929

/-! ## A080929.P18366802453650748056

`(n+2)/2*A057711(n+1)`
-/

namespace A080929.P18366802453650748056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A057711 (n + 1) : ℚ)

end

end A080929.P18366802453650748056

namespace A080929

/-- `(n+2)/2*A057711(n+1)` -/
def P18366802453650748056.Spec : Prop :=
  ∀ n, P18366802453650748056.a n = (A080929 n : ℚ)

end A080929

/-! ## A080929.P9923558989330774510

`(n+2)/2*A129952(n+1)`
-/

namespace A080929.P9923558989330774510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A129952 (n + 1) : ℚ)

end

end A080929.P9923558989330774510

namespace A080929

/-- `(n+2)/2*A129952(n+1)` -/
def P9923558989330774510.Spec : Prop :=
  ∀ n, P9923558989330774510.a n = (A080929 n : ℚ)

end A080929

/-! ## A080929.P315798592717178662

`2^(n-2)*A060798(n+2)`
-/

namespace A080929.P315798592717178662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A060798 (n + 2) : ℚ)

end

end A080929.P315798592717178662

namespace A080929

/-- `2^(n-2)*A060798(n+2)` -/
def P315798592717178662.Spec : Prop :=
  ∀ n, P315798592717178662.a n = (A080929 n : ℚ)

end A080929

/-! ## A080929.P12154595904870779208

`∑[n+1]*A158780(2*n+1)`
-/

namespace A080929.P12154595904870779208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A158780 (2 * n + 1)

end

end A080929.P12154595904870779208

namespace A080929

/-- `∑[n+1]*A158780(2*n+1)` -/
def P12154595904870779208.Spec : Prop :=
  ∀ n, P12154595904870779208.a n = A080929 n

end A080929

/-! ## A080929.P9151375515037572122

`A087431(n)+A001787(n)`
-/

namespace A080929.P9151375515037572122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087431 n + A001787 n

end

end A080929.P9151375515037572122

namespace A080929

/-- `A087431(n)+A001787(n)` -/
def P9151375515037572122.Spec : Prop :=
  ∀ n, P9151375515037572122.a n = A080929 n

end A080929

/-! ## A080929.P17839341401785869350

`A001788(n)+∑[A087447(n)]`
-/

namespace A080929.P17839341401785869350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080929.P17839341401785869350

namespace A080929

/-- `A001788(n)+∑[A087447(n)]` -/
def P17839341401785869350.Spec : Prop :=
  ∀ n, P17839341401785869350.a n = A080929 n

end A080929

/-! ## A080929.P13784861280900378573

`A057711(n+1)+A001788(n)`
-/

namespace A080929.P13784861280900378573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1) + A001788 n

end

end A080929.P13784861280900378573

namespace A080929

/-- `A057711(n+1)+A001788(n)` -/
def P13784861280900378573.Spec : Prop :=
  ∀ n, P13784861280900378573.a n = A080929 n

end A080929

/-!
# A080930: a(n) = 2^(n-3)*(n+2)*(n+3)*(n+4)/3.

The programs for A080930, the canonical program `A080930.P1692155301140891154` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080930 has offset 0).

The definition of A080930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-3)*(n+2)*(n+3)*(n+4)/3` (program `A080930.P14130348907297053669`, by `A080930.P14130348907297053669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080930.P12413501618714307644

`2^(n-2)*C(n+4, 3)`
-/

namespace A080930.P12413501618714307644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose (n + 4) 3 : ℚ)

end

end A080930.P12413501618714307644

namespace A080930

/-- `2^(n-2)*C(n+4, 3)` -/
def P12413501618714307644.Spec : Prop :=
  ∀ n, P12413501618714307644.a n = (A080930 n : ℚ)

end A080930

/-! ## A080930.P14130348907297053669

`2^(n-3)*(n+2)*(n+3)*(n+4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080930.P14130348907297053669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n + 2 : ℚ) * (n + 3 : ℚ) * (n + 4 : ℚ) / 3

end

end A080930.P14130348907297053669

namespace A080930

/-- `2^(n-3)*(n+2)*(n+3)*(n+4)/3` -/
def P14130348907297053669.Spec : Prop :=
  ∀ n, P14130348907297053669.a n = (A080930 n : ℚ)

theorem P14130348907297053669.correct : P14130348907297053669.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A080930, Nat.add_sub_cancel, A080930.P14130348907297053669.a, A080930.P1692155301140891154.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A080930, Nat.add_sub_cancel, A080930.P14130348907297053669.a, A080930.P1692155301140891154.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A080930

/-! ## A080930.P1692155301140891154

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=70`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080930

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P1692155301140891154.Spec : Prop :=
  ∀ n, P1692155301140891154.a n = A080930 n

theorem P1692155301140891154.correct : P1692155301140891154.Spec := by
  intro n
  simp only [A080930]

end A080930

/-! ## A080930.P5387611168294899979

`2*(a(n-1)+3*a(n-1)/(n+1))` with `a(0)=1`
-/

namespace A080930.P5387611168294899979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 3 * a (n - 1) / (n + 1 : ℚ))

end

end A080930.P5387611168294899979

namespace A080930

/-- `2*(a(n-1)+3*a(n-1)/(n+1))` -/
def P5387611168294899979.Spec : Prop :=
  ∀ n, P5387611168294899979.a n = (A080930 n : ℚ)

end A080930

/-! ## A080930.P366834133814197078

`3*ratio[∑[n+1]]*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A080930.P366834133814197078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1) - a (n - 1)

end

end A080930.P366834133814197078

namespace A080930

/-- `3*ratio[∑[n+1]]*a(n-1)-a(n-1)` -/
def P366834133814197078.Spec : Prop :=
  ∀ n, P366834133814197078.a n = (A080930 n : ℚ)

end A080930

/-! ## A080930.P8174795277765230404

`A049612(n+1)+A049612(n+1)-A001793(n+1)`
-/

namespace A080930.P8174795277765230404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1) + (A049612 (n + 1) - A001793 (n + 1))

end

end A080930.P8174795277765230404

namespace A080930

/-- `A049612(n+1)+A049612(n+1)-A001793(n+1)` -/
def P8174795277765230404.Spec : Prop :=
  ∀ n, P8174795277765230404.a n = A080930 n

end A080930

/-! ## A080930.P112951288803493764

`2*(n+4)*a(n-1)/(n+1)` with `a(0)=1`
-/

namespace A080930.P112951288803493764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 4 : ℚ) * a (n - 1) / (n + 1 : ℚ))

end

end A080930.P112951288803493764

namespace A080930

/-- `2*(n+4)*a(n-1)/(n+1)` -/
def P112951288803493764.Spec : Prop :=
  ∀ n, P112951288803493764.a n = (A080930 n : ℚ)

end A080930

/-! ## A080930.P3037015901772919213

`A011782(n+1)/A057711(n+1)*A080951(n)`
-/

namespace A080930.P3037015901772919213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A057711 (n + 1) : ℚ) * (A080951 n : ℚ)

end

end A080930.P3037015901772919213

namespace A080930

/-- `A011782(n+1)/A057711(n+1)*A080951(n)` -/
def P3037015901772919213.Spec : Prop :=
  ∀ n, P3037015901772919213.a n = (A080930 n : ℚ)

end A080930

/-! ## A080930.P5107380578142881235

`A003472(n+4)/A001787(n+1)*A000079(n)`
-/

namespace A080930.P5107380578142881235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (n + 4) : ℚ) / (A001787 (n + 1) : ℚ) * (A000079 n : ℚ)

end

end A080930.P5107380578142881235

namespace A080930

/-- `A003472(n+4)/A001787(n+1)*A000079(n)` -/
def P5107380578142881235.Spec : Prop :=
  ∀ n, P5107380578142881235.a n = (A080930 n : ℚ)

end A080930

/-! ## A080930.P14335543823996479466

`A130809(n+4)/A130811(n+5)*A054849(n+5)`
-/

namespace A080930.P14335543823996479466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130809 (n + 4) : ℚ) / (A130811 (n + 5) : ℚ) * (A054849 (n + 5) : ℚ)

end

end A080930.P14335543823996479466

namespace A080930

/-- `A130809(n+4)/A130811(n+5)*A054849(n+5)` -/
def P14335543823996479466.Spec : Prop :=
  ∀ n, P14335543823996479466.a n = (A080930 n : ℚ)

end A080930

/-!
# A080931: Record-setting differences between adjacent elements of the Mian-Chowla sequence variant A058335.

The programs for A080931, there is no canonical definition to state claims against.
-/

/-! ## A080931.P9378996541453461958

`record[Δ[A058335(n+1)]]`
-/

namespace A080931.P9378996541453461958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058335 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080931.P9378996541453461958

/-! ## A080931.P502325037379626196

`record[A058335(n+2)-A058335(n+1)]`
-/

namespace A080931.P502325037379626196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058335 (n + 2) - A058335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080931.P502325037379626196

/-!
# A080934: Square array read by antidiagonals of number of Catalan paths (nonnegative, starting and ending at 0, step +-1) of 2n steps with all values less than or equal to k.

The programs for A080934, there is no canonical definition to state claims against.
-/

/-! ## A080934.P16751279612070136465

`A320955(n)-A276999(A226873(n))`
-/

namespace A080934.P16751279612070136465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 n - A276999 (A226873 n).toNat

end

end A080934.P16751279612070136465

/-! ## A080934.P12666504330323571375

`A048766(A267479(n)+A214015(n)²)`
-/

namespace A080934.P12666504330323571375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A267479 n + A214015 n ^ 2).toNat

end

end A080934.P12666504330323571375

/-! ## A080934.P15707073012240599230

`A320955(n)-A088951(A293960(n))`
-/

namespace A080934.P15707073012240599230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 n - A088951 (A293960 n).toNat

end

end A080934.P15707073012240599230

/-! ## A080934.P6235022888718894396

`A320955(n)-A185284(A250484(n))`
-/

namespace A080934.P6235022888718894396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 n - A185284 (A250484 n).toNat

end

end A080934.P6235022888718894396

/-! ## A080934.P271871751291660781

`A320955(n)-A185238(A277537(n))`
-/

namespace A080934.P271871751291660781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 n - A185238 (A277537 n).toNat

end

end A080934.P271871751291660781

/-!
# A080935: Triangle read by rows of number of Catalan paths (nonnegative, starting and ending at 0, step +/ -1) of 2n steps with all values less than or equal to k.

The programs for A080935, there is no canonical definition to state claims against.
-/

/-! ## A080935.P14202629570021118812

`A082854(∑[A080936(n+1)])`
-/

namespace A080935.P14202629570021118812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080935.P14202629570021118812

/-! ## A080935.P10394305449046265192

`A193691(∑[A114276(n+1)])`
-/

namespace A080935.P10394305449046265192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080935.P10394305449046265192

/-! ## A080935.P9472385040538981813

`A193691(record[A085164(n+1)])`
-/

namespace A080935.P9472385040538981813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080935.P9472385040538981813

/-! ## A080935.P17184144009386741474

`A193691(record[A086429(n+1)])`
-/

namespace A080935.P17184144009386741474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080935.P17184144009386741474

/-! ## A080935.P13867249579448111714

`A193691(record[A125978(n+1)])`
-/

namespace A080935.P13867249579448111714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080935.P13867249579448111714

/-!
# A080936: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and height k (1 <= k <= n).

The programs for A080936, there is no canonical definition to state claims against.
-/

/-! ## A080936.P5475264298582906153

`A186745(A306100(n))+A112857(n)`
-/

namespace A080936.P5475264298582906153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A306100 n).toNat + A112857 n

end

end A080936.P5475264298582906153

/-! ## A080936.P15040337526159085561

`A343237(n)-A186745(A306100(n))`
-/

namespace A080936.P15040337526159085561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 n - A186745 (A306100 n).toNat

end

end A080936.P15040337526159085561

/-! ## A080936.P13569806864486193045

`abs(A186745(A306100(n))+A118801(n))`
-/

namespace A080936.P13569806864486193045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186745 (A306100 n).toNat + A118801 n|

end

end A080936.P13569806864486193045

/-! ## A080936.P17992770625978255887

`A140595(A112857(n)-1)`
-/

namespace A080936.P17992770625978255887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A112857 n - 1).toNat

end

end A080936.P17992770625978255887

/-! ## A080936.P10817390649350208287

`A343237(n)-A331385(A008277(n+1))`
-/

namespace A080936.P10817390649350208287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343237 n - A331385 (A008277 (n + 1)).toNat

end

end A080936.P10817390649350208287

/-!
# A080937: Number of Catalan paths (nonnegative, starting and ending at 0, step +/ -1) of 2*n steps with all values <= 5.

The programs for A080937, the canonical program `A080937.P5242318450844835685` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080937 has offset 0).

The definition of A080937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080937.P5242318450844835685

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080937

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P5242318450844835685.Spec : Prop :=
  ∀ n, P5242318450844835685.a n = A080937 n

theorem P5242318450844835685.correct : P5242318450844835685.Spec := by
  intro n
  simp only [A080937]

end A080937

/-! ## A080937.P10649189506343652969

`A096976(2*n)`
-/

namespace A080937.P10649189506343652969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n)

end

end A080937.P10649189506343652969

namespace A080937

/-- `A096976(2*n)` -/
def P10649189506343652969.Spec : Prop :=
  ∀ n, P10649189506343652969.a n = A080937 n

end A080937

/-! ## A080937.P10655001786456357478

`ogf((1-4x+3x^2)/(1-5x+6x^2-x^3))`
-/

namespace A080937.P10655001786456357478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -5, 6, -1] n

end

end A080937.P10655001786456357478

namespace A080937

/-- `ogf((1-4x+3x^2)/(1-5x+6x^2-x^3))` -/
def P10655001786456357478.Spec : Prop :=
  ∀ n, P10655001786456357478.a n = A080937 n

end A080937

/-! ## A080937.P15410396119250382586

`A094790(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A080937.P15410396119250382586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A094790 (n - 1) + a (n - 1)

end

end A080937.P15410396119250382586

namespace A080937

/-- `A094790(n-1)+a(n-1)` -/
def P15410396119250382586.Spec : Prop :=
  ∀ n, P15410396119250382586.a n = A080937 n

end A080937

/-! ## A080937.P1395069207928376803

`A187065(lcm(2, A161718(n)))`
-/

namespace A080937.P1395069207928376803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (Int.lcm 2 (A161718 n))

end

end A080937.P1395069207928376803

namespace A080937

/-- `A187065(lcm(2, A161718(n)))` -/
def P1395069207928376803.Spec : Prop :=
  ∀ n, P1395069207928376803.a n = A080937 n

end A080937

/-! ## A080937.P2950488888217913439

`A187065(or(2, A130824(n)))`
-/

namespace A080937.P2950488888217913439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (Int.lor 2 (A130824 n)).toNat

end

end A080937.P2950488888217913439

namespace A080937

/-- `A187065(or(2, A130824(n)))` -/
def P2950488888217913439.Spec : Prop :=
  ∀ n, P2950488888217913439.a n = A080937 n

end A080937

/-! ## A080937.P10441551465756222070

`A052547(2*(A028310(n)-1))`
-/

namespace A080937.P10441551465756222070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * (A028310 n - 1)).toNat

end

end A080937.P10441551465756222070

namespace A080937

/-- `A052547(2*(A028310(n)-1))` -/
def P10441551465756222070.Spec : Prop :=
  ∀ n, P10441551465756222070.a n = A080937 n

end A080937

/-! ## A080937.P3334005359124640240

`A052547(or(1, A004275(n))-1)`
-/

namespace A080937.P3334005359124640240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (Int.lor 1 (A004275 n) - 1).toNat

end

end A080937.P3334005359124640240

namespace A080937

/-- `A052547(or(1, A004275(n))-1)` -/
def P3334005359124640240.Spec : Prop :=
  ∀ n, P3334005359124640240.a n = A080937 n

end A080937

/-! ## A080937.P5273617077011473567

`A052547(2*(A004273(n)-n))`
-/

namespace A080937.P5273617077011473567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * (A004273 n - (n : ℤ))).toNat

end

end A080937.P5273617077011473567

namespace A080937

/-- `A052547(2*(A004273(n)-n))` -/
def P5273617077011473567.Spec : Prop :=
  ∀ n, P5273617077011473567.a n = A080937 n

end A080937

/-! ## A080937.P17325090328007988268

`A187065(A130824(A000007(n)+n))`
-/

namespace A080937.P17325090328007988268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (A130824 (A000007 n + (n : ℤ)).toNat).toNat

end

end A080937.P17325090328007988268

namespace A080937

/-- `A187065(A130824(A000007(n)+n))` -/
def P17325090328007988268.Spec : Prop :=
  ∀ n, P17325090328007988268.a n = A080937 n

end A080937

/-! ## A080937.P3307277681435369403

`or(A052547(A004275(n)), A073424(n))`
-/

namespace A080937.P3307277681435369403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052547 (A004275 n).toNat) (A073424 n)

end

end A080937.P3307277681435369403

namespace A080937

/-- `or(A052547(A004275(n)), A073424(n))` -/
def P3307277681435369403.Spec : Prop :=
  ∀ n, P3307277681435369403.a n = A080937 n

end A080937

/-! ## A080937.P101721908274931732

`A052547(A028310(n)+A028310(n)-2)`
-/

namespace A080937.P101721908274931732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (A028310 n + (A028310 n - 2)).toNat

end

end A080937.P101721908274931732

namespace A080937

/-- `A052547(A028310(n)+A028310(n)-2)` -/
def P101721908274931732.Spec : Prop :=
  ∀ n, P101721908274931732.a n = A080937 n

end A080937

/-! ## A080937.P2503961383519658802

`A052547(A028310(n)-(2-A028310(n)))`
-/

namespace A080937.P2503961383519658802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (A028310 n - (2 - A028310 n)).toNat

end

end A080937.P2503961383519658802

namespace A080937

/-- `A052547(A028310(n)-(2-A028310(n)))` -/
def P2503961383519658802.Spec : Prop :=
  ∀ n, P2503961383519658802.a n = A080937 n

end A080937

/-! ## A080937.P1894015909340695986

`A215695(n)+A006053(2*n+1)`
-/

namespace A080937.P1894015909340695986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215695 n + A006053 (2 * n + 1)

end

end A080937.P1894015909340695986

namespace A080937

/-- `A215695(n)+A006053(2*n+1)` -/
def P1894015909340695986.Spec : Prop :=
  ∀ n, P1894015909340695986.a n = A080937 n

end A080937

/-! ## A080937.P10527667973320841772

`A052975(n)-A006053(2*n+1)`
-/

namespace A080937.P10527667973320841772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 n - A006053 (2 * n + 1)

end

end A080937.P10527667973320841772

namespace A080937

/-- `A052975(n)-A006053(2*n+1)` -/
def P10527667973320841772.Spec : Prop :=
  ∀ n, P10527667973320841772.a n = A080937 n

end A080937

/-! ## A080937.P9298297688622882910

`A052547(2*n)-A006053(2*n)`
-/

namespace A080937.P9298297688622882910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n) - A006053 (2 * n)

end

end A080937.P9298297688622882910

namespace A080937

/-- `A052547(2*n)-A006053(2*n)` -/
def P9298297688622882910.Spec : Prop :=
  ∀ n, P9298297688622882910.a n = A080937 n

end A080937

/-! ## A080937.P4274205310598020435

`A187066(4*n)-A006053(2*n)`
-/

namespace A080937.P4274205310598020435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n) - A006053 (2 * n)

end

end A080937.P4274205310598020435

namespace A080937

/-- `A187066(4*n)-A006053(2*n)` -/
def P4274205310598020435.Spec : Prop :=
  ∀ n, P4274205310598020435.a n = A080937 n

end A080937

/-! ## A080937.P7383798905645456907

`A028495(2*n)-A187067(4*n)`
-/

namespace A080937.P7383798905645456907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n) - A187067 (4 * n)

end

end A080937.P7383798905645456907

namespace A080937

/-- `A028495(2*n)-A187067(4*n)` -/
def P7383798905645456907.Spec : Prop :=
  ∀ n, P7383798905645456907.a n = A080937 n

end A080937

/-! ## A080937.P15769496836762520718

`A052547(2*n)-A265755(4*n)`
-/

namespace A080937.P15769496836762520718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n) - A265755 (4 * n)

end

end A080937.P15769496836762520718

namespace A080937

/-- `A052547(2*n)-A265755(4*n)` -/
def P15769496836762520718.Spec : Prop :=
  ∀ n, P15769496836762520718.a n = A080937 n

end A080937

/-! ## A080937.P220548235517185369

`A187066(4*n)-A265755(4*n)`
-/

namespace A080937.P220548235517185369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n) - A265755 (4 * n)

end

end A080937.P220548235517185369

namespace A080937

/-- `A187066(4*n)-A265755(4*n)` -/
def P220548235517185369.Spec : Prop :=
  ∀ n, P220548235517185369.a n = A080937 n

end A080937

/-!
# A080938: Number of Catalan paths (nonnegative, starting and ending at 0, step +-1) of 2*n steps with all values less than or equal to 7.

The programs for A080938, the canonical program `A080938.P11236460439995984752` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080938 has offset 0).

The definition of A080938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080938.P11236460439995984752

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080938

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P11236460439995984752.Spec : Prop :=
  ∀ n, P11236460439995984752.a n = A080938 n

theorem P11236460439995984752.correct : P11236460439995984752.Spec := by
  intro n
  simp only [A080938]

end A080938

/-! ## A080938.P4572721545394982900

`A094826(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A080938.P4572721545394982900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A094826 (n - 1) + a (n - 1)

end

end A080938.P4572721545394982900

namespace A080938

/-- `A094826(n-1)+a(n-1)` -/
def P4572721545394982900.Spec : Prop :=
  ∀ n, P4572721545394982900.a n = A080938 n

end A080938

/-! ## A080938.P6884362657103683214

`A187496(6*log2(A011782(n)))`
-/

namespace A080938.P6884362657103683214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (SequenceMachineLib.roundAway (6 * Real.logb 2 (A011782 n : ℝ))).toNat

end

end A080938.P6884362657103683214

namespace A080938

/-- `A187496(6*log2(A011782(n)))` -/
def P6884362657103683214.Spec : Prop :=
  ∀ n, P6884362657103683214.a n = A080938 n

end A080938

/-! ## A080938.P2732378978423657637

`A061551(2*n)-A188022(2*n)`
-/

namespace A080938.P2732378978423657637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (2 * n) - A188022 (2 * n)

end

end A080938.P2732378978423657637

namespace A080938

/-- `A061551(2*n)-A188022(2*n)` -/
def P2732378978423657637.Spec : Prop :=
  ∀ n, P2732378978423657637.a n = A080938 n

end A080938

/-! ## A080938.P8831859967851596582

`A188048(2*n)-A188021(2*n)`
-/

namespace A080938.P8831859967851596582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (2 * n) - A188021 (2 * n)

end

end A080938.P8831859967851596582

namespace A080938

/-- `A188048(2*n)-A188021(2*n)` -/
def P8831859967851596582.Spec : Prop :=
  ∀ n, P8831859967851596582.a n = A080938 n

end A080938

/-! ## A080938.P18436332104979758137

`2*A094854(n)-A094855(n)`
-/

namespace A080938.P18436332104979758137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094854 n - A094855 n

end

end A080938.P18436332104979758137

namespace A080938

/-- `2*A094854(n)-A094855(n)` -/
def P18436332104979758137.Spec : Prop :=
  ∀ n, P18436332104979758137.a n = A080938 n

end A080938

/-! ## A080938.P17729505582350257312

`2*A061551(2*n)-A061551(2*n+1)`
-/

namespace A080938.P17729505582350257312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061551 (2 * n) - A061551 (2 * n + 1)

end

end A080938.P17729505582350257312

namespace A080938

/-- `2*A061551(2*n)-A061551(2*n+1)` -/
def P17729505582350257312.Spec : Prop :=
  ∀ n, P17729505582350257312.a n = A080938 n

end A080938

/-! ## A080938.P12858005547005083500

`A188022(2*n+1)-(A188022(2*n)+A188021(2*n))`
-/

namespace A080938.P12858005547005083500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188022 (2 * n + 1) - (A188022 (2 * n) + A188021 (2 * n))

end

end A080938.P12858005547005083500

namespace A080938

/-- `A188022(2*n+1)-(A188022(2*n)+A188021(2*n))` -/
def P12858005547005083500.Spec : Prop :=
  ∀ n, P12858005547005083500.a n = A080938 n

end A080938

/-! ## A080938.P11255496875404980750

`A080934(A155212(n+4))`
-/

namespace A080938.P11255496875404980750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A155212 (n + 4)).toNat

end

end A080938.P11255496875404980750

namespace A080938

/-- `A080934(A155212(n+4))` -/
def P11255496875404980750.Spec : Prop :=
  ∀ n, P11255496875404980750.a n = A080938 n

end A080938

/-! ## A080938.P5460395134979360059

`A080934(eq[8, A004736(n+1)])`
-/

namespace A080938.P5460395134979360059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080938.P5460395134979360059

namespace A080938

/-- `A080934(eq[8, A004736(n+1)])` -/
def P5460395134979360059.Spec : Prop :=
  ∀ n, P5460395134979360059.a n = A080938 n

end A080938

/-! ## A080938.P16761859041491759027

`A080934(eq[8, A195663(n)])`
-/

namespace A080938.P16761859041491759027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080938.P16761859041491759027

namespace A080938

/-- `A080934(eq[8, A195663(n)])` -/
def P16761859041491759027.Spec : Prop :=
  ∀ n, P16761859041491759027.a n = A080938 n

end A080938

/-!
# A080939: a(1)=3; for n>1, a(n)=a(n-1)-2 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A080939, there is no canonical definition to state claims against.
-/

/-! ## A080939.P8481726660335447159

`A080901(n+3)-2`
-/

namespace A080939.P8481726660335447159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080901 (n + 3) - 2

end

end A080939.P8481726660335447159

/-! ## A080939.P17049001912415739382

`A081745(n+3)+1+n`
-/

namespace A080939.P17049001912415739382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081745 (n + 3) + 1 + (n : ℤ)

end

end A080939.P17049001912415739382

/-! ## A080939.P8384580986869438341

`A001478(n+2)+A080901(n+3)+n`
-/

namespace A080939.P8384580986869438341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 2) + (A080901 (n + 3) + (n : ℤ))

end

end A080939.P8384580986869438341

/-! ## A080939.P1401655623545771546

`A001489(n+2)+A080901(n+3)+n`
-/

namespace A080939.P1401655623545771546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 2) + (A080901 (n + 3) + (n : ℤ))

end

end A080939.P1401655623545771546

/-! ## A080939.P14507205229773137800

`A023448(A080901(n+3)+4)`
-/

namespace A080939.P14507205229773137800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A080901 (n + 3) + 4).toNat

end

end A080939.P14507205229773137800

/-! ## A080939.P15685079536066501560

`A280560(Δ[n²])+A080901(n+3)`
-/

namespace A080939.P15685079536066501560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A080901 (n + 3)

end

end A080939.P15685079536066501560

/-!
# A080940: Smallest proper divisor of n which is a suffix of n in binary representation; a(n) = 0 if no such divisor exists.

The programs for A080940, the canonical program `A080940.P4167100671030505572` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080940 has offset 1).

The definition of A080940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080940.P12497493537879310471

`(2^val(n+1, 2))%(n+1)`
-/

namespace A080940.P12497493537879310471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 % (n + 1)

end

end A080940.P12497493537879310471

namespace A080940

/-- `(2^val(n+1, 2))%(n+1)` -/
def P12497493537879310471.Spec : Prop :=
  ∀ n, (P12497493537879310471.a n : ℤ) = A080940 (n + 1)

end A080940

/-! ## A080940.P4167100671030505572

`(n+2)%(and(n, n+1)+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080940

/-- `(n+2)%(and(n, n+1)+1)` -/
def P4167100671030505572.Spec : Prop :=
  ∀ n, (P4167100671030505572.a n : ℤ) = A080940 (n + 1)

theorem P4167100671030505572.correct : P4167100671030505572.Spec := by
  intro n
  simp only [A080940, Nat.add_sub_cancel]

end A080940

/-! ## A080940.P7913833518345921820

`(or(n, n+1)+1)%(n+1)`
-/

namespace A080940.P7913833518345921820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) + 1) % (n + 1)

end

end A080940.P7913833518345921820

namespace A080940

/-- `(or(n, n+1)+1)%(n+1)` -/
def P7913833518345921820.Spec : Prop :=
  ∀ n, (P7913833518345921820.a n : ℤ) = A080940 (n + 1)

end A080940

/-! ## A080940.P99294953580923530

`(2*a(floor(n/2)))^(n%2)` with `a(0)=0`
-/

namespace A080940.P99294953580923530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * a ⌊(n : ℚ) / 2⌋.toNat) ^ (n % 2)

end

end A080940.P99294953580923530

namespace A080940

/-- `(2*a(floor(n/2)))^(n%2)` -/
def P99294953580923530.Spec : Prop :=
  ∀ n, (P99294953580923530.a n : ℤ) = A080940 (n + 1)

end A080940

/-! ## A080940.P12785632429220897409

`abs(Δ[xor(n, floor(n/2))])%(n+1)`
-/

namespace A080940.P12785632429220897409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| (n + 1 : ℤ)

end

end A080940.P12785632429220897409

namespace A080940

/-- `abs(Δ[xor(n, floor(n/2))])%(n+1)` -/
def P12785632429220897409.Spec : Prop :=
  ∀ n, P12785632429220897409.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P16228467887136450290

`gcd(n+1, (3-n)^10)%(n+1)`
-/

namespace A080940.P16228467887136450290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) % (n + 1)

end

end A080940.P16228467887136450290

namespace A080940

/-- `gcd(n+1, (3-n)^10)%(n+1)` -/
def P16228467887136450290.Spec : Prop :=
  ∀ n, (P16228467887136450290.a n : ℤ) = A080940 (n + 1)

end A080940

/-! ## A080940.P7353795287978783650

`2^val(n+1, 2)*char[comp[2^n-1]]`
-/

namespace A080940.P7353795287978783650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * (if ∃ j, f1 j = n then 1 else 0)

end

end A080940.P7353795287978783650

namespace A080940

/-- `2^val(n+1, 2)*char[comp[2^n-1]]` -/
def P7353795287978783650.Spec : Prop :=
  ∀ n, (P7353795287978783650.a n : ℤ) = A080940 (n + 1)

end A080940

/-! ## A080940.P17911032559463974290

`2^val(n+1, 2)-Δ[2^ceil(log2(n+1))]`
-/

namespace A080940.P17911032559463974290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (f1 (n + 1) - f1 n)

end

end A080940.P17911032559463974290

namespace A080940

/-- `2^val(n+1, 2)-Δ[2^ceil(log2(n+1))]` -/
def P17911032559463974290.Spec : Prop :=
  ∀ n, P17911032559463974290.a n = (A080940 (n + 1) : ℚ)

end A080940

/-! ## A080940.P6353030640865441514

`and(n+1, C(and(n+1, 2*n), n)-(n+1))`
-/

namespace A080940.P6353030640865441514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.choose (Nat.land (n + 1) (2 * n)) n : ℤ) - (n + 1 : ℤ))

end

end A080940.P6353030640865441514

namespace A080940

/-- `and(n+1, C(and(n+1, 2*n), n)-(n+1))` -/
def P6353030640865441514.Spec : Prop :=
  ∀ n, P6353030640865441514.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P16335853112174784666

`abs(Δ[A279645(n)])`
-/

namespace A080940.P16335853112174784666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A080940.P16335853112174784666

namespace A080940

/-- `abs(Δ[A279645(n)])` -/
def P16335853112174784666.Spec : Prop :=
  ∀ n, P16335853112174784666.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P15641468606109817787

`A006519(n+1)%(n+1)`
-/

namespace A080940.P15641468606109817787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (n + 1)) (n + 1 : ℤ)

end

end A080940.P15641468606109817787

namespace A080940

/-- `A006519(n+1)%(n+1)` -/
def P15641468606109817787.Spec : Prop :=
  ∀ n, P15641468606109817787.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P14037068790121601294

`A182241(n+1)%(n+1)`
-/

namespace A080940.P14037068790121601294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182241 (n + 1)) (n + 1 : ℤ)

end

end A080940.P14037068790121601294

namespace A080940

/-- `A182241(n+1)%(n+1)` -/
def P14037068790121601294.Spec : Prop :=
  ∀ n, P14037068790121601294.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P14735493204951623387

`A302338(n+1)%(n+1)`
-/

namespace A080940.P14735493204951623387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302338 (n + 1)) (n + 1 : ℤ)

end

end A080940.P14735493204951623387

namespace A080940

/-- `A302338(n+1)%(n+1)` -/
def P14735493204951623387.Spec : Prop :=
  ∀ n, P14735493204951623387.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P1476422386656908591

`or(n, A053645(n+1))-n`
-/

namespace A080940.P1476422386656908591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A053645 (n + 1)) - (n : ℤ)

end

end A080940.P1476422386656908591

namespace A080940

/-- `or(n, A053645(n+1))-n` -/
def P1476422386656908591.Spec : Prop :=
  ∀ n, P1476422386656908591.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P15276731894725981911

`or(n, A080941(n+1))-n`
-/

namespace A080940.P15276731894725981911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A080941 (n + 1)) - (n : ℤ)

end

end A080940.P15276731894725981911

namespace A080940

/-- `or(n, A080941(n+1))-n` -/
def P15276731894725981911.Spec : Prop :=
  ∀ n, P15276731894725981911.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P1689127026364919673

`((3*n+5)^A007814(n+1))%(n+1)`
-/

namespace A080940.P1689127026364919673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 * n + 5 : ℚ) ^ (A007814 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A080940.P1689127026364919673

namespace A080940

/-- `((3*n+5)^A007814(n+1))%(n+1)` -/
def P1689127026364919673.Spec : Prop :=
  ∀ n, P1689127026364919673.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P2721615486183507701

`A090077(A086099(n))`
-/

namespace A080940.P2721615486183507701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A086099 n).toNat

end

end A080940.P2721615486183507701

namespace A080940

/-- `A090077(A086099(n))` -/
def P2721615486183507701.Spec : Prop :=
  ∀ n, P2721615486183507701.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P13949431094002535514

`A003817(n)-A142151(n)`
-/

namespace A080940.P13949431094002535514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A142151 n

end

end A080940.P13949431094002535514

namespace A080940

/-- `A003817(n)-A142151(n)` -/
def P13949431094002535514.Spec : Prop :=
  ∀ n, P13949431094002535514.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P14589585319519161297

`A043545(n)*A135517(n)`
-/

namespace A080940.P14589585319519161297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A135517 n

end

end A080940.P14589585319519161297

namespace A080940

/-- `A043545(n)*A135517(n)` -/
def P14589585319519161297.Spec : Prop :=
  ∀ n, P14589585319519161297.a n = A080940 (n + 1)

end A080940

/-! ## A080940.P17852641563630551207

`A135517(n)%A008619(n)`
-/

namespace A080940.P17852641563630551207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135517 n) (A008619 n)

end

end A080940.P17852641563630551207

namespace A080940

/-- `A135517(n)%A008619(n)` -/
def P17852641563630551207.Spec : Prop :=
  ∀ n, P17852641563630551207.a n = A080940 (n + 1)

end A080940

/-!
# A080941: Greatest proper divisor of n which is a suffix of n in binary representation; a(n) = 0 if no such divisor exists.

The programs for A080941, there is no canonical definition to state claims against.
-/

/-! ## A080941.P5382498360774185171

`and(n+1, A004756(A005941(n+1)))`
-/

namespace A080941.P5382498360774185171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A004756 (A005941 (n + 1)).toNat)

end

end A080941.P5382498360774185171

/-! ## A080941.P403960064026266968

`and(A004756(A005941(n+1)), A131209(n))`
-/

namespace A080941.P403960064026266968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004756 (A005941 (n + 1)).toNat) (A131209 n)

end

end A080941.P403960064026266968

/-! ## A080941.P11195422267100623878

`and(A004756(A005941(n+1)), A153152(n))`
-/

namespace A080941.P11195422267100623878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004756 (A005941 (n + 1)).toNat) (A153152 n)

end

end A080941.P11195422267100623878

/-! ## A080941.P5043065556715912521

`and(A004754(A005941(n+1)), A246591(n))`
-/

namespace A080941.P5043065556715912521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004754 (A005941 (n + 1)).toNat) (A246591 n)

end

end A080941.P5043065556715912521

/-! ## A080941.P10993579844137723095

`and(A053645(A005941(n+1)), A053645(n+1))`
-/

namespace A080941.P10993579844137723095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053645 (A005941 (n + 1)).toNat) (A053645 (n + 1))

end

end A080941.P10993579844137723095

/-!
# A080942: Number of divisors of n that are also suffixes of n in binary representation.

The programs for A080942, there is no canonical definition to state claims against.
-/

/-! ## A080942.P2595612634919001873

`A093178(A284005(n+1))+A000120(A080941(n+1))`
-/

namespace A080942.P2595612634919001873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A284005 (n + 1)).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P2595612634919001873

/-! ## A080942.P8210505112860873535

`A093178(A062717(n+1))+A000120(A080941(n+1))`
-/

namespace A080942.P8210505112860873535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062717 (n + 1)).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P8210505112860873535

/-! ## A080942.P4120496814540901132

`A005361(A181841(n+1))+A000120(A080941(n+1))`
-/

namespace A080942.P4120496814540901132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A181841 (n + 1)).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P4120496814540901132

/-! ## A080942.P15736603536829594949

`A005361(A235617(n+1))+A000120(A080941(n+1))`
-/

namespace A080942.P15736603536829594949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A235617 (n + 1)).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P15736603536829594949

/-! ## A080942.P7103501634907979397

`A000120(A080941(n+1))%A138980(n)+1`
-/

namespace A080942.P7103501634907979397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A080941 (n + 1)).toNat) (A138980 n) + 1

end

end A080942.P7103501634907979397

/-! ## A080942.P2085910767517928953

`A000120(A080941(n+1))+A000035(A138980(n))`
-/

namespace A080942.P2085910767517928953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080941 (n + 1)).toNat + A000035 (A138980 n).toNat

end

end A080942.P2085910767517928953

/-! ## A080942.P5141582252325032716

`A057427(A134636(n))+A000120(A080941(n+1))`
-/

namespace A080942.P5141582252325032716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A134636 n).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P5141582252325032716

/-! ## A080942.P11475230121121679023

`A339914(A339920(n+1))+A000120(A080941(n+1))`
-/

namespace A080942.P11475230121121679023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339914 (A339920 (n + 1)).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P11475230121121679023

/-! ## A080942.P5080924239779555706

`A000120(A137688(n)+A080941(n+1))`
-/

namespace A080942.P5080924239779555706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A137688 n + A080941 (n + 1)).toNat

end

end A080942.P5080924239779555706

/-! ## A080942.P4235273691301426716

`A000593(A130321(n))+A000120(A080941(n+1))`
-/

namespace A080942.P4235273691301426716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A130321 n).toNat + A000120 (A080941 (n + 1)).toNat

end

end A080942.P4235273691301426716

/-!
# A080943: Numbers having exactly two divisors that are also suffixes in binary representation.

The programs for A080943, there is no canonical definition to state claims against.
-/

/-! ## A080943.P10231701419515318212

`filter[A080944(n+1), A347523(#)]`
-/

namespace A080943.P10231701419515318212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A080943.P10231701419515318212

/-! ## A080943.P7625729422303986377

`∩[A080944(n+1), A057716(n)]`
-/

namespace A080943.P7625729422303986377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080943.P7625729422303986377

/-! ## A080943.P8697198174116094900

`eq[2, A080942(n+1)]+1`
-/

namespace A080943.P8697198174116094900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080943.P8697198174116094900

/-! ## A080943.P7713484861679701987

`A065475(eq[2, A080942(n+1)])`
-/

namespace A080943.P7713484861679701987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080943.P7713484861679701987

/-! ## A080943.P4896902789267588362

`A153152(eq[2, A080942(n+1)])`
-/

namespace A080943.P4896902789267588362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080943.P4896902789267588362

/-! ## A080943.P7706230258061228172

`eq[2, A094331(a(A080941(n)))]` with `a(0)=5`
-/

namespace A080943.P7706230258061228172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A094331 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080943.P7706230258061228172

/-! ## A080943.P3062853121003152964

`eq[1, A000120(A080941(n+1))]+1`
-/

namespace A080943.P3062853121003152964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080941 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080943.P3062853121003152964

/-! ## A080943.P639392123751477106

`eq[A006519(n+1), A080941(n+1)]+1`
-/

namespace A080943.P639392123751477106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080943.P639392123751477106

/-! ## A080943.P5958238509135561119

`filter[A080944(n+2), A267579(#)]`
-/

namespace A080943.P5958238509135561119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080944 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A080943.P5958238509135561119

/-! ## A080943.P5911777737693887968

`eq[2, A080942(A004277(n))]`
-/

namespace A080943.P5911777737693887968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080943.P5911777737693887968

/-! ## A080943.P12703428039225828759

`eq[2, A080942(A004273(n)+1)]`
-/

namespace A080943.P12703428039225828759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080943.P12703428039225828759

/-! ## A080943.P5257645045517238278

`eq[2, A080942(A008574(n))]`
-/

namespace A080943.P5257645045517238278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080943.P5257645045517238278

/-! ## A080943.P16820044364182543287

`eq[2, A080942(A022144(n))]`
-/

namespace A080943.P16820044364182543287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080943.P16820044364182543287

/-!
# A080944: Numbers having only trivial divisors that are also suffixes in binary representation.

The programs for A080944, there is no canonical definition to state claims against.
-/

/-! ## A080944.P7265650210370380450

`∪[A000079(n), A080943(n+1)]`
-/

namespace A080944.P7265650210370380450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080944.P7265650210370380450

/-! ## A080944.P8396899405136393695

`∪[A029746(n), A080943(n+1)]`
-/

namespace A080944.P8396899405136393695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080944.P8396899405136393695

/-! ## A080944.P12205235506296716150

`∪[A029748(n), A080943(n+1)]`
-/

namespace A080944.P12205235506296716150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080944.P12205235506296716150

/-! ## A080944.P14477796496951439898

`∪[A029749(n), A080943(n+1)]`
-/

namespace A080944.P14477796496951439898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080944.P14477796496951439898

/-! ## A080944.P9427071295724359210

`eq[A080940(n+1), A080941(n+1)]+1`
-/

namespace A080944.P9427071295724359210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080944.P9427071295724359210

/-! ## A080944.P2748516699079272962

`lt[n*char[A080945(n+1)], n]`
-/

namespace A080944.P2748516699079272962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080945 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A080944.P2748516699079272962

/-! ## A080944.P10588321579482585469

`eq[char[A080945(n+1)], A000007(n)]`
-/

namespace A080944.P10588321579482585469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080945 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080944.P10588321579482585469

/-! ## A080944.P224429374930883042

`eq[char[A080945(n+1)], A000038(n)]`
-/

namespace A080944.P224429374930883042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080945 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A080944.P224429374930883042

/-! ## A080944.P3137945326709754060

`eq[1, A336138(A080941(n+1))]+1`
-/

namespace A080944.P3137945326709754060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336138 (A080941 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080944.P3137945326709754060

/-! ## A080944.P1725690106426771874

`record[A000027(n+1)/A336138(A080941(n+1))]`
-/

namespace A080944.P1725690106426771874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A336138 (A080941 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080944.P1725690106426771874

/-! ## A080944.P8967932947810143799

`record[A028242(2*n)/A336138(A080941(n+1))]`
-/

namespace A080944.P8967932947810143799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A336138 (A080941 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080944.P8967932947810143799

/-! ## A080944.P4574137136594472180

`record[(A005408(n)-n)/A336138(A080941(n+1))]`
-/

namespace A080944.P4574137136594472180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A336138 (A080941 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080944.P4574137136594472180

/-!
# A080945: Numbers having more than two divisors that are also suffixes in binary representation.

The programs for A080945, there is no canonical definition to state claims against.
-/

/-! ## A080945.P13052198768751848934

`∪[A080946(n+1), A080947(n+1)]`
-/

namespace A080945.P13052198768751848934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080945.P13052198768751848934

/-! ## A080945.P4912334145798262299

`lt[2, A080942(n+1)]+1`
-/

namespace A080945.P4912334145798262299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080945.P4912334145798262299

/-! ## A080945.P9764643829520663884

`lt[2, A080942(A028310(n))]`
-/

namespace A080945.P9764643829520663884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080945.P9764643829520663884

/-! ## A080945.P16367380894979096469

`eq[2, A171898(a(A080941(n)))]` with `a(0)=3`
-/

namespace A080945.P16367380894979096469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A171898 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080945.P16367380894979096469

/-! ## A080945.P5202316053862662312

`eq[2, A134478(a(A080941(n)))]` with `a(0)=5`
-/

namespace A080945.P5202316053862662312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A134478 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080945.P5202316053862662312

/-! ## A080945.P1947552106314658482

`eq[2, A000005(a(A080941(n)))]` with `a(0)=6`
-/

namespace A080945.P1947552106314658482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080945.P1947552106314658482

/-! ## A080945.P10953702800249013916

`eq[2, A008619(a(A080941(n)))]` with `a(0)=6`
-/

namespace A080945.P10953702800249013916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A008619 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080945.P10953702800249013916

/-! ## A080945.P10411098044897188223

`eq[2, A051776(a(A080941(n)))]` with `a(0)=7, a(1)=5`
-/

namespace A080945.P10411098044897188223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 5] fun n f2 =>
  A051776 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080945.P10411098044897188223

/-! ## A080945.P6047920514422749974

`eq[2, A074279(a(A080941(n)))]` with `a(0)=59, a(1)=6`
-/

namespace A080945.P6047920514422749974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [59, 6] fun n f2 =>
  A074279 (f2 (A080941 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080945.P6047920514422749974

/-! ## A080945.P4830663675618959450

`lt[2, A080942(A008574(n))]`
-/

namespace A080945.P4830663675618959450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080945.P4830663675618959450

/-!
# A080946: Numbers having exactly three divisors that are also suffixes in binary representation.

The programs for A080946, there is no canonical definition to state claims against.
-/

/-! ## A080946.P12090646353808417856

`eq[3, A080942(n+1)]+1`
-/

namespace A080946.P12090646353808417856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080946.P12090646353808417856

/-! ## A080946.P4256456163305406055

`A061767(eq[3, A080942(n+1)])`
-/

namespace A080946.P4256456163305406055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080946.P4256456163305406055

/-! ## A080946.P7203445316367056416

`A153152(eq[3, A080942(n+1)])`
-/

namespace A080946.P7203445316367056416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080946.P7203445316367056416

/-! ## A080946.P12226452830903311835

`eq[1, A080942(A004277(n))-2]`
-/

namespace A080946.P12226452830903311835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A004277 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080946.P12226452830903311835

/-! ## A080946.P1614278703300572522

`eq[3, A080942(A008619(A004273(n)))]`
-/

namespace A080946.P1614278703300572522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080946.P1614278703300572522

/-! ## A080946.P12620198781243017710

`eq[3, A080942(A008574(n))]`
-/

namespace A080946.P12620198781243017710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080946.P12620198781243017710

/-! ## A080946.P14623466898631823867

`eq[3, A080942(A022144(n))]`
-/

namespace A080946.P14623466898631823867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080946.P14623466898631823867

/-!
# A080947: Numbers having more than three divisors that are also suffixes in binary representation.

The programs for A080947, there is no canonical definition to state claims against.
-/

/-! ## A080947.P9705991639071171102

`lt[3, A080942(n+28)]+28`
-/

namespace A080947.P9705991639071171102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (n + 28)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 28

end

end A080947.P9705991639071171102

/-! ## A080947.P9613210969532153617

`lt[3, A080942(A008574(n))]`
-/

namespace A080947.P9613210969532153617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080947.P9613210969532153617

/-!
# A080948: Least number m having n divisors that are also suffixes of m in binary representation.

The programs for A080948, there is no canonical definition to state claims against.
-/

/-! ## A080948.P10813751149669224717

`A082495(A092881(n)+10)`
-/

namespace A080948.P10813751149669224717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A092881 n + 10).toNat

end

end A080948.P10813751149669224717

/-! ## A080948.P5188123167315285432

`∑[∏[A243917(A243876(n))]]`
-/

namespace A080948.P5188123167315285432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (A243876 (n + 25)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080948.P5188123167315285432

/-!
# A080949: a(1)=0; for n>1, a(n)=a(n-1)-2 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A080949, there is no canonical definition to state claims against.
-/

/-! ## A080949.P1742214555344507614

`A080900(n+2)-A276152(A006955(3*n+4))`
-/

namespace A080949.P1742214555344507614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 2) - A276152 (A006955 (3 * n + 4)).toNat

end

end A080949.P1742214555344507614

/-! ## A080949.P14612877999764437789

`∑[Δ[A080900(n+1)]%A080912(n+1)]`
-/

namespace A080949.P14612877999764437789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A080912 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080949.P14612877999764437789

/-! ## A080949.P10081179143669254528

`A080900(n+1)-A051340(A088218(n))`
-/

namespace A080949.P10081179143669254528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1) - A051340 (A088218 n).toNat

end

end A080949.P10081179143669254528

/-! ## A080949.P17684426003465486805

`A007953(A346000(n+1)+A060464(n+1))`
-/

namespace A080949.P17684426003465486805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A346000 (n + 1) + A060464 (n + 1)).toNat

end

end A080949.P17684426003465486805

/-! ## A080949.P18105292739172014754

`A047206(3*n+1)-A031176(A258666(n+1))`
-/

namespace A080949.P18105292739172014754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (3 * n + 1) - A031176 (A258666 (n + 1)).toNat

end

end A080949.P18105292739172014754

/-!
# A080950: Number of numbers that differ from n in binary representation by exactly one edit-operation: deletion, insertion, or substitution.

The programs for A080950, there is no canonical definition to state claims against.
-/

/-! ## A080950.P7041096798816708939

`A128282(n+2)+2%A000037(A079223(n))`
-/

namespace A080950.P7041096798816708939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 (n + 2) + Int.tmod 2 (A000037 (A079223 n).toNat)

end

end A080950.P7041096798816708939

/-!
# A080951: Sequence associated with recurrence a(n) = 2*a(n-1) + k*(k+2)*a(n-2).

The programs for A080951, the canonical program `A080951.P6848793795162047330` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080951 has offset 0).

The definition of A080951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080951.P6848793795162047330

`ceil(C(n+4, 4)*2^(n-1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080951

/-- `ceil(C(n+4, 4)*2^(n-1))` -/
def P6848793795162047330.Spec : Prop :=
  ∀ n, P6848793795162047330.a n = A080951 n

theorem P6848793795162047330.correct : P6848793795162047330.Spec := by
  intro n
  simp only [A080951]

end A080951

/-! ## A080951.P7769819699091606558

`(8/n+2)*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A080951.P7769819699091606558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (8 / (n : ℚ) + 2) * a (n - 1)

end

end A080951.P7769819699091606558

namespace A080951

/-- `(8/n+2)*a(n-1)` -/
def P7769819699091606558.Spec : Prop :=
  ∀ n, P7769819699091606558.a n = (A080951 n : ℚ)

end A080951

/-! ## A080951.P10845487307911511844

`ceil(2^n/2*C(n+4, 4))`
-/

namespace A080951.P10845487307911511844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / 2 * (Nat.choose (n + 4) 4 : ℚ)⌉

end

end A080951.P10845487307911511844

namespace A080951

/-- `ceil(2^n/2*C(n+4, 4))` -/
def P10845487307911511844.Spec : Prop :=
  ∀ n, P10845487307911511844.a n = A080951 n

end A080951

/-! ## A080951.P6500031199669094058

`ceil(2^(n-1))*∑[∑[∑[n+1]]]`
-/

namespace A080951.P6500031199669094058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080951.P6500031199669094058

namespace A080951

/-- `ceil(2^(n-1))*∑[∑[∑[n+1]]]` -/
def P6500031199669094058.Spec : Prop :=
  ∀ n, P6500031199669094058.a n = A080951 n

end A080951

/-! ## A080951.P17093861880168624641

`(C(n+4, 4)+1)*A011782(n)-A011782(n)`
-/

namespace A080951.P17093861880168624641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 + 1 : ℤ) * A011782 n - A011782 n

end

end A080951.P17093861880168624641

namespace A080951

/-- `(C(n+4, 4)+1)*A011782(n)-A011782(n)` -/
def P17093861880168624641.Spec : Prop :=
  ∀ n, P17093861880168624641.a n = A080951 n

end A080951

/-! ## A080951.P14055739753713035062

`lcm(2, A003472(n+4))/2`
-/

namespace A080951.P14055739753713035062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A003472 (n + 4)) : ℚ) / 2

end

end A080951.P14055739753713035062

namespace A080951

/-- `lcm(2, A003472(n+4))/2` -/
def P14055739753713035062.Spec : Prop :=
  ∀ n, P14055739753713035062.a n = (A080951 n : ℚ)

end A080951

/-! ## A080951.P8253228150996813548

`floor((2^n*∑[A000292(n+1)]+1)/2)`
-/

namespace A080951.P8253228150996813548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ) : ℚ) / 2⌋

end

end A080951.P8253228150996813548

namespace A080951

/-- `floor((2^n*∑[A000292(n+1)]+1)/2)` -/
def P8253228150996813548.Spec : Prop :=
  ∀ n, P8253228150996813548.a n = A080951 n

end A080951

/-! ## A080951.P7032373274757475397

`A003472(n+4)/A036453(n+1)`
-/

namespace A080951.P7032373274757475397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (n + 4) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A080951.P7032373274757475397

namespace A080951

/-- `A003472(n+4)/A036453(n+1)` -/
def P7032373274757475397.Spec : Prop :=
  ∀ n, P7032373274757475397.a n = (A080951 n : ℚ)

end A080951

/-! ## A080951.P11760298957227217790

`A344564(n)/A040006(n)`
-/

namespace A080951.P11760298957227217790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344564 n : ℚ) / (A040006 n : ℚ)

end

end A080951.P11760298957227217790

namespace A080951

/-- `A344564(n)/A040006(n)` -/
def P11760298957227217790.Spec : Prop :=
  ∀ n, P11760298957227217790.a n = (A080951 n : ℚ)

end A080951

/-! ## A080951.P4906632542171262861

`A001816(n)/A040132(n)`
-/

namespace A080951.P4906632542171262861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001816 n : ℚ) / (A040132 n : ℚ)

end

end A080951.P4906632542171262861

namespace A080951

/-- `A001816(n)/A040132(n)` -/
def P4906632542171262861.Spec : Prop :=
  ∀ n, P4906632542171262861.a n = (A080951 n : ℚ)

end A080951

/-! ## A080951.P12003674121362128166

`A003472(n+4)*A011782(n)/A011782(n+1)`
-/

namespace A080951.P12003674121362128166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (n + 4) * A011782 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A080951.P12003674121362128166

namespace A080951

/-- `A003472(n+4)*A011782(n)/A011782(n+1)` -/
def P12003674121362128166.Spec : Prop :=
  ∀ n, P12003674121362128166.a n = (A080951 n : ℚ)

end A080951

/-! ## A080951.P10287238988943610182

`A003472(n+4)*A082138(n)/A001789(n+3)`
-/

namespace A080951.P10287238988943610182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (n + 4) * A082138 n : ℚ) / (A001789 (n + 3) : ℚ)

end

end A080951.P10287238988943610182

namespace A080951

/-- `A003472(n+4)*A082138(n)/A001789(n+3)` -/
def P10287238988943610182.Spec : Prop :=
  ∀ n, P10287238988943610182.a n = (A080951 n : ℚ)

end A080951

/-!
# A080952: a(n) = 2^(n-4)*(n+2)*(n+3)*(n+4)*(n+5)*(n+6)/15.

The programs for A080952, the canonical program `A080952.P4506242249348275043` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080952 has offset 0).

The definition of A080952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080952.P4506242249348275043

`2^(n-4)*(n+2)*(n+3)*(n+4)*(n+5)*(n+6)/15`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080952

/-- `2^(n-4)*(n+2)*(n+3)*(n+4)*(n+5)*(n+6)/15` -/
def P4506242249348275043.Spec : Prop :=
  ∀ n, P4506242249348275043.a n = (A080952 n : ℚ)

end A080952

/-! ## A080952.P2471748961448612782

`(5*2/(n+1)+2)*a(n-1)` with `a(0)=3`
-/

namespace A080952.P2471748961448612782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (5 * (2 / (n + 1 : ℚ)) + 2) * a (n - 1)

end

end A080952.P2471748961448612782

namespace A080952

/-- `(5*2/(n+1)+2)*a(n-1)` -/
def P2471748961448612782.Spec : Prop :=
  ∀ n, P2471748961448612782.a n = (A080952 n : ℚ)

end A080952

/-! ## A080952.P4559263741822440657

`A001792(n)+A006975(n)+A001794(n)`
-/

namespace A080952.P4559263741822440657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A006975 n + A001794 n)

end

end A080952.P4559263741822440657

namespace A080952

/-- `A001792(n)+A006975(n)+A001794(n)` -/
def P4559263741822440657.Spec : Prop :=
  ∀ n, P4559263741822440657.a n = A080952 n

end A080952

/-! ## A080952.P5515939382081600053

`Δ[A211388(n)/4]`
-/

namespace A080952.P5515939382081600053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211388 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080952.P5515939382081600053

namespace A080952

/-- `Δ[A211388(n)/4]` -/
def P5515939382081600053.Spec : Prop :=
  ∀ n, P5515939382081600053.a n = (A080952 n : ℚ)

end A080952

/-! ## A080952.P11467063158767653378

`3/(n+1)*A002409(n)`
-/

namespace A080952.P11467063158767653378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A002409 n : ℚ)

end

end A080952.P11467063158767653378

namespace A080952

/-- `3/(n+1)*A002409(n)` -/
def P11467063158767653378.Spec : Prop :=
  ∀ n, P11467063158767653378.a n = (A080952 n : ℚ)

end A080952

/-! ## A080952.P5015419727101570418

`A082139(n+1)/A054851(n+8)*A082141(n+1)`
-/

namespace A080952.P5015419727101570418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082139 (n + 1) : ℚ) / (A054851 (n + 8) : ℚ) * (A082141 (n + 1) : ℚ)

end

end A080952.P5015419727101570418

namespace A080952

/-- `A082139(n+1)/A054851(n+8)*A082141(n+1)` -/
def P5015419727101570418.Spec : Prop :=
  ∀ n, P5015419727101570418.a n = (A080952 n : ℚ)

end A080952

/-!
# A080953: Weight distribution of [151,76,19] binary quadratic-residue (or QR) code.

The programs for A080953, there is no canonical definition to state claims against.
-/

/-! ## A080953.P7332634962388716807

`A025882((2*n)²^A058343(n))`
-/

namespace A080953.P7332634962388716807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025882 (SequenceMachineLib.roundAway (((2 * n) ^ 2 : ℚ) ^ (A058343 n : ℤ))).toNat

end

end A080953.P7332634962388716807

/-! ## A080953.P14228337443811801599

`A163482((2*n+1)*A058343(n))`
-/

namespace A080953.P14228337443811801599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163482 ((2 * n + 1 : ℤ) * A058343 n).toNat

end

end A080953.P14228337443811801599

/-! ## A080953.P5489337260402746967

`A006697(n)*A007953(A134975(n))`
-/

namespace A080953.P5489337260402746967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006697 n * A007953 (A134975 n).toNat

end

end A080953.P5489337260402746967

/-! ## A080953.P9968341796069520211

`A000290(A134975(n))%A000412(n)`
-/

namespace A080953.P9968341796069520211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A134975 n).toNat) (A000412 n)

end

end A080953.P9968341796069520211

/-!
# A080954: E.g.f. exp(5x)/(1-x).

The programs for A080954, the canonical program `A080954.P12782366635936779300` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080954 has offset 0).

The definition of A080954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080954.P12782366635936779300

`n*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080954

/-- `n*a(n-1)+5^n` -/
def P12782366635936779300.Spec : Prop :=
  ∀ n, (P12782366635936779300.a n : ℤ) = A080954 n

theorem P12782366635936779300.correct : P12782366635936779300.Spec := by
  intro n
  simp only [A080954]

end A080954

/-! ## A080954.P18177047461435005804

`5^n+a(n-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A080954.P18177047461435005804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A080954.P18177047461435005804

namespace A080954

/-- `5^n+a(n-1)/cot(atan(n))` -/
def P18177047461435005804.Spec : Prop :=
  ∀ n, P18177047461435005804.a n = (A080954 n : ℝ)

end A080954

/-! ## A080954.P16057350676084506831

`floor(n*a(floor(n²/(n+1))))+5^n` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080954.P16057350676084506831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + 5 ^ n

end

end A080954.P16057350676084506831

namespace A080954

/-- `floor(n*a(floor(n²/(n+1))))+5^n` -/
def P16057350676084506831.Spec : Prop :=
  ∀ n, (P16057350676084506831.a n : ℤ) = A080954 n

end A080954

/-! ## A080954.P7484312229321135343

`A195257(n+1)/5`
-/

namespace A080954.P7484312229321135343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195257 (n + 1) : ℚ) / 5

end

end A080954.P7484312229321135343

namespace A080954

/-- `A195257(n+1)/5` -/
def P7484312229321135343.Spec : Prop :=
  ∀ n, P7484312229321135343.a n = (A080954 n : ℚ)

end A080954

/-! ## A080954.P6252191193574883573

`A000351(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A080954.P6252191193574883573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000351 n + (n : ℤ) * a (n - 1)

end

end A080954.P6252191193574883573

namespace A080954

/-- `A000351(n)+n*a(n-1)` -/
def P6252191193574883573.Spec : Prop :=
  ∀ n, P6252191193574883573.a n = A080954 n

end A080954

/-!
# A080955: Square array of numbers related to the incomplete gamma function, read by antidiagonals.

The programs for A080955, the canonical program `A080955.P14536454646210280855` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080955 has offset 0).

The definition of A080955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080955.P14536454646210280855

`col(n)*T(n-1,k-1)+(row(n)-col(n))^col(n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080955

/-- `col(n)*T(n-1,k-1)+(row(n)-col(n))^col(n)` -/
def P14536454646210280855.Spec : Prop :=
  ∀ n, P14536454646210280855.a n = A080955 n

theorem P14536454646210280855.correct : P14536454646210280855.Spec := by
  intro n
  simp only [A080955]

end A080955

/-! ## A080955.P13017466531097302436

`A134558(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A080955.P13017466531097302436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134558 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A080955.P13017466531097302436

namespace A080955

/-- `A134558(∑[2*n]%(comp[∑[n+1]]+1))` -/
def P13017466531097302436.Spec : Prop :=
  ∀ n, P13017466531097302436.a n = A080955 n

end A080955

/-! ## A080955.P9435612282903661453

`A134558(gcd(A010816(n), A061579(n)))`
-/

namespace A080955.P9435612282903661453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134558 (Int.gcd (A010816 n) (A061579 n))

end

end A080955.P9435612282903661453

namespace A080955

/-- `A134558(gcd(A010816(n), A061579(n)))` -/
def P9435612282903661453.Spec : Prop :=
  ∀ n, P9435612282903661453.a n = A080955 n

end A080955

/-! ## A080955.P12796823406101046789

`A089258(A007401(n+1)-A198954(n))`
-/

namespace A080955.P12796823406101046789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (A007401 (n + 1) - A198954 n).toNat

end

end A080955.P12796823406101046789

namespace A080955

/-- `A089258(A007401(n+1)-A198954(n))` -/
def P12796823406101046789.Spec : Prop :=
  ∀ n, P12796823406101046789.a n = A080955 n

end A080955

/-! ## A080955.P14257050738425845199

`A089258(A007401(n+1)%A080036(n))`
-/

namespace A080955.P14257050738425845199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (Int.tmod (A007401 (n + 1)) (A080036 n)).toNat

end

end A080955.P14257050738425845199

namespace A080955

/-- `A089258(A007401(n+1)%A080036(n))` -/
def P14257050738425845199.Spec : Prop :=
  ∀ n, P14257050738425845199.a n = A080955 n

end A080955

/-! ## A080955.P13841514454800771330

`A089258(gcd(A007401(n+1), A198954(n)))`
-/

namespace A080955.P13841514454800771330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (Int.gcd (A007401 (n + 1)) (A198954 n))

end

end A080955.P13841514454800771330

namespace A080955

/-- `A089258(gcd(A007401(n+1), A198954(n)))` -/
def P13841514454800771330.Spec : Prop :=
  ∀ n, P13841514454800771330.a n = A080955 n

end A080955

/-! ## A080955.P6500617149442132281

`A134558(A061579(n%A062138(A061579(n))))`
-/

namespace A080955.P6500617149442132281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134558 (A061579 (Int.tmod (n : ℤ) (A062138 (A061579 n).toNat)).toNat).toNat

end

end A080955.P6500617149442132281

namespace A080955

/-- `A134558(A061579(n%A062138(A061579(n))))` -/
def P6500617149442132281.Spec : Prop :=
  ∀ n, P6500617149442132281.a n = A080955 n

end A080955

/-! ## A080955.P5815176708293380234

`A089258(comp[∑[n-1]])`
-/

namespace A080955.P5815176708293380234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080955.P5815176708293380234

namespace A080955

/-- `A089258(comp[∑[n-1]])` -/
def P5815176708293380234.Spec : Prop :=
  ∀ n, P5815176708293380234.a n = A080955 n

end A080955

/-! ## A080955.P16746467854409341260

`A134558(A061579(n))`
-/

namespace A080955.P16746467854409341260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134558 (A061579 n).toNat

end

end A080955.P16746467854409341260

namespace A080955

/-- `A134558(A061579(n))` -/
def P16746467854409341260.Spec : Prop :=
  ∀ n, P16746467854409341260.a n = A080955 n

end A080955

/-!
# A080956: a(n) = (n+1)*(2-n)/2.

The programs for A080956, the canonical program `A080956.P12689175688767201437` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080956 has offset 0).

The definition of A080956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2-n)/2` (program `A080956.P12720933183541286972`, by `A080956.P12720933183541286972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080956.P12720933183541286972

`(n+1)*(2-n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080956.P12720933183541286972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 - (n : ℤ)) : ℚ) / 2

end

end A080956.P12720933183541286972

namespace A080956

/-- `(n+1)*(2-n)/2` -/
def P12720933183541286972.Spec : Prop :=
  ∀ n, P12720933183541286972.a n = (A080956 n : ℚ)

theorem P12720933183541286972.correct : P12720933183541286972.Spec := by
  intro n
  simp only [A080956, Nat.add_sub_cancel, A080956.P12720933183541286972.a, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080956

/-! ## A080956.P12689175688767201437

`n+1-A000217(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080956

/-- `n+1-A000217(n)` -/
def P12689175688767201437.Spec : Prop :=
  ∀ n, P12689175688767201437.a n = A080956 n

theorem P12689175688767201437.correct : P12689175688767201437.Spec := by
  intro n
  simp only [A080956]

end A080956

/-! ## A080956.P12480332523455531905

`1-C(n, 2)`
-/

namespace A080956.P12480332523455531905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n 2 : ℤ)

end

end A080956.P12480332523455531905

namespace A080956

/-- `1-C(n, 2)` -/
def P12480332523455531905.Spec : Prop :=
  ∀ n, P12480332523455531905.a n = A080956 n

theorem P12480332523455531905.correct : P12480332523455531905.Spec := by
  intro n
  simp only [A080956, Nat.add_sub_cancel, A080956.P12480332523455531905.a, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080956

/-! ## A080956.P15139730063201689507

`Δ[-C(n, 3)]+1`
-/

namespace A080956.P15139730063201689507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A080956.P15139730063201689507

namespace A080956

/-- `Δ[-C(n, 3)]+1` -/
def P15139730063201689507.Spec : Prop :=
  ∀ n, P15139730063201689507.a n = A080956 n

theorem P15139730063201689507.correct : P15139730063201689507.Spec := by
  intro n
  simp only [A080956, Nat.add_sub_cancel, A080956.P15139730063201689507.f1, A080956.P15139730063201689507.a, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080956

/-! ## A080956.P18173182012353806813

`-∑[xor(-1, -n)]`
-/

namespace A080956.P18173182012353806813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080956.P18173182012353806813

namespace A080956

/-- `-∑[xor(-1, -n)]` -/
def P18173182012353806813.Spec : Prop :=
  ∀ n, P18173182012353806813.a n = A080956 n

end A080956

/-! ## A080956.P301182524458773652

`xor(-1, C(n, 2))+2`
-/

namespace A080956.P301182524458773652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (Nat.choose n 2 : ℤ) + 2

end

end A080956.P301182524458773652

namespace A080956

/-- `xor(-1, C(n, 2))+2` -/
def P301182524458773652.Spec : Prop :=
  ∀ n, P301182524458773652.a n = A080956 n

end A080956

/-! ## A080956.P7541790109876602495

`-xor(-1, -C(n, 2))`
-/

namespace A080956.P7541790109876602495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (-(Nat.choose n 2 : ℤ))

end

end A080956.P7541790109876602495

namespace A080956

/-- `-xor(-1, -C(n, 2))` -/
def P7541790109876602495.Spec : Prop :=
  ∀ n, P7541790109876602495.a n = A080956 n

end A080956

/-! ## A080956.P8499293657603140957

`-∑[or(n, -1)+n]`
-/

namespace A080956.P8499293657603140957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080956.P8499293657603140957

namespace A080956

/-- `-∑[or(n, -1)+n]` -/
def P8499293657603140957.Spec : Prop :=
  ∀ n, P8499293657603140957.a n = A080956 n

end A080956

/-! ## A080956.P12194625365547995796

`∑[ogf((1-2x)/(1-2x+x^2))]`
-/

namespace A080956.P12194625365547995796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080956.P12194625365547995796

namespace A080956

/-- `∑[ogf((1-2x)/(1-2x+x^2))]` -/
def P12194625365547995796.Spec : Prop :=
  ∀ n, P12194625365547995796.a n = A080956 n

end A080956

/-! ## A080956.P6694428441447204122

`ogf((1-2x)/(1-3x+3x^2-x^3))`
-/

namespace A080956.P6694428441447204122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, 3, -1] n

end

end A080956.P6694428441447204122

namespace A080956

/-- `ogf((1-2x)/(1-3x+3x^2-x^3))` -/
def P6694428441447204122.Spec : Prop :=
  ∀ n, P6694428441447204122.a n = A080956 n

end A080956

/-! ## A080956.P2264473174906035268

`1-lcm(n, 1-n)/2`
-/

namespace A080956.P2264473174906035268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Int.lcm (n : ℤ) (1 - (n : ℤ)) : ℚ) / 2

end

end A080956.P2264473174906035268

namespace A080956

/-- `1-lcm(n, 1-n)/2` -/
def P2264473174906035268.Spec : Prop :=
  ∀ n, P2264473174906035268.a n = (A080956 n : ℚ)

end A080956

/-! ## A080956.P14222410415554901481

`1+a(n-1)-n` with `a(0)=1`
-/

namespace A080956.P14222410415554901481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + (a (n - 1) - (n : ℤ))

end

end A080956.P14222410415554901481

namespace A080956

/-- `1+a(n-1)-n` -/
def P14222410415554901481.Spec : Prop :=
  ∀ n, P14222410415554901481.a n = A080956 n

end A080956

/-! ## A080956.P10371708228444877773

`1-(n-a(n-1))` with `a(0)=1`
-/

namespace A080956.P10371708228444877773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((n : ℤ) - a (n - 1))

end

end A080956.P10371708228444877773

namespace A080956

/-- `1-(n-a(n-1))` -/
def P10371708228444877773.Spec : Prop :=
  ∀ n, P10371708228444877773.a n = A080956 n

end A080956

/-! ## A080956.P11619282708516976078

`-(∑[n-1]%((n+2)^10))`
-/

namespace A080956.P11619282708516976078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 2) ^ 10 : ℤ)

end

end A080956.P11619282708516976078

namespace A080956

/-- `-(∑[n-1]%((n+2)^10))` -/
def P11619282708516976078.Spec : Prop :=
  ∀ n, P11619282708516976078.a n = A080956 n

end A080956

/-! ## A080956.P8371739661019777173

`-((n-2)*record[abs((n-1)/2)])`
-/

namespace A080956.P8371739661019777173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1 : ℚ) / 2|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A080956.P8371739661019777173

namespace A080956

/-- `-((n-2)*record[abs((n-1)/2)])` -/
def P8371739661019777173.Spec : Prop :=
  ∀ n, P8371739661019777173.a n = (A080956 n : ℚ)

end A080956

/-! ## A080956.P91936541341485433

`∑[-n]%(n+1)²+n+1`
-/

namespace A080956.P91936541341485433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2 : ℤ) + (n + 1 : ℤ)

end

end A080956.P91936541341485433

namespace A080956

/-- `∑[-n]%(n+1)²+n+1` -/
def P91936541341485433.Spec : Prop :=
  ∀ n, P91936541341485433.a n = A080956 n

end A080956

/-! ## A080956.P7839098352382325734

`∑[gcd(2, (2*n+1)²²²)-n]`
-/

namespace A080956.P7839098352382325734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 ((((2 * n + 1) ^ 2) ^ 2) ^ 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080956.P7839098352382325734

namespace A080956

/-- `∑[gcd(2, (2*n+1)²²²)-n]` -/
def P7839098352382325734.Spec : Prop :=
  ∀ n, P7839098352382325734.a n = A080956 n

end A080956

/-! ## A080956.P10724290908183547371

`∑[and(1, (2*n+1)²²²)-n]`
-/

namespace A080956.P10724290908183547371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 ((((2 * n + 1) ^ 2) ^ 2) ^ 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080956.P10724290908183547371

namespace A080956

/-- `∑[and(1, (2*n+1)²²²)-n]` -/
def P10724290908183547371.Spec : Prop :=
  ∀ n, P10724290908183547371.a n = A080956 n

end A080956

/-! ## A080956.P8009991325424663019

`1-A161680(n)`
-/

namespace A080956.P8009991325424663019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A161680 n

end

end A080956.P8009991325424663019

namespace A080956

/-- `1-A161680(n)` -/
def P8009991325424663019.Spec : Prop :=
  ∀ n, P8009991325424663019.a n = A080956 n

theorem P8009991325424663019.correct : P8009991325424663019.Spec := by
  intro n
  simp only [A080956, Nat.add_sub_cancel, A080956.P8009991325424663019.a, A080956.P12689175688767201437.a, A000217, A000217.P10269402890581615239.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A080956

/-! ## A080956.P1872574222179751886

`-∑[A023443(n)]`
-/

namespace A080956.P1872574222179751886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080956.P1872574222179751886

namespace A080956

/-- `-∑[A023443(n)]` -/
def P1872574222179751886.Spec : Prop :=
  ∀ n, P1872574222179751886.a n = A080956 n

end A080956

/-!
# A080957: Expansion of (5 - 9*x + 6*x^2)/(1-x)^4.

The programs for A080957, the canonical program `A080957.P6133427801124232236` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080957 has offset 0).

The definition of A080957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-9x+6x^2)/(1-4x+6x^2-4x^3+x^4))` (program `A080957.P6133427801124232236`, by `A080957.P6133427801124232236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080957.P6133427801124232236

`ogf((5-9x+6x^2)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080957

/-- `ogf((5-9x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6133427801124232236.Spec : Prop :=
  ∀ n, P6133427801124232236.a n = A080957 n

theorem P6133427801124232236.correct : P6133427801124232236.Spec := by
  intro n
  simp only [A080957]

end A080957

/-! ## A080957.P11856294251226448600

`(2*n^3+3*n²+31*n+30)/6`
-/

namespace A080957.P11856294251226448600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + 3 * n ^ 2 + 31 * n + 30 : ℚ) / 6

end

end A080957.P11856294251226448600

namespace A080957

/-- `(2*n^3+3*n²+31*n+30)/6` -/
def P11856294251226448600.Spec : Prop :=
  ∀ n, P11856294251226448600.a n = (A080957 n : ℚ)

end A080957

/-! ## A080957.P8136966303554748193

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=5, a(1)=11, a(2)=20, a(3)=34`
-/

namespace A080957.P8136966303554748193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 11, 20, 34] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A080957.P8136966303554748193

namespace A080957

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8136966303554748193.Spec : Prop :=
  ∀ n, P8136966303554748193.a n = A080957 n

end A080957

/-! ## A080957.P17978318893972702300

`∑[or(2, n²)+3]`
-/

namespace A080957.P17978318893972702300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n ^ 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080957.P17978318893972702300

namespace A080957

/-- `∑[or(2, n²)+3]` -/
def P17978318893972702300.Spec : Prop :=
  ∀ n, (P17978318893972702300.a n : ℤ) = A080957 n

end A080957

/-! ## A080957.P1205766732902829588

`∑[xor(2, n²)+3]`
-/

namespace A080957.P1205766732902829588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n ^ 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080957.P1205766732902829588

namespace A080957

/-- `∑[xor(2, n²)+3]` -/
def P1205766732902829588.Spec : Prop :=
  ∀ n, (P1205766732902829588.a n : ℤ) = A080957 n

end A080957

/-! ## A080957.P2125724815947078199

`∑[2-xor(-3, n²)]`
-/

namespace A080957.P2125724815947078199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor (-3) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080957.P2125724815947078199

namespace A080957

/-- `∑[2-xor(-3, n²)]` -/
def P2125724815947078199.Spec : Prop :=
  ∀ n, P2125724815947078199.a n = A080957 n

end A080957

/-! ## A080957.P15226939488178200555

`∑[∑[a(n-1)+2]]` with `a(0)=5, a(1)=1`
-/

namespace A080957.P15226939488178200555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080957.P15226939488178200555

namespace A080957

/-- `∑[∑[a(n-1)+2]]` -/
def P15226939488178200555.Spec : Prop :=
  ∀ n, (P15226939488178200555.a n : ℤ) = A080957 n

end A080957

/-! ## A080957.P17127265121153591156

`a(n-1)+n²+5` with `a(0)=5`
-/

namespace A080957.P17127265121153591156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (n ^ 2 + 5)

end

end A080957.P17127265121153591156

namespace A080957

/-- `a(n-1)+n²+5` -/
def P17127265121153591156.Spec : Prop :=
  ∀ n, (P17127265121153591156.a n : ℤ) = A080957 n

end A080957

/-! ## A080957.P7465271289734630978

`∑[6-∑[a(n-1)-2]]` with `a(0)=1`
-/

namespace A080957.P7465271289734630978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080957.P7465271289734630978

namespace A080957

/-- `∑[6-∑[a(n-1)-2]]` -/
def P7465271289734630978.Spec : Prop :=
  ∀ n, P7465271289734630978.a n = A080957 n

end A080957

/-! ## A080957.P4995250829522180979

`∑[n^(2%(n+1))+5]-1`
-/

namespace A080957.P4995250829522180979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A080957.P4995250829522180979

namespace A080957

/-- `∑[n^(2%(n+1))+5]-1` -/
def P4995250829522180979.Spec : Prop :=
  ∀ n, P4995250829522180979.a n = A080957 n

end A080957

/-! ## A080957.P12267142534358574220

`a(n-1)+n^(4/2)+5` with `a(0)=5`
-/

namespace A080957.P12267142534358574220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (n : ℝ) ^ ((4 : ℚ) / 2 : ℝ) + 5

end

end A080957.P12267142534358574220

namespace A080957

/-- `a(n-1)+n^(4/2)+5` -/
def P12267142534358574220.Spec : Prop :=
  ∀ n, P12267142534358574220.a n = (A080957 n : ℝ)

end A080957

/-! ## A080957.P2841172652496851616

`n*((a(n-1)+5)/n+n)` with `a(0)=5`
-/

namespace A080957.P2841172652496851616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℚ) * ((a (n - 1) + 5) / (n : ℚ) + (n : ℚ))

end

end A080957.P2841172652496851616

namespace A080957

/-- `n*((a(n-1)+5)/n+n)` -/
def P2841172652496851616.Spec : Prop :=
  ∀ n, P2841172652496851616.a n = (A080957 n : ℚ)

end A080957

/-! ## A080957.P3903392892841150054

`∑[n+3]+∑[lcm(n, n-1)+2]`
-/

namespace A080957.P3903392892841150054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A080957.P3903392892841150054

namespace A080957

/-- `∑[n+3]+∑[lcm(n, n-1)+2]` -/
def P3903392892841150054.Spec : Prop :=
  ∀ n, (P3903392892841150054.a n : ℤ) = A080957 n

end A080957

/-! ## A080957.P14203362734650923748

`5-n+a(n-1)+n*(n+1)` with `a(0)=5`
-/

namespace A080957.P14203362734650923748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  5 - (n : ℤ) + (a (n - 1) + (n * (n + 1) : ℤ))

end

end A080957.P14203362734650923748

namespace A080957

/-- `5-n+a(n-1)+n*(n+1)` -/
def P14203362734650923748.Spec : Prop :=
  ∀ n, P14203362734650923748.a n = A080957 n

end A080957

/-! ## A080957.P7694631649278730066

`C(n, 3)+1+∑[∑[n+1]]+3*(n+1)`
-/

namespace A080957.P7694631649278730066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 1 + (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 1))

end

end A080957.P7694631649278730066

namespace A080957

/-- `C(n, 3)+1+∑[∑[n+1]]+3*(n+1)` -/
def P7694631649278730066.Spec : Prop :=
  ∀ n, (P7694631649278730066.a n : ℤ) = A080957 n

end A080957

/-! ## A080957.P17663444784684741039

`∑[A117951(n)]`
-/

namespace A080957.P17663444784684741039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080957.P17663444784684741039

namespace A080957

/-- `∑[A117951(n)]` -/
def P17663444784684741039.Spec : Prop :=
  ∀ n, P17663444784684741039.a n = A080957 n

end A080957

/-! ## A080957.P5705517882355649209

`∑[A027690(n)]-∑[n]`
-/

namespace A080957.P5705517882355649209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027690 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A080957.P5705517882355649209

namespace A080957

/-- `∑[A027690(n)]-∑[n]` -/
def P5705517882355649209.Spec : Prop :=
  ∀ n, P5705517882355649209.a n = A080957 n

end A080957

/-! ## A080957.P13287598042895439151

`∑[A087475(n)]+n+1`
-/

namespace A080957.P13287598042895439151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A080957.P13287598042895439151

namespace A080957

/-- `∑[A087475(n)]+n+1` -/
def P13287598042895439151.Spec : Prop :=
  ∀ n, P13287598042895439151.a n = A080957 n

end A080957

/-! ## A080957.P11179616065465357833

`∑[A114949(n)]-(n+1)`
-/

namespace A080957.P11179616065465357833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A080957.P11179616065465357833

namespace A080957

/-- `∑[A114949(n)]-(n+1)` -/
def P11179616065465357833.Spec : Prop :=
  ∀ n, P11179616065465357833.a n = A080957 n

end A080957

/-! ## A080957.P2424249693273498460

`5*(n+1)+A000330(n)`
-/

namespace A080957.P2424249693273498460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) + A000330 n

end

end A080957.P2424249693273498460

namespace A080957

/-- `5*(n+1)+A000330(n)` -/
def P2424249693273498460.Spec : Prop :=
  ∀ n, P2424249693273498460.a n = A080957 n

end A080957

/-!
# A080958: a(n) = n!*(2/1 - 3/2 + 4/3 - ... + s*(n+1)/n), where s = (-1)^(n+1).

The programs for A080958, there is no canonical definition to state claims against.
-/

/-! ## A080958.P111824390538671478

`A024167(n+1)+A005212(n+1)`
-/

namespace A080958.P111824390538671478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (n + 1) + A005212 (n + 1)

end

end A080958.P111824390538671478

/-! ## A080958.P7867671080946617579

`A080959(∑[n+2])`
-/

namespace A080958.P7867671080946617579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080958.P7867671080946617579

/-! ## A080958.P3205792399951648012

`abs(A080959(A000096(n+1)))`
-/

namespace A080958.P3205792399951648012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080959 (A000096 (n + 1)).toNat|

end

end A080958.P3205792399951648012

/-! ## A080958.P11642748441847778803

`abs(A080959(A175631(n+4)))`
-/

namespace A080958.P11642748441847778803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080959 (A175631 (n + 4)).toNat|

end

end A080958.P11642748441847778803

/-!
# A080960: Third binomial transform of A010685 (period 2: repeat 1,4).

The programs for A080960, the canonical program `A080960.P2807387016929356554` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080960 has offset 0).

The definition of A080960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080960.P2807387016929356554

`2^(n-1)*(5*2^n-3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080960

/-- `2^(n-1)*(5*2^n-3)` -/
def P2807387016929356554.Spec : Prop :=
  ∀ n, P2807387016929356554.a n = (A080960 n : ℚ)

end A080960

/-! ## A080960.P13947235659386001601

`ogf((1+x)/(1-6x+8x^2))`
-/

namespace A080960.P13947235659386001601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 8] n

end

end A080960.P13947235659386001601

namespace A080960

/-- `ogf((1+x)/(1-6x+8x^2))` -/
def P13947235659386001601.Spec : Prop :=
  ∀ n, P13947235659386001601.a n = A080960 n

end A080960

/-! ## A080960.P1261618553232986186

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A080960.P1261618553232986186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A080960.P1261618553232986186

namespace A080960

/-- `6*a(n-1)-8*a(n-2)` -/
def P1261618553232986186.Spec : Prop :=
  ∀ n, P1261618553232986186.a n = A080960 n

end A080960

/-! ## A080960.P9471399265606255149

`∑[A171475(n)]`
-/

namespace A080960.P9471399265606255149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080960.P9471399265606255149

namespace A080960

/-- `∑[A171475(n)]` -/
def P9471399265606255149.Spec : Prop :=
  ∀ n, P9471399265606255149.a n = A080960 n

end A080960

/-! ## A080960.P17418430265033550932

`A020522(n)+A010036(n)`
-/

namespace A080960.P17418430265033550932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n + A010036 n

end

end A080960.P17418430265033550932

namespace A080960

/-- `A020522(n)+A010036(n)` -/
def P17418430265033550932.Spec : Prop :=
  ∀ n, P17418430265033550932.a n = A080960 n

end A080960

/-! ## A080960.P15284377683315035923

`A171476(n)+A006516(n)`
-/

namespace A080960.P15284377683315035923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n + A006516 n

end

end A080960.P15284377683315035923

namespace A080960

/-- `A171476(n)+A006516(n)` -/
def P15284377683315035923.Spec : Prop :=
  ∀ n, P15284377683315035923.a n = A080960 n

end A080960

/-! ## A080960.P17268662661090904873

`A134057(n)+A083420(n)`
-/

namespace A080960.P17268662661090904873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 n + A083420 n

end

end A080960.P17268662661090904873

namespace A080960

/-- `A134057(n)+A083420(n)` -/
def P17268662661090904873.Spec : Prop :=
  ∀ n, P17268662661090904873.a n = A080960 n

end A080960

/-! ## A080960.P5265256422535727470

`A134169(n)+A129868(n)`
-/

namespace A080960.P5265256422535727470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n + A129868 n

end

end A080960.P5265256422535727470

namespace A080960

/-- `A134169(n)+A129868(n)` -/
def P5265256422535727470.Spec : Prop :=
  ∀ n, P5265256422535727470.a n = A080960 n

end A080960

/-! ## A080960.P2315066908420690633

`A081193(n)-A020522(n)`
-/

namespace A080960.P2315066908420690633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081193 n - A020522 n

end

end A080960.P2315066908420690633

namespace A080960

/-- `A081193(n)-A020522(n)` -/
def P2315066908420690633.Spec : Prop :=
  ∀ n, P2315066908420690633.a n = A080960 n

end A080960

/-! ## A080960.P16472716412467416960

`A165665(n)-A006516(n)`
-/

namespace A080960.P16472716412467416960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165665 n - A006516 n

end

end A080960.P16472716412467416960

namespace A080960

/-- `A165665(n)-A006516(n)` -/
def P16472716412467416960.Spec : Prop :=
  ∀ n, P16472716412467416960.a n = A080960 n

end A080960

/-! ## A080960.P15797057326955634242

`A171477(n)-A006095(n)`
-/

namespace A080960.P15797057326955634242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171477 n - A006095 n

end

end A080960.P15797057326955634242

namespace A080960

/-- `A171477(n)-A006095(n)` -/
def P15797057326955634242.Spec : Prop :=
  ∀ n, P15797057326955634242.a n = A080960 n

end A080960

/-! ## A080960.P11308706240898771096

`A169726(n)-A134057(n)`
-/

namespace A080960.P11308706240898771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169726 n - A134057 n

end

end A080960.P11308706240898771096

namespace A080960

/-- `A169726(n)-A134057(n)` -/
def P11308706240898771096.Spec : Prop :=
  ∀ n, P11308706240898771096.a n = A080960 n

end A080960

/-! ## A080960.P8929209530886172363

`A164346(n)-A257273(n)`
-/

namespace A080960.P8929209530886172363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n - A257273 n

end

end A080960.P8929209530886172363

namespace A080960

/-- `A164346(n)-A257273(n)` -/
def P8929209530886172363.Spec : Prop :=
  ∀ n, P8929209530886172363.a n = A080960 n

end A080960

/-! ## A080960.P7279953883733113186

`Δ[A020515(n)-A076024(n)]`
-/

namespace A080960.P7279953883733113186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 n - A076024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080960.P7279953883733113186

namespace A080960

/-- `Δ[A020515(n)-A076024(n)]` -/
def P7279953883733113186.Spec : Prop :=
  ∀ n, P7279953883733113186.a n = A080960 n

end A080960

/-! ## A080960.P522598225073646289

`A006516(n+1)+A006516(n)`
-/

namespace A080960.P522598225073646289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) + A006516 n

end

end A080960.P522598225073646289

namespace A080960

/-- `A006516(n+1)+A006516(n)` -/
def P522598225073646289.Spec : Prop :=
  ∀ n, P522598225073646289.a n = A080960 n

end A080960

/-! ## A080960.P10599626352133078711

`A169720(n)-A134057(n+1)`
-/

namespace A080960.P10599626352133078711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169720 n - A134057 (n + 1)

end

end A080960.P10599626352133078711

namespace A080960

/-- `A169720(n)-A134057(n+1)` -/
def P10599626352133078711.Spec : Prop :=
  ∀ n, P10599626352133078711.a n = A080960 n

end A080960

/-! ## A080960.P5966596538845779152

`A006095(n+2)-A006095(n)`
-/

namespace A080960.P5966596538845779152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2) - A006095 n

end

end A080960.P5966596538845779152

namespace A080960

/-- `A006095(n+2)-A006095(n)` -/
def P5966596538845779152.Spec : Prop :=
  ∀ n, P5966596538845779152.a n = A080960 n

end A080960

/-! ## A080960.P1982197710917806763

`A140660(n)-A028401(n+2)`
-/

namespace A080960.P1982197710917806763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140660 n - A028401 (n + 2)

end

end A080960.P1982197710917806763

namespace A080960

/-- `A140660(n)-A028401(n+2)` -/
def P1982197710917806763.Spec : Prop :=
  ∀ n, P1982197710917806763.a n = A080960 n

end A080960

/-! ## A080960.P6984767561210965908

`A171499(n)-A049775(n+2)`
-/

namespace A080960.P6984767561210965908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171499 n - A049775 (n + 2)

end

end A080960.P6984767561210965908

namespace A080960

/-- `A171499(n)-A049775(n+2)` -/
def P6984767561210965908.Spec : Prop :=
  ∀ n, P6984767561210965908.a n = A080960 n

end A080960

/-! ## A080960.P6336742606197622514

`A233411(2*n)+A010036(n)`
-/

namespace A080960.P6336742606197622514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 (2 * n) + A010036 n

end

end A080960.P6336742606197622514

namespace A080960

/-- `A233411(2*n)+A010036(n)` -/
def P6336742606197622514.Spec : Prop :=
  ∀ n, P6336742606197622514.a n = A080960 n

end A080960

/-!
# A080961: Fourth binomial transform of A010686 (period 2: repeat 1,5).

The programs for A080961, the canonical program `A080961.P1114474454142421684` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080961 has offset 0).

The definition of A080961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080961.P1114474454142421684

`3*5^n-2*3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080961

/-- `3*5^n-2*3^n` -/
def P1114474454142421684.Spec : Prop :=
  ∀ n, P1114474454142421684.a n = A080961 n

theorem P1114474454142421684.correct : P1114474454142421684.Spec := by
  intro n
  simp only [A080961]

end A080961

/-! ## A080961.P5586233408379933023

`ogf((1+x)/(1-8x+15x^2))`
-/

namespace A080961.P5586233408379933023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, 15] n

end

end A080961.P5586233408379933023

namespace A080961

/-- `ogf((1+x)/(1-8x+15x^2))` -/
def P5586233408379933023.Spec : Prop :=
  ∀ n, P5586233408379933023.a n = A080961 n

end A080961

/-! ## A080961.P1891478635204455942

`Δ[A007798(n)+A005059(n)]`
-/

namespace A080961.P1891478635204455942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + A005059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P1891478635204455942

namespace A080961

/-- `Δ[A007798(n)+A005059(n)]` -/
def P1891478635204455942.Spec : Prop :=
  ∀ n, P1891478635204455942.a n = A080961 n

end A080961

/-! ## A080961.P16193294481595803016

`Δ[A005058(n)-A003463(n)]`
-/

namespace A080961.P16193294481595803016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P16193294481595803016

namespace A080961

/-- `Δ[A005058(n)-A003463(n)]` -/
def P16193294481595803016.Spec : Prop :=
  ∀ n, P16193294481595803016.a n = A080961 n

end A080961

/-! ## A080961.P16866031652573489217

`Δ[A083065(n)-A000244(n)]`
-/

namespace A080961.P16866031652573489217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083065 n - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P16866031652573489217

namespace A080961

/-- `Δ[A083065(n)-A000244(n)]` -/
def P16866031652573489217.Spec : Prop :=
  ∀ n, P16866031652573489217.a n = A080961 n

end A080961

/-! ## A080961.P14801467729188742816

`Δ[A125833(n)-A000244(n)]`
-/

namespace A080961.P14801467729188742816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 n - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P14801467729188742816

namespace A080961

/-- `Δ[A125833(n)-A000244(n)]` -/
def P14801467729188742816.Spec : Prop :=
  ∀ n, P14801467729188742816.a n = A080961 n

end A080961

/-! ## A080961.P1705547299070331187

`Δ[A125833(n)-A034472(n)]`
-/

namespace A080961.P1705547299070331187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125833 n - A034472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P1705547299070331187

namespace A080961

/-- `Δ[A125833(n)-A034472(n)]` -/
def P1705547299070331187.Spec : Prop :=
  ∀ n, P1705547299070331187.a n = A080961 n

end A080961

/-! ## A080961.P6567802268248096965

`∑[2*A003948(n)-A003946(n)]`
-/

namespace A080961.P6567802268248096965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003948 n - A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080961.P6567802268248096965

namespace A080961

/-- `∑[2*A003948(n)-A003946(n)]` -/
def P6567802268248096965.Spec : Prop :=
  ∀ n, P6567802268248096965.a n = A080961 n

end A080961

/-! ## A080961.P13900189668422470573

`Δ[A003463(n)+2*A007798(n)]`
-/

namespace A080961.P13900189668422470573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + 2 * A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P13900189668422470573

namespace A080961

/-- `Δ[A003463(n)+2*A007798(n)]` -/
def P13900189668422470573.Spec : Prop :=
  ∀ n, P13900189668422470573.a n = A080961 n

end A080961

/-! ## A080961.P15569623352497998996

`Δ[A047850(n)+2*A007798(n)]`
-/

namespace A080961.P15569623352497998996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n + 2 * A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P15569623352497998996

namespace A080961

/-- `Δ[A047850(n)+2*A007798(n)]` -/
def P15569623352497998996.Spec : Prop :=
  ∀ n, P15569623352497998996.a n = A080961 n

end A080961

/-! ## A080961.P12247608243951535262

`Δ[A007798(n)+A155610(n)/2]`
-/

namespace A080961.P12247608243951535262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007798 n : ℚ) + (A155610 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P12247608243951535262

namespace A080961

/-- `Δ[A007798(n)+A155610(n)/2]` -/
def P12247608243951535262.Spec : Prop :=
  ∀ n, P12247608243951535262.a n = (A080961 n : ℚ)

end A080961

/-! ## A080961.P13896055859928099702

`Δ[A121177(n+1)+A007798(n)-A003462(n)]`
-/

namespace A080961.P13896055859928099702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + (A007798 n - A003462 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P13896055859928099702

namespace A080961

/-- `Δ[A121177(n+1)+A007798(n)-A003462(n)]` -/
def P13896055859928099702.Spec : Prop :=
  ∀ n, P13896055859928099702.a n = A080961 n

end A080961

/-! ## A080961.P11995620418984648644

`Δ[Δ[A007798(n)]-A003463(n)]`
-/

namespace A080961.P11995620418984648644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P11995620418984648644

namespace A080961

/-- `Δ[Δ[A007798(n)]-A003463(n)]` -/
def P11995620418984648644.Spec : Prop :=
  ∀ n, P11995620418984648644.a n = A080961 n

end A080961

/-! ## A080961.P2322145861180346881

`Δ[Δ[A007798(n)]-A047850(n)]`
-/

namespace A080961.P2322145861180346881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P2322145861180346881

namespace A080961

/-- `Δ[Δ[A007798(n)]-A047850(n)]` -/
def P2322145861180346881.Spec : Prop :=
  ∀ n, P2322145861180346881.a n = A080961 n

end A080961

/-! ## A080961.P242933582432240568

`Δ[A007798(n)+A226511(n)/3]`
-/

namespace A080961.P242933582432240568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007798 n : ℚ) + (A226511 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080961.P242933582432240568

namespace A080961

/-- `Δ[A007798(n)+A226511(n)/3]` -/
def P242933582432240568.Spec : Prop :=
  ∀ n, P242933582432240568.a n = (A080961 n : ℚ)

end A080961

/-! ## A080961.P7378292934807700852

`(A003948(n+1)-A003946(n+1))/2`
-/

namespace A080961.P7378292934807700852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003948 (n + 1) - A003946 (n + 1) : ℚ) / 2

end

end A080961.P7378292934807700852

namespace A080961

/-- `(A003948(n+1)-A003946(n+1))/2` -/
def P7378292934807700852.Spec : Prop :=
  ∀ n, P7378292934807700852.a n = (A080961 n : ℚ)

end A080961

/-!
# A080962: 5th binomial transform of the periodic sequence (1,6,1,1,6,1...).

The programs for A080962, the canonical program `A080962.P6542042905563032640` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080962 has offset 0).

The definition of A080962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080962.P6542042905563032640

`7/2*6^n-5/2*4^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A080962

/-- `7/2*6^n-5/2*4^n` -/
def P6542042905563032640.Spec : Prop :=
  ∀ n, P6542042905563032640.a n = (A080962 n : ℚ)

end A080962

/-! ## A080962.P17863639555997278248

`ogf((1+x)/(1-10x+24x^2))`
-/

namespace A080962.P17863639555997278248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -10, 24] n

end

end A080962.P17863639555997278248

namespace A080962

/-- `ogf((1+x)/(1-10x+24x^2))` -/
def P17863639555997278248.Spec : Prop :=
  ∀ n, P17863639555997278248.a n = A080962 n

end A080962

/-! ## A080962.P5175330073254897633

`Δ[∑[A248337(n)]-A081199(n)]`
-/

namespace A080962.P5175330073254897633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A081199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080962.P5175330073254897633

namespace A080962

/-- `Δ[∑[A248337(n)]-A081199(n)]` -/
def P5175330073254897633.Spec : Prop :=
  ∀ n, P5175330073254897633.a n = A080962 n

end A080962

/-! ## A080962.P8796443720501551950

`(A003949(n+1)-A003947(n+1))/2`
-/

namespace A080962.P8796443720501551950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003949 (n + 1) - A003947 (n + 1) : ℚ) / 2

end

end A080962.P8796443720501551950

namespace A080962

/-- `(A003949(n+1)-A003947(n+1))/2` -/
def P8796443720501551950.Spec : Prop :=
  ∀ n, P8796443720501551950.a n = (A080962 n : ℚ)

end A080962

/-! ## A080962.P13568525486024254597

`lcm(A081199(n)+A016149(n), A011782(n))`
-/

namespace A080962.P13568525486024254597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081199 n + A016149 n) (A011782 n)

end

end A080962.P13568525486024254597

namespace A080962

/-- `lcm(A081199(n)+A016149(n), A011782(n))` -/
def P13568525486024254597.Spec : Prop :=
  ∀ n, (P13568525486024254597.a n : ℤ) = A080962 n

end A080962

/-! ## A080962.P18345574095533439615

`or(A081199(n)+A016149(n), A131577(n))`
-/

namespace A080962.P18345574095533439615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081199 n + A016149 n) (A131577 n)

end

end A080962.P18345574095533439615

namespace A080962

/-- `or(A081199(n)+A016149(n), A131577(n))` -/
def P18345574095533439615.Spec : Prop :=
  ∀ n, P18345574095533439615.a n = A080962 n

end A080962

/-!
# A080963: Expansion of theta_3(q)*theta_3(q^2)*theta_4(q^8) in powers of q.

The programs for A080963, there is no canonical definition to state claims against.
-/

/-! ## A080963.P2249321957317314991

`2*A080918(n)-A080917(n)`
-/

namespace A080963.P2249321957317314991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 n - A080917 n

end

end A080963.P2249321957317314991

/-! ## A080963.P6798908686064890323

`A005843(A080918(n))-A080917(n)`
-/

namespace A080963.P6798908686064890323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A080918 n).toNat - A080917 n

end

end A080963.P6798908686064890323

/-! ## A080963.P13210192538573294396

`A080918(n)+A001489(A080917(n)-A080918(n))`
-/

namespace A080963.P13210192538573294396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080918 n + A001489 (A080917 n - A080918 n).toNat

end

end A080963.P13210192538573294396

/-! ## A080963.P7164689730802306556

`A005843(A080918(n))+A001489(A080917(n)+1)+1`
-/

namespace A080963.P7164689730802306556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A080918 n).toNat + A001489 (A080917 n + 1).toNat + 1

end

end A080963.P7164689730802306556

/-! ## A080963.P7338867471889357121

`2*A080918(n)-A080918(A008586(n))`
-/

namespace A080963.P7338867471889357121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080918 n - A080918 (A008586 n).toNat

end

end A080963.P7338867471889357121

/-! ## A080963.P11350916774378626298

`A005843(A080918(n))-A080918(4*n)`
-/

namespace A080963.P11350916774378626298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A080918 n).toNat - A080918 (4 * n)

end

end A080963.P11350916774378626298

/-!
# A080964: Euler transform of period-16 sequence [2,-3,2,1,2,-3,2,-6,2,-3,2,1,2,-3,2,-3,...].

The programs for A080964, there is no canonical definition to state claims against.
-/

/-! ## A080964.P6401137067554535444

`2*A072071(n)-A072070(n)`
-/

namespace A080964.P6401137067554535444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072071 n - A072070 n

end

end A080964.P6401137067554535444

/-! ## A080964.P2745375772094583595

`A005843(A072071(n))-A072070(n)`
-/

namespace A080964.P2745375772094583595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072071 n).toNat - A072070 n

end

end A080964.P2745375772094583595

/-! ## A080964.P275095799176837630

`A005843(A072071(n))-A033717(n)*A133872(n)`
-/

namespace A080964.P275095799176837630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072071 n).toNat - A033717 n * A133872 n

end

end A080964.P275095799176837630

/-! ## A080964.P1248881448287057525

`2*A072071(n)-A080917(A047481(n+1))`
-/

namespace A080964.P1248881448287057525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072071 n - A080917 (A047481 (n + 1)).toNat

end

end A080964.P1248881448287057525

/-! ## A080964.P361495135377512337

`A005843(A072071(n))-A080917(A047481(n+1))`
-/

namespace A080964.P361495135377512337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072071 n).toNat - A080917 (A047481 (n + 1)).toNat

end

end A080964.P361495135377512337

/-!
# A080965: Expansion of eta(q^2)^12/(eta(q)^4eta(q^4)^5) in powers of q.

The programs for A080965, there is no canonical definition to state claims against.
-/

/-! ## A080965.P13024211878328550176

`A033999(n)*A083703(n)`
-/

namespace A080965.P13024211878328550176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083703 n

end

end A080965.P13024211878328550176

/-! ## A080965.P8305070290868809989

`(A004442(n)-n)*A083703(n)`
-/

namespace A080965.P8305070290868809989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A083703 n

end

end A080965.P8305070290868809989

/-! ## A080965.P16414889142971465902

`A080964(4*n)`
-/

namespace A080965.P16414889142971465902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080964 (4 * n)

end

end A080965.P16414889142971465902

/-! ## A080965.P7973798029836132104

`A057079(A016789(n))*A083703(n)`
-/

namespace A080965.P7973798029836132104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A016789 n).toNat * A083703 n

end

end A080965.P7973798029836132104

/-! ## A080965.P18274036512995094475

`2*A072071(4*n)-A072070(4*n)`
-/

namespace A080965.P18274036512995094475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072071 (4 * n) - A072070 (4 * n)

end

end A080965.P18274036512995094475

/-!
# A080966: Expansion of theta_4(q^2) * theta_2(q)^2/(4*q^(1/2)) in powers of q.

The programs for A080966, there is no canonical definition to state claims against.
-/

/-! ## A080966.P18374379699975226706

`A080964(4*n+1)/2`
-/

namespace A080966.P18374379699975226706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080964 (4 * n + 1) : ℚ) / 2

end

end A080966.P18374379699975226706

/-! ## A080966.P8773822660273959616

`A034949(4*n+1)`
-/

namespace A080966.P8773822660273959616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (4 * n + 1)

end

end A080966.P8773822660273959616

/-! ## A080966.P5107191061441356248

`A248395(4*n+1)`
-/

namespace A080966.P5107191061441356248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (4 * n + 1)

end

end A080966.P5107191061441356248

/-! ## A080966.P2094255028590216505

`A248395(A016813(n))%(n+2)`
-/

namespace A080966.P2094255028590216505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248395 (A016813 n).toNat) (n + 2 : ℤ)

end

end A080966.P2094255028590216505

/-! ## A080966.P15423522405497588952

`A248395(A016813(n))^cos(A000038(n))`
-/

namespace A080966.P15423522405497588952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248395 (A016813 n).toNat : ℝ) ^ (Real.cos (A000038 n : ℝ))

end

end A080966.P15423522405497588952

/-! ## A080966.P6946210526713102518

`A248395(A016813(n))+A000007(n+1)`
-/

namespace A080966.P6946210526713102518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (A016813 n).toNat + A000007 (n + 1)

end

end A080966.P6946210526713102518

/-! ## A080966.P15787907188649651921

`A248395(A016813(n))+A000038(n+1)`
-/

namespace A080966.P15787907188649651921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (A016813 n).toNat + A000038 (n + 1)

end

end A080966.P15787907188649651921

/-! ## A080966.P15119317109395919387

`A097325(A005408(n))*A248395(A016813(n))`
-/

namespace A080966.P15119317109395919387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A005408 n).toNat * A248395 (A016813 n).toNat

end

end A080966.P15119317109395919387

/-! ## A080966.P12586690652452508825

`A248395(A016813(n))/A003557(A005117(n+1))`
-/

namespace A080966.P12586690652452508825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248395 (A016813 n).toNat : ℚ) / (A003557 (A005117 (n + 1)).toNat : ℚ)

end

end A080966.P12586690652452508825

/-! ## A080966.P17433926785433874944

`A248395(A016813(n))/A001222(A007521(n+1))`
-/

namespace A080966.P17433926785433874944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248395 (A016813 n).toNat : ℚ) / (A001222 (A007521 (n + 1)).toNat : ℚ)

end

end A080966.P17433926785433874944

/-! ## A080966.P2787135525748341772

`A014963(A017137(n))*A248395(A016813(n))`
-/

namespace A080966.P2787135525748341772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A248395 (A016813 n).toNat

end

end A080966.P2787135525748341772

/-! ## A080966.P12292908771671780202

`A014963(A008458(2*n))*A248395(A016813(n))`
-/

namespace A080966.P12292908771671780202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 (2 * n)).toNat * A248395 (A016813 n).toNat

end

end A080966.P12292908771671780202

/-! ## A080966.P15734245588156381133

`A007318(∑[n])*A248395(A016813(n))`
-/

namespace A080966.P15734245588156381133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A248395 (A016813 n).toNat

end

end A080966.P15734245588156381133

/-!
# A080968: Orbit size of each branch-reduced tree encoded by A080981(n) under Donaghey's "Map M" Catalan automorphism.

The programs for A080968, there is no canonical definition to state claims against.
-/

/-! ## A080968.P4833825564731276338

`A080967(A080980(n))`
-/

namespace A080968.P4833825564731276338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (A080980 n).toNat

end

end A080968.P4833825564731276338

/-! ## A080968.P9859877746656277205

`A080967(record[A080979(n)])`
-/

namespace A080968.P9859877746656277205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080968.P9859877746656277205

/-! ## A080968.P1597159566856620866

`A080967(eq[n, A080979(n)])`
-/

namespace A080968.P1597159566856620866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080968.P1597159566856620866

/-! ## A080968.P16469098288845884244

`A080967(lt[n, A080979(n)+1])`
-/

namespace A080968.P16469098288845884244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A080968.P16469098288845884244

/-!
# A080969: Orbit size of each non-branch-reduced tree encoded by A080971(n) under Donaghey's "Map M" Catalan automorphism.

The programs for A080969, there is no canonical definition to state claims against.
-/

/-! ## A080969.P14841290771371958218

`A080967(A080970(n))`
-/

namespace A080969.P14841290771371958218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (A080970 n).toNat

end

end A080969.P14841290771371958218

/-! ## A080969.P18222069504217503691

`A080967(comp[A080980(n)])`
-/

namespace A080969.P18222069504217503691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080980 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080969.P18222069504217503691

/-! ## A080969.P12794674187761581971

`A080967(lt[A080979(n), n])`
-/

namespace A080969.P12794674187761581971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A080969.P12794674187761581971

/-! ## A080969.P17445195892802482134

`A080967(comp[A080979(n)]%A080971(n))`
-/

namespace A080969.P17445195892802482134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A080971 n)).toNat

end

end A080969.P17445195892802482134

/-!
# A080970: A014486-indices of the trees whose interior zigzag-tree (Stanley's c) is not branch-reduced (in the sense defined by Donaghey).

The programs for A080970, there is no canonical definition to state claims against.
-/

/-! ## A080970.P11628805017286965604

`A080300(A080971(n))`
-/

namespace A080970.P11628805017286965604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A080971 n).toNat

end

end A080970.P11628805017286965604

/-! ## A080970.P13540654158877965839

`comp[A080980(n)]`
-/

namespace A080970.P13540654158877965839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080970.P13540654158877965839

/-! ## A080970.P8682754116606212307

`lt[A080979(n), n]`
-/

namespace A080970.P8682754116606212307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080970.P8682754116606212307

/-! ## A080970.P6998025425133627879

`eq[0, A000007(n-A080979(n))]`
-/

namespace A080970.P6998025425133627879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) - A080979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080970.P6998025425133627879

/-! ## A080970.P15125063173777446216

`eq[0, A000038(n-A080979(n))]`
-/

namespace A080970.P15125063173777446216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) - A080979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080970.P15125063173777446216

/-! ## A080970.P16926297544268555063

`eq[1, A057427(n-A080979(n))]`
-/

namespace A080970.P16926297544268555063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) - A080979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080970.P16926297544268555063

/-! ## A080970.P2186428404270523649

`eq[1, A157928(n-A080979(n))]`
-/

namespace A080970.P2186428404270523649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 ((n : ℤ) - A080979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080970.P2186428404270523649

/-! ## A080970.P6363946357445019307

`eq[1, abs(A070747(n-A080979(n)))]`
-/

namespace A080970.P6363946357445019307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070747 ((n : ℤ) - A080979 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080970.P6363946357445019307

/-! ## A080970.P1825298777185837432

`comp[A080979(n)]`
-/

namespace A080970.P1825298777185837432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080970.P1825298777185837432

/-!
# A080971: A014486-encodings of the trees whose interior zigzag-tree (Stanley's c) is not branch-reduced (in the sense defined by Donaghey).

The programs for A080971, there is no canonical definition to state claims against.
-/

/-! ## A080971.P8646215200467220483

`A014486(A080970(n))`
-/

namespace A080971.P8646215200467220483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A080970 n).toNat

end

end A080971.P8646215200467220483

/-! ## A080971.P7715564495150611601

`A014486(comp[A080980(n)])`
-/

namespace A080971.P7715564495150611601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080980 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080971.P7715564495150611601

/-! ## A080971.P9342176039713805399

`A014486(lt[A080979(n), n])`
-/

namespace A080971.P9342176039713805399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A080971.P9342176039713805399

/-! ## A080971.P6343265742000643711

`2*A057520(comp[A080980(n)])`
-/

namespace A080971.P6343265742000643711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080980 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080971.P6343265742000643711

/-! ## A080971.P14593789594920086571

`A194045(comp[A080980(n)])/2`
-/

namespace A080971.P14593789594920086571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080980 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 2

end

end A080971.P14593789594920086571

/-! ## A080971.P9979927763145922066

`2*A057520(lt[A080979(n), n])`
-/

namespace A080971.P9979927763145922066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A080971.P9979927763145922066

/-! ## A080971.P10256614724421841314

`A194045(lt[A080979(n), n])/2`
-/

namespace A080971.P10256614724421841314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A080971.P10256614724421841314

/-!
# A080972: a(n) = A080969(n)/A080967(A080979(A080970(n))).

The programs for A080972, there is no canonical definition to state claims against.
-/

/-! ## A080972.P11362851634994237586

`A080969(n)/A080967(A080979(A080970(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080972.P11362851634994237586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080969 n : ℚ) / (A080967 (A080979 (A080970 n).toNat).toNat : ℚ)

end

end A080972.P11362851634994237586

/-!
# A080975: A014486-index of the "Moose trees".

The programs for A080975, there is no canonical definition to state claims against.
-/

/-! ## A080975.P15242308123308196296

`A080320(n)+A080976(n)-A080321(n)`
-/

namespace A080975.P15242308123308196296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080320 n + (A080976 n - A080321 n)

end

end A080975.P15242308123308196296

/-! ## A080975.P6790424804272691432

`A080295(n)+A080976(n)-A080296(n)`
-/

namespace A080975.P6790424804272691432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080295 n + (A080976 n - A080296 n)

end

end A080975.P6790424804272691432

/-!
# A080976: a(n) = A080301(A080973(n)).

The programs for A080976, there is no canonical definition to state claims against.
-/

/-! ## A080976.P3350805185741980092

`A080321(n)+A080975(n)-A080320(n)`
-/

namespace A080976.P3350805185741980092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080321 n + (A080975 n - A080320 n)

end

end A080976.P3350805185741980092

/-! ## A080976.P13397753424182073462

`A080296(n)+A080975(n)-A080295(n)`
-/

namespace A080976.P13397753424182073462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080296 n + (A080975 n - A080295 n)

end

end A080976.P13397753424182073462

/-!
# A080978: a(n) = 2*A006046(n) + 1.

The programs for A080978, the canonical program `A080978.P8726104547884348525` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080978 has offset 0).

The definition of A080978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080978.P8726104547884348525

`2*A006046(n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080978

/-- `2*A006046(n)+1` -/
def P8726104547884348525.Spec : Prop :=
  ∀ n, P8726104547884348525.a n = A080978 n

theorem P8726104547884348525.correct : P8726104547884348525.Spec := by
  intro n
  simp only [A080978]

end A080978

/-! ## A080978.P6608308539710722987

`∑[gcd(2, n)*a(∑[n%2])]` with `a(0)=1, a(1)=2`
-/

namespace A080978.P6608308539710722987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.gcd 2 n * f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P6608308539710722987

namespace A080978

/-- `∑[gcd(2, n)*a(∑[n%2])]` -/
def P6608308539710722987.Spec : Prop :=
  ∀ n, (P6608308539710722987.a n : ℤ) = A080978 n

end A080978

/-! ## A080978.P4822936964327924815

`∑[2*a(n-gcd(1-n, a(n-1)))]` with `a(0)=1`
-/

namespace A080978.P4822936964327924815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - Int.gcd (1 - (n : ℤ)) (f1 (n - 1) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P4822936964327924815

namespace A080978

/-- `∑[2*a(n-gcd(1-n, a(n-1)))]` -/
def P4822936964327924815.Spec : Prop :=
  ∀ n, (P4822936964327924815.a n : ℤ) = A080978 n

end A080978

/-! ## A080978.P12376436547139084965

`∑[A131136(n)]`
-/

namespace A080978.P12376436547139084965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P12376436547139084965

namespace A080978

/-- `∑[A131136(n)]` -/
def P12376436547139084965.Spec : Prop :=
  ∀ n, P12376436547139084965.a n = A080978 n

end A080978

/-! ## A080978.P12051846384178602387

`A256256(n)/3+1`
-/

namespace A080978.P12051846384178602387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 n : ℚ) / 3 + 1

end

end A080978.P12051846384178602387

namespace A080978

/-- `A256256(n)/3+1` -/
def P12051846384178602387.Spec : Prop :=
  ∀ n, P12051846384178602387.a n = (A080978 n : ℚ)

theorem P12051846384178602387.correct : P12051846384178602387.Spec := by
  intro n
  simp only [A080978, Nat.add_sub_cancel, A080978.P12051846384178602387.a, A080978.P8726104547884348525.a, A006046, A006046.P16130984765599899400.a, A256256, A256256.P16031076571279366178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080978

/-! ## A080978.P12893188307894627398

`A159912(n)+1+n`
-/

namespace A080978.P12893188307894627398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159912 n + 1 + (n : ℤ)

end

end A080978.P12893188307894627398

namespace A080978

/-- `A159912(n)+1+n` -/
def P12893188307894627398.Spec : Prop :=
  ∀ n, P12893188307894627398.a n = A080978 n

end A080978

/-! ## A080978.P793359814822357519

`∑[A001316(record[lcm(2, n)])]`
-/

namespace A080978.P793359814822357519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P793359814822357519

namespace A080978

/-- `∑[A001316(record[lcm(2, n)])]` -/
def P793359814822357519.Spec : Prop :=
  ∀ n, P793359814822357519.a n = A080978 n

end A080978

/-! ## A080978.P9769258700842881262

`∑[A001316(comp[2*(n+1)])]`
-/

namespace A080978.P9769258700842881262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P9769258700842881262

namespace A080978

/-- `∑[A001316(comp[2*(n+1)])]` -/
def P9769258700842881262.Spec : Prop :=
  ∀ n, P9769258700842881262.a n = A080978 n

end A080978

/-! ## A080978.P11302504175094345159

`∑[gcd(n, a(n-1))*A001316(n)]` with `a(0)=1`
-/

namespace A080978.P11302504175094345159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Int.gcd (n : ℤ) (f1 (n - 1)) : ℤ) * A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P11302504175094345159

namespace A080978

/-- `∑[gcd(n, a(n-1))*A001316(n)]` -/
def P11302504175094345159.Spec : Prop :=
  ∀ n, P11302504175094345159.a n = A080978 n

end A080978

/-! ## A080978.P13545116087551304042

`A173522(n+1)+1-A001316(n)`
-/

namespace A080978.P13545116087551304042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 1) + (1 - A001316 n)

end

end A080978.P13545116087551304042

namespace A080978

/-- `A173522(n+1)+1-A001316(n)` -/
def P13545116087551304042.Spec : Prop :=
  ∀ n, P13545116087551304042.a n = A080978 n

end A080978

/-! ## A080978.P10294962398169443538

`2*(∑[2^A000120(n)]-2^A000120(n))+1`
-/

namespace A080978.P10294962398169443538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (2 : ℚ) ^ (A000120 n : ℤ)) + 1

end

end A080978.P10294962398169443538

namespace A080978

/-- `2*(∑[2^A000120(n)]-2^A000120(n))+1` -/
def P10294962398169443538.Spec : Prop :=
  ∀ n, P10294962398169443538.a n = (A080978 n : ℚ)

end A080978

/-! ## A080978.P3425674975012234079

`∑[A105321(n)]-A249304(A001316(n))`
-/

namespace A080978.P3425674975012234079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A249304 (A001316 n).toNat

end

end A080978.P3425674975012234079

namespace A080978

/-- `∑[A105321(n)]-A249304(A001316(n))` -/
def P3425674975012234079.Spec : Prop :=
  ∀ n, P3425674975012234079.a n = A080978 n

end A080978

/-! ## A080978.P12918106000054928094

`A006046(n+1)+A006046(n)-A038573(n)`
-/

namespace A080978.P12918106000054928094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1) + (A006046 n - A038573 n)

end

end A080978.P12918106000054928094

namespace A080978

/-- `A006046(n+1)+A006046(n)-A038573(n)` -/
def P12918106000054928094.Spec : Prop :=
  ∀ n, P12918106000054928094.a n = A080978 n

end A080978

/-! ## A080978.P17571091234979957103

`A233774(n)+A233774(n)-A006046(n+1)`
-/

namespace A080978.P17571091234979957103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 n + (A233774 n - A006046 (n + 1))

end

end A080978.P17571091234979957103

namespace A080978

/-- `A233774(n)+A233774(n)-A006046(n+1)` -/
def P17571091234979957103.Spec : Prop :=
  ∀ n, P17571091234979957103.a n = A080978 n

end A080978

/-! ## A080978.P15058860416229739424

`2*(∑[2^(n-A011371(n))]-2^A001222(A278222(n)))+1`
-/

namespace A080978.P15058860416229739424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A011371 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (2 : ℚ) ^ (A001222 (A278222 n).toNat : ℤ)) + 1

end

end A080978.P15058860416229739424

namespace A080978

/-- `2*(∑[2^(n-A011371(n))]-2^A001222(A278222(n)))+1` -/
def P15058860416229739424.Spec : Prop :=
  ∀ n, P15058860416229739424.a n = (A080978 n : ℚ)

end A080978

/-! ## A080978.P17232092614284308737

`A151566(2*n)+1`
-/

namespace A080978.P17232092614284308737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n) + 1

end

end A080978.P17232092614284308737

namespace A080978

/-- `A151566(2*n)+1` -/
def P17232092614284308737.Spec : Prop :=
  ∀ n, P17232092614284308737.a n = A080978 n

end A080978

/-! ## A080978.P6473321365688601318

`∑[2*n+1-A261366(2*n)]`
-/

namespace A080978.P6473321365688601318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A261366 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P6473321365688601318

namespace A080978

/-- `∑[2*n+1-A261366(2*n)]` -/
def P6473321365688601318.Spec : Prop :=
  ∀ n, P6473321365688601318.a n = A080978 n

end A080978

/-! ## A080978.P1141878388303138298

`record[a(n-2)+2^A000120(n)]` with `a(0)=1, a(1)=3`
-/

namespace A080978.P1141878388303138298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080978.P1141878388303138298

namespace A080978

/-- `record[a(n-2)+2^A000120(n)]` -/
def P1141878388303138298.Spec : Prop :=
  ∀ n, P1141878388303138298.a n = (A080978 n : ℚ)

end A080978

/-! ## A080978.P13976720793334196644

`∑[sqrt(A177241(2*n))]+1`
-/

namespace A080978.P13976720793334196644
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177241 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080978.P13976720793334196644

namespace A080978

/-- `∑[sqrt(A177241(2*n))]+1` -/
def P13976720793334196644.Spec : Prop :=
  ∀ n, P13976720793334196644.a n = (A080978 n : ℝ)

end A080978

/-! ## A080978.P9866309421140337456

`∑[A048896(A130824(n))]`
-/

namespace A080978.P9866309421140337456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080978.P9866309421140337456

namespace A080978

/-- `∑[A048896(A130824(n))]` -/
def P9866309421140337456.Spec : Prop :=
  ∀ n, P9866309421140337456.a n = A080978 n

end A080978

/-!
# A080980: A014486-indices of the trees whose interior zigzag-tree (Stanley's c) is branch-reduced (in the sense defined by Donaghey).

The programs for A080980, there is no canonical definition to state claims against.
-/

/-! ## A080980.P4856089377170146028

`comp[A080970(n)]`
-/

namespace A080980.P4856089377170146028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080970 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080980.P4856089377170146028

/-! ## A080980.P4997478379154373556

`record[A080979(n)]`
-/

namespace A080980.P4997478379154373556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080980.P4997478379154373556

/-! ## A080980.P7664868919935780732

`A080979(eq[n, A080979(n)])`
-/

namespace A080980.P7664868919935780732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080980.P7664868919935780732

/-! ## A080980.P7465550664253290012

`A080300(A080981(n))`
-/

namespace A080980.P7465550664253290012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A080981 n).toNat

end

end A080980.P7465550664253290012

/-! ## A080980.P18365661485748355242

`lt[A023110(n+1), A007052(A080979(n))]`
-/

namespace A080980.P18365661485748355242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (A080979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080980.P18365661485748355242

/-!
# A080981: A014486-encodings of the trees whose interior zigzag-tree (Stanley's c) is branch-reduced (in the sense defined by Donaghey).

The programs for A080981, there is no canonical definition to state claims against.
-/

/-! ## A080981.P1727823215357956125

`A014486(A080980(n))`
-/

namespace A080981.P1727823215357956125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A080980 n).toNat

end

end A080981.P1727823215357956125

/-! ## A080981.P3733240987622465795

`A014486(eq[n, A080979(n)])`
-/

namespace A080981.P3733240987622465795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080981.P3733240987622465795

/-! ## A080981.P8204228685066147759

`A020639(2*(n+1))*A057520(A080980(n))`
-/

namespace A080981.P8204228685066147759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A057520 (A080980 n).toNat

end

end A080981.P8204228685066147759

/-! ## A080981.P3166025758816510912

`A000032(C(2, n+2))*A057520(A080980(n))`
-/

namespace A080981.P3166025758816510912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A057520 (A080980 n).toNat

end

end A080981.P3166025758816510912

/-! ## A080981.P6343711631587499523

`A000040(gcd(n, n+1))*A057520(A080980(n))`
-/

namespace A080981.P6343711631587499523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd n (n + 1)) * A057520 (A080980 n).toNat

end

end A080981.P6343711631587499523

/-!
# A080982: Smallest k such that the k-th triangular number has n^2 as divisor.

The programs for A080982, there is no canonical definition to state claims against.
-/

/-! ## A080982.P29494967339311868

`floor(sqrt(2*A080983(n+1)))`
-/

namespace A080982.P29494967339311868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A080983 (n + 1))

end

end A080982.P29494967339311868

/-! ## A080982.P8769344544515822664

`ceil(sqrt(2*A080983(n+1))-A057427(n+1))`
-/

namespace A080982.P8769344544515822664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A080983 (n + 1) : ℝ) - (A057427 (n + 1) : ℝ)⌉

end

end A080982.P8769344544515822664

/-! ## A080982.P5996712670455642087

`∑{d}[(n+1)², A344767(#)]`
-/

namespace A080982.P5996712670455642087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344767 d

end

end A080982.P5996712670455642087

/-! ## A080982.P5834382650393531672

`∑{d}[(n+1)², #-A344768(#)]`
-/

namespace A080982.P5834382650393531672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A344768 d)

end

end A080982.P5834382650393531672

/-! ## A080982.P11838789336103892393

`A000203((n+1)²)-A344765((n+1)²)`
-/

namespace A080982.P11838789336103892393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - A344765 ((n + 1) ^ 2)

end

end A080982.P11838789336103892393

/-! ## A080982.P13831351984676609079

`A005187((n+1)²)-A344769((n+1)²)`
-/

namespace A080982.P13831351984676609079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((n + 1) ^ 2) - A344769 ((n + 1) ^ 2)

end

end A080982.P13831351984676609079

/-! ## A080982.P5263371550421767583

`A191414(n+1)-A344874(∑[A005408(n)])`
-/

namespace A080982.P5263371550421767583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1) - A344874 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080982.P5263371550421767583

/-! ## A080982.P8284655276093618292

`A011772((n+1)²)`
-/

namespace A080982.P8284655276093618292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 ((n + 1) ^ 2)

end

end A080982.P8284655276093618292

/-! ## A080982.P18157991215618406489

`(n+1)²-A344763((n+1)²)`
-/

namespace A080982.P18157991215618406489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344763 ((n + 1) ^ 2)

end

end A080982.P18157991215618406489

/-! ## A080982.P16037730997129164963

`xor(1, xor(1, A011772((n+1)*(n+1))))`
-/

namespace A080982.P16037730997129164963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A011772 ((n + 1) * (n + 1))))

end

end A080982.P16037730997129164963

/-! ## A080982.P9516907440056517635

`A000027(A011772((n+1)^2))`
-/

namespace A080982.P9516907440056517635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011772 ((n + 1) ^ 2)).toNat

end

end A080982.P9516907440056517635

/-! ## A080982.P17159336340693897637

`A321366((n+1)²)-1`
-/

namespace A080982.P17159336340693897637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 ((n + 1) ^ 2) - 1

end

end A080982.P17159336340693897637

/-! ## A080982.P17239066045866091381

`A081467((n+1)²)-(n+1)²`
-/

namespace A080982.P17239066045866091381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081467 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A080982.P17239066045866091381

/-! ## A080982.P10188521132543218876

`A023443(A321366((n+1)²))`
-/

namespace A080982.P10188521132543218876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A321366 ((n + 1) ^ 2)).toNat

end

end A080982.P10188521132543218876

/-!
# A080983: Smallest triangular number having n^2 as divisor.

The programs for A080983, there is no canonical definition to state claims against.
-/

/-! ## A080983.P8465644569331897461

`C(A080982(n+1)+1, 2)`
-/

namespace A080983.P8465644569331897461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080982 (n + 1) + 1).toNat 2

end

end A080983.P8465644569331897461

/-! ## A080983.P7468331300198968824

`(n+1)²*A061782((n+1)²)`
-/

namespace A080983.P7468331300198968824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A061782 ((n + 1) ^ 2)

end

end A080983.P7468331300198968824

/-! ## A080983.P10665450740361198191

`(n+1)*(n+1)*A061782((n+1)*(n+1))`
-/

namespace A080983.P10665450740361198191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A061782 ((n + 1) * (n + 1)))

end

end A080983.P10665450740361198191

/-! ## A080983.P18096539862866147905

`C(A000203((n+1)²)-A344765((n+1)²)+1, 2)`
-/

namespace A080983.P18096539862866147905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 ((n + 1) ^ 2) - A344765 ((n + 1) ^ 2) + 1).toNat 2

end

end A080983.P18096539862866147905

/-! ## A080983.P15666138866814733829

`C(A011772((n+1)²)+1, 2)`
-/

namespace A080983.P15666138866814733829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A011772 ((n + 1) ^ 2) + 1).toNat 2

end

end A080983.P15666138866814733829

/-! ## A080983.P1580807800755450057

`A000217(A080982(n+1))`
-/

namespace A080983.P1580807800755450057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080982 (n + 1)).toNat

end

end A080983.P1580807800755450057

/-! ## A080983.P51086321465557082

`A000217(A011772((n+1)²))`
-/

namespace A080983.P51086321465557082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A011772 ((n + 1) ^ 2)).toNat

end

end A080983.P51086321465557082

/-! ## A080983.P7774632773873539679

`A066561((n+1)²)`
-/

namespace A080983.P7774632773873539679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066561 ((n + 1) ^ 2)

end

end A080983.P7774632773873539679

/-! ## A080983.P5956794837237569604

`A161680(A321366((n+1)²))`
-/

namespace A080983.P5956794837237569604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A321366 ((n + 1) ^ 2)).toNat

end

end A080983.P5956794837237569604

/-! ## A080983.P16718409027086510536

`A000096(A080982(n+1)-1)+1`
-/

namespace A080983.P16718409027086510536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A080982 (n + 1) - 1).toNat + 1

end

end A080983.P16718409027086510536

/-!
# A080984: Define b by b(1) = 1 and for n > 1, b(n) = b(n-1) + 1/(2 + 1/b(n-1)); sequence gives numerator of b(n).

The programs for A080984, there is no canonical definition to state claims against.
-/

/-! ## A080984.P2722396519856734351

`a(n-1)*A080986(n)` with `a(0)=1`
-/

namespace A080984.P2722396519856734351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080986 n

end

end A080984.P2722396519856734351

/-! ## A080984.P5536801718536848591

`A080986(n+1)/2-A080985(n+1)`
-/

namespace A080984.P5536801718536848591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080986 (n + 1) : ℚ) / 2 - (A080985 (n + 1) : ℚ)

end

end A080984.P5536801718536848591

/-!
# A080985: Define b by b(1) = 1 and for n>1, b(n) = b(n-1)+1/(2+1/b(n-1)); sequence gives denominator of b(n).

The programs for A080985, there is no canonical definition to state claims against.
-/

/-! ## A080985.P5131299029932187393

`a(n-1)*A080987(n)` with `a(0)=1`
-/

namespace A080985.P5131299029932187393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080987 n

end

end A080985.P5131299029932187393

/-! ## A080985.P2594749394244807223

`A080986(n+1)-A080987(n+1)`
-/

namespace A080985.P2594749394244807223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080986 (n + 1) - A080987 (n + 1)

end

end A080985.P2594749394244807223

/-!
# A080986: Ratios of successive terms of A080984.

The programs for A080986, there is no canonical definition to state claims against.
-/

/-! ## A080986.P402563478006231904

`A080987(n+1)+A080985(n+1)`
-/

namespace A080986.P402563478006231904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080987 (n + 1) + A080985 (n + 1)

end

end A080986.P402563478006231904

/-! ## A080986.P13070628964957062520

`ratio[A080984(n+1)]`
-/

namespace A080986.P13070628964957062520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080984 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A080986.P13070628964957062520

/-!
# A080987: Ratios of successive terms of A080985.

The programs for A080987, there is no canonical definition to state claims against.
-/

/-! ## A080987.P7676293917383450198

`A080986(n+1)-A080985(n+1)`
-/

namespace A080987.P7676293917383450198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080986 (n + 1) - A080985 (n + 1)

end

end A080987.P7676293917383450198

/-! ## A080987.P17251200599205775840

`ratio[A080985(n+1)]`
-/

namespace A080987.P17251200599205775840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080985 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A080987.P17251200599205775840

/-!
# A080988: Define b by b(1) = 1 and for n>1, b(n) = b(n-1)+1/(3+1/b(n-1)); sequence gives numerator of b(n).

The programs for A080988, there is no canonical definition to state claims against.
-/

/-! ## A080988.P18056963563004334508

`a(n-1)*A080990(n)` with `a(0)=1`
-/

namespace A080988.P18056963563004334508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080990 n

end

end A080988.P18056963563004334508

/-! ## A080988.P3781863597343651147

`(A080991(n+1)-A080989(n+1))/3`
-/

namespace A080988.P3781863597343651147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080991 (n + 1) - A080989 (n + 1) : ℚ) / 3

end

end A080988.P3781863597343651147

/-!
# A080989: Define b by b(1) = 1 and for n>1, b(n) = b(n-1)+1/(3+1/b(n-1)); sequence gives denominator of b(n).

The programs for A080989, there is no canonical definition to state claims against.
-/

/-! ## A080989.P12483702909059614033

`a(n-1)*A080991(n)` with `a(0)=1`
-/

namespace A080989.P12483702909059614033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080991 n

end

end A080989.P12483702909059614033

/-! ## A080989.P7802787658170734773

`A080990(n+1)-A080991(n+1)`
-/

namespace A080989.P7802787658170734773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080990 (n + 1) - A080991 (n + 1)

end

end A080989.P7802787658170734773

/-! ## A080989.P8602033165135934664

`ratio[A080988(n+1)]-A080991(n+1)`
-/

namespace A080989.P8602033165135934664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080988 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A080991 (n + 1) : ℚ)

end

end A080989.P8602033165135934664

/-!
# A080990: Ratios of successive terms of A080988.

The programs for A080990, there is no canonical definition to state claims against.
-/

/-! ## A080990.P7014295483803823667

`A080991(n+1)+A080989(n+1)`
-/

namespace A080990.P7014295483803823667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080991 (n + 1) + A080989 (n + 1)

end

end A080990.P7014295483803823667

/-! ## A080990.P1364627517056183378

`ratio[A080988(n+1)]`
-/

namespace A080990.P1364627517056183378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080988 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A080990.P1364627517056183378

/-!
# A080991: Ratios of successive terms of A080989.

The programs for A080991, there is no canonical definition to state claims against.
-/

/-! ## A080991.P16482084584039331236

`A080990(n+1)-A080989(n+1)`
-/

namespace A080991.P16482084584039331236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080990 (n + 1) - A080989 (n + 1)

end

end A080991.P16482084584039331236

/-! ## A080991.P12056851433579537238

`ratio[A080989(n+1)]`
-/

namespace A080991.P12056851433579537238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A080991.P12056851433579537238

/-!
# A080995: Characteristic function of generalized pentagonal numbers A001318.

The programs for A080995, the canonical program `A080995.P4731425660394005863` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080995 has offset 0).

The definition of A080995 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089806, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080995.P18191990196839274574

`(-1)^n*A133985(n)`
-/

namespace A080995.P18191990196839274574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A133985 n

end

end A080995.P18191990196839274574

namespace A080995

/-- `(-1)^n*A133985(n)` -/
def P18191990196839274574.Spec : Prop :=
  ∀ n, P18191990196839274574.a n = A080995 n

end A080995

/-! ## A080995.P4731425660394005863

`A089806(2*n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080995

/-- `A089806(2*n)` -/
def P4731425660394005863.Spec : Prop :=
  ∀ n, P4731425660394005863.a n = A080995 n

theorem P4731425660394005863.correct : P4731425660394005863.Spec := by
  intro n
  simp only [A080995]

end A080995

/-! ## A080995.P13197606091196320782

`A033683(24*n+1)`
-/

namespace A080995.P13197606091196320782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (24 * n + 1)

end

end A080995.P13197606091196320782

namespace A080995

/-- `A033683(24*n+1)` -/
def P13197606091196320782.Spec : Prop :=
  ∀ n, P13197606091196320782.a n = A080995 n

end A080995

/-! ## A080995.P16918585464026293583

`A010052(24*n+1)`
-/

namespace A080995.P16918585464026293583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (24 * n + 1)

end

end A080995.P16918585464026293583

namespace A080995

/-- `A010052(24*n+1)` -/
def P16918585464026293583.Spec : Prop :=
  ∀ n, P16918585464026293583.a n = A080995 n

end A080995

/-! ## A080995.P3284331067520352410

`char[∑[gcd(n, ∑[n])]]`
-/

namespace A080995.P3284331067520352410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A080995.P3284331067520352410

namespace A080995

/-- `char[∑[gcd(n, ∑[n])]]` -/
def P3284331067520352410.Spec : Prop :=
  ∀ n, (P3284331067520352410.a n : ℤ) = A080995 n

end A080995

/-! ## A080995.P9944769611987660597

`abs(A010815(n))`
-/

namespace A080995.P9944769611987660597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010815 n|

end

end A080995.P9944769611987660597

namespace A080995

/-- `abs(A010815(n))` -/
def P9944769611987660597.Spec : Prop :=
  ∀ n, P9944769611987660597.a n = A080995 n

end A080995

/-! ## A080995.P8432412482352188842

`abs(A121373(n))`
-/

namespace A080995.P8432412482352188842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121373 n|

end

end A080995.P8432412482352188842

namespace A080995

/-- `abs(A121373(n))` -/
def P8432412482352188842.Spec : Prop :=
  ∀ n, P8432412482352188842.a n = A080995 n

end A080995

/-! ## A080995.P6345086521547702064

`abs(A133985(n))`
-/

namespace A080995.P6345086521547702064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133985 n|

end

end A080995.P6345086521547702064

namespace A080995

/-- `abs(A133985(n))` -/
def P6345086521547702064.Spec : Prop :=
  ∀ n, P6345086521547702064.a n = A080995 n

end A080995

/-! ## A080995.P8043592527819573714

`abs(A199918(n))`
-/

namespace A080995.P8043592527819573714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199918 n|

end

end A080995.P8043592527819573714

namespace A080995

/-- `abs(A199918(n))` -/
def P8043592527819573714.Spec : Prop :=
  ∀ n, P8043592527819573714.a n = A080995 n

end A080995

/-! ## A080995.P6992020056482293886

`abs(A206958(n))`
-/

namespace A080995.P6992020056482293886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206958 n|

end

end A080995.P6992020056482293886

namespace A080995

/-- `abs(A206958(n))` -/
def P6992020056482293886.Spec : Prop :=
  ∀ n, P6992020056482293886.a n = A080995 n

end A080995

/-! ## A080995.P8652988724783316140

`abs(A206959(n))`
-/

namespace A080995.P8652988724783316140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A206959 n|

end

end A080995.P8652988724783316140

namespace A080995

/-- `abs(A206959(n))` -/
def P8652988724783316140.Spec : Prop :=
  ∀ n, P8652988724783316140.a n = A080995 n

end A080995

/-! ## A080995.P12107882620371995902

`A000009(n)%2`
-/

namespace A080995.P12107882620371995902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) 2

end

end A080995.P12107882620371995902

namespace A080995

/-- `A000009(n)%2` -/
def P12107882620371995902.Spec : Prop :=
  ∀ n, P12107882620371995902.a n = A080995 n

end A080995

/-! ## A080995.P9749696336138582454

`and(1, A003406(n))`
-/

namespace A080995.P9749696336138582454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003406 n)

end

end A080995.P9749696336138582454

namespace A080995

/-- `and(1, A003406(n))` -/
def P9749696336138582454.Spec : Prop :=
  ∀ n, P9749696336138582454.a n = A080995 n

end A080995

/-! ## A080995.P11967069905620239843

`and(1, A080332(n))`
-/

namespace A080995.P11967069905620239843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080332 n)

end

end A080995.P11967069905620239843

namespace A080995

/-- `and(1, A080332(n))` -/
def P11967069905620239843.Spec : Prop :=
  ∀ n, P11967069905620239843.a n = A080995 n

end A080995

/-! ## A080995.P7787026064377170299

`and(1, A081360(n))`
-/

namespace A080995.P7787026064377170299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081360 n)

end

end A080995.P7787026064377170299

namespace A080995

/-- `and(1, A081360(n))` -/
def P7787026064377170299.Spec : Prop :=
  ∀ n, P7787026064377170299.a n = A080995 n

end A080995

/-!
# A080996: Special values of the hypergeometric function 3F1: a(n) = binomial(n,2) * hypergeom([1,-n+1,-n+2],[3],1).

The programs for A080996, there is no canonical definition to state claims against.
-/

/-! ## A080996.P7583888038569062585

`∑[abs(Δ[A247499(n)])]`
-/

namespace A080996.P7583888038569062585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080996.P7583888038569062585

/-! ## A080996.P16089850455443489727

`A247499(n+1)-1`
-/

namespace A080996.P16089850455443489727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247499 (n + 1) - 1

end

end A080996.P16089850455443489727

/-! ## A080996.P6204712576876455194

`∑[A000007(n+1)+Δ[A247499(n)]]`
-/

namespace A080996.P6204712576876455194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080996.P6204712576876455194

/-! ## A080996.P16456609731027026115

`∑[A000035(2*n)+Δ[A247499(n)]]`
-/

namespace A080996.P16456609731027026115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080996.P16456609731027026115

/-! ## A080996.P2776528903580525644

`∑[Δ[A247499(n)]+A008683(12*n+8)]`
-/

namespace A080996.P2776528903580525644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247499 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (12 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080996.P2776528903580525644

/-! ## A080996.P17937259732832182631

`A309873(A016825(n))+A247499(n+1)`
-/

namespace A080996.P17937259732832182631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A247499 (n + 1)

end

end A080996.P17937259732832182631

/-!
# A080998: a(n) is n's rank among the positive integers in terms of centrality: the fraction of n represented by the average gcd of n and the positive integers, or A018804(n)/n^2 (cf. A080997).

The programs for A080998, there is no canonical definition to state claims against.
-/

/-! ## A080998.P9091373415176782884

`xor(A064275(n+1), A175253(A147468(n+1)))`
-/

namespace A080998.P9091373415176782884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064275 (n + 1)) (A175253 (A147468 (n + 1)).toNat)

end

end A080998.P9091373415176782884

/-!
# A080999: Centrality of A080997(n) = a(n)/(A080997(n))^2.

The programs for A080999, there is no canonical definition to state claims against.
-/

/-! ## A080999.P16715886056370936350

`A018804(A080997(n+1))`
-/

namespace A080999.P16715886056370936350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (A080997 (n + 1)).toNat

end

end A080999.P16715886056370936350

/-! ## A080999.P7363558367685289764

`∑{d}[A080997(n+1), A029935(#)]`
-/

namespace A080999.P7363558367685289764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029935 d

end

end A080999.P7363558367685289764

