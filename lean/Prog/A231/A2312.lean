import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231200: Boustrophedon transform of even numbers.

The programs for A231200, there is no canonical definition to state claims against.
-/

/-! ## A231200.P18203334028403027306

`2*A231179(n)`
-/

namespace A231200.P18203334028403027306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231179 n

end

end A231200.P18203334028403027306

/-! ## A231200.P16501875775522351589

`2*n*A000667(abs(1-n))`
-/

namespace A231200.P16501875775522351589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000667 |1 - (n : ℤ)|.toNat)

end

end A231200.P16501875775522351589

/-! ## A231200.P16015013247026391153

`A000754(n)-A000667(n)`
-/

namespace A231200.P16015013247026391153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000754 n - A000667 n

end

end A231200.P16015013247026391153

/-! ## A231200.P13514091555790050690

`2*(A000660(n)-A000111(n))`
-/

namespace A231200.P13514091555790050690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000660 n - A000111 n)

end

end A231200.P13514091555790050690

/-! ## A231200.P10331844407948282012

`2*(A000737(n)-A000667(n))`
-/

namespace A231200.P10331844407948282012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000737 n - A000667 n)

end

end A231200.P10331844407948282012

/-! ## A231200.P624381523255679219

`2*(A000754(n)-A000737(n))`
-/

namespace A231200.P624381523255679219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000754 n - A000737 n)

end

end A231200.P624381523255679219

/-! ## A231200.P17266548091105603069

`2*(A000746(n)-A308520(n))`
-/

namespace A231200.P17266548091105603069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000746 n - A308520 n)

end

end A231200.P17266548091105603069

/-! ## A231200.P415420057349555649

`A000754(n)-A292975(A034856(n+1))`
-/

namespace A231200.P415420057349555649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000754 n - A292975 (A034856 (n + 1)).toNat

end

end A231200.P415420057349555649

/-! ## A231200.P17601114813016940910

`2*(A000660(n)-A008281(A000096(n)))`
-/

namespace A231200.P17601114813016940910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000660 n - A008281 (A000096 n).toNat)

end

end A231200.P17601114813016940910

/-! ## A231200.P13276750188588646927

`2*(A000660(n)-A109449(A000217(n)))`
-/

namespace A231200.P13276750188588646927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000660 n - A109449 (A000217 n).toNat)

end

end A231200.P13276750188588646927

/-!
# A231204: If n = Sum_{i=0..m} c(i)*2^i, c(i) = 0 or 1, then a(n) = Sum_{i=0..m} (m-i)*c(i).

The programs for A231204, the canonical program `A231204.P13163929619996957332` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231204 has offset 0).

The definition of A231204 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230877, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A231204.P13163929619996957332

`A230877(n)-A000120(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A231204

/-- `A230877(n)-A000120(n)` -/
def P13163929619996957332.Spec : Prop :=
  ∀ n, P13163929619996957332.a n = A231204 n

theorem P13163929619996957332.correct : P13163929619996957332.Spec := by
  intro n
  simp only [A231204]

end A231204

/-! ## A231204.P4256273073561631128

`A073642(A030101(n))`
-/

namespace A231204.P4256273073561631128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A030101 n).toNat

end

end A231204.P4256273073561631128

namespace A231204

/-- `A073642(A030101(n))` -/
def P4256273073561631128.Spec : Prop :=
  ∀ n, P4256273073561631128.a n = A231204 n

end A231204

/-! ## A231204.P15672617337611013021

`A359495(n)+A073642(n)`
-/

namespace A231204.P15672617337611013021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n + A073642 n

end

end A231204.P15672617337611013021

namespace A231204

/-- `A359495(n)+A073642(n)` -/
def P15672617337611013021.Spec : Prop :=
  ∀ n, P15672617337611013021.a n = A231204 n

end A231204

/-! ## A231204.P5101165911042710438

`A359042(n)-A029837(n+1)`
-/

namespace A231204.P5101165911042710438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359042 n - A029837 (n + 1)

end

end A231204.P5101165911042710438

namespace A231204

/-- `A359042(n)-A029837(n+1)` -/
def P5101165911042710438.Spec : Prop :=
  ∀ n, P5101165911042710438.a n = A231204 n

end A231204

/-! ## A231204.P2076064197172972661

`A124757((A145341(n+1)-1)/2)`
-/

namespace A231204.P2076064197172972661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (SequenceMachineLib.roundAway ((A145341 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A231204.P2076064197172972661

namespace A231204

/-- `A124757((A145341(n+1)-1)/2)` -/
def P2076064197172972661.Spec : Prop :=
  ∀ n, P2076064197172972661.a n = A231204 n

end A231204

/-! ## A231204.P6163994337420522402

`A029931(A030101(n))-A000120(n)`
-/

namespace A231204.P6163994337420522402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A030101 n).toNat - A000120 n

end

end A231204.P6163994337420522402

namespace A231204

/-- `A029931(A030101(n))-A000120(n)` -/
def P6163994337420522402.Spec : Prop :=
  ∀ n, P6163994337420522402.a n = A231204 n

end A231204

/-! ## A231204.P6671873088879210417

`A230877(n)-A001222(A001316(n))`
-/

namespace A231204.P6671873088879210417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A001222 (A001316 n).toNat

end

end A231204.P6671873088879210417

namespace A231204

/-- `A230877(n)-A001222(A001316(n))` -/
def P6671873088879210417.Spec : Prop :=
  ∀ n, P6671873088879210417.a n = A231204 n

end A231204

/-! ## A231204.P14267828666763237600

`A073642(n)+A230877(n)-A029931(n)`
-/

namespace A231204.P14267828666763237600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + (A230877 n - A029931 n)

end

end A231204.P14267828666763237600

namespace A231204

/-- `A073642(n)+A230877(n)-A029931(n)` -/
def P14267828666763237600.Spec : Prop :=
  ∀ n, P14267828666763237600.a n = A231204 n

end A231204

/-! ## A231204.P17506964362387528754

`A073642(n)+A281392(n)-A161511(n)`
-/

namespace A231204.P17506964362387528754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + (A281392 n - A161511 n)

end

end A231204.P17506964362387528754

namespace A231204

/-- `A073642(n)+A281392(n)-A161511(n)` -/
def P17506964362387528754.Spec : Prop :=
  ∀ n, P17506964362387528754.a n = A231204 n

end A231204

/-! ## A231204.P15550806602682693795

`A000120(n)*A070939(n)-A029931(n)`
-/

namespace A231204.P15550806602682693795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A070939 n - A029931 n

end

end A231204.P15550806602682693795

namespace A231204

/-- `A000120(n)*A070939(n)-A029931(n)` -/
def P15550806602682693795.Spec : Prop :=
  ∀ n, P15550806602682693795.a n = A231204 n

end A231204

/-! ## A231204.P3187146354439622219

`A000120(n)*A029837(n+1)-A029931(n)`
-/

namespace A231204.P3187146354439622219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A029837 (n + 1) - A029931 n

end

end A231204.P3187146354439622219

namespace A231204

/-- `A000120(n)*A029837(n+1)-A029931(n)` -/
def P3187146354439622219.Spec : Prop :=
  ∀ n, P3187146354439622219.a n = A231204 n

end A231204

/-! ## A231204.P7875009368797065652

`A359495(2*n)+A029931(n)`
-/

namespace A231204.P7875009368797065652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 (2 * n) + A029931 n

end

end A231204.P7875009368797065652

namespace A231204

/-- `A359495(2*n)+A029931(n)` -/
def P7875009368797065652.Spec : Prop :=
  ∀ n, P7875009368797065652.a n = A231204 n

end A231204

/-! ## A231204.P5217991526178697217

`A359495(2*n+1)+A124757(n)`
-/

namespace A231204.P5217991526178697217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 (2 * n + 1) + A124757 n

end

end A231204.P5217991526178697217

namespace A231204

/-- `A359495(2*n+1)+A124757(n)` -/
def P5217991526178697217.Spec : Prop :=
  ∀ n, P5217991526178697217.a n = A231204 n

end A231204

/-! ## A231204.P8237597408736623509

`A000120(n)*A000120(A003817(n))-A029931(n)`
-/

namespace A231204.P8237597408736623509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A000120 (A003817 n).toNat - A029931 n

end

end A231204.P8237597408736623509

namespace A231204

/-- `A000120(n)*A000120(A003817(n))-A029931(n)` -/
def P8237597408736623509.Spec : Prop :=
  ∀ n, P8237597408736623509.a n = A231204 n

end A231204

/-! ## A231204.P9000745542653402931

`A029931(2*n)+A230877(n)-A029931(4*n)`
-/

namespace A231204.P9000745542653402931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (2 * n) + (A230877 n - A029931 (4 * n))

end

end A231204.P9000745542653402931

namespace A231204

/-- `A029931(2*n)+A230877(n)-A029931(4*n)` -/
def P9000745542653402931.Spec : Prop :=
  ∀ n, P9000745542653402931.a n = A231204 n

end A231204

/-! ## A231204.P4780511348760296647

`∑{digits}[A063013(n), A000120(n)-#]`
-/

namespace A231204.P4780511348760296647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 n - (x : ℤ)).sum

end

end A231204.P4780511348760296647

namespace A231204

/-- `∑{digits}[A063013(n), A000120(n)-#]` -/
def P4780511348760296647.Spec : Prop :=
  ∀ n, P4780511348760296647.a n = A231204 n

end A231204

/-! ## A231204.P15826360091647665612

`A326844(A019565(n))`
-/

namespace A231204.P15826360091647665612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A019565 n).toNat

end

end A231204.P15826360091647665612

namespace A231204

/-- `A326844(A019565(n))` -/
def P15826360091647665612.Spec : Prop :=
  ∀ n, P15826360091647665612.a n = A231204 n

end A231204

/-! ## A231204.P4731965573665314662

`A326844(A057335(n))`
-/

namespace A231204.P4731965573665314662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (A057335 n).toNat

end

end A231204.P4731965573665314662

namespace A231204

/-- `A326844(A057335(n))` -/
def P4731965573665314662.Spec : Prop :=
  ∀ n, P4731965573665314662.a n = A231204 n

end A231204

/-!
# A231205: Table of maximal number of guesses required to solve a Mastermind variant, read by columns.

The programs for A231205, there is no canonical definition to state claims against.
-/

/-! ## A231205.P11323415940063968200

`∑{d}[n, A213237(#)]`
-/

namespace A231205.P11323415940063968200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A213237 d

end

end A231205.P11323415940063968200

/-! ## A231205.P18336137228220270643

`∑{d}[n, A393672(#)]`
-/

namespace A231205.P18336137228220270643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A393672 d

end

end A231205.P18336137228220270643

/-! ## A231205.P8928288008896367544

`A277822(n)+floor((n+1)/8)`
-/

namespace A231205.P8928288008896367544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n + ⌊(n + 1 : ℚ) / 8⌋

end

end A231205.P8928288008896367544

/-! ## A231205.P3806934781044466815

`(Δ[record[A003188(n)]]+1)%(n+1)`
-/

namespace A231205.P3806934781044466815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) (n + 1 : ℤ)

end

end A231205.P3806934781044466815

/-! ## A231205.P2672654596633333522

`(Δ[A295897(n+1)]+1)%(n+1)`
-/

namespace A231205.P2672654596633333522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) (n + 1 : ℤ)

end

end A231205.P2672654596633333522

/-!
# A231208: Number of binary "privileged words" of length n.

The programs for A231208, there is no canonical definition to state claims against.
-/

/-! ## A231208.P5447624589272220051

`A226452(n)-A297184(n)`
-/

namespace A231208.P5447624589272220051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226452 n - A297184 n

end

end A231208.P5447624589272220051

/-! ## A231208.P9217001876107874769

`A226452(n)-2*A297185(n)`
-/

namespace A231208.P9217001876107874769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226452 n - 2 * A297185 n

end

end A231208.P9217001876107874769

/-! ## A231208.P3810658437881922801

`2^n-(A297184(n)+A297183(n))`
-/

namespace A231208.P3810658437881922801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A297184 n + A297183 n)

end

end A231208.P3810658437881922801

/-! ## A231208.P3729929903057543781

`2^n-A297183(n)-2*A297185(n)`
-/

namespace A231208.P3729929903057543781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A297183 n - 2 * A297185 n

end

end A231208.P3729929903057543781

/-! ## A231208.P11762971994182704319

`A000079(n)-A297183(n)-A297184(n)`
-/

namespace A231208.P11762971994182704319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A297183 n - A297184 n

end

end A231208.P11762971994182704319

/-!
# A231209: Smallest squarefree number k with 2^n ways to write k as k = x*y, where x, y = squarefree numbers, 1 <= x <= y <= k.

The programs for A231209, there is no canonical definition to state claims against.
-/

/-! ## A231209.P8524376945941013603

`xor(3, ∏[p?[xor(1, n)]])+1`
-/

namespace A231209.P8524376945941013603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A231209.P8524376945941013603

/-! ## A231209.P18266833534023136943

`a(n-1)*p?[xor(1, n)]` with `a(0)=1, a(1)=6`
-/

namespace A231209.P18266833534023136943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A231209.P18266833534023136943

/-! ## A231209.P18065403318398816658

`∏[p?[n-(-1)^n]]-floor(acot(n))`
-/

namespace A231209.P18065403318398816658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A231209.P18065403318398816658

/-! ## A231209.P13384435262994256971

`∏[p?[n-(-1)^n]]/ceil(acot(n))`
-/

namespace A231209.P13384435262994256971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A231209.P13384435262994256971

/-! ## A231209.P7511100270094243074

`a(n-1)*p?[n-(-1)^n]` with `a(0)=1, a(1)=6`
-/

namespace A231209.P7511100270094243074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231209.P7511100270094243074

/-! ## A231209.P11230738095398136038

`record[A096334(n+2)]`
-/

namespace A231209.P11230738095398136038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231209.P11230738095398136038

/-! ## A231209.P15256921169948558388

`record[A121281(n+2)]`
-/

namespace A231209.P15256921169948558388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231209.P15256921169948558388

/-! ## A231209.P12026678465563487724

`∑[A061720(n)+char[1]]`
-/

namespace A231209.P12026678465563487724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061720 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231209.P12026678465563487724

/-! ## A231209.P9866155894902232473

`record[A073039(2*n+1)]`
-/

namespace A231209.P9866155894902232473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231209.P9866155894902232473

/-! ## A231209.P4468139683106571159

`record[A108951(2*n+1)]`
-/

namespace A231209.P4468139683106571159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231209.P4468139683106571159

/-!
# A231210: Number T(n,k) of permutations of [n] with exactly k (possibly overlapping) occurrences of some of the consecutive patterns 123, 1432, 2431, 3421; triangle T(n,k), n>=0, 0<=k<=max(0,n-2), read by rows.

The programs for A231210, there is no canonical definition to state claims against.
-/

/-! ## A231210.P18082497254367006557

`A347205(A092107(n)^A331499(n+1))`
-/

namespace A231210.P18082497254367006557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (SequenceMachineLib.roundAway ((A092107 n : ℚ) ^ (A331499 (n + 1) : ℤ))).toNat

