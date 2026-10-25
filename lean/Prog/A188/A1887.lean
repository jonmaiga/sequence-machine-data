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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B011.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A188700: Number of n X 3 binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188700, there is no canonical definition to state claims against.
-/

/-! ## A188700.P17824938897729024225

`A268997(n+1)-A268888(n+1)`
-/

namespace A188700.P17824938897729024225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268997 (n + 1) - A268888 (n + 1)

end

end A188700.P17824938897729024225

/-! ## A188700.P1216904666867017399

`A188706(∑[n+3]+1)`
-/

namespace A188700.P1216904666867017399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188700.P1216904666867017399

/-! ## A188700.P17227054771107446932

`A268997(n+1)-A268886(∑[n+2]+4)`
-/

namespace A188700.P17227054771107446932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268997 (n + 1) - A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188700.P17227054771107446932

/-! ## A188700.P14664662398085101324

`A268995(A167614(n+1))-A268886(∑[n+2]+4)`
-/

namespace A188700.P14664662398085101324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A167614 (n + 1)).toNat - A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188700.P14664662398085101324

/-! ## A188700.P17140948387070766937

`A268997(n+1)-A014963(A008458(n))*A268886(A167614(n+1))`
-/

namespace A188700.P17140948387070766937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268997 (n + 1) - A014963 (A008458 n).toNat * A268886 (A167614 (n + 1)).toNat

end

end A188700.P17140948387070766937

/-!
# A188701: Number of n X 4 binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188701, there is no canonical definition to state claims against.
-/

/-! ## A188701.P17731799232842474735

`A268998(n+1)-A268889(n+1)`
-/

namespace A188701.P17731799232842474735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268998 (n + 1) - A268889 (n + 1)

end

end A188701.P17731799232842474735

/-! ## A188701.P17352408399596954885

`A188706(A155212(n)+5)`
-/

namespace A188701.P17352408399596954885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A155212 n + 5).toNat

end

end A188701.P17352408399596954885

/-! ## A188701.P755411009549953769

`A188706(A056000(n)+7)`
-/

namespace A188701.P755411009549953769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A056000 n + 7).toNat

end

end A188701.P755411009549953769

/-! ## A188701.P17345785724432026232

`A188706(A052905(n+1)+2)`
-/

namespace A188701.P17345785724432026232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A052905 (n + 1) + 2).toNat

end

end A188701.P17345785724432026232

/-! ## A188701.P248789654722093033

`A188706(A051936(n+4)+6)`
-/

namespace A188701.P248789654722093033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A051936 (n + 4) + 6).toNat

end

end A188701.P248789654722093033

/-!
# A188702: Number of nX5 binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188702, there is no canonical definition to state claims against.
-/

/-! ## A188702.P16711053289086490741

`A268999(n+1)-A268890(n+1)`
-/

namespace A188702.P16711053289086490741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268999 (n + 1) - A268890 (n + 1)

end

end A188702.P16711053289086490741

/-! ## A188702.P16557210275163235792

`A188706(Δ[A264443(n)])`
-/

namespace A188702.P16557210275163235792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (f1 (n + 1) - f1 n).toNat

end

end A188702.P16557210275163235792

/-! ## A188702.P5611501606110014262

`A188706(A046691(n+3))`
-/

namespace A188702.P5611501606110014262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A046691 (n + 3)).toNat

end

end A188702.P5611501606110014262

/-! ## A188702.P13133830134640633703

`A188706(eq[4, A193592(n)])`
-/

namespace A188702.P13133830134640633703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188702.P13133830134640633703

/-! ## A188702.P7451781716156981984

`A188706(Δ[A023545(n+1)])`
-/

namespace A188702.P7451781716156981984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (f1 (n + 1) - f1 n).toNat

end

end A188702.P7451781716156981984

/-!
# A188703: Number of nX6 binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188703, there is no canonical definition to state claims against.
-/

/-! ## A188703.P1260642239333975236

`A188706(A052905(n+3))`
-/

namespace A188703.P1260642239333975236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A052905 (n + 3)).toNat

end

end A188703.P1260642239333975236

/-! ## A188703.P2380673426323929685

`A188706(A056119(n)+16)`
-/

namespace A188703.P2380673426323929685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A056119 n + 16).toNat

end

end A188703.P2380673426323929685

/-! ## A188703.P13144749099088838654

`A188706(eq[3, A219347(n)])`
-/

namespace A188703.P13144749099088838654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188703.P13144749099088838654

/-! ## A188703.P16387892506378093229

`A188706(eq[5, A193592(n)])`
-/

namespace A188703.P16387892506378093229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188703.P16387892506378093229

/-! ## A188703.P9668383083442657089

`A188706(Δ[A264443(n+1)]-1)`
-/

namespace A188703.P9668383083442657089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (f1 (n + 1) - f1 n - 1).toNat

end

end A188703.P9668383083442657089

/-!
# A188704: Number of nX7 binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188704, there is no canonical definition to state claims against.
-/

/-! ## A188704.P3181721446792606853

`A269001(n+1)-A268892(n+1)`
-/

namespace A188704.P3181721446792606853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269001 (n + 1) - A268892 (n + 1)

end

end A188704.P3181721446792606853

/-! ## A188704.P5675536358537459108

`A188706(A055999(n+4))`
-/

namespace A188704.P5675536358537459108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A055999 (n + 4)).toNat

end

end A188704.P5675536358537459108

/-! ## A188704.P3004012288826751027

`A188706(eq[4, A219347(n)])`
-/

namespace A188704.P3004012288826751027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188704.P3004012288826751027

/-! ## A188704.P3100282678919446385

`A188706(eq[6, A193592(n)])`
-/

namespace A188704.P3100282678919446385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188704.P3100282678919446385

/-! ## A188704.P16608278089942353955

`A188706(A000124(n+7)-7)`
-/

namespace A188704.P16608278089942353955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A000124 (n + 7) - 7).toNat

end

end A188704.P16608278089942353955

/-!
# A188705: Number of nX8 binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188705, there is no canonical definition to state claims against.
-/

/-! ## A188705.P5273615052191752117

`A188706(eq[5, A219347(n)])`
-/

namespace A188705.P5273615052191752117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188705.P5273615052191752117

/-! ## A188705.P8214484142493205039

`A188706(eq[7, A193592(n)])`
-/

namespace A188705.P8214484142493205039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188705.P8214484142493205039

/-! ## A188705.P15207573487308920743

`A188706(A155212(n+4)+1)`
-/

namespace A188705.P15207573487308920743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A155212 (n + 4) + 1).toNat

end

end A188705.P15207573487308920743

/-! ## A188705.P17184232887046785895

`A188706(A000124(n+8)-8)`
-/

namespace A188705.P17184232887046785895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A000124 (n + 8) - 8).toNat

end

end A188705.P17184232887046785895

/-! ## A188705.P1533842071853182795

`A188706(eq[12, A185782(n+1)])`
-/

namespace A188705.P1533842071853182795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188705.P1533842071853182795

/-!
# A188707: Number of 3 X n binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188707, the canonical program `A188707.P2231757960933125635` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188707 has offset 1).

The definition of A188707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188707.P2231757960933125635

