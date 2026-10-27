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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A269700: a(n) = floor( Product_{k>=0} (1 + n/k!) ).

The programs for A269700, there is no canonical definition to state claims against.
-/

/-! ## A269700.P15892658636871956

`A071523(A080960(n))`
-/

namespace A269700.P15892658636871956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071523 (A080960 n).toNat

end

end A269700.P15892658636871956

/-! ## A269700.P14252022043596296965

`A071523(A000566(2^n))`
-/

namespace A269700.P14252022043596296965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071523 (A000566 (2 ^ n)).toNat

end

end A269700.P14252022043596296965

/-!
# A269701: Cyclic Fibonacci sequence, restricted to maximum=6.

The programs for A269701, the canonical program `A269701.P8912005130756508373` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269701 has offset 0).

The definition of A269701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269701.P8912005130756508373

`A053828(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269701

/-- `A053828(a(n-1)+a(n-2))` -/
def P8912005130756508373.Spec : Prop :=
  ∀ n, P8912005130756508373.a n = A269701 n

theorem P8912005130756508373.correct : P8912005130756508373.Spec := by
  intro n
  simp only [A269701]

end A269701

/-!
# A269702: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 243", based on the 5-celled von Neumann neighborhood.

The programs for A269702, there is no canonical definition to state claims against.
-/

/-! ## A269702.P8073850822226448807

`A271003(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269702.P8073850822226448807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271003 (n - 1) + a (n - 1)

end

end A269702.P8073850822226448807

/-! ## A269702.P3081775515538914332

`Δ[A271002(n)]-A271003(n)`
-/

namespace A269702.P3081775515538914332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271003 n

end

end A269702.P3081775515538914332

/-! ## A269702.P1977517842589746466

`A271003(n-1)-(A033999(n)²-2)*a(n-1)` with `a(0)=1`
-/

namespace A269702.P1977517842589746466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271003 (n - 1) - (A033999 n ^ 2 - 2) * a (n - 1)

end

end A269702.P1977517842589746466

/-! ## A269702.P1190162528395781693

`A271002(n+1)-(A271003(n)+A271002(n))`
-/

namespace A269702.P1190162528395781693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271002 (n + 1) - (A271003 n + A271002 n)

end

end A269702.P1190162528395781693

/-! ## A269702.P11304019026515549239

`A056699(or(1, ∑[A271003(n)]-A271003(n)))`
-/

namespace A269702.P11304019026515549239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - A271003 n)).toNat

end

end A269702.P11304019026515549239

/-!
# A269703: Numbers k such that prime(k) == 1 (mod 7).

The programs for A269703, there is no canonical definition to state claims against.
-/

/-! ## A269703.P11807812959022019913

`A000720(p?[7*n+1])`
-/

namespace A269703.P11807812959022019913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P11807812959022019913

/-! ## A269703.P18420461089408409712

`A003963(p?[7*n+1])`
-/

namespace A269703.P18420461089408409712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P18420461089408409712

/-! ## A269703.P377822568223004659

`A026099(p?[7*n+1])`
-/

namespace A269703.P377822568223004659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P377822568223004659

/-! ## A269703.P5031359697829135393

`A026233(p?[7*n+1])`
-/

namespace A269703.P5031359697829135393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P5031359697829135393

/-! ## A269703.P7588120238284960887

`A026238(p?[7*n+1])`
-/

namespace A269703.P7588120238284960887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P7588120238284960887

/-! ## A269703.P4203521536512451078

`A049084(p?[7*n+1])`
-/

namespace A269703.P4203521536512451078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P4203521536512451078

/-! ## A269703.P9346569193767172330

`A056239(p?[7*n+1])`
-/

namespace A269703.P9346569193767172330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P9346569193767172330

/-! ## A269703.P9504250366521770393

`A230980(p?[7*n+1])`
-/

namespace A269703.P9504250366521770393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269703.P9504250366521770393

/-! ## A269703.P5643386586797971978

`eq[1, A039705(n+1)]+1`
-/

namespace A269703.P5643386586797971978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269703.P5643386586797971978

/-! ## A269703.P14602291523691389970

`eq[1, A000040(n+1)%7]+1`
-/

namespace A269703.P14602291523691389970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269703.P14602291523691389970

/-!
# A269704: Numbers k such that prime(k) == 1 (mod 8).

The programs for A269704, the canonical program `A269704.P3345989859340557520` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269704 has offset 1).

The definition of A269704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269704.P3345989859340557520

`∩[A024704(n+1), A080147(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A269704

/-- `∩[A024704(n+1), A080147(n+1)]` -/
def P3345989859340557520.Spec : Prop :=
  ∀ n, (P3345989859340557520.a n : ℤ) = A269704 (n + 1)

theorem P3345989859340557520.correct : P3345989859340557520.Spec := by
  intro n
  simp only [A269704, Nat.add_sub_cancel]

end A269704

/-! ## A269704.P10861606850946694167

`eq[1, A039706(n+1)]+1`
-/

namespace A269704.P10861606850946694167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269704.P10861606850946694167

namespace A269704

/-- `eq[1, A039706(n+1)]+1` -/
def P10861606850946694167.Spec : Prop :=
  ∀ n, (P10861606850946694167.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P13880652682418202573

`eq[2, A023579(n+1)]+1`
-/

namespace A269704.P13880652682418202573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269704.P13880652682418202573

namespace A269704

/-- `eq[2, A023579(n+1)]+1` -/
def P13880652682418202573.Spec : Prop :=
  ∀ n, (P13880652682418202573.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P6184364857571745808

`eq[2, A087963(n+1)]+1`
-/

namespace A269704.P6184364857571745808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269704.P6184364857571745808

namespace A269704

/-- `eq[2, A087963(n+1)]+1` -/
def P6184364857571745808.Spec : Prop :=
  ∀ n, (P6184364857571745808.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P4230107230257263825

`lt[2, A023506(n+1)]+1`
-/

namespace A269704.P4230107230257263825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A269704.P4230107230257263825

namespace A269704

/-- `lt[2, A023506(n+1)]+1` -/
def P4230107230257263825.Spec : Prop :=
  ∀ n, (P4230107230257263825.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P12953405822219362616

`lt[4, A058384(n+1)]+1`
-/

namespace A269704.P12953405822219362616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A269704.P12953405822219362616

namespace A269704

/-- `lt[4, A058384(n+1)]+1` -/
def P12953405822219362616.Spec : Prop :=
  ∀ n, (P12953405822219362616.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P14271148699998532244

`lt[2, val(A006093(n+1), 2)]+1`
-/

namespace A269704.P14271148699998532244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A269704.P14271148699998532244

namespace A269704

/-- `lt[2, val(A006093(n+1), 2)]+1` -/
def P14271148699998532244.Spec : Prop :=
  ∀ n, (P14271148699998532244.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P9341190829124592520

`eq[1, A000040(n+1)%8]+1`
-/

namespace A269704.P9341190829124592520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A269704.P9341190829124592520

namespace A269704

/-- `eq[1, A000040(n+1)%8]+1` -/
def P9341190829124592520.Spec : Prop :=
  ∀ n, (P9341190829124592520.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P6279459432463608230

`lt[2, val(A040976(n+1)+1, 2)]+1`
-/

namespace A269704.P6279459432463608230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040976 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A269704.P6279459432463608230

namespace A269704

/-- `lt[2, val(A040976(n+1)+1, 2)]+1` -/
def P6279459432463608230.Spec : Prop :=
  ∀ n, (P6279459432463608230.a n : ℤ) = A269704 (n + 1)

end A269704

/-! ## A269704.P11038364308362498591

`filter[A024704(n+1), A098033(#)]`
-/

namespace A269704.P11038364308362498591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098033 (f1 j).toNat = 1) n)

end

end A269704.P11038364308362498591

namespace A269704

/-- `filter[A024704(n+1), A098033(#)]` -/
def P11038364308362498591.Spec : Prop :=
  ∀ n, P11038364308362498591.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P11863939608555611044

`A000720(p?[a(n-1)+8])` with `a(0)=1`
-/

namespace A269704.P11863939608555611044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269704.P11863939608555611044

namespace A269704

/-- `A000720(p?[a(n-1)+8])` -/
def P11863939608555611044.Spec : Prop :=
  ∀ n, P11863939608555611044.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P6262129851110459918

`A000720(p?[4*n+1+4*n])`
-/

namespace A269704.P6262129851110459918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1 + 4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269704.P6262129851110459918

namespace A269704

/-- `A000720(p?[4*n+1+4*n])` -/
def P6262129851110459918.Spec : Prop :=
  ∀ n, P6262129851110459918.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P11417138109231389542

`A000720(A007519(n+1))`
-/

namespace A269704.P11417138109231389542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007519 (n + 1)).toNat

end

end A269704.P11417138109231389542

namespace A269704

/-- `A000720(A007519(n+1))` -/
def P11417138109231389542.Spec : Prop :=
  ∀ n, P11417138109231389542.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P14794327322300097607

`A099801(A186293(n+1))`
-/

namespace A269704.P14794327322300097607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A186293 (n + 1)).toNat

end

end A269704.P14794327322300097607

namespace A269704

/-- `A099801(A186293(n+1))` -/
def P14794327322300097607.Spec : Prop :=
  ∀ n, P14794327322300097607.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P12788015682227903061

`A000720(A045390(n+2))`
-/

namespace A269704.P12788015682227903061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A045390 (n + 2)).toNat

end

end A269704.P12788015682227903061

namespace A269704

/-- `A000720(A045390(n+2))` -/
def P12788015682227903061.Spec : Prop :=
  ∀ n, P12788015682227903061.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P2096940982581597701

`A000720(A209544(n+2))`
-/

namespace A269704.P2096940982581597701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A209544 (n + 2)).toNat

end

end A269704.P2096940982581597701

namespace A269704

/-- `A000720(A209544(n+2))` -/
def P2096940982581597701.Spec : Prop :=
  ∀ n, P2096940982581597701.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P9135481474088473460

`A061395(p?[A016993(n)+n])`
-/

namespace A269704.P9135481474088473460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269704.P9135481474088473460

namespace A269704

/-- `A061395(p?[A016993(n)+n])` -/
def P9135481474088473460.Spec : Prop :=
  ∀ n, P9135481474088473460.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P7637073871595838716

`A061395(p?[A007310(n+1)+n])`
-/

namespace A269704.P7637073871595838716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269704.P7637073871595838716

namespace A269704

/-- `A061395(p?[A007310(n+1)+n])` -/
def P7637073871595838716.Spec : Prop :=
  ∀ n, P7637073871595838716.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P3935859944042594158

`record[A344616(Δ[(2*n+3)²]+1)]`
-/

namespace A269704.P3935859944042594158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269704.P3935859944042594158

namespace A269704

/-- `record[A344616(Δ[(2*n+3)²]+1)]` -/
def P3935859944042594158.Spec : Prop :=
  ∀ n, P3935859944042594158.a n = A269704 (n + 1)

end A269704

/-! ## A269704.P16052473626390172878

`A099802(A186294(n+1))`
-/

namespace A269704.P16052473626390172878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A186294 (n + 1)).toNat

end

end A269704.P16052473626390172878

namespace A269704

/-- `A099802(A186294(n+1))` -/
def P16052473626390172878.Spec : Prop :=
  ∀ n, P16052473626390172878.a n = A269704 (n + 1)

end A269704

/-!
# A269705: Numbers k such that prime(k) == 1 (mod 9).

The programs for A269705, there is no canonical definition to state claims against.
-/

/-! ## A269705.P10930635741838494467

`A000720(p?[9*n+1])`
-/

namespace A269705.P10930635741838494467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269705.P10930635741838494467

/-! ## A269705.P931740928907464146

`A003963(p?[9*n+1])`
-/

namespace A269705.P931740928907464146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269705.P931740928907464146

/-! ## A269705.P11121032595317399801

`A026099(p?[9*n+1])`
-/

namespace A269705.P11121032595317399801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269705.P11121032595317399801

/-! ## A269705.P4048531340661963812

`A026233(p?[9*n+1])`
-/

namespace A269705.P4048531340661963812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269705.P4048531340661963812

/-! ## A269705.P871283453797954362

`A049084(p?[9*n+1])`
-/

namespace A269705.P871283453797954362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269705.P871283453797954362

/-! ## A269705.P18040053518728575141

`A055396(p?[9*n+1])`
-/

namespace A269705.P18040053518728575141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A269705.P18040053518728575141

/-! ## A269705.P13829773266335753636

`eq[1, dr(A175787(n+1))]`
-/

namespace A269705.P13829773266335753636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A175787 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269705.P13829773266335753636

/-! ## A269705.P13784092830110732499

`eq[1, dr(A240960(n+1))]`
-/

namespace A269705.P13784092830110732499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A240960 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269705.P13784092830110732499

/-! ## A269705.P16779262487836436255

`eq[2, dr(A074845(n+1))]`
-/

namespace A269705.P16779262487836436255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A074845 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269705.P16779262487836436255

/-! ## A269705.P8030635737877536567

`eq[2, dr(A161344(n+1))]`
-/

namespace A269705.P8030635737877536567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A161344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269705.P8030635737877536567

/-!
# A269707: Decimal expansion of x = 3*Sum_{n in E} 1/10^n where E is the set of numbers whose base-4 representation consists of only 0's and 1's.

The programs for A269707, there is no canonical definition to state claims against.
-/

/-! ## A269707.P15894961073702980806

`3*C(and(85, n), n)`
-/

namespace A269707.P15894961073702980806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (Nat.land 85 n) n

end

end A269707.P15894961073702980806

/-! ## A269707.P13117049455006758435

`C(3, (and(42, n)+1)²)`
-/

namespace A269707.P13117049455006758435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((Nat.land 42 n + 1) ^ 2)

end

end A269707.P13117049455006758435

/-! ## A269707.P1013738851644034051

`floor(3/2^and(42, n))`
-/

namespace A269707.P1013738851644034051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (2 ^ Nat.land 42 n : ℚ)⌋

end

end A269707.P1013738851644034051

/-! ## A269707.P9399019897749679222

`C(3, or(1, and(42, n))²)`
-/

namespace A269707.P9399019897749679222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.lor 1 (Nat.land 42 n) ^ 2)

end

end A269707.P9399019897749679222

/-! ## A269707.P5841384579283470218

`C(3, xor(1, and(42, n))²)`
-/

namespace A269707.P5841384579283470218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.xor 1 (Nat.land 42 n) ^ 2)

end

end A269707.P5841384579283470218

/-! ## A269707.P5409389894936110873

`3*char[or(42, n)-42]`
-/

namespace A269707.P5409389894936110873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 42 n : ℤ) - 42

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A269707.P5409389894936110873

/-! ## A269707.P17638275109220347931

`3*char[xor(42, or(42, n))]`
-/

namespace A269707.P17638275109220347931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 42 (Nat.lor 42 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f1 j = n then 1 else 0)

end

end A269707.P17638275109220347931

/-! ## A269707.P280946882059486429

`3*char[n-and(42, n)]`
-/

namespace A269707.P280946882059486429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 42 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A269707.P280946882059486429

/-! ## A269707.P6172667528817691741

`3*char[xor(n, and(42, n))]`
-/

namespace A269707.P6172667528817691741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 42 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f1 j = n then 1 else 0)

end

end A269707.P6172667528817691741

/-! ## A269707.P17407659200533948579

`C(C(3, and(42, n)+1), 2)`
-/

namespace A269707.P17407659200533948579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (Nat.land 42 n + 1)) 2

end

end A269707.P17407659200533948579

/-!
# A269708: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

The programs for A269708, the canonical program `A269708.P10980544871766806232` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269708 has offset 0).

The definition of A269708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269708.P13033212714594201083

`or(4^n, A052156(n))`
-/

namespace A269708.P13033212714594201083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) (A052156 n)

end

end A269708.P13033212714594201083

namespace A269708

/-- `or(4^n, A052156(n))` -/
def P13033212714594201083.Spec : Prop :=
  ∀ n, P13033212714594201083.a n = A269708 n

end A269708

/-! ## A269708.P7439886749752830715

`floor(A000079(n)²+4*3^(n-2))`
-/

namespace A269708.P7439886749752830715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n ^ 2 : ℚ) + 4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A269708.P7439886749752830715

namespace A269708

/-- `floor(A000079(n)²+4*3^(n-2))` -/
def P7439886749752830715.Spec : Prop :=
  ∀ n, P7439886749752830715.a n = A269708 n

end A269708

/-! ## A269708.P6124165787560876711

`or(∑[A118264(n)], A000302(n))`
-/

namespace A269708.P6124165787560876711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000302 n)

end

end A269708.P6124165787560876711

namespace A269708

/-- `or(∑[A118264(n)], A000302(n))` -/
def P6124165787560876711.Spec : Prop :=
  ∀ n, P6124165787560876711.a n = A269708 n

end A269708

/-! ## A269708.P8174590770891902582

`A326339(n+1)+A000302(n)`
-/

namespace A269708.P8174590770891902582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1) + A000302 n

end

end A269708.P8174590770891902582

namespace A269708

/-- `A326339(n+1)+A000302(n)` -/
def P8174590770891902582.Spec : Prop :=
  ∀ n, P8174590770891902582.a n = A269708 n

end A269708

/-! ## A269708.P10410823269867256007

`A326339(n+1)+A000079(n)²`
-/

namespace A269708.P10410823269867256007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1) + A000079 n ^ 2

end

end A269708.P10410823269867256007

namespace A269708

/-- `A326339(n+1)+A000079(n)²` -/
def P10410823269867256007.Spec : Prop :=
  ∀ n, P10410823269867256007.a n = A269708 n

end A269708

/-! ## A269708.P8878407306634818325

`A326339(n+1)+A000079(2*n)`
-/

namespace A269708.P8878407306634818325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1) + A000079 (2 * n)

end

end A269708.P8878407306634818325

namespace A269708

/-- `A326339(n+1)+A000079(2*n)` -/
def P8878407306634818325.Spec : Prop :=
  ∀ n, P8878407306634818325.a n = A269708 n

end A269708

/-! ## A269708.P13904091407822137010

`floor(A000079(A005843(n))+4*3^(n-2))`
-/