end

end A231210.P18082497254367006557

/-!
# A231211: Number of permutations of [n] avoiding simultaneously consecutive patterns 123, 1432, 2431, and 3421.

The programs for A231211, there is no canonical definition to state claims against.
-/

/-! ## A231211.P17707604157511020455

`A231210(A022856(n+2))`
-/

namespace A231211.P17707604157511020455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231210 (A022856 (n + 2)).toNat

end

end A231211.P17707604157511020455

/-! ## A231211.P2302742957554937311

`A231210(A016028(n+1)-1)`
-/

namespace A231211.P2302742957554937311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231210 (A016028 (n + 1) - 1).toNat

end

end A231211.P2302742957554937311

/-! ## A231211.P6777580178866254150

`A231210(A000124(n)-A004275(n))`
-/

namespace A231211.P6777580178866254150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231210 (A000124 n - A004275 n).toNat

end

end A231211.P6777580178866254150

/-! ## A231211.P17183085663366219558

`A231210(A014206(n)%A046691(n))`
-/

namespace A231211.P17183085663366219558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231210 (Int.tmod (A014206 n) (A046691 n)).toNat

end

end A231211.P17183085663366219558

/-! ## A231211.P8066112806617796675

`A231210(A288937(n+2)-A131209(n+1))`
-/

namespace A231211.P8066112806617796675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231210 (A288937 (n + 2) - A131209 (n + 1)).toNat

end

end A231211.P8066112806617796675

/-!
# A231212: Number of (n+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231212, there is no canonical definition to state claims against.
-/

/-! ## A231212.P12460200322765847217

`A231219(∑[4*n]+1)`
-/

namespace A231212.P12460200322765847217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231212.P12460200322765847217

/-! ## A231212.P12251095655441453632

`lcm((n+1)/∏{p}[n+1, gcd((n+1)*(n+2), #²)], A231219((n+1)²+n²))`
-/

namespace A231212.P12251095655441453632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℚ))) (A231219 ((n + 1) ^ 2 + n ^ 2))

end

end A231212.P12251095655441453632

/-! ## A231212.P11119652462780195828

`record[A231219(A330613(n+1))]`
-/

namespace A231212.P11119652462780195828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231212.P11119652462780195828

/-! ## A231212.P4541086443680193326

`A231219(A001844(n))+char[9]`
-/

namespace A231212.P4541086443680193326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231212.P4541086443680193326

/-!
# A231213: Number of (n+1) X (2+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231213, the canonical program `A231213.P6688433294403413118` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231213 has offset 1).

The definition of A231213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231213.P2122707886965401080

`ogf((-4+3x+x^2+2x^3)/(-1+3x-x^2+x^3-2x^4))`
-/

namespace A231213.P2122707886965401080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -1, -2] [1, -3, 1, -1, 2] n

end

end A231213.P2122707886965401080

namespace A231213

/-- `ogf((-4+3x+x^2+2x^3)/(-1+3x-x^2+x^3-2x^4))` -/
def P2122707886965401080.Spec : Prop :=
  ∀ n, P2122707886965401080.a n = A231213 (n + 1)

end A231213

/-! ## A231213.P6688433294403413118

`3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=9, a(2)=22, a(3)=59`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231213

/-- `3*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)` -/
def P6688433294403413118.Spec : Prop :=
  ∀ n, P6688433294403413118.a n = A231213 (n + 1)

theorem P6688433294403413118.correct : P6688433294403413118.Spec := by
  intro n
  simp only [A231213, Nat.add_sub_cancel]

end A231213

/-! ## A231213.P4638684159912708876

`A231219(∑[n+1]+2)`
-/

namespace A231213.P4638684159912708876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231213.P4638684159912708876

namespace A231213

/-- `A231219(∑[n+1]+2)` -/
def P4638684159912708876.Spec : Prop :=
  ∀ n, P4638684159912708876.a n = A231213 (n + 1)

end A231213

/-! ## A231213.P8556723163422057119

`record[gcd(A002262(n), A231219(n+2))]`
-/

namespace A231213.P8556723163422057119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231219 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231213.P8556723163422057119

namespace A231213

/-- `record[gcd(A002262(n), A231219(n+2))]` -/
def P8556723163422057119.Spec : Prop :=
  ∀ n, (P8556723163422057119.a n : ℤ) = A231213 (n + 1)

end A231213

/-! ## A231213.P17529408329561563745

`record[A231219(n+2)/A231210(n+1)]`
-/

namespace A231213.P17529408329561563745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231219 (n + 2) : ℚ) / (A231210 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231213.P17529408329561563745

namespace A231213

/-- `record[A231219(n+2)/A231210(n+1)]` -/
def P17529408329561563745.Spec : Prop :=
  ∀ n, P17529408329561563745.a n = (A231213 (n + 1) : ℚ)

end A231213

/-!
# A231214: Number of (n+1)X(3+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231214, there is no canonical definition to state claims against.
-/

/-! ## A231214.P7016540288335467250

`A231219(∑[n+2]+4)`
-/

namespace A231214.P7016540288335467250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231214.P7016540288335467250

/-! ## A231214.P11166329233131540927

`A231219(A167614(n+1))%(14*10^n)`
-/

namespace A231214.P11166329233131540927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231219 (A167614 (n + 1)).toNat) (14 * 10 ^ n : ℤ)

end

end A231214.P11166329233131540927

/-! ## A231214.P604623678456906648

`A231219(A167614(n+1))+A025466(n)`
-/

namespace A231214.P604623678456906648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167614 (n + 1)).toNat + A025466 n

end

end A231214.P604623678456906648

/-! ## A231214.P3183106323443406762

`A231219(A167614(n+1))+A025469(n)`
-/

namespace A231214.P3183106323443406762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167614 (n + 1)).toNat + A025469 n

end

end A231214.P3183106323443406762

/-! ## A231214.P10145916683762080316

`A231219(A167614(n+1))+A165656(n)`
-/

namespace A231214.P10145916683762080316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167614 (n + 1)).toNat + A165656 n

end

end A231214.P10145916683762080316

/-!
# A231215: Number of (n+1) X (4+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231215, there is no canonical definition to state claims against.
-/

/-! ## A231215.P219443934834997283

`A231219(∑[n+2]+n+8)`
-/

namespace A231215.P219443934834997283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (∑ j ∈ Finset.range (n + 1), f1 j + n + 8)

end

end A231215.P219443934834997283

/-! ## A231215.P8569978292825165380

`A231219(A374004(n+1))%A058332(n+1)`
-/

namespace A231215.P8569978292825165380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231219 (A374004 (n + 1)).toNat) (A058332 (n + 1))

end

end A231215.P8569978292825165380

/-!
# A231216: Number of (n+1)X(5+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231216, there is no canonical definition to state claims against.
-/

/-! ## A231216.P12856665346257611732

`A231219(∑[n+5]+10-n)`
-/

namespace A231216.P12856665346257611732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (∑ j ∈ Finset.range (n + 1), f1 j + 10 - n)

end

end A231216.P12856665346257611732

/-!
# A231217: Number of (n+1)X(6+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231217, there is no canonical definition to state claims against.
-/

/-! ## A231217.P1644169449115715340

`A231219(A056115(n)+21)`
-/

namespace A231217.P1644169449115715340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A056115 n + 21).toNat

end

end A231217.P1644169449115715340

/-! ## A231217.P10544362137836326233

`A231219(A167499(n+4)+1)`
-/

namespace A231217.P10544362137836326233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167499 (n + 4) + 1).toNat

end

end A231217.P10544362137836326233

/-! ## A231217.P10858567207592207304

`A231219(A167614(n+4)+3)`
-/

namespace A231217.P10858567207592207304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167614 (n + 4) + 3).toNat

end

end A231217.P10858567207592207304

/-! ## A231217.P7070033032394304489

`A231219(A141214(n+2)+9)`
-/

namespace A231217.P7070033032394304489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A141214 (n + 2) + 9).toNat

end

end A231217.P7070033032394304489

/-! ## A231217.P4230461030655084022

`A231219(A161680(n+6)+6)`
-/

namespace A231217.P4230461030655084022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A161680 (n + 6) + 6).toNat

end

end A231217.P4230461030655084022

/-!
# A231218: Number of (n+1)X(7+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231218, there is no canonical definition to state claims against.
-/

/-! ## A231218.P11754681281981688524

`A231219(A056119(n)+28)`
-/

namespace A231218.P11754681281981688524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A056119 n + 28).toNat

end

end A231218.P11754681281981688524

/-! ## A231218.P5853033067707887392

`A231219(eq[11, A066657(n)])`
-/

namespace A231218.P5853033067707887392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231218.P5853033067707887392

/-! ## A231218.P11921390180214168792

`A231219(A166136(n+5)+1)`
-/

namespace A231218.P11921390180214168792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A166136 (n + 5) + 1).toNat

end

end A231218.P11921390180214168792

/-! ## A231218.P8934633451990179929

`A231219(A167499(n+5)+2)`
-/

namespace A231218.P8934633451990179929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167499 (n + 5) + 2).toNat

end

end A231218.P8934633451990179929

/-! ## A231218.P21983689369365205

`A231219(A167614(n+5)+4)`
-/

namespace A231218.P21983689369365205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (A167614 (n + 5) + 4).toNat

end

end A231218.P21983689369365205

/-!
# A231219: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..2 introduced in row major order.

The programs for A231219, there is no canonical definition to state claims against.
-/

/-! ## A231219.P8545819306991289895

`A231343(n+1)-A185284(3*n+2)`
-/

namespace A231219.P8545819306991289895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1) - A185284 (3 * n + 2)

end

end A231219.P8545819306991289895

/-! ## A231219.P9525390144538305739

`A231343(n+1)-A003982(A005558(n))`
-/

namespace A231219.P9525390144538305739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1) - A003982 (A005558 n).toNat

end

end A231219.P9525390144538305739

/-! ## A231219.P6987851593222201450

`A231343(n+1)-A025466(A007283(n))`
-/

namespace A231219.P6987851593222201450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1) - A025466 (A007283 n).toNat

end

end A231219.P6987851593222201450

/-! ## A231219.P12461494856407799600

`A231343(n+1)-A025466(A181936(n))`
-/

namespace A231219.P12461494856407799600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1) - A025466 (A181936 n).toNat

end

end A231219.P12461494856407799600

/-! ## A231219.P15834777278493865276

`A231343(n+1)-A282673(A000013(n))`
-/

namespace A231219.P15834777278493865276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (n + 1) - A282673 (A000013 n).toNat

end

end A231219.P15834777278493865276

/-!
# A231220: Number of (n+2)X(n+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231220, there is no canonical definition to state claims against.
-/

/-! ## A231220.P14629604344151586593

`A231227(∑[4*n]+1)`
-/

namespace A231220.P14629604344151586593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231220.P14629604344151586593

/-! ## A231220.P8471413490279066036

`lcm((n+1)/∏{p}[n+1, gcd((n+1)*(n+2), #²)], A231227((n+1)²+n²))`
-/

namespace A231220.P8471413490279066036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℚ))) (A231227 ((n + 1) ^ 2 + n ^ 2))

end

end A231220.P8471413490279066036

/-! ## A231220.P16637526025173627193

`record[A231227(Δ[A235355(n)])]`
-/

namespace A231220.P16637526025173627193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231220.P16637526025173627193

/-! ## A231220.P7768063140961837143

`and(-1, A231227(A001844(n)))`
-/

namespace A231220.P7768063140961837143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A231227 (A001844 n).toNat)

end

end A231220.P7768063140961837143

/-!
# A231221: Number of (n+2) X (2+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231221, there is no canonical definition to state claims against.
-/

/-! ## A231221.P14939472269125619009

`A231227(∑[n+1]+2)`
-/

namespace A231221.P14939472269125619009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231221.P14939472269125619009

/-! ## A231221.P873503713302377516

`A231227(A000096(n)+3)+char[16]`
-/

namespace A231221.P873503713302377516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231221.P873503713302377516

/-! ## A231221.P17162388833628360829

`record[gcd(A073200(n), A231227(n+3))]`
-/

namespace A231221.P17162388833628360829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073200 n) (A231227 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231221.P17162388833628360829

/-! ## A231221.P7949832162268089344

`record[A231227(n+2)/A231210(n+1)]`
-/

namespace A231221.P7949832162268089344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231227 (n + 2) : ℚ) / (A231210 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231221.P7949832162268089344

/-! ## A231221.P16163101570370817440

`A231227(A000096(n)+3)%A000108(n+3)`
-/

namespace A231221.P16163101570370817440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231227 (A000096 n + 3).toNat) (A000108 (n + 3))

end

end A231221.P16163101570370817440

/-!
# A231222: Number of (n+2)X(3+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231222, there is no canonical definition to state claims against.
-/

/-! ## A231222.P383942872453482479

`A231227(∑[n+2]+4)`
-/

namespace A231222.P383942872453482479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231222.P383942872453482479

/-! ## A231222.P4066526075314896773

`A231227(A167614(n+1))+char[16]`
-/

namespace A231222.P4066526075314896773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231222.P4066526075314896773

/-! ## A231222.P17970802644487733704

`A231227(A046691(n)+7)+char[15]`
-/

namespace A231222.P17970802644487733704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231222.P17970802644487733704

/-! ## A231222.P14944747610874738290

`record[gcd(A097805(n+1), A231227(n+4))]`
-/

namespace A231222.P14944747610874738290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 (n + 1)) (A231227 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231222.P14944747610874738290

/-! ## A231222.P13777092964870552668

`gcd(A178798(n), A231227(A167614(n+1)))`
-/

namespace A231222.P13777092964870552668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178798 n) (A231227 (A167614 (n + 1)).toNat)

end

end A231222.P13777092964870552668

/-!
# A231223: Number of (n+2)X(4+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231223, there is no canonical definition to state claims against.
-/

/-! ## A231223.P5890168522934468171

`A231227(∑[n+3]+7)`
-/

namespace A231223.P5890168522934468171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231223.P5890168522934468171

/-! ## A231223.P1052668332793519613

`A231227(A374004(n+1))%A364816(n+3)`
-/

namespace A231223.P1052668332793519613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231227 (A374004 (n + 1)).toNat) (A364816 (n + 3))

end

end A231223.P1052668332793519613

/-! ## A231223.P3000510748675752303

`A231227(A055999(n)+10)+A157307(2*(n+1))`
-/

namespace A231223.P3000510748675752303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A055999 n + 10).toNat + A157307 (2 * (n + 1))

end

end A231223.P3000510748675752303

/-!
# A231224: Number of (n+2)X(5+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231224, there is no canonical definition to state claims against.
-/

/-! ## A231224.P9632340489081342959

`A231227(A374005(n+1))`
-/

namespace A231224.P9632340489081342959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A374005 (n + 1)).toNat

end

end A231224.P9632340489081342959

/-! ## A231224.P1763447644050057006

`A231227(A167499(n+3))`
-/

namespace A231224.P1763447644050057006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A167499 (n + 3)).toNat

