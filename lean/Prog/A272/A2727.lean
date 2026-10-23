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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
# A272700: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

The programs for A272700, the canonical program `A272700.P8290029814233016297` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272700 has offset 0).

The definition of A272700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272700.P8290029814233016297

`∑[A169699(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A272700

/-- `∑[A169699(n)]` -/
def P8290029814233016297.Spec : Prop :=
  ∀ n, P8290029814233016297.a n = A272700 n

theorem P8290029814233016297.correct : P8290029814233016297.Spec := by
  intro n
  simp only [A272700]

end A272700

/-! ## A272700.P9666748922052927130

`a(n-1)+A169699(n)+A084099(2*n)` with `a(0)=1`
-/

namespace A272700.P9666748922052927130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169699 n + A084099 (2 * n))

end

end A272700.P9666748922052927130

namespace A272700

/-- `a(n-1)+A169699(n)+A084099(2*n)` -/
def P9666748922052927130.Spec : Prop :=
  ∀ n, P9666748922052927130.a n = A272700 n

end A272700

/-! ## A272700.P10885592001443084951

`a(n-1)+A169699(n)+A010052(n+1)*A010052(n)` with `a(0)=1`
-/

namespace A272700.P10885592001443084951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A169699 n + A010052 (n + 1) * A010052 n)

end

end A272700.P10885592001443084951

namespace A272700

/-- `a(n-1)+A169699(n)+A010052(n+1)*A010052(n)` -/
def P10885592001443084951.Spec : Prop :=
  ∀ n, P10885592001443084951.a n = A272700 n

end A272700

/-! ## A272700.P15294504690448870215

`A272250(n)+A272736(n)-A272703(n)`
-/

namespace A272700.P15294504690448870215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272250 n + (A272736 n - A272703 n)

end

end A272700.P15294504690448870215

namespace A272700

/-- `A272250(n)+A272736(n)-A272703(n)` -/
def P15294504690448870215.Spec : Prop :=
  ∀ n, P15294504690448870215.a n = A272700 n

end A272700

/-! ## A272700.P12914094443860043622

`∑[A181385(A016825(n))]-A272703(n)`
-/

namespace A272700.P12914094443860043622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272703 n

end

end A272700.P12914094443860043622

namespace A272700

/-- `∑[A181385(A016825(n))]-A272703(n)` -/
def P12914094443860043622.Spec : Prop :=
  ∀ n, P12914094443860043622.a n = A272700 n

end A272700

/-! ## A272700.P6758871559424408975

`∑[A008740(A008458(n))-A272702(n)]`
-/

namespace A272700.P6758871559424408975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272700.P6758871559424408975

namespace A272700

/-- `∑[A008740(A008458(n))-A272702(n)]` -/
def P6758871559424408975.Spec : Prop :=
  ∀ n, P6758871559424408975.a n = A272700 n

end A272700

/-! ## A272700.P6523384841692472545

`∑[A008740(A008458(n))]-A272703(n)`
-/

namespace A272700.P6523384841692472545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272703 n

end

end A272700.P6523384841692472545

namespace A272700

/-- `∑[A008740(A008458(n))]-A272703(n)` -/
def P6523384841692472545.Spec : Prop :=
  ∀ n, P6523384841692472545.a n = A272700 n

end A272700

/-!
# A272702: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A272702, the canonical program `A272702.P13388874115026706064` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272702 has offset 0).

The definition of A272702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272702.P5408149075880597599

`A272704(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272702.P5408149075880597599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272704 (n - 1) + a (n - 1)

end

end A272702.P5408149075880597599

namespace A272702

/-- `A272704(n-1)+a(n-1)` -/
def P5408149075880597599.Spec : Prop :=
  ∀ n, P5408149075880597599.a n = A272702 n

end A272702

/-! ## A272702.P2493928054204984438

`∑[A272704(n)]+1-A272704(n)`
-/

namespace A272702.P2493928054204984438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272704 n)

end

end A272702.P2493928054204984438

namespace A272702

/-- `∑[A272704(n)]+1-A272704(n)` -/
def P2493928054204984438.Spec : Prop :=
  ∀ n, P2493928054204984438.a n = A272702 n

end A272702

/-! ## A272702.P13388874115026706064

