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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C011
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
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A226800: Column 5 of array in A226513.

The programs for A226800, the canonical program `A226800.P12307875985610856376` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226800 has offset 0).

The definition of A226800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226800.P12307875985610856376

`(n+1)*(n^4+24*n^3+186*n²+554*n+541)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226800

/-- `(n+1)*(n^4+24*n^3+186*n²+554*n+541)` -/
def P12307875985610856376.Spec : Prop :=
  ∀ n, (P12307875985610856376.a n : ℤ) = A226800 n

theorem P12307875985610856376.correct : P12307875985610856376.Spec := by
  intro n
  simp only [A226800]

end A226800

/-! ## A226800.P1552033707494783303

`A226513(eq[5, A002262(n)])`
-/

namespace A226800.P1552033707494783303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226800.P1552033707494783303

namespace A226800

/-- `A226513(eq[5, A002262(n)])` -/
def P1552033707494783303.Spec : Prop :=
  ∀ n, P1552033707494783303.a n = A226800 n

end A226800

/-! ## A226800.P5483855698486688448

`A226513(A000124(n+5)+4)`
-/

namespace A226800.P5483855698486688448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A000124 (n + 5) + 4).toNat

end

end A226800.P5483855698486688448

namespace A226800

/-- `A226513(A000124(n+5)+4)` -/
def P5483855698486688448.Spec : Prop :=
  ∀ n, P5483855698486688448.a n = A226800 n

end A226800

/-! ## A226800.P15830332112914393893

`A226513(A055999(n+2)+11)`
-/

namespace A226800.P15830332112914393893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A055999 (n + 2) + 11).toNat

end

end A226800.P15830332112914393893

namespace A226800

/-- `A226513(A055999(n+2)+11)` -/
def P15830332112914393893.Spec : Prop :=
  ∀ n, P15830332112914393893.a n = A226800 n

end A226800

/-! ## A226800.P16580310880316186380

`A226513(eq[6, A002260(n+1)])`
-/

namespace A226800.P16580310880316186380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226800.P16580310880316186380

namespace A226800

/-- `A226513(eq[6, A002260(n+1)])` -/
def P16580310880316186380.Spec : Prop :=
  ∀ n, P16580310880316186380.a n = A226800 n

end A226800

/-! ## A226800.P13555111784118044110

`A226513(eq[11, A158405(n+1)])`
-/

namespace A226800.P13555111784118044110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226800.P13555111784118044110

namespace A226800

/-- `A226513(eq[11, A158405(n+1)])` -/
def P13555111784118044110.Spec : Prop :=
  ∀ n, P13555111784118044110.a n = A226800 n

end A226800

/-!
# A226801: Column 6 of array in A226513.

The programs for A226801, the canonical program `A226801.P9544664218704710775` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226801 has offset 0).

The definition of A226801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226801.P9544664218704710775

`(n+1)*(2*A226800(n+1)-A226800(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226801

/-- `(n+1)*(2*A226800(n+1)-A226800(n))` -/
def P9544664218704710775.Spec : Prop :=
  ∀ n, P9544664218704710775.a n = A226801 n

theorem P9544664218704710775.correct : P9544664218704710775.Spec := by
  intro n
  simp only [A226801]

end A226801

/-! ## A226801.P12802471861491067951

`A226513(eq[6, A002262(n)])`
-/

namespace A226801.P12802471861491067951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226801.P12802471861491067951

namespace A226801

/-- `A226513(eq[6, A002262(n)])` -/
def P12802471861491067951.Spec : Prop :=
  ∀ n, P12802471861491067951.a n = A226801 n

end A226801

/-! ## A226801.P7502175097216687034

`A226513(eq[8, A141169(n)])`
-/

namespace A226801.P7502175097216687034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226801.P7502175097216687034

namespace A226801

/-- `A226513(eq[8, A141169(n)])` -/
def P7502175097216687034.Spec : Prop :=
  ∀ n, P7502175097216687034.a n = A226801 n

end A226801

/-! ## A226801.P7840802358760323368

`A226513(eq[64, A059268(n)])`
-/

namespace A226801.P7840802358760323368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226801.P7840802358760323368

namespace A226801

/-- `A226513(eq[64, A059268(n)])` -/
def P7840802358760323368.Spec : Prop :=
  ∀ n, P7840802358760323368.a n = A226801 n

end A226801

/-! ## A226801.P17415692016281197330

`A226513(eq[6, A144328(n+1)])`
-/

namespace A226801.P17415692016281197330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226801.P17415692016281197330

namespace A226801

/-- `A226513(eq[6, A144328(n+1)])` -/
def P17415692016281197330.Spec : Prop :=
  ∀ n, P17415692016281197330.a n = A226801 n

end A226801

/-! ## A226801.P13152157147438213614

`A226513(eq[7, A002260(n+1)])`
-/

namespace A226801.P13152157147438213614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226801.P13152157147438213614

namespace A226801

/-- `A226513(eq[7, A002260(n+1)])` -/
def P13152157147438213614.Spec : Prop :=
  ∀ n, P13152157147438213614.a n = A226801 n

end A226801

/-! ## A226801.P7984497922372068936

`A226513(eq[7, A134868(n+1)])`
-/

namespace A226801.P7984497922372068936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226801.P7984497922372068936

namespace A226801

/-- `A226513(eq[7, A134868(n+1)])` -/
def P7984497922372068936.Spec : Prop :=
  ∀ n, P7984497922372068936.a n = A226801 n

end A226801

/-!
# A226802: Primes p where the digital sum of p^2 is equal to 10.

The programs for A226802, there is no canonical definition to state claims against.
-/

/-! ## A226802.P555685529606037389

`p?[A135027(n+1)]`
-/

namespace A226802.P555685529606037389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226802.P555685529606037389

/-! ## A226802.P15127670415436763876

`p?[A262713(n+1)]`
-/

namespace A226802.P15127670415436763876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226802.P15127670415436763876

/-! ## A226802.P14292683067841677569

`record[A020639(A135027(n+2))]`
-/

namespace A226802.P14292683067841677569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135027 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226802.P14292683067841677569

/-!
# A226804: Expansion of 1/((1-3x)(1-9x)(1-27x)(1-81x)).

The programs for A226804, the canonical program `A226804.P4181519889275872936` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226804 has offset 0).

The definition of A226804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226804.P4181519889275872936

`3^n*(3^(n+1)-1)*(3^(n+2)-1)*(3^(n+3)-1)/416`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226804

/-- `3^n*(3^(n+1)-1)*(3^(n+2)-1)*(3^(n+3)-1)/416` -/
def P4181519889275872936.Spec : Prop :=
  ∀ n, P4181519889275872936.a n = (A226804 n : ℚ)

end A226804

/-! ## A226804.P7642102890838310956

`lcm(A000244(n), A006101(n+3))`
-/

namespace A226804.P7642102890838310956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A006101 (n + 3))

end

end A226804.P7642102890838310956

namespace A226804

/-- `lcm(A000244(n), A006101(n+3))` -/
def P7642102890838310956.Spec : Prop :=
  ∀ n, (P7642102890838310956.a n : ℤ) = A226804 n

end A226804

/-!
# A226805: P_n(n+1) where P_n(x) is the polynomial of degree n-1 which satisfies P_n(i) = i^i for i = 1,...,n.

The programs for A226805, there is no canonical definition to state claims against.
-/

/-! ## A226805.P18264050313661942571

`A000312(n+2)-A065980(n+2)`
-/

namespace A226805.P18264050313661942571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - A065980 (n + 2)

end

end A226805.P18264050313661942571

/-! ## A226805.P477766648780907087

`Δ[A001923(n+1)]-A065980(n+2)`
-/

namespace A226805.P477766648780907087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065980 (n + 2)

end

end A226805.P477766648780907087

/-! ## A226805.P4684888739303645779

`Δ[A062970(n+1)]-A065980(n+2)`
-/

namespace A226805.P4684888739303645779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A065980 (n + 2)

end

end A226805.P4684888739303645779

/-! ## A226805.P7997498942113488401

`A000312(ceil(sin(n)²)+n+1)%A065980(n+2)`
-/

namespace A226805.P7997498942113488401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 (⌈Real.sin (n : ℝ) ^ 2⌉ + (n + 1 : ℤ)).toNat) (A065980 (n + 2))

end

end A226805.P7997498942113488401

/-!
# A226806: Numbers of the form 2^j + 4^k, for j and k >= 0.

The programs for A226806, the canonical program `A226806.P12892588838181652546` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226806 has offset 1).

The definition of A226806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226806.P12892588838181652546

`∪[A173195(n+1), A055236(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226806

/-- `∪[A173195(n+1), A055236(n)]` -/
def P12892588838181652546.Spec : Prop :=
  ∀ n, (P12892588838181652546.a n : ℤ) = A226806 (n + 1)

theorem P12892588838181652546.correct : P12892588838181652546.Spec := by
  intro n
  simp only [A226806, Nat.add_sub_cancel]

end A226806

/-! ## A226806.P14423369277140812508

`A173786(comp[A185869(n+1)])`
-/

namespace A226806.P14423369277140812508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A226806.P14423369277140812508

namespace A226806

/-- `A173786(comp[A185869(n+1)])` -/
def P14423369277140812508.Spec : Prop :=
  ∀ n, P14423369277140812508.a n = A226806 (n + 1)

end A226806

/-! ## A226806.P7405858310479443673

`record[A106610(A099627(n))+1]`
-/

namespace A226806.P7405858310479443673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A099627 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226806.P7405858310479443673

namespace A226806

/-- `record[A106610(A099627(n))+1]` -/
def P7405858310479443673.Spec : Prop :=
  ∀ n, P7405858310479443673.a n = A226806 (n + 1)

end A226806

/-! ## A226806.P15010520163324826757

`record[A106610(A161924(n+1))+1]`
-/

namespace A226806.P15010520163324826757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A161924 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226806.P15010520163324826757

namespace A226806

/-- `record[A106610(A161924(n+1))+1]` -/
def P15010520163324826757.Spec : Prop :=
  ∀ n, P15010520163324826757.a n = A226806 (n + 1)

end A226806

/-! ## A226806.P8365299820552147567

`eq[2, A000010(A268444(n))]`
-/

namespace A226806.P8365299820552147567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226806.P8365299820552147567

namespace A226806

/-- `eq[2, A000010(A268444(n))]` -/
def P8365299820552147567.Spec : Prop :=
  ∀ n, (P8365299820552147567.a n : ℤ) = A226806 (n + 1)

end A226806

/-! ## A226806.P2389662581452737812

`∩[A007494(n), A173786(n)]`
-/

namespace A226806.P2389662581452737812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P2389662581452737812

namespace A226806

/-- `∩[A007494(n), A173786(n)]` -/
def P2389662581452737812.Spec : Prop :=
  ∀ n, (P2389662581452737812.a n : ℤ) = A226806 (n + 1)

end A226806

/-! ## A226806.P10912523910842580867

`∩[A048645(n+1), A007494(n)]`
-/

namespace A226806.P10912523910842580867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P10912523910842580867

namespace A226806

/-- `∩[A048645(n+1), A007494(n)]` -/
def P10912523910842580867.Spec : Prop :=
  ∀ n, (P10912523910842580867.a n : ℤ) = A226806 (n + 1)

end A226806

/-! ## A226806.P10046048760745783622

`∩[A187335(n+1), A173786(n)]`
-/

namespace A226806.P10046048760745783622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P10046048760745783622

namespace A226806

/-- `∩[A187335(n+1), A173786(n)]` -/
def P10046048760745783622.Spec : Prop :=
  ∀ n, (P10046048760745783622.a n : ℤ) = A226806 (n + 1)

end A226806

/-! ## A226806.P8908411032564889706

`∩[A294732(n+2), A173786(n)]`
-/

namespace A226806.P8908411032564889706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P8908411032564889706

namespace A226806

/-- `∩[A294732(n+2), A173786(n)]` -/
def P8908411032564889706.Spec : Prop :=
  ∀ n, (P8908411032564889706.a n : ℤ) = A226806 (n + 1)

end A226806

/-! ## A226806.P15156031332374325193

`∩[A048645(n+1), A187335(n+1)]`
-/

namespace A226806.P15156031332374325193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226806.P15156031332374325193

namespace A226806

/-- `∩[A048645(n+1), A187335(n+1)]` -/
def P15156031332374325193.Spec : Prop :=
  ∀ n, (P15156031332374325193.a n : ℤ) = A226806 (n + 1)

end A226806

/-!
# A226807: Numbers of the form 3^j + 4^k, for j and k >= 0.

The programs for A226807, there is no canonical definition to state claims against.
-/

/-! ## A226807.P4221139147493411183

`A167792(n+1)-A007112(A072046(n+1))`
-/

namespace A226807.P4221139147493411183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1) - A007112 (A072046 (n + 1)).toNat

end

end A226807.P4221139147493411183

/-! ## A226807.P10602927543993296828

`A167792(n+1)-A341979(A178866(n+1))`
-/

namespace A226807.P10602927543993296828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1) - A341979 ((A178866 (n + 1)).toNat + 59)

end

end A226807.P10602927543993296828

/-! ## A226807.P3455054946494298787

`A167792(n+1)+A121373(A276087(n+4))`
-/

namespace A226807.P3455054946494298787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167792 (n + 1) + A121373 (A276087 (n + 4)).toNat

end

end A226807.P3455054946494298787

/-! ## A226807.P4767226944124583017

`lt[A048249(A084937(n+1)), A181821(n+1)]`
-/

namespace A226807.P4767226944124583017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (A084937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226807.P4767226944124583017

/-! ## A226807.P8963499398809237151

`lt[A022100(A084937(n+1)), A342869(n+1)]`
-/

namespace A226807.P8963499398809237151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 (A084937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226807.P8963499398809237151

/-!
# A226809: Numbers of the form 3^j + 5^k, for j and k >= 0.

The programs for A226809, there is no canonical definition to state claims against.
-/

/-! ## A226809.P17360894847177762943

`2*A226790(n+1)`
-/

namespace A226809.P17360894847177762943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226790 (n + 1)

end

end A226809.P17360894847177762943

/-! ## A226809.P10121463193394375843

`A226790(Δ[n²]-n)/cot(atan(2))`
-/

namespace A226809.P10121463193394375843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A226809.P10121463193394375843

/-! ## A226809.P16777121229157335873

`A226790(C(n+1, n))/(1-1/2)`
-/

namespace A226809.P16777121229157335873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226790 (Nat.choose (n + 1) n) : ℚ) / (1 - (1 : ℚ) / 2)

end

end A226809.P16777121229157335873

/-! ## A226809.P4990205094034967057

`A226790(A000027(n+1))+A226790(n+1)`
-/

namespace A226809.P4990205094034967057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226790 (A000027 (n + 1)).toNat + A226790 (n + 1)

end

end A226809.P4990205094034967057

/-! ## A226809.P10014517795548653306

`A004277(A226790(n+1))`
-/

namespace A226809.P10014517795548653306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A226790 (n + 1)).toNat

end

end A226809.P10014517795548653306

/-! ## A226809.P11624084536578487249

`A004275(A226790(n+1)+1)`
-/

namespace A226809.P11624084536578487249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A226790 (n + 1) + 1).toNat

end

end A226809.P11624084536578487249

/-! ## A226809.P8201854849303632677

`record[A019425(A216442(n+1))/2]`
-/

namespace A226809.P8201854849303632677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019425 (A216442 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226809.P8201854849303632677

/-! ## A226809.P10113769679598080175

`A004273(A226790(n+1)+1)-1`
-/

namespace A226809.P10113769679598080175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A226790 (n + 1) + 1).toNat - 1

end

end A226809.P10113769679598080175

/-! ## A226809.P3660013341853205141

`A060747(A226790(n+1)+1)-1`
-/

namespace A226809.P3660013341853205141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A226790 (n + 1) + 1).toNat - 1

end

end A226809.P3660013341853205141

/-! ## A226809.P18418202170483270474

`record[A350576(A216442(n+1))]`
-/

namespace A226809.P18418202170483270474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350576 (A216442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226809.P18418202170483270474

/-!
# A226810: Numbers of the form 4^j + 5^k, for j and k >= 0.

The programs for A226810, there is no canonical definition to state claims against.
-/

/-! ## A226810.P3942680749018994726

`eq[A005875(n), A071611(A003059(n+1))]`
-/

namespace A226810.P3942680749018994726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071611 (A003059 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226810.P3942680749018994726

/-! ## A226810.P12014790471816800255

`eq[A004015(2*n), A071611(A003059(n+1))]`
-/

namespace A226810.P12014790471816800255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071611 (A003059 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226810.P12014790471816800255

/-! ## A226810.P93251378868328018

`eq[A014455(2*n), A071611(A003059(n+1))]`
-/

namespace A226810.P93251378868328018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071611 (A003059 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226810.P93251378868328018

/-! ## A226810.P8217342645074579678

`eq[A004013(4*n), A071611(A003059(n+1))]`
-/

namespace A226810.P8217342645074579678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071611 (A003059 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226810.P8217342645074579678

/-! ## A226810.P5698505780510159813

`eq[A071611(A003059(n+1)), A169783(4*n)]`
-/

namespace A226810.P5698505780510159813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071611 (A003059 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226810.P5698505780510159813

/-!
# A226813: Numbers of the form 4^j + 6^k, for j and k >= 0.

The programs for A226813, there is no canonical definition to state claims against.
-/

/-! ## A226813.P7456435574533392125

`∩[A226811(n+1), A047215(n)]`
-/

namespace A226813.P7456435574533392125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226813.P7456435574533392125

/-! ## A226813.P13335555418303576891

`∩[A226811(n+1), A075328(n)]`
-/

namespace A226813.P13335555418303576891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226813.P13335555418303576891

/-! ## A226813.P3272569999340489623

`∩[A047217(n+1), A226811(n+1)]`
-/

namespace A226813.P3272569999340489623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226813.P3272569999340489623

/-! ## A226813.P15561047099786586205

`filter[A226811(n+1), A198517(#)]`
-/

namespace A226813.P15561047099786586205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A226813.P15561047099786586205

/-!
# A226814: Numbers of the form 5^j + 6^k, for j and k >= 0.

The programs for A226814, there is no canonical definition to state claims against.
-/

/-! ## A226814.P5267681296206495105

`record[A254730(n)+A254609(n)]`
-/

namespace A226814.P5267681296206495105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 n + A254609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226814.P5267681296206495105

/-!
# A226815: Numbers of the form 2^j + 7^k, for j and k >= 0.

The programs for A226815, there is no canonical definition to state claims against.
-/

/-! ## A226815.P17782443365824908131

`filter[A087092(n+1), A204418(#)]`
-/

namespace A226815.P17782443365824908131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A226815.P17782443365824908131

/-! ## A226815.P4429590959738810928

`filter[A087092(n+1), A286487(#)]`
-/

namespace A226815.P4429590959738810928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286487 (f1 j).toNat = 1) n)

