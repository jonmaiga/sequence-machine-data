import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
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

/-!
# A359002: Number of undirected n-cycles of the icosahedral graph.

The programs for A359002, there is no canonical definition to state claims against.
-/

/-! ## A359002.P3971797578751383549

`A158292(A145482(n+1))`
-/

namespace A359002.P3971797578751383549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158292 (A145482 (n + 1)).toNat

end

end A359002.P3971797578751383549

/-!
# A359003: a(n) is the smallest n-gonal number whose sum of digits is n.

The programs for A359003, there is no canonical definition to state claims against.
-/

/-! ## A359003.P5882293506638031241

`record[A115026(n+3)]`
-/

namespace A359003.P5882293506638031241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115026 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359003.P5882293506638031241

/-! ## A359003.P2896019730699930468

`∑[A000464(a(n-1)+a(n-6))]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A359003.P2896019730699930468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 1, 1, 1, 1] fun n f1 =>
  A000464 (f1 (n - 1) + f1 (n - 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359003.P2896019730699930468

/-! ## A359003.P10822344494453078867

`A115026(A083477(n+2))`
-/

namespace A359003.P10822344494453078867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115026 (A083477 (n + 2)).toNat

end

end A359003.P10822344494453078867

/-! ## A359003.P17661213142719499582

`A115026(A257814(n+2))`
-/

namespace A359003.P17661213142719499582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115026 (A257814 (n + 2)).toNat

end

end A359003.P17661213142719499582

/-!
# A359004: a(n) = Sum_{d|n} d^(n/d-1) * (n/d)^(d-1).

The programs for A359004, the canonical program `A359004.P4160168541748516390` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359004 has offset 1).

The definition of A359004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359004.P4160168541748516390

`∑{d}[n+1, #^((n+1)/#-1)*((n+1)/#)^(#-1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359004

/-- `∑{d}[n+1, #^((n+1)/#-1)*((n+1)/#)^(#-1)]` -/
def P4160168541748516390.Spec : Prop :=
  ∀ n, P4160168541748516390.a n = (A359004 (n + 1) : ℝ)

end A359004

/-! ## A359004.P15488119091412873717

`A359863(n+1)/(n+1)`
-/

namespace A359004.P15488119091412873717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359863 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A359004.P15488119091412873717

namespace A359004

/-- `A359863(n+1)/(n+1)` -/
def P15488119091412873717.Spec : Prop :=
  ∀ n, P15488119091412873717.a n = (A359004 (n + 1) : ℚ)

end A359004

/-!
# A359006: Euler characteristics of some Calabi-Yau n-folds.

The programs for A359006, the canonical program `A359006.P12119586992450627531` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359006 has offset 1).

The definition of A359006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359006.P12119586992450627531

`(1-(1-2*(n+1))^(n+1)+2*(n+1)²)/(2*(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359006

/-- `(1-(1-2*(n+1))^(n+1)+2*(n+1)²)/(2*(n+1))` -/
def P12119586992450627531.Spec : Prop :=
  ∀ n, P12119586992450627531.a n = (A359006 (n + 1) : ℚ)

end A359006

/-!
# A359007: a(n) = b(n-b(n)) where b is Van Eck's sequence A181391.

The programs for A359007, there is no canonical definition to state claims against.
-/

/-! ## A359007.P13164792122677765188

`A181391(1-A181391(n+1)+n)`
-/

namespace A359007.P13164792122677765188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (1 - A181391 (n + 1) + (n : ℤ)).toNat

end

end A359007.P13164792122677765188

/-! ## A359007.P4102216999935979661

`A181391(abs(A181391(n+1)+xor(n, -1)))`
-/

namespace A359007.P4102216999935979661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 |A181391 (n + 1) + Int.xor (n : ℤ) (-1)|.toNat

end

end A359007.P4102216999935979661

/-! ## A359007.P17776645209918733062

`A181391(abs(A181391(n+1)+A001489(n+1)))`
-/

namespace A359007.P17776645209918733062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 |A181391 (n + 1) + A001489 (n + 1)|.toNat

end

end A359007.P17776645209918733062

/-! ## A359007.P8570445374577921041

`A171917(n+2-A333359(n+1)%A333383(n+2))`
-/

namespace A359007.P8570445374577921041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171917 ((n + 2 : ℤ) - Int.tmod (A333359 (n + 1)) (A333383 (n + 2))).toNat

end

end A359007.P8570445374577921041

/-! ## A359007.P10557857416801176883

`and(A003415(A317718(n+1)), A181819(2*n+1))`
-/

namespace A359007.P10557857416801176883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003415 (A317718 (n + 1)).toNat) (A181819 (2 * n + 1))

end

end A359007.P10557857416801176883

/-!
# A359010: Variant of the inventory sequence: Record the number of terms whose value occurs once thus far in the sequence, then the number of terms whose value occurs twice thus far, and so on; a row ends when a 0 that would repeat infinitely is reached.

The programs for A359010, there is no canonical definition to state claims against.
-/

/-! ## A359010.P5103797041592873511

`and(A010874(n), A278784(A258452(n+1)))`
-/

namespace A359010.P5103797041592873511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010874 n) (A278784 (A258452 (n + 1)).toNat)

end

end A359010.P5103797041592873511

/-! ## A359010.P7803102637910440588

`A261115(n)-A089810(A328773(n))`
-/

namespace A359010.P7803102637910440588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261115 n - A089810 (A328773 n).toNat

end

end A359010.P7803102637910440588

/-! ## A359010.P11611515006330432841

`and(A001359(A000129(n+2)), A010874(n))`
-/

namespace A359010.P11611515006330432841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001359 (A000129 (n + 2)).toNat) (A010874 n)

end

end A359010.P11611515006330432841

/-! ## A359010.P9246870362499343375

`and(A000040(A187941(2*n)), A010874(n))`
-/

namespace A359010.P9246870362499343375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A187941 (2 * n)).toNat) (A010874 n)

end

end A359010.P9246870362499343375

/-! ## A359010.P8290030677869165905

`and(A010874(n), A272470(A272919(3*n+2)))`
-/

namespace A359010.P8290030677869165905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010874 n) (A272470 (A272919 (3 * n + 2)).toNat)

end

end A359010.P8290030677869165905

/-!
# A359017: a(n) is the index of the smallest triangular number with exactly n distinct prime factors.

The programs for A359017, there is no canonical definition to state claims against.
-/

/-! ## A359017.P6727802619837432272

`round(sqrt(2*A076551(n)))`
-/

namespace A359017.P6727802619837432272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A076551 n : ℝ))

end

end A359017.P6727802619837432272

/-! ## A359017.P2698348940653216157

`A011772(A076551(n)/A005708(2*n+1))`
-/

namespace A359017.P2698348940653216157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (SequenceMachineLib.roundAway ((A076551 n : ℚ) / (A005708 (2 * n + 1) : ℚ))).toNat

end

end A359017.P2698348940653216157

/-!
# A359018: a(n) = Sum_{d|n} d * 3^(d-1).

The programs for A359018, the canonical program `A359018.P2780246610833969952` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359018 has offset 1).

The definition of A359018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359018.P2780246610833969952

`∑{d}[n+1, 3^(#-1)*#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A359018

/-- `∑{d}[n+1, 3^(#-1)*#]` -/
def P2780246610833969952.Spec : Prop :=
  ∀ n, P2780246610833969952.a n = (A359018 (n + 1) : ℚ)

end A359018

/-!
# A359019: Number of inequivalent tilings of a 3 X n rectangle using integer-sided square tiles.

The programs for A359019, there is no canonical definition to state claims against.
-/

/-! ## A359019.P15195727963179003397

`A227690(∑[n+4]+2)`
-/

namespace A359019.P15195727963179003397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A359019.P15195727963179003397

/-! ## A359019.P17151294618030435298

`A227690(A046691(n+2))+A061858(n)`
-/

namespace A359019.P17151294618030435298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A046691 (n + 2)).toNat + A061858 n

end

end A359019.P17151294618030435298

/-! ## A359019.P8541113251671868143

`A227690(A167614(n+2))/abs(A181432(n+1))`
-/

namespace A359019.P8541113251671868143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227690 (A167614 (n + 2)).toNat : ℚ) / (|A181432 (n + 1)| : ℚ)

end

end A359019.P8541113251671868143

/-! ## A359019.P11515123950527326853

`A227690(A167614(n+2))+A010051(2*(n+2))`
-/

namespace A359019.P11515123950527326853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A167614 (n + 2)).toNat + A010051 (2 * (n + 2))

end

end A359019.P11515123950527326853

/-! ## A359019.P15507718391062386118

`A175126(n)+A026819(A136751(n))`
-/

namespace A359019.P15507718391062386118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n + A026819 (A136751 n).toNat

end

end A359019.P15507718391062386118

/-!
# A359020: Number of inequivalent tilings of a 4 X n rectangle using integer-sided square tiles.

The programs for A359020, there is no canonical definition to state claims against.
-/

/-! ## A359020.P11670906376630064755

`A227690(A052905(n+2))`
-/

namespace A359020.P11670906376630064755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A052905 (n + 2)).toNat

end

end A359020.P11670906376630064755

/-! ## A359020.P16744367038358749089

`A227690(A056115(n)+10)`
-/

namespace A359020.P16744367038358749089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A056115 n + 10).toNat

end

end A359020.P16744367038358749089

/-! ## A359020.P7865678943854081355

`A227690(A155212(n)+12)`
-/

namespace A359020.P7865678943854081355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A155212 n + 12).toNat

end

end A359020.P7865678943854081355

/-! ## A359020.P5421946030068403241

`A227690(eq[4, A002262(n)])`
-/

namespace A359020.P5421946030068403241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359020.P5421946030068403241

/-! ## A359020.P12324912614616852101