`A000007(n)+A016754(n)-A169699(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A272702

/-- `A000007(n)+A016754(n)-A169699(n)` -/
def P13388874115026706064.Spec : Prop :=
  ∀ n, P13388874115026706064.a n = A272702 n

theorem P13388874115026706064.correct : P13388874115026706064.Spec := by
  intro n
  simp only [A272702]

end A272702

/-! ## A272702.P4626619117694944770

`A000007(n)+sqrt(A016756(n))-A169699(n)`
-/

namespace A272702.P4626619117694944770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℝ) + (Real.sqrt (A016756 n : ℝ) - (A169699 n : ℝ))

end

end A272702.P4626619117694944770

namespace A272702

/-- `A000007(n)+sqrt(A016756(n))-A169699(n)` -/
def P4626619117694944770.Spec : Prop :=
  ∀ n, P4626619117694944770.a n = (A272702 n : ℝ)

end A272702

/-! ## A272702.P10060960213203441846

`A000217(2*n+1)+A179865(2*n+1)-A169699(n)`
-/

namespace A272702.P10060960213203441846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + (A179865 (2 * n + 1) - A169699 n)

end

end A272702.P10060960213203441846

namespace A272702

/-- `A000217(2*n+1)+A179865(2*n+1)-A169699(n)` -/
def P10060960213203441846.Spec : Prop :=
  ∀ n, P10060960213203441846.a n = A272702 n

end A272702

/-! ## A272702.P11946407320559651086

`A179865(2*n+1)+A179865(2*(n+1))-A169699(n)`
-/

namespace A272702.P11946407320559651086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (2 * n + 1) + (A179865 (2 * (n + 1)) - A169699 n)

end

end A272702.P11946407320559651086

namespace A272702

/-- `A179865(2*n+1)+A179865(2*(n+1))-A169699(n)` -/
def P11946407320559651086.Spec : Prop :=
  ∀ n, P11946407320559651086.a n = A272702 n

end A272702

/-! ## A272702.P4253719848310306519

`A008683(A000118(n))+A016754(n)-A169699(n)`
-/

namespace A272702.P4253719848310306519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000118 n).toNat + (A016754 n - A169699 n)

end

end A272702.P4253719848310306519

namespace A272702

/-- `A008683(A000118(n))+A016754(n)-A169699(n)` -/
def P4253719848310306519.Spec : Prop :=
  ∀ n, P4253719848310306519.a n = A272702 n

end A272702

/-! ## A272702.P14392572379702979032

`A272703(n+1)-(A272704(n)+A272703(n))`
-/

namespace A272702.P14392572379702979032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272703 (n + 1) - (A272704 n + A272703 n)

end

end A272702.P14392572379702979032

namespace A272702

/-- `A272703(n+1)-(A272704(n)+A272703(n))` -/
def P14392572379702979032.Spec : Prop :=
  ∀ n, P14392572379702979032.a n = A272702 n

end A272702

/-! ## A272702.P10089851327536237075

`A181385(4*n+2)-A169699(n)`
-/

namespace A272702.P10089851327536237075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A169699 n

end

end A272702.P10089851327536237075

namespace A272702

/-- `A181385(4*n+2)-A169699(n)` -/
def P10089851327536237075.Spec : Prop :=
  ∀ n, P10089851327536237075.a n = A272702 n

end A272702

/-! ## A272702.P10016882452417010341

`A008740(A008458(n))-A169699(n)`
-/

namespace A272702.P10016882452417010341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A169699 n

end

end A272702.P10016882452417010341

namespace A272702

/-- `A008740(A008458(n))-A169699(n)` -/
def P10016882452417010341.Spec : Prop :=
  ∀ n, P10016882452417010341.a n = A272702 n

end A272702

/-!
# A272703: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A272703, the canonical program `A272703.P10957202336932434053` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272703 has offset 0).

The definition of A272703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272703.P10957202336932434053

`∑[A272702(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A272703

/-- `∑[A272702(n)]` -/
def P10957202336932434053.Spec : Prop :=
  ∀ n, P10957202336932434053.a n = A272703 n

theorem P10957202336932434053.correct : P10957202336932434053.Spec := by
  intro n
  simp only [A272703]

end A272703

/-! ## A272703.P8410114078649464568

`∑[A016754(n)-A169699(n)]+1`
-/

namespace A272703.P8410114078649464568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272703.P8410114078649464568

namespace A272703

/-- `∑[A016754(n)-A169699(n)]+1` -/
def P8410114078649464568.Spec : Prop :=
  ∀ n, P8410114078649464568.a n = A272703 n

end A272703

/-! ## A272703.P18245034083944422455

`A272702(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A272703.P18245034083944422455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272702 (A004526 (2 * n)).toNat + a (n - 1)

end

end A272703.P18245034083944422455

namespace A272703

/-- `A272702(A004526(2*n))+a(n-1)` -/
def P18245034083944422455.Spec : Prop :=
  ∀ n, P18245034083944422455.a n = A272703 n

end A272703

/-! ## A272703.P14228478240368257627

`a(n-1)+A272702(n)%A272700(n)` with `a(0)=1`
-/

namespace A272703.P14228478240368257627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272702 n) (A272700 n)

end

end A272703.P14228478240368257627

namespace A272703

/-- `a(n-1)+A272702(n)%A272700(n)` -/
def P14228478240368257627.Spec : Prop :=
  ∀ n, P14228478240368257627.a n = A272703 n

end A272703

/-! ## A272703.P10891342806419811668

`A272702(n%A272702(n))+a(n-1)` with `a(0)=1`
-/

namespace A272703.P10891342806419811668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272702 (Int.tmod (n : ℤ) (A272702 n)).toNat + a (n - 1)

end

end A272703.P10891342806419811668

namespace A272703

/-- `A272702(n%A272702(n))+a(n-1)` -/
def P10891342806419811668.Spec : Prop :=
  ∀ n, P10891342806419811668.a n = A272703 n

end A272703

/-! ## A272703.P14007227391177150016

`A272250(n)+A272736(n)-A272700(n)`
-/

namespace A272703.P14007227391177150016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272250 n + (A272736 n - A272700 n)

end

end A272703.P14007227391177150016

namespace A272703

/-- `A272250(n)+A272736(n)-A272700(n)` -/
def P14007227391177150016.Spec : Prop :=
  ∀ n, P14007227391177150016.a n = A272703 n

end A272703

/-! ## A272703.P4899175798662219546

`A272453(n)+A272748(n)-A272700(n)`
-/

namespace A272703.P4899175798662219546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272453 n + (A272748 n - A272700 n)

end

end A272703.P4899175798662219546

namespace A272703

/-- `A272453(n)+A272748(n)-A272700(n)` -/
def P4899175798662219546.Spec : Prop :=
  ∀ n, P4899175798662219546.a n = A272703 n

end A272703

/-! ## A272703.P17425630969657928585

`∑[A181385(A016825(n))-A169699(n)]`
-/

namespace A272703.P17425630969657928585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272703.P17425630969657928585

namespace A272703

/-- `∑[A181385(A016825(n))-A169699(n)]` -/
def P17425630969657928585.Spec : Prop :=
  ∀ n, P17425630969657928585.a n = A272703 n

end A272703

/-! ## A272703.P4615593004070637336

`∑[A181385(A016825(n))]-A272700(n)`
-/

namespace A272703.P4615593004070637336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272700 n

end

end A272703.P4615593004070637336

namespace A272703

/-- `∑[A181385(A016825(n))]-A272700(n)` -/
def P4615593004070637336.Spec : Prop :=
  ∀ n, P4615593004070637336.a n = A272703 n

end A272703

/-! ## A272703.P3017466147552646405

`∑[A008740(A008458(n))-A169699(n)]`
-/

namespace A272703.P3017466147552646405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272703.P3017466147552646405

namespace A272703

/-- `∑[A008740(A008458(n))-A169699(n)]` -/
def P3017466147552646405.Spec : Prop :=
  ∀ n, P3017466147552646405.a n = A272703 n

end A272703

/-! ## A272703.P2671760791762225321

`∑[A008740(A008458(n))]-A272700(n)`
-/

namespace A272703.P2671760791762225321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272700 n

end

end A272703.P2671760791762225321

namespace A272703

/-- `∑[A008740(A008458(n))]-A272700(n)` -/
def P2671760791762225321.Spec : Prop :=
  ∀ n, P2671760791762225321.a n = A272703 n

end A272703

/-!
# A272704: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A272704, the canonical program `A272704.P6526107480624225321` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272704 has offset 0).

The definition of A272704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2882 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272704.P18031168011601510209

`A017353(n)-(A169700(n)+A004273(n))`
-/

namespace A272704.P18031168011601510209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - (A169700 n + A004273 n)

end

end A272704.P18031168011601510209

namespace A272704

/-- `A017353(n)-(A169700(n)+A004273(n))` -/
def P18031168011601510209.Spec : Prop :=
  ∀ n, P18031168011601510209.a n = A272704 n

end A272704

/-! ## A272704.P6526107480624225321

`Δ[A000007(n)+A016754(n)-A169699(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A272704

/-- `Δ[A000007(n)+A016754(n)-A169699(n)]` -/
def P6526107480624225321.Spec : Prop :=
  ∀ n, P6526107480624225321.a n = A272704 n

theorem P6526107480624225321.correct : P6526107480624225321.Spec := by
  intro n
  simp only [A272704]

end A272704

/-! ## A272704.P7023888575530229510

`Δ[A272702(n)]`
-/

namespace A272704.P7023888575530229510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272704.P7023888575530229510

namespace A272704

/-- `Δ[A272702(n)]` -/
def P7023888575530229510.Spec : Prop :=
  ∀ n, P7023888575530229510.a n = A272704 n

end A272704

/-! ## A272704.P15862876913603042968

`A272702(n+1)-A272702(n)`
-/

namespace A272704.P15862876913603042968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272702 (n + 1) - A272702 n

end

end A272704.P15862876913603042968

namespace A272704

/-- `A272702(n+1)-A272702(n)` -/
def P15862876913603042968.Spec : Prop :=
  ∀ n, P15862876913603042968.a n = A272704 n

end A272704

/-! ## A272704.P5132227981317195070

`Δ[A181385(A016825(n))-A169699(n)]`
-/

namespace A272704.P5132227981317195070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272704.P5132227981317195070

namespace A272704

/-- `Δ[A181385(A016825(n))-A169699(n)]` -/
def P5132227981317195070.Spec : Prop :=
  ∀ n, P5132227981317195070.a n = A272704 n

end A272704

/-! ## A272704.P788250660586298340

`Δ[A181385(A016825(n))]-A169700(n)`
-/

namespace A272704.P788250660586298340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169700 n

end

end A272704.P788250660586298340

namespace A272704

/-- `Δ[A181385(A016825(n))]-A169700(n)` -/
def P788250660586298340.Spec : Prop :=
  ∀ n, P788250660586298340.a n = A272704 n

end A272704

/-! ## A272704.P16329728785894862232

`Δ[A008740(A008458(n))-A169699(n)]`
-/

namespace A272704.P16329728785894862232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A169699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272704.P16329728785894862232

namespace A272704

/-- `Δ[A008740(A008458(n))-A169699(n)]` -/
def P16329728785894862232.Spec : Prop :=
  ∀ n, P16329728785894862232.a n = A272704 n

end A272704

/-! ## A272704.P10537671475297930864

`Δ[A008740(A008458(n))]-A169700(n)`
-/

namespace A272704.P10537671475297930864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A169700 n

end

end A272704.P10537671475297930864

namespace A272704

/-- `Δ[A008740(A008458(n))]-A169700(n)` -/
def P10537671475297930864.Spec : Prop :=
  ∀ n, P10537671475297930864.a n = A272704 n

end A272704

/-!
# A272705: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A272705, the canonical program `A272705.P17400242701505067057` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272705 has offset 0).

The definition of A272705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272705.P17400242701505067057

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=25, a(4)=49`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272705

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17400242701505067057.Spec : Prop :=
  ∀ n, P17400242701505067057.a n = A272705 n

theorem P17400242701505067057.correct : P17400242701505067057.Spec := by
  intro n
  simp only [A272705]

end A272705

/-! ## A272705.P12148982572520355049

`or(1, 1-n)²+∑[4*n]`
-/

namespace A272705.P12148982572520355049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - (n : ℤ)) ^ 2 + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A272705.P12148982572520355049

namespace A272705

/-- `or(1, 1-n)²+∑[4*n]` -/
def P12148982572520355049.Spec : Prop :=
  ∀ n, P12148982572520355049.a n = A272705 n

end A272705

/-! ## A272705.P6530459498169528044

`∑[4*n]+(gcd(2, n+1)-n)²`
-/

namespace A272705.P6530459498169528044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((Nat.gcd 2 (n + 1) : ℤ) - (n : ℤ)) ^ 2

end

end A272705.P6530459498169528044

namespace A272705

/-- `∑[4*n]+(gcd(2, n+1)-n)²` -/
def P6530459498169528044.Spec : Prop :=
  ∀ n, P6530459498169528044.a n = A272705 n

end A272705

/-! ## A272705.P246143446401943145

`4*A397108(n)+1`
-/

namespace A272705.P246143446401943145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A397108 n + 1

end

end A272705.P246143446401943145

namespace A272705

/-- `4*A397108(n)+1` -/
def P246143446401943145.Spec : Prop :=
  ∀ n, P246143446401943145.a n = A272705 n

end A272705

/-! ## A272705.P4339029317075393762

`∑[4*n]+A267458(n)²`
-/

namespace A272705.P4339029317075393762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A267458 n ^ 2

end

end A272705.P4339029317075393762

namespace A272705

/-- `∑[4*n]+A267458(n)²` -/
def P4339029317075393762.Spec : Prop :=
  ∀ n, P4339029317075393762.a n = A272705 n

end A272705

/-! ## A272705.P8828695470050380055

`A272708(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272705.P8828695470050380055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272708 (n - 1) + a (n - 1)

end

end A272705.P8828695470050380055

namespace A272705

/-- `A272708(n-1)+a(n-1)` -/
def P8828695470050380055.Spec : Prop :=
  ∀ n, P8828695470050380055.a n = A272705 n

end A272705

/-! ## A272705.P10172372947414141131

`A265723(n)+A056105(n)`
-/

namespace A272705.P10172372947414141131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 n + A056105 n

end

end A272705.P10172372947414141131

namespace A272705

/-- `A265723(n)+A056105(n)` -/
def P10172372947414141131.Spec : Prop :=
  ∀ n, P10172372947414141131.a n = A272705 n

end A272705

/-! ## A272705.P5635375894886652806

`A267489(A047238(n+1))+1`
-/

namespace A272705.P5635375894886652806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267489 (A047238 (n + 1)).toNat + 1

end

end A272705.P5635375894886652806

namespace A272705

/-- `A267489(A047238(n+1))+1` -/
def P5635375894886652806.Spec : Prop :=
  ∀ n, P5635375894886652806.a n = A272705 n

end A272705

/-! ## A272705.P10295981177025659949

`A267489(A042948(n)+n)+1`
-/

namespace A272705.P10295981177025659949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267489 (A042948 n + (n : ℤ)).toNat + 1

end

end A272705.P10295981177025659949

namespace A272705

/-- `A267489(A042948(n)+n)+1` -/
def P10295981177025659949.Spec : Prop :=
  ∀ n, P10295981177025659949.a n = A272705 n

end A272705

/-! ## A272705.P5775904795956109334

`A033428(n)+2-A265722(n)`
-/

namespace A272705.P5775904795956109334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + (2 - A265722 n)

end

end A272705.P5775904795956109334

namespace A272705

/-- `A033428(n)+2-A265722(n)` -/
def P5775904795956109334.Spec : Prop :=
  ∀ n, P5775904795956109334.a n = A272705 n

end A272705

/-! ## A272705.P14666760321338582024

`A058331(n)+2*A247375(n)`
-/

namespace A272705.P14666760321338582024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + 2 * A247375 n

end

end A272705.P14666760321338582024

namespace A272705

/-- `A058331(n)+2*A247375(n)` -/
def P14666760321338582024.Spec : Prop :=
  ∀ n, P14666760321338582024.a n = A272705 n

end A272705

/-! ## A272705.P8490684865863087907

`A046092(n)+Δ[A124625(n)]²`
-/

namespace A272705.P8490684865863087907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (f1 (n + 1) - f1 n) ^ 2

end

end A272705.P8490684865863087907

namespace A272705

/-- `A046092(n)+Δ[A124625(n)]²` -/
def P8490684865863087907.Spec : Prop :=
  ∀ n, P8490684865863087907.a n = A272705 n

end A272705

/-! ## A272705.P2385064080531705045

`A046092(n)+(1-A052928(n))²`
-/

namespace A272705.P2385064080531705045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (1 - A052928 n) ^ 2

end

end A272705.P2385064080531705045

namespace A272705

/-- `A046092(n)+(1-A052928(n))²` -/
def P2385064080531705045.Spec : Prop :=
  ∀ n, P2385064080531705045.a n = A272705 n

end A272705

/-! ## A272705.P9787582256905921895

`A046092(n)+(2-A109613(n))²`
-/

namespace A272705.P9787582256905921895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + (2 - A109613 n) ^ 2

end

end A272705.P9787582256905921895

namespace A272705

/-- `A046092(n)+(2-A109613(n))²` -/
def P9787582256905921895.Spec : Prop :=
  ∀ n, P9787582256905921895.a n = A272705 n

end A272705

/-! ## A272705.P17738555434642196877

`A046092(n)+(n-A000034(n))²`
-/

namespace A272705.P17738555434642196877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + ((n : ℤ) - A000034 n) ^ 2

end

end A272705.P17738555434642196877

namespace A272705

/-- `A046092(n)+(n-A000034(n))²` -/
def P17738555434642196877.Spec : Prop :=
  ∀ n, P17738555434642196877.a n = A272705 n

end A272705

/-! ## A272705.P3329338612873791947

`∑[A008574(A029578(A053438(n)))]`
-/

namespace A272705.P3329338612873791947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A029578 (A053438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272705.P3329338612873791947

namespace A272705

/-- `∑[A008574(A029578(A053438(n)))]` -/
def P3329338612873791947.Spec : Prop :=
  ∀ n, P3329338612873791947.a n = A272705 n

end A272705

/-! ## A272705.P13587066227756490317

`A067998(A052928(n))+A001844(n)`
-/

namespace A272705.P13587066227756490317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A052928 n).toNat + A001844 n

end

end A272705.P13587066227756490317

namespace A272705

/-- `A067998(A052928(n))+A001844(n)` -/
def P13587066227756490317.Spec : Prop :=
  ∀ n, P13587066227756490317.a n = A272705 n

end A272705

/-! ## A272705.P11565336941692292591

`A042948(A141310(n))+A000567(n)`
-/

namespace A272705.P11565336941692292591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A141310 n).toNat + A000567 n

end

end A272705.P11565336941692292591

namespace A272705

/-- `A042948(A141310(n))+A000567(n)` -/
def P11565336941692292591.Spec : Prop :=
  ∀ n, P11565336941692292591.a n = A272705 n

end A272705

/-! ## A272705.P16323399011326137429

`A272707(n+1)-(A272708(n)+A272707(n))`
-/

namespace A272705.P16323399011326137429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272707 (n + 1) - (A272708 n + A272707 n)

end

end A272705.P16323399011326137429

namespace A272705

/-- `A272707(n+1)-(A272708(n)+A272707(n))` -/
def P16323399011326137429.Spec : Prop :=
  ∀ n, P16323399011326137429.a n = A272705 n

end A272705

/-!
# A272706: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A272706, the canonical program `A272706.P16932013783401311155` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272706 has offset 0).

The definition of A272706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272706.P4516148921961051989

`A055010(2*n+1)-∑[A132479(n)]`
-/

namespace A272706.P4516148921961051989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272706.P4516148921961051989

namespace A272706

/-- `A055010(2*n+1)-∑[A132479(n)]` -/
def P4516148921961051989.Spec : Prop :=
  ∀ n, P4516148921961051989.a n = A272706 n

end A272706

/-! ## A272706.P4135523758197541285

`A003461(2*n)-(A140407(2*(n+2))-A003461(2*n))`
-/

namespace A272706.P4135523758197541285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003461 (2 * n) - (A140407 (2 * (n + 2)) - A003461 (2 * n))

end

end A272706.P4135523758197541285

namespace A272706

/-- `A003461(2*n)-(A140407(2*(n+2))-A003461(2*n))` -/
def P4135523758197541285.Spec : Prop :=
  ∀ n, P4135523758197541285.a n = A272706 n

end A272706

/-! ## A272706.P13091652658669039060

`6*A134057(n)+A261922(A062383(n))+A000079(n)`
-/

namespace A272706.P13091652658669039060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A134057 n + (A261922 (A062383 n).toNat + A000079 n)

end

end A272706.P13091652658669039060

namespace A272706

/-- `6*A134057(n)+A261922(A062383(n))+A000079(n)` -/
def P13091652658669039060.Spec : Prop :=
  ∀ n, P13091652658669039060.a n = A272706 n

end A272706

/-! ## A272706.P16932013783401311155

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=137`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272706

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P16932013783401311155.Spec : Prop :=
  ∀ n, P16932013783401311155.a n = A272706 n

theorem P16932013783401311155.correct : P16932013783401311155.Spec := by
  intro n
  simp only [A272706]

end A272706

/-! ## A272706.P12220358527140157371

`Δ[A131833(3*n+1)%A052548(2*n)]`
-/

namespace A272706.P12220358527140157371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131833 (3 * n + 1)) (A052548 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272706.P12220358527140157371

namespace A272706

/-- `Δ[A131833(3*n+1)%A052548(2*n)]` -/
def P12220358527140157371.Spec : Prop :=
  ∀ n, P12220358527140157371.a n = A272706 n

end A272706

/-!
# A272707: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A272707, the canonical program `A272707.P1695763709320115769` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272707 has offset 0).

The definition of A272707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272707.P1695763709320115769

`xor(1, (n+1)*or(3, n²))-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272707

/-- `xor(1, (n+1)*or(3, n²))-1` -/
def P1695763709320115769.Spec : Prop :=
  ∀ n, P1695763709320115769.a n = A272707 n

theorem P1695763709320115769.correct : P1695763709320115769.Spec := by
  intro n
  simp only [A272707]

end A272707

/-! ## A272707.P703184221046750311

`∑[∑[4*n]+or(1, 1-n)²]`
-/

namespace A272707.P703184221046750311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + Int.lor 1 (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272707.P703184221046750311

namespace A272707

/-- `∑[∑[4*n]+or(1, 1-n)²]` -/
def P703184221046750311.Spec : Prop :=
  ∀ n, P703184221046750311.a n = A272707 n

end A272707

/-! ## A272707.P9059559215655609496

`A325657(n)+A005491(n)`
-/

namespace A272707.P9059559215655609496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 n + A005491 n

end

end A272707.P9059559215655609496

namespace A272707

/-- `A325657(n)+A005491(n)` -/
def P9059559215655609496.Spec : Prop :=
  ∀ n, P9059559215655609496.a n = A272707 n

end A272707

/-! ## A272707.P9282212691632659214

`A265724(n)+A081423(n)`
-/

namespace A272707.P9282212691632659214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 n + A081423 n

end

end A272707.P9282212691632659214

namespace A272707

/-- `A265724(n)+A081423(n)` -/
def P9282212691632659214.Spec : Prop :=
  ∀ n, P9282212691632659214.a n = A272707 n

end A272707

/-! ## A272707.P2250102338496133411

`A270109(n)-A093178(n)`
-/

namespace A272707.P2250102338496133411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 n - A093178 n

end

end A272707.P2250102338496133411

namespace A272707

/-- `A270109(n)-A093178(n)` -/
def P2250102338496133411.Spec : Prop :=
  ∀ n, P2250102338496133411.a n = A272707 n

end A272707

/-! ## A272707.P10819066849955033202

`∑[A265723(n)+A056105(n)]`
-/

namespace A272707.P10819066849955033202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 n + A056105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272707.P10819066849955033202

namespace A272707

/-- `∑[A265723(n)+A056105(n)]` -/
def P10819066849955033202.Spec : Prop :=
  ∀ n, P10819066849955033202.a n = A272707 n

end A272707

/-! ## A272707.P11676201232535406602

`A173965(n+1)-A267353(n)`
-/

namespace A272707.P11676201232535406602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173965 (n + 1) - A267353 n

end

end A272707.P11676201232535406602

namespace A272707

/-- `A173965(n+1)-A267353(n)` -/
def P11676201232535406602.Spec : Prop :=
  ∀ n, P11676201232535406602.a n = A272707 n

end A272707

/-! ## A272707.P6007120383609229710

`A027444(n)+A141310(n)+n`
-/

namespace A272707.P6007120383609229710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + (A141310 n + (n : ℤ))

end

end A272707.P6007120383609229710

namespace A272707

/-- `A027444(n)+A141310(n)+n` -/
def P6007120383609229710.Spec : Prop :=
  ∀ n, P6007120383609229710.a n = A272707 n

end A272707

/-! ## A272707.P1806938375534579886

`A100705(n)+gcd(n, A007590(n))`
-/

namespace A272707.P1806938375534579886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100705 n + (Int.gcd (n : ℤ) (A007590 n) : ℤ)

end

end A272707.P1806938375534579886

namespace A272707

/-- `A100705(n)+gcd(n, A007590(n))` -/
def P1806938375534579886.Spec : Prop :=
  ∀ n, P1806938375534579886.a n = A272707 n

end A272707

/-! ## A272707.P9885483412780013471

`∑[A267489(A047238(n+1))+1]`
-/

namespace A272707.P9885483412780013471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267489 (A047238 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272707.P9885483412780013471

namespace A272707

/-- `∑[A267489(A047238(n+1))+1]` -/
def P9885483412780013471.Spec : Prop :=
  ∀ n, P9885483412780013471.a n = A272707 n

end A272707

/-! ## A272707.P13553292753993795790

`∑[A058331(n)+2*A247375(n)]`
-/

namespace A272707.P13553292753993795790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + 2 * A247375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272707.P13553292753993795790

namespace A272707

/-- `∑[A058331(n)+2*A247375(n)]` -/
def P13553292753993795790.Spec : Prop :=
  ∀ n, P13553292753993795790.a n = A272707 n

end A272707

/-! ## A272707.P17003514676214711443

`∑[A042948(A141310(n))+A000567(n)]`
-/

namespace A272707.P17003514676214711443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A141310 n).toNat + A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272707.P17003514676214711443

namespace A272707

/-- `∑[A042948(A141310(n))+A000567(n)]` -/
def P17003514676214711443.Spec : Prop :=
  ∀ n, P17003514676214711443.a n = A272707 n

end A272707

/-! ## A272707.P16548405070032065846

`∑[A272705(n)]`
-/

namespace A272707.P16548405070032065846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272707.P16548405070032065846

namespace A272707

/-- `∑[A272705(n)]` -/
def P16548405070032065846.Spec : Prop :=
  ∀ n, P16548405070032065846.a n = A272707 n

end A272707

/-!
# A272708: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A272708, the canonical program `A272708.P12319728231824830863` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272708 has offset 0).

The definition of A272708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272708.P12319728231824830863

`2*a(n-2)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=12, a(3)=24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272708

/-- `2*a(n-2)-a(n-4)` -/
def P12319728231824830863.Spec : Prop :=
  ∀ n, P12319728231824830863.a n = A272708 n

theorem P12319728231824830863.correct : P12319728231824830863.Spec := by
  intro n
  simp only [A272708]

end A272708

/-! ## A272708.P10285454483366081445

`2*(1+3*n)+(-1)^n*(2-2*n)`
-/

namespace A272708.P10285454483366081445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (1 + 3 * n) : ℤ) + (-1) ^ n * (2 - (2 * n : ℤ))

end

end A272708.P10285454483366081445

namespace A272708

/-- `2*(1+3*n)+(-1)^n*(2-2*n)` -/
def P10285454483366081445.Spec : Prop :=
  ∀ n, P10285454483366081445.a n = A272708 n

theorem P10285454483366081445.correct : P10285454483366081445.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A272708, Nat.add_sub_cancel, A272708.P10285454483366081445.a, A272708.P12319728231824830863.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A272708, Nat.add_sub_cancel, A272708.P10285454483366081445.a, A272708.P12319728231824830863.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A272708

/-! ## A272708.P892122511043197754

`8*or(1, n)/gcd(2, n)`
-/

namespace A272708.P892122511043197754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((Nat.lor 1 n : ℚ) / (Nat.gcd 2 n : ℚ))

end

end A272708.P892122511043197754

namespace A272708

/-- `8*or(1, n)/gcd(2, n)` -/
def P892122511043197754.Spec : Prop :=
  ∀ n, P892122511043197754.a n = (A272708 n : ℚ)

end A272708

/-! ## A272708.P8542126691356172866

`4*(n^(n%2)+n)`
-/

namespace A272708.P8542126691356172866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ (n % 2) + n)

end

end A272708.P8542126691356172866

namespace A272708

/-- `4*(n^(n%2)+n)` -/
def P8542126691356172866.Spec : Prop :=
  ∀ n, (P8542126691356172866.a n : ℤ) = A272708 n

end A272708

/-! ## A272708.P15906092910204056026

`4*(n^and(1, n)+n)`
-/

namespace A272708.P15906092910204056026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n ^ Nat.land 1 n + n)

end

end A272708.P15906092910204056026

namespace A272708

/-- `4*(n^and(1, n)+n)` -/
def P15906092910204056026.Spec : Prop :=
  ∀ n, (P15906092910204056026.a n : ℤ) = A272708 n

end A272708

/-! ## A272708.P1028135983073544721

`4*(C(n, and(1, n))+n)`
-/

namespace A272708.P1028135983073544721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.choose n (Nat.land 1 n) + n)

end

end A272708.P1028135983073544721

namespace A272708

/-- `4*(C(n, and(1, n))+n)` -/
def P1028135983073544721.Spec : Prop :=
  ∀ n, (P1028135983073544721.a n : ℤ) = A272708 n

end A272708

/-! ## A272708.P11870585688914335471

`or(1, n)*a(and(1, n))` with `a(0)=4, a(1)=8`
-/

namespace A272708.P11870585688914335471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n a =>
  Nat.lor 1 n * a (Nat.land 1 n)

end

end A272708.P11870585688914335471

namespace A272708

/-- `or(1, n)*a(and(1, n))` -/
def P11870585688914335471.Spec : Prop :=
  ∀ n, (P11870585688914335471.a n : ℤ) = A272708 n

end A272708

/-! ## A272708.P14461029021045552765

`4*(xor(1, n)%(n+1)+n+1)`
-/

namespace A272708.P14461029021045552765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.xor 1 n % (n + 1) + (n + 1))

end

end A272708.P14461029021045552765

namespace A272708

/-- `4*(xor(1, n)%(n+1)+n+1)` -/
def P14461029021045552765.Spec : Prop :=
  ∀ n, (P14461029021045552765.a n : ℤ) = A272708 n

end A272708

/-! ## A272708.P7513355908179420000

`4*∑[∑[ogf((1+2x+x^2+2x^3)/(1+2x+x^2))]]`
-/

namespace A272708.P7513355908179420000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272708.P7513355908179420000

namespace A272708

/-- `4*∑[∑[ogf((1+2x+x^2+2x^3)/(1+2x+x^2))]]` -/
def P7513355908179420000.Spec : Prop :=
  ∀ n, P7513355908179420000.a n = A272708 n

end A272708

/-! ## A272708.P15333649871189214721

`Δ[4*A397108(n)]`
-/

namespace A272708.P15333649871189214721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A397108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272708.P15333649871189214721

namespace A272708

/-- `Δ[4*A397108(n)]` -/
def P15333649871189214721.Spec : Prop :=
  ∀ n, P15333649871189214721.a n = A272708 n

end A272708

/-! ## A272708.P15693065637880968213

`4*A043547(n+1)`
-/

namespace A272708.P15693065637880968213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A043547 (n + 1)

end

end A272708.P15693065637880968213

namespace A272708

/-- `4*A043547(n+1)` -/
def P15693065637880968213.Spec : Prop :=
  ∀ n, P15693065637880968213.a n = A272708 n

end A272708

/-! ## A272708.P10747636997100106274

`4*(A227906(n)+1)`
-/

namespace A272708.P10747636997100106274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A227906 n + 1)

end

end A272708.P10747636997100106274

namespace A272708

/-- `4*(A227906(n)+1)` -/
def P10747636997100106274.Spec : Prop :=
  ∀ n, P10747636997100106274.a n = A272708 n

end A272708

/-! ## A272708.P78762694751699004

`4*(A321220(n)-1)`
-/

namespace A272708.P78762694751699004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A321220 n - 1)

end

end A272708.P78762694751699004

namespace A272708

/-- `4*(A321220(n)-1)` -/
def P78762694751699004.Spec : Prop :=
  ∀ n, P78762694751699004.a n = A272708 n

end A272708

/-! ## A272708.P744317265102203903

`4*(A093178(n)+n)`
-/

namespace A272708.P744317265102203903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A093178 n + (n : ℤ))

end

end A272708.P744317265102203903

namespace A272708

/-- `4*(A093178(n)+n)` -/
def P744317265102203903.Spec : Prop :=
  ∀ n, P744317265102203903.a n = A272708 n

end A272708

/-! ## A272708.P10168648155606957497

`2*A222259(2*(n+1))`
-/

namespace A272708.P10168648155606957497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222259 (2 * (n + 1))

end

end A272708.P10168648155606957497

namespace A272708

/-- `2*A222259(2*(n+1))` -/
def P10168648155606957497.Spec : Prop :=
  ∀ n, P10168648155606957497.a n = A272708 n

end A272708

/-! ## A272708.P7559511405671106044

`4*A065171(2*n+1)`
-/

namespace A272708.P7559511405671106044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A065171 (2 * n + 1)

end

end A272708.P7559511405671106044

namespace A272708

/-- `4*A065171(2*n+1)` -/
def P7559511405671106044.Spec : Prop :=
  ∀ n, P7559511405671106044.a n = A272708 n

end A272708

/-!
# A272709: Number of 2-colorings of [1..n] with no monochromatic Pythagorean triple.

The programs for A272709, there is no canonical definition to state claims against.
-/

/-! ## A272709.P11380193016357543531

`A238745(∏[p?[A025437(n)]])`
-/

namespace A272709.P11380193016357543531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272709.P11380193016357543531

/-! ## A272709.P14843390574215318969

`A238745(∏[p?[A060398(n)]])`
-/

namespace A272709.P14843390574215318969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272709.P14843390574215318969

/-! ## A272709.P9460941013479430264

`A319626(∏[p?[A025437(n)]])`
-/

namespace A272709.P9460941013479430264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272709.P9460941013479430264

/-! ## A272709.P11751237541179154543

`A324932(∏[p?[A345927(n)]])`
-/

namespace A272709.P11751237541179154543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272709.P11751237541179154543

/-! ## A272709.P7209752352618548505

`A238745(∏[A094915(n+1)])`
-/

namespace A272709.P7209752352618548505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272709.P7209752352618548505

/-!
# A272710: Primes of the form abs((1/4)*(n^5 - 133n^4 + 6729n^3 - 158379n^2 + 1720294n - 6823316)) in order of increasing nonnegative n.

The programs for A272710, there is no canonical definition to state claims against.
-/

/-! ## A272710.P17775254886334962358

`abs(A121887(A247163(n+1)))`
-/

namespace A272710.P17775254886334962358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121887 (A247163 (n + 1)).toNat|

end

end A272710.P17775254886334962358

/-! ## A272710.P5704976472772702721

`lcm(A033999(n), A121887(A247163(n+1)))`
-/

namespace A272710.P5704976472772702721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A121887 (A247163 (n + 1)).toNat)

end

end A272710.P5704976472772702721

/-! ## A272710.P9899683680483223752

`gcd(A008683(4*(n+1)), A121887(A247163(n+1)))`
-/

namespace A272710.P9899683680483223752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (4 * (n + 1))) (A121887 (A247163 (n + 1)).toNat)

end

end A272710.P9899683680483223752

/-! ## A272710.P16086010702575582056

`gcd(A000038(A038207(n)), A121887(n))`
-/

namespace A272710.P16086010702575582056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A038207 n).toNat) (A121887 n)

end

end A272710.P16086010702575582056

/-! ## A272710.P14562939472799715128

`lcm(A033999(A088630(n)), A121887(n))`
-/

namespace A272710.P14562939472799715128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A088630 n).toNat) (A121887 n)

end

end A272710.P14562939472799715128

/-!
# A272711: Square numbers whose binary reversal is also square.

The programs for A272711, there is no canonical definition to state claims against.
-/

/-! ## A272711.P17910613850381447912

`record[A135529(n+1)²]`
-/

namespace A272711.P17910613850381447912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272711.P17910613850381447912

/-! ## A272711.P12911533945014251279

`record[A178139(n+2)²]`
-/

namespace A272711.P12911533945014251279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178139 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272711.P12911533945014251279

/-! ## A272711.P9256039714072939934

`abs(A051494(∑[2^floor(n/2)]))`
-/

namespace A272711.P9256039714072939934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051494 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A272711.P9256039714072939934

/-! ## A272711.P11970722480845719092

`A181988(A027383(n))²`
-/

namespace A272711.P11970722480845719092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (A027383 n).toNat ^ 2

end

end A272711.P11970722480845719092

/-!
# A272712: Perfect powers that are the difference of two nonnegative Fibonacci numbers.

The programs for A272712, there is no canonical definition to state claims against.
-/

/-! ## A272712.P14440601547977147758

`filter[A007298(n+2), A075802(#)]`
-/

namespace A272712.P14440601547977147758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A272712.P14440601547977147758

/-! ## A272712.P8231261805207592747

`∩[A001597(n+1), A007298(n+1)]`
-/

namespace A272712.P8231261805207592747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272712.P8231261805207592747

/-! ## A272712.P5854176211301239065

`∩[A007298(n+1), A359493(n+1)]`
-/

namespace A272712.P5854176211301239065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272712.P5854176211301239065

/-!
# A272713: Prime powers (p^k, k>=2) that are the sum of consecutive prime numbers.

The programs for A272713, there is no canonical definition to state claims against.
-/

/-! ## A272713.P3104575260099964894

`∩[A025475(n+1), A050936(n+1)]`
-/

namespace A272713.P3104575260099964894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272713.P3104575260099964894

/-! ## A272713.P3423020391486760731

`∩[A050936(n+1), A134611(n+1)]`
-/

namespace A272713.P3423020391486760731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272713.P3423020391486760731

/-! ## A272713.P15703442920553844895

`∩[A050936(n+1), A134612(n+1)]`
-/

namespace A272713.P15703442920553844895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272713.P15703442920553844895

/-! ## A272713.P7014749982575339186

`∩[A025475(n+1), A034707(n+1)]`
-/

namespace A272713.P7014749982575339186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272713.P7014749982575339186

/-!
# A272718: Partial sums of gcd-sum sequence A018804.

The programs for A272718, the canonical program `A272718.P14404705752265822826` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272718 has offset 1).

The definition of A272718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, A178881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272718.P12205961593114926433

`A178881(n+1)+(n+1)*(n+2)/2`
-/

namespace A272718.P12205961593114926433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178881 (n + 1) : ℚ) + ((n + 1) * (n + 2) : ℚ) / 2

end

end A272718.P12205961593114926433

namespace A272718

/-- `A178881(n+1)+(n+1)*(n+2)/2` -/
def P12205961593114926433.Spec : Prop :=
  ∀ n, P12205961593114926433.a n = (A272718 (n + 1) : ℚ)

end A272718

/-! ## A272718.P11112219777592013175

`(A018806(n+1)+(n+1)*(n+2)/2)/2`
-/

namespace A272718.P11112219777592013175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A018806 (n + 1) : ℚ) + ((n + 1) * (n + 2) : ℚ) / 2) / 2

end

end A272718.P11112219777592013175

namespace A272718

/-- `(A018806(n+1)+(n+1)*(n+2)/2)/2` -/
def P11112219777592013175.Spec : Prop :=
  ∀ n, P11112219777592013175.a n = (A272718 (n + 1) : ℚ)

end A272718

/-! ## A272718.P14404705752265822826

`A018806(n+1)-A178881(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A272718

/-- `A018806(n+1)-A178881(n+1)` -/
def P14404705752265822826.Spec : Prop :=
  ∀ n, P14404705752265822826.a n = A272718 (n + 1)

theorem P14404705752265822826.correct : P14404705752265822826.Spec := by
  intro n
  simp only [A272718, Nat.add_sub_cancel]

end A272718

/-! ## A272718.P971293600626433603

`∑[A018804(n+1)]`
-/

namespace A272718.P971293600626433603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P971293600626433603

namespace A272718

/-- `∑[A018804(n+1)]` -/
def P971293600626433603.Spec : Prop :=
  ∀ n, P971293600626433603.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P6402275522031598042

`∑[Δ[A209981(n)]/32]`
-/

namespace A272718.P6402275522031598042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209981 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P6402275522031598042

namespace A272718

/-- `∑[Δ[A209981(n)]/32]` -/
def P6402275522031598042.Spec : Prop :=
  ∀ n, P6402275522031598042.a n = (A272718 (n + 1) : ℚ)

end A272718

/-! ## A272718.P8104151790533011881

`∑[∑{d}[n+1, A029935(#)]]`
-/

namespace A272718.P8104151790533011881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A029935 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P8104151790533011881

namespace A272718

/-- `∑[∑{d}[n+1, A029935(#)]]` -/
def P8104151790533011881.Spec : Prop :=
  ∀ n, P8104151790533011881.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P14158772735787974788

`∑[∑[Δ[A209295(n)]-1]]`
-/

namespace A272718.P14158772735787974788
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P14158772735787974788

namespace A272718

/-- `∑[∑[Δ[A209295(n)]-1]]` -/
def P14158772735787974788.Spec : Prop :=
  ∀ n, P14158772735787974788.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P10017625305058006038

`∑[A006579(n+1)+1+n]`
-/

namespace A272718.P10017625305058006038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P10017625305058006038

namespace A272718

/-- `∑[A006579(n+1)+1+n]` -/
def P10017625305058006038.Spec : Prop :=
  ∀ n, P10017625305058006038.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P10207717271228826236

`∑[A209295(n+1)-(n+1)]`
-/

namespace A272718.P10207717271228826236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P10207717271228826236

namespace A272718

/-- `∑[A209295(n+1)-(n+1)]` -/
def P10207717271228826236.Spec : Prop :=
  ∀ n, P10207717271228826236.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P9173211803863471062

`∑[A268631(n+1)]+(n+1)²`
-/

namespace A272718.P9173211803863471062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A272718.P9173211803863471062

namespace A272718

/-- `∑[A268631(n+1)]+(n+1)²` -/
def P9173211803863471062.Spec : Prop :=
  ∀ n, P9173211803863471062.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P15464315318964197764

`∑[(n+1)²-A344485(n+1)]`
-/

namespace A272718.P15464315318964197764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A344485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P15464315318964197764

namespace A272718

/-- `∑[(n+1)²-A344485(n+1)]` -/
def P15464315318964197764.Spec : Prop :=
  ∀ n, P15464315318964197764.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P11380174023571920578

`∑[∑{d}[n+1, (n+1)/#*A000010(#)]]`
-/

namespace A272718.P11380174023571920578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ) * (A000010 d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P11380174023571920578

namespace A272718

/-- `∑[∑{d}[n+1, (n+1)/#*A000010(#)]]` -/
def P11380174023571920578.Spec : Prop :=
  ∀ n, P11380174023571920578.a n = (A272718 (n + 1) : ℚ)

end A272718

/-! ## A272718.P13255788250398027134

`A064276(n)-A344485(n+1)`
-/

namespace A272718.P13255788250398027134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064276 n - A344485 (n + 1)

end

end A272718.P13255788250398027134

namespace A272718

/-- `A064276(n)-A344485(n+1)` -/
def P13255788250398027134.Spec : Prop :=
  ∀ n, P13255788250398027134.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P1438558064788284454

`∑[A127626(∑[n+1])]`
-/

namespace A272718.P1438558064788284454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127626 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P1438558064788284454

namespace A272718

/-- `∑[A127626(∑[n+1])]` -/
def P1438558064788284454.Spec : Prop :=
  ∀ n, P1438558064788284454.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P3890105530203470703

`∑[A127627(∑[n+1])]`
-/

namespace A272718.P3890105530203470703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127627 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P3890105530203470703

namespace A272718

/-- `∑[A127627(∑[n+1])]` -/
def P3890105530203470703.Spec : Prop :=
  ∀ n, P3890105530203470703.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P12452805152250776954

`∑[A343516(∑[n+1])]`
-/

namespace A272718.P12452805152250776954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272718.P12452805152250776954

namespace A272718

/-- `∑[A343516(∑[n+1])]` -/
def P12452805152250776954.Spec : Prop :=
  ∀ n, P12452805152250776954.a n = A272718 (n + 1)

end A272718

/-! ## A272718.P14519735583876481841

`A345229(∑[n+2])`
-/

namespace A272718.P14519735583876481841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272718.P14519735583876481841

namespace A272718

/-- `A345229(∑[n+2])` -/
def P14519735583876481841.Spec : Prop :=
  ∀ n, P14519735583876481841.a n = A272718 (n + 1)

end A272718

/-!
# A272720: Where records occur in A054025.

The programs for A272720, there is no canonical definition to state claims against.
-/

/-! ## A272720.P2840857837991569252

`A359527(A227885(n+1))`
-/

namespace A272720.P2840857837991569252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359527 (A227885 (n + 1)).toNat

end

end A272720.P2840857837991569252

/-! ## A272720.P5459555355005386603

`A093819(lcm(4, A132117(n+1)))`
-/

namespace A272720.P5459555355005386603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (Int.lcm 4 (A132117 (n + 1)))

end

end A272720.P5459555355005386603

/-!
# A272721: The curvature (rounded down) of the n-th circle inscribed in the area related to the critical point of the Mandelbrot set at C = 1/4.

The programs for A272721, there is no canonical definition to state claims against.
-/

/-! ## A272721.P4177582640648987872

`A191771(A211431(n+1))`
-/

namespace A272721.P4177582640648987872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191771 (A211431 (n + 1)).toNat

end

end A272721.P4177582640648987872

/-! ## A272721.P1702825993755865422

`A352874(A082341(n)+A003022(n+4))`
-/

namespace A272721.P1702825993755865422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352874 (A082341 n + A003022 (n + 4)).toNat

end

end A272721.P1702825993755865422

/-! ## A272721.P1221398034789851384

`A333227(A333242(2*(n+1))+A333229(n+2))`
-/

namespace A272721.P1221398034789851384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (A333242 (2 * (n + 1)) + A333229 (n + 2)).toNat

end

end A272721.P1221398034789851384

/-!
# A272723: Primes p such that the cardinality of the set J_p(2) > 0.

The programs for A272723, there is no canonical definition to state claims against.
-/

/-! ## A272723.P382232182525326920

`A000040(lt[A228202(2*n+5), A122651(n)])`
-/

namespace A272723.P382232182525326920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228202 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272723.P382232182525326920

/-! ## A272723.P13794679487284371089

`p?[A175107(3*(n+1))+A175066(2*(n+2))]`
-/

namespace A272723.P13794679487284371089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175107 (3 * (n + 1)) + A175066 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272723.P13794679487284371089

/-! ## A272723.P7033756087253720629

`p?[n*A016498(n+1)²]`
-/

namespace A272723.P7033756087253720629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016498 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272723.P7033756087253720629

/-! ## A272723.P13438713399918211896

`eq[A016498(n+1), A323524(n)]`
-/

namespace A272723.P13438713399918211896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272723.P13438713399918211896

/-! ## A272723.P11877831634766562252

`record[A020481(A051063(3*(n+1)))]`
-/

namespace A272723.P11877831634766562252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (A051063 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272723.P11877831634766562252

/-!
# A272727: a(0)=0; thereafter a(n+1) is the number of coincidences between the sequence so far (a(0), ..., a(n)) and its reverse (a(n), ..., a(0)).

The programs for A272727, there is no canonical definition to state claims against.
-/

/-! ## A272727.P8462027979422566876

`A010872(A014493(3*(n+1)))*A331134(2*(n+1))`
-/

namespace A272727.P8462027979422566876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A014493 (3 * (n + 1))).toNat * A331134 (2 * (n + 1))

end

end A272727.P8462027979422566876

/-! ## A272727.P1203870777833319663

`A101290(n)%A260732(A072345(n))`
-/

namespace A272727.P1203870777833319663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101290 n) (A260732 (A072345 n).toNat)

end

end A272727.P1203870777833319663

/-! ## A272727.P15185373299213786772

`A381524(A000035(n)*A000040(n+1))`
-/

namespace A272727.P15185373299213786772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A000035 n * A000040 (n + 1)).toNat

end

end A272727.P15185373299213786772

/-! ## A272727.P7850261645979199567

`A101290(n*A056594(A016862(n)))`
-/

namespace A272727.P7850261645979199567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101290 ((n : ℤ) * A056594 (A016862 n).toNat).toNat

end

end A272727.P7850261645979199567

/-! ## A272727.P11843459969733586587

`A101290(n*A059841(A016862(n)))`
-/

namespace A272727.P11843459969733586587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101290 ((n : ℤ) * A059841 (A016862 n).toNat).toNat

end

end A272727.P11843459969733586587

/-!
# A272728: a(n) = A272727(2n-1) - n.

The programs for A272728, there is no canonical definition to state claims against.
-/

/-! ## A272728.P2839077519595196778

`A272727(2*(n+1)-1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272728.P2839077519595196778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 (2 * (n + 1) - 1) - (n + 1 : ℤ)

end

end A272728.P2839077519595196778

/-! ## A272728.P4729029664026155292

`A272727(2*n+1)-1-n`
-/

namespace A272728.P4729029664026155292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 (2 * n + 1) - 1 - (n : ℤ)

end

end A272728.P4729029664026155292

/-! ## A272728.P8195553839959659505

`A004917(A272727(2*n+1)-n)`
-/

namespace A272728.P8195553839959659505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (A272727 (2 * n + 1) - (n : ℤ)).toNat

end

end A272728.P8195553839959659505

/-! ## A272728.P2127048867965449068

`A001489(2*n+1)+A272727(2*n+1)+n`
-/

namespace A272728.P2127048867965449068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n + 1) + (A272727 (2 * n + 1) + (n : ℤ))

end

end A272728.P2127048867965449068

/-! ## A272728.P10924803775674612932

`A028310(A272727(2*n+1))+A001478(n+1)`
-/

namespace A272728.P10924803775674612932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A272727 (2 * n + 1)).toNat + A001478 (n + 1)

end

end A272728.P10924803775674612932

/-!
# A272729: a(n) is the number of repetitions of 2n-1 in A272727.

The programs for A272729, there is no canonical definition to state claims against.
-/

/-! ## A272729.P610443505494047620

`Δ[A094591(n)]`
-/

namespace A272729.P610443505494047620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272729.P610443505494047620

/-! ## A272729.P10478431844140972049

`A037988(n)+1-A094591(n)`
-/

namespace A272729.P10478431844140972049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037988 n + (1 - A094591 n)

end

end A272729.P10478431844140972049

/-! ## A272729.P154363325338741780

`A094591(n+1)-A094591(n)`
-/

namespace A272729.P154363325338741780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 (n + 1) - A094591 n

end

end A272729.P154363325338741780

/-! ## A272729.P10820794005372343194

`(A037988(n)*A094591(n))%A094591(n+1)`
-/

namespace A272729.P10820794005372343194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037988 n * A094591 n) (A094591 (n + 1))

end

end A272729.P10820794005372343194

/-! ## A272729.P12773035173265764426

`A037988(n)-A359807(A094591(n))`
-/

namespace A272729.P12773035173265764426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037988 n - A359807 (A094591 n).toNat

end

end A272729.P12773035173265764426

/-! ## A272729.P4090231200253984592

`A359807(2*(n+1))-A359807(A359807(2*(n+1)))`
-/

namespace A272729.P4090231200253984592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359807 (2 * (n + 1)) - A359807 (A359807 (2 * (n + 1))).toNat

end

end A272729.P4090231200253984592

/-! ## A272729.P16375287443009855111

`A272728(A094591(A037988(n)))`
-/

namespace A272729.P16375287443009855111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272728 (A094591 (A037988 n).toNat).toNat

end

end A272729.P16375287443009855111

/-! ## A272729.P16264819479916854983

`A272728(A094591(A359807(n+1)+n+1))`
-/

namespace A272729.P16264819479916854983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272728 (A094591 (A359807 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A272729.P16264819479916854983

/-! ## A272729.P307397080916301199

`A001222(ratio[A000079(A094591(n)-1)])`
-/

namespace A272729.P307397080916301199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094591 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A272729.P307397080916301199

/-! ## A272729.P4992951704445827483

`A001222(ratio[A000079(A094591(n))])`
-/

namespace A272729.P4992951704445827483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A272729.P4992951704445827483

/-!
# A272730: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A272730, there is no canonical definition to state claims against.
-/

/-! ## A272730.P2875162185130532663

`A272733(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272730.P2875162185130532663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272733 (n - 1) + a (n - 1)

end

end A272730.P2875162185130532663

/-! ## A272730.P14130885018954801198

`(2*n+3)²-(A272733(n)+A271539(n))`
-/

namespace A272730.P14130885018954801198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - (A272733 n + A271539 n)

end

end A272730.P14130885018954801198

/-! ## A272730.P8895113200653090456

`Δ[A272732(n)]-A272733(n)`
-/

namespace A272730.P8895113200653090456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272733 n

end

end A272730.P8895113200653090456

/-! ## A272730.P6427141620263566443

`A272732(n+1)-(A272733(n)+A272732(n))`
-/

namespace A272730.P6427141620263566443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272732 (n + 1) - (A272733 n + A272732 n)

end

end A272730.P6427141620263566443

/-!
# A272731: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A272731, there is no canonical definition to state claims against.
-/

/-! ## A272731.P2514282067704686567

`A272730(2^n-1)`
-/

namespace A272731.P2514282067704686567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (2 ^ n - 1)

end

end A272731.P2514282067704686567

/-! ## A272731.P1437151033172068030

`record[A272730(A227351(n))]`
-/

namespace A272731.P1437151033172068030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272731.P1437151033172068030

/-! ## A272731.P9843747688257859203

`record[A272730(A255565(n))]`
-/

namespace A272731.P9843747688257859203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272731.P9843747688257859203

/-! ## A272731.P5662697248484033522

`record[A272730(Δ[A228693(n)])]`
-/

namespace A272731.P5662697248484033522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272731.P5662697248484033522

/-! ## A272731.P6271181697831387520

`record[A272730(A275715(n+1))]`
-/

namespace A272731.P6271181697831387520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (A275715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272731.P6271181697831387520

/-!
# A272732: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A272732, there is no canonical definition to state claims against.
-/

/-! ## A272732.P16712660022352945491

`∑[A272730(n)]`
-/

namespace A272732.P16712660022352945491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272732.P16712660022352945491

/-! ## A272732.P8039655650127923893

`∑[∑[A272733(n)]+1-A272733(n)]`
-/

namespace A272732.P8039655650127923893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272733 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272732.P8039655650127923893

/-! ## A272732.P12849162101343637915

`A272730(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A272732.P12849162101343637915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272730 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A272732.P12849162101343637915

/-! ## A272732.P9283505126554064323

`A272730(gcd(n, A000290(n)))+a(n-1)` with `a(0)=1`
-/

namespace A272732.P9283505126554064323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272730 (Int.gcd (n : ℤ) (A000290 n)) + a (n - 1)

end

end A272732.P9283505126554064323

/-! ## A272732.P9360438549107427091

`A271539(n)+∑[A016754(n)-A271539(n)]`
-/

namespace A272732.P9360438549107427091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A271539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271539 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272732.P9360438549107427091

/-! ## A272732.P11307550042543116732

`A272730(A000196(n*n))+a(n-1)` with `a(0)=1`
-/

namespace A272732.P11307550042543116732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272730 (A000196 (n * n)).toNat + a (n - 1)

end

end A272732.P11307550042543116732

/-!
# A272733: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A272733, there is no canonical definition to state claims against.
-/

/-! ## A272733.P2995218154669339496

`Δ[A272730(n)]`
-/

namespace A272733.P2995218154669339496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272733.P2995218154669339496

/-! ## A272733.P15551343841554308382

`A272730(n+1)-A272730(n)`
-/

namespace A272733.P15551343841554308382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272730 (n + 1) - A272730 n

end

end A272733.P15551343841554308382

/-!
# A272734: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A272734, there is no canonical definition to state claims against.
-/

/-! ## A272734.P18012276097681184416

`A016754(n)-A272194(n)%A011199(n)`
-/

namespace A272734.P18012276097681184416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A272194 n) (A011199 n)

end

end A272734.P18012276097681184416

/-! ## A272734.P15358973141868666439

`A272737(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272734.P15358973141868666439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272737 (n - 1) + a (n - 1)

end

end A272734.P15358973141868666439

/-! ## A272734.P15289717153279248656

`Δ[A272736(n)]-A272737(n)`
-/

namespace A272734.P15289717153279248656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272737 n

end

end A272734.P15289717153279248656

/-! ## A272734.P16067303400281272001

`A272736(n+1)-(A272737(n)+A272736(n))`
-/

namespace A272734.P16067303400281272001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272736 (n + 1) - (A272737 n + A272736 n)

end

end A272734.P16067303400281272001

/-! ## A272734.P17371245270721009939

`A181385(A016825(n))-A272194(n)`
-/

namespace A272734.P17371245270721009939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272194 n

end

end A272734.P17371245270721009939

/-! ## A272734.P6584281129239029347

`A181385(A130824(n+1))-A272194(n)`
-/

namespace A272734.P6584281129239029347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A130824 (n + 1)).toNat - A272194 n

end

end A272734.P6584281129239029347

/-! ## A272734.P14448266327611303418

`A008740(A008458(n))-A272194(n)`
-/

namespace A272734.P14448266327611303418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272194 n

end

end A272734.P14448266327611303418

/-! ## A272734.P5776382076665843346

`A022144(A000217(n))+1-A272194(n)`
-/

namespace A272734.P5776382076665843346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat + (1 - A272194 n)

end

end A272734.P5776382076665843346

/-!
# A272735: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A272735, there is no canonical definition to state claims against.
-/

/-! ## A272735.P3081160976865744286

`A272734(2^n-1)`
-/

namespace A272735.P3081160976865744286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 (2 ^ n - 1)

end

end A272735.P3081160976865744286

/-! ## A272735.P2671859246397755551

`record[A272734(A091264(n))]`
-/

namespace A272735.P2671859246397755551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272735.P2671859246397755551

/-! ## A272735.P1045588273718068335

`record[A272734(A173787(n))]`
-/

namespace A272735.P1045588273718068335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272735.P1045588273718068335

/-! ## A272735.P5798560974515994024

`record[A272734(A218616(n))]`
-/

namespace A272735.P5798560974515994024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272735.P5798560974515994024

/-! ## A272735.P463016505495992313

`record[A272734(A255067(n))]`
-/

namespace A272735.P463016505495992313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272735.P463016505495992313

/-!
# A272736: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A272736, there is no canonical definition to state claims against.
-/

/-! ## A272736.P14945523073604307259

`∑[A272734(n)]`
-/

namespace A272736.P14945523073604307259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272736.P14945523073604307259

/-! ## A272736.P7885952413188419728

`A272734(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A272736.P7885952413188419728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272734 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A272736.P7885952413188419728

/-! ## A272736.P15982957068425147276

`a(n-1)+A272734(n)%A011199(n)` with `a(0)=1`
-/

namespace A272736.P15982957068425147276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272734 n) (A011199 n)

end

end A272736.P15982957068425147276

/-! ## A272736.P6203580385315202999

`A272453(n)+A272748(n)-A272250(n)`
-/

namespace A272736.P6203580385315202999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272453 n + (A272748 n - A272250 n)

end

end A272736.P6203580385315202999

/-! ## A272736.P5058802172934565608

`A272700(n)+A272703(n)-A272250(n)`
-/

namespace A272736.P5058802172934565608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272700 n + (A272703 n - A272250 n)

end

end A272736.P5058802172934565608

/-! ## A272736.P5687527640759974552

`∑[A181385(A016825(n))-A272194(n)]`
-/

namespace A272736.P5687527640759974552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272736.P5687527640759974552

/-! ## A272736.P2243211742389215353

`∑[A181385(A016825(n))]-A272250(n)`
-/

namespace A272736.P2243211742389215353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272250 n

end

end A272736.P2243211742389215353

/-! ## A272736.P199055379303497960

`∑[A008740(A008458(n))-A272194(n)]`
-/

namespace A272736.P199055379303497960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272736.P199055379303497960

/-! ## A272736.P99875884423005825

`∑[A008740(A008458(n))]-A272250(n)`
-/

namespace A272736.P99875884423005825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272250 n

end

end A272736.P99875884423005825

/-!
# A272737: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A272737, there is no canonical definition to state claims against.
-/

/-! ## A272737.P959854231572340174

`Δ[A272734(n)]`
-/

namespace A272737.P959854231572340174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272737.P959854231572340174

/-! ## A272737.P1838281134710458467

`A272734(n+1)-A272734(n)`
-/

namespace A272737.P1838281134710458467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272734 (n + 1) - A272734 n

end

end A272737.P1838281134710458467

/-! ## A272737.P15472802478396157975

`Δ[A181385(A016825(n))-A272194(n)]`
-/

namespace A272737.P15472802478396157975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272737.P15472802478396157975

/-! ## A272737.P8469497467483190355

`Δ[A181385(A016825(n))]-A272251(n)`
-/

namespace A272737.P8469497467483190355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272251 n

end

end A272737.P8469497467483190355

/-! ## A272737.P15754952007534732427

`Δ[A008740(A008458(n))-A272194(n)]`
-/

namespace A272737.P15754952007534732427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272737.P15754952007534732427

/-! ## A272737.P97386309796390510

`Δ[A008740(A008458(n))]-A272251(n)`
-/

namespace A272737.P97386309796390510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272251 n

end

end A272737.P97386309796390510

/-! ## A272737.P8673793809989559658

`Δ[A022144(A000217(n))-A272194(n)]`
-/

namespace A272737.P8673793809989559658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat - A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272737.P8673793809989559658

/-! ## A272737.P7100979082279143429

`Δ[A022144(A000217(n))]-A272251(n)`
-/

namespace A272737.P7100979082279143429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272251 n

end

end A272737.P7100979082279143429

/-!
# A272738: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A272738, there is no canonical definition to state claims against.
-/

/-! ## A272738.P7386711168442233195

`A272741(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272738.P7386711168442233195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272741 (n - 1) + a (n - 1)

end

end A272738.P7386711168442233195

/-! ## A272738.P13040492263942454972

`Δ[A272740(n)]-A272741(n)`
-/

namespace A272738.P13040492263942454972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272741 n

end

end A272738.P13040492263942454972

/-! ## A272738.P8461202914796315146

`A272740(n+1)-(A272741(n)+A272740(n))`
-/

namespace A272738.P8461202914796315146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272740 (n + 1) - (A272741 n + A272740 n)

end

end A272738.P8461202914796315146

/-!
# A272739: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A272739, there is no canonical definition to state claims against.
-/

/-! ## A272739.P18025195574403796688

`A272738(2^n-1)`
-/

namespace A272739.P18025195574403796688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 (2 ^ n - 1)

end

end A272739.P18025195574403796688

/-! ## A272739.P7849774357976342378

`record[A272738(A255565(n))]`
-/

namespace A272739.P7849774357976342378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272739.P7849774357976342378

/-! ## A272739.P9803758358727253762

`record[A272738(Δ[A228693(n)])]`
-/

namespace A272739.P9803758358727253762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272739.P9803758358727253762

/-! ## A272739.P7885550550276994593

`and(-1, A272738(A000225(n)))`
-/

namespace A272739.P7885550550276994593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272738 (A000225 n).toNat)

end

end A272739.P7885550550276994593

/-! ## A272739.P6963199379614046857

`record[A272738(A252756(n+1))]`
-/

namespace A272739.P6963199379614046857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272739.P6963199379614046857

/-!
# A272740: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A272740, there is no canonical definition to state claims against.
-/

/-! ## A272740.P4144998547356772072

`∑[A272741(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272740.P4144998547356772072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272741 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272740.P4144998547356772072

/-! ## A272740.P15454757001459548414

`∑[∑[A272741(n)]+1-A272741(n)]`
-/

namespace A272740.P15454757001459548414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272740.P15454757001459548414

/-! ## A272740.P5369923507574985336

`∑[A272738(n)]`
-/

namespace A272740.P5369923507574985336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272740.P5369923507574985336

/-! ## A272740.P17457992372378613536

`a(n-1)+A272738(n)+A000007(n)` with `a(0)=1`
-/

namespace A272740.P17457992372378613536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272738 n + A000007 n)

end

end A272740.P17457992372378613536

/-! ## A272740.P16069628707742136779

`a(n-1)+A272738(n)%A272732(n)` with `a(0)=1`
-/

namespace A272740.P16069628707742136779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272738 n) (A272732 n)

end

end A272740.P16069628707742136779

/-! ## A272740.P10342985186518781023

`a(n-1)+A272738(n)+A049283(2*n+1)` with `a(0)=1`
-/

namespace A272740.P10342985186518781023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272738 n + A049283 (2 * n + 1))

end

end A272740.P10342985186518781023

/-! ## A272740.P15641799469712783921

`a(n-1)+A062157(2*n+1)*A272738(n)` with `a(0)=1`
-/

namespace A272740.P15641799469712783921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A062157 (2 * n + 1) * A272738 n

end

end A272740.P15641799469712783921

/-! ## A272740.P6925585162138139732

`A272738(n)+a(A004526(A004275(n)))` with `a(0)=1`
-/

namespace A272740.P6925585162138139732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272738 n + a (A004526 (A004275 n).toNat).toNat

end

end A272740.P6925585162138139732

/-! ## A272740.P17944678075568528934

`a(n-1)+lcm(A094267(n²), A272738(n))` with `a(0)=1`
-/

namespace A272740.P17944678075568528934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A094267 (n ^ 2)) (A272738 n)

end

end A272740.P17944678075568528934

/-!
# A272741: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A272741, there is no canonical definition to state claims against.
-/

/-! ## A272741.P8773178755807991487

`Δ[A272738(n)]`
-/

namespace A272741.P8773178755807991487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272741.P8773178755807991487

/-! ## A272741.P12044769501093120465

`A272738(n+1)-A272738(n)`
-/

namespace A272741.P12044769501093120465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272738 (n + 1) - A272738 n

end

end A272741.P12044769501093120465

/-!
# A272742: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A272742, there is no canonical definition to state claims against.
-/

/-! ## A272742.P3090348068306914297

`A272745(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272742.P3090348068306914297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272745 (n - 1) + a (n - 1)

end

end A272742.P3090348068306914297

/-! ## A272742.P16771563450719525184

`Δ[A272744(n)]-A272745(n)`
-/

namespace A272742.P16771563450719525184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272745 n

end

end A272742.P16771563450719525184

/-! ## A272742.P11859872774919992991

`A272744(n+1)-(A272745(n)+A272744(n))`
-/

namespace A272742.P11859872774919992991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272744 (n + 1) - (A272745 n + A272744 n)

end

end A272742.P11859872774919992991

/-! ## A272742.P3220411920942951723

`A273328(2*n+1)-(A273329(2*n)+A273328(2*n))`
-/

namespace A272742.P3220411920942951723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273328 (2 * n + 1) - (A273329 (2 * n) + A273328 (2 * n))

end

end A272742.P3220411920942951723

/-! ## A272742.P16010144489022515665

`A273326(2*n)`
-/

namespace A272742.P16010144489022515665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (2 * n)

end

end A272742.P16010144489022515665

/-! ## A272742.P5741853692199067911

`or(1, A273326(A005843(n)))`
-/

namespace A272742.P5741853692199067911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273326 (A005843 n).toNat)

end

end A272742.P5741853692199067911

/-! ## A272742.P6127656963856687239

`or(1, A273326(Δ[A002061(n)]))`
-/

namespace A272742.P6127656963856687239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273326 (f1 (n + 1) - f1 n).toNat)

end

end A272742.P6127656963856687239

/-! ## A272742.P2279622309767653219

`A000027(A273326(n+n))`
-/

namespace A272742.P2279622309767653219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A273326 (n + n)).toNat

end

end A272742.P2279622309767653219

/-! ## A272742.P10026343440080788590

`A273326(n+n)^A176225(∑[n])`
-/

namespace A272742.P10026343440080788590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273326 (n + n) : ℚ) ^ (A176225 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A272742.P10026343440080788590

/-! ## A272742.P8124652789906051221

`A273326(n+n)/A080721(A000217(n))`
-/

namespace A272742.P8124652789906051221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273326 (n + n) : ℚ) / (A080721 (A000217 n).toNat : ℚ)

end

end A272742.P8124652789906051221

/-! ## A272742.P3888508124348762045

`A273326(n+n)%A005920(A273326(n))`
-/

namespace A272742.P3888508124348762045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273326 (n + n)) (A005920 (A273326 n).toNat)

end

end A272742.P3888508124348762045

/-!
# A272743: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A272743, the canonical program `A272743.P5663693119670233849` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272743 has offset 0).

The definition of A272743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272743.P5663693119670233849

`ogf((1-4x^2+4x^3)/(1-5x+4x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272743

/-- `ogf((1-4x^2+4x^3)/(1-5x+4x^2))` -/
def P5663693119670233849.Spec : Prop :=
  ∀ n, P5663693119670233849.a n = A272743 n

theorem P5663693119670233849.correct : P5663693119670233849.Spec := by
  intro n
  simp only [A272743]

end A272743

/-! ## A272743.P5422456633991146925

`4*a(n-1)+1` with `a(0)=1, a(1)=5, a(2)=17`
-/

namespace A272743.P5422456633991146925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 17] fun n a =>
  4 * a (n - 1) + 1

end

end A272743.P5422456633991146925

namespace A272743

/-- `4*a(n-1)+1` -/
def P5422456633991146925.Spec : Prop :=
  ∀ n, (P5422456633991146925.a n : ℤ) = A272743 n

end A272743

/-! ## A272743.P512386408326949679

`lcm(4, a(n-1))+1` with `a(0)=1, a(1)=5, a(2)=17`
-/

namespace A272743.P512386408326949679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 17] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A272743.P512386408326949679

namespace A272743

/-- `lcm(4, a(n-1))+1` -/
def P512386408326949679.Spec : Prop :=
  ∀ n, (P512386408326949679.a n : ℤ) = A272743 n

end A272743

/-! ## A272743.P1116563177906994699

`xor(4*a(n-1), gcd(5, a(n-1)))` with `a(0)=1`
-/

namespace A272743.P1116563177906994699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1)) (Nat.gcd 5 (a (n - 1)))

end

end A272743.P1116563177906994699

namespace A272743

/-- `xor(4*a(n-1), gcd(5, a(n-1)))` -/
def P1116563177906994699.Spec : Prop :=
  ∀ n, (P1116563177906994699.a n : ℤ) = A272743 n

end A272743

/-! ## A272743.P6390069290411793683

`record[-(a(n-1)+a(n-1)+1)]` with `a(0)=1, a(1)=5, a(2)=4`
-/

namespace A272743.P6390069290411793683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4] fun n f1 =>
  -(f1 (n - 1) + (f1 (n - 1) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272743.P6390069290411793683

namespace A272743

/-- `record[-(a(n-1)+a(n-1)+1)]` -/
def P6390069290411793683.Spec : Prop :=
  ∀ n, P6390069290411793683.a n = A272743 n

end A272743

/-! ## A272743.P18333411102875221305

`or(1, A136326(2*n))`
-/

namespace A272743.P18333411102875221305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A136326 (2 * n))

end

end A272743.P18333411102875221305

namespace A272743

/-- `or(1, A136326(2*n))` -/
def P18333411102875221305.Spec : Prop :=
  ∀ n, P18333411102875221305.a n = A272743 n

end A272743

/-! ## A272743.P2581467024943228808

`or(1, A267045(2*n))`
-/

namespace A272743.P2581467024943228808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267045 (2 * n))

end

end A272743.P2581467024943228808

namespace A272743

/-- `or(1, A267045(2*n))` -/
def P2581467024943228808.Spec : Prop :=
  ∀ n, P2581467024943228808.a n = A272743 n

end A272743

/-! ## A272743.P4244618832530356157

`A305750(2*n+1)+and(A305750(2*n), 1-6/2)`
-/

namespace A272743.P4244618832530356157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n + 1) + Int.land (A305750 (2 * n)) (SequenceMachineLib.roundAway (1 - (6 : ℚ) / 2))

end

end A272743.P4244618832530356157

namespace A272743

/-- `A305750(2*n+1)+and(A305750(2*n), 1-6/2)` -/
def P4244618832530356157.Spec : Prop :=
  ∀ n, P4244618832530356157.a n = A272743 n

end A272743

/-! ## A272743.P10998595221758996350

`A305750(2*n+1)+A305750(2*n)-A286772(2*n)`
-/

namespace A272743.P10998595221758996350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n + 1) + (A305750 (2 * n) - A286772 (2 * n))

end

end A272743.P10998595221758996350

namespace A272743

/-- `A305750(2*n+1)+A305750(2*n)-A286772(2*n)` -/
def P10998595221758996350.Spec : Prop :=
  ∀ n, P10998595221758996350.a n = A272743 n

end A272743

/-! ## A272743.P15955662318657073113

`xor(A080674(n), A092896(n))`
-/

namespace A272743.P15955662318657073113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080674 n) (A092896 n)

end

end A272743.P15955662318657073113

namespace A272743

/-- `xor(A080674(n), A092896(n))` -/
def P15955662318657073113.Spec : Prop :=
  ∀ n, P15955662318657073113.a n = A272743 n

end A272743

/-! ## A272743.P12670675454531865067

`A283642(2*n)-and(A026633(2*n+1), A026633(2*n))`
-/

namespace A272743.P12670675454531865067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (2 * n) - Int.land (A026633 (2 * n + 1)) (A026633 (2 * n))

end

end A272743.P12670675454531865067

namespace A272743

/-- `A283642(2*n)-and(A026633(2*n+1), A026633(2*n))` -/
def P12670675454531865067.Spec : Prop :=
  ∀ n, P12670675454531865067.a n = A272743 n

end A272743

/-! ## A272743.P11608882082789375219

`A305750(2*n+1)+and(A280412(2*n+1), A305750(2*n))`
-/

namespace A272743.P11608882082789375219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n + 1) + Int.land (A280412 (2 * n + 1)) (A305750 (2 * n))

end

end A272743.P11608882082789375219

namespace A272743

/-- `A305750(2*n+1)+and(A280412(2*n+1), A305750(2*n))` -/
def P11608882082789375219.Spec : Prop :=
  ∀ n, P11608882082789375219.a n = A272743 n

end A272743

/-! ## A272743.P7996433616547852200

`A305750(2*n+1)+and(A286772(2*n+1), A305750(2*n))`
-/

namespace A272743.P7996433616547852200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 (2 * n + 1) + Int.land (A286772 (2 * n + 1)) (A305750 (2 * n))

end

end A272743.P7996433616547852200

namespace A272743

/-- `A305750(2*n+1)+and(A286772(2*n+1), A305750(2*n))` -/
def P7996433616547852200.Spec : Prop :=
  ∀ n, P7996433616547852200.a n = A272743 n

end A272743

/-!
# A272744: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A272744, there is no canonical definition to state claims against.
-/

/-! ## A272744.P7275560908332438095

`∑[A272742(n)]`
-/

namespace A272744.P7275560908332438095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272744.P7275560908332438095

/-! ## A272744.P7349989480667727393

`A272742(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A272744.P7349989480667727393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272742 (n % (n + 1)) + a (n - 1)

end

end A272744.P7349989480667727393

/-! ## A272744.P16916382641979346896

`lcm(A272742(n)+a(n-1), A000034(n))` with `a(0)=1`
-/

namespace A272744.P16916382641979346896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A272742 n + (a (n - 1) : ℤ)) (A000034 n)

end

end A272744.P16916382641979346896

/-! ## A272744.P8518703663412447039

`a(n-1)+A059841(2*n)*A272742(n)` with `a(0)=1`
-/

namespace A272744.P8518703663412447039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A059841 (2 * n) * A272742 n

end

end A272744.P8518703663412447039

/-! ## A272744.P3452208118422796479

`A272742(A010051(2*(n+2))+n)+a(n-1)` with `a(0)=1`
-/

namespace A272744.P3452208118422796479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272742 (A010051 (2 * (n + 2)) + (n : ℤ)).toNat + a (n - 1)

end

end A272744.P3452208118422796479

/-! ## A272744.P8573577459028458202

`∑[A273326(2*n)]`
-/

namespace A272744.P8573577459028458202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272744.P8573577459028458202

/-! ## A272744.P18229080674231846836

`A273326(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A272744.P18229080674231846836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273326 (n + n) + a (n - 1)

end

end A272744.P18229080674231846836

/-!
# A272745: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 526", based on the 5-celled von Neumann neighborhood.

The programs for A272745, there is no canonical definition to state claims against.
-/

/-! ## A272745.P11900030805109232485

`Δ[A272744(n)]-A272742(n)`
-/

namespace A272745.P11900030805109232485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272742 n

end

end A272745.P11900030805109232485

/-! ## A272745.P18263701284017450713

`Δ[A272742(n)]`
-/

namespace A272745.P18263701284017450713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272745.P18263701284017450713

/-! ## A272745.P15782132099133879311

`A272742(n+1)-A272742(n)`
-/

namespace A272745.P15782132099133879311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272742 (n + 1) - A272742 n

end

end A272745.P15782132099133879311

/-! ## A272745.P4825673057412915819

`A273329(2*n+1)+A273329(2*n)`
-/

namespace A272745.P4825673057412915819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 (2 * n + 1) + A273329 (2 * n)

end

end A272745.P4825673057412915819

/-! ## A272745.P9929047229981426953

`Δ[A273326(2*n)]`
-/

namespace A272745.P9929047229981426953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272745.P9929047229981426953

/-! ## A272745.P4228534981076573489

`Δ[or(1, A273326(A005843(n)))]`
-/

namespace A272745.P4228534981076573489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273326 (A005843 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272745.P4228534981076573489

/-! ## A272745.P13362045745389417582

`A273326(2*(n+1))-A273326(2*n)`
-/

namespace A272745.P13362045745389417582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (2 * (n + 1)) - A273326 (2 * n)

end

end A272745.P13362045745389417582

/-!
# A272746: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A272746, there is no canonical definition to state claims against.
-/

/-! ## A272746.P4149789250092186596

`(2*n+1)²-A272451(n)%(2*n+1)²`
-/

namespace A272746.P4149789250092186596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272451 n) ((2 * n + 1) ^ 2 : ℤ)

end

end A272746.P4149789250092186596

/-! ## A272746.P8895533072112394353

`A272749(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272746.P8895533072112394353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272749 (n - 1) + a (n - 1)

end

end A272746.P8895533072112394353

/-! ## A272746.P14556951163729733544

`∑[A272749(n)]+1-A272749(n)`
-/

namespace A272746.P14556951163729733544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272749 n)

end

end A272746.P14556951163729733544

/-! ## A272746.P1909391337491016568

`Δ[A272748(n)]-A272749(n)`
-/

namespace A272746.P1909391337491016568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272749 n

end

end A272746.P1909391337491016568

/-! ## A272746.P8427795955586710102

`A272748(n+1)-(A272749(n)+A272748(n))`
-/

namespace A272746.P8427795955586710102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272748 (n + 1) - (A272749 n + A272748 n)

end

end A272746.P8427795955586710102

/-! ## A272746.P8942949404581846507

`A181385(A016825(n))-A272451(n)`
-/

namespace A272746.P8942949404581846507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272451 n

end

end A272746.P8942949404581846507

/-! ## A272746.P16242714055269708882

`A008740(A008458(n))-A272451(n)`
-/

namespace A272746.P16242714055269708882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272451 n

end

end A272746.P16242714055269708882

/-!
# A272747: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A272747, there is no canonical definition to state claims against.
-/

/-! ## A272747.P9121488593964075364

`A272746(2^n-1)`
-/

namespace A272747.P9121488593964075364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 (2 ^ n - 1)

end

end A272747.P9121488593964075364

/-! ## A272747.P7482395616766364164

`record[A272746(A173787(n))]`
-/

namespace A272747.P7482395616766364164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272747.P7482395616766364164

/-! ## A272747.P16658848495626949641

`record[A272746(A252756(n+1))]`
-/

namespace A272747.P16658848495626949641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272747.P16658848495626949641

/-! ## A272747.P8004069426523937897

`record[A272746(A253564(n+1))]`
-/

namespace A272747.P8004069426523937897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272747.P8004069426523937897

/-! ## A272747.P10521219097336292475

`record[A272746(A275715(n+1))]`
-/

namespace A272747.P10521219097336292475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 (A275715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272747.P10521219097336292475

/-!
# A272748: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A272748, there is no canonical definition to state claims against.
-/

/-! ## A272748.P2641563430937492192

`∑[A272746(n)]`
-/

namespace A272748.P2641563430937492192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272748.P2641563430937492192

/-! ## A272748.P14675390646718108471

`A272746(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272748.P14675390646718108471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272746 n + a (A023443 n).toNat

end

end A272748.P14675390646718108471

/-! ## A272748.P10535725231668829258

`∑[∑[A272749(n)]+1-A272749(n)]`
-/

namespace A272748.P10535725231668829258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272749 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272748.P10535725231668829258

/-! ## A272748.P10293579211910933735

`A272250(n)+A272736(n)-A272453(n)`
-/

namespace A272748.P10293579211910933735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272250 n + (A272736 n - A272453 n)

end

end A272748.P10293579211910933735

/-! ## A272748.P7696609806189291782

`A272700(n)+A272703(n)-A272453(n)`
-/

namespace A272748.P7696609806189291782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272700 n + (A272703 n - A272453 n)

end

end A272748.P7696609806189291782

/-! ## A272748.P18356216515580044260

`∑[A181385(A016825(n))-A272451(n)]`
-/

namespace A272748.P18356216515580044260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272748.P18356216515580044260

/-! ## A272748.P15451475244934881985

`∑[A181385(A016825(n))]-A272453(n)`
-/

namespace A272748.P15451475244934881985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272453 n

end

end A272748.P15451475244934881985

/-! ## A272748.P15359878435614973357

`∑[A008740(A008458(n))-A272451(n)]`
-/

namespace A272748.P15359878435614973357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272748.P15359878435614973357

/-! ## A272748.P6679499611427271218

`∑[A008740(A008458(n))]-A272453(n)`
-/

namespace A272748.P6679499611427271218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272453 n

end

end A272748.P6679499611427271218

/-!
# A272749: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A272749, there is no canonical definition to state claims against.
-/

/-! ## A272749.P2182644765622664952

`Δ[A272746(n)]`
-/

namespace A272749.P2182644765622664952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272749.P2182644765622664952

/-! ## A272749.P1139356190633735171

`A272746(n+1)-A272746(n)`
-/

namespace A272749.P1139356190633735171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272746 (n + 1) - A272746 n

end

end A272749.P1139356190633735171

/-! ## A272749.P10064662955069965103

`Δ[A272748(n)]-((2*n+1)²-A272451(n)%(2*n+1)²)`
-/

namespace A272749.P10064662955069965103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272451 n) ((2 * n + 1) ^ 2 : ℤ))

end

end A272749.P10064662955069965103

/-! ## A272749.P15380954192858005773

`Δ[A181385(A016825(n))-A272451(n)]`
-/

namespace A272749.P15380954192858005773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272749.P15380954192858005773

/-! ## A272749.P9780228500964618159

`Δ[A008740(A008458(n))-A272451(n)]`
-/

namespace A272749.P9780228500964618159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272749.P9780228500964618159

/-!
# A272750: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A272750, there is no canonical definition to state claims against.
-/

/-! ## A272750.P17445761933714801501

`A272753(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272750.P17445761933714801501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272753 (n - 1) + a (n - 1)

end

end A272750.P17445761933714801501

/-! ## A272750.P2938015551815381010

`1+∑[A272753(n)]-A272753(n)`
-/

namespace A272750.P2938015551815381010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A272753 n)

end

end A272750.P2938015551815381010

/-! ## A272750.P16430050859532058645

`Δ[A272752(n)]-A272753(n)`
-/

namespace A272750.P16430050859532058645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272753 n

end

end A272750.P16430050859532058645

/-! ## A272750.P3594246536061012173

`A272752(n+1)-(A272753(n)+A272752(n))`
-/

namespace A272750.P3594246536061012173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272752 (n + 1) - (A272753 n + A272752 n)

end

end A272750.P3594246536061012173

/-! ## A272750.P5636575841586537304

`A130706(n)+A273743(n)-A270938(n)`
-/

namespace A272750.P5636575841586537304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + (A273743 n - A270938 n)

end

end A272750.P5636575841586537304

/-!
# A272751: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A272751, there is no canonical definition to state claims against.
-/

/-! ## A272751.P15151778278763319943

`A272750(2^n-1)`
-/

namespace A272751.P15151778278763319943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 (2 ^ n - 1)

end

end A272751.P15151778278763319943

/-! ## A272751.P9799875745243077935

`record[A272750(A173787(n))]`
-/

namespace A272751.P9799875745243077935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272751.P9799875745243077935

/-! ## A272751.P14329195113612521464

`or(1, A272750(A000225(n)))`
-/

namespace A272751.P14329195113612521464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272750 (A000225 n).toNat)

end

end A272751.P14329195113612521464

/-! ## A272751.P13438474470390971983

`record[A272750(A243071(n+1))]`
-/

namespace A272751.P13438474470390971983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272751.P13438474470390971983

/-! ## A272751.P6682243361333356643

`record[A272750(A293447(n+1))]`
-/

namespace A272751.P6682243361333356643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272751.P6682243361333356643

/-!
# A272752: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A272752, there is no canonical definition to state claims against.
-/

/-! ## A272752.P17444901396706909484

`∑[A272750(n)]`
-/

namespace A272752.P17444901396706909484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272752.P17444901396706909484

/-! ## A272752.P5695411496659944256

`∑[A272753(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272752.P5695411496659944256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272753 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272752.P5695411496659944256

/-! ## A272752.P5583288906641289611

`∑[∑[A272753(n)]-A272753(n)+1]`
-/

namespace A272752.P5583288906641289611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272753 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A272753 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272752.P5583288906641289611

/-! ## A272752.P17241292845769029458

`a(n-1)+A272750(n)%A272732(n)` with `a(0)=1`
-/

namespace A272752.P17241292845769029458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272750 n) (A272732 n)

end

end A272752.P17241292845769029458

/-! ## A272752.P3699731405904963446

`a(n-1)+A273743(n)-A270938(n)` with `a(0)=1, a(1)=6`
-/

namespace A272752.P3699731405904963446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (A273743 n - A270938 n)

end

end A272752.P3699731405904963446

/-!
# A272753: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A272753, there is no canonical definition to state claims against.
-/

/-! ## A272753.P1209282143895535932

`Δ[A272750(n)]`
-/

namespace A272753.P1209282143895535932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272753.P1209282143895535932

/-! ## A272753.P5641907387512961955

`A272750(n+1)-A272750(n)`
-/

namespace A272753.P5641907387512961955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272750 (n + 1) - A272750 n

end

end A272753.P5641907387512961955

/-! ## A272753.P9871393665480106281

`Δ[A130706(n)+A273743(n)-A270938(n)]`
-/

namespace A272753.P9871393665480106281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + (A273743 n - A270938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272753.P9871393665480106281

/-!
# A272754: Primes p such that p + 2 is a Carmichael number (A002997).

The programs for A272754, there is no canonical definition to state claims against.
-/

/-! ## A272754.P7332822928578290661

`∩[A135437(n+1), A194231(n+1)]`
-/

namespace A272754.P7332822928578290661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272754.P7332822928578290661

/-! ## A272754.P13580637119560228647

`∩[A002997(n+1)-2, A135437(n+1)]`
-/

namespace A272754.P13580637119560228647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272754.P13580637119560228647

/-! ## A272754.P2839476793610193751

`∩[A135437(n+1), A192297(n+1)]`
-/

namespace A272754.P2839476793610193751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272754.P2839476793610193751

/-! ## A272754.P13894823784576416524

`p?[A194231(n+1)]`
-/

namespace A272754.P13894823784576416524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272754.P13894823784576416524

/-! ## A272754.P3594271062319831998

`p?[A002997(n+1)-2]`
-/

namespace A272754.P3594271062319831998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272754.P3594271062319831998

/-!
# A272755: Numerators of the Fabius function F(1/2^n).

The programs for A272755, there is no canonical definition to state claims against.
-/

/-! ## A272755.P13309221355383116244

`13*11^a(n-1)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A272755.P13309221355383116244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 1] fun n a =>
  13 * 11 ^ a (n - 1)

end

end A272755.P13309221355383116244

/-!
# A272756: a(n) is the least k such that k > A070939(n * k).

The programs for A272756, the canonical program `A272756.P7505850742485616259` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272756 has offset 1).

