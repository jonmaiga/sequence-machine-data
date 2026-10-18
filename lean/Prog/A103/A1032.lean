import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A103200: A(1)=1, a(2)=2, a(3)=11, a(4)=19; a(n) = a(n-4) + sqrt(60*a(n-2)^2 + 60*a(n-2) + 1) for n >= 5.

The programs for A103200, the canonical program `A103200.P6274132736230566760` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103200 has offset 1).

The definition of A103200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103200.P6274132736230566760

`3+8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=19`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103200

/-- `3+8*a(n-2)-a(n-4)` -/
def P6274132736230566760.Spec : Prop :=
  ∀ n, P6274132736230566760.a n = A103200 (n + 1)

theorem P6274132736230566760.correct : P6274132736230566760.Spec := by
  intro n
  simp only [A103200, Nat.add_sub_cancel]

end A103200

/-! ## A103200.P15999329200154593727

`A105076(n+2)`
-/

namespace A103200.P15999329200154593727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 2)

end

end A103200.P15999329200154593727

namespace A103200

/-- `A105076(n+2)` -/
def P15999329200154593727.Spec : Prop :=
  ∀ n, P15999329200154593727.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P1012787291933248902

`∑[A177187(n+1)]`
-/

namespace A103200.P1012787291933248902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103200.P1012787291933248902

namespace A103200

/-- `∑[A177187(n+1)]` -/
def P1012787291933248902.Spec : Prop :=
  ∀ n, P1012787291933248902.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P13868129790795827659

`A105045(n+2)-1`
-/

namespace A103200.P13868129790795827659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (n + 2) - 1

end

end A103200.P13868129790795827659

namespace A103200

/-- `A105045(n+2)-1` -/
def P13868129790795827659.Spec : Prop :=
  ∀ n, P13868129790795827659.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P10403504579258044078

`∑[abs(Δ[A105045(n+1)])]`
-/

namespace A103200.P10403504579258044078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103200.P10403504579258044078

namespace A103200

/-- `∑[abs(Δ[A105045(n+1)])]` -/
def P10403504579258044078.Spec : Prop :=
  ∀ n, P10403504579258044078.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P17633161807288205843

`A077247(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A103200.P17633161807288205843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A077247 n + a (n - 2)

end

end A103200.P17633161807288205843

namespace A103200

/-- `A077247(n)+a(n-2)` -/
def P17633161807288205843.Spec : Prop :=
  ∀ n, P17633161807288205843.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P10861692881978215255

`record[A260196(n)+A105045(n)]`
-/

namespace A103200.P10861692881978215255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A105045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103200.P10861692881978215255

namespace A103200

/-- `record[A260196(n)+A105045(n)]` -/
def P10861692881978215255.Spec : Prop :=
  ∀ n, P10861692881978215255.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P5438077443540930299

`∑[∑[A077248(n)-A199336(n+1)]]`
-/

namespace A103200.P5438077443540930299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 n - A199336 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103200.P5438077443540930299

namespace A103200

/-- `∑[∑[A077248(n)-A199336(n+1)]]` -/
def P5438077443540930299.Spec : Prop :=
  ∀ n, P5438077443540930299.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P11149937529290393025

`floor(A199336(n+2)/2)`
-/

namespace A103200.P11149937529290393025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199336 (n + 2) : ℚ) / 2⌋

end

end A103200.P11149937529290393025

namespace A103200

/-- `floor(A199336(n+2)/2)` -/
def P11149937529290393025.Spec : Prop :=
  ∀ n, P11149937529290393025.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P9474849299380306515

`∑[Δ[A199336(n+1)]/2]`
-/

namespace A103200.P9474849299380306515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199336 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103200.P9474849299380306515

namespace A103200

/-- `∑[Δ[A199336(n+1)]/2]` -/
def P9474849299380306515.Spec : Prop :=
  ∀ n, P9474849299380306515.a n = (A103200 (n + 1) : ℚ)

end A103200

/-! ## A103200.P9530518972909981916

`Δ[A022960(n+1)+∑[A105045(n+1)]]`
-/

namespace A103200.P9530518972909981916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103200.P9530518972909981916

namespace A103200

/-- `Δ[A022960(n+1)+∑[A105045(n+1)]]` -/
def P9530518972909981916.Spec : Prop :=
  ∀ n, P9530518972909981916.a n = A103200 (n + 1)

end A103200

/-! ## A103200.P2901219254472991127

`(Δ[A322780(n+1)]-1)/2`
-/

namespace A103200.P2901219254472991127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A103200.P2901219254472991127

namespace A103200

/-- `(Δ[A322780(n+1)]-1)/2` -/
def P2901219254472991127.Spec : Prop :=
  ∀ n, P2901219254472991127.a n = (A103200 (n + 1) : ℚ)

end A103200

/-! ## A103200.P4200300831235562774

`∑[gcd(A001090(n+1), A076765(n))]`
-/

namespace A103200.P4200300831235562774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001090 (n + 1)) (A076765 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103200.P4200300831235562774

namespace A103200

/-- `∑[gcd(A001090(n+1), A076765(n))]` -/
def P4200300831235562774.Spec : Prop :=
  ∀ n, (P4200300831235562774.a n : ℤ) = A103200 (n + 1)

end A103200

/-! ## A103200.P2691579229983253118

`∑[gcd(A145607(n+1)+1, A145608(n))]`
-/

namespace A103200.P2691579229983253118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145607 (n + 1) + 1) (A145608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103200.P2691579229983253118

namespace A103200

/-- `∑[gcd(A145607(n+1)+1, A145608(n))]` -/
def P2691579229983253118.Spec : Prop :=
  ∀ n, (P2691579229983253118.a n : ℤ) = A103200 (n + 1)

end A103200

/-!
# A103201: a(1) = 11, a(2) = 19, a(3) = 89, a(4) = 151; for n >= 5, a(n) = sqrt(a(n-4)^2 + 60*a(n-2)^2 + 4*a(n-2)*sqrt(210 + 15*a(n-4)^2)).

The programs for A103201, the canonical program `A103201.P11590566735179264469` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103201 has offset 1).

The definition of A103201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103201.P11590566735179264469

`8*a(n-2)-a(n-4)` with `a(0)=11, a(1)=19, a(2)=89, a(3)=151`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103201

/-- `8*a(n-2)-a(n-4)` -/
def P11590566735179264469.Spec : Prop :=
  ∀ n, P11590566735179264469.a n = A103201 (n + 1)

theorem P11590566735179264469.correct : P11590566735179264469.Spec := by
  intro n
  simp only [A103201, Nat.add_sub_cancel]

end A103201

/-! ## A103201.P4944631914941476434

`A199338(n+2)`
-/

namespace A103201.P4944631914941476434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199338 (n + 2)

end

end A103201.P4944631914941476434

namespace A103201

/-- `A199338(n+2)` -/
def P4944631914941476434.Spec : Prop :=
  ∀ n, P4944631914941476434.a n = A103201 (n + 1)

end A103201

/-! ## A103201.P12801505637783167697

`A077247(n+2)+A077247(n)`
-/

namespace A103201.P12801505637783167697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077247 (n + 2) + A077247 n

end

end A103201.P12801505637783167697

namespace A103201

/-- `A077247(n+2)+A077247(n)` -/
def P12801505637783167697.Spec : Prop :=
  ∀ n, P12801505637783167697.a n = A103201 (n + 1)

end A103201

/-! ## A103201.P6028447055023484256

`A077248(n+2)-A077248(n)`
-/

namespace A103201.P6028447055023484256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (n + 2) - A077248 n

end

end A103201.P6028447055023484256

namespace A103201

/-- `A077248(n+2)-A077248(n)` -/
def P6028447055023484256.Spec : Prop :=
  ∀ n, P6028447055023484256.a n = A103201 (n + 1)

end A103201

/-! ## A103201.P12569785702878656194

`record[A199338(A263275(A005408(n)))]`
-/

namespace A103201.P12569785702878656194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199338 (A263275 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103201.P12569785702878656194

namespace A103201

/-- `record[A199338(A263275(A005408(n)))]` -/
def P12569785702878656194.Spec : Prop :=
  ∀ n, P12569785702878656194.a n = A103201 (n + 1)

end A103201

/-! ## A103201.P14125479682544153603

`Δ[Δ[A281584(n+1)]]`
-/

namespace A103201.P14125479682544153603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281584 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103201.P14125479682544153603

namespace A103201

/-- `Δ[Δ[A281584(n+1)]]` -/
def P14125479682544153603.Spec : Prop :=
  ∀ n, P14125479682544153603.a n = A103201 (n + 1)

end A103201

/-! ## A103201.P10444071945150351897

`Δ[A077248(n+1)+A077248(n)]`
-/

namespace A103201.P10444071945150351897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 (n + 1) + A077248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103201.P10444071945150351897

namespace A103201

/-- `Δ[A077248(n+1)+A077248(n)]` -/
def P10444071945150351897.Spec : Prop :=
  ∀ n, P10444071945150351897.a n = A103201 (n + 1)

end A103201

/-!
# A103202: A102370 sorted.

The programs for A103202, there is no canonical definition to state claims against.
-/

/-! ## A103202.P12822219235902419048

`floor(log2(7%(n+3)+n))+n`
-/

namespace A103202.P12822219235902419048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (7 % (n + 3) + n) + n

end

end A103202.P12822219235902419048

/-! ## A103202.P13002058534443825868

`comp[xor(n, 2*a(n-1)+1)]` with `a(0)=1`
-/

namespace A103202.P13002058534443825868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor n (2 * f1 (n - 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A103202.P13002058534443825868

/-! ## A103202.P17254790538088594120

`comp[xor(1, xor(n, 2*a(n-1)))]` with `a(0)=1`
-/

namespace A103202.P17254790538088594120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 1 (Nat.xor n (2 * f1 (n - 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A103202.P17254790538088594120

/-! ## A103202.P9588440044826776710

`comp[or(or(1, -n)²+n, 2^n)]`
-/

namespace A103202.P9588440044826776710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.lor 1 (-(n : ℤ)) ^ 2 + (n : ℤ)) (2 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103202.P9588440044826776710

/-! ## A103202.P15140827370302466369

`comp[xor(a(n-1)+n, a(n-1))]` with `a(0)=2`
-/

namespace A103202.P15140827370302466369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor (f1 (n - 1) + n) (f1 (n - 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A103202.P15140827370302466369

/-! ## A103202.P746613113263936214

`comp[or(∑[(1-n)²+n], ∑[2*n])]`
-/

namespace A103202.P746613113263936214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f2 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103202.P746613113263936214

/-! ## A103202.P17669133733086055895

`comp[xor(2^n-2, floor((n+1)/(or(n, n+2)-n)))]`
-/

namespace A103202.P17669133733086055895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 ^ n : ℤ) - 2) ⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103202.P17669133733086055895

/-! ## A103202.P8616132605869151596

`comp[A102371(n+1)]`
-/

namespace A103202.P8616132605869151596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103202.P8616132605869151596

/-! ## A103202.P8578163869038532823

`eq[1, char[A102370(n)]]`
-/

namespace A103202.P8578163869038532823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103202.P8578163869038532823

/-! ## A103202.P15453848166895457582

`comp[A105027(∑[2^n])]`
-/

namespace A103202.P15453848166895457582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105027 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A103202.P15453848166895457582

/-!
# A103203: Primes which have more primitive roots than any smaller prime.

The programs for A103203, there is no canonical definition to state claims against.
-/

/-! ## A103203.P10812347064745312436

`A231772(A121519(n+1))+A000007(n)`
-/

namespace A103203.P10812347064745312436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A121519 (n + 1)).toNat + A000007 n

end

end A103203.P10812347064745312436

/-! ## A103203.P2463003503939192147

`A000038(n)!*A231772(A121519(n+1))`
-/

namespace A103203.P2463003503939192147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A231772 (A121519 (n + 1)).toNat

end

end A103203.P2463003503939192147

/-! ## A103203.P10278420815709135360

`A231772(A121519(n+1))+A033322(n+2)`
-/

namespace A103203.P10278420815709135360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A121519 (n + 1)).toNat + A033322 (n + 2)

end

end A103203.P10278420815709135360

/-! ## A103203.P2421369975902871574

`A231772(2*n+1)+A231772(A121519(n+1))`
-/

namespace A103203.P2421369975902871574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (2 * n + 1) + A231772 (A121519 (n + 1)).toNat

end

end A103203.P2421369975902871574

/-! ## A103203.P10173533087077932129

`A231772(A121519(n+1))+A006093(n+1)%2`
-/

namespace A103203.P10173533087077932129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A121519 (n + 1)).toNat + Int.tmod (A006093 (n + 1)) 2

end

end A103203.P10173533087077932129

/-! ## A103203.P10078187508069691622

`A014963(A016825(n))*A231772(A121519(n+1))`
-/

namespace A103203.P10078187508069691622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A231772 (A121519 (n + 1)).toNat

end

end A103203.P10078187508069691622

/-! ## A103203.P12410737067431575460

`A267142(A001222(n+1))+A231772(A121519(n+1))`
-/

namespace A103203.P12410737067431575460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A001222 (n + 1)).toNat + A231772 (A121519 (n + 1)).toNat

end

end A103203.P12410737067431575460

/-! ## A103203.P7368068675519510597

`A231772(A121519(n+1))+2-A020639(A037225(n))`
-/

namespace A103203.P7368068675519510597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A121519 (n + 1)).toNat + (2 - A020639 (A037225 n).toNat)

end

end A103203.P7368068675519510597

/-! ## A103203.P14984025906442325448

`A231772(A121519(n+1)+A000038(n))+A000038(n)`
-/

namespace A103203.P14984025906442325448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (A121519 (n + 1) + A000038 n).toNat + A000038 n

end

end A103203.P14984025906442325448

/-! ## A103203.P17658809491729958584

`A006530(A231772(record[A046144(n+8)]))`
-/

namespace A103203.P17658809491729958584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A231772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A103203.P17658809491729958584

/-! ## A103203.P8925285583060263336

`A231772(record[A046144(n+8)])-3*A000038(n)`
-/

namespace A103203.P8925285583060263336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 3 * A000038 n

end

end A103203.P8925285583060263336

/-! ## A103203.P6298137771834530233

`A231772(record[A046144(n+8)])%A023545(n+1)`
-/

namespace A103203.P6298137771834530233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A023545 (n + 1))

end

end A103203.P6298137771834530233

/-! ## A103203.P659590504552240411

`A231772(2*n+1)+A231772(record[A046144(n+1)])`
-/

namespace A103203.P659590504552240411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231772 (2 * n + 1) + A231772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103203.P659590504552240411

/-!
# A103204: a(1) = 2, a(2) = 4; a(n) = 2*a(n-1) - 1.

The programs for A103204, the canonical program `A103204.P2797031779180736580` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103204 has offset 1).

The definition of A103204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A103204.P2797031779180736580`, by `A103204.P2797031779180736580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103204.P2797031779180736580

`2*a(n-1)-1` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103204

/-- `2*a(n-1)-1` -/
def P2797031779180736580.Spec : Prop :=
  ∀ n, P2797031779180736580.a n = A103204 (n + 1)

theorem P2797031779180736580.correct : P2797031779180736580.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel]

end A103204

/-! ## A103204.P2905528745111125285

`A003945(n)+1`
-/

namespace A103204.P2905528745111125285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + 1

end

end A103204.P2905528745111125285

namespace A103204

/-- `A003945(n)+1` -/
def P2905528745111125285.Spec : Prop :=
  ∀ n, P2905528745111125285.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P4822708938257566221

`ogf((2-2x-x^2)/(1-3x+2x^2))`
-/

namespace A103204.P4822708938257566221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1] [1, -3, 2] n

end

end A103204.P4822708938257566221

namespace A103204

/-- `ogf((2-2x-x^2)/(1-3x+2x^2))` -/
def P4822708938257566221.Spec : Prop :=
  ∀ n, P4822708938257566221.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P15373522122950417891

`xor(3, lcm(2, a(n-1)))` with `a(0)=2, a(1)=4`
-/

namespace A103204.P15373522122950417891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.xor 3 (Nat.lcm 2 (a (n - 1)))

end

end A103204.P15373522122950417891

namespace A103204

/-- `xor(3, lcm(2, a(n-1)))` -/
def P15373522122950417891.Spec : Prop :=
  ∀ n, (P15373522122950417891.a n : ℤ) = A103204 (n + 1)

end A103204

/-! ## A103204.P14311935299644574422

`floor(3*2^(n-1))+1`
-/

namespace A103204.P14311935299644574422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

end

end A103204.P14311935299644574422

namespace A103204

/-- `floor(3*2^(n-1))+1` -/
def P14311935299644574422.Spec : Prop :=
  ∀ n, P14311935299644574422.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P2288231621716112464

`∑[a(n-1)+a(n-1)]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A103204.P2288231621716112464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103204.P2288231621716112464

namespace A103204

/-- `∑[a(n-1)+a(n-1)]` -/
def P2288231621716112464.Spec : Prop :=
  ∀ n, (P2288231621716112464.a n : ℤ) = A103204 (n + 1)

end A103204

/-! ## A103204.P16721847840550349672

`abs(a(n-1)+a(n-1)-1)` with `a(0)=2, a(1)=4`
-/

namespace A103204.P16721847840550349672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  |a (n - 1) + (a (n - 1) - 1)|

end

end A103204.P16721847840550349672

namespace A103204

/-- `abs(a(n-1)+a(n-1)-1)` -/
def P16721847840550349672.Spec : Prop :=
  ∀ n, P16721847840550349672.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P17321276707832926496

`abs(1-a(n-1)-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A103204.P17321276707832926496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  |1 - a (n - 1) - a (n - 1)|

end

end A103204.P17321276707832926496

namespace A103204

/-- `abs(1-a(n-1)-a(n-1))` -/
def P17321276707832926496.Spec : Prop :=
  ∀ n, P17321276707832926496.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P733585607197875655

`floor(a(n-1)+a(n-1)-1)` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A103204.P733585607197875655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A103204.P733585607197875655

namespace A103204

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P733585607197875655.Spec : Prop :=
  ∀ n, P733585607197875655.a n = A103204 (n + 1)

theorem P733585607197875655.correct : P733585607197875655.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel, A103204.P733585607197875655.a, A103204.P2797031779180736580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103204

/-! ## A103204.P13417572914178467074

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A103204.P13417572914178467074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A103204.P13417572914178467074

namespace A103204

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P13417572914178467074.Spec : Prop :=
  ∀ n, P13417572914178467074.a n = A103204 (n + 1)

theorem P13417572914178467074.correct : P13417572914178467074.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel, A103204.P13417572914178467074.a, A103204.P2797031779180736580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103204

/-! ## A103204.P15458041862038756164

`ceil(a(n-1)+a(n-1)-1)` with `a(0)=2, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A103204.P15458041862038756164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A103204.P15458041862038756164

namespace A103204

/-- `ceil(a(n-1)+a(n-1)-1)` -/
def P15458041862038756164.Spec : Prop :=
  ∀ n, P15458041862038756164.a n = A103204 (n + 1)

theorem P15458041862038756164.correct : P15458041862038756164.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel, A103204.P15458041862038756164.a, A103204.P2797031779180736580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103204

/-! ## A103204.P16553776260580488049

`ceil(a(n-1)-(1-a(n-1)))` with `a(0)=2, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A103204.P16553776260580488049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A103204.P16553776260580488049

namespace A103204

/-- `ceil(a(n-1)-(1-a(n-1)))` -/
def P16553776260580488049.Spec : Prop :=
  ∀ n, P16553776260580488049.a n = A103204 (n + 1)

theorem P16553776260580488049.correct : P16553776260580488049.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel, A103204.P16553776260580488049.a, A103204.P2797031779180736580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103204

/-! ## A103204.P12082257964031062520

`round(a(n-1)+a(n-1)-1)` with `a(0)=2, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A103204.P12082257964031062520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A103204.P12082257964031062520

namespace A103204

/-- `round(a(n-1)+a(n-1)-1)` -/
def P12082257964031062520.Spec : Prop :=
  ∀ n, P12082257964031062520.a n = A103204 (n + 1)

theorem P12082257964031062520.correct : P12082257964031062520.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel, A103204.P12082257964031062520.a, A103204.P2797031779180736580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103204

/-! ## A103204.P6438174161723170239

