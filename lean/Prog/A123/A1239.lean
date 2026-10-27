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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A123900: a(n) = (n+3)!/(d(n)*d(n+1)*d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0...n} 1/k! to lowest terms.

The programs for A123900, the canonical program `A123900.P8261275927121685626` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123900 has offset 0).

The definition of A123900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123900.P8261275927121685626

`(n+3)!/(A093101(n)*A093101(n+1)*A093101(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123900

/-- `(n+3)!/(A093101(n)*A093101(n+1)*A093101(n+2))` -/
def P8261275927121685626.Spec : Prop :=
  ∀ n, P8261275927121685626.a n = (A123900 n : ℚ)

end A123900

/-! ## A123900.P484144009817345713

`A048803(n+3)/A104484(A202207(n))`
-/

namespace A123900.P484144009817345713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 (n + 3) : ℚ) / (A104484 (A202207 n).toNat : ℚ)

end

end A123900.P484144009817345713

namespace A123900

/-- `A048803(n+3)/A104484(A202207(n))` -/
def P484144009817345713.Spec : Prop :=
  ∀ n, P484144009817345713.a n = (A123900 n : ℚ)

end A123900

/-!
# A123901: a(n) = (n+3)/gcd(d(n), d(n+2)) where d(n) = cancellation factor in reducing Sum_{k=0..n} 1/k! to lowest terms.

The programs for A123901, the canonical program `A123901.P3746745576386999541` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123901 has offset 0).

The definition of A123901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123901.P3746745576386999541

`(n+3)/A124781(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123901

/-- `(n+3)/A124781(n)` -/
def P3746745576386999541.Spec : Prop :=
  ∀ n, P3746745576386999541.a n = (A123901 n : ℚ)

end A123901

/-! ## A123901.P13246988530243427642

`(n+3)/gcd(A093101(n), A093101(n+2))`
-/

namespace A123901.P13246988530243427642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Int.gcd (A093101 n) (A093101 (n + 2)) : ℚ)

end

end A123901.P13246988530243427642

namespace A123901

/-- `(n+3)/gcd(A093101(n), A093101(n+2))` -/
def P13246988530243427642.Spec : Prop :=
  ∀ n, P13246988530243427642.a n = (A123901 n : ℚ)

end A123901

/-! ## A123901.P3316798156001137024

`(n+3)/gcd(A028552(n), A093101(n))`
-/

namespace A123901.P3316798156001137024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Int.gcd (A028552 n) (A093101 n) : ℚ)

end

end A123901.P3316798156001137024

namespace A123901

/-- `(n+3)/gcd(A028552(n), A093101(n))` -/
def P3316798156001137024.Spec : Prop :=
  ∀ n, P3316798156001137024.a n = (A123901 n : ℚ)

end A123901

/-! ## A123901.P3450137197913815851

`A124780(n)/A124781(n)*A124782(n)`
-/

namespace A123901.P3450137197913815851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124780 n : ℚ) / (A124781 n : ℚ) * (A124782 n : ℚ)

end

end A123901.P3450137197913815851

namespace A123901

/-- `A124780(n)/A124781(n)*A124782(n)` -/
def P3450137197913815851.Spec : Prop :=
  ∀ n, P3450137197913815851.a n = (A123901 n : ℚ)

end A123901

/-! ## A123901.P13710681986709074837

`A124782(n)*A222257(A124780(n)-A124781(n))`
-/

namespace A123901.P13710681986709074837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124782 n * A222257 (A124780 n - A124781 n).toNat

end

end A123901.P13710681986709074837

namespace A123901

/-- `A124782(n)*A222257(A124780(n)-A124781(n))` -/
def P13710681986709074837.Spec : Prop :=
  ∀ n, P13710681986709074837.a n = A123901 n

end A123901

/-! ## A123901.P4531471764145087758

`A006530(A124780(n)+1-A124781(n))*A124782(n)`
-/

namespace A123901.P4531471764145087758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124780 n + (1 - A124781 n)).toNat * A124782 n

end

end A123901.P4531471764145087758

namespace A123901

/-- `A006530(A124780(n)+1-A124781(n))*A124782(n)` -/
def P4531471764145087758.Spec : Prop :=
  ∀ n, P4531471764145087758.a n = A123901 n

end A123901

/-! ## A123901.P4440448661661755271

`A014963(A124780(n)+1-A124781(n))*A124782(n)`
-/

namespace A123901.P4440448661661755271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124780 n + (1 - A124781 n)).toNat * A124782 n

end

end A123901.P4440448661661755271

namespace A123901

/-- `A014963(A124780(n)+1-A124781(n))*A124782(n)` -/
def P4440448661661755271.Spec : Prop :=
  ∀ n, P4440448661661755271.a n = A123901 n

end A123901

/-! ## A123901.P17129008315625812845

`A006530(1-(A124781(n)-A124780(n)))*A124782(n)`
-/

namespace A123901.P17129008315625812845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - (A124781 n - A124780 n)).toNat * A124782 n

end

end A123901.P17129008315625812845

namespace A123901

/-- `A006530(1-(A124781(n)-A124780(n)))*A124782(n)` -/
def P17129008315625812845.Spec : Prop :=
  ∀ n, P17129008315625812845.a n = A123901 n

end A123901

/-! ## A123901.P3472568703308563435

`A124779(n)*A124782(n)`
-/

namespace A123901.P3472568703308563435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n * A124782 n

end

end A123901.P3472568703308563435

namespace A123901

/-- `A124779(n)*A124782(n)` -/
def P3472568703308563435.Spec : Prop :=
  ∀ n, P3472568703308563435.a n = A123901 n

end A123901

/-! ## A123901.P2813150405925221681

`A124782(n)*A335423(A124780(n)*A124781(n))`
-/

namespace A123901.P2813150405925221681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124782 n * A335423 (A124780 n * A124781 n).toNat

end

end A123901.P2813150405925221681

namespace A123901

/-- `A124782(n)*A335423(A124780(n)*A124781(n))` -/
def P2813150405925221681.Spec : Prop :=
  ∀ n, P2813150405925221681.a n = A123901 n

end A123901

/-!
# A123902: A123896 sorted and duplicates removed.

The programs for A123902, there is no canonical definition to state claims against.
-/

/-! ## A123902.P10382191969972943718

`A123896(A123925(n))`
-/

namespace A123902.P10382191969972943718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123896 (A123925 n).toNat

end

end A123902.P10382191969972943718

/-! ## A123902.P346870655041966165

`A123895(A123925(n)²)`
-/

namespace A123902.P346870655041966165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A123925 n ^ 2).toNat

end

end A123902.P346870655041966165

/-! ## A123902.P5831197875864328868

`A123895(A123925(n)^2)`
-/

namespace A123902.P5831197875864328868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A123925 n ^ 2).toNat

end

end A123902.P5831197875864328868

/-! ## A123902.P11702220917395140234

`A123895(A123925(n)*A123925(n))`
-/

namespace A123902.P11702220917395140234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A123925 n * A123925 n).toNat

end

end A123902.P11702220917395140234

/-!
# A123903: Total number of "Emperors" in all tournaments on n labeled nodes.

The programs for A123903, the canonical program `A123903.P2600262227793208086` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123903 has offset 0).

The definition of A123903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123903.P2600262227793208086

`n*2^((n-1)*(n-2)/2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123903

/-- `n*2^((n-1)*(n-2)/2)` -/
def P2600262227793208086.Spec : Prop :=
  ∀ n, P2600262227793208086.a n = (A123903 n : ℝ)

end A123903

/-! ## A123903.P1383808130337430132

`A223894(A152947(n+1))-A000007(n)`
-/

namespace A123903.P1383808130337430132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223894 (A152947 (n + 1)).toNat - A000007 n

end

end A123903.P1383808130337430132

namespace A123903

/-- `A223894(A152947(n+1))-A000007(n)` -/
def P1383808130337430132.Spec : Prop :=
  ∀ n, P1383808130337430132.a n = A123903 n

end A123903

/-! ## A123903.P9665770195805635022

`n*A006125(n)/A011782(n)`
-/

namespace A123903.P9665770195805635022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A006125 n : ℚ) / (A011782 n : ℚ)

end

end A123903.P9665770195805635022

namespace A123903

/-- `n*A006125(n)/A011782(n)` -/
def P9665770195805635022.Spec : Prop :=
  ∀ n, P9665770195805635022.a n = (A123903 n : ℚ)

end A123903

/-! ## A123903.P17636070003438458875

`sqrt(n*A217652(n))`
-/

namespace A123903.P17636070003438458875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℤ) * A217652 n : ℝ)

end

end A123903.P17636070003438458875

namespace A123903

/-- `sqrt(n*A217652(n))` -/
def P17636070003438458875.Spec : Prop :=
  ∀ n, P17636070003438458875.a n = (A123903 n : ℝ)

end A123903

/-! ## A123903.P8577371685034418071

`A197927(n)/A006125(n)`
-/

namespace A123903.P8577371685034418071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197927 n : ℚ) / (A006125 n : ℚ)

end

end A123903.P8577371685034418071

namespace A123903

/-- `A197927(n)/A006125(n)` -/
def P8577371685034418071.Spec : Prop :=
  ∀ n, P8577371685034418071.a n = (A123903 n : ℚ)

end A123903

/-!
# A123905: Number of slim perfect graphs on n nodes.

The programs for A123905, there is no canonical definition to state claims against.
-/

/-! ## A123905.P2652979955613117229

`A178798(A000225(n))+A123442(n+1)`
-/

namespace A123905.P2652979955613117229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000225 n).toNat + A123442 (n + 1)

end

end A123905.P2652979955613117229

/-! ## A123905.P10651861374311393222

`A123436(n+1)-A321936(A000079(n))`
-/

namespace A123905.P10651861374311393222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123436 (n + 1) - A321936 (A000079 n).toNat

end

end A123905.P10651861374311393222

/-! ## A123905.P12475199388923179766

`A123442(n+1)-A010893(A336103(n))`
-/

namespace A123905.P12475199388923179766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123442 (n + 1) - A010893 ((A336103 n).toNat + 13)

end

end A123905.P12475199388923179766

/-!
# A123907: a(n) = T(p(n)) - p(T(n)) = Commutator[triangular numbers, primes] at n.

The programs for A123907, the canonical program `A123907.P8393408210616074745` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123907 has offset 1).

The definition of A123907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123907.P8393408210616074745

`A034953(n+1)-A011756(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123907

/-- `A034953(n+1)-A011756(n+1)` -/
def P8393408210616074745.Spec : Prop :=
  ∀ n, P8393408210616074745.a n = A123907 (n + 1)

theorem P8393408210616074745.correct : P8393408210616074745.Spec := by
  intro n
  simp only [A123907, Nat.add_sub_cancel]

end A123907

/-! ## A123907.P5898377137603932686

`A000040(n+1)*(A000040(n+1)+1)/2-A000040((n+1)*(n+2)/2)`
-/

namespace A123907.P5898377137603932686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * (A000040 (n + 1) + 1) : ℚ) / 2 - (A000040 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat : ℚ)

end

end A123907.P5898377137603932686

namespace A123907

/-- `A000040(n+1)*(A000040(n+1)+1)/2-A000040((n+1)*(n+2)/2)` -/
def P5898377137603932686.Spec : Prop :=
  ∀ n, P5898377137603932686.a n = (A123907 (n + 1) : ℚ)

end A123907

/-! ## A123907.P17039619064264105931

`A000217(A000040(n+1))-A000040(A000217(n+1))`
-/

namespace A123907.P17039619064264105931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat - A000040 (A000217 (n + 1)).toNat

end

end A123907.P17039619064264105931

namespace A123907

/-- `A000217(A000040(n+1))-A000040(A000217(n+1))` -/
def P17039619064264105931.Spec : Prop :=
  ∀ n, P17039619064264105931.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P18245269309033643161

`∑[A138383(n)]-A011756(n+1)`
-/

namespace A123907.P18245269309033643161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011756 (n + 1)

end

end A123907.P18245269309033643161

namespace A123907

/-- `∑[A138383(n)]-A011756(n+1)` -/
def P18245269309033643161.Spec : Prop :=
  ∀ n, P18245269309033643161.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P7827852159793809488

`ceil(A319597(n+1)/2)-A011756(n+1)`
-/

namespace A123907.P7827852159793809488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319597 (n + 1) : ℚ) / 2⌉ - A011756 (n + 1)

end

end A123907.P7827852159793809488

namespace A123907

/-- `ceil(A319597(n+1)/2)-A011756(n+1)` -/
def P7827852159793809488.Spec : Prop :=
  ∀ n, P7827852159793809488.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P12824161789456121362

`A066872(n+1)-(A072205(n+1)+A011756(n+1))`
-/

namespace A123907.P12824161789456121362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - (A072205 (n + 1) + A011756 (n + 1))

end

end A123907.P12824161789456121362

namespace A123907

/-- `A066872(n+1)-(A072205(n+1)+A011756(n+1))` -/
def P12824161789456121362.Spec : Prop :=
  ∀ n, P12824161789456121362.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P2592443646762292422

`A102781(n+1)+A110494(n+1)-A011756(n+1)`
-/

namespace A123907.P2592443646762292422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + (A110494 (n + 1) - A011756 (n + 1))

end

end A123907.P2592443646762292422

namespace A123907

/-- `A102781(n+1)+A110494(n+1)-A011756(n+1)` -/
def P2592443646762292422.Spec : Prop :=
  ∀ n, P2592443646762292422.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P4083870881240602029

`A000217(A000040(n+1))-A011756(n+1)`
-/

namespace A123907.P4083870881240602029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat - A011756 (n + 1)

end

end A123907.P4083870881240602029

namespace A123907

/-- `A000217(A000040(n+1))-A011756(n+1)` -/
def P4083870881240602029.Spec : Prop :=
  ∀ n, P4083870881240602029.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P7716212083885745442

`A000217(p?[A014681(n)])-A011756(n+1)`
-/

namespace A123907.P7716212083885745442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A011756 (n + 1)

end

end A123907.P7716212083885745442

namespace A123907

/-- `A000217(p?[A014681(n)])-A011756(n+1)` -/
def P7716212083885745442.Spec : Prop :=
  ∀ n, P7716212083885745442.a n = A123907 (n + 1)

end A123907

/-! ## A123907.P15616758098323937133

`A034953(n+1)-A000040(∑[n+1])`
-/

namespace A123907.P15616758098323937133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123907.P15616758098323937133

namespace A123907

/-- `A034953(n+1)-A000040(∑[n+1])` -/
def P15616758098323937133.Spec : Prop :=
  ∀ n, P15616758098323937133.a n = A123907 (n + 1)

end A123907

/-!
# A123908: Number of sequences with terms 1, 2 or 3 summing to n with no three consecutive 1's.

The programs for A123908, the canonical program `A123908.P16285672426418962766` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123908 has offset 0).

The definition of A123908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123908.P16285672426418962766

`a(n-2)+2*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123908

/-- `a(n-2)+2*a(n-3)+2*a(n-4)+a(n-5)` -/
def P16285672426418962766.Spec : Prop :=
  ∀ n, (P16285672426418962766.a n : ℤ) = A123908 n

theorem P16285672426418962766.correct : P16285672426418962766.Spec := by
  intro n
  simp only [A123908]

end A123908

/-! ## A123908.P12607145563397376144

`A164416(n+9)%A164416(n+7)`
-/

namespace A123908.P12607145563397376144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164416 (n + 9)) (A164416 (n + 7))

end

end A123908.P12607145563397376144

namespace A123908

/-- `A164416(n+9)%A164416(n+7)` -/
def P12607145563397376144.Spec : Prop :=
  ∀ n, P12607145563397376144.a n = A123908 n

end A123908

/-! ## A123908.P15329460486324346144

`A194698(A061152(n))+A000045(n+1)`
-/

namespace A123908.P15329460486324346144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A061152 n).toNat + A000045 (n + 1)

end

end A123908.P15329460486324346144

namespace A123908

/-- `A194698(A061152(n))+A000045(n+1)` -/
def P15329460486324346144.Spec : Prop :=
  ∀ n, P15329460486324346144.a n = A123908 n

end A123908

/-! ## A123908.P2877735105489297261

`floor(root(A092636(n+1), 4))`
-/

namespace A123908.P2877735105489297261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092636 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A123908.P2877735105489297261

namespace A123908

/-- `floor(root(A092636(n+1), 4))` -/
def P2877735105489297261.Spec : Prop :=
  ∀ n, P2877735105489297261.a n = A123908 n

end A123908

/-! ## A123908.P8507718832477914005

`floor(root(A092637(n+1), 4))`
-/

namespace A123908.P8507718832477914005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092637 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A123908.P8507718832477914005

namespace A123908

/-- `floor(root(A092637(n+1), 4))` -/
def P8507718832477914005.Spec : Prop :=
  ∀ n, P8507718832477914005.a n = A123908 n

end A123908

/-!
# A123909: Primes of the form k!+11.

The programs for A123909, there is no canonical definition to state claims against.
-/

/-! ## A123909.P2359015698696706330

`floor(sqrt(7*2^n))!+11`
-/

namespace A123909.P2359015698696706330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt (7 * 2 ^ n)) + 11

end

end A123909.P2359015698696706330

/-!
# A123910: Numbers k such that k!!-4 is prime.

The programs for A123910, there is no canonical definition to state claims against.
-/

/-! ## A123910.P3557758729260011581

`or(1, A119605(a(n-1)))` with `a(0)=5`
-/

namespace A123910.P3557758729260011581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor 1 (A119605 (a (n - 1)).toNat)

end

end A123910.P3557758729260011581

/-! ## A123910.P8981491543581486172

`A254760(A370858(n+1))`
-/

namespace A123910.P8981491543581486172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (A370858 (n + 1)).toNat

end

end A123910.P8981491543581486172

/-! ## A123910.P8359197788077631311

`A109613(A119605(a(n-1)))` with `a(0)=5`
-/

namespace A123910.P8359197788077631311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A109613 (A119605 (a (n - 1)).toNat).toNat

end

end A123910.P8359197788077631311

/-! ## A123910.P10048557064007634050

`A329391(lt[A329354(n+4), 19])`
-/

namespace A123910.P10048557064007634050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329354 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329391 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A123910.P10048557064007634050

/-! ## A123910.P6986049251579986602

`A137203(A135422(n+1)+n+1)`
-/

namespace A123910.P6986049251579986602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137203 (A135422 (n + 1) + (n + 1 : ℤ)).toNat

end

end A123910.P6986049251579986602

/-!
# A123912: Numbers whose square starts with 2 identical digits.

The programs for A123912, there is no canonical definition to state claims against.
-/

/-! ## A123912.P13891887713703507733

`∪[A131573(n+1), A346812(n+1)]`
-/

namespace A123912.P13891887713703507733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123912.P13891887713703507733

/-! ## A123912.P10727957356347389694

`A346812(n+1)-A102683(A131577(n))`
-/

namespace A123912.P10727957356347389694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346812 (n + 1) - A102683 (A131577 n).toNat

end

end A123912.P10727957356347389694

/-! ## A123912.P10862415575231224816

`A346812(n+1)-∑[A308064(A036256(n))]`
-/

namespace A123912.P10862415575231224816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A036256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346812 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123912.P10862415575231224816

/-! ## A123912.P15492039085458284524

`A346812(n+1)-A085974(A000051(n))`
-/

namespace A123912.P15492039085458284524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346812 (n + 1) - A085974 (A000051 n).toNat

end

end A123912.P15492039085458284524

/-! ## A123912.P2473860904950388822

`A346812(n+1)-A085974(A000079(n))`
-/

namespace A123912.P2473860904950388822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346812 (n + 1) - A085974 (A000079 n).toNat

end

end A123912.P2473860904950388822

/-!
# A123913: Semiprimes with prime factors summing up to 100.

The programs for A123913, there is no canonical definition to state claims against.
-/

/-! ## A123913.P6939074688678539591

`eq[10, sqrt(A003415(n))]`
-/

namespace A123913.P6939074688678539591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003415 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A123913.P6939074688678539591

/-!
# A123914: a(n) = prime(n)^2 - prime(n^2). Commutator of (primes, squares) at n.

The programs for A123914, the canonical program `A123914.P8916338796586414767` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123914 has offset 1).

The definition of A123914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)²-A000040((n+1)²)` (program `A123914.P8916338796586414767`, by `A123914.P8916338796586414767.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123914.P949048400594561184

`A001248(n+1)-A011757(n+1)`
-/

namespace A123914.P949048400594561184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A011757 (n + 1)

end

end A123914.P949048400594561184

namespace A123914

/-- `A001248(n+1)-A011757(n+1)` -/
def P949048400594561184.Spec : Prop :=
  ∀ n, P949048400594561184.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P8916338796586414767

`A000040(n+1)²-A000040((n+1)²)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123914

/-- `A000040(n+1)²-A000040((n+1)²)` -/
def P8916338796586414767.Spec : Prop :=
  ∀ n, P8916338796586414767.a n = A123914 (n + 1)

theorem P8916338796586414767.correct : P8916338796586414767.Spec := by
  intro n
  simp only [A123914, Nat.add_sub_cancel]

end A123914

/-! ## A123914.P8963059744305604548

`A000290(A000040(n+1))-A000040(A000290(n+1))`
-/

namespace A123914.P8963059744305604548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000040 (n + 1)).toNat - A000040 (A000290 (n + 1)).toNat

end

end A123914.P8963059744305604548

namespace A123914

/-- `A000290(A000040(n+1))-A000040(A000290(n+1))` -/
def P8963059744305604548.Spec : Prop :=
  ∀ n, P8963059744305604548.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P1875431304210811590

`A106588(n+1)-A141129(n+1)`
-/

namespace A123914.P1875431304210811590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106588 (n + 1) - A141129 (n + 1)

end

end A123914.P1875431304210811590

namespace A123914

/-- `A106588(n+1)-A141129(n+1)` -/
def P1875431304210811590.Spec : Prop :=
  ∀ n, P1875431304210811590.a n = A123914 (n + 1)

theorem P1875431304210811590.correct : P1875431304210811590.Spec := by
  intro n
  simp only [A123914, Nat.add_sub_cancel, A123914.P1875431304210811590.a, A123914.P8916338796586414767.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A106588, A106588.P570258578308934851.a, A141129, A141129.P5465048195474713331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123914

/-! ## A123914.P16802149282465015082

`A291542(n+1)/A000040(n+1)`
-/

namespace A123914.P16802149282465015082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291542 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A123914.P16802149282465015082

namespace A123914

/-- `A291542(n+1)/A000040(n+1)` -/
def P16802149282465015082.Spec : Prop :=
  ∀ n, P16802149282465015082.a n = (A123914 (n + 1) : ℚ)

end A123914

/-! ## A123914.P3810708420798481895

`Δ[A007504(n)]²-A011757(n+1)`
-/

namespace A123914.P3810708420798481895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A011757 (n + 1)

end

end A123914.P3810708420798481895

namespace A123914

/-- `Δ[A007504(n)]²-A011757(n+1)` -/
def P3810708420798481895.Spec : Prop :=
  ∀ n, P3810708420798481895.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P13819431301056521620

`Δ[A064365(n)]²-A011757(n+1)`
-/

namespace A123914.P13819431301056521620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A011757 (n + 1)

end

end A123914.P13819431301056521620

namespace A123914

/-- `Δ[A064365(n)]²-A011757(n+1)` -/
def P13819431301056521620.Spec : Prop :=
  ∀ n, P13819431301056521620.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P3765455448313357983

`A000040(n+1)²-A011757(n+1)`
-/

namespace A123914.P3765455448313357983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A011757 (n + 1)

end

end A123914.P3765455448313357983

namespace A123914

/-- `A000040(n+1)²-A011757(n+1)` -/
def P3765455448313357983.Spec : Prop :=
  ∀ n, P3765455448313357983.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P7064150316026650651

`∑[A054541(n+1)]²-A011757(n+1)`
-/

namespace A123914.P7064150316026650651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A011757 (n + 1)

end

end A123914.P7064150316026650651

namespace A123914

/-- `∑[A054541(n+1)]²-A011757(n+1)` -/
def P7064150316026650651.Spec : Prop :=
  ∀ n, P7064150316026650651.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P7444671785796504881

`record[A259153(n+2)²]-A011757(n+1)`
-/

namespace A123914.P7444671785796504881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A011757 (n + 1)

end

end A123914.P7444671785796504881

namespace A123914

/-- `record[A259153(n+2)²]-A011757(n+1)` -/
def P7444671785796504881.Spec : Prop :=
  ∀ n, P7444671785796504881.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P3855560477727640988

`(A052147(n+1)-2)²-A011757(n+1)`
-/

namespace A123914.P3855560477727640988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052147 (n + 1) - 2) ^ 2 - A011757 (n + 1)