The definition of A272756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272756.P7505850742485616259

`ceil(A123753(A033156(n+1))/A123753(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A272756

/-- `ceil(A123753(A033156(n+1))/A123753(n))` -/
def P7505850742485616259.Spec : Prop :=
  ∀ n, P7505850742485616259.a n = A272756 (n + 1)

theorem P7505850742485616259.correct : P7505850742485616259.Spec := by
  intro n
  simp only [A272756, Nat.add_sub_cancel]

end A272756

/-! ## A272756.P14692447656419027109

`A070941((n+1)*A070941(A033156(n+1)))`
-/

namespace A272756.P14692447656419027109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 ((n + 1 : ℤ) * A070941 (A033156 (n + 1)).toNat).toNat

end

end A272756.P14692447656419027109

namespace A272756

/-- `A070941((n+1)*A070941(A033156(n+1)))` -/
def P14692447656419027109.Spec : Prop :=
  ∀ n, P14692447656419027109.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P16208940485629487313

`A070941((n+1)*A070941(A123753(n+1)))`
-/

namespace A272756.P16208940485629487313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 ((n + 1 : ℤ) * A070941 (A123753 (n + 1)).toNat).toNat

end

end A272756.P16208940485629487313

namespace A272756

/-- `A070941((n+1)*A070941(A123753(n+1)))` -/
def P16208940485629487313.Spec : Prop :=
  ∀ n, P16208940485629487313.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P10100633218119092672

`ceil(log2(A278448(2*(n+1))))`
-/

namespace A272756.P10100633218119092672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A278448 (2 * (n + 1)) : ℝ)⌉

end

end A272756.P10100633218119092672

namespace A272756

/-- `ceil(log2(A278448(2*(n+1))))` -/
def P10100633218119092672.Spec : Prop :=
  ∀ n, P10100633218119092672.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P18044615660146838498

`A070939(a(n-2)*A103517(n))` with `a(0)=3, a(1)=5`
-/

namespace A272756.P18044615660146838498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A070939 (a (n - 2) * A103517 n).toNat

end

end A272756.P18044615660146838498

namespace A272756

/-- `A070939(a(n-2)*A103517(n))` -/
def P18044615660146838498.Spec : Prop :=
  ∀ n, P18044615660146838498.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P10063694825146674705

`A000523((n+1)*A000523(A138636(n+1)))+2`
-/

namespace A272756.P10063694825146674705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ((n + 1 : ℤ) * A000523 (A138636 (n + 1)).toNat).toNat + 2

end

end A272756.P10063694825146674705

namespace A272756

/-- `A000523((n+1)*A000523(A138636(n+1)))+2` -/
def P10063694825146674705.Spec : Prop :=
  ∀ n, P10063694825146674705.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P776873152218583637

`A000523(4*(n+1)*A000523(A045809(n+1))+1)`
-/

namespace A272756.P776873152218583637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (4 * ((n + 1 : ℤ) * A000523 (A045809 (n + 1)).toNat) + 1).toNat

end

end A272756.P776873152218583637

namespace A272756

/-- `A000523(4*(n+1)*A000523(A045809(n+1))+1)` -/
def P776873152218583637.Spec : Prop :=
  ∀ n, P776873152218583637.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P3782347023628618198

`A000523(4*(n+1)*A000523(A215360(n+2)+1)+1)`
-/

namespace A272756.P3782347023628618198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (4 * ((n + 1 : ℤ) * A000523 (A215360 (n + 2) + 1).toNat) + 1).toNat

end

end A272756.P3782347023628618198

namespace A272756

/-- `A000523(4*(n+1)*A000523(A215360(n+2)+1)+1)` -/
def P3782347023628618198.Spec : Prop :=
  ∀ n, P3782347023628618198.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P11322042268503293024

`A000523(4*(n+1)*A000523(A238764(n+1)))`
-/

namespace A272756.P11322042268503293024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (4 * ((n + 1 : ℤ) * A000523 (A238764 (n + 1)).toNat)).toNat

end

end A272756.P11322042268503293024

namespace A272756

/-- `A000523(4*(n+1)*A000523(A238764(n+1)))` -/
def P11322042268503293024.Spec : Prop :=
  ∀ n, P11322042268503293024.a n = A272756 (n + 1)

end A272756

/-! ## A272756.P13326366278579692324

`A358551(A008075(n+1))`
-/

namespace A272756.P13326366278579692324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358551 (A008075 (n + 1)).toNat

end

end A272756.P13326366278579692324

namespace A272756

/-- `A358551(A008075(n+1))` -/
def P13326366278579692324.Spec : Prop :=
  ∀ n, P13326366278579692324.a n = A272756 (n + 1)

end A272756

/-!
# A272757: Denominators of the Fabius function F(1/2^n).

The programs for A272757, there is no canonical definition to state claims against.
-/

/-! ## A272757.P12041623697270339223

`A227927(n+1)*A227927(A278258(n))`
-/

namespace A272757.P12041623697270339223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227927 (n + 1) * A227927 (A278258 n).toNat

end

end A272757.P12041623697270339223

/-!
# A272758: Perfect powers whose binary reversal is also a perfect power.

The programs for A272758, there is no canonical definition to state claims against.
-/

/-! ## A272758.P10211526791789213454

`∩[A001597(n+1), A057890(n+1)]`
-/

namespace A272758.P10211526791789213454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272758.P10211526791789213454

/-! ## A272758.P12837649554158859072

`∩[A001597(n+1), A062849(n+1)]`
-/

namespace A272758.P12837649554158859072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272758.P12837649554158859072

/-! ## A272758.P5087356290375600069

`∩[A001597(n+1), A161604(n+1)]`
-/

namespace A272758.P5087356290375600069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272758.P5087356290375600069

/-! ## A272758.P16505511666543514320

`eq[A280508(n), A301573(n)]`
-/

namespace A272758.P16505511666543514320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272758.P16505511666543514320

/-! ## A272758.P6941519192180896934

`filter[A161604(n+1), A075802(#)]`
-/

namespace A272758.P6941519192180896934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A272758.P6941519192180896934

/-!
# A272759: a(n) = A065879(n)/n.

The programs for A272759, there is no canonical definition to state claims against.
-/

/-! ## A272759.P11058431402744945843

`A065879(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272759.P11058431402744945843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065879 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A272759.P11058431402744945843

/-! ## A272759.P17605805134672782675

`A001222(A001316(A065879(n+1)))`
-/

namespace A272759.P17605805134672782675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A065879 (n + 1)).toNat).toNat

end

end A272759.P17605805134672782675

/-! ## A272759.P7448055082119502160

`∑{d}[A001316(A065879(n+1)), A001221(#)]`
-/

namespace A272759.P7448055082119502160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A065879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A272759.P7448055082119502160

/-! ## A272759.P2964596446650260012

`A065879(2*(n+1))-A005187(A065879(n+1))`
-/

namespace A272759.P2964596446650260012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065879 (2 * (n + 1)) - A005187 (A065879 (n + 1)).toNat

end

end A272759.P2964596446650260012

/-! ## A272759.P14534022091415884913

`A000120(A065879(n+1))`
-/

namespace A272759.P14534022091415884913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065879 (n + 1)).toNat

end

end A272759.P14534022091415884913

/-!
# A272760: a(n) = A065880(n)/n.

The programs for A272760, there is no canonical definition to state claims against.
-/

/-! ## A272760.P14166974806129484738

`A065880(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272760.P14166974806129484738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065880 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A272760.P14166974806129484738

/-! ## A272760.P1532391676564599473

`∑{e}[A001316(A065880(2*(n+1))), #]`
-/

namespace A272760.P1532391676564599473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A065880 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A272760.P1532391676564599473

/-! ## A272760.P14617111737147573563

`A000120(A065880(n+1))`
-/

namespace A272760.P14617111737147573563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065880 (n + 1)).toNat

end

end A272760.P14617111737147573563

/-! ## A272760.P3249585411089403011

`A048881(A065880(2*(n+1)))`
-/

namespace A272760.P3249585411089403011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A065880 (2 * (n + 1))).toNat

end

end A272760.P3249585411089403011

/-! ## A272760.P967490509051634933

`A272759(n+1)+round(A138684(3*n+4)/10)`
-/

namespace A272760.P967490509051634933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272759 (n + 1) + SequenceMachineLib.roundAway ((A138684 (3 * n + 4) : ℚ) / 10)

end

end A272760.P967490509051634933

/-!
# A272761: List of indices i such that A065879(i) != A065880(i).

The programs for A272761, there is no canonical definition to state claims against.
-/

/-! ## A272761.P10504368716021947731

`lt[1, A065413(n+1)]+1`
-/

namespace A272761.P10504368716021947731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272761.P10504368716021947731

/-! ## A272761.P108740503355722374

`lt[1, A065413(A028310(n))]`
-/

namespace A272761.P108740503355722374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272761.P108740503355722374

/-! ## A272761.P2188598724623593516

`A020725(lt[1, A065413(n+1)])`
-/

namespace A272761.P2188598724623593516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272761.P2188598724623593516

/-! ## A272761.P1664138298397438661

`lt[1, A065413(A004277(n)-n)]`
-/

namespace A272761.P1664138298397438661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272761.P1664138298397438661

/-! ## A272761.P14587472027790586823

`lt[A065879(A028310(n)), A065880(n)]`
-/

namespace A272761.P14587472027790586823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065879 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272761.P14587472027790586823

/-! ## A272761.P10369552724065132054

`lt[1, A065413(A004277(n))]`
-/

namespace A272761.P10369552724065132054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272761.P10369552724065132054

/-! ## A272761.P3520444241294487194

`lt[1, A065413(A008574(n))]`
-/

namespace A272761.P3520444241294487194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272761.P3520444241294487194

/-! ## A272761.P12183467946095131990

`lt[1, A065413(A233583(n+1))]`
-/

namespace A272761.P12183467946095131990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065413 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272761.P12183467946095131990

/-!
# A272762: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 822", based on the 5-celled von Neumann neighborhood.

The programs for A272762, there is no canonical definition to state claims against.
-/

/-! ## A272762.P17056692126962946739

`5-2^(1+n)+2^(1+2*n)-4*3^n+2^(2+n)*n`
-/

namespace A272762.P17056692126962946739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (2 ^ (1 + n) : ℤ) + (2 ^ (1 + 2 * n) : ℤ) - (4 * 3 ^ n : ℤ) + (2 ^ (2 + n) * n : ℤ)

end

end A272762.P17056692126962946739

/-! ## A272762.P12017663414388217296

`A269918(2^n-1)`
-/

namespace A272762.P12017663414388217296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 (2 ^ n - 1)

end

end A272762.P12017663414388217296

/-! ## A272762.P486272325374786192

`record[A269918(A218616(n))]`
-/

namespace A272762.P486272325374786192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272762.P486272325374786192

/-! ## A272762.P10788795426414810472

`or(1, A269918(A000225(n)))`
-/

namespace A272762.P10788795426414810472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A269918 (A000225 n).toNat)

end

end A272762.P10788795426414810472

/-! ## A272762.P8846018577565567711

`record[A269918(A324865(n+1))]`
-/

namespace A272762.P8846018577565567711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272762.P8846018577565567711

/-!
# A272763: Number of n-step self-avoiding walks on the square lattice with diagonals allowed (Moore neighborhood).

The programs for A272763, there is no canonical definition to state claims against.
-/

/-! ## A272763.P16720460501828384263

`A076934(2*(2*6^n-4^n))`
-/

namespace A272763.P16720460501828384263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (2 * ((2 * 6 ^ n : ℤ) - (4 ^ n : ℤ))).toNat

end

end A272763.P16720460501828384263

/-!
# A272764: Number of positive roots in reflection group E_n.

The programs for A272764, there is no canonical definition to state claims against.
-/

/-! ## A272764.P15329022896454269275

`ogf((-3-4x+4x^3+9x^4+6x^5)/(-1+2x))`
-/

namespace A272764.P15329022896454269275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 0, -4, -9, -6] [1, -2] n

