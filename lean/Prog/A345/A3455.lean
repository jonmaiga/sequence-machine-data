import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C003
import Seq.B002.C000
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A345500: Numbers that are the sum of nine squares in three or more ways.

The programs for A345500, there is no canonical definition to state claims against.
-/

/-! ## A345500.P14698159832582244656

`A345490(n+1)+1`
-/

namespace A345500.P14698159832582244656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345490 (n + 1) + 1

end

end A345500.P14698159832582244656

/-!
# A345501: Numbers that are the sum of nine squares in four or more ways.

The programs for A345501, there is no canonical definition to state claims against.
-/

/-! ## A345501.P6196073718403459995

`A345495(n+1)-23`
-/

namespace A345501.P6196073718403459995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345495 (n + 1) - 23

end

end A345501.P6196073718403459995

/-!
# A345502: Numbers that are the sum of nine squares in five or more ways.

The programs for A345502, there is no canonical definition to state claims against.
-/

/-! ## A345502.P1810228502831403956

`A345508(A345489(n+4))`
-/

namespace A345502.P1810228502831403956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345508 (A345489 (n + 4)).toNat

end

end A345502.P1810228502831403956

/-!
# A345503: Numbers that are the sum of nine squares in six or more ways.

The programs for A345503, the canonical program `A345503.P1770597905489137048` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345503 has offset 1).

The definition of A345503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345503.P1770597905489137048

`2*a(n-1)-a(n-2)` with `a(0)=48, a(1)=56, a(2)=57, a(3)=59, a(4)=60, a(5)=62, a(6)=63, a(7)=65, a(8)=66`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345503

/-- `2*a(n-1)-a(n-2)` -/
def P1770597905489137048.Spec : Prop :=
  ∀ n, P1770597905489137048.a n = A345503 (n + 1)

theorem P1770597905489137048.correct : P1770597905489137048.Spec := by
  intro n
  simp only [A345503, Nat.add_sub_cancel]

end A345503

/-!
# A345504: Numbers that are the sum of nine squares in seven or more ways.

The programs for A345504, there is no canonical definition to state claims against.
-/

/-! ## A345504.P13476068248066604825

`A345495(n+2)-2`
-/

namespace A345504.P13476068248066604825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345495 (n + 2) - 2

end

end A345504.P13476068248066604825

/-!
# A345505: Numbers that are the sum of nine squares in eight or more ways.

The programs for A345505, there is no canonical definition to state claims against.
-/

/-! ## A345505.P15987916775189033572

`A346807(n+1)-1`
-/

namespace A345505.P15987916775189033572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346807 (n + 1) - 1

end

end A345505.P15987916775189033572

/-!
# A345508: Numbers that are the sum of ten squares in one or more ways.

The programs for A345508, the canonical program `A345508.P959311368896046658` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345508 has offset 1).

The definition of A345508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345508.P959311368896046658

`2*a(n-1)-a(n-2)` with `a(0)=10, a(1)=13, a(2)=16, a(3)=18, a(4)=19, a(5)=21, a(6)=22, a(7)=24, a(8)=25`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345508

/-- `2*a(n-1)-a(n-2)` -/
def P959311368896046658.Spec : Prop :=
  ∀ n, P959311368896046658.a n = A345508 (n + 1)

theorem P959311368896046658.correct : P959311368896046658.Spec := by
  intro n
  simp only [A345508, Nat.add_sub_cancel]

end A345508

/-!
# A345509: Numbers that are the sum of ten squares in two or more ways.

The programs for A345509, the canonical program `A345509.P9858117867359923240` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345509 has offset 1).

The definition of A345509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345509.P9858117867359923240

`2*a(n-1)-a(n-2)` with `a(0)=25, a(1)=28, a(2)=31, a(3)=33, a(4)=34, a(5)=36, a(6)=37, a(7)=39, a(8)=40`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345509

/-- `2*a(n-1)-a(n-2)` -/
def P9858117867359923240.Spec : Prop :=
  ∀ n, P9858117867359923240.a n = A345509 (n + 1)

theorem P9858117867359923240.correct : P9858117867359923240.Spec := by
  intro n
  simp only [A345509, Nat.add_sub_cancel]

end A345509

/-!
# A345510: Numbers that are the sum of ten squares in three or more ways.

The programs for A345510, the canonical program `A345510.P13563575651637678836` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345510 has offset 1).

The definition of A345510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345510.P13563575651637678836

`2*a(n-1)-a(n-2)` with `a(0)=34, a(1)=37, a(2)=40, a(3)=42, a(4)=43, a(5)=45, a(6)=46, a(7)=48, a(8)=49`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A345510

/-- `2*a(n-1)-a(n-2)` -/
def P13563575651637678836.Spec : Prop :=
  ∀ n, P13563575651637678836.a n = A345510 (n + 1)

theorem P13563575651637678836.correct : P13563575651637678836.Spec := by
  intro n
  simp only [A345510, Nat.add_sub_cancel]

end A345510

/-!
# A345511: Numbers that are the sum of six cubes in two or more ways.

The programs for A345511, there is no canonical definition to state claims against.
-/

/-! ## A345511.P7528831895150799227

`∪[A048930(n+1), A345512(n+1)]`
-/

namespace A345511.P7528831895150799227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345511.P7528831895150799227

/-! ## A345511.P18075064412246528417

`lt[1, A025459(n)]`
-/

namespace A345511.P18075064412246528417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345511.P18075064412246528417

/-! ## A345511.P4840507652712855797

`eq[1, A141044(A025459(n)²)]`
-/

namespace A345511.P4840507652712855797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025459 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P4840507652712855797

/-! ## A345511.P15645144692995428987

`eq[1, A261143(A025459(n)²)]`
-/

namespace A345511.P15645144692995428987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A025459 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P15645144692995428987

/-! ## A345511.P6041656098645386467

`eq[1, A261143(A025459(n)+1)]`
-/

namespace A345511.P6041656098645386467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A025459 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P6041656098645386467

/-! ## A345511.P13551078220859229195

`eq[1, A261143(2*A025459(n))]`
-/