`A227690(eq[4, A025581(n)])`
-/

namespace A359020.P12324912614616852101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359020.P12324912614616852101

/-!
# A359021: Number of inequivalent tilings of a 5 X n rectangle using integer-sided square tiles.

The programs for A359021, there is no canonical definition to state claims against.
-/

/-! ## A359021.P16657161878691638091

`A227690(A055999(n+3))`
-/

namespace A359021.P16657161878691638091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A055999 (n + 3)).toNat

end

end A359021.P16657161878691638091

/-! ## A359021.P15517724052139662592

`A227690(A167499(n+4))`
-/

namespace A359021.P15517724052139662592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A167499 (n + 4)).toNat

end

end A359021.P15517724052139662592

/-! ## A359021.P5925746991003215156

`A227690(A056119(n)+15)`
-/

namespace A359021.P5925746991003215156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A056119 n + 15).toNat

end

end A359021.P5925746991003215156

/-! ## A359021.P15479186326309767017

`A227690(eq[5, A002262(n)])`
-/

namespace A359021.P15479186326309767017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359021.P15479186326309767017

/-! ## A359021.P6001970839355964499

`A227690(eq[5, A025581(n)])`
-/

namespace A359021.P6001970839355964499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359021.P6001970839355964499

/-!
# A359022: Number of inequivalent tilings of a 6 X n rectangle using integer-sided square tiles.

The programs for A359022, there is no canonical definition to state claims against.
-/

/-! ## A359022.P6640855568452465020

`A227690(eq[6, A002262(n)])`
-/

namespace A359022.P6640855568452465020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359022.P6640855568452465020

/-! ## A359022.P4853308746594671897

`A227690(eq[6, A025581(n)])`
-/

namespace A359022.P4853308746594671897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359022.P4853308746594671897

/-! ## A359022.P18047737032611687992

`A227690(A055999(n+4)-1)`
-/

namespace A359022.P18047737032611687992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A055999 (n + 4) - 1).toNat

end

end A359022.P18047737032611687992

/-! ## A359022.P2828304042800468881

`A227690(A167499(n+5)+1)`
-/

namespace A359022.P2828304042800468881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A167499 (n + 5) + 1).toNat

end

end A359022.P2828304042800468881

/-! ## A359022.P14103862544882150343

`A227690(A052905(n+4)-2)`
-/

namespace A359022.P14103862544882150343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A052905 (n + 4) - 2).toNat

end

end A359022.P14103862544882150343

/-!
# A359023: Number of inequivalent tilings of a 7 X n rectangle using integer-sided square tiles.

The programs for A359023, there is no canonical definition to state claims against.
-/

/-! ## A359023.P3686514279270394897

`A227690(eq[7, A025581(n)])`
-/

namespace A359023.P3686514279270394897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359023.P3686514279270394897

/-! ## A359023.P7237540129786000351

`A227690(A056000(n+4)+2)`
-/

namespace A359023.P7237540129786000351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A056000 (n + 4) + 2).toNat

end

end A359023.P7237540129786000351

/-! ## A359023.P7660086621869666608

`A227690(A052905(n+4)+12)`
-/

namespace A359023.P7660086621869666608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A052905 (n + 4) + 12).toNat

end

end A359023.P7660086621869666608

/-! ## A359023.P10555230320292283598

`A227690(A253145(n+7)-8)`
-/

namespace A359023.P10555230320292283598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A253145 (n + 7) - 8).toNat

end

end A359023.P10555230320292283598

/-! ## A359023.P14278234150102637631

`A227690(A056119(n+1)+28)`
-/

namespace A359023.P14278234150102637631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A056119 (n + 1) + 28).toNat

end

end A359023.P14278234150102637631

/-!
# A359024: Number of inequivalent tilings of an 8 X n rectangle using integer-sided square tiles.

The programs for A359024, there is no canonical definition to state claims against.
-/

/-! ## A359024.P8468727165984232698

`A227690(eq[8, A002262(n)])`
-/

namespace A359024.P8468727165984232698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359024.P8468727165984232698

/-! ## A359024.P15466713305929555231

`A227690(eq[8, A025581(n)])`
-/

namespace A359024.P15466713305929555231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359024.P15466713305929555231

/-! ## A359024.P3857080325587386719

`A227690(A056115(n+4)+6)`
-/

namespace A359024.P3857080325587386719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A056115 (n + 4) + 6).toNat

end

end A359024.P3857080325587386719

/-! ## A359024.P12051530959887937570

`A227690(A046691(n+7)-5)`
-/

namespace A359024.P12051530959887937570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A046691 (n + 7) - 5).toNat

end

end A359024.P12051530959887937570

/-!
# A359025: Number of inequivalent tilings of a 9 X n rectangle using integer-sided square tiles.

The programs for A359025, there is no canonical definition to state claims against.
-/

/-! ## A359025.P75455642336013170

`A227690(eq[9, A002262(n)])`
-/

namespace A359025.P75455642336013170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359025.P75455642336013170

/-! ## A359025.P5298612178480285791

`A227690(A052905(n+7)-5)`
-/

namespace A359025.P5298612178480285791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A052905 (n + 7) - 5).toNat

end

end A359025.P5298612178480285791

/-! ## A359025.P10844337571559610731

`A227690(A000217(n+9)+9)`
-/

namespace A359025.P10844337571559610731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (A000217 (n + 9) + 9).toNat

end

end A359025.P10844337571559610731

/-!
# A359026: Number of inequivalent tilings of a 10 X n rectangle using integer-sided square tiles.

The programs for A359026, there is no canonical definition to state claims against.
-/

/-! ## A359026.P796240445604807068

`A227690(eq[10, A002262(n)])`
-/

namespace A359026.P796240445604807068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359026.P796240445604807068

/-! ## A359026.P3814426566741405524

`A227690(eq[10, A025581(n)])`
-/

namespace A359026.P3814426566741405524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227690 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359026.P3814426566741405524

/-!
# A359028: Integers m such that A006218(m+1)/(m+1) > A006218(m)/m.

The programs for A359028, there is no canonical definition to state claims against.
-/

/-! ## A359028.P9007139951929798180

`lt[n+2, A339338(n+1)]`
-/

namespace A359028.P9007139951929798180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359028.P9007139951929798180

/-! ## A359028.P12815235830243686378

`lt[n, C(A184389(n+1), 2)]`
-/

namespace A359028.P12815235830243686378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A184389 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359028.P12815235830243686378

/-! ## A359028.P12365615915868316759

`lt[2*(n+1), A097988(n+1)]`
-/

namespace A359028.P12365615915868316759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359028.P12365615915868316759

/-! ## A359028.P2889501656810809929

`lt[2*n+1, A111219(n+1)]`
-/

namespace A359028.P2889501656810809929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359028.P2889501656810809929

/-! ## A359028.P2613750083764160276

`lt[n+1, A111217(n+1)-3]`
-/

namespace A359028.P2613750083764160276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111217 (n + 1) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359028.P2613750083764160276

/-! ## A359028.P673620357270255794

`lt[n/4+1, A324202(n+1)]`
-/

namespace A359028.P673620357270255794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A359028.P673620357270255794

/-! ## A359028.P3454763240801139399

`lt[2*(n+1), A007425(n+1)²]`
-/

namespace A359028.P3454763240801139399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359028.P3454763240801139399

/-! ## A359028.P16429877984748234646

`lt[sqrt(3*n+1), A253249(n+1)]`
-/

namespace A359028.P16429877984748234646
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A359028.P16429877984748234646

/-! ## A359028.P17233662005140782154

`lt[or(3, 2*n), A305896(n+1)²]`
-/

namespace A359028.P17233662005140782154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305896 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359028.P17233662005140782154

/-! ## A359028.P8947862590702182440

`lt[round(root(n+1, 3)), A000005(n+1)]`
-/

