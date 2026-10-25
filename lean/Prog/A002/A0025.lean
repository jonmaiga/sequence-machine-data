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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A002500: Number of self-converse relations on n points.

The programs for A002500, there is no canonical definition to state claims against.
-/

/-! ## A002500.P1066263237009775821

`2*A029849(n)-A000595(n)`
-/

namespace A002500.P1066263237009775821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - A000595 n

end

end A002500.P1066263237009775821

/-! ## A002500.P5255666159577309379

`2*A029849(n)-(A055974(n)+A055973(n))`
-/

namespace A002500.P5255666159577309379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - (A055974 n + A055973 n)

end

end A002500.P5255666159577309379

/-! ## A002500.P18243816732164792503

`2*A029849(n)-(A055973(n)-(A055967(n)-A055974(n)))`
-/

namespace A002500.P18243816732164792503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - (A055973 n - (A055967 n - A055974 n))

end

end A002500.P18243816732164792503

/-! ## A002500.P6102367413983204525

`2*A029849(n)-(A055973(n)+A055973(n)-A000171(2*n+1))`
-/

namespace A002500.P6102367413983204525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029849 n - (A055973 n + (A055973 n - A000171 (2 * n + 1)))

end

end A002500.P6102367413983204525

/-!
# A002501: a(n) = 7^n - 3*4^n + 2*3^n.

The programs for A002501, the canonical program `A002501.P2894137443554051170` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002501 has offset 1).

The definition of A002501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(n+1)-3*4^(n+1)+2*3^(n+1)` (program `A002501.P2894137443554051170`, by `A002501.P2894137443554051170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002501.P2894137443554051170

`7^(n+1)-3*4^(n+1)+2*3^(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002501

/-- `7^(n+1)-3*4^(n+1)+2*3^(n+1)` -/
def P2894137443554051170.Spec : Prop :=
  ∀ n, P2894137443554051170.a n = A002501 (n + 1)

theorem P2894137443554051170.correct : P2894137443554051170.Spec := by
  intro n
  simp only [A002501, Nat.add_sub_cancel]

end A002501

/-! ## A002501.P2215879034467633723

`A262307(∑[n+2]+4)`
-/

namespace A002501.P2215879034467633723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A002501.P2215879034467633723

namespace A002501

/-- `A262307(∑[n+2]+4)` -/
def P2215879034467633723.Spec : Prop :=
  ∀ n, P2215879034467633723.a n = A002501 (n + 1)

end A002501

/-! ## A002501.P8910179637288219140

`or(1, A262307(A167614(n+1)))`
-/

namespace A002501.P8910179637288219140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262307 (A167614 (n + 1)).toNat)

end

end A002501.P8910179637288219140

namespace A002501

/-- `or(1, A262307(A167614(n+1)))` -/
def P8910179637288219140.Spec : Prop :=
  ∀ n, P8910179637288219140.a n = A002501 (n + 1)

end A002501

/-! ## A002501.P4356475974015896990

`lcm(A020985(n), A262307(A167614(n+1)))`
-/

namespace A002501.P4356475974015896990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A262307 (A167614 (n + 1)).toNat)

end

end A002501.P4356475974015896990

namespace A002501

/-- `lcm(A020985(n), A262307(A167614(n+1)))` -/
def P4356475974015896990.Spec : Prop :=
  ∀ n, (P4356475974015896990.a n : ℤ) = A002501 (n + 1)

end A002501

/-!
# A002502: Number of connected relations.

The programs for A002502, the canonical program `A002502.P15529187331047987719` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002502 has offset 1).

The definition of A002502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002502.P15529187331047987719

`15^(n+1)-4*8^(n+1)-3*6^(n+1)+12*5^(n+1)-6*4^(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002502

/-- `15^(n+1)-4*8^(n+1)-3*6^(n+1)+12*5^(n+1)-6*4^(n+1)` -/
def P15529187331047987719.Spec : Prop :=
  ∀ n, P15529187331047987719.a n = A002502 (n + 1)

theorem P15529187331047987719.correct : P15529187331047987719.Spec := by
  intro n
  simp only [A002502, Nat.add_sub_cancel]

end A002502

/-! ## A002502.P3453864891716016603

`A262307(A052905(n)+9)`
-/

namespace A002502.P3453864891716016603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A052905 n + 9).toNat

end

end A002502.P3453864891716016603

namespace A002502

/-- `A262307(A052905(n)+9)` -/
def P3453864891716016603.Spec : Prop :=
  ∀ n, P3453864891716016603.a n = A002502 (n + 1)

end A002502

/-! ## A002502.P13858821033335415124

`A262307(A055999(n)+10)`
-/

namespace A002502.P13858821033335415124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A055999 n + 10).toNat

end

end A002502.P13858821033335415124

namespace A002502

/-- `A262307(A055999(n)+10)` -/
def P13858821033335415124.Spec : Prop :=
  ∀ n, P13858821033335415124.a n = A002502 (n + 1)

end A002502

/-! ## A002502.P16676039165573476917

`A262307(A167614(n+2)+1)`
-/

namespace A002502.P16676039165573476917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A167614 (n + 2) + 1).toNat

end

end A002502.P16676039165573476917

namespace A002502

/-- `A262307(A167614(n+2)+1)` -/
def P16676039165573476917.Spec : Prop :=
  ∀ n, P16676039165573476917.a n = A002502 (n + 1)

end A002502

/-! ## A002502.P355971516213038821

`A262307(A000096(n+2)+5)`
-/

namespace A002502.P355971516213038821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A000096 (n + 2) + 5).toNat

end

end A002502.P355971516213038821

namespace A002502

/-- `A262307(A000096(n+2)+5)` -/
def P355971516213038821.Spec : Prop :=
  ∀ n, P355971516213038821.a n = A002502 (n + 1)

end A002502

/-!
# A002503: Numbers k such that binomial(2*k,k) is divisible by (k+1)^2.

The programs for A002503, there is no canonical definition to state claims against.
-/

/-! ## A002503.P4356786738394890479

`A067348(n+2)/2-1`
-/

namespace A002503.P4356786738394890479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067348 (n + 2) : ℚ) / 2 - 1

end

end A002503.P4356786738394890479

/-! ## A002503.P8393443118422503442

`A058008(n+2)-1`
-/

namespace A002503.P8393443118422503442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 2) - 1

end

end A002503.P8393443118422503442

/-! ## A002503.P3064365530010694727

`∑[abs(Δ[A058008(n+1)])]`
-/

namespace A002503.P3064365530010694727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002503.P3064365530010694727

/-! ## A002503.P6677577764852955032

`∑[A000027(Δ[A058008(n+1)])]`
-/

namespace A002503.P6677577764852955032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002503.P6677577764852955032

/-! ## A002503.P6131209603659521149

`∑[A028310(Δ[A058008(n+1)])]`
-/

namespace A002503.P6131209603659521149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002503.P6131209603659521149

/-! ## A002503.P4989333755286016883

`A056067(2*(n+1))/2`
-/

namespace A002503.P4989333755286016883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056067 (2 * (n + 1)) : ℚ) / 2

end

end A002503.P4989333755286016883

/-! ## A002503.P9504376221066240080

`lt[n*A053214(n+1), n]`
-/

namespace A002503.P9504376221066240080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053214 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002503.P9504376221066240080

/-! ## A002503.P9534786575465563604

`lt[n², n*A333461(n+1)]`
-/

namespace A002503.P9534786575465563604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A333461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002503.P9534786575465563604

/-! ## A002503.P3939460488450633906

`lt[n*A042970(2*(n+1)), n]`
-/

namespace A002503.P3939460488450633906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A042970 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002503.P3939460488450633906

/-! ## A002503.P16665471890033057757

`A023443(A058008(n+2))`
-/

namespace A002503.P16665471890033057757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A058008 (n + 2)).toNat

end

end A002503.P16665471890033057757

/-! ## A002503.P2432988344341474263

`eq[A000007(n), A053214(n+1)]`
-/

namespace A002503.P2432988344341474263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P2432988344341474263

/-! ## A002503.P8878844327206201006

`eq[A000038(n), A053214(n+1)]`
-/

namespace A002503.P8878844327206201006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P8878844327206201006

/-! ## A002503.P8297433918706015146

`eq[A036987(n), A053214(n+1)]`
-/

namespace A002503.P8297433918706015146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P8297433918706015146

/-! ## A002503.P2634391505692483910

`eq[A000007(n), A099905(n+1)]`
-/

namespace A002503.P2634391505692483910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P2634391505692483910

/-! ## A002503.P2276816728525661877

`eq[A000038(n), A099905(n+1)]`
-/

namespace A002503.P2276816728525661877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P2276816728525661877

/-! ## A002503.P7420856432555598792

`eq[A058005(n+1), A103517(n)]`
-/

namespace A002503.P7420856432555598792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P7420856432555598792

/-! ## A002503.P5683964893881065825

`eq[A099894(n), A099905(n+1)]`
-/

namespace A002503.P5683964893881065825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P5683964893881065825

/-! ## A002503.P5260700189296511131

`eq[A099905(n+1), A120112(n)]`
-/

namespace A002503.P5260700189296511131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P5260700189296511131

/-! ## A002503.P18040572195719660778

`eq[A099905(n+1), A130706(n)]`
-/

namespace A002503.P18040572195719660778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P18040572195719660778

/-! ## A002503.P612487847622313835

`eq[A043545(n), A201059(n+1)]`
-/

namespace A002503.P612487847622313835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002503.P612487847622313835

/-!
# A002504: Numbers x such that 1 + 3*x*(x-1) is a ("cuban") prime (cf. A002407).

The programs for A002504, there is no canonical definition to state claims against.
-/

/-! ## A002504.P4204644090051135181

`A111251(n+1)+1`
-/

namespace A002504.P4204644090051135181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + 1

end

end A002504.P4204644090051135181

/-! ## A002504.P1744815601181546555

`(A121259(n+1)+1)/2`
-/

namespace A002504.P1744815601181546555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121259 (n + 1) + 1 : ℚ) / 2

end

end A002504.P1744815601181546555

/-! ## A002504.P1627701460238672620

`ceil(sqrt(A002407(n+1)/3))`
-/

namespace A002504.P1627701460238672620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A002407 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A002504.P1627701460238672620

/-! ## A002504.P9802448475430401266

`ceil(A002640(n+1)/3)`
-/

namespace A002504.P9802448475430401266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002640 (n + 1) : ℚ) / 3⌉

end

end A002504.P9802448475430401266

/-! ## A002504.P1895719951697245195

`A002640(n+1)+1-A121259(n+1)`
-/

namespace A002504.P1895719951697245195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) + (1 - A121259 (n + 1))

end

end A002504.P1895719951697245195

/-! ## A002504.P13929780864273234495

`eq[1, A350090(n)]+1`
-/

namespace A002504.P13929780864273234495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002504.P13929780864273234495

/-! ## A002504.P8530875492019882718

`A020725(A111251(n+1))`
-/

namespace A002504.P8530875492019882718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A111251 (n + 1)).toNat

end

end A002504.P8530875492019882718

/-! ## A002504.P11363842629152126240

`lt[A350090(n), atan(A046691(n))]+1`
-/

namespace A002504.P11363842629152126240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A046691 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A002504.P11363842629152126240

/-! ## A002504.P13363552118192346182

`lt[A350090(n), atan(A350116(n))]+1`
-/

namespace A002504.P13363552118192346182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A350116 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A002504.P13363552118192346182

/-! ## A002504.P13042031328699929549

`A000463(A121259(n+1))`
-/

namespace A002504.P13042031328699929549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A121259 (n + 1)).toNat

end

end A002504.P13042031328699929549

/-! ## A002504.P6439273255968678749

`A008620(A002640(n+1))`
-/

namespace A002504.P6439273255968678749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A002640 (n + 1)).toNat

end

end A002504.P6439273255968678749

/-! ## A002504.P8519307210110737300

`A004396(A002640(n+1)+2)/2`
-/

namespace A002504.P8519307210110737300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A002640 (n + 1) + 2).toNat : ℚ) / 2

end

end A002504.P8519307210110737300

/-! ## A002504.P15402581439931854900

`A004523(A002640(n+1)+2)/2`
-/

namespace A002504.P15402581439931854900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 (A002640 (n + 1) + 2).toNat : ℚ) / 2

end

end A002504.P15402581439931854900

/-! ## A002504.P2636574721586806874

`A002640(n+1)-A004396(A002640(n+1)-1)`
-/

namespace A002504.P2636574721586806874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) - A004396 (A002640 (n + 1) - 1).toNat

end

end A002504.P2636574721586806874

/-! ## A002504.P9931723989816992800

`A002640(n+1)-A004523(A002640(n+1)-1)`
-/

namespace A002504.P9931723989816992800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) - A004523 (A002640 (n + 1) - 1).toNat

end

end A002504.P9931723989816992800

/-! ## A002504.P15772166390976121087

`A008615(2*A002640(n+1))`
-/

namespace A002504.P15772166390976121087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A002640 (n + 1)).toNat

end

end A002504.P15772166390976121087

/-! ## A002504.P5078121384353157209

`A008615(A002640(n+1)+A002640(n+1)+2)`
-/

namespace A002504.P5078121384353157209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002640 (n + 1) + (A002640 (n + 1) + 2)).toNat

end

end A002504.P5078121384353157209

/-!
# A002505: Nearest integer to the n-th Gram point.

The programs for A002505, there is no canonical definition to state claims against.
-/

/-! ## A002505.P8968768578084181365

`A246408(A227549(n+1)+7)+A047700(n+1)`
-/

namespace A002505.P8968768578084181365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (A227549 (n + 1) + 7).toNat + A047700 (n + 1)

end

end A002505.P8968768578084181365

/-!
# A002506: Denominators of coefficients of even powers of x of the expansion of Bessel function J_2(x).

The programs for A002506, the canonical program `A002506.P4826753830668429757` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002506 has offset 0).

The definition of A002506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002506.P4826753830668429757

`4*n*(n+2)*a(n-1)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002506

/-- `4*n*(n+2)*a(n-1)` -/
def P4826753830668429757.Spec : Prop :=
  ∀ n, (P4826753830668429757.a n : ℤ) = A002506 n

theorem P4826753830668429757.correct : P4826753830668429757.Spec := by
  intro n
  simp only [A002506]

end A002506

/-! ## A002506.P17620612900309441298

`n!*∏[4*(n+2)]`
-/

namespace A002506.P17620612900309441298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002506.P17620612900309441298

namespace A002506

/-- `n!*∏[4*(n+2)]` -/
def P17620612900309441298.Spec : Prop :=
  ∀ n, (P17620612900309441298.a n : ℤ) = A002506 n

end A002506

/-! ## A002506.P4448757637540887582

`∏[∑[8*(n+1)]]/(n+1)`
-/

namespace A002506.P4448757637540887582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A002506.P4448757637540887582

namespace A002506

/-- `∏[∑[8*(n+1)]]/(n+1)` -/
def P4448757637540887582.Spec : Prop :=
  ∀ n, P4448757637540887582.a n = (A002506 n : ℚ)

end A002506

/-! ## A002506.P10780974339253602445

`∏[4*(n+2)*A028310(n)]`
-/

namespace A002506.P10780974339253602445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 2) : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002506.P10780974339253602445

namespace A002506

/-- `∏[4*(n+2)*A028310(n)]` -/
def P10780974339253602445.Spec : Prop :=
  ∀ n, P10780974339253602445.a n = A002506 n

end A002506

/-! ## A002506.P14453939254224875948

`(2^n*n!)²*ratio[A002474(n)]`
-/

namespace A002506.P14453939254224875948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002474 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n * Nat.factorial n) ^ 2 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A002506.P14453939254224875948

namespace A002506

/-- `(2^n*n!)²*ratio[A002474(n)]` -/
def P14453939254224875948.Spec : Prop :=
  ∀ n, P14453939254224875948.a n = (A002506 n : ℚ)

end A002506

/-!
# A002512: Expansion of chi(x)^10 / phi(x)^4 in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A002512, there is no canonical definition to state claims against.
-/

/-! ## A002512.P14767013098312155382

`or(2^n, A343491((1-round(sqrt(2*(n+1))))²+2*n+1))`
-/

namespace A002512.P14767013098312155382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A343491 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat)

end

end A002512.P14767013098312155382

/-! ## A002512.P10541550062785641517

`A160714(A000602(n))+A066186(n)`
-/

namespace A002512.P10541550062785641517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160714 (A000602 n).toNat + A066186 n

end

end A002512.P10541550062785641517

/-! ## A002512.P8469552028711580312

`A302929(A118033(n))+A000712(n)`
-/

namespace A002512.P8469552028711580312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302929 (A118033 n).toNat + A000712 n

end

end A002512.P8469552028711580312

/-! ## A002512.P11602250323956259084

`A234300(A212323(n))+A227048(n)`
-/

namespace A002512.P11602250323956259084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A212323 n).toNat + A227048 n

end

end A002512.P11602250323956259084

/-!
# A002513: Number of "cubic partitions" of n: expansion of Product_{k>0} 1/((1-x^(2k))^2*(1-x^(2k-1))) in powers of x.

The programs for A002513, there is no canonical definition to state claims against.
-/

/-! ## A002513.P9912002862160955782

`A264398(∑[(n+1)²]-1)`
-/

namespace A002513.P9912002862160955782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264398 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002513.P9912002862160955782

/-! ## A002513.P10727793934909125876

`A264052(A005900(n+1)-1)`
-/

namespace A002513.P10727793934909125876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264052 (A005900 (n + 1) - 1).toNat

end

end A002513.P10727793934909125876

/-! ## A002513.P14488539121042203629

`A264052(A016061(n)+A000096(n))`
-/

namespace A002513.P14488539121042203629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264052 (A016061 n + A000096 n).toNat

end

end A002513.P14488539121042203629

/-! ## A002513.P5983668721961726139

`A264052(A016061(2*n+1)+n)`
-/

namespace A002513.P5983668721961726139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264052 (A016061 (2 * n + 1) + (n : ℤ)).toNat

end

end A002513.P5983668721961726139

/-! ## A002513.P9470522819494307687

`A335604(n)+A102679(A181153(n))`
-/

namespace A002513.P9470522819494307687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335604 n + A102679 (A181153 n).toNat

end

end A002513.P9470522819494307687

/-!
# A002515: Lucasian primes: p == 3 (mod 4) with 2*p+1 prime.

The programs for A002515, there is no canonical definition to state claims against.
-/

/-! ## A002515.P9969873579686870175

`floor(A101789(n+1)/2)`
-/

namespace A002515.P9969873579686870175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101789 (n + 1) : ℚ) / 2⌋

end

end A002515.P9969873579686870175

/-! ## A002515.P2572107889947083315

`4*A244087(n+1)+3`
-/

namespace A002515.P2572107889947083315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A244087 (n + 1) + 3

end

end A002515.P2572107889947083315

/-! ## A002515.P10234285109146690933

`A374914(n+2)`
-/

namespace A002515.P10234285109146690933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374914 (n + 2)

end

end A002515.P10234285109146690933

/-! ## A002515.P12093454246271498791

`record[A137332(n+2)]`
-/

namespace A002515.P12093454246271498791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002515.P12093454246271498791

/-! ## A002515.P14216267125715183051

`∩[A005384(n+1), A141187(n+1)]`
-/

namespace A002515.P14216267125715183051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P14216267125715183051

/-! ## A002515.P1494575922003151268

`∩[A246857(n+1), A141187(n+1)]`
-/

namespace A002515.P1494575922003151268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P1494575922003151268

/-! ## A002515.P2674278108999206465

`∩[A141187(n+1), A348511(n+1)]`
-/

namespace A002515.P2674278108999206465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P2674278108999206465

/-! ## A002515.P236938148257561264

`∩[A005384(n+2), A141123(n+2)]`
-/

namespace A002515.P236938148257561264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P236938148257561264

/-! ## A002515.P3609645046713674142

`∩[A040124(n+1), A215751(n+1)]`
-/

namespace A002515.P3609645046713674142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P3609645046713674142

/-! ## A002515.P10409072315367365744

`∩[A141187(n+1), A259973(n+1)]`
-/

namespace A002515.P10409072315367365744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P10409072315367365744

/-! ## A002515.P8952420324789383749

`∩[A141123(n+2), A259973(n+2)]`
-/

namespace A002515.P8952420324789383749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P8952420324789383749

/-! ## A002515.P12984020428956292531

`p?[A186302(n+1)]`
-/

namespace A002515.P12984020428956292531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002515.P12984020428956292531

/-! ## A002515.P6777309731876572286

`p?[A186303(n+1)-1]`
-/

namespace A002515.P6777309731876572286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186303 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002515.P6777309731876572286

/-! ## A002515.P11030485654468454120

`p?[floor(A007522(n+1)/2)]`
-/

namespace A002515.P11030485654468454120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007522 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002515.P11030485654468454120

/-! ## A002515.P10732613686130520771

`p?[floor(A045382(n+1)/2)]`
-/

namespace A002515.P10732613686130520771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045382 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002515.P10732613686130520771

/-! ## A002515.P13051408281757607434

`p?[round(A186304(n+1)/2)]`
-/

namespace A002515.P13051408281757607434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186304 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002515.P13051408281757607434

/-! ## A002515.P15815021807012201335

`p?[4*A005122(n+1)-1]`
-/

namespace A002515.P15815021807012201335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005122 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002515.P15815021807012201335

/-! ## A002515.P15515670738719092253

`∩[A005384(n+1), A186302(n+1)]`
-/

namespace A002515.P15515670738719092253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P15515670738719092253

/-! ## A002515.P2251501979696131673

`∩[A040101(n+1), A186302(n+1)]`
-/

namespace A002515.P2251501979696131673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002515.P2251501979696131673

/-!
# A002517: Earliest sequence with a(a(n))=3n.

The programs for A002517, there is no canonical definition to state claims against.
-/

/-! ## A002517.P12620704349137937768

`A321464(A003605(A321464(n)))`
-/

namespace A002517.P12620704349137937768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321464 (A003605 (A321464 n).toNat).toNat

end

end A002517.P12620704349137937768

/-! ## A002517.P16237053120081079160

`A263273(A003605(A263273(n)))`
-/

namespace A002517.P16237053120081079160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A003605 (A263273 n).toNat).toNat

end

end A002517.P16237053120081079160

/-!
# A002520: Theta series of 28-dimensional unimodular lattice with no roots and with no parity vector of norm 4.

The programs for A002520, there is no canonical definition to state claims against.
-/

/-! ## A002520.P8074552228870240428

`A164972(n)/A010684(n)`
-/

namespace A002520.P8074552228870240428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164972 n : ℚ) / (A010684 n : ℚ)

end

end A002520.P8074552228870240428

/-! ## A002520.P15730906710595010033

`A164972(n)/Δ[A042948(n)]`
-/

namespace A002520.P15730906710595010033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164972 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A002520.P15730906710595010033

/-! ## A002520.P16049848969975350984

`A164972(n)/A016923(n)%4`
-/

namespace A002520.P16049848969975350984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164972 n : ℚ) / (Int.tmod (A016923 n) 4 : ℚ)

end

end A002520.P16049848969975350984

/-! ## A002520.P2529324499693657537

`A164972(n)/A038712(n²+1)`
-/

namespace A002520.P2529324499693657537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164972 n : ℚ) / (A038712 (n ^ 2 + 1) : ℚ)

end

end A002520.P2529324499693657537

/-! ## A002520.P6162506480701748548

`A164972(n)/Δ[A042963(n+1)]`
-/

namespace A002520.P6162506480701748548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164972 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A002520.P6162506480701748548

/-!
# A002521: Weight distribution of [ 28,14,9 ] ternary self-dual code.

The programs for A002521, there is no canonical definition to state claims against.
-/

/-! ## A002521.P11592343948346459212

`∏[A116913(n+1)]%A116889(n)`
-/

namespace A002521.P11592343948346459212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A116889 n)

end

end A002521.P11592343948346459212

/-!
# A002522: a(n) = n^2 + 1.

The programs for A002522, the canonical program `A002522.P3778392011853271743` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002522 has offset 0).

The definition of A002522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+1` (program `A002522.P3778392011853271743`, by `A002522.P3778392011853271743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002522.P3778392011853271743

`n²+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002522

/-- `n²+1` -/
def P3778392011853271743.Spec : Prop :=
  ∀ n, (P3778392011853271743.a n : ℤ) = A002522 n

theorem P3778392011853271743.correct : P3778392011853271743.Spec := by
  intro n
  simp only [A002522]

end A002522

/-!
# A002523: a(n) = n^4 + 1.

The programs for A002523, the canonical program `A002523.P178649398705969946` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002523 has offset 0).

The definition of A002523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+1` (program `A002523.P178649398705969946`, by `A002523.P178649398705969946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002523.P178649398705969946