end

end A231224.P1763447644050057006

/-! ## A231224.P16647215504822655750

`A231227(A155212(n)+13)`
-/

namespace A231224.P16647215504822655750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A155212 n + 13).toNat

end

end A231224.P16647215504822655750

/-! ## A231224.P13879223646461353314

`A231227(A056000(n)+15)`
-/

namespace A231224.P13879223646461353314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A056000 n + 15).toNat

end

end A231224.P13879223646461353314

/-! ## A231224.P998838534756582985

`A231227(eq[7, A066657(n)])`
-/

namespace A231224.P998838534756582985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231224.P998838534756582985

/-!
# A231225: Number of (n+2)X(6+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231225, there is no canonical definition to state claims against.
-/

/-! ## A231225.P4986810999094756574

`A231227(A374007(n+1))`
-/

namespace A231225.P4986810999094756574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A374007 (n + 1)).toNat

end

end A231225.P4986810999094756574

/-! ## A231225.P13450887556709580023

`A231227(A056115(n)+21)`
-/

namespace A231225.P13450887556709580023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A056115 n + 21).toNat

end

end A231225.P13450887556709580023

/-! ## A231225.P2923826773174569286

`A231227(A167614(n+4)+3)`
-/

namespace A231225.P2923826773174569286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A167614 (n + 4) + 3).toNat

end

end A231225.P2923826773174569286

/-! ## A231225.P1481135655668855447

`A231227(A000217(n+5)+6)`
-/

namespace A231225.P1481135655668855447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A000217 (n + 5) + 6).toNat

end

end A231225.P1481135655668855447

/-! ## A231225.P754194432980783507

`A231227(A055998(n+3)+9)`
-/

namespace A231225.P754194432980783507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A055998 (n + 3) + 9).toNat

end

end A231225.P754194432980783507

/-!
# A231226: Number of (n+2)X(7+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231226, there is no canonical definition to state claims against.
-/

/-! ## A231226.P7882176827361951616

`A231227(A374008(n+1))`
-/

namespace A231226.P7882176827361951616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A374008 (n + 1)).toNat

end

end A231226.P7882176827361951616

/-! ## A231226.P9352519650947494690

`A231227(A056119(n)+28)`
-/

namespace A231226.P9352519650947494690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A056119 n + 28).toNat

end

end A231226.P9352519650947494690

/-! ## A231226.P10502515161254475895

`A231227(eq[11, A066657(n)])`
-/

namespace A231226.P10502515161254475895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231226.P10502515161254475895

/-! ## A231226.P2056781040878883554

`A231227(A167499(n+5)+2)`
-/

namespace A231226.P2056781040878883554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A167499 (n + 5) + 2).toNat

end

end A231226.P2056781040878883554

/-! ## A231226.P15346661799300248827

`A231227(A167614(n+5)+4)`
-/

namespace A231226.P15346661799300248827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (A167614 (n + 5) + 4).toNat

end

end A231226.P15346661799300248827

/-!
# A231227: T(n,k)=Number of (n+2)X(k+2) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231227, there is no canonical definition to state claims against.
-/

/-! ## A231227.P18082199521521186991

`A231441(n+1)-A003982(A105291(n))`
-/

namespace A231227.P18082199521521186991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (n + 1) - A003982 (A105291 n).toNat

end

end A231227.P18082199521521186991

/-! ## A231227.P540954922329707751

`A231441(n+1)-A212619(A027052(3*n))`
-/

namespace A231227.P540954922329707751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (n + 1) - A212619 (A027052 (3 * n)).toNat

end

end A231227.P540954922329707751

/-! ## A231227.P8272008184669442839

`A231441(n+1)-A055641(record[A000032(n)])`
-/

namespace A231227.P8272008184669442839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (n + 1) - A055641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A231227.P8272008184669442839

/-! ## A231227.P13189544176932626541

`A231441(n+1)-A055641(A000204(n+1))`
-/

namespace A231227.P13189544176932626541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (n + 1) - A055641 (A000204 (n + 1)).toNat

end

end A231227.P13189544176932626541

/-! ## A231227.P10702160149437491442

`A231441(n+1)-A179527(A068791(n+1))`
-/

namespace A231227.P10702160149437491442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231441 (n + 1) - A179527 (A068791 (n + 1)).toNat

end

end A231227.P10702160149437491442

/-!
# A231228: Number of permutations of [n] with exactly one occurrence of one of the consecutive patterns 123, 1432, 2431, 3421.

The programs for A231228, there is no canonical definition to state claims against.
-/

/-! ## A231228.P8010586745484417744

`char[A048673(n+3)]*A231210(A016028(n+1))`
-/

namespace A231228.P8010586745484417744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231210 (A016028 (n + 1)).toNat

end

end A231228.P8010586745484417744

/-! ## A231228.P424399646306999073

`A231210(A016028(n+1))%A320349(n)`
-/

namespace A231228.P424399646306999073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231210 (A016028 (n + 1)).toNat) (A320349 n)

end

end A231228.P424399646306999073

/-! ## A231228.P14612268887405012472

`A054896(∏[(or(2, n)+n)/2])`
-/

namespace A231228.P14612268887405012472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n + n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A231228.P14612268887405012472

/-!
# A231229: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (2*k - x) / (1 - 2*k*x).

The programs for A231229, there is no canonical definition to state claims against.
-/

/-! ## A231229.P6458648878593631886

`Δ[A321695(∏[round(ϕ^n)])]`
-/

namespace A231229.P6458648878593631886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231229.P6458648878593631886

/-!
# A231232: Primes p = prime(k) such that p + 2*k is prime.

The programs for A231232, the canonical program `A231232.P3424992460991075841` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231232 has offset 1).

The definition of A231232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231232.P10382751747490754452

`p?[A364877(n+1)]`
-/

namespace A231232.P10382751747490754452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231232.P10382751747490754452

namespace A231232

/-- `p?[A364877(n+1)]` -/
def P10382751747490754452.Spec : Prop :=
  ∀ n, P10382751747490754452.a n = A231232 (n + 1)

end A231232

/-! ## A231232.P3424992460991075841

`A000040(A076297(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A231232

/-- `A000040(A076297(n+1))` -/
def P3424992460991075841.Spec : Prop :=
  ∀ n, P3424992460991075841.a n = A231232 (n + 1)

theorem P3424992460991075841.correct : P3424992460991075841.Spec := by
  intro n
  simp only [A231232, Nat.add_sub_cancel]

end A231232

/-! ## A231232.P17516343577511037135

`A008578(A076297(n+1)+1)`
-/

namespace A231232.P17516343577511037135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076297 (n + 1) + 1).toNat

end

end A231232.P17516343577511037135

namespace A231232

/-- `A008578(A076297(n+1)+1)` -/
def P17516343577511037135.Spec : Prop :=
  ∀ n, P17516343577511037135.a n = A231232 (n + 1)

end A231232

/-! ## A231232.P7884744348444828637

`A065091(A076297(n+1)-1)`
-/

namespace A231232.P7884744348444828637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A076297 (n + 1) - 1).toNat

end

end A231232.P7884744348444828637

namespace A231232

/-- `A065091(A076297(n+1)-1)` -/
def P7884744348444828637.Spec : Prop :=
  ∀ n, P7884744348444828637.a n = A231232 (n + 1)

end A231232

/-! ## A231232.P3512265478012022912

`∩[A000040(n+1), A364877(n+1)]`
-/

namespace A231232.P3512265478012022912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P3512265478012022912

namespace A231232

/-- `∩[A000040(n+1), A364877(n+1)]` -/
def P3512265478012022912.Spec : Prop :=
  ∀ n, (P3512265478012022912.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P2199655976138145242

`∩[A006005(n+1), A364877(n+1)]`
-/

namespace A231232.P2199655976138145242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P2199655976138145242

namespace A231232

/-- `∩[A006005(n+1), A364877(n+1)]` -/
def P2199655976138145242.Spec : Prop :=
  ∀ n, (P2199655976138145242.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P9219661414567346242

`∩[A008578(n+1), A364877(n+1)]`
-/

namespace A231232.P9219661414567346242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P9219661414567346242

namespace A231232

/-- `∩[A008578(n+1), A364877(n+1)]` -/
def P9219661414567346242.Spec : Prop :=
  ∀ n, (P9219661414567346242.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P3374872215775986767

`∩[A065091(n+1), A364877(n+1)]`
-/

namespace A231232.P3374872215775986767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P3374872215775986767

namespace A231232

/-- `∩[A065091(n+1), A364877(n+1)]` -/
def P3374872215775986767.Spec : Prop :=
  ∀ n, (P3374872215775986767.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P10567496927130172849

`∩[A093515(n+1), A364877(n+1)]`
-/

namespace A231232.P10567496927130172849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P10567496927130172849

namespace A231232

/-- `∩[A093515(n+1), A364877(n+1)]` -/
def P10567496927130172849.Spec : Prop :=
  ∀ n, (P10567496927130172849.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P3992354025252535085

`A135481(4*n+1)+A039915(A076297(n+1))`
-/

namespace A231232.P3992354025252535085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (4 * n + 1) + A039915 (A076297 (n + 1)).toNat

end

end A231232.P3992354025252535085

namespace A231232

/-- `A135481(4*n+1)+A039915(A076297(n+1))` -/
def P3992354025252535085.Spec : Prop :=
  ∀ n, P3992354025252535085.a n = A231232 (n + 1)

end A231232

/-! ## A231232.P11907750053969610477

`∩[A046022(n+1), A364877(n+1)]`
-/

namespace A231232.P11907750053969610477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P11907750053969610477

namespace A231232

/-- `∩[A046022(n+1), A364877(n+1)]` -/
def P11907750053969610477.Spec : Prop :=
  ∀ n, (P11907750053969610477.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P18153809399661189378

`∩[A051948(n+1), A364877(n+1)]`
-/

namespace A231232.P18153809399661189378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P18153809399661189378

namespace A231232

/-- `∩[A051948(n+1), A364877(n+1)]` -/
def P18153809399661189378.Spec : Prop :=
  ∀ n, (P18153809399661189378.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P18160678268262931272

`∩[A053813(n+1), A364877(n+1)]`
-/

namespace A231232.P18160678268262931272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P18160678268262931272

namespace A231232

/-- `∩[A053813(n+1), A364877(n+1)]` -/
def P18160678268262931272.Spec : Prop :=
  ∀ n, (P18160678268262931272.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P4855754911948431584

`∩[A062972(n+1), A364877(n+1)]`
-/

namespace A231232.P4855754911948431584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P4855754911948431584

namespace A231232

/-- `∩[A062972(n+1), A364877(n+1)]` -/
def P4855754911948431584.Spec : Prop :=
  ∀ n, (P4855754911948431584.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P4604854982671280345

`∩[A064728(n+1), A364877(n+1)]`
-/

namespace A231232.P4604854982671280345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P4604854982671280345

namespace A231232

/-- `∩[A064728(n+1), A364877(n+1)]` -/
def P4604854982671280345.Spec : Prop :=
  ∀ n, (P4604854982671280345.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P4885669558966099334

`∩[A066542(n+1), A364877(n+1)]`
-/

namespace A231232.P4885669558966099334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P4885669558966099334

namespace A231232

/-- `∩[A066542(n+1), A364877(n+1)]` -/
def P4885669558966099334.Spec : Prop :=
  ∀ n, (P4885669558966099334.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P9864335055921053934

`∩[A201879(n+1), A364877(n+1)]`
-/

namespace A231232.P9864335055921053934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P9864335055921053934

namespace A231232

/-- `∩[A201879(n+1), A364877(n+1)]` -/
def P9864335055921053934.Spec : Prop :=
  ∀ n, (P9864335055921053934.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P10895851555307989344

`∩[A053577(n+1), A364877(n+1)]`
-/

namespace A231232.P10895851555307989344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P10895851555307989344

namespace A231232

/-- `∩[A053577(n+1), A364877(n+1)]` -/
def P10895851555307989344.Spec : Prop :=
  ∀ n, (P10895851555307989344.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P3528770370324930738

`∩[A066191(n+1), A364877(n+1)]`
-/

namespace A231232.P3528770370324930738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231232.P3528770370324930738

namespace A231232

/-- `∩[A066191(n+1), A364877(n+1)]` -/
def P3528770370324930738.Spec : Prop :=
  ∀ n, (P3528770370324930738.a n : ℤ) = A231232 (n + 1)

end A231232

/-! ## A231232.P17607404574738327134

`filter[A364877(n+1), A010051(#)]`
-/

namespace A231232.P17607404574738327134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A231232.P17607404574738327134

namespace A231232

/-- `filter[A364877(n+1), A010051(#)]` -/
def P17607404574738327134.Spec : Prop :=
  ∀ n, P17607404574738327134.a n = A231232 (n + 1)

end A231232

/-!
# A231233: Triangle T(n,k) = greatest prime factor of n*k+1.

The programs for A231233, the canonical program `A231233.P547726414531914153` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231233 has offset 1).

The definition of A231233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231233.P2621062451673755330

`A006530(A075362(n+1)+1)`
-/

namespace A231233.P2621062451673755330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075362 (n + 1) + 1).toNat

end

end A231233.P2621062451673755330

namespace A231233

/-- `A006530(A075362(n+1)+1)` -/
def P2621062451673755330.Spec : Prop :=
  ∀ n, P2621062451673755330.a n = A231233 (n + 1)

end A231233

/-! ## A231233.P8693251676459274187

`A006530(A223544(n+1)+2)`
-/

namespace A231233.P8693251676459274187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A223544 (n + 1) + 2).toNat

end

end A231233.P8693251676459274187

namespace A231233

/-- `A006530(A223544(n+1)+2)` -/
def P8693251676459274187.Spec : Prop :=
  ∀ n, P8693251676459274187.a n = A231233 (n + 1)

end A231233

/-! ## A231233.P547726414531914153