`5*a(n-1)-3*a(n-2)` with `a(0)=5, a(1)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188707

/-- `5*a(n-1)-3*a(n-2)` -/
def P2231757960933125635.Spec : Prop :=
  ∀ n, P2231757960933125635.a n = A188707 (n + 1)

theorem P2231757960933125635.correct : P2231757960933125635.Spec := by
  intro n
  simp only [A188707, Nat.add_sub_cancel]

end A188707

/-! ## A188707.P13893823731878058548

`ogf((5-4x)/(1-5x+3x^2))`
-/

namespace A188707.P13893823731878058548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -4] [1, -5, 3] n

end

end A188707.P13893823731878058548

namespace A188707

/-- `ogf((5-4x)/(1-5x+3x^2))` -/
def P13893823731878058548.Spec : Prop :=
  ∀ n, P13893823731878058548.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P5465841465576506879

`Δ[A109114(n)]`
-/

namespace A188707.P5465841465576506879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188707.P5465841465576506879

namespace A188707

/-- `Δ[A109114(n)]` -/
def P5465841465576506879.Spec : Prop :=
  ∀ n, P5465841465576506879.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P1099544668047495187

`A018902(n+1)+A018902(n)`
-/

namespace A188707.P1099544668047495187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 (n + 1) + A018902 n

end

end A188707.P1099544668047495187

namespace A188707

/-- `A018902(n+1)+A018902(n)` -/
def P1099544668047495187.Spec : Prop :=
  ∀ n, P1099544668047495187.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P6470312429344855990

`A208309(n+1)+A081704(n)`
-/

namespace A188707.P6470312429344855990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208309 (n + 1) + A081704 n

end

end A188707.P6470312429344855990

namespace A188707

/-- `A208309(n+1)+A081704(n)` -/
def P6470312429344855990.Spec : Prop :=
  ∀ n, P6470312429344855990.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P14323498678496150951

`A109114(n+1)-A109114(n)`
-/

namespace A188707.P14323498678496150951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 (n + 1) - A109114 n

end

end A188707.P14323498678496150951

namespace A188707

/-- `A109114(n+1)-A109114(n)` -/
def P14323498678496150951.Spec : Prop :=
  ∀ n, P14323498678496150951.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P4653536474169190658

`2*A010903(n)-A116415(n)`
-/

namespace A188707.P4653536474169190658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010903 n - A116415 n

end

end A188707.P4653536474169190658

namespace A188707

/-- `2*A010903(n)-A116415(n)` -/
def P4653536474169190658.Spec : Prop :=
  ∀ n, P4653536474169190658.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P11073839883026719895

`Δ[Δ[A095939(n)]]-A095939(n)`
-/

namespace A188707.P11073839883026719895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095939 n

end

end A188707.P11073839883026719895

namespace A188707

/-- `Δ[Δ[A095939(n)]]-A095939(n)` -/
def P11073839883026719895.Spec : Prop :=
  ∀ n, P11073839883026719895.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P5430515823602045582

`A081704(n+1)+Δ[A081704(n)]`
-/

namespace A188707.P5430515823602045582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188707.P5430515823602045582

namespace A188707

/-- `A081704(n+1)+Δ[A081704(n)]` -/
def P5430515823602045582.Spec : Prop :=
  ∀ n, P5430515823602045582.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P17259043643839383655

`A095939(n+1)+A081704(n+1)`
-/

namespace A188707.P17259043643839383655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) + A081704 (n + 1)

end

end A188707.P17259043643839383655

namespace A188707

/-- `A095939(n+1)+A081704(n+1)` -/
def P17259043643839383655.Spec : Prop :=
  ∀ n, P17259043643839383655.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P8781292793338714759

`A095940(n+1)+A095940(n+2)`
-/

namespace A188707.P8781292793338714759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) + A095940 (n + 2)

end

end A188707.P8781292793338714759

namespace A188707

/-- `A095940(n+1)+A095940(n+2)` -/
def P8781292793338714759.Spec : Prop :=
  ∀ n, P8781292793338714759.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P16651000458236010012

`∑[A095939(n)]+2*A095939(n+1)`
-/

namespace A188707.P16651000458236010012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A095939 (n + 1)

end

end A188707.P16651000458236010012

namespace A188707

/-- `∑[A095939(n)]+2*A095939(n+1)` -/
def P16651000458236010012.Spec : Prop :=
  ∀ n, P16651000458236010012.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P142779608225370539

`A052961(n+1)+A116415(n)+A095939(n+1)`
-/

namespace A188707.P142779608225370539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) + (A116415 n + A095939 (n + 1))

end

end A188707.P142779608225370539

namespace A188707

/-- `A052961(n+1)+A116415(n)+A095939(n+1)` -/
def P142779608225370539.Spec : Prop :=
  ∀ n, P142779608225370539.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P5227957305319121337

`A095934(n+1)+A095934(n+1)-A116415(n)`
-/

namespace A188707.P5227957305319121337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) + (A095934 (n + 1) - A116415 n)

end

end A188707.P5227957305319121337

namespace A188707

/-- `A095934(n+1)+A095934(n+1)-A116415(n)` -/
def P5227957305319121337.Spec : Prop :=
  ∀ n, P5227957305319121337.a n = A188707 (n + 1)

end A188707

/-! ## A188707.P12001576645056389127

`A052961(n+1)+A228569(n+1)-A228569(n)`
-/

namespace A188707.P12001576645056389127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) + (A228569 (n + 1) - A228569 n)

end

end A188707.P12001576645056389127

namespace A188707

/-- `A052961(n+1)+A228569(n+1)-A228569(n)` -/
def P12001576645056389127.Spec : Prop :=
  ∀ n, P12001576645056389127.a n = A188707 (n + 1)

end A188707

/-!
# A188708: Number of 4 X n binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188708, the canonical program `A188708.P9339706580350676756` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188708 has offset 1).

The definition of A188708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188708.P9339706580350676756

`8*a(n-1)-12*a(n-2)+4*a(n-3)` with `a(0)=8, a(1)=49, a(2)=304`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188708

/-- `8*a(n-1)-12*a(n-2)+4*a(n-3)` -/
def P9339706580350676756.Spec : Prop :=
  ∀ n, P9339706580350676756.a n = A188708 (n + 1)

theorem P9339706580350676756.correct : P9339706580350676756.Spec := by
  intro n
  simp only [A188708, Nat.add_sub_cancel]

end A188708

/-! ## A188708.P12983616592871861942

`A188706(A052905(n)+9)`
-/

namespace A188708.P12983616592871861942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A052905 n + 9).toNat

end

end A188708.P12983616592871861942

namespace A188708

/-- `A188706(A052905(n)+9)` -/
def P12983616592871861942.Spec : Prop :=
  ∀ n, P12983616592871861942.a n = A188708 (n + 1)

end A188708

/-! ## A188708.P5951447564153742867

`A188706(A055999(n)+10)`
-/

namespace A188708.P5951447564153742867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A055999 n + 10).toNat

end

end A188708.P5951447564153742867

namespace A188708

/-- `A188706(A055999(n)+10)` -/
def P5951447564153742867.Spec : Prop :=
  ∀ n, P5951447564153742867.a n = A188708 (n + 1)

end A188708

/-! ## A188708.P5287848601512569692

`A188706(A167614(n+2)+1)`
-/

namespace A188708.P5287848601512569692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A167614 (n + 2) + 1).toNat

end

end A188708.P5287848601512569692

namespace A188708

/-- `A188706(A167614(n+2)+1)` -/
def P5287848601512569692.Spec : Prop :=
  ∀ n, P5287848601512569692.a n = A188708 (n + 1)

end A188708

/-! ## A188708.P4082117265394268228

`A188706(A167499(n+2)-1)`
-/

namespace A188708.P4082117265394268228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A167499 (n + 2) - 1).toNat

end

end A188708.P4082117265394268228

namespace A188708

/-- `A188706(A167499(n+2)-1)` -/
def P4082117265394268228.Spec : Prop :=
  ∀ n, P4082117265394268228.a n = A188708 (n + 1)

end A188708

/-!
# A188709: Number of 5 X n binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188709, there is no canonical definition to state claims against.
-/

/-! ## A188709.P18013804856212986408

`A268992(n+1)-A268883(n+1)`
-/

namespace A188709.P18013804856212986408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268992 (n + 1) - A268883 (n + 1)

end

end A188709.P18013804856212986408

/-! ## A188709.P2562047512718775111

`A188706(A167499(n+3))`
-/

namespace A188709.P2562047512718775111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A167499 (n + 3)).toNat

end

end A188709.P2562047512718775111

/-! ## A188709.P2308754862549030664

`A188706(A155212(n)+13)`
-/

namespace A188709.P2308754862549030664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A155212 n + 13).toNat

end

end A188709.P2308754862549030664

/-! ## A188709.P54539109480231362

`A188706(A056000(n)+15)`
-/

namespace A188709.P54539109480231362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A056000 n + 15).toNat

end

end A188709.P54539109480231362

/-! ## A188709.P1090423673290318667

`A188706(eq[6, A131818(n+1)])`
-/

namespace A188709.P1090423673290318667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188709.P1090423673290318667

/-!
# A188710: Number of 6 X n binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188710, there is no canonical definition to state claims against.
-/

/-! ## A188710.P15381902266234877610

`A268993(n+1)-A268884(n+1)`
-/

namespace A188710.P15381902266234877610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268993 (n + 1) - A268884 (n + 1)

end

end A188710.P15381902266234877610

/-! ## A188710.P9580410916893182585

`A188706(A056115(n)+21)`
-/

namespace A188710.P9580410916893182585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A056115 n + 21).toNat

end

end A188710.P9580410916893182585

/-! ## A188710.P1795708110019679207

`A188706(A167499(n+4)+1)`
-/

namespace A188710.P1795708110019679207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A167499 (n + 4) + 1).toNat

end

end A188710.P1795708110019679207

/-! ## A188710.P6398722484575691807

`A188706(A000217(n+5)+6)`
-/

namespace A188710.P6398722484575691807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A000217 (n + 5) + 6).toNat

end

end A188710.P6398722484575691807

/-! ## A188710.P2339023441014429465

`A188706(eq[7, A131818(n+1)])`
-/

namespace A188710.P2339023441014429465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188710.P2339023441014429465

/-!
# A188711: Number of 7Xn binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188711, there is no canonical definition to state claims against.
-/

/-! ## A188711.P3164112554752094245

`A268994(n+1)-A268885(n+1)`
-/

namespace A188711.P3164112554752094245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268994 (n + 1) - A268885 (n + 1)

end

end A188711.P3164112554752094245

/-! ## A188711.P10904847208834899199

`A188706(A056119(n)+28)`
-/

namespace A188711.P10904847208834899199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A056119 n + 28).toNat

end

end A188711.P10904847208834899199

/-! ## A188711.P10064754910170955375

`A188706(eq[11, A066657(n)])`
-/

namespace A188711.P10064754910170955375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188711.P10064754910170955375

/-! ## A188711.P4829561926667682639

`A188706(A166136(n+5)+1)`
-/

namespace A188711.P4829561926667682639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A166136 (n + 5) + 1).toNat

end

end A188711.P4829561926667682639

/-! ## A188711.P4782037220856896793

`A188706(eq[8, A131818(n+1)])`
-/

namespace A188711.P4782037220856896793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188711.P4782037220856896793

/-!
# A188712: Number of 8Xn binary arrays without the pattern 0 0 diagonally or vertically.

The programs for A188712, there is no canonical definition to state claims against.
-/

/-! ## A188712.P15324461638757640238

`A188706(eq[13, A066657(n)])`
-/

namespace A188712.P15324461638757640238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188712.P15324461638757640238

/-! ## A188712.P10132530671243928326

`A188706(A166136(n+6)+2)`
-/

namespace A188712.P10132530671243928326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A166136 (n + 6) + 2).toNat

end

end A188712.P10132530671243928326

/-! ## A188712.P17125865054792463791

`A188706(A055999(n+4)+14)`
-/

namespace A188712.P17125865054792463791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A055999 (n + 4) + 14).toNat

end

end A188712.P17125865054792463791

/-! ## A188712.P4932106139557220435

`A188706(eq[9, A131818(n+1)])`
-/

namespace A188712.P4932106139557220435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188712.P4932106139557220435

/-! ## A188712.P1570415290577627251

`A188706(A161680(n+10)-9-n-n)`
-/

namespace A188712.P1570415290577627251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188706 (A161680 (n + 10) - 9 - (n : ℤ) - (n : ℤ)).toNat

end

end A188712.P1570415290577627251

/-!
# A188713: Primes of the form 2^x + 2^y - 1.

The programs for A188713, there is no canonical definition to state claims against.
-/

/-! ## A188713.P10193385664064117796

`∩[A128898(n+1), A099627(n)]`
-/

namespace A188713.P10193385664064117796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188713.P10193385664064117796

/-! ## A188713.P2952505052286336853

`∪[A171254(n+1), A239712(n+1)]`
-/

namespace A188713.P2952505052286336853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188713.P2952505052286336853

/-! ## A188713.P11943041166088798751

`∩[A100724(n+1), A099627(n)]`
-/

namespace A188713.P11943041166088798751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188713.P11943041166088798751

/-! ## A188713.P1163991103325518384

`∩[A100724(n+1), A114994(n)]`
-/

namespace A188713.P1163991103325518384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188713.P1163991103325518384

/-! ## A188713.P64328914074749554

`p?[A099627(n)]`
-/

namespace A188713.P64328914074749554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188713.P64328914074749554

/-! ## A188713.P8293035440179171491

`p?[∑[A232089(n)]]`
-/

namespace A188713.P8293035440179171491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188713.P8293035440179171491

/-! ## A188713.P17956780685485338876

`p?[A173786(n)-1]`
-/

namespace A188713.P17956780685485338876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188713.P17956780685485338876

/-! ## A188713.P5411486275814386038

`p?[floor(A209492(n)/2)]`
-/

namespace A188713.P5411486275814386038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209492 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188713.P5411486275814386038

/-! ## A188713.P15720316532476419517

`p?[record[A161919(n+1)]]`
-/

namespace A188713.P15720316532476419517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188713.P15720316532476419517

/-! ## A188713.P3718719557836580393

`p?[record[A392039(n+1)]]`
-/

namespace A188713.P3718719557836580393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392039 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188713.P3718719557836580393

/-!
# A188714: G.f.: (1+x+x^2+x^3)/(1-3*x-3*x^2-3*x^3).

The programs for A188714, the canonical program `A188714.P3766287319146465303` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188714 has offset 0).

The definition of A188714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188714.P13479280143159390184

`ogf((1+x+x^2+x^3)/(1-3x-3x^2-3x^3))`
-/

namespace A188714.P13479280143159390184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -3, -3, -3] n

end

end A188714.P13479280143159390184

namespace A188714

/-- `ogf((1+x+x^2+x^3)/(1-3x-3x^2-3x^3))` -/
def P13479280143159390184.Spec : Prop :=
  ∀ n, P13479280143159390184.a n = A188714 n

end A188714

/-! ## A188714.P3766287319146465303

`floor(4*A077828(n)/3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A188714

/-- `floor(4*A077828(n)/3)` -/
def P3766287319146465303.Spec : Prop :=
  ∀ n, P3766287319146465303.a n = A188714 n

theorem P3766287319146465303.correct : P3766287319146465303.Spec := by
  intro n
  simp only [A188714]

end A188714

/-! ## A188714.P6638801727305251935

`or(round(4*A077828(n)/3), A000007(n))`
-/

namespace A188714.P6638801727305251935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (4 * ((A077828 n : ℚ) / 3))) (A000007 n)

end

end A188714.P6638801727305251935

namespace A188714

/-- `or(round(4*A077828(n)/3), A000007(n))` -/
def P6638801727305251935.Spec : Prop :=
  ∀ n, P6638801727305251935.a n = A188714 n

end A188714

/-! ## A188714.P15007444712398774299

`round((char[A017378(n)²]+4)*A077828(n)/3)`
-/

namespace A188714.P15007444712398774299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 4 : ℕ) : ℚ) * ((A077828 n : ℚ) / 3))

end

end A188714.P15007444712398774299

namespace A188714

/-- `round((char[A017378(n)²]+4)*A077828(n)/3)` -/
def P15007444712398774299.Spec : Prop :=
  ∀ n, P15007444712398774299.a n = A188714 n

end A188714

/-! ## A188714.P1663135807752365957

`round((char[A107178(n+2)²]+4)*A077828(n)/3)`
-/

namespace A188714.P1663135807752365957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107178 (n + 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 4 : ℕ) : ℚ) * ((A077828 n : ℚ) / 3))

end

end A188714.P1663135807752365957

namespace A188714

/-- `round((char[A107178(n+2)²]+4)*A077828(n)/3)` -/
def P1663135807752365957.Spec : Prop :=
  ∀ n, P1663135807752365957.a n = A188714 n

end A188714

/-! ## A188714.P12838548120522585727

`round((A020639(2*A059147(n))+2)*A077828(n)/3)`
-/