end

end A226815.P4429590959738810928

/-! ## A226815.P7431608988614329530

`filter[A087092(n+2), A329682(#)]`
-/

namespace A226815.P7431608988614329530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A226815.P7431608988614329530

/-! ## A226815.P17655804517480995422

`eq[A053615(A014682(n)), A097992(n+1)]`
-/

namespace A226815.P17655804517480995422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A014682 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226815.P17655804517480995422

/-! ## A226815.P7072371114243740054

`eq[A318357(A067016(n)), A329195(n+1)]`
-/

namespace A226815.P7072371114243740054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318357 (A067016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226815.P7072371114243740054

/-!
# A226816: Numbers of the form 3^j + 7^k, for j and k >= 0.

The programs for A226816, there is no canonical definition to state claims against.
-/

/-! ## A226816.P907639976872215521

`2*A226791(n+1)`
-/

namespace A226816.P907639976872215521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226791 (n + 1)

end

end A226816.P907639976872215521

/-! ## A226816.P13962192822848669359

`A226791(Δ[n²]-n)/cot(atan(2))`
-/

namespace A226816.P13962192822848669359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226791 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A226816.P13962192822848669359

/-! ## A226816.P11416988943863244932

`A226791(A000027(n+1))+A226791(n+1)`
-/

namespace A226816.P11416988943863244932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226791 (A000027 (n + 1)).toNat + A226791 (n + 1)

end

end A226816.P11416988943863244932

/-! ## A226816.P10719850138864207479

`A004277(A226791(n+1))`
-/

namespace A226816.P10719850138864207479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A226791 (n + 1)).toNat

end

end A226816.P10719850138864207479

/-! ## A226816.P1193353099548646293

`A004275(A226791(n+1)+1)`
-/

namespace A226816.P1193353099548646293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A226791 (n + 1) + 1).toNat

end

end A226816.P1193353099548646293

/-! ## A226816.P12190721905385976683

`A051755(A226791(n+1)+2)-2`
-/

namespace A226816.P12190721905385976683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A226791 (n + 1) + 2).toNat - 2

end

end A226816.P12190721905385976683

/-!
# A226817: Numbers of the form 4^j + 7^k, for j and k >= 0.

The programs for A226817, there is no canonical definition to state claims against.
-/

/-! ## A226817.P5879736159838450123

`record[lcm(3, A226815(n+1))]/3`
-/

namespace A226817.P5879736159838450123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A226815 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3

end

end A226817.P5879736159838450123

/-! ## A226817.P12483851410300849944

`∩[A226815(n+1), A016789(n)]`
-/

namespace A226817.P12483851410300849944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226817.P12483851410300849944

/-! ## A226817.P15337246616379700174

`∩[A226815(n+1), A277574(n+1)]`
-/

namespace A226817.P15337246616379700174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226817.P15337246616379700174

/-! ## A226817.P9898702406809897056

`∩[A226815(n+1), A286693(n+1)]`
-/

namespace A226817.P9898702406809897056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226817.P9898702406809897056

/-! ## A226817.P2439839329044961680

`record[A106610(A226815(n+1))]`
-/

namespace A226817.P2439839329044961680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A226815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226817.P2439839329044961680

/-!
# A226818: Numbers of the form 5^j + 7^k, for j and k >= 0.

The programs for A226818, there is no canonical definition to state claims against.
-/

/-! ## A226818.P12428894062791165228

`2*A226792(n+1)`
-/

namespace A226818.P12428894062791165228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226792 (n + 1)

end

end A226818.P12428894062791165228

/-! ## A226818.P15880747219768827907

`A226792(Δ[n²]-n)/cot(atan(2))`
-/

namespace A226818.P15880747219768827907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A226818.P15880747219768827907

/-! ## A226818.P6967134579297696229

`A226792(C(n+1, n))+A226792(n+1)`
-/

namespace A226818.P6967134579297696229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226792 (Nat.choose (n + 1) n) + A226792 (n + 1)

end

end A226818.P6967134579297696229

/-! ## A226818.P16070437080304317325

`A226792(n-log2(1/2))+A226792(n+1)`
-/

namespace A226818.P16070437080304317325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226792 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + A226792 (n + 1)

end

end A226818.P16070437080304317325

/-! ## A226818.P15847458252269769796

`A226792(n+1)/2^A008683(A038888(n+1))`
-/

namespace A226818.P15847458252269769796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226792 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ)

end

end A226818.P15847458252269769796

/-!
# A226820: Numbers of the form 2^j + 8^k, for j and k >= 0.

The programs for A226820, there is no canonical definition to state claims against.
-/

/-! ## A226820.P2876607782850641914

`∩[A047370(n+1), A173786(n)]`
-/

namespace A226820.P2876607782850641914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226820.P2876607782850641914

/-! ## A226820.P1908685426993733031

`∩[A047370(n+1), A048645(n+1)]`
-/

namespace A226820.P1908685426993733031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226820.P1908685426993733031

/-! ## A226820.P15903972049690618302

`∩[A047371(n+1), A173786(n)]`
-/

namespace A226820.P15903972049690618302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226820.P15903972049690618302

/-! ## A226820.P12915681261494803462

`∩[A047371(n+1), A048645(n+1)]`
-/

namespace A226820.P12915681261494803462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226820.P12915681261494803462

/-! ## A226820.P2920712213338802081

`filter[A047370(n+1), A075897(#)]`
-/

namespace A226820.P2920712213338802081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A226820.P2920712213338802081

/-! ## A226820.P11961985980946445881

`filter[A047371(n+1), A075897(#)]`
-/

namespace A226820.P11961985980946445881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A226820.P11961985980946445881

/-! ## A226820.P9550226965985315870

`eq[char[A048645(n+1)], A040337(n+1)]`
-/

namespace A226820.P9550226965985315870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A226820.P9550226965985315870

/-! ## A226820.P6199655795599336420

`eq[A040296(n+1), A198064(A000120(n))]`
-/

namespace A226820.P6199655795599336420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198064 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226820.P6199655795599336420

/-!
# A226824: Numbers of the form 6^j + 8^k, for j and k >= 0.

The programs for A226824, there is no canonical definition to state claims against.
-/

/-! ## A226824.P14423380082820096259

`∩[A047352(n+1), A226811(n+1)]`
-/

namespace A226824.P14423380082820096259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226824.P14423380082820096259

/-! ## A226824.P12240262848350537494

`∩[A047277(n+1), A226811(n+1)]`
-/

namespace A226824.P12240262848350537494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226824.P12240262848350537494

/-! ## A226824.P17454500167602216975

`∩[A047293(n+1), A226811(n+1)]`
-/

namespace A226824.P17454500167602216975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226824.P17454500167602216975

/-! ## A226824.P8007283558546719183

`∩[A047349(n+1), A226811(n+1)]`
-/

namespace A226824.P8007283558546719183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226824.P8007283558546719183

/-! ## A226824.P4315353667910010563

`∩[A226811(n+1), A304501(n)]`
-/

namespace A226824.P4315353667910010563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226824.P4315353667910010563

/-!
# A226826: Numbers of the form 2^j + 9^k, for j and k >= 0.

The programs for A226826, there is no canonical definition to state claims against.
-/

/-! ## A226826.P12681497664092476453

`eq[A028714(A028700(n)), A112798(n+2)]`
-/

namespace A226826.P12681497664092476453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028714 (A028700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226826.P12681497664092476453

/-! ## A226826.P2716470113484235971

`record[A333970(A333942(n)-A333948(n+1))]`
-/

namespace A226826.P2716470113484235971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333970 (A333942 n - A333948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226826.P2716470113484235971

/-! ## A226826.P8772972516327478251

`eq[A174446(A174444(n+1))!, A048896(n)]+2`
-/

namespace A226826.P8772972516327478251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A174446 (A174444 (n + 1)).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A226826.P8772972516327478251

/-!
# A226827: Numbers of the form 3^j + 9^k, for j and k >= 0.

The programs for A226827, the canonical program `A226827.P13006153795325612832` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226827 has offset 1).

The definition of A226827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226827.P13006153795325612832

`2*A226793(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226827

/-- `2*A226793(n+1)` -/
def P13006153795325612832.Spec : Prop :=
  ∀ n, P13006153795325612832.a n = A226827 (n + 1)

theorem P13006153795325612832.correct : P13006153795325612832.Spec := by
  intro n
  simp only [A226827, Nat.add_sub_cancel]

end A226827

/-! ## A226827.P12777955440126377907

`A226793(n+1)+A226793(-xor(n, -1))`
-/

namespace A226827.P12777955440126377907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226793 (n + 1) + A226793 (-Int.xor (n : ℤ) (-1)).toNat

end

end A226827.P12777955440126377907

namespace A226827

/-- `A226793(n+1)+A226793(-xor(n, -1))` -/
def P12777955440126377907.Spec : Prop :=
  ∀ n, P12777955440126377907.a n = A226827 (n + 1)

end A226827

/-! ## A226827.P1038875882473532701

`A226793(n+1)+A226793(Δ[n²]-n)`
-/

namespace A226827.P1038875882473532701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226793 (n + 1) + A226793 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A226827.P1038875882473532701

namespace A226827

/-- `A226793(n+1)+A226793(Δ[n²]-n)` -/
def P1038875882473532701.Spec : Prop :=
  ∀ n, P1038875882473532701.a n = A226827 (n + 1)

end A226827

/-! ## A226827.P7573782510000443794

`A055235(comp[A185869(n+1)])`
-/

namespace A226827.P7573782510000443794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185869 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A226827.P7573782510000443794

namespace A226827

/-- `A055235(comp[A185869(n+1)])` -/
def P7573782510000443794.Spec : Prop :=
  ∀ n, P7573782510000443794.a n = A226827 (n + 1)

end A226827

/-! ## A226827.P2748927513708984732

`A226793(n+1)/2^A008683(A005382(n+1))`
-/

namespace A226827.P2748927513708984732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226793 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ)

end

end A226827.P2748927513708984732

namespace A226827

/-- `A226793(n+1)/2^A008683(A005382(n+1))` -/
def P2748927513708984732.Spec : Prop :=
  ∀ n, P2748927513708984732.a n = (A226827 (n + 1) : ℚ)

end A226827

/-!
# A226828: Numbers of the form 4^j + 9^k, for j and k >= 0.

The programs for A226828, there is no canonical definition to state claims against.
-/

/-! ## A226828.P8394436683388784838

`∩[A226807(n+1), A226826(n+1)]`
-/

namespace A226828.P8394436683388784838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226828.P8394436683388784838

/-! ## A226828.P5751365914495443498

`∩[A008784(n+1), A226807(n+1)]`
-/

namespace A226828.P5751365914495443498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226828.P5751365914495443498

/-! ## A226828.P17675916279052175096

`∩[A046711(n+1), A226807(n+1)]`
-/

namespace A226828.P17675916279052175096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226828.P17675916279052175096

/-! ## A226828.P9037841832873392299

`∩[A047619(n+1), A226807(n+1)]`
-/

namespace A226828.P9037841832873392299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226828.P9037841832873392299

/-! ## A226828.P4213010335923022868

`∩[A103215(n+1), A226807(n+1)]`
-/

namespace A226828.P4213010335923022868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226828.P4213010335923022868

/-!
# A226829: Numbers of the form 5^j + 9^k, for j and k >= 0.

The programs for A226829, there is no canonical definition to state claims against.
-/

/-! ## A226829.P12085227931663707142

`2*A226794(n+1)`
-/

namespace A226829.P12085227931663707142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226794 (n + 1)

end

end A226829.P12085227931663707142

/-! ## A226829.P8365066990905739020

`lcm(2, A226794(-xor(n, -1)))`
-/

namespace A226829.P8365066990905739020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A226794 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A226829.P8365066990905739020

/-! ## A226829.P5029101642098977718

`record[2*A226794(A344180(n))]`
-/

namespace A226829.P5029101642098977718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226794 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226829.P5029101642098977718

/-! ## A226829.P16387024195449331480

`lcm(2, A226794(A000027(n+1)))`
-/

namespace A226829.P16387024195449331480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A226794 (A000027 (n + 1)).toNat)

end

end A226829.P16387024195449331480

/-! ## A226829.P17655259468057822589

`A226794(n+1)+record[A226794(A344180(n))]`
-/

namespace A226829.P17655259468057822589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226794 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226794 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226829.P17655259468057822589

/-! ## A226829.P14147105252819375188

`A226794(A000027(n+1))+A226794(n+1)`
-/

namespace A226829.P14147105252819375188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226794 (A000027 (n + 1)).toNat + A226794 (n + 1)

end

end A226829.P14147105252819375188

/-! ## A226829.P2190006888454008087

`A226809(eq[1, val(A226809(n+1), 2)]+1)`
-/

namespace A226829.P2190006888454008087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226809 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226809 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A226829.P2190006888454008087

/-!
# A226830: Numbers of the form 6^j + 9^k, for j and k >= 0.

The programs for A226830, there is no canonical definition to state claims against.
-/

/-! ## A226830.P8712087911839488186

`∩[A226812(n+1), A047215(n)]`
-/

namespace A226830.P8712087911839488186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226830.P8712087911839488186

/-! ## A226830.P6959786852903291103

`∩[A226812(n+1), A075328(n)]`
-/

namespace A226830.P6959786852903291103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226830.P6959786852903291103

/-! ## A226830.P16655837224877549604

`∩[A047217(n+1), A226812(n+1)]`
-/

namespace A226830.P16655837224877549604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226830.P16655837224877549604

/-! ## A226830.P10601092917590642978

`filter[A226812(n+1), A198517(#)]`
-/

namespace A226830.P10601092917590642978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A226830.P10601092917590642978

/-!
# A226831: Numbers of the form 7^j + 9^k, for j and k >= 0.

The programs for A226831, there is no canonical definition to state claims against.
-/

/-! ## A226831.P14518162749745381658

`2*A226795(n+1)`
-/

namespace A226831.P14518162749745381658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226795 (n + 1)

end

end A226831.P14518162749745381658

/-! ## A226831.P13780241149819769389

`record[2*A226795(A324347(n))]`
-/

namespace A226831.P13780241149819769389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226795 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226831.P13780241149819769389

/-! ## A226831.P887055580744073567

`4*A226795(A005408(n)-n)/2`
-/

namespace A226831.P887055580744073567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A226795 (A005408 n - (n : ℤ)).toNat : ℚ) / 2)

end

end A226831.P887055580744073567

/-! ## A226831.P5944481611930821095

`A226795(C(n+1, n))+A226795(n+1)`
-/

namespace A226831.P5944481611930821095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226795 (Nat.choose (n + 1) n) + A226795 (n + 1)

end

end A226831.P5944481611930821095

/-! ## A226831.P10479611251789682794

`A226795(n+1)+record[A226795(A324347(n))]`
-/

namespace A226831.P10479611251789682794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226795 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226795 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226831.P10479611251789682794

/-!
# A226832: Numbers of the form 8^j + 9^k, for j and k >= 0.

The programs for A226832, there is no canonical definition to state claims against.
-/

/-! ## A226832.P10264416425198475219

`∩[A047468(n+1), A226821(n+1)]`
-/

namespace A226832.P10264416425198475219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226832.P10264416425198475219

/-! ## A226832.P16757544480972022839

`∩[A042963(n+1), A226821(n+1)]`
-/

namespace A226832.P16757544480972022839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226832.P16757544480972022839

/-! ## A226832.P8059848877374265597

`∩[A047370(n+1), A226821(n+1)]`
-/

namespace A226832.P8059848877374265597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226832.P8059848877374265597

/-! ## A226832.P1860076215919260577

`∩[A047372(n+1), A226821(n+1)]`
-/

namespace A226832.P1860076215919260577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226832.P1860076215919260577

/-! ## A226832.P10274120641847572788

`∩[A047396(n+1), A226821(n+1)]`
-/

namespace A226832.P10274120641847572788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226832.P10274120641847572788

/-!
# A226833: Triangle whose n-th row has the smallest n semiprimes in an arithmetic progression.

The programs for A226833, there is no canonical definition to state claims against.
-/

/-! ## A226833.P13849327685354962029

`A226835(n+1)/2`
-/

namespace A226833.P13849327685354962029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226835 (n + 1) : ℚ) / 2

end

end A226833.P13849327685354962029

/-! ## A226833.P6414440222925586374

`A001281(A226835(n+1))`
-/

namespace A226833.P6414440222925586374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A226835 (n + 1)).toNat

end

end A226833.P6414440222925586374

/-! ## A226833.P9129848691878555406

`A004524(A226835(n+1)+1)`
-/

namespace A226833.P9129848691878555406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A226835 (n + 1) + 1).toNat

end

end A226833.P9129848691878555406

/-! ## A226833.P17878315360731017175

`A004526(A226835(n+1)+1)`
-/

namespace A226833.P17878315360731017175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A226835 (n + 1) + 1).toNat

end

end A226833.P17878315360731017175

/-! ## A226833.P14465845018817798629

`A028242(A226835(n+1)+1)`
-/

namespace A226833.P14465845018817798629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A226835 (n + 1) + 1).toNat

end

end A226833.P14465845018817798629

/-! ## A226833.P2565956701872334983

`A057979(A226835(n+1)+1)`
-/

namespace A226833.P2565956701872334983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A226835 (n + 1) + 1).toNat

end

end A226833.P2565956701872334983