namespace A269708.P13904091407822137010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (A005843 n).toNat : ℚ) + 4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A269708.P13904091407822137010

namespace A269708

/-- `floor(A000079(A005843(n))+4*3^(n-2))` -/
def P13904091407822137010.Spec : Prop :=
  ∀ n, P13904091407822137010.a n = A269708 n

end A269708

/-! ## A269708.P14151414400346744364

`A000302(n)+A052156(n)%A000302(n)`
-/

namespace A269708.P14151414400346744364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + Int.tmod (A052156 n) (A000302 n)

end

end A269708.P14151414400346744364

namespace A269708

/-- `A000302(n)+A052156(n)%A000302(n)` -/
def P14151414400346744364.Spec : Prop :=
  ∀ n, P14151414400346744364.a n = A269708 n

end A269708

/-! ## A269708.P10980544871766806232

`7*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=76`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269708

/-- `7*a(n-1)-12*a(n-2)` -/
def P10980544871766806232.Spec : Prop :=
  ∀ n, P10980544871766806232.a n = A269708 n

theorem P10980544871766806232.correct : P10980544871766806232.Spec := by
  intro n
  simp only [A269708]

end A269708

/-! ## A269708.P8669222710533859963

`floor(Δ[Δ[A074605(n)/9]])`
-/

namespace A269708.P8669222710533859963
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074605 n : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A269708.P8669222710533859963

namespace A269708

/-- `floor(Δ[Δ[A074605(n)/9]])` -/
def P8669222710533859963.Spec : Prop :=
  ∀ n, P8669222710533859963.a n = A269708 n

end A269708

/-!
# A269709: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 14", based on the 5-celled von Neumann neighborhood.

The programs for A269709, the canonical program `A269709.P13202328295007541821` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269709 has offset 0).

The definition of A269709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269709.P13202328295007541821

`∑[A169703(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A269709

/-- `∑[A169703(n)]` -/
def P13202328295007541821.Spec : Prop :=
  ∀ n, P13202328295007541821.a n = A269709 n

theorem P13202328295007541821.correct : P13202328295007541821.Spec := by
  intro n
  simp only [A269709]

end A269709

/-! ## A269709.P994502602634383396

`A169703(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A269709.P994502602634383396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169703 n + a (A023443 n).toNat

end

end A269709.P994502602634383396

namespace A269709

/-- `A169703(n)+a(A023443(n))` -/
def P994502602634383396.Spec : Prop :=
  ∀ n, P994502602634383396.a n = A269709 n

end A269709

/-! ## A269709.P5250897049498153163

`∑[A079317(n)+A079315(n)]-n`
-/

namespace A269709.P5250897049498153163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A269709.P5250897049498153163

namespace A269709

/-- `∑[A079317(n)+A079315(n)]-n` -/
def P5250897049498153163.Spec : Prop :=
  ∀ n, P5250897049498153163.a n = A269709 n

end A269709

/-! ## A269709.P9806400433229431542

`∑[A079315(n)]+A273409(n)-n`
-/

namespace A269709.P9806400433229431542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A273409 n - (n : ℤ))

end

end A269709.P9806400433229431542

namespace A269709

/-- `∑[A079315(n)]+A273409(n)-n` -/
def P9806400433229431542.Spec : Prop :=
  ∀ n, P9806400433229431542.a n = A269709 n

end A269709

/-! ## A269709.P5660508184682308539

`A169703(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A269709.P5660508184682308539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169703 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A269709.P5660508184682308539

namespace A269709

/-- `A169703(A000007(n)+n)+a(n-1)` -/
def P5660508184682308539.Spec : Prop :=
  ∀ n, P5660508184682308539.a n = A269709 n

end A269709

/-! ## A269709.P13847577698185461708

`a(n-1)+A169703(n)%A000144(n)` with `a(0)=1`
-/

namespace A269709.P13847577698185461708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A169703 n) (A000144 n)

end

end A269709.P13847577698185461708

namespace A269709

/-- `a(n-1)+A169703(n)%A000144(n)` -/
def P13847577698185461708.Spec : Prop :=
  ∀ n, P13847577698185461708.a n = A269709 n

end A269709

/-! ## A269709.P15643884765331662303

`∑[A147562(n+1)-A147562(A004526(n))]`
-/

namespace A269709.P15643884765331662303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (n + 1) - A147562 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269709.P15643884765331662303

namespace A269709

/-- `∑[A147562(n+1)-A147562(A004526(n))]` -/
def P15643884765331662303.Spec : Prop :=
  ∀ n, P15643884765331662303.a n = A269709 n

end A269709

/-! ## A269709.P16642316227525687662

`A001489(n)+∑[A079317(n)+A079315(n)]`
-/

namespace A269709.P16642316227525687662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 n + A079315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269709.P16642316227525687662

namespace A269709

/-- `A001489(n)+∑[A079317(n)+A079315(n)]` -/
def P16642316227525687662.Spec : Prop :=
  ∀ n, P16642316227525687662.a n = A269709 n

end A269709

/-! ## A269709.P18269300409581439577

`∑[A169704(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A269709.P18269300409581439577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A169704 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269709.P18269300409581439577

namespace A269709

/-- `∑[A169704(n-1)+a(n-1)]` -/
def P18269300409581439577.Spec : Prop :=
  ∀ n, P18269300409581439577.a n = A269709 n

end A269709

/-! ## A269709.P8606312644909208028

`A169703(n)-(A182660(a(n-1))-a(n-1))` with `a(0)=1`
-/

namespace A269709.P8606312644909208028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169703 n - (A182660 (a (n - 1)).toNat - a (n - 1))

end

end A269709.P8606312644909208028

namespace A269709

/-- `A169703(n)-(A182660(a(n-1))-a(n-1))` -/
def P8606312644909208028.Spec : Prop :=
  ∀ n, P8606312644909208028.a n = A269709 n

end A269709

/-!
# A269713: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A269713, there is no canonical definition to state claims against.
-/

/-! ## A269713.P3737113632793632509

`∑[A122108(n+1)]`
-/

namespace A269713.P3737113632793632509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269713.P3737113632793632509

/-! ## A269713.P17089915892565752124

`∑[A016754(n)-A273538(n)]+1`
-/

namespace A269713.P17089915892565752124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A273538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A269713.P17089915892565752124

/-! ## A269713.P16094870139860242802

`∑[A033996(n)%A273538(n)+1]`
-/

namespace A269713.P16094870139860242802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033996 n) (A273538 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269713.P16094870139860242802

/-! ## A269713.P18210559178480308754

`∑[A016754(n)%A273538(A028310(n))]`
-/

namespace A269713.P18210559178480308754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A273538 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269713.P18210559178480308754

/-! ## A269713.P13570571921198756701

`∑[A181385(A016825(n))-A273538(n)]`
-/

namespace A269713.P13570571921198756701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269713.P13570571921198756701

/-! ## A269713.P18092605157026497939

`∑[A028310(A016754(n)-A273538(n))]`
-/

namespace A269713.P18092605157026497939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016754 n - A273538 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269713.P18092605157026497939

/-!
# A269714: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A269714, there is no canonical definition to state claims against.
-/

/-! ## A269714.P7761945175651043369

`Δ[A122108(n+1)]`
-/

namespace A269714.P7761945175651043369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269714.P7761945175651043369

/-! ## A269714.P14054054281969522492

`A122108(n+2)-A122108(n+1)`
-/

namespace A269714.P14054054281969522492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122108 (n + 2) - A122108 (n + 1)

end

end A269714.P14054054281969522492

/-! ## A269714.P11250209142847245374

`Δ[A033996(n)%A273538(n)]`
-/

namespace A269714.P11250209142847245374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033996 n) (A273538 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269714.P11250209142847245374

/-! ## A269714.P9727754834858916705

`Δ[A000007(n)+A016754(n)-A273538(n)]`
-/

namespace A269714.P9727754834858916705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A273538 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269714.P9727754834858916705

/-! ## A269714.P1082618786897243838

`Δ[A016754(n)+A054977(n)-A273538(n)]`
-/

namespace A269714.P1082618786897243838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + (A054977 n - A273538 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269714.P1082618786897243838

/-! ## A269714.P6854834433871196835

`Δ[A181385(A016825(n))-A273538(n)]`
-/

namespace A269714.P6854834433871196835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269714.P6854834433871196835

/-! ## A269714.P4277496580416129800

`Δ[A028310(A016754(n)-A273538(n))]`
-/

namespace A269714.P4277496580416129800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016754 n - A273538 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269714.P4277496580416129800

/-!
# A269715: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A269715, there is no canonical definition to state claims against.
-/

/-! ## A269715.P7618000608049959938

`∑[A269718(abs(1-n))]-2`
-/

namespace A269715.P7618000608049959938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269718 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A269715.P7618000608049959938

/-! ## A269715.P10554820293267647420

`A269718(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269715.P10554820293267647420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269718 (n - 1) + a (n - 1)

end

end A269715.P10554820293267647420

/-! ## A269715.P11443297709357740488

`a(n-1)-A269718(abs(1-n))/A057428(n)` with `a(0)=1`
-/

namespace A269715.P11443297709357740488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A269718 |1 - (n : ℤ)|.toNat : ℚ) / (A057428 n : ℚ)

end

end A269715.P11443297709357740488

/-! ## A269715.P3547645577948242705

`Δ[A269717(n)]-A269718(n)`
-/

namespace A269715.P3547645577948242705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269718 n

end

end A269715.P3547645577948242705

/-! ## A269715.P6109308173531636536

`A269717(n+1)-(A269718(n)+A269717(n))`
-/

namespace A269715.P6109308173531636536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269717 (n + 1) - (A269718 n + A269717 n)

end

end A269715.P6109308173531636536

/-! ## A269715.P9710600453894203762

`A023444(∑[A269718(abs(1-n))])`
-/

namespace A269715.P9710600453894203762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269718 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269715.P9710600453894203762

/-!
# A269716: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A269716, the canonical program `A269716.P8093291033350786468` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269716 has offset 0).

The definition of A269716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269716.P8093291033350786468

`ogf((1-x-2x^2+8x^3)/(1-6x+8x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269716

/-- `ogf((1-x-2x^2+8x^3)/(1-6x+8x^2))` -/
def P8093291033350786468.Spec : Prop :=
  ∀ n, P8093291033350786468.a n = A269716 n

theorem P8093291033350786468.correct : P8093291033350786468.Spec := by
  intro n
  simp only [A269716]

end A269716

/-! ## A269716.P6733339033245978728

`or(4*a(n-1), 2^n)` with `a(0)=1, a(1)=5`
-/

namespace A269716.P6733339033245978728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lor (4 * a (n - 1)) (2 ^ n)

end

end A269716.P6733339033245978728

namespace A269716

/-- `or(4*a(n-1), 2^n)` -/
def P6733339033245978728.Spec : Prop :=
  ∀ n, (P6733339033245978728.a n : ℤ) = A269716 n

end A269716

/-! ## A269716.P13592658526534220649

`2^n+4*a(n-1)` with `a(0)=1, a(1)=5, a(2)=20`
-/

namespace A269716.P13592658526534220649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 20] fun n a =>
  2 ^ n + 4 * a (n - 1)

end

end A269716.P13592658526534220649

namespace A269716

/-- `2^n+4*a(n-1)` -/
def P13592658526534220649.Spec : Prop :=
  ∀ n, (P13592658526534220649.a n : ℤ) = A269716 n

end A269716

/-! ## A269716.P12088597594043913840

`xor(4*a(n-1), 2^n)` with `a(0)=1, a(1)=5, a(2)=20`
-/

namespace A269716.P12088597594043913840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 20] fun n a =>
  Nat.xor (4 * a (n - 1)) (2 ^ n)

end

end A269716.P12088597594043913840

namespace A269716

/-- `xor(4*a(n-1), 2^n)` -/
def P12088597594043913840.Spec : Prop :=
  ∀ n, (P12088597594043913840.a n : ℤ) = A269716 n

end A269716

/-! ## A269716.P4942448577593120185

`A093357(n+1)+C(n, n²)`
-/

namespace A269716.P4942448577593120185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093357 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A269716.P4942448577593120185

namespace A269716

/-- `A093357(n+1)+C(n, n²)` -/
def P4942448577593120185.Spec : Prop :=
  ∀ n, P4942448577593120185.a n = A269716 n

end A269716

/-! ## A269716.P17458385782108759726

`4*or(a(n-1), A034008(n))` with `a(0)=1, a(1)=5`
-/

namespace A269716.P17458385782108759726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * Int.lor (a (n - 1)) (A034008 n)

end

end A269716.P17458385782108759726

namespace A269716

/-- `4*or(a(n-1), A034008(n))` -/
def P17458385782108759726.Spec : Prop :=
  ∀ n, P17458385782108759726.a n = A269716 n

end A269716

/-! ## A269716.P304292986633378792

`and(-A051049(n), A010036(n))`
-/

namespace A269716.P304292986633378792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A051049 n) (A010036 n)

end

end A269716.P304292986633378792

namespace A269716

/-- `and(-A051049(n), A010036(n))` -/
def P304292986633378792.Spec : Prop :=
  ∀ n, P304292986633378792.a n = A269716 n

end A269716

/-! ## A269716.P11660938331511915228

`and(-A099036(n), A010036(n))`
-/

namespace A269716.P11660938331511915228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A099036 n) (A010036 n)

end

end A269716.P11660938331511915228

namespace A269716

/-- `and(-A099036(n), A010036(n))` -/
def P11660938331511915228.Spec : Prop :=
  ∀ n, P11660938331511915228.a n = A269716 n

end A269716

/-! ## A269716.P8051383765718593219

`or(A011782(n)², A093357(n+1))`
-/

namespace A269716.P8051383765718593219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 n ^ 2) (A093357 (n + 1))

end

end A269716.P8051383765718593219

namespace A269716

/-- `or(A011782(n)², A093357(n+1))` -/
def P8051383765718593219.Spec : Prop :=
  ∀ n, P8051383765718593219.a n = A269716 n

end A269716

/-! ## A269716.P9744001302533769998

`A093357(n+1)+A019590(n+1)`
-/

namespace A269716.P9744001302533769998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093357 (n + 1) + A019590 (n + 1)

end

end A269716.P9744001302533769998

namespace A269716

/-- `A093357(n+1)+A019590(n+1)` -/
def P9744001302533769998.Spec : Prop :=
  ∀ n, P9744001302533769998.a n = A269716 n

end A269716

/-! ## A269716.P14012409046457232387

`A049775(n+2)-A111286(n+1)`
-/

namespace A269716.P14012409046457232387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) - A111286 (n + 1)

end

end A269716.P14012409046457232387

namespace A269716

/-- `A049775(n+2)-A111286(n+1)` -/
def P14012409046457232387.Spec : Prop :=
  ∀ n, P14012409046457232387.a n = A269716 n

end A269716

/-! ## A269716.P12023051756612760819

`A266550(n+2)+A000225(n)*A290114(n)`
-/

namespace A269716.P12023051756612760819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) + A000225 n * A290114 n

end

end A269716.P12023051756612760819

namespace A269716

/-- `A266550(n+2)+A000225(n)*A290114(n)` -/
def P12023051756612760819.Spec : Prop :=
  ∀ n, P12023051756612760819.a n = A269716 n

end A269716

/-! ## A269716.P13233344301738432361

`or(A011782(2*n)-A011782(n+1), A084215(2*n))`
-/

namespace A269716.P13233344301738432361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (2 * n) - A011782 (n + 1)) (A084215 (2 * n))

end

end A269716.P13233344301738432361

namespace A269716

/-- `or(A011782(2*n)-A011782(n+1), A084215(2*n))` -/
def P13233344301738432361.Spec : Prop :=
  ∀ n, P13233344301738432361.a n = A269716 n

end A269716

/-!
# A269717: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A269717, there is no canonical definition to state claims against.
-/

/-! ## A269717.P17767066273867598846

`∑[A269715(n)]`
-/

namespace A269717.P17767066273867598846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269717.P17767066273867598846

/-! ## A269717.P8089097517844625490

`∑[∑[A269718(abs(1-n))]-2]`
-/

namespace A269717.P8089097517844625490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269718 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269717.P8089097517844625490

/-! ## A269717.P15007605165004469425