namespace A188714.P12838548120522585727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020639 (2 * A059147 n).toNat + 2 : ℚ) * ((A077828 n : ℚ) / 3))

end

end A188714.P12838548120522585727

namespace A188714

/-- `round((A020639(2*A059147(n))+2)*A077828(n)/3)` -/
def P12838548120522585727.Spec : Prop :=
  ∀ n, P12838548120522585727.a n = A188714 n

end A188714

/-!
# A188716: a(n) = n + (n-1)*(2^n-2).

The programs for A188716, the canonical program `A188716.P341178310088021676` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188716 has offset 0).

The definition of A188716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n-1)*(2^n-2)` (program `A188716.P341178310088021676`, by `A188716.P341178310088021676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188716.P341178310088021676

`n+(n-1)*(2^n-2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188716

/-- `n+(n-1)*(2^n-2)` -/
def P341178310088021676.Spec : Prop :=
  ∀ n, P341178310088021676.a n = A188716 n

theorem P341178310088021676.correct : P341178310088021676.Spec := by
  intro n
  simp only [A188716]

end A188716

/-! ## A188716.P7124235192189945171

`abs(n-A048495(n))`
-/

namespace A188716.P7124235192189945171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A048495 n|

end

end A188716.P7124235192189945171

namespace A188716

/-- `abs(n-A048495(n))` -/
def P7124235192189945171.Spec : Prop :=
  ∀ n, P7124235192189945171.a n = A188716 n

end A188716

/-! ## A188716.P9837930603193547772

`∑[abs(1-A001787(n))]`
-/

namespace A188716.P9837930603193547772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001787 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P9837930603193547772

namespace A188716

/-- `∑[abs(1-A001787(n))]` -/
def P9837930603193547772.Spec : Prop :=
  ∀ n, P9837930603193547772.a n = A188716 n

end A188716

/-! ## A188716.P8485328965841054645

`∑[abs(2-A005183(n))]`
-/

namespace A188716.P8485328965841054645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A005183 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P8485328965841054645

namespace A188716

/-- `∑[abs(2-A005183(n))]` -/
def P8485328965841054645.Spec : Prop :=
  ∀ n, P8485328965841054645.a n = A188716 n

end A188716

/-! ## A188716.P13927983052721056530

`abs(n-(A000337(n)+1))`
-/

namespace A188716.P13927983052721056530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A000337 n + 1)|

end

end A188716.P13927983052721056530

namespace A188716

/-- `abs(n-(A000337(n)+1))` -/
def P13927983052721056530.Spec : Prop :=
  ∀ n, P13927983052721056530.a n = A188716 n

end A188716

/-! ## A188716.P2645775405542945099

`∑[abs(1-abs(A118442(n)))]`
-/

namespace A188716.P2645775405542945099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A118442 n|)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P2645775405542945099

namespace A188716

/-- `∑[abs(1-abs(A118442(n)))]` -/
def P2645775405542945099.Spec : Prop :=
  ∀ n, P2645775405542945099.a n = A188716 n

end A188716

/-! ## A188716.P1584216784081442113

`∑[abs(1-A139756(n+1))]`
-/

namespace A188716.P1584216784081442113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A139756 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P1584216784081442113

namespace A188716

/-- `∑[abs(1-A139756(n+1))]` -/
def P1584216784081442113.Spec : Prop :=
  ∀ n, P1584216784081442113.a n = A188716 n

end A188716

/-! ## A188716.P2704846382426691475

`∑[abs(1-n*A011782(n))]`
-/

namespace A188716.P2704846382426691475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) * A011782 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P2704846382426691475

namespace A188716

/-- `∑[abs(1-n*A011782(n))]` -/
def P2704846382426691475.Spec : Prop :=
  ∀ n, P2704846382426691475.a n = A188716 n

end A188716

/-! ## A188716.P9517027195666006148

`∑[abs(1-n*A131577(n))]`
-/

namespace A188716.P9517027195666006148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) * A131577 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P9517027195666006148

namespace A188716

/-- `∑[abs(1-n*A131577(n))]` -/
def P9517027195666006148.Spec : Prop :=
  ∀ n, P9517027195666006148.a n = A188716 n

end A188716

/-! ## A188716.P9756967405942087292

`abs((n-1)*A000225(n)+1)`
-/

namespace A188716.P9756967405942087292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * A000225 n + 1|

end

end A188716.P9756967405942087292

namespace A188716

/-- `abs((n-1)*A000225(n)+1)` -/
def P9756967405942087292.Spec : Prop :=
  ∀ n, P9756967405942087292.a n = A188716 n

end A188716

/-! ## A188716.P8881028444810583720

`∑[abs(1-abs(A085750(n+1)))]`
-/

namespace A188716.P8881028444810583720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |A085750 (n + 1)|)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P8881028444810583720

namespace A188716

/-- `∑[abs(1-abs(A085750(n+1)))]` -/
def P8881028444810583720.Spec : Prop :=
  ∀ n, P8881028444810583720.a n = A188716 n

end A188716

/-! ## A188716.P9886815773638437536

`∑[abs(1-n/2*A000079(n))]`
-/

namespace A188716.P9886815773638437536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℚ) / 2 * (A000079 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P9886815773638437536

namespace A188716

/-- `∑[abs(1-n/2*A000079(n))]` -/
def P9886815773638437536.Spec : Prop :=
  ∀ n, P9886815773638437536.a n = (A188716 n : ℚ)

end A188716

/-! ## A188716.P13361273529246430576

`∑[abs(n*A000079(abs(1-n))-1)]`
-/

namespace A188716.P13361273529246430576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * A000079 |1 - (n : ℤ)|.toNat - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188716.P13361273529246430576

namespace A188716

/-- `∑[abs(n*A000079(abs(1-n))-1)]` -/
def P13361273529246430576.Spec : Prop :=
  ∀ n, P13361273529246430576.a n = A188716 n

end A188716

/-! ## A188716.P11940687704583989084

`lcm((n-1)*A000225(n)+1, A280193(n))`
-/

namespace A188716.P11940687704583989084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 1) * A000225 n + 1) (A280193 n)

end

end A188716.P11940687704583989084

namespace A188716

/-- `lcm((n-1)*A000225(n)+1, A280193(n))` -/
def P11940687704583989084.Spec : Prop :=
  ∀ n, (P11940687704583989084.a n : ℤ) = A188716 n

end A188716

/-! ## A188716.P6723359176296537391

`ceil(A088578(n)/2-n)`
-/

namespace A188716.P6723359176296537391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088578 n : ℚ) / 2 - (n : ℚ)⌉

end

end A188716.P6723359176296537391

namespace A188716

/-- `ceil(A088578(n)/2-n)` -/
def P6723359176296537391.Spec : Prop :=
  ∀ n, P6723359176296537391.a n = A188716 n

end A188716

/-! ## A188716.P11730864730833563408

`-(A159964(n)-2+n)`
-/

namespace A188716.P11730864730833563408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A159964 n - 2 + (n : ℤ))

end

end A188716.P11730864730833563408

namespace A188716

/-- `-(A159964(n)-2+n)` -/
def P11730864730833563408.Spec : Prop :=
  ∀ n, P11730864730833563408.a n = A188716 n

theorem P11730864730833563408.correct : P11730864730833563408.Spec := by
  intro n
  simp only [A188716, Nat.add_sub_cancel, A188716.P11730864730833563408.a, A188716.P341178310088021676.a, A159964, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188716

/-!
# A188717: Primes p such that all prime factors of p-1 have exponent 4.

The programs for A188717, there is no canonical definition to state claims against.
-/

/-! ## A188717.P7793780736715553873

`record[A089120(∏{p}[n+1, #]²)]`
-/

namespace A188717.P7793780736715553873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 ((∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188717.P7793780736715553873

/-! ## A188717.P10968204490022608205

`record[A089120(A062503(n+1))]`
-/

namespace A188717.P10968204490022608205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A062503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188717.P10968204490022608205

/-! ## A188717.P15676820359668440688

`record[A089120(A064549(n+1))]`
-/

namespace A188717.P15676820359668440688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A064549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188717.P15676820359668440688

/-!
# A188718: a(n) = 4^n*R_n where R_n are the coefficients discussed in A188984.

The programs for A188718, there is no canonical definition to state claims against.
-/

/-! ## A188718.P1679746476469133188

`A001316(n)*A188984(n)`
-/

namespace A188718.P1679746476469133188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A188984 n

end

end A188718.P1679746476469133188

/-! ## A188718.P2262862803488773656

`sqrt(A102376(n))*A188984(n)`
-/

namespace A188718.P2262862803488773656
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) * (A188984 n : ℝ)

end

end A188718.P2262862803488773656

/-! ## A188718.P12877059079214296866

`(A038573(n)+1)*A188984(n)`
-/

namespace A188718.P12877059079214296866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A188984 n

end

end A188718.P12877059079214296866

/-! ## A188718.P15721027648983787090

`A000005(A019565(n))*A188984(n)`
-/

namespace A188718.P15721027648983787090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A188984 n

end

end A188718.P15721027648983787090

/-! ## A188718.P10174320016531798592

`A188984(n)*A199344(A038573(n))`
-/

namespace A188718.P10174320016531798592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188984 n * A199344 (A038573 n).toNat

end

end A188718.P10174320016531798592

/-!
# A188740: Number of n X n binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188740, there is no canonical definition to state claims against.
-/

/-! ## A188740.P17370107030581112279

`A188747(∑[4*n]+1)`
-/

namespace A188740.P17370107030581112279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188740.P17370107030581112279

/-! ## A188740.P1312484479705888898

`record[root(A188747(n+1), A143182(n))]`
-/

namespace A188740.P1312484479705888898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188747 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188740.P1312484479705888898

/-! ## A188740.P12702688981347405527

`record[gcd(A188747(n+1), A257570(n+1))]`
-/

namespace A188740.P12702688981347405527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188747 (n + 1)) (A257570 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188740.P12702688981347405527

/-! ## A188740.P18400911214594253082

`A053501(n)*A188747(A001844(n))`
-/

namespace A188740.P18400911214594253082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n * A188747 (A001844 n).toNat

end

end A188740.P18400911214594253082

/-! ## A188740.P12646125361173568388

`gcd(A000038(n), A188747(A001844(n)))`
-/

namespace A188740.P12646125361173568388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A188747 (A001844 n).toNat)

end

end A188740.P12646125361173568388

/-!
# A188741: Number of nX3 binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188741, there is no canonical definition to state claims against.
-/

/-! ## A188741.P17914791885525170184

`A188747(∑[n+3]+1)`
-/

namespace A188741.P17914791885525170184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188741.P17914791885525170184

/-! ## A188741.P16865036639124295684

`record[A188747(A198464(n+1))]`
-/

namespace A188741.P16865036639124295684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188741.P16865036639124295684

/-!
# A188742: Number of nX4 binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188742, there is no canonical definition to state claims against.
-/

/-! ## A188742.P5963142518091444570

`A188747(A141214(n+1))`
-/

namespace A188742.P5963142518091444570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A141214 (n + 1)).toNat

end

end A188742.P5963142518091444570

/-! ## A188742.P15016127381459927611

`A188747(A155212(n)+5)`
-/

namespace A188742.P15016127381459927611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A155212 n + 5).toNat

end

end A188742.P15016127381459927611

/-! ## A188742.P15693589866066584677

`A188747(A056000(n)+7)`
-/

namespace A188742.P15693589866066584677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A056000 n + 7).toNat

end

end A188742.P15693589866066584677

/-! ## A188742.P11717822762017881296

`A188747(eq[3, A193592(n)])`
-/

namespace A188742.P11717822762017881296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188742.P11717822762017881296

/-! ## A188742.P18352750779279346581

`A188747(A052905(n+1)+2)`
-/

namespace A188742.P18352750779279346581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A052905 (n + 1) + 2).toNat

end

end A188742.P18352750779279346581

/-!
# A188743: Number of nX5 binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188743, there is no canonical definition to state claims against.
-/

/-! ## A188743.P14299255367272896985

`A188747(Δ[A264443(n)])`
-/

namespace A188743.P14299255367272896985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (f1 (n + 1) - f1 n).toNat

end

end A188743.P14299255367272896985