`n^4+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002523

/-- `n^4+1` -/
def P178649398705969946.Spec : Prop :=
  ∀ n, (P178649398705969946.a n : ℤ) = A002523 n

theorem P178649398705969946.correct : P178649398705969946.Spec := by
  intro n
  simp only [A002523]

end A002523

/-!
# A002524: Number of permutations of length n within distance 2 of a fixed permutation.

The programs for A002524, the canonical program `A002524.P287131491170197357` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002524 has offset 0).

The definition of A002524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002524.P17365856805127612464

`ogf((1-x)/(1-2x-2x^3+x^5))`
-/

namespace A002524.P17365856805127612464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 0, -2, 0, 1] n

end

end A002524.P17365856805127612464

namespace A002524

/-- `ogf((1-x)/(1-2x-2x^3+x^5))` -/
def P17365856805127612464.Spec : Prop :=
  ∀ n, P17365856805127612464.a n = A002524 n

end A002524

/-! ## A002524.P10202465497005599016

`A323798(A233583(n+1))+∑[A212804(n)]`
-/

namespace A002524.P10202465497005599016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323798 (A233583 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002524.P10202465497005599016

namespace A002524

/-- `A323798(A233583(n+1))+∑[A212804(n)]` -/
def P10202465497005599016.Spec : Prop :=
  ∀ n, P10202465497005599016.a n = A002524 n

end A002524

/-! ## A002524.P14126390410139525

`A323798(A233583(n+1))+A212804(n+2)`
-/

namespace A002524.P14126390410139525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323798 (A233583 (n + 1)).toNat + A212804 (n + 2)

end

end A002524.P14126390410139525

namespace A002524

/-- `A323798(A233583(n+1))+A212804(n+2)` -/
def P14126390410139525.Spec : Prop :=
  ∀ n, P14126390410139525.a n = A002524 n

end A002524

/-! ## A002524.P3883866930337872762

`A323798(A233583(n+1))+Δ[A096748(2*n)]`
-/

namespace A002524.P3883866930337872762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323798 (A233583 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A002524.P3883866930337872762

namespace A002524

/-- `A323798(A233583(n+1))+Δ[A096748(2*n)]` -/
def P3883866930337872762.Spec : Prop :=
  ∀ n, P3883866930337872762.a n = A002524 n

end A002524

/-! ## A002524.P287131491170197357

`Δ[A002525(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002524

/-- `Δ[A002525(n)]` -/
def P287131491170197357.Spec : Prop :=
  ∀ n, P287131491170197357.a n = A002524 n

theorem P287131491170197357.correct : P287131491170197357.Spec := by
  intro n
  simp only [A002524]

end A002524

/-! ## A002524.P16374952615646925448

`A002525(n+1)-A002525(n)`
-/

namespace A002524.P16374952615646925448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (n + 1) - A002525 n

end

end A002524.P16374952615646925448

namespace A002524

/-- `A002525(n+1)-A002525(n)` -/
def P16374952615646925448.Spec : Prop :=
  ∀ n, P16374952615646925448.a n = A002524 n

theorem P16374952615646925448.correct : P16374952615646925448.Spec := by
  intro n
  simp only [A002524, Nat.add_sub_cancel, A002524.P16374952615646925448.a, A002524.P287131491170197357.f1, A002524.P287131491170197357.a, SequenceMachineLib.memo_apply]

end A002524

/-! ## A002524.P5475506183890438587

`A263420(A028310(n))^(1/2)`
-/

namespace A002524.P5475506183890438587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263420 (A028310 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A002524.P5475506183890438587

namespace A002524

/-- `A263420(A028310(n))^(1/2)` -/
def P5475506183890438587.Spec : Prop :=
  ∀ n, P5475506183890438587.a n = (A002524 n : ℝ)

end A002524

/-!
# A002525: Number of permutations according to distance.

The programs for A002525, the canonical program `A002525.P13829498980794992038` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002525 has offset 0).

The definition of A002525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002525.P13829498980794992038

`2*a(n-1)+2*a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002525

/-- `2*a(n-1)+2*a(n-3)-a(n-5)` -/
def P13829498980794992038.Spec : Prop :=
  ∀ n, P13829498980794992038.a n = A002525 n

theorem P13829498980794992038.correct : P13829498980794992038.Spec := by
  intro n
  simp only [A002525]

end A002525

/-! ## A002525.P2819237136245508331

`ogf(x/(1-2x-2x^3+x^5))`
-/

namespace A002525.P2819237136245508331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, -2, 0, 1] n

end

end A002525.P2819237136245508331

namespace A002525

/-- `ogf(x/(1-2x-2x^3+x^5))` -/
def P2819237136245508331.Spec : Prop :=
  ∀ n, P2819237136245508331.a n = A002525 n

end A002525

/-! ## A002525.P9107586267379965224

`A002524(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A002525.P9107586267379965224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002524 (n - 1) + a (n - 1)

end

end A002525.P9107586267379965224

namespace A002525

/-- `A002524(n-1)+a(n-1)` -/
def P9107586267379965224.Spec : Prop :=
  ∀ n, P9107586267379965224.a n = A002525 n

end A002525

/-! ## A002525.P1631588526017739825

`∑[A002524(n)]-A002524(n)`
-/

namespace A002525.P1631588526017739825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002524 n

end

end A002525.P1631588526017739825

namespace A002525

/-- `∑[A002524(n)]-A002524(n)` -/
def P1631588526017739825.Spec : Prop :=
  ∀ n, P1631588526017739825.a n = A002525 n

end A002525

/-! ## A002525.P9077879153078125921

`∑[A323798(A233583(n+1))+A212804(n+2)]-(A323798(A233583(n+1))+A212804(n+2))`
-/

namespace A002525.P9077879153078125921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323798 (A233583 (n + 1)).toNat + A212804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A323798 (A233583 (n + 1)).toNat + A212804 (n + 2))

end

end A002525.P9077879153078125921

namespace A002525

/-- `∑[A323798(A233583(n+1))+A212804(n+2)]-(A323798(A233583(n+1))+A212804(n+2))` -/
def P9077879153078125921.Spec : Prop :=
  ∀ n, P9077879153078125921.a n = A002525 n

end A002525

/-!
# A002526: Number of permutations of length n within distance 3 of a fixed permutation.

The programs for A002526, there is no canonical definition to state claims against.
-/

/-! ## A002526.P15289483564220046132

`A188498(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A002526.P15289483564220046132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188498 (n + 1) - a (n - 1)

end

end A002526.P15289483564220046132

/-! ## A002526.P16042070077371675271

`Δ[A002527(n)]-A002529(n)`
-/

namespace A002526.P16042070077371675271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002529 n

end

end A002526.P16042070077371675271

/-! ## A002526.P5694565260644651157

`A188494(n+1)-A002527(n)`
-/

namespace A002526.P5694565260644651157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 (n + 1) - A002527 n

end

end A002526.P5694565260644651157

/-! ## A002526.P16243438336758540440

`A188495(n+1)-A188494(n)`
-/

namespace A002526.P16243438336758540440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 (n + 1) - A188494 n

end

end A002526.P16243438336758540440

/-! ## A002526.P18241629064601408797

`A002527(n+1)-(A002529(n)+A002527(n))`
-/

namespace A002526.P18241629064601408797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 (n + 1) - (A002529 n + A002527 n)

end

end A002526.P18241629064601408797

/-! ## A002526.P9000977804196925093

`A188491(n+1)-(A188494(n)+A002528(n))`
-/

namespace A002526.P9000977804196925093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 (n + 1) - (A188494 n + A002528 n)

end

end A002526.P9000977804196925093

/-! ## A002526.P762009728080868756

`A188495(n+1)+A188498(n)-A188497(n+1)`
-/

namespace A002526.P762009728080868756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 (n + 1) + (A188498 n - A188497 (n + 1))

end

end A002526.P762009728080868756

/-!
# A002527: Number of permutations p on the set [n] with the properties that abs(p(i)-i) <= 3 for all i and p(1) <= 3.

The programs for A002527, there is no canonical definition to state claims against.
-/

/-! ## A002527.P6837508188954654843

`a(n-1)+A002526(n-1)+A002529(n-1)` with `a(0)=0`
-/

namespace A002527.P6837508188954654843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A002526 (n - 1) + A002529 (n - 1)

end

end A002527.P6837508188954654843

/-! ## A002527.P13103392930321066708

`A188494(n)+A002529(abs(1-n))`
-/

namespace A002527.P13103392930321066708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 n + A002529 |1 - (n : ℤ)|.toNat

end

end A002527.P13103392930321066708

/-! ## A002527.P3949607832149601949

`A002528(n+1)-A188491(n)`
-/

namespace A002527.P3949607832149601949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002528 (n + 1) - A188491 n

end

end A002527.P3949607832149601949

/-! ## A002527.P17283188489266559129

`A188494(n+1)-A002526(n)`
-/

namespace A002527.P17283188489266559129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 (n + 1) - A002526 n

end

end A002527.P17283188489266559129

/-! ## A002527.P5427421146786043954

`A188496(n+1)-A188495(n)`
-/

namespace A002527.P5427421146786043954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188496 (n + 1) - A188495 n

end

end A002527.P5427421146786043954

/-! ## A002527.P6893272936166936996

`A002529(n+1)-(A188492(n)+A188491(n))`
-/

namespace A002527.P6893272936166936996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 (n + 1) - (A188492 n + A188491 n)

end

end A002527.P6893272936166936996

/-! ## A002527.P4862293675502188911

`A188494(n+1)+A188494(n)-A188495(n+1)`
-/

namespace A002527.P4862293675502188911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 (n + 1) + (A188494 n - A188495 (n + 1))

end

end A002527.P4862293675502188911

/-! ## A002527.P14384489961745995010

`A188495(n+2)-A188498(n+2)`
-/

namespace A002527.P14384489961745995010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 (n + 2) - A188498 (n + 2)

end

end A002527.P14384489961745995010

/-!
# A002528: a(n) = A188491(n+1) - A188494(n) - A002526(n).

The programs for A002528, there is no canonical definition to state claims against.
-/

/-! ## A002528.P2417248066459774175

`A188491(n+1)-A188494(n)-A002526(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002528.P2417248066459774175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 (n + 1) - A188494 n - A002526 n

end

end A002528.P2417248066459774175

/-! ## A002528.P14601036438686042290

`A188496(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A002528.P14601036438686042290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A188496 n + a (n - 2)

end

end A002528.P14601036438686042290

/-! ## A002528.P12561765264981557516

`A188491(n+1)-A188495(n+1)`
-/

namespace A002528.P12561765264981557516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 (n + 1) - A188495 (n + 1)

end

end A002528.P12561765264981557516

/-! ## A002528.P6347363586337344201

`A188491(A028242(2*n))%A188495(n+1)`
-/

namespace A002528.P6347363586337344201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188491 (A028242 (2 * n)).toNat) (A188495 (n + 1))

end

end A002528.P6347363586337344201

/-! ## A002528.P410571678284990729

`(A188491(n+1)%A188495(n+1))%A002527(n+1)`
-/

namespace A002528.P410571678284990729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A188491 (n + 1)) (A188495 (n + 1))) (A002527 (n + 1))

end

end A002528.P410571678284990729

/-! ## A002528.P2458193415269550822

`A002529(n+2)-(A188496(n+2)+A188492(n+1))`
-/

namespace A002528.P2458193415269550822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 (n + 2) - (A188496 (n + 2) + A188492 (n + 1))

end

end A002528.P2458193415269550822

/-!
# A002529: a(n) = A002527(n+1) - A002527(n) - A002526(n).

The programs for A002529, there is no canonical definition to state claims against.
-/

/-! ## A002529.P3351380661873864646

`A002527(n+1)-A002527(n)-A002526(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002529.P3351380661873864646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 (n + 1) - A002527 n - A002526 n

end

end A002529.P3351380661873864646

/-! ## A002529.P7277255148083544375

`A188379(n+1)-A188492(n)-A188493(n)`
-/

namespace A002529.P7277255148083544375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188379 (n + 1) - A188492 n - A188493 n

end

end A002529.P7277255148083544375

/-! ## A002529.P10206630901851440091

`Δ[A002527(n)]-A002526(n)`
-/

namespace A002529.P10206630901851440091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002526 n

end

end A002529.P10206630901851440091

/-! ## A002529.P4264610356089542561

`A002527(n+1)-A188494(n+1)`
-/

namespace A002529.P4264610356089542561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 (n + 1) - A188494 (n + 1)

end

end A002529.P4264610356089542561

/-! ## A002529.P17299121303052380613

`(A002527(n+1)%A188494(n+1))%A188491(n+1)`
-/

namespace A002529.P17299121303052380613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A002527 (n + 1)) (A188494 (n + 1))) (A188491 (n + 1))

end

end A002529.P17299121303052380613

/-! ## A002529.P12541439681944459563

`A188494(n+2)-A188495(n+2)`
-/

namespace A002529.P12541439681944459563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 (n + 2) - A188495 (n + 2)

end

end A002529.P12541439681944459563

/-! ## A002529.P13981927675617620770

`Δ[A188494(n+1)]-A002526(n+1)`
-/

namespace A002529.P13981927675617620770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002526 (n + 1)

end

end A002529.P13981927675617620770

/-! ## A002529.P15490232850174269833

`∑[A188496(n+2)%A188494(n+1)]`
-/

namespace A002529.P15490232850174269833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188496 (n + 2)) (A188494 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002529.P15490232850174269833

/-! ## A002529.P7947922751345438444

`A002526(n+1)-(A188494(n+1)+A188379(n))`
-/

namespace A002529.P7947922751345438444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 (n + 1) - (A188494 (n + 1) + A188379 n)

end

end A002529.P7947922751345438444

/-!
# A002530: a(n) = 4*a(n-2) - a(n-4) for n > 1, a(n) = n for n = 0, 1.

The programs for A002530, the canonical program `A002530.P2191391178083288675` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002530 has offset 0).

The definition of A002530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-a(n-4)` (program `A002530.P2191391178083288675`, by `A002530.P2191391178083288675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002530.P2191391178083288675

`4*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002530

/-- `4*a(n-2)-a(n-4)` -/
def P2191391178083288675.Spec : Prop :=
  ∀ n, P2191391178083288675.a n = A002530 n

theorem P2191391178083288675.correct : P2191391178083288675.Spec := by
  intro n
  simp only [A002530]

end A002530

/-! ## A002530.P2221478459040356148

`A002605(n)/2^floor(n/2)`
-/

namespace A002530.P2221478459040356148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 n : ℚ) / (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A002530.P2221478459040356148

namespace A002530

/-- `A002605(n)/2^floor(n/2)` -/
def P2221478459040356148.Spec : Prop :=
  ∀ n, P2221478459040356148.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P3373294543885812491

`ogf((x+x^2-x^3)/(1-4x^2+x^4))`
-/

namespace A002530.P3373294543885812491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -4, 0, 1] n

end

end A002530.P3373294543885812491

namespace A002530

/-- `ogf((x+x^2-x^3)/(1-4x^2+x^4))` -/
def P3373294543885812491.Spec : Prop :=
  ∀ n, P3373294543885812491.a n = A002530 n

end A002530

/-! ## A002530.P9860877663022041351

`A048788(n)/gcd(2, n)`
-/

namespace A002530.P9860877663022041351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A002530.P9860877663022041351

namespace A002530

/-- `A048788(n)/gcd(2, n)` -/
def P9860877663022041351.Spec : Prop :=
  ∀ n, P9860877663022041351.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P4902727678904209329

`A048788(n)/A040001(n)`
-/

namespace A002530.P4902727678904209329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (A040001 n : ℚ)

end

end A002530.P4902727678904209329

namespace A002530

/-- `A048788(n)/A040001(n)` -/
def P4902727678904209329.Spec : Prop :=
  ∀ n, P4902727678904209329.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P3302173233619052118

`A048788(n)/A000034(n+1)`
-/

namespace A002530.P3302173233619052118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A002530.P3302173233619052118

namespace A002530

/-- `A048788(n)/A000034(n+1)` -/
def P3302173233619052118.Spec : Prop :=
  ∀ n, P3302173233619052118.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P9181276067760276369

`A048788(n)/A134451(n+2)`
-/

namespace A002530.P9181276067760276369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A002530.P9181276067760276369

namespace A002530

/-- `A048788(n)/A134451(n+2)` -/
def P9181276067760276369.Spec : Prop :=
  ∀ n, P9181276067760276369.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P13376119824511244964

`A048788(n)/(2-A000035(n))`
-/

namespace A002530.P13376119824511244964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (2 - A000035 n : ℚ)

end

end A002530.P13376119824511244964

namespace A002530

/-- `A048788(n)/(2-A000035(n))` -/
def P13376119824511244964.Spec : Prop :=
  ∀ n, P13376119824511244964.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P17383738407192804908

`A000034(n)/2*A048788(n)`
-/

namespace A002530.P17383738407192804908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A048788 n : ℚ)

end

end A002530.P17383738407192804908

namespace A002530

/-- `A000034(n)/2*A048788(n)` -/
def P17383738407192804908.Spec : Prop :=
  ∀ n, P17383738407192804908.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P14831111377843965211

`A048788(n+1)-A002531(n)`
-/

namespace A002530.P14831111377843965211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (n + 1) - A002531 n

end

end A002530.P14831111377843965211

namespace A002530

/-- `A048788(n+1)-A002531(n)` -/
def P14831111377843965211.Spec : Prop :=
  ∀ n, P14831111377843965211.a n = A002530 n

end A002530

/-! ## A002530.P10872760040275432305

`Δ[A259592(n)]-A002531(n)`
-/

namespace A002530.P10872760040275432305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002531 n

end

end A002530.P10872760040275432305

namespace A002530

/-- `Δ[A259592(n)]-A002531(n)` -/
def P10872760040275432305.Spec : Prop :=
  ∀ n, P10872760040275432305.a n = A002530 n

end A002530

/-! ## A002530.P6961260706396138681

`A259592(n+1)-(A259592(n)+A002531(n))`
-/

namespace A002530.P6961260706396138681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (n + 1) - (A259592 n + A002531 n)

end

end A002530.P6961260706396138681

namespace A002530

/-- `A259592(n+1)-(A259592(n)+A002531(n))` -/
def P6961260706396138681.Spec : Prop :=
  ∀ n, P6961260706396138681.a n = A002530 n

end A002530

/-! ## A002530.P17220174153678746081

`A083336(n+1)-A048788(n+3)`
-/

namespace A002530.P17220174153678746081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083336 (n + 1) - A048788 (n + 3)

end

end A002530.P17220174153678746081

namespace A002530

/-- `A083336(n+1)-A048788(n+3)` -/
def P17220174153678746081.Spec : Prop :=
  ∀ n, P17220174153678746081.a n = A002530 n

end A002530

/-! ## A002530.P7719263135627178598

`A160444(2*n+1)/A158780(n+2)`
-/

namespace A002530.P7719263135627178598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160444 (2 * n + 1) : ℚ) / (A158780 (n + 2) : ℚ)

end

end A002530.P7719263135627178598

namespace A002530

/-- `A160444(2*n+1)/A158780(n+2)` -/
def P7719263135627178598.Spec : Prop :=
  ∀ n, P7719263135627178598.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P14958214108861780926

`A002531(n)/A026150(n)*A002605(n)`
-/

namespace A002530.P14958214108861780926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002531 n : ℚ) / (A026150 n : ℚ) * (A002605 n : ℚ)

end

end A002530.P14958214108861780926

namespace A002530

/-- `A002531(n)/A026150(n)*A002605(n)` -/
def P14958214108861780926.Spec : Prop :=
  ∀ n, P14958214108861780926.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P7995885004500323648

`A052530(n)/A321119(n)`
-/

namespace A002530.P7995885004500323648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052530 n : ℚ) / (A321119 n : ℚ)

end

end A002530.P7995885004500323648

namespace A002530

/-- `A052530(n)/A321119(n)` -/
def P7995885004500323648.Spec : Prop :=
  ∀ n, P7995885004500323648.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P12873459650547447011

`gcd(A001353(n), A109437(n))`
-/

namespace A002530.P12873459650547447011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001353 n) (A109437 n)

end

end A002530.P12873459650547447011

namespace A002530

/-- `gcd(A001353(n), A109437(n))` -/
def P12873459650547447011.Spec : Prop :=
  ∀ n, (P12873459650547447011.a n : ℤ) = A002530 n

end A002530

/-! ## A002530.P10150336977630391171

`A048788(2*n)/A321119(n)`
-/

namespace A002530.P10150336977630391171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 (2 * n) : ℚ) / (A321119 n : ℚ)

end

end A002530.P10150336977630391171

namespace A002530

/-- `A048788(2*n)/A321119(n)` -/
def P10150336977630391171.Spec : Prop :=
  ∀ n, P10150336977630391171.a n = (A002530 n : ℚ)

end A002530

/-! ## A002530.P10443379575688916703

`A001353(n+1)/A002531(n+1)-A002531(n)`
-/

namespace A002530.P10443379575688916703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 1) : ℚ) / (A002531 (n + 1) : ℚ) - (A002531 n : ℚ)

end

end A002530.P10443379575688916703

namespace A002530

/-- `A001353(n+1)/A002531(n+1)-A002531(n)` -/
def P10443379575688916703.Spec : Prop :=
  ∀ n, P10443379575688916703.a n = (A002530 n : ℚ)

end A002530

/-!
# A002531: a(2*n) = a(2*n-1) + a(2*n-2), a(2*n+1) = 2*a(2*n) + a(2*n-1); a(0) = a(1) = 1.

The programs for A002531, the canonical program `A002531.P4762918667796212619` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002531 has offset 0).

The definition of A002531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002531.P4762918667796212619

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002531

/-- `4*a(n-2)-a(n-4)` -/
def P4762918667796212619.Spec : Prop :=
  ∀ n, P4762918667796212619.a n = A002531 n

theorem P4762918667796212619.correct : P4762918667796212619.Spec := by
  intro n
  simp only [A002531]

end A002531

/-! ## A002531.P11277944845561692559

`((1+sqrt(3))^n+(1-sqrt(3))^n)/(2*2^floor(n/2))`
-/

namespace A002531.P11277944845561692559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) ^ n + (1 - Real.sqrt (3 : ℝ)) ^ n) / (2 * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) : ℝ)

end

end A002531.P11277944845561692559

namespace A002531

/-- `((1+sqrt(3))^n+(1-sqrt(3))^n)/(2*2^floor(n/2))` -/
def P11277944845561692559.Spec : Prop :=
  ∀ n, P11277944845561692559.a n = (A002531 n : ℝ)

end A002531

/-! ## A002531.P11707074803172684720

`A026150(n)*2^-floor(n/2)`
-/

namespace A002531.P11707074803172684720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) * (2 : ℚ) ^ (-⌊(n : ℚ) / 2⌋ : ℤ)

end

end A002531.P11707074803172684720

namespace A002531

/-- `A026150(n)*2^-floor(n/2)` -/
def P11707074803172684720.Spec : Prop :=
  ∀ n, P11707074803172684720.a n = (A002531 n : ℚ)

end A002531

/-! ## A002531.P16962917262272864934

`ogf((1+x-2x^2+x^3)/(1-4x^2+x^4))`
-/

namespace A002531.P16962917262272864934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 1] [1, 0, -4, 0, 1] n

end

end A002531.P16962917262272864934

namespace A002531

/-- `ogf((1+x-2x^2+x^3)/(1-4x^2+x^4))` -/
def P16962917262272864934.Spec : Prop :=
  ∀ n, P16962917262272864934.a n = A002531 n

end A002531

/-! ## A002531.P2197028323203539912

`abs(A108413(n+1))`
-/

namespace A002531.P2197028323203539912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (n + 1)|

end

end A002531.P2197028323203539912

namespace A002531

/-- `abs(A108413(n+1))` -/
def P2197028323203539912.Spec : Prop :=
  ∀ n, P2197028323203539912.a n = A002531 n

end A002531

/-! ## A002531.P17898792744871029784

`A048788(n+1)-A002530(n)`
-/

namespace A002531.P17898792744871029784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (n + 1) - A002530 n

end

end A002531.P17898792744871029784

namespace A002531

/-- `A048788(n+1)-A002530(n)` -/
def P17898792744871029784.Spec : Prop :=
  ∀ n, P17898792744871029784.a n = A002531 n

end A002531

/-! ## A002531.P12514549864848486158

`lcm(A108413(n+1), A325471(2*n+1))`
-/

namespace A002531.P12514549864848486158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108413 (n + 1)) (A325471 (2 * n + 1))

end

end A002531.P12514549864848486158

namespace A002531

/-- `lcm(A108413(n+1), A325471(2*n+1))` -/
def P12514549864848486158.Spec : Prop :=
  ∀ n, (P12514549864848486158.a n : ℤ) = A002531 n

end A002531

/-! ## A002531.P17575322680640264288

`A000034(n)*A002530(n+1)-A002530(n)`
-/

namespace A002531.P17575322680640264288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A002530 (n + 1) - A002530 n

end

end A002531.P17575322680640264288

namespace A002531

/-- `A000034(n)*A002530(n+1)-A002530(n)` -/
def P17575322680640264288.Spec : Prop :=
  ∀ n, P17575322680640264288.a n = A002531 n

end A002531

/-! ## A002531.P2044882017179343372

`A002530(n+1)*A040001(n+1)-A002530(n)`
-/

namespace A002531.P2044882017179343372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) * A040001 (n + 1) - A002530 n

end

end A002531.P2044882017179343372

namespace A002531

/-- `A002530(n+1)*A040001(n+1)-A002530(n)` -/
def P2044882017179343372.Spec : Prop :=
  ∀ n, P2044882017179343372.a n = A002531 n

end A002531

/-! ## A002531.P7289705756047748168

`A002530(n+1)*A134451(n+1)-A002530(n)`
-/

namespace A002531.P7289705756047748168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) * A134451 (n + 1) - A002530 n

end

end A002531.P7289705756047748168

namespace A002531

/-- `A002530(n+1)*A134451(n+1)-A002530(n)` -/
def P7289705756047748168.Spec : Prop :=
  ∀ n, P7289705756047748168.a n = A002531 n

end A002531

/-! ## A002531.P15130004310666726267

`lcm(A000027(n+1)-n, A108413(A000027(n+1)))`
-/

namespace A002531.P15130004310666726267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1) - (n : ℤ)) (A108413 (A000027 (n + 1)).toNat)

end

end A002531.P15130004310666726267

namespace A002531

/-- `lcm(A000027(n+1)-n, A108413(A000027(n+1)))` -/
def P15130004310666726267.Spec : Prop :=
  ∀ n, (P15130004310666726267.a n : ℤ) = A002531 n

end A002531

/-! ## A002531.P9185192054155445445

`A259593(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A002531.P9185192054155445445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259593 (n - 1) - a (n - 1)

end

end A002531.P9185192054155445445

namespace A002531

/-- `A259593(n-1)-a(n-1)` -/
def P9185192054155445445.Spec : Prop :=
  ∀ n, P9185192054155445445.a n = A002531 n

end A002531

/-! ## A002531.P15244536391035568048

`Δ[A259592(n)]-A002530(n)`
-/

namespace A002531.P15244536391035568048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002530 n

end

end A002531.P15244536391035568048

namespace A002531

/-- `Δ[A259592(n)]-A002530(n)` -/
def P15244536391035568048.Spec : Prop :=
  ∀ n, P15244536391035568048.a n = A002531 n

end A002531

/-! ## A002531.P7883211306284624343

`A259592(n+1)-(A259592(n)+A002530(n))`
-/

namespace A002531.P7883211306284624343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (n + 1) - (A259592 n + A002530 n)

end

end A002531.P7883211306284624343

namespace A002531

/-- `A259592(n+1)-(A259592(n)+A002530(n))` -/
def P7883211306284624343.Spec : Prop :=
  ∀ n, P7883211306284624343.a n = A002531 n

end A002531

/-! ## A002531.P765161702987734036

`A083336(n+1)-A321119(n+1)`
-/

namespace A002531.P765161702987734036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083336 (n + 1) - A321119 (n + 1)

end

end A002531.P765161702987734036

namespace A002531

/-- `A083336(n+1)-A321119(n+1)` -/
def P765161702987734036.Spec : Prop :=
  ∀ n, P765161702987734036.a n = A002531 n

end A002531

/-! ## A002531.P6006430245983220719

`gcd(A001353(n), A146983(n))`
-/

namespace A002531.P6006430245983220719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001353 n) (A146983 n)

end

end A002531.P6006430245983220719

namespace A002531

/-- `gcd(A001353(n), A146983(n))` -/
def P6006430245983220719.Spec : Prop :=
  ∀ n, (P6006430245983220719.a n : ℤ) = A002531 n

end A002531

/-! ## A002531.P9521694396046827442

`A006253(n)/A002530(n+1)-A002530(n)`
-/

namespace A002531.P9521694396046827442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006253 n : ℚ) / (A002530 (n + 1) : ℚ) - (A002530 n : ℚ)

end

end A002531.P9521694396046827442

namespace A002531

/-- `A006253(n)/A002530(n+1)-A002530(n)` -/
def P9521694396046827442.Spec : Prop :=
  ∀ n, P9521694396046827442.a n = (A002531 n : ℚ)