`A269715(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A269717.P15007605165004469425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269715 n + a (A023443 n).toNat

end

end A269717.P15007605165004469425

/-! ## A269717.P13484910307415955060

`A269715(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A269717.P13484910307415955060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269715 n + a (A004273 n - (n : ℤ)).toNat

end

end A269717.P13484910307415955060

/-! ## A269717.P2113730110311632641

`A269715(n)+a(A000038(n)-1+n)` with `a(0)=1`
-/

namespace A269717.P2113730110311632641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269715 n + a (A000038 n - 1 + (n : ℤ)).toNat

end

end A269717.P2113730110311632641

/-! ## A269717.P14124909441273930398

`A269715(n)-ceil(-a(A028310(n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A269717.P14124909441273930398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269715 n - (-a (A028310 n - 1).toNat)

end

end A269717.P14124909441273930398

/-!
# A269718: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A269718, there is no canonical definition to state claims against.
-/

/-! ## A269718.P17745637741296638679

`Δ[A269715(n)]`
-/

namespace A269718.P17745637741296638679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269718.P17745637741296638679

/-! ## A269718.P17943147482614106664

`A269715(n+1)-A269715(n)`
-/

namespace A269718.P17943147482614106664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269715 (n + 1) - A269715 n

end

end A269718.P17943147482614106664

/-!
# A269719: Numbers >= 3 whose arithmetic derivative is equal to the sum of some fixed power of their digits.

The programs for A269719, there is no canonical definition to state claims against.
-/

/-! ## A269719.P12334988492029187077

`A210000(a(n-1))` with `a(0)=3, a(1)=4, a(2)=5, a(3)=7`
-/

namespace A269719.P12334988492029187077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 7] fun n a =>
  A210000 (a (n - 1)).toNat

end

end A269719.P12334988492029187077

/-!
# A269723: Start with A_0 = 0, then extend by setting B_k = complement of A_k and A_{k+1} = A_k A_k B_k B_k; sequence is limit of A_k as k -> infinity.

The programs for A269723, the canonical program `A269723.P15898785416394083440` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269723 has offset 0).

The definition of A269723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269723.P17780673168931288013

`round(n/comp[xor(2*n, floor(n/2))])`
-/

namespace A269723.P17780673168931288013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ))

end

end A269723.P17780673168931288013

namespace A269723

/-- `round(n/comp[xor(2*n, floor(n/2))])` -/
def P17780673168931288013.Spec : Prop :=
  ∀ n, P17780673168931288013.a n = A269723 n

end A269723

/-! ## A269723.P15898785416394083440

`(a(n-1)+val(2*n, 4))%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269723

/-- `(a(n-1)+val(2*n, 4))%2` -/
def P15898785416394083440.Spec : Prop :=
  ∀ n, (P15898785416394083440.a n : ℤ) = A269723 n

theorem P15898785416394083440.correct : P15898785416394083440.Spec := by
  intro n
  simp only [A269723]

end A269723

/-! ## A269723.P4697360765905194398

`and(1, a(n-1)+val(2*n, 4))` with `a(0)=0`
-/

namespace A269723.P4697360765905194398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (a (n - 1) + SequenceMachineLib.valuation (2 * n) 4)

end

end A269723.P4697360765905194398

namespace A269723

/-- `and(1, a(n-1)+val(2*n, 4))` -/
def P4697360765905194398.Spec : Prop :=
  ∀ n, (P4697360765905194398.a n : ℤ) = A269723 n

theorem P4697360765905194398.correct : P4697360765905194398.Spec := by
  intro n
  simp only [A269723, Nat.add_sub_cancel, A269723.P4697360765905194398.a, A269723.P15898785416394083440.a, SequenceMachineLib.memo_apply]
  try simp

end A269723

/-! ## A269723.P3845983862424938240

`and(1, val(2*n, 4)-a(n-1))` with `a(0)=0`
-/

namespace A269723.P3845983862424938240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 ((SequenceMachineLib.valuation (2 * n) 4 : ℤ) - a (n - 1))

end

end A269723.P3845983862424938240

namespace A269723

/-- `and(1, val(2*n, 4)-a(n-1))` -/
def P3845983862424938240.Spec : Prop :=
  ∀ n, P3845983862424938240.a n = A269723 n

end A269723

/-! ## A269723.P6657139637777024741

`(a(n-2^floor(log2(n)))+floor(log2(n)))%2` with `a(0)=0`
-/

namespace A269723.P6657139637777024741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 2 ^ Nat.log 2 n) + Nat.log 2 n) % 2

end

end A269723.P6657139637777024741

namespace A269723

/-- `(a(n-2^floor(log2(n)))+floor(log2(n)))%2` -/
def P6657139637777024741.Spec : Prop :=
  ∀ n, (P6657139637777024741.a n : ℤ) = A269723 n

end A269723

/-! ## A269723.P725286932927521665

`A073642(n)%2`
-/

namespace A269723.P725286932927521665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073642 n) 2

end

end A269723.P725286932927521665

namespace A269723

/-- `A073642(n)%2` -/
def P725286932927521665.Spec : Prop :=
  ∀ n, P725286932927521665.a n = A269723 n

end A269723

/-! ## A269723.P17757538348940737238

`A139352(n)%2`
-/

namespace A269723.P17757538348940737238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139352 n) 2

end

end A269723.P17757538348940737238

namespace A269723

/-- `A139352(n)%2` -/
def P17757538348940737238.Spec : Prop :=
  ∀ n, P17757538348940737238.a n = A269723 n

end A269723

/-! ## A269723.P4063807945876058711

`val(A365810(n), 3)`
-/

namespace A269723.P4063807945876058711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A365810 n).toNat 3

end

end A269723.P4063807945876058711

namespace A269723

/-- `val(A365810(n), 3)` -/
def P4063807945876058711.Spec : Prop :=
  ∀ n, (P4063807945876058711.a n : ℤ) = A269723 n

end A269723

/-! ## A269723.P15170205064928394308

`and(1, A131852(n))`
-/

namespace A269723.P15170205064928394308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A131852 n)

end

end A269723.P15170205064928394308

namespace A269723

/-- `and(1, A131852(n))` -/
def P15170205064928394308.Spec : Prop :=
  ∀ n, P15170205064928394308.a n = A269723 n

end A269723

/-! ## A269723.P17585893935029836022

`A158704(n+1)%2`
-/

namespace A269723.P17585893935029836022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158704 (n + 1)) 2

end

end A269723.P17585893935029836022

namespace A269723

/-- `A158704(n+1)%2` -/
def P17585893935029836022.Spec : Prop :=
  ∀ n, P17585893935029836022.a n = A269723 n

end A269723

/-! ## A269723.P1903863240957739937

`and(2, A004718(n))/2`
-/

namespace A269723.P1903863240957739937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A004718 n) : ℚ) / 2

end

end A269723.P1903863240957739937

namespace A269723

/-- `and(2, A004718(n))/2` -/
def P1903863240957739937.Spec : Prop :=
  ∀ n, P1903863240957739937.a n = (A269723 n : ℚ)

end A269723

/-! ## A269723.P15853571745995730065

`and(2, A064707(n))/2`
-/

namespace A269723.P15853571745995730065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A064707 n) : ℚ) / 2

end

end A269723.P15853571745995730065

namespace A269723

/-- `and(2, A064707(n))/2` -/
def P15853571745995730065.Spec : Prop :=
  ∀ n, P15853571745995730065.a n = (A269723 n : ℚ)

end A269723

/-! ## A269723.P14295212615997051694

`and(2, A193231(n))/2`
-/

namespace A269723.P14295212615997051694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A193231 n) : ℚ) / 2

end

end A269723.P14295212615997051694

namespace A269723

/-- `and(2, A193231(n))/2` -/
def P14295212615997051694.Spec : Prop :=
  ∀ n, P14295212615997051694.a n = (A269723 n : ℚ)

end A269723

/-! ## A269723.P2866492703765629924

`and(2, A323908(n))/2`
-/

namespace A269723.P2866492703765629924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A323908 n) : ℚ) / 2

end

end A269723.P2866492703765629924

namespace A269723

/-- `and(2, A323908(n))/2` -/
def P2866492703765629924.Spec : Prop :=
  ∀ n, P2866492703765629924.a n = (A269723 n : ℚ)

end A269723

/-! ## A269723.P15469928774899621968

`gcd(2, A158705(n+1))-1`
-/

namespace A269723.P15469928774899621968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A158705 (n + 1)) : ℤ) - 1

end

end A269723.P15469928774899621968

namespace A269723

/-- `gcd(2, A158705(n+1))-1` -/
def P15469928774899621968.Spec : Prop :=
  ∀ n, P15469928774899621968.a n = A269723 n

end A269723

/-! ## A269723.P1489822410483423409

`and(1, A287576(2*n+1))`
-/

namespace A269723.P1489822410483423409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A287576 (2 * n + 1))

end

end A269723.P1489822410483423409

namespace A269723

/-- `and(1, A287576(2*n+1))` -/
def P1489822410483423409.Spec : Prop :=
  ∀ n, P1489822410483423409.a n = A269723 n

end A269723

/-! ## A269723.P638085401122605676

`A010060(A004468(n))`
-/

namespace A269723.P638085401122605676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A004468 n).toNat

end

end A269723.P638085401122605676

namespace A269723

/-- `A010060(A004468(n))` -/
def P638085401122605676.Spec : Prop :=
  ∀ n, P638085401122605676.a n = A269723 n

end A269723

/-! ## A269723.P699074814685083114

`A010060(A048647(n))`
-/

namespace A269723.P699074814685083114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A048647 n).toNat

end

end A269723.P699074814685083114

namespace A269723

/-- `A010060(A048647(n))` -/
def P699074814685083114.Spec : Prop :=
  ∀ n, P699074814685083114.a n = A269723 n

end A269723

/-! ## A269723.P18211716006845062768

`A010060(A059906(n))`
-/

namespace A269723.P18211716006845062768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A059906 n).toNat

end

end A269723.P18211716006845062768

namespace A269723

/-- `A010060(A059906(n))` -/
def P18211716006845062768.Spec : Prop :=
  ∀ n, P18211716006845062768.a n = A269723 n

end A269723

/-!
# A269725: a(n) = row number of extended Wythoff array (see A035513) which contains the sequence n times the Fibonacci numbers 1,2,3,5,8,13,21,... .

The programs for A269725, the canonical program `A269725.P1750023856874493420` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269725 has offset 1).

The definition of A269725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173027, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A269725.P1750023856874493420

`A173027(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269725

/-- `A173027(n+1)-1` -/
def P1750023856874493420.Spec : Prop :=
  ∀ n, P1750023856874493420.a n = A269725 (n + 1)

theorem P1750023856874493420.correct : P1750023856874493420.Spec := by
  intro n
  simp only [A269725, Nat.add_sub_cancel]

end A269725

/-! ## A269725.P15370124521040858254

`lt[n, gcd(n, floor(ϕ*(n+1)))²]`
-/

namespace A269725.P15370124521040858254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269725.P15370124521040858254

namespace A269725

/-- `lt[n, gcd(n, floor(ϕ*(n+1)))²]` -/
def P15370124521040858254.Spec : Prop :=
  ∀ n, (P15370124521040858254.a n : ℤ) = A269725 (n + 1)

theorem P15370124521040858254.correct : P15370124521040858254.Spec := by
  intro n
  simp only [A269725, Nat.add_sub_cancel, A269725.P15370124521040858254.f1, A269725.P15370124521040858254.f2, A269725.P15370124521040858254.a, A269725.P1750023856874493420.a, A173027, A173027.P13841836014063150265.f1, A173027.P13841836014063150265.f2, A173027.P13841836014063150265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269725

/-! ## A269725.P164263124431759449

`A019586(55*(n+1))`
-/

namespace A269725.P164263124431759449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (55 * (n + 1))

end

end A269725.P164263124431759449

namespace A269725

/-- `A019586(55*(n+1))` -/
def P164263124431759449.Spec : Prop :=
  ∀ n, P164263124431759449.a n = A269725 (n + 1)

end A269725

/-! ## A269725.P10460354006765334522

`lt[n, A332937(n+1)²]`
-/

namespace A269725.P10460354006765334522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332937 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A269725.P10460354006765334522

namespace A269725

/-- `lt[n, A332937(n+1)²]` -/
def P10460354006765334522.Spec : Prop :=
  ∀ n, (P10460354006765334522.a n : ℤ) = A269725 (n + 1)

end A269725

/-! ## A269725.P12068831441885095045

`lt[n, gcd(n², A022344(n))]`
-/

namespace A269725.P12068831441885095045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A022344 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269725.P12068831441885095045

namespace A269725

/-- `lt[n, gcd(n², A022344(n))]` -/
def P12068831441885095045.Spec : Prop :=
  ∀ n, (P12068831441885095045.a n : ℤ) = A269725 (n + 1)

end A269725

/-! ## A269725.P524075079448732171

`A003603(12*12*(n+1))-1`
-/

namespace A269725.P524075079448732171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (12 * (12 * (n + 1))) - 1

end

end A269725.P524075079448732171

namespace A269725

/-- `A003603(12*12*(n+1))-1` -/
def P524075079448732171.Spec : Prop :=
  ∀ n, P524075079448732171.a n = A269725 (n + 1)

end A269725

/-! ## A269725.P4485164755693703419

`lt[n, (gcd(2*A000201(n+1), 2*n)/2)²]`
-/

namespace A269725.P4485164755693703419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.gcd (2 * A000201 (n + 1)) (2 * n : ℤ) : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A269725.P4485164755693703419

namespace A269725

/-- `lt[n, (gcd(2*A000201(n+1), 2*n)/2)²]` -/
def P4485164755693703419.Spec : Prop :=
  ∀ n, (P4485164755693703419.a n : ℤ) = A269725 (n + 1)

end A269725

/-! ## A269725.P10061554182524381114

`A023443(A173027(n+1))`
-/

namespace A269725.P10061554182524381114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A173027 (n + 1)).toNat

end

end A269725.P10061554182524381114

namespace A269725

/-- `A023443(A173027(n+1))` -/
def P10061554182524381114.Spec : Prop :=
  ∀ n, P10061554182524381114.a n = A269725 (n + 1)

end A269725

/-! ## A269725.P9342180239014679751

`A023444(A173027(n+1)+1)`
-/

namespace A269725.P9342180239014679751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A173027 (n + 1) + 1).toNat

end

end A269725.P9342180239014679751

namespace A269725

/-- `A023444(A173027(n+1)+1)` -/
def P9342180239014679751.Spec : Prop :=
  ∀ n, P9342180239014679751.a n = A269725 (n + 1)

end A269725

/-! ## A269725.P12931349135616858287

`A289207(A173027(n+1)+1)`
-/

namespace A269725.P12931349135616858287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A173027 (n + 1) + 1).toNat

end

end A269725.P12931349135616858287

namespace A269725

/-- `A289207(A173027(n+1)+1)` -/
def P12931349135616858287.Spec : Prop :=
  ∀ n, P12931349135616858287.a n = A269725 (n + 1)

end A269725

/-!
# A269726: a(n) = row number of extended Wythoff array (see A035513) which contains the sequence n times the Lucas numbers 1,3,4,7,11,18,... (A000204).

The programs for A269726, there is no canonical definition to state claims against.
-/

/-! ## A269726.P13840632820504740625

`A220249(n+1)-1`
-/

namespace A269726.P13840632820504740625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220249 (n + 1) - 1

end

end A269726.P13840632820504740625

/-! ## A269726.P9217586918962731987

`A019586(A004926(n+1))`
-/

namespace A269726.P9217586918962731987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A004926 (n + 1)).toNat

end

end A269726.P9217586918962731987

/-! ## A269726.P10050044359423668409

`A023443(A220249(n+1))`
-/

namespace A269726.P10050044359423668409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220249 (n + 1)).toNat

end

end A269726.P10050044359423668409

/-! ## A269726.P15123643516436181606

`A023444(A220249(n+1)+1)`
-/

namespace A269726.P15123643516436181606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A220249 (n + 1) + 1).toNat

end

end A269726.P15123643516436181606

/-!
# A269727: Primes avoided by certain exponential sums.

The programs for A269727, there is no canonical definition to state claims against.
-/

/-! ## A269727.P10693483914794452413

`∩[4*n+1, A309581(n+1)]`
-/

namespace A269727.P10693483914794452413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269727.P10693483914794452413

/-! ## A269727.P11002129940388536821

`p?[A005078(A309581(n+1))]`
-/

namespace A269727.P11002129940388536821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (A309581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269727.P11002129940388536821

/-! ## A269727.P12964021798961043774

`p?[A009001(A309584(n+1))]`
-/

namespace A269727.P12964021798961043774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A309584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269727.P12964021798961043774

/-! ## A269727.P6158930145220262221

`p?[A309214(A309584(n+4))]`
-/

namespace A269727.P6158930145220262221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A309584 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269727.P6158930145220262221

/-! ## A269727.P10357783252363244709

`filter[A309581(n+1), A039963(#)]`
-/

namespace A269727.P10357783252363244709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A269727.P10357783252363244709

/-!
# A269729: a(n) = row number of extended Wythoff array (see A035513) which contains the sequence obtained by reading the n-th row backwards (and adjusting signs).

The programs for A269729, there is no canonical definition to state claims against.
-/

/-! ## A269729.P10199366802628163930

`∑[A269733(abs(1-n))]-1`
-/

namespace A269729.P10199366802628163930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269733 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A269729.P10199366802628163930

/-!
# A269730: Dimensions of the 2-polytridendriform operad TDendr_2.

The programs for A269730, there is no canonical definition to state claims against.
-/

/-! ## A269730.P6427243752877355742

`A107841(n+1)/2`
-/

namespace A269730.P6427243752877355742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107841 (n + 1) : ℚ) / 2

end

end A269730.P6427243752877355742

/-! ## A269730.P9126537703242480545

`A103210(n+1)/3`
-/

namespace A269730.P9126537703242480545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103210 (n + 1) : ℚ) / 3

end

end A269730.P9126537703242480545

/-! ## A269730.P982022564304816832

`A239488(n+1)/6`
-/

namespace A269730.P982022564304816832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239488 (n + 1) : ℚ) / 6

end

end A269730.P982022564304816832

/-! ## A269730.P2365941749371453774

`A297704(∑[n+1])/3`
-/

namespace A269730.P2365941749371453774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297704 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A269730.P2365941749371453774

/-! ## A269730.P7464092808721547679

`A103210(n+1)-A107841(n+1)`
-/

namespace A269730.P7464092808721547679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103210 (n + 1) - A107841 (n + 1)

end

end A269730.P7464092808721547679

/-! ## A269730.P9007428651062277878

`A387368(n)/(n+1)`
-/

namespace A269730.P9007428651062277878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387368 n : ℚ) / (n + 1 : ℚ)

end

end A269730.P9007428651062277878

/-!
# A269731: Dimensions of the 3-polytridendriform operad TDendr_3.

The programs for A269731, there is no canonical definition to state claims against.
-/

/-! ## A269731.P15035666692797432980

`A131763(n+1)/3`
-/

namespace A269731.P15035666692797432980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131763 (n + 1) : ℚ) / 3

end

end A269731.P15035666692797432980

/-! ## A269731.P8964555177364617544

`A103211(n+1)/4`
-/

namespace A269731.P8964555177364617544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103211 (n + 1) : ℚ) / 4

end

end A269731.P8964555177364617544

/-! ## A269731.P586083684810238989

`Δ[∑[A131763(n)]/3]`
-/

namespace A269731.P586083684810238989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131763 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269731.P586083684810238989

/-! ## A269731.P1669771090683227108

`Δ[∑[A103211(n)]/4]`
-/

namespace A269731.P1669771090683227108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103211 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269731.P1669771090683227108

/-! ## A269731.P8196490633531903669

`floor(A131763(1-(n-2*n))/3)`
-/

namespace A269731.P8196490633531903669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131763 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℚ) / 3⌋

end

end A269731.P8196490633531903669

/-!
# A269732: Dimensions of the 4-polytridendriform operad TDendr_4.

The programs for A269732, there is no canonical definition to state claims against.
-/

/-! ## A269732.P10780150593794805363