/-! ## A188743.P4129730749209199358

`A188747(A046691(n+3))`
-/

namespace A188743.P4129730749209199358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A046691 (n + 3)).toNat

end

end A188743.P4129730749209199358

/-! ## A188743.P5137681096840588284

`A188747(A056115(n)+11)`
-/

namespace A188743.P5137681096840588284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A056115 n + 11).toNat

end

end A188743.P5137681096840588284

/-! ## A188743.P17948651717898769451

`A188747(eq[4, A193592(n)])`
-/

namespace A188743.P17948651717898769451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188743.P17948651717898769451

/-! ## A188743.P11682843271823965368

`A188747(eq[8, A209439(n)])`
-/

namespace A188743.P11682843271823965368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188743.P11682843271823965368

/-!
# A188744: Number of nX6 binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188744, there is no canonical definition to state claims against.
-/

/-! ## A188744.P8549995917203072172

`A188747(A052905(n+3))`
-/

namespace A188744.P8549995917203072172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A052905 (n + 3)).toNat

end

end A188744.P8549995917203072172

/-! ## A188744.P13955105177255928241

`A188747(eq[3, A219347(n)])`
-/

namespace A188744.P13955105177255928241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188744.P13955105177255928241

/-! ## A188744.P7549609515744831506

`A188747(eq[5, A193592(n)])`
-/

namespace A188744.P7549609515744831506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188744.P7549609515744831506

/-! ## A188744.P9928486028388250566

`A188747(A055999(n+3)+1)`
-/

namespace A188744.P9928486028388250566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A055999 (n + 3) + 1).toNat

end

end A188744.P9928486028388250566

/-! ## A188744.P6128803515052079663

`A188747(eq[6, A200370(n+1)])`
-/

namespace A188744.P6128803515052079663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188744.P6128803515052079663

/-!
# A188745: Number of n X 7 binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188745, there is no canonical definition to state claims against.
-/

/-! ## A188745.P15071958992369840036

`A188747(A055999(n+4))`
-/

namespace A188745.P15071958992369840036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A055999 (n + 4)).toNat

end

end A188745.P15071958992369840036

/-! ## A188745.P5352596543514916240

`A188747(eq[4, A219347(n)])`
-/

namespace A188745.P5352596543514916240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188745.P5352596543514916240

/-! ## A188745.P12344110636559529521

`A188747(eq[6, A193592(n)])`
-/

namespace A188745.P12344110636559529521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188745.P12344110636559529521

/-! ## A188745.P16099793111555886871

`A188747(eq[7, A200370(n+1)])`
-/

namespace A188745.P16099793111555886871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188745.P16099793111555886871

/-! ## A188745.P12101674275093692726

`A188747(eq[10, A185782(n+1)])`
-/

namespace A188745.P12101674275093692726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188745.P12101674275093692726

/-!
# A188746: Number of nX8 binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188746, there is no canonical definition to state claims against.
-/

/-! ## A188746.P9845721887818750116

`A188747(eq[5, A219347(n)])`
-/

namespace A188746.P9845721887818750116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188746.P9845721887818750116

/-! ## A188746.P767027957463065266

`A188747(eq[7, A193592(n)])`
-/

namespace A188746.P767027957463065266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188746.P767027957463065266

/-! ## A188746.P17460794091042947643

`A188747(A000096(n+7)-6)`
-/

namespace A188746.P17460794091042947643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A000096 (n + 7) - 6).toNat

end

end A188746.P17460794091042947643

/-! ## A188746.P9754107867560830136

`A188747(A000124(n+8)-8)`
-/

namespace A188746.P9754107867560830136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A000124 (n + 8) - 8).toNat

end

end A188746.P9754107867560830136

/-! ## A188746.P14742142243941169850

`A188747(eq[12, A185782(n+1)])`
-/

namespace A188746.P14742142243941169850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188746.P14742142243941169850

/-!
# A188747: T(n,k)=Number of nXk binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188747, there is no canonical definition to state claims against.
-/

/-! ## A188747.P4959020526031385588

`A189696(n+1)+A025469(A051164(n))`
-/

namespace A188747.P4959020526031385588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (n + 1) + A025469 (A051164 n).toNat

end

end A188747.P4959020526031385588

/-! ## A188747.P7275930911020662774

`A189696(n+1)+A055641(A026786(n))`
-/

namespace A188747.P7275930911020662774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (n + 1) + A055641 (A026786 n).toNat

end

end A188747.P7275930911020662774

/-! ## A188747.P2879233988214796684

`A189696(n+1)+A025469(A113225(n))`
-/

namespace A188747.P2879233988214796684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (n + 1) + A025469 (A113225 n).toNat

end

end A188747.P2879233988214796684

/-! ## A188747.P3271776763116566470

`A189696(n+1)+A025469(A129952(n))`
-/

namespace A188747.P3271776763116566470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (n + 1) + A025469 (A129952 n).toNat

end

end A188747.P3271776763116566470

/-! ## A188747.P11749464514710177959

`A189696(n+1)+A010054(A174465(n+2))`
-/

namespace A188747.P11749464514710177959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (n + 1) + A010054 (A174465 (n + 2)).toNat

end

end A188747.P11749464514710177959

/-!
# A188748: Number of 3 X n binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188748, there is no canonical definition to state claims against.
-/

/-! ## A188748.P15403367983254840899

`A189696(∑[n+2]+4)`
-/

namespace A188748.P15403367983254840899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188748.P15403367983254840899

/-! ## A188748.P16487043795585025898

`A189696(A167614(n+1))+A025469(n)`
-/

namespace A188748.P16487043795585025898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167614 (n + 1)).toNat + A025469 n

end

end A188748.P16487043795585025898

/-! ## A188748.P10721283053656421149

`A189696(A167614(n+1))+A185246(n)`
-/

namespace A188748.P10721283053656421149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167614 (n + 1)).toNat + A185246 n

end

end A188748.P10721283053656421149

/-! ## A188748.P815989404773498518

`A189696(A167614(n+1))+A185284(n)`
-/

namespace A188748.P815989404773498518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189696 (A167614 (n + 1)).toNat + A185284 n

end

end A188748.P815989404773498518

/-! ## A188748.P4586702207793158256

`A015720(n)*A189696(A167614(n+1))`
-/

namespace A188748.P4586702207793158256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A189696 (A167614 (n + 1)).toNat

end

end A188748.P4586702207793158256

/-!
# A188749: Number of 4 X n binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188749, there is no canonical definition to state claims against.
-/

/-! ## A188749.P17083663471317176829

`A188747(A141214(n)+7)`
-/

namespace A188749.P17083663471317176829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A141214 n + 7).toNat

end

end A188749.P17083663471317176829

/-! ## A188749.P7963078339749545103

`A188747(A052905(n)+9)`
-/

namespace A188749.P7963078339749545103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A052905 n + 9).toNat

end

end A188749.P7963078339749545103

/-! ## A188749.P1077953666179806974

`A188747(A055999(n)+10)`
-/

namespace A188749.P1077953666179806974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A055999 n + 10).toNat

end

end A188749.P1077953666179806974

/-! ## A188749.P3700538186339804707

`A188747(A167614(n+2)+1)`
-/

namespace A188749.P3700538186339804707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167614 (n + 2) + 1).toNat

end

end A188749.P3700538186339804707

/-! ## A188749.P7814720494521435670

`A188747(A167499(n+2)-1)`
-/

namespace A188749.P7814720494521435670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167499 (n + 2) - 1).toNat

end

end A188749.P7814720494521435670

/-!
# A188750: Number of 5Xn binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188750, there is no canonical definition to state claims against.
-/

/-! ## A188750.P15328671044960289080

`A188747(A167499(n+3))`
-/

namespace A188750.P15328671044960289080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167499 (n + 3)).toNat

end

end A188750.P15328671044960289080

/-! ## A188750.P4231674704952948431

`A188747(A155212(n)+13)`
-/

namespace A188750.P4231674704952948431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A155212 n + 13).toNat

end

end A188750.P4231674704952948431

/-! ## A188750.P4587712374715626340

`A188747(A056000(n)+15)`
-/

namespace A188750.P4587712374715626340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A056000 n + 15).toNat

end

end A188750.P4587712374715626340

/-! ## A188750.P905046205715290996

`A188747(eq[7, A066657(n)])`
-/

namespace A188750.P905046205715290996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188750.P905046205715290996

/-! ## A188750.P8624188141878856409

`A188747(eq[6, A131818(n+1)])`
-/

namespace A188750.P8624188141878856409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188750.P8624188141878856409

/-!
# A188751: Number of 6Xn binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188751, there is no canonical definition to state claims against.
-/

/-! ## A188751.P4339257837204643068

`A188747(A056115(n)+21)`
-/

namespace A188751.P4339257837204643068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A056115 n + 21).toNat

end

end A188751.P4339257837204643068

/-! ## A188751.P17011460237205115529

`A188747(A167499(n+4)+1)`
-/

namespace A188751.P17011460237205115529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167499 (n + 4) + 1).toNat

end

end A188751.P17011460237205115529

/-! ## A188751.P11175278358712205082

`A188747(A055999(n+2)+12)`
-/

namespace A188751.P11175278358712205082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A055999 (n + 2) + 12).toNat

end

end A188751.P11175278358712205082

/-! ## A188751.P16909000253921298349

`A188747(eq[7, A131818(n+1)])`
-/

namespace A188751.P16909000253921298349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188751.P16909000253921298349

/-! ## A188751.P642420689836594973

`A188747(A167614(n+5)-(n+3))`
-/

namespace A188751.P642420689836594973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A188751.P642420689836594973

/-!
# A188752: Number of 7Xn binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188752, there is no canonical definition to state claims against.
-/

/-! ## A188752.P12368677494306627616

`A188747(A056119(n)+28)`
-/

namespace A188752.P12368677494306627616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A056119 n + 28).toNat

end

end A188752.P12368677494306627616

/-! ## A188752.P9361886607219295999

`A188747(eq[11, A066657(n)])`
-/

namespace A188752.P9361886607219295999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188752.P9361886607219295999

/-! ## A188752.P6516086608213039875

`A188747(A167614(n+5)+4)`
-/

namespace A188752.P6516086608213039875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167614 (n + 5) + 4).toNat

end

end A188752.P6516086608213039875

/-! ## A188752.P16192754515268452408

`A188747(eq[8, A131818(n+1)])`
-/

namespace A188752.P16192754515268452408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188752.P16192754515268452408

/-! ## A188752.P13316290119619784656

`A188747(A167499(n+4)+n+8)`
-/

namespace A188752.P13316290119619784656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A167499 (n + 4) + (n + 8 : ℤ)).toNat

end

end A188752.P13316290119619784656

/-!
# A188753: Number of 8 X n binary arrays without the pattern 1 1 1 diagonally, vertically or antidiagonally.

The programs for A188753, there is no canonical definition to state claims against.
-/

/-! ## A188753.P16044390746569918434

`A188747(eq[13, A066657(n)])`
-/

namespace A188753.P16044390746569918434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188753.P16044390746569918434

/-! ## A188753.P5153877759435652958

`A188747(A000124(n+7)+7)`
-/

namespace A188753.P5153877759435652958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A000124 (n + 7) + 7).toNat

end

end A188753.P5153877759435652958

/-! ## A188753.P9956833607516945860

`A188747(A000217(n+7)+8)`
-/

namespace A188753.P9956833607516945860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A000217 (n + 7) + 8).toNat

end

end A188753.P9956833607516945860

/-! ## A188753.P209934893127628874

`A188747(eq[9, A131818(n+1)])`
-/

namespace A188753.P209934893127628874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188753.P209934893127628874

/-! ## A188753.P7402088293068716034

`A188747(A000096(n+7)-(n-1))`
-/

namespace A188753.P7402088293068716034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188747 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A188753.P7402088293068716034

/-!
# A188754: Primes in A031344.

The programs for A188754, there is no canonical definition to state claims against.
-/

/-! ## A188754.P14801470066323599646

`p?[A031344(n+1)]`
-/

namespace A188754.P14801470066323599646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188754.P14801470066323599646

/-! ## A188754.P15291495730161633460