`round(a(n-1)-(1-a(n-1)))` with `a(0)=2, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A103204.P6438174161723170239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A103204.P6438174161723170239

namespace A103204

/-- `round(a(n-1)-(1-a(n-1)))` -/
def P6438174161723170239.Spec : Prop :=
  ∀ n, P6438174161723170239.a n = A103204 (n + 1)

theorem P6438174161723170239.correct : P6438174161723170239.Spec := by
  intro n
  simp only [A103204, Nat.add_sub_cancel, A103204.P6438174161723170239.a, A103204.P2797031779180736580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A103204

/-! ## A103204.P12343985404121241527

`record[a(n-2)+a(n-2)-1]` with `a(0)=2, a(1)=4`
-/

namespace A103204.P12343985404121241527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103204.P12343985404121241527

namespace A103204

/-- `record[a(n-2)+a(n-2)-1]` -/
def P12343985404121241527.Spec : Prop :=
  ∀ n, P12343985404121241527.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P17349908536349721893

`record[a(n-2)-(1-a(n-2))]` with `a(0)=2, a(1)=4`
-/

namespace A103204.P17349908536349721893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103204.P17349908536349721893

namespace A103204

/-- `record[a(n-2)-(1-a(n-2))]` -/
def P17349908536349721893.Spec : Prop :=
  ∀ n, P17349908536349721893.a n = A103204 (n + 1)

end A103204

/-! ## A103204.P9614397909867511732

`(a(n-1)+a(n-1)-1)/a(n-1)%3` with `a(0)=2, a(1)=4`
-/

namespace A103204.P9614397909867511732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  (a (n - 1) + (a (n - 1) - 1)) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3 : ℚ)

end

end A103204.P9614397909867511732

namespace A103204

/-- `(a(n-1)+a(n-1)-1)/a(n-1)%3` -/
def P9614397909867511732.Spec : Prop :=
  ∀ n, P9614397909867511732.a n = (A103204 (n + 1) : ℚ)

end A103204

/-! ## A103204.P13267080202005005025

`(a(n-1)+a(n-1)-1)/gcd(3, a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A103204.P13267080202005005025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  (a (n - 1) + (a (n - 1) - 1)) / (Int.gcd 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A103204.P13267080202005005025

namespace A103204

/-- `(a(n-1)+a(n-1)-1)/gcd(3, a(n-1))` -/
def P13267080202005005025.Spec : Prop :=
  ∀ n, P13267080202005005025.a n = (A103204 (n + 1) : ℚ)

end A103204

/-! ## A103204.P11201087587497096986

`record[A074323(n)+1]`
-/

namespace A103204.P11201087587497096986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103204.P11201087587497096986

namespace A103204

/-- `record[A074323(n)+1]` -/
def P11201087587497096986.Spec : Prop :=
  ∀ n, P11201087587497096986.a n = A103204 (n + 1)

end A103204

/-!
# A103205: Write numbers in decimal under each other, then read diagonals in upward direction.

The programs for A103205, there is no canonical definition to state claims against.
-/

/-! ## A103205.P892397842537667798

`10*A102683(n)^A334725(n+1)+n`
-/

namespace A103205.P892397842537667798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * (A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ) + (n : ℚ)

end

end A103205.P892397842537667798

/-! ## A103205.P12989302054883018415

`A063596(A102683(n)^A334725(n+1))+n`
-/

namespace A103205.P12989302054883018415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063596 (SequenceMachineLib.roundAway ((A102683 n : ℚ) ^ (A334725 (n + 1) : ℤ))).toNat + (n : ℤ)

end

end A103205.P12989302054883018415

/-! ## A103205.P2851844263284505503

`n+1-A109041(A102683(n)^A201447(n+1))`
-/

namespace A103205.P2851844263284505503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109041 (SequenceMachineLib.roundAway ((A102683 n : ℚ) ^ (A201447 (n + 1) : ℤ))).toNat

end

end A103205.P2851844263284505503

/-! ## A103205.P2291012913017726445

`A102683(n)^A325233(n+1)+n+1-Δ[A007953(n)]`
-/

namespace A103205.P2291012913017726445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102683 n : ℚ) ^ (A325233 (n + 1) : ℤ) + (n + 1 : ℚ) - (f1 (n + 1) - f1 n : ℚ)

end

end A103205.P2291012913017726445

/-!
# A103206: Concatenations of pairs of primes that differ by 6.

The programs for A103206, there is no canonical definition to state claims against.
-/

/-! ## A103206.P1372454029637414336

`A032611(A023201(n+1))`
-/

namespace A103206.P1372454029637414336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A023201 (n + 1)).toNat

end

end A103206.P1372454029637414336

/-! ## A103206.P12256107844187718994

`A032611(p?[A015914(n+1)])`
-/

namespace A103206.P12256107844187718994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103206.P12256107844187718994

/-! ## A103206.P16866197217947555474

`A032611(p?[A086304(n+1)])`
-/

namespace A103206.P16866197217947555474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103206.P16866197217947555474

/-! ## A103206.P10169999395405659380

`A032611(p?[A118538(n+1)])`
-/

namespace A103206.P10169999395405659380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103206.P10169999395405659380

/-! ## A103206.P3567662897039726990

`A032611(p?[A262084(n+1)])`
-/

namespace A103206.P3567662897039726990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103206.P3567662897039726990

/-! ## A103206.P790787845665431613

`A032611(A087695(n+1)-3)`
-/

namespace A103206.P790787845665431613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A087695 (n + 1) - 3).toNat

end

end A103206.P790787845665431613

/-! ## A103206.P16874984721319955176

`A032611(A046117(n+1)-6)`
-/

namespace A103206.P16874984721319955176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (A046117 (n + 1) - 6).toNat

end

end A103206.P16874984721319955176

/-! ## A103206.P7609691802172067630

`A032613(p?[A086304(n+1)])-2`
-/

namespace A103206.P7609691802172067630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A103206.P7609691802172067630

/-! ## A103206.P7873850649769225135

`A032613(p?[A118538(n+1)])-2`
-/

namespace A103206.P7873850649769225135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A103206.P7873850649769225135

/-! ## A103206.P12194894564692612530

`A032611(A111192(n+1)/A046117(n+1))`
-/

namespace A103206.P12194894564692612530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (SequenceMachineLib.roundAway ((A111192 (n + 1) : ℚ) / (A046117 (n + 1) : ℚ))).toNat

end

end A103206.P12194894564692612530

/-!
# A103207: a(n)=(-1)^floor(n/2)/det(M_n) where M_n is the n X n matrix of terms 1/(i+j)! i and j ranging from 1 to n.

The programs for A103207, there is no canonical definition to state claims against.
-/

/-! ## A103207.P14261442628173602198

`∏[n!*C(2*n, n)]/2^n*∏[(2*n)!/n!]`
-/

namespace A103207.P14261442628173602198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (2 * n) n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 ^ n : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A103207.P14261442628173602198

/-! ## A103207.P187873575846983643

`∏[A123072(n)]`
-/

namespace A103207.P187873575846983643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A103207.P187873575846983643

/-! ## A103207.P18005697150826865269

`n!*A079478(n)`
-/

namespace A103207.P18005697150826865269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A079478 n

end

end A103207.P18005697150826865269

/-! ## A103207.P17938857025599857984

`∏[n!*A187535(n)]`
-/

namespace A103207.P17938857025599857984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A103207.P17938857025599857984

/-! ## A103207.P18185934636342331334

`A000142(2*n)*A107252(n)`
-/

namespace A103207.P18185934636342331334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) * A107252 n

end

end A103207.P18185934636342331334

/-!
# A103208: Numbers k such that 3 divides prime(1) + ... + prime(k).

The programs for A103208, the canonical program `A103208.P184489622645366464` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103208 has offset 1).

The definition of A103208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103208.P184489622645366464

`eq[9, dr(A007504(n)²)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A103208

/-- `eq[9, dr(A007504(n)²)]` -/
def P184489622645366464.Spec : Prop :=
  ∀ n, (P184489622645366464.a n : ℤ) = A103208 (n + 1)

theorem P184489622645366464.correct : P184489622645366464.Spec := by
  intro n
  simp only [A103208, Nat.add_sub_cancel]

end A103208

/-! ## A103208.P16170234933604636415

`eq[3, gcd(3, A007504(n+1))]+1`
-/

namespace A103208.P16170234933604636415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A007504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A103208.P16170234933604636415

namespace A103208

/-- `eq[3, gcd(3, A007504(n+1))]+1` -/
def P16170234933604636415.Spec : Prop :=
  ∀ n, (P16170234933604636415.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P7942156176537830100

`eq[1, A034960(n+1)%6]`
-/

namespace A103208.P7942156176537830100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034960 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103208.P7942156176537830100

namespace A103208

/-- `eq[1, A034960(n+1)%6]` -/
def P7942156176537830100.Spec : Prop :=
  ∀ n, (P7942156176537830100.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P8038633579712827368

`eq[1, A014284(n+2)%3]+1`
-/

namespace A103208.P8038633579712827368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014284 (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103208.P8038633579712827368

namespace A103208

/-- `eq[1, A014284(n+2)%3]+1` -/
def P8038633579712827368.Spec : Prop :=
  ∀ n, (P8038633579712827368.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P12509362111750363529

`lt[∑[A000040(n+1)]%3, 1]+1`
-/

namespace A103208.P12509362111750363529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A103208.P12509362111750363529

namespace A103208

/-- `lt[∑[A000040(n+1)]%3, 1]+1` -/
def P12509362111750363529.Spec : Prop :=
  ∀ n, (P12509362111750363529.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P440932066066932843

`eq[2, A087704(A112632(n+1)²+2)]+1`
-/

namespace A103208.P440932066066932843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087704 (A112632 (n + 1) ^ 2 + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103208.P440932066066932843

namespace A103208

/-- `eq[2, A087704(A112632(n+1)²+2)]+1` -/
def P440932066066932843.Spec : Prop :=
  ∀ n, (P440932066066932843.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P15140913752979676624

`lt[∑[2*record[A020639(n+2)]]%3, 1]+1`
-/

namespace A103208.P15140913752979676624
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A103208.P15140913752979676624

namespace A103208

/-- `lt[∑[2*record[A020639(n+2)]]%3, 1]+1` -/
def P15140913752979676624.Spec : Prop :=
  ∀ n, (P15140913752979676624.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P2027721782932819793

`eq[3, gcd(A007504(n), A270305(n+1))]`
-/

namespace A103208.P2027721782932819793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 n) (A270305 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103208.P2027721782932819793

namespace A103208

/-- `eq[3, gcd(A007504(n), A270305(n+1))]` -/
def P2027721782932819793.Spec : Prop :=
  ∀ n, (P2027721782932819793.a n : ℤ) = A103208 (n + 1)

end A103208

/-! ## A103208.P6587441762184330542

`eq[1, (∑[A249424(n+1)+1]+1)%3]`
-/

namespace A103208.P6587441762184330542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249424 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103208.P6587441762184330542

namespace A103208

/-- `eq[1, (∑[A249424(n+1)+1]+1)%3]` -/
def P6587441762184330542.Spec : Prop :=
  ∀ n, (P6587441762184330542.a n : ℤ) = A103208 (n + 1)

end A103208

/-!
# A103209: Square array T(n,d) read by antidiagonals: number of structurally-different guillotine partitions of a d-dimensional box in R^d by n hyperplanes.

The programs for A103209, there is no canonical definition to state claims against.
-/

/-! ## A103209.P2579494431887742869

`A107702(∑[2*n]%comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A103209.P2579494431887742869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A103209.P2579494431887742869

/-! ## A103209.P4201855797510603645

`A107702(A099375(n)+1+n)`
-/

namespace A103209.P4201855797510603645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A099375 n + 1 + (n : ℤ)).toNat

end

end A103209.P4201855797510603645

/-! ## A103209.P11532679296968240495

`A107702(A212012(n+1)+n)`
-/

namespace A103209.P11532679296968240495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A103209.P11532679296968240495

/-! ## A103209.P12179320446308952380

`A107702(A061579(comp[∑[n]])+1)`
-/

namespace A103209.P12179320446308952380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A103209.P12179320446308952380

/-! ## A103209.P259329376695566476

`A107702(A061579(comp[∑[n-1]]))`
-/

namespace A103209.P259329376695566476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A103209.P259329376695566476

/-! ## A103209.P13766936862034748051

`A107702(A114327(n)+comp[∑[n]])`
-/

namespace A103209.P13766936862034748051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A103209.P13766936862034748051

/-!
# A103210: a(n) = (1/n) * Sum_{i=0..n-1} C(n,i)*C(n,i+1)*2^i*3^(n-i), a(0)=1.

The programs for A103210, there is no canonical definition to state claims against.
-/

/-! ## A103210.P2705635601169139618

`A297704(∑[n])`
-/

namespace A103210.P2705635601169139618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103210.P2705635601169139618

/-! ## A103210.P11600313142752052936

`record[A297704(n)]`
-/

namespace A103210.P11600313142752052936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103210.P11600313142752052936

/-! ## A103210.P1085847131559661486

`lcm(2, A297704(A000217(n)))/2`
-/

namespace A103210.P1085847131559661486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A297704 (A000217 n).toNat) : ℚ) / 2

end

end A103210.P1085847131559661486

/-! ## A103210.P9979290213957668116

`A116412((n+1)*2*n)/(n+1)`
-/

namespace A103210.P9979290213957668116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116412 ((n + 1) * (2 * n)) : ℚ) / (n + 1 : ℚ)

end

end A103210.P9979290213957668116

/-! ## A103210.P9042917612122160547

`A107702(∑[n+3])`
-/

namespace A103210.P9042917612122160547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103210.P9042917612122160547

/-! ## A103210.P13116593287272300545

`A336574(∑[n+2]-1)`
-/

namespace A103210.P13116593287272300545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A103210.P13116593287272300545

/-!
# A103211: a(n) = (1/n) * Sum_{i=0..n-1} C(n,i)*C(n,i+1)*3^i*4^(n-i), a(0)=1.

The programs for A103211, there is no canonical definition to state claims against.
-/

/-! ## A103211.P18304748314412156438

`round(4*A131763(n)/3)`
-/

namespace A103211.P18304748314412156438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((A131763 n : ℚ) / 3))

end

end A103211.P18304748314412156438

/-! ## A103211.P11088212404916934242

`A107702(∑[n+3]+n+3)`
-/

namespace A103211.P11088212404916934242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A103211.P11088212404916934242

/-! ## A103211.P13150111271958511923

`A103209(∑[n+2]+5)`
-/

namespace A103211.P13150111271958511923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103209 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A103211.P13150111271958511923

/-!
# A103212: a(n) = (1/n) * Sum_{i=0..n-1} C(n,i)*C(n,i+1)*(n-1)^i*n^(n-i) for n>=1, a(0)=1.

The programs for A103212, there is no canonical definition to state claims against.
-/

/-! ## A103212.P5391921686380800374

`A107702(2*n²)`
-/

namespace A103212.P5391921686380800374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (2 * n ^ 2)

end

end A103212.P5391921686380800374

/-! ## A103212.P4581923306921417056

`A103209((n-1)*2*n+1)`
-/

namespace A103212.P4581923306921417056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103209 (((n : ℤ) - 1) * (2 * n : ℤ) + 1).toNat

end

end A103212.P4581923306921417056

/-!
# A103213: a(n) = n! * Sum_{k=1..n} binomial(n,k)/k.

The programs for A103213, there is no canonical definition to state claims against.
-/

/-! ## A103213.P14401168789340696787

`A279683(n+1)+A126674(n+1)`
-/

namespace A103213.P14401168789340696787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279683 (n + 1) + A126674 (n + 1)

end

end A103213.P14401168789340696787

/-! ## A103213.P17943605583447534693

`A371768(n+1)-A024167(n+1)`
-/

namespace A103213.P17943605583447534693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371768 (n + 1) - A024167 (n + 1)

end

end A103213.P17943605583447534693

/-! ## A103213.P700154544726388628

`A000254(n+1)+2*A279683(n+1)`
-/

namespace A103213.P700154544726388628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) + 2 * A279683 (n + 1)

end

end A103213.P700154544726388628

/-! ## A103213.P15699925711922928864

`2*A126674(n+1)-A000254(n+1)`
-/

namespace A103213.P15699925711922928864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126674 (n + 1) - A000254 (n + 1)

end

end A103213.P15699925711922928864

/-! ## A103213.P8457256085290171134

`A052861(n+2)/(n+2)`
-/

namespace A103213.P8457256085290171134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052861 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A103213.P8457256085290171134

/-!
# A103214: a(n) = 24*n + 1.

The programs for A103214, the canonical program `A103214.P17136705003217623136` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103214 has offset 0).

The definition of A103214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+1` (program `A103214.P17136705003217623136`, by `A103214.P17136705003217623136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103214.P17136705003217623136

`24*n+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103214

/-- `24*n+1` -/
def P17136705003217623136.Spec : Prop :=
  ∀ n, (P17136705003217623136.a n : ℤ) = A103214 n

theorem P17136705003217623136.correct : P17136705003217623136.Spec := by
  intro n
  simp only [A103214]

end A103214

/-!
# A103215: Numbers congruent to {1, 2, 5, 10, 13, 17} mod 24.

The programs for A103215, the canonical program `A103215.P17238080169839591513` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103215 has offset 1).

The definition of A103215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103215.P17238080169839591513

`a(n-6)+24` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=13, a(5)=17`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103215

/-- `a(n-6)+24` -/
def P17238080169839591513.Spec : Prop :=
  ∀ n, (P17238080169839591513.a n : ℤ) = A103215 (n + 1)

theorem P17238080169839591513.correct : P17238080169839591513.Spec := by
  intro n
  simp only [A103215, Nat.add_sub_cancel]

end A103215

/-! ## A103215.P3616685937446580964

`∪[2*A087445(n+1), A087445(n+1)]`
-/

namespace A103215.P3616685937446580964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P3616685937446580964

namespace A103215