end

end A123914.P3855560477727640988

namespace A123914

/-- `(A052147(n+1)-2)²-A011757(n+1)` -/
def P3855560477727640988.Spec : Prop :=
  ∀ n, P3855560477727640988.a n = A123914 (n + 1)

theorem P3855560477727640988.correct : P3855560477727640988.Spec := by
  intro n
  simp only [A123914, Nat.add_sub_cancel, A123914.P3855560477727640988.a, A123914.P8916338796586414767.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123914

/-! ## A123914.P18252610741774830012

`(A113935(n+1)-3)²-A011757(n+1)`
-/

namespace A123914.P18252610741774830012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 1) - 3) ^ 2 - A011757 (n + 1)

end

end A123914.P18252610741774830012

namespace A123914

/-- `(A113935(n+1)-3)²-A011757(n+1)` -/
def P18252610741774830012.Spec : Prop :=
  ∀ n, P18252610741774830012.a n = A123914 (n + 1)

theorem P18252610741774830012.correct : P18252610741774830012.Spec := by
  intro n
  simp only [A123914, Nat.add_sub_cancel, A123914.P18252610741774830012.a, A123914.P8916338796586414767.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123914

/-! ## A123914.P17087737040599477632

`A106587(n+1)-(A011757(n+1)+(n+1)²)`
-/

namespace A123914.P17087737040599477632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106587 (n + 1) - (A011757 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A123914.P17087737040599477632

namespace A123914

/-- `A106587(n+1)-(A011757(n+1)+(n+1)²)` -/
def P17087737040599477632.Spec : Prop :=
  ∀ n, P17087737040599477632.a n = A123914 (n + 1)

theorem P17087737040599477632.correct : P17087737040599477632.Spec := by
  intro n
  simp only [A123914, Nat.add_sub_cancel, A123914.P17087737040599477632.a, A123914.P8916338796586414767.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A106587, A106587.P14902607394703240877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123914

/-! ## A123914.P3143024986628186945

`A030078(n+1)/A000040(n+1)-A011757(n+1)`
-/

namespace A123914.P3143024986628186945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A011757 (n + 1) : ℚ)

end

end A123914.P3143024986628186945

namespace A123914

/-- `A030078(n+1)/A000040(n+1)-A011757(n+1)` -/
def P3143024986628186945.Spec : Prop :=
  ∀ n, P3143024986628186945.a n = (A123914 (n + 1) : ℚ)

end A123914

/-! ## A123914.P7583909847550820511

`A036689(n+1)-A213926(n+1)`
-/

namespace A123914.P7583909847550820511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A213926 (n + 1)

end

end A123914.P7583909847550820511

namespace A123914

/-- `A036689(n+1)-A213926(n+1)` -/
def P7583909847550820511.Spec : Prop :=
  ∀ n, P7583909847550820511.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P13684187014125749433

`(A011757(n+1)-A213926(n+1))²-A011757(n+1)`
-/

namespace A123914.P13684187014125749433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011757 (n + 1) - A213926 (n + 1)) ^ 2 - A011757 (n + 1)

end

end A123914.P13684187014125749433

namespace A123914

/-- `(A011757(n+1)-A213926(n+1))²-A011757(n+1)` -/
def P13684187014125749433.Spec : Prop :=
  ∀ n, P13684187014125749433.a n = A123914 (n + 1)

theorem P13684187014125749433.correct : P13684187014125749433.Spec := by
  intro n
  simp only [A123914, Nat.add_sub_cancel, A123914.P13684187014125749433.a, A123914.P8916338796586414767.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A213926, A213926.P7531459219814302167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123914

/-! ## A123914.P4089273827910299193

`A036690(n+1)-A092504(n+1)`
-/

namespace A123914.P4089273827910299193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - A092504 (n + 1)

end

end A123914.P4089273827910299193

namespace A123914

/-- `A036690(n+1)-A092504(n+1)` -/
def P4089273827910299193.Spec : Prop :=
  ∀ n, P4089273827910299193.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P10754052284508245621

`A001248(n+1)-A323526(n+2)`
-/

namespace A123914.P10754052284508245621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A323526 (n + 2)

end

end A123914.P10754052284508245621

namespace A123914

/-- `A001248(n+1)-A323526(n+2)` -/
def P10754052284508245621.Spec : Prop :=
  ∀ n, P10754052284508245621.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P1250756836105405594

`p?[A014681(n)]²-A011757(n+1)`
-/

namespace A123914.P1250756836105405594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A011757 (n + 1)

end

end A123914.P1250756836105405594

namespace A123914

/-- `p?[A014681(n)]²-A011757(n+1)` -/
def P1250756836105405594.Spec : Prop :=
  ∀ n, P1250756836105405594.a n = A123914 (n + 1)

end A123914

/-! ## A123914.P15956357119119104971

`A008578(n+2)²-A296857(A008578(n+2))`
-/

namespace A123914.P15956357119119104971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2 - A296857 (A008578 (n + 2)).toNat

end

end A123914.P15956357119119104971

namespace A123914

/-- `A008578(n+2)²-A296857(A008578(n+2))` -/
def P15956357119119104971.Spec : Prop :=
  ∀ n, P15956357119119104971.a n = A123914 (n + 1)

end A123914

/-!
# A123915: Number of binary words whose (unique) decreasing Lyndon decomposition is into Lyndon words each with an even number of 1's; EULER transform of A051841.

The programs for A123915, there is no canonical definition to state claims against.
-/

/-! ## A123915.P284281715765516982

`A132832(n)-A102683(A000383(n))`
-/

namespace A123915.P284281715765516982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132832 n - A102683 (A000383 n).toNat

end

end A123915.P284281715765516982

/-! ## A123915.P15602778940875110893

`A132832(n)-A124761(A185063(n))`
-/

namespace A123915.P15602778940875110893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132832 n - A124761 (A185063 n).toNat

end

end A123915.P15602778940875110893

/-! ## A123915.P7743594798951017350

`A132832(n)-A058343(A146607(n+1))`
-/

namespace A123915.P7743594798951017350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132832 n - A058343 (A146607 (n + 1)).toNat

end

end A123915.P7743594798951017350

/-! ## A123915.P13977058601717099841

`A132832(n)-A185284(2*A004442(n))`
-/

namespace A123915.P13977058601717099841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132832 n - A185284 (2 * A004442 n).toNat

end

end A123915.P13977058601717099841

/-! ## A123915.P1283391366270152376

`A132832(n)+A075553(A184955(n))`
-/

namespace A123915.P1283391366270152376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132832 n + A075553 (A184955 n).toNat

end

end A123915.P1283391366270152376

/-!
# A123916: Number of binary words whose (unique) decreasing Lyndon decomposition is into Lyndon words each with an odd number of 1's; EULER transform of A000048.

The programs for A123916, there is no canonical definition to state claims against.
-/

/-! ## A123916.P1169673206365185514

`A262689(A244419(n)+A151272(n))`
-/

namespace A123916.P1169673206365185514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A244419 n + A151272 n).toNat

end

end A123916.P1169673206365185514

/-! ## A123916.P10462909669025420644

`A070115(A319642(n)-A248327(n))`
-/

namespace A123916.P10462909669025420644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070115 (A319642 n - A248327 n).toNat

end

end A123916.P10462909669025420644

/-! ## A123916.P10562528120342992712

`A235963(A148372(n))`
-/

namespace A123916.P10562528120342992712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A148372 n).toNat

end

end A123916.P10562528120342992712

/-! ## A123916.P6722092552685158075

`A235963(A148373(n))`
-/

namespace A123916.P6722092552685158075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A148373 n).toNat

end

end A123916.P6722092552685158075

/-! ## A123916.P16475222673056478296

`A336348(A148149(n))`
-/

namespace A123916.P16475222673056478296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336348 (A148149 n).toNat

end

end A123916.P16475222673056478296

/-!
# A123917: a(1)=1. a(n) = (the highest exponent in the prime-factorization of n)th integer from among those positive integers not occurring earlier in the sequence.

The programs for A123917, there is no canonical definition to state claims against.
-/

/-! ## A123917.P12276151673536147178

`A285719(n+1)+A051903(A077559(n+1))`
-/

namespace A123917.P12276151673536147178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (n + 1) + A051903 (A077559 (n + 1)).toNat

end

end A123917.P12276151673536147178

/-! ## A123917.P13729718918507085859

`A285719(A187829(n+1))+A051903(n+1)`
-/

namespace A123917.P13729718918507085859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (A187829 (n + 1)).toNat + A051903 (n + 1)

end

end A123917.P13729718918507085859

/-! ## A123917.P15189180904813076493

`A285719(A187829(n+1))+A067029(n+1)`
-/

namespace A123917.P15189180904813076493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (A187829 (n + 1)).toNat + A067029 (n + 1)

end

end A123917.P15189180904813076493

/-! ## A123917.P9051027934518377791

`A285719(A187829(n+1))+A157754(n+1)`
-/

namespace A123917.P9051027934518377791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (A187829 (n + 1)).toNat + A157754 (n + 1)

end

end A123917.P9051027934518377791

/-! ## A123917.P482022771359012718

`A285719(A294926(2^n)+∏{e}[n+1, #])+A067029(n+1)`
-/

namespace A123917.P482022771359012718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (A294926 (2 ^ n) + ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat + A067029 (n + 1)

end

end A123917.P482022771359012718

/-!
# A123918: a(n) = F(L(n)) - L(F(n)) where F(n) = n-th Fibonacci number and L(n) = n-th Lucas number. Commutator [Fibonacci, Lucas] at n.

The programs for A123918, the canonical program `A123918.P10039824320491567180` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123918 has offset 0).

The definition of A123918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123918.P9288882531438254946

`A068096(n)-A068098(n)`
-/

namespace A123918.P9288882531438254946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068096 n - A068098 n

end

end A123918.P9288882531438254946

namespace A123918

/-- `A068096(n)-A068098(n)` -/
def P9288882531438254946.Spec : Prop :=
  ∀ n, P9288882531438254946.a n = A123918 n

end A123918

/-! ## A123918.P10039824320491567180

`A000045(A000032(n))-A000032(A000045(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123918

/-- `A000045(A000032(n))-A000032(A000045(n))` -/
def P10039824320491567180.Spec : Prop :=
  ∀ n, P10039824320491567180.a n = A123918 n

theorem P10039824320491567180.correct : P10039824320491567180.Spec := by
  intro n
  simp only [A123918]

end A123918

/-! ## A123918.P12901546426205162718

`A068096(n)-A000032(A000045(n))`
-/

namespace A123918.P12901546426205162718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068096 n - A000032 (A000045 n).toNat

end

end A123918.P12901546426205162718

namespace A123918

/-- `A068096(n)-A000032(A000045(n))` -/
def P12901546426205162718.Spec : Prop :=
  ∀ n, P12901546426205162718.a n = A123918 n

end A123918

/-! ## A123918.P3909700240430952895

`A068096(n)-A000032(A023442(n))`
-/

namespace A123918.P3909700240430952895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068096 n - A000032 (A023442 n).toNat

end

end A123918.P3909700240430952895

namespace A123918

/-- `A068096(n)-A000032(A023442(n))` -/
def P3909700240430952895.Spec : Prop :=
  ∀ n, P3909700240430952895.a n = A123918 n

end A123918

/-! ## A123918.P16598218515806815567

`A000045(A169985(n))-A068098(n)`
-/

namespace A123918.P16598218515806815567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A169985 n).toNat - A068098 n

end

end A123918.P16598218515806815567

namespace A123918

/-- `A000045(A169985(n))-A068098(n)` -/
def P16598218515806815567.Spec : Prop :=
  ∀ n, P16598218515806815567.a n = A123918 n

end A123918

/-!
# A123919: Number of numbers congruent to 2 or 4 mod 6 and <= n.

The programs for A123919, the canonical program `A123919.P13970918244712265182` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123919 has offset 1).

The definition of A123919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123919.P13970918244712265182

`floor((n+1)/2)-floor((n+1)/6)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123919

/-- `floor((n+1)/2)-floor((n+1)/6)` -/
def P13970918244712265182.Spec : Prop :=
  ∀ n, P13970918244712265182.a n = A123919 (n + 1)

theorem P13970918244712265182.correct : P13970918244712265182.Spec := by
  intro n
  simp only [A123919, Nat.add_sub_cancel]

end A123919

/-! ## A123919.P14065540080986865844

`∑[char[or(1, 3*n)]]`
-/

namespace A123919.P14065540080986865844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P14065540080986865844

namespace A123919

/-- `∑[char[or(1, 3*n)]]` -/
def P14065540080986865844.Spec : Prop :=
  ∀ n, (P14065540080986865844.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P2273031107490268131

`round(or(1, n+1)/3)`
-/

namespace A123919.P2273031107490268131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) / 3)

end

end A123919.P2273031107490268131

namespace A123919

/-- `round(or(1, n+1)/3)` -/
def P2273031107490268131.Spec : Prop :=
  ∀ n, P2273031107490268131.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P10082313709137550811

`∑[((n%6)%5)%2]`
-/

namespace A123919.P10082313709137550811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 6 % 5 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P10082313709137550811

namespace A123919

/-- `∑[((n%6)%5)%2]` -/
def P10082313709137550811.Spec : Prop :=
  ∀ n, (P10082313709137550811.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P3835546308659903156

`ceil((and(1, n)+n)/3)`
-/

namespace A123919.P3835546308659903156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n + n : ℚ) / 3⌉

end

end A123919.P3835546308659903156

namespace A123919

/-- `ceil((and(1, n)+n)/3)` -/
def P3835546308659903156.Spec : Prop :=
  ∀ n, P3835546308659903156.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P7090828346850920423

`∑[round(acot(gcd(6, 2-n)))]`
-/

namespace A123919.P7090828346850920423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.gcd 6 (2 - (n : ℤ)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P7090828346850920423

namespace A123919

/-- `∑[round(acot(gcd(6, 2-n)))]` -/
def P7090828346850920423.Spec : Prop :=
  ∀ n, P7090828346850920423.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P1612229077369617530

`∑[and(n, char[∑[and(3, n)]])]`
-/

namespace A123919.P1612229077369617530
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P1612229077369617530

namespace A123919

/-- `∑[and(n, char[∑[and(3, n)]])]` -/
def P1612229077369617530.Spec : Prop :=
  ∀ n, (P1612229077369617530.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P9333331945388446758

`floor(and(n+3, -2)/3)`
-/

namespace A123919.P9333331945388446758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (n + 3 : ℤ) (-2) : ℚ) / 3⌋

end

end A123919.P9333331945388446758

namespace A123919

/-- `floor(and(n+3, -2)/3)` -/
def P9333331945388446758.Spec : Prop :=
  ∀ n, P9333331945388446758.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P3453080207365909470

`∑[val((n+1)²+2, 6)]`
-/

namespace A123919.P3453080207365909470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2 + 2) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P3453080207365909470

namespace A123919

/-- `∑[val((n+1)²+2, 6)]` -/
def P3453080207365909470.Spec : Prop :=
  ∀ n, (P3453080207365909470.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P12134266434642940103

`∑[char[lcm(3, n)-(n+1)]]`
-/

namespace A123919.P12134266434642940103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P12134266434642940103

namespace A123919

/-- `∑[char[lcm(3, n)-(n+1)]]` -/
def P12134266434642940103.Spec : Prop :=
  ∀ n, (P12134266434642940103.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P4539446616625078263

`floor((or(1, n+1)+1)/3)`
-/

namespace A123919.P4539446616625078263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) + 1 : ℚ) / 3⌋

end

end A123919.P4539446616625078263

namespace A123919

/-- `floor((or(1, n+1)+1)/3)` -/
def P4539446616625078263.Spec : Prop :=
  ∀ n, P4539446616625078263.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P580564224965395898

`ceil((or(1, n+1)-1)/3)`
-/

namespace A123919.P580564224965395898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 1 (n + 1) : ℤ) - 1 : ℚ) / 3⌉

end

end A123919.P580564224965395898

namespace A123919

/-- `ceil((or(1, n+1)-1)/3)` -/
def P580564224965395898.Spec : Prop :=
  ∀ n, P580564224965395898.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P5971854863196966401

`∑[char[a(n-2)+6]]` with `a(0)=3, a(1)=1`
-/

namespace A123919.P5971854863196966401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 (n - 2) + 6

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P5971854863196966401

namespace A123919

/-- `∑[char[a(n-2)+6]]` -/
def P5971854863196966401.Spec : Prop :=
  ∀ n, (P5971854863196966401.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P1392318360816365306

`round((gcd(2, n+1)+n)/3)`
-/

namespace A123919.P1392318360816365306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd 2 (n + 1) + n : ℚ) / 3)

end

end A123919.P1392318360816365306

namespace A123919

/-- `round((gcd(2, n+1)+n)/3)` -/
def P1392318360816365306.Spec : Prop :=
  ∀ n, P1392318360816365306.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P15129896219641830305

`floor((and(1, n)+2+n)/3)`
-/

namespace A123919.P15129896219641830305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n + 2 + n : ℚ) / 3⌋

end

end A123919.P15129896219641830305

namespace A123919

/-- `floor((and(1, n)+2+n)/3)` -/
def P15129896219641830305.Spec : Prop :=
  ∀ n, P15129896219641830305.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P16779487566649420956

`round((and(1, n)+1+n)/3)`
-/

namespace A123919.P16779487566649420956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 1 n + 1 + n : ℚ) / 3)

end

end A123919.P16779487566649420956

namespace A123919

/-- `round((and(1, n)+1+n)/3)` -/
def P16779487566649420956.Spec : Prop :=
  ∀ n, P16779487566649420956.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P25947256129610098

`∑[char[xor(5, record[or(6, n)])-n]]`
-/

namespace A123919.P25947256129610098
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 5 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P25947256129610098

namespace A123919

/-- `∑[char[xor(5, record[or(6, n)])-n]]` -/
def P25947256129610098.Spec : Prop :=
  ∀ n, (P25947256129610098.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P10025451175942467312

`∑[char[∑[∑[ogf((1+2x+3x^2)/(1+x))]]]]`
-/

namespace A123919.P10025451175942467312
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P10025451175942467312

namespace A123919

/-- `∑[char[∑[∑[ogf((1+2x+3x^2)/(1+x))]]]]` -/
def P10025451175942467312.Spec : Prop :=
  ∀ n, (P10025451175942467312.a n : ℤ) = A123919 (n + 1)

end A123919

/-! ## A123919.P11524602458862668733

`ceil((n+2-gcd(n, n+2))/3)`
-/

namespace A123919.P11524602458862668733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 2 : ℤ) - (Nat.gcd n (n + 2) : ℤ) : ℚ) / 3⌉

end

end A123919.P11524602458862668733

namespace A123919

/-- `ceil((n+2-gcd(n, n+2))/3)` -/
def P11524602458862668733.Spec : Prop :=
  ∀ n, P11524602458862668733.a n = A123919 (n + 1)

end A123919

/-! ## A123919.P13097587909649512845