`∩[A031344(n+1), A380468(n+1)]`
-/

namespace A188754.P15291495730161633460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P15291495730161633460

/-! ## A188754.P235198256328958683

`∩[A000040(n+1), A031344(n+1)]`
-/

namespace A188754.P235198256328958683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P235198256328958683

/-! ## A188754.P10674610401495684495

`∩[A008578(n+1), A031344(n+1)]`
-/

namespace A188754.P10674610401495684495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P10674610401495684495

/-! ## A188754.P12916114210670602490

`∩[A031344(n+1), A033946(n+1)]`
-/

namespace A188754.P12916114210670602490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P12916114210670602490

/-! ## A188754.P6314627666434163448

`∩[A031344(n+1), A046022(n+1)]`
-/

namespace A188754.P6314627666434163448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P6314627666434163448

/-! ## A188754.P742677957286698558

`∩[A031344(n+1), A051948(n+1)]`
-/

namespace A188754.P742677957286698558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P742677957286698558

/-! ## A188754.P4419539658312499908

`∩[A031344(n+1), A053813(n+1)]`
-/

namespace A188754.P4419539658312499908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P4419539658312499908

/-! ## A188754.P4512865562273832579

`∩[A031344(n+1), A066050(n+1)]`
-/

namespace A188754.P4512865562273832579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P4512865562273832579

/-! ## A188754.P16263689365776660364

`∩[A031344(n+1), A067126(n+1)]`
-/

namespace A188754.P16263689365776660364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P16263689365776660364

/-! ## A188754.P11969683355270775953

`∩[A031344(n+1), A067133(n+1)]`
-/

namespace A188754.P11969683355270775953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P11969683355270775953

/-! ## A188754.P13839800725502430570

`∩[A031344(n+1), A093515(n+1)]`
-/

namespace A188754.P13839800725502430570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P13839800725502430570

/-! ## A188754.P1777036016564433825

`∩[A031344(n+1), A106118(n+1)]`
-/

namespace A188754.P1777036016564433825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P1777036016564433825

/-! ## A188754.P5275050139509191030

`∩[A031344(n+1), A116974(n+1)]`
-/

namespace A188754.P5275050139509191030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P5275050139509191030

/-! ## A188754.P13261769388694180965

`∩[A031344(n+1), A158611(n+1)]`
-/

namespace A188754.P13261769388694180965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P13261769388694180965

/-! ## A188754.P5360427746206331178

`∩[A031344(n+1), A174090(n+1)]`
-/

namespace A188754.P5360427746206331178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P5360427746206331178

/-! ## A188754.P17310821414388773164

`∩[A031344(n+1), A175787(n+1)]`
-/

namespace A188754.P17310821414388773164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P17310821414388773164

/-! ## A188754.P1910017929251884267

`∩[A031344(n+1), A182986(n+1)]`
-/

namespace A188754.P1910017929251884267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P1910017929251884267

/-! ## A188754.P14241355918928407840

`∩[A031344(n+1), A201879(n+1)]`
-/

namespace A188754.P14241355918928407840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P14241355918928407840

/-! ## A188754.P8797616071705521780

`∩[A031344(n+1), A283599(n+1)]`
-/

namespace A188754.P8797616071705521780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188754.P8797616071705521780

/-!
# A188756: Number of n X n binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188756, there is no canonical definition to state claims against.
-/

/-! ## A188756.P13763929659041662575

`A188763(∑[4*n]+1)`
-/

namespace A188756.P13763929659041662575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188756.P13763929659041662575

/-! ## A188756.P13098157744194228585

`lcm(2, A188763(A001844(n)))`
-/

namespace A188756.P13098157744194228585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188763 (A001844 n).toNat)

end

end A188756.P13098157744194228585

/-! ## A188756.P12544200445514365047

`record[root(A188763(n+1), A143182(n))]`
-/

namespace A188756.P12544200445514365047
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188763 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188756.P12544200445514365047

/-! ## A188756.P10070807666863474347

`record[gcd(A188763(n+1), A323833(n))]`
-/

namespace A188756.P10070807666863474347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188763 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188756.P10070807666863474347

/-! ## A188756.P6717940114271929753

`A000108(C(2, n+2))*A188763(A001844(n))`
-/

namespace A188756.P6717940114271929753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A188763 (A001844 n).toNat

end

end A188756.P6717940114271929753

/-!
# A188757: Number of nX3 binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188757, there is no canonical definition to state claims against.
-/

/-! ## A188757.P18290878238203301333

`A188763(∑[n+2]+4)`
-/

namespace A188757.P18290878238203301333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188757.P18290878238203301333

/-! ## A188757.P14742834868354768804

`A188763(A167614(n+1))+A185246(n)`
-/

namespace A188757.P14742834868354768804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A167614 (n + 1)).toNat + A185246 n

end

end A188757.P14742834868354768804

/-! ## A188757.P5559632935225629688

`A188763(A167614(n+1))+A185284(n)`
-/

namespace A188757.P5559632935225629688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A167614 (n + 1)).toNat + A185284 n

end

end A188757.P5559632935225629688

/-! ## A188757.P10116776005376991074

`A015720(n)*A188763(A167614(n+1))`
-/

namespace A188757.P10116776005376991074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A188763 (A167614 (n + 1)).toNat

end

end A188757.P10116776005376991074

/-! ## A188757.P10816098468876212680

`lcm(A033999(n), A188763(A167614(n+1)))`
-/

namespace A188757.P10816098468876212680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188763 (A167614 (n + 1)).toNat)

end

end A188757.P10816098468876212680

/-!
# A188758: Number of nX4 binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188758, there is no canonical definition to state claims against.
-/

/-! ## A188758.P10465898592906030625

`A188763(A052905(n)+9)`
-/

namespace A188758.P10465898592906030625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A052905 n + 9).toNat

end

end A188758.P10465898592906030625

/-! ## A188758.P3972782443241776008

`A188763(A055999(n)+10)`
-/

namespace A188758.P3972782443241776008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A055999 n + 10).toNat

end

end A188758.P3972782443241776008

/-! ## A188758.P17617338914637238391

`A188763(A167614(n+2)+1)`
-/

namespace A188758.P17617338914637238391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A167614 (n + 2) + 1).toNat

end

end A188758.P17617338914637238391

/-! ## A188758.P2917297461305855062

`A188763(A141214(n+1))`
-/

namespace A188758.P2917297461305855062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A141214 (n + 1)).toNat

end

end A188758.P2917297461305855062

/-! ## A188758.P18070978595979808595

`A188763(A374004(n+1))`
-/

namespace A188758.P18070978595979808595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A374004 (n + 1)).toNat

end

end A188758.P18070978595979808595

/-!
# A188759: Number of nX5 binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188759, there is no canonical definition to state claims against.
-/

/-! ## A188759.P5534799119896696428

`A188763(A155212(n)+13)`
-/

namespace A188759.P5534799119896696428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A155212 n + 13).toNat

end

end A188759.P5534799119896696428

/-! ## A188759.P13372896551660950982

`A188763(A056000(n)+15)`
-/

namespace A188759.P13372896551660950982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A056000 n + 15).toNat

end

end A188759.P13372896551660950982

/-! ## A188759.P17333670025271269217

`A188763(A027379(n+2)+8)`
-/

namespace A188759.P17333670025271269217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A027379 (n + 2) + 8).toNat

end

end A188759.P17333670025271269217

/-! ## A188759.P3657934591451846256

`A188763(eq[6, A131818(n+1)])`
-/

namespace A188759.P3657934591451846256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188759.P3657934591451846256

/-! ## A188759.P17076654308007697120

`A188763(A374005(n+1))`
-/

namespace A188759.P17076654308007697120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A374005 (n + 1)).toNat

end

end A188759.P17076654308007697120

/-!
# A188760: Number of nX6 binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188760, there is no canonical definition to state claims against.
-/

/-! ## A188760.P7029763240920061010

`A188763(eq[7, A131818(n+1)])`
-/

namespace A188760.P7029763240920061010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188760.P7029763240920061010

/-! ## A188760.P305260457643569286

`A188763(A374007(n+1))`
-/

namespace A188760.P305260457643569286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A374007 (n + 1)).toNat

end

end A188760.P305260457643569286

/-! ## A188760.P372332882237424712

`A188763(A052905(n+3))`
-/

namespace A188760.P372332882237424712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A052905 (n + 3)).toNat

end

end A188760.P372332882237424712

/-! ## A188760.P13289701702431178332

`A188763(eq[3, A219347(n)])`
-/

namespace A188760.P13289701702431178332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188760.P13289701702431178332

/-! ## A188760.P15138260122070201217

`A188763(eq[5, A193592(n)])`
-/

namespace A188760.P15138260122070201217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188760.P15138260122070201217

/-!
# A188761: Number of nX7 binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188761, there is no canonical definition to state claims against.
-/

/-! ## A188761.P15014348549127247092

`A188763(eq[11, A066657(n)])`
-/

namespace A188761.P15014348549127247092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188761.P15014348549127247092

/-! ## A188761.P8468035803812335932

`A188763(eq[8, A131818(n+1)])`
-/

namespace A188761.P8468035803812335932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188761.P8468035803812335932

/-! ## A188761.P16243075638293371029

`A188763(A374008(n+1))`
-/

namespace A188761.P16243075638293371029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A374008 (n + 1)).toNat

end

end A188761.P16243075638293371029

/-! ## A188761.P623092856201783608

`A188763(eq[4, A219347(n)])`
-/

namespace A188761.P623092856201783608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188761.P623092856201783608

/-! ## A188761.P12925868876078246473

`A188763(eq[6, A193592(n)])`
-/

namespace A188761.P12925868876078246473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188761.P12925868876078246473

/-!
# A188762: Number of nX8 binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188762, there is no canonical definition to state claims against.
-/

/-! ## A188762.P13820761922774946015

`A188763(eq[13, A066657(n)])`
-/

namespace A188762.P13820761922774946015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188762.P13820761922774946015

/-! ## A188762.P16713204641431134858

`A188763(eq[9, A131818(n+1)])`
-/

namespace A188762.P16713204641431134858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188762.P16713204641431134858

/-! ## A188762.P14037266572971610647

`A188763(A374009(n+1))`
-/

namespace A188762.P14037266572971610647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (A374009 (n + 1)).toNat

end

end A188762.P14037266572971610647

/-! ## A188762.P13297261217958266634

`A188763(eq[5, A219347(n)])`
-/

namespace A188762.P13297261217958266634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188762.P13297261217958266634

/-! ## A188762.P8429543768582769586

`A188763(eq[7, A193592(n)])`
-/

namespace A188762.P8429543768582769586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188762.P8429543768582769586

/-!
# A188763: T(n,k)=Number of nXk binary arrays without the pattern 0 0 1 vertically or horizontally.

The programs for A188763, there is no canonical definition to state claims against.
-/

/-! ## A188763.P3861092489303550619

`A188523(n+1)+A185203(A131131(n))`
-/

namespace A188763.P3861092489303550619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A185203 (A131131 n).toNat

end

end A188763.P3861092489303550619

/-! ## A188763.P16975088327194335899

`A188523(n+1)+A185203(A134066(n))`
-/

namespace A188763.P16975088327194335899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (n + 1) + A185203 (A134066 n).toNat

end

end A188763.P16975088327194335899

/-! ## A188763.P1678872339248371529

`A188851(n+1)+A186747(A174545(n))`
-/

namespace A188763.P1678872339248371529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188851 (n + 1) + A186747 (A174545 n).toNat

end

end A188763.P1678872339248371529

/-! ## A188763.P10683382856818347196

`A268688(A135302(n))+A206785(n+1)`
-/

namespace A188763.P10683382856818347196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268688 (A135302 n).toNat + A206785 (n + 1)

end

end A188763.P10683382856818347196

/-! ## A188763.P7833654695568534829

`xor(A123262(A059328(n)), A206785(n+1))`
-/

namespace A188763.P7833654695568534829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123262 (A059328 n).toNat) (A206785 (n + 1))

end

end A188763.P7833654695568534829

/-!
# A188765: Number of binary strings of length n with no substrings equal to 00000 or 00100.