/-- `∪[2*A087445(n+1), A087445(n+1)]` -/
def P3616685937446580964.Spec : Prop :=
  ∀ n, (P3616685937446580964.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P11089586654817113976

`∩[A047619(n+1), A259749(n+1)]`
-/

namespace A103215.P11089586654817113976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P11089586654817113976

namespace A103215

/-- `∩[A047619(n+1), A259749(n+1)]` -/
def P11089586654817113976.Spec : Prop :=
  ∀ n, (P11089586654817113976.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P13103470315417848177

`record[A106610(A047619(n+1))]`
-/

namespace A103215.P13103470315417848177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A047619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103215.P13103470315417848177

namespace A103215

/-- `record[A106610(A047619(n+1))]` -/
def P13103470315417848177.Spec : Prop :=
  ∀ n, P13103470315417848177.a n = A103215 (n + 1)

end A103215

/-! ## A103215.P17040896847624815613

`∩[A047613(n+1), A108118(n+1)]`
-/

namespace A103215.P17040896847624815613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P17040896847624815613

namespace A103215

/-- `∩[A047613(n+1), A108118(n+1)]` -/
def P17040896847624815613.Spec : Prop :=
  ∀ n, (P17040896847624815613.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P3988242826452732283

`∩[A047619(n+1), A108118(n+1)]`
-/

namespace A103215.P3988242826452732283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P3988242826452732283

namespace A103215

/-- `∩[A047619(n+1), A108118(n+1)]` -/
def P3988242826452732283.Spec : Prop :=
  ∀ n, (P3988242826452732283.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P14163493017898099146

`∩[A047620(n+1), A108118(n+1)]`
-/

namespace A103215.P14163493017898099146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P14163493017898099146

namespace A103215

/-- `∩[A047620(n+1), A108118(n+1)]` -/
def P14163493017898099146.Spec : Prop :=
  ∀ n, (P14163493017898099146.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P12855591864359704325

`∩[A042963(n+1), A259749(n+1)]`
-/

namespace A103215.P12855591864359704325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P12855591864359704325

namespace A103215

/-- `∩[A042963(n+1), A259749(n+1)]` -/
def P12855591864359704325.Spec : Prop :=
  ∀ n, (P12855591864359704325.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P5292130518321901633

`∩[A047613(n+1), A259749(n+1)]`
-/

namespace A103215.P5292130518321901633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P5292130518321901633

namespace A103215

/-- `∩[A047613(n+1), A259749(n+1)]` -/
def P5292130518321901633.Spec : Prop :=
  ∀ n, (P5292130518321901633.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P11136730318623884267

`∩[A047620(n+1), A259749(n+1)]`
-/

namespace A103215.P11136730318623884267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P11136730318623884267

namespace A103215

/-- `∩[A047620(n+1), A259749(n+1)]` -/
def P11136730318623884267.Spec : Prop :=
  ∀ n, (P11136730318623884267.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P13631460611342690181

`∩[A091072(n+1), A108118(n+1)]`
-/

namespace A103215.P13631460611342690181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P13631460611342690181

namespace A103215

/-- `∩[A091072(n+1), A108118(n+1)]` -/
def P13631460611342690181.Spec : Prop :=
  ∀ n, (P13631460611342690181.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P16814769146447735434

`∩[A383252(n+1), A259749(n+1)]`
-/

namespace A103215.P16814769146447735434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P16814769146447735434

namespace A103215

/-- `∩[A383252(n+1), A259749(n+1)]` -/
def P16814769146447735434.Spec : Prop :=
  ∀ n, (P16814769146447735434.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P18228978671341033786

`∩[A047614(n+1), A108118(n+1)]`
-/

namespace A103215.P18228978671341033786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P18228978671341033786

namespace A103215

/-- `∩[A047614(n+1), A108118(n+1)]` -/
def P18228978671341033786.Spec : Prop :=
  ∀ n, (P18228978671341033786.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P11697078518063837023

`∩[A047435(n+1), A259749(n+1)]`
-/

namespace A103215.P11697078518063837023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P11697078518063837023

namespace A103215

/-- `∩[A047435(n+1), A259749(n+1)]` -/
def P11697078518063837023.Spec : Prop :=
  ∀ n, (P11697078518063837023.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P14916222354038117170

`∩[A047442(n+1), A259749(n+1)]`
-/

namespace A103215.P14916222354038117170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P14916222354038117170

namespace A103215

/-- `∩[A047442(n+1), A259749(n+1)]` -/
def P14916222354038117170.Spec : Prop :=
  ∀ n, (P14916222354038117170.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P3562305797207699371

`∩[A047614(n+1), A259749(n+1)]`
-/

namespace A103215.P3562305797207699371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P3562305797207699371

namespace A103215

/-- `∩[A047614(n+1), A259749(n+1)]` -/
def P3562305797207699371.Spec : Prop :=
  ∀ n, (P3562305797207699371.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P14600173122604994644

`∩[A001651(n+1), A047619(n+1)]`
-/

namespace A103215.P14600173122604994644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P14600173122604994644

namespace A103215

/-- `∩[A001651(n+1), A047619(n+1)]` -/
def P14600173122604994644.Spec : Prop :=
  ∀ n, (P14600173122604994644.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P18208296875919128231

`∩[A259749(n+1), A004773(n)]`
-/

namespace A103215.P18208296875919128231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103215.P18208296875919128231

namespace A103215

/-- `∩[A259749(n+1), A004773(n)]` -/
def P18208296875919128231.Spec : Prop :=
  ∀ n, (P18208296875919128231.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P5128647622079018569

`eq[A010229(n), A050603(n)]`
-/

namespace A103215.P5128647622079018569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103215.P5128647622079018569

namespace A103215

/-- `eq[A010229(n), A050603(n)]` -/
def P5128647622079018569.Spec : Prop :=
  ∀ n, (P5128647622079018569.a n : ℤ) = A103215 (n + 1)

end A103215

/-! ## A103215.P8226168282896293318

`eq[A040261(n), A050603(n)]`
-/

namespace A103215.P8226168282896293318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103215.P8226168282896293318

namespace A103215

/-- `eq[A040261(n), A050603(n)]` -/
def P8226168282896293318.Spec : Prop :=
  ∀ n, (P8226168282896293318.a n : ℤ) = A103215 (n + 1)

end A103215

/-!
# A103216: Members of A103215 not in A008784.

The programs for A103216, there is no canonical definition to state claims against.
-/

/-! ## A103216.P10515416443779335740

`∩[A103215(n+1), A177733(n+1)]`
-/

namespace A103216.P10515416443779335740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103216.P10515416443779335740

/-! ## A103216.P18292927849024909425

`∩[A103215(n+1), A187811(n+1)]`
-/

namespace A103216.P18292927849024909425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103216.P18292927849024909425

/-! ## A103216.P13916326455207247180

`∩[A103215(n+1), A192450(n+1)]`
-/

namespace A103216.P13916326455207247180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103216.P13916326455207247180

/-! ## A103216.P7214848895243908193

`∩[A103215(n+1), A268380(n+1)]`
-/

namespace A103216.P7214848895243908193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103216.P7214848895243908193

/-!
# A103217: Hexagonal numbers triangle read by rows: T(n,k)=(n+1-k)*(2*(n+1-k)-1).

The programs for A103217, the canonical program `A103217.P9968612035999895191` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103217 has offset 0).

The definition of A103217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103217.P10126746981460100428

`C(2*(C(comp[∑[n]]-n, 2)-n), 2)`
-/

namespace A103217.P10126746981460100428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat 2

end

end A103217.P10126746981460100428

namespace A103217

/-- `C(2*(C(comp[∑[n]]-n, 2)-n), 2)` -/
def P10126746981460100428.Spec : Prop :=
  ∀ n, (P10126746981460100428.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P9968612035999895191

`C(A099375(n)+1, 2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A103217

/-- `C(A099375(n)+1, 2)` -/
def P9968612035999895191.Spec : Prop :=
  ∀ n, (P9968612035999895191.a n : ℤ) = A103217 n

theorem P9968612035999895191.correct : P9968612035999895191.Spec := by
  intro n
  simp only [A103217]

end A103217

/-! ## A103217.P11231930471710478757

`C(A212012(n+1), 2)`
-/

namespace A103217.P11231930471710478757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212012 (n + 1)).toNat 2

end

end A103217.P11231930471710478757

namespace A103217

/-- `C(A212012(n+1), 2)` -/
def P11231930471710478757.Spec : Prop :=
  ∀ n, (P11231930471710478757.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P7120787352066445828

`C(log2(A262616(n))+2, 2)`
-/

namespace A103217.P7120787352066445828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A262616 n : ℝ) + 2)).toNat 2

end

end A103217.P7120787352066445828

namespace A103217

/-- `C(log2(A262616(n))+2, 2)` -/
def P7120787352066445828.Spec : Prop :=
  ∀ n, (P7120787352066445828.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P15023406460458719112

`C(2*A004736(n+1), 2)`
-/

namespace A103217.P15023406460458719112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A004736 (n + 1)).toNat 2

end

end A103217.P15023406460458719112

namespace A103217

/-- `C(2*A004736(n+1), 2)` -/
def P15023406460458719112.Spec : Prop :=
  ∀ n, (P15023406460458719112.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P12515853680204993805

`C(2*(A025581(n)+1), 2)`
-/

namespace A103217.P12515853680204993805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (A025581 n + 1)).toNat 2

end

end A103217.P12515853680204993805

namespace A103217

/-- `C(2*(A025581(n)+1), 2)` -/
def P12515853680204993805.Spec : Prop :=
  ∀ n, (P12515853680204993805.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P14404406515207807053

`C(log2(A090988(n+1)²), 2)`
-/

namespace A103217.P14404406515207807053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) ^ 2 : ℝ))).toNat 2

end

end A103217.P14404406515207807053

namespace A103217

/-- `C(log2(A090988(n+1)²), 2)` -/
def P14404406515207807053.Spec : Prop :=
  ∀ n, (P14404406515207807053.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P3778680597734025057

`C(2*sqrt(A055461(n+1)), 2)`
-/

namespace A103217.P3778680597734025057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (2 * Real.sqrt (A055461 (n + 1) : ℝ))).toNat 2

end

end A103217.P3778680597734025057

namespace A103217

/-- `C(2*sqrt(A055461(n+1)), 2)` -/
def P3778680597734025057.Spec : Prop :=
  ∀ n, (P3778680597734025057.a n : ℤ) = A103217 n

end A103217

/-! ## A103217.P4268953433321274881

`A000384(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A103217.P4268953433321274881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A103217.P4268953433321274881

namespace A103217

/-- `A000384(C(comp[∑[n]]-n, 2)-n)` -/
def P4268953433321274881.Spec : Prop :=
  ∀ n, P4268953433321274881.a n = A103217 n

end A103217

/-! ## A103217.P12011009175237051074

`A000217(A099375(n))`
-/

namespace A103217.P12011009175237051074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A099375 n).toNat

end

end A103217.P12011009175237051074

namespace A103217

/-- `A000217(A099375(n))` -/
def P12011009175237051074.Spec : Prop :=
  ∀ n, P12011009175237051074.a n = A103217 n

end A103217

/-! ## A103217.P11505695982355799525

`A000384(A004736(n+1))`
-/

namespace A103217.P11505695982355799525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A004736 (n + 1)).toNat

end

end A103217.P11505695982355799525

namespace A103217

/-- `A000384(A004736(n+1))` -/
def P11505695982355799525.Spec : Prop :=
  ∀ n, P11505695982355799525.a n = A103217 n

end A103217

/-! ## A103217.P16016452040330613210

`A000384(A025581(n)+1)`
-/

namespace A103217.P16016452040330613210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A025581 n + 1).toNat

end

end A103217.P16016452040330613210

namespace A103217

/-- `A000384(A025581(n)+1)` -/
def P16016452040330613210.Spec : Prop :=
  ∀ n, P16016452040330613210.a n = A103217 n

end A103217

/-! ## A103217.P7462113181211767337

`A161680(A099375(n)+1)`
-/

namespace A103217.P7462113181211767337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A099375 n + 1).toNat

end

end A103217.P7462113181211767337

namespace A103217

/-- `A161680(A099375(n)+1)` -/
def P7462113181211767337.Spec : Prop :=
  ∀ n, P7462113181211767337.a n = A103217 n

end A103217

/-! ## A103217.P13349423517239045247

`A080211(A212012(n+1))`
-/

namespace A103217.P13349423517239045247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080211 (A212012 (n + 1)).toNat

end

end A103217.P13349423517239045247

namespace A103217

/-- `A080211(A212012(n+1))` -/
def P13349423517239045247.Spec : Prop :=
  ∀ n, P13349423517239045247.a n = A103217 n

end A103217

/-! ## A103217.P937823074042590599

`A254047(A143971(n+1))`
-/

namespace A103217.P937823074042590599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254047 (A143971 (n + 1)).toNat

end

end A103217.P937823074042590599

namespace A103217

/-- `A254047(A143971(n+1))` -/
def P937823074042590599.Spec : Prop :=
  ∀ n, P937823074042590599.a n = A103217 n

end A103217

/-! ## A103217.P4654293033939005575

`A145063(4*A025581(n))`
-/

namespace A103217.P4654293033939005575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 (4 * A025581 n).toNat

end

end A103217.P4654293033939005575

namespace A103217

/-- `A145063(4*A025581(n))` -/
def P4654293033939005575.Spec : Prop :=
  ∀ n, P4654293033939005575.a n = A103217 n

end A103217

/-! ## A103217.P8181931415863793074

`A000096(A099375(n)-1)+1`
-/

namespace A103217.P8181931415863793074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A099375 n - 1).toNat + 1

end

end A103217.P8181931415863793074

namespace A103217

/-- `A000096(A099375(n)-1)+1` -/
def P8181931415863793074.Spec : Prop :=
  ∀ n, P8181931415863793074.a n = A103217 n

end A103217

/-! ## A103217.P16318762537486299471

`A000096(2*A025581(n))+1`
-/

namespace A103217.P16318762537486299471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * A025581 n).toNat + 1

end

end A103217.P16318762537486299471

namespace A103217

/-- `A000096(2*A025581(n))+1` -/
def P16318762537486299471.Spec : Prop :=
  ∀ n, P16318762537486299471.a n = A103217 n

end A103217

/-! ## A103217.P1588206697711648408

`A000217(2*A025581(n)+1)`
-/

namespace A103217.P1588206697711648408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A025581 n + 1).toNat

end

end A103217.P1588206697711648408

namespace A103217

/-- `A000217(2*A025581(n)+1)` -/
def P1588206697711648408.Spec : Prop :=
  ∀ n, P1588206697711648408.a n = A103217 n

end A103217

/-! ## A103217.P582431647437078472

`A161680(2*A004736(n+1))`
-/

namespace A103217.P582431647437078472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * A004736 (n + 1)).toNat

end

end A103217.P582431647437078472

namespace A103217

/-- `A161680(2*A004736(n+1))` -/
def P582431647437078472.Spec : Prop :=
  ∀ n, P582431647437078472.a n = A103217 n

end A103217

/-!
# A103218: Triangle read by rows: T(n, k) = (2*k+1)*(n+1-k)^2.

The programs for A103218, the canonical program `A103218.P11916202005986384532` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103218 has offset 0).

The definition of A103218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103218.P11908899075485923292

`(n-C(comp[∑[n]]-n, 2))²*A158405(n+1)`
-/

namespace A103218.P11908899075485923292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 * A158405 (n + 1)

end

end A103218.P11908899075485923292

namespace A103218

/-- `(n-C(comp[∑[n]]-n, 2))²*A158405(n+1)` -/
def P11908899075485923292.Spec : Prop :=
  ∀ n, P11908899075485923292.a n = A103218 n

end A103218

/-! ## A103218.P11916202005986384532

`A004736(n+1)*A101447(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103218

/-- `A004736(n+1)*A101447(n)` -/
def P11916202005986384532.Spec : Prop :=
  ∀ n, P11916202005986384532.a n = A103218 n

theorem P11916202005986384532.correct : P11916202005986384532.Spec := by
  intro n
  simp only [A103218]

end A103218

/-! ## A103218.P3588103179016453422

`sqrt(A055461(n+1))*A101447(n)`
-/

namespace A103218.P3588103179016453422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A101447 n : ℝ)

end

end A103218.P3588103179016453422

namespace A103218

/-- `sqrt(A055461(n+1))*A101447(n)` -/
def P3588103179016453422.Spec : Prop :=
  ∀ n, P3588103179016453422.a n = (A103218 n : ℝ)

end A103218

/-! ## A103218.P14062779554361286972

`A055461(n+1)*A158405(n+1)`
-/

namespace A103218.P14062779554361286972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) * A158405 (n + 1)

end

end A103218.P14062779554361286972

namespace A103218

/-- `A055461(n+1)*A158405(n+1)` -/
def P14062779554361286972.Spec : Prop :=
  ∀ n, P14062779554361286972.a n = A103218 n

end A103218

/-! ## A103218.P9499690790353444752

`(A127739(n+1)-n)*A101447(n)`
-/

namespace A103218.P9499690790353444752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A101447 n

end

end A103218.P9499690790353444752

namespace A103218

/-- `(A127739(n+1)-n)*A101447(n)` -/
def P9499690790353444752.Spec : Prop :=
  ∀ n, P9499690790353444752.a n = A103218 n

end A103218

/-! ## A103218.P2445334746065973619

`A004736(n+1)²*A158405(n+1)`
-/

namespace A103218.P2445334746065973619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A158405 (n + 1)

end

end A103218.P2445334746065973619

namespace A103218

/-- `A004736(n+1)²*A158405(n+1)` -/
def P2445334746065973619.Spec : Prop :=
  ∀ n, P2445334746065973619.a n = A103218 n

end A103218

/-! ## A103218.P7364849916719829471

`(A025581(n)+1)²*A158405(n+1)`
-/

namespace A103218.P7364849916719829471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) ^ 2 * A158405 (n + 1)

end

end A103218.P7364849916719829471

namespace A103218

/-- `(A025581(n)+1)²*A158405(n+1)` -/
def P7364849916719829471.Spec : Prop :=
  ∀ n, P7364849916719829471.a n = A103218 n

end A103218

/-! ## A103218.P11428970630708336039

`(A127739(n+1)-n)²*A158405(n+1)`
-/

namespace A103218.P11428970630708336039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) ^ 2 * A158405 (n + 1)

end

end A103218.P11428970630708336039

namespace A103218

/-- `(A127739(n+1)-n)²*A158405(n+1)` -/
def P11428970630708336039.Spec : Prop :=
  ∀ n, P11428970630708336039.a n = A103218 n

end A103218

/-! ## A103218.P18196202113353386274

`A000463(A099375(n))*A101447(n)`
-/

namespace A103218.P18196202113353386274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat * A101447 n

end

end A103218.P18196202113353386274

namespace A103218

/-- `A000463(A099375(n))*A101447(n)` -/
def P18196202113353386274.Spec : Prop :=
  ∀ n, P18196202113353386274.a n = A103218 n

end A103218

/-! ## A103218.P5517932771639199820

`A004736(n+1)²*A005408(A002262(n))`
-/

namespace A103218.P5517932771639199820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A005408 (A002262 n).toNat

end

end A103218.P5517932771639199820

namespace A103218

/-- `A004736(n+1)²*A005408(A002262(n))` -/
def P5517932771639199820.Spec : Prop :=
  ∀ n, P5517932771639199820.a n = A103218 n

end A103218

/-! ## A103218.P6179021658251874664

`A101447(A095832(n+1)/2)*A101447(n)`
-/

namespace A103218.P6179021658251874664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 (SequenceMachineLib.roundAway ((A095832 (n + 1) : ℚ) / 2)).toNat * A101447 n

end

end A103218.P6179021658251874664

namespace A103218

/-- `A101447(A095832(n+1)/2)*A101447(n)` -/
def P6179021658251874664.Spec : Prop :=
  ∀ n, P6179021658251874664.a n = A103218 n

end A103218

/-! ## A103218.P16204493476638869555

`(A005843(A002260(n+1))-1)*A055461(n+1)`
-/

namespace A103218.P16204493476638869555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (A002260 (n + 1)).toNat - 1) * A055461 (n + 1)

end

end A103218.P16204493476638869555

namespace A103218

/-- `(A005843(A002260(n+1))-1)*A055461(n+1)` -/
def P16204493476638869555.Spec : Prop :=
  ∀ n, P16204493476638869555.a n = A103218 n

end A103218

/-! ## A103218.P4356658808865835015

`A094728(n+1)/A094727(n+1)*A101447(n)`
-/

namespace A103218.P4356658808865835015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094728 (n + 1) : ℚ) / (A094727 (n + 1) : ℚ) * (A101447 n : ℚ)

end

end A103218.P4356658808865835015

namespace A103218

/-- `A094728(n+1)/A094727(n+1)*A101447(n)` -/
def P4356658808865835015.Spec : Prop :=
  ∀ n, P4356658808865835015.a n = (A103218 n : ℚ)

end A103218

/-! ## A103218.P6679304247033454386

`(A002262(n)+A002260(n+1))*A004736(n+1)²`
-/

namespace A103218.P6679304247033454386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002260 (n + 1)) * A004736 (n + 1) ^ 2

end

end A103218.P6679304247033454386

namespace A103218

/-- `(A002262(n)+A002260(n+1))*A004736(n+1)²` -/
def P6679304247033454386.Spec : Prop :=
  ∀ n, P6679304247033454386.a n = A103218 n

end A103218

/-! ## A103218.P1360571345899215163

`(A014132(n+1)-A038722(n+1))*A004736(n+1)²`
-/

namespace A103218.P1360571345899215163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - A038722 (n + 1)) * A004736 (n + 1) ^ 2

end

end A103218.P1360571345899215163

namespace A103218

/-- `(A014132(n+1)-A038722(n+1))*A004736(n+1)²` -/
def P1360571345899215163.Spec : Prop :=
  ∀ n, P1360571345899215163.a n = A103218 n

end A103218

/-! ## A103218.P17724086884605464855

`(A108872(n+1)-A004736(n+1))*A004736(n+1)²`
-/

namespace A103218.P17724086884605464855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - A004736 (n + 1)) * A004736 (n + 1) ^ 2

end

end A103218.P17724086884605464855

namespace A103218

/-- `(A108872(n+1)-A004736(n+1))*A004736(n+1)²` -/
def P17724086884605464855.Spec : Prop :=
  ∀ n, P17724086884605464855.a n = A103218 n

end A103218

/-! ## A103218.P1779433801410897861

`A055461(n+1)*A074294(2*n+1)`
-/

namespace A103218.P1779433801410897861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) * A074294 (2 * n + 1)

end

end A103218.P1779433801410897861

namespace A103218

/-- `A055461(n+1)*A074294(2*n+1)` -/
def P1779433801410897861.Spec : Prop :=
  ∀ n, P1779433801410897861.a n = A103218 n

end A103218

/-! ## A103218.P2973730525931742816

`A004736(n+1)²*A074294(2*n+1)`
-/

namespace A103218.P2973730525931742816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A074294 (2 * n + 1)

end

end A103218.P2973730525931742816

namespace A103218

/-- `A004736(n+1)²*A074294(2*n+1)` -/
def P2973730525931742816.Spec : Prop :=
  ∀ n, P2973730525931742816.a n = A103218 n

end A103218

/-! ## A103218.P124283213458093303

`A004736(n+1)²*A171173(2*(n+1))`
-/

namespace A103218.P124283213458093303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A171173 (2 * (n + 1))

end

end A103218.P124283213458093303

namespace A103218

/-- `A004736(n+1)²*A171173(2*(n+1))` -/
def P124283213458093303.Spec : Prop :=
  ∀ n, P124283213458093303.a n = A103218 n

end A103218

/-! ## A103218.P15102153457177539649

`A057555(2*(n+1))²*A074294(2*n+1)`
-/

namespace A103218.P15102153457177539649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1)) ^ 2 * A074294 (2 * n + 1)

end

end A103218.P15102153457177539649

namespace A103218

/-- `A057555(2*(n+1))²*A074294(2*n+1)` -/
def P15102153457177539649.Spec : Prop :=
  ∀ n, P15102153457177539649.a n = A103218 n

end A103218

/-!
# A103219: Triangle read by rows: T(n,k) = (n+1-k)*(4*(n+1-k)^2 - 1)/3+2*k*(n+1-k)^2.

The programs for A103219, the canonical program `A103219.P4336052885139861027` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103219 has offset 0).

The definition of A103219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103219.P4336052885139861027

`2*A104716(n+1)-A094728(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A103219

/-- `2*A104716(n+1)-A094728(n+1)` -/
def P4336052885139861027.Spec : Prop :=
  ∀ n, P4336052885139861027.a n = A103219 n

theorem P4336052885139861027.correct : P4336052885139861027.Spec := by
  intro n
  simp only [A103219]

end A103219

/-! ## A103219.P3886473527401900119

`A213847(n+1)-2*A104715(n+1)`
-/

namespace A103219.P3886473527401900119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213847 (n + 1) - 2 * A104715 (n + 1)

end

end A103219.P3886473527401900119

namespace A103219

/-- `A213847(n+1)-2*A104715(n+1)` -/
def P3886473527401900119.Spec : Prop :=
  ∀ n, P3886473527401900119.a n = A103219 n

end A103219

/-! ## A103219.P7797214077746762989

`A213752(n+1)+A210440(A025581(n))`
-/

namespace A103219.P7797214077746762989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213752 (n + 1) + A210440 (A025581 n).toNat

end

end A103219.P7797214077746762989

namespace A103219

/-- `A213752(n+1)+A210440(A025581(n))` -/
def P7797214077746762989.Spec : Prop :=
  ∀ n, P7797214077746762989.a n = A103219 n

end A103219

/-! ## A103219.P14608488732757629342

`A213847(n+1)-(A103218(n)+A101447(n))`
-/

namespace A103219.P14608488732757629342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213847 (n + 1) - (A103218 n + A101447 n)

end

end A103219.P14608488732757629342

namespace A103219

/-- `A213847(n+1)-(A103218(n)+A101447(n))` -/
def P14608488732757629342.Spec : Prop :=
  ∀ n, P14608488732757629342.a n = A103219 n

end A103219

/-! ## A103219.P1777912940953013023

`A213841(n+1)+A103217(n)-A103218(n)`
-/

namespace A103219.P1777912940953013023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213841 (n + 1) + (A103217 n - A103218 n)

end

end A103219.P1777912940953013023

namespace A103219

/-- `A213841(n+1)+A103217(n)-A103218(n)` -/
def P1777912940953013023.Spec : Prop :=
  ∀ n, P1777912940953013023.a n = A103219 n

end A103219

/-! ## A103219.P16623619591860692272

`A213844(n+1)-(A103218(n)+A004736(n+1))`
-/

namespace A103219.P16623619591860692272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213844 (n + 1) - (A103218 n + A004736 (n + 1))

end

end A103219.P16623619591860692272

namespace A103219

/-- `A213844(n+1)-(A103218(n)+A004736(n+1))` -/
def P16623619591860692272.Spec : Prop :=
  ∀ n, P16623619591860692272.a n = A103219 n

end A103219

/-! ## A103219.P6384735956344500390

`A213847(n+1)-A005843(A104715(n+1))`
-/

namespace A103219.P6384735956344500390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213847 (n + 1) - A005843 (A104715 (n + 1)).toNat

end

end A103219.P6384735956344500390

namespace A103219

/-- `A213847(n+1)-A005843(A104715(n+1))` -/
def P6384735956344500390.Spec : Prop :=
  ∀ n, P6384735956344500390.a n = A103219 n

end A103219

/-! ## A103219.P638603540991888550

`A005843(A104716(n+1))-A094728(n+1)`
-/

namespace A103219.P638603540991888550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104716 (n + 1)).toNat - A094728 (n + 1)

end

end A103219.P638603540991888550

namespace A103219

/-- `A005843(A104716(n+1))-A094728(n+1)` -/
def P638603540991888550.Spec : Prop :=
  ∀ n, P638603540991888550.a n = A103219 n

end A103219

/-!
# A103220: a(n) = n*(n+1)*(3*n^2+n-1)/6.

The programs for A103220, the canonical program `A103220.P7853158673666629718` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103220 has offset 0).

The definition of A103220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n²+n-1)/6` (program `A103220.P16255758800883571379`, by `A103220.P16255758800883571379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A103220.P7853158673666629718

`a(n-1)+(2*n-1)*n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103220

/-- `a(n-1)+(2*n-1)*n²` -/
def P7853158673666629718.Spec : Prop :=
  ∀ n, P7853158673666629718.a n = A103220 n

theorem P7853158673666629718.correct : P7853158673666629718.Spec := by
  intro n
  simp only [A103220]

end A103220

/-! ## A103220.P3943055167375062003

`(3*n^4+4*n^3-n)/6`
-/

namespace A103220.P3943055167375062003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 4 + 4 * n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 6

end

end A103220.P3943055167375062003

namespace A103220

/-- `(3*n^4+4*n^3-n)/6` -/
def P3943055167375062003.Spec : Prop :=
  ∀ n, P3943055167375062003.a n = (A103220 n : ℚ)

theorem P3943055167375062003.correct : P3943055167375062003.Spec := by
  intro n
  induction n with
  | zero => simp [A103220, A103220.P3943055167375062003.a, A103220.P7853158673666629718.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A103220, Nat.add_sub_cancel, A103220.P3943055167375062003.a, A103220.P7853158673666629718.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A103220

/-! ## A103220.P16255758800883571379

`n*(n+1)*(3*n²+n-1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A103220.P16255758800883571379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((3 * n ^ 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 6))

end

end A103220.P16255758800883571379

namespace A103220

/-- `n*(n+1)*(3*n²+n-1)/6` -/
def P16255758800883571379.Spec : Prop :=
  ∀ n, P16255758800883571379.a n = (A103220 n : ℚ)

theorem P16255758800883571379.correct : P16255758800883571379.Spec := by
  intro n
  induction n with
  | zero => simp [A103220, A103220.P16255758800883571379.a, A103220.P7853158673666629718.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A103220, Nat.add_sub_cancel, A103220.P16255758800883571379.a, A103220.P7853158673666629718.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A103220

/-! ## A103220.P5518840229117147845

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=58, a(4)=170`
-/

namespace A103220.P5518840229117147845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 13, 58, 170] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A103220.P5518840229117147845

namespace A103220

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5518840229117147845.Spec : Prop :=
  ∀ n, P5518840229117147845.a n = A103220 n

end A103220

/-! ## A103220.P10704599172839628724

`∑[n*C(2*n, 2)]`
-/

namespace A103220.P10704599172839628724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P10704599172839628724

namespace A103220

/-- `∑[n*C(2*n, 2)]` -/
def P10704599172839628724.Spec : Prop :=
  ∀ n, (P10704599172839628724.a n : ℤ) = A103220 n

end A103220

/-! ## A103220.P12895137597199157255

`∑[lcm(n-1, n²)]+∑[n]²`
-/

namespace A103220.P12895137597199157255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A103220.P12895137597199157255

namespace A103220

/-- `∑[lcm(n-1, n²)]+∑[n]²` -/
def P12895137597199157255.Spec : Prop :=
  ∀ n, (P12895137597199157255.a n : ℤ) = A103220 n

end A103220

/-! ## A103220.P11518891550187656822

`∑[n*∑[a(n-1)+4]]` with `a(0)=0, a(1)=1`
-/

namespace A103220.P11518891550187656822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P11518891550187656822

namespace A103220

/-- `∑[n*∑[a(n-1)+4]]` -/
def P11518891550187656822.Spec : Prop :=
  ∀ n, (P11518891550187656822.a n : ℤ) = A103220 n

end A103220

/-! ## A103220.P15119918986083455754

`∑[(n-1)*lcm(n, 2*n+1)]+∑[n]`
-/

namespace A103220.P15119918986083455754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.lcm n (2 * n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A103220.P15119918986083455754

namespace A103220

/-- `∑[(n-1)*lcm(n, 2*n+1)]+∑[n]` -/
def P15119918986083455754.Spec : Prop :=
  ∀ n, P15119918986083455754.a n = A103220 n

end A103220

/-! ## A103220.P8861719142313905220

`∑[A015237(n)]`
-/

namespace A103220.P8861719142313905220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P8861719142313905220

namespace A103220

/-- `∑[A015237(n)]` -/
def P8861719142313905220.Spec : Prop :=
  ∀ n, P8861719142313905220.a n = A103220 n

end A103220

/-! ## A103220.P14440682329683785023

`∑[n*A000384(n)]`
-/

namespace A103220.P14440682329683785023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P14440682329683785023

namespace A103220

/-- `∑[n*A000384(n)]` -/
def P14440682329683785023.Spec : Prop :=
  ∀ n, P14440682329683785023.a n = A103220 n

end A103220

/-! ## A103220.P11529659559377683104

`A046998(n)-1+n`
-/

namespace A103220.P11529659559377683104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046998 n - 1 + (n : ℤ)

end

end A103220.P11529659559377683104

namespace A103220

/-- `A046998(n)-1+n` -/
def P11529659559377683104.Spec : Prop :=
  ∀ n, P11529659559377683104.a n = A103220 n

end A103220

/-! ## A103220.P16138813649315885025

`A212523(n)+n^3`
-/

namespace A103220.P16138813649315885025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n + (n ^ 3 : ℤ)

end

end A103220.P16138813649315885025

namespace A103220

/-- `A212523(n)+n^3` -/
def P16138813649315885025.Spec : Prop :=
  ∀ n, P16138813649315885025.a n = A103220 n

end A103220

/-! ## A103220.P14050820523176349888

`∑[A033431(n)-n²]`
-/

namespace A103220.P14050820523176349888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P14050820523176349888

namespace A103220

/-- `∑[A033431(n)-n²]` -/
def P14050820523176349888.Spec : Prop :=
  ∀ n, P14050820523176349888.a n = A103220 n

end A103220

/-! ## A103220.P14004577702558827095

`A163102(n)-∑[n²]`
-/

namespace A103220.P14004577702558827095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A103220.P14004577702558827095

namespace A103220

/-- `A163102(n)-∑[n²]` -/
def P14004577702558827095.Spec : Prop :=
  ∀ n, P14004577702558827095.a n = A103220 n

end A103220

/-! ## A103220.P15777631394753049387

`∑[n²*A004273(n)]`
-/

namespace A103220.P15777631394753049387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P15777631394753049387

namespace A103220

/-- `∑[n²*A004273(n)]` -/
def P15777631394753049387.Spec : Prop :=
  ∀ n, P15777631394753049387.a n = A103220 n

end A103220

/-! ## A103220.P5554993964579368746

`∑[n²*A060747(n)]`
-/

namespace A103220.P5554993964579368746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A060747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103220.P5554993964579368746

namespace A103220

/-- `∑[n²*A060747(n)]` -/
def P5554993964579368746.Spec : Prop :=
  ∀ n, P5554993964579368746.a n = A103220 n

end A103220

/-! ## A103220.P5793345804824966611

`A002412(n)+C(n², 2)`
-/

namespace A103220.P5793345804824966611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A103220.P5793345804824966611

namespace A103220

/-- `A002412(n)+C(n², 2)` -/
def P5793345804824966611.Spec : Prop :=
  ∀ n, P5793345804824966611.a n = A103220 n

end A103220

/-! ## A103220.P2271899312113626612

`∑[A045991(n)]+∑[n]²`
-/

namespace A103220.P2271899312113626612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A103220.P2271899312113626612

namespace A103220

/-- `∑[A045991(n)]+∑[n]²` -/
def P2271899312113626612.Spec : Prop :=
  ∀ n, P2271899312113626612.a n = A103220 n

end A103220

/-! ## A103220.P6000326254541869673

`A036464(n+1)+∑[n²]`
-/

namespace A103220.P6000326254541869673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036464 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A103220.P6000326254541869673

namespace A103220

/-- `A036464(n+1)+∑[n²]` -/
def P6000326254541869673.Spec : Prop :=
  ∀ n, P6000326254541869673.a n = A103220 n

end A103220

/-! ## A103220.P12020160580290568352

`2*A000537(n)-∑[n²]`
-/

namespace A103220.P12020160580290568352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A103220.P12020160580290568352

namespace A103220

/-- `2*A000537(n)-∑[n²]` -/
def P12020160580290568352.Spec : Prop :=
  ∀ n, P12020160580290568352.a n = A103220 n

end A103220

/-!
# A103221: Number of partitions of n into parts 2 and 3.

The programs for A103221, the canonical program `A103221.P347123473638743333` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103221 has offset 0).

The definition of A103221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103221.P347123473638743333

`a(n-6)+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103221

/-- `a(n-6)+1` -/
def P347123473638743333.Spec : Prop :=
  ∀ n, (P347123473638743333.a n : ℤ) = A103221 n

theorem P347123473638743333.correct : P347123473638743333.Spec := by
  intro n
  simp only [A103221]

end A103221

/-! ## A103221.P9745237137500566969

`floor((n+2)/2)-floor((n+2)/3)`
-/

namespace A103221.P9745237137500566969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - ⌊(n + 2 : ℚ) / 3⌋

end

end A103221.P9745237137500566969

namespace A103221

/-- `floor((n+2)/2)-floor((n+2)/3)` -/
def P9745237137500566969.Spec : Prop :=
  ∀ n, P9745237137500566969.a n = A103221 n

end A103221

/-! ## A103221.P1167419037201756109

`A008615(n+2)`
-/

namespace A103221.P1167419037201756109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 2)

end

end A103221.P1167419037201756109

namespace A103221

/-- `A008615(n+2)` -/
def P1167419037201756109.Spec : Prop :=
  ∀ n, P1167419037201756109.a n = A103221 n

end A103221

/-! ## A103221.P1960161141646449920

`A081753(2*n)`
-/

namespace A103221.P1960161141646449920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (2 * n)

end

end A103221.P1960161141646449920

namespace A103221

/-- `A081753(2*n)` -/
def P1960161141646449920.Spec : Prop :=
  ∀ n, P1960161141646449920.a n = A103221 n

end A103221

/-! ## A103221.P6527101019964457463

`ceil(xor(1, n)/6)`
-/

namespace A103221.P6527101019964457463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉

end

end A103221.P6527101019964457463

namespace A103221

/-- `ceil(xor(1, n)/6)` -/
def P6527101019964457463.Spec : Prop :=
  ∀ n, P6527101019964457463.a n = A103221 n

end A103221

/-! ## A103221.P18063061895341347972

`round(xor(1, n+2)/6)`
-/

namespace A103221.P18063061895341347972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 2) : ℚ) / 6)

end

end A103221.P18063061895341347972

namespace A103221

/-- `round(xor(1, n+2)/6)` -/
def P18063061895341347972.Spec : Prop :=
  ∀ n, P18063061895341347972.a n = A103221 n

end A103221

/-! ## A103221.P3217360268579635901

`ceil(abs(Δ[lcm(2, n)])/6)`
-/

namespace A103221.P3217360268579635901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| : ℚ) / 6⌉

end

end A103221.P3217360268579635901

namespace A103221

/-- `ceil(abs(Δ[lcm(2, n)])/6)` -/
def P3217360268579635901.Spec : Prop :=
  ∀ n, P3217360268579635901.a n = A103221 n

end A103221

/-! ## A103221.P9094782246936686834

`∑[round(sin(4)^(n%6))]`
-/

namespace A103221.P9094782246936686834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (4 : ℝ) ^ (n % 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103221.P9094782246936686834

namespace A103221

/-- `∑[round(sin(4)^(n%6))]` -/
def P9094782246936686834.Spec : Prop :=
  ∀ n, P9094782246936686834.a n = A103221 n

end A103221

/-! ## A103221.P8319150675411101

`∑[∑[ogf(1/(1+2x+2x^2+x^3))]]`
-/

namespace A103221.P8319150675411101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103221.P8319150675411101

namespace A103221

/-- `∑[∑[ogf(1/(1+2x+2x^2+x^3))]]` -/
def P8319150675411101.Spec : Prop :=
  ∀ n, P8319150675411101.a n = A103221 n

end A103221

/-! ## A103221.P4537706699858665135

`ogf(1/(1-x^2-x^3+x^5))`
-/

namespace A103221.P4537706699858665135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -1, 0, 1] n

end

end A103221.P4537706699858665135

namespace A103221

/-- `ogf(1/(1-x^2-x^3+x^5))` -/
def P4537706699858665135.Spec : Prop :=
  ∀ n, P4537706699858665135.a n = A103221 n

end A103221

/-! ## A103221.P16536987518695611358

`floor((gcd(2, n)+n/3)/2)`
-/

namespace A103221.P16536987518695611358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.gcd 2 n : ℚ) + (n : ℚ) / 3) / 2⌋

end

end A103221.P16536987518695611358

namespace A103221

/-- `floor((gcd(2, n)+n/3)/2)` -/
def P16536987518695611358.Spec : Prop :=
  ∀ n, P16536987518695611358.a n = A103221 n

end A103221

/-! ## A103221.P7751136666879158583

`round(∑[1-a(n-1)]/3)` with `a(0)=2`
-/

namespace A103221.P7751136666879158583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3)