`A000040(A061395(A075362(n+1)+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A231233

/-- `A000040(A061395(A075362(n+1)+1))` -/
def P547726414531914153.Spec : Prop :=
  ∀ n, P547726414531914153.a n = A231233 (n + 1)

theorem P547726414531914153.correct : P547726414531914153.Spec := by
  intro n
  simp only [A231233, Nat.add_sub_cancel]

end A231233

/-! ## A231233.P15021768862581974767

`A000040(A061395(A223544(n+1)+2))`
-/

namespace A231233.P15021768862581974767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A223544 (n + 1) + 2).toNat).toNat

end

end A231233.P15021768862581974767

namespace A231233

/-- `A000040(A061395(A223544(n+1)+2))` -/
def P15021768862581974767.Spec : Prop :=
  ∀ n, P15021768862581974767.a n = A231233 (n + 1)

theorem P15021768862581974767.correct : P15021768862581974767.Spec := by
  intro n
  simp only [A231233, Nat.add_sub_cancel, A231233.P15021768862581974767.a, A231233.P547726414531914153.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061395, A061395.P8431317036300486107.a, A075362, A075362.P10649777671025085408.a, A223544, A223544.P171478645526786133.a, A014132, A014132.P14290115325126423420.a, A029837, A029837.P1050578713049589.a, A079904, A079904.P1795222969403769225.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A076110, A076110.P10148523856418061428.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A231233

/-! ## A231233.P11092832542016563403

`A006530(A002024(n+1)*A002260(n+1)+1)`
-/

namespace A231233.P11092832542016563403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002024 (n + 1) * A002260 (n + 1) + 1).toNat

end

end A231233.P11092832542016563403

namespace A231233

/-- `A006530(A002024(n+1)*A002260(n+1)+1)` -/
def P11092832542016563403.Spec : Prop :=
  ∀ n, P11092832542016563403.a n = A231233 (n + 1)

end A231233

/-!
# A231234: Denominators related to A206771 and Lorentz gamma factor.

The programs for A231234, there is no canonical definition to state claims against.
-/

/-! ## A231234.P7128936426651459083

`gcd(4^n, A241982(n))`
-/

namespace A231234.P7128936426651459083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 ^ n : ℤ) (A241982 n)

end

end A231234.P7128936426651459083

/-! ## A231234.P1447846658271444089

`A223550(C(n, 2))/gcd(n, 2^n)`
-/

namespace A231234.P1447846658271444089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223550 (Nat.choose n 2) : ℚ) / (Nat.gcd n (2 ^ n) : ℚ)

end

end A231234.P1447846658271444089

/-! ## A231234.P5416184295256335282

`A223550(∑[a(n-2)+2])` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A231234.P5416184295256335282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231234.P5416184295256335282

/-! ## A231234.P9268834406341633520

`gcd(A000079(n)², A246050(n))`
-/

namespace A231234.P9268834406341633520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n ^ 2) (A246050 n)

end

end A231234.P9268834406341633520

/-! ## A231234.P9402991857426558521

`A223550(A253145(n)-A014601(n))`
-/

namespace A231234.P9402991857426558521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223550 (A253145 n - A014601 n).toNat

end

end A231234.P9402991857426558521

/-!
# A231235: Primes q of the form p^2 + 4 (p prime) such that r = q^2 + 4, s = r^2 + 4 and t = s^2 + 4 are all prime.

The programs for A231235, there is no canonical definition to state claims against.
-/

/-! ## A231235.P5253610068709735171

`A116888(n+1)²+4`
-/

namespace A231235.P5253610068709735171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116888 (n + 1) ^ 2 + 4

end

end A231235.P5253610068709735171

/-!
# A231236: Number of years after which it is either not possible to have a date falling on same day of the week, or the entire year can have the same calendar, in the Gregorian calendar.

The programs for A231236, there is no canonical definition to state claims against.
-/

/-! ## A231236.P11044222929748781385

`comp[a(n-2)+28]` with `a(0)=5, a(1)=7`
-/

namespace A231236.P11044222929748781385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  f1 (n - 2) + 28

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231236.P11044222929748781385

/-! ## A231236.P14546423688947468504

`comp[∑[14-a(n-2)]]` with `a(0)=5, a(1)=2, a(2)=97`
-/

namespace A231236.P14546423688947468504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 97] fun n f2 =>
  14 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231236.P14546423688947468504

/-! ## A231236.P5235257436625386044

`comp[A230997(n+1)]`
-/

namespace A231236.P5235257436625386044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231236.P5235257436625386044

/-! ## A231236.P1781554374063088503

`comp[2*A032934(n+1)+3]`
-/

namespace A231236.P1781554374063088503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032934 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231236.P1781554374063088503

/-! ## A231236.P14887725066999313232

`comp[A284633(n+1)+2-n]`
-/

namespace A231236.P14887725066999313232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + (2 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231236.P14887725066999313232

/-! ## A231236.P15171373653409335007

`lt[A190704(2*n+5)^and(1, n), 4]`
-/

namespace A231236.P15171373653409335007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190704 (2 * n + 5) ^ Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A231236.P15171373653409335007

/-! ## A231236.P7834873218851710565

`comp[record[A230997(A193592(n))]]`
-/

namespace A231236.P7834873218851710565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231236.P7834873218851710565

/-! ## A231236.P16716697404783679172

`comp[record[A230997(A302291(n))]]`
-/

namespace A231236.P16716697404783679172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230997 (A302291 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231236.P16716697404783679172

/-! ## A231236.P7909800846474682906

`record[A057354(A081598(xor(2, n)))]`
-/

namespace A231236.P7909800846474682906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A081598 (Nat.xor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231236.P7909800846474682906

/-! ## A231236.P5808071983605266115

`∪[A230998(n+1), A230996(n)]`
-/

namespace A231236.P5808071983605266115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230996 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231236.P5808071983605266115

/-!
# A231237: Number of years after which it is either not possible to have a date falling on same day of the week, or the entire year can have the same calendar, in the Julian calendar.

The programs for A231237, the canonical program `A231237.P1364955202728131026` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231237 has offset 1).

The definition of A231237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231237.P1364955202728131026

`comp[xor(2, 14*n+7)]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231237

/-- `comp[xor(2, 14*n+7)]` -/
def P1364955202728131026.Spec : Prop :=
  ∀ n, (P1364955202728131026.a n : ℤ) = A231237 (n + 1)

theorem P1364955202728131026.correct : P1364955202728131026.Spec := by
  intro n
  simp only [A231237, Nat.add_sub_cancel]

end A231237

/-! ## A231237.P2430986147107376861

`comp[Δ[xor(1, 7*n²)]]`
-/

namespace A231237.P2430986147107376861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P2430986147107376861

namespace A231237

/-- `comp[Δ[xor(1, 7*n²)]]` -/
def P2430986147107376861.Spec : Prop :=
  ∀ n, (P2430986147107376861.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P10810011834161190721

`comp[A231002(n+1)]`
-/

namespace A231237.P10810011834161190721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P10810011834161190721

namespace A231237

/-- `comp[A231002(n+1)]` -/
def P10810011834161190721.Spec : Prop :=
  ∀ n, (P10810011834161190721.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P7754921313214715729

`comp[A306285(n+1)+1+n]`
-/

namespace A231237.P7754921313214715729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P7754921313214715729

namespace A231237

/-- `comp[A306285(n+1)+1+n]` -/
def P7754921313214715729.Spec : Prop :=
  ∀ n, (P7754921313214715729.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P1632873661412070805

`comp[A301298(comp[∪[2*n, 3*n]])]`
-/

namespace A231237.P1632873661412070805
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P1632873661412070805

namespace A231237

/-- `comp[A301298(comp[∪[2*n, 3*n]])]` -/
def P1632873661412070805.Spec : Prop :=
  ∀ n, (P1632873661412070805.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P8439466198308728946

`comp[A301298(A007310(n+1))]`
-/

namespace A231237.P8439466198308728946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 (A007310 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P8439466198308728946

namespace A231237

/-- `comp[A301298(A007310(n+1))]` -/
def P8439466198308728946.Spec : Prop :=
  ∀ n, (P8439466198308728946.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P380964914014259352

`∪[A231003(n+1), A231001(n)]`
-/

namespace A231237.P380964914014259352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231237.P380964914014259352

namespace A231237

/-- `∪[A231003(n+1), A231001(n)]` -/
def P380964914014259352.Spec : Prop :=
  ∀ n, (P380964914014259352.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P13007428509511162876

`∪[A047299(n+1), A231003(n+1)]`
-/

namespace A231237.P13007428509511162876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231237.P13007428509511162876

namespace A231237

/-- `∪[A047299(n+1), A231003(n+1)]` -/
def P13007428509511162876.Spec : Prop :=
  ∀ n, (P13007428509511162876.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P326489977712690037

`comp[A113803(n+1)+A113802(n+1)]`
-/

namespace A231237.P326489977712690037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113803 (n + 1) + A113802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P326489977712690037

namespace A231237

/-- `comp[A113803(n+1)+A113802(n+1)]` -/
def P326489977712690037.Spec : Prop :=
  ∀ n, (P326489977712690037.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P11664047034600991340

`comp[A113804(n+1)+A113801(n+1)]`
-/

namespace A231237.P11664047034600991340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113804 (n + 1) + A113801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P11664047034600991340

namespace A231237

/-- `comp[A113804(n+1)+A113801(n+1)]` -/
def P11664047034600991340.Spec : Prop :=
  ∀ n, (P11664047034600991340.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P15578101925441636615

`comp[A241520(n+1)-A241406(n+1)]`
-/

namespace A231237.P15578101925441636615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241520 (n + 1) - A241406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P15578101925441636615

namespace A231237

/-- `comp[A241520(n+1)-A241406(n+1)]` -/
def P15578101925441636615.Spec : Prop :=
  ∀ n, (P15578101925441636615.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P14186500265109910098

`comp[A113806(3*n+2)-A113803(n+1)]`
-/

namespace A231237.P14186500265109910098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113806 (3 * n + 2) - A113803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231237.P14186500265109910098

namespace A231237

/-- `comp[A113806(3*n+2)-A113803(n+1)]` -/
def P14186500265109910098.Spec : Prop :=
  ∀ n, (P14186500265109910098.a n : ℤ) = A231237 (n + 1)

end A231237

/-! ## A231237.P18282622295527754382

`record[A057354(A238470(n)+A000265(n+1))]`
-/

namespace A231237.P18282622295527754382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A238470 n + A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231237.P18282622295527754382

namespace A231237

/-- `record[A057354(A238470(n)+A000265(n+1))]` -/
def P18282622295527754382.Spec : Prop :=
  ∀ n, P18282622295527754382.a n = A231237 (n + 1)

end A231237

/-!
# A231238: Number of months after which either it is not possible to have a date to fall on the same day of the week, or that it is possible to have a date falling on the same day of the week and the two months have the same number of days, in the Gregorian calendar.

The programs for A231238, there is no canonical definition to state claims against.
-/

/-! ## A231238.P2174335865924698880

`comp[A231007(n+1)]`
-/

namespace A231238.P2174335865924698880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231238.P2174335865924698880

/-! ## A231238.P7955409729777217910

`comp[record[A231007(A126759(n))]]`
-/

namespace A231238.P7955409729777217910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231238.P7955409729777217910

/-! ## A231238.P1624877694223697837

`comp[record[A231007(A193592(n))]]`
-/

namespace A231238.P1624877694223697837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231238.P1624877694223697837

/-! ## A231238.P8138345531581449836

`comp[record[A231007(A286549(n))]]`
-/

namespace A231238.P8138345531581449836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (A286549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231238.P8138345531581449836

/-! ## A231238.P10179238906346272064

`comp[record[A231007(A328397(n))]]`
-/

namespace A231238.P10179238906346272064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231007 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231238.P10179238906346272064

/-! ## A231238.P11614278280959387777

`∪[comp[A231005(n)], A231006(n)]`
-/

namespace A231238.P11614278280959387777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A231238.P11614278280959387777

/-! ## A231238.P11358077431921181078

`∪[A231008(n+1), A231006(n)]`
-/

namespace A231238.P11358077431921181078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231238.P11358077431921181078

/-! ## A231238.P8432685928549043609

`comp[∩[A231009(n+1), A231005(n)]]`
-/

namespace A231238.P8432685928549043609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231238.P8432685928549043609

/-!
# A231239: Number of months after which either it is not possible to have a date to fall on the same day of the week, or that it is possible to have a date falling on the same day of the week and the two months have the same number of days, in the Julian calendar.

The programs for A231239, there is no canonical definition to state claims against.
-/

/-! ## A231239.P16281315084674271651

`comp[A231012(n+1)]`
-/

namespace A231239.P16281315084674271651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231239.P16281315084674271651

/-! ## A231239.P16300882541837637066

`comp[record[A231012(A067595(n))]]`
-/

namespace A231239.P16300882541837637066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (A067595 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231239.P16300882541837637066

/-! ## A231239.P17305812973333986934

`comp[record[A231012(A126759(n))]]`
-/

namespace A231239.P17305812973333986934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231239.P17305812973333986934

/-! ## A231239.P9718250000610815111

`comp[record[A231012(A193592(n))]]`
-/

namespace A231239.P9718250000610815111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231239.P9718250000610815111

/-! ## A231239.P9090909411161935529

`comp[record[A231012(A286549(n))]]`
-/

namespace A231239.P9090909411161935529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (A286549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231239.P9090909411161935529

/-! ## A231239.P8230095680773523002

`comp[record[A231012(A328397(n))]]`
-/

namespace A231239.P8230095680773523002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231012 (A328397 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231239.P8230095680773523002

/-! ## A231239.P8970001714955587585

`∪[comp[A231010(n)], A231011(n)]`
-/

namespace A231239.P8970001714955587585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A231239.P8970001714955587585

/-! ## A231239.P6682652927553080862

`∪[A231013(n+1), A231011(n)]`
-/

namespace A231239.P6682652927553080862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231011 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231239.P6682652927553080862

/-!
# A231240: Number of n X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231240, there is no canonical definition to state claims against.
-/

/-! ## A231240.P17564619205633368420

`A231246(∑[4*n]+1)`
-/

namespace A231240.P17564619205633368420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231240.P17564619205633368420

/-! ## A231240.P6995548856807144606

`lcm(2, A231246(A001844(n)))`
-/

namespace A231240.P6995548856807144606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231246 (A001844 n).toNat)

end

end A231240.P6995548856807144606

/-! ## A231240.P411860213626768177

`A047996(n)*A231246(A001844(n))`
-/

namespace A231240.P411860213626768177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A231246 (A001844 n).toNat

end

end A231240.P411860213626768177

/-! ## A231240.P11417826450695537814

`A061906(n)*A231246(A001844(n))`
-/

namespace A231240.P11417826450695537814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n * A231246 (A001844 n).toNat

end

end A231240.P11417826450695537814

/-! ## A231240.P17491267891787434973

`A138902(n)*A231246(A001844(n))`
-/

namespace A231240.P17491267891787434973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n * A231246 (A001844 n).toNat

end

end A231240.P17491267891787434973

/-!
# A231241: Number of n X 3 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231241, there is no canonical definition to state claims against.
-/

/-! ## A231241.P16085932547036192990

`A231246(∑[n+3]+1)`
-/

namespace A231241.P16085932547036192990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231241.P16085932547036192990

/-! ## A231241.P6875341764307113035

`record[A231246(A198464(n+1))]`
-/

namespace A231241.P6875341764307113035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231241.P6875341764307113035

/-! ## A231241.P10144513321137956091

`record[A231246(A347633(n+1))]`
-/

namespace A231241.P10144513321137956091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231241.P10144513321137956091

/-! ## A231241.P15892088989868167673

`record[A231246(Δ[A054974(n+2)])]`
-/

namespace A231241.P15892088989868167673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231241.P15892088989868167673

/-! ## A231241.P5192966651216058834

`record[char[A141214(n)]*A231246(n+1)]`
-/

namespace A231241.P5192966651216058834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231241.P5192966651216058834

/-!
# A231242: Number of n X 4 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231242, there is no canonical definition to state claims against.
-/

/-! ## A231242.P7597127565771486758

`A231246(A141214(n+1))`
-/

namespace A231242.P7597127565771486758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A141214 (n + 1)).toNat

end

end A231242.P7597127565771486758

/-! ## A231242.P9087792920613672614

`A231246(A155212(n)+5)`
-/

namespace A231242.P9087792920613672614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A155212 n + 5).toNat

end

end A231242.P9087792920613672614

/-! ## A231242.P7900074729109972489

`A231246(A056000(n)+7)`
-/

namespace A231242.P7900074729109972489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A056000 n + 7).toNat

end

end A231242.P7900074729109972489

/-! ## A231242.P14871475666270217210

`A231246(eq[2, A152157(n)])`
-/

namespace A231242.P14871475666270217210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231242.P14871475666270217210

/-! ## A231242.P13315259347507750622

`A231246(eq[3, A193592(n)])`
-/

namespace A231242.P13315259347507750622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231242.P13315259347507750622

/-!
# A231243: Number of nX5 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231243, there is no canonical definition to state claims against.
-/

/-! ## A231243.P5716459352824165513

`A231246(Δ[A264443(n)])`
-/

namespace A231243.P5716459352824165513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (f1 (n + 1) - f1 n).toNat

end

end A231243.P5716459352824165513

/-! ## A231243.P15567828712575249924

`A231246(A056115(n)+11)`
-/

namespace A231243.P15567828712575249924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A056115 n + 11).toNat

end

end A231243.P15567828712575249924

/-! ## A231243.P7097294372554323231

`A231246(eq[3, A152157(n)])`
-/

namespace A231243.P7097294372554323231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231243.P7097294372554323231

/-! ## A231243.P1371655802161061785

`A231246(eq[4, A193592(n)])`
-/

namespace A231243.P1371655802161061785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231243.P1371655802161061785

/-! ## A231243.P18221277399818007121

`A231246(Δ[A023545(n+1)])`
-/

namespace A231243.P18221277399818007121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (f1 (n + 1) - f1 n).toNat

end

end A231243.P18221277399818007121

/-!
# A231244: Number of nX6 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231244, there is no canonical definition to state claims against.
-/

/-! ## A231244.P9171470167149386632

`A231246(eq[3, A219347(n)])`
-/

namespace A231244.P9171470167149386632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231244.P9171470167149386632

/-! ## A231244.P5412717143998097913

`A231246(eq[5, A193592(n)])`
-/

namespace A231244.P5412717143998097913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231244.P5412717143998097913

/-! ## A231244.P18067271766478411587

`A231246(eq[6, A200370(n+1)])`
-/

namespace A231244.P18067271766478411587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231244.P18067271766478411587

/-! ## A231244.P16041649304082553155

`A231246(eq[8, A185782(n+1)])`
-/

namespace A231244.P16041649304082553155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231244.P16041649304082553155

/-! ## A231244.P318926460449799465

`A231246(eq[16, A057728(n+1)])`
-/

namespace A231244.P318926460449799465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231244.P318926460449799465

/-!
# A231245: Number of nX7 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231245, there is no canonical definition to state claims against.
-/

/-! ## A231245.P6551942482871323714

`A231246(eq[4, A219347(n)])`
-/

namespace A231245.P6551942482871323714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231245.P6551942482871323714

/-! ## A231245.P9457939047281200512

`A231246(eq[6, A193592(n)])`
-/

namespace A231245.P9457939047281200512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231245.P9457939047281200512

/-! ## A231245.P16364075342577580828

`A231246(eq[7, A152157(n)])`
-/

namespace A231245.P16364075342577580828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231245.P16364075342577580828

/-! ## A231245.P1980938970367815267

`A231246(eq[7, A200370(n+1)])`
-/

namespace A231245.P1980938970367815267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231245.P1980938970367815267

/-! ## A231245.P5178795651607488506

`A231246(eq[10, A185782(n+1)])`
-/

namespace A231245.P5178795651607488506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231245.P5178795651607488506

/-!
# A231246: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231246, there is no canonical definition to state claims against.
-/

/-! ## A231246.P9091189978225810152

`A105272(A000710(n))*A298187(n+1)`
-/

namespace A231246.P9091189978225810152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A000710 n).toNat * A298187 (n + 1)

end

end A231246.P9091189978225810152

/-! ## A231246.P5817836040763863731

`A287222(n)%A155826(n)`
-/

namespace A231246.P5817836040763863731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287222 n) (A155826 n)

end

end A231246.P5817836040763863731

/-! ## A231246.P6120296363300171461

`A325182(A055080(n+1)²)`
-/

namespace A231246.P6120296363300171461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325182 (A055080 (n + 1) ^ 2).toNat

end

end A231246.P6120296363300171461

/-! ## A231246.P13800773878680623494

`A037475(A013627(n))%A118185(n)`
-/

namespace A231246.P13800773878680623494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037475 (A013627 n).toNat) (A118185 n)

end

end A231246.P13800773878680623494

/-! ## A231246.P772147028416134133

`A028557(A283877(n))%A157211(n)`
-/

namespace A231246.P772147028416134133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028557 (A283877 n).toNat) (A157211 n)

end

end A231246.P772147028416134133

/-!
# A231247: Number of 2 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231247, the canonical program `A231247.P10902194906644986801` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231247 has offset 1).

The definition of A231247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231247.P10902194906644986801

`4*a(n-1)-3*a(n-2)+8*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=14, a(3)=44, a(4)=146`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231247

/-- `4*a(n-1)-3*a(n-2)+8*a(n-3)+4*a(n-4)` -/
def P10902194906644986801.Spec : Prop :=
  ∀ n, P10902194906644986801.a n = A231247 (n + 1)

theorem P10902194906644986801.correct : P10902194906644986801.Spec := by
  intro n
  simp only [A231247, Nat.add_sub_cancel]

end A231247

/-! ## A231247.P6538325672542940099

`A231246(∑[n+1]+2)`
-/

namespace A231247.P6538325672542940099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231247.P6538325672542940099

namespace A231247

/-- `A231246(∑[n+1]+2)` -/
def P6538325672542940099.Spec : Prop :=
  ∀ n, P6538325672542940099.a n = A231247 (n + 1)

end A231247

/-! ## A231247.P6535288263010110198

`record[A231246(A070264(n+1)+1)]`
-/

namespace A231247.P6535288263010110198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A070264 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231247.P6535288263010110198

namespace A231247

/-- `record[A231246(A070264(n+1)+1)]` -/
def P6535288263010110198.Spec : Prop :=
  ∀ n, P6535288263010110198.a n = A231247 (n + 1)

end A231247

/-! ## A231247.P16207439407812601264

`record[A231246(n+1)%A094527(n)]`
-/

namespace A231247.P16207439407812601264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231246 (n + 1)) (A094527 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231247.P16207439407812601264

namespace A231247

/-- `record[A231246(n+1)%A094527(n)]` -/
def P16207439407812601264.Spec : Prop :=
  ∀ n, P16207439407812601264.a n = A231247 (n + 1)

end A231247

/-! ## A231247.P1784762613685948888

`record[A231246(Δ[A054974(n+2)]-n)]`
-/

namespace A231247.P1784762613685948888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231247.P1784762613685948888

namespace A231247

/-- `record[A231246(Δ[A054974(n+2)]-n)]` -/
def P1784762613685948888.Spec : Prop :=
  ∀ n, P1784762613685948888.a n = A231247 (n + 1)

end A231247

/-!
# A231248: Number of 3 X n 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231248, there is no canonical definition to state claims against.
-/

/-! ## A231248.P8458521978301145344

`A231246(∑[n+2]+4)`
-/

namespace A231248.P8458521978301145344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231248.P8458521978301145344

/-! ## A231248.P12382113222354671932

`lcm(2, A231246(A167614(n+1)))`
-/

namespace A231248.P12382113222354671932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231246 (A167614 (n + 1)).toNat)

end

end A231248.P12382113222354671932

/-! ## A231248.P14596075652625053615

`record[A231246(A070264(2*n+1)+2)]`
-/

namespace A231248.P14596075652625053615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A070264 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231248.P14596075652625053615

/-! ## A231248.P10337961723209814729

`A231246(A167614(n+1))+A011731(n)`
-/

namespace A231248.P10337961723209814729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A167614 (n + 1)).toNat + A011731 n

end

end A231248.P10337961723209814729

/-! ## A231248.P5273452725387382519

`A231246(A167614(n+1))+A185284(n)`
-/

namespace A231248.P5273452725387382519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A167614 (n + 1)).toNat + A185284 n

end

end A231248.P5273452725387382519

/-!
# A231249: Number of 4Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231249, there is no canonical definition to state claims against.
-/

/-! ## A231249.P9061383831694020693

`A231246(A141214(n)+7)`
-/

namespace A231249.P9061383831694020693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A141214 n + 7).toNat

end

end A231249.P9061383831694020693

/-! ## A231249.P11592862532908925960

`A231246(A052905(n)+9)`
-/

namespace A231249.P11592862532908925960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A052905 n + 9).toNat

end

end A231249.P11592862532908925960

/-! ## A231249.P14838595113869342485

`A231246(A055999(n)+10)`
-/

namespace A231249.P14838595113869342485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A055999 n + 10).toNat