`A131765(n+1)/4`
-/

namespace A269732.P10780150593794805363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131765 (n + 1) : ℚ) / 4

end

end A269732.P10780150593794805363

/-! ## A269732.P5363031741778286037

`A133305(n+1)/5`
-/

namespace A269732.P5363031741778286037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133305 (n + 1) : ℚ) / 5

end

end A269732.P5363031741778286037

/-! ## A269732.P2588922006600047521

`Δ[∑[A131765(n)]/4]`
-/

namespace A269732.P2588922006600047521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131765 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269732.P2588922006600047521

/-! ## A269732.P3066846650440876319

`Δ[∑[A133305(n)]/5]`
-/

namespace A269732.P3066846650440876319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133305 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269732.P3066846650440876319

/-! ## A269732.P15031620723673890836

`A297899(∑[n+1])/5`
-/

namespace A269732.P15031620723673890836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297899 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A269732.P15031620723673890836

/-! ## A269732.P17971096911677787975

`A133305(n+1)-A131765(n+1)`
-/

namespace A269732.P17971096911677787975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133305 (n + 1) - A131765 (n + 1)

end

end A269732.P17971096911677787975

/-!
# A269733: First differences of A269729.

The programs for A269733, there is no canonical definition to state claims against.
-/

/-! ## A269733.P10359303682345944149

`Δ[A269729(n)]`
-/

namespace A269733.P10359303682345944149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269733.P10359303682345944149

/-! ## A269733.P11147348700942546608

`A269729(n+1)-A269729(n)`
-/

namespace A269733.P11147348700942546608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269729 (n + 1) - A269729 n

end

end A269733.P11147348700942546608

/-! ## A269733.P10361418229779583864

`A269729(n+1)+A008683(A056206(n))*A269729(n)`
-/

namespace A269733.P10361418229779583864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269729 (n + 1) + A008683 (A056206 n).toNat * A269729 n

end

end A269733.P10361418229779583864

/-!
# A269734: a(n) = number of hermit primes (A268343) that are <= prime(n).

The programs for A269734, there is no canonical definition to state claims against.
-/

/-! ## A269734.P3280140240655147286

`floor(∑[A249856(A240919(n+1))]/3)`
-/

namespace A269734.P3280140240655147286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A240919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A269734.P3280140240655147286

/-! ## A269734.P7025166504822893867

`A002264(∑[A249856(A240919(n+1))])`
-/

namespace A269734.P7025166504822893867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249856 (A240919 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269734.P7025166504822893867

/-! ## A269734.P5199696835582197765

`floor(A286624(n+1)/A350332(A054385(n+1)))`
-/

namespace A269734.P5199696835582197765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286624 (n + 1) : ℚ) / (A350332 (A054385 (n + 1)).toNat : ℚ)⌋

end

end A269734.P5199696835582197765

/-!
# A269735: G.f.: Sum_{k >= 0} x^(2^k)*(1-x^(2^k))/(1+x^(2^k)).

The programs for A269735, the canonical program `A269735.P3472803289904325311` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269735 has offset 0).

The definition of A269735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269735.P3472803289904325311

`a(floor(n/2))-a(n-1)` with `a(0)=0, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269735

/-- `a(floor(n/2))-a(n-1)` -/
def P3472803289904325311.Spec : Prop :=
  ∀ n, P3472803289904325311.a n = A269735 n

theorem P3472803289904325311.correct : P3472803289904325311.Spec := by
  intro n
  simp only [A269735]

end A269735

/-! ## A269735.P9210727091244523151

`A088705(n)-A089263(n)`
-/

namespace A269735.P9210727091244523151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n - A089263 n

end

end A269735.P9210727091244523151

namespace A269735

/-- `A088705(n)-A089263(n)` -/
def P9210727091244523151.Spec : Prop :=
  ∀ n, P9210727091244523151.a n = A269735 n

end A269735

/-! ## A269735.P834848245463729284

`2*A088705(n)-A209229(n)`
-/

namespace A269735.P834848245463729284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088705 n - A209229 n

end

end A269735.P834848245463729284

namespace A269735

/-- `2*A088705(n)-A209229(n)` -/
def P834848245463729284.Spec : Prop :=
  ∀ n, P834848245463729284.a n = A269735 n

end A269735

/-! ## A269735.P3488397125370383075

`A209229(n)-2*A089263(n)`
-/

namespace A269735.P3488397125370383075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n - 2 * A089263 n

end

end A269735.P3488397125370383075

namespace A269735

/-- `A209229(n)-2*A089263(n)` -/
def P3488397125370383075.Spec : Prop :=
  ∀ n, P3488397125370383075.a n = A269735 n

end A269735

/-! ## A269735.P788991000285806114

`-(A089263(3*n)+A089263(n))`
-/

namespace A269735.P788991000285806114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A089263 (3 * n) + A089263 n)

end

end A269735.P788991000285806114

namespace A269735

/-- `-(A089263(3*n)+A089263(n))` -/
def P788991000285806114.Spec : Prop :=
  ∀ n, P788991000285806114.a n = A269735 n

end A269735

/-! ## A269735.P12907382546086989400

`A145037(n)-A145037(A028310(n)-1)`
-/

namespace A269735.P12907382546086989400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n - A145037 (A028310 n - 1).toNat

end

end A269735.P12907382546086989400

namespace A269735

/-- `A145037(n)-A145037(A028310(n)-1)` -/
def P12907382546086989400.Spec : Prop :=
  ∀ n, P12907382546086989400.a n = A269735 n

end A269735

/-! ## A269735.P8914858085382469828

`A145037(n)-A145037(A057428(n)+n)`
-/

namespace A269735.P8914858085382469828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n - A145037 (A057428 n + (n : ℤ)).toNat

end

end A269735.P8914858085382469828

namespace A269735

/-- `A145037(n)-A145037(A057428(n)+n)` -/
def P8914858085382469828.Spec : Prop :=
  ∀ n, P8914858085382469828.a n = A269735 n

end A269735

/-! ## A269735.P10241703607317940498

`A145037(n)-A145037(n-A057427(n))`
-/

namespace A269735.P10241703607317940498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n - A145037 ((n : ℤ) - A057427 n).toNat

end

end A269735.P10241703607317940498

namespace A269735

/-- `A145037(n)-A145037(n-A057427(n))` -/
def P10241703607317940498.Spec : Prop :=
  ∀ n, P10241703607317940498.a n = A269735 n

end A269735

/-! ## A269735.P5304821203850543755

`(1-A089263(n²))%(n+1)`
-/

namespace A269735.P5304821203850543755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A089263 (n ^ 2)) (n + 1 : ℤ)

end

end A269735.P5304821203850543755

namespace A269735

/-- `(1-A089263(n²))%(n+1)` -/
def P5304821203850543755.Spec : Prop :=
  ∀ n, P5304821203850543755.a n = A269735 n

end A269735

/-! ## A269735.P11441946763016507749

`A056926(A056926(∑[n]))-A089263(n²)`
-/

namespace A269735.P11441946763016507749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056926 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A089263 (n ^ 2)

end

end A269735.P11441946763016507749

namespace A269735

/-- `A056926(A056926(∑[n]))-A089263(n²)` -/
def P11441946763016507749.Spec : Prop :=
  ∀ n, P11441946763016507749.a n = A269735 n

end A269735

/-! ## A269735.P5525930788874522059

`A089263(A020639(n+1))²-A089263(n²)`
-/

namespace A269735.P5525930788874522059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (A020639 (n + 1)).toNat ^ 2 - A089263 (n ^ 2)

end

end A269735.P5525930788874522059

namespace A269735

/-- `A089263(A020639(n+1))²-A089263(n²)` -/
def P5525930788874522059.Spec : Prop :=
  ∀ n, P5525930788874522059.a n = A269735 n

end A269735

/-!
# A269741: The almost perfect squares sequence.

The programs for A269741, there is no canonical definition to state claims against.
-/

/-! ## A269741.P2311631969527352257

`eq[1-and(2, n), A290455(A239893(n+4))]`
-/

namespace A269741.P2311631969527352257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290455 (A239893 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269741.P2311631969527352257

/-! ## A269741.P2855959237630984769

`eq[A050603(n), A290455(A239893(n+4))]`
-/

namespace A269741.P2855959237630984769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290455 (A239893 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A269741.P2855959237630984769

/-! ## A269741.P16308236041511643732

`A194154(A052382(n+1)%A134845(n+1))`
-/

namespace A269741.P16308236041511643732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194154 (Int.tmod (A052382 (n + 1)) (A134845 (n + 1))).toNat

end

end A269741.P16308236041511643732

/-! ## A269741.P12773596956960796798

`∩[A055571(n+1), A194154(n+1)]`
-/

namespace A269741.P12773596956960796798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269741.P12773596956960796798

/-! ## A269741.P2114283180780078654

`lt[A332742(2*(n+2)), A196724(A271665(n+1))]`
-/

namespace A269741.P2114283180780078654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332742 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196724 (A271665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A269741.P2114283180780078654

/-!
# A269745: Maximal number of 1's in an n X n {0,1} Toeplitz matrix with property that no four 1's form a square with sides parallel to the edges of the matrix.

The programs for A269745, there is no canonical definition to state claims against.
-/

/-! ## A269745.P18379781885810995460

`∑[∑[A359156(A317715(3*(n+1)))]]`
-/

namespace A269745.P18379781885810995460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (A317715 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269745.P18379781885810995460

/-! ## A269745.P7623353424118081092

`∑[∑[A178225(A086246(n))]]`
-/

namespace A269745.P7623353424118081092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A086246 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269745.P7623353424118081092

/-! ## A269745.P17361636716453805163

`∑[∑[A337264(A016116(n))]]`
-/

namespace A269745.P17361636716453805163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337264 (A016116 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269745.P17361636716453805163

/-! ## A269745.P10314942131264167942

`∑[∑[A395964(A238184(n))]]`
-/

namespace A269745.P10314942131264167942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395964 (A238184 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269745.P10314942131264167942

/-! ## A269745.P15306170153719470093

`∑[∑[A237048(A194931(n+1))]]`
-/

namespace A269745.P15306170153719470093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (A194931 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269745.P15306170153719470093

/-!
# A269746: Maximal number of 1's in an equilateral triangle of 0's and 1's with n points on each side, the entries being constant on vertical lines, with property that no three 1's form a triangle with sides parallel to the edges of the triangle.

The programs for A269746, there is no canonical definition to state claims against.
-/

/-! ## A269746.P15467747727546047452

`∑[A227568(2*n+3)-A384877(n)]`
-/

namespace A269746.P15467747727546047452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (2 * n + 3) - A384877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269746.P15467747727546047452

/-! ## A269746.P15613007908023346335

`A269745(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A269746.P15613007908023346335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269745 (n + 1) - a (n - 1)

end

end A269746.P15613007908023346335

/-! ## A269746.P3091740681319084243

`∑[∑[A357187(A191113(n+1))]]`
-/

namespace A269746.P3091740681319084243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357187 (A191113 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269746.P3091740681319084243

/-! ## A269746.P6143502974493380049

`∑[∑[A035187(A054842(3*n+2))]]`
-/

namespace A269746.P6143502974493380049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A054842 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269746.P6143502974493380049

/-! ## A269746.P8284780440785818892

`∑[∑[(A076190(n+1)*A243938(n))%2]]`
-/

namespace A269746.P8284780440785818892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076190 (n + 1) * A243938 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269746.P8284780440785818892

/-!
# A269747: Number of regular tetrahedra in an n-node-per-edge tetrahedral grid.

The programs for A269747, there is no canonical definition to state claims against.
-/

/-! ## A269747.P17204297652819993815

`A270806(n)+A270805(n)`
-/

namespace A269747.P17204297652819993815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270806 n + A270805 n

end

end A269747.P17204297652819993815

/-! ## A269747.P15683837497631735021

`∑[∑[A342882(A001002(n))]]`
-/

namespace A269747.P15683837497631735021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342882 (A001002 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269747.P15683837497631735021

/-! ## A269747.P9267469018967622387

`A318719(A026007(n))-A358066(n+1)`
-/

namespace A269747.P9267469018967622387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A026007 n).toNat - A358066 (n + 1)

end

end A269747.P9267469018967622387

/-! ## A269747.P3752172238545008571

`A347301(A222709(2*n+11))-A347301(n+1)`
-/

namespace A269747.P3752172238545008571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347301 (A222709 (2 * n + 11)).toNat - A347301 (n + 1)

end

end A269747.P3752172238545008571

/-!
# A269748: a(n) = 2*p+61+2*gcd(p-1,3)+gcd(p-1,4), where p = prime(n).

The programs for A269748, the canonical program `A269748.P14819447718863636311` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269748 has offset 1).

The definition of A269748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A269748.P14819447718863636311

`2*A000040(n+1)+61+2*gcd(A000040(n+1)-1, 3)+gcd(A000040(n+1)-1, 4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269748

/-- `2*A000040(n+1)+61+2*gcd(A000040(n+1)-1, 3)+gcd(A000040(n+1)-1, 4)` -/
def P14819447718863636311.Spec : Prop :=
  ∀ n, P14819447718863636311.a n = A269748 (n + 1)

theorem P14819447718863636311.correct : P14819447718863636311.Spec := by
  intro n
  simp only [A269748, Nat.add_sub_cancel]

end A269748

/-!
# A269752: Table of inverse permutations of the rows of A131987: Position of numbers inserted in "storage order" into a perfect binary table of 2^k-1 nodes.

The programs for A269752, there is no canonical definition to state claims against.
-/

/-! ## A269752.P1208272701306755309

`A181733(A057716(n+1))-1`
-/

namespace A269752.P1208272701306755309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (A057716 (n + 1)).toNat - 1

end

end A269752.P1208272701306755309

/-! ## A269752.P18417040834271642576

`A000720(p?[A008578(A181733(n+1))])`
-/

namespace A269752.P18417040834271642576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A181733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269752.P18417040834271642576

/-! ## A269752.P7542167187234632011

`A003963(p?[A008578(A181733(n+1))])`
-/

namespace A269752.P7542167187234632011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A181733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269752.P7542167187234632011

/-! ## A269752.P9393304799111571125

`A049084(p?[A015919(A181733(n+1))])`
-/

namespace A269752.P9393304799111571125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (A181733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269752.P9393304799111571125

/-! ## A269752.P16864943590459176625

`A058933(p?[A008578(A181733(n+1))])`
-/

namespace A269752.P16864943590459176625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A181733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269752.P16864943590459176625

/-! ## A269752.P2861031853311260812

`A061395(p?[A008578(A181733(n+1))])`
-/

namespace A269752.P2861031853311260812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A181733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269752.P2861031853311260812

/-! ## A269752.P7256372461610042722

`A230980(p?[A008578(A181733(n+1))])`
-/

namespace A269752.P7256372461610042722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A181733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269752.P7256372461610042722

/-!
# A269753: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A269753, there is no canonical definition to state claims against.
-/

/-! ## A269753.P1226674296158964571

`∑[A269756(abs(1-n))]-6`
-/

namespace A269753.P1226674296158964571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269756 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 6

end

end A269753.P1226674296158964571

/-! ## A269753.P4224489079063129841

`A269756(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269753.P4224489079063129841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269756 (n - 1) + a (n - 1)

end

end A269753.P4224489079063129841

/-! ## A269753.P5191050659663537577

`A269756(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A269753.P5191050659663537577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269756 (n - 1) - (A000038 n - a (n - 1))

end

end A269753.P5191050659663537577

/-! ## A269753.P1429440487374603291

`Δ[A269755(n)]-A269756(n)`
-/

namespace A269753.P1429440487374603291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269756 n

end

end A269753.P1429440487374603291

/-! ## A269753.P14128417741591183643

`A269755(n+1)-(A269756(n)+A269755(n))`
-/

namespace A269753.P14128417741591183643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269755 (n + 1) - (A269756 n + A269755 n)

end

end A269753.P14128417741591183643

/-!
# A269754: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A269754, there is no canonical definition to state claims against.
-/

/-! ## A269754.P7832939944892890262

`A269753(2^n-1)`
-/

namespace A269754.P7832939944892890262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 (2 ^ n - 1)

end

end A269754.P7832939944892890262

/-! ## A269754.P5498064047168612568

`record[A269753(A227351(n))]`
-/

namespace A269754.P5498064047168612568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269754.P5498064047168612568

/-! ## A269754.P16897042013502124318

`record[A269753(A334076(n))]`
-/

namespace A269754.P16897042013502124318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 (A334076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269754.P16897042013502124318

/-! ## A269754.P3881006332342036902

`record[A269753(A253564(n+1))]`
-/

namespace A269754.P3881006332342036902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269754.P3881006332342036902

/-! ## A269754.P13989876746971428206

`record[A269753(A302029(n+1))]`
-/

namespace A269754.P13989876746971428206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269754.P13989876746971428206

/-!
# A269755: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A269755, there is no canonical definition to state claims against.
-/

/-! ## A269755.P7063027601526584611

`∑[A269753(n)]`
-/

namespace A269755.P7063027601526584611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269755.P7063027601526584611

/-! ## A269755.P13869996135714356201

`∑[∑[A269756(n)]+1-A269756(n)]`
-/

namespace A269755.P13869996135714356201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A269756 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269755.P13869996135714356201

/-! ## A269755.P15951672157599632917

`a(n-1)+A269753(n)+A000007(n)` with `a(0)=1`
-/

namespace A269755.P15951672157599632917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A269753 n + A000007 n)

end

end A269755.P15951672157599632917

/-! ## A269755.P4688543897365763907

`a(n-1)+A269753(n)%A017426(n)²` with `a(0)=1`
-/

namespace A269755.P4688543897365763907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A269753 n) (A017426 n ^ 2)

end

end A269755.P4688543897365763907

/-! ## A269755.P11843950161862065817

`A269753(n)+a(A028242(A004273(n)))` with `a(0)=1`
-/

namespace A269755.P11843950161862065817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269753 n + a (A028242 (A004273 n).toNat).toNat

end

end A269755.P11843950161862065817

/-!
# A269756: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 30", based on the 5-celled von Neumann neighborhood.

The programs for A269756, there is no canonical definition to state claims against.
-/

/-! ## A269756.P14797094749714332744

`Δ[A269753(n)]`
-/

namespace A269756.P14797094749714332744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269756.P14797094749714332744

/-! ## A269756.P1147403236890093099

`A269753(n+1)-A269753(n)`
-/

namespace A269756.P1147403236890093099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269753 (n + 1) - A269753 n

end

end A269756.P1147403236890093099

/-! ## A269756.P6695393037887726940

`Δ[A269755(n)]-A270133(n)%A269231(n)`
-/

namespace A269756.P6695393037887726940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A270133 n) (A269231 n)

end

end A269756.P6695393037887726940

/-!
# A269758: Prime powers with squarefree neighbors.

The programs for A269758, the canonical program `A269758.P3897110207471360773` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269758 has offset 1).

The definition of A269758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269758.P17104962673859772112

`2^A262978(n+1)`
-/

namespace A269758.P17104962673859772112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A262978 (n + 1) : ℤ)

end

end A269758.P17104962673859772112

namespace A269758

/-- `2^A262978(n+1)` -/
def P17104962673859772112.Spec : Prop :=
  ∀ n, P17104962673859772112.a n = (A269758 (n + 1) : ℚ)

end A269758

/-! ## A269758.P3897110207471360773

`A000079(A262978(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A269758

/-- `A000079(A262978(n+1))` -/
def P3897110207471360773.Spec : Prop :=
  ∀ n, P3897110207471360773.a n = A269758 (n + 1)

theorem P3897110207471360773.correct : P3897110207471360773.Spec := by
  intro n
  simp only [A269758, Nat.add_sub_cancel]

end A269758

/-! ## A269758.P4001078026719717453

`A011782(A262978(n+1)+1)`
-/

namespace A269758.P4001078026719717453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A262978 (n + 1) + 1).toNat

end

end A269758.P4001078026719717453

namespace A269758

/-- `A011782(A262978(n+1)+1)` -/
def P4001078026719717453.Spec : Prop :=
  ∀ n, P4001078026719717453.a n = A269758 (n + 1)

end A269758

/-! ## A269758.P17249954352137121171

`A016116(2*A262978(n+1))`
-/

namespace A269758.P17249954352137121171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A262978 (n + 1)).toNat

end

end A269758.P17249954352137121171

namespace A269758

/-- `A016116(2*A262978(n+1))` -/
def P17249954352137121171.Spec : Prop :=
  ∀ n, P17249954352137121171.a n = A269758 (n + 1)

end A269758

/-! ## A269758.P5421860663975889841

`record[2^A091684(A259178(n+1))]`
-/

namespace A269758.P5421860663975889841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091684 (A259178 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269758.P5421860663975889841

namespace A269758

/-- `record[2^A091684(A259178(n+1))]` -/
def P5421860663975889841.Spec : Prop :=
  ∀ n, P5421860663975889841.a n = (A269758 (n + 1) : ℚ)

end A269758

/-! ## A269758.P9071078625896228853

`A016116(A262978(n+1)+A262978(n+1)+1)`
-/

namespace A269758.P9071078625896228853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A262978 (n + 1) + (A262978 (n + 1) + 1)).toNat

end

end A269758.P9071078625896228853

namespace A269758

/-- `A016116(A262978(n+1)+A262978(n+1)+1)` -/
def P9071078625896228853.Spec : Prop :=
  ∀ n, P9071078625896228853.a n = A269758 (n + 1)

end A269758

/-!
# A269759: 

The programs for A269759, there is no canonical definition to state claims against.
-/

/-! ## A269759.P2540578504587732487

`A269767(∑[4*n]+1)`
-/

namespace A269759.P2540578504587732487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269759.P2540578504587732487

/-! ## A269759.P4910522882576182396

`A269767(A001844(n))/A040790(n)`
-/

namespace A269759.P4910522882576182396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269767 (A001844 n).toNat : ℚ) / (A040790 n : ℚ)

end

end A269759.P4910522882576182396

/-!
# A269760: Number of n X 1 0..5 arrays with some element plus some horizontally or vertically adjacent neighbor totalling five exactly once.

The programs for A269760, the canonical program `A269760.P886798827695678158` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269760 has offset 1).