`∑[(a(n-2)-a(n-4))²]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A123919.P13097587909649512845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  (f1 (n - 2) - f1 (n - 4)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123919.P13097587909649512845

namespace A123919

/-- `∑[(a(n-2)-a(n-4))²]` -/
def P13097587909649512845.Spec : Prop :=
  ∀ n, P13097587909649512845.a n = A123919 (n + 1)

end A123919

/-!
# A123920: Number of numbers congruent to 2 or 4 mod 6 between n and 2n inclusive.

The programs for A123920, the canonical program `A123920.P7010469755233754513` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123920 has offset 1).

The definition of A123920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123920.P7010469755233754513

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=2, a(4)=2, a(5)=2, a(6)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123920

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P7010469755233754513.Spec : Prop :=
  ∀ n, P7010469755233754513.a n = A123920 (n + 1)

theorem P7010469755233754513.correct : P7010469755233754513.Spec := by
  intro n
  simp only [A123920, Nat.add_sub_cancel]

end A123920

/-! ## A123920.P1407565333015851321

`or(and(1, n), floor(n/3))+1`
-/

namespace A123920.P1407565333015851321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) ⌊(n : ℚ) / 3⌋ + 1

end

end A123920.P1407565333015851321

namespace A123920

/-- `or(and(1, n), floor(n/3))+1` -/
def P1407565333015851321.Spec : Prop :=
  ∀ n, P1407565333015851321.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P8887355963576165378

`char[6*n+1]+∑[char[3*n]]`
-/

namespace A123920.P8887355963576165378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A123920.P8887355963576165378

namespace A123920

/-- `char[6*n+1]+∑[char[3*n]]` -/
def P8887355963576165378.Spec : Prop :=
  ∀ n, (P8887355963576165378.a n : ℤ) = A123920 (n + 1)

end A123920

/-! ## A123920.P15098071400741839546

`floor(∑[3/a(n-3)]/2)` with `a(0)=2, a(1)=3, a(2)=-2`
-/

namespace A123920.P15098071400741839546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3, -2] fun n f1 =>
  3 / f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌋

end

end A123920.P15098071400741839546

namespace A123920

/-- `floor(∑[3/a(n-3)]/2)` -/
def P15098071400741839546.Spec : Prop :=
  ∀ n, P15098071400741839546.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P15044734340113295710

`∑[A103368(n)^(n+1)]`
-/

namespace A123920.P15044734340113295710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103368 n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123920.P15044734340113295710

namespace A123920

/-- `∑[A103368(n)^(n+1)]` -/
def P15044734340113295710.Spec : Prop :=
  ∀ n, P15044734340113295710.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P1731719109021820121

`∑[A163532(∑[A138034(n)])]`
-/

namespace A123920.P1731719109021820121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123920.P1731719109021820121

namespace A123920

/-- `∑[A163532(∑[A138034(n)])]` -/
def P1731719109021820121.Spec : Prop :=
  ∀ n, P1731719109021820121.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P15147684704811234932

`∑[A354354(n)+A057078(n)]`
-/

namespace A123920.P15147684704811234932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 n + A057078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123920.P15147684704811234932

namespace A123920

/-- `∑[A354354(n)+A057078(n)]` -/
def P15147684704811234932.Spec : Prop :=
  ∀ n, P15147684704811234932.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P12143321805158110440

`∑[A057078(n-A354354(n))]`
-/

namespace A123920.P12143321805158110440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 ((n : ℤ) - A354354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123920.P12143321805158110440

namespace A123920

/-- `∑[A057078(n-A354354(n))]` -/
def P12143321805158110440.Spec : Prop :=
  ∀ n, P12143321805158110440.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P7767719198571261130

`abs(or(A000035(n), A042968(n+1))-n)`
-/

namespace A123920.P7767719198571261130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A000035 n) (A042968 (n + 1)) - (n : ℤ)|

end

end A123920.P7767719198571261130

namespace A123920

/-- `abs(or(A000035(n), A042968(n+1))-n)` -/
def P7767719198571261130.Spec : Prop :=
  ∀ n, P7767719198571261130.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P12298743593843746890

`A008611(A302404(n)+A008611(n+1))`
-/

namespace A123920.P12298743593843746890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A302404 n + A008611 (n + 1)).toNat

end

end A123920.P12298743593843746890

namespace A123920

/-- `A008611(A302404(n)+A008611(n+1))` -/
def P12298743593843746890.Spec : Prop :=
  ∀ n, P12298743593843746890.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P15019792627545508662

`A004523(2-(A008615(n)-A004396(n)))`
-/

namespace A123920.P15019792627545508662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (2 - (A008615 n - A004396 n)).toNat

end

end A123920.P15019792627545508662

namespace A123920

/-- `A004523(2-(A008615(n)-A004396(n)))` -/
def P15019792627545508662.Spec : Prop :=
  ∀ n, P15019792627545508662.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P2516964183742039194

`A004524(n+3-A004524(A287393(n)))`
-/

namespace A123920.P2516964183742039194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ((n + 3 : ℤ) - A004524 (A287393 n).toNat).toNat

end

end A123920.P2516964183742039194

namespace A123920

/-- `A004524(n+3-A004524(A287393(n)))` -/
def P2516964183742039194.Spec : Prop :=
  ∀ n, P2516964183742039194.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P18072228609522760028

`A008620(A004396(n)+A010892(n)+A008620(n))`
-/

namespace A123920.P18072228609522760028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004396 n + (A010892 n + A008620 n)).toNat

end

end A123920.P18072228609522760028

namespace A123920

/-- `A008620(A004396(n)+A010892(n)+A008620(n))` -/
def P18072228609522760028.Spec : Prop :=
  ∀ n, P18072228609522760028.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P4427018557729082230

`∑[A131736(n+2)^(n+1)]`
-/

namespace A123920.P4427018557729082230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 (n + 2) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123920.P4427018557729082230

namespace A123920

/-- `∑[A131736(n+2)^(n+1)]` -/
def P4427018557729082230.Spec : Prop :=
  ∀ n, P4427018557729082230.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P1416776651842332380

`A131380(A137719(n+1))`
-/

namespace A123920.P1416776651842332380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A137719 (n + 1)).toNat

end

end A123920.P1416776651842332380

namespace A123920

/-- `A131380(A137719(n+1))` -/
def P1416776651842332380.Spec : Prop :=
  ∀ n, P1416776651842332380.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P5756594775336134640

`A123919(A235451(n+1))`
-/

namespace A123920.P5756594775336134640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A235451 (n + 1)).toNat

end

end A123920.P5756594775336134640

namespace A123920

/-- `A123919(A235451(n+1))` -/
def P5756594775336134640.Spec : Prop :=
  ∀ n, P5756594775336134640.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P6587609498364631400

`A285869(A099479(n+1))`
-/

namespace A123920.P6587609498364631400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A099479 (n + 1)).toNat

end

end A123920.P6587609498364631400

namespace A123920

/-- `A285869(A099479(n+1))` -/
def P6587609498364631400.Spec : Prop :=
  ∀ n, P6587609498364631400.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P13830612692152142299

`A123919(A131042(n+2))`
-/

namespace A123920.P13830612692152142299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A131042 (n + 2)).toNat

end

end A123920.P13830612692152142299

namespace A123920

/-- `A123919(A131042(n+2))` -/
def P13830612692152142299.Spec : Prop :=
  ∀ n, P13830612692152142299.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P3459448346606025711

`A123919(A143097(n+2))`
-/

namespace A123920.P3459448346606025711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A143097 (n + 2)).toNat

end

end A123920.P3459448346606025711

namespace A123920

/-- `A123919(A143097(n+2))` -/
def P3459448346606025711.Spec : Prop :=
  ∀ n, P3459448346606025711.a n = A123920 (n + 1)

end A123920

/-! ## A123920.P12352231149434511205

`A051275(A051274(n+1)+A004523(n+1))`
-/

namespace A123920.P12352231149434511205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A051274 (n + 1) + A004523 (n + 1)).toNat

end

end A123920.P12352231149434511205

namespace A123920

/-- `A051275(A051274(n+1)+A004523(n+1))` -/
def P12352231149434511205.Spec : Prop :=
  ∀ n, P12352231149434511205.a n = A123920 (n + 1)

end A123920

/-!
# A123921: Primes of form p*q - 2 where p and q are consecutive primes.

The programs for A123921, there is no canonical definition to state claims against.
-/

/-! ## A123921.P2084993390366592667

`A013636(A048797(n+1))-2`
-/

namespace A123921.P2084993390366592667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (A048797 (n + 1)).toNat - 2

end

end A123921.P2084993390366592667

/-! ## A123921.P10352447693075740962

`A119416(A048797(C(n+1, n)))-2`
-/

namespace A123921.P10352447693075740962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A048797 (Nat.choose (n + 1) n)).toNat - 2

end

end A123921.P10352447693075740962

/-! ## A123921.P8121383276517117092

`A119416(A048797(Δ[n²]-n))-2`
-/

namespace A123921.P8121383276517117092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A048797 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 2

end

end A123921.P8121383276517117092

/-! ## A123921.P12733819711633699706

`abs(5-A119416(A048797(-xor(n, -1))))+3`
-/

namespace A123921.P12733819711633699706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A119416 (A048797 (-Int.xor (n : ℤ) (-1)).toNat).toNat| + 3

end

end A123921.P12733819711633699706

/-!
# A123922: Number of 2143-avoiding Dumont paths of the 2nd kind of length 2n.

The programs for A123922, the canonical program `A123922.P8101883956895217603` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123922 has offset 0).

The definition of A123922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123922.P8101883956895217603

`A047749(n)*A047749(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123922

/-- `A047749(n)*A047749(n+1)` -/
def P8101883956895217603.Spec : Prop :=
  ∀ n, P8101883956895217603.a n = A123922 n

theorem P8101883956895217603.correct : P8101883956895217603.Spec := by
  intro n
  simp only [A123922]

end A123922

/-! ## A123922.P15961755952159730630

`abs(A134565(n+1))*ceil(A116637(n)/2)`
-/

namespace A123922.P15961755952159730630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134565 (n + 1)| * ⌈(A116637 n : ℚ) / 2⌉

end

end A123922.P15961755952159730630

namespace A123922

/-- `abs(A134565(n+1))*ceil(A116637(n)/2)` -/
def P15961755952159730630.Spec : Prop :=
  ∀ n, P15961755952159730630.a n = A123922 n

end A123922

/-! ## A123922.P1825138769439474976

`abs(A047764(6*n+2)*A134565(n+1))`
-/

namespace A123922.P1825138769439474976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047764 (6 * n + 2) * A134565 (n + 1)|

end

end A123922.P1825138769439474976

namespace A123922

/-- `abs(A047764(6*n+2)*A134565(n+1))` -/
def P1825138769439474976.Spec : Prop :=
  ∀ n, P1825138769439474976.a n = A123922 n

end A123922

/-! ## A123922.P572228818534885012

`abs(A134565(n+1))*A047751(A017581(n))`
-/

namespace A123922.P572228818534885012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134565 (n + 1)| * A047751 (A017581 n).toNat

end

end A123922.P572228818534885012

namespace A123922

/-- `abs(A134565(n+1))*A047751(A017581(n))` -/
def P572228818534885012.Spec : Prop :=
  ∀ n, P572228818534885012.a n = A123922 n

end A123922

/-! ## A123922.P13388078620492185271

`abs(A134565(n+1)*A134565(A028310(n)))`
-/

namespace A123922.P13388078620492185271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134565 (n + 1) * A134565 (A028310 n).toNat|

end

end A123922.P13388078620492185271

namespace A123922

/-- `abs(A134565(n+1)*A134565(A028310(n)))` -/
def P13388078620492185271.Spec : Prop :=
  ∀ n, P13388078620492185271.a n = A123922 n

end A123922

/-!
# A123924: Numbers k such that 2^(k+1) + 3^k is prime.

The programs for A123924, there is no canonical definition to state claims against.
-/

/-! ## A123924.P7206317807768402430

`A082400(n+1)-1`
-/

namespace A123924.P7206317807768402430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082400 (n + 1) - 1

end

end A123924.P7206317807768402430

/-! ## A123924.P5085775813423180998

`record[Δ[A082400(A152271(n))]]`
-/

namespace A123924.P5085775813423180998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082400 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123924.P5085775813423180998

/-! ## A123924.P11704404031957561146

`A280193(2*n+3)+A082400(n+1)`
-/

namespace A123924.P11704404031957561146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 3) + A082400 (n + 1)

end

end A123924.P11704404031957561146

/-! ## A123924.P6360702741854748506

`A153881(A079378(n))+A082400(n+1)`
-/

namespace A123924.P6360702741854748506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A079378 n).toNat + A082400 (n + 1)

end

end A123924.P6360702741854748506

/-! ## A123924.P13718350417380906933

`A153881(A135659(n))+A082400(n+1)`
-/

namespace A123924.P13718350417380906933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A135659 n).toNat + A082400 (n + 1)

end

end A123924.P13718350417380906933

/-! ## A123924.P3996750008977423265

`A153881(A005384(n+1))+A082400(n+1)`
-/

namespace A123924.P3996750008977423265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A005384 (n + 1)).toNat + A082400 (n + 1)

end

end A123924.P3996750008977423265

/-! ## A123924.P10991309001699769715

`A145063(A165826(n+1))+A082400(n+1)`
-/

namespace A123924.P10991309001699769715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 (A165826 (n + 1)).toNat + A082400 (n + 1)

end

end A123924.P10991309001699769715

/-! ## A123924.P12957813099054881290

`A153881(A039654(n+2))+A082400(n+1)`
-/

namespace A123924.P12957813099054881290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A039654 (n + 2)).toNat + A082400 (n + 1)

end

end A123924.P12957813099054881290

/-! ## A123924.P37732189826320054

`A176239(A055229(2*n+5))+A082400(n+1)`
-/

namespace A123924.P37732189826320054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176239 (A055229 (2 * n + 5)).toNat + A082400 (n + 1)

end

end A123924.P37732189826320054

/-!
# A123926: Greatest common divisor of sigma_k(n) for all k >= 1.

The programs for A123926, the canonical program `A123926.P8154078832846072749` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123926 has offset 1).

The definition of A123926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123926.P8154078832846072749

`A154282(A001749(n+1))+A065331(A179931(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123926

/-- `A154282(A001749(n+1))+A065331(A179931(n+1))` -/
def P8154078832846072749.Spec : Prop :=
  ∀ n, P8154078832846072749.a n = A123926 (n + 1)

theorem P8154078832846072749.correct : P8154078832846072749.Spec := by
  intro n
  simp only [A123926, Nat.add_sub_cancel]

end A123926

/-! ## A123926.P1820339777656556470

`gcd(A003945(n), A179931(n+1))`
-/

namespace A123926.P1820339777656556470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003945 n) (A179931 (n + 1))

end

end A123926.P1820339777656556470

namespace A123926

/-- `gcd(A003945(n), A179931(n+1))` -/
def P1820339777656556470.Spec : Prop :=
  ∀ n, (P1820339777656556470.a n : ℤ) = A123926 (n + 1)

end A123926

/-! ## A123926.P8037259088882764612

`gcd(A042950(n), A057889(A179931(n+1)))`
-/

namespace A123926.P8037259088882764612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042950 n) (A057889 (A179931 (n + 1)).toNat)

end

end A123926.P8037259088882764612

namespace A123926

/-- `gcd(A042950(n), A057889(A179931(n+1)))` -/
def P8037259088882764612.Spec : Prop :=
  ∀ n, (P8037259088882764612.a n : ℤ) = A123926 (n + 1)

end A123926

/-! ## A123926.P8911010066239027026

`A000035(A001748(2*(n+2)))*A065331(A179931(n+1))`
-/

namespace A123926.P8911010066239027026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001748 (2 * (n + 2))).toNat * A065331 (A179931 (n + 1)).toNat

end

end A123926.P8911010066239027026

namespace A123926

/-- `A000035(A001748(2*(n+2)))*A065331(A179931(n+1))` -/
def P8911010066239027026.Spec : Prop :=
  ∀ n, P8911010066239027026.a n = A123926 (n + 1)

end A123926

/-! ## A123926.P2922536075571850252

`A000035(A067201(2*(n+1)))*A065331(A179931(n+1))`
-/

namespace A123926.P2922536075571850252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A067201 (2 * (n + 1))).toNat * A065331 (A179931 (n + 1)).toNat

end

end A123926.P2922536075571850252

namespace A123926

/-- `A000035(A067201(2*(n+1)))*A065331(A179931(n+1))` -/
def P2922536075571850252.Spec : Prop :=
  ∀ n, P2922536075571850252.a n = A123926 (n + 1)

end A123926

/-! ## A123926.P17893232824149639694

`A065331(gcd(A001157(n+1), A066293(n+1)))`
-/

namespace A123926.P17893232824149639694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (Int.gcd (A001157 (n + 1)) (A066293 (n + 1)))

end

end A123926.P17893232824149639694

namespace A123926

/-- `A065331(gcd(A001157(n+1), A066293(n+1)))` -/
def P17893232824149639694.Spec : Prop :=
  ∀ n, P17893232824149639694.a n = A123926 (n + 1)

end A123926

/-! ## A123926.P14865929678737084148

`A065331(A179931(n+1)²)/A065331(A179931(n+1))`
-/

namespace A123926.P14865929678737084148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (A179931 (n + 1) ^ 2).toNat : ℚ) / (A065331 (A179931 (n + 1)).toNat : ℚ)

end

end A123926.P14865929678737084148

namespace A123926

/-- `A065331(A179931(n+1)²)/A065331(A179931(n+1))` -/
def P14865929678737084148.Spec : Prop :=
  ∀ n, P14865929678737084148.a n = (A123926 (n + 1) : ℚ)

end A123926

/-! ## A123926.P4226240223199608336

`A322362(A179931(n+1)%A097143(n+1))`
-/

namespace A123926.P4226240223199608336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322362 (Int.tmod (A179931 (n + 1)) (A097143 (n + 1))).toNat

end

end A123926.P4226240223199608336

namespace A123926

/-- `A322362(A179931(n+1)%A097143(n+1))` -/
def P4226240223199608336.Spec : Prop :=
  ∀ n, P4226240223199608336.a n = A123926 (n + 1)

end A123926

/-!
# A123927: Characteristic function of natural numbers with number of divisors equal to a Lucas number.

The programs for A123927, the canonical program `A123927.P16161483642695662520` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123927 has offset 1).

The definition of A123927 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102460, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123927.P16161483642695662520

`A102460(A000005(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123927

/-- `A102460(A000005(n+1))` -/
def P16161483642695662520.Spec : Prop :=
  ∀ n, P16161483642695662520.a n = A123927 (n + 1)

theorem P16161483642695662520.correct : P16161483642695662520.Spec := by
  intro n
  simp only [A123927, Nat.add_sub_cancel]

end A123927

/-! ## A123927.P17512319307793706451

`char[A119885(n+1)-1]`
-/

namespace A123927.P17512319307793706451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123927.P17512319307793706451

namespace A123927

/-- `char[A119885(n+1)-1]` -/
def P17512319307793706451.Spec : Prop :=
  ∀ n, (P17512319307793706451.a n : ℤ) = A123927 (n + 1)

end A123927

/-! ## A123927.P14924940000136045331

`A102460(A008619(A114003(n+1)))`
-/

namespace A123927.P14924940000136045331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A008619 (A114003 (n + 1)).toNat).toNat

end

end A123927.P14924940000136045331

namespace A123927

/-- `A102460(A008619(A114003(n+1)))` -/
def P14924940000136045331.Spec : Prop :=
  ∀ n, P14924940000136045331.a n = A123927 (n + 1)

end A123927

/-! ## A123927.P14635128969637266578

`A102460(A096737(n+1))`
-/

namespace A123927.P14635128969637266578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A096737 (n + 1)).toNat

end

end A123927.P14635128969637266578

namespace A123927

/-- `A102460(A096737(n+1))` -/
def P14635128969637266578.Spec : Prop :=
  ∀ n, P14635128969637266578.a n = A123927 (n + 1)

end A123927

/-! ## A123927.P1789231203753156194

`(A061414(A000005(n+1)+1)%2)^A061410(n+1)`
-/

namespace A123927.P1789231203753156194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A061414 (A000005 (n + 1) + 1).toNat) 2 : ℚ) ^ (A061410 (n + 1) : ℤ)

end

end A123927.P1789231203753156194

namespace A123927

/-- `(A061414(A000005(n+1)+1)%2)^A061410(n+1)` -/
def P1789231203753156194.Spec : Prop :=
  ∀ n, P1789231203753156194.a n = (A123927 (n + 1) : ℚ)

end A123927

/-! ## A123927.P5223823542690528692

`A061414(A000005(n+1)%A061410(n+1)+1)%2`
-/

namespace A123927.P5223823542690528692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061414 (Int.tmod (A000005 (n + 1)) (A061410 (n + 1)) + 1).toNat) 2

end

end A123927.P5223823542690528692

namespace A123927

/-- `A061414(A000005(n+1)%A061410(n+1)+1)%2` -/
def P5223823542690528692.Spec : Prop :=
  ∀ n, P5223823542690528692.a n = A123927 (n + 1)

end A123927

/-! ## A123927.P17915772392606038285

`A259835(∏{e}[n+1, #+1])%2`
-/

namespace A123927.P17915772392606038285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259835 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) 2

end

end A123927.P17915772392606038285

namespace A123927

/-- `A259835(∏{e}[n+1, #+1])%2` -/
def P17915772392606038285.Spec : Prop :=
  ∀ n, P17915772392606038285.a n = A123927 (n + 1)

end A123927

/-! ## A123927.P636287873067250267

`A002322(A239701(A100587(n+1)))%2`
-/

namespace A123927.P636287873067250267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (A239701 (A100587 (n + 1)).toNat).toNat) 2

end

end A123927.P636287873067250267

namespace A123927

/-- `A002322(A239701(A100587(n+1)))%2` -/
def P636287873067250267.Spec : Prop :=
  ∀ n, P636287873067250267.a n = A123927 (n + 1)

end A123927

/-! ## A123927.P3728053961223336199

`and(A045535(n), A353799(n+1))`
-/

namespace A123927.P3728053961223336199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A353799 (n + 1))

end

end A123927.P3728053961223336199

namespace A123927

/-- `and(A045535(n), A353799(n+1))` -/
def P3728053961223336199.Spec : Prop :=
  ∀ n, P3728053961223336199.a n = A123927 (n + 1)

end A123927

/-!
# A123929: Simili-primes of order 2.

The programs for A123929, there is no canonical definition to state claims against.
-/

/-! ## A123929.P15480323468763706726

`A191175(n+3)-A039703(A000108(n))`
-/

namespace A123929.P15480323468763706726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191175 (n + 3) - A039703 (A000108 n).toNat

end

end A123929.P15480323468763706726

/-! ## A123929.P4404019158905358240

`A263996(n+1)+A040331(A014516(n))`
-/

namespace A123929.P4404019158905358240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263996 (n + 1) + A040331 (A014516 n).toNat

end

end A123929.P4404019158905358240

/-! ## A123929.P7802139293697834944

`A258025(A223081(n+1)+A001399(n))`
-/

namespace A123929.P7802139293697834944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (A223081 (n + 1) + A001399 n).toNat

end

end A123929.P7802139293697834944

/-! ## A123929.P12993692952960104637

`A258025(A223081(n+1)+A034296(n))`
-/

namespace A123929.P12993692952960104637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (A223081 (n + 1) + A034296 n).toNat

end

end A123929.P12993692952960104637

/-!
# A123931: a(n) = H(n)*n!/(floor(n/2))! (mod (n+1)), where H(n) = sum{k=1 to n} 1/k, the n-th harmonic number.

The programs for A123931, there is no canonical definition to state claims against.
-/

/-! ## A123931.P15398455515025681293

`A124078(n)%(n+1)`
-/

namespace A123931.P15398455515025681293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124078 n) (n + 1 : ℤ)

end

end A123931.P15398455515025681293

/-! ## A123931.P15808034746025762872

`-(-A124078(n)%A008619(2*n))`
-/

namespace A123931.P15808034746025762872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A124078 n) (A008619 (2 * n))

end

end A123931.P15808034746025762872

/-! ## A123931.P8345985584252168798

`(A000254(n)/A081123(n))%(n+1)`
-/

namespace A123931.P8345985584252168798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000254 n : ℚ) / (A081123 n : ℚ))) (n + 1 : ℤ)

end

end A123931.P8345985584252168798

/-! ## A123931.P4302418292760471418

`abs((A081048(n)/A081123(n))%(n+1))`
-/

namespace A123931.P4302418292760471418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((A081048 n : ℚ) / (A081123 n : ℚ))) (n + 1 : ℤ)|

end

end A123931.P4302418292760471418

/-! ## A123931.P191399390796255529

`abs((A081048(n)/A004526(n)!)%(n+1))`
-/

namespace A123931.P191399390796255529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((A081048 n : ℚ) / (Nat.factorial (A004526 n).toNat : ℚ))) (n + 1 : ℤ)|

end

end A123931.P191399390796255529

/-!
# A123934: Triangle T(n,k), 1<=k<=n: forms the odd-indexed trinomial coefficients (A027907).

The programs for A123934, there is no canonical definition to state claims against.
-/

/-! ## A123934.P14120251701370214475

`A027907(comp[∑[n]]+n)`
-/

namespace A123934.P14120251701370214475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A123934.P14120251701370214475

/-! ## A123934.P12561028115630497963

`A169623((n-comp[∑[n]])²+2*n)`
-/

namespace A123934.P12561028115630497963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (2 * n : ℤ)).toNat

end

end A123934.P12561028115630497963

/-! ## A123934.P9993670092265477860

`A025564(comp[∑[n]]+n)-A056241(n+1)`
-/

namespace A123934.P9993670092265477860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) - A056241 (n + 1)

end

end A123934.P9993670092265477860

/-! ## A123934.P8605284801309433819

`A027907(A195437(n))+A151951(n+1)%3`
-/

namespace A123934.P8605284801309433819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A195437 n).toNat + Int.tmod (A151951 (n + 1)) 3

end

end A123934.P8605284801309433819

/-! ## A123934.P6355541797063425743

`A330510(n)-A056241(n+1)`
-/

namespace A123934.P6355541797063425743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330510 n - A056241 (n + 1)

end

end A123934.P6355541797063425743

/-! ## A123934.P11686882228926187034

`A368994(A141908(n+2))+A027907(A195437(n))`
-/

namespace A123934.P11686882228926187034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A141908 (n + 2)).toNat + A027907 (A195437 n).toNat

end

end A123934.P11686882228926187034

/-! ## A123934.P9200444816654054115

`A027907(A195437(n))%A340620(n)`
-/

namespace A123934.P9200444816654054115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 (A195437 n).toNat) (A340620 n)

end

end A123934.P9200444816654054115

/-!
# A123935: Number of (directed) Hamiltonian paths on the 4 X n knight graph.

The programs for A123935, there is no canonical definition to state claims against.
-/

/-! ## A123935.P2346281121310950986

`2*A079137(n+1)`
-/

namespace A123935.P2346281121310950986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079137 (n + 1)

end

end A123935.P2346281121310950986

/-! ## A123935.P9685627146278098726

`4*A123936(n+1)`
-/

namespace A123935.P9685627146278098726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123936 (n + 1)

end

end A123935.P9685627146278098726

/-! ## A123935.P17546539172177177817

`Δ[2*∑[A079137(A028310(n))]]`
-/

namespace A123935.P17546539172177177817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079137 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123935.P17546539172177177817

/-! ## A123935.P1942472130654966065

`A079137(A000027(n+1))+A079137(n+1)`
-/

namespace A123935.P1942472130654966065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079137 (A000027 (n + 1)).toNat + A079137 (n + 1)

end

end A123935.P1942472130654966065