/-! ## A226833.P12105139149261905240

`A089196(A226835(n+1)+1)`
-/

namespace A226833.P12105139149261905240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (A226835 (n + 1) + 1).toNat

end

end A226833.P12105139149261905240

/-! ## A226833.P8122200849515100431

`A000463(A226835(n+1)-1)`
-/

namespace A226833.P8122200849515100431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A226835 (n + 1) - 1).toNat

end

end A226833.P8122200849515100431

/-! ## A226833.P1875738775153934895

`A001057(A226835(n+1)-1)`
-/

namespace A226833.P1875738775153934895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A226835 (n + 1) - 1).toNat

end

end A226833.P1875738775153934895

/-! ## A226833.P13140076965382113640

`A003602(A226835(n+1)-1)`
-/

namespace A226833.P13140076965382113640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A226835 (n + 1) - 1).toNat

end

end A226833.P13140076965382113640

/-!
# A226834: Smallest semiprime (A001358) which is at the beginning of an arithmetic progression of n semiprimes whose largest term is as small as possible.

The programs for A226834, there is no canonical definition to state claims against.
-/

/-! ## A226834.P1265883171619353822

`A226833(∑[n]+1)`
-/

namespace A226834.P1265883171619353822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226834.P1265883171619353822

/-! ## A226834.P11375825525019115630

`or(char[5], A226833(A000124(n)))`
-/

namespace A226834.P11375825525019115630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A226833 (A000124 n).toNat)

end

end A226834.P11375825525019115630

/-! ## A226834.P9370995951400062789

`A007318(∑[n])*A226833(A000124(n))`
-/

namespace A226834.P9370995951400062789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A226833 (A000124 n).toNat

end

end A226834.P9370995951400062789

/-! ## A226834.P10756365016740662659

`A226833(A000124(n))*A354487(n+4)`
-/

namespace A226834.P10756365016740662659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (A000124 n).toNat * A354487 (n + 4)

end

end A226834.P10756365016740662659

/-! ## A226834.P3445584174253224125

`A226833(A000124(n))^A000034(2*n)`
-/

namespace A226834.P3445584174253224125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226833 (A000124 n).toNat : ℚ) ^ (A000034 (2 * n) : ℤ)

end

end A226834.P3445584174253224125

/-!
# A226835: Triangle whose n-th row has the smallest n 3-almost primes in an arithmetic progression.

The programs for A226835, there is no canonical definition to state claims against.
-/

/-! ## A226835.P6712197542847838196

`2*A226833(n+1)`
-/

namespace A226835.P6712197542847838196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226833 (n + 1)

end

end A226835.P6712197542847838196

/-! ## A226835.P9841034062628819440

`lcm(2, 2*A226833(n-log2(1/2)))`
-/

namespace A226835.P9841034062628819440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A226833 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A226835.P9841034062628819440

/-! ## A226835.P15243967579155167621

`A004277(A226833(n+1))`
-/

namespace A226835.P15243967579155167621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A226833 (n + 1)).toNat

end

end A226835.P15243967579155167621

/-! ## A226835.P12185307990689999669

`A004275(A226833(n+1)+1)`
-/

namespace A226835.P12185307990689999669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A226833 (n + 1) + 1).toNat

end

end A226835.P12185307990689999669

/-! ## A226835.P17539527118347985134

`A004271(A226833(n+1)+2)`
-/

namespace A226835.P17539527118347985134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A226833 (n + 1) + 2).toNat

end

end A226835.P17539527118347985134

/-! ## A226835.P75609868359740783

`A004278(A226833(n+1)+2)`
-/

namespace A226835.P75609868359740783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A226833 (n + 1) + 2).toNat

end

end A226835.P75609868359740783

/-! ## A226835.P11549103574229866922

`A103517(A226833(n+1)-1)`
-/

namespace A226835.P11549103574229866922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A226833 (n + 1) - 1).toNat

end

end A226835.P11549103574229866922

/-! ## A226835.P11066482135543528891

`A226833(n-log2(1/2))+A226833(n+1)`
-/

namespace A226835.P11066482135543528891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat + A226833 (n + 1)

end

end A226835.P11066482135543528891

/-! ## A226835.P16757394467840065270

`(A226833(n+1)/(1-1/2))%A127229(n+5)`
-/

namespace A226835.P16757394467840065270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A226833 (n + 1) : ℚ) / (1 - (1 : ℚ) / 2))) (A127229 (n + 5))

end

end A226835.P16757394467840065270

/-! ## A226835.P15273023876685987575

`A005843(A226833(n+1)%A017057(n))`
-/

namespace A226835.P15273023876685987575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A226833 (n + 1)) (A017057 n)).toNat

end

end A226835.P15273023876685987575

/-!
# A226837: E.g.f.: exp( Sum_{n>=1} x^(2*n) / n^2 ) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!.

The programs for A226837, there is no canonical definition to state claims against.
-/

/-! ## A226837.P10752400086179611794

`C(2*n, n)*A074707(n)`
-/

namespace A226837.P10752400086179611794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A074707 n

end

end A226837.P10752400086179611794

/-! ## A226837.P16762503221472233359

`A000984(n)*A074707(n)`
-/

namespace A226837.P16762503221472233359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A074707 n

end

end A226837.P16762503221472233359

/-! ## A226837.P16268734144794363682

`A074707(n)*A129383(2*n)`
-/

namespace A226837.P16268734144794363682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074707 n * A129383 (2 * n)

end

end A226837.P16268734144794363682

/-! ## A226837.P11929864186420593156

`(n+1)*A000108(n)*A074707(n)`
-/

namespace A226837.P11929864186420593156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 n * A074707 n)

end

end A226837.P11929864186420593156

/-! ## A226837.P13304727392976475345

`A000142(n)*A323290(n)/A323291(n)*A000984(n)`
-/

namespace A226837.P13304727392976475345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n * A323290 n : ℚ) / (A323291 n : ℚ) * (A000984 n : ℚ)

end

end A226837.P13304727392976475345

/-!
# A226839: E.g.f.: exp( Sum_{n>=1} x^(n*(n+1)/2) / n! ).

The programs for A226839, there is no canonical definition to state claims against.
-/

/-! ## A226839.P16253114509756589155

`Δ[A163575(A001710(n))]+1`
-/

namespace A226839.P16253114509756589155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A001710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A226839.P16253114509756589155

/-! ## A226839.P17480226283668007812

`A002265(Δ[A357964(n)])+1`
-/

namespace A226839.P17480226283668007812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat + 1

end

end A226839.P17480226283668007812

/-! ## A226839.P4619228133933968550

`A357962(n)-A165738(A357962(n))`
-/

namespace A226839.P4619228133933968550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357962 n - A165738 (A357962 n).toNat

end

end A226839.P4619228133933968550

/-!
# A226842: Minimum integers equal to (sum_{i=n..n+k} F(i)) / (F(n) - 1), where F(i) are Fibonacci numbers (A000045).

The programs for A226842, there is no canonical definition to state claims against.
-/

/-! ## A226842.P9667227183952853368

`A285699(lcm(2, n)^n-n+1)`
-/

namespace A226842.P9667227183952853368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285699 ((Nat.lcm 2 n ^ n : ℤ) - (n : ℤ) + 1).toNat

end

end A226842.P9667227183952853368

/-!
# A226843: a(n) = prime(prime(n + 1) - 2).

The programs for A226843, the canonical program `A226843.P13041054188376916294` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226843 has offset 1).

The definition of A226843 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+2)-2)` (program `A226843.P13041054188376916294`, by `A226843.P13041054188376916294.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226843.P13041054188376916294

`A000040(A000040(n+2)-2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226843

/-- `A000040(A000040(n+2)-2)` -/
def P13041054188376916294.Spec : Prop :=
  ∀ n, P13041054188376916294.a n = A226843 (n + 1)

theorem P13041054188376916294.correct : P13041054188376916294.Spec := by
  intro n
  simp only [A226843, Nat.add_sub_cancel]

end A226843

/-! ## A226843.P11545420414392634870

`A031368(A005097(n+1))`
-/

namespace A226843.P11545420414392634870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A005097 (n + 1)).toNat

end

end A226843.P11545420414392634870

namespace A226843

/-- `A031368(A005097(n+1))` -/
def P11545420414392634870.Spec : Prop :=
  ∀ n, P11545420414392634870.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P18236994658292013903

`A031368(A102781(n+2))`
-/

namespace A226843.P18236994658292013903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A102781 (n + 2)).toNat

end

end A226843.P18236994658292013903

namespace A226843

/-- `A031368(A102781(n+2))` -/
def P18236994658292013903.Spec : Prop :=
  ∀ n, P18236994658292013903.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P17612064258373968350

`A031368(A130290(n+2))`
-/

namespace A226843.P17612064258373968350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (A130290 (n + 2)).toNat

end

end A226843.P17612064258373968350

namespace A226843

/-- `A031368(A130290(n+2))` -/
def P17612064258373968350.Spec : Prop :=
  ∀ n, P17612064258373968350.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P8475319031818773873

`A158611(p?[2*n+1])`
-/

namespace A226843.P8475319031818773873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226843.P8475319031818773873

namespace A226843

/-- `A158611(p?[2*n+1])` -/
def P8475319031818773873.Spec : Prop :=
  ∀ n, P8475319031818773873.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P6599351485260864666

`A335402(p?[2*n+1])`
-/

namespace A226843.P6599351485260864666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226843.P6599351485260864666

namespace A226843

/-- `A335402(p?[2*n+1])` -/
def P6599351485260864666.Spec : Prop :=
  ∀ n, P6599351485260864666.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P4709896557643749199

`A008578(p?[2*n+1]-1)`
-/

namespace A226843.P4709896557643749199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A226843.P4709896557643749199

namespace A226843

/-- `A008578(p?[2*n+1]-1)` -/
def P4709896557643749199.Spec : Prop :=
  ∀ n, P4709896557643749199.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P11270063076854963952

`A046022(p?[xor(1, n+1)+2])`
-/

namespace A226843.P11270063076854963952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226843.P11270063076854963952

namespace A226843

/-- `A046022(p?[xor(1, n+1)+2])` -/
def P11270063076854963952.Spec : Prop :=
  ∀ n, P11270063076854963952.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P1769424554974846506

`A008578(xor(1, p?[2*n+1]))`
-/

namespace A226843.P1769424554974846506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A226843.P1769424554974846506

namespace A226843

/-- `A008578(xor(1, p?[2*n+1]))` -/
def P1769424554974846506.Spec : Prop :=
  ∀ n, P1769424554974846506.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P521766852618547099

`A006093(p?[2*n+1]-2)+1`
-/

namespace A226843.P521766852618547099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 2) + 1

end

end A226843.P521766852618547099

namespace A226843

/-- `A006093(p?[2*n+1]-2)+1` -/
def P521766852618547099.Spec : Prop :=
  ∀ n, P521766852618547099.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P15627555535575269220

`A182986(or(1, p?[2*n+1])-1)`
-/

namespace A226843.P15627555535575269220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1)

end

end A226843.P15627555535575269220

namespace A226843

/-- `A182986(or(1, p?[2*n+1])-1)` -/
def P15627555535575269220.Spec : Prop :=
  ∀ n, P15627555535575269220.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P922461290487209907

`A008578(or(1, p?[2*n-1])-1)`
-/

namespace A226843.P922461290487209907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) - 1).toNat

end

end A226843.P922461290487209907

namespace A226843

/-- `A008578(or(1, p?[2*n-1])-1)` -/
def P922461290487209907.Spec : Prop :=
  ∀ n, P922461290487209907.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P13042668968339686096

`A046022(A045344(n+1))`
-/

namespace A226843.P13042668968339686096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A045344 (n + 1)).toNat

end

end A226843.P13042668968339686096

namespace A226843

/-- `A046022(A045344(n+1))` -/
def P13042668968339686096.Spec : Prop :=
  ∀ n, P13042668968339686096.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P814826451109408638

`A158611(A065091(n+1))`
-/

namespace A226843.P814826451109408638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A065091 (n + 1)).toNat

end

end A226843.P814826451109408638

namespace A226843

/-- `A158611(A065091(n+1))` -/
def P814826451109408638.Spec : Prop :=
  ∀ n, P814826451109408638.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P3558739329488711729

`A175787(A165972(n+1))`
-/

namespace A226843.P3558739329488711729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A165972 (n + 1)).toNat

end

end A226843.P3558739329488711729

namespace A226843

/-- `A175787(A165972(n+1))` -/
def P3558739329488711729.Spec : Prop :=
  ∀ n, P3558739329488711729.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P5334935679578813275

`A008578(A006093(n+2))`
-/

namespace A226843.P5334935679578813275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A006093 (n + 2)).toNat

end

end A226843.P5334935679578813275

namespace A226843

/-- `A008578(A006093(n+2))` -/
def P5334935679578813275.Spec : Prop :=
  ∀ n, P5334935679578813275.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P5020590446181109442

`A000040(A040976(n+2))`
-/

namespace A226843.P5020590446181109442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A040976 (n + 2)).toNat

end

end A226843.P5020590446181109442

namespace A226843

/-- `A000040(A040976(n+2))` -/
def P5020590446181109442.Spec : Prop :=
  ∀ n, P5020590446181109442.a n = A226843 (n + 1)

end A226843

/-! ## A226843.P3813394584773520133

`A008578(A039915(n+2))`
-/

namespace A226843.P3813394584773520133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A039915 (n + 2)).toNat

end

end A226843.P3813394584773520133

namespace A226843

/-- `A008578(A039915(n+2))` -/
def P3813394584773520133.Spec : Prop :=
  ∀ n, P3813394584773520133.a n = A226843 (n + 1)

end A226843

/-!
# A226844: Number of n X n (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X(n+1) binary array.

The programs for A226844, there is no canonical definition to state claims against.
-/

/-! ## A226844.P15116438250966614276

`A226852((n+1)²+n²)`
-/

namespace A226844.P15116438250966614276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 ((n + 1) ^ 2 + n ^ 2)

end

end A226844.P15116438250966614276

/-! ## A226844.P11767773417446486884

`lcm(A007754(n), A226852(A001844(n)))`
-/

namespace A226844.P11767773417446486884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007754 n) (A226852 (A001844 n).toNat)

end

end A226844.P11767773417446486884

/-!
# A226845: Number of n X 1 (0,1,2) arrays of permanents of 2 X 2 subblocks of some (n+1) X 2 binary array.

The programs for A226845, the canonical program `A226845.P5870890662273245027` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226845 has offset 1).

The definition of A226845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226845.P5870890662273245027

`3*a(n-1)-2*a(n-2)+2*a(n-3)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=9, a(2)=23, a(3)=57, a(4)=145`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226845

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)+a(n-4)-a(n-5)` -/
def P5870890662273245027.Spec : Prop :=
  ∀ n, P5870890662273245027.a n = A226845 (n + 1)

theorem P5870890662273245027.correct : P5870890662273245027.Spec := by
  intro n
  simp only [A226845, Nat.add_sub_cancel]

end A226845

/-! ## A226845.P11516047217505027426

`A226852(∑[n]+1)`
-/

namespace A226845.P11516047217505027426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226845.P11516047217505027426

namespace A226845

/-- `A226852(∑[n]+1)` -/
def P11516047217505027426.Spec : Prop :=
  ∀ n, P11516047217505027426.a n = A226845 (n + 1)

end A226845

/-! ## A226845.P17439531303460589085

`or(1, A226852(A000124(n)))`
-/

namespace A226845.P17439531303460589085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226852 (A000124 n).toNat)

end

end A226845.P17439531303460589085

namespace A226845

/-- `or(1, A226852(A000124(n)))` -/
def P17439531303460589085.Spec : Prop :=
  ∀ n, P17439531303460589085.a n = A226845 (n + 1)

end A226845

/-! ## A226845.P17020090580177991657

`record[A226852(n+1)/A022167(n)]`
-/

namespace A226845.P17020090580177991657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226852 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226845.P17020090580177991657

namespace A226845

/-- `record[A226852(n+1)/A022167(n)]` -/
def P17020090580177991657.Spec : Prop :=
  ∀ n, P17020090580177991657.a n = (A226845 (n + 1) : ℚ)

end A226845

/-! ## A226845.P11203123832133716897

`record[root(A226852(n+1), A007754(n))]`
-/

namespace A226845.P11203123832133716897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226852 (n + 1) : ℝ) ^ (1 / (A007754 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226845.P11203123832133716897

namespace A226845

/-- `record[root(A226852(n+1), A007754(n))]` -/
def P11203123832133716897.Spec : Prop :=
  ∀ n, P11203123832133716897.a n = (A226845 (n + 1) : ℝ)

end A226845

/-!
# A226846: Number of nX2 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X3 binary array.

The programs for A226846, there is no canonical definition to state claims against.
-/

/-! ## A226846.P10530738057772387447

`A226852(∑[n+1]+2)`
-/

namespace A226846.P10530738057772387447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A226846.P10530738057772387447

/-! ## A226846.P17634299988097677103

`or(1, A226852(A133263(n+1)))`
-/

namespace A226846.P17634299988097677103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226852 (A133263 (n + 1)).toNat)

end

end A226846.P17634299988097677103

/-! ## A226846.P17020518336578925913

`record[gcd(A082859(n), A226852(n+2))]`
-/

namespace A226846.P17020518336578925913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082859 n) (A226852 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226846.P17020518336578925913

/-! ## A226846.P16953021076333993889

`A226852(A133263(n+1))+A151933(n+1)`
-/

namespace A226846.P16953021076333993889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A133263 (n + 1)).toNat + A151933 (n + 1)

end

end A226846.P16953021076333993889

/-! ## A226846.P5455436123660609326

`or(1, A226852(A000096(n+1)))`
-/

namespace A226846.P5455436123660609326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A226852 (A000096 (n + 1)).toNat)

end

end A226846.P5455436123660609326

/-!
# A226847: Number of nX3 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X4 binary array.

The programs for A226847, there is no canonical definition to state claims against.
-/

/-! ## A226847.P15704754392278530312

`A226852(∑[n+2]+4)`
-/

namespace A226847.P15704754392278530312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226847.P15704754392278530312

/-! ## A226847.P5092976894288075250