end A002531

/-!
# A002532: a(n) = 2*a(n-1) + 5*a(n-2), a(0) = 0, a(1) = 1.

The programs for A002532, the canonical program `A002532.P11617803746049927736` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002532 has offset 0).

The definition of A002532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)` (program `A002532.P11617803746049927736`, by `A002532.P11617803746049927736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002532.P11617803746049927736

`2*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002532

/-- `2*a(n-1)+5*a(n-2)` -/
def P11617803746049927736.Spec : Prop :=
  ∀ n, (P11617803746049927736.a n : ℤ) = A002532 n

theorem P11617803746049927736.correct : P11617803746049927736.Spec := by
  intro n
  simp only [A002532]

end A002532

/-! ## A002532.P4597601078372507487

`ogf(x/(1-2x-5x^2))`
-/

namespace A002532.P4597601078372507487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -5] n

end

end A002532.P4597601078372507487

namespace A002532

/-- `ogf(x/(1-2x-5x^2))` -/
def P4597601078372507487.Spec : Prop :=
  ∀ n, P4597601078372507487.a n = A002532 n

end A002532

/-! ## A002532.P18037822224802253733

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A002532.P18037822224802253733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A002532.P18037822224802253733

namespace A002532

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P18037822224802253733.Spec : Prop :=
  ∀ n, P18037822224802253733.a n = A002532 n

end A002532

/-! ## A002532.P15998301065580638969

`A002533(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A002532.P15998301065580638969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002533 (n - 1) + a (n - 1)

end

end A002532.P15998301065580638969

namespace A002532

/-- `A002533(n-1)+a(n-1)` -/
def P15998301065580638969.Spec : Prop :=
  ∀ n, P15998301065580638969.a n = A002532 n

end A002532

/-! ## A002532.P5469325357657380978

`∑[A002533(round(n²/(n+1)))]-1`
-/

namespace A002532.P5469325357657380978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002532.P5469325357657380978

namespace A002532

/-- `∑[A002533(round(n²/(n+1)))]-1` -/
def P5469325357657380978.Spec : Prop :=
  ∀ n, P5469325357657380978.a n = A002532 n

end A002532

/-! ## A002532.P11016823899678769960

`A083694(n)/2`
-/

namespace A002532.P11016823899678769960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083694 n : ℚ) / 2

end

end A002532.P11016823899678769960

namespace A002532

/-- `A083694(n)/2` -/
def P11016823899678769960.Spec : Prop :=
  ∀ n, P11016823899678769960.a n = (A002532 n : ℚ)

theorem P11016823899678769960.correct : P11016823899678769960.Spec := by
  intro n
  simp only [A002532, Nat.add_sub_cancel, A002532.P11016823899678769960.a, A002532.P11617803746049927736.a, A083694, A083694.P8538574103418569436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002532

/-! ## A002532.P9153466264931746152

`A083695(n)/3`
-/

namespace A002532.P9153466264931746152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083695 n : ℚ) / 3

end

end A002532.P9153466264931746152

namespace A002532

/-- `A083695(n)/3` -/
def P9153466264931746152.Spec : Prop :=
  ∀ n, P9153466264931746152.a n = (A002532 n : ℚ)

end A002532

/-! ## A002532.P16105372670472824943

`A083695(n)-A083694(n)`
-/

namespace A002532.P16105372670472824943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n - A083694 n

end

end A002532.P16105372670472824943

namespace A002532

/-- `A083695(n)-A083694(n)` -/
def P16105372670472824943.Spec : Prop :=
  ∀ n, P16105372670472824943.a n = A002532 n

end A002532

/-! ## A002532.P15566423151298609071

`A180168(n)%∑[A002533(n)]`
-/

namespace A002532.P15566423151298609071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180168 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002532.P15566423151298609071

namespace A002532

/-- `A180168(n)%∑[A002533(n)]` -/
def P15566423151298609071.Spec : Prop :=
  ∀ n, P15566423151298609071.a n = A002532 n

end A002532

/-! ## A002532.P922073587107049733

`((1+sqrt(6))^n-(1-sqrt(6))^n)/(2*sqrt(6))`
-/

namespace A002532.P922073587107049733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (6 : ℝ)) ^ n - (1 - Real.sqrt (6 : ℝ)) ^ n) / (2 * Real.sqrt (6 : ℝ))

end

end A002532.P922073587107049733

namespace A002532

/-- `((1+sqrt(6))^n-(1-sqrt(6))^n)/(2*sqrt(6))` -/
def P922073587107049733.Spec : Prop :=
  ∀ n, P922073587107049733.a n = (A002532 n : ℝ)

theorem P922073587107049733.correct : P922073587107049733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002532, Nat.add_sub_cancel, A002532.P922073587107049733.a, A002532.P11617803746049927736.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002532, Nat.add_sub_cancel, A002532.P922073587107049733.a, A002532.P11617803746049927736.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002532

/-!
# A002533: a(n) = 2*a(n-1) + 5*a(n-2), with a(0) = a(1) = 1.

The programs for A002533, the canonical program `A002533.P3464346759935259799` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002533 has offset 0).

The definition of A002533 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)` (program `A002533.P3464346759935259799`, by `A002533.P3464346759935259799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002533.P3464346759935259799

`2*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002533

/-- `2*a(n-1)+5*a(n-2)` -/
def P3464346759935259799.Spec : Prop :=
  ∀ n, (P3464346759935259799.a n : ℤ) = A002533 n

theorem P3464346759935259799.correct : P3464346759935259799.Spec := by
  intro n
  simp only [A002533]

end A002533

/-! ## A002533.P15946534585869896335

`a(n-1)+2*A083695(n-1)` with `a(0)=1`
-/

namespace A002533.P15946534585869896335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A083695 (n - 1)

end

end A002533.P15946534585869896335

namespace A002533

/-- `a(n-1)+2*A083695(n-1)` -/
def P15946534585869896335.Spec : Prop :=
  ∀ n, P15946534585869896335.a n = A002533 n

end A002533

/-! ## A002533.P10883862791947401135

`a(n-1)+3*A083694(n-1)` with `a(0)=1`
-/

namespace A002533.P10883862791947401135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * A083694 (n - 1)

end

end A002533.P10883862791947401135

namespace A002533

/-- `a(n-1)+3*A083694(n-1)` -/
def P10883862791947401135.Spec : Prop :=
  ∀ n, P10883862791947401135.a n = A002533 n

end A002533

/-! ## A002533.P8890892021733169871

`ogf((-1+x)/(-1+2x+5x^2))`
-/

namespace A002533.P8890892021733169871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -5] n

end

end A002533.P8890892021733169871

namespace A002533

/-- `ogf((-1+x)/(-1+2x+5x^2))` -/
def P8890892021733169871.Spec : Prop :=
  ∀ n, P8890892021733169871.a n = A002533 n

end A002533

/-! ## A002533.P12025285829004815568

`lcm(2, a(n-1))+lcm(5, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A002533.P12025285829004815568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 2 (a (n - 1)) + Nat.lcm 5 (a (n - 2))

end

end A002533.P12025285829004815568

namespace A002533

/-- `lcm(2, a(n-1))+lcm(5, a(n-2))` -/
def P12025285829004815568.Spec : Prop :=
  ∀ n, (P12025285829004815568.a n : ℤ) = A002533 n

end A002533

/-! ## A002533.P12279502695084864039

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A002533.P12279502695084864039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A002533.P12279502695084864039

namespace A002533

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P12279502695084864039.Spec : Prop :=
  ∀ n, P12279502695084864039.a n = A002533 n

end A002533

/-! ## A002533.P8470074133669016077

`Δ[A002532(n)]`
-/

namespace A002533.P8470074133669016077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002533.P8470074133669016077

namespace A002533

/-- `Δ[A002532(n)]` -/
def P8470074133669016077.Spec : Prop :=
  ∀ n, P8470074133669016077.a n = A002533 n

end A002533

/-! ## A002533.P9796559154581005968

`A290999(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A002533.P9796559154581005968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290999 (n - 1) + a (n - 1)

end

end A002533.P9796559154581005968

namespace A002533

/-- `A290999(n-1)+a(n-1)` -/
def P9796559154581005968.Spec : Prop :=
  ∀ n, P9796559154581005968.a n = A002533 n

end A002533

/-! ## A002533.P7042081892503382975

`A180168(n)-A083694(n)`
-/

namespace A002533.P7042081892503382975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n - A083694 n

end

end A002533.P7042081892503382975

namespace A002533

/-- `A180168(n)-A083694(n)` -/
def P7042081892503382975.Spec : Prop :=
  ∀ n, P7042081892503382975.a n = A002533 n

end A002533

/-! ## A002533.P6325401499558464682

`A002532(n+1)-A002532(n)`
-/

namespace A002533.P6325401499558464682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (n + 1) - A002532 n

end

end A002533.P6325401499558464682

namespace A002533

/-- `A002532(n+1)-A002532(n)` -/
def P6325401499558464682.Spec : Prop :=
  ∀ n, P6325401499558464682.a n = A002533 n

end A002533

/-! ## A002533.P9039511848518912090

`A180168(n)-2*A002532(n)`
-/

namespace A002533.P9039511848518912090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n - 2 * A002532 n

end

end A002533.P9039511848518912090

namespace A002533

/-- `A180168(n)-2*A002532(n)` -/
def P9039511848518912090.Spec : Prop :=
  ∀ n, P9039511848518912090.a n = A002533 n

end A002533

/-! ## A002533.P14531761729626527504

`Δ[A083695(n)/3]`
-/

namespace A002533.P14531761729626527504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083695 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002533.P14531761729626527504

namespace A002533

/-- `Δ[A083695(n)/3]` -/
def P14531761729626527504.Spec : Prop :=
  ∀ n, P14531761729626527504.a n = (A002533 n : ℚ)

end A002533

/-! ## A002533.P8961763948780843388

`Δ[A083695(n)-A083694(n)]`
-/

namespace A002533.P8961763948780843388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n - A083694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002533.P8961763948780843388

namespace A002533

/-- `Δ[A083695(n)-A083694(n)]` -/
def P8961763948780843388.Spec : Prop :=
  ∀ n, P8961763948780843388.a n = A002533 n

end A002533

/-! ## A002533.P12326264921346443738

`A123011(n)-2*A083694(n)`
-/

namespace A002533.P12326264921346443738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - 2 * A083694 n

end

end A002533.P12326264921346443738

namespace A002533

/-- `A123011(n)-2*A083694(n)` -/
def P12326264921346443738.Spec : Prop :=
  ∀ n, P12326264921346443738.a n = A002533 n

end A002533

/-! ## A002533.P10029963243258725405

`2*A180168(n)-A123011(n)`
-/

namespace A002533.P10029963243258725405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180168 n - A123011 n

end

end A002533.P10029963243258725405

namespace A002533

/-- `2*A180168(n)-A123011(n)` -/
def P10029963243258725405.Spec : Prop :=
  ∀ n, P10029963243258725405.a n = A002533 n

end A002533

/-! ## A002533.P6199015319715623121

`A176812(n)+A180168(n)-A180168(n+1)`
-/

namespace A002533.P6199015319715623121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176812 n + (A180168 n - A180168 (n + 1))

end

end A002533.P6199015319715623121

namespace A002533

/-- `A176812(n)+A180168(n)-A180168(n+1)` -/
def P6199015319715623121.Spec : Prop :=
  ∀ n, P6199015319715623121.a n = A002533 n

end A002533

/-! ## A002533.P16917236028280652916

`Δ[A290999(n)/6]`
-/

namespace A002533.P16917236028280652916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290999 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002533.P16917236028280652916

namespace A002533

/-- `Δ[A290999(n)/6]` -/
def P16917236028280652916.Spec : Prop :=
  ∀ n, P16917236028280652916.a n = (A002533 n : ℚ)

end A002533

/-!
# A002534: a(n) = 2*a(n-1) + 9*a(n-2), with a(0) = 0, a(1) = 1.

The programs for A002534, the canonical program `A002534.P4125381583926436211` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002534 has offset 0).

The definition of A002534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+9*a(n-2)` (program `A002534.P4125381583926436211`, by `A002534.P4125381583926436211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002534.P4125381583926436211

`2*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002534

/-- `2*a(n-1)+9*a(n-2)` -/
def P4125381583926436211.Spec : Prop :=
  ∀ n, (P4125381583926436211.a n : ℤ) = A002534 n

theorem P4125381583926436211.correct : P4125381583926436211.Spec := by
  intro n
  simp only [A002534]

end A002534

/-! ## A002534.P1980293980670159938

`ogf(x/(1-2x-9x^2))`
-/

namespace A002534.P1980293980670159938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -9] n

end

end A002534.P1980293980670159938

namespace A002534

/-- `ogf(x/(1-2x-9x^2))` -/
def P1980293980670159938.Spec : Prop :=
  ∀ n, P1980293980670159938.a n = A002534 n

end A002534

/-! ## A002534.P12313120902643857510

`a(n-1)+a(n-1)+a(n-2)/(1/3)²` with `a(0)=0, a(1)=1`
-/

namespace A002534.P12313120902643857510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A002534.P12313120902643857510

namespace A002534

/-- `a(n-1)+a(n-1)+a(n-2)/(1/3)²` -/
def P12313120902643857510.Spec : Prop :=
  ∀ n, P12313120902643857510.a n = (A002534 n : ℚ)

end A002534

/-! ## A002534.P11363734977906419281

`((1+sqrt(10))^n-(1-sqrt(10))^n)/(2*sqrt(10))`
-/

namespace A002534.P11363734977906419281
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (10 : ℝ)) ^ n - (1 - Real.sqrt (10 : ℝ)) ^ n) / (2 * Real.sqrt (10 : ℝ))

end

end A002534.P11363734977906419281

namespace A002534

/-- `((1+sqrt(10))^n-(1-sqrt(10))^n)/(2*sqrt(10))` -/
def P11363734977906419281.Spec : Prop :=
  ∀ n, P11363734977906419281.a n = (A002534 n : ℝ)

theorem P11363734977906419281.correct : P11363734977906419281.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002534, Nat.add_sub_cancel, A002534.P11363734977906419281.a, A002534.P4125381583926436211.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002534, Nat.add_sub_cancel, A002534.P11363734977906419281.a, A002534.P4125381583926436211.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002534

/-! ## A002534.P16681398277242998402

`∑[A002535(n)]-A002535(n)`
-/

namespace A002534.P16681398277242998402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002535 n

end

end A002534.P16681398277242998402

namespace A002534

/-- `∑[A002535(n)]-A002535(n)` -/
def P16681398277242998402.Spec : Prop :=
  ∀ n, P16681398277242998402.a n = A002534 n

end A002534

/-! ## A002534.P16948889120812309254

`Δ[A002535(n)/10]`
-/

namespace A002534.P16948889120812309254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002535 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002534.P16948889120812309254

namespace A002534

/-- `Δ[A002535(n)/10]` -/
def P16948889120812309254.Spec : Prop :=
  ∀ n, P16948889120812309254.a n = (A002534 n : ℚ)

end A002534

/-!
# A002535: a(n) = 2*a(n-1) + 9*a(n-2), with a(0)=a(1)=1.

The programs for A002535, the canonical program `A002535.P14927946205751248190` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002535 has offset 0).

The definition of A002535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+9*a(n-2)` (program `A002535.P14927946205751248190`, by `A002535.P14927946205751248190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002535.P14927946205751248190

`2*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002535

/-- `2*a(n-1)+9*a(n-2)` -/
def P14927946205751248190.Spec : Prop :=
  ∀ n, (P14927946205751248190.a n : ℤ) = A002535 n

theorem P14927946205751248190.correct : P14927946205751248190.Spec := by
  intro n
  simp only [A002535]

end A002535

/-! ## A002535.P7213814699286053876

`ogf((-1+x)/(-1+2x+9x^2))`
-/

namespace A002535.P7213814699286053876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -9] n

end

end A002535.P7213814699286053876

namespace A002535

/-- `ogf((-1+x)/(-1+2x+9x^2))` -/
def P7213814699286053876.Spec : Prop :=
  ∀ n, P7213814699286053876.a n = A002535 n

end A002535

/-! ## A002535.P3660397551125486382

`((1+sqrt(10))^n+(1-sqrt(10))^n)/2`
-/

namespace A002535.P3660397551125486382
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (10 : ℝ)) ^ n + (1 - Real.sqrt (10 : ℝ)) ^ n) / 2

end

end A002535.P3660397551125486382

namespace A002535

/-- `((1+sqrt(10))^n+(1-sqrt(10))^n)/2` -/
def P3660397551125486382.Spec : Prop :=
  ∀ n, P3660397551125486382.a n = (A002535 n : ℝ)

theorem P3660397551125486382.correct : P3660397551125486382.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002535, Nat.add_sub_cancel, A002535.P3660397551125486382.a, A002535.P14927946205751248190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002535, Nat.add_sub_cancel, A002535.P3660397551125486382.a, A002535.P14927946205751248190.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A002535

/-! ## A002535.P5807014359606006033

`lcm(3, a(n-1)+lcm(3, a(n-2)))-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A002535.P5807014359606006033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 3 (a (n - 1) + (Int.lcm 3 (a (n - 2)) : ℤ)) : ℤ) - a (n - 1)

end

end A002535.P5807014359606006033

namespace A002535

/-- `lcm(3, a(n-1)+lcm(3, a(n-2)))-a(n-1)` -/
def P5807014359606006033.Spec : Prop :=
  ∀ n, P5807014359606006033.a n = A002535 n

end A002535

/-! ## A002535.P3699238936384638915

`a(n-1)+a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A002535.P3699238936384638915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2)

end

end A002535.P3699238936384638915

namespace A002535

/-- `a(n-1)+a(n-1)+a(n-2)/(1/3)²` -/
def P3699238936384638915.Spec : Prop :=
  ∀ n, P3699238936384638915.a n = (A002535 n : ℚ)

end A002535

/-! ## A002535.P5914329892171508230

`Δ[A002534(n)]`
-/

namespace A002535.P5914329892171508230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002535.P5914329892171508230

namespace A002535

/-- `Δ[A002534(n)]` -/
def P5914329892171508230.Spec : Prop :=
  ∀ n, P5914329892171508230.a n = A002535 n

end A002535

/-! ## A002535.P1208955695174393191

`A002534(n+1)-A002534(n)`
-/

namespace A002535.P1208955695174393191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002534 (n + 1) - A002534 n

end

end A002535.P1208955695174393191

namespace A002535

/-- `A002534(n+1)-A002534(n)` -/
def P1208955695174393191.Spec : Prop :=
  ∀ n, P1208955695174393191.a n = A002535 n

end A002535

/-! ## A002535.P12300797019057160694

`2*A123007(n+1)-A094726(n+1)`
-/

namespace A002535.P12300797019057160694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123007 (n + 1) - A094726 (n + 1)

end

end A002535.P12300797019057160694

namespace A002535

/-- `2*A123007(n+1)-A094726(n+1)` -/
def P12300797019057160694.Spec : Prop :=
  ∀ n, P12300797019057160694.a n = A002535 n

end A002535

/-! ## A002535.P14826889574099392272

`A094726(n+2)-(A123007(n+1)+A123007(n+2))`
-/

namespace A002535.P14826889574099392272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094726 (n + 2) - (A123007 (n + 1) + A123007 (n + 2))

end

end A002535.P14826889574099392272

namespace A002535

/-- `A094726(n+2)-(A123007(n+1)+A123007(n+2))` -/
def P14826889574099392272.Spec : Prop :=
  ∀ n, P14826889574099392272.a n = A002535 n

end A002535

/-!
# A002536: a(n) = 8*a(n-2) - 9*a(n-4).

The programs for A002536, the canonical program `A002536.P14462022384145919229` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002536 has offset 0).

The definition of A002536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)-9*a(n-4)` (program `A002536.P14462022384145919229`, by `A002536.P14462022384145919229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002536.P14462022384145919229

`8*a(n-2)-9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002536

/-- `8*a(n-2)-9*a(n-4)` -/
def P14462022384145919229.Spec : Prop :=
  ∀ n, P14462022384145919229.a n = A002536 n

theorem P14462022384145919229.correct : P14462022384145919229.Spec := by
  intro n
  simp only [A002536]

end A002536

/-! ## A002536.P11545275686221534983

`A174988(n)/A040001(n)`
-/

namespace A002536.P11545275686221534983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174988 n : ℚ) / (A040001 n : ℚ)

end

end A002536.P11545275686221534983

namespace A002536

/-- `A174988(n)/A040001(n)` -/
def P11545275686221534983.Spec : Prop :=
  ∀ n, P11545275686221534983.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P8248988397128270579

`2^floor((1-n)/2)*A083099(n)`
-/

namespace A002536.P8248988397128270579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(1 - (n : ℤ) : ℚ) / 2⌋ : ℤ) * (A083099 n : ℚ)

end

end A002536.P8248988397128270579

namespace A002536

/-- `2^floor((1-n)/2)*A083099(n)` -/
def P8248988397128270579.Spec : Prop :=
  ∀ n, P8248988397128270579.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P10458962879420157474

`A083099(n)/A016116(n)`
-/

namespace A002536.P10458962879420157474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / (A016116 n : ℚ)

end

end A002536.P10458962879420157474

namespace A002536

/-- `A083099(n)/A016116(n)` -/
def P10458962879420157474.Spec : Prop :=
  ∀ n, P10458962879420157474.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P10780110934626629861

`A083099(n)/∏[A040001(n)]`
-/

namespace A002536.P10780110934626629861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A002536.P10780110934626629861

namespace A002536

/-- `A083099(n)/∏[A040001(n)]` -/
def P10780110934626629861.Spec : Prop :=
  ∀ n, P10780110934626629861.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P10605238798726600937

`A083099(n)/Δ[A209724(n+1)]`
-/

namespace A002536.P10605238798726600937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A002536.P10605238798726600937

namespace A002536

/-- `A083099(n)/Δ[A209724(n+1)]` -/
def P10605238798726600937.Spec : Prop :=
  ∀ n, P10605238798726600937.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P8616031287870006592

`A083099(n)/A000079(A004526(n))`
-/

namespace A002536.P8616031287870006592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / (A000079 (A004526 n).toNat : ℚ)

end

end A002536.P8616031287870006592

namespace A002536

/-- `A083099(n)/A000079(A004526(n))` -/
def P8616031287870006592.Spec : Prop :=
  ∀ n, P8616031287870006592.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P13806703386010273175

`A083099(n)/A011782(A008619(n))`
-/

namespace A002536.P13806703386010273175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / (A011782 (A008619 n).toNat : ℚ)

end

end A002536.P13806703386010273175

namespace A002536

/-- `A083099(n)/A011782(A008619(n))` -/
def P13806703386010273175.Spec : Prop :=
  ∀ n, P13806703386010273175.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P13115985896506856294

`A083099(n)/gcd(A002605(n), A026150(n))`
-/

namespace A002536.P13115985896506856294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / (Int.gcd (A002605 n) (A026150 n) : ℚ)

end

end A002536.P13115985896506856294

namespace A002536

/-- `A083099(n)/gcd(A002605(n), A026150(n))` -/
def P13115985896506856294.Spec : Prop :=
  ∀ n, P13115985896506856294.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P15240731297309955142

`A274520(n)/A060546(n+1)`
-/

namespace A002536.P15240731297309955142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274520 n : ℚ) / (A060546 (n + 1) : ℚ)

end

end A002536.P15240731297309955142

namespace A002536

/-- `A274520(n)/A060546(n+1)` -/
def P15240731297309955142.Spec : Prop :=
  ∀ n, P15240731297309955142.a n = (A002536 n : ℚ)

end A002536

/-! ## A002536.P5649322672390916500

`A083099(n)/gcd(A083098(n), A083099(n))`
-/

namespace A002536.P5649322672390916500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083099 n : ℚ) / (Int.gcd (A083098 n) (A083099 n) : ℚ)

end

end A002536.P5649322672390916500

namespace A002536

/-- `A083099(n)/gcd(A083098(n), A083099(n))` -/
def P5649322672390916500.Spec : Prop :=
  ∀ n, P5649322672390916500.a n = (A002536 n : ℚ)

end A002536

/-!
# A002537: a(2n) = a(2n-1) + 3a(2n-2), a(2n+1) = 2a(2n) + 3a(2n-1).

The programs for A002537, the canonical program `A002537.P8830068832250060719` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002537 has offset 0).

The definition of A002537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002537.P8830068832250060719

`8*a(n-2)-9*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002537

/-- `8*a(n-2)-9*a(n-4)` -/
def P8830068832250060719.Spec : Prop :=
  ∀ n, P8830068832250060719.a n = A002537 n

theorem P8830068832250060719.correct : P8830068832250060719.Spec := by
  intro n
  simp only [A002537]

end A002537

/-! ## A002537.P12232788114893739165

`A083098(n)/A016116(n)`
-/

namespace A002537.P12232788114893739165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083098 n : ℚ) / (A016116 n : ℚ)

end

end A002537.P12232788114893739165

namespace A002537

/-- `A083098(n)/A016116(n)` -/
def P12232788114893739165.Spec : Prop :=
  ∀ n, P12232788114893739165.a n = (A002537 n : ℚ)

end A002537

/-! ## A002537.P12084981024605104056

`Δ[A083099(n)]/A016116(n)`
-/

namespace A002537.P12084981024605104056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016116 n : ℚ)

end

end A002537.P12084981024605104056

namespace A002537

/-- `Δ[A083099(n)]/A016116(n)` -/
def P12084981024605104056.Spec : Prop :=
  ∀ n, P12084981024605104056.a n = (A002537 n : ℚ)

end A002537

/-! ## A002537.P15516077567794624993

`A083098(n)/∏[A040001(n)]`
-/

namespace A002537.P15516077567794624993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083098 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A002537.P15516077567794624993

namespace A002537

/-- `A083098(n)/∏[A040001(n)]` -/
def P15516077567794624993.Spec : Prop :=
  ∀ n, P15516077567794624993.a n = (A002537 n : ℚ)

end A002537

/-! ## A002537.P11609338161942740259

`Δ[A083099(n)]/Δ[A209724(n+1)]`
-/

namespace A002537.P11609338161942740259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A002537.P11609338161942740259

namespace A002537

/-- `Δ[A083099(n)]/Δ[A209724(n+1)]` -/
def P11609338161942740259.Spec : Prop :=
  ∀ n, P11609338161942740259.a n = (A002537 n : ℚ)

end A002537

/-! ## A002537.P18230653739446547791

`A083098(n)/gcd(A083098(n), A083099(n))`
-/

namespace A002537.P18230653739446547791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083098 n : ℚ) / (Int.gcd (A083098 n) (A083099 n) : ℚ)

end

end A002537.P18230653739446547791

namespace A002537

/-- `A083098(n)/gcd(A083098(n), A083099(n))` -/
def P18230653739446547791.Spec : Prop :=
  ∀ n, P18230653739446547791.a n = (A002537 n : ℚ)

end A002537

/-! ## A002537.P7775359653041642966

`Δ[A002536(n)*A016116(n)]/A016116(n)`
-/

namespace A002537.P7775359653041642966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 n * A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016116 n : ℚ)

end

end A002537.P7775359653041642966

namespace A002537

/-- `Δ[A002536(n)*A016116(n)]/A016116(n)` -/
def P7775359653041642966.Spec : Prop :=
  ∀ n, P7775359653041642966.a n = (A002537 n : ℚ)

end A002537

/-!
# A002538: Second-order Eulerian numbers <>.

The programs for A002538, the canonical program `A002538.P17904586890087023713` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002538 has offset 1).

The definition of A002538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002538.P17904586890087023713

`(n+3)*a(n-1)+(n+1)*(n+1)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002538