/-! ## A123935.P14012020437829514984

`A079137(A028310(n+1))+A079137(n+1)`
-/

namespace A123935.P14012020437829514984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079137 (A028310 (n + 1)).toNat + A079137 (n + 1)

end

end A123935.P14012020437829514984

/-! ## A123935.P5468321643615540015

`A123936(n+1)+A123936(n+1)+A079137(n+1)`
-/

namespace A123935.P5468321643615540015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123936 (n + 1) + (A123936 (n + 1) + A079137 (n + 1))

end

end A123935.P5468321643615540015

/-! ## A123935.P1696969761663043744

`A001105(n+1)%2+A079137(n+1)+A079137(n+1)`
-/

namespace A123935.P1696969761663043744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001105 (n + 1)) 2 + (A079137 (n + 1) + A079137 (n + 1))

end

end A123935.P1696969761663043744

/-!
# A123936: a(n) = A079137(n)/2.

The programs for A123936, there is no canonical definition to state claims against.
-/

/-! ## A123936.P6099564220252004289

`A079137(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123936.P6099564220252004289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079137 (n + 1) : ℚ) / 2

end

end A123936.P6099564220252004289

/-! ## A123936.P6360359736602135237

`Δ[∑[A079137(A028310(n))]/2]`
-/

namespace A123936.P6360359736602135237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079137 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123936.P6360359736602135237

/-! ## A123936.P9362930860994222828

`A123935(n+1)/4`
-/

namespace A123936.P9362930860994222828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123935 (n + 1) : ℚ) / 4

end

end A123936.P9362930860994222828

/-! ## A123936.P8126166149105326761

`A079312(n+1)/8`
-/

namespace A123936.P8126166149105326761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079312 (n + 1) : ℚ) / 8

end

end A123936.P8126166149105326761

/-!
# A123937: Triangle read by rows: T(x, y) = 0 if y > x, = 1 if y = 0, or = 2*Sum_{k >= 1, x-k^2 >= y} T(x-k^2, y-1) otherwise. The zeros are omitted from the sequence.

The programs for A123937, there is no canonical definition to state claims against.
-/

/-! ## A123937.P4020806493988852809

`A059268(n)*A253641(A225816(n+1))`
-/

namespace A123937.P4020806493988852809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A253641 (A225816 (n + 1)).toNat

end

end A123937.P4020806493988852809

/-! ## A123937.P16423001432723728296

`A130321(A061579(n))*A253641(A225816(n+1))`
-/

namespace A123937.P16423001432723728296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A253641 (A225816 (n + 1)).toNat

end

end A123937.P16423001432723728296

/-! ## A123937.P17517203687509873609

`A261596(A059268(n+3))+A059268(n)`
-/

namespace A123937.P17517203687509873609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261596 (A059268 (n + 3)).toNat + A059268 n

end

end A123937.P17517203687509873609

/-! ## A123937.P1839395188956423861

`A059268(n)*A334029(A078121(n))`
-/

namespace A123937.P1839395188956423861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A334029 (A078121 n).toNat

end

end A123937.P1839395188956423861

/-! ## A123937.P15155762404535356200

`A059268(n)*A323023(A330964(n))`
-/

namespace A123937.P15155762404535356200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A323023 (A330964 n).toNat

end

end A123937.P15155762404535356200

/-!
# A123941: The (1,2)-entry in the 3 X 3 matrix M^n, where M = {{2, 1, 1}, {1, 1, 0}, {1, 0, 0}}.

The programs for A123941, the canonical program `A123941.P14233956720767662706` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123941 has offset 0).

The definition of A123941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123941.P14233956720767662706

`3*a(n-1)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123941

/-- `3*a(n-1)-a(n-3)` -/
def P14233956720767662706.Spec : Prop :=
  ∀ n, P14233956720767662706.a n = A123941 n

theorem P14233956720767662706.correct : P14233956720767662706.Spec := by
  intro n
  simp only [A123941]

end A123941

/-! ## A123941.P3205114650735706770

`ogf(x/(1-3x+x^3))`
-/

namespace A123941.P3205114650735706770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 0, 1] n

end

end A123941.P3205114650735706770

namespace A123941

/-- `ogf(x/(1-3x+x^3))` -/
def P3205114650735706770.Spec : Prop :=
  ∀ n, P3205114650735706770.a n = A123941 n

end A123941

/-! ## A123941.P650469774059560917

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A123941.P650469774059560917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A123941.P650469774059560917

namespace A123941

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P650469774059560917.Spec : Prop :=
  ∀ n, P650469774059560917.a n = A123941 n

theorem P650469774059560917.correct : P650469774059560917.Spec := by
  intro n
  simp only [A123941, Nat.add_sub_cancel, A123941.P650469774059560917.a, A123941.P14233956720767662706.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123941

/-! ## A123941.P13046236695885191708

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A123941.P13046236695885191708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A123941.P13046236695885191708

namespace A123941

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P13046236695885191708.Spec : Prop :=
  ∀ n, P13046236695885191708.a n = A123941 n

theorem P13046236695885191708.correct : P13046236695885191708.Spec := by
  intro n
  simp only [A123941, Nat.add_sub_cancel, A123941.P13046236695885191708.a, A123941.P14233956720767662706.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123941

/-! ## A123941.P15867217271233544041

`∑[A187505(3*n)]`
-/

namespace A123941.P15867217271233544041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123941.P15867217271233544041

namespace A123941

/-- `∑[A187505(3*n)]` -/
def P15867217271233544041.Spec : Prop :=
  ∀ n, P15867217271233544041.a n = A123941 n

end A123941

/-! ## A123941.P2107981151191369782

`A187506(3*n+1)`
-/

namespace A123941.P2107981151191369782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (3 * n + 1)

end

end A123941.P2107981151191369782

namespace A123941

/-- `A187506(3*n+1)` -/
def P2107981151191369782.Spec : Prop :=
  ∀ n, P2107981151191369782.a n = A123941 n

end A123941

/-! ## A123941.P12646513891132357676

`A187505(3*n+2)`
-/

namespace A123941.P12646513891132357676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * n + 2)

end

end A123941.P12646513891132357676

namespace A123941

/-- `A187505(3*n+2)` -/
def P12646513891132357676.Spec : Prop :=
  ∀ n, P12646513891132357676.a n = A123941 n

end A123941

/-! ## A123941.P12509691650307140285

`∑[abs(A122099(n+2))]`
-/

namespace A123941.P12509691650307140285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123941.P12509691650307140285

namespace A123941

/-- `∑[abs(A122099(n+2))]` -/
def P12509691650307140285.Spec : Prop :=
  ∀ n, P12509691650307140285.a n = A123941 n

end A123941

/-! ## A123941.P18025785105717210906

`∑[abs(A122100(n+2))]`
-/

namespace A123941.P18025785105717210906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122100 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123941.P18025785105717210906

namespace A123941

/-- `∑[abs(A122100(n+2))]` -/
def P18025785105717210906.Spec : Prop :=
  ∀ n, P18025785105717210906.a n = A123941 n

end A123941

/-! ## A123941.P17197374093813041404

`∑[A187504(3*n+1)]`
-/

namespace A123941.P17197374093813041404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123941.P17197374093813041404

namespace A123941

/-- `∑[A187504(3*n+1)]` -/
def P17197374093813041404.Spec : Prop :=
  ∀ n, P17197374093813041404.a n = A123941 n

end A123941

/-! ## A123941.P6444299449150295952

`∑[record[Δ[A187504(n+1)]]]`
-/

namespace A123941.P6444299449150295952
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123941.P6444299449150295952

namespace A123941

/-- `∑[record[Δ[A187504(n+1)]]]` -/
def P6444299449150295952.Spec : Prop :=
  ∀ n, P6444299449150295952.a n = A123941 n

end A123941

/-! ## A123941.P9057394617169667789

`A187503(3*(n+1)+1)`
-/

namespace A123941.P9057394617169667789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * (n + 1) + 1)

end

end A123941.P9057394617169667789

namespace A123941

/-- `A187503(3*(n+1)+1)` -/
def P9057394617169667789.Spec : Prop :=
  ∀ n, P9057394617169667789.a n = A123941 n

end A123941

/-! ## A123941.P5775909185495111313

`A052536(n)-A147704(n)`
-/

namespace A123941.P5775909185495111313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - A147704 n

end

end A123941.P5775909185495111313

namespace A123941

/-- `A052536(n)-A147704(n)` -/
def P5775909185495111313.Spec : Prop :=
  ∀ n, P5775909185495111313.a n = A123941 n

end A123941

/-! ## A123941.P12141507724391208552

`A122100(n+1)+A052545(n)`
-/

namespace A123941.P12141507724391208552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 1) + A052545 n

end

end A123941.P12141507724391208552

namespace A123941

/-- `A122100(n+1)+A052545(n)` -/
def P12141507724391208552.Spec : Prop :=
  ∀ n, P12141507724391208552.a n = A123941 n

end A123941

/-! ## A123941.P2589949555819554931

`A215448(n+1)+A122100(n+2)`
-/

namespace A123941.P2589949555819554931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 (n + 1) + A122100 (n + 2)

end

end A123941.P2589949555819554931

namespace A123941

/-- `A215448(n+1)+A122100(n+2)` -/
def P2589949555819554931.Spec : Prop :=
  ∀ n, P2589949555819554931.a n = A123941 n

end A123941

/-! ## A123941.P15957267770158558424

`A091024(A028310(n)-1)+A091024(n)`
-/

namespace A123941.P15957267770158558424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A028310 n - 1).toNat + A091024 n

end

end A123941.P15957267770158558424

namespace A123941

/-- `A091024(A028310(n)-1)+A091024(n)` -/
def P15957267770158558424.Spec : Prop :=
  ∀ n, P15957267770158558424.a n = A123941 n

end A123941

/-! ## A123941.P13864192910662773051

`A091024(n-A057427(n))+A091024(n)`
-/

namespace A123941.P13864192910662773051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 ((n : ℤ) - A057427 n).toNat + A091024 n

end

end A123941.P13864192910662773051

namespace A123941

/-- `A091024(n-A057427(n))+A091024(n)` -/
def P13864192910662773051.Spec : Prop :=
  ∀ n, P13864192910662773051.a n = A123941 n

end A123941

/-! ## A123941.P863834812227569415

`A215448(n+1)+A052545(n)-A052536(n)`
-/

namespace A123941.P863834812227569415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 (n + 1) + (A052545 n - A052536 n)

end

end A123941.P863834812227569415

namespace A123941

/-- `A215448(n+1)+A052545(n)-A052536(n)` -/
def P863834812227569415.Spec : Prop :=
  ∀ n, P863834812227569415.a n = A123941 n

end A123941

/-! ## A123941.P10976680777838455383

`A215448(n+1)+A215448(n)-A052545(n)`
-/

namespace A123941.P10976680777838455383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 (n + 1) + (A215448 n - A052545 n)

end

end A123941.P10976680777838455383

namespace A123941

/-- `A215448(n+1)+A215448(n)-A052545(n)` -/
def P10976680777838455383.Spec : Prop :=
  ∀ n, P10976680777838455383.a n = A123941 n

end A123941

/-! ## A123941.P2374340788189252091

`record[Δ[A038197(n)]]`
-/

namespace A123941.P2374340788189252091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123941.P2374340788189252091

namespace A123941

/-- `record[Δ[A038197(n)]]` -/
def P2374340788189252091.Spec : Prop :=
  ∀ n, P2374340788189252091.a n = A123941 n

end A123941

/-!
# A123942: The (1,4)-entry in the 4 X 4 matrix M^n, where M={{3, 2, 1, 1}, {2, 1, 1, 0}, {1, 1, 0, 0}, {1, 0, 0, 0}} (n>=0).

The programs for A123942, the canonical program `A123942.P17345646413702673826` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123942 has offset 0).

The definition of A123942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123942.P17345646413702673826

`4*a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123942

/-- `4*a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P17345646413702673826.Spec : Prop :=
  ∀ n, P17345646413702673826.a n = A123942 n

theorem P17345646413702673826.correct : P17345646413702673826.Spec := by
  intro n
  simp only [A123942]

end A123942

/-! ## A123942.P18362318700483038136

`ogf((x-x^2-x^3)/(1-4x-4x^2+x^3+x^4))`
-/

namespace A123942.P18362318700483038136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -4, -4, 1, 1] n

end

end A123942.P18362318700483038136

namespace A123942

/-- `ogf((x-x^2-x^3)/(1-4x-4x^2+x^3+x^4))` -/
def P18362318700483038136.Spec : Prop :=
  ∀ n, P18362318700483038136.a n = A123942 n

end A123942

/-! ## A123942.P4993503207505707967

`A057363(A293543(n)+A237254(2*n+1)-A002310(n))`
-/

namespace A123942.P4993503207505707967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A293543 n + (A237254 (2 * n + 1) - A002310 n)).toNat

end

end A123942.P4993503207505707967

namespace A123942

/-- `A057363(A293543(n)+A237254(2*n+1)-A002310(n))` -/
def P4993503207505707967.Spec : Prop :=
  ∀ n, P4993503207505707967.a n = A123942 n

end A123942

/-!
# A123943: The (1,5)-entry in the 5 X 5 matrix M^n, where M={{5, 3, 2, 1, 1}, {3, 2, 1, 1, 0}, {2, 1, 1, 0, 0}, {1, 1, 0, 0, 0}, {1, 0, 0, 0, 0}}.

The programs for A123943, the canonical program `A123943.P8141238835137160502` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123943 has offset 0).

The definition of A123943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123943.P8141238835137160502

`8*a(n-1)-6*a(n-3)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=40, a(4)=315`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123943

/-- `8*a(n-1)-6*a(n-3)+a(n-5)` -/
def P8141238835137160502.Spec : Prop :=
  ∀ n, P8141238835137160502.a n = A123943 n

theorem P8141238835137160502.correct : P8141238835137160502.Spec := by
  intro n
  simp only [A123943]

end A123943

/-! ## A123943.P8691547651064328082

`A025480(5*A251710(3*n+2))`
-/

namespace A123943.P8691547651064328082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (5 * A251710 (3 * n + 2)).toNat

end

end A123943.P8691547651064328082

namespace A123943

/-- `A025480(5*A251710(3*n+2))` -/
def P8691547651064328082.Spec : Prop :=
  ∀ n, P8691547651064328082.a n = A123943 n

end A123943

/-!
# A123944: Numbers k such that A120301(k) differs from A058313(k).

The programs for A123944, there is no canonical definition to state claims against.
-/

/-! ## A123944.P15430887501768567064

`A347532(n+1)+A307206(A319445(2*(n+2)))`
-/

namespace A123944.P15430887501768567064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347532 (n + 1) + A307206 (A319445 (2 * (n + 2))).toNat

end

end A123944.P15430887501768567064

/-!
# A123946: a(3n) = floor(43*2^n/28) - 1, a(3n+1) = a(3n) + 3*2^(n-3), a(3n+2) = floor(17*2^n/7 - 6/7) for n>=3.

The programs for A123946, there is no canonical definition to state claims against.
-/

/-! ## A123946.P13835631544396788265

`A239100(round(sqrt(n²+1)))+1`
-/

namespace A123946.P13835631544396788265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239100 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A123946.P13835631544396788265

/-! ## A123946.P15833231073525747876

`A326670(a(2%n))+A239100(n)` with `a(0)=1`
-/

namespace A123946.P15833231073525747876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326670 (a (2 % n)).toNat + A239100 n

end

end A123946.P15833231073525747876

/-! ## A123946.P6160663176913652168

`A326670(a(1-char[1]))+A239100(n)` with `a(0)=1`
-/

namespace A123946.P6160663176913652168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326670 (a (1 - (if ∃ j, f1 j = n then 1 else 0))).toNat + A239100 n

end

end A123946.P6160663176913652168

/-! ## A123946.P358352852301517180

`2-(A326670(a(n%2))-A239100(n))` with `a(0)=1, a(1)=1`
-/

namespace A123946.P358352852301517180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (A326670 (a (n % 2)).toNat - A239100 n)

end

end A123946.P358352852301517180

/-! ## A123946.P1821202151404912323

`A044941(A002531(n))+A003073(n)`
-/

namespace A123946.P1821202151404912323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A002531 n).toNat + A003073 n

end

end A123946.P1821202151404912323

/-!
# A123947: Expansion of x^2*(1+x-x^2)/(1-2*x-4*x^2+x^3+x^4).

The programs for A123947, the canonical program `A123947.P2348371082318591100` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123947 has offset 1).

The definition of A123947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2-x^3)/(1-2x-4x^2+x^3+x^4))` (program `A123947.P2348371082318591100`, by `A123947.P2348371082318591100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123947.P2348371082318591100

`ogf((x+x^2-x^3)/(1-2x-4x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123947

/-- `ogf((x+x^2-x^3)/(1-2x-4x^2+x^3+x^4))` -/
def P2348371082318591100.Spec : Prop :=
  ∀ n, P2348371082318591100.a n = A123947 (n + 1)

theorem P2348371082318591100.correct : P2348371082318591100.Spec := by
  intro n
  simp only [A123947, Nat.add_sub_cancel]

end A123947

/-! ## A123947.P15498939143935973553

`2*a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A123947.P15498939143935973553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 9] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A123947.P15498939143935973553

namespace A123947