`A226852(A167614(n+1))+A011739(n)`
-/

namespace A226847.P5092976894288075250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A167614 (n + 1)).toNat + A011739 n

end

end A226847.P5092976894288075250

/-! ## A226847.P16471087511351709688

`A226852(A167614(n+1))+A025469(n)`
-/

namespace A226847.P16471087511351709688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A167614 (n + 1)).toNat + A025469 n

end

end A226847.P16471087511351709688

/-! ## A226847.P16973114731647256507

`lcm(A033999(n), A226852(A167614(n+1)))`
-/

namespace A226847.P16973114731647256507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A226852 (A167614 (n + 1)).toNat)

end

end A226847.P16973114731647256507

/-! ## A226847.P1006243946615087593

`or(A000007(n), A226852(A167614(n+1)))`
-/

namespace A226847.P1006243946615087593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A226852 (A167614 (n + 1)).toNat)

end

end A226847.P1006243946615087593

/-!
# A226848: Number of nX4 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X5 binary array.

The programs for A226848, there is no canonical definition to state claims against.
-/

/-! ## A226848.P18219196830655627607

`A226852(A374004(n+1))`
-/

namespace A226848.P18219196830655627607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A374004 (n + 1)).toNat

end

end A226848.P18219196830655627607

/-! ## A226848.P1926762596192853439

`A226852(A141214(n)+7)`
-/

namespace A226848.P1926762596192853439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A141214 n + 7).toNat

end

end A226848.P1926762596192853439

/-! ## A226848.P5781294817228062958

`A226852(A052905(n)+9)`
-/

namespace A226848.P5781294817228062958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A052905 n + 9).toNat

end

end A226848.P5781294817228062958

/-! ## A226848.P7054110826912320774

`A226852(A055999(n)+10)`
-/

namespace A226848.P7054110826912320774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A055999 n + 10).toNat

end

end A226848.P7054110826912320774

/-! ## A226848.P6339772089193070209

`A226852(A167614(n+2)+1)`
-/

namespace A226848.P6339772089193070209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A167614 (n + 2) + 1).toNat

end

end A226848.P6339772089193070209

/-!
# A226849: Number of nX5 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X6 binary array.

The programs for A226849, there is no canonical definition to state claims against.
-/

/-! ## A226849.P11774531852614161814

`A226852(A374005(n+1))`
-/

namespace A226849.P11774531852614161814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A374005 (n + 1)).toNat

end

end A226849.P11774531852614161814

/-! ## A226849.P442254149436115597

`A226852(A133263(n+4)+3)`
-/

namespace A226849.P442254149436115597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A133263 (n + 4) + 3).toNat

end

end A226849.P442254149436115597

/-! ## A226849.P6936056007438311027

`A226852(A000217(n+4)+5)`
-/

namespace A226849.P6936056007438311027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A000217 (n + 4) + 5).toNat

end

end A226849.P6936056007438311027

/-! ## A226849.P2877514402426982041

`A226852(A055999(n+1)+11)`
-/

namespace A226849.P2877514402426982041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A055999 (n + 1) + 11).toNat

end

end A226849.P2877514402426982041

/-! ## A226849.P4056385734485681685

`A226852(eq[6, A131818(n+1)])`
-/

namespace A226849.P4056385734485681685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226849.P4056385734485681685

/-!
# A226850: Number of nX6 (0,1,2) arrays of permanents of 2X2 subblocks of some (n+1)X7 binary array.

The programs for A226850, there is no canonical definition to state claims against.
-/

/-! ## A226850.P8840764107301199277

`A226852(A374007(n+1))`
-/

namespace A226850.P8840764107301199277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A374007 (n + 1)).toNat

end

end A226850.P8840764107301199277

/-! ## A226850.P14596126188157543704

`A226852(A167499(n+4)+1)`
-/

namespace A226850.P14596126188157543704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A167499 (n + 4) + 1).toNat

end

end A226850.P14596126188157543704

/-! ## A226850.P15067477187203374322

`A226852(A000124(n+5)+5)`
-/

namespace A226850.P15067477187203374322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A000124 (n + 5) + 5).toNat

end

end A226850.P15067477187203374322

/-! ## A226850.P8818887498606989956

`A226852(eq[7, A131818(n+1)])`
-/

namespace A226850.P8818887498606989956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226850.P8818887498606989956

/-! ## A226850.P4225022956835958675

`A226852(Δ[A023545(n+1)]+10)`
-/

namespace A226850.P4225022956835958675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (f1 (n + 1) - f1 n + 10).toNat

end

end A226850.P4225022956835958675

/-!
# A226851: Number of n X 7 (0,1,2) arrays of permanents of 2 X 2 subblocks of some (n+1) X 8 binary array.

The programs for A226851, there is no canonical definition to state claims against.
-/

/-! ## A226851.P7987130993442399349

`A226852(A374008(n+1))`
-/

namespace A226851.P7987130993442399349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A374008 (n + 1)).toNat

end

end A226851.P7987130993442399349

/-! ## A226851.P8781553643336383454

`A226852(A155212(n+2)+15)`
-/

namespace A226851.P8781553643336383454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (A155212 (n + 2) + 15).toNat

end

end A226851.P8781553643336383454

/-! ## A226851.P188766444231296136

`A226852(eq[8, A131818(n+1)])`
-/

namespace A226851.P188766444231296136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226851.P188766444231296136

/-! ## A226851.P8535186236748131611

`A226852(eq[4, A219347(n)])`
-/

namespace A226851.P8535186236748131611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226852 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226851.P8535186236748131611

/-!
# A226853: Numbers n such that Sum_{i = 1..q} 1/d(i) is an integer where d(i) are the divisors of n for some q and n is primitive (the set {d(1), d(2), ..., d(q)} appears only once).

The programs for A226853, there is no canonical definition to state claims against.
-/

/-! ## A226853.P11799073980431209441

`A282775(n+1)-A352283(A037288(n))`
-/

namespace A226853.P11799073980431209441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282775 (n + 1) - A352283 (A037288 n).toNat

end

end A226853.P11799073980431209441

/-!
# A226854: a(n) = (-5*B(n+2) + (2*n+9)*B(n+1) + (2*n+1)*B(n))/4, where the B(i) are Bell numbers (A000110).

The programs for A226854, there is no canonical definition to state claims against.
-/

/-! ## A226854.P9351567434512167579

`A346772(n)-A033452(n)`
-/

namespace A226854.P9351567434512167579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346772 n - A033452 n

end

end A226854.P9351567434512167579

/-! ## A226854.P9837519276160539176

`A346772(n)%A033452(A028310(n))`
-/

namespace A226854.P9837519276160539176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346772 n) (A033452 (A028310 n).toNat)

end

end A226854.P9837519276160539176

/-! ## A226854.P2829819590930361889

`A346772(n)+A008683(A068486(n+1))*A033452(n)`
-/

namespace A226854.P2829819590930361889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346772 n + A008683 (A068486 (n + 1)).toNat * A033452 n

end

end A226854.P2829819590930361889

/-! ## A226854.P1020966069472439266

`A002266(A216367(n)-A049157(n))`
-/

namespace A226854.P1020966069472439266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A216367 n - A049157 n).toNat

end

end A226854.P1020966069472439266

/-!
# A226855: a(n) = n*B(n-1) + n*(n-1)*B(n-2), where the B(i) are Bell numbers (A000110).

The programs for A226855, there is no canonical definition to state claims against.
-/

/-! ## A226855.P9530784978741505458

`A052889(n)+2*A105479(n)`
-/

namespace A226855.P9530784978741505458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n + 2 * A105479 n

end

end A226855.P9530784978741505458

/-! ## A226855.P9498805789636771754

`A052889(n)+A005843(A105479(n))`
-/

namespace A226855.P9498805789636771754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052889 n + A005843 (A105479 n).toNat

end

end A226855.P9498805789636771754

/-! ## A226855.P5842783903869392785

`A005843(A105479(n))+n*A011971(C(n, 2))`
-/

namespace A226855.P5842783903869392785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A105479 n).toNat + (n : ℤ) * A011971 (Nat.choose n 2)

end

end A226855.P5842783903869392785

/-! ## A226855.P2248736768214402841

`A005843(A105479(n))+n*A108087(C(n, 2))`
-/

namespace A226855.P2248736768214402841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A105479 n).toNat + (n : ℤ) * A108087 (Nat.choose n 2)

end

end A226855.P2248736768214402841

/-! ## A226855.P2722733721420752074

`A005843(A105479(n))+n*A327884(C(n, 2))`
-/

namespace A226855.P2722733721420752074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A105479 n).toNat + (n : ℤ) * A327884 (Nat.choose n 2)

end

end A226855.P2722733721420752074

/-!
# A226856: Numbers A226770((prime(n))^2-1).

The programs for A226856, there is no canonical definition to state claims against.
-/

/-! ## A226856.P2834442104312753391

`A226770(A000040(n+1)²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226856.P2834442104312753391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (A000040 (n + 1) ^ 2 - 1).toNat

end

end A226856.P2834442104312753391

/-! ## A226856.P10968205923439714023

`A226770(p?[round(8*n/7)]²-1)`
-/

namespace A226856.P10968205923439714023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1).toNat

end

end A226856.P10968205923439714023

/-! ## A226856.P2331184767739291795

`A226770(A084920(n+1))`
-/

namespace A226856.P2331184767739291795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (A084920 (n + 1)).toNat

end

end A226856.P2331184767739291795

/-! ## A226856.P10797832975984420022

`A226770(A049001(n+1)+1)`
-/

namespace A226856.P10797832975984420022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (A049001 (n + 1) + 1).toNat

end

end A226856.P10797832975984420022

/-! ## A226856.P17439129608737939669

`A226770(A001248(n+1)-1)`
-/

namespace A226856.P17439129608737939669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226770 (A001248 (n + 1) - 1).toNat

end

end A226856.P17439129608737939669

/-!
# A226857: Numbers that are both the sum of two Fibonacci numbers and the product of two Fibonacci numbers.

The programs for A226857, the canonical program `A226857.P16696691752831286021` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226857 has offset 1).

The definition of A226857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226857.P16696691752831286021

`record[A098356(A038722(n+1)+4)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A226857

/-- `record[A098356(A038722(n+1)+4)]` -/
def P16696691752831286021.Spec : Prop :=
  ∀ n, P16696691752831286021.a n = A226857 (n + 1)

theorem P16696691752831286021.correct : P16696691752831286021.Spec := by
  intro n
  simp only [A226857, Nat.add_sub_cancel]

end A226857

/-! ## A226857.P5788765180019580874

`∩[A084176(n+1), A049997(n)]`
-/

namespace A226857.P5788765180019580874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226857.P5788765180019580874

namespace A226857

/-- `∩[A084176(n+1), A049997(n)]` -/
def P5788765180019580874.Spec : Prop :=
  ∀ n, (P5788765180019580874.a n : ℤ) = A226857 (n + 1)

end A226857

/-! ## A226857.P5661131656118640373

`record[A098356(n)%A283845(n+3)]`
-/

namespace A226857.P5661131656118640373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098356 n) (A283845 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226857.P5661131656118640373

namespace A226857

/-- `record[A098356(n)%A283845(n+3)]` -/
def P5661131656118640373.Spec : Prop :=
  ∀ n, P5661131656118640373.a n = A226857 (n + 1)

end A226857

/-! ## A226857.P13705349548506424380

`record[abs(A117501(n+1)-A117502(n+1))]`
-/

namespace A226857.P13705349548506424380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117501 (n + 1) - A117502 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226857.P13705349548506424380

namespace A226857

/-- `record[abs(A117501(n+1)-A117502(n+1))]` -/
def P13705349548506424380.Spec : Prop :=
  ∀ n, P13705349548506424380.a n = A226857 (n + 1)

end A226857

/-! ## A226857.P11961224776689600028

`record[A005206(A025581(n))*A117502(n+1)]`
-/

namespace A226857.P11961224776689600028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A025581 n).toNat * A117502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226857.P11961224776689600028

namespace A226857

/-- `record[A005206(A025581(n))*A117502(n+1)]` -/
def P11961224776689600028.Spec : Prop :=
  ∀ n, P11961224776689600028.a n = A226857 (n + 1)

end A226857

/-! ## A226857.P10409435684252174895

`record[A141169(n)*A227141(n)]`
-/

namespace A226857.P10409435684252174895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n * A227141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226857.P10409435684252174895

namespace A226857

/-- `record[A141169(n)*A227141(n)]` -/
def P10409435684252174895.Spec : Prop :=
  ∀ n, P10409435684252174895.a n = A226857 (n + 1)

end A226857

/-! ## A226857.P10338656016925143523

`eq[and(3, A249783(n)), A286326(n)]`
-/

namespace A226857.P10338656016925143523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A249783 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226857.P10338656016925143523

namespace A226857

/-- `eq[and(3, A249783(n)), A286326(n)]` -/
def P10338656016925143523.Spec : Prop :=
  ∀ n, (P10338656016925143523.a n : ℤ) = A226857 (n + 1)

end A226857

/-! ## A226857.P2202282976940617311

`eq[A003056(A286327(n))², A286327(n)]`
-/

namespace A226857.P2202282976940617311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A286327 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226857.P2202282976940617311

namespace A226857

/-- `eq[A003056(A286327(n))², A286327(n)]` -/
def P2202282976940617311.Spec : Prop :=
  ∀ n, (P2202282976940617311.a n : ℤ) = A226857 (n + 1)

end A226857

/-! ## A226857.P9489309633463041659

`eq[A249783(n), A286326(3*A286326(n))]`
-/

namespace A226857.P9489309633463041659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (3 * A286326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226857.P9489309633463041659

namespace A226857

/-- `eq[A249783(n), A286326(3*A286326(n))]` -/
def P9489309633463041659.Spec : Prop :=
  ∀ n, (P9489309633463041659.a n : ℤ) = A226857 (n + 1)

end A226857

/-! ## A226857.P4341789951972032444

`eq[A286327(3*A286326(n)), A286327(n)]`
-/

namespace A226857.P4341789951972032444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 (3 * A286326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226857.P4341789951972032444

namespace A226857

/-- `eq[A286327(3*A286326(n)), A286327(n)]` -/
def P4341789951972032444.Spec : Prop :=
  ∀ n, (P4341789951972032444.a n : ℤ) = A226857 (n + 1)

end A226857

/-!
# A226858: Numbers m such that there are at least 6 distinct triples (k, k+m, k+2m) of squares.

The programs for A226858, there is no canonical definition to state claims against.
-/

/-! ## A226858.P3607093275662272567

`A226954(n+1)/49`
-/

namespace A226858.P3607093275662272567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226954 (n + 1) : ℚ) / 49

end

end A226858.P3607093275662272567

/-!
# A226859: Number of prime sums in the process described in A226770.

The programs for A226859, there is no canonical definition to state claims against.
-/

/-! ## A226859.P341402015048535680

`gcd(A093873(n+1), A264722(A032923(n+1)))`
-/

namespace A226859.P341402015048535680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093873 (n + 1)) (A264722 (A032923 (n + 1)).toNat)

end

end A226859.P341402015048535680

/-! ## A226859.P7484015371712400292

`gcd(A093873(n+1), A132975(A089413(n)))`
-/

namespace A226859.P7484015371712400292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093873 (n + 1)) (A132975 (A089413 n).toNat)

end

end A226859.P7484015371712400292

/-! ## A226859.P17109074531139483157

`A001221(A130479(n)+A101777(n+1))`
-/

namespace A226859.P17109074531139483157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130479 n + A101777 (n + 1)).toNat

end

end A226859.P17109074531139483157

/-! ## A226859.P10262177665496204260

`A334440(A300123(n+1)+A126120(n))`
-/

namespace A226859.P10262177665496204260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A300123 (n + 1) + A126120 n).toNat

end

end A226859.P10262177665496204260

/-! ## A226859.P2750481388646133889

`∑{p}[A130479(n)+A101777(n+1), A000189(#)]`
-/

namespace A226859.P2750481388646133889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130479 n + A101777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000189 p

end

end A226859.P2750481388646133889

/-!
# A226860: Expansion of psi(-x) * phi(-x^6) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A226860, there is no canonical definition to state claims against.
-/

/-! ## A226860.P13269168084137317052

`A226861(n)/A131713(n)`
-/

namespace A226860.P13269168084137317052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226861 n : ℚ) / (A131713 n : ℚ)

end

end A226860.P13269168084137317052

/-! ## A226860.P13473391230831877426

`A226861(n)/Δ[A117966(n)]`
-/

namespace A226860.P13473391230831877426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226861 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A226860.P13473391230831877426

/-! ## A226860.P12155251344835793688

`A246962(3*n)`
-/

namespace A226860.P12155251344835793688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (3 * n)

end

end A226860.P12155251344835793688

/-! ## A226860.P12469034321045692979

`A246962(A008486(n))+A000007(n)`
-/

namespace A226860.P12469034321045692979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (A008486 n).toNat + A000007 n

end

end A226860.P12469034321045692979

/-! ## A226860.P12479344388045046154

`or(A010054(n), A246962(A008486(n)))`
-/

namespace A226860.P12479344388045046154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A246962 (A008486 n).toNat)

end

end A226860.P12479344388045046154

/-! ## A226860.P6597242040312660404

`A226350(4*n)`
-/

namespace A226860.P6597242040312660404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 (4 * n)

end

end A226860.P6597242040312660404

/-! ## A226860.P16847759607852282593

`A204010(4*n)/A101675(2*n)`
-/

namespace A226860.P16847759607852282593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 (4 * n) : ℚ) / (A101675 (2 * n) : ℚ)

end

end A226860.P16847759607852282593

/-! ## A226860.P7315299753641568409

`A246962(A008486(n))+A036987(A000328(n))`
-/

namespace A226860.P7315299753641568409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (A008486 n).toNat + A036987 (A000328 n).toNat

end

end A226860.P7315299753641568409

/-! ## A226860.P15621316080493529905

`A246962(A008486(n))+A036987(A008486(n)²)`
-/

namespace A226860.P15621316080493529905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (A008486 n).toNat + A036987 (A008486 n ^ 2).toNat