The definition of A269760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269760.P14644454292022387583

`ogf(6x/(1-10x+25x^2))`
-/

namespace A269760.P14644454292022387583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -10, 25] n

end

end A269760.P14644454292022387583

namespace A269760

/-- `ogf(6x/(1-10x+25x^2))` -/
def P14644454292022387583.Spec : Prop :=
  ∀ n, P14644454292022387583.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P886798827695678158

`6*5^(n-1)*n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269760

/-- `6*5^(n-1)*n` -/
def P886798827695678158.Spec : Prop :=
  ∀ n, P886798827695678158.a n = (A269760 (n + 1) : ℚ)

end A269760

/-! ## A269760.P7017630385415608478

`10*a(n-1)-25*a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A269760.P7017630385415608478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  10 * a (n - 1) - 25 * a (n - 2)

end

end A269760.P7017630385415608478

namespace A269760

/-- `10*a(n-1)-25*a(n-2)` -/
def P7017630385415608478.Spec : Prop :=
  ∀ n, P7017630385415608478.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P4994192084665652055

`12*A053464(n)/2`
-/

namespace A269760.P4994192084665652055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * A053464 n : ℚ) / 2

end

end A269760.P4994192084665652055

namespace A269760

/-- `12*A053464(n)/2` -/
def P4994192084665652055.Spec : Prop :=
  ∀ n, P4994192084665652055.a n = (A269760 (n + 1) : ℚ)

end A269760

/-! ## A269760.P10999013710463278085

`lcm(2, n*A003948(n))`
-/

namespace A269760.P10999013710463278085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A003948 n)

end

end A269760.P10999013710463278085

namespace A269760

/-- `lcm(2, n*A003948(n))` -/
def P10999013710463278085.Spec : Prop :=
  ∀ n, (P10999013710463278085.a n : ℤ) = A269760 (n + 1)

end A269760

/-! ## A269760.P7327791502673434566

`ceil(6*A036291(n)/5)`
-/

namespace A269760.P7327791502673434566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * ((A036291 n : ℚ) / 5)⌉

end

end A269760.P7327791502673434566

namespace A269760

/-- `ceil(6*A036291(n)/5)` -/
def P7327791502673434566.Spec : Prop :=
  ∀ n, P7327791502673434566.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P1103310700613016770

`n*A235702(n+1)/4`
-/

namespace A269760.P1103310700613016770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A235702 (n + 1) : ℚ) / 4

end

end A269760.P1103310700613016770

namespace A269760

/-- `n*A235702(n+1)/4` -/
def P1103310700613016770.Spec : Prop :=
  ∀ n, P1103310700613016770.a n = (A269760 (n + 1) : ℚ)

end A269760

/-! ## A269760.P2870945472378159061

`ceil(6*(A050916(n)-1)/5)`
-/

namespace A269760.P2870945472378159061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * ((A050916 n - 1 : ℚ) / 5)⌉

end

end A269760.P2870945472378159061

namespace A269760

/-- `ceil(6*(A050916(n)-1)/5)` -/
def P2870945472378159061.Spec : Prop :=
  ∀ n, P2870945472378159061.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P3199562804337986147

`xor(1, 3*n*A020699(n))-1`
-/

namespace A269760.P3199562804337986147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (3 * ((n : ℤ) * A020699 n)) - 1

end

end A269760.P3199562804337986147

namespace A269760

/-- `xor(1, 3*n*A020699(n))-1` -/
def P3199562804337986147.Spec : Prop :=
  ∀ n, P3199562804337986147.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P12878235493002944610

`A053464(n)+n*A000351(n)`
-/

namespace A269760.P12878235493002944610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 n + (n : ℤ) * A000351 n

end

end A269760.P12878235493002944610

namespace A269760

/-- `A053464(n)+n*A000351(n)` -/
def P12878235493002944610.Spec : Prop :=
  ∀ n, P12878235493002944610.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P13045267244589813141

`abs((n-A008585(n))*A005053(n))`
-/

namespace A269760.P13045267244589813141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A008585 n) * A005053 n|

end

end A269760.P13045267244589813141

namespace A269760

/-- `abs((n-A008585(n))*A005053(n))` -/
def P13045267244589813141.Spec : Prop :=
  ∀ n, P13045267244589813141.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P17557214757054423429

`A053464(n+1)+A053464(n)-A000351(n)`
-/

namespace A269760.P17557214757054423429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 (n + 1) + (A053464 n - A000351 n)

end

end A269760.P17557214757054423429

namespace A269760

/-- `A053464(n+1)+A053464(n)-A000351(n)` -/
def P17557214757054423429.Spec : Prop :=
  ∀ n, P17557214757054423429.a n = A269760 (n + 1)

end A269760

/-! ## A269760.P16952305010941421926

`A187275(2*n)/5`
-/

namespace A269760.P16952305010941421926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187275 (2 * n) : ℚ) / 5

end

end A269760.P16952305010941421926

namespace A269760

/-- `A187275(2*n)/5` -/
def P16952305010941421926.Spec : Prop :=
  ∀ n, P16952305010941421926.a n = (A269760 (n + 1) : ℚ)

end A269760

/-!
# A269761: Number of n X 2 0..5 arrays with some element plus some horizontally or vertically adjacent neighbor totalling five exactly once.

The programs for A269761, there is no canonical definition to state claims against.
-/

/-! ## A269761.P2628617450555902608

`A269767(∑[n+1]+2)`
-/

namespace A269761.P2628617450555902608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A269761.P2628617450555902608

/-! ## A269761.P5245699817904285785

`record[A269767(Δ[A003453(n+5)])]`
-/

namespace A269761.P5245699817904285785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269761.P5245699817904285785

/-!
# A269762: Number of n X 3 0..5 arrays with some element plus some horizontally or vertically adjacent neighbor totalling five exactly once.

The programs for A269762, there is no canonical definition to state claims against.
-/

/-! ## A269762.P3705023669923528917

`A269767(∑[n+2]+4)`
-/

namespace A269762.P3705023669923528917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A269762.P3705023669923528917

/-! ## A269762.P8684368441853632739

`lcm(2, A269767(A167614(n+1)))`
-/

namespace A269762.P8684368441853632739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269767 (A167614 (n + 1)).toNat)

end

end A269762.P8684368441853632739

/-! ## A269762.P13408198133459898525

`A269767(A167614(n+1))+A185284(n)`
-/

namespace A269762.P13408198133459898525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A167614 (n + 1)).toNat + A185284 n

end

end A269762.P13408198133459898525

/-! ## A269762.P2954029463771360744

`A269767(A167614(n+1))+A235145(n)`
-/

namespace A269762.P2954029463771360744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A167614 (n + 1)).toNat + A235145 n

end

end A269762.P2954029463771360744

/-!
# A269763: Number of n X 4 0..5 arrays with some element plus some horizontally or vertically adjacent neighbor totalling five exactly once.

The programs for A269763, there is no canonical definition to state claims against.
-/

/-! ## A269763.P8675750187491291464

`A269767(A055999(n)+10)`
-/

namespace A269763.P8675750187491291464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A055999 n + 10).toNat

end

end A269763.P8675750187491291464

/-! ## A269763.P17214367942630045519

`A269767(A167614(n+2)+1)`
-/

namespace A269763.P17214367942630045519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A167614 (n + 2) + 1).toNat

end

end A269763.P17214367942630045519

/-! ## A269763.P13338555276532071009

`A269767(eq[7, A206283(n+1)])`
-/

namespace A269763.P13338555276532071009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269763.P13338555276532071009

/-!
# A269765: 

The programs for A269765, there is no canonical definition to state claims against.
-/

/-! ## A269765.P12595884354799428898

`A269767(A000124(n+6)-6)`
-/

namespace A269765.P12595884354799428898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A000124 (n + 6) - 6).toNat

end

end A269765.P12595884354799428898

/-!
# A269766: 

The programs for A269766, there is no canonical definition to state claims against.
-/

/-! ## A269766.P12552251527021076384

`A269767(A133263(n+6)+5)`
-/

namespace A269766.P12552251527021076384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A133263 (n + 6) + 5).toNat

end

end A269766.P12552251527021076384

/-! ## A269766.P5318475603310678886

`A269767(A000124(n+6)+6)`
-/

namespace A269766.P5318475603310678886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269767 (A000124 (n + 6) + 6).toNat

end

end A269766.P5318475603310678886

/-!
# A269767: T(n,k)=Number of nXk 0..5 arrays with some element plus some horizontally or vertically adjacent neighbor totalling five exactly once.

The programs for A269767, there is no canonical definition to state claims against.
-/

/-! ## A269767.P7852327090030456050

`lcm(6, Δ[A258017(2*(n+1))])`
-/

namespace A269767.P7852327090030456050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258017 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (f1 (n + 1) - f1 n)

end

end A269767.P7852327090030456050

/-!
# A269769: Numbers of the form p^k - k where p is a prime number and k > 1.

The programs for A269769, there is no canonical definition to state claims against.
-/

/-! ## A269769.P17316646477428181334

`record[A360523(A377468(n+2))]`
-/

namespace A269769.P17316646477428181334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360523 (A377468 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269769.P17316646477428181334

/-! ## A269769.P16005936141021539549

`lt[A331251(n+1), A057898(n+1)]+1`
-/

namespace A269769.P16005936141021539549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A269769.P16005936141021539549

/-! ## A269769.P9369700360706498310

`A319163(n+1)-A304464(A319163(n+1))`
-/

namespace A269769.P9369700360706498310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319163 (n + 1) - A304464 (A319163 (n + 1)).toNat

end

end A269769.P9369700360706498310

/-!
# A269770: Number of length-n 0..n arrays with every repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A269770, there is no canonical definition to state claims against.
-/

/-! ## A269770.P16566530253006349869

`A269776((n+1)²+n²)`
-/

namespace A269770.P16566530253006349869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 ((n + 1) ^ 2 + n ^ 2)

end

end A269770.P16566530253006349869

/-! ## A269770.P744630370600431539

`record[A269776(Δ[A014112(n+1)])]`
-/

namespace A269770.P744630370600431539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269770.P744630370600431539

/-! ## A269770.P12510111322871125890

`record[gcd(A269776(n+1), A288530(n))]`
-/

namespace A269770.P12510111322871125890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269776 (n + 1)) (A288530 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269770.P12510111322871125890

/-! ## A269770.P1208945039528533476

`gcd(A000038(n), A269776(A001844(n)))`
-/

namespace A269770.P1208945039528533476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269776 (A001844 n).toNat)

end

end A269770.P1208945039528533476

/-! ## A269770.P17841089463685009105

`lcm(A054977(n), A269776(A001844(n)))`
-/

namespace A269770.P17841089463685009105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A269776 (A001844 n).toNat)

end

end A269770.P17841089463685009105

/-!
# A269771: Number of length-n 0..3 arrays with every repeated value unequal to the previous repeated value plus one mod 3+1.

The programs for A269771, the canonical program `A269771.P11131890646905516869` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269771 has offset 1).

The definition of A269771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269771.P14050057960294238899

`ogf((4-8x-8x^2)/(1-6x+6x^2+9x^3))`
-/

namespace A269771.P14050057960294238899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -8, -8] [1, -6, 6, 9] n

end

end A269771.P14050057960294238899

namespace A269771

/-- `ogf((4-8x-8x^2)/(1-6x+6x^2+9x^3))` -/
def P14050057960294238899.Spec : Prop :=
  ∀ n, P14050057960294238899.a n = A269771 (n + 1)

end A269771

/-! ## A269771.P11131890646905516869

`6*a(n-1)-6*a(n-2)-9*a(n-3)` with `a(0)=4, a(1)=16, a(2)=64`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269771

/-- `6*a(n-1)-6*a(n-2)-9*a(n-3)` -/
def P11131890646905516869.Spec : Prop :=
  ∀ n, P11131890646905516869.a n = A269771 (n + 1)

theorem P11131890646905516869.correct : P11131890646905516869.Spec := by
  intro n
  simp only [A269771, Nat.add_sub_cancel]

end A269771

/-! ## A269771.P6380345019336260566

`A123620(n+1)+A123620(n)-A003946(n)`
-/

namespace A269771.P6380345019336260566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123620 (n + 1) + (A123620 n - A003946 n)

end

end A269771.P6380345019336260566

namespace A269771

/-- `A123620(n+1)+A123620(n)-A003946(n)` -/
def P6380345019336260566.Spec : Prop :=
  ∀ n, P6380345019336260566.a n = A269771 (n + 1)

end A269771

/-! ## A269771.P7551158841260543881

`A269776(∑[n+3]+1)`
-/

namespace A269771.P7551158841260543881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A269771.P7551158841260543881

namespace A269771

/-- `A269776(∑[n+3]+1)` -/
def P7551158841260543881.Spec : Prop :=
  ∀ n, P7551158841260543881.a n = A269771 (n + 1)

end A269771

/-! ## A269771.P9673523641355077465

`lcm(2, A269776(A052905(n)+3))`
-/

namespace A269771.P9673523641355077465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A269776 (A052905 n + 3).toNat)

end

end A269771.P9673523641355077465

namespace A269771

/-- `lcm(2, A269776(A052905(n)+3))` -/
def P9673523641355077465.Spec : Prop :=
  ∀ n, (P9673523641355077465.a n : ℤ) = A269771 (n + 1)

end A269771

/-! ## A269771.P9371489672804262935

`A269776(A034856(n+2))%A034986(n+1)`
-/

namespace A269771.P9371489672804262935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269776 (A034856 (n + 2)).toNat) (A034986 (n + 1))

end

end A269771.P9371489672804262935

namespace A269771

/-- `A269776(A034856(n+2))%A034986(n+1)` -/
def P9371489672804262935.Spec : Prop :=
  ∀ n, P9371489672804262935.a n = A269771 (n + 1)

end A269771

/-!
# A269772: Number of length-n 0..4 arrays with every repeated value unequal to the previous repeated value plus one mod 4+1.

The programs for A269772, the canonical program `A269772.P8844305352773269279` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269772 has offset 1).

The definition of A269772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269772.P8844305352773269279

`8*a(n-1)-12*a(n-2)-16*a(n-3)` with `a(0)=5, a(1)=25, a(2)=125`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269772