/-- `2*a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P15498939143935973553.Spec : Prop :=
  ∀ n, P15498939143935973553.a n = A123947 (n + 1)

end A123947

/-! ## A123947.P16589314144089416613

`A008616(A301879(n+1)-A001281(n))`
-/

namespace A123947.P16589314144089416613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A301879 (n + 1) - A001281 n).toNat

end

end A123947.P16589314144089416613

namespace A123947

/-- `A008616(A301879(n+1)-A001281(n))` -/
def P16589314144089416613.Spec : Prop :=
  ∀ n, P16589314144089416613.a n = A123947 (n + 1)

end A123947

/-!
# A123949: This sequence needs a definition.

The programs for A123949, there is no canonical definition to state claims against.
-/

/-! ## A123949.P2560008490103425626

`A104509(n)%A105397(A259384(n+1))`
-/

namespace A123949.P2560008490103425626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104509 n) (A105397 (A259384 (n + 1)).toNat)

end

end A123949.P2560008490103425626

/-!
# A123950: Expansion of g.f.: x^2*(1-2*x) / (1-3*x-3*x^2+2*x^3).

The programs for A123950, the canonical program `A123950.P8374612910323674245` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123950 has offset 1).

The definition of A123950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2)/(1-3x-3x^2+2x^3))` (program `A123950.P8374612910323674245`, by `A123950.P8374612910323674245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123950.P8374612910323674245

`ogf((x-2x^2)/(1-3x-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123950

/-- `ogf((x-2x^2)/(1-3x-3x^2+2x^3))` -/
def P8374612910323674245.Spec : Prop :=
  ∀ n, P8374612910323674245.a n = A123950 (n + 1)

theorem P8374612910323674245.correct : P8374612910323674245.Spec := by
  intro n
  simp only [A123950, Nat.add_sub_cancel]

end A123950

/-! ## A123950.P2275290458349303778

`3*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A123950.P2275290458349303778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3)

end

end A123950.P2275290458349303778

namespace A123950

/-- `3*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P2275290458349303778.Spec : Prop :=
  ∀ n, P2275290458349303778.a n = A123950 (n + 1)

end A123950

/-! ## A123950.P16234077990742352229

`Δ[A148253(n)-A111439(A020002(n))]`
-/

namespace A123950.P16234077990742352229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148253 n - A111439 (A020002 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123950.P16234077990742352229

namespace A123950

/-- `Δ[A148253(n)-A111439(A020002(n))]` -/
def P16234077990742352229.Spec : Prop :=
  ∀ n, P16234077990742352229.a n = A123950 (n + 1)

end A123950

/-!
# A123952: Sum of first row of the 5 X 5 matrix M^n, where M = {{5,-1,0,0,0}, {-1,5,-1,0,0}, {0,-1,5,-1,0}, {0,0,-1,5,-1}, {0,0,0,-1,5}}.

The programs for A123952, the canonical program `A123952.P15871086147065171986` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123952 has offset 0).

The definition of A123952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123952.P15871086147065171986

`15*a(n-1)-72*a(n-2)+110*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123952

/-- `15*a(n-1)-72*a(n-2)+110*a(n-3)` -/
def P15871086147065171986.Spec : Prop :=
  ∀ n, P15871086147065171986.a n = A123952 n

theorem P15871086147065171986.correct : P15871086147065171986.Spec := by
  intro n
  simp only [A123952]

end A123952

/-! ## A123952.P7656474398522030563

`A056039(2*A104455(n))`
-/

namespace A123952.P7656474398522030563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (2 * A104455 n).toNat

end

end A123952.P7656474398522030563

namespace A123952

/-- `A056039(2*A104455(n))` -/
def P7656474398522030563.Spec : Prop :=
  ∀ n, P7656474398522030563.a n = A123952 n

end A123952

/-!
# A123954: Expansion of g.f.: x^5/((1-3*x)*(1-4*x)*(1-5*x)*(1 - 8*x + 13*x^2)).

The programs for A123954, the canonical program `A123954.P12062937612146197065` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123954 has offset 1).

The definition of A123954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123954.P12062937612146197065

`(4^(n+1)-3^(n+1)-3*5^n)/12+(4*A153594(n+2)-19*A153594(n+1))/78`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123954

/-- `(4^(n+1)-3^(n+1)-3*5^n)/12+(4*A153594(n+2)-19*A153594(n+1))/78` -/
def P12062937612146197065.Spec : Prop :=
  ∀ n, P12062937612146197065.a n = (A123954 (n + 1) : ℚ)

end A123954

/-! ## A123954.P3858680327548517222

`A237496(floor((n+1)^(n-2))+1)`
-/

namespace A123954.P3858680327548517222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237496 (⌊(n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + 1).toNat

end

end A123954.P3858680327548517222

namespace A123954

/-- `A237496(floor((n+1)^(n-2))+1)` -/
def P3858680327548517222.Spec : Prop :=
  ∀ n, P3858680327548517222.a n = A123954 (n + 1)

end A123954

/-! ## A123954.P6255805071179234633

`A354569(ceil(ϕ*a(n-1)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A123954.P6255805071179234633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  A354569 ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉.toNat

end

end A123954.P6255805071179234633

namespace A123954

/-- `A354569(ceil(ϕ*a(n-1)))` -/
def P6255805071179234633.Spec : Prop :=
  ∀ n, P6255805071179234633.a n = A123954 (n + 1)

end A123954

/-!
# A123955: Expansion of g.f.: x^5/( (1-3*x) * (1-2*x) * (1-4*x) * (1-6*x+6*x^2) ).

The programs for A123955, there is no canonical definition to state claims against.
-/

/-! ## A123955.P14613110840529747778

`A002212(A023052(n+2))-A007582(n)`
-/

namespace A123955.P14613110840529747778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (A023052 (n + 2)).toNat - A007582 n

end

end A123955.P14613110840529747778

/-! ## A123955.P93152106471073535

`A127686(Δ[floor(∑[n/3])²]+1)`
-/

namespace A123955.P93152106471073535
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127686 (f1 (n + 1) - f1 n + 1).toNat

end

end A123955.P93152106471073535

/-! ## A123955.P13392713841917288844

`A238784(A271318(n))`
-/

namespace A123955.P13392713841917288844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238784 (A271318 n).toNat

end

end A123955.P13392713841917288844

/-!
# A123957: Expansion of g.f.: x^4/((1+2*x) * (1-2*x+x^2+2*x^3)).

The programs for A123957, the canonical program `A123957.P5376113278255085939` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123957 has offset 1).

The definition of A123957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^3/(1-3x^2+4x^3+4x^4))` (program `A123957.P5376113278255085939`, by `A123957.P5376113278255085939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123957.P5376113278255085939

`ogf(x^3/(1-3x^2+4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123957

/-- `ogf(x^3/(1-3x^2+4x^3+4x^4))` -/
def P5376113278255085939.Spec : Prop :=
  ∀ n, P5376113278255085939.a n = A123957 (n + 1)

theorem P5376113278255085939.correct : P5376113278255085939.Spec := by
  intro n
  simp only [A123957, Nat.add_sub_cancel]

end A123957

/-! ## A123957.P8960150693965504711

`3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A123957.P8960150693965504711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  3 * a (n - 2) - 4 * a (n - 3) - 4 * a (n - 4)

end

end A123957.P8960150693965504711

namespace A123957

/-- `3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P8960150693965504711.Spec : Prop :=
  ∀ n, P8960150693965504711.a n = A123957 (n + 1)

end A123957

/-!
# A123958: Expansion of x^3 / ( 1+2*x^2+2*x^3 ).

The programs for A123958, the canonical program `A123958.P17249616253626449534` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123958 has offset 1).

The definition of A123958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1+2x^2+2x^3))` (program `A123958.P17249616253626449534`, by `A123958.P17249616253626449534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123958.P17249616253626449534

`ogf(x^2/(1+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123958

/-- `ogf(x^2/(1+2x^2+2x^3))` -/
def P17249616253626449534.Spec : Prop :=
  ∀ n, P17249616253626449534.a n = A123958 (n + 1)

theorem P17249616253626449534.correct : P17249616253626449534.Spec := by
  intro n
  simp only [A123958, Nat.add_sub_cancel]

end A123958

/-! ## A123958.P3812410484688898412

`-(2*(a(n-2)+a(n-3)))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A123958.P3812410484688898412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  -(2 * (a (n - 2) + a (n - 3)))

end

end A123958.P3812410484688898412

namespace A123958

/-- `-(2*(a(n-2)+a(n-3)))` -/
def P3812410484688898412.Spec : Prop :=
  ∀ n, P3812410484688898412.a n = A123958 (n + 1)

end A123958

/-! ## A123958.P11276380319237122206

`2-2*(a(n-2)+a(n-3)+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A123958.P11276380319237122206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 - 2 * (a (n - 2) + a (n - 3) + 1)

end

end A123958.P11276380319237122206

namespace A123958

/-- `2-2*(a(n-2)+a(n-3)+1)` -/
def P11276380319237122206.Spec : Prop :=
  ∀ n, P11276380319237122206.a n = A123958 (n + 1)

end A123958

/-! ## A123958.P17619045093486787751

`a(n-1)-2*(a(n-2)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A123958.P17619045093486787751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  a (n - 1) - 2 * (a (n - 2) - a (n - 4))

end

end A123958.P17619045093486787751

namespace A123958

/-- `a(n-1)-2*(a(n-2)-a(n-4))` -/
def P17619045093486787751.Spec : Prop :=
  ∀ n, P17619045093486787751.a n = A123958 (n + 1)

end A123958

/-! ## A123958.P745152485228138979

`A077968(1-(3-n)%(n+1))`
-/

namespace A123958.P745152485228138979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077968 (1 - Int.tmod (3 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A123958.P745152485228138979

namespace A123958

/-- `A077968(1-(3-n)%(n+1))` -/
def P745152485228138979.Spec : Prop :=
  ∀ n, P745152485228138979.a n = A123958 (n + 1)

end A123958

/-! ## A123958.P8149291068746504764

`A077968(n)+Δ[A077968(n+1)/2]`
-/

namespace A123958.P8149291068746504764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077968 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077968 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A123958.P8149291068746504764

namespace A123958

/-- `A077968(n)+Δ[A077968(n+1)/2]` -/
def P8149291068746504764.Spec : Prop :=
  ∀ n, P8149291068746504764.a n = (A123958 (n + 1) : ℚ)

end A123958

/-!
# A123959: Expansion of 1/(8*x^5+8*x^4-8*x^3-4*x^2+1).

The programs for A123959, the canonical program `A123959.P555599162108238869` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123959 has offset 1).

The definition of A123959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x^2-8x^3+8x^4+8x^5))` (program `A123959.P555599162108238869`, by `A123959.P555599162108238869.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123959.P555599162108238869

`ogf(1/(1-4x^2-8x^3+8x^4+8x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123959

/-- `ogf(1/(1-4x^2-8x^3+8x^4+8x^5))` -/
def P555599162108238869.Spec : Prop :=
  ∀ n, P555599162108238869.a n = A123959 (n + 1)

theorem P555599162108238869.correct : P555599162108238869.Spec := by
  intro n
  simp only [A123959, Nat.add_sub_cancel]

end A123959

/-!
# A123960: Expansion of 2*x^4 / (1 - 11*x + 45*x^2 - 80*x^3 + 49*x^4).

The programs for A123960, the canonical program `A123960.P13605864444502081750` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123960 has offset 1).

The definition of A123960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(2x^3/(1-11x+45x^2-80x^3+49x^4))` (program `A123960.P13605864444502081750`, by `A123960.P13605864444502081750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123960.P13605864444502081750

`ogf(2x^3/(1-11x+45x^2-80x^3+49x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123960

/-- `ogf(2x^3/(1-11x+45x^2-80x^3+49x^4))` -/
def P13605864444502081750.Spec : Prop :=
  ∀ n, P13605864444502081750.a n = A123960 (n + 1)

theorem P13605864444502081750.correct : P13605864444502081750.Spec := by
  intro n
  simp only [A123960, Nat.add_sub_cancel]

end A123960

/-! ## A123960.P5640987248111572114

`A079692(A151829(n+2))`
-/

namespace A123960.P5640987248111572114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (A151829 (n + 2)).toNat

end

end A123960.P5640987248111572114

namespace A123960

/-- `A079692(A151829(n+2))` -/
def P5640987248111572114.Spec : Prop :=
  ∀ n, P5640987248111572114.a n = A123960 (n + 1)

end A123960

/-! ## A123960.P14861844771127477963

`A026922(A216391(n+1)*A349058(n))`
-/

namespace A123960.P14861844771127477963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A216391 (n + 1) * A349058 n).toNat

end

end A123960.P14861844771127477963

namespace A123960

/-- `A026922(A216391(n+1)*A349058(n))` -/
def P14861844771127477963.Spec : Prop :=
  ∀ n, P14861844771127477963.a n = A123960 (n + 1)

end A123960

/-!
# A123961: Triangle T(n, k) = k^2*(1+n)^2 - 4*n, read by rows.

The programs for A123961, the canonical program `A123961.P4335021898739612935` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123961 has offset 0).

The definition of A123961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)²*(1+row(n))²-4*row(n)` (program `A123961.P4335021898739612935`, by `A123961.P4335021898739612935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123961.P4335021898739612935

`col(n)²*(1+row(n))²-4*row(n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123961

/-- `col(n)²*(1+row(n))²-4*row(n)` -/
def P4335021898739612935.Spec : Prop :=
  ∀ n, P4335021898739612935.a n = A123961 n

theorem P4335021898739612935.correct : P4335021898739612935.Spec := by
  intro n
  simp only [A123961]

end A123961

/-!
# A123963: Triangle T(n, k) = k^4 - n^4 + 2*k*n*(1 - k^2*n^2), read by rows.

The programs for A123963, the canonical program `A123963.P16074757165932926943` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123963 has offset 0).

The definition of A123963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)^4-row(n)^4+2*col(n)*row(n)*(1-col(n)²*row(n)²)` (program `A123963.P16074757165932926943`, by `A123963.P16074757165932926943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123963.P16074757165932926943

`col(n)^4-row(n)^4+2*col(n)*row(n)*(1-col(n)²*row(n)²)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123963

/-- `col(n)^4-row(n)^4+2*col(n)*row(n)*(1-col(n)²*row(n)²)` -/
def P16074757165932926943.Spec : Prop :=
  ∀ n, P16074757165932926943.a n = A123963 n

theorem P16074757165932926943.correct : P16074757165932926943.Spec := by
  intro n
  simp only [A123963]

end A123963

/-!
# A123965: Triangle read by rows: T(0,0)=1; T(n,k) is the coefficient of x^k in the polynomial (-1)^n*p(n,x), where p(n,x) is the characteristic polynomial of the n X n tridiagonal matrix with 3's on the main diagonal and -1's on the super- and subdiagonal (n >= 1; 0 <= k <= n).

The programs for A123965, the canonical program `A123965.P5789054996668099768` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123965 has offset 0).

The definition of A123965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123965.P5789054996668099768

`3*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123965

/-- `3*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` -/
def P5789054996668099768.Spec : Prop :=
  ∀ n, P5789054996668099768.a n = A123965 n

theorem P5789054996668099768.correct : P5789054996668099768.Spec := by
  intro n
  simp only [A123965]

end A123965

/-! ## A123965.P2480735115869592686

`2*A123971(n)-A124037(n)`
-/

namespace A123965.P2480735115869592686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123971 n - A124037 n

end

end A123965.P2480735115869592686

namespace A123965

/-- `2*A123971(n)-A124037(n)` -/
def P2480735115869592686.Spec : Prop :=
  ∀ n, P2480735115869592686.a n = A123965 n

end A123965

/-! ## A123965.P5838647312207887409

`A124029(n)/A159764(n)*A207815(n)`
-/

namespace A123965.P5838647312207887409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124029 n : ℚ) / (A159764 n : ℚ) * (A207815 n : ℚ)

end

end A123965.P5838647312207887409

namespace A123965

/-- `A124029(n)/A159764(n)*A207815(n)` -/
def P5838647312207887409.Spec : Prop :=
  ∀ n, P5838647312207887409.a n = (A123965 n : ℚ)

end A123965

/-! ## A123965.P1591493589411229239

`Δ[A010751(n)]*A207815(n)`
-/

namespace A123965.P1591493589411229239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A207815 n

end

end A123965.P1591493589411229239

namespace A123965

/-- `Δ[A010751(n)]*A207815(n)` -/
def P1591493589411229239.Spec : Prop :=
  ∀ n, P1591493589411229239.a n = A123965 n

end A123965

/-! ## A123965.P2469545550399563258

`A033999(A061885(n))*A125662(n)`
-/

namespace A123965.P2469545550399563258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A125662 n

end

end A123965.P2469545550399563258

namespace A123965

/-- `A033999(A061885(n))*A125662(n)` -/
def P2469545550399563258.Spec : Prop :=
  ∀ n, P2469545550399563258.a n = A123965 n

end A123965

/-! ## A123965.P16291950974588950697

`A033999(comp[∑[n]]+n)*A207815(n)`
-/

namespace A123965.P16291950974588950697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) * A207815 n

end

end A123965.P16291950974588950697

namespace A123965

/-- `A033999(comp[∑[n]]+n)*A207815(n)` -/
def P16291950974588950697.Spec : Prop :=
  ∀ n, P16291950974588950697.a n = A123965 n

end A123965

/-! ## A123965.P13605171339423918970

`A021010(A112367(n))*A125662(n)`
-/

namespace A123965.P13605171339423918970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A112367 n).toNat * A125662 n

end

end A123965.P13605171339423918970

namespace A123965

/-- `A021010(A112367(n))*A125662(n)` -/
def P13605171339423918970.Spec : Prop :=
  ∀ n, P13605171339423918970.a n = A123965 n

end A123965

/-! ## A123965.P16954256504317174311

`A004718(A059268(n))*A125662(n)`
-/

namespace A123965.P16954256504317174311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A059268 n).toNat * A125662 n

end

end A123965.P16954256504317174311

namespace A123965

/-- `A004718(A059268(n))*A125662(n)` -/
def P16954256504317174311.Spec : Prop :=
  ∀ n, P16954256504317174311.a n = A123965 n

end A123965

/-!
# A123966: Triangle A124029 with the (0,0) entry replaced by 4.

The programs for A123966, the canonical program `A123966.P2934336962651361883` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123966 has offset 0).

The definition of A123966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123966.P2934336962651361883

`A124029(A028310(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123966

/-- `A124029(A028310(n))` -/
def P2934336962651361883.Spec : Prop :=
  ∀ n, P2934336962651361883.a n = A123966 n

theorem P2934336962651361883.correct : P2934336962651361883.Spec := by
  intro n
  simp only [A123966]

end A123966

/-! ## A123966.P10758775579961004856

`A124029(A000007(n)+n)`
-/

namespace A123966.P10758775579961004856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A000007 n + (n : ℤ)).toNat

end

end A123966.P10758775579961004856

namespace A123966

/-- `A124029(A000007(n)+n)` -/
def P10758775579961004856.Spec : Prop :=
  ∀ n, P10758775579961004856.a n = A123966 n

end A123966

/-! ## A123966.P13362104986470679533

`A124029(or(n, A000007(n)))`
-/

namespace A123966.P13362104986470679533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A123966.P13362104986470679533

namespace A123966

/-- `A124029(or(n, A000007(n)))` -/
def P13362104986470679533.Spec : Prop :=
  ∀ n, P13362104986470679533.a n = A123966 n

end A123966

/-! ## A123966.P13312475744747828880

`A124029(xor(n, A000007(n)))`
-/

namespace A123966.P13312475744747828880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A123966.P13312475744747828880

namespace A123966

/-- `A124029(xor(n, A000007(n)))` -/
def P13312475744747828880.Spec : Prop :=
  ∀ n, P13312475744747828880.a n = A123966 n

end A123966

/-! ## A123966.P10319483627869647286

`A124029(A004273(n)+1-n)`
-/

namespace A123966.P10319483627869647286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A004273 n + (1 - (n : ℤ))).toNat

end

end A123966.P10319483627869647286

namespace A123966

/-- `A124029(A004273(n)+1-n)` -/
def P10319483627869647286.Spec : Prop :=
  ∀ n, P10319483627869647286.a n = A123966 n

end A123966

/-! ## A123966.P17031300341465296563

`A124029(1-(n-A004273(n)))`
-/

namespace A123966.P17031300341465296563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A123966.P17031300341465296563

namespace A123966

/-- `A124029(1-(n-A004273(n)))` -/
def P17031300341465296563.Spec : Prop :=
  ∀ n, P17031300341465296563.a n = A123966 n

end A123966

/-! ## A123966.P947352517278332819

`A124029(A000038(n)/2+n)`
-/

namespace A123966.P947352517278332819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A123966.P947352517278332819

namespace A123966

/-- `A124029(A000038(n)/2+n)` -/
def P947352517278332819.Spec : Prop :=
  ∀ n, P947352517278332819.a n = A123966 n

end A123966

/-! ## A123966.P1786080885868208797

`A124029(A000007(n)*A124029(n))*A124029(n)`
-/

namespace A123966.P1786080885868208797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A000007 n * A124029 n).toNat * A124029 n

end

end A123966.P1786080885868208797

namespace A123966

/-- `A124029(A000007(n)*A124029(n))*A124029(n)` -/
def P1786080885868208797.Spec : Prop :=
  ∀ n, P1786080885868208797.a n = A123966 n

end A123966

/-! ## A123966.P16124417773327072141

`A124029(n-A154955(n+2))`
-/

namespace A123966.P16124417773327072141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 ((n : ℤ) - A154955 (n + 2)).toNat

end

end A123966.P16124417773327072141

namespace A123966

/-- `A124029(n-A154955(n+2))` -/
def P16124417773327072141.Spec : Prop :=
  ∀ n, P16124417773327072141.a n = A123966 n

end A123966

/-! ## A123966.P10296389625081879178

`A124029(A154955(2*n+1)+n)`
-/

namespace A123966.P10296389625081879178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A154955 (2 * n + 1) + (n : ℤ)).toNat

end

end A123966.P10296389625081879178

namespace A123966

/-- `A124029(A154955(2*n+1)+n)` -/
def P10296389625081879178.Spec : Prop :=
  ∀ n, P10296389625081879178.a n = A123966 n

end A123966

/-! ## A123966.P2897210344070468104

`A124029(A007318(A000124(n)))`
-/

namespace A123966.P2897210344070468104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A007318 (A000124 n).toNat).toNat

end

end A123966.P2897210344070468104

namespace A123966

/-- `A124029(A007318(A000124(n)))` -/
def P2897210344070468104.Spec : Prop :=
  ∀ n, P2897210344070468104.a n = A123966 n

end A123966

/-! ## A123966.P7109592631347616000

`A124029(A134478(∑[n]))`
-/

namespace A123966.P7109592631347616000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A123966.P7109592631347616000

namespace A123966

/-- `A124029(A134478(∑[n]))` -/
def P7109592631347616000.Spec : Prop :=
  ∀ n, P7109592631347616000.a n = A123966 n

end A123966

/-! ## A123966.P6241055649155924143

`A124029(A137734(n²))`
-/

namespace A123966.P6241055649155924143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A137734 (n ^ 2)).toNat

end

end A123966.P6241055649155924143

namespace A123966

/-- `A124029(A137734(n²))` -/
def P6241055649155924143.Spec : Prop :=
  ∀ n, P6241055649155924143.a n = A123966 n

end A123966

/-! ## A123966.P1981148104727971352

`A124029(A137735(n²))`
-/

namespace A123966.P1981148104727971352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124029 (A137735 (n ^ 2)).toNat

end

end A123966.P1981148104727971352

namespace A123966

/-- `A124029(A137735(n²))` -/
def P1981148104727971352.Spec : Prop :=
  ∀ n, P1981148104727971352.a n = A123966 n

end A123966

/-!
# A123967: Triangle read by rows: T(0,0)=1; for n >= 1 T(n,k) is the coefficient of x^k in the monic characteristic polynomial of the tridiagonal n X n matrix with main diagonal 5,5,5,... and sub- and superdiagonals 1,1,1,... (0 <= k <= n).

The programs for A123967, the canonical program `A123967.P17373168050048305311` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123967 has offset 0).

The definition of A123967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123967.P17373168050048305311

`T(n-1,k-1)-5*T(n-1,k)-T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123967

/-- `T(n-1,k-1)-5*T(n-1,k)-T(n-2,k)` -/
def P17373168050048305311.Spec : Prop :=
  ∀ n, P17373168050048305311.a n = A123967 n

theorem P17373168050048305311.correct : P17373168050048305311.Spec := by
  intro n
  simp only [A123967]

end A123967

/-! ## A123967.P15019105196047682844

`A097807(n)*A207824(n)`
-/

namespace A123967.P15019105196047682844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A207824 n

end

end A123967.P15019105196047682844

namespace A123967

/-- `A097807(n)*A207824(n)` -/
def P15019105196047682844.Spec : Prop :=
  ∀ n, P15019105196047682844.a n = A123967 n

end A123967

/-! ## A123967.P6078692590812012914

`A034947(A099375(n))*A207824(n)`
-/

namespace A123967.P6078692590812012914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A099375 n).toNat * A207824 n

end

end A123967.P6078692590812012914

namespace A123967

/-- `A034947(A099375(n))*A207824(n)` -/
def P6078692590812012914.Spec : Prop :=
  ∀ n, P6078692590812012914.a n = A123967 n

end A123967

/-! ## A123967.P6017184760073278579

`A053122(n)/A078812(n)*A207824(n)`
-/

namespace A123967.P6017184760073278579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A078812 n : ℚ) * (A207824 n : ℚ)

end

end A123967.P6017184760073278579

namespace A123967

/-- `A053122(n)/A078812(n)*A207824(n)` -/
def P6017184760073278579.Spec : Prop :=
  ∀ n, P6017184760073278579.a n = (A123967 n : ℚ)

end A123967

/-! ## A123967.P17083399308576210235

`A125662(n)/A207815(n)*A207824(n)`
-/

namespace A123967.P17083399308576210235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125662 n : ℚ) / (A207815 n : ℚ) * (A207824 n : ℚ)

end

end A123967.P17083399308576210235

namespace A123967

/-- `A125662(n)/A207815(n)*A207824(n)` -/
def P17083399308576210235.Spec : Prop :=
  ∀ n, P17083399308576210235.a n = (A123967 n : ℚ)

end A123967

/-! ## A123967.P773354931145278213

`A159764(n)/A207823(n)*A207824(n)`
-/

namespace A123967.P773354931145278213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159764 n : ℚ) / (A207823 n : ℚ) * (A207824 n : ℚ)

end

end A123967.P773354931145278213

namespace A123967

/-- `A159764(n)/A207823(n)*A207824(n)` -/
def P773354931145278213.Spec : Prop :=
  ∀ n, P773354931145278213.a n = (A123967 n : ℚ)

end A123967

/-! ## A123967.P15045998070182896299

`A087960(A133280(n))*A207824(n)`
-/

namespace A123967.P15045998070182896299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A133280 n).toNat * A207824 n

end

end A123967.P15045998070182896299

namespace A123967

/-- `A087960(A133280(n))*A207824(n)` -/
def P15045998070182896299.Spec : Prop :=
  ∀ n, P15045998070182896299.a n = A123967 n

end A123967

/-! ## A123967.P3679628139910730352

`A158388(A178112(n))*A207824(n)`
-/

namespace A123967.P3679628139910730352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A178112 n).toNat * A207824 n

end

end A123967.P3679628139910730352

namespace A123967

/-- `A158388(A178112(n))*A207824(n)` -/
def P3679628139910730352.Spec : Prop :=
  ∀ n, P3679628139910730352.a n = A123967 n

end A123967

/-! ## A123967.P1958788196534063710

`A158388(A053121(n))*A207824(n)`
-/

namespace A123967.P1958788196534063710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A053121 n).toNat * A207824 n

end

end A123967.P1958788196534063710

namespace A123967

/-- `A158388(A053121(n))*A207824(n)` -/
def P1958788196534063710.Spec : Prop :=
  ∀ n, P1958788196534063710.a n = A123967 n

end A123967

/-! ## A123967.P6018929972914333173

`A093829(A130321(n))*A207824(n)`
-/

namespace A123967.P6018929972914333173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A130321 n).toNat * A207824 n

end

end A123967.P6018929972914333173

namespace A123967

/-- `A093829(A130321(n))*A207824(n)` -/
def P6018929972914333173.Spec : Prop :=
  ∀ n, P6018929972914333173.a n = A123967 n

end A123967

/-!
# A123968: a(n) = n^2 - 3, starting at n=1.

The programs for A123968, the canonical program `A123968.P4707337920841887922` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123968 has offset 1).

The definition of A123968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-3` (program `A123968.P4707337920841887922`, by `A123968.P4707337920841887922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123968.P4707337920841887922

`(n+1)²-3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123968

/-- `(n+1)²-3` -/
def P4707337920841887922.Spec : Prop :=
  ∀ n, P4707337920841887922.a n = A123968 (n + 1)

theorem P4707337920841887922.correct : P4707337920841887922.Spec := by
  intro n
  simp only [A123968, Nat.add_sub_cancel]

end A123968

/-! ## A123968.P3979622540712768448

`record[(1-n)²-3]`
-/

namespace A123968.P3979622540712768448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123968.P3979622540712768448

namespace A123968

/-- `record[(1-n)²-3]` -/
def P3979622540712768448.Spec : Prop :=
  ∀ n, P3979622540712768448.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P16642009324320152751

`-or(2, -(n*(n+2)))`
-/

namespace A123968.P16642009324320152751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(n * (n + 2) : ℤ))

end

end A123968.P16642009324320152751

namespace A123968

/-- `-or(2, -(n*(n+2)))` -/
def P16642009324320152751.Spec : Prop :=
  ∀ n, P16642009324320152751.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P2512660613439172858

`-xor(2, -(n*(n+2)))`
-/

namespace A123968.P2512660613439172858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-(n * (n + 2) : ℤ))

end

end A123968.P2512660613439172858

namespace A123968

/-- `-xor(2, -(n*(n+2)))` -/
def P2512660613439172858.Spec : Prop :=
  ∀ n, P2512660613439172858.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P7142548820686030930

`ceil((n+3)*(n-tanh(9)))`
-/

namespace A123968.P7142548820686030930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℝ) * ((n : ℝ) - Real.tanh (9 : ℝ))⌉

end

end A123968.P7142548820686030930

namespace A123968

/-- `ceil((n+3)*(n-tanh(9)))` -/
def P7142548820686030930.Spec : Prop :=
  ∀ n, P7142548820686030930.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P13828002681012643709

`floor(n/acot(n+2)-ϕ)`
-/

namespace A123968.P13828002681012643709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ) - Real.goldenRatio⌋

end

end A123968.P13828002681012643709

namespace A123968

/-- `floor(n/acot(n+2)-ϕ)` -/
def P13828002681012643709.Spec : Prop :=
  ∀ n, P13828002681012643709.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P11476228292520945032

`∑[a(n-1)+2]` with `a(0)=-2, a(1)=3`
-/

namespace A123968.P11476228292520945032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123968.P11476228292520945032

namespace A123968

/-- `∑[a(n-1)+2]` -/
def P11476228292520945032.Spec : Prop :=
  ∀ n, P11476228292520945032.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P16716019874132136970

`ogf((2-7x+3x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A123968.P16716019874132136970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 7, -3] [1, -3, 3, -1] n

end

end A123968.P16716019874132136970

namespace A123968

/-- `ogf((2-7x+3x^2)/(-1+3x-3x^2+x^3))` -/
def P16716019874132136970.Spec : Prop :=
  ∀ n, P16716019874132136970.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P11636440926709156006

`-(xor(-1, (n+1)²)+4)`
-/

namespace A123968.P11636440926709156006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) ((n + 1) ^ 2 : ℤ) + 4)