/-- `(n+3)*a(n-1)+(n+1)*(n+1)!` -/
def P17904586890087023713.Spec : Prop :=
  ∀ n, (P17904586890087023713.a n : ℤ) = A002538 (n + 1)

theorem P17904586890087023713.correct : P17904586890087023713.Spec := by
  intro n
  simp only [A002538, Nat.add_sub_cancel]

end A002538

/-! ## A002538.P13526129061296383467

`(n+2)!*∑[∑[1/(n+2)]]`
-/

namespace A002538.P13526129061296383467
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002538.P13526129061296383467

namespace A002538

/-- `(n+2)!*∑[∑[1/(n+2)]]` -/
def P13526129061296383467.Spec : Prop :=
  ∀ n, P13526129061296383467.a n = (A002538 (n + 1) : ℚ)

end A002538

/-! ## A002538.P10454266327980822537

`∑[∑[1/(n+2)]]*∏[n+2]`
-/

namespace A002538.P10454266327980822537
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A002538.P10454266327980822537

namespace A002538

/-- `∑[∑[1/(n+2)]]*∏[n+2]` -/
def P10454266327980822537.Spec : Prop :=
  ∀ n, P10454266327980822537.a n = (A002538 (n + 1) : ℚ)

end A002538

/-! ## A002538.P10510646115069293351

`Δ[(n+1)!]+(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A002538.P10510646115069293351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ) * a (n - 1)

end

end A002538.P10510646115069293351

namespace A002538

/-- `Δ[(n+1)!]+(n+3)*a(n-1)` -/
def P10510646115069293351.Spec : Prop :=
  ∀ n, P10510646115069293351.a n = A002538 (n + 1)

end A002538

/-! ## A002538.P9977122499412351748

`Δ[(n+1)*a(n-1)]+(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A002538.P9977122499412351748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 3 : ℤ) * a (n - 1)

end

end A002538.P9977122499412351748

namespace A002538

/-- `Δ[(n+1)*a(n-1)]+(n+3)*a(n-1)` -/
def P9977122499412351748.Spec : Prop :=
  ∀ n, P9977122499412351748.a n = A002538 (n + 1)

end A002538

/-! ## A002538.P1063502135099454

`A288964(n+2)/2`
-/

namespace A002538.P1063502135099454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288964 (n + 2) : ℚ) / 2

end

end A002538.P1063502135099454

namespace A002538

/-- `A288964(n+2)/2` -/
def P1063502135099454.Spec : Prop :=
  ∀ n, P1063502135099454.a n = (A002538 (n + 1) : ℚ)

end A002538

/-! ## A002538.P5442703913221509871

`(n+2)!*∑[n+1]-A321853(n+2)`
-/

namespace A002538.P5442703913221509871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A321853 (n + 2)

end

end A002538.P5442703913221509871

namespace A002538

/-- `(n+2)!*∑[n+1]-A321853(n+2)` -/
def P5442703913221509871.Spec : Prop :=
  ∀ n, P5442703913221509871.a n = A002538 (n + 1)

end A002538

/-! ## A002538.P14884666710837776401

`A001705(n+2)-A001563(n+2)`
-/

namespace A002538.P14884666710837776401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (n + 2) - A001563 (n + 2)

end

end A002538.P14884666710837776401

namespace A002538

/-- `A001705(n+2)-A001563(n+2)` -/
def P14884666710837776401.Spec : Prop :=
  ∀ n, P14884666710837776401.a n = A002538 (n + 1)

end A002538

/-! ## A002538.P4952181764321165446

`A001804(n+2)-A321853(n+2)`
-/

namespace A002538.P4952181764321165446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001804 (n + 2) - A321853 (n + 2)

end

end A002538.P4952181764321165446

namespace A002538

/-- `A001804(n+2)-A321853(n+2)` -/
def P4952181764321165446.Spec : Prop :=
  ∀ n, P4952181764321165446.a n = A002538 (n + 1)

end A002538

/-! ## A002538.P15258754850165699538

`2*A001711(n)-A001286(n+2)`
-/

namespace A002538.P15258754850165699538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001711 n - A001286 (n + 2)

end

end A002538.P15258754850165699538

namespace A002538

/-- `2*A001711(n)-A001286(n+2)` -/
def P15258754850165699538.Spec : Prop :=
  ∀ n, P15258754850165699538.a n = A002538 (n + 1)

end A002538

/-!
# A002539: Eulerian numbers of the second kind: <>.

The programs for A002539, the canonical program `A002539.P16612726421466139855` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002539 has offset 0).

The definition of A002539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002539.P16612726421466139855

`(n+5)*a(n-1)+(n+1)*A002538(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002539

/-- `(n+5)*a(n-1)+(n+1)*A002538(n+1)` -/
def P16612726421466139855.Spec : Prop :=
  ∀ n, P16612726421466139855.a n = A002539 n

theorem P16612726421466139855.correct : P16612726421466139855.Spec := by
  intro n
  simp only [A002539]

end A002539

/-! ## A002539.P9204239680997312127

`A112007(∑[n+2]+3)`
-/

namespace A002539.P9204239680997312127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002539.P9204239680997312127

namespace A002539

/-- `A112007(∑[n+2]+3)` -/
def P9204239680997312127.Spec : Prop :=
  ∀ n, P9204239680997312127.a n = A002539 n

end A002539

/-! ## A002539.P12684256398827059451

`A163936(A167614(n+2))`
-/

namespace A002539.P12684256398827059451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (A167614 (n + 2)).toNat

end

end A002539.P12684256398827059451

namespace A002539

/-- `A163936(A167614(n+2))` -/
def P12684256398827059451.Spec : Prop :=
  ∀ n, P12684256398827059451.a n = A002539 n

end A002539

/-! ## A002539.P17127326560798267989

`A288874(A052905(n)+8)`
-/

namespace A002539.P17127326560798267989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A052905 n + 8).toNat

end

end A002539.P17127326560798267989

namespace A002539

/-- `A288874(A052905(n)+8)` -/
def P17127326560798267989.Spec : Prop :=
  ∀ n, P17127326560798267989.a n = A002539 n

end A002539

/-! ## A002539.P1044232358253075009

`A288874(A055999(n)+9)`
-/

namespace A002539.P1044232358253075009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A055999 n + 9).toNat

end

end A002539.P1044232358253075009

namespace A002539

/-- `A288874(A055999(n)+9)` -/
def P1044232358253075009.Spec : Prop :=
  ∀ n, P1044232358253075009.a n = A002539 n

end A002539

/-! ## A002539.P13213901899689384562

`A008517(∑[n+3]+1)`
-/

namespace A002539.P13213901899689384562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002539.P13213901899689384562

namespace A002539

/-- `A008517(∑[n+3]+1)` -/
def P13213901899689384562.Spec : Prop :=
  ∀ n, P13213901899689384562.a n = A002539 n

end A002539

/-! ## A002539.P3171494575237598649

`A201637(∑[n+3]+n+3)`
-/

namespace A002539.P3171494575237598649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A002539.P3171494575237598649

namespace A002539

/-- `A201637(∑[n+3]+n+3)` -/
def P3171494575237598649.Spec : Prop :=
  ∀ n, P3171494575237598649.a n = A002539 n

end A002539

/-!
# A002540: Increasing gaps between prime-powers.

The programs for A002540, there is no canonical definition to state claims against.
-/

/-! ## A002540.P7649994156391830500

`A167236(n+1)-A121492(n+1)`
-/

namespace A002540.P7649994156391830500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167236 (n + 1) - A121492 (n + 1)

end

end A002540.P7649994156391830500

/-! ## A002540.P17156453381281607944

`A167236(n+1)-record[A090811(n+1)]`
-/

namespace A002540.P17156453381281607944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167236 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002540.P17156453381281607944

/-! ## A002540.P614028581100552523

`A290515(A121492(n+1))`
-/

namespace A002540.P614028581100552523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (A121492 (n + 1)).toNat

end

end A002540.P614028581100552523

/-! ## A002540.P8417617088278829733

`A290515(record[Δ[A000961(n+1)]])`
-/

namespace A002540.P8417617088278829733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290515 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002540.P8417617088278829733

/-! ## A002540.P17340467228001865651

`A167236(n+1)-record[A057820(n+1)]`
-/

namespace A002540.P17340467228001865651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167236 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002540.P17340467228001865651

/-!
# A002541: a(n) = Sum_{k=1..n-1} floor((n-k)/k).

The programs for A002541, the canonical program `A002541.P10664040244727747136` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002541 has offset 1).

The definition of A002541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002541.P10664040244727747136

`A006218(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002541

/-- `A006218(n+1)-(n+1)` -/
def P10664040244727747136.Spec : Prop :=
  ∀ n, P10664040244727747136.a n = A002541 (n + 1)

theorem P10664040244727747136.correct : P10664040244727747136.Spec := by
  intro n
  simp only [A002541, Nat.add_sub_cancel]

end A002541

/-! ## A002541.P14170752280779166976

`A161886(n+1)-(2*(n+1)-1)`
-/

namespace A002541.P14170752280779166976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) - ((2 * (n + 1) : ℤ) - 1)

end

end A002541.P14170752280779166976

namespace A002541

/-- `A161886(n+1)-(2*(n+1)-1)` -/
def P14170752280779166976.Spec : Prop :=
  ∀ n, P14170752280779166976.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P12025292441534497668

`∑[∑{d}[n+1, floor(atan(#))]]`
-/

namespace A002541.P12025292441534497668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P12025292441534497668

namespace A002541

/-- `∑[∑{d}[n+1, floor(atan(#))]]` -/
def P12025292441534497668.Spec : Prop :=
  ∀ n, P12025292441534497668.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P3915560444453872957

`∑[∑{d}[n+1, n²%#]]`
-/

namespace A002541.P3915560444453872957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P3915560444453872957

namespace A002541

/-- `∑[∑{d}[n+1, n²%#]]` -/
def P3915560444453872957.Spec : Prop :=
  ∀ n, (P3915560444453872957.a n : ℤ) = A002541 (n + 1)

end A002541

/-! ## A002541.P9390297484865507357

`∑[∏{e}[n+1, #+1]-1]`
-/

namespace A002541.P9390297484865507357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P9390297484865507357

namespace A002541

/-- `∑[∏{e}[n+1, #+1]-1]` -/
def P9390297484865507357.Spec : Prop :=
  ∀ n, P9390297484865507357.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P10684826895657535935

`∑[∑{d}[n+1, gcd(n, #)]-1]`
-/

namespace A002541.P10684826895657535935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P10684826895657535935

namespace A002541

/-- `∑[∑{d}[n+1, gcd(n, #)]-1]` -/
def P10684826895657535935.Spec : Prop :=
  ∀ n, P10684826895657535935.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P15093403048673894811

`∑[∑{d}[n+1, C(n, C(#, n))]]`
-/

namespace A002541.P15093403048673894811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose n (Nat.choose d n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P15093403048673894811

namespace A002541

/-- `∑[∑{d}[n+1, C(n, C(#, n))]]` -/
def P15093403048673894811.Spec : Prop :=
  ∀ n, (P15093403048673894811.a n : ℤ) = A002541 (n + 1)

end A002541

/-! ## A002541.P9151920896629754858

`∑[∑{d}[n+1, #%(n+1)/#]]`
-/

namespace A002541.P9151920896629754858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d % (n + 1) : ℕ) : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P9151920896629754858

namespace A002541

/-- `∑[∑{d}[n+1, #%(n+1)/#]]` -/
def P9151920896629754858.Spec : Prop :=
  ∀ n, P9151920896629754858.a n = (A002541 (n + 1) : ℚ)

end A002541

/-! ## A002541.P4411510366107184414

`A077597(n)-n`
-/

namespace A002541.P4411510366107184414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 n - (n : ℤ)

end

end A002541.P4411510366107184414

namespace A002541

/-- `A077597(n)-n` -/
def P4411510366107184414.Spec : Prop :=
  ∀ n, P4411510366107184414.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P11451489245136072014

`∑[A032741(n+1)]`
-/

namespace A002541.P11451489245136072014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P11451489245136072014

namespace A002541

/-- `∑[A032741(n+1)]` -/
def P11451489245136072014.Spec : Prop :=
  ∀ n, P11451489245136072014.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P10518454901522066945

`∑[A325765(n)]-1`
-/

namespace A002541.P10518454901522066945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002541.P10518454901522066945

namespace A002541

/-- `∑[A325765(n)]-1` -/
def P10518454901522066945.Spec : Prop :=
  ∀ n, P10518454901522066945.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P1502001435038539016

`A325459(n+1)+n`
-/

namespace A002541.P1502001435038539016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (n + 1) + (n : ℤ)

end

end A002541.P1502001435038539016

namespace A002541

/-- `A325459(n+1)+n` -/
def P1502001435038539016.Spec : Prop :=
  ∀ n, P1502001435038539016.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P17397580487736182264

`∑[log2(A100577(n+1))]`
-/

namespace A002541.P17397580487736182264
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100577 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P17397580487736182264

namespace A002541

/-- `∑[log2(A100577(n+1))]` -/
def P17397580487736182264.Spec : Prop :=
  ∀ n, P17397580487736182264.a n = (A002541 (n + 1) : ℝ)

end A002541

/-! ## A002541.P9869739602613783928

`∑[Δ[A006218(n)]-1]`
-/

namespace A002541.P9869739602613783928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P9869739602613783928

namespace A002541

/-- `∑[Δ[A006218(n)]-1]` -/
def P9869739602613783928.Spec : Prop :=
  ∀ n, P9869739602613783928.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P3707933312391832616

`∑[Δ[A054519(n)]-1]`
-/

namespace A002541.P3707933312391832616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P3707933312391832616

namespace A002541

/-- `∑[Δ[A054519(n)]-1]` -/
def P3707933312391832616.Spec : Prop :=
  ∀ n, P3707933312391832616.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P6807334600752810012

`∑[A000005(n+1)-1]`
-/

namespace A002541.P6807334600752810012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P6807334600752810012

namespace A002541

/-- `∑[A000005(n+1)-1]` -/
def P6807334600752810012.Spec : Prop :=
  ∀ n, P6807334600752810012.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P3239068007361142671

`∑[1-A378216(n+1)]`
-/

namespace A002541.P3239068007361142671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A378216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P3239068007361142671

namespace A002541

/-- `∑[1-A378216(n+1)]` -/
def P3239068007361142671.Spec : Prop :=
  ∀ n, P3239068007361142671.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P14046526128057689284

`∑[A334954(n+1)-2]`
-/

namespace A002541.P14046526128057689284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P14046526128057689284

namespace A002541

/-- `∑[A334954(n+1)-2]` -/
def P14046526128057689284.Spec : Prop :=
  ∀ n, P14046526128057689284.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P14478399214698810219

`∑[A338117(2*(n+1))]`
-/

namespace A002541.P14478399214698810219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002541.P14478399214698810219

namespace A002541

/-- `∑[A338117(2*(n+1))]` -/
def P14478399214698810219.Spec : Prop :=
  ∀ n, P14478399214698810219.a n = A002541 (n + 1)

end A002541

/-! ## A002541.P4634406866901068167

`∑[A070824(n+1)]+n`
-/

namespace A002541.P4634406866901068167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002541.P4634406866901068167

namespace A002541

/-- `∑[A070824(n+1)]+n` -/
def P4634406866901068167.Spec : Prop :=
  ∀ n, P4634406866901068167.a n = A002541 (n + 1)

end A002541

/-!
# A002542: Number of two-valued complete Post functions of n variables.

The programs for A002542, the canonical program `A002542.P12054767873448172246` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002542 has offset 1).

The definition of A002542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002542.P12054767873448172246

`2^(2^(n+1)-2)-2^(2^n-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002542

/-- `2^(2^(n+1)-2)-2^(2^n-1)` -/
def P12054767873448172246.Spec : Prop :=
  ∀ n, P12054767873448172246.a n = (A002542 (n + 1) : ℚ)

end A002542

/-! ## A002542.P4559384982434612522

`2*C(2^(2^n-1), 2)`
-/

namespace A002542.P4559384982434612522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ))).toNat 2

end

end A002542.P4559384982434612522

namespace A002542

/-- `2*C(2^(2^n-1), 2)` -/
def P4559384982434612522.Spec : Prop :=
  ∀ n, (P4559384982434612522.a n : ℤ) = A002542 (n + 1)

end A002542

/-! ## A002542.P11981701192011917194

`(2^2^dr(n)/2-1)*2^2^dr(n)/2`
-/

namespace A002542.P11981701192011917194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ 2 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 2 - 1) * ((2 ^ 2 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 2)

end

end A002542.P11981701192011917194

namespace A002542

/-- `(2^2^dr(n)/2-1)*2^2^dr(n)/2` -/
def P11981701192011917194.Spec : Prop :=
  ∀ n, P11981701192011917194.a n = (A002542 (n + 1) : ℚ)

end A002542

/-! ## A002542.P12327852655108174537

`A045678(∑[2^n])`
-/

namespace A002542.P12327852655108174537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002542.P12327852655108174537

namespace A002542

/-- `A045678(∑[2^n])` -/
def P12327852655108174537.Spec : Prop :=
  ∀ n, P12327852655108174537.a n = A002542 (n + 1)

end A002542

/-!
# A002543: Complete Post functions of n variables.

The programs for A002543, there is no canonical definition to state claims against.
-/

/-! ## A002543.P18381231123048109385

`A002857(n+1)-A262546(n+1)`
-/

namespace A002543.P18381231123048109385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002857 (n + 1) - A262546 (n + 1)

end

end A002543.P18381231123048109385

/-!
# A002544: a(n) = binomial(2*n+1,n)*(n+1)^2.

The programs for A002544, the canonical program `A002544.P16587238265721360612` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002544 has offset 0).

The definition of A002544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+1, n)*(n+1)²` (program `A002544.P16587238265721360612`, by `A002544.P16587238265721360612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002544.P5833020650012982370

`A002736(n+1)/2`
-/

namespace A002544.P5833020650012982370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002736 (n + 1) : ℚ) / 2

end

end A002544.P5833020650012982370

namespace A002544

/-- `A002736(n+1)/2` -/
def P5833020650012982370.Spec : Prop :=
  ∀ n, P5833020650012982370.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P18026945423642297502

`A002457(n)*(n+1)`
-/

namespace A002544.P18026945423642297502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n * (n + 1 : ℤ)

end

end A002544.P18026945423642297502

namespace A002544

/-- `A002457(n)*(n+1)` -/
def P18026945423642297502.Spec : Prop :=
  ∀ n, P18026945423642297502.a n = A002544 n

end A002544

/-! ## A002544.P16587238265721360612

`C(2*n+1, n)*(n+1)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002544

/-- `C(2*n+1, n)*(n+1)²` -/
def P16587238265721360612.Spec : Prop :=
  ∀ n, (P16587238265721360612.a n : ℤ) = A002544 n

theorem P16587238265721360612.correct : P16587238265721360612.Spec := by
  intro n
  simp only [A002544]

end A002544

/-! ## A002544.P9337012813623076111

`∏[4-2/(n+1)]/2*(n+1)²`
-/

namespace A002544.P9337012813623076111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((n + 1) ^ 2 : ℚ)

end

end A002544.P9337012813623076111

namespace A002544

/-- `∏[4-2/(n+1)]/2*(n+1)²` -/
def P9337012813623076111.Spec : Prop :=
  ∀ n, P9337012813623076111.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P722510737677752228

`∏[4-2/(n+1)]/2+(2*n+1)*(n+2)*a(n-1)/∑[n]` with `a(0)=1`
-/

namespace A002544.P722510737677752228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 + (2 * n + 1 : ℚ) * ((n + 2 : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)))

end

end A002544.P722510737677752228

namespace A002544

/-- `∏[4-2/(n+1)]/2+(2*n+1)*(n+2)*a(n-1)/∑[n]` -/
def P722510737677752228.Spec : Prop :=
  ∀ n, P722510737677752228.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P6754591012886422747

`A107231(2*n)`
-/

namespace A002544.P6754591012886422747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107231 (2 * n)

end

end A002544.P6754591012886422747

namespace A002544

/-- `A107231(2*n)` -/
def P6754591012886422747.Spec : Prop :=
  ∀ n, P6754591012886422747.a n = A002544 n

end A002544

/-! ## A002544.P6924432432181658632

`(2*n+1)*(n+1)*A000108(n)+(2/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A002544.P6924432432181658632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1 : ℤ) * ((n + 1 : ℤ) * A000108 n) : ℚ) + (2 / (n : ℚ) + 4) * a (n - 1)

end

end A002544.P6924432432181658632

namespace A002544

/-- `(2*n+1)*(n+1)*A000108(n)+(2/n+4)*a(n-1)` -/
def P6924432432181658632.Spec : Prop :=
  ∀ n, P6924432432181658632.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P2067874554695296038

`A349427(n+2)-A002457(n+1)`
-/

namespace A002544.P2067874554695296038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349427 (n + 2) - A002457 (n + 1)

end

end A002544.P2067874554695296038

namespace A002544

/-- `A349427(n+2)-A002457(n+1)` -/
def P2067874554695296038.Spec : Prop :=
  ∀ n, P2067874554695296038.a n = A002544 n

end A002544

/-! ## A002544.P5224756937571660641

`A037966(n+2)-A349427(n+2)`
-/

namespace A002544.P5224756937571660641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037966 (n + 2) - A349427 (n + 2)

end

end A002544.P5224756937571660641

namespace A002544

/-- `A037966(n+2)-A349427(n+2)` -/
def P5224756937571660641.Spec : Prop :=
  ∀ n, P5224756937571660641.a n = A002544 n

end A002544

/-! ## A002544.P2905032420947594611

`A000217(2*n+1)*A028329(n)/2`
-/

namespace A002544.P2905032420947594611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) * A028329 n : ℚ) / 2

end

end A002544.P2905032420947594611

namespace A002544

/-- `A000217(2*n+1)*A028329(n)/2` -/
def P2905032420947594611.Spec : Prop :=
  ∀ n, P2905032420947594611.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P8149125327009085255

`A119582(n+1)/(n+2)`
-/

namespace A002544.P8149125327009085255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119582 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A002544.P8149125327009085255

namespace A002544

/-- `A119582(n+1)/(n+2)` -/
def P8149125327009085255.Spec : Prop :=
  ∀ n, P8149125327009085255.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P6129332913003058998

`A119580(n+1)/(A028387(n+1)-A028387(n))`
-/

namespace A002544.P6129332913003058998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119580 (n + 1) : ℚ) / (A028387 (n + 1) - A028387 n : ℚ)

end

end A002544.P6129332913003058998

namespace A002544

/-- `A119580(n+1)/(A028387(n+1)-A028387(n))` -/
def P6129332913003058998.Spec : Prop :=
  ∀ n, P6129332913003058998.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P14288323324563192302

`A000290(n+1)*A056040(2*n+1)/A028310(n+1)`
-/

namespace A002544.P14288323324563192302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) * A056040 (2 * n + 1) : ℚ) / (A028310 (n + 1) : ℚ)

end

end A002544.P14288323324563192302

namespace A002544

/-- `A000290(n+1)*A056040(2*n+1)/A028310(n+1)` -/
def P14288323324563192302.Spec : Prop :=
  ∀ n, P14288323324563192302.a n = (A002544 n : ℚ)

end A002544

/-! ## A002544.P15849690084089577759

`A063007(∑[n+3])`
-/

namespace A002544.P15849690084089577759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002544.P15849690084089577759

namespace A002544

/-- `A063007(∑[n+3])` -/
def P15849690084089577759.Spec : Prop :=
  ∀ n, P15849690084089577759.a n = A002544 n

end A002544

/-! ## A002544.P1163090721087733807

`A391403(A008865(n+2))`
-/

namespace A002544.P1163090721087733807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391403 (A008865 (n + 2)).toNat

end

end A002544.P1163090721087733807

namespace A002544

/-- `A391403(A008865(n+2))` -/
def P1163090721087733807.Spec : Prop :=
  ∀ n, P1163090721087733807.a n = A002544 n

end A002544

/-!
# A002545: Numerator of Sum_{i+j+k=n; i,j,k > 0} 1/(i*j*k).

The programs for A002545, there is no canonical definition to state claims against.
-/

/-! ## A002545.P2994902907641714996

`abs(A140749(eq[4, A059268(n)]))`
-/

namespace A002545.P2994902907641714996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A002545.P2994902907641714996

/-! ## A002545.P7466525691526806199

`∏{p}[A140749(eq[3, A002260(n+1)]), #]`
-/

namespace A002545.P7466525691526806199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140749 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A002545.P7466525691526806199

/-!
# A002546: Denominator of Sum_{i+j+k=n; i,j,k > 0} 1/(i*j*k).

The programs for A002546, there is no canonical definition to state claims against.
-/

/-! ## A002546.P10700815848931027508

`A141412(∑[n+2]+3)`
-/

namespace A002546.P10700815848931027508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141412 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002546.P10700815848931027508

/-! ## A002546.P615815286974796026

`A141412(A133263(n+2))*A204418(3*(n+1))`
-/

namespace A002546.P615815286974796026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141412 (A133263 (n + 2)).toNat * A204418 (3 * (n + 1))

end

end A002546.P615815286974796026

/-! ## A002546.P7968952456806897488

`A141412(A133263(n+2))^A027642(2*n+3)`
-/

namespace A002546.P7968952456806897488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141412 (A133263 (n + 2)).toNat : ℚ) ^ (A027642 (2 * n + 3) : ℤ)

end

end A002546.P7968952456806897488

/-! ## A002546.P13047881630928545909

`A141412(A133263(n+2))^A005361(A088840(n+1))`
-/

namespace A002546.P13047881630928545909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141412 (A133263 (n + 2)).toNat : ℚ) ^ (A005361 (A088840 (n + 1)).toNat : ℤ)

end

end A002546.P13047881630928545909

/-! ## A002546.P16153900885725552313

`A141412(A133263(n+2))^A088840(A033948(n+4))`
-/

namespace A002546.P16153900885725552313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141412 (A133263 (n + 2)).toNat : ℚ) ^ (A088840 (A033948 (n + 4)).toNat : ℤ)

end

end A002546.P16153900885725552313

/-! ## A002546.P768971502881156461

`A308264(A002313(2*(n+2)))+A141412(A133263(n+2))`
-/