end

end A226860.P15621316080493529905

/-!
# A226861: Expansion of phi(x) * f(-x^3) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A226861, there is no canonical definition to state claims against.
-/

/-! ## A226861.P2530031097516927399

`A131713(n)*A226860(n)`
-/

namespace A226861.P2530031097516927399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A226860 n

end

end A226861.P2530031097516927399

/-! ## A226861.P6883392180620969982

`Δ[A117966(n)]*A226860(n)`
-/

namespace A226861.P6883392180620969982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226860 n

end

end A226861.P6883392180620969982

/-! ## A226861.P12478737935918334223

`(2-A100833(n+1)²)*A226860(n)`
-/

namespace A226861.P12478737935918334223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A100833 (n + 1) ^ 2) * A226860 n

end

end A226861.P12478737935918334223

/-! ## A226861.P10748692115171951703

`A007427(A100833(n+1))*A226860(n)`
-/

namespace A226861.P10748692115171951703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A100833 (n + 1)).toNat * A226860 n

end

end A226861.P10748692115171951703

/-! ## A226861.P1857353058793852682

`A100051(2*n+1)*A226860(n)`
-/

namespace A226861.P1857353058793852682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (2 * n + 1) * A226860 n

end

end A226861.P1857353058793852682

/-! ## A226861.P16963248693471694085

`A204010(4*n)`
-/

namespace A226861.P16963248693471694085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204010 (4 * n)

end

end A226861.P16963248693471694085

/-!
# A226862: Expansion of phi(x^3) * f(-x^4) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A226862, there is no canonical definition to state claims against.
-/

/-! ## A226862.P13170901009304331153

`A033999(n)*A226864(n)`
-/

namespace A226862.P13170901009304331153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A226864 n

end

end A226862.P13170901009304331153

/-! ## A226862.P7031399093906584322

`A057077(n)*A226864(n)`
-/

namespace A226862.P7031399093906584322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A226864 n

end

end A226862.P7031399093906584322

/-! ## A226862.P17915820782302329059

`A102560(n)*A226864(n)`
-/

namespace A226862.P17915820782302329059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A226864 n

end

end A226862.P17915820782302329059

/-! ## A226862.P17500101209603514484

`Δ[A007302(n)]*A226864(n)`
-/

namespace A226862.P17500101209603514484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226864 n

end

end A226862.P17500101209603514484

/-! ## A226862.P3280349052118854668

`A009001(2*n)*A226864(n)`
-/

namespace A226862.P3280349052118854668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A226864 n

end

end A226862.P3280349052118854668

/-! ## A226862.P15829090413241016339

`A093829(A006047(n))*A226864(n)`
-/

namespace A226862.P15829090413241016339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A006047 n).toNat * A226864 n

end

end A226862.P15829090413241016339

/-! ## A226862.P14206842928066673073

`A226864(n)/A057077(A004277(n))`
-/

namespace A226862.P14206842928066673073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226864 n : ℚ) / (A057077 (A004277 n).toNat : ℚ)

end

end A226862.P14206842928066673073

/-! ## A226862.P4803044366587370284

`A226864(n)/A057077(A005408(n))`
-/

namespace A226862.P4803044366587370284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226864 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A226862.P4803044366587370284

/-! ## A226862.P2438940597715416451

`A057077(n)*A226350(3*n)`
-/

namespace A226862.P2438940597715416451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A226350 (3 * n)

end

end A226862.P2438940597715416451

/-! ## A226862.P3054602639147693641

`A226864(n)/A057077(A016969(n))`
-/

namespace A226862.P3054602639147693641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226864 n : ℚ) / (A057077 (A016969 n).toNat : ℚ)

end

end A226862.P3054602639147693641

/-! ## A226862.P16370890782739342717

`A226350(A017173(n))`
-/

namespace A226862.P16370890782739342717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 (A017173 n).toNat

end

end A226862.P16370890782739342717

/-! ## A226862.P7898170582335761789

`A226864(n)/A057077(A002522(n))`
-/

namespace A226862.P7898170582335761789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226864 n : ℚ) / (A057077 (A002522 n).toNat : ℚ)

end

end A226862.P7898170582335761789

/-!
# A226863: Triangular numbers not divisible by lesser triangular numbers > 1.

The programs for A226863, there is no canonical definition to state claims against.
-/

/-! ## A226863.P10791112277863223585

`C(A137281(n+1)+1, 2)`
-/

namespace A226863.P10791112277863223585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137281 (n + 1) + 1).toNat 2

end

end A226863.P10791112277863223585

/-! ## A226863.P4928217931789554394

`A137281(n+1)+A000217(A137281(n+1)-1)`
-/

namespace A226863.P4928217931789554394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137281 (n + 1) + A000217 (A137281 (n + 1) - 1).toNat

end

end A226863.P4928217931789554394

/-! ## A226863.P9041859194326640441

`A000217(A137281(n+1))`
-/

namespace A226863.P9041859194326640441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A137281 (n + 1)).toNat

end

end A226863.P9041859194326640441

/-! ## A226863.P7823289572659601073

`C(eq[2, A076982(n+1)]+2, 2)`
-/

namespace A226863.P7823289572659601073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) 2

end

end A226863.P7823289572659601073

/-! ## A226863.P11717175148856424890

`A000096(A137281(n+1)-1)+1`
-/

namespace A226863.P11717175148856424890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A137281 (n + 1) - 1).toNat + 1

end

end A226863.P11717175148856424890

/-!
# A226864: Expansion of phi(-x^3) * f(-x^4) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A226864, there is no canonical definition to state claims against.
-/

/-! ## A226864.P16311306243814646676

`(-1)^n*A226862(n)`
-/

namespace A226864.P16311306243814646676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A226862 n

end

end A226864.P16311306243814646676

/-! ## A226864.P18026992242889024405

`A226862(n)/A033999(n)`
-/

namespace A226864.P18026992242889024405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226862 n : ℚ) / (A033999 n : ℚ)

end

end A226864.P18026992242889024405

/-! ## A226864.P14820666830378186175

`A226862(n)/A057077(n)`
-/

namespace A226864.P14820666830378186175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226862 n : ℚ) / (A057077 n : ℚ)

end

end A226864.P14820666830378186175

/-! ## A226864.P2172070741950024083

`A102560(n)*A226862(n)*A102560(n)²`
-/

namespace A226864.P2172070741950024083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A226862 n * A102560 n ^ 2

end

end A226864.P2172070741950024083

/-! ## A226864.P17068886873925950896

`A204010(3*n)`
-/

namespace A226864.P17068886873925950896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204010 (3 * n)

end

end A226864.P17068886873925950896

/-! ## A226864.P13682930492968267307

`A226350(3*n)`
-/

namespace A226864.P13682930492968267307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226350 (3 * n)

end

end A226864.P13682930492968267307

/-! ## A226864.P11384180228086600401

`A204010(n+n+n)%7`
-/

namespace A226864.P11384180228086600401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204010 (n + n + n)) 7

end

end A226864.P11384180228086600401

/-!
# A226865: Number of n X n (-1,0,1) arrays of determinants of 2 X 2 subblocks of some (n+1) X (n+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226865, there is no canonical definition to state claims against.
-/

/-! ## A226865.P9307215165000168140

`A226870(∑[4*n]+1)`
-/

namespace A226865.P9307215165000168140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226865.P9307215165000168140

/-! ## A226865.P9933768168446685165

`lcm((-1)^∑{e}[n+1, #], A226870(n²+(n+1)²))`
-/

namespace A226865.P9933768168446685165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A226870 (n ^ 2 + (n + 1) ^ 2))

end

end A226865.P9933768168446685165

/-! ## A226865.P10762949214495488343

`or(n, A226870(A001844(n)))`
-/

namespace A226865.P10762949214495488343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A226870 (A001844 n).toNat)

end

end A226865.P10762949214495488343

/-!
# A226866: Number of n X 2 (-1,0,1) arrays of determinants of 2 X 2 subblocks of some (n+1) X 3 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226866, the canonical program `A226866.P5715886951332747832` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226866 has offset 1).

The definition of A226866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226866.P5715886951332747832

`∑[3*(∑[n²+1]+C(n, 4))]+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226866

/-- `∑[3*(∑[n²+1]+C(n, 4))]+1` -/
def P5715886951332747832.Spec : Prop :=
  ∀ n, (P5715886951332747832.a n : ℤ) = A226866 (n + 1)

theorem P5715886951332747832.correct : P5715886951332747832.Spec := by
  intro n
  simp only [A226866, Nat.add_sub_cancel]

end A226866

/-! ## A226866.P15915258421155667257

`3*∑[∑[∑[C(n, 2)+2]-2]+1]+1`
-/

namespace A226866.P15915258421155667257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A226866.P15915258421155667257

namespace A226866

/-- `3*∑[∑[∑[C(n, 2)+2]-2]+1]+1` -/
def P15915258421155667257.Spec : Prop :=
  ∀ n, P15915258421155667257.a n = A226866 (n + 1)

end A226866

/-! ## A226866.P11188720794005933677

`1/40*(n+1)^5+7/8*(n+1)^3+21/10*(n+1)+1`
-/

namespace A226866.P11188720794005933677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 40 * ((n + 1) ^ 5 : ℚ) + (7 : ℚ) / 8 * ((n + 1) ^ 3 : ℚ) + (21 : ℚ) / 10 * (n + 1 : ℚ) + 1

end

end A226866.P11188720794005933677

namespace A226866

/-- `1/40*(n+1)^5+7/8*(n+1)^3+21/10*(n+1)+1` -/
def P11188720794005933677.Spec : Prop :=
  ∀ n, P11188720794005933677.a n = (A226866 (n + 1) : ℚ)

end A226866

/-! ## A226866.P1717877501096886743

`∑[A056000(∑[n]+1)-(A057427(n)+1)]`
-/

namespace A226866.P1717877501096886743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - (A057427 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226866.P1717877501096886743

namespace A226866

/-- `∑[A056000(∑[n]+1)-(A057427(n)+1)]` -/
def P1717877501096886743.Spec : Prop :=
  ∀ n, P1717877501096886743.a n = A226866 (n + 1)

end A226866

/-!
# A226867: Number of n X 3 (-1,0,1) arrays of determinants of 2 X 2 subblocks of some (n+1) X 4 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226867, there is no canonical definition to state claims against.
-/

/-! ## A226867.P12820902413253593210

`A226870(∑[n+2]+4)`
-/

namespace A226867.P12820902413253593210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226867.P12820902413253593210

/-! ## A226867.P7148343516991982218

`record[A226870(n+4)/A156919(n)]`
-/

namespace A226867.P7148343516991982218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226870 (n + 4) : ℚ) / (A156919 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226867.P7148343516991982218

/-! ## A226867.P7325762085857014994

`A226870(A167614(n+1))+A025469(n)`
-/

namespace A226867.P7325762085857014994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A167614 (n + 1)).toNat + A025469 n

end

end A226867.P7325762085857014994

/-! ## A226867.P8449403693379271834

`A226870(A167614(n+1))+A093391(n)`
-/

namespace A226867.P8449403693379271834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A167614 (n + 1)).toNat + A093391 n

end

end A226867.P8449403693379271834

/-! ## A226867.P5638516432770901389

`A226870(A167614(n+1))+A185284(n)`
-/

namespace A226867.P5638516432770901389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A167614 (n + 1)).toNat + A185284 n

end

end A226867.P5638516432770901389

/-!
# A226868: Number of nX4 (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X5 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226868, there is no canonical definition to state claims against.
-/

/-! ## A226868.P1952385062083032821

`A226870(A374004(n+1))`
-/

namespace A226868.P1952385062083032821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A374004 (n + 1)).toNat

end

end A226868.P1952385062083032821

/-! ## A226868.P3626993462457428085

`A226870(A141214(n)+7)`
-/

namespace A226868.P3626993462457428085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A141214 n + 7).toNat

end

end A226868.P3626993462457428085

/-! ## A226868.P15679580783732580163

`A226870(A052905(n)+9)`
-/

namespace A226868.P15679580783732580163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A052905 n + 9).toNat

end

end A226868.P15679580783732580163

/-! ## A226868.P7655888825125744114

`A226870(A055999(n)+10)`
-/

namespace A226868.P7655888825125744114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A055999 n + 10).toNat

end

end A226868.P7655888825125744114

/-! ## A226868.P10985233465528156224

`A226870(eq[5, A066657(n)])`
-/

namespace A226868.P10985233465528156224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226868.P10985233465528156224

/-!
# A226869: Number of n X 5 (-1,0,1) arrays of determinants of 2 X 2 subblocks of some (n+1) X 6 binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226869, there is no canonical definition to state claims against.
-/

/-! ## A226869.P3430886848286238102

`A226870(A374005(n+1))`
-/

namespace A226869.P3430886848286238102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A374005 (n + 1)).toNat

end

end A226869.P3430886848286238102

/-! ## A226869.P12617832162093827809

`A226870(A167499(n+3))`
-/

namespace A226869.P12617832162093827809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A167499 (n + 3)).toNat

end

end A226869.P12617832162093827809

/-! ## A226869.P9133713712202773464

`A226870(A155212(n)+13)`
-/

namespace A226869.P9133713712202773464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A155212 n + 13).toNat

end

end A226869.P9133713712202773464

/-! ## A226869.P5847763136342589537

`A226870(A056000(n)+15)`
-/

namespace A226869.P5847763136342589537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (A056000 n + 15).toNat

end

end A226869.P5847763136342589537

/-! ## A226869.P8406533572967137687

`A226870(eq[7, A066657(n)])`
-/

namespace A226869.P8406533572967137687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226869.P8406533572967137687

/-!
# A226870: T(n,k)=Number of nXk (-1,0,1) arrays of determinants of 2X2 subblocks of some (n+1)X(k+1) binary array with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A226870, there is no canonical definition to state claims against.
-/

/-! ## A226870.P2929451976168152819

`A360850(A032555(n+1))+A052283(n)`
-/

namespace A226870.P2929451976168152819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (A032555 (n + 1)).toNat + A052283 n

end

end A226870.P2929451976168152819

/-! ## A226870.P11300288115797363798

`A360850(A032557(n+1))+A052283(n)`
-/

namespace A226870.P11300288115797363798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (A032557 (n + 1)).toNat + A052283 n

end

end A226870.P11300288115797363798

/-! ## A226870.P1775039500543358299

`A360850(A032559(n+1))+A052283(n)`
-/

namespace A226870.P1775039500543358299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (A032559 (n + 1)).toNat + A052283 n

end

end A226870.P1775039500543358299

/-! ## A226870.P418138559791398819

`A360850(A032565(n+1))+A052283(n)`
-/

namespace A226870.P418138559791398819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360850 (A032565 (n + 1)).toNat + A052283 n

end

end A226870.P418138559791398819

/-! ## A226870.P14201344084165874499

`or(A227558(n+1), A297033(A326513(n)))`
-/

namespace A226870.P14201344084165874499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A227558 (n + 1)) (A297033 (A326513 n).toNat)

end

end A226870.P14201344084165874499

/-!
# A226871: Triangle read by rows: row n gives the first q divisors d(1), d(2), ..., d(q) of A225110(n) such that Sum_{i = 1..q} 1/d(i) is an integer.

The programs for A226871, there is no canonical definition to state claims against.
-/

/-! ## A226871.P13750140775308896088

`A000030(11*A026021(n))`
-/

namespace A226871.P13750140775308896088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (11 * A026021 n).toNat

end

end A226871.P13750140775308896088

/-! ## A226871.P3153927259229123375

`A000030(A000213(n+4)+8)`
-/

namespace A226871.P3153927259229123375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000213 (n + 4) + 8).toNat

end

end A226871.P3153927259229123375

/-! ## A226871.P12144474878354073611

`A000030(A374697(n+3)+10)`
-/

namespace A226871.P12144474878354073611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A374697 (n + 3) + 10).toNat

end

end A226871.P12144474878354073611

/-! ## A226871.P7933356013733444848

`A000030(A021011(round(sqrt(n²+1))))`
-/

namespace A226871.P7933356013733444848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A021011 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A226871.P7933356013733444848

/-! ## A226871.P11154330896715746165

`gcd(A000030(A021011(n)), A000142(n))`
-/

namespace A226871.P11154330896715746165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000030 (A021011 n).toNat) (A000142 n)

end

end A226871.P11154330896715746165

/-!
# A226872: 1 together with even numbers n >= 2 such that 1^n + 2^n + 3^n + ... + n^n == n/2 (mod n).

The programs for A226872, the canonical program `A226872.P10953266117754757051` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226872 has offset 1).

The definition of A226872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226872.P9361263186701316714

`eq[gcd(2, n), gcd(n, A106458(n))]`
-/

namespace A226872.P9361263186701316714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A106458 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226872.P9361263186701316714

namespace A226872

/-- `eq[gcd(2, n), gcd(n, A106458(n))]` -/
def P9361263186701316714.Spec : Prop :=
  ∀ n, (P9361263186701316714.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P8502473483449377767

`∩[A228869(n+1), A004275(n)]`
-/

namespace A226872.P8502473483449377767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226872.P8502473483449377767

namespace A226872

/-- `∩[A228869(n+1), A004275(n)]` -/
def P8502473483449377767.Spec : Prop :=
  ∀ n, (P8502473483449377767.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P5830613572857262675

`∩[A228869(n+1), A004277(n)]`
-/

namespace A226872.P5830613572857262675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226872.P5830613572857262675

namespace A226872

/-- `∩[A228869(n+1), A004277(n)]` -/
def P5830613572857262675.Spec : Prop :=
  ∀ n, (P5830613572857262675.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P12711240054751654793

`filter[A228869(n+1), A135528(#)]`
-/

namespace A226872.P12711240054751654793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A226872.P12711240054751654793

namespace A226872

/-- `filter[A228869(n+1), A135528(#)]` -/
def P12711240054751654793.Spec : Prop :=
  ∀ n, P12711240054751654793.a n = A226872 (n + 1)

end A226872

/-! ## A226872.P1939433493879996304

`filter[A228869(n+1), A266591(#)]`
-/

namespace A226872.P1939433493879996304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A226872.P1939433493879996304

namespace A226872

/-- `filter[A228869(n+1), A266591(#)]` -/
def P1939433493879996304.Spec : Prop :=
  ∀ n, P1939433493879996304.a n = A226872 (n + 1)

end A226872

/-! ## A226872.P1089332262675487547

`eq[2, gcd(A005843(n), A027642(n))]`
-/

namespace A226872.P1089332262675487547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A027642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226872.P1089332262675487547

namespace A226872

/-- `eq[2, gcd(A005843(n), A027642(n))]` -/
def P1089332262675487547.Spec : Prop :=
  ∀ n, (P1089332262675487547.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P13897104506145931504

`eq[2, gcd(A106458(n), A122656(n))]`
-/

namespace A226872.P13897104506145931504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106458 n) (A122656 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226872.P13897104506145931504

namespace A226872

/-- `eq[2, gcd(A106458(n), A122656(n))]` -/
def P13897104506145931504.Spec : Prop :=
  ∀ n, (P13897104506145931504.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P10953266117754757051

`eq[A141310(n), A225821(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A226872

/-- `eq[A141310(n), A225821(n+1)]+1` -/
def P10953266117754757051.Spec : Prop :=
  ∀ n, (P10953266117754757051.a n : ℤ) = A226872 (n + 1)

theorem P10953266117754757051.correct : P10953266117754757051.Spec := by
  intro n
  simp only [A226872, Nat.add_sub_cancel]

end A226872

/-! ## A226872.P1515529842373145798

`eq[A020639(n+1), A225821(n+1)]+1`
-/

namespace A226872.P1515529842373145798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226872.P1515529842373145798

namespace A226872

/-- `eq[A020639(n+1), A225821(n+1)]+1` -/
def P1515529842373145798.Spec : Prop :=
  ∀ n, (P1515529842373145798.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P3991340426730482762

`eq[A226957(n+1), A226957(A008486(n))]+1`
-/

namespace A226872.P3991340426730482762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226957 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226872.P3991340426730482762

namespace A226872

/-- `eq[A226957(n+1), A226957(A008486(n))]+1` -/
def P3991340426730482762.Spec : Prop :=
  ∀ n, (P3991340426730482762.a n : ℤ) = A226872 (n + 1)

end A226872

/-! ## A226872.P5159629591874920727

`eq[A187038(n), A225821(n+1)]+1`
-/

namespace A226872.P5159629591874920727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226872.P5159629591874920727

namespace A226872

/-- `eq[A187038(n), A225821(n+1)]+1` -/
def P5159629591874920727.Spec : Prop :=
  ∀ n, (P5159629591874920727.a n : ℤ) = A226872 (n + 1)

end A226872

/-!
# A226873: Number A(n,k) of n-length words w over a k-ary alphabet {a1,a2,...,ak} such that #(w,a1) >= #(w,a2) >= ... >= #(w,ak) >= 0, where #(w,x) counts the letters x in word w; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A226873, there is no canonical definition to state claims against.
-/

/-! ## A226873.P12331923013088942708

`A087051(A294250(n))%21`
-/

namespace A226873.P12331923013088942708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 (A294250 n).toNat) 21

end

end A226873.P12331923013088942708

/-! ## A226873.P11209568067151111086

`∑{d}[A214015(n), A320053(#)]`
-/

namespace A226873.P11209568067151111086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320053 d

end

end A226873.P11209568067151111086

/-! ## A226873.P4141934632117652236

`A070824(A073388(A320955(n)))`
-/

namespace A226873.P4141934632117652236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A073388 (A320955 n).toNat).toNat

end

end A226873.P4141934632117652236

/-! ## A226873.P18389868588513490275

`A307298(A267479(n))`
-/

namespace A226873.P18389868588513490275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307298 (A267479 n).toNat

end

end A226873.P18389868588513490275

/-! ## A226873.P6615026823214401229

`A333596(A242095(n))`
-/

namespace A226873.P6615026823214401229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333596 (A242095 n).toNat

end

end A226873.P6615026823214401229

/-!
# A226874: Number T(n,k) of n-length words w over a k-ary alphabet {a1, a2, ..., ak} such that #(w,a1) >= #(w,a2) >= ... >= #(w,ak) >= 1, where #(w,x) counts the letters x in word w; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A226874, there is no canonical definition to state claims against.
-/

/-! ## A226874.P919819997353316749

`A257783(n)+A175267(A022166(n))`
-/

namespace A226874.P919819997353316749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n + A175267 (A022166 n).toNat

end

end A226874.P919819997353316749

/-! ## A226874.P12211294866534864064

`A257783(n)+A083892(A157149(n))`
-/

namespace A226874.P12211294866534864064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n + A083892 (A157149 n).toNat

end

end A226874.P12211294866534864064

/-! ## A226874.P15475073490368345444

`A257783(n)+A151755(A102365(n))`
-/

namespace A226874.P15475073490368345444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n + A151755 (A102365 n).toNat

end

end A226874.P15475073490368345444

/-! ## A226874.P12749914133839603834

`A257783(n)+A125203(A157156(n))`
-/

namespace A226874.P12749914133839603834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n + A125203 (A157156 n).toNat

end

end A226874.P12749914133839603834

/-! ## A226874.P10591740208472211382

`A257783(n)+A196096(A295682(n))`
-/

namespace A226874.P10591740208472211382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257783 n + A196096 (A295682 n).toNat

end

end A226874.P10591740208472211382

/-!
# A226875: Number of n-length words w over a 5-ary alphabet {a1,a2,...,a5} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a5) >= 0, where #(w,x) counts the letters x in word w.

The programs for A226875, there is no canonical definition to state claims against.
-/

/-! ## A226875.P15280272800628520008

`A226873(A055999(n+3))`
-/

namespace A226875.P15280272800628520008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A055999 (n + 3)).toNat

end

end A226875.P15280272800628520008

/-! ## A226875.P10806390751589451690

`A226873(Δ[A023551(n+1)])`
-/

namespace A226875.P10806390751589451690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (f1 (n + 1) - f1 n).toNat

end

end A226875.P10806390751589451690

/-! ## A226875.P10332788627213239244

`A226873(Δ[A026054(n+3)])`
-/

namespace A226875.P10332788627213239244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (f1 (n + 1) - f1 n).toNat

end

end A226875.P10332788627213239244

/-! ## A226875.P5827924469982255379

`A226873(A052905(n+3)-1)`
-/

namespace A226875.P5827924469982255379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A052905 (n + 3) - 1).toNat

end

end A226875.P5827924469982255379

/-! ## A226875.P8765481183791161664

`A226873(A000217(n+6)-6)`
-/

namespace A226875.P8765481183791161664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000217 (n + 6) - 6).toNat

end

end A226875.P8765481183791161664

/-!
# A226876: Number of n-length words w over a 6-ary alphabet {a1,a2,...,a6} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a6) >= 0, where #(w,x) counts the letters x in word w.

The programs for A226876, there is no canonical definition to state claims against.
-/

/-! ## A226876.P151207987399495662

`A226873(eq[6, A025581(n)])`
-/

namespace A226876.P151207987399495662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226876.P151207987399495662

/-! ## A226876.P7805411226376263094

`A226873(A055999(n+4)-1)`
-/

namespace A226876.P7805411226376263094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A055999 (n + 4) - 1).toNat

end

end A226876.P7805411226376263094

/-! ## A226876.P7198311587927390344

`A226873(A052905(n+4)-2)`
-/

namespace A226876.P7198311587927390344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A052905 (n + 4) - 2).toNat