end

end A231249.P14838595113869342485

/-! ## A231249.P3069903186546652851

`A231246(A167614(n+2)+1)`
-/

namespace A231249.P3069903186546652851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A167614 (n + 2) + 1).toNat

end

end A231249.P3069903186546652851

/-! ## A231249.P13679443582319705893

`A231246(A134227(n+1)+10)`
-/

namespace A231249.P13679443582319705893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A134227 (n + 1) + 10).toNat

end

end A231249.P13679443582319705893

/-!
# A231250: Number of 5Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231250, there is no canonical definition to state claims against.
-/

/-! ## A231250.P16001905006091286125

`A231246(A167499(n+3))`
-/

namespace A231250.P16001905006091286125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A167499 (n + 3)).toNat

end

end A231250.P16001905006091286125

/-! ## A231250.P1160410582002616882

`A231246(A155212(n)+13)`
-/

namespace A231250.P1160410582002616882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A155212 n + 13).toNat

end

end A231250.P1160410582002616882

/-! ## A231250.P9593960500020994371

`A231246(A056000(n)+15)`
-/

namespace A231250.P9593960500020994371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A056000 n + 15).toNat

end

end A231250.P9593960500020994371

/-! ## A231250.P8992533243676569407

`A231246(eq[7, A066657(n)])`
-/

namespace A231250.P8992533243676569407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231250.P8992533243676569407

/-! ## A231250.P16590806880644611655

`A231246(A046691(n+2)+9)`
-/

namespace A231250.P16590806880644611655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A046691 (n + 2) + 9).toNat

end

end A231250.P16590806880644611655

/-!
# A231251: Number of 6Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231251, there is no canonical definition to state claims against.
-/

/-! ## A231251.P12200575575147962649

`A231246(eq[6, A256910(n)])`
-/

namespace A231251.P12200575575147962649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231251.P12200575575147962649

/-! ## A231251.P11972152140116585295

`A231246(A000217(n+5)+6)`
-/

namespace A231251.P11972152140116585295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A000217 (n + 5) + 6).toNat

end

end A231251.P11972152140116585295

/-! ## A231251.P11981631241699531534

`A231246(A161680(n+6)+6)`
-/

namespace A231251.P11981631241699531534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A161680 (n + 6) + 6).toNat

end

end A231251.P11981631241699531534

/-! ## A231251.P12151120533046634918

`A231246(eq[6, A130270(n+1)])`
-/

namespace A231251.P12151120533046634918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231251.P12151120533046634918

/-! ## A231251.P6419203103459231871

`A231246(eq[7, A131818(n+1)])`
-/

namespace A231251.P6419203103459231871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231251.P6419203103459231871

/-!
# A231252: Number of 7Xn 0..3 arrays x(i,j) with each element horizontally, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231252, there is no canonical definition to state claims against.
-/

/-! ## A231252.P2337063669735543998

`A231246(A056119(n)+28)`
-/

namespace A231252.P2337063669735543998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A056119 n + 28).toNat

end

end A231252.P2337063669735543998

/-! ## A231252.P7212113848455035727

`A231246(eq[11, A066657(n)])`
-/

namespace A231252.P7212113848455035727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231252.P7212113848455035727

/-! ## A231252.P4868865047664482223

`A231246(A167499(n+5)+2)`
-/

namespace A231252.P4868865047664482223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A167499 (n + 5) + 2).toNat

end

end A231252.P4868865047664482223

/-! ## A231252.P1465909233865328996

`A231246(A152947(n+8)+6)`
-/

namespace A231252.P1465909233865328996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (A152947 (n + 8) + 6).toNat

end

end A231252.P1465909233865328996

/-! ## A231252.P8886306321537027172

`A231246(eq[8, A131818(n+1)])`
-/

namespace A231252.P8886306321537027172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231246 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231252.P8886306321537027172

/-!
# A231254: Odious primes p (A027697) such that p^2 and p^3 are evil (A027699).

The programs for A231254, there is no canonical definition to state claims against.
-/

/-! ## A231254.P15008724239231082481

`A216509(A105709(2*n)-A348994(n+1))`
-/

namespace A231254.P15008724239231082481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (A105709 (2 * n) - A348994 (n + 1)).toNat

end

end A231254.P15008724239231082481

/-! ## A231254.P6257938246280057917

`A216509(A105709(2*n)-A003961(n+1)/A322361(n+1))`
-/

namespace A231254.P6257938246280057917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (SequenceMachineLib.roundAway ((A105709 (2 * n) : ℚ) - (A003961 (n + 1) : ℚ) / (A322361 (n + 1) : ℚ))).toNat

end

end A231254.P6257938246280057917

/-!
# A231256: Number of (n+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231256, there is no canonical definition to state claims against.
-/

/-! ## A231256.P5012067709608794123

`A231263(∑[4*n]+1)`
-/

namespace A231256.P5012067709608794123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231256.P5012067709608794123

/-! ## A231256.P4982589524855867820

`record[A003982(n)*A231263(n+1)]`
-/

namespace A231256.P4982589524855867820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231256.P4982589524855867820

/-! ## A231256.P3878726439055678505

`record[gcd(A114327(n), A231263(n+1))]`
-/

namespace A231256.P3878726439055678505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231263 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231256.P3878726439055678505

/-! ## A231256.P13979832876736928484

`A231263(A001844(n))+A108695(n)`
-/

namespace A231256.P13979832876736928484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A001844 n).toNat + A108695 n

end

end A231256.P13979832876736928484

/-! ## A231256.P4586409257918868813

`or(A063524(n), A231263(A001844(n)))`
-/

namespace A231256.P4586409257918868813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A231263 (A001844 n).toNat)

end

end A231256.P4586409257918868813

/-!
# A231257: Number of (n+1) X (2+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231257, the canonical program `A231257.P5307910656069559720` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231257 has offset 1).

The definition of A231257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231257.P5307910656069559720

`10*a(n-1)-29*a(n-2)+36*a(n-3)-16*a(n-4)` with `a(0)=3, a(1)=15, a(2)=89, a(3)=547`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231257