/-- `8*a(n-1)-12*a(n-2)-16*a(n-3)` -/
def P8844305352773269279.Spec : Prop :=
  ∀ n, P8844305352773269279.a n = A269772 (n + 1)

theorem P8844305352773269279.correct : P8844305352773269279.Spec := by
  intro n
  simp only [A269772, Nat.add_sub_cancel]

end A269772

/-! ## A269772.P14554153235276216345

`A269776(A027379(n+2))`
-/

namespace A269772.P14554153235276216345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A027379 (n + 2)).toNat

end

end A269772.P14554153235276216345

namespace A269772

/-- `A269776(A027379(n+2))` -/
def P14554153235276216345.Spec : Prop :=
  ∀ n, P14554153235276216345.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P1996524406357784224

`A269776(A055998(n+2))`
-/

namespace A269772.P1996524406357784224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055998 (n + 2)).toNat

end

end A269772.P1996524406357784224

namespace A269772

/-- `A269776(A055998(n+2))` -/
def P1996524406357784224.Spec : Prop :=
  ∀ n, P1996524406357784224.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P11167877629464650337

`A269776(A155212(n)+5)`
-/

namespace A269772.P11167877629464650337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A155212 n + 5).toNat

end

end A269772.P11167877629464650337

namespace A269772

/-- `A269776(A155212(n)+5)` -/
def P11167877629464650337.Spec : Prop :=
  ∀ n, P11167877629464650337.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P7985038576932528089

`A269776(A056000(n)+7)`
-/

namespace A269772.P7985038576932528089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A056000 n + 7).toNat

end

end A269772.P7985038576932528089

namespace A269772

/-- `A269776(A056000(n)+7)` -/
def P7985038576932528089.Spec : Prop :=
  ∀ n, P7985038576932528089.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P17153384109975649541

`A269776(eq[3, A193592(n)])`
-/

namespace A269772.P17153384109975649541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269772.P17153384109975649541

namespace A269772

/-- `A269776(eq[3, A193592(n)])` -/
def P17153384109975649541.Spec : Prop :=
  ∀ n, P17153384109975649541.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P17354608432421171940

`A269776(Δ[A034857(n+1)])`
-/

namespace A269772.P17354608432421171940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f1 (n + 1) - f1 n).toNat

end

end A269772.P17354608432421171940

namespace A269772

/-- `A269776(Δ[A034857(n+1)])` -/
def P17354608432421171940.Spec : Prop :=
  ∀ n, P17354608432421171940.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P2705523360363025525

`A269776(Δ[A006416(n+2)])`
-/

namespace A269772.P2705523360363025525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f1 (n + 1) - f1 n).toNat

end

end A269772.P2705523360363025525

namespace A269772

/-- `A269776(Δ[A006416(n+2)])` -/
def P2705523360363025525.Spec : Prop :=
  ∀ n, P2705523360363025525.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P10774960749769312159

`A269776(A046691(n+2)+1)`
-/

namespace A269772.P10774960749769312159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A046691 (n + 2) + 1).toNat

end

end A269772.P10774960749769312159

namespace A269772

/-- `A269776(A046691(n+2)+1)` -/
def P10774960749769312159.Spec : Prop :=
  ∀ n, P10774960749769312159.a n = A269772 (n + 1)

end A269772

/-! ## A269772.P1091889242706024473

`A269776(A052905(n+1)+2)`
-/

namespace A269772.P1091889242706024473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A052905 (n + 1) + 2).toNat

end

end A269772.P1091889242706024473

namespace A269772

/-- `A269776(A052905(n+1)+2)` -/
def P1091889242706024473.Spec : Prop :=
  ∀ n, P1091889242706024473.a n = A269772 (n + 1)

end A269772

/-!
# A269773: Number of length-n 0..5 arrays with every repeated value unequal to the previous repeated value plus one mod 5+1.

The programs for A269773, the canonical program `A269773.P2917441122731334681` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269773 has offset 1).

The definition of A269773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269773.P2917441122731334681

`10*a(n-1)-20*a(n-2)-25*a(n-3)` with `a(0)=6, a(1)=36, a(2)=216`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269773

/-- `10*a(n-1)-20*a(n-2)-25*a(n-3)` -/
def P2917441122731334681.Spec : Prop :=
  ∀ n, P2917441122731334681.a n = A269773 (n + 1)

theorem P2917441122731334681.correct : P2917441122731334681.Spec := by
  intro n
  simp only [A269773, Nat.add_sub_cancel]

end A269773

/-! ## A269773.P12445878724961035609

`A269776(A046691(n+3))`
-/

namespace A269773.P12445878724961035609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A046691 (n + 3)).toNat

end

end A269773.P12445878724961035609

namespace A269773

/-- `A269776(A046691(n+3))` -/
def P12445878724961035609.Spec : Prop :=
  ∀ n, P12445878724961035609.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P891852893541191410

`A269776(A056115(n)+11)`
-/

namespace A269773.P891852893541191410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A056115 n + 11).toNat

end

end A269773.P891852893541191410

namespace A269773

/-- `A269776(A056115(n)+11)` -/
def P891852893541191410.Spec : Prop :=
  ∀ n, P891852893541191410.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P16305797400739016657

`A269776(eq[4, A193592(n)])`
-/

namespace A269773.P16305797400739016657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269773.P16305797400739016657

namespace A269773

/-- `A269776(eq[4, A193592(n)])` -/
def P16305797400739016657.Spec : Prop :=
  ∀ n, P16305797400739016657.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P4247524413187415531

`A269776(Δ[A023545(n+1)])`
-/

namespace A269773.P4247524413187415531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f1 (n + 1) - f1 n).toNat

end

end A269773.P4247524413187415531

namespace A269773

/-- `A269776(Δ[A023545(n+1)])` -/
def P4247524413187415531.Spec : Prop :=
  ∀ n, P4247524413187415531.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P3823058351465093384

`A269776(A055999(n+2)+2)`
-/

namespace A269773.P3823058351465093384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055999 (n + 2) + 2).toNat

end

end A269773.P3823058351465093384

namespace A269773

/-- `A269776(A055999(n+2)+2)` -/
def P3823058351465093384.Spec : Prop :=
  ∀ n, P3823058351465093384.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P16708283450641226876

`A269776(A055998(n+3)-1)`
-/

namespace A269773.P16708283450641226876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055998 (n + 3) - 1).toNat

end

end A269773.P16708283450641226876

namespace A269773

/-- `A269776(A055998(n+3)-1)` -/
def P16708283450641226876.Spec : Prop :=
  ∀ n, P16708283450641226876.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P12781643194782202275

`A269776(A000124(n+5)-5)`
-/

namespace A269773.P12781643194782202275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000124 (n + 5) - 5).toNat

end

end A269773.P12781643194782202275

namespace A269773

/-- `A269776(A000124(n+5)-5)` -/
def P12781643194782202275.Spec : Prop :=
  ∀ n, P12781643194782202275.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P3387366109494809853

`A269776(Δ[A034857(n+2)]-1)`
-/

namespace A269773.P3387366109494809853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f1 (n + 1) - f1 n - 1).toNat

end

end A269773.P3387366109494809853

namespace A269773

/-- `A269776(Δ[A034857(n+2)]-1)` -/
def P3387366109494809853.Spec : Prop :=
  ∀ n, P3387366109494809853.a n = A269773 (n + 1)

end A269773

/-! ## A269773.P10418519679937327337

`A269776(Δ[A006416(n+3)]-1)`
-/

namespace A269773.P10418519679937327337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f1 (n + 1) - f1 n - 1).toNat

end

end A269773.P10418519679937327337

namespace A269773

/-- `A269776(Δ[A006416(n+3)]-1)` -/
def P10418519679937327337.Spec : Prop :=
  ∀ n, P10418519679937327337.a n = A269773 (n + 1)

end A269773

/-!
# A269774: Number of length-n 0..6 arrays with every repeated value unequal to the previous repeated value plus one mod 6+1.

The programs for A269774, the canonical program `A269774.P12657258678284230342` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269774 has offset 1).

The definition of A269774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269774.P12657258678284230342

`12*a(n-1)-30*a(n-2)-36*a(n-3)` with `a(0)=7, a(1)=49, a(2)=343`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269774

/-- `12*a(n-1)-30*a(n-2)-36*a(n-3)` -/
def P12657258678284230342.Spec : Prop :=
  ∀ n, P12657258678284230342.a n = A269774 (n + 1)

theorem P12657258678284230342.correct : P12657258678284230342.Spec := by
  intro n
  simp only [A269774, Nat.add_sub_cancel]

end A269774

/-! ## A269774.P11202018617733511182

`A269776(A052905(n+3))`
-/

namespace A269774.P11202018617733511182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A052905 (n + 3)).toNat

end

end A269774.P11202018617733511182

namespace A269774

/-- `A269776(A052905(n+3))` -/
def P11202018617733511182.Spec : Prop :=
  ∀ n, P11202018617733511182.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P11771415595671356877

`A269776(eq[5, A193592(n)])`
-/

namespace A269774.P11771415595671356877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269774.P11771415595671356877

namespace A269774

/-- `A269776(eq[5, A193592(n)])` -/
def P11771415595671356877.Spec : Prop :=
  ∀ n, P11771415595671356877.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P13303323300350949335

`A269776(A055999(n+3)+1)`
-/

namespace A269774.P13303323300350949335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055999 (n + 3) + 1).toNat

end

end A269774.P13303323300350949335

namespace A269774

/-- `A269776(A055999(n+3)+1)` -/
def P13303323300350949335.Spec : Prop :=
  ∀ n, P13303323300350949335.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P8742450937065226148

`A269776(A055998(n+4)-2)`
-/

namespace A269774.P8742450937065226148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055998 (n + 4) - 2).toNat

end

end A269774.P8742450937065226148

namespace A269774

/-- `A269776(A055998(n+4)-2)` -/
def P8742450937065226148.Spec : Prop :=
  ∀ n, P8742450937065226148.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P7746439439203664171

`A269776(A000217(n+6)-5)`
-/

namespace A269774.P7746439439203664171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000217 (n + 6) - 5).toNat

end

end A269774.P7746439439203664171

namespace A269774

/-- `A269776(A000217(n+6)-5)` -/
def P7746439439203664171.Spec : Prop :=
  ∀ n, P7746439439203664171.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P11525865579336827808

`A269776(A000124(n+6)-6)`
-/

namespace A269774.P11525865579336827808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000124 (n + 6) - 6).toNat

end

end A269774.P11525865579336827808

namespace A269774

/-- `A269776(A000124(n+6)-6)` -/
def P11525865579336827808.Spec : Prop :=
  ∀ n, P11525865579336827808.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P4686643516781975408

`A269776(Δ[A023545(n+2)]-1)`
-/

namespace A269774.P4686643516781975408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (f1 (n + 1) - f1 n - 1).toNat

end

end A269774.P4686643516781975408

namespace A269774

/-- `A269776(Δ[A023545(n+2)]-1)` -/
def P4686643516781975408.Spec : Prop :=
  ∀ n, P4686643516781975408.a n = A269774 (n + 1)

end A269774

/-! ## A269774.P4990285117162017645

`A269776(A302537(n+2)-2*n)`
-/

namespace A269774.P4990285117162017645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A302537 (n + 2) - (2 * n : ℤ)).toNat

end

end A269774.P4990285117162017645

namespace A269774

/-- `A269776(A302537(n+2)-2*n)` -/
def P4990285117162017645.Spec : Prop :=
  ∀ n, P4990285117162017645.a n = A269774 (n + 1)

end A269774

/-!
# A269775: Number of length-n 0..7 arrays with every repeated value unequal to the previous repeated value plus one mod 7+1.

The programs for A269775, the canonical program `A269775.P17989840596127718624` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269775 has offset 1).

The definition of A269775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269775.P17989840596127718624

`14*a(n-1)-42*a(n-2)-49*a(n-3)` with `a(0)=8, a(1)=64, a(2)=512`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269775

/-- `14*a(n-1)-42*a(n-2)-49*a(n-3)` -/
def P17989840596127718624.Spec : Prop :=
  ∀ n, P17989840596127718624.a n = A269775 (n + 1)

theorem P17989840596127718624.correct : P17989840596127718624.Spec := by
  intro n
  simp only [A269775, Nat.add_sub_cancel]

end A269775

/-! ## A269775.P11549881442266229596

`A269776(A055999(n+4))`
-/

namespace A269775.P11549881442266229596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055999 (n + 4)).toNat

end

end A269775.P11549881442266229596

namespace A269775

/-- `A269776(A055999(n+4))` -/
def P11549881442266229596.Spec : Prop :=
  ∀ n, P11549881442266229596.a n = A269775 (n + 1)

end A269775

/-! ## A269775.P6294541728754363139

`A269776(eq[6, A193592(n)])`
-/

namespace A269775.P6294541728754363139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A269775.P6294541728754363139

namespace A269775

/-- `A269776(eq[6, A193592(n)])` -/
def P6294541728754363139.Spec : Prop :=
  ∀ n, P6294541728754363139.a n = A269775 (n + 1)

end A269775

/-! ## A269775.P12682117512086486269

`A269776(A000124(n+7)-7)`
-/

namespace A269775.P12682117512086486269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000124 (n + 7) - 7).toNat

end

end A269775.P12682117512086486269

namespace A269775

/-- `A269776(A000124(n+7)-7)` -/
def P12682117512086486269.Spec : Prop :=
  ∀ n, P12682117512086486269.a n = A269775 (n + 1)

end A269775

/-! ## A269775.P12096147275158965958

`A269776(A000217(n+6)+n+1)`
-/

namespace A269775.P12096147275158965958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A269775.P12096147275158965958

namespace A269775

/-- `A269776(A000217(n+6)+n+1)` -/
def P12096147275158965958.Spec : Prop :=
  ∀ n, P12096147275158965958.a n = A269775 (n + 1)

end A269775

/-! ## A269775.P16032293131963008388

`A269776(A055998(n+4)-A001489(n+4))`
-/

namespace A269775.P16032293131963008388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055998 (n + 4) - A001489 (n + 4)).toNat

end

end A269775.P16032293131963008388

namespace A269775

/-- `A269776(A055998(n+4)-A001489(n+4))` -/
def P16032293131963008388.Spec : Prop :=
  ∀ n, P16032293131963008388.a n = A269775 (n + 1)

end A269775

/-!
# A269776: T(n,k)=Number of length-n 0..k arrays with every repeated value unequal to the previous repeated value plus one mod k+1.

The programs for A269776, there is no canonical definition to state claims against.
-/

/-! ## A269776.P2718552271712338894

`A269494(n+1)+A082859(A102480(n))`
-/

namespace A269776.P2718552271712338894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) + A082859 (A102480 n).toNat

end

end A269776.P2718552271712338894

/-! ## A269776.P8141597037244776981

`A269494(n+1)+A082859(A143632(n))`
-/

namespace A269776.P8141597037244776981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) + A082859 (A143632 n).toNat

end

end A269776.P8141597037244776981

/-! ## A269776.P1144271692673279467

`A269690(n+1)+A067898(A217304(n))`
-/

namespace A269776.P1144271692673279467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269690 (n + 1) + A067898 (A217304 n).toNat

end

end A269776.P1144271692673279467

/-! ## A269776.P14306959096074204503

`A269494(n+1)+A185213(A105868(n))`
-/

namespace A269776.P14306959096074204503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) + A185213 (A105868 n).toNat

end

end A269776.P14306959096074204503

/-! ## A269776.P12172619927569882913

`A269494(n+1)+A186745(A269129(n))`
-/

namespace A269776.P12172619927569882913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269494 (n + 1) + A186745 (A269129 n).toNat

end

end A269776.P12172619927569882913

/-!
# A269777: Number of length-5 0..n arrays with every repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A269777, the canonical program `A269777.P10537955305996316362` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269777 has offset 1).

The definition of A269777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269777.P10537955305996316362