namespace A359028.P8947862590702182440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (1 / (3 : ℝ)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359028.P8947862590702182440

/-!
# A359029: Integers m such that A006218(m+1)/(m+1) < A006218(m)/m.

The programs for A359029, there is no canonical definition to state claims against.
-/

/-! ## A359029.P17542438896068827216

`lt[A339338(n+1), n+1]`
-/

namespace A359029.P17542438896068827216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339338 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359029.P17542438896068827216

/-! ## A359029.P18177518515609326200

`lt[A097988(n+1), 2*n]`
-/

namespace A359029.P18177518515609326200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097988 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359029.P18177518515609326200

/-! ## A359029.P896137153054244868

`lt[A111219(n+1), 2*n]`
-/

namespace A359029.P896137153054244868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111219 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359029.P896137153054244868

/-! ## A359029.P13641097074976456736

`lt[A111218(n+1), ϕ*n]`
-/

namespace A359029.P13641097074976456736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111218 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A359029.P13641097074976456736

/-! ## A359029.P13085683756492670164

`lt[A007425(n+1)², 2*n]`
-/

namespace A359029.P13085683756492670164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359029.P13085683756492670164

/-! ## A359029.P15788340492817903678

`lt[A145501(n+1)², 2*n]`
-/

namespace A359029.P15788340492817903678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359029.P15788340492817903678

/-! ## A359029.P3984343931037050947

`lt[A111221(n+1), 3*(n-1)]`
-/

namespace A359029.P3984343931037050947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359029.P3984343931037050947

/-! ## A359029.P7043908745519252180

`lt[A324202(n+1), n/4+1]`
-/

namespace A359029.P7043908745519252180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324202 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A359029.P7043908745519252180

/-! ## A359029.P2081329194679150384

`lt[3^A000005(n+1), 2*n]`
-/

namespace A359029.P2081329194679150384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000005 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A359029.P2081329194679150384

/-! ## A359029.P7404228406967173148

`lt[3^A181819(n+1), 2*n]`
-/

namespace A359029.P7404228406967173148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A181819 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A359029.P7404228406967173148

/-!
# A359032: a(n) is the number of ways to place non-attacking queens on an n X n board with no queens above the main diagonal.

The programs for A359032, there is no canonical definition to state claims against.
-/

/-! ## A359032.P15367808462656732916

`A266350(A149973(n))`
-/

namespace A359032.P15367808462656732916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266350 (A149973 n).toNat

end

end A359032.P15367808462656732916

/-! ## A359032.P13497100603193392821

`A126291(A004111(n))+A014138(n)`
-/

namespace A359032.P13497100603193392821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126291 (A004111 n).toNat + A014138 n

end

end A359032.P13497100603193392821

/-! ## A359032.P12172539750029052471

`A126291(A104872(n))+A014138(n)`
-/

namespace A359032.P12172539750029052471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126291 (A104872 n).toNat + A014138 n

end

end A359032.P12172539750029052471

/-! ## A359032.P10653057455901029433

`A349864(A113010(2*n))+A014138(n)`
-/

namespace A359032.P10653057455901029433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349864 (A113010 (2 * n)).toNat + A014138 n

end

end A359032.P10653057455901029433

/-!
# A359034: a(n+1) is the sum of the number of terms in all groups of contiguous terms that add up to a(n); a(1)=1.

The programs for A359034, there is no canonical definition to state claims against.
-/

/-! ## A359034.P7358824277392058956

`A000120(record[n*A333381(n)+1])`
-/

namespace A359034.P7358824277392058956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A333381 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359034.P7358824277392058956

/-! ## A359034.P7766515878543148946

`A266193(2*(n+1))-A169671(A000975(n))`
-/

namespace A359034.P7766515878543148946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (2 * (n + 1)) - A169671 (A000975 n).toNat

end

end A359034.P7766515878543148946

/-! ## A359034.P1325858293212307537

`A356874(n)+A175860(A179070(2*n+5))`
-/

namespace A359034.P1325858293212307537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 n + A175860 (A179070 (2 * n + 5)).toNat

end

end A359034.P1325858293212307537

/-!
# A359037: a(n) = Sum_{d|n} tau(d^6), where tau(n) = number of divisors of n, cf. A000005.

The programs for A359037, the canonical program `A359037.P11843993523253148775` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359037 has offset 1).

The definition of A359037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359037.P11843993523253148775

`∑{d}[n+1, A344329(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359037

/-- `∑{d}[n+1, A344329(#)]` -/
def P11843993523253148775.Spec : Prop :=
  ∀ n, P11843993523253148775.a n = A359037 (n + 1)

theorem P11843993523253148775.correct : P11843993523253148775.Spec := by
  intro n
  simp only [A359037, Nat.add_sub_cancel]

end A359037

/-! ## A359037.P7335688300571984906

`Δ[A006218(n)]*A048785(n+1)`
-/

namespace A359037.P7335688300571984906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048785 (n + 1)

end

end A359037.P7335688300571984906

namespace A359037

/-- `Δ[A006218(n)]*A048785(n+1)` -/
def P7335688300571984906.Spec : Prop :=
  ∀ n, P7335688300571984906.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P8141641475905868720

`A000005(n+1)*A048785(n+1)`
-/

namespace A359037.P8141641475905868720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A048785 (n + 1)

end

end A359037.P8141641475905868720

namespace A359037

/-- `A000005(n+1)*A048785(n+1)` -/
def P8141641475905868720.Spec : Prop :=
  ∀ n, P8141641475905868720.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P6986836627900993804

`A069780(n+1)*A072696(n+1)`
-/

namespace A359037.P6986836627900993804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069780 (n + 1) * A072696 (n + 1)

end

end A359037.P6986836627900993804

namespace A359037

/-- `A069780(n+1)*A072696(n+1)` -/
def P6986836627900993804.Spec : Prop :=
  ∀ n, P6986836627900993804.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P2617614983392176217

`∑{d}[n+1, A008683(#)*A397686((n+1)/#)]`
-/

namespace A359037.P2617614983392176217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A397686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359037.P2617614983392176217

namespace A359037

/-- `∑{d}[n+1, A008683(#)*A397686((n+1)/#)]` -/
def P2617614983392176217.Spec : Prop :=
  ∀ n, P2617614983392176217.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P7355987926598738019

`(A006218(n+1)-A006218(n))*A048785(n+1)`
-/

namespace A359037.P7355987926598738019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n) * A048785 (n + 1)

end

end A359037.P7355987926598738019

namespace A359037

/-- `(A006218(n+1)-A006218(n))*A048785(n+1)` -/
def P7355987926598738019.Spec : Prop :=
  ∀ n, P7355987926598738019.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P11012648527068454540

`(A353551(n+1)-A353551(n))*A000005(n+1)`
-/

namespace A359037.P11012648527068454540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353551 (n + 1) - A353551 n) * A000005 (n + 1)

end

end A359037.P11012648527068454540

namespace A359037

/-- `(A353551(n+1)-A353551(n))*A000005(n+1)` -/
def P11012648527068454540.Spec : Prop :=
  ∀ n, P11012648527068454540.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P8666756292687075244

`(A294072(n+1)+A000005(n+1))*A000005(n+1)`
-/

namespace A359037.P8666756292687075244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294072 (n + 1) + A000005 (n + 1)) * A000005 (n + 1)

end

end A359037.P8666756292687075244

namespace A359037

/-- `(A294072(n+1)+A000005(n+1))*A000005(n+1)` -/
def P8666756292687075244.Spec : Prop :=
  ∀ n, P8666756292687075244.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P2936824665271074950

`(A291208(n+1)+A061704(n+1))*A048785(n+1)`
-/

namespace A359037.P2936824665271074950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291208 (n + 1) + A061704 (n + 1)) * A048785 (n + 1)

end

end A359037.P2936824665271074950

namespace A359037

/-- `(A291208(n+1)+A061704(n+1))*A048785(n+1)` -/
def P2936824665271074950.Spec : Prop :=
  ∀ n, P2936824665271074950.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P294119047502935943

`(A048691(n+1)-A055205(n+1))*A048785(n+1)`
-/

namespace A359037.P294119047502935943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048691 (n + 1) - A055205 (n + 1)) * A048785 (n + 1)

end

end A359037.P294119047502935943

namespace A359037

/-- `(A048691(n+1)-A055205(n+1))*A048785(n+1)` -/
def P294119047502935943.Spec : Prop :=
  ∀ n, P294119047502935943.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P10137868919940801786

`(A048785(n+1)-A294072(n+1))*A048785(n+1)`
-/

namespace A359037.P10137868919940801786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048785 (n + 1) - A294072 (n + 1)) * A048785 (n + 1)

end

end A359037.P10137868919940801786

namespace A359037

/-- `(A048785(n+1)-A294072(n+1))*A048785(n+1)` -/
def P10137868919940801786.Spec : Prop :=
  ∀ n, P10137868919940801786.a n = A359037 (n + 1)

end A359037

/-! ## A359037.P6130553398172852583

`A048785(n+1)/A007425(n+1)*A397549(n+1)`
-/

namespace A359037.P6130553398172852583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048785 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ) * (A397549 (n + 1) : ℚ)

end

end A359037.P6130553398172852583

namespace A359037

/-- `A048785(n+1)/A007425(n+1)*A397549(n+1)` -/
def P6130553398172852583.Spec : Prop :=
  ∀ n, P6130553398172852583.a n = (A359037 (n + 1) : ℚ)

end A359037

/-! ## A359037.P18036984480594448191

`gcd(A072696(n+1), A294072(n+1))*A072696(n+1)`
-/

namespace A359037.P18036984480594448191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A072696 (n + 1)) (A294072 (n + 1)) : ℤ) * A072696 (n + 1)

end

end A359037.P18036984480594448191

namespace A359037

/-- `gcd(A072696(n+1), A294072(n+1))*A072696(n+1)` -/
def P18036984480594448191.Spec : Prop :=
  ∀ n, P18036984480594448191.a n = A359037 (n + 1)

end A359037

/-!
# A359038: a(n) = Sum_{d|n} tau(d^7), where tau(n) = number of divisors of n, cf. A000005.

The programs for A359038, the canonical program `A359038.P10658046964525266141` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359038 has offset 1).

The definition of A359038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359038.P10658046964525266141

`∑{d}[n+1, A343526(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359038

/-- `∑{d}[n+1, A343526(#)]` -/
def P10658046964525266141.Spec : Prop :=
  ∀ n, P10658046964525266141.a n = A359038 (n + 1)

theorem P10658046964525266141.correct : P10658046964525266141.Spec := by
  intro n
  simp only [A359038, Nat.add_sub_cancel]

end A359038

/-! ## A359038.P5832487156993295253

`∏{e}[n+1, A001106(#+1)]`
-/

namespace A359038.P5832487156993295253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001106 (Nat.factorization (f1 n) p + 1)

end

end A359038.P5832487156993295253

namespace A359038

/-- `∏{e}[n+1, A001106(#+1)]` -/
def P5832487156993295253.Spec : Prop :=
  ∀ n, P5832487156993295253.a n = A359038 (n + 1)

end A359038

/-! ## A359038.P7680036012200165221

`∑{d}[n+1, A000005(#*(n+1)^3)]`
-/

namespace A359038.P7680036012200165221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d * (n + 1) ^ 3)

end

end A359038.P7680036012200165221

namespace A359038

/-- `∑{d}[n+1, A000005(#*(n+1)^3)]` -/
def P7680036012200165221.Spec : Prop :=
  ∀ n, P7680036012200165221.a n = A359038 (n + 1)

end A359038

/-! ## A359038.P3721132864062247286

`∏{e}[A077559(n+1), A023551(#)]`
-/

namespace A359038.P3721132864062247286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A023551 (Nat.factorization (f1 n).natAbs p)

end

end A359038.P3721132864062247286

namespace A359038

/-- `∏{e}[A077559(n+1), A023551(#)]` -/
def P3721132864062247286.Spec : Prop :=
  ∀ n, P3721132864062247286.a n = A359038 (n + 1)

end A359038

/-! ## A359038.P12760082931018270596

`∏{e}[A111680(n+1), A023551(#)]`
-/

namespace A359038.P12760082931018270596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A023551 (Nat.factorization (f1 n).natAbs p)

end

end A359038.P12760082931018270596

namespace A359038

/-- `∏{e}[A111680(n+1), A023551(#)]` -/
def P12760082931018270596.Spec : Prop :=
  ∀ n, P12760082931018270596.a n = A359038 (n + 1)

end A359038

/-!
# A359039: Number of Wachs permutations of size n.

The programs for A359039, the canonical program `A359039.P7169220960032041037` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359039 has offset 0).