end

end A123968.P11636440926709156006

namespace A123968

/-- `-(xor(-1, (n+1)²)+4)` -/
def P11636440926709156006.Spec : Prop :=
  ∀ n, P11636440926709156006.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P2232304018106997080

`floor(lcm(n, n+1)-ϕ+n)`
-/

namespace A123968.P2232304018106997080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (n + 1) : ℝ) - Real.goldenRatio + (n : ℝ)⌋

end

end A123968.P2232304018106997080

namespace A123968

/-- `floor(lcm(n, n+1)-ϕ+n)` -/
def P2232304018106997080.Spec : Prop :=
  ∀ n, P2232304018106997080.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P7818843906750227504

`Δ[a(n-1)-(3-n²)]` with `a(0)=0`
-/

namespace A123968.P7818843906750227504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (3 - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123968.P7818843906750227504

namespace A123968

/-- `Δ[a(n-1)-(3-n²)]` -/
def P7818843906750227504.Spec : Prop :=
  ∀ n, P7818843906750227504.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P18322986142936936173

`floor(lcm(2, 2*n)-(ϕ-n²))`
-/

namespace A123968.P18322986142936936173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) - (Real.goldenRatio - (n ^ 2 : ℝ))⌋

end

end A123968.P18322986142936936173

namespace A123968

/-- `floor(lcm(2, 2*n)-(ϕ-n²))` -/
def P18322986142936936173.Spec : Prop :=
  ∀ n, P18322986142936936173.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P411767633390701918

`floor(n*(n+2)-atan(n+2))`
-/

namespace A123968.P411767633390701918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 2) : ℝ) - Real.arctan (n + 2 : ℝ)⌋

end

end A123968.P411767633390701918

namespace A123968

/-- `floor(n*(n+2)-atan(n+2))` -/
def P411767633390701918.Spec : Prop :=
  ∀ n, P411767633390701918.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P12117639212741025914

`floor((n+2)*(n-acot(n+1)))`
-/

namespace A123968.P12117639212741025914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌋

end

end A123968.P12117639212741025914

namespace A123968

/-- `floor((n+2)*(n-acot(n+1)))` -/
def P12117639212741025914.Spec : Prop :=
  ∀ n, P12117639212741025914.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P8124075034071752371

`ceil((n+1)/acot(n)+n-3)`
-/

namespace A123968.P8124075034071752371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) + ((n : ℤ) - 3 : ℝ)⌉

end

end A123968.P8124075034071752371

namespace A123968

/-- `ceil((n+1)/acot(n)+n-3)` -/
def P8124075034071752371.Spec : Prop :=
  ∀ n, P8124075034071752371.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P3489136314378614281

`round((n-1)/acot(n+2)+n)`
-/

namespace A123968.P3489136314378614281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ) + (n : ℝ))

end

end A123968.P3489136314378614281

namespace A123968

/-- `round((n-1)/acot(n+2)+n)` -/
def P3489136314378614281.Spec : Prop :=
  ∀ n, P3489136314378614281.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P380323418146354065

`floor(a(n-2)+4*n)` with `a(0)=-2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123968.P380323418146354065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 1] fun n a =>
  a (n - 2) + (4 * n : ℤ)

end

end A123968.P380323418146354065

namespace A123968

/-- `floor(a(n-2)+4*n)` -/
def P380323418146354065.Spec : Prop :=
  ∀ n, P380323418146354065.a n = A123968 (n + 1)

theorem P380323418146354065.correct : P380323418146354065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A123968, Nat.add_sub_cancel, A123968.P380323418146354065.a, A123968.P4707337920841887922.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A123968, Nat.add_sub_cancel, A123968.P380323418146354065.a, A123968.P4707337920841887922.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123968

/-! ## A123968.P15130351931676920394

`∑[4*n-a(n-1)]` with `a(0)=-2, a(1)=3`
-/

namespace A123968.P15130351931676920394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 3] fun n f1 =>
  (4 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123968.P15130351931676920394

namespace A123968

/-- `∑[4*n-a(n-1)]` -/
def P15130351931676920394.Spec : Prop :=
  ∀ n, P15130351931676920394.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P14962808432258308332

`xor(1, xor(1, ∑[2*n+1]-3))`
-/

namespace A123968.P14962808432258308332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3))

end

end A123968.P14962808432258308332

namespace A123968

/-- `xor(1, xor(1, ∑[2*n+1]-3))` -/
def P14962808432258308332.Spec : Prop :=
  ∀ n, P14962808432258308332.a n = A123968 (n + 1)

end A123968

/-! ## A123968.P4893640964076577131

`∑[record[(n+2)*(-1)^(n+1)]]`
-/

namespace A123968.P4893640964076577131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (-1) ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123968.P4893640964076577131

namespace A123968

/-- `∑[record[(n+2)*(-1)^(n+1)]]` -/
def P4893640964076577131.Spec : Prop :=
  ∀ n, P4893640964076577131.a n = A123968 (n + 1)

end A123968

/-!
# A123970: Triangle read by rows: T(0,0)=1; T(n,k) is the coefficient of x^(n-k) in the monic characteristic polynomial of the n X n matrix (min(i,j)) (i,j=1,2,...,n) (0 <= k <= n, n >= 1).

The programs for A123970, the canonical program `A123970.P3005013756515029244` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123970 has offset 0).

The definition of A123970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123970.P3005013756515029244

`2*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123970

/-- `2*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` -/
def P3005013756515029244.Spec : Prop :=
  ∀ n, P3005013756515029244.a n = A123970 n

theorem P3005013756515029244.correct : P3005013756515029244.Spec := by
  intro n
  simp only [A123970]

end A123970

/-! ## A123970.P17743339321085014327

`A076756(A061579(n))`
-/

namespace A123970.P17743339321085014327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A061579 n).toNat

end

end A123970.P17743339321085014327

namespace A123970

/-- `A076756(A061579(n))` -/
def P17743339321085014327.Spec : Prop :=
  ∀ n, P17743339321085014327.a n = A123970 n

end A123970

/-! ## A123970.P9581733864212383951

`A076756(A114327(n)+n)`
-/

namespace A123970.P9581733864212383951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A114327 n + (n : ℤ)).toNat

end

end A123970.P9581733864212383951

namespace A123970

/-- `A076756(A114327(n)+n)` -/
def P9581733864212383951.Spec : Prop :=
  ∀ n, P9581733864212383951.a n = A123970 n

end A123970

/-! ## A123970.P876073326344204379

`A076756(A038722(n+1)-1)`
-/

namespace A123970.P876073326344204379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A038722 (n + 1) - 1).toNat

end

end A123970.P876073326344204379

namespace A123970

/-- `A076756(A038722(n+1)-1)` -/
def P876073326344204379.Spec : Prop :=
  ∀ n, P876073326344204379.a n = A123970 n

end A123970

/-! ## A123970.P14924266424945065212

`A076756((n²+n)%A080036(n))`
-/

namespace A123970.P14924266424945065212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat

end

end A123970.P14924266424945065212

namespace A123970

/-- `A076756((n²+n)%A080036(n))` -/
def P14924266424945065212.Spec : Prop :=
  ∀ n, P14924266424945065212.a n = A123970 n

end A123970

/-! ## A123970.P16112581570919683617

`A076756(A093995(n+1)-(n+1))`
-/

namespace A123970.P16112581570919683617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A123970.P16112581570919683617

namespace A123970

/-- `A076756(A093995(n+1)-(n+1))` -/
def P16112581570919683617.Spec : Prop :=
  ∀ n, P16112581570919683617.a n = A123970 n

end A123970

/-! ## A123970.P15968048655870257273

`A076756(∑[A010054(n)]²-(n+1))`
-/

namespace A123970.P15968048655870257273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1 : ℤ)).toNat

end

end A123970.P15968048655870257273

namespace A123970

/-- `A076756(∑[A010054(n)]²-(n+1))` -/
def P15968048655870257273.Spec : Prop :=
  ∀ n, P15968048655870257273.a n = A123970 n

end A123970

/-! ## A123970.P8124120648139377952

`A076756(A002024(n+1)²-n-1)`
-/

namespace A123970.P8124120648139377952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A002024 (n + 1) ^ 2 - (n : ℤ) - 1).toNat

end

end A123970.P8124120648139377952

namespace A123970

/-- `A076756(A002024(n+1)²-n-1)` -/
def P8124120648139377952.Spec : Prop :=
  ∀ n, P8124120648139377952.a n = A123970 n

end A123970

/-! ## A123970.P10463950321529812124

`(1-4/2)^A002262(n)*A085478(n)`
-/

namespace A123970.P10463950321529812124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ (A002262 n : ℤ) * (A085478 n : ℚ)

end

end A123970.P10463950321529812124

namespace A123970

/-- `(1-4/2)^A002262(n)*A085478(n)` -/
def P10463950321529812124.Spec : Prop :=
  ∀ n, P10463950321529812124.a n = (A123970 n : ℚ)

end A123970

/-! ## A123970.P17153584432250785918

`A033999(A003056(n))*A129818(n)`
-/

namespace A123970.P17153584432250785918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A129818 n

end

end A123970.P17153584432250785918

namespace A123970

/-- `A033999(A003056(n))*A129818(n)` -/
def P17153584432250785918.Spec : Prop :=
  ∀ n, P17153584432250785918.a n = A123970 n

end A123970

/-! ## A123970.P717819281715723982

`A129818(A057944(n))*A129818(n)`
-/

namespace A123970.P717819281715723982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A057944 n).toNat * A129818 n

end

end A123970.P717819281715723982

namespace A123970

/-- `A129818(A057944(n))*A129818(n)` -/
def P717819281715723982.Spec : Prop :=
  ∀ n, P717819281715723982.a n = A123970 n

end A123970

/-! ## A123970.P9199801468416614893

`abs(A129818(n))*A129818(A112367(n))`
-/

namespace A123970.P9199801468416614893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 n| * A129818 (A112367 n).toNat

end

end A123970.P9199801468416614893

namespace A123970

/-- `abs(A129818(n))*A129818(A112367(n))` -/
def P9199801468416614893.Spec : Prop :=
  ∀ n, P9199801468416614893.a n = A123970 n

end A123970

/-! ## A123970.P13274497157234182529

`A129818(n-A002262(n))*A129818(n)`
-/

namespace A123970.P13274497157234182529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 ((n : ℤ) - A002262 n).toNat * A129818 n

end

end A123970.P13274497157234182529

namespace A123970

/-- `A129818(n-A002262(n))*A129818(n)` -/
def P13274497157234182529.Spec : Prop :=
  ∀ n, P13274497157234182529.a n = A123970 n

end A123970

/-! ## A123970.P9697427973616855997

`A126124(n+1)/A123971(n)*A129818(n)`
-/

namespace A123970.P9697427973616855997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126124 (n + 1) : ℚ) / (A123971 n : ℚ) * (A129818 n : ℚ)

end

end A123970.P9697427973616855997

namespace A123970

/-- `A126124(n+1)/A123971(n)*A129818(n)` -/
def P9697427973616855997.Spec : Prop :=
  ∀ n, P9697427973616855997.a n = (A123970 n : ℚ)

end A123970

/-! ## A123970.P8887844786103050441

`A076756(A038722(n+2))`
-/

namespace A123970.P8887844786103050441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 (A038722 (n + 2)).toNat

end

end A123970.P8887844786103050441

namespace A123970

/-- `A076756(A038722(n+2))` -/
def P8887844786103050441.Spec : Prop :=
  ∀ n, P8887844786103050441.a n = A123970 n

end A123970

/-! ## A123970.P4722240936329885055

`A066170(A185868(n+1)-1)`
-/

namespace A123970.P4722240936329885055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A185868 (n + 1) - 1).toNat

end

end A123970.P4722240936329885055

namespace A123970

/-- `A066170(A185868(n+1)-1)` -/
def P4722240936329885055.Spec : Prop :=
  ∀ n, P4722240936329885055.a n = A123970 n

end A123970

/-! ## A123970.P12102653279110439020

`A066170(eq[0, A155998(n)])`
-/

namespace A123970.P12102653279110439020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123970.P12102653279110439020

namespace A123970

/-- `A066170(eq[0, A155998(n)])` -/
def P12102653279110439020.Spec : Prop :=
  ∀ n, P12102653279110439020.a n = A123970 n

end A123970

/-!
# A123971: Triangle T(n,k), read by rows, defined by T(n,k)=3*T(n-1,k)-T(n-1,k-1)-T(n-2,k), T(0,0)=1, T(1,0)=2, T(1,1)=-1, T(n,k)=0 if k<0 or if k>n.

The programs for A123971, the canonical program `A123971.P2808571617744982694` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123971 has offset 0).

The definition of A123971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` (program `A123971.P2808571617744982694`, by `A123971.P2808571617744982694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123971.P2808571617744982694

`3*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123971

/-- `3*T(n-1,k)-T(n-1,k-1)-T(n-2,k)` -/
def P2808571617744982694.Spec : Prop :=
  ∀ n, P2808571617744982694.a n = A123971 n

theorem P2808571617744982694.correct : P2808571617744982694.Spec := by
  intro n
  simp only [A123971]

end A123971

/-! ## A123971.P12080109852858044643

`(A124037(n)+A123965(n))/2`
-/

namespace A123971.P12080109852858044643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124037 n + A123965 n : ℚ) / 2

end

end A123971.P12080109852858044643

namespace A123971

/-- `(A124037(n)+A123965(n))/2` -/
def P12080109852858044643.Spec : Prop :=
  ∀ n, P12080109852858044643.a n = (A123971 n : ℚ)

end A123971

/-! ## A123971.P4251637517014076464

`(A123965(n)+A033999(A003056(n))*A126126(n))/2`
-/

namespace A123971.P4251637517014076464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n + A033999 (A003056 n).toNat * A126126 n : ℚ) / 2

end

end A123971.P4251637517014076464

namespace A123971

/-- `(A123965(n)+A033999(A003056(n))*A126126(n))/2` -/
def P4251637517014076464.Spec : Prop :=
  ∀ n, P4251637517014076464.a n = (A123971 n : ℚ)

end A123971

/-! ## A123971.P17528074279842257096

`(A123965(n)+A097807(A057944(n))*A126126(n))/2`
-/

namespace A123971.P17528074279842257096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n + A097807 (A057944 n).toNat * A126126 n : ℚ) / 2

end

end A123971.P17528074279842257096

namespace A123971

/-- `(A123965(n)+A097807(A057944(n))*A126126(n))/2` -/
def P17528074279842257096.Spec : Prop :=
  ∀ n, P17528074279842257096.a n = (A123971 n : ℚ)

end A123971

/-! ## A123971.P17553409925154419652

`(A123965(n)+Δ[A010751(n)]*A126126(n))/2`
-/

namespace A123971.P17553409925154419652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n + (f1 (n + 1) - f1 n) * A126126 n : ℚ) / 2

end

end A123971.P17553409925154419652

namespace A123971

/-- `(A123965(n)+Δ[A010751(n)]*A126126(n))/2` -/
def P17553409925154419652.Spec : Prop :=
  ∀ n, P17553409925154419652.a n = (A123971 n : ℚ)

end A123971

/-! ## A123971.P11368748368270383954

`(A123965(n)+A008836(A059268(n))*A238731(n))/2`
-/

namespace A123971.P11368748368270383954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123965 n + A008836 (A059268 n).toNat * A238731 n : ℚ) / 2

end

end A123971.P11368748368270383954

namespace A123971

/-- `(A123965(n)+A008836(A059268(n))*A238731(n))/2` -/
def P11368748368270383954.Spec : Prop :=
  ∀ n, P11368748368270383954.a n = (A123971 n : ℚ)

end A123971

/-!
# A123972: a(n) = n^3 - n^2 - 2*n + 1.

The programs for A123972, the canonical program `A123972.P17001996671478345793` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123972 has offset 0).

The definition of A123972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²-2*n+1` (program `A123972.P17001996671478345793`, by `A123972.P17001996671478345793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123972.P17001996671478345793

`n^3-n²-2*n+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123972

/-- `n^3-n²-2*n+1` -/
def P17001996671478345793.Spec : Prop :=
  ∀ n, P17001996671478345793.a n = A123972 n

theorem P17001996671478345793.correct : P17001996671478345793.Spec := by
  intro n
  simp only [A123972]

end A123972

/-! ## A123972.P6010216271658169812

`(n+2*cos(2*π/7))*(n+2*cos(4*π/7))*(n+2*cos(6*π/7))`
-/

namespace A123972.P6010216271658169812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) + 2 * Real.cos (2 * Real.pi / 7)) * ((n : ℝ) + 2 * Real.cos (4 * Real.pi / 7)) * ((n : ℝ) + 2 * Real.cos (6 * Real.pi / 7))

end

end A123972.P6010216271658169812

namespace A123972

/-- `(n+2*cos(2*π/7))*(n+2*cos(4*π/7))*(n+2*cos(6*π/7))` -/
def P6010216271658169812.Spec : Prop :=
  ∀ n, P6010216271658169812.a n = (A123972 n : ℝ)

end A123972

/-! ## A123972.P4320142610696779771

`or(1, 2*n*∑[n-1])`
-/

namespace A123972.P4320142610696779771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A123972.P4320142610696779771

namespace A123972

/-- `or(1, 2*n*∑[n-1])` -/
def P4320142610696779771.Spec : Prop :=
  ∀ n, P4320142610696779771.a n = A123972 n

end A123972

/-! ## A123972.P1776655899243668556

`xor(1, 2*n*∑[n-1])`
-/

namespace A123972.P1776655899243668556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A123972.P1776655899243668556

namespace A123972

/-- `xor(1, 2*n*∑[n-1])` -/
def P1776655899243668556.Spec : Prop :=
  ∀ n, P1776655899243668556.a n = A123972 n

end A123972