namespace A002546.P768971502881156461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308264 (A002313 (2 * (n + 2))).toNat + A141412 (A133263 (n + 2)).toNat

end

end A002546.P768971502881156461

/-!
# A002547: Numerator of the n-th harmonic number H(n) divided by (n+1); a(n) = A001008(n) / ((n+1)*A002805(n)).

The programs for A002547, the canonical program `A002547.P4051207743041525238` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002547 has offset 1).

The definition of A002547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002547.P3965627257813312334

`A096617(n+1)/gcd(∑[n+1], A096617(n+1))`
-/

namespace A002547.P3965627257813312334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A096617 (n + 1)) : ℚ)

end

end A002547.P3965627257813312334

namespace A002547

/-- `A096617(n+1)/gcd(∑[n+1], A096617(n+1))` -/
def P3965627257813312334.Spec : Prop :=
  ∀ n, P3965627257813312334.a n = (A002547 (n + 1) : ℚ)

end A002547

/-! ## A002547.P4051207743041525238

`A001008(n+1)/gcd(A001008(n+1), A145979(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002547

/-- `A001008(n+1)/gcd(A001008(n+1), A145979(n))` -/
def P4051207743041525238.Spec : Prop :=
  ∀ n, P4051207743041525238.a n = (A002547 (n + 1) : ℚ)

end A002547

/-! ## A002547.P18138602078918398916

`A002548(n+2)-A093762(n+1)`
-/

namespace A002547.P18138602078918398916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002548 (n + 2) - A093762 (n + 1)

end

end A002547.P18138602078918398916

namespace A002547

/-- `A002548(n+2)-A093762(n+1)` -/
def P18138602078918398916.Spec : Prop :=
  ∀ n, P18138602078918398916.a n = A002547 (n + 1)

end A002547

/-! ## A002547.P11317779868097909340

`lcm(A001008(n+1), A007947(n+2))/A007947(n+2)`
-/

namespace A002547.P11317779868097909340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001008 (n + 1)) (A007947 (n + 2)) : ℚ) / (A007947 (n + 2) : ℚ)

end

end A002547.P11317779868097909340

namespace A002547

/-- `lcm(A001008(n+1), A007947(n+2))/A007947(n+2)` -/
def P11317779868097909340.Spec : Prop :=
  ∀ n, P11317779868097909340.a n = (A002547 (n + 1) : ℚ)

end A002547

/-! ## A002547.P7703051238833668318

`lcm(A001008(n+1), A058794(n))/A058794(n)`
-/

namespace A002547.P7703051238833668318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001008 (n + 1)) (A058794 n) : ℚ) / (A058794 n : ℚ)

end

end A002547.P7703051238833668318

namespace A002547

/-- `lcm(A001008(n+1), A058794(n))/A058794(n)` -/
def P7703051238833668318.Spec : Prop :=
  ∀ n, P7703051238833668318.a n = (A002547 (n + 1) : ℚ)

end A002547

/-! ## A002547.P8601756874920136685

`A035048(2*(n+1))/gcd(A035048(2*(n+1)), A103517(n+1))`
-/

namespace A002547.P8601756874920136685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035048 (2 * (n + 1)) : ℚ) / (Int.gcd (A035048 (2 * (n + 1))) (A103517 (n + 1)) : ℚ)

end

end A002547.P8601756874920136685

namespace A002547

/-- `A035048(2*(n+1))/gcd(A035048(2*(n+1)), A103517(n+1))` -/
def P8601756874920136685.Spec : Prop :=
  ∀ n, P8601756874920136685.a n = (A002547 (n + 1) : ℚ)

end A002547

/-! ## A002547.P2876684093583642641

`abs(A140749(eq[2, A059268(n)]))`
-/

namespace A002547.P2876684093583642641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A002547.P2876684093583642641

namespace A002547

/-- `abs(A140749(eq[2, A059268(n)]))` -/
def P2876684093583642641.Spec : Prop :=
  ∀ n, P2876684093583642641.a n = A002547 (n + 1)

end A002547

/-! ## A002547.P1985049879546575043

`A001008(n+1)/A014963(A309397(n+2))`
-/

namespace A002547.P1985049879546575043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A014963 (A309397 (n + 2)).toNat : ℚ)

end

end A002547.P1985049879546575043

namespace A002547

/-- `A001008(n+1)/A014963(A309397(n+2))` -/
def P1985049879546575043.Spec : Prop :=
  ∀ n, P1985049879546575043.a n = (A002547 (n + 1) : ℚ)

end A002547

/-! ## A002547.P11242170778945534922

`A035048(A103517(n))/A014963(A309397(n+2))`
-/

namespace A002547.P11242170778945534922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035048 (A103517 n).toNat : ℚ) / (A014963 (A309397 (n + 2)).toNat : ℚ)

end

end A002547.P11242170778945534922

namespace A002547

/-- `A035048(A103517(n))/A014963(A309397(n+2))` -/
def P11242170778945534922.Spec : Prop :=
  ∀ n, P11242170778945534922.a n = (A002547 (n + 1) : ℚ)

end A002547

/-!
# A002548: Denominators of coefficients for numerical differentiation.

The programs for A002548, there is no canonical definition to state claims against.
-/

/-! ## A002548.P4347022202294017415

`A093762(n+1)+A002547(n+1)`
-/

namespace A002548.P4347022202294017415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093762 (n + 1) + A002547 (n + 1)

end

end A002548.P4347022202294017415

/-! ## A002548.P2114093269508875734

`A093762(n+1)+lcm(A001008(n+1), A007947(n+2))/A007947(n+2)`
-/

namespace A002548.P2114093269508875734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093762 (n + 1) : ℚ) + (Int.lcm (A001008 (n + 1)) (A007947 (n + 2)) : ℚ) / (A007947 (n + 2) : ℚ)

end

end A002548.P2114093269508875734

/-! ## A002548.P7196751320296745290

`A093762(n+1)+lcm(A001008(n+1), A058794(n))/A058794(n)`
-/

namespace A002548.P7196751320296745290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093762 (n + 1) : ℚ) + (Int.lcm (A001008 (n + 1)) (A058794 n) : ℚ) / (A058794 n : ℚ)

end

end A002548.P7196751320296745290

/-! ## A002548.P17242696982774876239

`A141412(∑[n+1]+1)`
-/

namespace A002548.P17242696982774876239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002548.P17242696982774876239

/-! ## A002548.P1187963530168685216

`A093762(n+1)+A001008(n+1)/A014963(A309397(n+2))`
-/

namespace A002548.P1187963530168685216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093762 (n + 1) : ℚ) + (A001008 (n + 1) : ℚ) / (A014963 (A309397 (n + 2)).toNat : ℚ)

end

end A002548.P1187963530168685216

/-!
# A002549: Numerators of coefficients of log(1+x)/sqrt(1+x).

The programs for A002549, there is no canonical definition to state claims against.
-/

/-! ## A002549.P709121717080268769

`A004041(n)/gcd(A004041(n), A014479(n))`
-/

namespace A002549.P709121717080268769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004041 n : ℚ) / (Int.gcd (A004041 n) (A014479 n) : ℚ)

end

end A002549.P709121717080268769

/-! ## A002549.P13819972407000878801

`A025550(n+1)/gcd(A025550(n+1), A164655(n+1))`
-/

namespace A002549.P13819972407000878801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025550 (n + 1) : ℚ) / (Int.gcd (A025550 (n + 1)) (A164655 (n + 1)) : ℚ)

end

end A002549.P13819972407000878801

/-! ## A002549.P17144059338383660414

`A025550(n+1)/gcd(A074599(n+1), A164656(n+1))`
-/

namespace A002549.P17144059338383660414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025550 (n + 1) : ℚ) / (Int.gcd (A074599 (n + 1)) (A164656 (n + 1)) : ℚ)

end

end A002549.P17144059338383660414

/-! ## A002549.P14926933821092524057

`A233470(n+1)/A006519(n+1)^3`
-/

namespace A002549.P14926933821092524057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233470 (n + 1) : ℚ) / (A006519 (n + 1) ^ 3 : ℚ)

end

end A002549.P14926933821092524057

/-! ## A002549.P14887866536080721290

`lcm(A025550(n+1), A123900(n+4))/A123900(n+4)`
-/

namespace A002549.P14887866536080721290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025550 (n + 1)) (A123900 (n + 4)) : ℚ) / (A123900 (n + 4) : ℚ)

end

end A002549.P14887866536080721290

/-!
# A002550: Denominators of coefficients of log(1+x)/sqrt(1+x).

The programs for A002550, there is no canonical definition to state claims against.
-/

/-! ## A002550.P10615891390816435628

`A015723(n+1)*A162306(A076943(n+1))`
-/

namespace A002550.P10615891390816435628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (n + 1) * A162306 (A076943 (n + 1)).toNat

end

end A002550.P10615891390816435628

/-!
# A002552: Denominators of coefficients in Taylor series expansion of log(1+x)^2/sqrt(1+x).

The programs for A002552, there is no canonical definition to state claims against.
-/

/-! ## A002552.P11001921673583745918

`∏[A186430(∑[A005195(n)])]`
-/

namespace A002552.P11001921673583745918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186430 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002552.P11001921673583745918

/-! ## A002552.P13121435741614973899

`A053657(or(n, A014372(n)²))`
-/

namespace A002552.P13121435741614973899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053657 (Int.lor (n : ℤ) (A014372 n ^ 2)).toNat

end

end A002552.P13121435741614973899

/-!
# A002553: Coefficients for numerical differentiation.

The programs for A002553, there is no canonical definition to state claims against.
-/

/-! ## A002553.P9293829610535435953

`4^n*A002595(n)`
-/

namespace A002553.P9293829610535435953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A002595 n

end

end A002553.P9293829610535435953

/-! ## A002553.P6425961456991564164

`A046161(2*n)*A056617(n)`
-/

namespace A002553.P6425961456991564164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (2 * n) * A056617 n

end

end A002553.P6425961456991564164

/-! ## A002553.P711575896997767858

`A004732(4*n)*A056617(n)`
-/

namespace A002553.P711575896997767858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 (4 * n) * A056617 n

end

end A002553.P711575896997767858

/-! ## A002553.P16283564568113666204

`A056617(n)*A060818(4*n)`
-/

namespace A002553.P16283564568113666204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n * A060818 (4 * n)

end

end A002553.P16283564568113666204

/-! ## A002553.P667142972946767569

`lcm(A002595(n), A046161(2*n))`
-/

namespace A002553.P667142972946767569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002595 n) (A046161 (2 * n))

end

end A002553.P667142972946767569

/-! ## A002553.P8823670316684431706

`A002595(n)*A011782(n+1)²`
-/

namespace A002553.P8823670316684431706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002595 n * A011782 (n + 1) ^ 2

end

end A002553.P8823670316684431706

/-! ## A002553.P9045534643971300203

`A002595(n)*A011782(2*n+1)`
-/

namespace A002553.P9045534643971300203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002595 n * A011782 (2 * n + 1)

end

end A002553.P9045534643971300203

/-! ## A002553.P14977932936284202442

`xor(1, xor(1, A000079(n)²*A002595(n)))`
-/

namespace A002553.P14977932936284202442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000079 n ^ 2 * A002595 n))

end

end A002553.P14977932936284202442

/-! ## A002553.P12232547158780486079

`A000079(A005187(2*n))*A056617(n)`
-/

namespace A002553.P12232547158780486079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005187 (2 * n)).toNat * A056617 n

end

end A002553.P12232547158780486079

/-! ## A002553.P14481445107355975896

`A016116(A178207(2*n))*A056617(n)`
-/

namespace A002553.P14481445107355975896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A178207 (2 * n)).toNat * A056617 n

end

end A002553.P14481445107355975896

/-!
# A002554: Numerators of coefficients for numerical differentiation.

The programs for A002554, there is no canonical definition to state claims against.
-/

/-! ## A002554.P16297911171307902776

`-(A120268(n+1)/A118830(n+1))`
-/

namespace A002554.P16297911171307902776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A120268 (n + 1) : ℚ) / (A118830 (n + 1) : ℚ))

end

end A002554.P16297911171307902776

/-! ## A002554.P17417673789059632003

`char[A335289(n+1)]-A120268(n+1)/A118830(n+1)`
-/

namespace A002554.P17417673789059632003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335289 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A120268 (n + 1) : ℚ) / (A118830 (n + 1) : ℚ)

end

end A002554.P17417673789059632003

/-! ## A002554.P13649231875263186311

`char[A335314(n+1)]-A120268(n+1)/A118830(n+1)`
-/

namespace A002554.P13649231875263186311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335314 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (A120268 (n + 1) : ℚ) / (A118830 (n + 1) : ℚ)

end

end A002554.P13649231875263186311

/-!
# A002555: Denominators of coefficients for numerical differentiation.

The programs for A002555, there is no canonical definition to state claims against.
-/

/-! ## A002555.P9452979913376075054

`record[A046644(3*n+1)]*A073595(n+1)`
-/

namespace A002555.P9452979913376075054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A073595 (n + 1)

end

end A002555.P9452979913376075054

/-! ## A002555.P15547417519875579651

`A046644(A000302(n))*A073595(n+1)`
-/

namespace A002555.P15547417519875579651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000302 n).toNat * A073595 (n + 1)

end

end A002555.P15547417519875579651

/-! ## A002555.P3817967819476496535

`record[A294971(n)/A106609(A001700(n))]*A046644(A000302(n))`
-/

namespace A002555.P3817967819476496535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294971 n : ℚ) / (A106609 (A001700 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A046644 (A000302 n).toNat : ℚ)

end

end A002555.P3817967819476496535

/-!
# A002556: Odd squarefree numbers with an odd number of prime factors that have no prime factors greater than 31.

The programs for A002556, there is no canonical definition to state claims against.
-/

/-! ## A002556.P167700151944723576

`record[A097248(A077438(n+1))]`
-/

namespace A002556.P167700151944723576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A077438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002556.P167700151944723576

/-! ## A002556.P3357240617967871521

`record[-A346234(A329138(n+1))]`
-/

namespace A002556.P3357240617967871521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A346234 (A329138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002556.P3357240617967871521

/-! ## A002556.P2261178635746029818

`record[A097248(A000028(n+1)²)]`
-/

namespace A002556.P2261178635746029818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A000028 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002556.P2261178635746029818

/-! ## A002556.P2403385800190997614

`record[A097248(A030059(n+1)²)]`
-/

namespace A002556.P2403385800190997614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A030059 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002556.P2403385800190997614

/-! ## A002556.P3971266041204046419

`∩[A056912(n+1), A382960(n+1)]`
-/

namespace A002556.P3971266041204046419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002556.P3971266041204046419

/-!
# A002557: Odd squarefree numbers with an even number of prime factors that have no prime factors greater than 31.

The programs for A002557, there is no canonical definition to state claims against.
-/

/-! ## A002557.P15385515936707741381

`A056913(lt[A263136(n+4), n])`
-/

namespace A002557.P15385515936707741381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263136 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A002557.P15385515936707741381

/-! ## A002557.P10641607766906191064

`lt[A258068(n+1), A319340(n+1)]+1`
-/

namespace A002557.P10641607766906191064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A002557.P10641607766906191064

/-! ## A002557.P17620321979723022661

`A056913(lt[A106436(n), A003961(n+1)])`
-/

namespace A002557.P17620321979723022661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002557.P17620321979723022661

/-! ## A002557.P5216052387891020818

`A056913(lt[A106436(n), A336853(n+1)+1+n])`
-/

namespace A002557.P5216052387891020818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002557.P5216052387891020818

/-! ## A002557.P1813513299181517273

`A056913(lt[A106436(n), A252748(n+1)+2*(n+1)])`
-/

namespace A002557.P1813513299181517273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002557.P1813513299181517273

/-!
# A002559: Markoff (or Markov) numbers: union of positive integers x, y, z satisfying x^2 + y^2 + z^2 = 3*x*y*z.

The programs for A002559, there is no canonical definition to state claims against.
-/

/-! ## A002559.P9376508936824996939

`ceil(A324250(n+1)/3)`
-/

namespace A002559.P9376508936824996939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324250 (n + 1) : ℚ) / 3⌉

end

end A002559.P9376508936824996939

/-! ## A002559.P4065536938229017404

`or(2, A324250(-xor(n, -1)))/3`
-/

namespace A002559.P4065536938229017404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (A324250 (-Int.xor (n : ℤ) (-1)).toNat) : ℚ) / 3

end

end A002559.P4065536938229017404

/-! ## A002559.P10009858698268680652

`abs((A324250(n+1)+2)/A174971(n))`
-/

namespace A002559.P10009858698268680652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A324250 (n + 1) + 2 : ℚ) / (A174971 n : ℚ)|

end

end A002559.P10009858698268680652

/-! ## A002559.P13857253857268194432

`A086326(n+1)/3`
-/

namespace A002559.P13857253857268194432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086326 (n + 1) : ℚ) / 3

end

end A002559.P13857253857268194432

/-! ## A002559.P13159783264236551497

`(A324250(n+1)+2)/A174971(2*(n+1))`
-/

namespace A002559.P13159783264236551497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324250 (n + 1) + 2 : ℚ) / (A174971 (2 * (n + 1)) : ℚ)

end

end A002559.P13159783264236551497

/-! ## A002559.P9505017903608543211

`∪[A256395(n+1), A386894(n+1)]`
-/

namespace A002559.P9505017903608543211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002559.P9505017903608543211

/-!
# A002560: Number of polygonal graphs.

The programs for A002560, there is no canonical definition to state claims against.
-/

/-! ## A002560.P13624044388031016105

`A004738(A055267(n)-A135245(n+1))`
-/

namespace A002560.P13624044388031016105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A055267 n - A135245 (n + 1)).toNat

end

end A002560.P13624044388031016105

/-! ## A002560.P1988624662038626907

`A075545(n+4)-A119788(A000051(n))`
-/

namespace A002560.P1988624662038626907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075545 (n + 4) - A119788 (A000051 n).toNat

end

end A002560.P1988624662038626907

/-! ## A002560.P6563329779925498596

`A075545(n+4)-A276781(A000244(n))`
-/

namespace A002560.P6563329779925498596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075545 (n + 4) - A276781 (A000244 n).toNat

end

end A002560.P6563329779925498596

/-! ## A002560.P11027956995365419799

`A075545(n+4)-A328578(A002533(n))`
-/

namespace A002560.P11027956995365419799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075545 (n + 4) - A328578 (A002533 n).toNat

end

end A002560.P11027956995365419799

/-! ## A002560.P9428945492418164830

`A075545(n+4)-A143258(A056391(n+1))`
-/

namespace A002560.P9428945492418164830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075545 (n + 4) - A143258 (A056391 (n + 1)).toNat

end

end A002560.P9428945492418164830

/-!
# A002561: a(n) = n^5 + 1.

The programs for A002561, there is no canonical definition to state claims against.
-/

/-! ## A002561.P5469252100273735797

`(n-1)^5+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002561.P5469252100273735797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 5 + 1

end

end A002561.P5469252100273735797

/-! ## A002561.P12688946378480173188

`lcm(n, 1-(1-n)^5)`
-/

namespace A002561.P12688946378480173188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (1 - (n : ℤ)) ^ 5)

end

end A002561.P12688946378480173188

/-! ## A002561.P9856249337680963040

`abs(xor(-1, (n-1)^5))`
-/

namespace A002561.P9856249337680963040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (((n : ℤ) - 1) ^ 5)|

end

end A002561.P9856249337680963040

/-! ## A002561.P3633637424831736640

`-xor(-1, (n-1)^5)`
-/

namespace A002561.P3633637424831736640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (((n : ℤ) - 1) ^ 5)

end

end A002561.P3633637424831736640

/-! ## A002561.P1718289199264416336

`xor((n-1)^5, xor(n, n-1))`
-/

namespace A002561.P1718289199264416336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ 5) (Int.xor (n : ℤ) ((n : ℤ) - 1))

end

end A002561.P1718289199264416336

/-! ## A002561.P15919278467175583794

`n*A060884(abs(1-n))`
-/

namespace A002561.P15919278467175583794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060884 |1 - (n : ℤ)|.toNat

end

end A002561.P15919278467175583794

/-! ## A002561.P9104324467260643231

`abs(1-(1-A080412(A080412(n)))^5)`
-/

namespace A002561.P9104324467260643231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (1 - A080412 (A080412 n).toNat) ^ 5|

end

end A002561.P9104324467260643231

/-! ## A002561.P4540402174474547631

`Δ[A028310(n)+A000539(A289207(n))]`
-/

namespace A002561.P4540402174474547631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A000539 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002561.P4540402174474547631

/-! ## A002561.P16926626928564609821

`abs((A000034(2*n)-n)^5-1)`
-/

namespace A002561.P16926626928564609821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000034 (2 * n) - (n : ℤ)) ^ 5 - 1|

end

end A002561.P16926626928564609821

/-! ## A002561.P3835570840746668525

`ceil((n-tanh(n))^5)`
-/

namespace A002561.P3835570840746668525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tanh (n : ℝ)) ^ 5⌉

end

end A002561.P3835570840746668525

/-!
# A002562: Number of ways of placing n nonattacking queens on n X n board (symmetric solutions count only once).

The programs for A002562, there is no canonical definition to state claims against.
-/

/-! ## A002562.P17603568801046800148

`A260318(n+1)+A260320(n+1)+A260319(n+1)`
-/

namespace A002562.P17603568801046800148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260318 (n + 1) + (A260320 (n + 1) + A260319 (n + 1))

end

end A002562.P17603568801046800148

/-!
# A002564: Number of different ways one can attack all squares on an n X n chessboard using the minimum number of queens.

The programs for A002564, there is no canonical definition to state claims against.
-/

/-! ## A002564.P18418705438504134384

`A179885(a(n-1))` with `a(0)=1, a(1)=4, a(2)=1, a(3)=12`
-/

namespace A002564.P18418705438504134384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 12] fun n a =>
  A179885 (a (n - 1)).toNat

end

end A002564.P18418705438504134384

/-!
# A002565: Number of non-isomorphic ways to attack all squares on an n X n chessboard using the smallest possible number of queens with each queen attacking at least one other.

The programs for A002565, there is no canonical definition to state claims against.
-/

/-! ## A002565.P6454525317012708924

`A341520(A341498(n+1)%(∏[n+3]/3))`
-/

namespace A002565.P6454525317012708924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341520 (Int.tmod (A341498 (n + 1)) (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3))).toNat

end

end A002565.P6454525317012708924

/-! ## A002565.P12265656539371536080

`A002117(A002992(3*n))-A341106(n)`
-/

namespace A002565.P12265656539371536080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A002992 (3 * n)).toNat - A341106 n

end

end A002565.P12265656539371536080

/-!
# A002566: Number of ways to attack all squares on an n X n chessboard using the smallest possible number of queens with each queen attacking at least one other.

The programs for A002566, there is no canonical definition to state claims against.
-/

/-! ## A002566.P14870430921490304451

`A000010(A058110(n+2))%A056553(n+1)`
-/

namespace A002566.P14870430921490304451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A058110 (n + 2)).toNat) (A056553 (n + 1))

end

end A002566.P14870430921490304451

/-!
# A002568: Number of different ways one can attack all squares on an n X n chessboard with the smallest number of non-attacking queens needed.

The programs for A002568, there is no canonical definition to state claims against.
-/

/-! ## A002568.P10836333901504468923

`A239934(a(n-1))` with `a(0)=1, a(1)=4, a(2)=1, a(3)=16, a(4)=16`
-/

namespace A002568.P10836333901504468923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 16, 16] fun n a =>
  A239934 (a (n - 1)).toNat

end

end A002568.P10836333901504468923

/-! ## A002568.P8148169610585243543

`A342767(A244876(n))`
-/

namespace A002568.P8148169610585243543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342767 (A244876 n).toNat

end

end A002568.P8148169610585243543

/-!
# A002569: Max_{k=0..n} { Number of partitions of n into exactly k parts }.

The programs for A002569, there is no canonical definition to state claims against.
-/

/-! ## A002569.P12214772426795339296

`A058398(A000124(n)-A046155(n))`
-/

namespace A002569.P12214772426795339296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A000124 n - A046155 n).toNat

end

end A002569.P12214772426795339296

/-! ## A002569.P6013081181521038008

`A072233(A046155(n)+∑[n])`
-/

namespace A002569.P6013081181521038008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A046155 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002569.P6013081181521038008

/-! ## A002569.P14941516831058806833

`floor(root(A036539(2*n+1), 6))`
-/

namespace A002569.P14941516831058806833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036539 (2 * n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A002569.P14941516831058806833

/-! ## A002569.P482636173865364869

`A000196(A008620(∑[A018141(n)]))`
-/

namespace A002569.P482636173865364869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A002569.P482636173865364869

/-! ## A002569.P2514017652835278003

`floor(root(A121268(2*n), 6))`
-/

namespace A002569.P2514017652835278003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121268 (2 * n) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A002569.P2514017652835278003

/-!
# A002570: From a definite integral.

The programs for A002570, the canonical program `A002570.P5795901342937694334` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002570 has offset 1).

The definition of A002570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002570.P5795901342937694334

`a(n-2)+A002571(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002570

/-- `a(n-2)+A002571(n)` -/
def P5795901342937694334.Spec : Prop :=
  ∀ n, P5795901342937694334.a n = A002570 (n + 1)

theorem P5795901342937694334.correct : P5795901342937694334.Spec := by
  intro n
  simp only [A002570, Nat.add_sub_cancel]

end A002570

/-! ## A002570.P14847585979179824020

`∑[ogf(1/(1-5x^2-5x^3+x^5))]`
-/

namespace A002570.P14847585979179824020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -5, -5, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002570.P14847585979179824020

namespace A002570

/-- `∑[ogf(1/(1-5x^2-5x^3+x^5))]` -/
def P14847585979179824020.Spec : Prop :=
  ∀ n, P14847585979179824020.a n = A002570 (n + 1)

end A002570

/-! ## A002570.P17148294686135617016

`∑[A237654(n)]`
-/

namespace A002570.P17148294686135617016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002570.P17148294686135617016

namespace A002570

/-- `∑[A237654(n)]` -/
def P17148294686135617016.Spec : Prop :=
  ∀ n, P17148294686135617016.a n = A002570 (n + 1)

end A002570

/-! ## A002570.P8511767879584656205

`∑[abs(∑[A077916(n)])]`
-/

namespace A002570.P8511767879584656205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002570.P8511767879584656205

namespace A002570

/-- `∑[abs(∑[A077916(n)])]` -/
def P8511767879584656205.Spec : Prop :=
  ∀ n, P8511767879584656205.a n = A002570 (n + 1)

end A002570

/-! ## A002570.P17849196109554846940

`A180665(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A002570.P17849196109554846940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180665 (n + 1) - a (n - 1)

end

end A002570.P17849196109554846940

namespace A002570

/-- `A180665(n+1)-a(n-1)` -/
def P17849196109554846940.Spec : Prop :=
  ∀ n, P17849196109554846940.a n = A002570 (n + 1)

end A002570

/-! ## A002570.P18333902085278555125

`∑[∑[A077916(n)]*A033999(n)]`
-/

namespace A002570.P18333902085278555125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002570.P18333902085278555125

namespace A002570

/-- `∑[∑[A077916(n)]*A033999(n)]` -/
def P18333902085278555125.Spec : Prop :=
  ∀ n, P18333902085278555125.a n = A002570 (n + 1)

end A002570

/-! ## A002570.P14011379438566136453

`∑[∑[A077916(n)]/A033999(n+2)]`
-/

namespace A002570.P14011379438566136453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002570.P14011379438566136453

namespace A002570

/-- `∑[∑[A077916(n)]/A033999(n+2)]` -/
def P14011379438566136453.Spec : Prop :=
  ∀ n, P14011379438566136453.a n = (A002570 (n + 1) : ℚ)

end A002570

/-! ## A002570.P4217545486713966721

`∑[(-1)^A000290(n)*∑[A077916(n)]]`
-/

namespace A002570.P4217545486713966721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000290 n : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002570.P4217545486713966721

namespace A002570

/-- `∑[(-1)^A000290(n)*∑[A077916(n)]]` -/
def P4217545486713966721.Spec : Prop :=
  ∀ n, P4217545486713966721.a n = (A002570 (n + 1) : ℚ)

end A002570

/-!
# A002571: From a definite integral.

The programs for A002571, the canonical program `A002571.P13220698975516620667` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002571 has offset 1).