The definition of A359039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359039.P845446729618807301

`ceil(n/2)!*2^floor(n/2)`
-/

namespace A359039.P845446729618807301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌈(n : ℚ) / 2⌉.toNat : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A359039.P845446729618807301

namespace A359039

/-- `ceil(n/2)!*2^floor(n/2)` -/
def P845446729618807301.Spec : Prop :=
  ∀ n, P845446729618807301.a n = (A359039 n : ℚ)

end A359039

/-! ## A359039.P7169220960032041037

`A081123(n+1)*A016116(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359039

/-- `A081123(n+1)*A016116(n)` -/
def P7169220960032041037.Spec : Prop :=
  ∀ n, P7169220960032041037.a n = A359039 n

theorem P7169220960032041037.correct : P7169220960032041037.Spec := by
  intro n
  simp only [A359039]

end A359039

/-! ## A359039.P14994962261656759506

`∏[ceil(n/a(n-1))]` with `a(0)=1`
-/

namespace A359039.P14994962261656759506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(n : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A359039.P14994962261656759506

namespace A359039

/-- `∏[ceil(n/a(n-1))]` -/
def P14994962261656759506.Spec : Prop :=
  ∀ n, P14994962261656759506.a n = A359039 n

end A359039

/-! ## A359039.P17655119174186138472

`∏[round(n/a(n-1))]` with `a(0)=1`
-/

namespace A359039.P17655119174186138472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((n : ℚ) / (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A359039.P17655119174186138472

namespace A359039

/-- `∏[round(n/a(n-1))]` -/
def P17655119174186138472.Spec : Prop :=
  ∀ n, P17655119174186138472.a n = A359039 n

end A359039

/-! ## A359039.P2621118526726863831

`abs(∏[floor(n/a(n-1))])` with `a(0)=-1`
-/

namespace A359039.P2621118526726863831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A359039.P2621118526726863831

namespace A359039

/-- `abs(∏[floor(n/a(n-1))])` -/
def P2621118526726863831.Spec : Prop :=
  ∀ n, P2621118526726863831.a n = A359039 n

end A359039

/-! ## A359039.P17474731344148769489

`(n%2+n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A359039.P17474731344148769489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n % 2 + n) * a (n - 2)

end

end A359039.P17474731344148769489

namespace A359039

/-- `(n%2+n)*a(n-2)` -/
def P17474731344148769489.Spec : Prop :=
  ∀ n, (P17474731344148769489.a n : ℤ) = A359039 n

end A359039

/-! ## A359039.P1119749372003197077

`(and(1, n)+n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A359039.P1119749372003197077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.land 1 n + n) * a (n - 2)

end

end A359039.P1119749372003197077

namespace A359039

/-- `(and(1, n)+n)*a(n-2)` -/
def P1119749372003197077.Spec : Prop :=
  ∀ n, (P1119749372003197077.a n : ℤ) = A359039 n

end A359039

/-! ## A359039.P14677577979631854148

`a(n-2)*∑[2*and(1, n)]` with `a(0)=1, a(1)=1`
-/

namespace A359039.P14677577979631854148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359039.P14677577979631854148

namespace A359039

/-- `a(n-2)*∑[2*and(1, n)]` -/
def P14677577979631854148.Spec : Prop :=
  ∀ n, (P14677577979631854148.a n : ℤ) = A359039 n

end A359039

/-! ## A359039.P8483338864220230692

`(2-gcd(2, n)+n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A359039.P8483338864220230692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 - (Nat.gcd 2 n : ℤ) + (n : ℤ)) * a (n - 2)

end

end A359039.P8483338864220230692

namespace A359039

/-- `(2-gcd(2, n)+n)*a(n-2)` -/
def P8483338864220230692.Spec : Prop :=
  ∀ n, P8483338864220230692.a n = A359039 n

end A359039

/-! ## A359039.P15797142810683614298

`(n-(2-n)%2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A359039.P15797142810683614298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - Int.tmod (2 - (n : ℤ)) 2) * a (n - 2)

end

end A359039.P15797142810683614298

namespace A359039

/-- `(n-(2-n)%2)*a(n-2)` -/
def P15797142810683614298.Spec : Prop :=
  ∀ n, P15797142810683614298.a n = A359039 n

end A359039

/-! ## A359039.P12096310054701328352

`2*floor((n+1)/2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A359039.P12096310054701328352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (⌊(n + 1 : ℚ) / 2⌋ * a (n - 2))

end

end A359039.P12096310054701328352

namespace A359039

/-- `2*floor((n+1)/2)*a(n-2)` -/
def P12096310054701328352.Spec : Prop :=
  ∀ n, P12096310054701328352.a n = A359039 n

end A359039

/-!
# A359041: Number of finite sets of integer partitions with all equal sums and total sum n.

The programs for A359041, there is no canonical definition to state claims against.
-/

/-! ## A359041.P13126478584294911539

`A353426(A314829(n))`
-/

namespace A359041.P13126478584294911539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353426 (A314829 n).toNat

end

end A359041.P13126478584294911539

/-! ## A359041.P4816775234603497627

`A353426(A175041(n)+3)`
-/

namespace A359041.P4816775234603497627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353426 (A175041 n + 3).toNat

end

end A359041.P4816775234603497627

/-! ## A359041.P9731666777980196505

`A353426(ceil(log(A052709(3*(n+1)))))`
-/

namespace A359041.P9731666777980196505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353426 ⌈Real.log (A052709 (3 * (n + 1)) : ℝ)⌉.toNat

end

end A359041.P9731666777980196505

/-! ## A359041.P8154544036587078308

`A073189(A061132(n))+A000041(n)`
-/

namespace A359041.P8154544036587078308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 (A061132 n).toNat + A000041 n

end

end A359041.P8154544036587078308

/-! ## A359041.P708980671166034234

`A325280(A320921(n))+A000041(n)`
-/

namespace A359041.P708980671166034234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A320921 n).toNat + A000041 n

end

end A359041.P708980671166034234

/-!
# A359042: Sum of partial sums of the n-th composition in standard order (A066099).

The programs for A359042, the canonical program `A359042.P13411366105931231401` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359042 has offset 0).

The definition of A359042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359042.P10433123181612169163

`ceil(A231204(n)+log2(n+1))`
-/

namespace A359042.P10433123181612169163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A231204 n : ℝ) + Real.logb 2 (n + 1 : ℝ)⌉

end

end A359042.P10433123181612169163

namespace A359042

/-- `ceil(A231204(n)+log2(n+1))` -/
def P10433123181612169163.Spec : Prop :=
  ∀ n, P10433123181612169163.a n = A359042 n

end A359042

/-! ## A359042.P13411366105931231401