end

end A226876.P7198311587927390344

/-! ## A226876.P11451426464884257301

`A226873(A000217(n+7)-7)`
-/

namespace A226876.P11451426464884257301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000217 (n + 7) - 7).toNat

end

end A226876.P11451426464884257301

/-! ## A226876.P11112836812087995691

`A226873(Δ[A023551(n+2)]-1)`
-/

namespace A226876.P11112836812087995691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (f1 (n + 1) - f1 n - 1).toNat

end

end A226876.P11112836812087995691

/-! ## A226876.P17815079056823547494

`A226873(Δ[A026054(n+4)]-1)`
-/

namespace A226876.P17815079056823547494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (f1 (n + 1) - f1 n - 1).toNat

end

end A226876.P17815079056823547494

/-! ## A226876.P6109502859476538351

`A226873(n+9+Δ[A051937(n+5)])`
-/

namespace A226876.P6109502859476538351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 ((n + 9 : ℤ) + (f1 (n + 1) - f1 n)).toNat

end

end A226876.P6109502859476538351

/-! ## A226876.P17905661104409166959

`A226873(A166136(n+4)+A005843(n))`
-/

namespace A226876.P17905661104409166959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A166136 (n + 4) + A005843 n).toNat

end

end A226876.P17905661104409166959

/-! ## A226876.P17276918273191585814

`A226873(A028310(n)+A000217(n+6))`
-/

namespace A226876.P17276918273191585814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A028310 n + A000217 (n + 6)).toNat

end

end A226876.P17276918273191585814

/-! ## A226876.P11845739170536719352

`A226873(A167487(n+12)-A016969(n+12))`
-/

namespace A226876.P11845739170536719352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A167487 (n + 12) - A016969 (n + 12)).toNat

end

end A226876.P11845739170536719352

/-!
# A226877: Number of n-length words w over a 7-ary alphabet {a1,a2,...,a7} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a7) >= 0, where #(w,x) counts the letters x in word w.

The programs for A226877, there is no canonical definition to state claims against.
-/

/-! ## A226877.P3303492455273886458

`A226873(A155212(n+4))`
-/

namespace A226877.P3303492455273886458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A155212 (n + 4)).toNat

end

end A226877.P3303492455273886458

/-! ## A226877.P16232163478308316409

`A226873(eq[7, A025581(n)])`
-/

namespace A226877.P16232163478308316409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226877.P16232163478308316409

/-! ## A226877.P7395038863834638663

`A226873(A052905(n+5)-3)`
-/

namespace A226877.P7395038863834638663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A052905 (n + 5) - 3).toNat

end

end A226877.P7395038863834638663

/-! ## A226877.P17582999772607249285

`A226873(A000096(n+7)-7)`
-/

namespace A226877.P17582999772607249285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000096 (n + 7) - 7).toNat

end

end A226877.P17582999772607249285

/-! ## A226877.P13880029819667669454

`A226873(A000217(n+8)-8)`
-/

namespace A226877.P13880029819667669454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000217 (n + 8) - 8).toNat

end

end A226877.P13880029819667669454

/-! ## A226877.P11272932418166196852

`A226873(A179865(n+9)-8)`
-/

namespace A226877.P11272932418166196852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A179865 (n + 9) - 8).toNat

end

end A226877.P11272932418166196852

/-! ## A226877.P7177353681933173234

`A226873(eq[8, A004736(n+1)])`
-/

namespace A226877.P7177353681933173234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226877.P7177353681933173234

/-! ## A226877.P17935165174904677884

`A226873(2*n+A056119(n)+28)`
-/

namespace A226877.P17935165174904677884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 ((2 * n : ℤ) + (A056119 n + 28)).toNat

end

end A226877.P17935165174904677884

/-! ## A226877.P575659096832520690

`A226873(2*n+A034856(n+5)+9)`
-/

namespace A226877.P575659096832520690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 ((2 * n : ℤ) + (A034856 (n + 5) + 9)).toNat

end

end A226877.P575659096832520690

/-! ## A226877.P18397201802538022547

`A226873(A001844(n+8)%A167614(n+7))`
-/

namespace A226877.P18397201802538022547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (Int.tmod (A001844 (n + 8)) (A167614 (n + 7))).toNat

end

end A226877.P18397201802538022547

/-!
# A226878: Number of n-length words w over an 8-ary alphabet {a1,a2,...,a8} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a8) >= 0, where #(w,x) counts the letters x in word w.

The programs for A226878, there is no canonical definition to state claims against.
-/

/-! ## A226878.P15150697853471546961

`A226873(A055999(n+6)-3)`
-/

namespace A226878.P15150697853471546961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A055999 (n + 6) - 3).toNat

end

end A226878.P15150697853471546961

/-! ## A226878.P13079446891372322562

`A226873(A052905(n+6)-4)`
-/

namespace A226878.P13079446891372322562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A052905 (n + 6) - 4).toNat

end

end A226878.P13079446891372322562

/-! ## A226878.P8835738061877118797

`A226873(A000217(n+9)-9)`
-/

namespace A226878.P8835738061877118797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000217 (n + 9) - 9).toNat

end

end A226878.P8835738061877118797

/-! ## A226878.P9864981152390016853

`A226873(A167499(n+8)-14)`
-/

namespace A226878.P9864981152390016853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A167499 (n + 8) - 14).toNat

end

end A226878.P9864981152390016853

/-! ## A226878.P10830691259122525761

`A226873(Δ[A051937(A020722(n))])`
-/

namespace A226878.P10830691259122525761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (A020722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (f1 (n + 1) - f1 n).toNat

end

end A226878.P10830691259122525761

/-!
# A226879: Number of n-length words w over a 9-ary alphabet {a1,a2,...,a9} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a9) >= 0, where #(w,x) counts the letters x in word w.

The programs for A226879, there is no canonical definition to state claims against.
-/

/-! ## A226879.P2210575866785176324

`A226873(A056000(n+6))`
-/

namespace A226879.P2210575866785176324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A056000 (n + 6)).toNat

end

end A226879.P2210575866785176324

/-! ## A226879.P10513611409456796264

`A226873(eq[9, A025581(n)])`
-/

namespace A226879.P10513611409456796264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226879.P10513611409456796264

/-! ## A226879.P7755349950607802598

`A226873(A052905(n+7)-5)`
-/

namespace A226879.P7755349950607802598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A052905 (n + 7) - 5).toNat

end

end A226879.P7755349950607802598

/-! ## A226879.P9639981309572206324

`A226873(A000217(n+10)-10)`
-/

namespace A226879.P9639981309572206324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000217 (n + 10) - 10).toNat

end

end A226879.P9639981309572206324

/-! ## A226879.P657866412389446505

`A226873(eq[10, A004736(n+1)])`
-/

namespace A226879.P657866412389446505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226879.P657866412389446505

/-! ## A226879.P14666314141897886148

`A226873(A000096(n+8)+n+1)`
-/

namespace A226879.P14666314141897886148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A226879.P14666314141897886148

/-! ## A226879.P10751510282253556775

`A226873(A028387(n+11)-A167499(n+13))`
-/

namespace A226879.P10751510282253556775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A028387 (n + 11) - A167499 (n + 13)).toNat

end

end A226879.P10751510282253556775

/-! ## A226879.P3944457774139152318

`A226873(A002522(n+13)-A167499(n+14))`
-/

namespace A226879.P3944457774139152318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A002522 (n + 13) - A167499 (n + 14)).toNat

end

end A226879.P3944457774139152318

/-!
# A226880: Number of n-length words w over a 10-ary alphabet {a1,a2,...,a10} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a10) >= 0, where #(w,x) counts the letters x in word w.

The programs for A226880, there is no canonical definition to state claims against.
-/

/-! ## A226880.P14536957945155248034

`A226873(A055999(n+8)-5)`
-/

namespace A226880.P14536957945155248034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A055999 (n + 8) - 5).toNat

end

end A226880.P14536957945155248034

/-! ## A226880.P6958271855420233928

`A226873(A000217(n+11)-11)`
-/

namespace A226880.P6958271855420233928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000217 (n + 11) - 11).toNat

end

end A226880.P6958271855420233928

/-! ## A226880.P3714668625186449062

`A226873(A167614(n+10)-14)`
-/

namespace A226880.P3714668625186449062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A167614 (n + 10) - 14).toNat

end

end A226880.P3714668625186449062

/-! ## A226880.P14882224761752742723

`A226873(A000096(n+9)+n+1)`
-/

namespace A226880.P14882224761752742723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A226880.P14882224761752742723

/-! ## A226880.P6056165306356510832

`A226873(A167499(n+7)+A016789(n+4))`
-/

namespace A226880.P6056165306356510832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A167499 (n + 7) + A016789 (n + 4)).toNat

end

end A226880.P6056165306356510832

/-!
# A226881: Number of n-length binary words w with #(w,0) >= #(w,1) >= 1, where #(w,x) gives the number of digits x in w.

The programs for A226881, the canonical program `A226881.P11275722064909766115` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226881 has offset 0).

The definition of A226881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226881.P11275722064909766115