The definition of A002571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002571.P13220698975516620667

`8*a(n-2)-8*a(n-4)+a(n-6)+2*(-1)^n` with `a(0)=1, a(1)=5, a(2)=10, a(3)=30, a(4)=74, a(5)=199`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002571

/-- `8*a(n-2)-8*a(n-4)+a(n-6)+2*(-1)^n` -/
def P13220698975516620667.Spec : Prop :=
  ∀ n, P13220698975516620667.a n = A002571 (n + 1)

theorem P13220698975516620667.correct : P13220698975516620667.Spec := by
  intro n
  simp only [A002571, Nat.add_sub_cancel]

end A002571

/-! ## A002571.P4957459142493092367

`Δ[ogf(1/(1-2x-3x^2+3x^3+2x^4-x^5))]`
-/

namespace A002571.P4957459142493092367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -3, 3, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002571.P4957459142493092367

namespace A002571

/-- `Δ[ogf(1/(1-2x-3x^2+3x^3+2x^4-x^5))]` -/
def P4957459142493092367.Spec : Prop :=
  ∀ n, P4957459142493092367.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P17335939818883316780

`ogf((1+4x+x^2-x^3)/(1-x-4x^2-x^3+x^4))`
-/

namespace A002571.P17335939818883316780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1, -1] [1, -1, -4, -1, 1] n

end

end A002571.P17335939818883316780

namespace A002571

/-- `ogf((1+4x+x^2-x^3)/(1-x-4x^2-x^3+x^4))` -/
def P17335939818883316780.Spec : Prop :=
  ∀ n, P17335939818883316780.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P3788670551441315493

`abs(A077916(n+1))`
-/

namespace A002571.P3788670551441315493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077916 (n + 1)|

end

end A002571.P3788670551441315493

namespace A002571

/-- `abs(A077916(n+1))` -/
def P3788670551441315493.Spec : Prop :=
  ∀ n, P3788670551441315493.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P10977712473855008476

`Δ[A180665(n+1)]`
-/

namespace A002571.P10977712473855008476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002571.P10977712473855008476

namespace A002571

/-- `Δ[A180665(n+1)]` -/
def P10977712473855008476.Spec : Prop :=
  ∀ n, P10977712473855008476.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P17280482685523482290

`∏[abs(ratio[A077916(n)])]`
-/

namespace A002571.P17280482685523482290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002571.P17280482685523482290

namespace A002571

/-- `∏[abs(ratio[A077916(n)])]` -/
def P17280482685523482290.Spec : Prop :=
  ∀ n, P17280482685523482290.a n = (A002571 (n + 1) : ℚ)

end A002571

/-! ## A002571.P11617026625255453088

`A115059(2*(n+2))`
-/

namespace A002571.P11617026625255453088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115059 (2 * (n + 2))

end

end A002571.P11617026625255453088

namespace A002571

/-- `A115059(2*(n+2))` -/
def P11617026625255453088.Spec : Prop :=
  ∀ n, P11617026625255453088.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P14608401414772836684

`A001654(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A002571.P14608401414772836684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001654 (n + 2) - a (n - 1)

end

end A002571.P14608401414772836684

namespace A002571

/-- `A001654(n+2)-a(n-1)` -/
def P14608401414772836684.Spec : Prop :=
  ∀ n, P14608401414772836684.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P14324870878352548441

`A006498(2*n+3)-a(n-1)` with `a(0)=1`
-/

namespace A002571.P14324870878352548441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006498 (2 * n + 3) - a (n - 1)

end

end A002571.P14324870878352548441

namespace A002571

/-- `A006498(2*n+3)-a(n-1)` -/
def P14324870878352548441.Spec : Prop :=
  ∀ n, P14324870878352548441.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P7702385427803838737

`a(n-2)+A000045(n+2)²` with `a(0)=1, a(1)=5`
-/

namespace A002571.P7702385427803838737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + A000045 (n + 2) ^ 2

end

end A002571.P7702385427803838737

namespace A002571

/-- `a(n-2)+A000045(n+2)²` -/
def P7702385427803838737.Spec : Prop :=
  ∀ n, P7702385427803838737.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P10646929162574208113

`1-(a(n-1)-∑[A000045(comp[n²²²])²])` with `a(0)=1`
-/

namespace A002571.P10646929162574208113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002571.P10646929162574208113

namespace A002571

/-- `1-(a(n-1)-∑[A000045(comp[n²²²])²])` -/
def P10646929162574208113.Spec : Prop :=
  ∀ n, P10646929162574208113.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P4173509376342183504

`A237654(n+1)+A237654(n)`
-/

namespace A002571.P4173509376342183504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237654 (n + 1) + A237654 n

end

end A002571.P4173509376342183504

namespace A002571

/-- `A237654(n+1)+A237654(n)` -/
def P4173509376342183504.Spec : Prop :=
  ∀ n, P4173509376342183504.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P15305597790607257520

`gcd(A000038(n), A077916(n+1))`
-/

namespace A002571.P15305597790607257520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077916 (n + 1))

end

end A002571.P15305597790607257520

namespace A002571

/-- `gcd(A000038(n), A077916(n+1))` -/
def P15305597790607257520.Spec : Prop :=
  ∀ n, (P15305597790607257520.a n : ℤ) = A002571 (n + 1)

end A002571

/-! ## A002571.P9006677981662610348

`A033999(n+1)*A077916(n+1)`
-/

namespace A002571.P9006677981662610348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A077916 (n + 1)

end

end A002571.P9006677981662610348

namespace A002571

/-- `A033999(n+1)*A077916(n+1)` -/
def P9006677981662610348.Spec : Prop :=
  ∀ n, P9006677981662610348.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P17303206197799799177

`A180665(n+2)-A180665(n+1)`
-/

namespace A002571.P17303206197799799177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180665 (n + 2) - A180665 (n + 1)

end

end A002571.P17303206197799799177

namespace A002571

/-- `A180665(n+2)-A180665(n+1)` -/
def P17303206197799799177.Spec : Prop :=
  ∀ n, P17303206197799799177.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P703167393717145285

`lcm(A055396(2*(n+1)), A077916(n+1))`
-/

namespace A002571.P703167393717145285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055396 (2 * (n + 1))) (A077916 (n + 1))

end

end A002571.P703167393717145285

namespace A002571

/-- `lcm(A055396(2*(n+1)), A077916(n+1))` -/
def P703167393717145285.Spec : Prop :=
  ∀ n, (P703167393717145285.a n : ℤ) = A002571 (n + 1)

end A002571

/-! ## A002571.P18393467795816549642

`A000045(n+2)*A000045(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A002571.P18393467795816549642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n + 2) * A000045 (n + 3) - a (n - 1)

end

end A002571.P18393467795816549642

namespace A002571

/-- `A000045(n+2)*A000045(n+3)-a(n-1)` -/
def P18393467795816549642.Spec : Prop :=
  ∀ n, P18393467795816549642.a n = A002571 (n + 1)

end A002571

/-! ## A002571.P14584369559620467990

`Δ[A064831(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A002571.P14584369559620467990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A002571.P14584369559620467990

namespace A002571

/-- `Δ[A064831(n+1)]-a(n-1)` -/
def P14584369559620467990.Spec : Prop :=
  ∀ n, P14584369559620467990.a n = A002571 (n + 1)

end A002571

/-!
# A002572: Number of partitions of 1 into n powers of 1/2; or (according to one definition of "binary") the number of binary rooted trees.

The programs for A002572, there is no canonical definition to state claims against.
-/

/-! ## A002572.P17524770291097685775

`A002573(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A002572.P17524770291097685775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002573 (n - 1) + a (n - 1)

end

end A002572.P17524770291097685775

/-! ## A002572.P9274793942225564401

`abs(Δ[A173404(abs(1-n)+1)])`
-/

namespace A002572.P9274793942225564401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A002572.P9274793942225564401

/-! ## A002572.P10359832074667394031

`A049286(C(n, 2)+1)`
-/

namespace A002572.P10359832074667394031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (Nat.choose n 2 + 1)

end

end A002572.P10359832074667394031

/-! ## A002572.P12730126438822649247

`A049286(∑[abs(1-n)])`
-/

namespace A002572.P12730126438822649247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002572.P12730126438822649247

/-! ## A002572.P8343979384340543582

`A047913(A028310(∑[n]))`
-/

namespace A002572.P8343979384340543582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A002572.P8343979384340543582

/-! ## A002572.P11536114127507249258

`A047913(A179865(n+1))`
-/

namespace A002572.P11536114127507249258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A179865 (n + 1)).toNat

end

end A002572.P11536114127507249258

/-! ## A002572.P17912392748896992441

`A047913(A000007(n)+∑[n])`
-/

namespace A002572.P17912392748896992441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A002572.P17912392748896992441

/-! ## A002572.P11467977642524414897

`A047913(A000217(A000007(n)+n))`
-/

namespace A002572.P11467977642524414897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A002572.P11467977642524414897

/-! ## A002572.P5902846722481838683

`A294775(∑[n+2]-1)`
-/

namespace A002572.P5902846722481838683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002572.P5902846722481838683

/-! ## A002572.P10782893722488198595

`or(A000007(n), A294775(A034856(n+1)))`
-/

namespace A002572.P10782893722488198595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294775 (A034856 (n + 1)).toNat)

end

end A002572.P10782893722488198595

/-! ## A002572.P5752388035141837851

`A033999(2*n)*A294775(A034856(n+1))`
-/

namespace A002572.P5752388035141837851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A294775 (A034856 (n + 1)).toNat

end

end A002572.P5752388035141837851

/-! ## A002572.P1799925919151959961

`A294775(A034856(n+1))%(2*A124718(n))`
-/

namespace A002572.P1799925919151959961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A034856 (n + 1)).toNat) (2 * A124718 n)

end

end A002572.P1799925919151959961

/-!
# A002573: Restricted partitions.

The programs for A002573, there is no canonical definition to state claims against.
-/

/-! ## A002573.P12119377863344993826

`Δ[A002572(n+2)]`
-/

namespace A002573.P12119377863344993826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002573.P12119377863344993826

/-! ## A002573.P8264835279636448679

`A002572(n+3)-A002572(n+2)`
-/

namespace A002573.P8264835279636448679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 3) - A002572 (n + 2)

end

end A002573.P8264835279636448679

/-! ## A002573.P8727660672055400386

`Δ[Δ[A173404(n+1)]]`
-/

namespace A002573.P8727660672055400386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002573.P8727660672055400386

/-! ## A002573.P12517830609577749238

`A049286(A145018(n+1)-2)*A057427(n)`
-/

namespace A002573.P12517830609577749238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A145018 (n + 1) - 2).toNat * A057427 n

end

end A002573.P12517830609577749238

/-! ## A002573.P16258235038446363509

`Δ[A049286(A000124(n))]`
-/

namespace A002573.P16258235038446363509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002573.P16258235038446363509

/-! ## A002573.P5094583577458470650

`Δ[A047913(∑[n+1])]`
-/

namespace A002573.P5094583577458470650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002573.P5094583577458470650

/-! ## A002573.P5208680515924452543

`Δ[A294775(2*n+3+∑[n+1])]`
-/

namespace A002573.P5208680515924452543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (2 * n + 3 + ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002573.P5208680515924452543

/-!
# A002574: Restricted partitions.

The programs for A002574, there is no canonical definition to state claims against.
-/

/-! ## A002574.P6630859682147098926

`A049286(∑[n]+3)%A292507(n)`
-/

namespace A002574.P6630859682147098926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049286 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A292507 n)

end

end A002574.P6630859682147098926

/-! ## A002574.P13607507405296976977

`A049286(A152950(n+1))%A005195(n)`
-/

namespace A002574.P13607507405296976977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049286 (A152950 (n + 1)).toNat) (A005195 n)

end

end A002574.P13607507405296976977

/-! ## A002574.P16822064934083162688

`A151800(n)%2*A049286(A152950(n+1))`
-/

namespace A002574.P16822064934083162688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 n) 2 * A049286 (A152950 (n + 1)).toNat

end

end A002574.P16822064934083162688

/-! ## A002574.P11056140504914889683

`A049286(A152950(n+1))-C(A284468(n+1)+1, n)`
-/

namespace A002574.P11056140504914889683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (A152950 (n + 1)).toNat - (Nat.choose (A284468 (n + 1) + 1).toNat n : ℤ)

end

end A002574.P11056140504914889683

/-! ## A002574.P10874215437102181248

`A049286(A000217(n)+3)%(A292507(n)*A308080(n))`
-/

namespace A002574.P10874215437102181248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049286 (A000217 n + 3).toNat) (A292507 n * A308080 n)

end

end A002574.P10874215437102181248

/-! ## A002574.P8015369212384191733

`A043545(n²)*A049286(A152950(n+1))`
-/

namespace A002574.P8015369212384191733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (n ^ 2) * A049286 (A152950 (n + 1)).toNat

end

end A002574.P8015369212384191733

/-!
# A002575: Coefficients of Bell's formula for making change.

The programs for A002575, there is no canonical definition to state claims against.
-/

/-! ## A002575.P3501410683853600646

`A002577(n+1)-A145515(A145515(n))`
-/

namespace A002575.P3501410683853600646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 (n + 1) - A145515 (A145515 n).toNat

end

end A002575.P3501410683853600646

/-!
# A002576: Coefficients of Bell's formula for making change.

The programs for A002576, there is no canonical definition to state claims against.
-/

/-! ## A002576.P2031172425296053402

`Δ[A125794(n)-∑[A002577(n)]]`
-/

namespace A002576.P2031172425296053402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125794 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002576.P2031172425296053402

/-! ## A002576.P1991449520459632206

`Δ[A125794(n)]-A002577(n+1)`
-/

namespace A002576.P1991449520459632206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002577 (n + 1)

end

end A002576.P1991449520459632206

/-! ## A002576.P3627152750481464485

`Δ[A002449(n+2)]-A002577(n+1)`
-/

namespace A002576.P3627152750481464485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002577 (n + 1)

end

end A002576.P3627152750481464485

/-! ## A002576.P9391990128703035988

`Δ[A002577(n+2)]-A002577(n+2)`
-/

namespace A002576.P9391990128703035988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002577 (n + 2)

end

end A002576.P9391990128703035988

/-!
# A002577: Number of partitions of 2^n into powers of 2.

The programs for A002577, there is no canonical definition to state claims against.
-/

/-! ## A002577.P1083082565841681294

`A018818(2^n)`
-/

namespace A002577.P1083082565841681294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (2 ^ n)

end

end A002577.P1083082565841681294

/-! ## A002577.P3258898689214041226

`∑[A002449(n)]`
-/

namespace A002577.P3258898689214041226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002577.P3258898689214041226

/-! ## A002577.P5579856722715230711

`record[ratio[A078121(n)]]`
-/

namespace A002577.P5579856722715230711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078121 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002577.P5579856722715230711

/-! ## A002577.P4744673192603192473

`A078121(∑[n+1]+1)`
-/

namespace A002577.P4744673192603192473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078121 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002577.P4744673192603192473

/-! ## A002577.P13016744449362052150

`record[root(A078121(n), A306209(n))]`
-/

namespace A002577.P13016744449362052150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A078121 n : ℝ) ^ (1 / (A306209 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002577.P13016744449362052150

/-!
# A002578: Number of integral points in a certain sequence of open quadrilaterals.

The programs for A002578, the canonical program `A002578.P16133609243590085095` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002578 has offset 1).

The definition of A002578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002578.P7844817824622049887

`n²-∑[comp[7*n-2]]`
-/

namespace A002578.P7844817824622049887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002578.P7844817824622049887

namespace A002578

/-- `n²-∑[comp[7*n-2]]` -/
def P7844817824622049887.Spec : Prop :=
  ∀ n, P7844817824622049887.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P16133609243590085095

`∑[floor(∑[floor(a(n-3))]/4)]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=5, a(4)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002578

/-- `∑[floor(∑[floor(a(n-3))]/4)]` -/
def P16133609243590085095.Spec : Prop :=
  ∀ n, P16133609243590085095.a n = A002578 (n + 1)

theorem P16133609243590085095.correct : P16133609243590085095.Spec := by
  intro n
  simp only [A002578, Nat.add_sub_cancel]

end A002578

/-! ## A002578.P1847519386035613029

`∑[floor(A075326(n)/6)]`
-/

namespace A002578.P1847519386035613029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075326 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P1847519386035613029

namespace A002578

/-- `∑[floor(A075326(n)/6)]` -/
def P1847519386035613029.Spec : Prop :=
  ∀ n, P1847519386035613029.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P13471340528573235266

`∑[∑[A019430(n)²%3]]`
-/

namespace A002578.P13471340528573235266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019430 n ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P13471340528573235266

namespace A002578

/-- `∑[∑[A019430(n)²%3]]` -/
def P13471340528573235266.Spec : Prop :=
  ∀ n, P13471340528573235266.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P11394936708483516873

`∑[∑[A283878(n+1)%2]]`
-/

namespace A002578.P11394936708483516873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283878 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P11394936708483516873

namespace A002578

/-- `∑[∑[A283878(n+1)%2]]` -/
def P11394936708483516873.Spec : Prop :=
  ∀ n, P11394936708483516873.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P8394152741376025845

`∑[(2*n)%∑[A093718(n)!]]`
-/

namespace A002578.P8394152741376025845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A093718 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P8394152741376025845

namespace A002578

/-- `∑[(2*n)%∑[A093718(n)!]]` -/
def P8394152741376025845.Spec : Prop :=
  ∀ n, (P8394152741376025845.a n : ℤ) = A002578 (n + 1)

end A002578

/-! ## A002578.P17595560628877860201

`∑[ceil((A008576(n)-(3*n+2))/2)+n]`
-/

namespace A002578.P17595560628877860201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008576 n - (3 * n + 2 : ℤ) : ℚ) / 2⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P17595560628877860201

namespace A002578

/-- `∑[ceil((A008576(n)-(3*n+2))/2)+n]` -/
def P17595560628877860201.Spec : Prop :=
  ∀ n, P17595560628877860201.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P5046340201464916314

`∑[A028310(n)-A008620(A065033(n))]`
-/

namespace A002578.P5046340201464916314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A008620 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P5046340201464916314

namespace A002578

/-- `∑[A028310(n)-A008620(A065033(n))]` -/
def P5046340201464916314.Spec : Prop :=
  ∀ n, P5046340201464916314.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P18059017361051674598

`∑[A004273(n)-n-A002266(A010761(n+1))]`
-/

namespace A002578.P18059017361051674598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - (n : ℤ) - A002266 (A010761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P18059017361051674598

namespace A002578

/-- `∑[A004273(n)-n-A002266(A010761(n+1))]` -/
def P18059017361051674598.Spec : Prop :=
  ∀ n, P18059017361051674598.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P16373356037210994852

`A059293(n+1)`
-/

namespace A002578.P16373356037210994852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059293 (n + 1)

end

end A002578.P16373356037210994852

namespace A002578

/-- `A059293(n+1)` -/
def P16373356037210994852.Spec : Prop :=
  ∀ n, P16373356037210994852.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P12722944208468594632

`Δ[∑[A002579(n+2)]-A001844(n+1)]`
-/

namespace A002578.P12722944208468594632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002579 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002578.P12722944208468594632

namespace A002578

/-- `Δ[∑[A002579(n+2)]-A001844(n+1)]` -/
def P12722944208468594632.Spec : Prop :=
  ∀ n, P12722944208468594632.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P11543777564088512971

`∑[A065033(2*n)-A008620(A065033(n))]`
-/

namespace A002578.P11543777564088512971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A008620 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P11543777564088512971

namespace A002578

/-- `∑[A065033(2*n)-A008620(A065033(n))]` -/
def P11543777564088512971.Spec : Prop :=
  ∀ n, P11543777564088512971.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P16782842408356690954

`∑[A002264(A267528(n)+n)]`
-/

namespace A002578.P16782842408356690954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A267528 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P16782842408356690954

namespace A002578

/-- `∑[A002264(A267528(n)+n)]` -/
def P16782842408356690954.Spec : Prop :=
  ∀ n, P16782842408356690954.a n = A002578 (n + 1)

end A002578

/-! ## A002578.P9266978936446987142

`∑[A002265(A004277(comp[7*(n+1)])+n)]`
-/

namespace A002578.P9266978936446987142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002578.P9266978936446987142

namespace A002578

/-- `∑[A002265(A004277(comp[7*(n+1)])+n)]` -/
def P9266978936446987142.Spec : Prop :=
  ∀ n, P9266978936446987142.a n = A002578 (n + 1)

end A002578

/-!
# A002579: Number of integral points in a certain sequence of closed quadrilaterals.

The programs for A002579, the canonical program `A002579.P189852850134753999` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002579 has offset 1).

The definition of A002579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002579.P8894471570395887983

`∑[∑[char[comp[6*n+1]]]]+n+2`
-/

namespace A002579.P8894471570395887983
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)

end

end A002579.P8894471570395887983

namespace A002579

/-- `∑[∑[char[comp[6*n+1]]]]+n+2` -/
def P8894471570395887983.Spec : Prop :=
  ∀ n, (P8894471570395887983.a n : ℤ) = A002579 (n + 1)

end A002579

/-! ## A002579.P189852850134753999

`∑[n+1-floor(a(n-3)/5)]` with `a(0)=3, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002579

/-- `∑[n+1-floor(a(n-3)/5)]` -/
def P189852850134753999.Spec : Prop :=
  ∀ n, P189852850134753999.a n = A002579 (n + 1)

theorem P189852850134753999.correct : P189852850134753999.Spec := by
  intro n
  simp only [A002579, Nat.add_sub_cancel]

end A002579

/-! ## A002579.P16011159888771293038

`ceil((∑[5*(A002265(2*n)+1)+1]+1)/3)`
-/

namespace A002579.P16011159888771293038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A002265 (2 * n) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 3⌉

end

end A002579.P16011159888771293038

namespace A002579

/-- `ceil((∑[5*(A002265(2*n)+1)+1]+1)/3)` -/
def P16011159888771293038.Spec : Prop :=
  ∀ n, P16011159888771293038.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P6051622878288017998

`A025776(A016861(n+1))`
-/

namespace A002579.P6051622878288017998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025776 (A016861 (n + 1)).toNat

end

end A002579.P6051622878288017998

namespace A002579

/-- `A025776(A016861(n+1))` -/
def P6051622878288017998.Spec : Prop :=
  ∀ n, P6051622878288017998.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P3024070580962462230

`A025776(A017077(n+1)-3*(n+1))`
-/

namespace A002579.P3024070580962462230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025776 (A017077 (n + 1) - (3 * (n + 1) : ℤ)).toNat

end

end A002579.P3024070580962462230

namespace A002579

/-- `A025776(A017077(n+1)-3*(n+1))` -/
def P3024070580962462230.Spec : Prop :=
  ∀ n, P3024070580962462230.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P14631595776865014573

`A000027(A008724(n)+A001399(2*n+3))`
-/

namespace A002579.P14631595776865014573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008724 n + A001399 (2 * n + 3)).toNat

end

end A002579.P14631595776865014573

namespace A002579

/-- `A000027(A008724(n)+A001399(2*n+3))` -/
def P14631595776865014573.Spec : Prop :=
  ∀ n, P14631595776865014573.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P16326803430440687277

`A025812(A017293(n+1))`
-/

namespace A002579.P16326803430440687277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (A017293 (n + 1)).toNat

end

end A002579.P16326803430440687277

namespace A002579

/-- `A025812(A017293(n+1))` -/
def P16326803430440687277.Spec : Prop :=
  ∀ n, P16326803430440687277.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P7845083049946152382

`A025812(A017353(n+1))`
-/

namespace A002579.P7845083049946152382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (A017353 (n + 1)).toNat

end

end A002579.P7845083049946152382

namespace A002579

/-- `A025812(A017353(n+1))` -/
def P7845083049946152382.Spec : Prop :=
  ∀ n, P7845083049946152382.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P13425397049921791689

`A385704(a(n-1))` with `a(0)=3, a(1)=5`
-/

namespace A002579.P13425397049921791689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  A385704 (a (n - 1)).toNat

end

end A002579.P13425397049921791689

namespace A002579

/-- `A385704(a(n-1))` -/
def P13425397049921791689.Spec : Prop :=
  ∀ n, P13425397049921791689.a n = A002579 (n + 1)

end A002579

/-! ## A002579.P5846201687500997221

`A002264(A249547(n+2)+2)`
-/

namespace A002579.P5846201687500997221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A249547 (n + 2) + 2).toNat

end

end A002579.P5846201687500997221

namespace A002579

/-- `A002264(A249547(n+2)+2)` -/
def P5846201687500997221.Spec : Prop :=
  ∀ n, P5846201687500997221.a n = A002579 (n + 1)

end A002579

/-!
# A002580: Decimal expansion of cube root of 2.

The programs for A002580, there is no canonical definition to state claims against.
-/

/-! ## A002580.P8157913786869330467

`A098366(∑[n])`
-/

namespace A002580.P8157913786869330467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002580.P8157913786869330467

/-! ## A002580.P2849589873208912948

`dr(A098366(A000217(n)))`
-/

namespace A002580.P2849589873208912948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098366 (A000217 n).toNat)

end

end A002580.P2849589873208912948

/-! ## A002580.P13996518156540114384

`dr(A098366(sqrt(A000537(n))))`
-/

namespace A002580.P13996518156540114384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A098366 (SequenceMachineLib.roundAway (Real.sqrt (A000537 n : ℝ))).toNat)

end

end A002580.P13996518156540114384