`A230877(n)+A080791(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A359042

/-- `A230877(n)+A080791(n)` -/
def P13411366105931231401.Spec : Prop :=
  ∀ n, P13411366105931231401.a n = A359042 n

theorem P13411366105931231401.correct : P13411366105931231401.Spec := by
  intro n
  simp only [A359042]

end A359042

/-! ## A359042.P16962600439039225462

`A231204(n)+A029837(n+1)`
-/

namespace A359042.P16962600439039225462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n + A029837 (n + 1)

end

end A359042.P16962600439039225462

namespace A359042

/-- `A231204(n)+A029837(n+1)` -/
def P16962600439039225462.Spec : Prop :=
  ∀ n, P16962600439039225462.a n = A359042 n

end A359042

/-! ## A359042.P10924020944547291229

`A231204(n)+A000523(2*n+1)`
-/

namespace A359042.P10924020944547291229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n + A000523 (2 * n + 1)

end

end A359042.P10924020944547291229

namespace A359042

/-- `A231204(n)+A000523(2*n+1)` -/
def P10924020944547291229.Spec : Prop :=
  ∀ n, P10924020944547291229.a n = A359042 n

end A359042

/-! ## A359042.P16845773735591632567

`A230877(n)+A023416(2*n+1)`
-/

namespace A359042.P16845773735591632567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n + A023416 (2 * n + 1)

end

end A359042.P16845773735591632567

namespace A359042

/-- `A230877(n)+A023416(2*n+1)` -/
def P16845773735591632567.Spec : Prop :=
  ∀ n, P16845773735591632567.a n = A359042 n

end A359042

/-! ## A359042.P12468731621766386266

`A073642(A145341(n+1))`
-/

namespace A359042.P12468731621766386266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A145341 (n + 1)).toNat

end

end A359042.P12468731621766386266

namespace A359042

/-- `A073642(A145341(n+1))` -/
def P12468731621766386266.Spec : Prop :=
  ∀ n, P12468731621766386266.a n = A359042 n

end A359042

/-! ## A359042.P10798715994743609183

`A073642(A030101(2*n+1))`
-/

namespace A359042.P10798715994743609183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A030101 (2 * n + 1)).toNat

end

end A359042.P10798715994743609183

namespace A359042

/-- `A073642(A030101(2*n+1))` -/
def P10798715994743609183.Spec : Prop :=
  ∀ n, P10798715994743609183.a n = A359042 n

end A359042

/-! ## A359042.P4799813351447720146

`A231204(Δ[n²])`
-/

namespace A359042.P4799813351447720146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A359042.P4799813351447720146

namespace A359042

/-- `A231204(Δ[n²])` -/
def P4799813351447720146.Spec : Prop :=
  ∀ n, P4799813351447720146.a n = A359042 n

end A359042

/-! ## A359042.P15728517029648844943

`A231204(2*n+1)%(n+1)`
-/

namespace A359042.P15728517029648844943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231204 (2 * n + 1)) (n + 1 : ℤ)

end

end A359042.P15728517029648844943

namespace A359042

/-- `A231204(2*n+1)%(n+1)` -/
def P15728517029648844943.Spec : Prop :=
  ∀ n, P15728517029648844943.a n = A359042 n

end A359042

/-! ## A359042.P9440460646739406674

`A230877(2*n+1)-A000120(2*n+1)`
-/

namespace A359042.P9440460646739406674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (2 * n + 1) - A000120 (2 * n + 1)

end

end A359042.P9440460646739406674

namespace A359042

/-- `A230877(2*n+1)-A000120(2*n+1)` -/
def P9440460646739406674.Spec : Prop :=
  ∀ n, P9440460646739406674.a n = A359042 n

end A359042

/-! ## A359042.P11342262222103209150

`A266475(A253565(n))`
-/

namespace A359042.P11342262222103209150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266475 (A253565 n).toNat

end

end A359042.P11342262222103209150

namespace A359042

/-- `A266475(A253565(n))` -/
def P11342262222103209150.Spec : Prop :=
  ∀ n, P11342262222103209150.a n = A359042 n

end A359042

/-! ## A359042.P1593470627279668987

`A029931(A253566(A005940(n+1)))`
-/

namespace A359042.P1593470627279668987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A253566 (A005940 (n + 1)).toNat).toNat

end

end A359042.P1593470627279668987

namespace A359042

/-- `A029931(A253566(A005940(n+1)))` -/
def P1593470627279668987.Spec : Prop :=
  ∀ n, P1593470627279668987.a n = A359042 n

end A359042

/-!
# A359043: Sum of adjusted partial sums of the n-th composition in standard order (A066099). Row sums of A242628.

The programs for A359043, there is no canonical definition to state claims against.
-/

/-! ## A359043.P8970863531468187825

`A281392(Δ[n²])-1`
-/

namespace A359043.P8970863531468187825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A359043.P8970863531468187825

/-! ## A359043.P7061560130699268820

`A161511(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A359043.P7061560130699268820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A359043.P7061560130699268820

/-! ## A359043.P3107578483434343618

`A161511(∑[∏{p}[2*n, n*val(#², 2)]]-n)-1`
-/

namespace A359043.P3107578483434343618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (∑ j ∈ Finset.range (n + 1), f1 j - n) - 1

end

end A359043.P3107578483434343618

/-! ## A359043.P12278295408298357076

`A056239(A163511(n))`
-/

namespace A359043.P12278295408298357076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A163511 n).toNat

end

end A359043.P12278295408298357076

/-! ## A359043.P17942035316404529570

`A056239(A253565(n))`
-/

namespace A359043.P17942035316404529570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A253565 n).toNat

end

end A359043.P17942035316404529570

/-! ## A359043.P5568822590766808686

`A227183(A180200(n))`
-/

namespace A359043.P5568822590766808686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A180200 n).toNat

end

end A359043.P5568822590766808686

/-! ## A359043.P12845682331188253654

`A243503(A253563(n))`
-/

namespace A359043.P12845682331188253654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A253563 n).toNat

end

end A359043.P12845682331188253654

/-! ## A359043.P14617400364565527971

`A302039(A252755(n))`
-/

namespace A359043.P14617400364565527971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A252755 n).toNat

end

end A359043.P14617400364565527971

/-! ## A359043.P13719634062831657327

`A227183(A341916(n))`
-/

namespace A359043.P13719634062831657327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A341916 n).toNat

end

end A359043.P13719634062831657327

/-! ## A359043.P13279630914902555492

`A243503(A005940(n+1))`
-/

namespace A359043.P13279630914902555492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A005940 (n + 1)).toNat

end

end A359043.P13279630914902555492

/-!
# A359044: Primes p such that primepi(p)-1 divides p-1.

The programs for A359044, there is no canonical definition to state claims against.
-/

/-! ## A359044.P7500975083105865731

`p?[A307712(n+1)]`
-/

namespace A359044.P7500975083105865731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359044.P7500975083105865731

/-! ## A359044.P15038699112197224727

`p?[A057809(n+1)+1]`
-/

namespace A359044.P15038699112197224727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359044.P15038699112197224727

/-! ## A359044.P2020883373676469229

`p?[A087238(n+1)+a(n-1)]` with `a(0)=3`
-/

namespace A359044.P2020883373676469229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A087238 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359044.P2020883373676469229

/-! ## A359044.P13967142573187926853

`p?[A058011(n)+A054977(n)]`
-/

namespace A359044.P13967142573187926853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058011 n + A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359044.P13967142573187926853

/-! ## A359044.P9950571965228152023

`p?[A151878(n)+A058011(n)+1]`
-/

namespace A359044.P9950571965228152023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A058011 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A359044.P9950571965228152023

/-!
# A359045: a(n) = Sum_{1<=i

The programs for A359045, there is no canonical definition to state claims against.
-/

/-! ## A359045.P14279475037073689155

`A213626(n)-A213786(n)`
-/

namespace A359045.P14279475037073689155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213626 n - A213786 n

end

end A359045.P14279475037073689155

/-! ## A359045.P8194361210263776676

`A213626(n)-(A099392(A020986(n))-A008619(n))`
-/

namespace A359045.P8194361210263776676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213626 n - (A099392 (A020986 n).toNat - A008619 n)

end

end A359045.P8194361210263776676

/-! ## A359045.P10387896399744307326

`A213626(n)-(A099392(A020986(n))-A065033(n+1))`
-/

namespace A359045.P10387896399744307326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213626 n - (A099392 (A020986 n).toNat - A065033 (n + 1))

end

end A359045.P10387896399744307326

/-!
# A359046: Number of distinct regions among all circles that can be constructed on vertices of an n-sided regular polygon, using only a compass.

The programs for A359046, there is no canonical definition to state claims against.
-/

/-! ## A359046.P13447164420448374456

`A343347(A042877(n)+A003415(3*n+2))`
-/

namespace A359046.P13447164420448374456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 (A042877 n + A003415 (3 * n + 2)).toNat

end

end A359046.P13447164420448374456

/-! ## A359046.P8425909649793838932

`A339564(A001250(n)*A048320(3*(n+1)))`
-/

namespace A359046.P8425909649793838932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (A001250 n * A048320 (3 * (n + 1))).toNat

end

end A359046.P8425909649793838932

/-!
# A359047: Number of distinct edges among all circles that can be constructed on vertices of an n-sided regular polygon, using only a compass.

The programs for A359047, there is no canonical definition to state claims against.
-/

/-! ## A359047.P6486442451419975135

`A001223(A100262(n))*A191970(n)`
-/

namespace A359047.P6486442451419975135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A100262 n).toNat * A191970 n

end

end A359047.P6486442451419975135

/-! ## A359047.P11940576497381371932

`A066426(A359083(n+1)+A220747(n))`
-/

namespace A359047.P11940576497381371932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (A359083 (n + 1) + A220747 n).toNat

end

end A359047.P11940576497381371932

/-!
# A359048: a(n) is the minimum denominator d such that the decimal expansion of n/d is eventually periodic with periodicity not equal to zero.

The programs for A359048, there is no canonical definition to state claims against.
-/

/-! ## A359048.P7988261661985434779

`A196437(∩[A250120(2*(n+1)), A008587(3*(n+1))])`
-/

namespace A359048.P7988261661985434779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196437 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A359048.P7988261661985434779

/-! ## A359048.P8188641735365366537

`A055874(A008602(2*(n+1)))+1`
-/

namespace A359048.P8188641735365366537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A008602 (2 * (n + 1))).toNat + 1

end

end A359048.P8188641735365366537

/-! ## A359048.P14895263380086004416

`A007978(40*(n+1))`
-/

namespace A359048.P14895263380086004416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (40 * (n + 1))

end

end A359048.P14895263380086004416

/-! ## A359048.P5638228415934329737

`A337686(20*2*(n+1))`
-/

namespace A359048.P5638228415934329737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (20 * (2 * (n + 1)))

end

end A359048.P5638228415934329737

/-! ## A359048.P5274937658232035853

`A199968(2*A008592(2*(n+1)))`
-/

namespace A359048.P5274937658232035853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (2 * A008592 (2 * (n + 1))).toNat

end

end A359048.P5274937658232035853

/-! ## A359048.P2642786162912954077

`A199968(5*A008586(2*(n+1)))`
-/

namespace A359048.P2642786162912954077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (5 * A008586 (2 * (n + 1))).toNat

end

end A359048.P2642786162912954077

/-! ## A359048.P8546888858574335423

`A055874(Δ[A033583(2*n+1)])+1`
-/

namespace A359048.P8546888858574335423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (f1 (n + 1) - f1 n).toNat + 1

end

end A359048.P8546888858574335423

/-!
# A359050: a(n) is the least k such that fusc(k) + fusc(k+1) = n, where "fusc" is Stern's diatomic series (A002487).

The programs for A359050, there is no canonical definition to state claims against.
-/

/-! ## A359050.P6873994175762384803

`A020950(n+1)/2`
-/

namespace A359050.P6873994175762384803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020950 (n + 1) : ℚ) / 2

end

end A359050.P6873994175762384803

/-! ## A359050.P15647311930966454184