`A027306(n)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226881

/-- `A027306(n)-1` -/
def P11275722064909766115.Spec : Prop :=
  ∀ n, P11275722064909766115.a n = A226881 n

theorem P11275722064909766115.correct : P11275722064909766115.Spec := by
  intro n
  simp only [A226881]

end A226881

/-! ## A226881.P1094100133390135683

`A294175(n)+A014495(n)`
-/

namespace A226881.P1094100133390135683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A014495 n

end

end A226881.P1094100133390135683

namespace A226881

/-- `A294175(n)+A014495(n)` -/
def P1094100133390135683.Spec : Prop :=
  ∀ n, P1094100133390135683.a n = A226881 n

theorem P1094100133390135683.correct : P1094100133390135683.Spec := by
  intro n
  simp only [A226881, Nat.add_sub_cancel, A226881.P1094100133390135683.a, A226881.P11275722064909766115.a, A014495, A014495.P8648755420632744383.a, A027306, A027306.P2966041652703629727.a, A294175, A294175.P1326977934770168492.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226881

/-! ## A226881.P14780578173090389750

`A058622(n)+A126869(n)-1`
-/

namespace A226881.P14780578173090389750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 n + (A126869 n - 1)

end

end A226881.P14780578173090389750

namespace A226881

/-- `A058622(n)+A126869(n)-1` -/
def P14780578173090389750.Spec : Prop :=
  ∀ n, P14780578173090389750.a n = A226881 n

theorem P14780578173090389750.correct : P14780578173090389750.Spec := by
  intro n
  simp only [A226881, Nat.add_sub_cancel, A226881.P14780578173090389750.a, A226881.P11275722064909766115.a, A027306, A027306.P2966041652703629727.a, A058622, A058622.P7570831990351998700.a, A126869, A126869.P7982398467358120385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226881

/-! ## A226881.P9331146361066397453

`A001405(n)+A294175(n)-1`
-/

namespace A226881.P9331146361066397453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A294175 n - 1)

end

end A226881.P9331146361066397453

namespace A226881

/-- `A001405(n)+A294175(n)-1` -/
def P9331146361066397453.Spec : Prop :=
  ∀ n, P9331146361066397453.a n = A226881 n

theorem P9331146361066397453.correct : P9331146361066397453.Spec := by
  intro n
  simp only [A226881, Nat.add_sub_cancel, A226881.P9331146361066397453.a, A226881.P11275722064909766115.a, A001405, A001405.P5205018418992951678.a, A027306, A027306.P2966041652703629727.a, A294175, A294175.P1326977934770168492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226881

/-! ## A226881.P17382093440318873202

`A280193(2*n+1)+A027306(n)`
-/

namespace A226881.P17382093440318873202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A027306 n

end

end A226881.P17382093440318873202

namespace A226881

/-- `A280193(2*n+1)+A027306(n)` -/
def P17382093440318873202.Spec : Prop :=
  ∀ n, P17382093440318873202.a n = A226881 n

end A226881

/-! ## A226881.P8397366167704551566

`A054354(A054353(2*(n+2)))+A027306(n)`
-/

namespace A226881.P8397366167704551566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (2 * (n + 2))).toNat + A027306 n

end

end A226881.P8397366167704551566

namespace A226881

/-- `A054354(A054353(2*(n+2)))+A027306(n)` -/
def P8397366167704551566.Spec : Prop :=
  ∀ n, P8397366167704551566.a n = A226881 n

end A226881

/-! ## A226881.P15541184254167522697

`Δ[A191313(abs(1-n))]`
-/

namespace A226881.P15541184254167522697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191313 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226881.P15541184254167522697

namespace A226881

/-- `Δ[A191313(abs(1-n))]` -/
def P15541184254167522697.Spec : Prop :=
  ∀ n, P15541184254167522697.a n = A226881 n

end A226881

/-! ## A226881.P6071518681086403181

`floor((A081672(n)-1)/2)`
-/

namespace A226881.P6071518681086403181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081672 n - 1 : ℚ) / 2⌋

end

end A226881.P6071518681086403181

namespace A226881

/-- `floor((A081672(n)-1)/2)` -/
def P6071518681086403181.Spec : Prop :=
  ∀ n, P6071518681086403181.a n = A226881 n

end A226881

/-! ## A226881.P6580906232703583170

`A000225(n)-A058622(n)`
-/

namespace A226881.P6580906232703583170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A058622 n

end

end A226881.P6580906232703583170

namespace A226881

/-- `A000225(n)-A058622(n)` -/
def P6580906232703583170.Spec : Prop :=
  ∀ n, P6580906232703583170.a n = A226881 n

end A226881

/-! ## A226881.P8415592133819125939

`A000079(n)-(A058622(n)+1)`
-/

namespace A226881.P8415592133819125939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A058622 n + 1)

end

end A226881.P8415592133819125939

namespace A226881

/-- `A000079(n)-(A058622(n)+1)` -/
def P8415592133819125939.Spec : Prop :=
  ∀ n, P8415592133819125939.a n = A226881 n

end A226881

/-! ## A226881.P13741996026799901060

`A000295(n)+n-A058622(n)`
-/

namespace A226881.P13741996026799901060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + ((n : ℤ) - A058622 n)

end

end A226881.P13741996026799901060

namespace A226881

/-- `A000295(n)+n-A058622(n)` -/
def P13741996026799901060.Spec : Prop :=
  ∀ n, P13741996026799901060.a n = A226881 n

end A226881

/-! ## A226881.P10647671914472971099

`A081672(n)/A036453(n+1)-1`
-/

namespace A226881.P10647671914472971099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081672 n : ℚ) / (A036453 (n + 1) : ℚ) - 1

end

end A226881.P10647671914472971099

namespace A226881

/-- `A081672(n)/A036453(n+1)-1` -/
def P10647671914472971099.Spec : Prop :=
  ∀ n, P10647671914472971099.a n = (A226881 n : ℚ)

end A226881

/-! ## A226881.P2613704187855495614

`A117186(n)-(A045621(n)+1)`
-/

namespace A226881.P2613704187855495614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 n - (A045621 n + 1)

end

end A226881.P2613704187855495614

namespace A226881

/-- `A117186(n)-(A045621(n)+1)` -/
def P2613704187855495614.Spec : Prop :=
  ∀ n, P2613704187855495614.a n = A226881 n

end A226881

/-! ## A226881.P1823392156364667284

`A283507(n)%A164991(n+1)`
-/

namespace A226881.P1823392156364667284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283507 n) (A164991 (n + 1))

end

end A226881.P1823392156364667284

namespace A226881

/-- `A283507(n)%A164991(n+1)` -/
def P1823392156364667284.Spec : Prop :=
  ∀ n, P1823392156364667284.a n = A226881 n

end A226881

/-! ## A226881.P17373169073750992329

`A290074(n)%A164991(n+1)`
-/

namespace A226881.P17373169073750992329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290074 n) (A164991 (n + 1))

end

end A226881.P17373169073750992329

namespace A226881

/-- `A290074(n)%A164991(n+1)` -/
def P17373169073750992329.Spec : Prop :=
  ∀ n, P17373169073750992329.a n = A226881 n

end A226881

/-! ## A226881.P12804294497960694127

`A323988(n)-(A100071(n)+1)`
-/

namespace A226881.P12804294497960694127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - (A100071 n + 1)

end

end A226881.P12804294497960694127

namespace A226881

/-- `A323988(n)-(A100071(n)+1)` -/
def P12804294497960694127.Spec : Prop :=
  ∀ n, P12804294497960694127.a n = A226881 n

end A226881

/-! ## A226881.P18443722542938808783

`A185252(n+1)/(n+1)-1`
-/

namespace A226881.P18443722542938808783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185252 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A226881.P18443722542938808783

namespace A226881

/-- `A185252(n+1)/(n+1)-1` -/
def P18443722542938808783.Spec : Prop :=
  ∀ n, P18443722542938808783.a n = (A226881 n : ℚ)

end A226881

/-! ## A226881.P6659299102738198241

`A182555(n)-(A153335(n+1)+1)`
-/

namespace A226881.P6659299102738198241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n - (A153335 (n + 1) + 1)

end

end A226881.P6659299102738198241

namespace A226881

/-- `A182555(n)-(A153335(n+1)+1)` -/
def P6659299102738198241.Spec : Prop :=
  ∀ n, P6659299102738198241.a n = A226881 n

theorem P6659299102738198241.correct : P6659299102738198241.Spec := by
  intro n
  simp only [A226881, Nat.add_sub_cancel, A226881.P6659299102738198241.a, A226881.P11275722064909766115.a, A027306, A027306.P2966041652703629727.a, A153335, A153335.P14857227922523687050.a, A182555, A182555.P4612867072512672630.a, A001792, A001792.P8277491211121309808.a, A100071, A100071.P108043524234924627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226881

/-! ## A226881.P14345787107853517111

`A153334(n+1)-(A206603(n)+1)`
-/

namespace A226881.P14345787107853517111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (n + 1) - (A206603 n + 1)

end

end A226881.P14345787107853517111

namespace A226881

/-- `A153334(n+1)-(A206603(n)+1)` -/
def P14345787107853517111.Spec : Prop :=
  ∀ n, P14345787107853517111.a n = A226881 n

end A226881

/-!
# A226882: Number of n-length words w over ternary alphabet {a,b,c} such that #(w,a) >= #(w,b) >= #(w,c) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226882, there is no canonical definition to state claims against.
-/

/-! ## A226882.P3173183078926432730

`A092255(n+3)-A027306(n+3)`
-/

namespace A226882.P3173183078926432730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092255 (n + 3) - A027306 (n + 3)

end

end A226882.P3173183078926432730

/-! ## A226882.P9748016785378255300

`A226874(A167614(n+2))`
-/

namespace A226882.P9748016785378255300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A167614 (n + 2)).toNat

end

end A226882.P9748016785378255300

/-! ## A226882.P5518066324328674345

`A226874(A052905(n)+8)`
-/

namespace A226882.P5518066324328674345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A052905 n + 8).toNat

end

end A226882.P5518066324328674345

/-! ## A226882.P16214034927676720803

`A226874(eq[3, A002262(n)])`
-/

namespace A226882.P16214034927676720803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226882.P16214034927676720803

/-! ## A226882.P16670053717506477711

`A226874(eq[8, A059268(n)])`
-/

namespace A226882.P16670053717506477711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226882.P16670053717506477711

/-! ## A226882.P5850574963688661404

`A226874(A166136(n+2)-3)`
-/

namespace A226882.P5850574963688661404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A166136 (n + 2) - 3).toNat

end

end A226882.P5850574963688661404

/-! ## A226882.P16205208124202260481

`A226874(A249725(8*n+12))`
-/

namespace A226882.P16205208124202260481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A249725 (8 * n + 12)).toNat

end

end A226882.P16205208124202260481

/-! ## A226882.P12289445999450071080

`A226874(eq[1, A144328(n+1)-2])`
-/

namespace A226882.P12289445999450071080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226882.P12289445999450071080

/-! ## A226882.P2844875622738953841

`A226874(eq[2, A002260(n+1)-2])`
-/

namespace A226882.P2844875622738953841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226882.P2844875622738953841

/-! ## A226882.P6743788684931137550

`A226874(eq[2, A134868(n+1)-2])`
-/

namespace A226882.P6743788684931137550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226882.P6743788684931137550

/-!
# A226883: Number of n-length words w over a 4-ary alphabet {a1,a2,...,a4} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a4) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226883, there is no canonical definition to state claims against.
-/

/-! ## A226883.P3640128892612177067

`A092429(n+4)-A092255(n+4)`
-/

namespace A226883.P3640128892612177067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092429 (n + 4) - A092255 (n + 4)

end

end A226883.P3640128892612177067

/-! ## A226883.P15772084355481148781

`A226874(A056000(n)+14)`
-/

namespace A226883.P15772084355481148781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A056000 n + 14).toNat

end

end A226883.P15772084355481148781

/-! ## A226883.P9493633099624738178

`A226874(eq[4, A002262(n)])`
-/

namespace A226883.P9493633099624738178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226883.P9493633099624738178

/-! ## A226883.P2746212714845728738

`A226874(A133263(n+4)+2)`
-/

namespace A226883.P2746212714845728738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A133263 (n + 4) + 2).toNat

end

end A226883.P2746212714845728738

/-! ## A226883.P4124454587208922078

`A226874(A000217(n+4)+4)`
-/

namespace A226883.P4124454587208922078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A000217 (n + 4) + 4).toNat

end

end A226883.P4124454587208922078

/-! ## A226883.P6183319537225103984

`A226874(Δ[A005581(n+4)]-n)`
-/

namespace A226883.P6183319537225103984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A226883.P6183319537225103984

/-! ## A226883.P1895685503504832833

`A226874(eq[2, A144328(n+1)-2])`
-/

namespace A226883.P1895685503504832833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226883.P1895685503504832833

/-! ## A226883.P17838909731428168353

`A226874(eq[2, A144328(n+1)/2])`
-/

namespace A226883.P17838909731428168353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A226883.P17838909731428168353

/-! ## A226883.P14948260509286532765

`A226874(A055998(n+1)+n+11)`
-/

namespace A226883.P14948260509286532765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A055998 (n + 1) + (n + 11 : ℤ)).toNat

end

end A226883.P14948260509286532765

/-!
# A226884: Number of n-length words w over a 5-ary alphabet {a1,a2,...,a5} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a5) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226884, there is no canonical definition to state claims against.
-/

/-! ## A226884.P9929362970243118099

`A226874(A167499(n+4))`
-/

namespace A226884.P9929362970243118099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A167499 (n + 4)).toNat

end

end A226884.P9929362970243118099

/-! ## A226884.P15498009142164288235

`A226874(A133263(n+5)+3)`
-/

namespace A226884.P15498009142164288235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A133263 (n + 5) + 3).toNat

end

end A226884.P15498009142164288235

/-! ## A226884.P16139345616775828395

`A226874(A000124(n+5)+4)`
-/

namespace A226884.P16139345616775828395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A000124 (n + 5) + 4).toNat

end

end A226884.P16139345616775828395

/-! ## A226884.P16094044228673931183

`A226874(A000217(n+5)+5)`
-/

namespace A226884.P16094044228673931183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A000217 (n + 5) + 5).toNat

end

end A226884.P16094044228673931183

/-! ## A226884.P5882793854847709221

`A226874(Δ[A005581(n+5)]-n)`
-/

namespace A226884.P5882793854847709221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A226884.P5882793854847709221

/-!
# A226885: Number of n-length words w over a 6-ary alphabet {a1,a2,...,a6} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a6) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226885, there is no canonical definition to state claims against.
-/

/-! ## A226885.P11382921447561430921

`A226874(eq[6, A002262(n)])`
-/

namespace A226885.P11382921447561430921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226885.P11382921447561430921

/-! ## A226885.P7923414827584990466

`A226874(eq[64, A059268(n)])`
-/

namespace A226885.P7923414827584990466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226885.P7923414827584990466

/-! ## A226885.P18064298625075423120

`A226874(eq[6, A144328(n+1)])`
-/

namespace A226885.P18064298625075423120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226885.P18064298625075423120

/-! ## A226885.P2243594191976734324

`A226874(eq[7, A002260(n+1)])`
-/

namespace A226885.P2243594191976734324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226885.P2243594191976734324

/-! ## A226885.P1447718512384871329

`A226874(eq[13, A158405(n+1)])`
-/

namespace A226885.P1447718512384871329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226885.P1447718512384871329

/-!
# A226886: Number of n-length words w over a 7-ary alphabet {a1,a2,...,a7} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a7) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226886, there is no canonical definition to state claims against.
-/

/-! ## A226886.P7746972565048835681

`A226874(eq[7, A002262(n)])`
-/

namespace A226886.P7746972565048835681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226886.P7746972565048835681

/-! ## A226886.P16430539182167139193

`A226874(eq[7, A130270(n+1)])`
-/

namespace A226886.P16430539182167139193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226886.P16430539182167139193

/-! ## A226886.P13762889312610915450

`A226874(eq[7, A144328(n+1)])`
-/

namespace A226886.P13762889312610915450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226886.P13762889312610915450

/-! ## A226886.P12277012681204852744

`A226874(eq[8, A002260(n+1)])`
-/

namespace A226886.P12277012681204852744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226886.P12277012681204852744

/-! ## A226886.P8804777125890986849

`A226874(eq[15, A158405(n+1)])`
-/

namespace A226886.P8804777125890986849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226886.P8804777125890986849

/-!
# A226887: Number of n-length words w over an 8-ary alphabet {a1,a2,...,a8} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a8) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226887, there is no canonical definition to state claims against.
-/

/-! ## A226887.P13726106757454935505

`A226874(eq[8, A002262(n)])`
-/

namespace A226887.P13726106757454935505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226887.P13726106757454935505

/-! ## A226887.P7827829247213042048

`A226874(eq[8, A144328(n+1)])`
-/

namespace A226887.P7827829247213042048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226887.P7827829247213042048

/-! ## A226887.P1798786292843861771

`A226874(eq[9, A002260(n+1)])`
-/

namespace A226887.P1798786292843861771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226887.P1798786292843861771

/-! ## A226887.P418374947103016774

`A226874(eq[9, A134868(n+1)])`
-/

namespace A226887.P418374947103016774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226887.P418374947103016774

/-! ## A226887.P5748189250118344314

`A226874(eq[9, A135223(n+1)])`
-/

namespace A226887.P5748189250118344314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226887.P5748189250118344314

/-!
# A226888: Number of n-length words w over a 9-ary alphabet {a1,a2,...,a9} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a9) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226888, there is no canonical definition to state claims against.
-/

/-! ## A226888.P18153379090588881954

`A226874(eq[9, A002262(n)])`
-/

namespace A226888.P18153379090588881954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226888.P18153379090588881954

/-! ## A226888.P40764590578229141

`A226874(eq[9, A130270(n+1)])`
-/

namespace A226888.P40764590578229141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226888.P40764590578229141

/-! ## A226888.P1556023797641672612

`A226874(eq[9, A144328(n+1)])`
-/

namespace A226888.P1556023797641672612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226888.P1556023797641672612

/-! ## A226888.P14050737821370590573

`A226874(eq[10, A002260(n+1)])`
-/

namespace A226888.P14050737821370590573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226888.P14050737821370590573

/-! ## A226888.P6403433400232777388

`A226874(eq[10, A134868(n+1)])`
-/

namespace A226888.P6403433400232777388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226888.P6403433400232777388

/-!
# A226889: Number of n-length words w over a 10-ary alphabet {a1,a2,...,a10} such that #(w,a1) >= #(w,a2) >= ... >= #(w,a10) >= 1, where #(w,x) counts the letters x in word w.

The programs for A226889, there is no canonical definition to state claims against.
-/

/-! ## A226889.P14382166759829463332

`A226874(eq[10, A002262(n)])`
-/

namespace A226889.P14382166759829463332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226889.P14382166759829463332

/-! ## A226889.P5236781677854727004

`A226874(eq[10, A144328(n+1)])`
-/

namespace A226889.P5236781677854727004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226889.P5236781677854727004

/-! ## A226889.P12310521869064895282

`A226874(eq[11, A002260(n+1)])`
-/

namespace A226889.P12310521869064895282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226889.P12310521869064895282

/-! ## A226889.P17153210728000759321

`A226874(eq[11, A134868(n+1)])`
-/

namespace A226889.P17153210728000759321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226889.P17153210728000759321

/-! ## A226889.P14074138358637316787

`A226874(eq[21, A158405(n+1)])`
-/

namespace A226889.P14074138358637316787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226889.P14074138358637316787

/-!
# A226890: E.g.f.: exp( Sum_{n>=1} sigma(n,n) * x^(n^2) / n^n ).

The programs for A226890, there is no canonical definition to state claims against.
-/

/-! ## A226890.P199184660145142701

`A008612(12*15*C(n, 4))`
-/

namespace A226890.P199184660145142701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (12 * (15 * Nat.choose n 4))

end

end A226890.P199184660145142701

/-! ## A226890.P14708005752269322144

`A097992(12*15*C(n, 4))`
-/

namespace A226890.P14708005752269322144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (12 * (15 * Nat.choose n 4))

end

end A226890.P14708005752269322144

/-! ## A226890.P11233706351728718782

`Δ[A060819(2*6*10*C(n, 5)+4)]+1`
-/

namespace A226890.P11233706351728718782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * (6 * (10 * Nat.choose n 5)) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A226890.P11233706351728718782

/-! ## A226890.P9140243244437796135

`Δ[A003602(xor(2, 2*6*10*C(n, 5)))]+1`
-/

namespace A226890.P9140243244437796135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Nat.xor 2 (2 * (6 * (10 * Nat.choose n 5))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A226890.P9140243244437796135

/-!
# A226891: Least k such that k(k+1)(k+2)(k+3) is divisible by prime(n)#.

The programs for A226891, there is no canonical definition to state claims against.
-/

/-! ## A226891.P7821562901802006020

`A379142(A317973(n+1))`
-/

namespace A226891.P7821562901802006020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379142 (A317973 (n + 1)).toNat

end

end A226891.P7821562901802006020

/-! ## A226891.P1097751054632484932

`A296772(A117781(n+1))+C(n², 2)/2`
-/

namespace A226891.P1097751054632484932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296772 (A117781 (n + 1)).toNat : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 2

end

end A226891.P1097751054632484932

/-!
# A226892: Number of squares of size n^2 in all tilings of an (n+2) X (n+2) square using integer-sided square tiles.

The programs for A226892, there is no canonical definition to state claims against.
-/

/-! ## A226892.P4814396837364541117

`A226936(A034856(n+1))-A000007(n)`
-/

namespace A226892.P4814396837364541117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226936 (A034856 (n + 1)).toNat - A000007 n

end

end A226892.P4814396837364541117

/-! ## A226892.P2967856244250201270

`A226936(A034856(n+1))-A151933(n)`
-/

namespace A226892.P2967856244250201270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226936 (A034856 (n + 1)).toNat - A151933 n

end

end A226892.P2967856244250201270

/-! ## A226892.P196810719953270449

`A226936(A034856(n+1))%A028210(n)`
-/

namespace A226892.P196810719953270449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226936 (A034856 (n + 1)).toNat) (A028210 n)

end

end A226892.P196810719953270449

/-! ## A226892.P16436979399158712032

`and(A057428(n), A226936(A034856(n+1)))`
-/

namespace A226892.P16436979399158712032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A226936 (A034856 (n + 1)).toNat)

end

end A226892.P16436979399158712032

/-! ## A226892.P13775376405067380603

`and(1, A000040(n+1))*A226936(A034856(n+1))`
-/

namespace A226892.P13775376405067380603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A226936 (A034856 (n + 1)).toNat

end

end A226892.P13775376405067380603

/-!
# A226893: Number of binary Lyndon words of length n having a conjugate at Hamming distance 2.

The programs for A226893, there is no canonical definition to state claims against.
-/

/-! ## A226893.P8256924617807645620

`A179674(n+1)/(n+1)`
-/

namespace A226893.P8256924617807645620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179674 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A226893.P8256924617807645620

/-! ## A226893.P1897564418041846279

`eq[A108466(n+1), A361639(n+2)]`
-/

namespace A226893.P1897564418041846279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226893.P1897564418041846279

/-! ## A226893.P18259996848345284503

`eq[A336571(n+1), A361639(n+2)]`
-/

namespace A226893.P18259996848345284503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226893.P18259996848345284503

/-! ## A226893.P1218141581664615157

`eq[A349059(n+1), A361639(n+2)]`
-/

namespace A226893.P1218141581664615157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226893.P1218141581664615157

/-! ## A226893.P12011040533827972040

`eq[A361639(n+2), A383311(n+1)]`
-/

namespace A226893.P12011040533827972040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226893.P12011040533827972040

/-!
# A226894: Position of n-th harmonic number H(n) in the joint ranking of {H(k)} and {log k}, for k >= 1; complement of A226896.

The programs for A226894, the canonical program `A226894.P7504913734433053599` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226894 has offset 1).

The definition of A226894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226894.P12566275988803506414

`ceil(∏[root(e, n+1)])+n`
-/

namespace A226894.P12566275988803506414
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉ + (n : ℤ)

end

end A226894.P12566275988803506414

namespace A226894

/-- `ceil(∏[root(e, n+1)])+n` -/
def P12566275988803506414.Spec : Prop :=
  ∀ n, P12566275988803506414.a n = A226894 (n + 1)

end A226894

/-! ## A226894.P13746052032599744340

`floor(A000027(n+1)+∏[root(e, n+1)])`
-/

namespace A226894.P13746052032599744340
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) + ∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A226894.P13746052032599744340

namespace A226894

/-- `floor(A000027(n+1)+∏[root(e, n+1)])` -/
def P13746052032599744340.Spec : Prop :=
  ∀ n, P13746052032599744340.a n = A226894 (n + 1)

end A226894

/-! ## A226894.P18254213948079454891

`floor(∏[root(e, n+1)]-A001478(n+1))`
-/

namespace A226894.P18254213948079454891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j - (A001478 (n + 1) : ℝ)⌋

end

end A226894.P18254213948079454891

namespace A226894

/-- `floor(∏[root(e, n+1)]-A001478(n+1))` -/
def P18254213948079454891.Spec : Prop :=
  ∀ n, P18254213948079454891.a n = A226894 (n + 1)

end A226894

/-! ## A226894.P7504913734433053599

`A000027(A215001(n+1)+n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A226894

/-- `A000027(A215001(n+1)+n)` -/
def P7504913734433053599.Spec : Prop :=
  ∀ n, P7504913734433053599.a n = A226894 (n + 1)

theorem P7504913734433053599.correct : P7504913734433053599.Spec := by
  intro n
  simp only [A226894, Nat.add_sub_cancel]

end A226894

/-! ## A226894.P15450359004584381790

`A020725(A215000(n+1)+n)`
-/

namespace A226894.P15450359004584381790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A215000 (n + 1) + (n : ℤ)).toNat