end

end A272764.P15329022896454269275

/-!
# A272766: Numbers n such that A281363(n) = n-1.

The programs for A272766, there is no canonical definition to state claims against.
-/

/-! ## A272766.P6324189722448957437

`eq[n, A281363(n+1)]+1`
-/

namespace A272766.P6324189722448957437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272766.P6324189722448957437

/-! ## A272766.P14688461700027753364

`A020725(eq[n, A281363(n+1)])`
-/

namespace A272766.P14688461700027753364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272766.P14688461700027753364

/-! ## A272766.P925035777449888818

`eq[n, A281363(A028310(n))+1]`
-/

namespace A272766.P925035777449888818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281363 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272766.P925035777449888818

/-! ## A272766.P5115702438595524106

`eq[n-1, A281363(A065033(2*n))]`
-/

namespace A272766.P5115702438595524106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281363 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272766.P5115702438595524106

/-! ## A272766.P14898558253538689681

`eq[n-1, A281363(gcd(n, A008458(n)))]`
-/

namespace A272766.P14898558253538689681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281363 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272766.P14898558253538689681

/-!
# A272769: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A272769, there is no canonical definition to state claims against.
-/

/-! ## A272769.P12781288499193761965

`A272938(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272769.P12781288499193761965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272938 (n - 1) + a (n - 1)

end

end A272769.P12781288499193761965

/-! ## A272769.P14159829315920804355

`Δ[A272937(n)]-A272938(n)`
-/

namespace A272769.P14159829315920804355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272938 n

end

end A272769.P14159829315920804355

/-! ## A272769.P16074617314700309200

`A272937(n+1)-(A272938(n)+A272937(n))`
-/

namespace A272769.P16074617314700309200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272937 (n + 1) - (A272938 n + A272937 n)

end

end A272769.P16074617314700309200

/-! ## A272769.P2843416930424540074

`A181385(4*n+2)-A246330(n)`
-/

namespace A272769.P2843416930424540074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A246330 n

end

end A272769.P2843416930424540074

/-! ## A272769.P2309994136784718984

`A008740(A008458(n))-A246330(n)`
-/

namespace A272769.P2309994136784718984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A246330 n

end

end A272769.P2309994136784718984

/-!
# A272771: Smallest k in the interval [prime(n), 2*prime(n)], such that k has the maximal number of divisors in this interval.

The programs for A272771, there is no canonical definition to state claims against.
-/

/-! ## A272771.P2851012220495028665

`A139770(A272777(n+1))`
-/

namespace A272771.P2851012220495028665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A272777 (n + 1)).toNat

end

end A272771.P2851012220495028665

/-! ## A272771.P501780375381096263

`A256440(C(A272777(n+1)+1, 2))`
-/

namespace A272771.P501780375381096263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (Nat.choose (A272777 (n + 1) + 1).toNat 2)

end

end A272771.P501780375381096263

/-! ## A272771.P8553104028532028042

`A256440(A382070(n+1))`
-/

namespace A272771.P8553104028532028042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (A382070 (n + 1)).toNat

end

end A272771.P8553104028532028042

/-! ## A272771.P14907050171121316077

`A256440(C(A072055(n+1), 2))`
-/

namespace A272771.P14907050171121316077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (Nat.choose (A072055 (n + 1)).toNat 2)

end

end A272771.P14907050171121316077

/-! ## A272771.P9935108697664966290

`A256440(C(A100484(n+1)+1, 2))`
-/

namespace A272771.P9935108697664966290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (Nat.choose (A100484 (n + 1) + 1).toNat 2)

end

end A272771.P9935108697664966290

/-!
# A272772: Number of prime divisors of (A002997(n) - 2) counted with multiplicity.

The programs for A272772, there is no canonical definition to state claims against.
-/

/-! ## A272772.P651065587769016542

`A001222(A002997(n+1)-2)`
-/

namespace A272772.P651065587769016542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002997 (n + 1) - 2).toNat

end

end A272772.P651065587769016542

/-! ## A272772.P12684918741665827886

`A056239(∑{d}[A002997(n+1)-2, and(1, #)])`
-/

namespace A272772.P12684918741665827886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d)

end

end A272772.P12684918741665827886

/-! ## A272772.P6335318607037314853

`∑{e}[2-A081703(n+1)*A141710(n+1), #]`
-/

namespace A272772.P6335318607037314853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A081703 (n + 1) * A141710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A272772.P6335318607037314853

/-! ## A272772.P11170898420537035812

`∑{e}[∩[A080747(n+1), A087442(n+1)]-2, #]`
-/

namespace A272772.P11170898420537035812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A272772.P11170898420537035812

/-! ## A272772.P2703211471268561371

`∑{e}[∩[A087442(n+1), A231569(n+1)]-2, #]`
-/

namespace A272772.P2703211471268561371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A272772.P2703211471268561371

/-!
# A272773: Number of n-step self-avoiding nonintersecting walks on the square lattice with diagonals allowed (corresponds to using the Moore neighborhood).

The programs for A272773, there is no canonical definition to state claims against.
-/

/-! ## A272773.P8355103166298393182

`∑[A106517(n)]*eq[4, A256139(n)]`
-/

namespace A272773.P8355103166298393182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106517 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A272773.P8355103166298393182

/-! ## A272773.P5478022846970078248

`record[A034444(n+1)]*A094688(n+1)`
-/

namespace A272773.P5478022846970078248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A094688 (n + 1)

end

end A272773.P5478022846970078248

/-!
# A272774: Triangle read by rows, T(n, k) = (n-k)*T(n-1, k-1) + k*T(n-1, k+1) except that T(n, k) = 0 if kn and T(n, n) = 1, for n>=0 and 0<=k<=n.

The programs for A272774, there is no canonical definition to state claims against.
-/

/-! ## A272774.P17978091668319976040

`A108611(lcm(6, A111594(n)))`
-/

namespace A272774.P17978091668319976040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (Int.lcm 6 (A111594 n))

end

end A272774.P17978091668319976040

/-! ## A272774.P16248267823871689854

`A123578(A000045(A329918(n))²)`
-/

namespace A272774.P16248267823871689854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A000045 (A329918 n).toNat ^ 2).toNat

end

end A272774.P16248267823871689854

/-! ## A272774.P2310310445226761785

`A102705(A058716(n)*A108723(n))`
-/

namespace A272774.P2310310445226761785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A058716 n * A108723 n).toNat