`floor(A020946(n+1)/2)`
-/

namespace A359050.P15647311930966454184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020946 (n + 1) : ℚ) / 2⌋

end

end A359050.P15647311930966454184

/-! ## A359050.P16874152986089711322

`(A020946(A000027(n+1))-1)/2`
-/

namespace A359050.P16874152986089711322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020946 (A000027 (n + 1)).toNat - 1 : ℚ) / 2

end

end A359050.P16874152986089711322

/-! ## A359050.P11494763009170229818

`(A020946(n+1)-A033999(2*n))/2`
-/

namespace A359050.P11494763009170229818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020946 (n + 1) - A033999 (2 * n) : ℚ) / 2

end

end A359050.P11494763009170229818

/-! ## A359050.P6625157665631111252

`(A020946(n+1)-1)/A007978(2*n+1)`
-/

namespace A359050.P6625157665631111252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020946 (n + 1) - 1 : ℚ) / (A007978 (2 * n + 1) : ℚ)

end

end A359050.P6625157665631111252

/-! ## A359050.P5278147719312665941

`(A033999(2*n+1)+A020946(n+1))/2`
-/

namespace A359050.P5278147719312665941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + A020946 (n + 1) : ℚ) / 2

end

end A359050.P5278147719312665941

/-! ## A359050.P16452446908467022066

`A001281(A020950(n+1))`
-/

namespace A359050.P16452446908467022066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A020950 (n + 1)).toNat

end

end A359050.P16452446908467022066

/-! ## A359050.P15652387521501864992

`A004524(A020946(n+1))`
-/

namespace A359050.P15652387521501864992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A020946 (n + 1)).toNat

end

end A359050.P15652387521501864992

/-! ## A359050.P17238881530811259266

`A029578(A020946(n+1)-1)`
-/

namespace A359050.P17238881530811259266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A020946 (n + 1) - 1).toNat

end

end A359050.P17238881530811259266

/-! ## A359050.P9987373418779383474

`A087734(A020953(n+1)/2)`
-/

namespace A359050.P9987373418779383474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (SequenceMachineLib.roundAway ((A020953 (n + 1) : ℚ) / 2)).toNat

end

end A359050.P9987373418779383474

/-! ## A359050.P185570341218772513

`A359051(A005728(n))`
-/

namespace A359050.P185570341218772513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359051 (A005728 n).toNat

end

end A359050.P185570341218772513

/-!
# A359053: a(n) = Sum_{d|n} sigma_d(d)^(n/d).

The programs for A359053, there is no canonical definition to state claims against.
-/

/-! ## A359053.P15192665461537154626

`or(A139623(3*n+1), A321141(n+1))`
-/

namespace A359053.P15192665461537154626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139623 (3 * n + 1)) (A321141 (n + 1))

end

end A359053.P15192665461537154626

/-!
# A359058: a(n) = squared distance to the origin of the n-th vertex on a counterclockwise undulating spiral in a square grid.

The programs for A359058, the canonical program `A359058.P3007470535350621719` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359058 has offset 0).

The definition of A359058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359058.P3007470535350621719

`A329116(round(n/2))²+A180714(A004526(n))²`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359058

/-- `A329116(round(n/2))²+A180714(A004526(n))²` -/
def P3007470535350621719.Spec : Prop :=
  ∀ n, P3007470535350621719.a n = A359058 n

theorem P3007470535350621719.correct : P3007470535350621719.Spec := by
  intro n
  simp only [A359058]

end A359058

/-! ## A359058.P9978032466678272684

`A180714(A140106(n+2))²+A359216(n)²`
-/

namespace A359058.P9978032466678272684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A140106 (n + 2)).toNat ^ 2 + A359216 n ^ 2

end

end A359058.P9978032466678272684

namespace A359058

/-- `A180714(A140106(n+2))²+A359216(n)²` -/
def P9978032466678272684.Spec : Prop :=
  ∀ n, P9978032466678272684.a n = A359058 n

end A359058

/-! ## A359058.P1903947088572386235

`A180714(A140106(n+2))²+A329116(round(n/2))²`
-/

namespace A359058.P1903947088572386235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A140106 (n + 2)).toNat ^ 2 + A329116 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat ^ 2

end

end A359058.P1903947088572386235

namespace A359058

/-- `A180714(A140106(n+2))²+A329116(round(n/2))²` -/
def P1903947088572386235.Spec : Prop :=
  ∀ n, P1903947088572386235.a n = A359058 n

end A359058

/-! ## A359058.P16540769557341477117

`A180714(A002265(2*n))²+A329116(round(n/2))²`
-/

namespace A359058.P16540769557341477117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A002265 (2 * n)).toNat ^ 2 + A329116 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat ^ 2

end

end A359058.P16540769557341477117

namespace A359058

/-- `A180714(A002265(2*n))²+A329116(round(n/2))²` -/
def P16540769557341477117.Spec : Prop :=
  ∀ n, P16540769557341477117.a n = A359058 n

end A359058

/-! ## A359058.P16926221872446572717

`A336336(A334619(n+1))`
-/

namespace A359058.P16926221872446572717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (A334619 (n + 1)).toNat

end

end A359058.P16926221872446572717

namespace A359058

/-- `A336336(A334619(n+1))` -/
def P16926221872446572717.Spec : Prop :=
  ∀ n, P16926221872446572717.a n = A359058 n

end A359058

/-! ## A359058.P3582170017338384180

`A274923(A334619(n+1))²+A329116(round(n/2))²`
-/

namespace A359058.P3582170017338384180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A334619 (n + 1)).toNat ^ 2 + A329116 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat ^ 2

end

end A359058.P3582170017338384180

namespace A359058

/-- `A274923(A334619(n+1))²+A329116(round(n/2))²` -/
def P3582170017338384180.Spec : Prop :=
  ∀ n, P3582170017338384180.a n = A359058 n

end A359058

/-!
# A359059: Numbers k such that phi(k) + rad(k) + psi(k) is a multiple of 3.

The programs for A359059, there is no canonical definition to state claims against.
-/

/-! ## A359059.P3903607231891863811

`∪[A000040(n+1), A359062(n+1)]`
-/

namespace A359059.P3903607231891863811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359059.P3903607231891863811

/-! ## A359059.P11583229339925455907

`∪[A008578(n+1), A359062(n+1)]`
-/

namespace A359059.P11583229339925455907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359059.P11583229339925455907

/-! ## A359059.P14815872781787126173

`A130091(lt[A355732(n+1), A355732(2*n+1)])`
-/

namespace A359059.P14815872781787126173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355732 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359059.P14815872781787126173

/-!
# A359062: Nonprime terms of A359059.

The programs for A359062, there is no canonical definition to state claims against.
-/

/-! ## A359062.P10971711958119211207

`filter[A359059(n+1), A005171(#)]`
-/

namespace A359062.P10971711958119211207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A359062.P10971711958119211207

/-! ## A359062.P11120865459067398559

`∩[A289553(n+1), A359059(n+1)]`
-/

namespace A359062.P11120865459067398559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359062.P11120865459067398559

/-! ## A359062.P8555435691458787453

`∩[A264828(n+1), A359059(n+1)]`
-/

namespace A359062.P8555435691458787453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359062.P8555435691458787453

/-! ## A359062.P17460026199447679587

`∩[A018252(n+1), A359059(n+1)]`
-/

namespace A359062.P17460026199447679587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359062.P17460026199447679587

/-! ## A359062.P11924168667299610297

`∩[A056653(n+1), A359059(n+1)]`
-/

namespace A359062.P11924168667299610297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359062.P11924168667299610297

/-! ## A359062.P13166300369688167126

`∩[A141468(n+1), A359059(n+1)]`
-/

namespace A359062.P13166300369688167126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359062.P13166300369688167126

/-!
# A359065: Lexicographically earliest sequence of distinct positive composite integers such that no subsequence sums to a prime and in which all terms are coprime.

The programs for A359065, there is no canonical definition to state claims against.
-/

/-! ## A359065.P378955707379427583

`p?[A357368(3*n+1)]*A109346(n+1)`
-/

namespace A359065.P378955707379427583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357368 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A109346 (n + 1)

end

end A359065.P378955707379427583

/-!
# A359066: a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n,k)*binomial(n-1-k,floor((n-1)/2) - k).

The programs for A359066, the canonical program `A359066.P7221224019361326544` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359066 has offset 1).

The definition of A359066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359066.P7221224019361326544