end

end A103221.P7751136666879158583

namespace A103221

/-- `round(∑[1-a(n-1)]/3)` -/
def P7751136666879158583.Spec : Prop :=
  ∀ n, P7751136666879158583.a n = A103221 n

end A103221

/-! ## A103221.P1542669819383879229

`∑[(n+1)%2-∑[n]%3]`
-/

namespace A103221.P1542669819383879229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103221.P1542669819383879229

namespace A103221

/-- `∑[(n+1)%2-∑[n]%3]` -/
def P1542669819383879229.Spec : Prop :=
  ∀ n, P1542669819383879229.a n = A103221 n

end A103221

/-! ## A103221.P14840297132390366991

`∑[char[3*n]-a(n-1)]` with `a(0)=1`
-/

namespace A103221.P14840297132390366991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103221.P14840297132390366991

namespace A103221

/-- `∑[char[3*n]-a(n-1)]` -/
def P14840297132390366991.Spec : Prop :=
  ∀ n, P14840297132390366991.a n = A103221 n

end A103221

/-! ## A103221.P6340108416151635027

`∑[(a(n-3)²-1)^n]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A103221.P6340108416151635027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  (f1 (n - 3) ^ 2 - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103221.P6340108416151635027

namespace A103221

/-- `∑[(a(n-3)²-1)^n]` -/
def P6340108416151635027.Spec : Prop :=
  ∀ n, P6340108416151635027.a n = A103221 n

end A103221

/-! ## A103221.P8987494375214966646

`abs(A187035(n))`
-/

namespace A103221.P8987494375214966646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187035 n|

end

end A103221.P8987494375214966646

namespace A103221

/-- `abs(A187035(n))` -/
def P8987494375214966646.Spec : Prop :=
  ∀ n, P8987494375214966646.a n = A103221 n

end A103221

/-! ## A103221.P16352445777286992172

`∑[A115360(n)]`
-/

namespace A103221.P16352445777286992172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103221.P16352445777286992172

namespace A103221

/-- `∑[A115360(n)]` -/
def P16352445777286992172.Spec : Prop :=
  ∀ n, P16352445777286992172.a n = A103221 n

end A103221

/-! ## A103221.P9885013230538592850

`abs(∑[A104581(n)])`
-/

namespace A103221.P9885013230538592850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A103221.P9885013230538592850

namespace A103221

/-- `abs(∑[A104581(n)])` -/
def P9885013230538592850.Spec : Prop :=
  ∀ n, P9885013230538592850.a n = A103221 n

end A103221

/-! ## A103221.P7508241024286065361

`A110654(A008611(n))`
-/

namespace A103221.P7508241024286065361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008611 n).toNat

end

end A103221.P7508241024286065361

namespace A103221

/-- `A110654(A008611(n))` -/
def P7508241024286065361.Spec : Prop :=
  ∀ n, P7508241024286065361.a n = A103221 n

end A103221

/-! ## A103221.P9608562106440486493

`A110654(A051274(n))`
-/

namespace A103221.P9608562106440486493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A051274 n).toNat

end

end A103221.P9608562106440486493

namespace A103221

/-- `A110654(A051274(n))` -/
def P9608562106440486493.Spec : Prop :=
  ∀ n, P9608562106440486493.a n = A103221 n

end A103221

/-!
# A103222: Real part of the totient function phi(n) for Gaussian integers. See A103223 for the imaginary part and A103224 for the norm.

The programs for A103222, there is no canonical definition to state claims against.
-/

/-! ## A103222.P15889443071454328239

`A000196(A103224(n+1)-A103223(n+1)²)`
-/

namespace A103222.P15889443071454328239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A103224 (n + 1) - A103223 (n + 1) ^ 2).toNat

end

end A103222.P15889443071454328239

/-!
# A103223: Imaginary part of the totient function phi(n) for Gaussian integers. See A103222 for the real part and A103224 for the norm.

The programs for A103223, there is no canonical definition to state claims against.
-/

/-! ## A103223.P2219371699815246023

`sqrt(A103224(n+1)-A103222(n+1)²)`
-/

namespace A103223.P2219371699815246023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103224 (n + 1) - A103222 (n + 1) ^ 2 : ℝ)

end

end A103223.P2219371699815246023

/-! ## A103223.P2362712803895193898

`A000196(A103224(n+1)-A103222(n+1)²)`
-/

namespace A103223.P2362712803895193898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A103224 (n + 1) - A103222 (n + 1) ^ 2).toNat

end

end A103223.P2362712803895193898

/-! ## A103223.P11285820613137683359

`and(A000720(A187829(n+1)), A193036(n))`
-/

namespace A103223.P11285820613137683359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (A187829 (n + 1)).toNat) (A193036 n)

end

end A103223.P11285820613137683359

/-! ## A103223.P6005784948790519206

`and(A001281(A187829(n+1)), A060973(n+1))`
-/

namespace A103223.P6005784948790519206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001281 (A187829 (n + 1)).toNat) (A060973 (n + 1))

end

end A103223.P6005784948790519206

/-! ## A103223.P11621337391539870450

`and(A001281(A187829(n+1)), A132015(n+1))`
-/

namespace A103223.P11621337391539870450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001281 (A187829 (n + 1)).toNat) (A132015 (n + 1))

end

end A103223.P11621337391539870450

/-!
# A103224: Norm of the totient function phi(n) for Gaussian integers. See A103222 and A103223 for the real and imaginary parts.

The programs for A103224, there is no canonical definition to state claims against.
-/

/-! ## A103224.P7534235865525284881

`A103222(n+1)²+A103223(n+1)²`
-/

namespace A103224.P7534235865525284881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103222 (n + 1) ^ 2 + A103223 (n + 1) ^ 2

end

end A103224.P7534235865525284881

/-! ## A103224.P11627866349502079053

`gcd(A082953(n+1), A082953(A261459(n+1)))`
-/

namespace A103224.P11627866349502079053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082953 (n + 1)) (A082953 (A261459 (n + 1)).toNat)

end

end A103224.P11627866349502079053

/-! ## A103224.P7118072877432046750

`A000010(n+1)*A005811(A186021(n))`
-/

namespace A103224.P7118072877432046750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A005811 (A186021 n).toNat

end

end A103224.P7118072877432046750

/-! ## A103224.P4509391484729380477

`A082953(n+1)/A298735(A003699(n+1))`
-/

namespace A103224.P4509391484729380477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082953 (n + 1) : ℚ) / (A298735 (A003699 (n + 1)).toNat : ℚ)

end

end A103224.P4509391484729380477

/-! ## A103224.P1503871993890081639

`A000120(A072856(n))*A007400(2*n+1)`
-/

namespace A103224.P1503871993890081639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A072856 n).toNat * A007400 (2 * n + 1)

end

end A103224.P1503871993890081639

/-!
# A103225: Number of Gaussian integers z with abs(z) < n and gcd(n,z)=1.

The programs for A103225, there is no canonical definition to state claims against.
-/

/-! ## A103225.P1797623750562303461

`A145154(lcm((n%3)!, A000584(n)))`
-/

namespace A103225.P1797623750562303461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (Int.lcm (Nat.factorial (n % 3) : ℤ) (A000584 n))

end

end A103225.P1797623750562303461

/-! ## A103225.P10820845361659062926

`A145154(∑{p}[n+1, gcd(n, #)]*A000584(n))`
-/

namespace A103225.P10820845361659062926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) * A000584 n).toNat

end

end A103225.P10820845361659062926

/-! ## A103225.P264810600846761034

`A145154(∑{e}[n+1, #-val(#!, 2)]*A000584(n))`
-/

namespace A103225.P264810600846761034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 ((∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))) * A000584 n).toNat

end

end A103225.P264810600846761034

/-!
# A103226: Moebius function mu(n+ki) defined for the Gaussian integers. The table begins with n=k=0 and is read by antidiagonals.

The programs for A103226, there is no canonical definition to state claims against.
-/

/-! ## A103226.P5099735118821742911

`A008683(A209553(n+1)+A014430(n))`
-/

namespace A103226.P5099735118821742911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A209553 (n + 1) + A014430 n).toNat

end

end A103226.P5099735118821742911

/-! ## A103226.P488288798968582399

`A057078(A299267(n+3)+A105612(n+1))`
-/

namespace A103226.P488288798968582399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A299267 (n + 3) + A105612 (n + 1)).toNat

end

end A103226.P488288798968582399

/-! ## A103226.P15947399572128262246

`A163532(xor(A099163(n), A185782(n+1)))`
-/

namespace A103226.P15947399572128262246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (Int.xor (A099163 n) (A185782 (n + 1))).toNat

end

end A103226.P15947399572128262246

/-! ## A103226.P14081024844663667330

`A128431(A060341(n+2))`
-/

namespace A103226.P14081024844663667330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128431 (A060341 (n + 2)).toNat

end

end A103226.P14081024844663667330

/-! ## A103226.P1198379577246154794

`2-A131989(A196718(n+1))`
-/

namespace A103226.P1198379577246154794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131989 (A196718 (n + 1)).toNat

end

end A103226.P1198379577246154794

/-!
# A103230: Norm of the sum of divisors function sigma(n) generalized for Gaussian integers.

The programs for A103230, there is no canonical definition to state claims against.
-/

/-! ## A103230.P7032808577737809325