The programs for A188765, there is no canonical definition to state claims against.
-/

/-! ## A188765.P9298512905817013048

`A164231(n)+A132896(A054360(n+1))`
-/

namespace A188765.P9298512905817013048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164231 n + A132896 (A054360 (n + 1)).toNat

end

end A188765.P9298512905817013048

/-! ## A188765.P2034368190629768631

`A001462(A079120(n))`
-/

namespace A188765.P2034368190629768631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A079120 n).toNat

end

end A188765.P2034368190629768631

/-! ## A188765.P10039375455602556340

`A185283(A220948(n))`
-/

namespace A188765.P10039375455602556340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A220948 n).toNat

end

end A188765.P10039375455602556340

/-! ## A188765.P15852332978718225371

`∑[A000194(A150052(n))]`
-/

namespace A188765.P15852332978718225371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A150052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188765.P15852332978718225371

/-! ## A188765.P5488450871083497744

`∑[A000196(A150065(n))]`
-/

namespace A188765.P5488450871083497744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A150065 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188765.P5488450871083497744

/-!
# A188766: Numbers n such that the number of decompositions of 2n into sum of two primes (counting 1 as a prime) is 1 or a composite.

The programs for A188766, there is no canonical definition to state claims against.
-/

/-! ## A188766.P1120304060216546623

`eq[1, A005171(A001031(n+1))]+1`
-/

namespace A188766.P1120304060216546623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A001031 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188766.P1120304060216546623

/-! ## A188766.P14219993950455545873

`lt[1, A005171(A001031(abs(1-n)+1))+1]`
-/

namespace A188766.P14219993950455545873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A001031 (|1 - (n : ℤ)| + 1).toNat).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A188766.P14219993950455545873

/-! ## A188766.P6624863952117599230

`record[A000027(n+1)*A005171(A001031(n+1))]`
-/

namespace A188766.P6624863952117599230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A005171 (A001031 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188766.P6624863952117599230

/-! ## A188766.P14052453039472878744

`record[A005171(A001031(n+1))*A130446(n+1)]`
-/

namespace A188766.P14052453039472878744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A001031 (n + 1)).toNat * A130446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188766.P14052453039472878744

/-! ## A188766.P6320872416034049054

`record[A005171(A001031(n+1))*A008619(2*n)]`
-/

namespace A188766.P6320872416034049054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A001031 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188766.P6320872416034049054

/-! ## A188766.P13903103606307665313

`record[A005171(A001031(n+1))*A052938(2*n)]`
-/

namespace A188766.P13903103606307665313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A001031 (n + 1)).toNat * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188766.P13903103606307665313

/-! ## A188766.P5116376638251826191

`record[A005171(A001031(n+1))*A065033(2*n+1)]`
-/

namespace A188766.P5116376638251826191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A001031 (n + 1)).toNat * A065033 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188766.P5116376638251826191

/-!
# A188767: Number of n X n binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188767, there is no canonical definition to state claims against.
-/

/-! ## A188767.P17233274870295997550

`A188774(∑[4*n]+1)`
-/

namespace A188767.P17233274870295997550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188767.P17233274870295997550

/-! ## A188767.P17965529375516515733

`or(char[4], A188774(A001844(n)))`
-/

namespace A188767.P17965529375516515733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188774 (A001844 n).toNat)

end

end A188767.P17965529375516515733

/-! ## A188767.P4681030950928497971

`record[A003982(n)*A188774(n+1)]`
-/

namespace A188767.P4681030950928497971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188767.P4681030950928497971

/-! ## A188767.P14168044058300947389

`record[gcd(A114327(n), A188774(n+1))]`
-/

namespace A188767.P14168044058300947389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A188774 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188767.P14168044058300947389

/-! ## A188767.P5293317298782671681

`A152847(n)*A188774(A001844(n))`
-/

namespace A188767.P5293317298782671681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A188774 (A001844 n).toNat

end

end A188767.P5293317298782671681

/-!
# A188768: Number of nX3 binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188768, there is no canonical definition to state claims against.
-/

/-! ## A188768.P13880541532146879514

`A206889(∑[n+2]+4)`
-/

namespace A188768.P13880541532146879514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188768.P13880541532146879514

/-! ## A188768.P9022751834634622272

`A206889(A167614(n+1))+A178798(n)`
-/

namespace A188768.P9022751834634622272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167614 (n + 1)).toNat + A178798 n

end

end A188768.P9022751834634622272

/-! ## A188768.P4076166334346563116

`A206889(A167614(n+1))+A185284(n)`
-/

namespace A188768.P4076166334346563116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167614 (n + 1)).toNat + A185284 n

end

end A188768.P4076166334346563116

/-! ## A188768.P4854325970378118658

`or(A000007(n), A206889(A167614(n+1)))`
-/

namespace A188768.P4854325970378118658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206889 (A167614 (n + 1)).toNat)

end

end A188768.P4854325970378118658

/-! ## A188768.P10290091761869033655

`or(A025465(n), A206889(A167614(n+1)))`
-/

namespace A188768.P10290091761869033655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A206889 (A167614 (n + 1)).toNat)

end

end A188768.P10290091761869033655

/-!
# A188769: Number of nX4 binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188769, there is no canonical definition to state claims against.
-/

/-! ## A188769.P15625975700023181947

`A188774(A141214(n)+7)`
-/

namespace A188769.P15625975700023181947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A141214 n + 7).toNat

end

end A188769.P15625975700023181947

/-! ## A188769.P6549242361667365356

`A188774(A052905(n)+9)`
-/

namespace A188769.P6549242361667365356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A052905 n + 9).toNat

end

end A188769.P6549242361667365356

/-! ## A188769.P12666568596917541761

`A188774(A055999(n)+10)`
-/

namespace A188769.P12666568596917541761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A055999 n + 10).toNat

end

end A188769.P12666568596917541761

/-! ## A188769.P5573400344543295452

`A188774(A167614(n+2)+1)`
-/

namespace A188769.P5573400344543295452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A167614 (n + 2) + 1).toNat

end

end A188769.P5573400344543295452

/-! ## A188769.P6929332175242922969

`A188774(Δ[A264443(n)-n²])`
-/

namespace A188769.P6929332175242922969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (f1 (n + 1) - f1 n).toNat

end

end A188769.P6929332175242922969

/-!
# A188770: Number of nX5 binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188770, there is no canonical definition to state claims against.
-/

/-! ## A188770.P1201569901869867131

`A188774(A056000(n)+15)`
-/

namespace A188770.P1201569901869867131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A056000 n + 15).toNat

end

end A188770.P1201569901869867131

/-! ## A188770.P48416708152469305

`A188774(A167614(n+3)+2)`
-/

namespace A188770.P48416708152469305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A167614 (n + 3) + 2).toNat

end

end A188770.P48416708152469305

/-! ## A188770.P17847990855454600155

`A188774(A141214(n+1)+8)`
-/

namespace A188770.P17847990855454600155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A141214 (n + 1) + 8).toNat

end

end A188770.P17847990855454600155

/-! ## A188770.P13963336445239241527

`A188774(A052905(n+1)+10)`
-/

namespace A188770.P13963336445239241527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A052905 (n + 1) + 10).toNat

end

end A188770.P13963336445239241527

/-! ## A188770.P6332969356105934730

`A188774(Δ[A264443(n)])`
-/

namespace A188770.P6332969356105934730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (f1 (n + 1) - f1 n).toNat

end

end A188770.P6332969356105934730

/-!
# A188771: Number of nX6 binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188771, there is no canonical definition to state claims against.
-/

/-! ## A188771.P13580670865245079134

`A188774(A141214(n+2)+9)`
-/

namespace A188771.P13580670865245079134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A141214 (n + 2) + 9).toNat

end

end A188771.P13580670865245079134

/-! ## A188771.P4266342820910933159

`A188774(eq[7, A131818(n+1)])`
-/

namespace A188771.P4266342820910933159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188771.P4266342820910933159

/-! ## A188771.P6074402682022182797

`A188774(A374007(n+1))`
-/

namespace A188771.P6074402682022182797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A374007 (n + 1)).toNat

end

end A188771.P6074402682022182797

/-! ## A188771.P4789599077914842541

`A188774(A052905(n+3))`
-/

namespace A188771.P4789599077914842541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A052905 (n + 3)).toNat

end

end A188771.P4789599077914842541

/-! ## A188771.P3348946582641188448

`A188774(eq[5, A193592(n)])`
-/

namespace A188771.P3348946582641188448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188771.P3348946582641188448

/-!
# A188772: Number of n X 7 binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188772, there is no canonical definition to state claims against.
-/

/-! ## A188772.P981941932157353972

`A188774(A000217(n+6)+7)`
-/

namespace A188772.P981941932157353972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A000217 (n + 6) + 7).toNat

end

end A188772.P981941932157353972

/-! ## A188772.P9599624065892028959

`A188774(eq[8, A131818(n+1)])`
-/

namespace A188772.P9599624065892028959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188772.P9599624065892028959

/-! ## A188772.P18123713177808731653

`A188774(A374008(n+1))`
-/

namespace A188772.P18123713177808731653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A374008 (n + 1)).toNat

end

end A188772.P18123713177808731653

/-! ## A188772.P3075068895442746108

`A188774(A055999(n+4))`
-/

namespace A188772.P3075068895442746108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A055999 (n + 4)).toNat

end

end A188772.P3075068895442746108

/-! ## A188772.P17744793336599414034

`A188774(eq[6, A193592(n)])`
-/

namespace A188772.P17744793336599414034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188772.P17744793336599414034

/-!
# A188773: Number of nX8 binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188773, there is no canonical definition to state claims against.
-/

/-! ## A188773.P4680270606848107391

`A188774(eq[9, A131818(n+1)])`
-/

namespace A188773.P4680270606848107391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188773.P4680270606848107391

/-! ## A188773.P12972881995252619896

`A188774(A374009(n+1))`
-/

namespace A188773.P12972881995252619896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A374009 (n + 1)).toNat

end

end A188773.P12972881995252619896

/-! ## A188773.P5521995599864342271

`A188774(eq[7, A193592(n)])`
-/

namespace A188773.P5521995599864342271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188773.P5521995599864342271

/-! ## A188773.P5187422580540719996

`A188774(A155212(n+4)+1)`
-/

namespace A188773.P5187422580540719996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (A155212 (n + 4) + 1).toNat

end

end A188773.P5187422580540719996

/-! ## A188773.P1144930615292584247

`A188774(eq[64, A057728(n+1)])`
-/

namespace A188773.P1144930615292584247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188773.P1144930615292584247

/-!
# A188774: T(n,k)=Number of nXk binary arrays without the pattern 0 1 0 vertically or horizontally.

The programs for A188774, there is no canonical definition to state claims against.
-/

/-! ## A188774.P17220286579126572759

`A206889(n+1)+A025465(A132832(n))`
-/

namespace A188774.P17220286579126572759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (n + 1) + A025465 (A132832 n).toNat

end

end A188774.P17220286579126572759

/-! ## A188774.P8461295773012591034

`A206889(n+1)+A025465(A276658(n))`
-/

namespace A188774.P8461295773012591034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (n + 1) + A025465 (A276658 n).toNat

end

end A188774.P8461295773012591034

/-! ## A188774.P16477499286694481438

`A336355(A007481(n))+A206889(n+1)`
-/

namespace A188774.P16477499286694481438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A007481 n).toNat + A206889 (n + 1)

end

end A188774.P16477499286694481438

/-! ## A188774.P737988171407588181

`A336355(A028909(n))+A206889(n+1)`
-/

namespace A188774.P737988171407588181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A028909 n).toNat + A206889 (n + 1)

end

end A188774.P737988171407588181

/-! ## A188774.P3396495372070301522

`A206889(n+1)-A178798(A100861(n))`
-/

namespace A188774.P3396495372070301522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (n + 1) - A178798 (A100861 n).toNat

end

end A188774.P3396495372070301522

/-!
# A188776: Numbers n such that Sum_{k=1..n} k^k == 1 (mod n).

The programs for A188776, there is no canonical definition to state claims against.
-/

/-! ## A188776.P7813664315113928627

`A349156(A093397(n+2))+A093397(n+2)`
-/