`A193844(A266725(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A359066

/-- `A193844(A266725(n))` -/
def P7221224019361326544.Spec : Prop :=
  ∀ n, P7221224019361326544.a n = A359066 (n + 1)

theorem P7221224019361326544.correct : P7221224019361326544.Spec := by
  intro n
  simp only [A359066, Nat.add_sub_cancel]

end A359066

/-! ## A359066.P1535490909283761908

`A193817(A007590(n+1))`
-/

namespace A359066.P1535490909283761908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (A007590 (n + 1)).toNat

end

end A359066.P1535490909283761908

namespace A359066

/-- `A193817(A007590(n+1))` -/
def P1535490909283761908.Spec : Prop :=
  ∀ n, P1535490909283761908.a n = A359066 (n + 1)

end A359066

/-! ## A359066.P1633230413574298814

`A119258(A213037(n+1))`
-/

namespace A359066.P1633230413574298814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A213037 (n + 1)).toNat

end

end A359066.P1633230413574298814

namespace A359066

/-- `A119258(A213037(n+1))` -/
def P1633230413574298814.Spec : Prop :=
  ∀ n, P1633230413574298814.a n = A359066 (n + 1)

end A359066

/-! ## A359066.P16090166538551143944

`A119258(A047838(n+2))`
-/

namespace A359066.P16090166538551143944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A047838 (n + 2)).toNat

end

end A359066.P16090166538551143944

namespace A359066

/-- `A119258(A047838(n+2))` -/
def P16090166538551143944.Spec : Prop :=
  ∀ n, P16090166538551143944.a n = A359066 (n + 1)

end A359066

/-! ## A359066.P4396115001890624241

`A112857(A087327(n+2))`
-/

namespace A359066.P4396115001890624241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A087327 (n + 2)).toNat

end

end A359066.P4396115001890624241

namespace A359066

/-- `A112857(A087327(n+2))` -/
def P4396115001890624241.Spec : Prop :=
  ∀ n, P4396115001890624241.a n = A359066 (n + 1)

end A359066

/-!
# A359067: a(2*n) = Sum_{k=0..n-1} binomial(2*n,k) binomial(2*n-1-k, n-1-k). a(2*n+1) = (Sum_{k=0..n} binomial(2*n+1,k) binomial(2*n-k, n-k)) - binomial(2*n-1, n).

The programs for A359067, there is no canonical definition to state claims against.
-/

/-! ## A359067.P2239210542568677581

`A087052(A000081(n+2))-A353846(n+4)`
-/

namespace A359067.P2239210542568677581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A000081 (n + 2)).toNat - A353846 (n + 4)

end

end A359067.P2239210542568677581

/-!
# A359068: Number of 1-sided strip polyominoes with n cells.

The programs for A359068, there is no canonical definition to state claims against.
-/

/-! ## A359068.P16059678244317766990

`A208938(n+1)+A088526(A208957(n+2))`
-/

namespace A359068.P16059678244317766990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208938 (n + 1) + A088526 (A208957 (n + 2)).toNat

end

end A359068.P16059678244317766990

/-! ## A359068.P3213418120280568158

`A347645(A054151(n))`
-/

namespace A359068.P3213418120280568158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (A054151 n).toNat

end

end A359068.P3213418120280568158

/-! ## A359068.P3294228502126191831

`A069623(A178719(n)+A001317(n))`
-/

namespace A359068.P3294228502126191831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A178719 n + A001317 n).toNat

end

end A359068.P3294228502126191831

/-! ## A359068.P9147281128637501703

`A116939(A000108(n)*A279785(n))`
-/

namespace A359068.P9147281128637501703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A000108 n * A279785 n).toNat

end

end A359068.P9147281128637501703

/-!
# A359073: Sum of square end-to-end displacements over all n-step self-avoiding walks of A359709.

The programs for A359073, there is no canonical definition to state claims against.
-/

/-! ## A359073.P8180093518192211989

`A145382(A151280(n+1))`
-/

namespace A359073.P8180093518192211989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145382 (A151280 (n + 1)).toNat

end

end A359073.P8180093518192211989

/-!
# A359075: Numbers that do not have two divisors with an equal sum of digits.

The programs for A359075, there is no canonical definition to state claims against.
-/

/-! ## A359075.P17927968645947343510

`comp[A359074(n+1)-1]+1`
-/

namespace A359075.P17927968645947343510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359074 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A359075.P17927968645947343510

/-! ## A359075.P8379178765044428059

`∩[comp[A359074(n+1)], A359077(n+1)]`
-/

namespace A359075.P8379178765044428059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A359075.P8379178765044428059

/-! ## A359075.P18272534917780977022

`eq[char[A359074(n+1)], A151933(n)]`
-/

namespace A359075.P18272534917780977022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A359075.P18272534917780977022

/-! ## A359075.P14685859516626788274

`∩[comp[A359074(n+1)], A090109(n+1)]`
-/

namespace A359075.P14685859516626788274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359074 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A359075.P14685859516626788274

/-! ## A359075.P526574370439367807

`lt[A098488(A327859(n)), A069877(n)]`
-/

namespace A359075.P526574370439367807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (A327859 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359075.P526574370439367807

/-!
# A359076: Numbers that have at least two proper divisors with an equal sum of digits.

The programs for A359076, there is no canonical definition to state claims against.
-/

/-! ## A359076.P7467670298040164144

`lt[A119715(n+1), Δ[A261735(n+3)]]`
-/

namespace A359076.P7467670298040164144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119715 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261735 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359076.P7467670298040164144

/-! ## A359076.P8058743018239870776

`lt[A119715(n+1), A000105(A294442(n+1))]`
-/

namespace A359076.P8058743018239870776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (A294442 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359076.P8058743018239870776

/-! ## A359076.P8445844730755120917

`lt[A119715(n+1), A137278(A000010(3*n+1))]`
-/

namespace A359076.P8445844730755120917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A000010 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359076.P8445844730755120917

/-! ## A359076.P14306291316295279138

`lt[A325273(A052222(n+5)), A115576(2*n+3)]`
-/

namespace A359076.P14306291316295279138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A052222 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359076.P14306291316295279138

/-!
# A359077: Numbers that do not have two proper divisors with an equal sum of digits.

The programs for A359077, there is no canonical definition to state claims against.
-/

/-! ## A359077.P17849780276464039727

`eq[char[A359076(n+1)], A132350((n+1)²)]`
-/

namespace A359077.P17849780276464039727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A359077.P17849780276464039727

/-! ## A359077.P4653780975079653443

`lt[char[A359076(n+1)], A066247((n+1)²)]`
-/

namespace A359077.P4653780975079653443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359076 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A359077.P4653780975079653443

/-! ## A359077.P2881470752017717847

`lt[Δ[A261735(n+3)], A119715(n+1)]`
-/

namespace A359077.P2881470752017717847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261735 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A359077.P2881470752017717847

/-! ## A359077.P6416777675976424550

`lt[A316655(n+1), A319392(A171868(n+1))]`
-/

namespace A359077.P6416777675976424550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319392 (A171868 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359077.P6416777675976424550

/-! ## A359077.P17286770816430443565

`lt[A333627(2*n+3), A000330(A250030(2*n+9))]`
-/

namespace A359077.P17286770816430443565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A250030 (2 * n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359077.P17286770816430443565

/-!
# A359080: Numbers k such that A246600(k) = A000005(k).

The programs for A359080, there is no canonical definition to state claims against.
-/

/-! ## A359080.P14850383285624021508

`record[A218388(n+1)%(n+2)]`
-/

namespace A359080.P14850383285624021508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218388 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359080.P14850383285624021508

/-! ## A359080.P3021014342691244837

`eq[n, A218388(A028310(n))]`
-/

namespace A359080.P3021014342691244837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218388 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359080.P3021014342691244837

/-! ## A359080.P14720674741320809732

`record[gcd(A153733(n)+1, A218388(n+1))]`
-/

namespace A359080.P14720674741320809732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153733 n + 1) (A218388 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359080.P14720674741320809732

/-! ## A359080.P11957135449353196561

`eq[A023443(n)+2, A218388(n+1)]+1`
-/

namespace A359080.P11957135449353196561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359080.P11957135449353196561

/-! ## A359080.P10191511498017657036

`eq[A233969(A218388(n+1)), A233969(n+1)]+1`
-/

namespace A359080.P10191511498017657036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233969 (A218388 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359080.P10191511498017657036

/-!
# A359081: a(n) is the least number k such that A246600(k) = n, and -1 if no such k exists.

The programs for A359081, there is no canonical definition to state claims against.
-/

/-! ## A359081.P18024127038060311859

`A000265(A000219(2*n)*A000984(n))`
-/

namespace A359081.P18024127038060311859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000219 (2 * n) * A000984 n).toNat

end

end A359081.P18024127038060311859

/-!
# A359082: Indices of records in A246600.

The programs for A359082, there is no canonical definition to state claims against.
-/

/-! ## A359082.P53584242907831627

`A255689(A359083(n+1))`
-/

namespace A359082.P53584242907831627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255689 (A359083 (n + 1)).toNat

end

end A359082.P53584242907831627

/-! ## A359082.P13908799199808622400

`A359081(record[A246600(n+1)])`
-/

namespace A359082.P13908799199808622400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359081 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359082.P13908799199808622400

/-! ## A359082.P1825489470812152495

`∩[A067562(n+1), A089633(n)]`
-/

namespace A359082.P1825489470812152495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359082.P1825489470812152495

/-!
# A359083: Numbers k such that A246600(k) = A000005(k) and A000005(k) sets a new record.

The programs for A359083, there is no canonical definition to state claims against.
-/

/-! ## A359083.P16706425438531037065

`A175298(A151165(n))`
-/

namespace A359083.P16706425438531037065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A151165 n).toNat

end

end A359083.P16706425438531037065

/-! ## A359083.P3689547444129974415

`A218388(A150851(n))`
-/

namespace A359083.P3689547444129974415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218388 (A150851 n).toNat

end

end A359083.P3689547444129974415

/-! ## A359083.P10019010580052631003

`A175298(∑[A366084(n)])`
-/

namespace A359083.P10019010580052631003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A359083.P10019010580052631003

/-!
# A359084: Numbers k such that A246601(k) > 2*k.

The programs for A359084, there is no canonical definition to state claims against.
-/

/-! ## A359084.P10104769724314925313

`∩[A023758(n+1), A381550(n+1)]`
-/

namespace A359084.P10104769724314925313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359084.P10104769724314925313

/-! ## A359084.P325900950352812654

`2^n*A075957(A228913(n))`
-/

namespace A359084.P325900950352812654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075957 (A228913 n).toNat

end

end A359084.P325900950352812654

/-! ## A359084.P15636435105241577101

`2^(A244112(n)-A097601(A004186(n))+2)-2^n`
-/

namespace A359084.P15636435105241577101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A244112 n - A097601 (A004186 n).toNat + 2 : ℤ) - (2 ^ n : ℚ)

end

end A359084.P15636435105241577101

/-! ## A359084.P8629396078211473385

`2^(A045918(n+1)+1)-2^n`
-/

namespace A359084.P8629396078211473385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A045918 (n + 1) + 1 : ℤ) - (2 ^ n : ℚ)

end

end A359084.P8629396078211473385

/-! ## A359084.P5034688008564843063

`13*A008597(A175805(n))`
-/

namespace A359084.P5034688008564843063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A008597 (A175805 n).toNat

end

end A359084.P5034688008564843063

/-!
# A359087: a(n) is equal to the last point of a reverse pyramid summation with base 1, 2, 3, ..., n-2, n-1, n, n-1, n-2, ..., 3, 2, 1.

The programs for A359087, there is no canonical definition to state claims against.
-/

/-! ## A359087.P10357144916140041190

`(n+1)*3^n-2*A132894(n)`
-/

namespace A359087.P10357144916140041190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 3 ^ n : ℤ) - 2 * A132894 n

end

end A359087.P10357144916140041190

/-! ## A359087.P1005943450869679843

`A360145(∑[n+1])`
-/

namespace A359087.P1005943450869679843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360145 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359087.P1005943450869679843

/-! ## A359087.P15720530573663150443

`record[A360145(record[A360173(n+1)])]`
-/

namespace A359087.P15720530573663150443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360173 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360145 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359087.P15720530573663150443

/-! ## A359087.P1596471211332267191

`record[A360145(n+1)/A038622(n)]`
-/

namespace A359087.P1596471211332267191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360145 (n + 1) : ℚ) / (A038622 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359087.P1596471211332267191

/-! ## A359087.P8617565487546265512

`record[A360145(n+1)/A093644(n)]`
-/

namespace A359087.P8617565487546265512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360145 (n + 1) : ℚ) / (A093644 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359087.P8617565487546265512

/-!
# A359094: a(n) is the smallest square pyramidal number divisible by exactly n square pyramidal numbers.

The programs for A359094, there is no canonical definition to state claims against.
-/

/-! ## A359094.P5228103746740374630

`A000330(A359095(n+1))`
-/

namespace A359094.P5228103746740374630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A359095 (n + 1)).toNat

end

end A359094.P5228103746740374630

/-!
# A359096: The sum of the numbers on the perimeter of the n X n diamond frame, located at the top of the numerical pyramid containing the positive integers in natural order.

The programs for A359096, the canonical program `A359096.P10254011093531424028` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359096 has offset 1).

The definition of A359096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359096.P2284008076114454916

`floor(3/acot(n))+∑[8*n²]`
-/

namespace A359096.P2284008076114454916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A359096.P2284008076114454916

namespace A359096

/-- `floor(3/acot(n))+∑[8*n²]` -/
def P2284008076114454916.Spec : Prop :=
  ∀ n, P2284008076114454916.a n = A359096 (n + 1)

end A359096

/-! ## A359096.P2531606484839834573

`ceil(∑[round(16*n/acot(n))+1]/2)`
-/

namespace A359096.P2531606484839834573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((16 * n : ℝ) / SequenceMachineLib.acot (n : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A359096.P2531606484839834573

namespace A359096

/-- `ceil(∑[round(16*n/acot(n))+1]/2)` -/
def P2531606484839834573.Spec : Prop :=
  ∀ n, P2531606484839834573.a n = A359096 (n + 1)

end A359096

/-! ## A359096.P7721228256694559267

`comp[2*(n+1)]+∑[8*n²+1]`
-/

namespace A359096.P7721228256694559267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A359096.P7721228256694559267

namespace A359096

/-- `comp[2*(n+1)]+∑[8*n²+1]` -/
def P7721228256694559267.Spec : Prop :=
  ∀ n, (P7721228256694559267.a n : ℤ) = A359096 (n + 1)

end A359096

/-! ## A359096.P10254011093531424028

`∑[A008527(n)+2-C(2, C(n, n²))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A359096

/-- `∑[A008527(n)+2-C(2, C(n, n²))]` -/
def P10254011093531424028.Spec : Prop :=
  ∀ n, P10254011093531424028.a n = A359096 (n + 1)

theorem P10254011093531424028.correct : P10254011093531424028.Spec := by
  intro n
  simp only [A359096, Nat.add_sub_cancel]

end A359096

/-! ## A359096.P16942478570536075027

`∑[A005893(2*n)+floor(atan(n))]`
-/

namespace A359096.P16942478570536075027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) + ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359096.P16942478570536075027