end

end A272774.P2310310445226761785

/-! ## A272774.P6977378630696796244

`A122353(A111594(n)/A135539(n+1))`
-/

namespace A272774.P6977378630696796244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122353 (SequenceMachineLib.roundAway ((A111594 n : ℚ) / (A135539 (n + 1) : ℚ))).toNat

end

end A272774.P6977378630696796244

/-! ## A272774.P13682978637825803058

`A039708(A178090(n)^A265392(n+1))`
-/

namespace A272774.P13682978637825803058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (SequenceMachineLib.roundAway ((A178090 n : ℚ) ^ (A265392 (n + 1) : ℤ))).toNat

end

end A272774.P13682978637825803058

/-!
# A272775: Squares of the form P(n, 5) + n, where P(x,k) is the Pochhammer function and n = square (A000290).

The programs for A272775, the canonical program `A272775.P1385318564651287005` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272775 has offset 1).

The definition of A272775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272775.P1385318564651287005

`((n+1)^5+5*(n+1)^3+5*(n+1))²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272775

/-- `((n+1)^5+5*(n+1)^3+5*(n+1))²` -/
def P1385318564651287005.Spec : Prop :=
  ∀ n, (P1385318564651287005.a n : ℤ) = A272775 (n + 1)

theorem P1385318564651287005.correct : P1385318564651287005.Spec := by
  intro n
  simp only [A272775, Nat.add_sub_cancel]

end A272775

/-! ## A272775.P8605436257909843825

`((n+1)*(A156798(n+1)+1))^2`
-/

namespace A272775.P8605436257909843825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A156798 (n + 1) + 1)) ^ 2

end

end A272775.P8605436257909843825

namespace A272775

/-- `((n+1)*(A156798(n+1)+1))^2` -/
def P8605436257909843825.Spec : Prop :=
  ∀ n, P8605436257909843825.a n = A272775 (n + 1)

end A272775

/-! ## A272775.P12369562190462571827

`A261391(2*(n+1)-(n+1))^2`
-/

namespace A272775.P12369562190462571827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261391 (2 * (n + 1) - (n + 1)) ^ 2

end

end A272775.P12369562190462571827

namespace A272775

/-- `A261391(2*(n+1)-(n+1))^2` -/
def P12369562190462571827.Spec : Prop :=
  ∀ n, P12369562190462571827.a n = A272775 (n + 1)

end A272775

/-! ## A272775.P716244870969997581

`(A261391(n)+Δ[A261391(n)])^2`
-/

namespace A272775.P716244870969997581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A261391 n + (f1 (n + 1) - f1 n)) ^ 2

end

end A272775.P716244870969997581

namespace A272775

/-- `(A261391(n)+Δ[A261391(n)])^2` -/
def P716244870969997581.Spec : Prop :=
  ∀ n, P716244870969997581.a n = A272775 (n + 1)

end A272775

/-! ## A272775.P12347137295108836391

`A230586(A059100(n+1))-2`
-/

namespace A272775.P12347137295108836391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230586 (A059100 (n + 1)).toNat - 2

end

end A272775.P12347137295108836391

namespace A272775

/-- `A230586(A059100(n+1))-2` -/
def P12347137295108836391.Spec : Prop :=
  ∀ n, P12347137295108836391.a n = A272775 (n + 1)

end A272775

/-! ## A272775.P15424822411726524973

`(n+1)²*A062938(A002522(n+1))`
-/

namespace A272775.P15424822411726524973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A062938 (A002522 (n + 1)).toNat

end

end A272775.P15424822411726524973

namespace A272775

/-- `(n+1)²*A062938(A002522(n+1))` -/
def P15424822411726524973.Spec : Prop :=
  ∀ n, P15424822411726524973.a n = A272775 (n + 1)

end A272775

/-!
# A272777: In the interval [prime(n), 2*prime(n)], the greatest k with the maximal number of divisors.

The programs for A272777, there is no canonical definition to state claims against.
-/

/-! ## A272777.P2172556844562835805

`A329004(A072055(n+1))`
-/

namespace A272777.P2172556844562835805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A072055 (n + 1)).toNat

end

end A272777.P2172556844562835805

/-! ## A272777.P14913375853983508076

`A329004(A100484(n+1))`
-/

namespace A272777.P14913375853983508076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A100484 (n + 1)).toNat

end

end A272777.P14913375853983508076

/-! ## A272777.P14276125216717844880

`A329004(A001747(n+2))`
-/

namespace A272777.P14276125216717844880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A001747 (n + 2)).toNat

end

end A272777.P14276125216717844880

/-! ## A272777.P9937883491249884482

`A329004(2*A000040(n+1))`
-/

namespace A272777.P9937883491249884482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (2 * A000040 (n + 1)).toNat

end

end A272777.P9937883491249884482

/-! ## A272777.P7044267675552322067

`A329004(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A272777.P7044267675552322067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A272777.P7044267675552322067

/-!
# A272782: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A272782, there is no canonical definition to state claims against.
-/

/-! ## A272782.P2263220706659890339

`A272785(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272782.P2263220706659890339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272785 (n - 1) + a (n - 1)

end

end A272782.P2263220706659890339

/-! ## A272782.P1578879894227026254

`Δ[A272784(n)]-A272785(n)`
-/

namespace A272782.P1578879894227026254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272785 n

end

end A272782.P1578879894227026254

/-! ## A272782.P17705988480009348080

`A272784(n+1)-(A272785(n)+A272784(n))`
-/

namespace A272782.P17705988480009348080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272784 (n + 1) - (A272785 n + A272784 n)

end

end A272782.P17705988480009348080

/-! ## A272782.P10595236167928369325

`A272805(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A272782.P10595236167928369325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A272782.P10595236167928369325

/-! ## A272782.P10277671641921263314

`A272805(A087051(n))`
-/

namespace A272782.P10277671641921263314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 (A087051 n).toNat

end

end A272782.P10277671641921263314

/-!
# A272783: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A272783, there is no canonical definition to state claims against.
-/

/-! ## A272783.P6741802517832749569

`A272782(2^n-1)`
-/

namespace A272783.P6741802517832749569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 (2 ^ n - 1)

end

end A272783.P6741802517832749569

/-! ## A272783.P13709456955396001349

`record[A272782(A227351(n))]`
-/

namespace A272783.P13709456955396001349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272783.P13709456955396001349

/-! ## A272783.P9035891675546057615

`record[A272782(Δ[A228693(n)])]`
-/

namespace A272783.P9035891675546057615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272783.P9035891675546057615

/-! ## A272783.P9084431118615940198

`record[A272782(A252756(n+1))]`
-/

namespace A272783.P9084431118615940198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272783.P9084431118615940198

/-! ## A272783.P17179272763395300962

`record[A272782(A253564(n+1))]`
-/

namespace A272783.P17179272763395300962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272783.P17179272763395300962

/-!
# A272784: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A272784, there is no canonical definition to state claims against.
-/

/-! ## A272784.P1091274153872657585

`∑[A272785(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272784.P1091274153872657585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272785 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272784.P1091274153872657585

/-! ## A272784.P5001652202635095665

`∑[∑[A272785(n)]+1-A272785(n)]`
-/

namespace A272784.P5001652202635095665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272785 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272784.P5001652202635095665

/-! ## A272784.P9695815958282738950

`∑[A272782(n)]`
-/

namespace A272784.P9695815958282738950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272784.P9695815958282738950

/-! ## A272784.P11312303570125668293

`a(n-1)+A272782(n)%A057096(n+1)` with `a(0)=1`
-/

namespace A272784.P11312303570125668293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272782 n) (A057096 (n + 1))

end

end A272784.P11312303570125668293

/-! ## A272784.P8851238847479648892

`A272782(n+1)+a(n-1)-A272785(n)` with `a(0)=1`
-/

namespace A272784.P8851238847479648892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272782 (n + 1) + (a (n - 1) - A272785 n)

end

end A272784.P8851238847479648892

/-!
# A272785: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A272785, there is no canonical definition to state claims against.
-/

/-! ## A272785.P9373620622541269269

`Δ[A272782(n)]`
-/

namespace A272785.P9373620622541269269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272785.P9373620622541269269

/-! ## A272785.P18411123272011682274

`A272782(n+1)-A272782(n)`
-/

namespace A272785.P18411123272011682274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272782 (n + 1) - A272782 n

end

end A272785.P18411123272011682274

/-! ## A272785.P11137250248949916312

`Δ[A272784(n)]-A272805(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A272785.P11137250248949916312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272784 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272805 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A272785.P11137250248949916312

/-! ## A272785.P8827741882809519028

`A272808(n)-A028613(A157024(n))`
-/

namespace A272785.P8827741882809519028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272808 n - A028613 (A157024 n).toNat

end

end A272785.P8827741882809519028

/-! ## A272785.P1485705941259456430

`Δ[A272805(n)]-A028613(A157024(n))`
-/

namespace A272785.P1485705941259456430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A028613 (A157024 n).toNat

end

end A272785.P1485705941259456430

/-!
# A272786: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A272786, there is no canonical definition to state claims against.
-/

/-! ## A272786.P12193592169225829944

`A272789(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272786.P12193592169225829944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272789 (n - 1) + a (n - 1)

end

end A272786.P12193592169225829944

/-! ## A272786.P11416422260042766173

`Δ[A272788(n)]-A272789(n)`
-/

namespace A272786.P11416422260042766173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272789 n

end

end A272786.P11416422260042766173

/-! ## A272786.P17611805027673220110

`A272788(n+1)-(A272789(n)+A272788(n))`
-/

namespace A272786.P17611805027673220110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272788 (n + 1) - (A272789 n + A272788 n)

end

end A272786.P17611805027673220110

/-! ## A272786.P16953300807962320722

`A000034(2*n)+∑[A272789(n)]-A272789(n)`
-/

namespace A272786.P16953300807962320722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A272789 n)

end

end A272786.P16953300807962320722

/-! ## A272786.P13586853551484939481

`A093178(2*n)+∑[A272789(n)]-A272789(n)`
-/

namespace A272786.P13586853551484939481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A272789 n)

end

end A272786.P13586853551484939481

/-! ## A272786.P8133587823711520028

`A071936(n+1)²+∑[A272789(n)]-A272789(n)`
-/

namespace A272786.P8133587823711520028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272789 n)

end

end A272786.P8133587823711520028

/-! ## A272786.P16744587179165785524

`(∑[A272789(n)]-A272789(n)+1)%A208946(n+1)`
-/

namespace A272786.P16744587179165785524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A272789 n + 1) (A208946 (n + 1))

end

end A272786.P16744587179165785524

/-! ## A272786.P5227672543481585650

`(∑[A272789(n)]-A272789(n))%A208947(n+1)+1`
-/

namespace A272786.P5227672543481585650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A272789 n) (A208947 (n + 1)) + 1

end

end A272786.P5227672543481585650

/-! ## A272786.P12542540254478294975

`A000265(∑[A272789(n)]-A272789(n)+1)`
-/

namespace A272786.P12542540254478294975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A272789 n + 1).toNat

end

end A272786.P12542540254478294975

/-! ## A272786.P2439613280057647936

`A005408((∑[A272789(n)]-A272789(n))/2)`
-/

namespace A272786.P2439613280057647936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A272789 n : ℤ) : ℚ) / 2)).toNat

end

end A272786.P2439613280057647936

/-!
# A272787: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A272787, there is no canonical definition to state claims against.
-/

/-! ## A272787.P412834829222218677

`A272786(2^n-1)`
-/

namespace A272787.P412834829222218677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 (2 ^ n - 1)

end

end A272787.P412834829222218677

/-! ## A272787.P5813879749203733040

`record[A272786(A173787(n))]`
-/

namespace A272787.P5813879749203733040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272787.P5813879749203733040

/-! ## A272787.P3280927215981974540

`record[A272786(A255565(n))]`
-/

namespace A272787.P3280927215981974540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272787.P3280927215981974540

/-! ## A272787.P4136969137213973257

`or(1, A272786(A000225(n)))`
-/

namespace A272787.P4136969137213973257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272786 (A000225 n).toNat)

end

end A272787.P4136969137213973257

/-! ## A272787.P4964644236995138924

`record[A272786(A324548(n+1))]`
-/

namespace A272787.P4964644236995138924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 (A324548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272787.P4964644236995138924

/-!
# A272788: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A272788, there is no canonical definition to state claims against.
-/

/-! ## A272788.P9870804616894140785

`∑[A272786(n)]`
-/

namespace A272788.P9870804616894140785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272788.P9870804616894140785

/-! ## A272788.P14329346378319913297

`a(n-1)+A272786(n)+A000007(n)` with `a(0)=1`
-/

namespace A272788.P14329346378319913297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272786 n + A000007 n)

end

end A272788.P14329346378319913297

/-! ## A272788.P12815109865781760271

`A272786(n%A272786(n))+a(n-1)` with `a(0)=1`
-/

namespace A272788.P12815109865781760271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272786 (Int.tmod (n : ℤ) (A272786 n)).toNat + a (n - 1)

end

end A272788.P12815109865781760271

/-! ## A272788.P6546593675949424469

`a(n-1)+or(A059841(n), A272786(n))` with `a(0)=1`
-/

namespace A272788.P6546593675949424469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A059841 n) (A272786 n)

end

end A272788.P6546593675949424469

/-! ## A272788.P6342559790182822319

`a(n-1)+or(A266591(n), A272786(n))` with `a(0)=1`
-/

namespace A272788.P6342559790182822319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A266591 n) (A272786 n)

end

end A272788.P6342559790182822319

/-! ## A272788.P10307439033833518204

`∑[∑[A272789(n)]+1-A272789(n)]`
-/

namespace A272788.P10307439033833518204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272789 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272789 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272788.P10307439033833518204

/-!
# A272789: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A272789, there is no canonical definition to state claims against.
-/

/-! ## A272789.P14580134310551566674

`Δ[A272786(n)]`
-/

namespace A272789.P14580134310551566674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272789.P14580134310551566674

/-! ## A272789.P9762697943300465782

`A272786(n+1)-A272786(n)`
-/

namespace A272789.P9762697943300465782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272786 (n + 1) - A272786 n

end

end A272789.P9762697943300465782

/-!
# A272790: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A272790, there is no canonical definition to state claims against.
-/

/-! ## A272790.P13215967943083649770

`A272793(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272790.P13215967943083649770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272793 (n - 1) + a (n - 1)

end

end A272790.P13215967943083649770

/-! ## A272790.P16939837679529902386

`Δ[A272792(n)]-A272793(n)`
-/

namespace A272790.P16939837679529902386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272793 n

end

end A272790.P16939837679529902386

/-! ## A272790.P10947373451687580626

`A000007(n)+A016754(n)-A272012(n)`
-/

namespace A272790.P10947373451687580626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A272012 n)

end

end A272790.P10947373451687580626

/-! ## A272790.P5837565035070354125

`A272792(n+1)-(A272793(n)+A272792(n))`
-/

namespace A272790.P5837565035070354125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272792 (n + 1) - (A272793 n + A272792 n)

end

end A272790.P5837565035070354125

/-! ## A272790.P13911427179920367761

`A005408(n)²-A272012(n)%A272012(n)²`
-/

namespace A272790.P13911427179920367761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n ^ 2 - Int.tmod (A272012 n) (A272012 n ^ 2)

end

end A272790.P13911427179920367761

/-! ## A272790.P17579533564414798978

`A181385(A016825(n))-A272012(n)`
-/

namespace A272790.P17579533564414798978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272012 n

end

end A272790.P17579533564414798978

/-! ## A272790.P8268027384822973676

`A181385(A130824(n+1))-A272012(n)`
-/

namespace A272790.P8268027384822973676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A130824 (n + 1)).toNat - A272012 n

end

end A272790.P8268027384822973676

/-! ## A272790.P1347352160677546679

`A008740(A008458(n))-A272012(n)`
-/

namespace A272790.P1347352160677546679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272012 n

end

end A272790.P1347352160677546679

/-!
# A272791: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A272791, there is no canonical definition to state claims against.
-/

/-! ## A272791.P9798413178672509771

`A272790(2^n-1)`
-/

namespace A272791.P9798413178672509771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 (2 ^ n - 1)

end

end A272791.P9798413178672509771

/-! ## A272791.P9686134617443178142

`record[A272790(A038573(n))]`
-/

namespace A272791.P9686134617443178142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272791.P9686134617443178142

/-! ## A272791.P2239318328051858670

`record[A272790(A173787(n))]`
-/

namespace A272791.P2239318328051858670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272791.P2239318328051858670

/-! ## A272791.P5108990090101992946

`record[A272790(A175920(n))]`
-/

namespace A272791.P5108990090101992946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 (A175920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272791.P5108990090101992946

/-! ## A272791.P11277815446610965156

`record[A272790(A232751(n))]`
-/

namespace A272791.P11277815446610965156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272791.P11277815446610965156

/-!
# A272792: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A272792, there is no canonical definition to state claims against.
-/

/-! ## A272792.P9875277027739367723

`∑[A016754(n)-A272012(n)]+1`
-/

namespace A272792.P9875277027739367723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272792.P9875277027739367723

/-! ## A272792.P13922483473793482618

`∑[A272793(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272792.P13922483473793482618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272793 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272792.P13922483473793482618

/-! ## A272792.P11981508927533005193

`∑[A272790(n)]`
-/

namespace A272792.P11981508927533005193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272792.P11981508927533005193

/-! ## A272792.P6674346358960861479

`A272790(A123108(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A272792.P6674346358960861479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272790 (A123108 (2 * n)).toNat + a (n - 1)

end

end A272792.P6674346358960861479

/-! ## A272792.P11069176471677777163

`∑[A181385(A016825(n))-A272012(n)]`
-/

namespace A272792.P11069176471677777163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272792.P11069176471677777163

/-! ## A272792.P183593371419517239

`∑[A181385(A016825(n))]-A272014(n)`
-/

namespace A272792.P183593371419517239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272014 n

end

end A272792.P183593371419517239

/-! ## A272792.P13259515897963098940

`∑[A008740(A008458(n))-A272012(n)]`
-/

namespace A272792.P13259515897963098940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272792.P13259515897963098940

/-!
# A272793: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 537", based on the 5-celled von Neumann neighborhood.

The programs for A272793, there is no canonical definition to state claims against.
-/

/-! ## A272793.P15244679020889537875

`Δ[A272790(n)]`
-/

namespace A272793.P15244679020889537875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272793.P15244679020889537875

/-! ## A272793.P12426167696229882777

`A272790(n+1)-A272790(n)`
-/

namespace A272793.P12426167696229882777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272790 (n + 1) - A272790 n

end

end A272793.P12426167696229882777

/-! ## A272793.P307378344315299187

`Δ[A181385(A016825(n))-A272012(n)]`
-/

namespace A272793.P307378344315299187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272793.P307378344315299187

/-! ## A272793.P2823110402092818739

`Δ[A181385(A016825(n))]-A272015(n)`
-/

namespace A272793.P2823110402092818739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272015 n

end

end A272793.P2823110402092818739

/-! ## A272793.P9770313525441855216

`Δ[A008740(A008458(n))-A272012(n)]`
-/

namespace A272793.P9770313525441855216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272793.P9770313525441855216

/-!
# A272794: The numbers of closed simply typable lambda terms of natural size n.

The programs for A272794, there is no canonical definition to state claims against.
-/

/-! ## A272794.P8665049157931974590

`A071702(A148984(n))`
-/

namespace A272794.P8665049157931974590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071702 (A148984 n).toNat

end

end A272794.P8665049157931974590

/-! ## A272794.P10590767343787700358

`A071702(A148986(n))`
-/

namespace A272794.P10590767343787700358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071702 (A148986 n).toNat

end

end A272794.P10590767343787700358

/-! ## A272794.P10337823788157727118

`A071702(A149183(n))`
-/

namespace A272794.P10337823788157727118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071702 (A149183 n).toNat

end

end A272794.P10337823788157727118

/-! ## A272794.P10007450573516380906

`A071702(A120017(n+1))`
-/

namespace A272794.P10007450573516380906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071702 (A120017 (n + 1)).toNat

end

end A272794.P10007450573516380906

/-! ## A272794.P2195317498747594959

`A279794(A051049(record[∏{p}[n, #]]))`
-/

namespace A272794.P2195317498747594959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279794 (A051049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A272794.P2195317498747594959

/-!
# A272796: Smallest prime number with prime(n) prime digits.

The programs for A272796, there is no canonical definition to state claims against.
-/

/-! ## A272796.P10590458778792652287

`A069837(p?[A234017(n)])`
-/

namespace A272796.P10590458778792652287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069837 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272796.P10590458778792652287

/-! ## A272796.P14354247551545448288

`A069837(p?[A344180(n)])`
-/

namespace A272796.P14354247551545448288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069837 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272796.P14354247551545448288

/-! ## A272796.P8881440717494668933

`A069837(A000040(n+1))`
-/

namespace A272796.P8881440717494668933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069837 (A000040 (n + 1)).toNat

end

end A272796.P8881440717494668933

/-! ## A272796.P18296451542238134331

`A069837(p?[A069799(n+1)])`
-/

namespace A272796.P18296451542238134331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069837 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272796.P18296451542238134331

/-! ## A272796.P10784289754867502027

`A069837(A085818(A085971(n+1)))`
-/

namespace A272796.P10784289754867502027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069837 (A085818 (A085971 (n + 1)).toNat).toNat

end

end A272796.P10784289754867502027

/-!
# A272799: Numbers k such that 2*k - 1 and 2*k + 1 are squarefree.

The programs for A272799, the canonical program `A272799.P16823547657693806826` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272799 has offset 1).

The definition of A272799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069977, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272799.P16823547657693806826

`(A069977(n+1)+1)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A272799

/-- `(A069977(n+1)+1)/2` -/
def P16823547657693806826.Spec : Prop :=
  ∀ n, P16823547657693806826.a n = (A272799 (n + 1) : ℚ)

end A272799

/-! ## A272799.P8131470915363289943

`A067874(n+1)/2`
-/

namespace A272799.P8131470915363289943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067874 (n + 1) : ℚ) / 2

end

end A272799.P8131470915363289943

namespace A272799

/-- `A067874(n+1)/2` -/
def P8131470915363289943.Spec : Prop :=
  ∀ n, P8131470915363289943.a n = (A272799 (n + 1) : ℚ)

end A272799

/-! ## A272799.P2692476770482323195

`ceil(A069977(n+1)/2)`
-/

namespace A272799.P2692476770482323195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069977 (n + 1) : ℚ) / 2⌉

end

end A272799.P2692476770482323195

namespace A272799

/-- `ceil(A069977(n+1)/2)` -/
def P2692476770482323195.Spec : Prop :=
  ∀ n, P2692476770482323195.a n = A272799 (n + 1)

end A272799

/-! ## A272799.P17844933787834596243

`floor(record[A007947(A005117(n+1)+2)]/2)`
-/

namespace A272799.P17844933787834596243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A005117 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A272799.P17844933787834596243

namespace A272799

/-- `floor(record[A007947(A005117(n+1)+2)]/2)` -/
def P17844933787834596243.Spec : Prop :=
  ∀ n, P17844933787834596243.a n = A272799 (n + 1)

end A272799

/-! ## A272799.P6395036944166423946

`∪[A228649(n+1), A280892(n+1)]/2`
-/

namespace A272799.P6395036944166423946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280892 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A272799.P6395036944166423946

namespace A272799

/-- `∪[A228649(n+1), A280892(n+1)]/2` -/
def P6395036944166423946.Spec : Prop :=
  ∀ n, P6395036944166423946.a n = (A272799 (n + 1) : ℚ)

end A272799

/-! ## A272799.P15029001079553033901

`∩[A264387(n+1)+1, A264387(n+1)]`
-/

namespace A272799.P15029001079553033901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272799.P15029001079553033901

namespace A272799

/-- `∩[A264387(n+1)+1, A264387(n+1)]` -/
def P15029001079553033901.Spec : Prop :=
  ∀ n, (P15029001079553033901.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P1847386560525053474

`eq[3, Δ[A007947(2*n+1)]+1]+1`
-/

namespace A272799.P1847386560525053474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272799.P1847386560525053474

namespace A272799

/-- `eq[3, Δ[A007947(2*n+1)]+1]+1` -/
def P1847386560525053474.Spec : Prop :=
  ∀ n, (P1847386560525053474.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P11667479920705158193

`eq[A079115(2*(n+1)), A323239(2*n+1)]+1`
-/

namespace A272799.P11667479920705158193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272799.P11667479920705158193

namespace A272799

/-- `eq[A079115(2*(n+1)), A323239(2*n+1)]+1` -/
def P11667479920705158193.Spec : Prop :=
  ∀ n, (P11667479920705158193.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P4130547836477571897

`eq[A323239(2*n+1), A344756(2*n+3)]+1`
-/

namespace A272799.P4130547836477571897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272799.P4130547836477571897

namespace A272799

/-- `eq[A323239(2*n+1), A344756(2*n+3)]+1` -/
def P4130547836477571897.Spec : Prop :=
  ∀ n, (P4130547836477571897.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P14505402091022116382

`eq[2*(n+1), A085050(2*(n+1))]+1`
-/

namespace A272799.P14505402091022116382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085050 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272799.P14505402091022116382

namespace A272799

/-- `eq[2*(n+1), A085050(2*(n+1))]+1` -/
def P14505402091022116382.Spec : Prop :=
  ∀ n, (P14505402091022116382.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P17974359826905011503

`A001281(A067874(n+1))`
-/

namespace A272799.P17974359826905011503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A067874 (n + 1)).toNat

end

end A272799.P17974359826905011503

namespace A272799

/-- `A001281(A067874(n+1))` -/
def P17974359826905011503.Spec : Prop :=
  ∀ n, P17974359826905011503.a n = A272799 (n + 1)

end A272799

/-! ## A272799.P16186222163675470090

`A000463(A069977(n+1))`
-/

namespace A272799.P16186222163675470090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A069977 (n + 1)).toNat

end

end A272799.P16186222163675470090

namespace A272799

/-- `A000463(A069977(n+1))` -/
def P16186222163675470090.Spec : Prop :=
  ∀ n, P16186222163675470090.a n = A272799 (n + 1)

end A272799

/-! ## A272799.P11383298068795651902

`eq[A072909(2*(n+1)), A323239(2*n+1)]+1`
-/

namespace A272799.P11383298068795651902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272799.P11383298068795651902

namespace A272799

/-- `eq[A072909(2*(n+1)), A323239(2*n+1)]+1` -/
def P11383298068795651902.Spec : Prop :=
  ∀ n, (P11383298068795651902.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P12122549333920194823

`eq[A070014(2*n+3), A323239(2*n+1)]+1`
-/

namespace A272799.P12122549333920194823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272799.P12122549333920194823

namespace A272799

/-- `eq[A070014(2*n+3), A323239(2*n+1)]+1` -/
def P12122549333920194823.Spec : Prop :=
  ∀ n, (P12122549333920194823.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P15505356587652473762

`eq[A088529(2*n+3), A323239(2*n+1)]+1`
-/

namespace A272799.P15505356587652473762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272799.P15505356587652473762

namespace A272799

/-- `eq[A088529(2*n+3), A323239(2*n+1)]+1` -/
def P15505356587652473762.Spec : Prop :=
  ∀ n, (P15505356587652473762.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P1382369283802520902

`eq[A008966(2*n+1), A285718(A004277(n))]`
-/

namespace A272799.P1382369283802520902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272799.P1382369283802520902

namespace A272799

/-- `eq[A008966(2*n+1), A285718(A004277(n))]` -/
def P1382369283802520902.Spec : Prop :=
  ∀ n, (P1382369283802520902.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P1660017046575552838

`eq[A285718(2*(n+1)), A285718(A004277(n))]`
-/

namespace A272799.P1660017046575552838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272799.P1660017046575552838

namespace A272799

/-- `eq[A285718(2*(n+1)), A285718(A004277(n))]` -/
def P1660017046575552838.Spec : Prop :=
  ∀ n, (P1660017046575552838.a n : ℤ) = A272799 (n + 1)

end A272799

/-! ## A272799.P13326710468933448860

`A014681(eq[A014681(n), A085050(n+1)])/2`
-/

namespace A272799.P13326710468933448860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085050 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A272799.P13326710468933448860

namespace A272799

/-- `A014681(eq[A014681(n), A085050(n+1)])/2` -/
def P13326710468933448860.Spec : Prop :=
  ∀ n, P13326710468933448860.a n = (A272799 (n + 1) : ℚ)

end A272799

/-! ## A272799.P14753111773642964130

`A092486(eq[A085050(n+1), A092486(n)])/2`
-/

namespace A272799.P14753111773642964130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A272799.P14753111773642964130

namespace A272799

/-- `A092486(eq[A085050(n+1), A092486(n)])/2` -/
def P14753111773642964130.Spec : Prop :=
  ∀ n, P14753111773642964130.a n = (A272799 (n + 1) : ℚ)

end A272799

/-! ## A272799.P15131152878841289323

`A106247(eq[A085050(n+1), A106247(n)])/2`
-/

namespace A272799.P15131152878841289323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106247 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A272799.P15131152878841289323

namespace A272799

/-- `A106247(eq[A085050(n+1), A106247(n)])/2` -/
def P15131152878841289323.Spec : Prop :=
  ∀ n, P15131152878841289323.a n = (A272799 (n + 1) : ℚ)

end A272799