namespace A188776.P7813664315113928627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349156 (A093397 (n + 2)).toNat + A093397 (n + 2)

end

end A188776.P7813664315113928627

/-!
# A188777: T(n,k) = Number of n-turn bishop's tours on a k X k board summed over all starting positions.

The programs for A188777, there is no canonical definition to state claims against.
-/

/-! ## A188777.P15478588691768169131

`A187046(n+1)+A185215(A035042(n))`
-/

namespace A188777.P15478588691768169131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187046 (n + 1) + A185215 (A035042 n).toNat

end

end A188777.P15478588691768169131

/-! ## A188777.P12899350323958714132

`A299302(A299321(n+1))+A187046(n+1)`
-/

namespace A188777.P12899350323958714132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299302 (A299321 (n + 1)).toNat + A187046 (n + 1)

end

end A188777.P12899350323958714132

/-!
# A188778: Number of 3-turn bishop's tours on an n X n board summed over all starting positions.

The programs for A188778, there is no canonical definition to state claims against.
-/

/-! ## A188778.P3867550815486276709

`A188777(∑[n+2]+4)`
-/

namespace A188778.P3867550815486276709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188778.P3867550815486276709

/-! ## A188778.P1477367827036779813

`lcm(2, A188777(A167614(n+1)))`
-/

namespace A188778.P1477367827036779813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188777 (A167614 (n + 1)).toNat)

end

end A188778.P1477367827036779813

/-! ## A188778.P3268728942488875612

`A188777(A167614(n+1))+A011739(n)`
-/

namespace A188778.P3268728942488875612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A167614 (n + 1)).toNat + A011739 n

end

end A188778.P3268728942488875612

/-! ## A188778.P9177603100350393088

`A188777(A167614(n+1))+A025438(n)`
-/

namespace A188778.P9177603100350393088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A167614 (n + 1)).toNat + A025438 n

end

end A188778.P9177603100350393088

/-! ## A188778.P15821582442665981667

`A188777(A167614(n+1))+A185238(n)`
-/

namespace A188778.P15821582442665981667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A167614 (n + 1)).toNat + A185238 n

end

end A188778.P15821582442665981667

/-!
# A188779: Number of 4-turn bishop's tours on an n X n board summed over all starting positions.

The programs for A188779, there is no canonical definition to state claims against.
-/

/-! ## A188779.P4546910727788238037

`A188777(∑[n+3]+7)`
-/

namespace A188779.P4546910727788238037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188779.P4546910727788238037

/-!
# A188780: Number of 5-turn bishop's tours on an n X n board summed over all starting positions.

The programs for A188780, there is no canonical definition to state claims against.
-/

/-! ## A188780.P2965529184371340426

`A188777(∑[n+4]+11)`
-/

namespace A188780.P2965529184371340426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A188780.P2965529184371340426

/-! ## A188780.P16809549347463497349

`A188777(A000217(n+4)+5)+A085860(n)`
-/

namespace A188780.P16809549347463497349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A000217 (n + 4) + 5).toNat + A085860 n

end

end A188780.P16809549347463497349

/-! ## A188780.P10556793145686142855

`A188777(A000217(n+4)+5)+A000035(2*n)`
-/

namespace A188780.P10556793145686142855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A000217 (n + 4) + 5).toNat + A000035 (2 * n)

end

end A188780.P10556793145686142855

/-!
# A188781: Number of 6-turn bishop's tours on an n X n board summed over all starting positions.

The programs for A188781, there is no canonical definition to state claims against.
-/

/-! ## A188781.P15788335534507781564

`A188777(A166136(n+4))`
-/

namespace A188781.P15788335534507781564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A166136 (n + 4)).toNat

end

end A188781.P15788335534507781564

/-! ## A188781.P14183664535348406220

`A188777(A056115(n)+21)`
-/

namespace A188781.P14183664535348406220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A056115 n + 21).toNat

end

end A188781.P14183664535348406220

/-! ## A188781.P2928300407189534768

`A188777(A167499(n+4)+1)`
-/

namespace A188781.P2928300407189534768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A167499 (n + 4) + 1).toNat

end

end A188781.P2928300407189534768

/-! ## A188781.P8275813515207855896

`A188777(A077169(n+6)+1)`
-/

namespace A188781.P8275813515207855896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A077169 (n + 6) + 1).toNat

end

end A188781.P8275813515207855896

/-! ## A188781.P4094067016806624257

`A188777(A000217(n+5)+6)`
-/

namespace A188781.P4094067016806624257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A000217 (n + 5) + 6).toNat

end

end A188781.P4094067016806624257

/-!
# A188782: Number of 7-turn bishop's tours on an n X n board summed over all starting positions.

The programs for A188782, there is no canonical definition to state claims against.
-/

/-! ## A188782.P11532775936802187511

`A188777(A056119(n)+28)`
-/

namespace A188782.P11532775936802187511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A056119 n + 28).toNat

end

end A188782.P11532775936802187511

/-! ## A188782.P13835416476755636015

`A188777(eq[11, A066657(n)])`
-/

namespace A188782.P13835416476755636015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188782.P13835416476755636015

/-! ## A188782.P11325938764789500271

`A188777(A166136(n+5)+1)`
-/

namespace A188782.P11325938764789500271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A166136 (n + 5) + 1).toNat

end

end A188782.P11325938764789500271

/-! ## A188782.P13638977769390563818

`A188777(A167614(n+5)+4)`
-/

namespace A188782.P13638977769390563818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A167614 (n + 5) + 4).toNat

end

end A188782.P13638977769390563818

/-! ## A188782.P3449223397567969198

`A188777(A253145(n+5)+7)`
-/

namespace A188782.P3449223397567969198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A253145 (n + 5) + 7).toNat

end

end A188782.P3449223397567969198

/-!
# A188783: Number of 8-turn bishop's tours on an n X n board summed over all starting positions.

The programs for A188783, there is no canonical definition to state claims against.
-/

/-! ## A188783.P722086284161175991

`A188777(eq[13, A066657(n)])`
-/

namespace A188783.P722086284161175991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188783.P722086284161175991

/-! ## A188783.P176673985159281573

`A188777(A000217(n+7)+8)`
-/

namespace A188783.P176673985159281573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (A000217 (n + 7) + 8).toNat

end

end A188783.P176673985159281573

/-! ## A188783.P9911405901800265647

`A188777(eq[9, A131818(n+1)])`
-/

namespace A188783.P9911405901800265647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188783.P9911405901800265647

/-!
# A188784: T(n,k) = Number of n-step self-avoiding walks on a k X k X k X k 4-cube summed over all starting positions.

The programs for A188784, there is no canonical definition to state claims against.
-/

/-! ## A188784.P1767085388494011985

`A187189(A270436(n+1))^2`
-/

namespace A188784.P1767085388494011985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187189 (A270436 (n + 1)).toNat ^ 2

end

end A188784.P1767085388494011985

/-! ## A188784.P11226923125689680426

`A100196(A187189(n+1)^3)`
-/

namespace A188784.P11226923125689680426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A187189 (n + 1) ^ 3).toNat

end

end A188784.P11226923125689680426

/-! ## A188784.P15159498896716069367

`A187046(n+1)^A249388(n)`
-/

namespace A188784.P15159498896716069367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187046 (n + 1) : ℚ) ^ (A249388 n : ℤ)

end

end A188784.P15159498896716069367

/-!
# A188785: Number of 2-step self-avoiding walks on an n X n X n X n 4-cube summed over all starting positions.

The programs for A188785, the canonical program `A188785.P7534049700647263079` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188785 has offset 1).

The definition of A188785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188785.P7534049700647263079