namespace A345511.P13551078220859229195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (2 * A025459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P13551078220859229195

/-! ## A345511.P14777245537572665072

`eq[1, A000045(a(A025459(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A345511.P14777245537572665072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000045 (f2 (A025459 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P14777245537572665072

/-! ## A345511.P1965638003849908371

`eq[1, A140303(a(A025459(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A345511.P1965638003849908371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A140303 (f2 (A025459 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P1965638003849908371

/-! ## A345511.P2903377024968566047

`eq[2, A141044(A025459(n))+A141044(n)]`
-/

namespace A345511.P2903377024968566047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025459 n).toNat + A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P2903377024968566047

/-! ## A345511.P15290639697470730145

`eq[1, A141044(A025459(n)*A141044(n))]`
-/

namespace A345511.P15290639697470730145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025459 n * A141044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P15290639697470730145

/-! ## A345511.P19163006421441146

`eq[1, A141044(A025459(n)/A141044(n))]`
-/

namespace A345511.P19163006421441146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (SequenceMachineLib.roundAway ((A025459 n : ℚ) / (A141044 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P19163006421441146

/-! ## A345511.P11926410037387070809

`eq[2, A020639(A025459(n)!)]`
-/

namespace A345511.P11926410037387070809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A025459 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P11926410037387070809

/-! ## A345511.P1278722672120554008

`eq[0, A245620(A025459(n)!)]`
-/

namespace A345511.P1278722672120554008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245620 (Nat.factorial (A025459 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345511.P1278722672120554008

/-!
# A345512: Numbers that are the sum of six cubes in three or more ways.

The programs for A345512, there is no canonical definition to state claims against.
-/

/-! ## A345512.P11874621893212576276

`∪[A048931(n+1), A345513(n+1)]`
-/

namespace A345512.P11874621893212576276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345512.P11874621893212576276

/-! ## A345512.P13827426418388912822

`lt[2, A025459(n)]`
-/

namespace A345512.P13827426418388912822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345512.P13827426418388912822

/-!
# A345513: Numbers that are the sum of six cubes in four or more ways.

The programs for A345513, there is no canonical definition to state claims against.
-/

/-! ## A345513.P6726227360530408477

`∪[A345514(n+1), A345766(n+1)]`
-/

namespace A345513.P6726227360530408477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345513.P6726227360530408477

/-! ## A345513.P15487546478874484331

`lt[3, A025459(n)]`
-/

namespace A345513.P15487546478874484331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345513.P15487546478874484331

/-! ## A345513.P1935318742591717139

`A345766(∑[A053501(n)])`
-/

namespace A345513.P1935318742591717139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345513.P1935318742591717139

/-! ## A345513.P3360407807960316796

`A345766(A062399(n)+1)`
-/

namespace A345513.P3360407807960316796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345766 (A062399 n + 1).toNat

end

end A345513.P3360407807960316796

/-! ## A345513.P16640238010666074296

`A345766(A077741(n+1))`
-/

namespace A345513.P16640238010666074296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345766 (A077741 (n + 1)).toNat

end

end A345513.P16640238010666074296

/-!
# A345514: Numbers that are the sum of six cubes in five or more ways.

The programs for A345514, there is no canonical definition to state claims against.
-/

/-! ## A345514.P369357446384560831

`∪[A345515(n+1), A345767(n+1)]`
-/

namespace A345514.P369357446384560831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345514.P369357446384560831

/-! ## A345514.P8068819572899276131

`lt[4, A025459(n)]`
-/

namespace A345514.P8068819572899276131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345514.P8068819572899276131

/-!
# A345515: Numbers that are the sum of six cubes in six or more ways.

The programs for A345515, there is no canonical definition to state claims against.
-/

/-! ## A345515.P5484776551897297230

`∪[A345516(n+1), A345768(n+1)]`
-/

namespace A345515.P5484776551897297230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345515.P5484776551897297230

/-! ## A345515.P15411398060826513872

`A345768(A004913(n+2))`
-/

namespace A345515.P15411398060826513872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345768 (A004913 (n + 2)).toNat

end

end A345515.P15411398060826513872

/-! ## A345515.P1548680503719803592

`A345768(A032551(n+2))`
-/

namespace A345515.P1548680503719803592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345768 (A032551 (n + 2)).toNat

end

end A345515.P1548680503719803592

/-!
# A345516: Numbers that are the sum of six cubes in seven or more ways.

The programs for A345516, there is no canonical definition to state claims against.
-/

/-! ## A345516.P17284894879660191245

`∪[A345517(n+1), A345769(n+1)]`
-/

namespace A345516.P17284894879660191245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345516.P17284894879660191245

/-!
# A345517: Numbers that are the sum of six cubes in eight or more ways.

The programs for A345517, there is no canonical definition to state claims against.
-/

/-! ## A345517.P5400479682107408874

`∪[A345518(n+1), A345770(n+1)]`
-/

namespace A345517.P5400479682107408874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345517.P5400479682107408874

/-! ## A345517.P3620491456712653720

`A345770(A004913(n+2))`
-/

namespace A345517.P3620491456712653720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A004913 (n + 2)).toNat

end

end A345517.P3620491456712653720

/-! ## A345517.P3706947702049832339

`A345770(A032551(n+2))`
-/

namespace A345517.P3706947702049832339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345770 (A032551 (n + 2)).toNat

end

end A345517.P3706947702049832339

/-!
# A345518: Numbers that are the sum of six cubes in nine or more ways.

The programs for A345518, there is no canonical definition to state claims against.
-/

/-! ## A345518.P15266676966537052179

`∪[A345519(n+1), A345771(n+1)]`
-/

namespace A345518.P15266676966537052179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345518.P15266676966537052179

/-! ## A345518.P9231866185373427535

`A345771(A122204(∑[n+1]))`
-/

namespace A345518.P9231866185373427535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345771 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345518.P9231866185373427535

/-! ## A345518.P15304050805015543346

`record[A345771(A194983(n+1))]`
-/

namespace A345518.P15304050805015543346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345771 (A194983 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345518.P15304050805015543346

/-! ## A345518.P12528580325311541035

`record[A345771(A307081(n+1))]`
-/

namespace A345518.P12528580325311541035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345771 (A307081 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345518.P12528580325311541035

/-! ## A345518.P10420445756708537094

`record[A345771(A358136(n+2))]`
-/

namespace A345518.P10420445756708537094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345771 (A358136 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345518.P10420445756708537094

/-!
# A345520: Numbers that are the sum of seven cubes in two or more ways.

The programs for A345520, there is no canonical definition to state claims against.
-/

/-! ## A345520.P15347210797791630569

`lt[1, A025460(n)]`
-/

namespace A345520.P15347210797791630569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345520.P15347210797791630569

/-! ## A345520.P295164415667300370

`lt[A025450(n)+1, A025451(n)]`
-/

namespace A345520.P295164415667300370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345520.P295164415667300370

/-! ## A345520.P4302131951866729250

`lt[A025450(n), A023443(A025451(n))]`
-/

namespace A345520.P4302131951866729250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025451 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345520.P4302131951866729250

/-! ## A345520.P14838030698949891346

`∪[A345521(n+1), A345774(n+1)]`
-/

namespace A345520.P14838030698949891346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345520.P14838030698949891346

/-! ## A345520.P11705320817806368301

`eq[2, A275325(A025460(n)²)]`
-/

namespace A345520.P11705320817806368301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275325 (A025460 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345520.P11705320817806368301

/-! ## A345520.P1736409553165009237

`eq[2, A020639(A025460(n)!)]`
-/

namespace A345520.P1736409553165009237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A025460 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345520.P1736409553165009237

/-! ## A345520.P11319533743004668775

`eq[1, A033999(A025460(n)!)]`
-/

namespace A345520.P11319533743004668775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.factorial (A025460 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345520.P11319533743004668775

/-!
# A345521: Numbers that are the sum of seven cubes in three or more ways.

The programs for A345521, there is no canonical definition to state claims against.
-/

/-! ## A345521.P16855791309391453314

`lt[2, A025460(n)]`
-/

namespace A345521.P16855791309391453314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345521.P16855791309391453314

/-! ## A345521.P17259356937808918588

`∪[A345522(n+1), A345775(n+1)]`
-/

namespace A345521.P17259356937808918588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345521.P17259356937808918588

/-! ## A345521.P16133963912564689810

`∪[A345775(n+1), A345776(n+1)]%A345785(3*n+1)`
-/

namespace A345521.P16133963912564689810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345776 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345785 (3 * n + 1))

end

end A345521.P16133963912564689810

/-! ## A345521.P13134175335653530226

`record[A345775(A299481(n+1))]`
-/

namespace A345521.P13134175335653530226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345775 (A299481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345521.P13134175335653530226

/-! ## A345521.P18311310271487220369

`record[A345775(A319846(n+1))]`
-/

namespace A345521.P18311310271487220369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345775 (A319846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345521.P18311310271487220369

/-!
# A345522: Numbers that are the sum of seven cubes in four or more ways.

The programs for A345522, there is no canonical definition to state claims against.
-/

/-! ## A345522.P2945088499417492888

`lt[3, A025460(n)]`
-/

namespace A345522.P2945088499417492888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345522.P2945088499417492888

/-! ## A345522.P6250411451005510997

`∪[A345523(n+1), A345776(n+1)]`
-/

namespace A345522.P6250411451005510997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345522.P6250411451005510997

/-! ## A345522.P10918584292843806092

`∪[A345776(n+1), A345777(n+1)]%A345787(3*n+4)`
-/

namespace A345522.P10918584292843806092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345777 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345787 (3 * n + 4))

end

end A345522.P10918584292843806092

/-!
# A345523: Numbers that are the sum of seven cubes in five or more ways.

The programs for A345523, there is no canonical definition to state claims against.
-/

/-! ## A345523.P6788018542162648350

`lt[4, A025460(n)]`
-/

namespace A345523.P6788018542162648350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345523.P6788018542162648350

/-! ## A345523.P2762090905504934436

`∪[A345524(n+1), A345777(n+1)]`
-/

namespace A345523.P2762090905504934436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345523.P2762090905504934436

/-! ## A345523.P11162991892066698192

`A345777(A089840(∑[n+1]))`
-/

namespace A345523.P11162991892066698192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345777 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345523.P11162991892066698192

/-! ## A345523.P6331987241494898149

`A345777(A122203(∑[n+1]))`
-/

namespace A345523.P6331987241494898149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345777 (A122203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345523.P6331987241494898149

/-! ## A345523.P4245599493490145769

`A345777(A329323(∑[n+1]))`
-/

namespace A345523.P4245599493490145769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345777 (A329323 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345523.P4245599493490145769

/-!
# A345524: Numbers that are the sum of seven cubes in six or more ways.

The programs for A345524, there is no canonical definition to state claims against.
-/

/-! ## A345524.P14602365423779972308

`lt[33, A025460(n)²]`
-/

namespace A345524.P14602365423779972308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345524.P14602365423779972308

/-! ## A345524.P4694419205501147558

`∪[A345525(n+1), A345778(n+1)]`
-/

namespace A345524.P4694419205501147558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345524.P4694419205501147558

/-! ## A345524.P1553288594301584187

`lt[A000124(n), A061520(A025460(n))]`
-/

namespace A345524.P1553288594301584187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061520 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345524.P1553288594301584187

/-! ## A345524.P13647834420347583898

`lt[A001844(n), A061520(A025460(n))]`
-/

namespace A345524.P13647834420347583898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061520 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345524.P13647834420347583898

/-! ## A345524.P14279294234027050480

`lt[A045943(n), A061520(A025460(n))]`
-/

namespace A345524.P14279294234027050480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061520 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345524.P14279294234027050480

/-! ## A345524.P1843350529015869481

`lt[A260179(n+1), A061520(A025460(n))]`
-/

namespace A345524.P1843350529015869481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061520 (A025460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345524.P1843350529015869481

/-!
# A345525: Numbers that are the sum of seven cubes in seven or more ways.

The programs for A345525, there is no canonical definition to state claims against.
-/

/-! ## A345525.P3080983285588563392

`lt[6, A025460(n)]`
-/

namespace A345525.P3080983285588563392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345525.P3080983285588563392

/-! ## A345525.P13401261065264382678

`∪[A345526(n+1), A345779(n+1)]`
-/

namespace A345525.P13401261065264382678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345525.P13401261065264382678

/-! ## A345525.P11584407811623491513

`xor(A185246(A104993(n)), A345779(n+1))`
-/

namespace A345525.P11584407811623491513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185246 (A104993 n).toNat) (A345779 (n + 1))

end

end A345525.P11584407811623491513

/-!
# A345526: Numbers that are the sum of seven cubes in eight or more ways.

The programs for A345526, there is no canonical definition to state claims against.
-/

/-! ## A345526.P17451547086448046086

`∪[A345527(n+1), A345780(n+1)]`
-/

namespace A345526.P17451547086448046086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345526.P17451547086448046086

/-!
# A345527: Numbers that are the sum of seven cubes in nine or more ways.

The programs for A345527, there is no canonical definition to state claims against.
-/

/-! ## A345527.P5023682571120257695

`∪[A345506(n+1), A345781(n+1)]`
-/

namespace A345527.P5023682571120257695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345527.P5023682571120257695

/-!
# A345529: Primes that yield a prime when any single digit is replaced by its 10's complement.

The programs for A345529, there is no canonical definition to state claims against.
-/

/-! ## A345529.P17856927458454659866

`p?[A345343(n+1)]`
-/

namespace A345529.P17856927458454659866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345529.P17856927458454659866

/-! ## A345529.P7124558927085710756

`filter[A345343(n+1), A010051(#)]`
-/

namespace A345529.P7124558927085710756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A345529.P7124558927085710756

/-! ## A345529.P14118733521679343667

`filter[A345343(n+1), A174275(#)]`
-/

namespace A345529.P14118733521679343667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A345529.P14118733521679343667

/-! ## A345529.P5047487648171334333

`filter[A345343(n+1), A211487(#)]`
-/

namespace A345529.P5047487648171334333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A345529.P5047487648171334333

/-! ## A345529.P17791495545555292233

`filter[A345343(n+1), A257531(#)]`
-/

namespace A345529.P17791495545555292233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A345529.P17791495545555292233

/-!
# A345530: Triangle T(n,k) read by rows of the number of n-bit words with maximum overlap k.

The programs for A345530, there is no canonical definition to state claims against.
-/

/-! ## A345530.P3326472270885229568

`2*A345710(n+1)`
-/

namespace A345530.P3326472270885229568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345710 (n + 1)

end

end A345530.P3326472270885229568

/-! ## A345530.P9931906091479120376

`A345710(n+1)+A345710(-xor(n, -1))`
-/

namespace A345530.P9931906091479120376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345710 (n + 1) + A345710 (-Int.xor (n : ℤ) (-1)).toNat

end

end A345530.P9931906091479120376

/-! ## A345530.P13042826850380672854

`A345710(char[1]+1+n)+A345710(n+1)`
-/

namespace A345530.P13042826850380672854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345710 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A345710 (n + 1)

end

end A345530.P13042826850380672854

/-! ## A345530.P9486768015106960047

`lcm(A345710(n+1)+A345710(n+1), A087960(n))`
-/

namespace A345530.P9486768015106960047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A345710 (n + 1) + A345710 (n + 1)) (A087960 n)

end

end A345530.P9486768015106960047

/-! ## A345530.P12906584795925743281

`A345710(n+1)+or(A000007(n), A345710(n+1))`
-/

namespace A345530.P12906584795925743281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345710 (n + 1) + Int.lor (A000007 n) (A345710 (n + 1))

end

end A345530.P12906584795925743281

/-! ## A345530.P13258051308062274135

`A345710(n+1)+A345710(n+1)%A006422(n+1)`
-/

namespace A345530.P13258051308062274135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345710 (n + 1) + Int.tmod (A345710 (n + 1)) (A006422 (n + 1))

end

end A345530.P13258051308062274135

/-! ## A345530.P12058506980935130555

`A345710(n+1)+A345710(n+1)^A008836(n+1)²`
-/

namespace A345530.P12058506980935130555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345710 (n + 1) : ℚ) + (A345710 (n + 1) : ℚ) ^ (A008836 (n + 1) ^ 2 : ℤ)

end

end A345530.P12058506980935130555

/-! ## A345530.P12011543066754128114

`A345710(n+1)+A345710(n+1)+A042970(A042970(n+2)+1)`
-/

namespace A345530.P12011543066754128114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345710 (n + 1) + (A345710 (n + 1) + A042970 (A042970 (n + 2) + 1).toNat)

end

end A345530.P12011543066754128114

/-! ## A345530.P3874270929420308964

`A004277(A345710(n+1))`
-/

namespace A345530.P3874270929420308964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A345710 (n + 1)).toNat

end

end A345530.P3874270929420308964

/-! ## A345530.P3913315157518674865

`A004275(A345710(n+1)+1)`
-/

namespace A345530.P3913315157518674865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A345710 (n + 1) + 1).toNat

end

end A345530.P3913315157518674865

/-! ## A345530.P2536694527237115443

`A004525(A345710(n+1)/(1/2)²)`
-/

namespace A345530.P2536694527237115443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A345710 (n + 1) : ℚ) / ((1 : ℚ) / 2) ^ 2)).toNat

end

end A345530.P2536694527237115443

/-!
# A345531: Smallest prime power greater than the n-th prime.

The programs for A345531, the canonical program `A345531.P10760789407017531318` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345531 has offset 1).

The definition of A345531 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000015, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345531.P10760789407017531318

`A000015(A008864(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A345531

/-- `A000015(A008864(n+1))` -/
def P10760789407017531318.Spec : Prop :=
  ∀ n, P10760789407017531318.a n = A345531 (n + 1)

theorem P10760789407017531318.correct : P10760789407017531318.Spec := by
  intro n
  simp only [A345531, Nat.add_sub_cancel]

end A345531

/-! ## A345531.P7857124338999864326

`A000015(1+A000040(n+1))`
-/

namespace A345531.P7857124338999864326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (1 + A000040 (n + 1)).toNat

end

end A345531.P7857124338999864326

namespace A345531

/-- `A000015(1+A000040(n+1))` -/
def P7857124338999864326.Spec : Prop :=
  ∀ n, P7857124338999864326.a n = A345531 (n + 1)

theorem P7857124338999864326.correct : P7857124338999864326.Spec := by
  intro n
  simp only [A345531, Nat.add_sub_cancel, A345531.P7857124338999864326.a, A345531.P10760789407017531318.a, A000015, A000015.P2530082583010810879.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A031218, A031218.P11079871404618641815.a, A097106, A097106.P14132093488680178125.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A057820, A057820.P915405789854175386.a, A065515, A065515.P15129427044826637405.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345531

/-! ## A345531.P12705087574863347987

`A246655(A024620(n+1))`
-/

namespace A345531.P12705087574863347987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A024620 (n + 1)).toNat

end

end A345531.P12705087574863347987

namespace A345531

/-- `A246655(A024620(n+1))` -/
def P12705087574863347987.Spec : Prop :=
  ∀ n, P12705087574863347987.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P3303865931438915437

`A246655(A027883(n+1)+1)`
-/

namespace A345531.P3303865931438915437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A027883 (n + 1) + 1).toNat

end

end A345531.P3303865931438915437

namespace A345531

/-- `A246655(A027883(n+1)+1)` -/
def P3303865931438915437.Spec : Prop :=
  ∀ n, P3303865931438915437.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P14235170277791273468

`A000961(A024620(n+1)+1)`
-/

namespace A345531.P14235170277791273468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024620 (n + 1) + 1).toNat

end

end A345531.P14235170277791273468

namespace A345531

/-- `A000961(A024620(n+1)+1)` -/
def P14235170277791273468.Spec : Prop :=
  ∀ n, P14235170277791273468.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P18302966297229115164

`A000961(A027883(n+1)+2)`
-/

namespace A345531.P18302966297229115164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A027883 (n + 1) + 2).toNat

end

end A345531.P18302966297229115164

namespace A345531

/-- `A000961(A027883(n+1)+2)` -/
def P18302966297229115164.Spec : Prop :=
  ∀ n, P18302966297229115164.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P97754933865840735

`A322991(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A345531.P97754933865840735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322991 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A345531.P97754933865840735

namespace A345531

/-- `A322991(p?[a(n-1)+2])` -/
def P97754933865840735.Spec : Prop :=
  ∀ n, P97754933865840735.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P16424276469461494662

`A322991(Δ[A007504(n)])`
-/

namespace A345531.P16424276469461494662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322991 (f1 (n + 1) - f1 n).toNat

end

end A345531.P16424276469461494662

namespace A345531

/-- `A322991(Δ[A007504(n)])` -/
def P16424276469461494662.Spec : Prop :=
  ∀ n, P16424276469461494662.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P2855659483069994454

`A120635(p?[comp[n²]])`
-/

namespace A345531.P2855659483069994454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A345531.P2855659483069994454

namespace A345531

/-- `A120635(p?[comp[n²]])` -/
def P2855659483069994454.Spec : Prop :=
  ∀ n, P2855659483069994454.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P1670740891859773030

`A000015(p?[n-(-1)^n]+1)`
-/

namespace A345531.P1670740891859773030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A345531.P1670740891859773030

namespace A345531

/-- `A000015(p?[n-(-1)^n]+1)` -/
def P1670740891859773030.Spec : Prop :=
  ∀ n, P1670740891859773030.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P15155449659580770978

`A120635(Δ[A007504(n)])`
-/

namespace A345531.P15155449659580770978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (f1 (n + 1) - f1 n).toNat

end

end A345531.P15155449659580770978

namespace A345531

/-- `A120635(Δ[A007504(n)])` -/
def P15155449659580770978.Spec : Prop :=
  ∀ n, P15155449659580770978.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P15951065544275101368

`A000015(A028815(n+1))`
-/

namespace A345531.P15951065544275101368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A028815 (n + 1)).toNat

end

end A345531.P15951065544275101368

namespace A345531

/-- `A000015(A028815(n+1))` -/
def P15951065544275101368.Spec : Prop :=
  ∀ n, P15951065544275101368.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P2576043504217081003

`A120635(A000040(n+1))`
-/

namespace A345531.P2576043504217081003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (A000040 (n + 1)).toNat

end

end A345531.P2576043504217081003

namespace A345531

/-- `A120635(A000040(n+1))` -/
def P2576043504217081003.Spec : Prop :=
  ∀ n, P2576043504217081003.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P15168958378517031990

`A120635(A008578(n+2))`
-/

namespace A345531.P15168958378517031990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (A008578 (n + 2)).toNat

end

end A345531.P15168958378517031990

namespace A345531

/-- `A120635(A008578(n+2))` -/
def P15168958378517031990.Spec : Prop :=
  ∀ n, P15168958378517031990.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P14096020780423748285

`A000015(A299763(n+2))`
-/

namespace A345531.P14096020780423748285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A299763 (n + 2)).toNat

end

end A345531.P14096020780423748285

namespace A345531

/-- `A000015(A299763(n+2))` -/
def P14096020780423748285.Spec : Prop :=
  ∀ n, P14096020780423748285.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P7136416044582589926

`A120635(A182986(n+2))`
-/

namespace A345531.P7136416044582589926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120635 (A182986 (n + 2)).toNat

end

end A345531.P7136416044582589926

namespace A345531

/-- `A120635(A182986(n+2))` -/
def P7136416044582589926.Spec : Prop :=
  ∀ n, P7136416044582589926.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P233582080152903342

`A188666(2*p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A345531.P233582080152903342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A345531.P233582080152903342

namespace A345531

/-- `A188666(2*p?[a(n-1)+2])` -/
def P233582080152903342.Spec : Prop :=
  ∀ n, P233582080152903342.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P14281027006913906995

`A188666(A072055(n+1))`
-/

namespace A345531.P14281027006913906995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (A072055 (n + 1)).toNat

end

end A345531.P14281027006913906995

namespace A345531

/-- `A188666(A072055(n+1))` -/
def P14281027006913906995.Spec : Prop :=
  ∀ n, P14281027006913906995.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P12483303075439883814

`A188666(A100484(n+1))`
-/

namespace A345531.P12483303075439883814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (A100484 (n + 1)).toNat

end

end A345531.P12483303075439883814

namespace A345531

/-- `A188666(A100484(n+1))` -/
def P12483303075439883814.Spec : Prop :=
  ∀ n, P12483303075439883814.a n = A345531 (n + 1)

end A345531

/-! ## A345531.P4171999671648450467

`A188666(A001747(n+2))`
-/

namespace A345531.P4171999671648450467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 (A001747 (n + 2)).toNat

end

end A345531.P4171999671648450467

namespace A345531

/-- `A188666(A001747(n+2))` -/
def P4171999671648450467.Spec : Prop :=
  ∀ n, P4171999671648450467.a n = A345531 (n + 1)

end A345531

/-!
# A345532: Numbers that are the sum of eight cubes in two or more ways.

The programs for A345532, there is no canonical definition to state claims against.
-/

/-! ## A345532.P13211716775746262935

`lt[2, A000032(A025461(n)²²)]`
-/

namespace A345532.P13211716775746262935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((A025461 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345532.P13211716775746262935

/-!
# A345533: Numbers that are the sum of eight cubes in three or more ways.

The programs for A345533, there is no canonical definition to state claims against.
-/

/-! ## A345533.P8290858249680054674

`A345785(n+1)-A358477(A026012(n))`
-/

namespace A345533.P8290858249680054674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345785 (n + 1) - A358477 (A026012 n).toNat

end

end A345533.P8290858249680054674

/-!
# A345534: Numbers that are the sum of eight cubes in four or more ways.

The programs for A345534, there is no canonical definition to state claims against.
-/

/-! ## A345534.P5554133043965557273

`record[A345786(n+1)/∑[char[10*n]]]`
-/

namespace A345534.P5554133043965557273
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345786 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345534.P5554133043965557273

/-!
# A345535: Numbers that are the sum of eight cubes in five or more ways.

The programs for A345535, there is no canonical definition to state claims against.
-/

/-! ## A345535.P17806418834768876112

`A345787(n+1)-A265336(A120053(n))`
-/

namespace A345535.P17806418834768876112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345787 (n + 1) - A265336 (A120053 n).toNat

end

end A345535.P17806418834768876112

/-!
# A345536: Numbers that are the sum of eight cubes in six or more ways.

The programs for A345536, there is no canonical definition to state claims against.
-/

/-! ## A345536.P4091950155539184668

`A345788(n+1)-A184943(A058343(n))`
-/

namespace A345536.P4091950155539184668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345788 (n + 1) - A184943 (A058343 n).toNat

end

end A345536.P4091950155539184668

/-!
# A345537: Numbers that are the sum of eight cubes in seven or more ways.

The programs for A345537, there is no canonical definition to state claims against.
-/

/-! ## A345537.P3444965643566073864

`record[A345789(n+1)-A181735(3*n+5)]`
-/

namespace A345537.P3444965643566073864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345789 (n + 1) - A181735 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345537.P3444965643566073864

/-!
# A345539: Numbers that are the sum of eight cubes in nine or more ways.

The programs for A345539, there is no canonical definition to state claims against.
-/

/-! ## A345539.P12107078936987343960

`A345791(n+1)-A137579(A301631(n))`
-/

namespace A345539.P12107078936987343960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345791 (n + 1) - A137579 (A301631 n).toNat

end

end A345539.P12107078936987343960

/-!
# A345541: Numbers that are the sum of nine cubes in two or more ways.

The programs for A345541, there is no canonical definition to state claims against.
-/

/-! ## A345541.P5085098393341149373

`eq[0, A204689(A025462(n)!)]`
-/

namespace A345541.P5085098393341149373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204689 (Nat.factorial (A025462 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345541.P5085098393341149373

/-!
# A345542: Numbers that are the sum of nine positive cubes in three or more ways.

The programs for A345542, there is no canonical definition to state claims against.
-/

/-! ## A345542.P17988637068755674660

`∪[A345795(n+1), A345796(n+1)]%A345795(3*n+1)`
-/

namespace A345542.P17988637068755674660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345796 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345795 (3 * n + 1))

end

end A345542.P17988637068755674660

/-!
# A345543: Numbers that are the sum of nine cubes in four or more ways.

The programs for A345543, there is no canonical definition to state claims against.
-/

/-! ## A345543.P5610996009719153829

`A345796(n+1)-A000999(A203338(n+1))`
-/

namespace A345543.P5610996009719153829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345796 (n + 1) - A000999 (A203338 (n + 1)).toNat

end

end A345543.P5610996009719153829

/-!
# A345544: Numbers that are the sum of nine cubes in five or more ways.

The programs for A345544, there is no canonical definition to state claims against.
-/

/-! ## A345544.P10344261296987860976

`A345797(∑[A053497(n)])`
-/

namespace A345544.P10344261296987860976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345544.P10344261296987860976

/-!
# A345545: Numbers that are the sum of nine cubes in six or more ways.

The programs for A345545, there is no canonical definition to state claims against.
-/

/-! ## A345545.P15476359884902868139

`∪[A345798(n+1), A345799(n+1)]%A345801(2*(n+2))`
-/

namespace A345545.P15476359884902868139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345799 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345801 (2 * (n + 2)))

end

end A345545.P15476359884902868139

/-!
# A345546: Numbers that are the sum of nine cubes in seven or more ways.

The programs for A345546, there is no canonical definition to state claims against.
-/

/-! ## A345546.P10617319888203407786

`A345799(n+1)-A034394(A309864(n))`
-/

namespace A345546.P10617319888203407786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345799 (n + 1) - A034394 (A309864 n).toNat

end

end A345546.P10617319888203407786

/-!
# A345547: Numbers that are the sum of nine cubes in eight or more ways.

The programs for A345547, there is no canonical definition to state claims against.
-/

/-! ## A345547.P11811959704802398190

`∪[A345800(n+1), A345801(n+1)]%A345801(2*(n+2))`
-/

namespace A345547.P11811959704802398190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345801 (2 * (n + 2)))

end

end A345547.P11811959704802398190

/-!
# A345548: Numbers that are the sum of nine cubes in nine or more ways.

The programs for A345548, there is no canonical definition to state claims against.
-/

/-! ## A345548.P403553052113639861

`A345801(A381225(n))`
-/

namespace A345548.P403553052113639861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345801 (A381225 n).toNat

end

end A345548.P403553052113639861

/-!
# A345550: Numbers that are the sum of ten cubes in two or more ways.

The programs for A345550, there is no canonical definition to state claims against.
-/

/-! ## A345550.P10982626890375279908

`eq[0, A204689(A025463(n)!)]`
-/

namespace A345550.P10982626890375279908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204689 (Nat.factorial (A025463 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345550.P10982626890375279908

/-!
# A345552: Numbers that are the sum of ten cubes in four or more ways.

The programs for A345552, there is no canonical definition to state claims against.
-/

/-! ## A345552.P1438524514116099032

`A345806(n+1)-A018843(A050216(n))`
-/

namespace A345552.P1438524514116099032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345806 (n + 1) - A018843 (A050216 n).toNat

end

end A345552.P1438524514116099032

/-!
# A345553: Numbers that are the sum of ten cubes in five or more ways.

The programs for A345553, there is no canonical definition to state claims against.
-/

/-! ## A345553.P15706060973093091986

`A345807(A043318(n+1))`
-/

namespace A345553.P15706060973093091986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345807 (A043318 (n + 1)).toNat

end

end A345553.P15706060973093091986

/-!
# A345554: Numbers that are the sum of ten cubes in six or more ways.

The programs for A345554, there is no canonical definition to state claims against.
-/

/-! ## A345554.P8314571804858710533

`A345544(n+4)+A008966(A037055(n))`
-/

namespace A345554.P8314571804858710533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345544 (n + 4) + A008966 (A037055 n).toNat

end

end A345554.P8314571804858710533

/-!
# A345555: Numbers that are the sum of ten cubes in seven or more ways.

The programs for A345555, there is no canonical definition to state claims against.
-/

/-! ## A345555.P7776489250207372604

`A345809(n+1)-A184955(n)%A345483(n+1)`
-/

namespace A345555.P7776489250207372604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345809 (n + 1) - Int.tmod (A184955 n) (A345483 (n + 1))

end

end A345555.P7776489250207372604

/-!
# A345557: Numbers that are the sum of ten cubes in nine or more ways.

The programs for A345557, there is no canonical definition to state claims against.
-/

/-! ## A345557.P10462605083190643903

`A345811(A100793(n))`
-/

namespace A345557.P10462605083190643903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345811 (A100793 n).toNat

end

end A345557.P10462605083190643903

/-!
# A345559: Numbers that are the sum of six fourth powers in two or more ways.

The programs for A345559, there is no canonical definition to state claims against.
-/

/-! ## A345559.P4769090266446047578

`∪[A345560(n+1), A345814(n+1)]`
-/

namespace A345559.P4769090266446047578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345559.P4769090266446047578

/-! ## A345559.P15206081913684993562

`A345814(n+1)%A075951(n)`
-/

namespace A345559.P15206081913684993562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345814 (n + 1)) (A075951 n)

end

end A345559.P15206081913684993562

/-! ## A345559.P11837973407154907048

`A345814((n+1)^A061858(n)!)`
-/

namespace A345559.P11837973407154907048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345814 ((n + 1) ^ Nat.factorial (A061858 n).toNat)

end

end A345559.P11837973407154907048

/-! ## A345559.P1339583167322608150

`A345814(∑[A061858(2*n+3)!])`
-/

namespace A345559.P1339583167322608150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A061858 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345559.P1339583167322608150

/-! ## A345559.P16773963858830249620

`A345814(n+1)+A000038(A279787(n))`
-/

namespace A345559.P16773963858830249620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345814 (n + 1) + A000038 (A279787 n).toNat

end

end A345559.P16773963858830249620

/-!
# A345560: Numbers that are the sum of six fourth powers in three or more ways.

The programs for A345560, there is no canonical definition to state claims against.
-/

/-! ## A345560.P10976441801944010652

`∪[A345561(n+1), A345815(n+1)]`
-/

namespace A345560.P10976441801944010652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345560.P10976441801944010652

/-! ## A345560.P11268651544764715391

`A345815(A000005(2^n))`
-/

namespace A345560.P11268651544764715391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345815 (A000005 (2 ^ n)).toNat

end

end A345560.P11268651544764715391

/-! ## A345560.P15576629865744723514

`record[A345815(A264846(n+1))]`
-/

namespace A345560.P15576629865744723514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345815 (A264846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345560.P15576629865744723514

/-! ## A345560.P9101114438071154038

`record[A345815(A001222(n+1)+1)]`
-/

namespace A345560.P9101114438071154038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345815 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345560.P9101114438071154038

/-! ## A345560.P1790503506842811724

`A345815(n+1)+A318679(2^n)`
-/

namespace A345560.P1790503506842811724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345815 (n + 1) + A318679 (2 ^ n)

end

end A345560.P1790503506842811724

/-!
# A345561: Numbers that are the sum of six fourth powers in four or more ways.

The programs for A345561, there is no canonical definition to state claims against.
-/

/-! ## A345561.P2177865527888424720

`∪[A345562(n+1), A345816(n+1)]`
-/

namespace A345561.P2177865527888424720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345561.P2177865527888424720

/-! ## A345561.P7239297007118599428

`A345816(A187829(n+1))`
-/

namespace A345561.P7239297007118599428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345816 (A187829 (n + 1)).toNat

end

end A345561.P7239297007118599428

/-! ## A345561.P4774007220770232220

`A345816(∑[∑[A028240(n)]])`
-/

namespace A345561.P4774007220770232220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345816 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345561.P4774007220770232220

/-! ## A345561.P3056573782987798897

`A345816(A028240(n)!+n)`
-/

namespace A345561.P3056573782987798897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345816 (Nat.factorial (A028240 n).toNat + n)

end

end A345561.P3056573782987798897

/-! ## A345561.P386840709293231291

`A345816(n%A123105(n)+1)`
-/

namespace A345561.P386840709293231291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345816 (Int.tmod (n : ℤ) (A123105 (n + 31)) + 1).toNat

end

end A345561.P386840709293231291

/-!
# A345562: Numbers that are the sum of six fourth powers in five or more ways.

The programs for A345562, there is no canonical definition to state claims against.
-/

/-! ## A345562.P2768811662477913244

`∪[A345563(n+1), A345817(n+1)]`
-/

namespace A345562.P2768811662477913244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345562.P2768811662477913244

/-! ## A345562.P16779726172332105835

`A345817(A032551(n+2))`
-/

namespace A345562.P16779726172332105835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345817 (A032551 (n + 2)).toNat

end

end A345562.P16779726172332105835

/-! ## A345562.P1200350983751525825

`A345817((n+1)^A109010(n))`
-/

namespace A345562.P1200350983751525825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345817 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A109010 n : ℤ))).toNat

end

end A345562.P1200350983751525825

/-!
# A345563: Numbers that are the sum of six fourth powers in six or more ways.

The programs for A345563, there is no canonical definition to state claims against.
-/

/-! ## A345563.P6131818920385782704

`∪[A345564(n+1), A345818(n+1)]`
-/

namespace A345563.P6131818920385782704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345563.P6131818920385782704

/-!
# A345564: Numbers that are the sum of six fourth powers in seven or more ways.

The programs for A345564, there is no canonical definition to state claims against.
-/

/-! ## A345564.P6918914047136216485

`∪[A345565(n+1), A345819(n+1)]`
-/

namespace A345564.P6918914047136216485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345564.P6918914047136216485

/-!
# A345565: Numbers that are the sum of six fourth powers in eight or more ways.

The programs for A345565, there is no canonical definition to state claims against.
-/

/-! ## A345565.P10722594190481434158

`∪[A345566(n+1), A345820(n+1)]`
-/

namespace A345565.P10722594190481434158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345565.P10722594190481434158

/-!
# A345566: Numbers that are the sum of six fourth powers in nine or more ways.

The programs for A345566, there is no canonical definition to state claims against.
-/

/-! ## A345566.P6306782293622389600

`∪[A345567(n+1), A345821(n+1)]`
-/

namespace A345566.P6306782293622389600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345566.P6306782293622389600

/-! ## A345566.P18347437263076944088

`∪[A345821(n+1), A345822(n+1)]%A346365(3*n+2)`
-/

namespace A345566.P18347437263076944088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A346365 (3 * n + 2))

end

end A345566.P18347437263076944088

/-!
# A345567: Numbers that are the sum of six fourth powers in ten or more ways.

The programs for A345567, there is no canonical definition to state claims against.
-/

/-! ## A345567.P18208404572991318765

`A345822(A032551(n+2))`
-/

namespace A345567.P18208404572991318765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345822 (A032551 (n + 2)).toNat

end

end A345567.P18208404572991318765

/-! ## A345567.P10717838212270331473

`A345822(∑[A329074(n)!])`
-/

namespace A345567.P10717838212270331473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A329074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345567.P10717838212270331473

/-! ## A345567.P195585626259627340

`A345822(A117137(n²+1))`
-/

namespace A345567.P195585626259627340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345822 (A117137 (n ^ 2 + 1)).toNat

end

end A345567.P195585626259627340

/-!
# A345568: Numbers that are the sum of seven fourth powers in two or more ways.

The programs for A345568, there is no canonical definition to state claims against.
-/

/-! ## A345568.P13211213242997079439

`∪[A345569(n+1), A345824(n+1)]`
-/

namespace A345568.P13211213242997079439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345568.P13211213242997079439

/-! ## A345568.P1556444258363069252

`A345824(n+1)%A234190(n+1)`
-/

namespace A345568.P1556444258363069252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345824 (n + 1)) (A234190 (n + 1))

end

end A345568.P1556444258363069252

/-! ## A345568.P13458060399426503133

`A345824(gcd(n+1, A210966(n+1)))`
-/

namespace A345568.P13458060399426503133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (Int.gcd (n + 1 : ℤ) (A210966 (n + 1)))

end

end A345568.P13458060399426503133

/-! ## A345568.P11617341411396477681

`A345824(n+1)+A000007(A000009(n))`
-/

namespace A345568.P11617341411396477681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (n + 1) + A000007 (A000009 n).toNat

end

end A345568.P11617341411396477681

/-! ## A345568.P6538439352698035955

`A345824(n+1)+A058190(A263979(n))`
-/

namespace A345568.P6538439352698035955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (n + 1) + A058190 (A263979 n).toNat

end

end A345568.P6538439352698035955

/-! ## A345568.P6269985587611189394

`A345824(n+1)+A000007(A331418(n))`
-/

namespace A345568.P6269985587611189394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (n + 1) + A000007 (A331418 n).toNat

end

end A345568.P6269985587611189394

/-! ## A345568.P9085917565397879009

`A345824(n+1)+A000007(A351204(n))`
-/

namespace A345568.P9085917565397879009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345824 (n + 1) + A000007 (A351204 n).toNat

end

end A345568.P9085917565397879009

/-! ## A345568.P13144054172934737938

`A093178(A000123(n))*A345824(n+1)`
-/

namespace A345568.P13144054172934737938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A000123 n).toNat * A345824 (n + 1)

end

end A345568.P13144054172934737938

/-!
# A345569: Numbers that are the sum of seven fourth powers in three or more ways.

The programs for A345569, there is no canonical definition to state claims against.
-/

/-! ## A345569.P5604838374073033926

`∪[A345570(n+1), A345825(n+1)]`
-/

namespace A345569.P5604838374073033926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345569.P5604838374073033926

/-! ## A345569.P4242500031221481318

`A345825(A292125(n+1))`
-/

namespace A345569.P4242500031221481318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345825 (A292125 (n + 1)).toNat

end

end A345569.P4242500031221481318

/-!
# A345570: Numbers that are the sum of seven fourth powers in four or more ways.

The programs for A345570, there is no canonical definition to state claims against.
-/

/-! ## A345570.P13711126221384259563

`∪[A345571(n+1), A345826(n+1)]`
-/

namespace A345570.P13711126221384259563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345570.P13711126221384259563

/-! ## A345570.P17384767251111704546

`A028310(∪[A345826(n+1), A345827(n+1)])`
-/

namespace A345570.P17384767251111704546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345827 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A345570.P17384767251111704546

/-! ## A345570.P10168301209948795978

`A345826(A000005(5^n))`
-/

namespace A345570.P10168301209948795978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345826 (A000005 (5 ^ n)).toNat

end

end A345570.P10168301209948795978

/-! ## A345570.P14800171005361546187

`A345826(∑[A290830(n)²])`
-/

namespace A345570.P14800171005361546187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290830 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345826 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345570.P14800171005361546187

/-!
# A345571: Numbers that are the sum of seven fourth powers in five or more ways.

The programs for A345571, there is no canonical definition to state claims against.
-/

/-! ## A345571.P6412729466459079262

`∪[A345572(n+1), A345827(n+1)]`
-/

namespace A345571.P6412729466459079262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345571.P6412729466459079262

/-! ## A345571.P15465854568024577347

`A345827(A187829(n+1))`
-/

namespace A345571.P15465854568024577347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345827 (A187829 (n + 1)).toNat

end

end A345571.P15465854568024577347

/-! ## A345571.P13580165635468292744

`A345827(∑[∑[A028240(n)]])`
-/

namespace A345571.P13580165635468292744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345827 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345571.P13580165635468292744

/-! ## A345571.P12121342157883781999

`A345827(C(A043320(n+1), n))`
-/

namespace A345571.P12121342157883781999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345827 (Nat.choose (A043320 (n + 1)).toNat n)

end

end A345571.P12121342157883781999

/-! ## A345571.P12629976248435227638

`A345827(∑[A008835(n+1)!])`
-/

namespace A345571.P12629976248435227638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A008835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345571.P12629976248435227638

/-!
# A345572: Numbers that are the sum of seven fourth powers in six or more ways.

The programs for A345572, there is no canonical definition to state claims against.
-/

/-! ## A345572.P17154621496196214316

`∪[A345573(n+1), A345828(n+1)]`
-/

namespace A345572.P17154621496196214316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345572.P17154621496196214316

/-! ## A345572.P16345439930152912206

`A345828(A000005(5^n))`
-/

namespace A345572.P16345439930152912206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345828 (A000005 (5 ^ n)).toNat

end

end A345572.P16345439930152912206

/-! ## A345572.P17339379626462498575

`A345828(∑[A290830(n)²])`
-/

namespace A345572.P17339379626462498575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290830 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345828 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345572.P17339379626462498575

/-! ## A345572.P12163483841925400590

`A345828(A290830(n)²+n)`
-/

namespace A345572.P12163483841925400590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345828 (A290830 n ^ 2 + (n : ℤ)).toNat

end

end A345572.P12163483841925400590

/-!
# A345573: Numbers that are the sum of seven fourth powers in seven or more ways.

The programs for A345573, there is no canonical definition to state claims against.
-/

/-! ## A345573.P9213623689299484311

`∪[A345574(n+1), A345829(n+1)]`
-/

namespace A345573.P9213623689299484311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345573.P9213623689299484311

/-!
# A345574: Numbers that are the sum of seven fourth powers in eight or more ways.

The programs for A345574, there is no canonical definition to state claims against.
-/

/-! ## A345574.P15231548509038656183

`∪[A345575(n+1), A345830(n+1)]`
-/

namespace A345574.P15231548509038656183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345574.P15231548509038656183

/-!
# A345575: Numbers that are the sum of seven fourth powers in nine or more ways.

The programs for A345575, there is no canonical definition to state claims against.
-/

/-! ## A345575.P1331380419827687454

`∪[A345576(n+1), A345831(n+1)]`
-/

namespace A345575.P1331380419827687454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345575.P1331380419827687454

/-! ## A345575.P3444790066427204424

`∪[A345831(n+1), A345832(n+1)]^A248773(n+1)`
-/

namespace A345575.P3444790066427204424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345832 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) ^ (A248773 (n + 1) : ℤ)

end

end A345575.P3444790066427204424

/-!
# A345577: Numbers that are the sum of eight fourth powers in two or more ways.

The programs for A345577, there is no canonical definition to state claims against.
-/

/-! ## A345577.P7128631023018235760

`∪[A345578(n+1), A345834(n+1)]`
-/

namespace A345577.P7128631023018235760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345577.P7128631023018235760

/-! ## A345577.P10362350163731431796

`A345834(A122289(∑[n+1]))`
-/

namespace A345577.P10362350163731431796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345834 (A122289 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345577.P10362350163731431796

/-! ## A345577.P6476251368955513727

`record[A345834(A194917(n+1))]`
-/

namespace A345577.P6476251368955513727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345834 (A194917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345577.P6476251368955513727

/-! ## A345577.P16938346624716749893

`record[A345834(A195073(n+1))]`
-/

namespace A345577.P16938346624716749893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345834 (A195073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345577.P16938346624716749893

/-! ## A345577.P8069879569980953938

`record[A345834(A319572(n)+1)]`
-/

namespace A345577.P8069879569980953938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345834 (A319572 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345577.P8069879569980953938

/-!
# A345578: Numbers that are the sum of eight fourth powers in three or more ways.

The programs for A345578, there is no canonical definition to state claims against.
-/

/-! ## A345578.P14417313411700475424

`∪[A345579(n+1), A345835(n+1)]`
-/

namespace A345578.P14417313411700475424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345578.P14417313411700475424

/-! ## A345578.P5171984377969111001

`A345835(∑[∑[A151619(n)]])`
-/

namespace A345578.P5171984377969111001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345835 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345578.P5171984377969111001

/-! ## A345578.P4634524948743631642

`record[A345835(A346018(n+1))]`
-/

namespace A345578.P4634524948743631642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345835 (A346018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345578.P4634524948743631642

/-! ## A345578.P7323099087815061361

`record[A345835(A341132(n+3))]`
-/

namespace A345578.P7323099087815061361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345835 (A341132 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345578.P7323099087815061361

/-! ## A345578.P3196598917759172599

`A345835(C(A151766(n+1), n))`
-/

namespace A345578.P3196598917759172599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345835 (Nat.choose (A151766 (n + 1)).toNat n)

end

end A345578.P3196598917759172599

/-!
# A345579: Numbers that are the sum of eight fourth powers in four or more ways.

The programs for A345579, there is no canonical definition to state claims against.
-/

/-! ## A345579.P338994167301199797

`∪[A345580(n+1), A345836(n+1)]`
-/

namespace A345579.P338994167301199797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345579.P338994167301199797

/-! ## A345579.P9384692123870871042

`A345836(∑[(1-Δ[∑{digits}[n, #]])!])`
-/

namespace A345579.P9384692123870871042
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345579.P9384692123870871042

/-! ## A345579.P12558288057243202510

`A345836(A032555(n+1))`
-/

namespace A345579.P12558288057243202510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345836 (A032555 (n + 1)).toNat

end

end A345579.P12558288057243202510

/-! ## A345579.P9310384795438638179

`A345836(A032559(n+1))`
-/

namespace A345579.P9310384795438638179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345836 (A032559 (n + 1)).toNat

end

end A345579.P9310384795438638179

/-! ## A345579.P10338651037173717182

`A345836(A077739(n+1))`
-/

namespace A345579.P10338651037173717182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345836 (A077739 (n + 1)).toNat

end

end A345579.P10338651037173717182

/-!
# A345580: Numbers that are the sum of eight fourth powers in five or more ways.

The programs for A345580, there is no canonical definition to state claims against.
-/

/-! ## A345580.P16859664606345718832

`∪[A345581(n+1), A345837(n+1)]`
-/

namespace A345580.P16859664606345718832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345580.P16859664606345718832

/-! ## A345580.P4405709071968323000

`A345837(A134841(∑[n]))`
-/

namespace A345580.P4405709071968323000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345837 (A134841 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345580.P4405709071968323000

/-! ## A345580.P4000376352850283224

`A345837(A062399(n+1))`
-/

namespace A345580.P4000376352850283224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345837 (A062399 (n + 1)).toNat

end

end A345580.P4000376352850283224

/-! ## A345580.P13837752559072049267

`A345837(A087051(n)+1)`
-/

namespace A345580.P13837752559072049267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345837 (A087051 n + 1).toNat

end

end A345580.P13837752559072049267

/-! ## A345580.P6471593394933274542

`A345837(A351870(n+1))`
-/

namespace A345580.P6471593394933274542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345837 (A351870 (n + 1)).toNat

end

end A345580.P6471593394933274542

/-!
# A345581: Numbers that are the sum of eight fourth powers in six or more ways.

The programs for A345581, there is no canonical definition to state claims against.
-/

/-! ## A345581.P5408119474240941474

`∪[A345582(n+1), A345838(n+1)]`
-/

namespace A345581.P5408119474240941474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345581.P5408119474240941474

/-! ## A345581.P14871211630428087872

`A345838(A032551(n+2))`
-/

namespace A345581.P14871211630428087872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345838 (A032551 (n + 2)).toNat

end

end A345581.P14871211630428087872

/-! ## A345581.P5228670934134564363

`A345838(A228050(n+1)+1)`
-/

namespace A345581.P5228670934134564363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345838 (A228050 (n + 1) + 1).toNat

end

end A345581.P5228670934134564363

/-!
# A345582: Numbers that are the sum of eight fourth powers in seven or more ways.

The programs for A345582, there is no canonical definition to state claims against.
-/

/-! ## A345582.P13286516192582750818

`∪[A345583(n+1), A345839(n+1)]`
-/

namespace A345582.P13286516192582750818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345582.P13286516192582750818

/-! ## A345582.P11961136327749414965

`record[A345839(A266742(n+1))]`
-/

namespace A345582.P11961136327749414965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345839 (A266742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345582.P11961136327749414965

/-! ## A345582.P15004243830902076067

`record[A345839(A279783(n+1))]`
-/

namespace A345582.P15004243830902076067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345839 (A279783 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345582.P15004243830902076067

/-! ## A345582.P4149839131790290543

`record[A345839(A295508(n)+1)]`
-/

namespace A345582.P4149839131790290543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345839 (A295508 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345582.P4149839131790290543

/-! ## A345582.P13571159255568593082

`A345839(n+1)+A095416(n)%2`
-/

namespace A345582.P13571159255568593082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345839 (n + 1) + Int.tmod (A095416 n) 2

end

end A345582.P13571159255568593082

/-!
# A345583: Numbers that are the sum of eight fourth powers in eight or more ways.

The programs for A345583, there is no canonical definition to state claims against.
-/

/-! ## A345583.P9139094373733697428

`∪[A345584(n+1), A345840(n+1)]`
-/

namespace A345583.P9139094373733697428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345583.P9139094373733697428

/-!
# A345584: Numbers that are the sum of eight fourth powers in nine or more ways.

The programs for A345584, there is no canonical definition to state claims against.
-/

/-! ## A345584.P6535745808272649969

`∪[A345585(n+1), A345841(n+1)]`
-/

namespace A345584.P6535745808272649969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345584.P6535745808272649969

/-!
# A345585: Numbers that are the sum of eight fourth powers in ten or more ways.

The programs for A345585, there is no canonical definition to state claims against.
-/

/-! ## A345585.P3125052238997232440

`record[A345842(n+1)/floor(n/3)!]`
-/

namespace A345585.P3125052238997232440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345842 (n + 1) : ℚ) / (Nat.factorial ⌊(n : ℚ) / 3⌋.toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345585.P3125052238997232440

/-! ## A345585.P4668409785771619241

`A345842(A292125(n+1))`
-/

namespace A345585.P4668409785771619241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345842 (A292125 (n + 1)).toNat

end

end A345585.P4668409785771619241

/-!
# A345586: Numbers that are the sum of nine fourth powers in two or more ways.

The programs for A345586, there is no canonical definition to state claims against.
-/

/-! ## A345586.P10649925747375529172

`∪[A345587(n+1), A345844(n+1)]`
-/

namespace A345586.P10649925747375529172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345586.P10649925747375529172

/-! ## A345586.P4003975638106141062

`A345844(∑[A058276(n)!])`
-/

namespace A345586.P4003975638106141062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345586.P4003975638106141062

/-! ## A345586.P15846001001224231117

`record[A345844(A261283(n)+1)]`
-/

namespace A345586.P15846001001224231117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345844 (A261283 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345586.P15846001001224231117

/-! ## A345586.P9720942618546631767

`record[A345844(A001222(n+2))]`
-/

namespace A345586.P9720942618546631767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345844 (A001222 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345586.P9720942618546631767

/-! ## A345586.P3983899896321154052

`A345844(A001222(2^(n+1)))`
-/

namespace A345586.P3983899896321154052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345844 (A001222 (2 ^ (n + 1))).toNat

end

end A345586.P3983899896321154052

/-!
# A345587: Numbers that are the sum of nine fourth powers in three or more ways.

The programs for A345587, there is no canonical definition to state claims against.
-/

/-! ## A345587.P15669187502762132909

`∪[A345588(n+1), A345845(n+1)]`
-/

namespace A345587.P15669187502762132909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345587.P15669187502762132909

/-! ## A345587.P8651380259290565213

`record[A345845(A329534(n+1))]`
-/

namespace A345587.P8651380259290565213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345845 (A329534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345587.P8651380259290565213

/-! ## A345587.P4590238237985986393

`A345845(n+1)%A250241(n+1)`
-/

namespace A345587.P4590238237985986393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345845 (n + 1)) (A250241 (n + 1))

end

end A345587.P4590238237985986393

/-! ## A345587.P2217712731088805862

`A345845(n+1)+A007949(A008301(n))`
-/

namespace A345587.P2217712731088805862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345845 (n + 1) + A007949 (A008301 n).toNat

end

end A345587.P2217712731088805862

/-! ## A345587.P10325119704422120362

`A345845(n+1)+A000007(A063759(n))`
-/

namespace A345587.P10325119704422120362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345845 (n + 1) + A000007 (A063759 n).toNat

end

end A345587.P10325119704422120362

/-!
# A345588: Numbers that are the sum of nine fourth powers in four or more ways.

The programs for A345588, there is no canonical definition to state claims against.
-/

/-! ## A345588.P14434950849039735457

`∪[A345589(n+1), A345846(n+1)]`
-/

namespace A345588.P14434950849039735457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345588.P14434950849039735457

/-! ## A345588.P2076136125303925067

`A345846(A134841(∑[n]))`
-/

namespace A345588.P2076136125303925067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345846 (A134841 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345588.P2076136125303925067

/-! ## A345588.P12696190631030078431

`A345846(A143797(∑[n]))`
-/

namespace A345588.P12696190631030078431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345846 (A143797 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345588.P12696190631030078431

/-! ## A345588.P15480766286974748865

`A345846(A062399(n+1))`
-/

namespace A345588.P15480766286974748865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345846 (A062399 (n + 1)).toNat

end

end A345588.P15480766286974748865

/-! ## A345588.P4235769654182710795

`A345846(A087051(n)+1)`
-/

namespace A345588.P4235769654182710795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345846 (A087051 n + 1).toNat

end

end A345588.P4235769654182710795

/-!
# A345589: Numbers that are the sum of nine fourth powers in five or more ways.

The programs for A345589, there is no canonical definition to state claims against.
-/

/-! ## A345589.P12633674490526674895

`∪[A345590(n+1), A345847(n+1)]`
-/

namespace A345589.P12633674490526674895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345589.P12633674490526674895

/-! ## A345589.P7145316873652730695

`A345847(∏{p}[n+1, gcd(n+1, #^3)]^floor(n^(1/3))^3)`
-/

namespace A345589.P7145316873652730695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345847 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 3) : ℕ) : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3 : ℤ))).toNat

end

end A345589.P7145316873652730695

/-! ## A345589.P3218361364596046930

`A345847(A000005(5^n))`
-/

namespace A345589.P3218361364596046930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345847 (A000005 (5 ^ n)).toNat

end

end A345589.P3218361364596046930

/-! ## A345589.P7188687095623739919

`A345847(∑[A290830(n)²])`
-/

namespace A345589.P7188687095623739919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290830 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345847 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345589.P7188687095623739919

/-!
# A345590: Numbers that are the sum of nine fourth powers in six or more ways.

The programs for A345590, there is no canonical definition to state claims against.
-/

/-! ## A345590.P6117505689086548872

`∪[A345591(n+1), A345848(n+1)]`
-/

namespace A345590.P6117505689086548872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345590.P6117505689086548872

/-! ## A345590.P10004166641113108218

`record[A345848(A087735(n+1))]`
-/

namespace A345590.P10004166641113108218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345848 (A087735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345590.P10004166641113108218

/-! ## A345590.P5056469837889860690

`record[A345848(A119585(n+1))]`
-/

namespace A345590.P5056469837889860690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345848 (A119585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345590.P5056469837889860690

/-! ## A345590.P1846662414363091037

`record[A345848(A323607(n+1))]`
-/

namespace A345590.P1846662414363091037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345848 (A323607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345590.P1846662414363091037

/-! ## A345590.P14998803844399154796

`A345848(n+1)^Δ[A077168(n)]`
-/

namespace A345590.P14998803844399154796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345848 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A345590.P14998803844399154796

/-!
# A345591: Numbers that are the sum of nine fourth powers in seven or more ways.

The programs for A345591, there is no canonical definition to state claims against.
-/

/-! ## A345591.P17941785118777235879

`∪[A345592(n+1), A345849(n+1)]`
-/

namespace A345591.P17941785118777235879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345591.P17941785118777235879

/-!
# A345592: Numbers that are the sum of nine fourth powers in eight or more ways.

The programs for A345592, there is no canonical definition to state claims against.
-/

/-! ## A345592.P492674546782088551

`∪[A345593(n+1), A345850(n+1)]`
-/

namespace A345592.P492674546782088551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345592.P492674546782088551

/-!
# A345593: Numbers that are the sum of nine fourth powers in nine or more ways.

The programs for A345593, there is no canonical definition to state claims against.
-/

/-! ## A345593.P1802959000958845878

`∪[A345594(n+1), A345851(n+1)]`
-/

namespace A345593.P1802959000958845878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345593.P1802959000958845878

/-!
# A345594: Numbers that are the sum of nine fourth powers in ten or more ways.

The programs for A345594, there is no canonical definition to state claims against.
-/

/-! ## A345594.P11126494219823205280

`A345852(A077168(n))`
-/

namespace A345594.P11126494219823205280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345852 (A077168 n).toNat

end

end A345594.P11126494219823205280

/-! ## A345594.P2271815116748929374

`A345852(A093875(2^n))`
-/

namespace A345594.P2271815116748929374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345852 (A093875 (2 ^ n)).toNat

end

end A345594.P2271815116748929374

/-! ## A345594.P18391087827506299626

`A345852(log2(A004277(2^n)))`
-/

namespace A345594.P18391087827506299626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345852 (SequenceMachineLib.roundAway (Real.logb 2 (A004277 (2 ^ n) : ℝ))).toNat

end

end A345594.P18391087827506299626

/-! ## A345594.P8657329023167659535

`record[A345852(A195107(n+1))]`
-/

namespace A345594.P8657329023167659535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345852 (A195107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345594.P8657329023167659535

/-! ## A345594.P15137316847845746563

`record[A345852(A259176(n+1))]`
-/

namespace A345594.P15137316847845746563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345852 (A259176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345594.P15137316847845746563

/-!
# A345595: Numbers that are the sum of ten fourth powers in two or more ways.

The programs for A345595, there is no canonical definition to state claims against.
-/

/-! ## A345595.P6792175160611959117

`∪[A345596(n+1), A345854(n+1)]`
-/

namespace A345595.P6792175160611959117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345595.P6792175160611959117

/-! ## A345595.P7837081421626981176

`∏{e}[A198633(n), A345854(#)]`
-/

namespace A345595.P7837081421626981176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A345854 (Nat.factorization (f1 n).natAbs p)

end

end A345595.P7837081421626981176

/-! ## A345595.P4348693964842099046

`A345854(n+1)%A069176(n+1)`
-/

namespace A345595.P4348693964842099046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345854 (n + 1)) (A069176 (n + 1))

end

end A345595.P4348693964842099046

/-! ## A345595.P10623271514228109276

`A323239(A214825(n))*A345854(n+1)`
-/

namespace A345595.P10623271514228109276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A214825 n).toNat * A345854 (n + 1)

end

end A345595.P10623271514228109276

/-!
# A345596: Numbers that are the sum of ten fourth powers in three or more ways.

The programs for A345596, there is no canonical definition to state claims against.
-/

/-! ## A345596.P15346550987200329846

`∪[A345597(n+1), A345855(n+1)]`
-/

namespace A345596.P15346550987200329846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345596.P15346550987200329846

/-! ## A345596.P15454278143070539027

`A345855(C(A249818(n+1), n))`
-/

namespace A345596.P15454278143070539027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345855 (Nat.choose (A249818 (n + 1)).toNat n)

end

end A345596.P15454278143070539027

/-! ## A345596.P14832115604890316529

`record[A345855(n+1)/A279759(n)]`
-/

namespace A345596.P14832115604890316529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345855 (n + 1) : ℚ) / (A279759 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345596.P14832115604890316529

/-! ## A345596.P6289072500898844141

`A345855(n+1)%A290339(n+1)`
-/

namespace A345596.P6289072500898844141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345855 (n + 1)) (A290339 (n + 1))

end

end A345596.P6289072500898844141

/-! ## A345596.P749182893404318482

`A228813(A059481(n))*A345855(n+1)`
-/

namespace A345596.P749182893404318482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228813 (A059481 n).toNat * A345855 (n + 1)

end

end A345596.P749182893404318482

/-!
# A345597: Numbers that are the sum of ten fourth powers in four or more ways.

The programs for A345597, there is no canonical definition to state claims against.
-/

/-! ## A345597.P556347383629428854

`∪[A345598(n+1), A345856(n+1)]`
-/

namespace A345597.P556347383629428854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345597.P556347383629428854

/-! ## A345597.P15412737793484868677

`A345856(C(gcd(11, C(9, n))+n, n))`
-/

namespace A345597.P15412737793484868677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345856 (Nat.choose (Nat.gcd 11 (Nat.choose 9 n) + n) n)

end

end A345597.P15412737793484868677

/-! ## A345597.P9664053010840131903

`A345856(C(lcm(n+1, ∑{digits}[n+1, #]), n))`
-/

namespace A345597.P9664053010840131903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345856 (Nat.choose (Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) n)

end

end A345597.P9664053010840131903

/-! ## A345597.P1661677451562880262

`A345856(A134841(∑[n]))`
-/

namespace A345597.P1661677451562880262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345856 (A134841 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345597.P1661677451562880262

/-! ## A345597.P6032979056417796063

`A345856(A062399(n+1))`
-/

namespace A345597.P6032979056417796063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345856 (A062399 (n + 1)).toNat

end

end A345597.P6032979056417796063

/-!
# A345598: Numbers that are the sum of ten fourth powers in five or more ways.

The programs for A345598, there is no canonical definition to state claims against.
-/

/-! ## A345598.P6650908213876218704

`∪[A345599(n+1), A345857(n+1)]`
-/

namespace A345598.P6650908213876218704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345598.P6650908213876218704

/-!
# A345599: Numbers that are the sum of ten fourth powers in six or more ways.

The programs for A345599, there is no canonical definition to state claims against.
-/

/-! ## A345599.P15956336287819452270

`∪[A345600(n+1), A345858(n+1)]`
-/

namespace A345599.P15956336287819452270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345599.P15956336287819452270

/-! ## A345599.P10754560446962642418

`A345858(A032551(n+2))`
-/

namespace A345599.P10754560446962642418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345858 (A032551 (n + 2)).toNat

end

end A345599.P10754560446962642418

/-! ## A345599.P7699801034334206728

`A345858(A228050(n+1)+1)`
-/

namespace A345599.P7699801034334206728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345858 (A228050 (n + 1) + 1).toNat

end

end A345599.P7699801034334206728