namespace A359096

/-- `∑[A005893(2*n)+floor(atan(n))]` -/
def P16942478570536075027.Spec : Prop :=
  ∀ n, P16942478570536075027.a n = A359096 (n + 1)

end A359096

/-! ## A359096.P10841261282557014691

`A023535(2*(n+1)²)`
-/

namespace A359096.P10841261282557014691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023535 (2 * (n + 1) ^ 2)

end

end A359096.P10841261282557014691

namespace A359096

/-- `A023535(2*(n+1)²)` -/
def P10841261282557014691.Spec : Prop :=
  ∀ n, P10841261282557014691.a n = A359096 (n + 1)

end A359096

/-!
# A359098: Numbers with exactly four nonzero decimal digits and not ending with 0.

The programs for A359098, there is no canonical definition to state claims against.
-/

/-! ## A359098.P808198073751920415

`A290526(A139401(3*n+2))+A007095(n)`
-/

namespace A359098.P808198073751920415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290526 (A139401 (3 * n + 2)).toNat + A007095 n

end

end A359098.P808198073751920415

/-! ## A359098.P11371002610996557814

`A162672(A359651(n+1))`
-/

namespace A359098.P11371002610996557814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A359651 (n + 1)).toNat

end

end A359098.P11371002610996557814

/-! ## A359098.P7979814579333140285

`A136400(A114615(2*n+3))+A007095(n)`
-/

namespace A359098.P7979814579333140285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A114615 (2 * n + 3)).toNat + A007095 n

end

end A359098.P7979814579333140285

/-! ## A359098.P8123480973043583559

`A136400(A114615(2*n+3))+lt[A054055(n), 9]`
-/

namespace A359098.P8123480973043583559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A114615 (2 * n + 3)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A359098.P8123480973043583559

/-! ## A359098.P16231862041067105547

`A136400(A114615(2*n+3))+record[n-A136400(n)]`
-/

namespace A359098.P16231862041067105547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A114615 (2 * n + 3)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359098.P16231862041067105547

/-!
# A359099: a(n) = (1/6) * Sum_{d|n} phi(7 * d).

The programs for A359099, the canonical program `A359099.P11950995209618868671` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359099 has offset 1).

The definition of A359099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359099.P7246626262836841846

`∑{d}[n+1, A359102(#)]`
-/

namespace A359099.P7246626262836841846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359102 d

end

end A359099.P7246626262836841846

namespace A359099

/-- `∑{d}[n+1, A359102(#)]` -/
def P7246626262836841846.Spec : Prop :=
  ∀ n, P7246626262836841846.a n = A359099 (n + 1)

end A359099

/-! ## A359099.P11950995209618868671

`A088842(n+1)*A242603(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A359099

/-- `A088842(n+1)*A242603(n+1)` -/
def P11950995209618868671.Spec : Prop :=
  ∀ n, P11950995209618868671.a n = A359099 (n + 1)

theorem P11950995209618868671.correct : P11950995209618868671.Spec := by
  intro n
  simp only [A359099, Nat.add_sub_cancel]

end A359099

/-! ## A359099.P8746646685961527983

`∑{d}[n+1, A000010(#)*A373217((n+1)/#)]`
-/

namespace A359099.P8746646685961527983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A373217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359099.P8746646685961527983

namespace A359099

/-- `∑{d}[n+1, A000010(#)*A373217((n+1)/#)]` -/
def P8746646685961527983.Spec : Prop :=
  ∀ n, P8746646685961527983.a n = A359099 (n + 1)

end A359099

/-! ## A359099.P14595135804089601622

`∑{d}[n+1, A059841(#-1)*A372678((n+1)/#)]`
-/

namespace A359099.P14595135804089601622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A372678 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359099.P14595135804089601622

namespace A359099

/-- `∑{d}[n+1, A059841(#-1)*A372678((n+1)/#)]` -/
def P14595135804089601622.Spec : Prop :=
  ∀ n, P14595135804089601622.a n = A359099 (n + 1)

end A359099

/-! ## A359099.P12488315031238374211

`A000203(A268354(n+1))*A242603(n+1)`
-/

namespace A359099.P12488315031238374211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A268354 (n + 1)).toNat * A242603 (n + 1)

end

end A359099.P12488315031238374211

namespace A359099

/-- `A000203(A268354(n+1))*A242603(n+1)` -/
def P12488315031238374211.Spec : Prop :=
  ∀ n, P12488315031238374211.a n = A359099 (n + 1)

end A359099

/-! ## A359099.P439293802242409373

`A047306(n+1)+A242603(n+1)-A047306(A242603(n+1))`
-/

namespace A359099.P439293802242409373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047306 (n + 1) + (A242603 (n + 1) - A047306 (A242603 (n + 1)).toNat)

end

end A359099.P439293802242409373

namespace A359099

/-- `A047306(n+1)+A242603(n+1)-A047306(A242603(n+1))` -/
def P439293802242409373.Spec : Prop :=
  ∀ n, P439293802242409373.a n = A359099 (n + 1)

end A359099

/-! ## A359099.P18173292521167932964

`A000203(n+1)*A242603(n+1)/A000203(A242603(n+1))`
-/

namespace A359099.P18173292521167932964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A242603 (n + 1) : ℚ) / (A000203 (A242603 (n + 1)).toNat : ℚ)

end

end A359099.P18173292521167932964

namespace A359099

/-- `A000203(n+1)*A242603(n+1)/A000203(A242603(n+1))` -/
def P18173292521167932964.Spec : Prop :=
  ∀ n, P18173292521167932964.a n = (A359099 (n + 1) : ℚ)

end A359099