`n*(2*(n+1))^3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188785

/-- `n*(2*(n+1))^3` -/
def P7534049700647263079.Spec : Prop :=
  ∀ n, (P7534049700647263079.a n : ℤ) = A188785 (n + 1)

theorem P7534049700647263079.correct : P7534049700647263079.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel]

end A188785

/-! ## A188785.P5188012451518368277

`-(n*(2*xor(n, -1))^3)`
-/

namespace A188785.P5188012451518368277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (2 * Int.xor (n : ℤ) (-1)) ^ 3)

end

end A188785.P5188012451518368277

namespace A188785

/-- `-(n*(2*xor(n, -1))^3)` -/
def P5188012451518368277.Spec : Prop :=
  ∀ n, P5188012451518368277.a n = A188785 (n + 1)

end A188785

/-! ## A188785.P7908447186327145440

`lcm(2, (4*(n+1))²*∑[n])`
-/

namespace A188785.P7908447186327145440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((4 * (n + 1)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A188785.P7908447186327145440

namespace A188785

/-- `lcm(2, (4*(n+1))²*∑[n])` -/
def P7908447186327145440.Spec : Prop :=
  ∀ n, (P7908447186327145440.a n : ℤ) = A188785 (n + 1)

end A188785

/-! ## A188785.P1456240086084225773

`C(2*(2*n+1)*(n+1), 2)-(n+1)`
-/

namespace A188785.P1456240086084225773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * ((2 * n + 1) * (n + 1))) 2 : ℤ) - (n + 1 : ℤ)

end

end A188785.P1456240086084225773

namespace A188785

/-- `C(2*(2*n+1)*(n+1), 2)-(n+1)` -/
def P1456240086084225773.Spec : Prop :=
  ∀ n, P1456240086084225773.a n = A188785 (n + 1)

theorem P1456240086084225773.correct : P1456240086084225773.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P1456240086084225773.a, A188785.P7534049700647263079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P4942687760323803063

`A063249(n+1)-(n+1)`
-/

namespace A188785.P4942687760323803063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063249 (n + 1) - (n + 1 : ℤ)

end

end A188785.P4942687760323803063

namespace A188785

/-- `A063249(n+1)-(n+1)` -/
def P4942687760323803063.Spec : Prop :=
  ∀ n, P4942687760323803063.a n = A188785 (n + 1)

theorem P4942687760323803063.correct : P4942687760323803063.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P4942687760323803063.a, A188785.P7534049700647263079.a, A063249, A063249.P16857193437308004342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P11306475741566300734

`n*Δ[A046092(n)²]/2`
-/

namespace A188785.P11306475741566300734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A188785.P11306475741566300734

namespace A188785

/-- `n*Δ[A046092(n)²]/2` -/
def P11306475741566300734.Spec : Prop :=
  ∀ n, P11306475741566300734.a n = (A188785 (n + 1) : ℚ)

theorem P11306475741566300734.correct : P11306475741566300734.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P11306475741566300734.f1, A188785.P11306475741566300734.a, A188785.P7534049700647263079.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P17514658897927453912

`∑[2*(A046142(n+1)-1)]`
-/

namespace A188785.P17514658897927453912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046142 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188785.P17514658897927453912

namespace A188785

/-- `∑[2*(A046142(n+1)-1)]` -/
def P17514658897927453912.Spec : Prop :=
  ∀ n, P17514658897927453912.a n = A188785 (n + 1)

end A188785

/-! ## A188785.P5266703798278182405

`A192796(n+1)+A185096(n)`
-/

namespace A188785.P5266703798278182405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192796 (n + 1) + A185096 n

end

end A188785.P5266703798278182405

namespace A188785

/-- `A192796(n+1)+A185096(n)` -/
def P5266703798278182405.Spec : Prop :=
  ∀ n, P5266703798278182405.a n = A188785 (n + 1)

theorem P5266703798278182405.correct : P5266703798278182405.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P5266703798278182405.a, A188785.P7534049700647263079.a, A185096, A185096.P3778731296284897470.a, A192796, A192796.P4390862184938156974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P2074692104486302247

`A160538(n+1)+A160538(n+1)`
-/

namespace A188785.P2074692104486302247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160538 (n + 1) + A160538 (n + 1)

end

end A188785.P2074692104486302247

namespace A188785

/-- `A160538(n+1)+A160538(n+1)` -/
def P2074692104486302247.Spec : Prop :=
  ∀ n, P2074692104486302247.a n = A188785 (n + 1)

theorem P2074692104486302247.correct : P2074692104486302247.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P2074692104486302247.a, A188785.P7534049700647263079.a, A160538, A160538.P2096202092056556085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P12006964270878851699

`A173121(n+1)+A060300(n)`
-/

namespace A188785.P12006964270878851699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173121 (n + 1) + A060300 n

end

end A188785.P12006964270878851699

namespace A188785

/-- `A173121(n+1)+A060300(n)` -/
def P12006964270878851699.Spec : Prop :=
  ∀ n, P12006964270878851699.a n = A188785 (n + 1)

theorem P12006964270878851699.correct : P12006964270878851699.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P12006964270878851699.a, A188785.P7534049700647263079.a, A060300, A060300.P1314956441552645560.a, A173121, A173121.P5048505696504643898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P7983651559640775152

`A001105(n+1)*A016754(n)-A001105(n+1)`
-/

namespace A188785.P7983651559640775152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) * A016754 n - A001105 (n + 1)

end

end A188785.P7983651559640775152

namespace A188785

/-- `A001105(n+1)*A016754(n)-A001105(n+1)` -/
def P7983651559640775152.Spec : Prop :=
  ∀ n, P7983651559640775152.a n = A188785 (n + 1)

theorem P7983651559640775152.correct : P7983651559640775152.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P7983651559640775152.a, A188785.P7534049700647263079.a, A001105, A001105.P6098599260439307493.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P17057799351847505866

`∑[A005917(2*n+1)-1]`
-/

namespace A188785.P17057799351847505866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188785.P17057799351847505866

namespace A188785

/-- `∑[A005917(2*n+1)-1]` -/
def P17057799351847505866.Spec : Prop :=
  ∀ n, P17057799351847505866.a n = A188785 (n + 1)

end A188785

/-! ## A188785.P7208322359527968541

`A062392(2*n+1)-(n+1)`
-/

namespace A188785.P7208322359527968541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 (2 * n + 1) - (n + 1 : ℤ)

end

end A188785.P7208322359527968541

namespace A188785

/-- `A062392(2*n+1)-(n+1)` -/
def P7208322359527968541.Spec : Prop :=
  ∀ n, P7208322359527968541.a n = A188785 (n + 1)

end A188785

/-! ## A188785.P17536107610090208501

`∑[A268201(2*n+1)+2*n]`
-/

namespace A188785.P17536107610090208501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268201 (2 * n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188785.P17536107610090208501

namespace A188785

/-- `∑[A268201(2*n+1)+2*n]` -/
def P17536107610090208501.Spec : Prop :=
  ∀ n, P17536107610090208501.a n = A188785 (n + 1)

end A188785

/-! ## A188785.P8404091770422294192

`A163102(2*n+1)-A001105(n+1)`
-/

namespace A188785.P8404091770422294192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 (2 * n + 1) - A001105 (n + 1)

end

end A188785.P8404091770422294192

namespace A188785

/-- `A163102(2*n+1)-A001105(n+1)` -/
def P8404091770422294192.Spec : Prop :=
  ∀ n, P8404091770422294192.a n = A188785 (n + 1)

end A188785

/-! ## A188785.P7536914094015114222

`(A004277(2*n+1)+2)²*A046092(n)/4`
-/

namespace A188785.P7536914094015114222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004277 (2 * n + 1) + 2) ^ 2 * A046092 n : ℚ) / 4

end

end A188785.P7536914094015114222

namespace A188785

/-- `(A004277(2*n+1)+2)²*A046092(n)/4` -/
def P7536914094015114222.Spec : Prop :=
  ∀ n, P7536914094015114222.a n = (A188785 (n + 1) : ℚ)

theorem P7536914094015114222.correct : P7536914094015114222.Spec := by
  intro n
  simp only [A188785, Nat.add_sub_cancel, A188785.P7536914094015114222.a, A188785.P7534049700647263079.a, A004277, A004277.P16255821370285667660.a, A046092, A046092.P16411658895297056450.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188785

/-! ## A188785.P9581155366596655053

`n*A191495(2*n+1)/A191484(2*n+1)`
-/

namespace A188785.P9581155366596655053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A191495 (2 * n + 1) : ℚ) / (A191484 (2 * n + 1) : ℚ)

end

end A188785.P9581155366596655053

namespace A188785

/-- `n*A191495(2*n+1)/A191484(2*n+1)` -/
def P9581155366596655053.Spec : Prop :=
  ∀ n, P9581155366596655053.a n = (A188785 (n + 1) : ℚ)

end A188785

/-! ## A188785.P17802808393396230549

`n*A191495(2*n+1)/A191902(2*n+1)`
-/

namespace A188785.P17802808393396230549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A191495 (2 * n + 1) : ℚ) / (A191902 (2 * n + 1) : ℚ)

end

end A188785.P17802808393396230549

namespace A188785

/-- `n*A191495(2*n+1)/A191902(2*n+1)` -/
def P17802808393396230549.Spec : Prop :=
  ∀ n, P17802808393396230549.a n = (A188785 (n + 1) : ℚ)

end A188785

/-! ## A188785.P6122341681633187649

`n*A306412(2*(n+1))/A238533(2*(n+1))`
-/

namespace A188785.P6122341681633187649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A306412 (2 * (n + 1)) : ℚ) / (A238533 (2 * (n + 1)) : ℚ)

end

end A188785.P6122341681633187649

namespace A188785

/-- `n*A306412(2*(n+1))/A238533(2*(n+1))` -/
def P6122341681633187649.Spec : Prop :=
  ∀ n, P6122341681633187649.a n = (A188785 (n + 1) : ℚ)

end A188785

/-! ## A188785.P12768630929461132832

`8*n*A000578(n+1)+1-A177704(2*n)`
-/

namespace A188785.P12768630929461132832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℤ) * A000578 (n + 1)) + 1 - A177704 (2 * n)

end

end A188785.P12768630929461132832

namespace A188785

/-- `8*n*A000578(n+1)+1-A177704(2*n)` -/
def P12768630929461132832.Spec : Prop :=
  ∀ n, P12768630929461132832.a n = A188785 (n + 1)

end A188785

/-!
# A188786: Number of 3-step self-avoiding walks on an n X n X n X n 4-cube summed over all starting positions.

The programs for A188786, there is no canonical definition to state claims against.
-/

/-! ## A188786.P17277658589583319889

`A188784(∑[n+2]+4)`
-/

namespace A188786.P17277658589583319889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188784 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188786.P17277658589583319889

/-! ## A188786.P15549140644139452302

`lcm(2, A188784(A167614(n+1)))`
-/

namespace A188786.P15549140644139452302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188784 (A167614 (n + 1)).toNat)

end

end A188786.P15549140644139452302

/-! ## A188786.P15622991568311800332

`A188784(A167614(n+1))+A006926(n)`
-/

namespace A188786.P15622991568311800332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188784 (A167614 (n + 1)).toNat + A006926 n

end

end A188786.P15622991568311800332

/-!
# A188787: Number of 4-step self-avoiding walks on an n X n X n X n 4-cube summed over all starting positions.

The programs for A188787, there is no canonical definition to state claims against.
-/

/-! ## A188787.P13719846248131109214

`A188784(∑[n+3]+6-log2(1/2))`
-/

namespace A188787.P13719846248131109214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188784 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A188787.P13719846248131109214

/-! ## A188787.P12270541496237692526

`A188784(A167614(n+2)+1)+A000579(n)`
-/

namespace A188787.P12270541496237692526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188784 (A167614 (n + 2) + 1).toNat + A000579 n

end

end A188787.P12270541496237692526

/-!
# A188788: Number of 5-step self-avoiding walks on an n X n X n X n 4-cube summed over all starting positions.

The programs for A188788, there is no canonical definition to state claims against.
-/

/-! ## A188788.P10180179766532856945

`A188784(∑[n+4]+11)`
-/

namespace A188788.P10180179766532856945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188784 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A188788.P10180179766532856945

/-!
# A188794: a(n) is the smallest integer k >= 2 such that the number of divisors d>1 of n-k with k|(n-d) equals A188550(n).

The programs for A188794, there is no canonical definition to state claims against.
-/

/-! ## A188794.P2606057419411462454

`p?[A319689(A091242(n+1)²)]`
-/

namespace A188794.P2606057419411462454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 (A091242 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188794.P2606057419411462454

/-! ## A188794.P15158054599751186984

`p?[A237451(n+1)-A145326(n+1)]`
-/

namespace A188794.P15158054599751186984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1) - A145326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188794.P15158054599751186984

/-! ## A188794.P17820693539904135664

`A244445(A208575(n)!)`
-/

namespace A188794.P17820693539904135664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244445 (Nat.factorial (A208575 n).toNat)

end

end A188794.P17820693539904135664

/-! ## A188794.P14174953891957021824

`A244445(A355037(n)!)`
-/

namespace A188794.P14174953891957021824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244445 (Nat.factorial (A355037 n).toNat)

end

end A188794.P14174953891957021824

/-! ## A188794.P5903956574359505015

`A248596(5^A208575(n))`
-/

namespace A188794.P5903956574359505015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248596 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A208575 n : ℤ))).toNat

end

end A188794.P5903956574359505015

/-!
# A188795: a(n) counts all integers k in [2,floor(sqrt(n))] such that the number of divisors d>1 of n-k with k|(n-d) equals A188550(n).

The programs for A188795, there is no canonical definition to state claims against.
-/

/-! ## A188795.P11527150494659773728

`A095684(abs(A204455(n+1)-A231931(n))+1)`
-/

namespace A188795.P11527150494659773728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (|A204455 (n + 1) - A231931 n| + 1).toNat

end

end A188795.P11527150494659773728

/-! ## A188795.P12469859774892655971

`A353849(A133084(2*(n+1))+A010815(2*n))`
-/

namespace A188795.P12469859774892655971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A133084 (2 * (n + 1)) + A010815 (2 * n)).toNat

end

end A188795.P12469859774892655971

/-!
# A188798: Expansion of Weierstrass sigma function where g2 = 0, g3 = 1/2.

The programs for A188798, there is no canonical definition to state claims against.
-/

/-! ## A188798.P14404018982851617022

`A188797(∑[n]+n)`
-/

namespace A188798.P14404018982851617022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A188798.P14404018982851617022

/-! ## A188798.P10684738605511003450

`or(A000007(n), A188797(A000096(n)))`
-/

namespace A188798.P10684738605511003450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A188797 (A000096 n).toNat)

end

end A188798.P10684738605511003450

/-! ## A188798.P14275799084563010624

`A188797(A000096(n))+A000007(A301040(n))`
-/

namespace A188798.P14275799084563010624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (A000096 n).toNat + A000007 (A301040 n).toNat

end

end A188798.P14275799084563010624

/-! ## A188798.P8315602629059530569

`A188797(A000096(n))+A000007(A346969(n+1))`
-/

namespace A188798.P8315602629059530569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (A000096 n).toNat + A000007 (A346969 (n + 1)).toNat

end

end A188798.P8315602629059530569

/-! ## A188798.P3976823559989829683

`A000045(A020639(2*(n+1)))*A188797(A000096(n))`
-/

namespace A188798.P3976823559989829683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A188797 (A000096 n).toNat

end

end A188798.P3976823559989829683

/-!
# A188799: Row 1 of array in A188797.

The programs for A188799, there is no canonical definition to state claims against.
-/

/-! ## A188799.P5278298378007395317

`A188798(n+1)/3`
-/

namespace A188799.P5278298378007395317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188798 (n + 1) : ℚ) / 3

end

end A188799.P5278298378007395317

/-! ## A188799.P396770299460129875

`Δ[∑[A188798(n)]/3]`
-/

namespace A188799.P396770299460129875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188798 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188799.P396770299460129875

/-! ## A188799.P1476643670574939204

`A188797(∑[n+2]-1)`
-/

namespace A188799.P1476643670574939204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188797 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A188799.P1476643670574939204

/-! ## A188799.P6391300642699973264

`A188797(∑[n+2])/3`
-/

namespace A188799.P6391300642699973264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188797 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A188799.P6391300642699973264

/-! ## A188799.P15939104716797559622

`A000108(gcd(n, n+1))*A188797(A034856(n+1))`
-/

namespace A188799.P15939104716797559622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A188797 (A034856 (n + 1)).toNat

end

end A188799.P15939104716797559622