`A103228(n+1)²+A103229(n+1)²`
-/

namespace A103230.P7032808577737809325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103228 (n + 1) ^ 2 + A103229 (n + 1) ^ 2

end

end A103230.P7032808577737809325

/-!
# A103231: After the first two terms, each subsequent term is the smallest integer that is an outlier of the previous dataset, based on the criterion of 3 sample standard deviations above the mean.

The programs for A103231, there is no canonical definition to state claims against.
-/

/-! ## A103231.P1584018680368638700

`A247911(∑[A029053(3*n)])`
-/

namespace A103231.P1584018680368638700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103231.P1584018680368638700

/-! ## A103231.P1233193773457904946

`∑[A346693(∑[A007360(n+1)])]`
-/

namespace A103231.P1233193773457904946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103231.P1233193773457904946

/-! ## A103231.P8061083487978817545

`A051889(∑[∑[∑[round(sqrt(2*n))]+1]])`
-/

namespace A103231.P8061083487978817545
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103231.P8061083487978817545

/-! ## A103231.P11359817518815991201

`A172471(A054343(n)-n)`
-/

namespace A103231.P11359817518815991201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A054343 n - (n : ℤ)).toNat

end

end A103231.P11359817518815991201

/-! ## A103231.P3867670187783812465

`∑[ceil(log2(A076322(n+1)+1))]`
-/

namespace A103231.P3867670187783812465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A076322 (n + 1) + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103231.P3867670187783812465

/-!
# A103232: After the first two terms, each subsequent term is the smallest integer that is an outlier of the set of the previous terms, based on the criterion of 1.5 interquartile ranges above the third quartile.

The programs for A103232, there is no canonical definition to state claims against.
-/

/-! ## A103232.P799038276756440382

`A123068(A008766(n+1)+1)`
-/

namespace A103232.P799038276756440382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A008766 (n + 1) + 1).toNat

end

end A103232.P799038276756440382

/-! ## A103232.P17130560974367212904

`xor(A062684(n+1), A178926(A273780(n)))`
-/

namespace A103232.P17130560974367212904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062684 (n + 1)) (A178926 (A273780 n).toNat)

end

end A103232.P17130560974367212904

/-! ## A103232.P1948349715144440103

`A062684(n+1)-A010894(A064148(n+1))`
-/

namespace A103232.P1948349715144440103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (n + 1) - A010894 ((A064148 (n + 1)).toNat + 21)

end

end A103232.P1948349715144440103

/-!
# A103234: Numbers k such that the k-th Euler number (A122045(k)) is prime.

The programs for A103234, there is no canonical definition to state claims against.
-/

/-! ## A103234.P1880800392272443868

`2*A014547(n+1)`
-/

namespace A103234.P1880800392272443868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014547 (n + 1)

end

end A103234.P1880800392272443868

/-!
# A103236: Triangular matrix T, read by rows, that satisfies: T^2 + 2*T = SHIFTUP(T), also T^(n+1) + 2*T^n = SHIFTUP(T^n - D*T^(n-1)) for all n, where D is a diagonal matrix with diagonal(D) = diagonal(T) = {1,2,3,...}.

The programs for A103236, there is no canonical definition to state claims against.
-/

/-! ## A103236.P11525606602721640278

`A003056(A183294(n+1)^A066121(n+1))`
-/

namespace A103236.P11525606602721640278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A183294 (n + 1) : ℚ) ^ (A066121 (n + 1) : ℤ))).toNat

end

end A103236.P11525606602721640278

/-! ## A103236.P15735717828632912068

`A003056(A183294(n+1)^A089353(n+1))`
-/

namespace A103236.P15735717828632912068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A183294 (n + 1) : ℚ) ^ (A089353 (n + 1) : ℤ))).toNat

end

end A103236.P15735717828632912068

/-! ## A103236.P10652710207769293882

`A003056(A063932(n+2)^A066121(n+1))`
-/

namespace A103236.P10652710207769293882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A063932 (n + 2) : ℚ) ^ (A066121 (n + 1) : ℤ))).toNat

end

end A103236.P10652710207769293882

/-!
# A103239: Column 0 of triangular matrix T = A103238, which satisfies: T^2 + T = SHIFTUP(T) where diagonal(T)={1,2,3,...}.

The programs for A103239, there is no canonical definition to state claims against.
-/

/-! ## A103239.P10274240934087762517

`A103238(∑[n])`
-/

namespace A103239.P10274240934087762517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103238 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103239.P10274240934087762517

/-! ## A103239.P9753387795598501040

`record[A103238(n)]`
-/

namespace A103239.P9753387795598501040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103239.P9753387795598501040

/-! ## A103239.P10694878809173793225

`A103238(n*(n+1)/2)^floor(n^(1/5))`
-/

namespace A103239.P10694878809173793225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103238 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℤ)

end

end A103239.P10694878809173793225

/-! ## A103239.P10497358782203012362

`and(-1, A103238(A000217(n)))`
-/

namespace A103239.P10497358782203012362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A103238 (A000217 n).toNat)

end

end A103239.P10497358782203012362

/-! ## A103239.P1387716469572316682

`A225413(n)+A103238(A000217(n))`
-/

namespace A103239.P1387716469572316682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A103238 (A000217 n).toNat

end

end A103239.P1387716469572316682

/-!
# A103240: Unreduced numerators of the elements T(n,k)/(n-k)!, read by rows, of the triangular matrix P^-1, which is the inverse of the matrix defined by P(n,k) = (-k^2)^(n-k)/(n-k)! for n >= k >= 1.

The programs for A103240, there is no canonical definition to state claims against.
-/

/-! ## A103240.P5328444675502198137

`A082169(∑[2*n]%comp[∑[n]])`
-/

namespace A103240.P5328444675502198137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082169 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103240.P5328444675502198137

/-! ## A103240.P15684663037797780749

`A082169(∑[char[∑[n]]]²-(n+1))`
-/

namespace A103240.P15684663037797780749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082169 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A103240.P15684663037797780749

/-! ## A103240.P1144360782159583747

`and(-1, A082169(A061579(n)))`
-/

namespace A103240.P1144360782159583747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082169 (A061579 n).toNat)

end

end A103240.P1144360782159583747

/-! ## A103240.P18387830796771561305

`A082169(A061579(n))*A262681(n)`
-/

namespace A103240.P18387830796771561305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082169 (A061579 n).toNat * A262681 n

end

end A103240.P18387830796771561305

/-! ## A103240.P13977819890438816976

`A082169(A061579(n))%A102866(n+3)`
-/

namespace A103240.P13977819890438816976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082169 (A061579 n).toNat) (A102866 (n + 3))

end

end A103240.P13977819890438816976

/-!
# A103241: Unreduced numerators of the elements T(n,k)/(n-k)!, read by rows, of the triangular matrix P^-1, which is the inverse of the matrix defined by P(n,k) = (-k^3)^(n-k)/(n-k)! for n >= k >= 1.

The programs for A103241, there is no canonical definition to state claims against.
-/

/-! ## A103241.P13073487221642212291

`A082170(∑[2*n]%comp[∑[n]])`
-/

namespace A103241.P13073487221642212291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082170 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103241.P13073487221642212291

/-! ## A103241.P4043733774030427226

`A082170(∑[char[∑[n]]]²-(n+1))`
-/

namespace A103241.P4043733774030427226
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082170 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A103241.P4043733774030427226

/-! ## A103241.P16782343006363356625

`and(-1, A082170(A061579(n)))`
-/

namespace A103241.P16782343006363356625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082170 (A061579 n).toNat)

end

end A103241.P16782343006363356625

/-! ## A103241.P3778704417805482564

`A082170(A061579(n))*A262681(n)`
-/

namespace A103241.P3778704417805482564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082170 (A061579 n).toNat * A262681 n

end

end A103241.P3778704417805482564

/-! ## A103241.P6097023769715624616

`gcd(A000038(n), A082170(A061579(n)))`
-/

namespace A103241.P6097023769715624616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082170 (A061579 n).toNat)

end

end A103241.P6097023769715624616

/-!
# A103242: Unreduced numerators of the elements T(n,k)/(n-k)!, read by rows, of the triangular matrix P^-1, which is the inverse of the matrix defined by P(n,k) = (1-(k+1)^2)^(n-k)/(n-k)! for n >= k >= 1.

The programs for A103242, there is no canonical definition to state claims against.
-/

/-! ## A103242.P9662601540542650897

`A082171(∑[2*n]%comp[∑[n]])`
-/

namespace A103242.P9662601540542650897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082171 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103242.P9662601540542650897

/-! ## A103242.P5097872832702955342

`A082171(∑[char[∑[n]]]²-(n+1))`
-/

namespace A103242.P5097872832702955342
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082171 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A103242.P5097872832702955342

/-! ## A103242.P3882214379226908841

`and(-1, A082171(A061579(n)))`
-/

namespace A103242.P3882214379226908841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082171 (A061579 n).toNat)

end

end A103242.P3882214379226908841

/-! ## A103242.P13326001254965037858

`A082171(A061579(n))*A262681(n)`
-/

namespace A103242.P13326001254965037858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082171 (A061579 n).toNat * A262681 n

end

end A103242.P13326001254965037858

/-! ## A103242.P10434265166029510655

`gcd(A000038(n), A082171(A061579(n)))`
-/

namespace A103242.P10434265166029510655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082171 (A061579 n).toNat)

end

end A103242.P10434265166029510655

/-!
# A103243: Unreduced numerators of the elements T(n,k)/(n-k)!, read by rows, of the triangular matrix P^-1, which is the inverse of the matrix defined by P(n,k) = (1-(k+1)^3)^(n-k)/(n-k)! for n >= k >= 1.

The programs for A103243, there is no canonical definition to state claims against.
-/

/-! ## A103243.P9349736303667533609

`A082172(∑[2*n]%comp[∑[n]])`
-/

namespace A103243.P9349736303667533609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082172 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A103243.P9349736303667533609

/-! ## A103243.P2535364009338888206

`A082172(∑[char[∑[n]]]²-(n+1))`
-/

namespace A103243.P2535364009338888206
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082172 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A103243.P2535364009338888206

/-! ## A103243.P18003407305698400096

`and(-1, A082172(A061579(n)))`
-/

namespace A103243.P18003407305698400096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082172 (A061579 n).toNat)

end

end A103243.P18003407305698400096

/-! ## A103243.P4046585201566782094

`A082172(A061579(n))*A262681(n)`
-/

namespace A103243.P4046585201566782094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082172 (A061579 n).toNat * A262681 n

end

end A103243.P4046585201566782094

/-! ## A103243.P7871885386115506489

`gcd(A000038(n), A082172(A061579(n)))`
-/

namespace A103243.P7871885386115506489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082172 (A061579 n).toNat)

end

end A103243.P7871885386115506489

/-!
# A103244: Unreduced numerators of the elements T(n,k)/(n-k)!, read by rows, of the triangular matrix P^-1, which is the inverse of the matrix defined by P(n,k) = (-k^2-k)^(n-k)/(n-k)! for n >= k >= 1.

The programs for A103244, there is no canonical definition to state claims against.
-/

/-! ## A103244.P11106660051757716110

`A303492(A167128(n+2))`
-/

namespace A103244.P11106660051757716110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303492 (A167128 (n + 2)).toNat

end

end A103244.P11106660051757716110

/-! ## A103244.P9341806628674568396

`A120707(or(n%2, A209149(n+1)))`
-/

namespace A103244.P9341806628674568396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120707 (Int.lor ((n % 2 : ℕ) : ℤ) (A209149 (n + 1))).toNat

end

end A103244.P9341806628674568396

/-! ## A103244.P16970586293592989832

`A000010(A103340(n+1)^A240451(n))`
-/

namespace A103244.P16970586293592989832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A103340 (n + 1) : ℚ) ^ (A240451 n : ℤ))).toNat

end

end A103244.P16970586293592989832

/-!
# A103245: Triangle read by rows: T(n,k) = binomial(2n+1, n-k)*Fibonacci(2k+1), 0 <= k <= n.

The programs for A103245, the canonical program `A103245.P10041254579713256490` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103245 has offset 0).

The definition of A103245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103245.P10041254579713256490

`A111418(n)*A144224(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103245

/-- `A111418(n)*A144224(n+1)` -/
def P10041254579713256490.Spec : Prop :=
  ∀ n, P10041254579713256490.a n = A103245 n

theorem P10041254579713256490.correct : P10041254579713256490.Spec := by
  intro n
  simp only [A103245]

end A103245

/-! ## A103245.P17455238039496818317

`A111418(n)*A122367(A002262(n))`
-/

namespace A103245.P17455238039496818317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n * A122367 (A002262 n).toNat

end

end A103245.P17455238039496818317

namespace A103245

/-- `A111418(n)*A122367(A002262(n))` -/
def P17455238039496818317.Spec : Prop :=
  ∀ n, P17455238039496818317.a n = A103245 n

end A103245

/-! ## A103245.P8501640412547642808

`A001519(A002260(n+1))*A111418(n)`
-/

namespace A103245.P8501640412547642808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002260 (n + 1)).toNat * A111418 n

end

end A103245.P8501640412547642808

namespace A103245

/-- `A001519(A002260(n+1))*A111418(n)` -/
def P8501640412547642808.Spec : Prop :=
  ∀ n, P8501640412547642808.a n = A103245 n

end A103245

/-! ## A103245.P9787006095091815659

`A000045(A158405(n+1))*A111418(n)`
-/

namespace A103245.P9787006095091815659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A158405 (n + 1)).toNat * A111418 n

end

end A103245.P9787006095091815659

namespace A103245

/-- `A000045(A158405(n+1))*A111418(n)` -/
def P9787006095091815659.Spec : Prop :=
  ∀ n, P9787006095091815659.a n = A103245 n

end A103245

/-! ## A103245.P13110126164160652780

`A104763(A185868(n+1))*A111418(n)`
-/

namespace A103245.P13110126164160652780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A185868 (n + 1)).toNat * A111418 n

end

end A103245.P13110126164160652780

namespace A103245

/-- `A104763(A185868(n+1))*A111418(n)` -/
def P13110126164160652780.Spec : Prop :=
  ∀ n, P13110126164160652780.a n = A103245 n

end A103245

/-! ## A103245.P8050667125774347893

`A111418(n)*A141169(A185869(n+1))`
-/

namespace A103245.P8050667125774347893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111418 n * A141169 (A185869 (n + 1)).toNat

end

end A103245.P8050667125774347893

namespace A103245

/-- `A111418(n)*A141169(A185869(n+1))` -/
def P8050667125774347893.Spec : Prop :=
  ∀ n, P8050667125774347893.a n = A103245 n

end A103245

/-!
# A103246: Numbers y, without duplication, in Pythagorean triples x,y,z where x,y,z are relatively prime composite numbers.

The programs for A103246, there is no canonical definition to state claims against.
-/

/-! ## A103246.P17562448468704282264

`record[A000265(A165160(n+2))]`
-/

namespace A103246.P17562448468704282264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A165160 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103246.P17562448468704282264

/-! ## A103246.P7713716973714325117

`filter[A165160(n+1), A000035(#)]`
-/

namespace A103246.P7713716973714325117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A103246.P7713716973714325117

/-! ## A103246.P8946097129204134960

`filter[A165160(n+1), A039982(#)]`
-/

namespace A103246.P8946097129204134960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A103246.P8946097129204134960

/-! ## A103246.P17737987179006576850

`filter[A165160(n+1), A098725(#)]`
-/

namespace A103246.P17737987179006576850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A103246.P17737987179006576850

/-! ## A103246.P7856315416996482302

`filter[A165160(n+1), A166486(#)]`
-/

namespace A103246.P7856315416996482302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A103246.P7856315416996482302

/-!
# A103247: Triangle read by rows: T(n,k) is the coefficient of x^k (0<=k<=n) in the monic characteristic polynomial of the n X n matrix with 3's on the diagonal and 1's elsewhere (n>=1). Row 0 consists of the single term 1.

The programs for A103247, there is no canonical definition to state claims against.
-/

/-! ## A103247.P17562257491398743503

`A001792(A025581(n))*A130595(n)`
-/

namespace A103247.P17562257491398743503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A025581 n).toNat * A130595 n

end

end A103247.P17562257491398743503

/-! ## A103247.P5266700500891067702

`A006520(A130321(n))*A130595(n)`
-/

namespace A103247.P5266700500891067702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006520 (A130321 n).toNat * A130595 n

end

end A103247.P5266700500891067702

/-! ## A103247.P5927572463036697231

`A130595(n)*A211164(A099375(n))`
-/

namespace A103247.P5927572463036697231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A211164 (A099375 n).toNat

end

end A103247.P5927572463036697231

/-! ## A103247.P13162977633072037970

`A001792(A025660(n+1))*A130595(n)`
-/

namespace A103247.P13162977633072037970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A025660 (n + 1)).toNat * A130595 n

end

end A103247.P13162977633072037970

/-! ## A103247.P1552630741788707036

`A001792(A025669(n+1))*A130595(n)`
-/

namespace A103247.P1552630741788707036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A025669 (n + 1)).toNat * A130595 n

end

end A103247.P1552630741788707036

/-!
# A103248: Numbers x, without duplication, in Pythagorean triples x,y,z where x,y,z are relatively prime composite numbers.

The programs for A103248, there is no canonical definition to state claims against.
-/

/-! ## A103248.P15687042173272227853

`∩[4*n, A165160(n+1)]`
-/

namespace A103248.P15687042173272227853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103248.P15687042173272227853

/-! ## A103248.P15653456180717645079

`record[A003815(A165160(n+1))]`
-/

namespace A103248.P15653456180717645079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A165160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103248.P15653456180717645079

/-! ## A103248.P991929706623681951

`filter[A165160(n+1), A011765(#)]`
-/

namespace A103248.P991929706623681951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A103248.P991929706623681951

/-! ## A103248.P14226371272629829926

`filter[A165160(n+1), A059841(#)]`
-/

namespace A103248.P14226371272629829926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A103248.P14226371272629829926

/-! ## A103248.P6275934407682920339

`filter[A165160(n+1), A108357(#)]`
-/

namespace A103248.P6275934407682920339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A103248.P6275934407682920339

/-!
# A103249: Numbers y, without duplication, in Pythagorean triples x,y,z where x,y,z are relatively prime composite numbers and x is a perfect square.

The programs for A103249, there is no canonical definition to state claims against.
-/

/-! ## A103249.P11273763550501811307

`∩[A072495(n+1), A349663(n+1)]`
-/

namespace A103249.P11273763550501811307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103249.P11273763550501811307

/-! ## A103249.P3680745932001703482

`∩[A075821(n+1), A349663(n+1)]`
-/

namespace A103249.P3680745932001703482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103249.P3680745932001703482

/-! ## A103249.P15030006137406631206

`∩[A219361(n+1), A349663(n+1)]`
-/

namespace A103249.P15030006137406631206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103249.P15030006137406631206

/-! ## A103249.P14375917357289791023

`∩[A246422(n+1), A349663(n+1)]`
-/

namespace A103249.P14375917357289791023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103249.P14375917357289791023

/-!
# A103250: Numbers x, without duplication, in Pythagorean triples x,y,z where x,y,z are relatively prime composite numbers and y is a perfect square.

The programs for A103250, there is no canonical definition to state claims against.
-/

/-! ## A103250.P2052541458556757875

`A048726(A351389(2*(n+3))+A282130(2*(n+1)))`
-/

namespace A103250.P2052541458556757875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 (A351389 (2 * (n + 3)) + A282130 (2 * (n + 1))).toNat

end

end A103250.P2052541458556757875

/-!
# A103251: Numbers x, without duplication, in Pythagorean triples x,y,z where x,y,z are relatively prime composite numbers and z is a perfect square.

The programs for A103251, there is no canonical definition to state claims against.
-/

/-! ## A103251.P12454439060524460551

`4*A009111(n+1)`
-/

namespace A103251.P12454439060524460551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A009111 (n + 1)

end

end A103251.P12454439060524460551

/-! ## A103251.P10708402387811604013

`A008574(A009111(n+1))`
-/

namespace A103251.P10708402387811604013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A009111 (n + 1)).toNat

end

end A103251.P10708402387811604013

/-! ## A103251.P12398657107187584251

`A195161(A009111(abs(xor(n, -1))))`
-/

namespace A103251.P12398657107187584251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A009111 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A103251.P12398657107187584251

/-! ## A103251.P11329064969628879987

`A195161(A009111(-xor(n, -1)))`
-/

namespace A103251.P11329064969628879987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A009111 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A103251.P11329064969628879987

/-! ## A103251.P3080429462256959227

`A047393(A009111(n+1)+1)`
-/

namespace A103251.P3080429462256959227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A009111 (n + 1) + 1).toNat

end

end A103251.P3080429462256959227

/-!
# A103252: Array A000292(n)*A000217(k), read by antidiagonals.

The programs for A103252, there is no canonical definition to state claims against.
-/

/-! ## A103252.P6138083234840292144

`∑{d}[A175840(n), A133700(#)]`
-/

namespace A103252.P6138083234840292144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133700 d

end

end A103252.P6138083234840292144

/-! ## A103252.P8398400164361215691

`∑{d}[A036561(n), A129628(#)]`
-/

namespace A103252.P8398400164361215691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A129628 d

end

end A103252.P8398400164361215691

/-! ## A103252.P17654603001164802457

`A326417(A175840(n))`
-/

namespace A103252.P17654603001164802457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (A175840 n).toNat

end

end A103252.P17654603001164802457

/-! ## A103252.P5246160576690019402

`∑{d}[A175840(n), A328484(#)]`
-/

namespace A103252.P5246160576690019402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A328484 d

end

end A103252.P5246160576690019402

/-! ## A103252.P18337469378879539462

`A326417(A059268(n)*A140303(n))`
-/

namespace A103252.P18337469378879539462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326417 (A059268 n * A140303 n).toNat

end

end A103252.P18337469378879539462

/-!
# A103253: Numbers y, without duplication, in Pythagorean triples x,y,z where x,y,z are relatively prime composite numbers and z is a perfect square.

The programs for A103253, there is no canonical definition to state claims against.
-/

/-! ## A103253.P12863881195121956572