/-! ## A002580.P3599491733482385322

`A098366(A000217(n))%A001545(n)`
-/

namespace A002580.P3599491733482385322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098366 (A000217 n).toNat) (A001545 n)

end

end A002580.P3599491733482385322

/-! ## A002580.P10166201122908145404

`gcd(A000038(n), A098366(A000217(n)))`
-/

namespace A002580.P10166201122908145404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A098366 (A000217 n).toNat)

end

end A002580.P10166201122908145404

/-! ## A002580.P15876132934250818050

`lcm(A098366(A000217(n)), A106400(n))`
-/

namespace A002580.P15876132934250818050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098366 (A000217 n).toNat) (A106400 n)

end

end A002580.P15876132934250818050

/-! ## A002580.P10373483478333120209

`or(A000007(n), A098366(A000217(n)))`
-/

namespace A002580.P10373483478333120209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A098366 (A000217 n).toNat)

end

end A002580.P10373483478333120209

/-! ## A002580.P11154335502962118419

`val(A117863(n+2), 2)*A098366(A000217(n))`
-/

namespace A002580.P11154335502962118419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A117863 (n + 2)).toNat 2 : ℤ) * A098366 (A000217 n).toNat

end

end A002580.P11154335502962118419

/-! ## A002580.P6199408526207780606

`or(A010051(2*(n+1)), A098366(A000217(n)))`
-/

namespace A002580.P6199408526207780606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (2 * (n + 1))) (A098366 (A000217 n).toNat)

end

end A002580.P6199408526207780606

/-! ## A002580.P17067782751853374589

`A098366(A000217(n))+A098356(A057944(n))`
-/

namespace A002580.P17067782751853374589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098366 (A000217 n).toNat + A098356 (A057944 n).toNat

end

end A002580.P17067782751853374589

/-! ## A002580.P9868620109283815695

`A098366(A000124(n+1))/2`
-/

namespace A002580.P9868620109283815695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098366 (A000124 (n + 1)).toNat : ℚ) / 2

end

end A002580.P9868620109283815695

/-! ## A002580.P9449194606827442294

`A098366(A155212(n)+4)/9`
-/

namespace A002580.P9449194606827442294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098366 (A155212 n + 4).toNat : ℚ) / 9

end

end A002580.P9449194606827442294

/-!
# A002582: Largest prime factor of n! - 1.

The programs for A002582, there is no canonical definition to state claims against.
-/

/-! ## A002582.P6162502292167193792

`A006530(∏{p}[1-(n+2)!, #])`
-/

namespace A002582.P6162502292167193792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A002582.P6162502292167193792

/-! ## A002582.P15914350913137532558

`A006530(∏{p}[∏[n+2]-1, #])`
-/

namespace A002582.P15914350913137532558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A002582.P15914350913137532558

/-! ## A002582.P6753220921532323031

`A034699(∏{p}[A030494(2*n+1), #])`
-/

namespace A002582.P6753220921532323031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030494 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A002582.P6753220921532323031

/-! ## A002582.P12596415364158147976

`A006530(lcm(A054415(n+2), A056110(n+2)))`
-/

namespace A002582.P12596415364158147976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A054415 (n + 2)) (A056110 (n + 2)))

end

end A002582.P12596415364158147976

/-!
# A002583: Largest prime factor of n! + 1.

The programs for A002583, there is no canonical definition to state claims against.
-/

/-! ## A002583.P16677330673652774802

`A070314(n)+A002587(n)`
-/

namespace A002583.P16677330673652774802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070314 n + A002587 n

end

end A002583.P16677330673652774802

/-! ## A002583.P8207039558719331519

`A362779(∑[abs(1-n)])`
-/

namespace A002583.P8207039558719331519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362779 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002583.P8207039558719331519

/-! ## A002583.P11036965735920653361

`A006530(A038507(n)%A250081(3*n+1))`
-/

namespace A002583.P11036965735920653361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A038507 n) (A250081 (3 * n + 1))).toNat

end

end A002583.P11036965735920653361

/-! ## A002583.P14742481033854906742

`A006530(n!+1)`
-/

namespace A002583.P14742481033854906742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial n + 1)

end

end A002583.P14742481033854906742

/-! ## A002583.P3455162415767079874

`A088387(n!+1)`
-/

namespace A002583.P3455162415767079874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Nat.factorial n + 1)

end

end A002583.P3455162415767079874

/-!
# A002584: Largest prime factor of product of first n primes - 1, or 1 if no such prime exists.

The programs for A002584, there is no canonical definition to state claims against.
-/

/-! ## A002584.P16253937409419917520

`A006530(A057588(n+1))`
-/

namespace A002584.P16253937409419917520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057588 (n + 1)).toNat

end

end A002584.P16253937409419917520

/-! ## A002584.P3776203692921033120

`A006530(∑[A061720(n)])`
-/

namespace A002584.P3776203692921033120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002584.P3776203692921033120

/-!
# A002585: Largest prime factor of 1 + (product of first n primes).

The programs for A002585, there is no canonical definition to state claims against.
-/

/-! ## A002585.P16335040184898859705

`A006530(A006862(n+1))`
-/

namespace A002585.P16335040184898859705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006862 (n + 1)).toNat

end

end A002585.P16335040184898859705

/-! ## A002585.P7181039042365178959

`A395052(A073582(n+2))`
-/

namespace A002585.P7181039042365178959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395052 (A073582 (n + 2)).toNat

end

end A002585.P7181039042365178959

/-! ## A002585.P4053946978099710486

`A395052(A100484(n+2))`
-/

namespace A002585.P4053946978099710486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395052 (A100484 (n + 2)).toNat

end

end A002585.P4053946978099710486

/-! ## A002585.P8496978347590094837

`A395052(2*A000040(n+2))`
-/

namespace A002585.P8496978347590094837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395052 (2 * A000040 (n + 2)).toNat

end

end A002585.P8496978347590094837

/-! ## A002585.P16612246737643422068

`A395052(A196226(n+1))`
-/

namespace A002585.P16612246737643422068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395052 (A196226 (n + 1)).toNat

end

end A002585.P16612246737643422068

/-!
# A002586: Smallest prime factor of 2^n + 1.

The programs for A002586, there is no canonical definition to state claims against.
-/

/-! ## A002586.P2692096737798593192

`A060444(∑[A046799(n)])`
-/

namespace A002586.P2692096737798593192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002586.P2692096737798593192

/-! ## A002586.P2107801062824539478

`A260218(2*(n+1))`
-/

namespace A002586.P2107801062824539478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (2 * (n + 1))

end

end A002586.P2107801062824539478

/-! ## A002586.P18142869749715282566

`p?[A260218(n+2+n)]`
-/

namespace A002586.P18142869749715282566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002586.P18142869749715282566

/-! ## A002586.P1202309266825709226

`or(1, A260218(Δ[n²]+1))`
-/

namespace A002586.P1202309266825709226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A002586.P1202309266825709226

/-! ## A002586.P1244285168976469082

`A260218(n+2+n)%A016791(n)`
-/

namespace A002586.P1244285168976469082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260218 (n + 2 + n)) (A016791 n)

end

end A002586.P1244285168976469082

/-! ## A002586.P11910427278801987421

`A260218(n+2+n)/A033999(n)²`
-/

namespace A002586.P11910427278801987421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A002586.P11910427278801987421

/-! ## A002586.P228659067675780469

`A260218(A042948(n+1))+(n+1)%2`
-/

namespace A002586.P228659067675780469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A042948 (n + 1)).toNat + (((n + 1) % 2 : ℕ) : ℤ)

end

end A002586.P228659067675780469

/-! ## A002586.P13241111409083820553

`A260218(n+2+n)+A000007(n+1)`
-/

namespace A002586.P13241111409083820553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (n + 2 + n) + A000007 (n + 1)

end

end A002586.P13241111409083820553

/-! ## A002586.P13367626342141886173

`A260218(n+2+n)/A007318(C(2, n))`
-/

namespace A002586.P13367626342141886173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A002586.P13367626342141886173

/-! ## A002586.P736315243117135148

`A260218(n+2+n)/A000041(C(2, n+2))`
-/

namespace A002586.P736315243117135148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A002586.P736315243117135148

/-! ## A002586.P17183870862939704353

`A260218(n+2+n)/A007318(val(n+1, 7))`
-/

namespace A002586.P17183870862939704353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (A007318 (SequenceMachineLib.valuation (n + 1) 7) : ℚ)

end

end A002586.P17183870862939704353

/-! ## A002586.P16750999251826073678

`A260218(n+2+n)/A007318(gcd(n, n+1))`
-/

namespace A002586.P16750999251826073678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (A007318 (Nat.gcd n (n + 1)) : ℚ)

end

end A002586.P16750999251826073678

/-! ## A002586.P16222690753553279144

`A260218(n+2+n)/abs(A008683(n+1))!`
-/

namespace A002586.P16222690753553279144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (Nat.factorial |A008683 (n + 1)|.toNat : ℚ)

end

end A002586.P16222690753553279144

/-! ## A002586.P6348654893160296697

`A260218(n+2+n)/A000108(n²%(n+1))`
-/

namespace A002586.P6348654893160296697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260218 (n + 2 + n) : ℚ) / (A000108 (n ^ 2 % (n + 1)) : ℚ)

end

end A002586.P6348654893160296697

/-! ## A002586.P5911520795980148305

`A260218(n+2+n)+A000122(A000040(n+1))`
-/

namespace A002586.P5911520795980148305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (n + 2 + n) + A000122 (A000040 (n + 1)).toNat

end

end A002586.P5911520795980148305

/-!
# A002587: Largest prime factor of 2^n + 1.

The programs for A002587, the canonical program `A002587.P15528568919996854647` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002587 has offset 0).

The definition of A002587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002587.P15528568919996854647

`A006530(A000051(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A002587

/-- `A006530(A000051(n))` -/
def P15528568919996854647.Spec : Prop :=
  ∀ n, P15528568919996854647.a n = A002587 n

theorem P15528568919996854647.correct : P15528568919996854647.Spec := by
  intro n
  simp only [A002587]

end A002587

/-! ## A002587.P14687834145794729273

`A060444(∑[A046799(n)]-1)`
-/

namespace A002587.P14687834145794729273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060444 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A002587.P14687834145794729273

namespace A002587

/-- `A060444(∑[A046799(n)]-1)` -/
def P14687834145794729273.Spec : Prop :=
  ∀ n, P14687834145794729273.a n = A002587 n

end A002587

/-! ## A002587.P1534447165364063073

`A060444(∑[A046799(n)%(n+1)])`
-/

namespace A002587.P1534447165364063073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046799 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002587.P1534447165364063073

namespace A002587

/-- `A060444(∑[A046799(n)%(n+1)])` -/
def P1534447165364063073.Spec : Prop :=
  ∀ n, P1534447165364063073.a n = A002587 n

end A002587

/-! ## A002587.P11879018155397761757

`A001269(∑[A054992(n+1)]-A054992(n+1))`
-/

namespace A002587.P11879018155397761757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001269 (∑ j ∈ Finset.range (n + 1), f1 j - A054992 (n + 1)).toNat

end

end A002587.P11879018155397761757

namespace A002587

/-- `A001269(∑[A054992(n+1)]-A054992(n+1))` -/
def P11879018155397761757.Spec : Prop :=
  ∀ n, P11879018155397761757.a n = A002587 n

end A002587

/-! ## A002587.P17681889083659867058

`A240554(A027379(n)+1)`
-/

namespace A002587.P17681889083659867058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A027379 n + 1).toNat

end

end A002587.P17681889083659867058

namespace A002587

/-- `A240554(A027379(n)+1)` -/
def P17681889083659867058.Spec : Prop :=
  ∀ n, P17681889083659867058.a n = A002587 n

end A002587

/-! ## A002587.P12631316764793962589

`A240554(A034856(n+1)+A000007(n))`
-/

namespace A002587.P12631316764793962589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A034856 (n + 1) + A000007 n).toNat

end

end A002587.P12631316764793962589

namespace A002587

/-- `A240554(A034856(n+1)+A000007(n))` -/
def P12631316764793962589.Spec : Prop :=
  ∀ n, P12631316764793962589.a n = A002587 n

end A002587

/-! ## A002587.P18304321682553055290

`A240554(A000007(n)+A052905(n)-n)`
-/

namespace A002587.P18304321682553055290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000007 n + (A052905 n - (n : ℤ))).toNat

end

end A002587.P18304321682553055290

namespace A002587

/-- `A240554(A000007(n)+A052905(n)-n)` -/
def P18304321682553055290.Spec : Prop :=
  ∀ n, P18304321682553055290.a n = A002587 n

end A002587

/-! ## A002587.P9717503240724654748

`A240554(A000007(n)-(n-A052905(n)))`
-/

namespace A002587.P9717503240724654748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000007 n - ((n : ℤ) - A052905 n)).toNat

end

end A002587.P9717503240724654748

namespace A002587

/-- `A240554(A000007(n)-(n-A052905(n)))` -/
def P9717503240724654748.Spec : Prop :=
  ∀ n, P9717503240724654748.a n = A002587 n

end A002587

/-!
# A002588: a(n) = largest noncomposite factor of 2^(2n+1) - 1.

The programs for A002588, the canonical program `A002588.P8656157946220816494` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002588 has offset 0).

The definition of A002588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002588.P3454254425408502316

`A060443(eq[3, A060443(n+1)])`
-/

namespace A002588.P3454254425408502316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002588.P3454254425408502316

namespace A002588

/-- `A060443(eq[3, A060443(n+1)])` -/
def P3454254425408502316.Spec : Prop :=
  ∀ n, P3454254425408502316.a n = A002588 n

end A002588

/-! ## A002588.P8892204937051961274

`A060443(eq[3, A060443(n)]-1)`
-/

namespace A002588.P8892204937051961274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A002588.P8892204937051961274

namespace A002588

/-- `A060443(eq[3, A060443(n)]-1)` -/
def P8892204937051961274.Spec : Prop :=
  ∀ n, P8892204937051961274.a n = A002588 n

end A002588

/-! ## A002588.P8656157946220816494

`A005420(a(A000038(n))+2*n)` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A002588

/-- `A005420(a(A000038(n))+2*n)` -/
def P8656157946220816494.Spec : Prop :=
  ∀ n, P8656157946220816494.a n = A002588 n

theorem P8656157946220816494.correct : P8656157946220816494.Spec := by
  intro n
  simp only [A002588]

end A002588

/-! ## A002588.P6633101900565697476

`A005420(a(A000038(n))*comp[2*n])` with `a(0)=1`
-/

namespace A002588.P6633101900565697476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005420 (a (A000038 n).toNat * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A002588.P6633101900565697476

namespace A002588

/-- `A005420(a(A000038(n))*comp[2*n])` -/
def P6633101900565697476.Spec : Prop :=
  ∀ n, P6633101900565697476.a n = A002588 n

end A002588

/-! ## A002588.P16217922748144542144

`A005420(n-a(A054977(n)-1)+n+2)` with `a(0)=1`
-/

namespace A002588.P16217922748144542144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005420 ((n : ℤ) - a (A054977 n - 1).toNat + (n : ℤ) + 2).toNat

end

end A002588.P16217922748144542144

namespace A002588

/-- `A005420(n-a(A054977(n)-1)+n+2)` -/
def P16217922748144542144.Spec : Prop :=
  ∀ n, P16217922748144542144.a n = A002588 n

end A002588

/-!
# A002589: Largest primitive factor of 2^(2n+1) + 1.

The programs for A002589, there is no canonical definition to state claims against.
-/

/-! ## A002589.P393669827218311684

`A097406(4*n+2)`
-/

namespace A002589.P393669827218311684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097406 (4 * n + 2)

end

end A002589.P393669827218311684

/-! ## A002589.P6826520760504327822

`or(1, A097406(A016825(n)))`
-/

namespace A002589.P6826520760504327822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097406 (A016825 n).toNat)

end

end A002589.P6826520760504327822

/-! ## A002589.P7075610377719876031

`lcm(A020985(n), A097406(A016825(n)))`
-/

namespace A002589.P7075610377719876031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A097406 (A016825 n).toNat)

end

end A002589.P7075610377719876031

/-! ## A002589.P606522740945209113

`A097406(A016825(n))+A000007(n+1)`
-/

namespace A002589.P606522740945209113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097406 (A016825 n).toNat + A000007 (n + 1)

end

end A002589.P606522740945209113

/-! ## A002589.P5478205079197516355

`A002587(2*n+1)/A093178(A038577(n))`
-/

namespace A002589.P5478205079197516355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002587 (2 * n + 1) : ℚ) / (A093178 (A038577 n).toNat : ℚ)

end

end A002589.P5478205079197516355

/-!
# A002590: Largest prime factor of 16^n + 1.

The programs for A002590, the canonical program `A002590.P13248179710466117863` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002590 has offset 0).

The definition of A002590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002587, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002590.P13248179710466117863

`A002587(4*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A002590

/-- `A002587(4*n)` -/
def P13248179710466117863.Spec : Prop :=
  ∀ n, P13248179710466117863.a n = A002590 n

theorem P13248179710466117863.correct : P13248179710466117863.Spec := by
  intro n
  simp only [A002590]

end A002590

/-! ## A002590.P16480320170127335516

`A274903(2*n)`
-/

namespace A002590.P16480320170127335516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274903 (2 * n)

end

end A002590.P16480320170127335516

namespace A002590

/-- `A274903(2*n)` -/
def P16480320170127335516.Spec : Prop :=
  ∀ n, P16480320170127335516.a n = A002590 n

end A002590

/-! ## A002590.P13551975942009390786

`or(A000035(n), A274903(A005843(n)))`
-/

namespace A002590.P13551975942009390786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A274903 (A005843 n).toNat)

end

end A002590.P13551975942009390786

namespace A002590

/-- `or(A000035(n), A274903(A005843(n)))` -/
def P13551975942009390786.Spec : Prop :=
  ∀ n, P13551975942009390786.a n = A002590 n

end A002590

/-! ## A002590.P13952300505350641653

`or(A000038(n), A274903(A005843(n)))`
-/

namespace A002590.P13952300505350641653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A274903 (A005843 n).toNat)

end

end A002590.P13952300505350641653

namespace A002590

/-- `or(A000038(n), A274903(A005843(n)))` -/
def P13952300505350641653.Spec : Prop :=
  ∀ n, P13952300505350641653.a n = A002590 n

end A002590

/-! ## A002590.P16588581887257951798

`A274903(A005843(n))^A178334(n)^n`
-/

namespace A002590.P16588581887257951798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274903 (A005843 n).toNat : ℚ) ^ (A178334 n ^ n : ℤ)

end

end A002590.P16588581887257951798

namespace A002590

/-- `A274903(A005843(n))^A178334(n)^n` -/
def P16588581887257951798.Spec : Prop :=
  ∀ n, P16588581887257951798.a n = (A002590 n : ℚ)

end A002590

/-! ## A002590.P7482992820877665093

`A274903(A005843(n))+A025581(A000096(n))`
-/

namespace A002590.P7482992820877665093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274903 (A005843 n).toNat + A025581 (A000096 n).toNat

end

end A002590.P7482992820877665093

namespace A002590

/-- `A274903(A005843(n))+A025581(A000096(n))` -/
def P7482992820877665093.Spec : Prop :=
  ∀ n, P7482992820877665093.a n = A002590 n

end A002590

/-! ## A002590.P1824104313352342

`A274903(A005843(n))+A025469(A002262(n))`
-/

namespace A002590.P1824104313352342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274903 (A005843 n).toNat + A025469 (A002262 n).toNat

end

end A002590.P1824104313352342

namespace A002590

/-- `A274903(A005843(n))+A025469(A002262(n))` -/
def P1824104313352342.Spec : Prop :=
  ∀ n, P1824104313352342.a n = A002590 n

end A002590

/-! ## A002590.P15913297834817523422

`A274903(A005843(n))+A025469(A309049(n))`
-/

namespace A002590.P15913297834817523422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274903 (A005843 n).toNat + A025469 (A309049 n).toNat

end

end A002590.P15913297834817523422

namespace A002590

/-- `A274903(A005843(n))+A025469(A309049(n))` -/
def P15913297834817523422.Spec : Prop :=
  ∀ n, P15913297834817523422.a n = A002590 n

end A002590

/-! ## A002590.P11219833296812414571

`A274903(A005843(n))+A025469(A050320(n+1))`
-/

namespace A002590.P11219833296812414571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274903 (A005843 n).toNat + A025469 (A050320 (n + 1)).toNat

end

end A002590.P11219833296812414571

namespace A002590

/-- `A274903(A005843(n))+A025469(A050320(n+1))` -/
def P11219833296812414571.Spec : Prop :=
  ∀ n, P11219833296812414571.a n = A002590 n

end A002590

/-! ## A002590.P11202680854039201415

`A002587(A008574(n))-A000007(n)`
-/

namespace A002590.P11202680854039201415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A008574 n).toNat - A000007 n

end

end A002590.P11202680854039201415

namespace A002590

/-- `A002587(A008574(n))-A000007(n)` -/
def P11202680854039201415.Spec : Prop :=
  ∀ n, P11202680854039201415.a n = A002590 n

end A002590

/-!
# A002591: Largest prime factor of 3^(2n+1) - 1.

The programs for A002591, the canonical program `A002591.P3027538998871989333` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002591 has offset 0).

The definition of A002591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074477, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002591.P3027538998871989333

`A074477(2*n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A002591

/-- `A074477(2*n+1)` -/
def P3027538998871989333.Spec : Prop :=
  ∀ n, P3027538998871989333.a n = A002591 n

theorem P3027538998871989333.correct : P3027538998871989333.Spec := by
  intro n
  simp only [A002591]

end A002591

/-! ## A002591.P4340278744562001585

`or(n%2, A074477(comp[2*n]))`
-/

namespace A002591.P4340278744562001585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A074477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A002591.P4340278744562001585

namespace A002591

/-- `or(n%2, A074477(comp[2*n]))` -/
def P4340278744562001585.Spec : Prop :=
  ∀ n, P4340278744562001585.a n = A002591 n

end A002591

/-! ## A002591.P2505487579938075669

`or(A000035(n), A074477(comp[2*n]))`
-/

namespace A002591.P2505487579938075669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A074477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A002591.P2505487579938075669

namespace A002591

/-- `or(A000035(n), A074477(comp[2*n]))` -/
def P2505487579938075669.Spec : Prop :=
  ∀ n, P2505487579938075669.a n = A002591 n

end A002591

/-! ## A002591.P10965868220688311895

`A074477(n+1+n)+val(A027642(n), 4)`
-/

namespace A002591.P10965868220688311895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074477 (n + 1 + n) + (SequenceMachineLib.valuation (A027642 n).toNat 4 : ℤ)

end

end A002591.P10965868220688311895

namespace A002591

/-- `A074477(n+1+n)+val(A027642(n), 4)` -/
def P10965868220688311895.Spec : Prop :=
  ∀ n, P10965868220688311895.a n = A002591 n

end A002591

/-! ## A002591.P9864556583300183956

`A074477(n+1+n)/A001221(Δ[A007504(n)])`
-/

namespace A002591.P9864556583300183956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074477 (n + 1 + n) : ℚ) / (A001221 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A002591.P9864556583300183956

namespace A002591

/-- `A074477(n+1+n)/A001221(Δ[A007504(n)])` -/
def P9864556583300183956.Spec : Prop :=
  ∀ n, P9864556583300183956.a n = (A002591 n : ℚ)

end A002591

/-!
# A002592: Largest prime factor of 9^n + 1.

The programs for A002592, the canonical program `A002592.P13531105049726928344` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002592 has offset 0).

The definition of A002592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074476, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002592.P13531105049726928344

`A074476(2*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A002592

/-- `A074476(2*n)` -/
def P13531105049726928344.Spec : Prop :=
  ∀ n, P13531105049726928344.a n = A002592 n

theorem P13531105049726928344.correct : P13531105049726928344.Spec := by
  intro n
  simp only [A002592]

end A002592

/-! ## A002592.P16978650866679792942

`A006530(A062396(n))`
-/

namespace A002592.P16978650866679792942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062396 n).toNat

end

end A002592.P16978650866679792942

namespace A002592

/-- `A006530(A062396(n))` -/
def P16978650866679792942.Spec : Prop :=
  ∀ n, P16978650866679792942.a n = A002592 n

end A002592

/-! ## A002592.P7827875696146394135

`A240554((n+6)²-A027379(n))`
-/

namespace A002592.P7827875696146394135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (((n + 6) ^ 2 : ℤ) - A027379 n).toNat

end

end A002592.P7827875696146394135

namespace A002592

/-- `A240554((n+6)²-A027379(n))` -/
def P7827875696146394135.Spec : Prop :=
  ∀ n, P7827875696146394135.a n = A002592 n

end A002592

/-! ## A002592.P8372070470740263478

`A240554(A000217(n+9)-9)+A167700(A062383(n))`
-/

namespace A002592.P8372070470740263478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A000217 (n + 9) - 9).toNat + A167700 (A062383 n).toNat

end

end A002592.P8372070470740263478

namespace A002592

/-- `A240554(A000217(n+9)-9)+A167700(A062383(n))` -/
def P8372070470740263478.Spec : Prop :=
  ∀ n, P8372070470740263478.a n = A002592 n

end A002592

/-! ## A002592.P4622648482831742103

`A019426(A008574(n))*A240554(A000217(n+9)-9)`
-/

namespace A002592.P4622648482831742103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A008574 n).toNat * A240554 (A000217 (n + 9) - 9).toNat

end

end A002592.P4622648482831742103

namespace A002592

/-- `A019426(A008574(n))*A240554(A000217(n+9)-9)` -/
def P4622648482831742103.Spec : Prop :=
  ∀ n, P4622648482831742103.a n = A002592 n

end A002592

/-! ## A002592.P1709896608611253131

`A000139(A178334(n))*A240554(A000217(n+9)-9)`
-/

namespace A002592.P1709896608611253131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (A178334 n).toNat * A240554 (A000217 (n + 9) - 9).toNat

end

end A002592.P1709896608611253131

namespace A002592

/-- `A000139(A178334(n))*A240554(A000217(n+9)-9)` -/
def P1709896608611253131.Spec : Prop :=
  ∀ n, P1709896608611253131.a n = A002592 n

end A002592

/-!
# A002593: a(n) = n^2*(2*n^2 - 1); also Sum_{k=0..n-1} (2k+1)^3.

The programs for A002593, the canonical program `A002593.P4819444549959463403` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002593 has offset 0).

The definition of A002593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(2*n²-1)` (program `A002593.P4819444549959463403`, by `A002593.P4819444549959463403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002593.P4819444549959463403