/-! ## A123972.P7740614753802596169

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=-3, a(2)=4`
-/

namespace A123972.P7740614753802596169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123972.P7740614753802596169

namespace A123972

/-- `∑[∑[a(n-1)+6]]` -/
def P7740614753802596169.Spec : Prop :=
  ∀ n, P7740614753802596169.a n = A123972 n

end A123972

/-! ## A123972.P12501312301500890572

`floor(A057722(n)/(n+1))`
-/

namespace A123972.P12501312301500890572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057722 n : ℚ) / (n + 1 : ℚ)⌋

end

end A123972.P12501312301500890572

namespace A123972

/-- `floor(A057722(n)/(n+1))` -/
def P12501312301500890572.Spec : Prop :=
  ∀ n, P12501312301500890572.a n = A123972 n

end A123972

/-! ## A123972.P17818437270598430457

`((n-2)*A046092(n)+2)/2`
-/

namespace A123972.P17818437270598430457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A046092 n + 2 : ℚ) / 2

end

end A123972.P17818437270598430457

namespace A123972

/-- `((n-2)*A046092(n)+2)/2` -/
def P17818437270598430457.Spec : Prop :=
  ∀ n, P17818437270598430457.a n = (A123972 n : ℚ)

theorem P17818437270598430457.correct : P17818437270598430457.Spec := by
  intro n
  simp only [A123972, Nat.add_sub_cancel, A123972.P17818437270598430457.a, A123972.P17001996671478345793.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123972

/-! ## A123972.P17518236836370551059

`∑[A028310(n)+3*n*(n-2)]`
-/

namespace A123972.P17518236836370551059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 3 * ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123972.P17518236836370551059

namespace A123972

/-- `∑[A028310(n)+3*n*(n-2)]` -/
def P17518236836370551059.Spec : Prop :=
  ∀ n, P17518236836370551059.a n = A123972 n

end A123972

/-! ## A123972.P4495709733745131625

`∑[(floor(acot(n))-2+n)*A016777(n)+2]`
-/

namespace A123972.P4495709733745131625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 2 + (n : ℤ)) * A016777 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123972.P4495709733745131625

namespace A123972

/-- `∑[(floor(acot(n))-2+n)*A016777(n)+2]` -/
def P4495709733745131625.Spec : Prop :=
  ∀ n, P4495709733745131625.a n = A123972 n

end A123972

/-! ## A123972.P12422270272712576798

`(A152618(n)-n)%A257049(n+1)`
-/

namespace A123972.P12422270272712576798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152618 n - (n : ℤ)) (A257049 (n + 1))

end

end A123972.P12422270272712576798

namespace A123972

/-- `(A152618(n)-n)%A257049(n+1)` -/
def P12422270272712576798.Spec : Prop :=
  ∀ n, P12422270272712576798.a n = A123972 n

end A123972

/-! ## A123972.P15278233570916473868

`(A153257(n)+2)%A005248(n)`
-/

namespace A123972.P15278233570916473868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153257 n + 2) (A005248 n)

end

end A123972.P15278233570916473868

namespace A123972

/-- `(A153257(n)+2)%A005248(n)` -/
def P15278233570916473868.Spec : Prop :=
  ∀ n, P15278233570916473868.a n = A123972 n

end A123972

/-!
# A123973: Sequence of tridiagonal matrices with one center zero terminal that give a triangular sequence from the characteristic polynomials based on the 3 X 3 matrix type: {{1, -1, 0}, {-1, 1, -1}, {0, -1, 0}}.

The programs for A123973, there is no canonical definition to state claims against.
-/

/-! ## A123973.P17291975830357118643

`A098493(n)%Δ[n²]`
-/

namespace A123973.P17291975830357118643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098493 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123973.P17291975830357118643

/-! ## A123973.P8999279617672377087

`A098493(floor(acot(n)+n))`
-/

namespace A123973.P8999279617672377087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A123973.P8999279617672377087

/-! ## A123973.P15702750321318702068

`A098493(C(n, floor(atan(n))))`
-/

namespace A123973.P15702750321318702068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A123973.P15702750321318702068

/-! ## A123973.P17868807695159865809

`A098493(or(n, floor(acot(n))))`
-/

namespace A123973.P17868807695159865809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A123973.P17868807695159865809

/-! ## A123973.P8327398373409984488

`A098493(xor(n, floor(acot(n))))`
-/

namespace A123973.P8327398373409984488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A123973.P8327398373409984488

/-! ## A123973.P15704590004647727039

`A098493(gcd(n, C(2, n²)))`
-/

namespace A123973.P15704590004647727039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (Nat.gcd n (Nat.choose 2 (n ^ 2)))

end

end A123973.P15704590004647727039

/-! ## A123973.P5656927699511052825

`A098493(or(n, C(n, n²)))`
-/

namespace A123973.P5656927699511052825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (Nat.lor n (Nat.choose n (n ^ 2)))

end

end A123973.P5656927699511052825

/-! ## A123973.P6297988003251186031

`A098493(C(2, n+2)+n)`
-/

namespace A123973.P6297988003251186031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (Nat.choose 2 (n + 2) + n)

end

end A123973.P6297988003251186031

/-! ## A123973.P8243507990496251209

`A098493(A028310(n))`
-/

namespace A123973.P8243507990496251209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (A028310 n).toNat

end

end A123973.P8243507990496251209

/-! ## A123973.P10516011605776052195

`A098493(A000007(n)+n)`
-/

namespace A123973.P10516011605776052195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098493 (A000007 n + (n : ℤ)).toNat

end

end A123973.P10516011605776052195

/-!
# A123975: Number of Garden of Eden partitions of n in Bulgarian Solitaire.

The programs for A123975, there is no canonical definition to state claims against.
-/

/-! ## A123975.P7382035806895912776

`A064173(n+1)-A101198(n+1)`
-/

namespace A123975.P7382035806895912776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - A101198 (n + 1)

end

end A123975.P7382035806895912776

/-! ## A123975.P647849630890648509

`A363230(n+1)+A101199(n+1)`
-/

namespace A123975.P647849630890648509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363230 (n + 1) + A101199 (n + 1)

end

end A123975.P647849630890648509

/-! ## A123975.P17037736498024130192

`A000701(n+1)-A067772(n+1)-A101198(n+1)`
-/

namespace A123975.P17037736498024130192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) - A067772 (n + 1) - A101198 (n + 1)

end

end A123975.P17037736498024130192

/-! ## A123975.P10088756764358370032

`A064173(n+1)-(Δ[A064174(n+1)]-A101199(n+1))`
-/

namespace A123975.P10088756764358370032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - (f1 (n + 1) - f1 n - A101199 (n + 1))

end

end A123975.P10088756764358370032

/-! ## A123975.P13755905617827560309

`A000041(n+1)-A064174(n+1)-A101198(n+1)`
-/

namespace A123975.P13755905617827560309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064174 (n + 1) - A101198 (n + 1)

end

end A123975.P13755905617827560309

/-! ## A123975.P1214430987053816886

`A003106(n+1)+A039900(n+1)-A064174(n+1)-A101198(n+1)`
-/

namespace A123975.P1214430987053816886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A039900 (n + 1) - A064174 (n + 1)) - A101198 (n + 1)

end

end A123975.P1214430987053816886

/-! ## A123975.P13366974232278114606

`Δ[A000070(n)]-A064174(n+1)-A101198(n+1)`
-/

namespace A123975.P13366974232278114606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064174 (n + 1) - A101198 (n + 1)

end

end A123975.P13366974232278114606

/-! ## A123975.P9907798475021138707

`A101707(n+1)+A101708(n+1)-A101198(n+1)`
-/

namespace A123975.P9907798475021138707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101707 (n + 1) + (A101708 (n + 1) - A101198 (n + 1))

end

end A123975.P9907798475021138707

/-! ## A123975.P15095206817033157083

`A064173(n+1)-A105806(∑[n]+2)`
-/

namespace A123975.P15095206817033157083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - A105806 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A123975.P15095206817033157083

/-! ## A123975.P4238510204428535403

`A064173(n+1)-(A105806(A133263(n))-A000007(n))`
-/

namespace A123975.P4238510204428535403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - (A105806 (A133263 n).toNat - A000007 n)

end

end A123975.P4238510204428535403

/-!
# A123976: Numbers k such that Fibonacci(k-1) is divisible by k.

The programs for A123976, the canonical program `A123976.P17596081695645912205` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123976 has offset 1).

The definition of A123976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123976.P5194909416673346511

`record[C(A260222(n+1), n)]`
-/

namespace A123976.P5194909416673346511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260222 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123976.P5194909416673346511

namespace A123976

/-- `record[C(A260222(n+1), n)]` -/
def P5194909416673346511.Spec : Prop :=
  ∀ n, (P5194909416673346511.a n : ℤ) = A123976 (n + 1)

end A123976

/-! ## A123976.P8547547967401722498

`eq[1, A111419(n+1)]+1`
-/

namespace A123976.P8547547967401722498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123976.P8547547967401722498

namespace A123976

/-- `eq[1, A111419(n+1)]+1` -/
def P8547547967401722498.Spec : Prop :=
  ∀ n, (P8547547967401722498.a n : ℤ) = A123976 (n + 1)

end A123976

/-! ## A123976.P10939974730372529395

`eq[n, A260222(abs(1-n)+1)]`
-/

namespace A123976.P10939974730372529395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123976.P10939974730372529395

namespace A123976

/-- `eq[n, A260222(abs(1-n)+1)]` -/
def P10939974730372529395.Spec : Prop :=
  ∀ n, (P10939974730372529395.a n : ℤ) = A123976 (n + 1)

end A123976

/-! ## A123976.P14870775708220800726

`record[A260222(A260222(n+1))]`
-/

namespace A123976.P14870775708220800726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A260222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123976.P14870775708220800726

namespace A123976

/-- `record[A260222(A260222(n+1))]` -/
def P14870775708220800726.Spec : Prop :=
  ∀ n, P14870775708220800726.a n = A123976 (n + 1)

end A123976

/-! ## A123976.P17596081695645912205

`eq[1, A000007(A002752(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123976

/-- `eq[1, A000007(A002752(n+1))]+1` -/
def P17596081695645912205.Spec : Prop :=
  ∀ n, (P17596081695645912205.a n : ℤ) = A123976 (n + 1)

theorem P17596081695645912205.correct : P17596081695645912205.Spec := by
  intro n
  simp only [A123976, Nat.add_sub_cancel]

end A123976

/-! ## A123976.P8780086712014183043

`record[n+1-lcm(A000040(n+1), A002752(n+1))]`
-/

namespace A123976.P8780086712014183043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A000040 (n + 1)) (A002752 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123976.P8780086712014183043

namespace A123976

/-- `record[n+1-lcm(A000040(n+1), A002752(n+1))]` -/
def P8780086712014183043.Spec : Prop :=
  ∀ n, P8780086712014183043.a n = A123976 (n + 1)

end A123976

/-! ## A123976.P16067731111303855162

`eq[A000007(n), A002752(A000007(n)+n)]`
-/

namespace A123976.P16067731111303855162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123976.P16067731111303855162

namespace A123976

/-- `eq[A000007(n), A002752(A000007(n)+n)]` -/
def P16067731111303855162.Spec : Prop :=
  ∀ n, (P16067731111303855162.a n : ℤ) = A123976 (n + 1)

end A123976

/-! ## A123976.P17642532791382450951

`eq[A000038(n), A002752(A000038(n)+n)]`
-/

namespace A123976.P17642532791382450951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123976.P17642532791382450951

namespace A123976

/-- `eq[A000038(n), A002752(A000038(n)+n)]` -/
def P17642532791382450951.Spec : Prop :=
  ∀ n, (P17642532791382450951.a n : ℤ) = A123976 (n + 1)

end A123976

/-! ## A123976.P7284975151021594530

`lt[A002265(n+3), A260222(A260222(n+1))]+1`
-/

namespace A123976.P7284975151021594530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (A260222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A123976.P7284975151021594530

namespace A123976

/-- `lt[A002265(n+3), A260222(A260222(n+1))]+1` -/
def P7284975151021594530.Spec : Prop :=
  ∀ n, (P7284975151021594530.a n : ℤ) = A123976 (n + 1)

end A123976

/-! ## A123976.P9595894622923124683

`eq[A049556(n+1), A049556(A260222(n+1))]+1`
-/

namespace A123976.P9595894622923124683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (A260222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123976.P9595894622923124683

namespace A123976

/-- `eq[A049556(n+1), A049556(A260222(n+1))]+1` -/
def P9595894622923124683.Spec : Prop :=
  ∀ n, (P9595894622923124683.a n : ℤ) = A123976 (n + 1)

end A123976

/-!
# A123977: Complement of A061909 (skinny numbers).

The programs for A123977, the canonical program `A123977.P15909624706474219848` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123977 has offset 1).

The definition of A123977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9900 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123977.P9781856343407352135

`comp[A061909(n+1)]`
-/

namespace A123977.P9781856343407352135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A123977.P9781856343407352135

namespace A123977

/-- `comp[A061909(n+1)]` -/
def P9781856343407352135.Spec : Prop :=
  ∀ n, (P9781856343407352135.a n : ℤ) = A123977 (n + 1)

end A123977

/-! ## A123977.P15909624706474219848

`lt[0, A067552(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123977

/-- `lt[0, A067552(n)]` -/
def P15909624706474219848.Spec : Prop :=
  ∀ n, (P15909624706474219848.a n : ℤ) = A123977 (n + 1)

theorem P15909624706474219848.correct : P15909624706474219848.Spec := by
  intro n
  simp only [A123977, Nat.add_sub_cancel]

end A123977

/-! ## A123977.P17255174402573234673

`lt[0, A069912(n)]`
-/

namespace A123977.P17255174402573234673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123977.P17255174402573234673

namespace A123977

/-- `lt[0, A069912(n)]` -/
def P17255174402573234673.Spec : Prop :=
  ∀ n, (P17255174402573234673.a n : ℤ) = A123977 (n + 1)

end A123977

/-! ## A123977.P7275219429926160056

`lt[A059729(n), n²]`
-/

namespace A123977.P7275219429926160056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A123977.P7275219429926160056

namespace A123977

/-- `lt[A059729(n), n²]` -/
def P7275219429926160056.Spec : Prop :=
  ∀ n, (P7275219429926160056.a n : ℤ) = A123977 (n + 1)

end A123977

/-! ## A123977.P17163297514063223335

`lt[A004159(n), A118881(n)]`
-/

namespace A123977.P17163297514063223335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123977.P17163297514063223335

namespace A123977

/-- `lt[A004159(n), A118881(n)]` -/
def P17163297514063223335.Spec : Prop :=
  ∀ n, (P17163297514063223335.a n : ℤ) = A123977 (n + 1)

end A123977

/-! ## A123977.P4402581691045374952

`lt[A004159(n), A007953(n)²]`
-/

namespace A123977.P4402581691045374952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123977.P4402581691045374952

namespace A123977

/-- `lt[A004159(n), A007953(n)²]` -/
def P4402581691045374952.Spec : Prop :=
  ∀ n, (P4402581691045374952.a n : ℤ) = A123977 (n + 1)

end A123977

/-! ## A123977.P8129075971651288779

`lt[A004159(n)*A007953(n), A118880(n)]`
-/

namespace A123977.P8129075971651288779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n * A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123977.P8129075971651288779

namespace A123977

/-- `lt[A004159(n)*A007953(n), A118880(n)]` -/
def P8129075971651288779.Spec : Prop :=
  ∀ n, (P8129075971651288779.a n : ℤ) = A123977 (n + 1)

end A123977

/-! ## A123977.P7469264271548749347

`lt[A003132(A175789(n+1)), A003132(n)²]`
-/

namespace A123977.P7469264271548749347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A175789 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123977.P7469264271548749347

namespace A123977

/-- `lt[A003132(A175789(n+1)), A003132(n)²]` -/
def P7469264271548749347.Spec : Prop :=
  ∀ n, (P7469264271548749347.a n : ℤ) = A123977 (n + 1)

end A123977

/-!
# A123978: Numbers k for which 8*k+1, 8*k+3 and 8*k+7 are primes.

The programs for A123978, the canonical program `A123978.P13458837915136754456` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123978 has offset 1).

The definition of A123978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123978.P16771413221278245128

`∩[A125822(n+1), A139407(n+1)]`
-/

namespace A123978.P16771413221278245128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P16771413221278245128

namespace A123978

/-- `∩[A125822(n+1), A139407(n+1)]` -/
def P16771413221278245128.Spec : Prop :=
  ∀ n, (P16771413221278245128.a n : ℤ) = A123978 (n + 1)

end A123978

/-! ## A123978.P18170230146019820541

`∩[A125822(n+1), A139405(n+1)]`
-/

namespace A123978.P18170230146019820541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P18170230146019820541

namespace A123978

/-- `∩[A125822(n+1), A139405(n+1)]` -/
def P18170230146019820541.Spec : Prop :=
  ∀ n, (P18170230146019820541.a n : ℤ) = A123978 (n + 1)

end A123978

/-! ## A123978.P13458837915136754456

`∩[A139405(n+1), A139407(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123978

/-- `∩[A139405(n+1), A139407(n+1)]` -/
def P13458837915136754456.Spec : Prop :=
  ∀ n, (P13458837915136754456.a n : ℤ) = A123978 (n + 1)

theorem P13458837915136754456.correct : P13458837915136754456.Spec := by
  intro n
  simp only [A123978, Nat.add_sub_cancel]

end A123978

/-! ## A123978.P5811904786496257514

`∩[A005123(n+1), A139407(n+1)]`
-/

namespace A123978.P5811904786496257514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P5811904786496257514

namespace A123978

/-- `∩[A005123(n+1), A139407(n+1)]` -/
def P5811904786496257514.Spec : Prop :=
  ∀ n, (P5811904786496257514.a n : ℤ) = A123978 (n + 1)

end A123978

/-! ## A123978.P8510840517284036546

`∩[A005124(n+1), A139405(n+1)]`
-/

namespace A123978.P8510840517284036546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P8510840517284036546

namespace A123978

/-- `∩[A005124(n+1), A139405(n+1)]` -/
def P8510840517284036546.Spec : Prop :=
  ∀ n, (P8510840517284036546.a n : ℤ) = A123978 (n + 1)

end A123978

/-! ## A123978.P2121415633161917060

`∩[A125822(n+1), A139487(n+1)]`
-/

namespace A123978.P2121415633161917060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P2121415633161917060

namespace A123978

/-- `∩[A125822(n+1), A139487(n+1)]` -/
def P2121415633161917060.Spec : Prop :=
  ∀ n, (P2121415633161917060.a n : ℤ) = A123978 (n + 1)

end A123978

/-! ## A123978.P10414901432363617817

`∩[A139407(n+1), A329269(n+1)]`
-/

namespace A123978.P10414901432363617817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P10414901432363617817

namespace A123978

/-- `∩[A139407(n+1), A329269(n+1)]` -/
def P10414901432363617817.Spec : Prop :=
  ∀ n, (P10414901432363617817.a n : ℤ) = A123978 (n + 1)

end A123978

/-!
# A123979: Numbers k such that 12*k+1, 12*k+5 and 12*k+7 are primes.

The programs for A123979, there is no canonical definition to state claims against.
-/

/-! ## A123979.P3186459952286100703

`record[A273943(A215918(n+1))]`
-/

namespace A123979.P3186459952286100703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A215918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123979.P3186459952286100703

/-! ## A123979.P13470519335312489055

`record[A273943(A062767(n+1)/2)]`
-/

namespace A123979.P13470519335312489055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway ((A062767 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123979.P13470519335312489055

/-! ## A123979.P7843615023573672434

`∩[A110801(n+1), A201541(n)]`
-/

namespace A123979.P7843615023573672434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123979.P7843615023573672434

/-! ## A123979.P16242701132214562765

`record[A318518(A215918(n+2))]`
-/

namespace A123979.P16242701132214562765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A215918 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123979.P16242701132214562765

/-! ## A123979.P7285712602611029964

`record[A117358(2*A062767(n+1))]`
-/

namespace A123979.P7285712602611029964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A062767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123979.P7285712602611029964

/-! ## A123979.P8425007114620834280

`record[A325563(A062767(n+1)/2)]`
-/

namespace A123979.P8425007114620834280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (SequenceMachineLib.roundAway ((A062767 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123979.P8425007114620834280

/-! ## A123979.P3440287119167851761

`record[A325563(A215918(A325563(n+1)))]`
-/

namespace A123979.P3440287119167851761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A215918 (A325563 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123979.P3440287119167851761

/-! ## A123979.P6627790567024582041

`eq[A072815(2*n), A100923(2*n+1)]`
-/

namespace A123979.P6627790567024582041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123979.P6627790567024582041

/-! ## A123979.P3060510466756166955

`eq[A072815(2*n), A172155(2*n+1)]`
-/

namespace A123979.P3060510466756166955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172155 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123979.P3060510466756166955

/-! ## A123979.P9787005859425176766

`eq[A072815(2*n), A182481(2*n+1)]`
-/

namespace A123979.P9787005859425176766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123979.P9787005859425176766

/-!
# A123980: Numbers k for which 8*k+1, 8*k+5 and 8*k+7 are primes.

The programs for A123980, the canonical program `A123980.P14118247629457079037` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123980 has offset 1).

The definition of A123980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123980.P18242772618190269745

`∩[A125821(n+1), A139406(n+1)]`
-/

namespace A123980.P18242772618190269745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P18242772618190269745

namespace A123980

/-- `∩[A125821(n+1), A139406(n+1)]` -/
def P18242772618190269745.Spec : Prop :=
  ∀ n, (P18242772618190269745.a n : ℤ) = A123980 (n + 1)

end A123980

/-! ## A123980.P7734662246560621392

`∩[3*A139404(n+1), A139406(n+1)]`
-/

namespace A123980.P7734662246560621392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P7734662246560621392

namespace A123980

/-- `∩[3*A139404(n+1), A139406(n+1)]` -/
def P7734662246560621392.Spec : Prop :=
  ∀ n, (P7734662246560621392.a n : ℤ) = A123980 (n + 1)

end A123980

/-! ## A123980.P13930907926844816057

`∩[A125821(n+1), A139405(n+1)]`
-/

namespace A123980.P13930907926844816057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P13930907926844816057

namespace A123980

/-- `∩[A125821(n+1), A139405(n+1)]` -/
def P13930907926844816057.Spec : Prop :=
  ∀ n, (P13930907926844816057.a n : ℤ) = A123980 (n + 1)

end A123980

/-! ## A123980.P14118247629457079037

`∩[A139405(n+1), A139406(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123980

/-- `∩[A139405(n+1), A139406(n+1)]` -/
def P14118247629457079037.Spec : Prop :=
  ∀ n, (P14118247629457079037.a n : ℤ) = A123980 (n + 1)

theorem P14118247629457079037.correct : P14118247629457079037.Spec := by
  intro n
  simp only [A123980, Nat.add_sub_cancel]

end A123980

/-! ## A123980.P15295352291975994257

`floor(p?[A205172(n+1)-4]/8)`
-/

namespace A123980.P15295352291975994257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205172 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌋

end

end A123980.P15295352291975994257

namespace A123980

/-- `floor(p?[A205172(n+1)-4]/8)` -/
def P15295352291975994257.Spec : Prop :=
  ∀ n, P15295352291975994257.a n = A123980 (n + 1)

end A123980

/-! ## A123980.P15479537894482116393

`∩[A005123(n+1), A125821(n+1)]`
-/

namespace A123980.P15479537894482116393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P15479537894482116393

namespace A123980

/-- `∩[A005123(n+1), A125821(n+1)]` -/
def P15479537894482116393.Spec : Prop :=
  ∀ n, (P15479537894482116393.a n : ℤ) = A123980 (n + 1)

end A123980

/-! ## A123980.P7128692806820434261

`∩[A105133(n+1), A139405(n+1)]`
-/

namespace A123980.P7128692806820434261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P7128692806820434261

namespace A123980

/-- `∩[A105133(n+1), A139405(n+1)]` -/
def P7128692806820434261.Spec : Prop :=
  ∀ n, (P7128692806820434261.a n : ℤ) = A123980 (n + 1)

end A123980

/-! ## A123980.P4754112468688360938

`∩[A139406(n+1), A139487(n+1)]`
-/

namespace A123980.P4754112468688360938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P4754112468688360938

namespace A123980

/-- `∩[A139406(n+1), A139487(n+1)]` -/
def P4754112468688360938.Spec : Prop :=
  ∀ n, (P4754112468688360938.a n : ℤ) = A123980 (n + 1)

end A123980

/-!
# A123981: Numbers k for which 12*k+5, 12*k+7 and 12*k+11 are primes.

The programs for A123981, there is no canonical definition to state claims against.
-/

/-! ## A123981.P9164378655096631374

`∩[A167057(n+2), A201541(n)]`
-/

namespace A123981.P9164378655096631374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123981.P9164378655096631374

/-! ## A123981.P14866812591961678801

`record[A057979(A174359(n+2))]`
-/

namespace A123981.P14866812591961678801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A174359 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123981.P14866812591961678801

/-!
# A123982: Numbers k such that 12*k+1, 12*k+5 and 12*k+11 are primes.

The programs for A123982, the canonical program `A123982.P2523592801930380568` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123982 has offset 1).

The definition of A123982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123982.P2523592801930380568

`eq[A167020(2*n+1)*A167020(2*(n+1)), A072815(2*n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123982

/-- `eq[A167020(2*n+1)*A167020(2*(n+1)), A072815(2*n)]` -/
def P2523592801930380568.Spec : Prop :=
  ∀ n, (P2523592801930380568.a n : ℤ) = A123982 (n + 1)

theorem P2523592801930380568.correct : P2523592801930380568.Spec := by
  intro n
  simp only [A123982, Nat.add_sub_cancel]

end A123982

/-! ## A123982.P16912468400302823967

`eq[A250205(2*n+1)*A250205(2*(n+1)), A072815(2*n)]`
-/

namespace A123982.P16912468400302823967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250205 (2 * n + 1) * A250205 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123982.P16912468400302823967

namespace A123982

/-- `eq[A250205(2*n+1)*A250205(2*(n+1)), A072815(2*n)]` -/
def P16912468400302823967.Spec : Prop :=
  ∀ n, (P16912468400302823967.a n : ℤ) = A123982 (n + 1)

end A123982

/-!
# A123983: Numbers k for which 8*k+1, 8*k+5, 8*k+7 and 8*k+11 are primes.

The programs for A123983, there is no canonical definition to state claims against.
-/

/-! ## A123983.P953565903188371766

`∩[A005124(n+1)-1, A123980(n+1)]`
-/

namespace A123983.P953565903188371766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123983.P953565903188371766

/-! ## A123983.P4863211936870840164

`∩[A123980(n+1), A130482(A123982(n+1))]`
-/

namespace A123983.P4863211936870840164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (A123982 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123983.P4863211936870840164

/-!
# A123984: Primes p such that p^3 is a sum of three successive primes, or primes in A076306(n).

The programs for A123984, there is no canonical definition to state claims against.
-/

/-! ## A123984.P2106906631368816307

`p?[A076306(n+1)]`
-/

namespace A123984.P2106906631368816307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123984.P2106906631368816307

/-! ## A123984.P6513734372374802760

`∩[A076306(n+1), A380468(n+1)]`
-/

namespace A123984.P6513734372374802760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P6513734372374802760

/-! ## A123984.P587903730423494649

`∩[A054723(n+1), A076306(n+1)]`
-/

namespace A123984.P587903730423494649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P587903730423494649

/-! ## A123984.P2417771377288170973

`∩[A000040(n+1), A076306(n+1)]`
-/

namespace A123984.P2417771377288170973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P2417771377288170973

/-! ## A123984.P2545168420062044737

`∩[A004139(n+1), A076306(n+1)]`
-/

namespace A123984.P2545168420062044737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P2545168420062044737

/-! ## A123984.P17305115427477640642

`∩[A006005(n+1), A076306(n+1)]`
-/

namespace A123984.P17305115427477640642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P17305115427477640642

/-! ## A123984.P17103836276103342006

`∩[A008578(n+1), A076306(n+1)]`
-/

namespace A123984.P17103836276103342006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P17103836276103342006

/-! ## A123984.P9382284964884746997

`∩[A033946(n+1), A076306(n+1)]`
-/

namespace A123984.P9382284964884746997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P9382284964884746997

/-! ## A123984.P13700630264388701474

`∩[A045319(n+1), A076306(n+1)]`
-/

namespace A123984.P13700630264388701474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P13700630264388701474

/-! ## A123984.P14020958067647010901

`∩[A045344(n+1), A076306(n+1)]`
-/

namespace A123984.P14020958067647010901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P14020958067647010901

/-! ## A123984.P4856157165940268645

`∩[A046022(n+1), A076306(n+1)]`
-/

namespace A123984.P4856157165940268645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P4856157165940268645

/-! ## A123984.P12767839647573552513

`∩[A051948(n+1), A076306(n+1)]`
-/

namespace A123984.P12767839647573552513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P12767839647573552513

/-! ## A123984.P5463556939259360543

`∩[A053813(n+1), A076306(n+1)]`
-/

namespace A123984.P5463556939259360543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P5463556939259360543

/-! ## A123984.P1351373152048963093

`∩[A062972(n+1), A076306(n+1)]`
-/

namespace A123984.P1351373152048963093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P1351373152048963093

/-! ## A123984.P6504203848878642688

`∩[A065091(n+1), A076306(n+1)]`
-/

namespace A123984.P6504203848878642688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P6504203848878642688

/-! ## A123984.P18078475698363014900

`∩[A065396(n+1), A076306(n+1)]`
-/

namespace A123984.P18078475698363014900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P18078475698363014900

/-! ## A123984.P9397650809750355505

`∩[A067126(n+1), A076306(n+1)]`
-/

namespace A123984.P9397650809750355505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P9397650809750355505

/-! ## A123984.P12297167175673362099

`∩[A076306(n+1), A093515(n+1)]`
-/

namespace A123984.P12297167175673362099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P12297167175673362099

/-! ## A123984.P14855707798426174042

`∩[A076306(n+1), A161346(n+1)]`
-/

namespace A123984.P14855707798426174042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P14855707798426174042

/-! ## A123984.P2771413185020189677

`∩[A076306(n+1), A193339(n+1)]`
-/

namespace A123984.P2771413185020189677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123984.P2771413185020189677

/-!
# A123985: Numbers k for which 12*k+1, 12*k+5, 12*k+7 and 12*k+11 are primes.

The programs for A123985, there is no canonical definition to state claims against.
-/

/-! ## A123985.P15434345239356218408

`∩[A123979(n+1), A123981(n+1)]`
-/

namespace A123985.P15434345239356218408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P15434345239356218408

/-! ## A123985.P9948901267521054710

`∩[A123979(n+1), A123982(n+1)]`
-/

namespace A123985.P9948901267521054710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P9948901267521054710

/-! ## A123985.P11573623859662212422

`∩[A123981(n+1), A123982(n+1)]`
-/

namespace A123985.P11573623859662212422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P11573623859662212422

/-! ## A123985.P14030138080035982736

`∩[A123982(n+1), A201541(n)]`
-/

namespace A123985.P14030138080035982736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P14030138080035982736

/-! ## A123985.P14148260061388940868

`∩[A110801(n+1), A123981(n+1)]`
-/

namespace A123985.P14148260061388940868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P14148260061388940868

/-! ## A123985.P13434060105365485574

`∩[A123979(n+1), A167057(n+1)]`
-/

namespace A123985.P13434060105365485574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P13434060105365485574

/-! ## A123985.P1556224662472137767

`∩[A123982(n+1), A167056(n+1)]`
-/

namespace A123985.P1556224662472137767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123985.P1556224662472137767

/-!
# A123986: Numbers n for which 4n+1 and 4n+3 are primes.

The programs for A123986, there is no canonical definition to state claims against.
-/

/-! ## A123986.P16083153209665807166

`3*A201541(n)+1`
-/

namespace A123986.P16083153209665807166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A201541 n + 1

end

end A123986.P16083153209665807166

/-! ## A123986.P4242728206887126736

`floor(A071695(n+1)/4)`
-/

namespace A123986.P4242728206887126736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071695 (n + 1) : ℚ) / 4⌋

end

end A123986.P4242728206887126736

/-! ## A123986.P18043306542560157707

`floor(A071696(n+1)/4)`
-/

namespace A123986.P18043306542560157707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071696 (n + 1) : ℚ) / 4⌋

end

end A123986.P18043306542560157707

/-! ## A123986.P8530352546687954329

`A174236(n+1)-A045753(n+1)`
-/

namespace A123986.P8530352546687954329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174236 (n + 1) - A045753 (n + 1)

end

end A123986.P8530352546687954329

/-! ## A123986.P2010679440383467624

`(A122565(2*n+1)-1)/4`
-/

namespace A123986.P2010679440383467624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122565 (2 * n + 1) - 1 : ℚ) / 4

end

end A123986.P2010679440383467624

/-! ## A123986.P11130526695379095737

`floor(p?[p?[4*n-1]-2]/4)`
-/

namespace A123986.P11130526695379095737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A123986.P11130526695379095737

/-! ## A123986.P13037571558658390436

`∩[A005098(n+1), A095278(n+1)]`
-/

namespace A123986.P13037571558658390436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123986.P13037571558658390436

/-! ## A123986.P12796841292153297388

`∩[A005098(n+1), A005099(n+1)-1]`
-/

namespace A123986.P12796841292153297388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123986.P12796841292153297388

/-! ## A123986.P9726380493383517205

`eq[A237053(2*n+1)², A237053(2*n)]`
-/

namespace A123986.P9726380493383517205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123986.P9726380493383517205

/-! ## A123986.P17826023349307115767

`A016777(A201541(n))`
-/

namespace A123986.P17826023349307115767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A201541 n).toNat

end

end A123986.P17826023349307115767

/-! ## A123986.P16505047583039394013

`A000010(A122565(Δ[n²]))/4`
-/

namespace A123986.P16505047583039394013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A122565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat : ℚ) / 4

end

end A123986.P16505047583039394013

/-! ## A123986.P14293386661067972663

`eq[2, A101264(2*n+1)+A101264(2*n)]`
-/

namespace A123986.P14293386661067972663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1) + A101264 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123986.P14293386661067972663

/-! ## A123986.P836120520233197032

`floor(record[A020639(2*A057024(n+1)+1)]/4)`
-/

namespace A123986.P836120520233197032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A057024 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌋

end

end A123986.P836120520233197032

/-! ## A123986.P14218587611925792361

`eq[5, A386685(n)]`
-/

namespace A123986.P14218587611925792361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123986.P14218587611925792361

/-! ## A123986.P6617827027972597775

`lt[A245203(n), A101264(2*n)]`
-/

namespace A123986.P6617827027972597775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A123986.P6617827027972597775

/-! ## A123986.P10749250898624750277

`eq[2, A096500(A008574(n))]`
-/

namespace A123986.P10749250898624750277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123986.P10749250898624750277

/-! ## A123986.P16424764891829889439

`A001617(2*A071696(n+1))`
-/

namespace A123986.P16424764891829889439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (2 * A071696 (n + 1)).toNat

end

end A123986.P16424764891829889439

/-! ## A123986.P12010514552299937718

`A001617(2*A071695(n+1))+1`
-/

namespace A123986.P12010514552299937718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (2 * A071695 (n + 1)).toNat + 1

end

end A123986.P12010514552299937718

/-! ## A123986.P12681511881133251275

`eq[1, A124522(2*n+1)]`
-/

namespace A123986.P12681511881133251275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123986.P12681511881133251275

/-! ## A123986.P3663092312758162385

`eq[1, A241556(2*n+1)]`
-/

namespace A123986.P3663092312758162385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241556 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123986.P3663092312758162385

/-!
# A123989: a(n) = H(2*n)*(2*n)!/n! where H(n) = Sum_{k=1..n} 1/k, the n-th harmonic number.

The programs for A123989, there is no canonical definition to state claims against.
-/

/-! ## A123989.P12609007512315371714

`A124078(2*n)`
-/

namespace A123989.P12609007512315371714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124078 (2 * n)

end

end A123989.P12609007512315371714

/-! ## A123989.P5605647303236582011

`A000254(2*n)/n!`
-/

namespace A123989.P5605647303236582011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (2 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A123989.P5605647303236582011

/-! ## A123989.P1403539065995253780

`A000254(2*n)/A000142(n)`
-/

namespace A123989.P1403539065995253780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (2 * n) : ℚ) / (A000142 n : ℚ)

end

end A123989.P1403539065995253780

/-! ## A123989.P1976239620920569954

`record[-A081048(n)]/A000142(n)`
-/

namespace A123989.P1976239620920569954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A081048 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000142 n : ℚ)

end

end A123989.P1976239620920569954

/-!
# A123991: Expansion of o.g.f. (1-x^2+x^4)/((1-x)^2*(1-x^2)^4*(1-x^3)^4).

The programs for A123991, the canonical program `A123991.P6665080043921922537` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123991 has offset 0).

The definition of A123991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2+x^4)/(1-2x-3x^2+4x^3+10x^4-24x^6-12x^7+27x^8+34x^9-11x^10-48x^11-11x^12+34x^13+27x^14-12x^15-24x^16+10x^18+4x^19-3x^20-2x^21+x^22))` (program `A123991.P6665080043921922537`, by `A123991.P6665080043921922537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123991.P6665080043921922537

`ogf((1-x^2+x^4)/(1-2x-3x^2+4x^3+10x^4-24x^6-12x^7+27x^8+34x^9-11x^10-48x^11-11x^12+34x^13+27x^14-12x^15-24x^16+10x^18+4x^19-3x^20-2x^21+x^22))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A123991

/-- `ogf((1-x^2+x^4)/(1-2x-3x^2+4x^3+10x^4-24x^6-12x^7+27x^8+34x^9-11x^10-48x^11-11x^12+34x^13+27x^14-12x^15-24x^16+10x^18+4x^19-3x^20-2x^21+x^22))` -/
def P6665080043921922537.Spec : Prop :=
  ∀ n, P6665080043921922537.a n = A123991 n

theorem P6665080043921922537.correct : P6665080043921922537.Spec := by
  intro n
  simp only [A123991]

end A123991

/-! ## A123991.P10227025195184935021

`∑[∑[A124636(n)]]`
-/

namespace A123991.P10227025195184935021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123991.P10227025195184935021

namespace A123991

/-- `∑[∑[A124636(n)]]` -/
def P10227025195184935021.Spec : Prop :=
  ∀ n, P10227025195184935021.a n = A123991 n

end A123991

/-! ## A123991.P506831743932533902

`A124615(n)-A127790(n)`
-/

namespace A123991.P506831743932533902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124615 n - A127790 n

end

end A123991.P506831743932533902

namespace A123991

/-- `A124615(n)-A127790(n)` -/
def P506831743932533902.Spec : Prop :=
  ∀ n, P506831743932533902.a n = A123991 n

end A123991

/-! ## A123991.P17313928709238946778

`A124615(n)-2*A127811(n)`
-/

namespace A123991.P17313928709238946778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124615 n - 2 * A127811 n

end

end A123991.P17313928709238946778

namespace A123991

/-- `A124615(n)-2*A127811(n)` -/
def P17313928709238946778.Spec : Prop :=
  ∀ n, P17313928709238946778.a n = A123991 n

end A123991

/-! ## A123991.P4708957726222731169

`A124615(n)+A057428(n)*A127790(n)`
-/

namespace A123991.P4708957726222731169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124615 n + A057428 n * A127790 n

end

end A123991.P4708957726222731169

namespace A123991

/-- `A124615(n)+A057428(n)*A127790(n)` -/
def P4708957726222731169.Spec : Prop :=
  ∀ n, P4708957726222731169.a n = A123991 n

end A123991

/-! ## A123991.P18234172721589652964

`A124615(A028310(n))%(2*A127811(n)+1)+1`
-/

namespace A123991.P18234172721589652964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124615 (A028310 n).toNat) (2 * A127811 n + 1) + 1

end

end A123991.P18234172721589652964

namespace A123991

/-- `A124615(A028310(n))%(2*A127811(n)+1)+1` -/
def P18234172721589652964.Spec : Prop :=
  ∀ n, P18234172721589652964.a n = A123991 n

end A123991

/-! ## A123991.P5595450884928602731

`A124615(n)-(A127811(A005843(n)-n)+A127811(n))`
-/

namespace A123991.P5595450884928602731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124615 n - (A127811 (A005843 n - (n : ℤ)).toNat + A127811 n)

end

end A123991.P5595450884928602731

namespace A123991

/-- `A124615(n)-(A127811(A005843(n)-n)+A127811(n))` -/
def P5595450884928602731.Spec : Prop :=
  ∀ n, P5595450884928602731.a n = A123991 n

end A123991

/-!
# A123993: Primes p such that p^2 is an interprime = average of two successive primes.

The programs for A123993, there is no canonical definition to state claims against.
-/

/-! ## A123993.P11075602251017237662

`p?[floor(sqrt(A263675(n+1)))]`
-/

namespace A123993.P11075602251017237662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A263675 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123993.P11075602251017237662

/-! ## A123993.P6217386319392602495

`p?[ceil(sqrt(A084289(n+1)))]`
-/

namespace A123993.P6217386319392602495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A084289 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123993.P6217386319392602495

/-! ## A123993.P6882295960028521972

`p?[A075190(n+1)]`
-/

namespace A123993.P6882295960028521972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123993.P6882295960028521972

/-! ## A123993.P7539653964592254579

`∩[A000040(n+1), A075190(n+1)]`
-/

namespace A123993.P7539653964592254579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123993.P7539653964592254579

/-! ## A123993.P3291823748625354894

`p?[ceil(sqrt(A225195(n+1)))]`
-/

namespace A123993.P3291823748625354894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A225195 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123993.P3291823748625354894

/-!
# A123995: First occurrence of prime gaps which are perfect powers.

The programs for A123995, there is no canonical definition to state claims against.
-/

/-! ## A123995.P16146643889891133819

`A000230(record[A025480(A001597(n+1))])`
-/

namespace A123995.P16146643889891133819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123995.P16146643889891133819

/-! ## A123995.P9370840683641958217

`A000230(record[A278537(A001597(n+1))])`
-/

namespace A123995.P9370840683641958217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A123995.P9370840683641958217

/-!
# A123996: Smallest prime q such that the gap between q and the previous prime is a perfect power that has not occurred earlier as a gap.

The programs for A123996, there is no canonical definition to state claims against.
-/

/-! ## A123996.P6275675003770598460

`A151800(A123995(n+1))`
-/

namespace A123996.P6275675003770598460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A123995 (n + 1)).toNat

end

end A123996.P6275675003770598460

/-!
# A123998: Numbers k such that 2k+1 and 4k+1 are primes.

The programs for A123998, the canonical program `A123998.P17961108538032999968` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123998 has offset 1).

The definition of A123998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123998.P17961108538032999968

`A105610(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A123998

/-- `A105610(n+1)+1` -/
def P17961108538032999968.Spec : Prop :=
  ∀ n, P17961108538032999968.a n = A123998 (n + 1)

theorem P17961108538032999968.correct : P17961108538032999968.Spec := by
  intro n
  simp only [A123998, Nat.add_sub_cancel]

end A123998

/-! ## A123998.P11880654366824855070

`(∑[A074258(n+1)]+1)/2`
-/

namespace A123998.P11880654366824855070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074258 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A123998.P11880654366824855070

namespace A123998

/-- `(∑[A074258(n+1)]+1)/2` -/
def P11880654366824855070.Spec : Prop :=
  ∀ n, P11880654366824855070.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P4903034281638457814

`∑[A032742(A074258(n+1))]`
-/

namespace A123998.P4903034281638457814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A074258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123998.P4903034281638457814

namespace A123998

/-- `∑[A032742(A074258(n+1))]` -/
def P4903034281638457814.Spec : Prop :=
  ∀ n, P4903034281638457814.a n = A123998 (n + 1)

end A123998

/-! ## A123998.P12295149592703468334

`∑[A004526(A074258(n+1)+1)]`
-/

namespace A123998.P12295149592703468334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074258 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123998.P12295149592703468334

namespace A123998

/-- `∑[A004526(A074258(n+1)+1)]` -/
def P12295149592703468334.Spec : Prop :=
  ∀ n, P12295149592703468334.a n = A123998 (n + 1)

end A123998

/-! ## A123998.P10278456728761480314

`A351875(n+2)/2`
-/

namespace A123998.P10278456728761480314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351875 (n + 2) : ℚ) / 2

end

end A123998.P10278456728761480314

namespace A123998

/-- `A351875(n+2)/2` -/
def P10278456728761480314.Spec : Prop :=
  ∀ n, P10278456728761480314.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P7311088639812072052

`A089965(n+2)/4`
-/

namespace A123998.P7311088639812072052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089965 (n + 2) : ℚ) / 4

end

end A123998.P7311088639812072052

namespace A123998

/-- `A089965(n+2)/4` -/
def P7311088639812072052.Spec : Prop :=
  ∀ n, P7311088639812072052.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P3838599555827807531

`floor(A005382(n+2)/2)`
-/

namespace A123998.P3838599555827807531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005382 (n + 2) : ℚ) / 2⌋

end

end A123998.P3838599555827807531

namespace A123998

/-- `floor(A005382(n+2)/2)` -/
def P3838599555827807531.Spec : Prop :=
  ∀ n, P3838599555827807531.a n = A123998 (n + 1)

end A123998

/-! ## A123998.P4084461878010358892

`round(A005383(n+2)/4)`
-/

namespace A123998.P4084461878010358892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005383 (n + 2) : ℚ) / 4)