`∩[A129816(n+1), A372665(n+1)]`
-/

namespace A103253.P12863881195121956572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103253.P12863881195121956572

/-!
# A103254: Positive integers x such that there exist positive integers y and z satisfying x^3 + y^3 = z^2.

The programs for A103254, there is no canonical definition to state claims against.
-/

/-! ## A103254.P8685475443119595673

`lt[0, A217735(n+1)]+1`
-/

namespace A103254.P8685475443119595673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A103254.P8685475443119595673

/-! ## A103254.P13520985134847628280

`A356720(lt[A185317(n), A000070(2*n)])`
-/

namespace A103254.P13520985134847628280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A103254.P13520985134847628280

/-!
# A103257: Number of partitions of 2n free of multiples of 5. All odd parts occur with multiplicity 2 or 4. the even parts occur at most twice.

The programs for A103257, there is no canonical definition to state claims against.
-/

/-! ## A103257.P7357482198648750882

`A103259(n)-A131852(A069646(n))`
-/

namespace A103257.P7357482198648750882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103259 n - A131852 (A069646 n).toNat

end

end A103257.P7357482198648750882

/-! ## A103257.P14492878011479627231

`A103259(n)-A025466(A016825(A095064(n+1)))`
-/

namespace A103257.P14492878011479627231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103259 n - A025466 (A016825 (A095064 (n + 1)).toNat).toNat

end

end A103257.P14492878011479627231

/-! ## A103257.P5087781564838361068

`A109680(A103259(n))`
-/

namespace A103257.P5087781564838361068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A103259 n).toNat

end

end A103257.P5087781564838361068

/-! ## A103257.P8379485180366831341

`record[A103259(A225633(n))]`
-/

namespace A103257.P8379485180366831341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103259 (A225633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103257.P8379485180366831341

/-!
# A103258: G.f. = theta_4(0,x^4)/theta_4(0,x).

The programs for A103258, there is no canonical definition to state claims against.
-/

/-! ## A103258.P8986154455044034729

`and(A100684(n), A274661(A027379(n)))`
-/

namespace A103258.P8986154455044034729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100684 n) (A274661 (A027379 n).toNat)

end

end A103258.P8986154455044034729

/-! ## A103258.P15571079477615556973

`and(A100684(n), A276441(A083318(n)))`
-/

namespace A103258.P15571079477615556973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100684 n) (A276441 (A083318 n).toNat)

end

end A103258.P15571079477615556973

/-! ## A103258.P16772686732019145759

`A100684(n)-A185284(A008578(n+1))`
-/

namespace A103258.P16772686732019145759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100684 n - A185284 (A008578 (n + 1)).toNat

end

end A103258.P16772686732019145759

/-! ## A103258.P15184850881588741670

`A109680(A100684(n))`
-/

namespace A103258.P15184850881588741670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A100684 n).toNat

end

end A103258.P15184850881588741670

/-! ## A103258.P17177836297454746105

`A100684(n)+A000007(A100720(n))`
-/

namespace A103258.P17177836297454746105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100684 n + A000007 (A100720 n).toNat

end

end A103258.P17177836297454746105

/-!
# A103259: Number of partitions of 2n prime to 3,5 with all odd parts occurring with even multiplicities. There is no restriction on the even parts.

The programs for A103259, there is no canonical definition to state claims against.
-/

/-! ## A103259.P12004784527443543875

`A145728(n)*A280560(n)`
-/

namespace A103259.P12004784527443543875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145728 n * A280560 n

end

end A103259.P12004784527443543875

/-! ## A103259.P1153547672104108033

`A094023(n)+A094023(n)%A094023(n+1)`
-/

namespace A103259.P1153547672104108033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 n + Int.tmod (A094023 n) (A094023 (n + 1))

end

end A103259.P1153547672104108033

/-! ## A103259.P1678727989129668324

`A036453(2*n+1)*A094023(n)`
-/

namespace A103259.P1678727989129668324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A094023 n

end

end A103259.P1678727989129668324

/-!
# A103261: Number of partitions of 2n into parts with 10 types c^1 c^2...C^10 of each part. The even parts appear with multiplicity 1 for each type . The odd parts occur with multiplicity 2 for each part.

The programs for A103261, there is no canonical definition to state claims against.
-/

/-! ## A103261.P1758282774009523087

`A000005(A008543(n))*A008413(n)`
-/

namespace A103261.P1758282774009523087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008543 n).toNat * A008413 n

end

end A103261.P1758282774009523087

/-!
# A103262: McKay-Thompson series of class 36g for the Monster group.

The programs for A103262, there is no canonical definition to state claims against.
-/

/-! ## A103262.P1279758080327439599

`record[A112174(n)]`
-/

namespace A103262.P1279758080327439599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112174 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103262.P1279758080327439599

/-! ## A103262.P7319936827041283288

`A112174(3*n)`
-/

namespace A103262.P7319936827041283288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112174 (3 * n)

end

end A103262.P7319936827041283288

/-!
# A103265: Number of partitions of n in which both even and odd square parts occur in 2 forms c, c* and with multiplicity 1. There is no restriction on parts which are twice squares.

The programs for A103265, there is no canonical definition to state claims against.
-/

/-! ## A103265.P11754557323314423011

`A141310(A000225(n))*A339364(2*n)`
-/

namespace A103265.P11754557323314423011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A000225 n).toNat * A339364 (2 * n)

end

end A103265.P11754557323314423011

/-!
# A103266: Minimal number of squares needed to sum to Fibonacci(n+1).

The programs for A103266, there is no canonical definition to state claims against.
-/

/-! ## A103266.P17154428003312070601

`A002828(A000045(n+2))`
-/

namespace A103266.P17154428003312070601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000045 (n + 2)).toNat

end

end A103266.P17154428003312070601

/-! ## A103266.P9803361521885209477

`A002828(A209435(∑[A266258(n)]))`
-/

namespace A103266.P9803361521885209477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A209435 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A103266.P9803361521885209477

/-! ## A103266.P2957839982712853053

`A002828(lcm(A000034(n), A135992(n+1)))`
-/

namespace A103266.P2957839982712853053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.lcm (A000034 n) (A135992 (n + 1)))

end

end A103266.P2957839982712853053

/-!
# A103267: Positive integers x such that there exist positive integers y and z satisfying y^3 - x^3 = z^4.

The programs for A103267, there is no canonical definition to state claims against.
-/

/-! ## A103267.P6329851304681804254

`A330943(A337485(n)+A110702(n+1))`
-/

namespace A103267.P6329851304681804254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330943 (A337485 n + A110702 (n + 1)).toNat

end

end A103267.P6329851304681804254

/-!
# A103268: Positive integers x such that there exist positive integers y and z satisfying x^3 + y^3 = z^5.

The programs for A103268, there is no canonical definition to state claims against.
-/

/-! ## A103268.P15107022121941968563

`A385457(A172037(n+1))`
-/

namespace A103268.P15107022121941968563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385457 (A172037 (n + 1)).toNat

end

end A103268.P15107022121941968563

/-! ## A103268.P12446207196462170266

`record[A071044(∑[A240742(n)])]`
-/

namespace A103268.P12446207196462170266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240742 (n + 28)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103268.P12446207196462170266

/-!
# A103270: a(n) = (prime(n)+prime(n+k)) mod 4, where k = (prime(n+1)-prime(n))/2.

The programs for A103270, there is no canonical definition to state claims against.
-/

/-! ## A103270.P10413984430907027958

`and(A325275(n), A325414(∏{p}[n+1, #+1]))`
-/

namespace A103270.P10413984430907027958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325275 n) (A325414 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)))

end

end A103270.P10413984430907027958

/-! ## A103270.P7408559309392900142

`A319164(gcd(A164928(n+1), A281462(n+1)))`
-/

namespace A103270.P7408559309392900142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319164 (Int.gcd (A164928 (n + 1)) (A281462 (n + 1)))

end

end A103270.P7408559309392900142

/-! ## A103270.P17575487658427165700

`and(A281802(A277881(n+1)), A335383(n+2))`
-/

namespace A103270.P17575487658427165700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281802 (A277881 (n + 1)).toNat) (A335383 (n + 2))

end

end A103270.P17575487658427165700

/-! ## A103270.P2425502212647553039

`A036272(A001269(n))%4`
-/

namespace A103270.P2425502212647553039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036272 (A001269 n).toNat) 4

end

end A103270.P2425502212647553039

/-! ## A103270.P16455859836670027018

`and(2, A325937(A172528(n)))`
-/

namespace A103270.P16455859836670027018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A325937 (A172528 n).toNat)

end

end A103270.P16455859836670027018

/-!
# A103271: a(n) = (prime(n)+prime(n+1)) mod 4.

The programs for A103271, the canonical program `A103271.P8583482951631801752` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103271 has offset 1).

The definition of A103271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103271.P8583482951631801752

`2-A080378(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A103271

/-- `2-A080378(n+1)` -/
def P8583482951631801752.Spec : Prop :=
  ∀ n, P8583482951631801752.a n = A103271 (n + 1)

theorem P8583482951631801752.correct : P8583482951631801752.Spec := by
  intro n
  simp only [A103271, Nat.add_sub_cancel]

end A103271

/-! ## A103271.P10881276925623629452

`A001043(n+1)%4`
-/

namespace A103271.P10881276925623629452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001043 (n + 1)) 4

end

end A103271.P10881276925623629452

namespace A103271

/-- `A001043(n+1)%4` -/
def P10881276925623629452.Spec : Prop :=
  ∀ n, P10881276925623629452.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P1843438790940612883

`A011974(n+2)%4`
-/

namespace A103271.P1843438790940612883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011974 (n + 2)) 4

end

end A103271.P1843438790940612883

namespace A103271

/-- `A011974(n+2)%4` -/
def P1843438790940612883.Spec : Prop :=
  ∀ n, P1843438790940612883.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P7087358929259058262

`and(3, -A133534(n+1))`
-/

namespace A103271.P7087358929259058262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A133534 (n + 1))

end

end A103271.P7087358929259058262

namespace A103271

/-- `and(3, -A133534(n+1))` -/
def P7087358929259058262.Spec : Prop :=
  ∀ n, P7087358929259058262.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P2757994319374232036

`2-A001223(n+1)%4`
-/

namespace A103271.P2757994319374232036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A001223 (n + 1)) 4

end

end A103271.P2757994319374232036

namespace A103271

/-- `2-A001223(n+1)%4` -/
def P2757994319374232036.Spec : Prop :=
  ∀ n, P2757994319374232036.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P3061073024063072120

`and(3, -(A006094(n+1)+1))`
-/

namespace A103271.P3061073024063072120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(A006094 (n + 1) + 1))

end

end A103271.P3061073024063072120

namespace A103271

/-- `and(3, -(A006094(n+1)+1))` -/
def P3061073024063072120.Spec : Prop :=
  ∀ n, P3061073024063072120.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P1643635579493941371

`2-C(2, A023520(n+2)²)`
-/

namespace A103271.P1643635579493941371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A023520 (n + 2) ^ 2).toNat : ℤ)

end

end A103271.P1643635579493941371

namespace A103271

/-- `2-C(2, A023520(n+2)²)` -/
def P1643635579493941371.Spec : Prop :=
  ∀ n, P1643635579493941371.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P3658595796775049135

`A004530(A076821(n+1))`
-/

namespace A103271.P3658595796775049135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A076821 (n + 1)).toNat

end

end A103271.P3658595796775049135

namespace A103271

/-- `A004530(A076821(n+1))` -/
def P3658595796775049135.Spec : Prop :=
  ∀ n, P3658595796775049135.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P1733038000960028898

`A091085(A046933(n+1))`
-/

namespace A103271.P1733038000960028898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091085 (A046933 (n + 1)).toNat

end

end A103271.P1733038000960028898

namespace A103271

/-- `A091085(A046933(n+1))` -/
def P1733038000960028898.Spec : Prop :=
  ∀ n, P1733038000960028898.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P1448803026102396998

`A107279(A074927(n+1))`
-/

namespace A103271.P1448803026102396998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A074927 (n + 1)).toNat

end

end A103271.P1448803026102396998

namespace A103271

/-- `A107279(A074927(n+1))` -/
def P1448803026102396998.Spec : Prop :=
  ∀ n, P1448803026102396998.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P13329136431169990295

`A098178(A191472(n+1))`
-/

namespace A103271.P13329136431169990295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A191472 (n + 1)).toNat

end

end A103271.P13329136431169990295

namespace A103271

/-- `A098178(A191472(n+1))` -/
def P13329136431169990295.Spec : Prop :=
  ∀ n, P13329136431169990295.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P17201170889197754395

`A130706(A237881(n+1))`
-/

namespace A103271.P17201170889197754395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A237881 (n + 1)).toNat

end

end A103271.P17201170889197754395

namespace A103271

/-- `A130706(A237881(n+1))` -/
def P17201170889197754395.Spec : Prop :=
  ∀ n, P17201170889197754395.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P6997808598469644333

`A080378(A100374(n+1)²)`
-/

namespace A103271.P6997808598469644333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (A100374 (n + 1) ^ 2).toNat

end

end A103271.P6997808598469644333

namespace A103271

/-- `A080378(A100374(n+1)²)` -/
def P6997808598469644333.Spec : Prop :=
  ∀ n, P6997808598469644333.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P1560529912894154523

`A007877(A001223(n+1)+2)`
-/

namespace A103271.P1560529912894154523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A001223 (n + 1) + 2).toNat

end

end A103271.P1560529912894154523

namespace A103271

/-- `A007877(A001223(n+1)+2)` -/
def P1560529912894154523.Spec : Prop :=
  ∀ n, P1560529912894154523.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P1550403778776875316

`A007877(A191472(n+1)+2)`
-/

namespace A103271.P1550403778776875316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A191472 (n + 1) + 2).toNat

end

end A103271.P1550403778776875316

namespace A103271

/-- `A007877(A191472(n+1)+2)` -/
def P1550403778776875316.Spec : Prop :=
  ∀ n, P1550403778776875316.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P14106291243308767077

`A098764(n+1)%A040002(n)`
-/

namespace A103271.P14106291243308767077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098764 (n + 1)) (A040002 n)

end

end A103271.P14106291243308767077

namespace A103271

/-- `A098764(n+1)%A040002(n)` -/
def P14106291243308767077.Spec : Prop :=
  ∀ n, P14106291243308767077.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P10256670356997839147

`A133534(n+1)%A040002(n)`
-/

namespace A103271.P10256670356997839147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133534 (n + 1)) (A040002 n)

end

end A103271.P10256670356997839147

namespace A103271

/-- `A133534(n+1)%A040002(n)` -/
def P10256670356997839147.Spec : Prop :=
  ∀ n, P10256670356997839147.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P18100048003859640935

`A133536(n+1)%A040002(n)`
-/

namespace A103271.P18100048003859640935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133536 (n + 1)) (A040002 n)

end

end A103271.P18100048003859640935

namespace A103271

/-- `A133536(n+1)%A040002(n)` -/
def P18100048003859640935.Spec : Prop :=
  ∀ n, P18100048003859640935.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P8164162509557738480

`A133538(n+1)%A040002(n)`
-/

namespace A103271.P8164162509557738480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133538 (n + 1)) (A040002 n)

end

end A103271.P8164162509557738480

namespace A103271

/-- `A133538(n+1)%A040002(n)` -/
def P8164162509557738480.Spec : Prop :=
  ∀ n, P8164162509557738480.a n = A103271 (n + 1)

end A103271

/-! ## A103271.P2847150756430291101

`A247474(n+1)%A267649(n)`
-/

namespace A103271.P2847150756430291101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247474 (n + 1)) (A267649 n)

end

end A103271.P2847150756430291101

namespace A103271

/-- `A247474(n+1)%A267649(n)` -/
def P2847150756430291101.Spec : Prop :=
  ∀ n, P2847150756430291101.a n = A103271 (n + 1)

end A103271

/-!
# A103272: a(n) = (prime(n-k) + prime(n)) mod 4, where k = (1/2)*(prime(n+1) - prime(n)).

The programs for A103272, there is no canonical definition to state claims against.
-/

/-! ## A103272.P9580386380742045490

`A161364(A061142(A319384(n))²)`
-/

namespace A103272.P9580386380742045490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161364 (A061142 (A319384 n).toNat ^ 2).toNat

end

end A103272.P9580386380742045490

/-! ## A103272.P4542045132448233251

`and(A270641(A022302(n)), A280263(n))`
-/

namespace A103272.P4542045132448233251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270641 (A022302 n).toNat) (A280263 n)

end

end A103272.P4542045132448233251

/-! ## A103272.P3027251660983483036

`and(A052548(n), A261312(A174909(n+1)))`
-/

namespace A103272.P3027251660983483036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052548 n) (A261312 (A174909 (n + 1)).toNat)

end

end A103272.P3027251660983483036

/-!
# A103273: Number of ways of writing prime(n)-1 in the form prime(i)+prime(j).

The programs for A103273, there is no canonical definition to state claims against.
-/

/-! ## A103273.P1867176182329865727

`A068307(p?[xor(1, n)]+1)`
-/

namespace A103273.P1867176182329865727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A103273.P1867176182329865727

/-! ## A103273.P8843749805564647675

`A061358(p?[xor(1, n)]-1)`
-/

namespace A103273.P8843749805564647675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A103273.P8843749805564647675

/-! ## A103273.P3032354084429504806

`A068307(p?[n%3+n]+1)`
-/

namespace A103273.P3032354084429504806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A103273.P3032354084429504806

/-! ## A103273.P15871504810555408147

`A061358(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A103273.P15871504810555408147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A103273.P15871504810555408147

/-! ## A103273.P11692822870964834724

`A068307(p?[round(4*2*n/7)]+1)`
-/

namespace A103273.P11692822870964834724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((2 * n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A103273.P11692822870964834724

/-! ## A103273.P7603708267556686538

`A061358(A006093(n+1))`
-/

namespace A103273.P7603708267556686538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A006093 (n + 1)).toNat

end

end A103273.P7603708267556686538

/-! ## A103273.P616879308895515972

`A068307(A008864(n+1))`
-/

namespace A103273.P616879308895515972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A008864 (n + 1)).toNat

end

end A103273.P616879308895515972

/-! ## A103273.P15694163548906669300

`A068307(A028815(n+1))`
-/

namespace A103273.P15694163548906669300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A028815 (n + 1)).toNat

end

end A103273.P15694163548906669300

/-! ## A103273.P16395684597558518009

`A061358(A039915(n+1))`
-/

namespace A103273.P16395684597558518009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A039915 (n + 1)).toNat

end

end A103273.P16395684597558518009

/-! ## A103273.P9919211806822764041

`A068307(A055670(n+1))`
-/

namespace A103273.P9919211806822764041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A055670 (n + 1)).toNat

end

end A103273.P9919211806822764041

/-!
# A103274: Number of ways of writing prime(n) in the form 2*prime(i)+prime(j).

The programs for A103274, there is no canonical definition to state claims against.
-/

/-! ## A103274.P2917080439314254493

`A046926(p?[comp[n²]])`
-/

namespace A103274.P2917080439314254493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A103274.P2917080439314254493

/-! ## A103274.P16870053660930678614

`A046926(A000040(n+1))`
-/

namespace A103274.P16870053660930678614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A000040 (n + 1)).toNat

end

end A103274.P16870053660930678614

/-! ## A103274.P15179834618691856336

`A046926(A006005(n+1))`
-/

namespace A103274.P15179834618691856336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A006005 (n + 1)).toNat

end

end A103274.P15179834618691856336

/-! ## A103274.P8940768661849898829

`A046927(A102781(n+1))`
-/

namespace A103274.P8940768661849898829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (A102781 (n + 1)).toNat

end

end A103274.P8940768661849898829

/-! ## A103274.P6899227705151656044

`A046927(A130290(n+1))`
-/

namespace A103274.P6899227705151656044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (A130290 (n + 1)).toNat

end

end A103274.P6899227705151656044

/-! ## A103274.P7201159293365987644

`A046926(A161847(n+1))`
-/

namespace A103274.P7201159293365987644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A161847 (n + 1)).toNat

end

end A103274.P7201159293365987644

/-! ## A103274.P524614079236950065

`A046926(A008578(n+2))`
-/

namespace A103274.P524614079236950065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A008578 (n + 2)).toNat

end

end A103274.P524614079236950065

/-! ## A103274.P14660148811505842033

`A046926(A075643(n+2))`
-/

namespace A103274.P14660148811505842033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A075643 (n + 2)).toNat

end

end A103274.P14660148811505842033

/-! ## A103274.P9029577291047397887

`A046926(A171525(n+2))`
-/

namespace A103274.P9029577291047397887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A171525 (n + 2)).toNat

end

end A103274.P9029577291047397887

/-! ## A103274.P3243935900100525035

`A046926(A175787(n+2))`
-/

namespace A103274.P3243935900100525035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A175787 (n + 2)).toNat

end

end A103274.P3243935900100525035

/-! ## A103274.P10381046468636555110

`A046926(A182986(n+2))`
-/

namespace A103274.P10381046468636555110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A182986 (n + 2)).toNat

end

end A103274.P10381046468636555110

/-! ## A103274.P7596579743951889747

`A046926(record[A006530(n+2)])`
-/

namespace A103274.P7596579743951889747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103274.P7596579743951889747

/-! ## A103274.P7249530709979389975

`A046926(record[A014963(n+2)])`
-/

namespace A103274.P7249530709979389975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103274.P7249530709979389975

/-! ## A103274.P12458971368082680844

`A046926(record[A020639(n+2)])`
-/

namespace A103274.P12458971368082680844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103274.P12458971368082680844

/-! ## A103274.P14940939436265738735

`A046926(A037168(n+1)/2+1)`
-/