`n²*(2*n²-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002593

/-- `n²*(2*n²-1)` -/
def P4819444549959463403.Spec : Prop :=
  ∀ n, P4819444549959463403.a n = A002593 n

theorem P4819444549959463403.correct : P4819444549959463403.Spec := by
  intro n
  simp only [A002593]

end A002593

/-! ## A002593.P6050707609054489559

`A000384(A000290(n))`
-/

namespace A002593.P6050707609054489559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000290 n).toNat

end

end A002593.P6050707609054489559

namespace A002593

/-- `A000384(A000290(n))` -/
def P6050707609054489559.Spec : Prop :=
  ∀ n, P6050707609054489559.a n = A002593 n

end A002593

/-! ## A002593.P17281885096513743528

`C(2*n², 2)`
-/

namespace A002593.P17281885096513743528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) 2

end

end A002593.P17281885096513743528

namespace A002593

/-- `C(2*n², 2)` -/
def P17281885096513743528.Spec : Prop :=
  ∀ n, (P17281885096513743528.a n : ℤ) = A002593 n

theorem P17281885096513743528.correct : P17281885096513743528.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P17281885096513743528.a, A002593.P4819444549959463403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P7699767201834191374

`∑[comp[lcm(2, n+1)]^3]`
-/

namespace A002593.P7699767201834191374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002593.P7699767201834191374

namespace A002593

/-- `∑[comp[lcm(2, n+1)]^3]` -/
def P7699767201834191374.Spec : Prop :=
  ∀ n, (P7699767201834191374.a n : ℤ) = A002593 n

end A002593

/-! ## A002593.P1168055969714032706

`and(-3, C(n*2*n, 2))`
-/

namespace A002593.P1168055969714032706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (Nat.choose (n * (2 * n)) 2 : ℤ)

end

end A002593.P1168055969714032706

namespace A002593

/-- `and(-3, C(n*2*n, 2))` -/
def P1168055969714032706.Spec : Prop :=
  ∀ n, P1168055969714032706.a n = A002593 n

end A002593

/-! ## A002593.P1109275600393430210

`∑[comp[a(n-1)+2]^3]` with `a(0)=2`
-/

namespace A002593.P1109275600393430210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002593.P1109275600393430210

namespace A002593

/-- `∑[comp[a(n-1)+2]^3]` -/
def P1109275600393430210.Spec : Prop :=
  ∀ n, (P1109275600393430210.a n : ℤ) = A002593 n

end A002593

/-! ## A002593.P6481508873616737656

`gcd(C(2, n+3), C(n*2*n, 2))`
-/

namespace A002593.P6481508873616737656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 (n + 3)) (Nat.choose (n * (2 * n)) 2)

end

end A002593.P6481508873616737656

namespace A002593

/-- `gcd(C(2, n+3), C(n*2*n, 2))` -/
def P6481508873616737656.Spec : Prop :=
  ∀ n, (P6481508873616737656.a n : ℤ) = A002593 n

end A002593

/-! ## A002593.P14513748025601319877

`∑[A004273(n)^3]`
-/

namespace A002593.P14513748025601319877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002593.P14513748025601319877

namespace A002593

/-- `∑[A004273(n)^3]` -/
def P14513748025601319877.Spec : Prop :=
  ∀ n, P14513748025601319877.a n = A002593 n

end A002593

/-! ## A002593.P2677635275182213470

`A244730(n)-n²`
-/

namespace A002593.P2677635275182213470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 n - (n ^ 2 : ℤ)

end

end A002593.P2677635275182213470

namespace A002593

/-- `A244730(n)-n²` -/
def P2677635275182213470.Spec : Prop :=
  ∀ n, P2677635275182213470.a n = A002593 n

theorem P2677635275182213470.correct : P2677635275182213470.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P2677635275182213470.a, A002593.P4819444549959463403.a, A244730, A244730.P3543314597448209460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P3816316834339820199

`A056220(n)+A033595(n)`
-/

namespace A002593.P3816316834339820199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n + A033595 n

end

end A002593.P3816316834339820199

namespace A002593

/-- `A056220(n)+A033595(n)` -/
def P3816316834339820199.Spec : Prop :=
  ∀ n, P3816316834339820199.a n = A002593 n

theorem P3816316834339820199.correct : P3816316834339820199.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P3816316834339820199.a, A002593.P4819444549959463403.a, A033595, A033595.P9823408466719881306.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P15285181746272588464

`A178392(n)+A071253(n)`
-/

namespace A002593.P15285181746272588464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178392 n + A071253 n

end

end A002593.P15285181746272588464

namespace A002593

/-- `A178392(n)+A071253(n)` -/
def P15285181746272588464.Spec : Prop :=
  ∀ n, P15285181746272588464.a n = A002593 n

theorem P15285181746272588464.correct : P15285181746272588464.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P15285181746272588464.a, A002593.P4819444549959463403.a, A071253, A071253.P8759095852449772691.a, A178392, A178392.P3657060759824072604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P11704013165712525907

`A152016(n)+A100606(n)`
-/

namespace A002593.P11704013165712525907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152016 n + A100606 n

end

end A002593.P11704013165712525907

namespace A002593

/-- `A152016(n)+A100606(n)` -/
def P11704013165712525907.Spec : Prop :=
  ∀ n, P11704013165712525907.a n = A002593 n

theorem P11704013165712525907.correct : P11704013165712525907.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P11704013165712525907.a, A002593.P4819444549959463403.a, A100606, A100606.P3720319704037152132.a, A152016, A152016.P12945735254171868270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P12293835921118672837

`A187756(n)+A072819(n)`
-/

namespace A002593.P12293835921118672837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n + A072819 n

end

end A002593.P12293835921118672837

namespace A002593

/-- `A187756(n)+A072819(n)` -/
def P12293835921118672837.Spec : Prop :=
  ∀ n, P12293835921118672837.a n = A002593 n

end A002593

/-! ## A002593.P6218974266143567132

`A060886(n)-A024002(n)`
-/

namespace A002593.P6218974266143567132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n - A024002 n

end

end A002593.P6218974266143567132

namespace A002593

/-- `A060886(n)-A024002(n)` -/
def P6218974266143567132.Spec : Prop :=
  ∀ n, P6218974266143567132.a n = A002593 n

theorem P6218974266143567132.correct : P6218974266143567132.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P6218974266143567132.a, A002593.P4819444549959463403.a, A024002, A024002.P17733923598411083701.a, A060886, A060886.P3465628418501274115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P16241882388394709940

`A239607(n)-A033595(n)`
-/

namespace A002593.P16241882388394709940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239607 n - A033595 n

end

end A002593.P16241882388394709940

namespace A002593

/-- `A239607(n)-A033595(n)` -/
def P16241882388394709940.Spec : Prop :=
  ∀ n, P16241882388394709940.a n = A002593 n

theorem P16241882388394709940.correct : P16241882388394709940.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P16241882388394709940.a, A002593.P4819444549959463403.a, A033595, A033595.P9823408466719881306.a, A239607, A239607.P10195960424083872381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P2163485308497794224

`A219056(n)-A071253(n)`
-/

namespace A002593.P2163485308497794224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219056 n - A071253 n

end

end A002593.P2163485308497794224

namespace A002593

/-- `A219056(n)-A071253(n)` -/
def P2163485308497794224.Spec : Prop :=
  ∀ n, P2163485308497794224.a n = A002593 n

theorem P2163485308497794224.correct : P2163485308497794224.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P2163485308497794224.a, A002593.P4819444549959463403.a, A071253, A071253.P8759095852449772691.a, A219056, A219056.P7269935841778079002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P13614091945110359445

`A254371(n)-A395241(n)`
-/

namespace A002593.P13614091945110359445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254371 n - A395241 n

end

end A002593.P13614091945110359445

namespace A002593

/-- `A254371(n)-A395241(n)` -/
def P13614091945110359445.Spec : Prop :=
  ∀ n, P13614091945110359445.a n = A002593 n

theorem P13614091945110359445.correct : P13614091945110359445.Spec := by
  intro n
  simp only [A002593, Nat.add_sub_cancel, A002593.P13614091945110359445.a, A002593.P4819444549959463403.a, A254371, A254371.P14441672750536308122.a, A395241, A395241.P8661816280605708552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A002593

/-! ## A002593.P6716927115983501043

`A277792(n)/A056220(n)`
-/

namespace A002593.P6716927115983501043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277792 n : ℚ) / (A056220 n : ℚ)

end

end A002593.P6716927115983501043

namespace A002593

/-- `A277792(n)/A056220(n)` -/
def P6716927115983501043.Spec : Prop :=
  ∀ n, P6716927115983501043.a n = (A002593 n : ℚ)

end A002593

/-! ## A002593.P13364259328067594651

`lcm(A000290(n), A007588(n))`
-/

namespace A002593.P13364259328067594651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 n) (A007588 n)

end

end A002593.P13364259328067594651

namespace A002593

/-- `lcm(A000290(n), A007588(n))` -/
def P13364259328067594651.Spec : Prop :=
  ∀ n, (P13364259328067594651.a n : ℤ) = A002593 n

end A002593

/-! ## A002593.P1239658857550131567

`∑[record[gcd(n, ∑[n])^3]]`
-/

namespace A002593.P1239658857550131567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002593.P1239658857550131567

namespace A002593

/-- `∑[record[gcd(n, ∑[n])^3]]` -/
def P1239658857550131567.Spec : Prop :=
  ∀ n, (P1239658857550131567.a n : ℤ) = A002593 n

end A002593

/-!
# A002594: a(n) = n^2*(16*n^4-20*n^2+7)/3.

The programs for A002594, the canonical program `A002594.P5503965347279966373` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002594 has offset 1).

The definition of A002594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002594.P5503965347279966373

`(n+1)²/3*(16*(n+1)^4-20*(n+1)²+7)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002594

/-- `(n+1)²/3*(16*(n+1)^4-20*(n+1)²+7)` -/
def P5503965347279966373.Spec : Prop :=
  ∀ n, P5503965347279966373.a n = (A002594 (n + 1) : ℚ)

end A002594

/-! ## A002594.P13648371778868507875

`(n+1)²*(16*(n+1)^4-20*(n+1)²+7)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002594.P13648371778868507875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * ((16 * (n + 1) ^ 4 : ℤ) - (20 * (n + 1) ^ 2 : ℤ) + 7) : ℚ) / 3

end

end A002594.P13648371778868507875

namespace A002594

/-- `(n+1)²*(16*(n+1)^4-20*(n+1)²+7)/3` -/
def P13648371778868507875.Spec : Prop :=
  ∀ n, P13648371778868507875.a n = (A002594 (n + 1) : ℚ)

end A002594

/-! ## A002594.P5800180140327366814

`-∑[(-or(1, 2*n))^5]`
-/

namespace A002594.P5800180140327366814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.lor 1 (2 * n) : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002594.P5800180140327366814

namespace A002594

/-- `-∑[(-or(1, 2*n))^5]` -/
def P5800180140327366814.Spec : Prop :=
  ∀ n, P5800180140327366814.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P3892373603439572672

`-∑[(-xor(1, 2*n))^5]`
-/

namespace A002594.P3892373603439572672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.xor 1 (2 * n) : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002594.P3892373603439572672

namespace A002594

/-- `-∑[(-xor(1, 2*n))^5]` -/
def P3892373603439572672.Spec : Prop :=
  ∀ n, P3892373603439572672.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P14806407139841326575

`and(-3, ∑[(2*n+1)^5])`
-/

namespace A002594.P14806407139841326575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002594.P14806407139841326575

namespace A002594

/-- `and(-3, ∑[(2*n+1)^5])` -/
def P14806407139841326575.Spec : Prop :=
  ∀ n, P14806407139841326575.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P14746804777516323848

`a(n-1)+Δ[n²]^5` with `a(0)=1`
-/

namespace A002594.P14746804777516323848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 5

end

end A002594.P14746804777516323848

namespace A002594

/-- `a(n-1)+Δ[n²]^5` -/
def P14746804777516323848.Spec : Prop :=
  ∀ n, P14746804777516323848.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P16081100773635073753

`xor(2, ∑[(2*n+1)^5]+2)`
-/

namespace A002594.P16081100773635073753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002594.P16081100773635073753

namespace A002594

/-- `xor(2, ∑[(2*n+1)^5]+2)` -/
def P16081100773635073753.Spec : Prop :=
  ∀ n, (P16081100773635073753.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P13108020713668426133

`or(2, ∑[(2*n+1)^5])-2`
-/

namespace A002594.P13108020713668426133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2

end

end A002594.P13108020713668426133

namespace A002594

/-- `or(2, ∑[(2*n+1)^5])-2` -/
def P13108020713668426133.Spec : Prop :=
  ∀ n, P13108020713668426133.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P14969851198263514515

`lcm(n+1, ∑[(2*n+1)^5])`
-/

namespace A002594.P14969851198263514515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002594.P14969851198263514515

namespace A002594

/-- `lcm(n+1, ∑[(2*n+1)^5])` -/
def P14969851198263514515.Spec : Prop :=
  ∀ n, (P14969851198263514515.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P5709203410753255708

`(2*n+1)^5+a(n-1)` with `a(0)=1`
-/

namespace A002594.P5709203410753255708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) ^ 5 + a (n - 1)

end

end A002594.P5709203410753255708

namespace A002594

/-- `(2*n+1)^5+a(n-1)` -/
def P5709203410753255708.Spec : Prop :=
  ∀ n, (P5709203410753255708.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P6510560324955721777

`∑[record[xor(1, n)^5-1]]+n+1`
-/

namespace A002594.P6510560324955721777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 5 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A002594.P6510560324955721777

namespace A002594

/-- `∑[record[xor(1, n)^5-1]]+n+1` -/
def P6510560324955721777.Spec : Prop :=
  ∀ n, P6510560324955721777.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P15869724855040460523

`∑[(2*n+1)^5]+C(2, n+3)`
-/

namespace A002594.P15869724855040460523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A002594.P15869724855040460523

namespace A002594

/-- `∑[(2*n+1)^5]+C(2, n+3)` -/
def P15869724855040460523.Spec : Prop :=
  ∀ n, (P15869724855040460523.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P6443453045217968157

`∑[(2*n+1)^5]+and(1, 2*n)`
-/

namespace A002594.P6443453045217968157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A002594.P6443453045217968157

namespace A002594

/-- `∑[(2*n+1)^5]+and(1, 2*n)` -/
def P6443453045217968157.Spec : Prop :=
  ∀ n, (P6443453045217968157.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P17773475630163227049

`floor(a(n-1)+(n+1+n)^5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002594.P17773475630163227049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 + n) ^ 5

end

end A002594.P17773475630163227049

namespace A002594

/-- `floor(a(n-1)+(n+1+n)^5)` -/
def P17773475630163227049.Spec : Prop :=
  ∀ n, (P17773475630163227049.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P10505641380079329939

`∑[(2*n+1)^5]+val(2*n+1, 2)`
-/

namespace A002594.P10505641380079329939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (2 * n + 1) 2

end

end A002594.P10505641380079329939

namespace A002594

/-- `∑[(2*n+1)^5]+val(2*n+1, 2)` -/
def P10505641380079329939.Spec : Prop :=
  ∀ n, (P10505641380079329939.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P3657967657813331532

`floor(a(n-1))+(2*n+1)*(2*n+1)²²` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002594.P3657967657813331532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) * ((2 * n + 1) ^ 2) ^ 2

end

end A002594.P3657967657813331532

namespace A002594

/-- `floor(a(n-1))+(2*n+1)*(2*n+1)²²` -/
def P3657967657813331532.Spec : Prop :=
  ∀ n, (P3657967657813331532.a n : ℤ) = A002594 (n + 1)

end A002594

/-! ## A002594.P10727106875928434309

`∑[sqrt(A016762(n))]`
-/

namespace A002594.P10727106875928434309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016762 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002594.P10727106875928434309

namespace A002594

/-- `∑[sqrt(A016762(n))]` -/
def P10727106875928434309.Spec : Prop :=
  ∀ n, P10727106875928434309.a n = (A002594 (n + 1) : ℝ)

end A002594

/-! ## A002594.P3006764598967356930

`∑[2*A191902(2*n)]+1+n`
-/

namespace A002594.P3006764598967356930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191902 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A002594.P3006764598967356930

namespace A002594

/-- `∑[2*A191902(2*n)]+1+n` -/
def P3006764598967356930.Spec : Prop :=
  ∀ n, P3006764598967356930.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P7411083749348485582

`A231304(Δ[n²])`
-/

namespace A002594.P7411083749348485582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231304 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002594.P7411083749348485582

namespace A002594

/-- `A231304(Δ[n²])` -/
def P7411083749348485582.Spec : Prop :=
  ∀ n, P7411083749348485582.a n = A002594 (n + 1)

end A002594

/-! ## A002594.P13003887841350023078

`A140162(Δ[n²])-n`
-/

namespace A002594.P13003887841350023078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A002594.P13003887841350023078

namespace A002594

/-- `A140162(Δ[n²])-n` -/
def P13003887841350023078.Spec : Prop :=
  ∀ n, P13003887841350023078.a n = A002594 (n + 1)

end A002594

/-!
# A002595: Denominators of Taylor series expansion of arcsin(x). Also arises from arccos(x), arccsc(x), arcsec(x), arcsinh(x).

The programs for A002595, the canonical program `A002595.P16312294971091469907` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002595 has offset 0).

The definition of A002595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002595.P16312294971091469907

`A046161(n)*A056617(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002595

/-- `A046161(n)*A056617(n)` -/
def P16312294971091469907.Spec : Prop :=
  ∀ n, P16312294971091469907.a n = A002595 n

theorem P16312294971091469907.correct : P16312294971091469907.Spec := by
  intro n
  simp only [A002595]

end A002595

/-! ## A002595.P7647753184394255459

`lcm(A046161(n), A054388(n))`
-/

namespace A002595.P7647753184394255459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046161 n) (A054388 n)

end

end A002595.P7647753184394255459

namespace A002595

/-- `lcm(A046161(n), A054388(n))` -/
def P7647753184394255459.Spec : Prop :=
  ∀ n, (P7647753184394255459.a n : ℤ) = A002595 n

end A002595

/-! ## A002595.P12363199634298071046

`record[A004732(n)]*A056617(n)`
-/

namespace A002595.P12363199634298071046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A056617 n

end

end A002595.P12363199634298071046

namespace A002595

/-- `record[A004732(n)]*A056617(n)` -/
def P12363199634298071046.Spec : Prop :=
  ∀ n, P12363199634298071046.a n = A002595 n

end A002595

/-! ## A002595.P15379832499770916537

`A004732(2*n)*A056617(n)`
-/

namespace A002595.P15379832499770916537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 (2 * n) * A056617 n

end

end A002595.P15379832499770916537

namespace A002595

/-- `A004732(2*n)*A056617(n)` -/
def P15379832499770916537.Spec : Prop :=
  ∀ n, P15379832499770916537.a n = A002595 n

end A002595

/-! ## A002595.P16918671307704542317

`A056617(n)*A060818(2*n)`
-/

namespace A002595.P16918671307704542317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056617 n * A060818 (2 * n)

end

end A002595.P16918671307704542317

namespace A002595

/-- `A056617(n)*A060818(2*n)` -/
def P16918671307704542317.Spec : Prop :=
  ∀ n, P16918671307704542317.a n = A002595 n

end A002595

/-! ## A002595.P10508993092938524121

`A000079(A005187(n))*A056617(n)`
-/

namespace A002595.P10508993092938524121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005187 n).toNat * A056617 n

end

end A002595.P10508993092938524121

namespace A002595

/-- `A000079(A005187(n))*A056617(n)` -/
def P10508993092938524121.Spec : Prop :=
  ∀ n, P10508993092938524121.a n = A002595 n

end A002595

/-! ## A002595.P8655775842263289681

`A016116(A178207(n))*A056617(n)`
-/

namespace A002595.P8655775842263289681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A178207 n).toNat * A056617 n

end

end A002595.P8655775842263289681

namespace A002595

/-- `A016116(A178207(n))*A056617(n)` -/
def P8655775842263289681.Spec : Prop :=
  ∀ n, P8655775842263289681.a n = A002595 n

end A002595

/-! ## A002595.P6106141677156301791

`A002553(n)/A122803(n)²`
-/

namespace A002595.P6106141677156301791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002553 n : ℚ) / (A122803 n ^ 2 : ℚ)

end

end A002595.P6106141677156301791

namespace A002595

/-- `A002553(n)/A122803(n)²` -/
def P6106141677156301791.Spec : Prop :=
  ∀ n, P6106141677156301791.a n = (A002595 n : ℚ)

end A002595

/-! ## A002595.P8606921852990847429

`A002553(n)/A122803(2*n)`
-/

namespace A002595.P8606921852990847429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002553 n : ℚ) / (A122803 (2 * n) : ℚ)

end

end A002595.P8606921852990847429

namespace A002595

/-- `A002553(n)/A122803(2*n)` -/
def P8606921852990847429.Spec : Prop :=
  ∀ n, P8606921852990847429.a n = (A002595 n : ℚ)

end A002595

/-!
# A002596: Numerators in expansion of sqrt(1+x). Absolute values give numerators in expansion of sqrt(1-x).

The programs for A002596, the canonical program `A002596.P3328782122912407983` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002596 has offset 0).

The definition of A002596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002596.P13094780478107820654

`A104624(2*n)/A001316(n)`
-/

namespace A002596.P13094780478107820654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104624 (2 * n) : ℚ) / (A001316 n : ℚ)

end

end A002596.P13094780478107820654

namespace A002596

/-- `A104624(2*n)/A001316(n)` -/
def P13094780478107820654.Spec : Prop :=
  ∀ n, P13094780478107820654.a n = (A002596 n : ℚ)

end A002596

/-! ## A002596.P3328782122912407983

`A182122(2*n)/A001316(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002596

/-- `A182122(2*n)/A001316(n)` -/
def P3328782122912407983.Spec : Prop :=
  ∀ n, P3328782122912407983.a n = (A002596 n : ℚ)

end A002596

/-! ## A002596.P16226372685935334113

`A104624(2*n)/A000079(A000120(n))`
-/

namespace A002596.P16226372685935334113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104624 (2 * n) : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A002596.P16226372685935334113

namespace A002596

/-- `A104624(2*n)/A000079(A000120(n))` -/
def P16226372685935334113.Spec : Prop :=
  ∀ n, P16226372685935334113.a n = (A002596 n : ℚ)

end A002596

/-! ## A002596.P15500429695083341457

`A001790(n)/A009001(A004273(n))`
-/

namespace A002596.P15500429695083341457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A009001 (A004273 n).toNat : ℚ)

end

end A002596.P15500429695083341457

namespace A002596

/-- `A001790(n)/A009001(A004273(n))` -/
def P15500429695083341457.Spec : Prop :=
  ∀ n, P15500429695083341457.a n = (A002596 n : ℚ)

end A002596

/-! ## A002596.P16929074837865655222

`A381059(∑[n+1]+n)`
-/

namespace A002596.P16929074837865655222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381059 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002596.P16929074837865655222

namespace A002596

/-- `A381059(∑[n+1]+n)` -/
def P16929074837865655222.Spec : Prop :=
  ∀ n, P16929074837865655222.a n = A002596 n

end A002596

/-! ## A002596.P17656208883952546844

`A001790(n)/A010816(A000217(n)-n)`
-/

namespace A002596.P17656208883952546844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A010816 (A000217 n - (n : ℤ)).toNat : ℚ)

end

end A002596.P17656208883952546844

namespace A002596

/-- `A001790(n)/A010816(A000217(n)-n)` -/
def P17656208883952546844.Spec : Prop :=
  ∀ n, P17656208883952546844.a n = (A002596 n : ℚ)

end A002596

/-! ## A002596.P4972084081773378038

`A039757(A000217(n)-n)/A049606(n)`
-/

namespace A002596.P4972084081773378038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039757 (A000217 n - (n : ℤ)).toNat : ℚ) / (A049606 n : ℚ)

end

end A002596.P4972084081773378038

namespace A002596

/-- `A039757(A000217(n)-n)/A049606(n)` -/
def P4972084081773378038.Spec : Prop :=
  ∀ n, P4972084081773378038.a n = (A002596 n : ℚ)

end A002596

/-! ## A002596.P3792490103380388597

`A078297(C(2*n, 2))`
-/

namespace A002596.P3792490103380388597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078297 (Nat.choose (2 * n) 2)

end

end A002596.P3792490103380388597

namespace A002596

/-- `A078297(C(2*n, 2))` -/
def P3792490103380388597.Spec : Prop :=
  ∀ n, P3792490103380388597.a n = A002596 n

end A002596

/-! ## A002596.P3721152194594820346

`A078297(A000384(n))`
-/

namespace A002596.P3721152194594820346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078297 (A000384 n).toNat

end

end A002596.P3721152194594820346

namespace A002596

/-- `A078297(A000384(n))` -/
def P3721152194594820346.Spec : Prop :=
  ∀ n, P3721152194594820346.a n = A002596 n

end A002596

/-!
# A002597: Number of partitions into one kind of 1's, two kinds of 2's, and three kinds of 3's.

The programs for A002597, the canonical program `A002597.P13793033887542356936` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002597 has offset 0).

The definition of A002597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002597.P13793033887542356936

`A029256(2*n)+∑[∑[A029256(2*n+1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002597

/-- `A029256(2*n)+∑[∑[A029256(2*n+1)]]` -/
def P13793033887542356936.Spec : Prop :=
  ∀ n, P13793033887542356936.a n = A002597 n

theorem P13793033887542356936.correct : P13793033887542356936.Spec := by
  intro n
  simp only [A002597]

end A002597

/-! ## A002597.P7408242921491377540

`A117144(eq[1, A025854(n)])`
-/

namespace A002597.P7408242921491377540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002597.P7408242921491377540

namespace A002597

/-- `A117144(eq[1, A025854(n)])` -/
def P7408242921491377540.Spec : Prop :=
  ∀ n, P7408242921491377540.a n = A002597 n

end A002597

/-! ## A002597.P18373981824908307562

`xor(A327012(n+1), A327036(n²))`
-/

namespace A002597.P18373981824908307562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A327012 (n + 1)) (A327036 (n ^ 2))

end

end A002597.P18373981824908307562

namespace A002597

/-- `xor(A327012(n+1), A327036(n²))` -/
def P18373981824908307562.Spec : Prop :=
  ∀ n, P18373981824908307562.a n = A002597 n

end A002597

/-! ## A002597.P7173195033161105281

`or(A212216(2*n), A215530(10*n))`
-/

namespace A002597.P7173195033161105281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A212216 (2 * n)) (A215530 (10 * n))

end

end A002597.P7173195033161105281

namespace A002597

/-- `or(A212216(2*n), A215530(10*n))` -/
def P7173195033161105281.Spec : Prop :=
  ∀ n, P7173195033161105281.a n = A002597 n

end A002597

/-! ## A002597.P5010617211133225890

`A280962(n)-A001221(A001834(n))`
-/

namespace A002597.P5010617211133225890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280962 n - A001221 (A001834 n).toNat

end

end A002597.P5010617211133225890

namespace A002597

/-- `A280962(n)-A001221(A001834(n))` -/
def P5010617211133225890.Spec : Prop :=
  ∀ n, P5010617211133225890.a n = A002597 n

end A002597