/-- `10*a(n-1)-29*a(n-2)+36*a(n-3)-16*a(n-4)` -/
def P5307910656069559720.Spec : Prop :=
  ∀ n, P5307910656069559720.a n = A231257 (n + 1)

theorem P5307910656069559720.correct : P5307910656069559720.Spec := by
  intro n
  simp only [A231257, Nat.add_sub_cancel]

end A231257

/-! ## A231257.P10437784932564711426

`A231263(∑[n+2])`
-/

namespace A231257.P10437784932564711426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231257.P10437784932564711426

namespace A231257

/-- `A231263(∑[n+2])` -/
def P10437784932564711426.Spec : Prop :=
  ∀ n, P10437784932564711426.a n = A231257 (n + 1)

end A231257

/-! ## A231257.P13924246635558102699

`record[A231263(A198455(n+1))]`
-/

namespace A231257.P13924246635558102699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231257.P13924246635558102699

namespace A231257

/-- `record[A231263(A198455(n+1))]` -/
def P13924246635558102699.Spec : Prop :=
  ∀ n, P13924246635558102699.a n = A231257 (n + 1)

end A231257

/-! ## A231257.P9507521504060426307

`or(1, A231263(A000096(n+1)))`
-/

namespace A231257.P9507521504060426307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A231263 (A000096 (n + 1)).toNat)

end

end A231257.P9507521504060426307

namespace A231257

/-- `or(1, A231263(A000096(n+1)))` -/
def P9507521504060426307.Spec : Prop :=
  ∀ n, P9507521504060426307.a n = A231257 (n + 1)

end A231257

/-! ## A231257.P10766387549310808968

`A231263(A000096(n+1))%A016191(n+1)`
-/

namespace A231257.P10766387549310808968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231263 (A000096 (n + 1)).toNat) (A016191 (n + 1))

end

end A231257.P10766387549310808968

namespace A231257

/-- `A231263(A000096(n+1))%A016191(n+1)` -/
def P10766387549310808968.Spec : Prop :=
  ∀ n, P10766387549310808968.a n = A231257 (n + 1)

end A231257

/-!
# A231258: Number of (n+1) X (3+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231258, there is no canonical definition to state claims against.
-/

/-! ## A231258.P12077451260883738410

`A231263(∑[n+3]+1)`
-/

namespace A231258.P12077451260883738410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231258.P12077451260883738410

/-! ## A231258.P12833037225045453688

`A054242(A054242(n))*A231263(A034856(n+2))`
-/

namespace A231258.P12833037225045453688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (A054242 n).toNat * A231263 (A034856 (n + 2)).toNat

end

end A231258.P12833037225045453688

/-! ## A231258.P16652945809694309341

`A231263(A034856(n+2))*A293053(A246935(n))`
-/

namespace A231258.P16652945809694309341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A034856 (n + 2)).toNat * A293053 (A246935 n).toNat

end

end A231258.P16652945809694309341

/-! ## A231258.P9354122595682069332

`A025581(A034856(n+1))*A231263(A034856(n+2))`
-/

namespace A231258.P9354122595682069332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A034856 (n + 1)).toNat * A231263 (A034856 (n + 2)).toNat

end

end A231258.P9354122595682069332

/-!
# A231259: Number of (n+1)X(4+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231259, there is no canonical definition to state claims against.
-/

/-! ## A231259.P1426094655116706608

`A231263(A141214(n+1))`
-/

namespace A231259.P1426094655116706608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A141214 (n + 1)).toNat

end

end A231259.P1426094655116706608

/-! ## A231259.P5980268054622965554

`A231263(A155212(n)+5)`
-/

namespace A231259.P5980268054622965554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A155212 n + 5).toNat

end

end A231259.P5980268054622965554

/-! ## A231259.P524360246319626660

`A231263(A056000(n)+7)`
-/

namespace A231259.P524360246319626660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A056000 n + 7).toNat

end

end A231259.P524360246319626660

/-! ## A231259.P9904800655009425619

`A231263(eq[3, A193592(n)])`
-/

namespace A231259.P9904800655009425619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231259.P9904800655009425619

/-! ## A231259.P15780259634494334985

`A231263(Δ[A034857(n+1)])`
-/

namespace A231259.P15780259634494334985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (f1 (n + 1) - f1 n).toNat

end

end A231259.P15780259634494334985

/-!
# A231260: Number of (n+1)X(5+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231260, there is no canonical definition to state claims against.
-/

/-! ## A231260.P5546027093840806835

`A231263(eq[2, A092921(n)])`
-/

namespace A231260.P5546027093840806835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231260.P5546027093840806835

/-! ## A231260.P9107823312299086105

`A231263(eq[4, A193592(n)])`
-/

namespace A231260.P9107823312299086105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231260.P9107823312299086105

/-! ## A231260.P1967847552650497614

`A231263(Δ[A023545(n+1)])`
-/

namespace A231260.P1967847552650497614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (f1 (n + 1) - f1 n).toNat

end

end A231260.P1967847552650497614

/-! ## A231260.P18323866884457704447

`A231263(eq[8, A057728(n+1)])`
-/

namespace A231260.P18323866884457704447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231260.P18323866884457704447

/-! ## A231260.P1598871557551873463

`A231263(Δ[A034857(n+2)]-1)`
-/

namespace A231260.P1598871557551873463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (f1 (n + 1) - f1 n - 1).toNat

end

end A231260.P1598871557551873463

/-!
# A231261: Number of (n+1)X(6+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231261, there is no canonical definition to state claims against.
-/

/-! ## A231261.P15024483048354651624

`A231263(A052905(n+3))`
-/

namespace A231261.P15024483048354651624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A052905 (n + 3)).toNat

end

end A231261.P15024483048354651624

/-! ## A231261.P6954947569856946216

`A231263(eq[3, A219347(n)])`
-/

namespace A231261.P6954947569856946216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231261.P6954947569856946216

/-! ## A231261.P5834378475687878902

`A231263(eq[5, A193592(n)])`
-/

namespace A231261.P5834378475687878902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231261.P5834378475687878902

/-! ## A231261.P16903358675131801804

`A231263(eq[8, A185782(n+1)])`
-/

namespace A231261.P16903358675131801804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231261.P16903358675131801804

/-! ## A231261.P10524252903861692358

`A231263(eq[16, A057728(n+1)])`
-/

namespace A231261.P10524252903861692358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231261.P10524252903861692358

/-!
# A231262: Number of (n+1)X(7+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231262, there is no canonical definition to state claims against.
-/

/-! ## A231262.P7039196392360042185

`A231263(A055999(n+4))`
-/

namespace A231262.P7039196392360042185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A055999 (n + 4)).toNat

end

end A231262.P7039196392360042185

/-! ## A231262.P9259241361961180286

`A231263(eq[4, A219347(n)])`
-/

namespace A231262.P9259241361961180286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231262.P9259241361961180286

/-! ## A231262.P7898789969819839949

`A231263(eq[6, A193592(n)])`
-/

namespace A231262.P7898789969819839949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231262.P7898789969819839949

/-! ## A231262.P17903815898647990571

`A231263(eq[7, A200370(n+1)])`
-/

namespace A231262.P17903815898647990571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231262.P17903815898647990571

/-! ## A231262.P2353017757028599930

`A231263(eq[10, A185782(n+1)])`
-/

namespace A231262.P2353017757028599930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231262.P2353017757028599930

/-!
# A231264: Number of (2+1) X (n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231264, there is no canonical definition to state claims against.
-/

/-! ## A231264.P7325096760904240214

`A231263(∑[n+1]+2)`
-/

namespace A231264.P7325096760904240214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231264.P7325096760904240214

/-! ## A231264.P10496111237701377431

`record[A023531(n)*A231263(n+3)]`
-/

namespace A231264.P10496111237701377431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A231263 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231264.P10496111237701377431

/-! ## A231264.P15192377938344401762

`record[gcd(A211399(n+1), A231263(n+3))]`
-/

namespace A231264.P15192377938344401762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211399 (n + 1)) (A231263 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231264.P15192377938344401762

/-!
# A231265: Number of (3+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231265, there is no canonical definition to state claims against.
-/

/-! ## A231265.P15212520491614931671

`A231263(∑[n+2]+4)`
-/

namespace A231265.P15212520491614931671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231265.P15212520491614931671

/-! ## A231265.P17909638298348238811

`A231263(A167614(n+1))%A016976(n)`
-/

namespace A231265.P17909638298348238811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231263 (A167614 (n + 1)).toNat) (A016976 n)

end

end A231265.P17909638298348238811

/-! ## A231265.P3186499576329468469

`A231263(A167614(n+1))+A000038(n+1)`
-/

namespace A231265.P3186499576329468469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A231265.P3186499576329468469

/-! ## A231265.P4312183211476812743

`A231263(A167614(n+1))+A034561(n+1)`
-/

namespace A231265.P4312183211476812743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A167614 (n + 1)).toNat + A034561 (n + 1)

end

end A231265.P4312183211476812743

/-!
# A231266: Number of (4+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231266, there is no canonical definition to state claims against.
-/

/-! ## A231266.P11199474412241976819

`A231263(A141214(n)+7)`
-/

namespace A231266.P11199474412241976819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A141214 n + 7).toNat

end

end A231266.P11199474412241976819

/-! ## A231266.P3338342322074778318

`A231263(A052905(n)+9)`
-/

namespace A231266.P3338342322074778318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A052905 n + 9).toNat

end

end A231266.P3338342322074778318

/-! ## A231266.P5892266886988624170

`A231263(A055999(n)+10)`
-/

namespace A231266.P5892266886988624170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A055999 n + 10).toNat

end

end A231266.P5892266886988624170

/-! ## A231266.P1487042360088527597

`A231263(A167614(n+2)+1)`
-/

namespace A231266.P1487042360088527597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A167614 (n + 2) + 1).toNat

end

end A231266.P1487042360088527597

/-! ## A231266.P18077648507034955432

`A231263(A166136(n+2)-2)`
-/

namespace A231266.P18077648507034955432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A166136 (n + 2) - 2).toNat

end

end A231266.P18077648507034955432

/-!
# A231267: Number of (5+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231267, there is no canonical definition to state claims against.
-/

/-! ## A231267.P14724645004474215436

`A231263(A167499(n+3))`
-/

namespace A231267.P14724645004474215436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A167499 (n + 3)).toNat

end

end A231267.P14724645004474215436

/-! ## A231267.P12751392419624409982

`A231263(A155212(n)+13)`
-/

namespace A231267.P12751392419624409982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A155212 n + 13).toNat

end

end A231267.P12751392419624409982

/-! ## A231267.P13345327233764665043

`A231263(A056000(n)+15)`
-/

namespace A231267.P13345327233764665043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A056000 n + 15).toNat

end

end A231267.P13345327233764665043

/-! ## A231267.P4012664125500199827

`A231263(eq[4, A002262(n)]+1)`
-/

namespace A231267.P4012664125500199827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231267.P4012664125500199827

/-! ## A231267.P17297528059951602460

`A231263(eq[6, A131818(n+1)])`
-/

namespace A231267.P17297528059951602460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231267.P17297528059951602460

/-!
# A231268: Number of (6+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231268, there is no canonical definition to state claims against.
-/

/-! ## A231268.P891376822069546143

`A231263(A166136(n+4))`
-/

namespace A231268.P891376822069546143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A166136 (n + 4)).toNat

end

end A231268.P891376822069546143

/-! ## A231268.P336268539360584956

`A231263(A056115(n)+21)`
-/

namespace A231268.P336268539360584956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A056115 n + 21).toNat

end

end A231268.P336268539360584956

/-! ## A231268.P5569145667788737117

`A231263(A167499(n+4)+1)`
-/

namespace A231268.P5569145667788737117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A167499 (n + 4) + 1).toNat

end

end A231268.P5569145667788737117

/-! ## A231268.P4305815964099446801

`A231263(A000217(n+5)+6)`
-/

namespace A231268.P4305815964099446801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A000217 (n + 5) + 6).toNat

end

end A231268.P4305815964099446801

/-! ## A231268.P16584254253977448019

`A231263(eq[7, A131818(n+1)])`
-/

namespace A231268.P16584254253977448019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231268.P16584254253977448019

/-!
# A231269: Number of (7+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231269, there is no canonical definition to state claims against.
-/

/-! ## A231269.P11109283972369279645

`A231263(eq[11, A066657(n)])`
-/

namespace A231269.P11109283972369279645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231269.P11109283972369279645

/-! ## A231269.P10964740047190168777

`A231263(A133263(n+6)+5)`
-/

namespace A231269.P10964740047190168777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A133263 (n + 6) + 5).toNat

end

end A231269.P10964740047190168777

/-! ## A231269.P16825532882042105982

`A231263(A034856(n+5)+9)`
-/

namespace A231269.P16825532882042105982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A034856 (n + 5) + 9).toNat

end

end A231269.P16825532882042105982

/-! ## A231269.P3856813994253067555

`A231263(eq[8, A131818(n+1)])`
-/

namespace A231269.P3856813994253067555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231269.P3856813994253067555

/-! ## A231269.P13392753930500259213

`A231263(A000124(n+8)-8-Δ[n²])`
-/