namespace A103274.P14940939436265738735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (SequenceMachineLib.roundAway ((A037168 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A103274.P14940939436265738735

/-! ## A103274.P13774612067677603414

`A046926(eq[2, A000005(n+1)]+1)`
-/

namespace A103274.P13774612067677603414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A103274.P13774612067677603414

/-! ## A103274.P15295447378195054877

`A046927(lt[n², A103164(2*n+1)])`
-/

namespace A103274.P15295447378195054877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A103274.P15295447378195054877

/-! ## A103274.P10895653414224904244

`A046926(eq[1, A046926(2*(n+1))])`
-/

namespace A103274.P10895653414224904244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103274.P10895653414224904244

/-! ## A103274.P3764996520453397052

`A046926(lt[acot(1), A046926(2*(n+1))])`
-/

namespace A103274.P3764996520453397052
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A103274.P3764996520453397052

/-! ## A103274.P7289897416818135540

`A046926(eq[0, A341702(n)])`
-/

namespace A103274.P7289897416818135540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103274.P7289897416818135540

/-!
# A103275: a(n)=Sum( Product p_i, {Sum p_i=prime(n)}, p_i is prime ).

The programs for A103275, there is no canonical definition to state claims against.
-/

/-! ## A103275.P10863894287071736111

`A002098(abs(p?[round(8*n/7)]-2)+2)`
-/

namespace A103275.P10863894287071736111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002098 (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 2).toNat

end

end A103275.P10863894287071736111

/-! ## A103275.P5537380220509071553

`A002098(A051599(∑[n]))`
-/

namespace A103275.P5537380220509071553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002098 (A051599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A103275.P5537380220509071553

/-! ## A103275.P14405938426017003636

`A002098(Δ[A007504(n)])`
-/

namespace A103275.P14405938426017003636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002098 (f1 (n + 1) - f1 n).toNat

end

end A103275.P14405938426017003636

/-! ## A103275.P16639376149742398997

`A002098(p?[A130472(n)])`
-/

namespace A103275.P16639376149742398997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002098 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103275.P16639376149742398997

/-! ## A103275.P12553222832430733951

`A002098(A000040(n+1))`
-/

namespace A103275.P12553222832430733951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002098 (A000040 (n + 1)).toNat

end

end A103275.P12553222832430733951

/-!
# A103276: a(n) = (prime(n+1) + prime(k))/prime(n), where k is the smallest number such that prime(n+1) + prime(k)==0 mod prime(n), n+1 < k.

The programs for A103276, there is no canonical definition to state claims against.
-/

/-! ## A103276.P2660490077276970195

`A052126(A339691(n+1)+A065091(n+1))`
-/

namespace A103276.P2660490077276970195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A339691 (n + 1) + A065091 (n + 1)).toNat

end

end A103276.P2660490077276970195

/-!
# A103277: Smallest i such that there exists j such that i = x + y + z, j = x*y*z has exactly n solutions in positive integers x <= y <= z.

The programs for A103277, there is no canonical definition to state claims against.
-/

/-! ## A103277.P6887521885923948045

`A226937(A055235(n))+A005891(n)`
-/

namespace A103277.P6887521885923948045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226937 (A055235 n).toNat + A005891 n

end

end A103277.P6887521885923948045

/-!
# A103279: Array read by antidiagonals, generated by the matrix M = [1,1,1;1,N,1;1,1,1].

The programs for A103279, there is no canonical definition to state claims against.
-/

/-! ## A103279.P2810506046877102223

`A208517(comp[∑[n]]%A256109(n+1))`
-/

namespace A103279.P2810506046877102223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208517 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A256109 (n + 1))).toNat

end

end A103279.P2810506046877102223

/-! ## A103279.P10422386109961757133

`A208517(A077168(n)+A002024(n+1))`
-/

namespace A103279.P10422386109961757133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208517 (A077168 n + A002024 (n + 1)).toNat

end

end A103279.P10422386109961757133

/-! ## A103279.P13126387219357367540

`A208517(A014132(n+1)%A328381(n+1))`
-/

namespace A103279.P13126387219357367540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208517 (Int.tmod (A014132 (n + 1)) (A328381 (n + 1))).toNat

end

end A103279.P13126387219357367540

/-! ## A103279.P14910194116778800893

`A337020(A208527(n+1)+1)`
-/

namespace A103279.P14910194116778800893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337020 (A208527 (n + 1) + 1).toNat

end

end A103279.P14910194116778800893

/-! ## A103279.P5958880029904098839

`A208517(comp[∑[n]]^A337337(n+1))`
-/

namespace A103279.P5958880029904098839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208517 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) ^ (A337337 (n + 1) : ℤ))).toNat

end

end A103279.P5958880029904098839

/-!
# A103280: Array read by antidiagonals, generated by the matrix M = [1,1,1;1,N,1;1,1,1].

The programs for A103280, there is no canonical definition to state claims against.
-/

/-! ## A103280.P11134627157315069924

`A162439(A194583(n))`
-/

namespace A103280.P11134627157315069924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162439 (A194583 n).toNat

end

end A103280.P11134627157315069924

/-! ## A103280.P18383157853095174584

`A274061(A375353(n+1))`
-/

namespace A103280.P18383157853095174584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274061 (A375353 (n + 1)).toNat

end

end A103280.P18383157853095174584

/-! ## A103280.P10035189440830058193

`A030237(n+1)+A007949(A253853(n))`
-/

namespace A103280.P10035189440830058193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 (n + 1) + A007949 (A253853 n).toNat

end

end A103280.P10035189440830058193

/-! ## A103280.P2146367811526143654

`A115871(A156914(n))`
-/

namespace A103280.P2146367811526143654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A156914 n).toNat

end

end A103280.P2146367811526143654

/-! ## A103280.P17837646115142931680

`A081422(comp[∑[n-1]]^A061674(n))`
-/

namespace A103280.P17837646115142931680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081422 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A103280.P17837646115142931680

/-!
# A103283: Triangle read by rows: T(n,k) is the coefficient of x^k in the monic characteristic polynomial of the n X n matrix with 2's on the diagonal and 1's elsewhere (n >= 1 and 0 <= k <= n). Row 0 consists of the single term 1.

The programs for A103283, the canonical program `A103283.P12453437943033002142` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103283 has offset 0).

The definition of A103283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103283.P8536207840113672167

`(C(comp[∑[n]]-n, 2)-n)*A130595(n)`
-/

namespace A103283.P8536207840113672167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A130595 n

end

end A103283.P8536207840113672167

namespace A103283

/-- `(C(comp[∑[n]]-n, 2)-n)*A130595(n)` -/
def P8536207840113672167.Spec : Prop :=
  ∀ n, P8536207840113672167.a n = A103283 n

end A103283

/-! ## A103283.P10152246663362320136

`(and(2, comp[∑[n]]+n)-1)*A093375(n+1)`
-/

namespace A103283.P10152246663362320136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A093375 (n + 1)

end

end A103283.P10152246663362320136

namespace A103283

/-- `(and(2, comp[∑[n]]+n)-1)*A093375(n+1)` -/
def P10152246663362320136.Spec : Prop :=
  ∀ n, P10152246663362320136.a n = A103283 n

end A103283

/-! ## A103283.P13220860020698948502

`A004736(n+1)*A130595(n)`
-/

namespace A103283.P13220860020698948502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A130595 n

end

end A103283.P13220860020698948502

namespace A103283

/-- `A004736(n+1)*A130595(n)` -/
def P13220860020698948502.Spec : Prop :=
  ∀ n, P13220860020698948502.a n = A103283 n

end A103283

/-! ## A103283.P18357742633412211591

`(A025581(n)+1)*A130595(n)`
-/

namespace A103283.P18357742633412211591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A130595 n

end

end A103283.P18357742633412211591

namespace A103283

/-- `(A025581(n)+1)*A130595(n)` -/
def P18357742633412211591.Spec : Prop :=
  ∀ n, P18357742633412211591.a n = A103283 n

end A103283

/-! ## A103283.P12453437943033002142