`(n+2)^5-(3*n+4)*(n+2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269777

/-- `(n+2)^5-(3*n+4)*(n+2)` -/
def P10537955305996316362.Spec : Prop :=
  ∀ n, P10537955305996316362.a n = A269777 (n + 1)

theorem P10537955305996316362.correct : P10537955305996316362.Spec := by
  intro n
  simp only [A269777, Nat.add_sub_cancel]

end A269777

/-! ## A269777.P14523314933041581247

`∑[∑[A068236(n)-6]]`
-/

namespace A269777.P14523314933041581247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068236 n - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269777.P14523314933041581247

namespace A269777

/-- `∑[∑[A068236(n)-6]]` -/
def P14523314933041581247.Spec : Prop :=
  ∀ n, P14523314933041581247.a n = A269777 (n + 1)

end A269777

/-! ## A269777.P13068047807776714924

`(n+2)*(A269495(n+1)-(n+2))`
-/

namespace A269777.P13068047807776714924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A269495 (n + 1) - (n + 2 : ℤ))

end

end A269777.P13068047807776714924

namespace A269777

/-- `(n+2)*(A269495(n+1)-(n+2))` -/
def P13068047807776714924.Spec : Prop :=
  ∀ n, P13068047807776714924.a n = A269777 (n + 1)

theorem P13068047807776714924.correct : P13068047807776714924.Spec := by
  intro n
  simp only [A269777, Nat.add_sub_cancel, A269777.P13068047807776714924.a, A269777.P10537955305996316362.a, A269495, A269495.P17453572984529729438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269777

/-! ## A269777.P5910093136002546996

`∑[Δ[A269658(n)]-1]`
-/

namespace A269777.P5910093136002546996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269658 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269777.P5910093136002546996

namespace A269777

/-- `∑[Δ[A269658(n)]-1]` -/
def P5910093136002546996.Spec : Prop :=
  ∀ n, P5910093136002546996.a n = A269777 (n + 1)

end A269777

/-! ## A269777.P8954707381311380169

`∑[∑[A101098(n+2)-6]]`
-/

namespace A269777.P8954707381311380169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 2) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269777.P8954707381311380169

namespace A269777

/-- `∑[∑[A101098(n+2)-6]]` -/
def P8954707381311380169.Spec : Prop :=
  ∀ n, P8954707381311380169.a n = A269777 (n + 1)

end A269777

/-! ## A269777.P4725520969010388208

`(A258402(n+1)+n+1)*(n+2)`
-/

namespace A269777.P4725520969010388208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258402 (n + 1) + (n + 1 : ℤ)) * (n + 2 : ℤ)

end

end A269777.P4725520969010388208

namespace A269777

/-- `(A258402(n+1)+n+1)*(n+2)` -/
def P4725520969010388208.Spec : Prop :=
  ∀ n, P4725520969010388208.a n = A269777 (n + 1)

theorem P4725520969010388208.correct : P4725520969010388208.Spec := by
  intro n
  simp only [A269777, Nat.add_sub_cancel, A269777.P4725520969010388208.a, A269777.P10537955305996316362.a, A258402, A258402.P4882434139232473822.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269777

/-! ## A269777.P13396682125712267574

`(n+2)*(A246767(n+3)-n)`
-/

namespace A269777.P13396682125712267574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A246767 (n + 3) - (n : ℤ))

end

end A269777.P13396682125712267574

namespace A269777

/-- `(n+2)*(A246767(n+3)-n)` -/
def P13396682125712267574.Spec : Prop :=
  ∀ n, P13396682125712267574.a n = A269777 (n + 1)

theorem P13396682125712267574.correct : P13396682125712267574.Spec := by
  intro n
  simp only [A269777, Nat.add_sub_cancel, A269777.P13396682125712267574.a, A269777.P10537955305996316362.a, A246767, A246767.P4788069445635632835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A269777

/-! ## A269777.P10227613121188921315

`∑[Δ[A135497(n+1)]-4*(n+1)]`
-/

namespace A269777.P10227613121188921315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135497 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269777.P10227613121188921315

namespace A269777

/-- `∑[Δ[A135497(n+1)]-4*(n+1)]` -/
def P10227613121188921315.Spec : Prop :=
  ∀ n, P10227613121188921315.a n = A269777 (n + 1)

end A269777

/-!
# A269778: Number of length-6 0..n arrays with every repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A269778, the canonical program `A269778.P2691750135123245167` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269778 has offset 1).

The definition of A269778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269778.P2691750135123245167

`(n+1)^6+6*(n+1)^5+15*(n+1)^4+14*(n+1)^3+4*(n+1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269778

/-- `(n+1)^6+6*(n+1)^5+15*(n+1)^4+14*(n+1)^3+4*(n+1)²` -/
def P2691750135123245167.Spec : Prop :=
  ∀ n, (P2691750135123245167.a n : ℤ) = A269778 (n + 1)

theorem P2691750135123245167.correct : P2691750135123245167.Spec := by
  intro n
  simp only [A269778, Nat.add_sub_cancel]

end A269778

/-! ## A269778.P15842493193883053484

`(A033487(n+1)+(n+2)²)*(2*(n+1))²`
-/

namespace A269778.P15842493193883053484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033487 (n + 1) + ((n + 2) ^ 2 : ℤ)) * ((2 * (n + 1)) ^ 2 : ℤ)

end

end A269778.P15842493193883053484

namespace A269778

/-- `(A033487(n+1)+(n+2)²)*(2*(n+1))²` -/
def P15842493193883053484.Spec : Prop :=
  ∀ n, P15842493193883053484.a n = A269778 (n + 1)

theorem P15842493193883053484.correct : P15842493193883053484.Spec := by
  intro n
  simp only [A269778, Nat.add_sub_cancel, A269778.P15842493193883053484.a, A269778.P2691750135123245167.a, A033487, A033487.P180010041112617206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A269778

/-! ## A269778.P8695443887895969961

`(A000537(n+2)+A000217(n+1))*(2*(n+1))²`
-/

namespace A269778.P8695443887895969961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 2) + A000217 (n + 1)) * ((2 * (n + 1)) ^ 2 : ℤ)

end

end A269778.P8695443887895969961

namespace A269778

/-- `(A000537(n+2)+A000217(n+1))*(2*(n+1))²` -/
def P8695443887895969961.Spec : Prop :=
  ∀ n, P8695443887895969961.a n = A269778 (n + 1)

theorem P8695443887895969961.correct : P8695443887895969961.Spec := by
  intro n
  simp only [A269778, Nat.add_sub_cancel, A269778.P8695443887895969961.a, A269778.P2691750135123245167.a, A000217, A000217.P10269402890581615239.a, A000537, A000537.P7887993002585723883.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A269778

/-! ## A269778.P5807625301641648030

`A269776(A000217(n+5)+6)`
-/

namespace A269778.P5807625301641648030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000217 (n + 5) + 6).toNat

end

end A269778.P5807625301641648030

namespace A269778

/-- `A269776(A000217(n+5)+6)` -/
def P5807625301641648030.Spec : Prop :=
  ∀ n, P5807625301641648030.a n = A269778 (n + 1)

end A269778

/-! ## A269778.P9732796804652529745

`A269776(A000124(n+6)-(n+1))`
-/

namespace A269778.P9732796804652529745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A269778.P9732796804652529745

namespace A269778

/-- `A269776(A000124(n+6)-(n+1))` -/
def P9732796804652529745.Spec : Prop :=
  ∀ n, P9732796804652529745.a n = A269778 (n + 1)

end A269778

/-!
# A269779: Number of length-7 0..n arrays with every repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A269779, the canonical program `A269779.P7848466811186165842` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269779 has offset 1).

The definition of A269779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269779.P7848466811186165842

`(n+1)^7+7*(n+1)^6+21*(n+1)^5+25*(n+1)^4+11*(n+1)^3+(n+1)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269779

/-- `(n+1)^7+7*(n+1)^6+21*(n+1)^5+25*(n+1)^4+11*(n+1)^3+(n+1)²` -/
def P7848466811186165842.Spec : Prop :=
  ∀ n, (P7848466811186165842.a n : ℤ) = A269779 (n + 1)

theorem P7848466811186165842.correct : P7848466811186165842.Spec := by
  intro n
  simp only [A269779, Nat.add_sub_cancel]

end A269779

/-! ## A269779.P15840940958722566108

`A269776(A056119(n)+28)`
-/

namespace A269779.P15840940958722566108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A056119 n + 28).toNat

end

end A269779.P15840940958722566108

namespace A269779

/-- `A269776(A056119(n)+28)` -/
def P15840940958722566108.Spec : Prop :=
  ∀ n, P15840940958722566108.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P17430191038183737072

`A269776(A167499(n+5)+2)`
-/

namespace A269779.P17430191038183737072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A167499 (n + 5) + 2).toNat

end

end A269779.P17430191038183737072

namespace A269779

/-- `A269776(A167499(n+5)+2)` -/
def P17430191038183737072.Spec : Prop :=
  ∀ n, P17430191038183737072.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P15986760472116849474

`A269776(A167614(n+5)+4)`
-/

namespace A269779.P15986760472116849474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A167614 (n + 5) + 4).toNat

end

end A269779.P15986760472116849474

namespace A269779

/-- `A269776(A167614(n+5)+4)` -/
def P15986760472116849474.Spec : Prop :=
  ∀ n, P15986760472116849474.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P5134404147878075921

`A269776(A000096(n+5)+8)`
-/

namespace A269779.P5134404147878075921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000096 (n + 5) + 8).toNat

end

end A269779.P5134404147878075921

namespace A269779

/-- `A269776(A000096(n+5)+8)` -/
def P5134404147878075921.Spec : Prop :=
  ∀ n, P5134404147878075921.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P13329513862920393829

`A269776(A000217(n+6)+7)`
-/

namespace A269779.P13329513862920393829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000217 (n + 6) + 7).toNat

end

end A269779.P13329513862920393829

namespace A269779

/-- `A269776(A000217(n+6)+7)` -/
def P13329513862920393829.Spec : Prop :=
  ∀ n, P13329513862920393829.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P2860525143968362892

`A269776(A027379(n+4)+10)`
-/

namespace A269779.P2860525143968362892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A027379 (n + 4) + 10).toNat

end

end A269779.P2860525143968362892

namespace A269779

/-- `A269776(A027379(n+4)+10)` -/
def P2860525143968362892.Spec : Prop :=
  ∀ n, P2860525143968362892.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P13317106408276584

`A269776(A052905(n+3)+12)`
-/

namespace A269779.P13317106408276584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A052905 (n + 3) + 12).toNat

end

end A269779.P13317106408276584

namespace A269779

/-- `A269776(A052905(n+3)+12)` -/
def P13317106408276584.Spec : Prop :=
  ∀ n, P13317106408276584.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P13730694390713111132

`A269776(A055999(n+3)+13)`
-/

namespace A269779.P13730694390713111132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A055999 (n + 3) + 13).toNat

end

end A269779.P13730694390713111132

namespace A269779

/-- `A269776(A055999(n+3)+13)` -/
def P13730694390713111132.Spec : Prop :=
  ∀ n, P13730694390713111132.a n = A269779 (n + 1)

end A269779

/-! ## A269779.P2212247383350934709

`A269776(A000124(n+7)-(n+1))`
-/

namespace A269779.P2212247383350934709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269776 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A269779.P2212247383350934709

namespace A269779

/-- `A269776(A000124(n+7)-(n+1))` -/
def P2212247383350934709.Spec : Prop :=
  ∀ n, P2212247383350934709.a n = A269779 (n + 1)

end A269779

/-!
# A269780: Table read by antidiagonals where T(i,j) is the location of the pair (i,j) in A269501.

The programs for A269780, there is no canonical definition to state claims against.
-/

/-! ## A269780.P18044536167808322114

`A316323(n)+1`
-/

namespace A269780.P18044536167808322114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316323 n + 1

end

end A269780.P18044536167808322114

/-! ## A269780.P1198008523610855665

`A008619(2*A316323(n))`
-/

namespace A269780.P1198008523610855665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A316323 n).toNat

end

end A269780.P1198008523610855665

/-! ## A269780.P3248825246045574666

`A028242(2*A316323(n))`
-/

namespace A269780.P3248825246045574666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A316323 n).toNat

end

end A269780.P3248825246045574666

/-! ## A269780.P15403837178321836436

`A029579(2*A316323(n))`
-/

namespace A269780.P15403837178321836436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A316323 n).toNat

end

end A269780.P15403837178321836436

/-! ## A269780.P7097821280252729043

`A052938(2*A316323(n))`
-/

namespace A269780.P7097821280252729043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A316323 n).toNat

end

end A269780.P7097821280252729043

/-! ## A269780.P16809771733753078244

`A080513(2*A316323(n))`
-/

namespace A269780.P16809771733753078244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A316323 n).toNat

end

end A269780.P16809771733753078244

/-! ## A269780.P1157123032234422097

`A008611(3*A316323(n))`
-/

namespace A269780.P1157123032234422097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A316323 n).toNat

end

end A269780.P1157123032234422097

/-! ## A269780.P13620009275685136485

`A008620(3*A316323(n))`
-/

namespace A269780.P13620009275685136485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A316323 n).toNat

end

end A269780.P13620009275685136485

/-! ## A269780.P3414085049857444522

`A008621(4*A316323(n))`
-/

namespace A269780.P3414085049857444522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A316323 n).toNat

end

end A269780.P3414085049857444522

/-! ## A269780.P17875052729088991709

`A008612(6*A316323(n))`
-/

namespace A269780.P17875052729088991709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A316323 n).toNat

end

end A269780.P17875052729088991709

/-!
# A269782: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A269782, there is no canonical definition to state claims against.
-/

/-! ## A269782.P2327394024426565124

`∑[A270086(abs(1-n))]`
-/

namespace A269782.P2327394024426565124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269782.P2327394024426565124

/-! ## A269782.P6302931954940695695

`A270086(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A269782.P6302931954940695695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270086 (n - 1) + a (n - 1)

end

end A269782.P6302931954940695695

/-! ## A269782.P18154366170019733228

`∑[A270086(n)]+1-A270086(n)`
-/

namespace A269782.P18154366170019733228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270086 n)

end

end A269782.P18154366170019733228

/-! ## A269782.P2646154356175614705

`A270085(n+1)-(A270086(n)+A270085(n))`
-/

namespace A269782.P2646154356175614705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270085 (n + 1) - (A270086 n + A270085 n)

end

end A269782.P2646154356175614705

/-! ## A269782.P7312482201700341246

`A270569(n)-char[1]`
-/

namespace A269782.P7312482201700341246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270569 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A269782.P7312482201700341246

/-! ## A269782.P14697003174246607545

`xor(A063524(n), A270569(n))`
-/

namespace A269782.P14697003174246607545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A270569 n)

end

end A269782.P14697003174246607545

/-! ## A269782.P17298986076812784252

`and(-A000034(n), A270569(n))`
-/

namespace A269782.P17298986076812784252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A270569 n)

end

end A269782.P17298986076812784252

/-! ## A269782.P14813358728046706325

`and(-A010685(n), A270569(n))`
-/

namespace A269782.P14813358728046706325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010685 n) (A270569 n)

end

end A269782.P14813358728046706325

/-! ## A269782.P12188552376164248924

`and(-A010702(n), A270569(n))`
-/

namespace A269782.P12188552376164248924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010702 n) (A270569 n)

end

end A269782.P12188552376164248924

/-! ## A269782.P619373036363911994

`xor(char[A016783(n)], A270569(n))`
-/

namespace A269782.P619373036363911994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016783 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A270569 n)

end

end A269782.P619373036363911994

/-! ## A269782.P9478700431295970316

`xor(char[A016998(n)], A270569(n))`
-/

namespace A269782.P9478700431295970316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A270569 n)

end

end A269782.P9478700431295970316

/-! ## A269782.P13140383391350723167

`or(1, A270569(n))-A000035(n)`
-/

namespace A269782.P13140383391350723167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270569 n) - A000035 n

end

end A269782.P13140383391350723167

/-! ## A269782.P13593763330375261011

`and(A267890(n), A270569(n))`
-/

namespace A269782.P13593763330375261011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A270569 n)

end

end A269782.P13593763330375261011

/-! ## A269782.P12942603694466421310

`A270084(n)+A270569(n)-A271254(n)`
-/

namespace A269782.P12942603694466421310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270084 n + (A270569 n - A271254 n)

end

end A269782.P12942603694466421310

/-!
# A269784: Primes p such that 2*p + 11 is a square.

The programs for A269784, the canonical program `A269784.P16409185907935442102` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269784 has offset 1).

The definition of A269784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269784.P16409185907935442102

`p?[4*C(n, 2)-5]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269784

/-- `p?[4*C(n, 2)-5]` -/
def P16409185907935442102.Spec : Prop :=
  ∀ n, P16409185907935442102.a n = A269784 (n + 1)

theorem P16409185907935442102.correct : P16409185907935442102.Spec := by
  intro n
  simp only [A269784, Nat.add_sub_cancel]

end A269784

/-! ## A269784.P8713527752852123354

`p?[2*(n²+n)-5]`
-/

namespace A269784.P8713527752852123354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269784.P8713527752852123354

namespace A269784

/-- `p?[2*(n²+n)-5]` -/
def P8713527752852123354.Spec : Prop :=
  ∀ n, P8713527752852123354.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P4370260586933481235

`∑{d}[p?[∑[4*n]-5], #]-1`
-/

namespace A269784.P4370260586933481235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A269784.P4370260586933481235

namespace A269784

/-- `∑{d}[p?[∑[4*n]-5], #]-1` -/
def P4370260586933481235.Spec : Prop :=
  ∀ n, P4370260586933481235.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P11571152049053621329

`or(1, p?[n*2*(n+3)-1])`
-/

namespace A269784.P11571152049053621329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * (n + 3)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A269784.P11571152049053621329

namespace A269784

/-- `or(1, p?[n*2*(n+3)-1])` -/
def P11571152049053621329.Spec : Prop :=
  ∀ n, P11571152049053621329.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P9340419808764273655

`xor(1, p?[A046092(n)-5])+1`
-/

namespace A269784.P9340419808764273655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A269784.P9340419808764273655

namespace A269784

/-- `xor(1, p?[A046092(n)-5])+1` -/
def P9340419808764273655.Spec : Prop :=
  ∀ n, P9340419808764273655.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P2925958249770805358

`lcm(p?[A222182(n+1)], A020985(n))`
-/

namespace A269784.P2925958249770805358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020985 n)

end

end A269784.P2925958249770805358

namespace A269784

/-- `lcm(p?[A222182(n+1)], A020985(n))` -/
def P2925958249770805358.Spec : Prop :=
  ∀ n, (P2925958249770805358.a n : ℤ) = A269784 (n + 1)

end A269784

/-! ## A269784.P16141600878278841165

`A000007(n+1)+p?[A090288(n)-3]`
-/

namespace A269784.P16141600878278841165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269784.P16141600878278841165

namespace A269784

/-- `A000007(n+1)+p?[A090288(n)-3]` -/
def P16141600878278841165.Spec : Prop :=
  ∀ n, P16141600878278841165.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P8449687933980308089

`p?[A090288(n)-3]/A062157(n)²!`
-/

namespace A269784.P8449687933980308089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (A062157 n ^ 2).toNat : ℚ)

end

end A269784.P8449687933980308089

namespace A269784

/-- `p?[A090288(n)-3]/A062157(n)²!` -/
def P8449687933980308089.Spec : Prop :=
  ∀ n, P8449687933980308089.a n = (A269784 (n + 1) : ℚ)

end A269784

/-! ## A269784.P992803588353160164

`p?[A222182(n+1)]%A017043(2*n+1)`
-/

namespace A269784.P992803588353160164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017043 (2 * n + 1))

end

end A269784.P992803588353160164

namespace A269784

/-- `p?[A222182(n+1)]%A017043(2*n+1)` -/
def P992803588353160164.Spec : Prop :=
  ∀ n, P992803588353160164.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P4321621499552373032

`A000027(p?[A090288(n)-3])`
-/

namespace A269784.P4321621499552373032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269784.P4321621499552373032

namespace A269784

/-- `A000027(p?[A090288(n)-3])` -/
def P4321621499552373032.Spec : Prop :=
  ∀ n, P4321621499552373032.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P6337355367635902476

`A000027(p?[A046092(n)-5])`
-/

namespace A269784.P6337355367635902476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269784.P6337355367635902476

namespace A269784