end

end A123998.P4084461878010358892

namespace A123998

/-- `round(A005383(n+2)/4)` -/
def P4084461878010358892.Spec : Prop :=
  ∀ n, P4084461878010358892.a n = A123998 (n + 1)

end A123998

/-! ## A123998.P16621143678908098063

`∑[A002265(Δ[A005383(n+1)])]+1`
-/

namespace A123998.P16621143678908098063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123998.P16621143678908098063

namespace A123998

/-- `∑[A002265(Δ[A005383(n+1)])]+1` -/
def P16621143678908098063.Spec : Prop :=
  ∀ n, P16621143678908098063.a n = A123998 (n + 1)

end A123998

/-! ## A123998.P8694153679920636105

`(A005383(n+2)-A005382(n+2))/2`
-/

namespace A123998.P8694153679920636105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 2) - A005382 (n + 2) : ℚ) / 2

end

end A123998.P8694153679920636105

namespace A123998

/-- `(A005383(n+2)-A005382(n+2))/2` -/
def P8694153679920636105.Spec : Prop :=
  ∀ n, P8694153679920636105.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P15947907710858224187

`A005383(n+2)-A340509(n+2)/2`
-/

namespace A123998.P15947907710858224187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 2) : ℚ) - (A340509 (n + 2) : ℚ) / 2

end

end A123998.P15947907710858224187

namespace A123998

/-- `A005383(n+2)-A340509(n+2)/2` -/
def P15947907710858224187.Spec : Prop :=
  ∀ n, P15947907710858224187.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P2331632731812029660

`A340509(n+2)/2-A005382(n+2)`
-/

namespace A123998.P2331632731812029660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340509 (n + 2) : ℚ) / 2 - (A005382 (n + 2) : ℚ)

end

end A123998.P2331632731812029660

namespace A123998

/-- `A340509(n+2)/2-A005382(n+2)` -/
def P2331632731812029660.Spec : Prop :=
  ∀ n, P2331632731812029660.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P15093235596500754909

`(A005382(n+2)-A254377(2*n))/2`
-/

namespace A123998.P15093235596500754909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 2) - A254377 (2 * n) : ℚ) / 2

end

end A123998.P15093235596500754909

namespace A123998

/-- `(A005382(n+2)-A254377(2*n))/2` -/
def P15093235596500754909.Spec : Prop :=
  ∀ n, P15093235596500754909.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P12629552662223395845

`(A005382(n+2)-1)/A020639(2*(n+1))`
-/

namespace A123998.P12629552662223395845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 2) - 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A123998.P12629552662223395845

namespace A123998

/-- `(A005382(n+2)-1)/A020639(2*(n+1))` -/
def P12629552662223395845.Spec : Prop :=
  ∀ n, P12629552662223395845.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P13289107049815890632

`(A005382(n+2)-A000034(2*n))/2`
-/

namespace A123998.P13289107049815890632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 2) - A000034 (2 * n) : ℚ) / 2

end

end A123998.P13289107049815890632

namespace A123998

/-- `(A005382(n+2)-A000034(2*n))/2` -/
def P13289107049815890632.Spec : Prop :=
  ∀ n, P13289107049815890632.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P14563400065155607842

`(p?[2*A000040(n+2)-1]-1)/4`
-/

namespace A123998.P14563400065155607842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 4

end

end A123998.P14563400065155607842

namespace A123998

/-- `(p?[2*A000040(n+2)-1]-1)/4` -/
def P14563400065155607842.Spec : Prop :=
  ∀ n, P14563400065155607842.a n = (A123998 (n + 1) : ℚ)

end A123998

/-! ## A123998.P444060841308644063

`A102781(A137288(n+2))`
-/

namespace A123998.P444060841308644063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (A137288 (n + 2)).toNat

end

end A123998.P444060841308644063

namespace A123998

/-- `A102781(A137288(n+2))` -/
def P444060841308644063.Spec : Prop :=
  ∀ n, P444060841308644063.a n = A123998 (n + 1)

end A123998

/-! ## A123998.P6518943628685105468

`∩[A005097(n+1), A005098(n+1)]`
-/

namespace A123998.P6518943628685105468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123998.P6518943628685105468

namespace A123998

/-- `∩[A005097(n+1), A005098(n+1)]` -/
def P6518943628685105468.Spec : Prop :=
  ∀ n, (P6518943628685105468.a n : ℤ) = A123998 (n + 1)

end A123998

/-! ## A123998.P1941112952085699835

`∩[A005098(n+1), A102781(n+1)]`
-/

namespace A123998.P1941112952085699835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123998.P1941112952085699835

namespace A123998

/-- `∩[A005098(n+1), A102781(n+1)]` -/
def P1941112952085699835.Spec : Prop :=
  ∀ n, (P1941112952085699835.a n : ℤ) = A123998 (n + 1)

end A123998

/-! ## A123998.P2848882100921962817

`∩[A067076(n+1), A111215(n+1)]+1`
-/

namespace A123998.P2848882100921962817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A123998.P2848882100921962817

namespace A123998

/-- `∩[A067076(n+1), A111215(n+1)]+1` -/
def P2848882100921962817.Spec : Prop :=
  ∀ n, (P2848882100921962817.a n : ℤ) = A123998 (n + 1)

end A123998

/-!
# A123999: Number of ordered ways of writing n as a sum of 4 squares of nonnegative numbers less than 4.

The programs for A123999, there is no canonical definition to state claims against.
-/

/-! ## A123999.P715841813613703870

`A014110(n%A110847(n))`
-/

namespace A123999.P715841813613703870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 (Int.tmod (n : ℤ) (A110847 n)).toNat

end

end A123999.P715841813613703870

/-! ## A123999.P9181393138044723780

`A014110(n)^(1-A044941(2^n))`
-/

namespace A123999.P9181393138044723780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014110 n : ℚ) ^ (1 - A044941 (2 ^ n) : ℤ)

end

end A123999.P9181393138044723780

/-! ## A123999.P15242779293850348321

`A014110(n)-A184955(A184049(n))`
-/

namespace A123999.P15242779293850348321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 n - A184955 (A184049 n).toNat

end

end A123999.P15242779293850348321

/-! ## A123999.P7478988866374527965

`A014110(n*A045847(A184955(n)))`
-/

namespace A123999.P7478988866374527965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 ((n : ℤ) * A045847 (A184955 n).toNat).toNat

end

end A123999.P7478988866374527965

/-! ## A123999.P3899048420875464974

`A014110(n*A082601(A184955(n)))`
-/

namespace A123999.P3899048420875464974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014110 ((n : ℤ) * A082601 (A184955 n).toNat).toNat

end

end A123999.P3899048420875464974