end

end A226894.P15450359004584381790

namespace A226894

/-- `A020725(A215000(n+1)+n)` -/
def P15450359004584381790.Spec : Prop :=
  ∀ n, P15450359004584381790.a n = A226894 (n + 1)

end A226894

/-! ## A226894.P11706952070390443325

`A000027(A215000(n+1)+n+1)`
-/

namespace A226894.P11706952070390443325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A215000 (n + 1) + (n + 1 : ℤ)).toNat

end

end A226894.P11706952070390443325

namespace A226894

/-- `A000027(A215000(n+1)+n+1)` -/
def P11706952070390443325.Spec : Prop :=
  ∀ n, P11706952070390443325.a n = A226894 (n + 1)

theorem P11706952070390443325.correct : P11706952070390443325.Spec := by
  intro n
  simp only [A226894, Nat.add_sub_cancel, A226894.P11706952070390443325.a, A226894.P7504913734433053599.a, A000027, A000027.P10331202704469894836.a, A215000, A215000.P7439510561353719127.f1, A215000.P7439510561353719127.a, A215001, A215001.P14554116704608614748.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226894

/-! ## A226894.P16193242552254487978

`∑[A226895(n-n²%(n+1)+1)]`
-/

namespace A226894.P16193242552254487978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 ((n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226894.P16193242552254487978

namespace A226894

/-- `∑[A226895(n-n²%(n+1)+1)]` -/
def P16193242552254487978.Spec : Prop :=
  ∀ n, P16193242552254487978.a n = A226894 (n + 1)

end A226894

/-! ## A226894.P9128184568685811690

`∑[A226895(A138153(n+1))]`
-/

namespace A226894.P9128184568685811690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226895 (A138153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226894.P9128184568685811690

namespace A226894

/-- `∑[A226895(A138153(n+1))]` -/
def P9128184568685811690.Spec : Prop :=
  ∀ n, P9128184568685811690.a n = A226894 (n + 1)

end A226894

/-!
# A226895: Difference sequence for A226894.

The programs for A226895, the canonical program `A226895.P9533121574335622783` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226895 has offset 1).

The definition of A226895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226895.P10065938230032678390

`Δ[floor(∏[root(e, n+1)])]+1`
-/

namespace A226895.P10065938230032678390
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A226895.P10065938230032678390

namespace A226895

/-- `Δ[floor(∏[root(e, n+1)])]+1` -/
def P10065938230032678390.Spec : Prop :=
  ∀ n, P10065938230032678390.a n = A226895 (n + 1)

end A226895

/-! ## A226895.P9533121574335622783

`Δ[A226894(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226895

/-- `Δ[A226894(n+1)]` -/
def P9533121574335622783.Spec : Prop :=
  ∀ n, P9533121574335622783.a n = A226895 (n + 1)

theorem P9533121574335622783.correct : P9533121574335622783.Spec := by
  intro n
  simp only [A226895, Nat.add_sub_cancel]

end A226895

/-! ## A226895.P12090999691822206143

`Δ[A215000(n+1)+n]`
-/

namespace A226895.P12090999691822206143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226895.P12090999691822206143

namespace A226895

/-- `Δ[A215000(n+1)+n]` -/
def P12090999691822206143.Spec : Prop :=
  ∀ n, P12090999691822206143.a n = A226895 (n + 1)

end A226895

/-! ## A226895.P7865713342337773623

`Δ[A215001(n+1)+n]`
-/

namespace A226895.P7865713342337773623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215001 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226895.P7865713342337773623

namespace A226895

/-- `Δ[A215001(n+1)+n]` -/
def P7865713342337773623.Spec : Prop :=
  ∀ n, P7865713342337773623.a n = A226895 (n + 1)

end A226895

/-! ## A226895.P13079557144264095713

`A000040(Δ[floor(∏[root(e, n+1)])])`
-/

namespace A226895.P13079557144264095713
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (1 / (n + 1 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A226895.P13079557144264095713

namespace A226895

/-- `A000040(Δ[floor(∏[root(e, n+1)])])` -/
def P13079557144264095713.Spec : Prop :=
  ∀ n, P13079557144264095713.a n = A226895 (n + 1)

end A226895

/-!
# A226896: Position of log n in the joint ranking of harmonic numbers H(k) and {log k}, for k >= 1; complement of A226894.

The programs for A226896, the canonical program `A226896.P7215955466078964282` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226896 has offset 1).

The definition of A226896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226896.P18408902335159357753

`round((n+1)/exp(γ))+n`
-/

namespace A226896.P18408902335159357753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.exp Real.eulerMascheroniConstant) + (n : ℤ)

end

end A226896.P18408902335159357753

namespace A226896

/-- `round((n+1)/exp(γ))+n` -/
def P18408902335159357753.Spec : Prop :=
  ∀ n, P18408902335159357753.a n = A226896 (n + 1)

end A226896

/-! ## A226896.P4771031811545985421

`∑[char[A215000(n+1)]+1]`
-/

namespace A226896.P4771031811545985421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215000 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226896.P4771031811545985421

namespace A226896

/-- `∑[char[A215000(n+1)]+1]` -/
def P4771031811545985421.Spec : Prop :=
  ∀ n, (P4771031811545985421.a n : ℤ) = A226896 (n + 1)

end A226896

/-! ## A226896.P7215955466078964282

`A000027(A226190(n+1)+n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226896

/-- `A000027(A226190(n+1)+n)` -/
def P7215955466078964282.Spec : Prop :=
  ∀ n, P7215955466078964282.a n = A226896 (n + 1)

theorem P7215955466078964282.correct : P7215955466078964282.Spec := by
  intro n
  simp only [A226896, Nat.add_sub_cancel]

end A226896

/-! ## A226896.P10327665908009300713

`A028310(A226190(n+1)+n)`
-/

namespace A226896.P10327665908009300713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A226190 (n + 1) + (n : ℤ)).toNat

end

end A226896.P10327665908009300713

namespace A226896

/-- `A028310(A226190(n+1)+n)` -/
def P10327665908009300713.Spec : Prop :=
  ∀ n, P10327665908009300713.a n = A226896 (n + 1)

end A226896

/-! ## A226896.P11110189977408264189

`A023443(A226190(n+1)+n+1)`
-/

namespace A226896.P11110189977408264189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226190 (n + 1) + (n + 1 : ℤ)).toNat

end

end A226896.P11110189977408264189

namespace A226896

/-- `A023443(A226190(n+1)+n+1)` -/
def P11110189977408264189.Spec : Prop :=
  ∀ n, P11110189977408264189.a n = A226896 (n + 1)

end A226896

/-! ## A226896.P12040529174851892106

`A117358(8*(A226190(n+1)+n))`
-/

namespace A226896.P12040529174851892106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (8 * (A226190 (n + 1) + (n : ℤ))).toNat

end

end A226896.P12040529174851892106

namespace A226896

/-- `A117358(8*(A226190(n+1)+n))` -/
def P12040529174851892106.Spec : Prop :=
  ∀ n, P12040529174851892106.a n = A226896 (n + 1)

end A226896

/-! ## A226896.P11482061951759766937

`or(A226190(n+1)+n, A000007(n))`
-/

namespace A226896.P11482061951759766937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A226190 (n + 1) + (n : ℤ)) (A000007 n)

end

end A226896.P11482061951759766937

namespace A226896

/-- `or(A226190(n+1)+n, A000007(n))` -/
def P11482061951759766937.Spec : Prop :=
  ∀ n, P11482061951759766937.a n = A226896 (n + 1)

end A226896

/-! ## A226896.P8414811550925000845

`(A226190(n+1)+n)%p?[A005187(n)]`
-/

namespace A226896.P8414811550925000845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226190 (n + 1) + (n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A226896.P8414811550925000845

namespace A226896

/-- `(A226190(n+1)+n)%p?[A005187(n)]` -/
def P8414811550925000845.Spec : Prop :=
  ∀ n, P8414811550925000845.a n = A226896 (n + 1)

end A226896

/-! ## A226896.P943500071051239121

`A003056(A286355(∑[A063199(n+1)]))`
-/

namespace A226896.P943500071051239121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A286355 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A226896.P943500071051239121

namespace A226896

/-- `A003056(A286355(∑[A063199(n+1)]))` -/
def P943500071051239121.Spec : Prop :=
  ∀ n, P943500071051239121.a n = A226896 (n + 1)

end A226896

/-!
# A226897: a(n) is the total number of parts in the set of partitions of an n X n square lattice into squares, considering only the list of parts.

The programs for A226897, there is no canonical definition to state claims against.
-/

/-! ## A226897.P18172144698690573735

`A225622(∑[4*n]+1)`
-/

namespace A226897.P18172144698690573735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225622 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226897.P18172144698690573735

/-! ## A226897.P13624031673979318197

`and(-1, A225622(A001844(n)))`
-/

namespace A226897.P13624031673979318197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A225622 (A001844 n).toNat)

end

end A226897.P13624031673979318197

/-! ## A226897.P1640071852975195056

`record[A225622(A330613(n+1))]`
-/

namespace A226897.P1640071852975195056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225622 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226897.P1640071852975195056

/-! ## A226897.P10839751692377225973

`record[A225622(n+1)/A123199(2*n+1)]`
-/

namespace A226897.P10839751692377225973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225622 (n + 1) : ℚ) / (A123199 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226897.P10839751692377225973

/-! ## A226897.P2923164615654413519

`A225622(n²+(n+1)²)+A007814(2*n+3)`
-/

namespace A226897.P2923164615654413519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225622 (n ^ 2 + (n + 1) ^ 2) + A007814 (2 * n + 3)

end

end A226897.P2923164615654413519

/-!
# A226898: Hooley's Delta function: maximum number of divisors of n in [u, e*u] for all u. (Here e is Euler's number 2.718... = A001113.)

The programs for A226898, there is no canonical definition to state claims against.
-/

/-! ## A226898.P15708399343662949711

`A028310(Δ[A226901(A028310(n))])`
-/

namespace A226898.P15708399343662949711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226901 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A226898.P15708399343662949711

/-! ## A226898.P14744320753837540074

`A028310(A226901(n+1)-A226901(A028310(n)))`
-/

namespace A226898.P14744320753837540074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A226901 (n + 1) - A226901 (A028310 n).toNat).toNat

end

end A226898.P14744320753837540074

/-! ## A226898.P4046853529276080840

`Δ[A226901(A233583(n+1))%A000124(n)]`
-/

namespace A226898.P4046853529276080840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226901 (A233583 (n + 1)).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226898.P4046853529276080840

/-! ## A226898.P4060813100804504785

`A335450(gcd(A177769(n+1), A296507(n+1)))`
-/

namespace A226898.P4060813100804504785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (Int.gcd (A177769 (n + 1)) (A296507 (n + 1)))

end

end A226898.P4060813100804504785

/-!
# A226899: Numbers n for which Delta(m) < Delta(n) for all m < n, where Delta is Hooley's Delta function A226898.

The programs for A226899, there is no canonical definition to state claims against.
-/

/-! ## A226899.P7984799894691892628

`A309278(A226900(n+1))`
-/

namespace A226899.P7984799894691892628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309278 (A226900 (n + 1)).toNat

end

end A226899.P7984799894691892628

/-! ## A226899.P6269768570579032464

`A309278(lt[A309278(n), 28*n²])`
-/

namespace A226899.P6269768570579032464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309278 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309278 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A226899.P6269768570579032464

/-! ## A226899.P13589444650824330238

`A309278(A342951(n+1))`
-/

namespace A226899.P13589444650824330238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309278 (A342951 (n + 1)).toNat

end

end A226899.P13589444650824330238

/-! ## A226899.P3546568221359591897

`A309278(∪[A162936(2*n+1), A085134(n+1)])`
-/

namespace A226899.P3546568221359591897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162936 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085134 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309278 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A226899.P3546568221359591897

/-! ## A226899.P1951660163050371143

`A309278(∪[A162936(2*n+1), A061219(n+2)])`
-/

namespace A226899.P1951660163050371143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162936 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309278 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A226899.P1951660163050371143