/-- `A000027(p?[A046092(n)-5])` -/
def P6337355367635902476.Spec : Prop :=
  ∀ n, P6337355367635902476.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P10333834463814987815

`A000027(p?[A046691(n)+A006370(n)])`
-/

namespace A269784.P10333834463814987815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n + A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A269784.P10333834463814987815

namespace A269784

/-- `A000027(p?[A046691(n)+A006370(n)])` -/
def P10333834463814987815.Spec : Prop :=
  ∀ n, P10333834463814987815.a n = A269784 (n + 1)

end A269784

/-! ## A269784.P18369972789338403559

`∩[A141183(n+1), A222182(n+1)]`
-/

namespace A269784.P18369972789338403559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269784.P18369972789338403559

namespace A269784

/-- `∩[A141183(n+1), A222182(n+1)]` -/
def P18369972789338403559.Spec : Prop :=
  ∀ n, (P18369972789338403559.a n : ℤ) = A269784 (n + 1)

end A269784

/-!
# A269785: Primes p such that 2*p + 23 is a square.

The programs for A269785, the canonical program `A269785.P2911940683461690989` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269785 has offset 1).

The definition of A269785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269785.P2911940683461690989

`p?[4*C(n, 2)-11]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269785

/-- `p?[4*C(n, 2)-11]` -/
def P2911940683461690989.Spec : Prop :=
  ∀ n, P2911940683461690989.a n = A269785 (n + 1)

theorem P2911940683461690989.correct : P2911940683461690989.Spec := by
  intro n
  simp only [A269785, Nat.add_sub_cancel]

end A269785

/-! ## A269785.P4112897410823821683

`p?[ceil(n²/2)-12]`
-/

namespace A269785.P4112897410823821683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269785.P4112897410823821683

namespace A269785

/-- `p?[ceil(n²/2)-12]` -/
def P4112897410823821683.Spec : Prop :=
  ∀ n, P4112897410823821683.a n = A269785 (n + 1)

end A269785

/-! ## A269785.P1600472632197538626

`record[A006530(A056000(2*n+1)+A008486(n+2)+2)]`
-/

namespace A269785.P1600472632197538626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056000 (2 * n + 1) + A008486 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269785.P1600472632197538626

namespace A269785

/-- `record[A006530(A056000(2*n+1)+A008486(n+2)+2)]` -/
def P1600472632197538626.Spec : Prop :=
  ∀ n, P1600472632197538626.a n = A269785 (n + 1)

end A269785

/-! ## A269785.P7733574881277040042

`record[A051541(∑[n+3])]`
-/

namespace A269785.P7733574881277040042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051541 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269785.P7733574881277040042

namespace A269785

/-- `record[A051541(∑[n+3])]` -/
def P7733574881277040042.Spec : Prop :=
  ∀ n, P7733574881277040042.a n = A269785 (n + 1)

end A269785

/-!
# A269786: Primes p such that 2*p + 31 is a square.

The programs for A269786, there is no canonical definition to state claims against.
-/

/-! ## A269786.P7296847424739798770

`p?[∑[4*n]-15]`
-/

namespace A269786.P7296847424739798770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269786.P7296847424739798770

/-! ## A269786.P6606373873259110471

`∑{d}[p?[(n+5)*2*n-3], #]-1`
-/

namespace A269786.P6606373873259110471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 5) * (2 * n) : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A269786.P6606373873259110471

/-!
# A269787: Primes p such that 2*p + 43 is a square.

The programs for A269787, there is no canonical definition to state claims against.
-/

/-! ## A269787.P6124359450399913280

`p?[4*C(n, 2)-21]`
-/

namespace A269787.P6124359450399913280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269787.P6124359450399913280

/-! ## A269787.P14712420474710863696

`p?[ceil(n²/2)-22]`
-/

namespace A269787.P14712420474710863696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269787.P14712420474710863696

/-! ## A269787.P5732495557060256622

`or(1, p?[A161549(n)+2])`
-/

namespace A269787.P5732495557060256622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A269787.P5732495557060256622

/-! ## A269787.P348249430464264135

`∩[A000040(n+1), ceil(n²/2)-22]`
-/

namespace A269787.P348249430464264135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 22

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269787.P348249430464264135

/-! ## A269787.P458663639252590431

`∩[A161549(n)+2, A000040(n+1)]`
-/

namespace A269787.P458663639252590431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269787.P458663639252590431

/-!
# A269788: Primes p such that 2*p + 47 is a square.

The programs for A269788, the canonical program `A269788.P5418704700600000147` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269788 has offset 1).

The definition of A269788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269788.P5418704700600000147

`p?[4*C(n, 2)-23]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269788

/-- `p?[4*C(n, 2)-23]` -/
def P5418704700600000147.Spec : Prop :=
  ∀ n, P5418704700600000147.a n = A269788 (n + 1)

theorem P5418704700600000147.correct : P5418704700600000147.Spec := by
  intro n
  simp only [A269788, Nat.add_sub_cancel]

end A269788

/-! ## A269788.P10232901306461658227

`p?[ceil(n²/2)-24]`
-/

namespace A269788.P10232901306461658227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269788.P10232901306461658227

namespace A269788

/-- `p?[ceil(n²/2)-24]` -/
def P10232901306461658227.Spec : Prop :=
  ∀ n, P10232901306461658227.a n = A269788 (n + 1)

end A269788

/-! ## A269788.P8844002903779886419

`or(1, p?[A161549(n)])`
-/

namespace A269788.P8844002903779886419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A269788.P8844002903779886419

namespace A269788

/-- `or(1, p?[A161549(n)])` -/
def P8844002903779886419.Spec : Prop :=
  ∀ n, P8844002903779886419.a n = A269788 (n + 1)

end A269788

/-! ## A269788.P11768810657915634090

`∩[A002144(n+1), A161549(n)]`
-/

namespace A269788.P11768810657915634090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P11768810657915634090

namespace A269788

/-- `∩[A002144(n+1), A161549(n)]` -/
def P11768810657915634090.Spec : Prop :=
  ∀ n, (P11768810657915634090.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P2565535113087195515

`∩[A002313(n+1), A161549(n)]`
-/

namespace A269788.P2565535113087195515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P2565535113087195515

namespace A269788

/-- `∩[A002313(n+1), A161549(n)]` -/
def P2565535113087195515.Spec : Prop :=
  ∀ n, (P2565535113087195515.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P15865638067037943693

`∩[A038927(n+1), A161549(n)]`
-/

namespace A269788.P15865638067037943693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P15865638067037943693

namespace A269788

/-- `∩[A038927(n+1), A161549(n)]` -/
def P15865638067037943693.Spec : Prop :=
  ∀ n, (P15865638067037943693.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P1281656616264776819

`∩[A172480(n+1), A161549(n)]`
-/

namespace A269788.P1281656616264776819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P1281656616264776819

namespace A269788

/-- `∩[A172480(n+1), A161549(n)]` -/
def P1281656616264776819.Spec : Prop :=
  ∀ n, (P1281656616264776819.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P13444463142455645763

`∩[A191033(n+1), A161549(n)]`
-/

namespace A269788.P13444463142455645763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P13444463142455645763

namespace A269788

/-- `∩[A191033(n+1), A161549(n)]` -/
def P13444463142455645763.Spec : Prop :=
  ∀ n, (P13444463142455645763.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P11324441514947500525

`∩[A267601(n+1), A161549(n)]`
-/

namespace A269788.P11324441514947500525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P11324441514947500525

namespace A269788

/-- `∩[A267601(n+1), A161549(n)]` -/
def P11324441514947500525.Spec : Prop :=
  ∀ n, (P11324441514947500525.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P9842913893513301715

`∩[A175768(n+1), A161549(n)]`
-/

namespace A269788.P9842913893513301715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P9842913893513301715

namespace A269788

/-- `∩[A175768(n+1), A161549(n)]` -/
def P9842913893513301715.Spec : Prop :=
  ∀ n, (P9842913893513301715.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P15788644507943671499

`∩[A109515(n+1), A161549(n)]`
-/

namespace A269788.P15788644507943671499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P15788644507943671499

namespace A269788

/-- `∩[A109515(n+1), A161549(n)]` -/
def P15788644507943671499.Spec : Prop :=
  ∀ n, (P15788644507943671499.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P8119402854564680260

`∩[A266987(n+1), A161549(n)]`
-/

namespace A269788.P8119402854564680260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P8119402854564680260

namespace A269788

/-- `∩[A266987(n+1), A161549(n)]` -/
def P8119402854564680260.Spec : Prop :=
  ∀ n, (P8119402854564680260.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P15371460062612347546

`∩[A049092(n+1), A161549(n)]`
-/

namespace A269788.P15371460062612347546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P15371460062612347546

namespace A269788

/-- `∩[A049092(n+1), A161549(n)]` -/
def P15371460062612347546.Spec : Prop :=
  ∀ n, (P15371460062612347546.a n : ℤ) = A269788 (n + 1)

end A269788

/-! ## A269788.P6530672361223806826

`∩[A079348(n+1), A161549(n)]`
-/

namespace A269788.P6530672361223806826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A269788.P6530672361223806826

namespace A269788

/-- `∩[A079348(n+1), A161549(n)]` -/
def P6530672361223806826.Spec : Prop :=
  ∀ n, (P6530672361223806826.a n : ℤ) = A269788 (n + 1)

end A269788

/-!
# A269789: Primes p such that 2*p + 59 is a square.

The programs for A269789, the canonical program `A269789.P4026016715296330028` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269789 has offset 1).

The definition of A269789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A269789.P4026016715296330028

`p?[∑[4*n]-29]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269789

/-- `p?[∑[4*n]-29]` -/
def P4026016715296330028.Spec : Prop :=
  ∀ n, P4026016715296330028.a n = A269789 (n + 1)

theorem P4026016715296330028.correct : P4026016715296330028.Spec := by
  intro n
  simp only [A269789, Nat.add_sub_cancel]

end A269789

/-! ## A269789.P9265783757444191710

`or(1, p?[2*(n²+n)-29])`
-/

namespace A269789.P9265783757444191710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A269789.P9265783757444191710

namespace A269789

/-- `or(1, p?[2*(n²+n)-29])` -/
def P9265783757444191710.Spec : Prop :=
  ∀ n, P9265783757444191710.a n = A269789 (n + 1)

end A269789

/-! ## A269789.P5320931379278620920

`record[A020639(A154576(n+1)-10)]`
-/

namespace A269789.P5320931379278620920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154576 (n + 1) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269789.P5320931379278620920

namespace A269789

/-- `record[A020639(A154576(n+1)-10)]` -/
def P5320931379278620920.Spec : Prop :=
  ∀ n, P5320931379278620920.a n = A269789 (n + 1)

end A269789

/-!
# A269790: Primes p such that 2*p + 79 is a square.

The programs for A269790, there is no canonical definition to state claims against.
-/

/-! ## A269790.P15570868408309226814

`p?[4*C(n, 2)-39]`
-/

namespace A269790.P15570868408309226814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 : ℤ) - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269790.P15570868408309226814

/-! ## A269790.P2610756595251474109

`p?[ceil(n²/2)-40]`
-/

namespace A269790.P2610756595251474109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A269790.P2610756595251474109

/-! ## A269790.P1493972054778651664

`or(1, p?[A001844(n)-40])`
-/

namespace A269790.P1493972054778651664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A269790.P1493972054778651664

/-!
# A269792: a(n) = 5*n^4.

The programs for A269792, the canonical program `A269792.P3870612193346425875` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269792 has offset 0).

The definition of A269792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n^4` (program `A269792.P3870612193346425875`, by `A269792.P3870612193346425875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269792.P3870612193346425875

`5*n^4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A269792

/-- `5*n^4` -/
def P3870612193346425875.Spec : Prop :=
  ∀ n, (P3870612193346425875.a n : ℤ) = A269792 n

theorem P3870612193346425875.correct : P3870612193346425875.Spec := by
  intro n
  simp only [A269792]

end A269792

/-!
# A269795: Number of similarity classes of vectors with minimal Ducci period n.

The programs for A269795, there is no canonical definition to state claims against.
-/

/-! ## A269795.P3001101498412327188

`2*A365162(n+1)`
-/

namespace A269795.P3001101498412327188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A365162 (n + 1)

end

end A269795.P3001101498412327188

/-! ## A269795.P10216811792642914529

`2*A000265(n+1)*A051841(n+1)`
-/

namespace A269795.P10216811792642914529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000265 (n + 1) * A051841 (n + 1))

end

end A269795.P10216811792642914529

/-! ## A269795.P11779492211383779410

`2*A051841(n+1)*A227140(n+1)`
-/

namespace A269795.P11779492211383779410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051841 (n + 1) * A227140 (n + 1))

end

end A269795.P11779492211383779410

/-! ## A269795.P13790714094811149373

`∑{d}[n+1, A008683(#)*A075101((n+1)/#)]`
-/

namespace A269795.P13790714094811149373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A075101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A269795.P13790714094811149373

/-!
# A269796: a(n) = 4^n * A000108(n+1).

The programs for A269796, the canonical program `A269796.P2463442920930624806` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A269796 has offset 0).

The definition of A269796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*A000108(n+1)` (program `A269796.P2463442920930624806`, by `A269796.P2463442920930624806.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A269796.P2463442920930624806

`4^n*A000108(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A269796

/-- `4^n*A000108(n+1)` -/
def P2463442920930624806.Spec : Prop :=
  ∀ n, P2463442920930624806.a n = A269796 n

theorem P2463442920930624806.correct : P2463442920930624806.Spec := by
  intro n
  simp only [A269796]

end A269796

/-! ## A269796.P4680717659269609838

`4^n*C(2*n+2, n+1)/(n+2)`
-/

namespace A269796.P4680717659269609838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.choose (2 * n + 2) (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A269796.P4680717659269609838

namespace A269796

/-- `4^n*C(2*n+2, n+1)/(n+2)` -/
def P4680717659269609838.Spec : Prop :=
  ∀ n, P4680717659269609838.a n = (A269796 n : ℚ)

end A269796

/-! ## A269796.P7051765775090308353

`record[4*(4-6/n)*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A269796.P7051765775090308353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  4 * ((4 - 6 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269796.P7051765775090308353

namespace A269796

/-- `record[4*(4-6/n)*a(n-1)]` -/
def P7051765775090308353.Spec : Prop :=
  ∀ n, P7051765775090308353.a n = (A269796 n : ℚ)

end A269796

/-! ## A269796.P7192190625172906249

`4^n*A039598(∑[n])`
-/

namespace A269796.P7192190625172906249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A039598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269796.P7192190625172906249

namespace A269796

/-- `4^n*A039598(∑[n])` -/
def P7192190625172906249.Spec : Prop :=
  ∀ n, P7192190625172906249.a n = A269796 n

end A269796

/-! ## A269796.P1209973265362669379

`4^n*∑[A071724(n)]`
-/

namespace A269796.P1209973265362669379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A269796.P1209973265362669379

namespace A269796

/-- `4^n*∑[A071724(n)]` -/
def P1209973265362669379.Spec : Prop :=
  ∀ n, P1209973265362669379.a n = A269796 n

end A269796

/-! ## A269796.P508612298325591121

`4^n*Δ[A014138(n)]`
-/

namespace A269796.P508612298325591121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A269796.P508612298325591121

namespace A269796

/-- `4^n*Δ[A014138(n)]` -/
def P508612298325591121.Spec : Prop :=
  ∀ n, P508612298325591121.a n = A269796 n

end A269796

/-! ## A269796.P9835515982793681061

`4^n*record[A097331(n)]`
-/

namespace A269796.P9835515982793681061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269796.P9835515982793681061

namespace A269796

/-- `4^n*record[A097331(n)]` -/
def P9835515982793681061.Spec : Prop :=
  ∀ n, P9835515982793681061.a n = A269796 n

end A269796

/-! ## A269796.P11614779189444060485

`4^n*record[A126120(n)]`
-/

namespace A269796.P11614779189444060485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269796.P11614779189444060485

namespace A269796

/-- `4^n*record[A126120(n)]` -/
def P11614779189444060485.Spec : Prop :=
  ∀ n, P11614779189444060485.a n = A269796 n

end A269796

/-! ## A269796.P10385031476574819676

`4^n*record[A329687(n)]`
-/

namespace A269796.P10385031476574819676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A269796.P10385031476574819676

namespace A269796

/-- `4^n*record[A329687(n)]` -/
def P10385031476574819676.Spec : Prop :=
  ∀ n, P10385031476574819676.a n = A269796 n

end A269796

/-! ## A269796.P7337033714107343284

`4*a(n-1)*ratio[A000108(n)]` with `a(0)=1`
-/

namespace A269796.P7337033714107343284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A269796.P7337033714107343284

namespace A269796

/-- `4*a(n-1)*ratio[A000108(n)]` -/
def P7337033714107343284.Spec : Prop :=
  ∀ n, P7337033714107343284.a n = (A269796 n : ℚ)

end A269796

/-!
# A269797: Numbers k such that (29*10^k + 91)/3 is prime.

The programs for A269797, there is no canonical definition to state claims against.
-/

/-! ## A269797.P3543641084404307511

`A239139(A341465(2*(n+2))-A239087(n+1))`
-/

namespace A269797.P3543641084404307511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A341465 (2 * (n + 2) + 38) - A239087 (n + 1)).toNat

end

end A269797.P3543641084404307511

/-! ## A269797.P7729170026978734976

`A239139(A341465(2*(n+2))-A239088(n+1))`
-/

namespace A269797.P7729170026978734976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A341465 (2 * (n + 2) + 38) - A239088 (n + 1)).toNat

end

end A269797.P7729170026978734976

/-! ## A269797.P1302614300889119852

`A320278(A392584(n+1))`
-/

namespace A269797.P1302614300889119852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A392584 (n + 1)).toNat

end

end A269797.P1302614300889119852

/-! ## A269797.P8359578027161193023

`∑[A326625(∑[A101300(n)])]`
-/

namespace A269797.P8359578027161193023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269797.P8359578027161193023

/-! ## A269797.P4232023610675746671

`A244041(∑[∏[A006950(n)]])`
-/

namespace A269797.P4232023610675746671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A269797.P4232023610675746671