`A093375(n+1)*A097807(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A103283

/-- `A093375(n+1)*A097807(n)` -/
def P12453437943033002142.Spec : Prop :=
  ∀ n, P12453437943033002142.a n = A103283 n

theorem P12453437943033002142.correct : P12453437943033002142.Spec := by
  intro n
  simp only [A103283]

end A103283

/-! ## A103283.P1048558734803742814

`A141611(n)/A140756(n+1)`
-/

namespace A103283.P1048558734803742814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A103283.P1048558734803742814

namespace A103283

/-- `A141611(n)/A140756(n+1)` -/
def P1048558734803742814.Spec : Prop :=
  ∀ n, P1048558734803742814.a n = (A103283 n : ℚ)

end A103283

/-! ## A103283.P10515360783514728107

`sqrt(A055461(n+1))*A130595(n)`
-/

namespace A103283.P10515360783514728107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A130595 n : ℝ)

end

end A103283.P10515360783514728107

namespace A103283

/-- `sqrt(A055461(n+1))*A130595(n)` -/
def P10515360783514728107.Spec : Prop :=
  ∀ n, P10515360783514728107.a n = (A103283 n : ℝ)

end A103283

/-! ## A103283.P10450904142833559855

`A130595(n)+A144388(n)-A007318(n)`
-/

namespace A103283.P10450904142833559855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + (A144388 n - A007318 n)

end

end A103283.P10450904142833559855

namespace A103283

/-- `A130595(n)+A144388(n)-A007318(n)` -/
def P10450904142833559855.Spec : Prop :=
  ∀ n, P10450904142833559855.a n = A103283 n

end A103283

/-! ## A103283.P597955283601760887

`A104684(n)/A060693(n)*A130595(n)`
-/

namespace A103283.P597955283601760887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A060693 n : ℚ) * (A130595 n : ℚ)

end

end A103283.P597955283601760887

namespace A103283

/-- `A104684(n)/A060693(n)*A130595(n)` -/
def P597955283601760887.Spec : Prop :=
  ∀ n, P597955283601760887.a n = (A103283 n : ℚ)

end A103283

/-! ## A103283.P15238603213024109116

`A156992(n+1)/A078921(n+1)`
-/

namespace A103283.P15238603213024109116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A078921 (n + 1) : ℚ)

end

end A103283.P15238603213024109116

namespace A103283

/-- `A156992(n+1)/A078921(n+1)` -/
def P15238603213024109116.Spec : Prop :=
  ∀ n, P15238603213024109116.a n = (A103283 n : ℚ)

end A103283

/-!
# A103284: Triangle, read by rows, where row n+1 is formed by sorting, in ascending order, the result of the convolution of row n with {1,1}.

The programs for A103284, there is no canonical definition to state claims against.
-/

/-! ## A103284.P5575933132857207942

`A167439(A224652(n+1))`
-/

namespace A103284.P5575933132857207942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A224652 (n + 1)).toNat

end

end A103284.P5575933132857207942

/-! ## A103284.P12384418642268183065

`A324907(A157404(n+1))`
-/

namespace A103284.P12384418642268183065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324907 (A157404 (n + 1)).toNat

end

end A103284.P12384418642268183065

/-! ## A103284.P11659660507136941793

`A324672(A324684(n))+A179009(n)`
-/

namespace A103284.P11659660507136941793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A324684 n).toNat + A179009 n

end

end A103284.P11659660507136941793

/-! ## A103284.P15403753528402440750

`A331244(A054115(n))`
-/

namespace A103284.P15403753528402440750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331244 (A054115 n).toNat

end

end A103284.P15403753528402440750

/-!
# A103285: Main diagonal of triangle A103284, in which row n+1 is formed by sorting, in ascending order, the result of the convolution of row n with {1,1}.

The programs for A103285, there is no canonical definition to state claims against.
-/

/-! ## A103285.P127519826450173370

`A103284(∑[n]+n)`
-/

namespace A103285.P127519826450173370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A103285.P127519826450173370

/-! ## A103285.P13605949810179651141

`abs(A103284(A000096(n))-1)+1`
-/

namespace A103285.P13605949810179651141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103284 (A000096 n).toNat - 1| + 1

end

end A103285.P13605949810179651141

/-! ## A103285.P18397018308818812540

`A103284(A000096(n))%A008776(n)`
-/

namespace A103285.P18397018308818812540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103284 (A000096 n).toNat) (A008776 n)

end

end A103285.P18397018308818812540

/-! ## A103285.P7213213327702441406

`or(A000007(n), A103284(A000096(n)))`
-/

namespace A103285.P7213213327702441406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A103284 (A000096 n).toNat)

end

end A103285.P7213213327702441406

/-! ## A103285.P16945459179871709741

`A033999(n)²*A103284(A000096(n))`
-/

namespace A103285.P16945459179871709741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A103284 (A000096 n).toNat

end

end A103285.P16945459179871709741

/-! ## A103285.P6933409975750614822

`A000034(2*n)*A103284(A000096(n))`
-/

namespace A103285.P6933409975750614822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A103284 (A000096 n).toNat

end

end A103285.P6933409975750614822

/-! ## A103285.P8054819728621764423

`char[A038722(n+1)-1]*A103284(A000096(n))`
-/

namespace A103285.P8054819728621764423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A103284 (A000096 n).toNat

end

end A103285.P8054819728621764423

/-! ## A103285.P12337707202490529117

`A103284(A000096(n))+A000007(A028310(n))`
-/

namespace A103285.P12337707202490529117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 (A000096 n).toNat + A000007 (A028310 n).toNat

end

end A103285.P12337707202490529117

/-! ## A103285.P11856958200377921207

`A103284(A000096(n))+A008683(A046101(n+1))`
-/

namespace A103285.P11856958200377921207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 (A000096 n).toNat + A008683 (A046101 (n + 1)).toNat

end

end A103285.P11856958200377921207

/-!
# A103287: Main diagonal of triangle A103286, in which row n+1 is formed by sorting, in ascending order, the result of the convolution of row n with {2,1}.

The programs for A103287, there is no canonical definition to state claims against.
-/

/-! ## A103287.P11972098056622528663

`A103286(∑[n]+n)`
-/

namespace A103287.P11972098056622528663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103286 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A103287.P11972098056622528663

/-! ## A103287.P8305896235730150144

`record[A103286(A061579(n))]`
-/

namespace A103287.P8305896235730150144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103286 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103287.P8305896235730150144

/-! ## A103287.P9488378954807439265

`record[A103286(∑[A152271(n)])]`
-/

namespace A103287.P9488378954807439265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103286 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103287.P9488378954807439265

/-! ## A103287.P2776051260558279167

`record[A103286(eq[1, A007318(n)])]`
-/

namespace A103287.P2776051260558279167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103286 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103287.P2776051260558279167

/-! ## A103287.P13874366158597222405

`record[A103286(eq[1, A103306(n)])]`
-/

namespace A103287.P13874366158597222405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103286 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103287.P13874366158597222405

/-!
# A103288: Numbers k such that sigma(k) >= 2k-1 (union of perfect, abundant and least deficient numbers).

The programs for A103288, the canonical program `A103288.P3473752797644887944` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103288 has offset 1).

The definition of A103288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103288.P3473752797644887944

`eq[1, A378550(n+1)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103288

/-- `eq[1, A378550(n+1)]+1` -/
def P3473752797644887944.Spec : Prop :=
  ∀ n, (P3473752797644887944.a n : ℤ) = A103288 (n + 1)

theorem P3473752797644887944.correct : P3473752797644887944.Spec := by
  intro n
  simp only [A103288, Nat.add_sub_cancel]

end A103288

/-! ## A103288.P6514333030784838365

`lt[2*n, A000203(n+1)]+1`
-/

namespace A103288.P6514333030784838365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A103288.P6514333030784838365

namespace A103288

/-- `lt[2*n, A000203(n+1)]+1` -/
def P6514333030784838365.Spec : Prop :=
  ∀ n, (P6514333030784838365.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P16340673744494774105

`∪[A023196(n+1), A070175(n)]`
-/

namespace A103288.P16340673744494774105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103288.P16340673744494774105

namespace A103288

/-- `∪[A023196(n+1), A070175(n)]` -/
def P16340673744494774105.Spec : Prop :=
  ∀ n, (P16340673744494774105.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P6527311168381559797

`∪[A007694(n+1), A023196(n+1)]`
-/

namespace A103288.P6527311168381559797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103288.P6527311168381559797

namespace A103288

/-- `∪[A007694(n+1), A023196(n+1)]` -/
def P6527311168381559797.Spec : Prop :=
  ∀ n, (P6527311168381559797.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P1481145101182986119

`eq[A336916(n+1)², A336916(n+1)]+1`
-/

namespace A103288.P1481145101182986119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A103288.P1481145101182986119

namespace A103288

/-- `eq[A336916(n+1)², A336916(n+1)]+1` -/
def P1481145101182986119.Spec : Prop :=
  ∀ n, (P1481145101182986119.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P13033677747175026867

`lt[A341621(2*(n+1)), A341620(n+1)]+1`
-/

namespace A103288.P13033677747175026867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A103288.P13033677747175026867

namespace A103288

/-- `lt[A341621(2*(n+1)), A341620(n+1)]+1` -/
def P13033677747175026867.Spec : Prop :=
  ∀ n, (P13033677747175026867.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P10658684148074561209

`lt[A033879(n+1), 2]+1`
-/

namespace A103288.P10658684148074561209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A103288.P10658684148074561209

namespace A103288

/-- `lt[A033879(n+1), 2]+1` -/
def P10658684148074561209.Spec : Prop :=
  ∀ n, (P10658684148074561209.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P10918900878670377013

`lt[3*n+1, A155085(n+1)]+1`
-/

namespace A103288.P10918900878670377013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A103288.P10918900878670377013

namespace A103288

/-- `lt[3*n+1, A155085(n+1)]+1` -/
def P10918900878670377013.Spec : Prop :=
  ∀ n, (P10918900878670377013.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P12844215847762294904

`filter[A246352(n+1), A378550(#)]`
-/

namespace A103288.P12844215847762294904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P12844215847762294904

namespace A103288

/-- `filter[A246352(n+1), A378550(#)]` -/
def P12844215847762294904.Spec : Prop :=
  ∀ n, P12844215847762294904.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P5911153315553699161

`filter[A367226(n+1), A378550(#)]`
-/

namespace A103288.P5911153315553699161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P5911153315553699161

namespace A103288

/-- `filter[A367226(n+1), A378550(#)]` -/
def P5911153315553699161.Spec : Prop :=
  ∀ n, P5911153315553699161.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P6489766007424102764

`filter[A070331(n+1), A378550(#)]`
-/

namespace A103288.P6489766007424102764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P6489766007424102764

namespace A103288

/-- `filter[A070331(n+1), A378550(#)]` -/
def P6489766007424102764.Spec : Prop :=
  ∀ n, P6489766007424102764.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P5357027636377470734

`filter[A073900(n+1), A378550(#)]`
-/

namespace A103288.P5357027636377470734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P5357027636377470734

namespace A103288

/-- `filter[A073900(n+1), A378550(#)]` -/
def P5357027636377470734.Spec : Prop :=
  ∀ n, P5357027636377470734.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P15670061131596944597

`filter[A073899(n+1), A378550(#)]`
-/

namespace A103288.P15670061131596944597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P15670061131596944597

namespace A103288

/-- `filter[A073899(n+1), A378550(#)]` -/
def P15670061131596944597.Spec : Prop :=
  ∀ n, P15670061131596944597.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P4742024563631781877

`filter[A089088(n), A378550(#)]`
-/

namespace A103288.P4742024563631781877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P4742024563631781877

namespace A103288

/-- `filter[A089088(n), A378550(#)]` -/
def P4742024563631781877.Spec : Prop :=
  ∀ n, P4742024563631781877.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P4208295900310573310

`filter[A080240(n+1), A378550(#)]`
-/

namespace A103288.P4208295900310573310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A103288.P4208295900310573310

namespace A103288

/-- `filter[A080240(n+1), A378550(#)]` -/
def P4208295900310573310.Spec : Prop :=
  ∀ n, P4208295900310573310.a n = A103288 (n + 1)

end A103288

/-! ## A103288.P12591645404461383287

`lt[2*n, ∑{d}[n+1, #]]+1`
-/

namespace A103288.P12591645404461383287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A103288.P12591645404461383287

namespace A103288

/-- `lt[2*n, ∑{d}[n+1, #]]+1` -/
def P12591645404461383287.Spec : Prop :=
  ∀ n, (P12591645404461383287.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P10715421041138765203

`lt[Δ[n²]-∑{d}[n+1, #], 1]+1`
-/

namespace A103288.P10715421041138765203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A103288.P10715421041138765203

namespace A103288

/-- `lt[Δ[n²]-∑{d}[n+1, #], 1]+1` -/
def P10715421041138765203.Spec : Prop :=
  ∀ n, (P10715421041138765203.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P17890729542274824780

`lt[A235796(n+1), 1]+1`
-/

namespace A103288.P17890729542274824780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A103288.P17890729542274824780

namespace A103288

/-- `lt[A235796(n+1), 1]+1` -/
def P17890729542274824780.Spec : Prop :=
  ∀ n, (P17890729542274824780.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P14374037827923284702

`lt[n, A001065(n+1)+1]+1`
-/

namespace A103288.P14374037827923284702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A103288.P14374037827923284702

namespace A103288

/-- `lt[n, A001065(n+1)+1]+1` -/
def P14374037827923284702.Spec : Prop :=
  ∀ n, (P14374037827923284702.a n : ℤ) = A103288 (n + 1)

end A103288

/-! ## A103288.P6502975713683596852

`lt[A033885(n+1), n+3]+1`
-/

namespace A103288.P6502975713683596852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A103288.P6502975713683596852

namespace A103288

/-- `lt[A033885(n+1), n+3]+1` -/
def P6502975713683596852.Spec : Prop :=
  ∀ n, (P6502975713683596852.a n : ℤ) = A103288 (n + 1)

end A103288

/-!
# A103289: Numbers k such that both sigma(k) >= 2*k-1 and sigma(k+1) >= 2*(k+1)-1.

The programs for A103289, there is no canonical definition to state claims against.
-/

/-! ## A103289.P9310172563828043178

`∪[A096399(n+1), A387654(n+1)]`
-/

namespace A103289.P9310172563828043178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103289.P9310172563828043178

/-!
# A103290: a(n) = n*(n-1)*(n^2-n+4)/6.

The programs for A103290, the canonical program `A103290.P8332542490144600548` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103290 has offset 0).

The definition of A103290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103290.P8332542490144600548

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=10, a(4)=32`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A103290

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8332542490144600548.Spec : Prop :=
  ∀ n, P8332542490144600548.a n = A103290 n

theorem P8332542490144600548.correct : P8332542490144600548.Spec := by
  intro n
  simp only [A103290]

end A103290

/-! ## A103290.P3470607855906480788

`∑[4*C(n, 3)]+n²-n`
-/

namespace A103290.P3470607855906480788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A103290.P3470607855906480788

namespace A103290

/-- `∑[4*C(n, 3)]+n²-n` -/
def P3470607855906480788.Spec : Prop :=
  ∀ n, P3470607855906480788.a n = A103290 n

end A103290

/-! ## A103290.P16601396493372807949

`(n-2)*∑[C(n, 2)+1]+2`
-/

namespace A103290.P16601396493372807949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2

end

end A103290.P16601396493372807949

namespace A103290

/-- `(n-2)*∑[C(n, 2)+1]+2` -/
def P16601396493372807949.Spec : Prop :=
  ∀ n, P16601396493372807949.a n = A103290 n

end A103290

/-! ## A103290.P14884924077123622385

`4*C(n+1, 4)+n²-n`
-/

namespace A103290.P14884924077123622385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 1) 4 : ℤ) + ((n ^ 2 : ℤ) - (n : ℤ))

end

end A103290.P14884924077123622385

namespace A103290

/-- `4*C(n+1, 4)+n²-n` -/
def P14884924077123622385.Spec : Prop :=
  ∀ n, P14884924077123622385.a n = A103290 n

end A103290

/-! ## A103290.P7142884226475189253

`(n²-(n-4))*C(n, 2)/3`
-/

namespace A103290.P7142884226475189253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n : ℤ) - 4) : ℚ) * ((Nat.choose n 2 : ℚ) / 3)

end

end A103290.P7142884226475189253

namespace A103290

/-- `(n²-(n-4))*C(n, 2)/3` -/
def P7142884226475189253.Spec : Prop :=
  ∀ n, P7142884226475189253.a n = (A103290 n : ℚ)

end A103290

/-! ## A103290.P18343591977059580500

`∑[∑[2*n²]]-(n^3+n)`
-/

namespace A103290.P18343591977059580500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 3 + n : ℤ)

end

end A103290.P18343591977059580500

namespace A103290

/-- `∑[∑[2*n²]]-(n^3+n)` -/
def P18343591977059580500.Spec : Prop :=
  ∀ n, P18343591977059580500.a n = A103290 n

end A103290

/-! ## A103290.P9183382051178396807

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A103290.P9183382051178396807
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103290.P9183382051178396807

namespace A103290

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P9183382051178396807.Spec : Prop :=
  ∀ n, (P9183382051178396807.a n : ℤ) = A103290 n

end A103290

/-! ## A103290.P8234100172651638808

`(∑[A174794(n)]-n)/2`
-/

namespace A103290.P8234100172651638808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174794 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A103290.P8234100172651638808

namespace A103290

/-- `(∑[A174794(n)]-n)/2` -/
def P8234100172651638808.Spec : Prop :=
  ∀ n, P8234100172651638808.a n = (A103290 n : ℚ)

end A103290

/-! ## A103290.P8437235014397240604

`2*(A006008(n)-A000292(n))`
-/

namespace A103290.P8437235014397240604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006008 n - A000292 n)

end

end A103290.P8437235014397240604

namespace A103290

/-- `2*(A006008(n)-A000292(n))` -/
def P8437235014397240604.Spec : Prop :=
  ∀ n, P8437235014397240604.a n = A103290 n

end A103290

/-! ## A103290.P8612704647490102969

`2*(A006007(n)-A006527(n))`
-/

namespace A103290.P8612704647490102969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006007 n - A006527 n)

end

end A103290.P8612704647490102969

namespace A103290

/-- `2*(A006007(n)-A006527(n))` -/
def P8612704647490102969.Spec : Prop :=
  ∀ n, P8612704647490102969.a n = A103290 n

end A103290

/-! ## A103290.P5392590873110238016

`2*(A212415(n)-A086602(n))`
-/

namespace A103290.P5392590873110238016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212415 n - A086602 n)

end

end A103290.P5392590873110238016

namespace A103290

/-- `2*(A212415(n)-A086602(n))` -/
def P5392590873110238016.Spec : Prop :=
  ∀ n, P5392590873110238016.a n = A103290 n

end A103290

/-! ## A103290.P17329175568510901179

`(∑[A217873(n)]-A217873(n))/2`
-/

namespace A103290.P17329175568510901179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A217873 n : ℤ) : ℚ) / 2

end

end A103290.P17329175568510901179

namespace A103290

/-- `(∑[A217873(n)]-A217873(n))/2` -/
def P17329175568510901179.Spec : Prop :=
  ∀ n, P17329175568510901179.a n = (A103290 n : ℚ)

end A103290

/-! ## A103290.P12951625863965060720

`2*(A006522(n+1)+A000332(n+1))`
-/

namespace A103290.P12951625863965060720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006522 (n + 1) + A000332 (n + 1))

end

end A103290.P12951625863965060720

namespace A103290

/-- `2*(A006522(n+1)+A000332(n+1))` -/
def P12951625863965060720.Spec : Prop :=
  ∀ n, P12951625863965060720.a n = A103290 n

end A103290

/-! ## A103290.P18220309429295945415

`2*(A000332(n+2)+A000332(n))`
-/

namespace A103290.P18220309429295945415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000332 (n + 2) + A000332 n)

end

end A103290.P18220309429295945415

namespace A103290

/-- `2*(A000332(n+2)+A000332(n))` -/
def P18220309429295945415.Spec : Prop :=
  ∀ n, P18220309429295945415.a n = A103290 n

end A103290

/-! ## A103290.P11677628734274951559

`∑[A289207(2*n)+A280186(A289207(2*n+1))]`
-/

namespace A103290.P11677628734274951559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (2 * n) + A280186 (A289207 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103290.P11677628734274951559

namespace A103290

/-- `∑[A289207(2*n)+A280186(A289207(2*n+1))]` -/
def P11677628734274951559.Spec : Prop :=
  ∀ n, P11677628734274951559.a n = A103290 n

end A103290

/-! ## A103290.P10073436677706216524

`2*A032765(∑[n]-n)`
-/

namespace A103290.P10073436677706216524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032765 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A103290.P10073436677706216524

namespace A103290

/-- `2*A032765(∑[n]-n)` -/
def P10073436677706216524.Spec : Prop :=
  ∀ n, P10073436677706216524.a n = A103290 n

end A103290

/-! ## A103290.P14312902931826174353

`A054000(A152947(n+1))/3`
-/

namespace A103290.P14312902931826174353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054000 (A152947 (n + 1)).toNat : ℚ) / 3

end

end A103290.P14312902931826174353

namespace A103290

/-- `A054000(A152947(n+1))/3` -/
def P14312902931826174353.Spec : Prop :=
  ∀ n, P14312902931826174353.a n = (A103290 n : ℚ)

end A103290

/-! ## A103290.P17917115261719810212

`2*A000212(A000124(n)-n)`
-/

namespace A103290.P17917115261719810212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000212 (A000124 n - (n : ℤ)).toNat

end

end A103290.P17917115261719810212

namespace A103290

/-- `2*A000212(A000124(n)-n)` -/
def P17917115261719810212.Spec : Prop :=
  ∀ n, P17917115261719810212.a n = A103290 n

end A103290

/-! ## A103290.P11394505721425696121

`A056827(n²+2-n)`
-/

namespace A103290.P11394505721425696121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 ((n ^ 2 : ℤ) + (2 - (n : ℤ))).toNat

end

end A103290.P11394505721425696121

namespace A103290

/-- `A056827(n²+2-n)` -/
def P11394505721425696121.Spec : Prop :=
  ∀ n, P11394505721425696121.a n = A103290 n

end A103290

/-! ## A103290.P13861968399593190946

`A114208(n²+2-n)`
-/

namespace A103290.P13861968399593190946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114208 ((n ^ 2 : ℤ) + (2 - (n : ℤ))).toNat

end

end A103290.P13861968399593190946

namespace A103290

/-- `A114208(n²+2-n)` -/
def P13861968399593190946.Spec : Prop :=
  ∀ n, P13861968399593190946.a n = A103290 n

end A103290

/-!
# A103291: Numbers k such that sigma(2^k-1) >= 2*(2^k-1)-1, i.e., the number 2^k-1 is perfect, abundant, or least deficient.

The programs for A103291, there is no canonical definition to state claims against.
-/

/-! ## A103291.P16848822784125093216

`A103292(n*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A103291.P16848822784125093216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103292 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A103291.P16848822784125093216

/-! ## A103291.P2630169449024038985

`A103292(n^a(floor(acot(n))))` with `a(0)=1`
-/

namespace A103291.P2630169449024038985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103292 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ))).toNat

end

end A103291.P2630169449024038985

/-! ## A103291.P12091483253154151189

`A103292((n-1)%a(n-1)+1)` with `a(0)=1`
-/

namespace A103291.P12091483253154151189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103292 (Int.tmod ((n : ℤ) - 1) (a (n - 1)) + 1).toNat

end

end A103291.P12091483253154151189

/-! ## A103291.P4735904453795505769

`∪[(6*n+1)^4, A103292(n+1)]`
-/

namespace A103291.P4735904453795505769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 1) ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P4735904453795505769

/-! ## A103291.P17491731575495662203

`∪[A103292(n+1), A007900(n)]`
-/

namespace A103291.P17491731575495662203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P17491731575495662203

/-! ## A103291.P1564459306938232974

`∪[A103292(n+1), A008340(n)]`
-/

namespace A103291.P1564459306938232974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P1564459306938232974

/-! ## A103291.P5311181265770148543

`∪[A103292(n+1), A008357(n)]`
-/

namespace A103291.P5311181265770148543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008357 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P5311181265770148543

/-! ## A103291.P15523323992216628958

`∪[A103292(n+1), A008359(n)]`
-/

namespace A103291.P15523323992216628958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P15523323992216628958

/-! ## A103291.P15390881094794019815

`∪[A103292(n+1), A008376(n)]`
-/

namespace A103291.P15390881094794019815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P15390881094794019815

/-! ## A103291.P2132063813255628618

`∪[A103292(n+1), A008378(n)]`
-/

namespace A103291.P2132063813255628618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P2132063813255628618

/-! ## A103291.P7904259983104623883

`∪[A103292(n+1), A008391(n)]`
-/

namespace A103291.P7904259983104623883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008391 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P7904259983104623883

/-! ## A103291.P570897896158789113

`∪[A103292(n+1), A008393(n)]`
-/

namespace A103291.P570897896158789113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008393 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P570897896158789113

/-! ## A103291.P7756591044021842230

`∪[A103292(n+1), A008530(n)]`
-/

namespace A103291.P7756591044021842230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008530 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P7756591044021842230

/-! ## A103291.P6974282475088245503

`∪[A103292(n+1), A014795(n)]`
-/

namespace A103291.P6974282475088245503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P6974282475088245503

/-! ## A103291.P6256176228677622540

`∪[A103292(n+1), A014799(n)]`
-/

namespace A103291.P6256176228677622540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P6256176228677622540

/-! ## A103291.P334749603921868293

`∪[A103292(n+1), A014809(n)]`
-/

namespace A103291.P334749603921868293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014809 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P334749603921868293

/-! ## A103291.P8885928818415295064

`∪[A103292(n+1), A016759(n)]`
-/

namespace A103291.P8885928818415295064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P8885928818415295064

/-! ## A103291.P10912840029401316533

`∪[A103292(n+1), A016817(n)]`
-/

namespace A103291.P10912840029401316533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A103291.P10912840029401316533

/-!
# A103292: Numbers k such that sigma(2^k - 1) >= 2(2^k - 1), i.e., the number 2^k - 1 is perfect or abundant.

The programs for A103292, there is no canonical definition to state claims against.
-/

/-! ## A103292.P2171431048446404748

`A103291(n+2)`
-/

namespace A103292.P2171431048446404748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (n + 2)

end

end A103292.P2171431048446404748

/-! ## A103292.P12316961806849797021

`record[A103291(A000267(A029579(n)))]`
-/

namespace A103292.P12316961806849797021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (A000267 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103292.P12316961806849797021

/-! ## A103292.P17438966122004337509

`record[A103291(A064680(A004277(n)))]`
-/

namespace A103292.P17438966122004337509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (A064680 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103292.P17438966122004337509

/-! ## A103292.P13770102556885734883

`record[A103291(A080513(A008611(n)))]`
-/

namespace A103292.P13770102556885734883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (A080513 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103292.P13770102556885734883

/-! ## A103292.P16613075481663131153

`record[A103291(A008619(A092486(n)))]`
-/

namespace A103292.P16613075481663131153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (A008619 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103292.P16613075481663131153

/-! ## A103292.P2782979405346810846

`record[A103291(A080513(A052938(n)))]`
-/

namespace A103292.P2782979405346810846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103291 (A080513 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103292.P2782979405346810846

/-!
# A103293: Number of ways to color n regions arranged in a line such that consecutive regions do not have the same color.

The programs for A103293, there is no canonical definition to state claims against.
-/

/-! ## A103293.P10244631830568633914

`A289495(or(A005296(n), A328431(n)))`
-/

namespace A103293.P10244631830568633914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (Int.lor (A005296 n) (A328431 n)).toNat

end

end A103293.P10244631830568633914

/-! ## A103293.P7354054579079360705

`ceil(A323790(n)/∑[∏{e}[n, #+1]])`
-/

namespace A103293.P7354054579079360705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A323790 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A103293.P7354054579079360705

/-! ## A103293.P4021659248994097740

`A159481(A137791(n!))`
-/

namespace A103293.P4021659248994097740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A137791 (Nat.factorial n)).toNat

end

end A103293.P4021659248994097740

/-! ## A103293.P16854576503996704211

`A332108(A106362(n+1))`
-/

namespace A103293.P16854576503996704211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332108 (A106362 (n + 1)).toNat

end

end A103293.P16854576503996704211

/-!
# A103294: Triangle T, read by rows: T(n,k) = number of complete rulers with length n and k segments (n >= 0, k >= 0).

The programs for A103294, there is no canonical definition to state claims against.
-/

/-! ## A103294.P16213803081907454730

`A087436(C(A004755(n+1), A177517(n+1)))`
-/

namespace A103294.P16213803081907454730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (Nat.choose (A004755 (n + 1)).toNat (A177517 (n + 1)).toNat)

end

end A103294.P16213803081907454730

/-! ## A103294.P5922166019168753

`A001221(C(A177500(n+2), A177517(n+1)))`
-/

namespace A103294.P5922166019168753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A177500 (n + 2)).toNat (A177517 (n + 1)).toNat)

end

end A103294.P5922166019168753

/-! ## A103294.P1620841231516591631

`A123369(A094544(n)+1)`
-/

namespace A103294.P1620841231516591631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123369 (A094544 n + 1).toNat

end

end A103294.P1620841231516591631

/-! ## A103294.P9020161800785345669

`A000120(A047998(n)*A268434(n))`
-/

namespace A103294.P9020161800785345669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A047998 n * A268434 n).toNat

end

end A103294.P9020161800785345669

/-! ## A103294.P578871857737008175

`A124767(A326105(n+1)*A371417(n))`
-/

namespace A103294.P578871857737008175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A326105 (n + 1) * A371417 n).toNat

end

end A103294.P578871857737008175

/-!
# A103295: Number of complete rulers with length n.

The programs for A103295, there is no canonical definition to state claims against.
-/

/-! ## A103295.P15877614640369619514

`A349976(∑[n+2])`
-/

namespace A103295.P15877614640369619514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349976 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103295.P15877614640369619514

/-! ## A103295.P16732026580076156581

`or(char[1], A349976(A000096(n+1)))`
-/

namespace A103295.P16732026580076156581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A349976 (A000096 (n + 1)).toNat)

end

end A103295.P16732026580076156581

/-! ## A103295.P16711024260553592376

`A007318(C(n, 2))*A349976(A000096(n+1))`
-/

namespace A103295.P16711024260553592376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A349976 (A000096 (n + 1)).toNat

end

end A103295.P16711024260553592376

/-! ## A103295.P312425754998865647

`A000041(C(n, 64))*A349976(A000096(n+1))`
-/

namespace A103295.P312425754998865647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A349976 (A000096 (n + 1)).toNat

end

end A103295.P312425754998865647

/-! ## A103295.P9961462248180344648

`A349976(A000096(n+1))/A007318(C(2, n+2))`
-/

namespace A103295.P9961462248180344648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349976 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A103295.P9961462248180344648

/-!
# A103296: Number of complete rulers with n segments.

The programs for A103296, there is no canonical definition to state claims against.
-/

/-! ## A103296.P17210936041044843366

`or(A034008(n), A103221(2*C(3*n, n)/(n+1)))`
-/

namespace A103296.P17210936041044843366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034008 n) (A103221 (SequenceMachineLib.roundAway (2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)))).toNat)

end

end A103296.P17210936041044843366

/-! ## A103296.P627695097469534358

`or(A008612(A007226(n)), A036619(n))`
-/

namespace A103296.P627695097469534358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008612 (A007226 n).toNat) (A036619 n)

end

end A103296.P627695097469534358

/-! ## A103296.P12853392817697067721

`or(A034008(n), A103221(A007226(n)))`
-/

namespace A103296.P12853392817697067721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034008 n) (A103221 (A007226 n).toNat)

end

end A103296.P12853392817697067721

/-!
# A103298: Number of segments of a perfect ruler with length n.

The programs for A103298, there is no canonical definition to state claims against.
-/

/-! ## A103298.P2797865127286519951

`A046693(n)-1`
-/

namespace A103298.P2797865127286519951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 n - 1

end

end A103298.P2797865127286519951

/-! ## A103298.P1541961505992785596

`A002837(A046693(n))`
-/

namespace A103298.P1541961505992785596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A046693 n).toNat

end

end A103298.P1541961505992785596

/-! ## A103298.P16231940417830251619

`A057918(A046693(n)²)`
-/

namespace A103298.P16231940417830251619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A046693 n ^ 2).toNat

end

end A103298.P16231940417830251619

/-! ## A103298.P17493536715505939476

`A086520(A046693(n)²)`
-/

namespace A103298.P17493536715505939476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A046693 n ^ 2).toNat

end

end A103298.P17493536715505939476

/-! ## A103298.P13261841705294993177

`A088226(A046693(n)²)`
-/

namespace A103298.P13261841705294993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A046693 n ^ 2).toNat

end

end A103298.P13261841705294993177

/-! ## A103298.P14319645170702283362

`A214526(A046693(n)²)`
-/

namespace A103298.P14319645170702283362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A046693 n ^ 2).toNat

end

end A103298.P14319645170702283362

/-! ## A103298.P292257846153027019

`A259361(A046693(n)²)`
-/

namespace A103298.P292257846153027019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A046693 n ^ 2).toNat

end

end A103298.P292257846153027019

/-! ## A103298.P14605027015087512542

`A337108(A046693(n)²)`
-/

namespace A103298.P14605027015087512542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A046693 n ^ 2).toNat

end

end A103298.P14605027015087512542

/-! ## A103298.P11299671822885014539

`A023444(A046693(n)+1)`
-/

namespace A103298.P11299671822885014539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A046693 n + 1).toNat

end

end A103298.P11299671822885014539

/-! ## A103298.P13947640413925428066

`A023446(A046693(n)+3)`
-/

namespace A103298.P13947640413925428066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A046693 n + 3).toNat

end

end A103298.P13947640413925428066

/-! ## A103298.P16902888231703923740

`A023447(A046693(n)+4)`
-/

namespace A103298.P16902888231703923740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A046693 n + 4).toNat

end

end A103298.P16902888231703923740

/-! ## A103298.P18139490103231174765

`A140106(2*A046693(n))`
-/

namespace A103298.P18139490103231174765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A046693 n).toNat

end

end A103298.P18139490103231174765

/-! ## A103298.P6571880075993127422

`A059169(4*A046693(n))`
-/

namespace A103298.P6571880075993127422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A046693 n).toNat

end

end A103298.P6571880075993127422

/-! ## A103298.P15074281424528164361

`A070198(n)%A046693(n)`
-/

namespace A103298.P15074281424528164361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A046693 n)

end

end A103298.P15074281424528164361

/-! ## A103298.P17433187267308526767

`A079782(n+1)%A046693(n)`
-/

namespace A103298.P17433187267308526767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A046693 n)

end

end A103298.P17433187267308526767

/-! ## A103298.P18428555505956424940

`A083685(n+1)%A046693(n)`
-/

namespace A103298.P18428555505956424940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A046693 n)

end

end A103298.P18428555505956424940

/-! ## A103298.P7050133079800899199

`A121934(n+1)%A046693(n)`
-/

namespace A103298.P7050133079800899199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A046693 n)

end

end A103298.P7050133079800899199

/-! ## A103298.P12975362860866613077

`A001489(n+1)+A046693(n)+n`
-/

namespace A103298.P12975362860866613077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A046693 n + (n : ℤ))

end

end A103298.P12975362860866613077

/-! ## A103298.P8936119919897826109

`(A046693(n)+n)%A000027(n+1)`
-/

namespace A103298.P8936119919897826109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046693 n + (n : ℤ)) (A000027 (n + 1))

end

end A103298.P8936119919897826109

/-! ## A103298.P17973882356296144175

`(A046693(n)+A000584(n))%(n+1)`
-/

namespace A103298.P17973882356296144175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046693 n + A000584 n) (n + 1 : ℤ)

end

end A103298.P17973882356296144175

/-!
# A103299: Number of optimal rulers with n segments (n>=0).

The programs for A103299, there is no canonical definition to state claims against.
-/

/-! ## A103299.P2346673367882763899

`A103300(A004137(n+1))`
-/

namespace A103299.P2346673367882763899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103300 (A004137 (n + 1)).toNat

end

end A103299.P2346673367882763899

/-! ## A103299.P2786881853809520375

`A103300(eq[n, A004137(A046693(n))])`
-/

namespace A103299.P2786881853809520375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (A046693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103299.P2786881853809520375

/-! ## A103299.P9188097360537601593

`A103300(∑[A103297(n)%A003199(n)])`
-/

namespace A103299.P9188097360537601593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103297 n) (A003199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103299.P9188097360537601593