namespace A231269.P13392753930500259213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231263 (A000124 (n + 8) - 8 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A231269.P13392753930500259213

/-!
# A231271: Numbers k such that k and k+d are both odious (A000069) or both evil (A001969) for every divisor d of k.

The programs for A231271, there is no canonical definition to state claims against.
-/

/-! ## A231271.P13294227800104532593

`eq[A058933(A225244(n)), A191254(n+1)]`
-/

namespace A231271.P13294227800104532593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A225244 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231271.P13294227800104532593

/-! ## A231271.P9901465273610602648

`lt[A197364(A272377(n)), A105931(n+1)]`
-/

namespace A231271.P9901465273610602648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197364 (A272377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231271.P9901465273610602648

/-! ## A231271.P5916585054504910397

`eq[A007318(A018783(n)), A036580(n)]`
-/

namespace A231271.P5916585054504910397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231271.P5916585054504910397

/-! ## A231271.P2305341624186130676

`eq[A010054(A018783(n)), A036584(n)]`
-/

namespace A231271.P2305341624186130676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231271.P2305341624186130676

/-! ## A231271.P6362765305875401647

`lt[A007318(A018783(n)), A036581(n)]`
-/

namespace A231271.P6362765305875401647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A018783 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231271.P6362765305875401647

/-!
# A231272: Numbers m with unique solution to m = +-1^2+-2^2+-3^2+-4^2+-...+-k^2 with minimal k giving at least one solution.

The programs for A231272, there is no canonical definition to state claims against.
-/

/-! ## A231272.P2032747301570219579

`comp[A231016(n+1)]`
-/

namespace A231272.P2032747301570219579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231272.P2032747301570219579

/-! ## A231272.P12779641678463738988

`eq[1, A231071(n)]`
-/

namespace A231272.P12779641678463738988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231272.P12779641678463738988

/-! ## A231272.P7742397726662652860

`record[(n+1)/A231071(n+1)]`
-/

namespace A231272.P7742397726662652860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A231071 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231272.P7742397726662652860

/-! ## A231272.P6255405177815750874

`record[root(A028310(n), A231071(n))]`
-/

namespace A231272.P6255405177815750874
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℝ) ^ (1 / (A231071 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231272.P6255405177815750874

/-! ## A231272.P7009986569321629758

`lt[A231071(n), atan(A008486(n))]`
-/

namespace A231272.P7009986569321629758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A008486 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P7009986569321629758

/-! ## A231272.P15509631061776372524

`lt[A231071(n), atan(A244727(n))]`
-/

namespace A231272.P15509631061776372524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A244727 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P15509631061776372524

/-! ## A231272.P16849510712646014966

`lt[A231071(n), atan(A006530(n+1))]`
-/

namespace A231272.P16849510712646014966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P16849510712646014966

/-! ## A231272.P11069858671952725577

`lt[A231071(n), atan(A053585(n+1))]`
-/

namespace A231272.P11069858671952725577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A053585 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P11069858671952725577

/-! ## A231272.P3591004519145629961

`lt[A231071(n), atan(A257751(n+1))]`
-/

namespace A231272.P3591004519145629961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A257751 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P3591004519145629961

/-! ## A231272.P17183996367671652715

`lt[A231071(n), A020639(A008458(n))]`
-/

namespace A231272.P17183996367671652715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231272.P17183996367671652715

/-! ## A231272.P8039176431176398965

`lt[A231071(n), A000005(A088387(n+1))]`
-/

namespace A231272.P8039176431176398965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231272.P8039176431176398965

/-! ## A231272.P7614523587113764952

`lt[A231071(n), A000005(A111089(n+1))]`
-/

namespace A231272.P7614523587113764952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A111089 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231272.P7614523587113764952

/-! ## A231272.P11749385215741423837

`lt[A231071(n), A000005(A284695(n+1))]`
-/

namespace A231272.P11749385215741423837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A284695 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231272.P11749385215741423837

/-! ## A231272.P2463323561026287931

`lt[A231071(n), atan(A029558(n+1))]`
-/

namespace A231272.P2463323561026287931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A029558 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P2463323561026287931

/-! ## A231272.P1820343457791864433

`lt[A231071(n), atan(A113581(n))]`
-/

namespace A231272.P1820343457791864433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231071 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A113581 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A231272.P1820343457791864433

/-!
# A231273: Numerator of zeta(4n)/(zeta(2n) * Pi^(2n)).

The programs for A231273, there is no canonical definition to state claims against.
-/

/-! ## A231273.P17397613169170259764

`A098087(4*n)`
-/

namespace A231273.P17397613169170259764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098087 (4 * n)

end

end A231273.P17397613169170259764

/-! ## A231273.P7919048378124777465

`abs(A141590(2*n))`
-/

namespace A231273.P7919048378124777465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141590 (2 * n)|

end

end A231273.P7919048378124777465

/-! ## A231273.P7841099031111292250

`abs(A120082(4*n))`
-/

namespace A231273.P7841099031111292250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120082 (4 * n)|

end

end A231273.P7841099031111292250

/-! ## A231273.P13062359761558617910

`or(1, abs(A156036(n)))`
-/

namespace A231273.P13062359761558617910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |A156036 n|

end

end A231273.P13062359761558617910

/-! ## A231273.P1707244661188304999

`or(1, A283301(2*n))`
-/

namespace A231273.P1707244661188304999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283301 (2 * n))

end

end A231273.P1707244661188304999

/-!
# A231274: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k + x) / (1 - k*x - x^2).

The programs for A231274, there is no canonical definition to state claims against.
-/

/-! ## A231274.P5493422736699496498

`2*A248231(1-(char[1]-n)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A231274.P5493422736699496498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A248231 (1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)) * a (n - 1)).toNat

end

end A231274.P5493422736699496498

/-! ## A231274.P6574965675977741573

`A261231(A046342(n)²)`
-/

namespace A231274.P6574965675977741573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (A046342 n ^ 2).toNat

end

end A231274.P6574965675977741573

/-!
# A231277: G.f.: sqrt( Sum_{n>=0} x^n * Product_{k=1..n} (2*k - x) / (1 - 2*k*x) ).

The programs for A231277, there is no canonical definition to state claims against.
-/

/-! ## A231277.P15802069147554504353

`∏{p}[A002991(3*n)², #]`
-/

namespace A231277.P15802069147554504353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002991 (3 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A231277.P15802069147554504353

/-!
# A231278: Not necessarily palindromic primes of which initial and terminal digits are identical, as written in base 3.

The programs for A231278, the canonical program `A231278.P12030104603106713402` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231278 has offset 1).

The definition of A231278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231278.P12030104603106713402

`A007089(p?[A297250(n+1)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A231278

/-- `A007089(p?[A297250(n+1)])` -/
def P12030104603106713402.Spec : Prop :=
  ∀ n, P12030104603106713402.a n = A231278 (n + 1)

theorem P12030104603106713402.correct : P12030104603106713402.Spec := by
  intro n
  simp only [A231278, Nat.add_sub_cancel]

end A231278

/-!
# A231279: a(n) = Jacobsthal(n^2), where Jacobsthal(n) = A001045(n).

The programs for A231279, the canonical program `A231279.P7859192768287182833` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231279 has offset 0).

The definition of A231279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231279.P7859192768287182833

`round(2^n²/3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231279

/-- `round(2^n²/3)` -/
def P7859192768287182833.Spec : Prop :=
  ∀ n, P7859192768287182833.a n = A231279 n

theorem P7859192768287182833.correct : P7859192768287182833.Spec := by
  intro n
  simp only [A231279]

end A231279

/-! ## A231279.P7462462111573974157

`A001045(n²)`
-/

namespace A231279.P7462462111573974157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n ^ 2)

end

end A231279.P7462462111573974157

namespace A231279

/-- `A001045(n²)` -/
def P7462462111573974157.Spec : Prop :=
  ∀ n, P7462462111573974157.a n = A231279 n

end A231279

/-! ## A231279.P6858950490820334587

`A131708(n²)`
-/

namespace A231279.P6858950490820334587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (n ^ 2)

end

end A231279.P6858950490820334587

namespace A231279

/-- `A131708(n²)` -/
def P6858950490820334587.Spec : Prop :=
  ∀ n, P6858950490820334587.a n = A231279 n

end A231279

/-! ## A231279.P466375292313532878

`abs(A157241(n²))`
-/

namespace A231279.P466375292313532878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157241 (n ^ 2)|

end

end A231279.P466375292313532878

namespace A231279

/-- `abs(A157241(n²))` -/
def P466375292313532878.Spec : Prop :=
  ∀ n, P466375292313532878.a n = A231279 n

end A231279

/-! ## A231279.P15466790697937095644

`A167030(n²)+1`
-/

namespace A231279.P15466790697937095644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (n ^ 2) + 1

end

end A231279.P15466790697937095644

namespace A231279

/-- `A167030(n²)+1` -/
def P15466790697937095644.Spec : Prop :=
  ∀ n, P15466790697937095644.a n = A231279 n

end A231279

/-!
# A231280: Number of n X 3 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231280, the canonical program `A231280.P14638025677535013682` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231280 has offset 1).

The definition of A231280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231280.P9979461748865582756

`ogf(2x/(1-4x-17x^2))`
-/

namespace A231280.P9979461748865582756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, -17] n

end

end A231280.P9979461748865582756

namespace A231280

/-- `ogf(2x/(1-4x-17x^2))` -/
def P9979461748865582756.Spec : Prop :=
  ∀ n, P9979461748865582756.a n = A231280 (n + 1)

end A231280

/-! ## A231280.P14638025677535013682

`4*a(n-1)+17*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231280

/-- `4*a(n-1)+17*a(n-2)` -/
def P14638025677535013682.Spec : Prop :=
  ∀ n, (P14638025677535013682.a n : ℤ) = A231280 (n + 1)

theorem P14638025677535013682.correct : P14638025677535013682.Spec := by
  intro n
  simp only [A231280, Nat.add_sub_cancel]

end A231280

/-! ## A231280.P7587528458643764604

`A231285(∑[n+3]+1)`
-/

namespace A231280.P7587528458643764604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231280.P7587528458643764604

namespace A231280

/-- `A231285(∑[n+3]+1)` -/
def P7587528458643764604.Spec : Prop :=
  ∀ n, P7587528458643764604.a n = A231280 (n + 1)

end A231280

/-! ## A231280.P2721860993906086770

`record[A231285(sqrt(A303054(n+1)))]`
-/

namespace A231280.P2721860993906086770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231280.P2721860993906086770

namespace A231280

/-- `record[A231285(sqrt(A303054(n+1)))]` -/
def P2721860993906086770.Spec : Prop :=
  ∀ n, P2721860993906086770.a n = A231280 (n + 1)

end A231280

/-! ## A231280.P2490820044603706824

`record[A185018(n)*A231285(n+1)]`
-/

namespace A231280.P2490820044603706824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A231285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231280.P2490820044603706824

namespace A231280

/-- `record[A185018(n)*A231285(n+1)]` -/
def P2490820044603706824.Spec : Prop :=
  ∀ n, P2490820044603706824.a n = A231280 (n + 1)

end A231280

/-!
# A231281: Number of n X 4 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231281, there is no canonical definition to state claims against.
-/

/-! ## A231281.P16208246984768991193

`A231285(A141214(n+1))`
-/

namespace A231281.P16208246984768991193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A141214 (n + 1)).toNat

end

end A231281.P16208246984768991193

/-! ## A231281.P10572772984856136063

`A231285(A155212(n)+5)`
-/

namespace A231281.P10572772984856136063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A155212 n + 5).toNat

end

end A231281.P10572772984856136063

/-! ## A231281.P2087564144490732160

`A231285(eq[2, A152157(n)])`
-/

namespace A231281.P2087564144490732160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231281.P2087564144490732160

/-! ## A231281.P10152070018826506322

`A231285(eq[2, A350529(n)])`
-/

namespace A231281.P10152070018826506322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231281.P10152070018826506322

/-! ## A231281.P17913656493234901818

`A231285(A052905(n+1)+2)`
-/

namespace A231281.P17913656493234901818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A052905 (n + 1) + 2).toNat

end

end A231281.P17913656493234901818

/-!
# A231282: Number of nX5 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231282, there is no canonical definition to state claims against.
-/

/-! ## A231282.P14215661836569308930

`A231285(Δ[A264443(n)])`
-/

namespace A231282.P14215661836569308930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (f1 (n + 1) - f1 n).toNat

end

end A231282.P14215661836569308930

/-! ## A231282.P3179636889397498125

`A231285(A056115(n)+11)`
-/

namespace A231282.P3179636889397498125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A056115 n + 11).toNat

end

end A231282.P3179636889397498125

/-! ## A231282.P15373834141816623009

`A231285(eq[3, A152157(n)])`
-/

namespace A231282.P15373834141816623009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231282.P15373834141816623009

/-! ## A231282.P18334625067942294238

`A231285(Δ[A023545(n+1)])`
-/

namespace A231282.P18334625067942294238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (f1 (n + 1) - f1 n).toNat

end

end A231282.P18334625067942294238

/-! ## A231282.P5325930231607477447

`A231285(eq[4, A168396(n+1)])`
-/

namespace A231282.P5325930231607477447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231282.P5325930231607477447

/-!
# A231283: Number of nX6 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231283, there is no canonical definition to state claims against.
-/

/-! ## A231283.P14557173697806341097

`A231285(A056119(n)+16)`
-/

namespace A231283.P14557173697806341097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A056119 n + 16).toNat

end

end A231283.P14557173697806341097

/-! ## A231283.P89868096547852031

`A231285(eq[3, A219347(n)])`
-/

namespace A231283.P89868096547852031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231283.P89868096547852031

/-! ## A231283.P10293158329893772680

`A231285(eq[5, A152157(n)])`
-/

namespace A231283.P10293158329893772680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231283.P10293158329893772680

/-! ## A231283.P16861172379584500928

`A231285(eq[5, A193592(n)])`
-/

namespace A231283.P16861172379584500928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231283.P16861172379584500928

/-! ## A231283.P5395942379291631344

`A231285(eq[6, A200370(n+1)])`
-/

namespace A231283.P5395942379291631344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231283.P5395942379291631344

/-!
# A231284: Number of nX7 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231284, there is no canonical definition to state claims against.
-/

/-! ## A231284.P5934844380765489781

`A231285(eq[4, A219347(n)])`
-/

namespace A231284.P5934844380765489781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231284.P5934844380765489781

/-! ## A231284.P7203875624760006788

`A231285(eq[7, A152157(n)])`
-/

namespace A231284.P7203875624760006788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231284.P7203875624760006788

/-! ## A231284.P1774135588998091781

`A231285(A000217(n+7)-6)`
-/

namespace A231284.P1774135588998091781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A000217 (n + 7) - 6).toNat

end

end A231284.P1774135588998091781

/-! ## A231284.P14288184320987279063

`A231285(eq[7, A200370(n+1)])`
-/

namespace A231284.P14288184320987279063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231284.P14288184320987279063

/-! ## A231284.P12957770917817995145

`A231285(eq[10, A185782(n+1)])`
-/

namespace A231284.P12957770917817995145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231284.P12957770917817995145

/-!
# A231286: Number of 3Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231286, there is no canonical definition to state claims against.
-/

/-! ## A231286.P12544916168147213415

`A231285(∑[n+2]+4)`
-/

namespace A231286.P12544916168147213415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231286.P12544916168147213415

/-! ## A231286.P5638402799557377789

`lcm(2, A231285(A167614(n+1)))`
-/

namespace A231286.P5638402799557377789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231285 (A167614 (n + 1)).toNat)

end

end A231286.P5638402799557377789

/-! ## A231286.P9811432172520897220

`A326457(n)+A231285(A167614(n+1))`
-/

namespace A231286.P9811432172520897220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A231285 (A167614 (n + 1)).toNat

end

end A231286.P9811432172520897220

/-! ## A231286.P10326531994290490247

`A057427(n)*A231285(A167614(n+1))`
-/

namespace A231286.P10326531994290490247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231285 (A167614 (n + 1)).toNat

end

end A231286.P10326531994290490247

/-! ## A231286.P4775839919347125909

`A231285(A167614(n+1))%A042439(n)`
-/

namespace A231286.P4775839919347125909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231285 (A167614 (n + 1)).toNat) (A042439 n)

end

end A231286.P4775839919347125909

/-!
# A231287: Number of 4Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231287, there is no canonical definition to state claims against.
-/

/-! ## A231287.P2273697632242836294

`A231285(A141214(n)+7)`
-/

namespace A231287.P2273697632242836294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A141214 n + 7).toNat

end

end A231287.P2273697632242836294

/-! ## A231287.P16117073173995465405

`A231285(A052905(n)+9)`
-/

namespace A231287.P16117073173995465405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A052905 n + 9).toNat

end

end A231287.P16117073173995465405

/-! ## A231287.P13833729950178045512

`A231285(A055999(n)+10)`
-/

namespace A231287.P13833729950178045512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A055999 n + 10).toNat

end

end A231287.P13833729950178045512

/-! ## A231287.P2733281805369704483

`A231285(A167614(n+2)+1)`
-/

namespace A231287.P2733281805369704483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A167614 (n + 2) + 1).toNat

end

end A231287.P2733281805369704483

/-! ## A231287.P124464285519497070

`A231285(A166136(n+2)-2)`
-/

namespace A231287.P124464285519497070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A166136 (n + 2) - 2).toNat

end

end A231287.P124464285519497070

/-!
# A231288: Number of 5Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231288, there is no canonical definition to state claims against.
-/

/-! ## A231288.P357266977150850545

`A231285(A155212(n)+13)`
-/

namespace A231288.P357266977150850545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A155212 n + 13).toNat

end

end A231288.P357266977150850545

/-! ## A231288.P16080126355390712285

`A231285(A056000(n)+15)`
-/

namespace A231288.P16080126355390712285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A056000 n + 15).toNat

end

end A231288.P16080126355390712285

/-! ## A231288.P13796496394742945571

`A231285(eq[7, A066657(n)])`
-/

namespace A231288.P13796496394742945571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231288.P13796496394742945571

/-! ## A231288.P6839349475521643053

`A231285(eq[6, A131818(n+1)])`
-/

namespace A231288.P6839349475521643053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231288.P6839349475521643053

/-! ## A231288.P6667723233288780062

`A231285(eq[6, A135223(n+1)])`
-/

namespace A231288.P6667723233288780062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231288.P6667723233288780062

/-!
# A231289: Number of 6Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A231289, there is no canonical definition to state claims against.
-/

/-! ## A231289.P5593498533599942817

`A231285(A166136(n+4))`
-/

namespace A231289.P5593498533599942817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A166136 (n + 4)).toNat

end

end A231289.P5593498533599942817

/-! ## A231289.P6504663438868728636

`A231285(A056115(n)+21)`
-/

namespace A231289.P6504663438868728636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A056115 n + 21).toNat

end

end A231289.P6504663438868728636

/-! ## A231289.P7321766216905874983

`A231285(A000217(n+5)+6)`
-/

namespace A231289.P7321766216905874983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A000217 (n + 5) + 6).toNat

end

end A231289.P7321766216905874983

/-! ## A231289.P12188699251424724024

`A231285(A141214(n+2)+9)`
-/

namespace A231289.P12188699251424724024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (A141214 (n + 2) + 9).toNat

end

end A231289.P12188699251424724024

/-! ## A231289.P2393048864316376136

`A231285(eq[7, A131818(n+1)])`
-/

namespace A231289.P2393048864316376136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231289.P2393048864316376136

/-!
# A231291: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1 + k*x) / (1 - x - k*x^2).

The programs for A231291, there is no canonical definition to state claims against.
-/

/-! ## A231291.P3886231772056460451

`A238803(n)-A230980(A048828(n))`
-/

namespace A231291.P3886231772056460451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 n - A230980 (A048828 n).toNat

end

end A231291.P3886231772056460451

/-! ## A231291.P8350743111296540494

`A004525(A052329(n+1)+A007853(n+1))`
-/

namespace A231291.P8350743111296540494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A052329 (n + 1) + A007853 (n + 1)).toNat

end

end A231291.P8350743111296540494

/-! ## A231291.P7692644647244824863

`or(floor(n/3), A233970(ceil(2^(n-1))))`
-/

namespace A231291.P7692644647244824863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 3⌋ (A233970 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A231291.P7692644647244824863

/-!
# A231292: a(n) = Jacobsthal(n)^n, where Jacobsthal(n) = A001045(n), for n>=1.

The programs for A231292, the canonical program `A231292.P14166712617278534646` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231292 has offset 1).

The definition of A231292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231292.P14166712617278534646

`(2^(n+1)-(-1)^(n+1))^(n+1)/3^(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231292

/-- `(2^(n+1)-(-1)^(n+1))^(n+1)/3^(n+1)` -/
def P14166712617278534646.Spec : Prop :=
  ∀ n, P14166712617278534646.a n = (A231292 (n + 1) : ℚ)

end A231292

/-! ## A231292.P16005733619140160072

`A077925(n)^(n+1)`
-/

namespace A231292.P16005733619140160072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n ^ (n + 1)

end

end A231292.P16005733619140160072

namespace A231292

/-- `A077925(n)^(n+1)` -/
def P16005733619140160072.Spec : Prop :=
  ∀ n, P16005733619140160072.a n = A231292 (n + 1)

end A231292

/-! ## A231292.P1791887580363698864

`A073370(∑[n])^(n+1)`
-/

namespace A231292.P1791887580363698864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A231292.P1791887580363698864

namespace A231292

/-- `A073370(∑[n])^(n+1)` -/
def P1791887580363698864.Spec : Prop :=
  ∀ n, P1791887580363698864.a n = A231292 (n + 1)

end A231292

/-! ## A231292.P14092839610832436721

`∑[A078008(n)]^(n+1)`
-/

namespace A231292.P14092839610832436721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A231292.P14092839610832436721

namespace A231292

/-- `∑[A078008(n)]^(n+1)` -/
def P14092839610832436721.Spec : Prop :=
  ∀ n, P14092839610832436721.a n = A231292 (n + 1)

end A231292

/-! ## A231292.P16008898765406118815

`A091595(∑[n])^(n+1)`
-/

namespace A231292.P16008898765406118815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091595 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A231292.P16008898765406118815

namespace A231292

/-- `A091595(∑[n])^(n+1)` -/
def P16008898765406118815.Spec : Prop :=
  ∀ n, P16008898765406118815.a n = A231292 (n + 1)

end A231292

/-!
# A231294: Number of (n+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231294, there is no canonical definition to state claims against.
-/

/-! ## A231294.P1748045956974676108

`A231302(∑[4*n]+1)`
-/

namespace A231294.P1748045956974676108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231294.P1748045956974676108

/-! ## A231294.P17069983339057029154

`gcd(floor(1/(n+1)), A231302(n²+(n+1)²))`
-/

namespace A231294.P17069983339057029154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A231302 (n ^ 2 + (n + 1) ^ 2))

end

end A231294.P17069983339057029154

/-! ## A231294.P18443933978608695854

`record[A231302(Δ[A235355(n)])]`
-/

namespace A231294.P18443933978608695854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231294.P18443933978608695854

/-! ## A231294.P1469671365098569666

`abs(A231302(A001844(n))-1)+1`
-/

namespace A231294.P1469671365098569666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A231302 (A001844 n).toNat - 1| + 1

end

end A231294.P1469671365098569666

/-! ## A231294.P5937728828986136617

`record[A003982(n)*A231302(n+1)]`
-/

namespace A231294.P5937728828986136617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231294.P5937728828986136617

/-!
# A231295: Number of (n+1) X (1+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231295, the canonical program `A231295.P9150873120635633509` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231295 has offset 1).

The definition of A231295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231295.P5151563773768105954

`ogf((-1+3x^2+2x^3)/(-1+2x+3x^2-4x^4))`
-/

namespace A231295.P5151563773768105954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, -2] [1, -2, -3, 0, 4] n

end

end A231295.P5151563773768105954

namespace A231295

/-- `ogf((-1+3x^2+2x^3)/(-1+2x+3x^2-4x^4))` -/
def P5151563773768105954.Spec : Prop :=
  ∀ n, P5151563773768105954.a n = A231295 (n + 1)

end A231295

/-! ## A231295.P9150873120635633509

`2*a(n-1)+3*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231295

/-- `2*a(n-1)+3*a(n-2)-4*a(n-4)` -/
def P9150873120635633509.Spec : Prop :=
  ∀ n, P9150873120635633509.a n = A231295 (n + 1)

theorem P9150873120635633509.correct : P9150873120635633509.Spec := by
  intro n
  simp only [A231295, Nat.add_sub_cancel]

end A231295

/-! ## A231295.P2680732973218665456

`ceil(A003229(2*n)/2)`
-/

namespace A231295.P2680732973218665456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003229 (2 * n) : ℚ) / 2⌉

end

end A231295.P2680732973218665456

namespace A231295

/-- `ceil(A003229(2*n)/2)` -/
def P2680732973218665456.Spec : Prop :=
  ∀ n, P2680732973218665456.a n = A231295 (n + 1)

end A231295

/-! ## A231295.P8733807086130326827

`ceil(A077949(2*n+1)/2)`
-/

namespace A231295.P8733807086130326827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077949 (2 * n + 1) : ℚ) / 2⌉

end

end A231295.P8733807086130326827

namespace A231295

/-- `ceil(A077949(2*n+1)/2)` -/
def P8733807086130326827.Spec : Prop :=
  ∀ n, P8733807086130326827.a n = A231295 (n + 1)

end A231295

/-! ## A231295.P857218038911725689

`A003476(2*(n+1))-A003479(2*n)`
-/

namespace A231295.P857218038911725689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (2 * (n + 1)) - A003479 (2 * n)

end

end A231295.P857218038911725689

namespace A231295

/-- `A003476(2*(n+1))-A003479(2*n)` -/
def P857218038911725689.Spec : Prop :=
  ∀ n, P857218038911725689.a n = A231295 (n + 1)

end A231295

/-! ## A231295.P5623663176069816531

`A003479(2*n+1)-A164395(2*n)`
-/

namespace A231295.P5623663176069816531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 (2 * n + 1) - A164395 (2 * n)

end

end A231295.P5623663176069816531

namespace A231295

/-- `A003479(2*n+1)-A164395(2*n)` -/
def P5623663176069816531.Spec : Prop :=
  ∀ n, P5623663176069816531.a n = A231295 (n + 1)

end A231295

/-! ## A231295.P16025296563987878242

`2*A077906(2*n)-A052537(2*n)`
-/

namespace A231295.P16025296563987878242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077906 (2 * n) - A052537 (2 * n)

end

end A231295.P16025296563987878242

namespace A231295

/-- `2*A077906(2*n)-A052537(2*n)` -/
def P16025296563987878242.Spec : Prop :=
  ∀ n, P16025296563987878242.a n = A231295 (n + 1)

end A231295

/-! ## A231295.P14711761162122364342

`(1-A077974(2*n+1))/2`
-/

namespace A231295.P14711761162122364342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A077974 (2 * n + 1) : ℚ) / 2

end

end A231295.P14711761162122364342

namespace A231295

/-- `(1-A077974(2*n+1))/2` -/
def P14711761162122364342.Spec : Prop :=
  ∀ n, P14711761162122364342.a n = (A231295 (n + 1) : ℚ)

end A231295

/-!
# A231296: Number of (n+1) X (2+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231296, there is no canonical definition to state claims against.
-/

/-! ## A231296.P11409313851404575665

`A231302(∑[n+1]+2)`
-/

namespace A231296.P11409313851404575665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231296.P11409313851404575665

/-! ## A231296.P3073330737463536530

`record[A231302(A133263(A008611(n)))]`
-/

namespace A231296.P3073330737463536530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231296.P3073330737463536530

/-! ## A231296.P2216566859628219180

`record[A231302(A133263(A020986(n)))]`
-/

namespace A231296.P2216566859628219180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A133263 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231296.P2216566859628219180

/-! ## A231296.P283366451601512823

`A231302(A133263(n+1))%A231297(n+1)`
-/

namespace A231296.P283366451601512823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231302 (A133263 (n + 1)).toNat) (A231297 (n + 1))

end

end A231296.P283366451601512823

/-! ## A231296.P16760678343232314873

`A231302(A152948(n+3))%A231265(n+1)`
-/

namespace A231296.P16760678343232314873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231302 (A152948 (n + 3)).toNat) (A231265 (n + 1))

end

end A231296.P16760678343232314873

/-!
# A231297: Number of (n+1)X(3+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231297, there is no canonical definition to state claims against.
-/

/-! ## A231297.P16735834449999024031

`A231302(∑[n+2]+4)`
-/

namespace A231297.P16735834449999024031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231297.P16735834449999024031

/-! ## A231297.P11266976387246024829

`or(char[2], A231302(A167614(n+1)))`
-/

namespace A231297.P11266976387246024829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A231302 (A167614 (n + 1)).toNat)

end

end A231297.P11266976387246024829

/-! ## A231297.P4966929050365756750

`A231302(A167614(n+1))+A000007(n+1)`
-/

namespace A231297.P4966929050365756750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A231297.P4966929050365756750

/-! ## A231297.P17464542967183705245

`A231302(A167614(n+1))+A000035(4*n)`
-/

namespace A231297.P17464542967183705245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A167614 (n + 1)).toNat + A000035 (4 * n)

end

end A231297.P17464542967183705245

/-! ## A231297.P8893182570125695061

`A006530(gcd(n, n+1))*A231302(A000096(n+1)+4)`
-/

namespace A231297.P8893182570125695061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A231302 (A000096 (n + 1) + 4).toNat

end

end A231297.P8893182570125695061

/-!
# A231298: Number of (n+1)X(4+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231298, there is no canonical definition to state claims against.
-/

/-! ## A231298.P7363188282832642539

`A231302(A374004(n+1))`
-/

namespace A231298.P7363188282832642539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A374004 (n + 1)).toNat

end

end A231298.P7363188282832642539

/-! ## A231298.P14983619879380773588

`A231302(A145018(n+4))`
-/

namespace A231298.P14983619879380773588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A145018 (n + 4)).toNat

end

end A231298.P14983619879380773588

/-! ## A231298.P5153266078756414377

`A231302(A141214(n)+7)`
-/

namespace A231298.P5153266078756414377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A141214 n + 7).toNat

end

end A231298.P5153266078756414377

/-! ## A231298.P12452212969813697655

`A231302(A052905(n)+9)`
-/

namespace A231298.P12452212969813697655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A052905 n + 9).toNat

end

end A231298.P12452212969813697655

/-! ## A231298.P1576109568802130754

`A231302(A055999(n)+10)`
-/

namespace A231298.P1576109568802130754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A055999 n + 10).toNat

end

end A231298.P1576109568802130754

/-!
# A231299: Number of (n+1)X(5+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231299, there is no canonical definition to state claims against.
-/

/-! ## A231299.P9176723840341536317

`A231302(A374005(n+1))`
-/

namespace A231299.P9176723840341536317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A374005 (n + 1)).toNat

end

end A231299.P9176723840341536317

/-! ## A231299.P4975636125465254453

`A231302(A167499(n+3))`
-/

namespace A231299.P4975636125465254453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A167499 (n + 3)).toNat

end

end A231299.P4975636125465254453

/-! ## A231299.P12594426487912907619

`A231302(A155212(n)+13)`
-/

namespace A231299.P12594426487912907619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A155212 n + 13).toNat

end

end A231299.P12594426487912907619

/-! ## A231299.P16288317768337815273

`A231302(A056000(n)+15)`
-/

namespace A231299.P16288317768337815273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A056000 n + 15).toNat

end

end A231299.P16288317768337815273

/-! ## A231299.P12817730899623684866

`A231302(eq[7, A066657(n)])`
-/

namespace A231299.P12817730899623684866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231299.P12817730899623684866

