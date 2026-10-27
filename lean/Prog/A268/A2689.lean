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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268900: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268900, the canonical program `A268900.P15039982914417740740` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268900 has offset 1).

The definition of A268900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268900.P18132034532981847820

`A268905(2*(n+1))`
-/

namespace A268900.P18132034532981847820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268905 (2 * (n + 1))

end

end A268900.P18132034532981847820

namespace A268900

/-- `A268905(2*(n+1))` -/
def P18132034532981847820.Spec : Prop :=
  ∀ n, P18132034532981847820.a n = A268900 (n + 1)

end A268900

/-! ## A268900.P15039982914417740740

`6*A229582(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268900

/-- `6*A229582(n+1)` -/
def P15039982914417740740.Spec : Prop :=
  ∀ n, P15039982914417740740.a n = A268900 (n + 1)

theorem P15039982914417740740.correct : P15039982914417740740.Spec := by
  intro n
  simp only [A268900, Nat.add_sub_cancel]

end A268900

/-! ## A268900.P4086560847870722794

`4*A268622(2*n+1)`
-/

namespace A268900.P4086560847870722794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268622 (2 * n + 1)

end

end A268900.P4086560847870722794

namespace A268900

/-- `4*A268622(2*n+1)` -/
def P4086560847870722794.Spec : Prop :=
  ∀ n, P4086560847870722794.a n = A268900 (n + 1)

end A268900

/-! ## A268900.P3741873747723286305

`6*A229587(2*(n+1))`
-/

namespace A268900.P3741873747723286305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229587 (2 * (n + 1))

end

end A268900.P3741873747723286305

namespace A268900

/-- `6*A229587(2*(n+1))` -/
def P3741873747723286305.Spec : Prop :=
  ∀ n, P3741873747723286305.a n = A268900 (n + 1)

end A268900

/-! ## A268900.P12102116652092892301

`A229506(2*(n+1))/A083583(2*n+1)`
-/

namespace A268900.P12102116652092892301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229506 (2 * (n + 1)) : ℚ) / (A083583 (2 * n + 1) : ℚ)

end

end A268900.P12102116652092892301

namespace A268900

/-- `A229506(2*(n+1))/A083583(2*n+1)` -/
def P12102116652092892301.Spec : Prop :=
  ∀ n, P12102116652092892301.a n = (A268900 (n + 1) : ℚ)

end A268900

/-!
# A268901: Number of n X 5 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268901, there is no canonical definition to state claims against.
-/

/-! ## A268901.P14014365519671182634

`6*A229583(n+1)`
-/

namespace A268901.P14014365519671182634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229583 (n + 1)

end

end A268901.P14014365519671182634

/-! ## A268901.P13872097129243610564

`A268904(Δ[A264443(n)])`
-/

namespace A268901.P13872097129243610564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (f1 (n + 1) - f1 n).toNat

end

end A268901.P13872097129243610564

/-! ## A268901.P2754704307987378997

`A268904(A046691(n+3))`
-/

namespace A268901.P2754704307987378997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A046691 (n + 3)).toNat

end

end A268901.P2754704307987378997

/-! ## A268901.P12152557416827547441

`A268904(eq[4, A193592(n)])`
-/

namespace A268901.P12152557416827547441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268901.P12152557416827547441

/-! ## A268901.P11577060359813682325

`A268904(eq[5, A239144(n)])`
-/

namespace A268901.P11577060359813682325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268901.P11577060359813682325

/-!
# A268902: Number of n X 6 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268902, there is no canonical definition to state claims against.
-/

/-! ## A268902.P14538675018280215358

`6*A229584(n+1)`
-/

namespace A268902.P14538675018280215358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229584 (n + 1)

end

end A268902.P14538675018280215358

/-! ## A268902.P9066964888180280866

`A268969(n+1)-A233153(n+1)`
-/

namespace A268902.P9066964888180280866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268969 (n + 1) - A233153 (n + 1)

end

end A268902.P9066964888180280866

/-! ## A268902.P7693122964410197228

`A268969(n+1)-sqrt(A204103(2*n+1))`
-/

namespace A268902.P7693122964410197228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268969 (n + 1) : ℝ) - Real.sqrt (A204103 (2 * n + 1) : ℝ)

end

end A268902.P7693122964410197228

/-! ## A268902.P9466089806867485104

`A268969(n+1)-A233155(A052905(n+3))`
-/

namespace A268902.P9466089806867485104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268969 (n + 1) - A233155 (A052905 (n + 3)).toNat

end

end A268902.P9466089806867485104

/-! ## A268902.P16778291381973144450

`A268969(n+1)-A233155(A167499(n+5)-10)`
-/

namespace A268902.P16778291381973144450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268969 (n + 1) - A233155 (A167499 (n + 5) - 10).toNat

end

end A268902.P16778291381973144450

/-!
# A268903: Number of nX7 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268903, there is no canonical definition to state claims against.
-/

/-! ## A268903.P1695707832295856514

`6*A229585(n+1)`
-/

namespace A268903.P1695707832295856514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229585 (n + 1)

end

end A268903.P1695707832295856514

/-! ## A268903.P5011982801668162523

`A268970(n+1)-A233154(n+1)`
-/

namespace A268903.P5011982801668162523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268970 (n + 1) - A233154 (n + 1)

end

end A268903.P5011982801668162523

/-! ## A268903.P12605611432726434090

`A268970(n+1)-A233155(eq[6, A193592(n)])`
-/

namespace A268903.P12605611432726434090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268970 (n + 1) - A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268903.P12605611432726434090

/-! ## A268903.P16527432282424636655

`A268904(eq[4, A219347(n)])`
-/

namespace A268903.P16527432282424636655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268903.P16527432282424636655

/-! ## A268903.P3518022246451320112

`A268904(eq[6, A193592(n)])`
-/

namespace A268903.P3518022246451320112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268903.P3518022246451320112

/-!
# A268904: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268904, there is no canonical definition to state claims against.
-/

/-! ## A268904.P1116664472601435783

`A229586(n+1)*A267884(n)`
-/

namespace A268904.P1116664472601435783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (n + 1) * A267884 n

end

end A268904.P1116664472601435783

/-! ## A268904.P9264073654545767693

`A268971(n+1)-A233155(n+1)`
-/

namespace A268904.P9264073654545767693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (n + 1) - A233155 (n + 1)

end

end A268904.P9264073654545767693

/-! ## A268904.P4376808970245924402

`gcd(6, A167667(n))*A229586(n+1)`
-/

namespace A268904.P4376808970245924402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A167667 n) : ℤ) * A229586 (n + 1)

end

end A268904.P4376808970245924402

/-! ## A268904.P15711220117834658426

`A040006(A004526(n))*A229586(n+1)`
-/

namespace A268904.P15711220117834658426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A004526 n).toNat * A229586 (n + 1)

end

end A268904.P15711220117834658426

/-! ## A268904.P16991797994962472389

`A229586(n+1)*A266251(A004273(n))`
-/

namespace A268904.P16991797994962472389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (n + 1) * A266251 (A004273 n).toNat

end

end A268904.P16991797994962472389

/-! ## A268904.P11753466422904328363

`A040006(A294061(n+1))*A229586(n+1)`
-/

namespace A268904.P11753466422904328363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A294061 (n + 1)).toNat * A229586 (n + 1)

end

end A268904.P11753466422904328363

/-! ## A268904.P5061366413152257110

`A089353(A034856(n+1))*A229586(n+1)`
-/

namespace A268904.P5061366413152257110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A034856 (n + 1)).toNat * A229586 (n + 1)

end

end A268904.P5061366413152257110

/-! ## A268904.P1240158384953554107

`A040006(n²-n)*A229586(n+1)`
-/

namespace A268904.P1240158384953554107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (n ^ 2 - n) * A229586 (n + 1)

end

end A268904.P1240158384953554107

/-!
# A268905: Number of 2 X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268905, the canonical program `A268905.P12227018069875594241` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268905 has offset 1).

The definition of A268905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268905.P12227018069875594241

`6*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=36, a(2)=168, a(3)=696`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268905

/-- `6*a(n-1)-9*a(n-2)` -/
def P12227018069875594241.Spec : Prop :=
  ∀ n, P12227018069875594241.a n = A268905 (n + 1)

theorem P12227018069875594241.correct : P12227018069875594241.Spec := by
  intro n
  simp only [A268905, Nat.add_sub_cancel]

end A268905

/-! ## A268905.P9000807394175453105

`6*2*(round((n+4)*16*3^(n-3))-Δ[3^n])`
-/

namespace A268905.P9000807394175453105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (2 * (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A268905.P9000807394175453105

namespace A268905

/-- `6*2*(round((n+4)*16*3^(n-3))-Δ[3^n])` -/
def P9000807394175453105.Spec : Prop :=
  ∀ n, P9000807394175453105.a n = A268905 (n + 1)

end A268905

/-! ## A268905.P2981726376409873202

`lcm(2, 6*A229587(n+1))`
-/

namespace A268905.P2981726376409873202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (6 * A229587 (n + 1))

end

end A268905.P2981726376409873202

namespace A268905

/-- `lcm(2, 6*A229587(n+1))` -/
def P2981726376409873202.Spec : Prop :=
  ∀ n, (P2981726376409873202.a n : ℤ) = A268905 (n + 1)

end A268905

/-! ## A268905.P2562436109012964348

`abs(6*(A292482(n)+A292482(n)-A003946(n+1)))`
-/

namespace A268905.P2562436109012964348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 * (A292482 n + (A292482 n - A003946 (n + 1)))|

end

end A268905.P2562436109012964348

namespace A268905

/-- `abs(6*(A292482(n)+A292482(n)-A003946(n+1)))` -/
def P2562436109012964348.Spec : Prop :=
  ∀ n, P2562436109012964348.a n = A268905 (n + 1)

end A268905

/-! ## A268905.P14472349891699312124

`A229506(n+1)/A083583(n)`
-/

namespace A268905.P14472349891699312124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229506 (n + 1) : ℚ) / (A083583 n : ℚ)

end

end A268905.P14472349891699312124

namespace A268905

/-- `A229506(n+1)/A083583(n)` -/
def P14472349891699312124.Spec : Prop :=
  ∀ n, P14472349891699312124.a n = (A268905 (n + 1) : ℚ)

end A268905

/-! ## A268905.P9787604564644163524

`(A008776(n+2)-A008776(n))*A229587(n+1)/A083583(n)`
-/

namespace A268905.P9787604564644163524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008776 (n + 2) - A008776 n) * A229587 (n + 1) : ℚ) / (A083583 n : ℚ)

end

end A268905.P9787604564644163524

namespace A268905

/-- `(A008776(n+2)-A008776(n))*A229587(n+1)/A083583(n)` -/
def P9787604564644163524.Spec : Prop :=
  ∀ n, P9787604564644163524.a n = (A268905 (n + 1) : ℚ)

end A268905

/-!
# A268906: Number of 3 X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268906, there is no canonical definition to state claims against.
-/

/-! ## A268906.P11169872143519623355

`6*A229588(n+1)`
-/

namespace A268906.P11169872143519623355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229588 (n + 1)

end

end A268906.P11169872143519623355

/-! ## A268906.P8122944494329251528

`A268904(∑[n+2]+4)`
-/

namespace A268906.P8122944494329251528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268906.P8122944494329251528

/-! ## A268906.P5320978696066335418

`6*A229586(A167614(n+1))`
-/

namespace A268906.P5320978696066335418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229586 (A167614 (n + 1)).toNat

end

end A268906.P5320978696066335418

/-! ## A268906.P14501520047553352217

`A015600(n)*A268904(A167614(n+1))`
-/

namespace A268906.P14501520047553352217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A268904 (A167614 (n + 1)).toNat

end

end A268906.P14501520047553352217

/-! ## A268906.P6002156672754132746

`A016240(n)*A268904(A167614(n+1))`
-/

namespace A268906.P6002156672754132746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A268904 (A167614 (n + 1)).toNat

end

end A268906.P6002156672754132746

/-!
# A268907: Number of 4Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268907, there is no canonical definition to state claims against.
-/

/-! ## A268907.P5746551080337313253

`6*A229589(n+1)`
-/

namespace A268907.P5746551080337313253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229589 (n + 1)

end

end A268907.P5746551080337313253

/-! ## A268907.P9921055455235226582

`A268904(A141214(n)+7)`
-/

namespace A268907.P9921055455235226582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A141214 n + 7).toNat

end

end A268907.P9921055455235226582

/-! ## A268907.P9462611077866963653

`A268904(A052905(n)+9)`
-/

namespace A268907.P9462611077866963653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A052905 n + 9).toNat

end

end A268907.P9462611077866963653

/-! ## A268907.P9498825394191968356

`A268904(A055999(n)+10)`
-/

namespace A268907.P9498825394191968356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A055999 n + 10).toNat

end

end A268907.P9498825394191968356

/-! ## A268907.P11522371170346941164

`A268904(A167614(n+2)+1)`
-/

namespace A268907.P11522371170346941164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A167614 (n + 2) + 1).toNat

end

end A268907.P11522371170346941164

/-!
# A268908: Number of 5 X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268908, there is no canonical definition to state claims against.
-/

/-! ## A268908.P17038976680400432865

`6*A229590(n+1)`
-/

namespace A268908.P17038976680400432865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229590 (n + 1)

end

end A268908.P17038976680400432865

/-! ## A268908.P6599251528592613940

`A268904(A167499(n+3))`
-/

namespace A268908.P6599251528592613940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A167499 (n + 3)).toNat

end

end A268908.P6599251528592613940

/-! ## A268908.P16656747506973227497

`A268904(A056000(n)+15)`
-/

namespace A268908.P16656747506973227497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A056000 n + 15).toNat

end

end A268908.P16656747506973227497

/-! ## A268908.P6925082793301970383

`A268904(eq[7, A066657(n)])`
-/

namespace A268908.P6925082793301970383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268908.P6925082793301970383

/-! ## A268908.P14359786303170377011

`A268904(eq[6, A131818(n+1)])`
-/

namespace A268908.P14359786303170377011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268908.P14359786303170377011

/-!
# A268909: Number of 6Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268909, there is no canonical definition to state claims against.
-/

/-! ## A268909.P9088702549799997906

`6*A229591(n+1)`
-/

namespace A268909.P9088702549799997906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229591 (n + 1)

end

end A268909.P9088702549799997906

/-! ## A268909.P15413848090971024952

`A268904(Δ[A264443(n)]+10)`
-/

namespace A268909.P15413848090971024952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (f1 (n + 1) - f1 n + 10).toNat

end

end A268909.P15413848090971024952

/-! ## A268909.P7300391167926406160

`A268904(eq[7, A131818(n+1)])`
-/

namespace A268909.P7300391167926406160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268909.P7300391167926406160

/-! ## A268909.P10594136847659572413

`A268904(Δ[A023545(n+1)]+10)`
-/

namespace A268909.P10594136847659572413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (f1 (n + 1) - f1 n + 10).toNat

end

end A268909.P10594136847659572413

/-! ## A268909.P17813935747844276327

`A268904(A167499(n+5)-(n+5))`
-/

namespace A268909.P17813935747844276327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A167499 (n + 5) - (n + 5 : ℤ)).toNat

end

end A268909.P17813935747844276327

/-!
# A268910: Number of 7Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

The programs for A268910, there is no canonical definition to state claims against.
-/

/-! ## A268910.P13252399497503528382

`6*A229592(n+1)`
-/

namespace A268910.P13252399497503528382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229592 (n + 1)

end

end A268910.P13252399497503528382

/-! ## A268910.P4349928273710503447

`A268904(A167487(n+5))`
-/

namespace A268910.P4349928273710503447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A167487 (n + 5)).toNat

end

end A268910.P4349928273710503447

/-! ## A268910.P6930062969442618918

`A268904(A056119(n)+28)`
-/

namespace A268910.P6930062969442618918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A056119 n + 28).toNat

end

end A268910.P6930062969442618918

/-! ## A268910.P3901861783949738359

`A268904(eq[11, A066657(n)])`
-/

namespace A268910.P3901861783949738359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268910.P3901861783949738359

/-! ## A268910.P1630288481596573368

`A268904(A167499(n+5)+2)`
-/

namespace A268910.P1630288481596573368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (A167499 (n + 5) + 2).toNat

end

end A268910.P1630288481596573368

/-!
# A268913: Magic sums of 3 X 3 semimagic squares composed of primes.

The programs for A268913, there is no canonical definition to state claims against.
-/

/-! ## A268913.P1118629550395179528

`A069040(A187829(n+1)+17)`
-/

namespace A268913.P1118629550395179528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (A187829 (n + 1) + 17).toNat

end

end A268913.P1118629550395179528

/-! ## A268913.P8461505428388873630

`A070191(A187829(n+1)+17)`
-/

namespace A268913.P8461505428388873630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070191 (A187829 (n + 1) + 17).toNat

end

end A268913.P8461505428388873630

/-! ## A268913.P10338808234708224038

`lt[A266989(n+1), A260301(n²)]`
-/

namespace A268913.P10338808234708224038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260301 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268913.P10338808234708224038

/-! ## A268913.P5800301165490677055

`lt[A310919(A312447(n)), A126760(n*2*n)]`
-/

namespace A268913.P5800301165490677055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 (A312447 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (n * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268913.P5800301165490677055

/-! ## A268913.P459072574988634779

`lt[A354598(n+8), A326456(A126760(n))]`
-/

namespace A268913.P459072574988634779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354598 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268913.P459072574988634779

/-!
# A268914: Minimum difference between two distinct primes whose sum is 2*prime(n), n>4.

The programs for A268914, there is no canonical definition to state claims against.
-/

/-! ## A268914.P9767811317392207840

`2*A078611(n+5)`
-/

namespace A268914.P9767811317392207840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078611 (n + 5)

end

end A268914.P9767811317392207840

/-! ## A268914.P10932965126686215029

`A005843(A078611(n+5))`
-/

namespace A268914.P10932965126686215029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A078611 (n + 5)).toNat

end

end A268914.P10932965126686215029

/-! ## A268914.P7715042160717073276

`A008594(A078498(n+5))`
-/

namespace A268914.P7715042160717073276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A078498 (n + 5)).toNat

end

end A268914.P7715042160717073276

/-! ## A268914.P9767455141847639908

`A004275(A078611(n+5)+1)`
-/

namespace A268914.P9767455141847639908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A078611 (n + 5) + 1).toNat

end

end A268914.P9767455141847639908

/-! ## A268914.P12457764007825587598

`A078497(n+5)-A129758(n+5)`
-/

namespace A268914.P12457764007825587598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078497 (n + 5) - A129758 (n + 5)

end

end A268914.P12457764007825587598

/-! ## A268914.P3248258270005108655

`2*A082467(A000040(n+5))`
-/

namespace A268914.P3248258270005108655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082467 (A000040 (n + 5)).toNat

end

end A268914.P3248258270005108655

/-! ## A268914.P9561062739961767890

`2*A082467(A008578(n+6))`
-/

namespace A268914.P9561062739961767890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082467 (A008578 (n + 6)).toNat

end

end A268914.P9561062739961767890

/-! ## A268914.P13385168180325954820

`A204921(2*A000040(n+5))`
-/

namespace A268914.P13385168180325954820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204921 (2 * A000040 (n + 5)).toNat

end

end A268914.P13385168180325954820

/-!
# A268917: Numerators of the rational number triangle R(n, k) = -k*(n-k)*(n - 2*k)/(6*n), n >= 1, k = 1, ..., n. This is a regularized Sum_{j >= 0} (k + n*j)^(-s) for s = -2 defined by analytic continuation of a generalized Hurwitz zeta function.

The programs for A268917, there is no canonical definition to state claims against.
-/

/-! ## A268917.P18007854920653485992

`Δ[-A141829(A022170(n))]`
-/

namespace A268917.P18007854920653485992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A141829 (A022170 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268917.P18007854920653485992

/-! ## A268917.P16300379130024229281

`Δ[-A037273(A176420(n))]`
-/

namespace A268917.P16300379130024229281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037273 (A176420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268917.P16300379130024229281

/-! ## A268917.P7548730556018834140

`Δ[-A121997(A176487(n))]`
-/

namespace A268917.P7548730556018834140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121997 (A176487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268917.P7548730556018834140

/-! ## A268917.P17816392617382377033

`Δ[-A335474(A113340(n))]`
-/

namespace A268917.P17816392617382377033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A335474 (A113340 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268917.P17816392617382377033

/-! ## A268917.P8951458421028536975

`Δ[A136626(A047874(n+1))]`
-/

namespace A268917.P8951458421028536975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (A047874 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268917.P8951458421028536975

/-!
# A268920: Denominators of the rational number triangle R(n, k) = (n^4 - 30*n^2*k^2 + 60*n*k^3 - 30*k^4) / (120*n), n >= 1, k = 1, ..., n.

The programs for A268920, there is no canonical definition to state claims against.
-/

/-! ## A268920.P4813837550345137914

`5*A202397(A195947(n))`
-/

namespace A268920.P4813837550345137914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A202397 (A195947 n).toNat

end

end A268920.P4813837550345137914

/-!
# A268921: Irregular triangle read by rows: T(n, k) = Legendre symbol (-k / prime(n)) for k = 0, ..., prime(n)-1, for n >= 1, with T(n, 0) = 0, T(1, 1) = 1.

The programs for A268921, there is no canonical definition to state claims against.
-/

/-! ## A268921.P15545458968356968323

`A226520(A343809(n+1)+1)`
-/

namespace A268921.P15545458968356968323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A343809 (n + 1) + 1).toNat

end

end A268921.P15545458968356968323

/-! ## A268921.P2657843798000790289

`A330025(A252219(n+1)+A187262(n+1))`
-/

namespace A268921.P2657843798000790289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A252219 (n + 1) + A187262 (n + 1)).toNat

end

end A268921.P2657843798000790289

/-! ## A268921.P7440482233688120890

`A037012(A180565(n+1)%A084579(n+1))`
-/

namespace A268921.P7440482233688120890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (Int.tmod (A180565 (n + 1)) (A084579 (n + 1))).toNat

end

end A268921.P7440482233688120890

/-! ## A268921.P16502851846361473291

`A008683(A092888(3*n+5)-A008683(3*n+2))`
-/

namespace A268921.P16502851846361473291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A092888 (3 * n + 5) - A008683 (3 * n + 2)).toNat

end

end A268921.P16502851846361473291

/-! ## A268921.P11143691570748172945

`A178788(record[A280407(n)])-A341753(n)`
-/

namespace A268921.P11143691570748172945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A341753 n

end

end A268921.P11143691570748172945

/-!
# A268922: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 1 mod 5 numbers, except for n = 0.

The programs for A268922, the canonical program `A268922.P7597364741946538744` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268922 has offset 0).

The definition of A268922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268922.P7597364741946538744

`(2*A048899(n))%A000351(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268922

/-- `(2*A048899(n))%A000351(n)` -/
def P7597364741946538744.Spec : Prop :=
  ∀ n, P7597364741946538744.a n = A268922 n

theorem P7597364741946538744.correct : P7597364741946538744.Spec := by
  intro n
  simp only [A268922]

end A268922

/-! ## A268922.P10922522226608127879

`A048898(n)+A048899(n)-A269590(n)`
-/

namespace A268922.P10922522226608127879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A048899 n - A269590 n)

end

end A268922.P10922522226608127879

namespace A268922

/-- `A048898(n)+A048899(n)-A269590(n)` -/
def P10922522226608127879.Spec : Prop :=
  ∀ n, P10922522226608127879.a n = A268922 n

end A268922

/-! ## A268922.P14268683873395517163

`A269590(n)+A269593(n)-A269594(n)`
-/

namespace A268922.P14268683873395517163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269590 n + (A269593 n - A269594 n)

end

end A268922.P14268683873395517163

namespace A268922

/-- `A269590(n)+A269593(n)-A269594(n)` -/
def P14268683873395517163.Spec : Prop :=
  ∀ n, P14268683873395517163.a n = A268922 n

end A268922

/-! ## A268922.P7092573706956078992

`(A000351(n)-A269590(n))%A000351(n)`
-/

namespace A268922.P7092573706956078992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n - A269590 n) (A000351 n)

end

end A268922.P7092573706956078992

namespace A268922

/-- `(A000351(n)-A269590(n))%A000351(n)` -/
def P7092573706956078992.Spec : Prop :=
  ∀ n, P7092573706956078992.a n = A268922 n

end A268922

/-! ## A268922.P8441649720057075557

`(A048899(n+1)+A048899(n))%A000351(n)`
-/

namespace A268922.P8441649720057075557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048899 (n + 1) + A048899 n) (A000351 n)

end

end A268922.P8441649720057075557

namespace A268922

/-- `(A048899(n+1)+A048899(n))%A000351(n)` -/
def P8441649720057075557.Spec : Prop :=
  ∀ n, P8441649720057075557.a n = A268922 n

end A268922

/-!
# A268923: All odd primes a(n) such that for all odd primes q smaller than a(n) the order of 2 modulo a(n)*q is a proper divisor of phi(a(n)*q)/2. The totient function phi is given in A000010.

The programs for A268923, there is no canonical definition to state claims against.
-/

/-! ## A268923.P9221858992666004297

`p?[A333855(n+1)]`
-/

namespace A268923.P9221858992666004297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268923.P9221858992666004297

/-! ## A268923.P15143980231921948352

`filter[A333855(n+1), A010051(#)]`
-/

namespace A268923.P15143980231921948352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A268923.P15143980231921948352

/-! ## A268923.P3230455922982659587

`filter[A333855(n+1), A323152(#)]`
-/

namespace A268923.P3230455922982659587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A268923.P3230455922982659587

/-! ## A268923.P13581000311161695325

`filter[A333855(n+1), A323153(#)]`
-/

namespace A268923.P13581000311161695325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A268923.P13581000311161695325

/-! ## A268923.P13333879191261544363

`filter[A333855(n+1), A340371(#)]`
-/

namespace A268923.P13333879191261544363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A268923.P13333879191261544363

/-! ## A268923.P12064830471124058971

`p?[A005408(comp[A054639(n+1)])]`
-/

namespace A268923.P12064830471124058971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268923.P12064830471124058971

/-! ## A268923.P9219685269721352514

`record[A006530(2*A333855(n+1))]`
-/

namespace A268923.P9219685269721352514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A333855 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268923.P9219685269721352514

/-! ## A268923.P3668729407698206340

`record[A006530(or(1, A333855(n+1)))]`
-/

namespace A268923.P3668729407698206340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A333855 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268923.P3668729407698206340

/-! ## A268923.P17352359117994341081

`∩[A000040(n+1), A333855(n+1)]`
-/

namespace A268923.P17352359117994341081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P17352359117994341081

/-! ## A268923.P14650418440487478569

`∩[A001751(n+1), A333855(n+1)]`
-/

namespace A268923.P14650418440487478569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P14650418440487478569

/-! ## A268923.P12673702364709302162

`∩[A004139(n+1), A333855(n+1)]`
-/

namespace A268923.P12673702364709302162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P12673702364709302162

/-! ## A268923.P14559290376791034530

`∩[A006005(n+1), A333855(n+1)]`
-/

namespace A268923.P14559290376791034530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P14559290376791034530

/-! ## A268923.P4784444398288310381

`∩[A008578(n+1), A333855(n+1)]`
-/

namespace A268923.P4784444398288310381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P4784444398288310381

/-! ## A268923.P162750356975776827

`∩[A033946(n+1), A333855(n+1)]`
-/

namespace A268923.P162750356975776827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P162750356975776827

/-! ## A268923.P6895915574706024520

`∩[A038550(n+1), A333855(n+1)]`
-/

namespace A268923.P6895915574706024520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P6895915574706024520

/-! ## A268923.P4546042757785235571

`∩[A045319(n+1), A333855(n+1)]`
-/

namespace A268923.P4546042757785235571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P4546042757785235571

/-! ## A268923.P17759235380016490098

`∩[A045344(n+1), A333855(n+1)]`
-/

namespace A268923.P17759235380016490098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P17759235380016490098

/-! ## A268923.P17898166087938665427

`∩[A046022(n+1), A333855(n+1)]`
-/

namespace A268923.P17898166087938665427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P17898166087938665427

/-! ## A268923.P3718292263406447318

`∩[A051948(n+1), A333855(n+1)]`
-/

namespace A268923.P3718292263406447318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P3718292263406447318

/-! ## A268923.P851210915839514550

`∩[A053577(n+1), A333855(n+1)]`
-/

namespace A268923.P851210915839514550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268923.P851210915839514550

/-!
# A268924: One of the two successive approximations up to 3^n for the 3-adic integer sqrt(-2). These are the numbers congruent to 1 mod 3 (except for n = 0).

The programs for A268924, there is no canonical definition to state claims against.
-/

/-! ## A268924.P14533205058069522297

`(2*A309477(n))%A000244(n)`
-/

namespace A268924.P14533205058069522297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A309477 n) (A000244 n)

end

end A268924.P14533205058069522297

/-! ## A268924.P9755156640711757558

`A000244(n)-(A271222(n)+A000007(n))`
-/

namespace A268924.P9755156640711757558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A271222 n + A000007 n)

end

end A268924.P9755156640711757558

/-! ## A268924.P13918433234632893292

`A309476(n)+A309477(n)-A271222(n)`
-/

namespace A268924.P13918433234632893292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309476 n + (A309477 n - A271222 n)

end

end A268924.P13918433234632893292

/-! ## A268924.P12761528367808585747

`∑[A025192(n)]-(A271222(n)+A000007(n))`
-/

namespace A268924.P12761528367808585747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A271222 n + A000007 n)

end

end A268924.P12761528367808585747

/-! ## A268924.P6817210764936496813

`(gcd(2, A078008(n))*A309477(n))%A056449(2*n)`
-/

namespace A268924.P6817210764936496813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Int.gcd 2 (A078008 n) : ℤ) * A309477 n) (A056449 (2 * n))

end

end A268924.P6817210764936496813

/-! ## A268924.P12149964652140246586

`A000244(n)%A000351(n)-A271222(n)`
-/

namespace A268924.P12149964652140246586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A000351 n) - A271222 n

end

end A268924.P12149964652140246586

/-!
# A268925: Record (maximal) gaps between primes of the form 6k + 1.

The programs for A268925, there is no canonical definition to state claims against.
-/

/-! ## A268925.P18283001306072539346

`A268927(n+1)-A268926(n+1)`
-/

namespace A268925.P18283001306072539346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268927 (n + 1) - A268926 (n + 1)

end

end A268925.P18283001306072539346

/-! ## A268925.P16646061196586790564

`A268927(comp[63*n])%A268926(n+1)`
-/

namespace A268925.P16646061196586790564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268927 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A268926 (n + 1))

end

end A268925.P16646061196586790564

/-! ## A268925.P5971036335070627136

`A000027(A268927(n+1)%A268926(n+1))`
-/

namespace A268925.P5971036335070627136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A268927 (n + 1)) (A268926 (n + 1))).toNat

end

end A268925.P5971036335070627136

/-! ## A268925.P8385353766894743030

`A268927(n+1)+A268926(n+1)*A321804(A007318(n))`
-/

namespace A268925.P8385353766894743030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268927 (n + 1) + A268926 (n + 1) * A321804 (A007318 n).toNat

end

end A268925.P8385353766894743030

/-! ## A268925.P8763415648247113546

`record[A330853(n+1)]`
-/

namespace A268925.P8763415648247113546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268925.P8763415648247113546

/-!
# A268926: Primes 6k + 1 preceding the maximal gaps in A268925.

The programs for A268926, there is no canonical definition to state claims against.
-/

/-! ## A268926.P5029113927940366087

`A268927(n+1)-A268925(n+1)`
-/

namespace A268926.P5029113927940366087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268927 (n + 1) - A268925 (n + 1)

end

end A268926.P5029113927940366087

/-! ## A268926.P13787147936546271136

`A268927(n+1)-record[A330853(n+1)]`
-/

namespace A268926.P13787147936546271136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268927 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268926.P13787147936546271136

/-! ## A268926.P934341689367226443

`A268927(n+1)-record[A330855(n+1)-A330854(n+1)]`
-/

namespace A268926.P934341689367226443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330855 (n + 1) - A330854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268927 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268926.P934341689367226443

/-!
# A268927: Primes 6k + 1 at the end of the maximal gaps in A268925.

The programs for A268927, there is no canonical definition to state claims against.
-/

/-! ## A268927.P315150291678589462

`A268925(n+1)+A268926(n+1)`
-/

namespace A268927.P315150291678589462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268925 (n + 1) + A268926 (n + 1)

end

end A268927.P315150291678589462

/-! ## A268927.P13233539624908613520

`A268926(n+1)+record[A330853(n+1)]`
-/

namespace A268927.P13233539624908613520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268926 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268927.P13233539624908613520

/-! ## A268927.P3348700895373585868

`A268926(n+1)+record[A330855(n+1)-A330854(n+1)]`
-/

namespace A268927.P3348700895373585868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330855 (n + 1) - A330854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268926 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268927.P3348700895373585868

/-!
# A268928: Record (maximal) gaps between primes of the form 6k - 1.

The programs for A268928, there is no canonical definition to state claims against.
-/

/-! ## A268928.P3600416601378703535

`A268930(n+1)-A268929(n+1)`
-/

namespace A268928.P3600416601378703535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268930 (n + 1) - A268929 (n + 1)

end

end A268928.P3600416601378703535

/-! ## A268928.P2117884661497504693

`record[A334543(n+1)]`
-/

namespace A268928.P2117884661497504693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268928.P2117884661497504693

/-! ## A268928.P13013829744373458281

`record[lcm(2, A334543(A005378(n)))]`
-/

namespace A268928.P13013829744373458281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A334543 (A005378 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268928.P13013829744373458281

/-! ## A268928.P2689872482927623065

`record[A334545(n+1)-A334544(n+1)]`
-/

namespace A268928.P2689872482927623065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - A334544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268928.P2689872482927623065

/-! ## A268928.P11749967035309329587

`record[(A007318(n)%2)!*A334543(A005378(n))]`
-/

namespace A268928.P11749967035309329587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℤ) * A334543 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268928.P11749967035309329587

/-!
# A268929: Primes 6k - 1 preceding the maximal gaps in A268928.

The programs for A268929, there is no canonical definition to state claims against.
-/

/-! ## A268929.P9150170267523342945

`A268930(n+1)-A268928(n+1)`
-/

namespace A268929.P9150170267523342945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268930 (n + 1) - A268928 (n + 1)

end

end A268929.P9150170267523342945

/-! ## A268929.P7368137040443642865

`A268930(A000027(n+1))+A001489(A268928(n+1))`
-/

namespace A268929.P7368137040443642865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268930 (A000027 (n + 1)).toNat + A001489 (A268928 (n + 1)).toNat

end

end A268929.P7368137040443642865

/-! ## A268929.P8332465319789064694

`A268930(n+1)-record[A334543(n+1)]`
-/

namespace A268929.P8332465319789064694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268930 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268929.P8332465319789064694

/-! ## A268929.P2751383112907925528

`A268930(n+1)+A001489(record[A334543(n+1)])`
-/

namespace A268929.P2751383112907925528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268930 (n + 1) + A001489 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A268929.P2751383112907925528

/-! ## A268929.P4154966080001232444

`A268930(n+1)-record[A334545(n+1)-A334544(n+1)]`
-/

namespace A268929.P4154966080001232444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - A334544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268930 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268929.P4154966080001232444

/-!
# A268930: Primes 6k - 1 at the end of the maximal gaps in A268928.

The programs for A268930, there is no canonical definition to state claims against.
-/

/-! ## A268930.P3813382469178325678

`A268928(n+1)+A268929(n+1)`
-/

namespace A268930.P3813382469178325678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268928 (n + 1) + A268929 (n + 1)

end

end A268930.P3813382469178325678

/-! ## A268930.P9699047605806133854

`A268929(n+1)+record[A334543(n+1)]`
-/

namespace A268930.P9699047605806133854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268929 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268930.P9699047605806133854

/-! ## A268930.P14857813514588080742

`A268929(n+1)+record[A334545(n+1)-A334544(n+1)]`
-/

namespace A268930.P14857813514588080742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334545 (n + 1) - A334544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268929 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268930.P14857813514588080742

/-! ## A268930.P10499028151589388562

`A354091(A268929(n+1))`
-/

namespace A268930.P10499028151589388562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (A268929 (n + 1)).toNat

end

end A268930.P10499028151589388562

/-!
# A268931: Square array: A(i,j) = F(A065091(i),A065091(j)), where F(a,b) is the dyadic function defined in A269158. Array is read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A268931, there is no canonical definition to state claims against.
-/

/-! ## A268931.P14823088112433023130

`A268932(A038722(n+1))`
-/

namespace A268931.P14823088112433023130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (A038722 (n + 1)).toNat

end

end A268931.P14823088112433023130

/-! ## A268931.P15591568541774471298

`A268932(A061579(n)+1)`
-/

namespace A268931.P15591568541774471298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (A061579 n + 1).toNat

end

end A268931.P15591568541774471298

/-! ## A268931.P10975528667865460614

`A268932(A114327(n)+1+n)`
-/

namespace A268931.P10975528667865460614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (A114327 n + 1 + (n : ℤ)).toNat

end

end A268931.P10975528667865460614

/-! ## A268931.P917864267161596694

`A268932(A093995(n+1)-n)`
-/

namespace A268931.P917864267161596694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A268931.P917864267161596694

/-! ## A268931.P7302952459712963849

`A268932(2-A127948(n)+n)`
-/

namespace A268931.P7302952459712963849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (2 - A127948 n + (n : ℤ)).toNat

end

end A268931.P7302952459712963849

/-! ## A268931.P13067872330111147168

`A268932(2-(A127948(n)-n))`
-/

namespace A268931.P13067872330111147168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (2 - (A127948 n - (n : ℤ))).toNat

end

end A268931.P13067872330111147168

/-! ## A268931.P5356904716081026806

`A268932((A003056(n)+1)²-n)`
-/

namespace A268931.P5356904716081026806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 ((A003056 n + 1) ^ 2 - (n : ℤ)).toNat

end

end A268931.P5356904716081026806

/-! ## A268931.P6116334160853785128

`A268932(A127739(n+1)-A002262(n))`
-/

namespace A268931.P6116334160853785128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (A127739 (n + 1) - A002262 n).toNat

end

end A268931.P6116334160853785128

/-! ## A268931.P9581886160705191340

`A268932(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A268931.P9581886160705191340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268932 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A268931.P9581886160705191340

/-!
# A268932: Transpose of A268931.

The programs for A268932, there is no canonical definition to state claims against.
-/

/-! ## A268932.P15030890839239411563

`A268931(A038722(n+1))`
-/

namespace A268932.P15030890839239411563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268931 (A038722 (n + 1)).toNat

end

end A268932.P15030890839239411563

/-! ## A268932.P16533888766036695766

`A268931(A061579(n)+1)`
-/

namespace A268932.P16533888766036695766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268931 (A061579 n + 1).toNat

end

end A268932.P16533888766036695766

/-! ## A268932.P15770517501061237107

`A268931(∑[A198954(n)]-n)`
-/

namespace A268932.P15770517501061237107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268931 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A268932.P15770517501061237107

/-! ## A268932.P11872739973802387401

`A268931(A093995(n+1)-n)`
-/

namespace A268932.P11872739973802387401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268931 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A268932.P11872739973802387401

/-! ## A268932.P1078557859233096067

`A268931(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A268932.P1078557859233096067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268931 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A268932.P1078557859233096067

/-!
# A268933: Permutation of nonnegative integers: a(0) = 0, for n >= 1, a(n) = A268717(1 + A268831(n-1)).

The programs for A268933, there is no canonical definition to state claims against.
-/

/-! ## A268933.P13547268349181071754

`A268820(A167487(n+6))`
-/

namespace A268933.P13547268349181071754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A167487 (n + 6)).toNat

end

end A268933.P13547268349181071754

/-! ## A268933.P17110475700371928548

`A268820(A167499(n+6)+2)`
-/

namespace A268933.P17110475700371928548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A167499 (n + 6) + 2).toNat

end

end A268933.P17110475700371928548

/-! ## A268933.P16466368005319214462

`A268820(A000096(n+6)+8)`
-/

namespace A268933.P16466368005319214462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000096 (n + 6) + 8).toNat

end

end A268933.P16466368005319214462

/-! ## A268933.P5242882239643049616

`A268820(A000217(n+7)+7)`
-/

namespace A268933.P5242882239643049616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A000217 (n + 7) + 7).toNat

end

end A268933.P5242882239643049616

/-! ## A268933.P13524491407432155177

`A268820(A055999(n+4)+13)`
-/

namespace A268933.P13524491407432155177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A055999 (n + 4) + 13).toNat

end

end A268933.P13524491407432155177

/-! ## A268933.P9340178344277941784

`A268820(A055998(n+7)-A005408(n+3))`
-/

namespace A268933.P9340178344277941784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (A055998 (n + 7) - A005408 (n + 3)).toNat

end

end A268933.P9340178344277941784

/-! ## A268933.P12833696049774244322

`A268820(eq[8, A002260(n+1)])`
-/

namespace A268933.P12833696049774244322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268933.P12833696049774244322

/-! ## A268933.P4427384601047754073

`A268820(eq[7, A002262(n)])`
-/

namespace A268933.P4427384601047754073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268933.P4427384601047754073

/-!
# A268934: Permutation of nonnegative integers: a(0) = 0, for n >= 1, a(n) = 1 + A268832(A268718(n)-1).

The programs for A268934, there is no canonical definition to state claims against.
-/

/-! ## A268934.P12849229845935864190

`A268830(A167487(n+6))`
-/

namespace A268934.P12849229845935864190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A167487 (n + 6)).toNat

end

end A268934.P12849229845935864190

/-! ## A268934.P10059902334168912689

`A268830(A166136(n+6)+1)`
-/

namespace A268934.P10059902334168912689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A166136 (n + 6) + 1).toNat

end

end A268934.P10059902334168912689

/-! ## A268934.P10248701700796788543

`A268830(A000096(n+6)+8)`
-/

namespace A268934.P10248701700796788543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000096 (n + 6) + 8).toNat

end

end A268934.P10248701700796788543

/-! ## A268934.P14243052205197453368

`A268830(A000217(n+7)+7)`
-/

namespace A268934.P14243052205197453368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A000217 (n + 7) + 7).toNat

end

end A268934.P14243052205197453368

/-! ## A268934.P13543089933086477708

`A268830(A055999(n+4)+13)`
-/

namespace A268934.P13543089933086477708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A055999 (n + 4) + 13).toNat

end

end A268934.P13543089933086477708

/-! ## A268934.P2260310090468811950

`A268830(A052905(n+6)-A005408(n+2))`
-/

namespace A268934.P2260310090468811950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (A052905 (n + 6) - A005408 (n + 2)).toNat

end

end A268934.P2260310090468811950

/-! ## A268934.P13520008533676797281

`A268830(eq[8, A002260(n+1)])`
-/

namespace A268934.P13520008533676797281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268934.P13520008533676797281

/-! ## A268934.P17318595098283493783

`A268830(eq[7, A002262(n)])`
-/

namespace A268934.P17318595098283493783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268934.P17318595098283493783

/-! ## A268934.P17780493311025787045

`A268830(eq[8, A135223(n+1)])`
-/

namespace A268934.P17780493311025787045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268934.P17780493311025787045

/-!
# A268935: a(1)=2, a(2)=3. For n>2 a(n) is the sum of the prime factors (with repetition) of a(n-1) + a(n-2).

The programs for A268935, the canonical program `A268935.P18120066355436414076` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268935 has offset 1).

The definition of A268935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268935.P18120066355436414076

`A001414(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268935

/-- `A001414(a(n-1)+a(n-2))` -/
def P18120066355436414076.Spec : Prop :=
  ∀ n, P18120066355436414076.a n = A268935 (n + 1)

theorem P18120066355436414076.correct : P18120066355436414076.Spec := by
  intro n
  simp only [A268935, Nat.add_sub_cancel]

end A268935

/-!
# A268936: Number of sequences in {1,...,n}^n with longest increasing subsequence of length n-2.

The programs for A268936, there is no canonical definition to state claims against.
-/

/-! ## A268936.P10611561476491754737

`A245667(A027379(abs(1-n)))`
-/

namespace A268936.P10611561476491754737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A027379 |1 - (n : ℤ)|.toNat).toNat

end

end A268936.P10611561476491754737

/-! ## A268936.P39207418264511179

`A245667(A289207(n)+A179865(n+1))`
-/

namespace A268936.P39207418264511179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (A289207 n + A179865 (n + 1)).toNat

end

end A268936.P39207418264511179

/-!
# A268937: Number of length-n 0..n arrays with no repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A268937, there is no canonical definition to state claims against.
-/

/-! ## A268937.P9484551865447789034

`A268944((n+1)²+n²)`
-/

namespace A268937.P9484551865447789034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 ((n + 1) ^ 2 + n ^ 2)

end

end A268937.P9484551865447789034

/-! ## A268937.P3626133703774534036

`record[A003982(n)*A268944(n+1)]`
-/

namespace A268937.P3626133703774534036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268937.P3626133703774534036

/-! ## A268937.P6388561226718921168

`record[gcd(A049581(n), A268944(n+1))]`
-/

namespace A268937.P6388561226718921168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A268944 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268937.P6388561226718921168

/-! ## A268937.P13481842736902546517

`gcd(A000038(n), A268944(A001844(n)))`
-/

namespace A268937.P13481842736902546517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A268944 (A001844 n).toNat)

end

end A268937.P13481842736902546517

/-! ## A268937.P2876285355204857668

`lcm(A158416(n), A268944(A001844(n)))`
-/

namespace A268937.P2876285355204857668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158416 n) (A268944 (A001844 n).toNat)

end

end A268937.P2876285355204857668

/-!
# A268938: Number of length-n 0..2 arrays with no repeated value unequal to the previous repeated value plus one mod 2+1.

The programs for A268938, the canonical program `A268938.P12823571378586863996` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268938 has offset 1).

The definition of A268938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268938.P9155625255983916461

`ogf((3-6x^2)/(1-3x-x^2+6x^3))`
-/

namespace A268938.P9155625255983916461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -6] [1, -3, -1, 6] n

end

end A268938.P9155625255983916461

namespace A268938

/-- `ogf((3-6x^2)/(1-3x-x^2+6x^3))` -/
def P9155625255983916461.Spec : Prop :=
  ∀ n, P9155625255983916461.a n = A268938 (n + 1)

end A268938

/-! ## A268938.P12823571378586863996

`3*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=3, a(1)=9, a(2)=24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268938

/-- `3*a(n-1)+a(n-2)-6*a(n-3)` -/
def P12823571378586863996.Spec : Prop :=
  ∀ n, P12823571378586863996.a n = A268938 (n + 1)

theorem P12823571378586863996.correct : P12823571378586863996.Spec := by
  intro n
  simp only [A268938, Nat.add_sub_cancel]

end A268938

/-! ## A268938.P4546271615718191672

`3*A267946(n+1)`
-/

namespace A268938.P4546271615718191672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267946 (n + 1)

end

end A268938.P4546271615718191672

namespace A268938

/-- `3*A267946(n+1)` -/
def P4546271615718191672.Spec : Prop :=
  ∀ n, P4546271615718191672.a n = A268938 (n + 1)

end A268938

/-! ## A268938.P3675503248884345038

`A105476(n+1)+2*a(n-1)` with `a(0)=3`
-/

namespace A268938.P3675503248884345038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A105476 (n + 1) + 2 * a (n - 1)

end

end A268938.P3675503248884345038

namespace A268938

/-- `A105476(n+1)+2*a(n-1)` -/
def P3675503248884345038.Spec : Prop :=
  ∀ n, P3675503248884345038.a n = A268938 (n + 1)

end A268938

/-! ## A268938.P6072346898301741986

`A259243(n+1)-A091629(n+1)`
-/

namespace A268938.P6072346898301741986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259243 (n + 1) - A091629 (n + 1)

end

end A268938.P6072346898301741986

namespace A268938

/-- `A259243(n+1)-A091629(n+1)` -/
def P6072346898301741986.Spec : Prop :=
  ∀ n, P6072346898301741986.a n = A268938 (n + 1)

end A268938

/-! ## A268938.P16480252099990474434

`3*(A175654(n+1)-A105476(n+1))`
-/

namespace A268938.P16480252099990474434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A175654 (n + 1) - A105476 (n + 1))

end

end A268938.P16480252099990474434

namespace A268938

/-- `3*(A175654(n+1)-A105476(n+1))` -/
def P16480252099990474434.Spec : Prop :=
  ∀ n, P16480252099990474434.a n = A268938 (n + 1)

end A268938

/-! ## A268938.P4083456497314229329

`sqrt(3)*sqrt(A267947(n+1))`
-/

namespace A268938.P4083456497314229329
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) * Real.sqrt (A267947 (n + 1) : ℝ)

end

end A268938.P4083456497314229329

namespace A268938

/-- `sqrt(3)*sqrt(A267947(n+1))` -/
def P4083456497314229329.Spec : Prop :=
  ∀ n, P4083456497314229329.a n = (A268938 (n + 1) : ℝ)

end A268938

/-! ## A268938.P2593484430803179927

`A267947(n+1)/A267946(n+1)`
-/

namespace A268938.P2593484430803179927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267947 (n + 1) : ℚ) / (A267946 (n + 1) : ℚ)

end

end A268938.P2593484430803179927

namespace A268938

/-- `A267947(n+1)/A267946(n+1)` -/
def P2593484430803179927.Spec : Prop :=
  ∀ n, P2593484430803179927.a n = (A268938 (n + 1) : ℚ)

end A268938

/-! ## A268938.P13056049219298224865

`sqrt(3*A267947(n+1))`
-/

namespace A268938.P13056049219298224865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * A267947 (n + 1) : ℝ)

end

end A268938.P13056049219298224865

namespace A268938

/-- `sqrt(3*A267947(n+1))` -/
def P13056049219298224865.Spec : Prop :=
  ∀ n, P13056049219298224865.a n = (A268938 (n + 1) : ℝ)

end A268938

/-! ## A268938.P1175514091871991422

`A268944(∑[n+2])`
-/

namespace A268938.P1175514091871991422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268938.P1175514091871991422

namespace A268938

/-- `A268944(∑[n+2])` -/
def P1175514091871991422.Spec : Prop :=
  ∀ n, P1175514091871991422.a n = A268938 (n + 1)

end A268938

/-!
# A268939: Number of length-n 0..3 arrays with no repeated value unequal to the previous repeated value plus one mod 3+1.

The programs for A268939, the canonical program `A268939.P4846183401476385400` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268939 has offset 1).

The definition of A268939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268939.P4846183401476385400

`5*a(n-1)-2*a(n-2)-12*a(n-3)` with `a(0)=4, a(1)=16, a(2)=60`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268939

/-- `5*a(n-1)-2*a(n-2)-12*a(n-3)` -/
def P4846183401476385400.Spec : Prop :=
  ∀ n, P4846183401476385400.a n = A268939 (n + 1)

theorem P4846183401476385400.correct : P4846183401476385400.Spec := by
  intro n
  simp only [A268939, Nat.add_sub_cancel]

end A268939

/-! ## A268939.P5213136681159816865

`4*A268164(n+1)`
-/

namespace A268939.P5213136681159816865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268164 (n + 1)

end

end A268939.P5213136681159816865

namespace A268939

/-- `4*A268164(n+1)` -/
def P5213136681159816865.Spec : Prop :=
  ∀ n, P5213136681159816865.a n = A268939 (n + 1)

end A268939

/-! ## A268939.P8679807364915360304

`2*sqrt(A268165(n+1))`
-/

namespace A268939.P8679807364915360304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A268165 (n + 1) : ℝ)

end

end A268939.P8679807364915360304

namespace A268939

/-- `2*sqrt(A268165(n+1))` -/
def P8679807364915360304.Spec : Prop :=
  ∀ n, P8679807364915360304.a n = (A268939 (n + 1) : ℝ)

end A268939

/-! ## A268939.P3397057975863563336

`A268165(n+1)/A268164(n+1)`
-/

namespace A268939.P3397057975863563336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268165 (n + 1) : ℚ) / (A268164 (n + 1) : ℚ)

end

end A268939.P3397057975863563336

namespace A268939

/-- `A268165(n+1)/A268164(n+1)` -/
def P3397057975863563336.Spec : Prop :=
  ∀ n, P3397057975863563336.a n = (A268939 (n + 1) : ℚ)

end A268939

/-! ## A268939.P3964932901223480790

`A268944(∑[n+3]+1)`
-/

namespace A268939.P3964932901223480790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268939.P3964932901223480790

namespace A268939

/-- `A268944(∑[n+3]+1)` -/
def P3964932901223480790.Spec : Prop :=
  ∀ n, P3964932901223480790.a n = A268939 (n + 1)

end A268939

/-!
# A268940: Number of length-n 0..4 arrays with no repeated value unequal to the previous repeated value plus one mod 4+1.

The programs for A268940, the canonical program `A268940.P5095447422656950700` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268940 has offset 1).

The definition of A268940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268940.P5095447422656950700

`7*a(n-1)-7*a(n-2)-20*a(n-3)` with `a(0)=5, a(1)=25, a(2)=120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268940

/-- `7*a(n-1)-7*a(n-2)-20*a(n-3)` -/
def P5095447422656950700.Spec : Prop :=
  ∀ n, P5095447422656950700.a n = A268940 (n + 1)

theorem P5095447422656950700.correct : P5095447422656950700.Spec := by
  intro n
  simp only [A268940, Nat.add_sub_cancel]

end A268940

/-! ## A268940.P10259332762799201877

`A268944(A027379(n+2))`
-/

namespace A268940.P10259332762799201877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A027379 (n + 2)).toNat

end

end A268940.P10259332762799201877

namespace A268940

/-- `A268944(A027379(n+2))` -/
def P10259332762799201877.Spec : Prop :=
  ∀ n, P10259332762799201877.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P2531122051735106036

`A268944(A055998(n+2))`
-/

namespace A268940.P2531122051735106036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A055998 (n + 2)).toNat

end

end A268940.P2531122051735106036

namespace A268940

/-- `A268944(A055998(n+2))` -/
def P2531122051735106036.Spec : Prop :=
  ∀ n, P2531122051735106036.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P15733570245546064987

`A268944(A056000(n)+7)`
-/

namespace A268940.P15733570245546064987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A056000 n + 7).toNat

end

end A268940.P15733570245546064987

namespace A268940

/-- `A268944(A056000(n)+7)` -/
def P15733570245546064987.Spec : Prop :=
  ∀ n, P15733570245546064987.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P8245445199569450103

`A268944(Δ[A034857(n+1)])`
-/

namespace A268940.P8245445199569450103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (f1 (n + 1) - f1 n).toNat

end

end A268940.P8245445199569450103

namespace A268940

/-- `A268944(Δ[A034857(n+1)])` -/
def P8245445199569450103.Spec : Prop :=
  ∀ n, P8245445199569450103.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P3046851859010839860

`A268944(A000096(n+3)-2)`
-/

namespace A268940.P3046851859010839860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000096 (n + 3) - 2).toNat

end

end A268940.P3046851859010839860

namespace A268940

/-- `A268944(A000096(n+3)-2)` -/
def P3046851859010839860.Spec : Prop :=
  ∀ n, P3046851859010839860.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P12073846026960234706

`A268944(A000124(n+4)-4)`
-/

namespace A268940.P12073846026960234706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000124 (n + 4) - 4).toNat

end

end A268940.P12073846026960234706

namespace A268940

/-- `A268944(A000124(n+4)-4)` -/
def P12073846026960234706.Spec : Prop :=
  ∀ n, P12073846026960234706.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P5444094630914314150

`A268944(A167614(n+3)-6)`
-/

namespace A268940.P5444094630914314150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A167614 (n + 3) - 6).toNat

end

end A268940.P5444094630914314150

namespace A268940

/-- `A268944(A167614(n+3)-6)` -/
def P5444094630914314150.Spec : Prop :=
  ∀ n, P5444094630914314150.a n = A268940 (n + 1)

end A268940

/-! ## A268940.P11308701625506559222

`A268944(A005408(n)+A046691(n)+7)`
-/

namespace A268940.P11308701625506559222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A005408 n + (A046691 n + 7)).toNat

end

end A268940.P11308701625506559222

namespace A268940

/-- `A268944(A005408(n)+A046691(n)+7)` -/
def P11308701625506559222.Spec : Prop :=
  ∀ n, P11308701625506559222.a n = A268940 (n + 1)

end A268940

/-!
# A268941: Number of length-n 0..5 arrays with no repeated value unequal to the previous repeated value plus one mod 5+1.

The programs for A268941, the canonical program `A268941.P11756562528372683624` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268941 has offset 1).

The definition of A268941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268941.P11756562528372683624

`9*a(n-1)-14*a(n-2)-30*a(n-3)` with `a(0)=6, a(1)=36, a(2)=210`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268941

/-- `9*a(n-1)-14*a(n-2)-30*a(n-3)` -/
def P11756562528372683624.Spec : Prop :=
  ∀ n, P11756562528372683624.a n = A268941 (n + 1)

theorem P11756562528372683624.correct : P11756562528372683624.Spec := by
  intro n
  simp only [A268941, Nat.add_sub_cancel]

end A268941

/-! ## A268941.P16990748159958910230

`A268944(n+7+∑[n+4])`
-/

namespace A268941.P16990748159958910230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (n + 7 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268941.P16990748159958910230

namespace A268941

/-- `A268944(n+7+∑[n+4])` -/
def P16990748159958910230.Spec : Prop :=
  ∀ n, P16990748159958910230.a n = A268941 (n + 1)

end A268941

/-! ## A268941.P8763313342663456187

`lcm(2, A268944(A000124(n+5)-5))`
-/

namespace A268941.P8763313342663456187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268944 (A000124 (n + 5) - 5).toNat)

end

end A268941.P8763313342663456187

namespace A268941

/-- `lcm(2, A268944(A000124(n+5)-5))` -/
def P8763313342663456187.Spec : Prop :=
  ∀ n, (P8763313342663456187.a n : ℤ) = A268941 (n + 1)

end A268941

/-! ## A268941.P10630697344201973279

`or(A000038(n), A268944(A000124(n+5)-5))`
-/

namespace A268941.P10630697344201973279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A268944 (A000124 (n + 5) - 5).toNat)

end

end A268941.P10630697344201973279

namespace A268941

/-- `or(A000038(n), A268944(A000124(n+5)-5))` -/
def P10630697344201973279.Spec : Prop :=
  ∀ n, P10630697344201973279.a n = A268941 (n + 1)

end A268941

/-! ## A268941.P3577415469146496445

`A057427(n+1)*A268944(A000124(n+5)-5)`
-/

namespace A268941.P3577415469146496445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A268944 (A000124 (n + 5) - 5).toNat

end

end A268941.P3577415469146496445

namespace A268941

/-- `A057427(n+1)*A268944(A000124(n+5)-5)` -/
def P3577415469146496445.Spec : Prop :=
  ∀ n, P3577415469146496445.a n = A268941 (n + 1)

end A268941

/-! ## A268941.P11984546057566142725

`A056594(4*n)*A268944(A000124(n+5)-5)`
-/

namespace A268941.P11984546057566142725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (4 * n) * A268944 (A000124 (n + 5) - 5).toNat

end

end A268941.P11984546057566142725

namespace A268941

/-- `A056594(4*n)*A268944(A000124(n+5)-5)` -/
def P11984546057566142725.Spec : Prop :=
  ∀ n, P11984546057566142725.a n = A268941 (n + 1)

end A268941

/-! ## A268941.P10477781597704055044

`A268944(A000124(n+5)-5)%A268942(n+1)`
-/

namespace A268941.P10477781597704055044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268944 (A000124 (n + 5) - 5).toNat) (A268942 (n + 1))

end

end A268941.P10477781597704055044

namespace A268941

/-- `A268944(A000124(n+5)-5)%A268942(n+1)` -/
def P10477781597704055044.Spec : Prop :=
  ∀ n, P10477781597704055044.a n = A268941 (n + 1)

end A268941

/-! ## A268941.P10825353699863327446

`A014963(12*n+6)*A268944(A000124(n+5)-5)`
-/

namespace A268941.P10825353699863327446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A268944 (A000124 (n + 5) - 5).toNat

end

end A268941.P10825353699863327446

namespace A268941

/-- `A014963(12*n+6)*A268944(A000124(n+5)-5)` -/
def P10825353699863327446.Spec : Prop :=
  ∀ n, P10825353699863327446.a n = A268941 (n + 1)

end A268941

/-!
# A268942: Number of length-n 0..6 arrays with no repeated value unequal to the previous repeated value plus one mod 6+1.

The programs for A268942, the canonical program `A268942.P6786242604058713119` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268942 has offset 1).

The definition of A268942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268942.P6786242604058713119

`11*a(n-1)-23*a(n-2)-42*a(n-3)` with `a(0)=7, a(1)=49, a(2)=336`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268942

/-- `11*a(n-1)-23*a(n-2)-42*a(n-3)` -/
def P6786242604058713119.Spec : Prop :=
  ∀ n, P6786242604058713119.a n = A268942 (n + 1)

theorem P6786242604058713119.correct : P6786242604058713119.Spec := by
  intro n
  simp only [A268942, Nat.add_sub_cancel]

end A268942

/-! ## A268942.P2798416619974018848

`A268944(n+11+∑[n+5])`
-/

namespace A268942.P2798416619974018848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (n + 11 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268942.P2798416619974018848

namespace A268942

/-- `A268944(n+11+∑[n+5])` -/
def P2798416619974018848.Spec : Prop :=
  ∀ n, P2798416619974018848.a n = A268942 (n + 1)

end A268942

/-! ## A268942.P6727318870507026391

`lcm(7, A268944(A000217(n+6)-5))`
-/

namespace A268942.P6727318870507026391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A268944 (A000217 (n + 6) - 5).toNat)

end

end A268942.P6727318870507026391

namespace A268942

/-- `lcm(7, A268944(A000217(n+6)-5))` -/
def P6727318870507026391.Spec : Prop :=
  ∀ n, (P6727318870507026391.a n : ℤ) = A268942 (n + 1)

end A268942

/-! ## A268942.P15224261884547250413

`or(A000007(n), A268944(A046691(n+4)-1))`
-/

namespace A268942.P15224261884547250413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A268944 (A046691 (n + 4) - 1).toNat)

end

end A268942.P15224261884547250413

namespace A268942

/-- `or(A000007(n), A268944(A046691(n+4)-1))` -/
def P15224261884547250413.Spec : Prop :=
  ∀ n, P15224261884547250413.a n = A268942 (n + 1)

end A268942

/-! ## A268942.P6343848550744222224

`A033999(n)²*A268944(A046691(n+4)-1)`
-/

namespace A268942.P6343848550744222224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A268944 (A046691 (n + 4) - 1).toNat

end

end A268942.P6343848550744222224

namespace A268942

/-- `A033999(n)²*A268944(A046691(n+4)-1)` -/
def P6343848550744222224.Spec : Prop :=
  ∀ n, P6343848550744222224.a n = A268942 (n + 1)

end A268942

/-! ## A268942.P4537304585298658629

`A268944(A000217(n+6)-5)+A046660(A020639(n+1))`
-/

namespace A268942.P4537304585298658629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000217 (n + 6) - 5).toNat + A046660 (A020639 (n + 1)).toNat

end

end A268942.P4537304585298658629

namespace A268942

/-- `A268944(A000217(n+6)-5)+A046660(A020639(n+1))` -/
def P4537304585298658629.Spec : Prop :=
  ∀ n, P4537304585298658629.a n = A268942 (n + 1)

end A268942

/-!
# A268943: Number of length-n 0..7 arrays with no repeated value unequal to the previous repeated value plus one mod 7+1.

The programs for A268943, the canonical program `A268943.P761306384894213729` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268943 has offset 1).

The definition of A268943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268943.P761306384894213729

`13*a(n-1)-34*a(n-2)-56*a(n-3)` with `a(0)=8, a(1)=64, a(2)=504`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268943

/-- `13*a(n-1)-34*a(n-2)-56*a(n-3)` -/
def P761306384894213729.Spec : Prop :=
  ∀ n, P761306384894213729.a n = A268943 (n + 1)

theorem P761306384894213729.correct : P761306384894213729.Spec := by
  intro n
  simp only [A268943, Nat.add_sub_cancel]

end A268943

/-! ## A268943.P3205733183615419715

`A268944(n+16+∑[n+6])`
-/

namespace A268943.P3205733183615419715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (n + 16 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268943.P3205733183615419715

namespace A268943

/-- `A268944(n+16+∑[n+6])` -/
def P3205733183615419715.Spec : Prop :=
  ∀ n, P3205733183615419715.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P14206898474877029817

`lcm(2, A268944(A000124(n+7)-7))`
-/

namespace A268943.P14206898474877029817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268944 (A000124 (n + 7) - 7).toNat)

end

end A268943.P14206898474877029817

namespace A268943

/-- `lcm(2, A268944(A000124(n+7)-7))` -/
def P14206898474877029817.Spec : Prop :=
  ∀ n, (P14206898474877029817.a n : ℤ) = A268943 (n + 1)

end A268943

/-! ## A268943.P14550383572043362852

`A268944(A055999(n+4))%A268967(n+1)`
-/

namespace A268943.P14550383572043362852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268944 (A055999 (n + 4)).toNat) (A268967 (n + 1))

end

end A268943.P14550383572043362852

namespace A268943

/-- `A268944(A055999(n+4))%A268967(n+1)` -/
def P14550383572043362852.Spec : Prop :=
  ∀ n, P14550383572043362852.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P16659085946997539870

`A268944(A000124(n+7)-7)+n*A000038(n)`
-/

namespace A268943.P16659085946997539870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000124 (n + 7) - 7).toNat + (n : ℤ) * A000038 n

end

end A268943.P16659085946997539870

namespace A268943

/-- `A268944(A000124(n+7)-7)+n*A000038(n)` -/
def P16659085946997539870.Spec : Prop :=
  ∀ n, P16659085946997539870.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P7020731696904147845

`A000108(val(n+1, 11))*A268944(A000124(n+7)-7)`
-/

namespace A268943.P7020731696904147845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.valuation (n + 1) 11) * A268944 (A000124 (n + 7) - 7).toNat

end

end A268943.P7020731696904147845

namespace A268943

/-- `A000108(val(n+1, 11))*A268944(A000124(n+7)-7)` -/
def P7020731696904147845.Spec : Prop :=
  ∀ n, P7020731696904147845.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P10264727582910687723

`A000108(gcd(n, n+1))*A268944(A000124(n+7)-7)`
-/

namespace A268943.P10264727582910687723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A268944 (A000124 (n + 7) - 7).toNat

end

end A268943.P10264727582910687723

namespace A268943

/-- `A000108(gcd(n, n+1))*A268944(A000124(n+7)-7)` -/
def P10264727582910687723.Spec : Prop :=
  ∀ n, P10264727582910687723.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P7245935655068055943

`A000188(A000040(n+1))*A268944(A000124(n+7)-7)`
-/

namespace A268943.P7245935655068055943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000040 (n + 1)).toNat * A268944 (A000124 (n + 7) - 7).toNat

end

end A268943.P7245935655068055943

namespace A268943

/-- `A000188(A000040(n+1))*A268944(A000124(n+7)-7)` -/
def P7245935655068055943.Spec : Prop :=
  ∀ n, P7245935655068055943.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P3383629037225104176

`A001222(A065091(n+1))*A268944(A000124(n+7)-7)`
-/

namespace A268943.P3383629037225104176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065091 (n + 1)).toNat * A268944 (A000124 (n + 7) - 7).toNat

end

end A268943.P3383629037225104176

namespace A268943

/-- `A001222(A065091(n+1))*A268944(A000124(n+7)-7)` -/
def P3383629037225104176.Spec : Prop :=
  ∀ n, P3383629037225104176.a n = A268943 (n + 1)

end A268943

/-! ## A268943.P7421188721492777947

`A014963(A000217(n+3))*A268944(A000124(n+7)-7)`
-/

namespace A268943.P7421188721492777947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 3)).toNat * A268944 (A000124 (n + 7) - 7).toNat

end

end A268943.P7421188721492777947

namespace A268943

/-- `A014963(A000217(n+3))*A268944(A000124(n+7)-7)` -/
def P7421188721492777947.Spec : Prop :=
  ∀ n, P7421188721492777947.a n = A268943 (n + 1)

end A268943

/-!
# A268944: T(n,k)=Number of length-n 0..k arrays with no repeated value unequal to the previous repeated value plus one mod k+1.

The programs for A268944, there is no canonical definition to state claims against.
-/

/-! ## A268944.P2457209556686367861

`A269537(n+1)-A102683(A026691(n))`
-/

namespace A268944.P2457209556686367861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) - A102683 (A026691 n).toNat

end

end A268944.P2457209556686367861

/-! ## A268944.P7489807490992111193

`A269537(n+1)-A034332(A122848(n))`
-/

namespace A268944.P7489807490992111193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) - A034332 (A122848 n).toNat

end

end A268944.P7489807490992111193

/-! ## A268944.P3433788047851194291

`A269537(n+1)-A102683(A228902(n))`
-/

namespace A268944.P3433788047851194291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) - A102683 (A228902 n).toNat

end

end A268944.P3433788047851194291

/-! ## A268944.P10587409504658678573

`A269537(n+1)-A025469(A018321(n+1))`
-/

namespace A268944.P10587409504658678573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) - A025469 (A018321 (n + 1)).toNat

end

end A268944.P10587409504658678573

/-! ## A268944.P8853897737952409204

`A269537(n+1)-A121373(A135193(n+1))`
-/

namespace A268944.P8853897737952409204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269537 (n + 1) - A121373 (A135193 (n + 1)).toNat

end

end A268944.P8853897737952409204

/-!
# A268945: Number of length-4 0..n arrays with no repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A268945, the canonical program `A268945.P14493241752481759349` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268945 has offset 1).

The definition of A268945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268945.P14493241752481759349

`(n+2)^4-∑[6*(n+1)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268945

/-- `(n+2)^4-∑[6*(n+1)]` -/
def P14493241752481759349.Spec : Prop :=
  ∀ n, P14493241752481759349.a n = A268945 (n + 1)

theorem P14493241752481759349.correct : P14493241752481759349.Spec := by
  intro n
  simp only [A268945, Nat.add_sub_cancel]

end A268945

/-! ## A268945.P11675570433677781849

`abs(A269538(n+1)-n)`
-/

namespace A268945.P11675570433677781849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269538 (n + 1) - (n : ℤ)|

end

end A268945.P11675570433677781849

namespace A268945

/-- `abs(A269538(n+1)-n)` -/
def P11675570433677781849.Spec : Prop :=
  ∀ n, P11675570433677781849.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P6651793510587517457

`(n+2)*(A058794(n)+3)`
-/

namespace A268945.P6651793510587517457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A058794 n + 3)

end

end A268945.P6651793510587517457

namespace A268945

/-- `(n+2)*(A058794(n)+3)` -/
def P6651793510587517457.Spec : Prop :=
  ∀ n, P6651793510587517457.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P8886488663707495148

`abs(A269641(n+1)-(n-1))`
-/

namespace A268945.P8886488663707495148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269641 (n + 1) - ((n : ℤ) - 1)|

end

end A268945.P8886488663707495148

namespace A268945

/-- `abs(A269641(n+1)-(n-1))` -/
def P8886488663707495148.Spec : Prop :=
  ∀ n, P8886488663707495148.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P10287219852437510250

`(A212836(n+1)+n+3)*(n+2)`
-/

namespace A268945.P10287219852437510250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212836 (n + 1) + (n + 3 : ℤ)) * (n + 2 : ℤ)

end

end A268945.P10287219852437510250

namespace A268945

/-- `(A212836(n+1)+n+3)*(n+2)` -/
def P10287219852437510250.Spec : Prop :=
  ∀ n, P10287219852437510250.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P17445425244400986950

`(A064043(n+1)+n+2)*(n+2)`
-/

namespace A268945.P17445425244400986950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064043 (n + 1) + (n + 2 : ℤ)) * (n + 2 : ℤ)

end

end A268945.P17445425244400986950

namespace A268945

/-- `(A064043(n+1)+n+2)*(n+2)` -/
def P17445425244400986950.Spec : Prop :=
  ∀ n, P17445425244400986950.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P10904754993602596634

`(n+2)*(A242135(n+2)-(n-1))`
-/

namespace A268945.P10904754993602596634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A242135 (n + 2) - ((n : ℤ) - 1))

end

end A268945.P10904754993602596634

namespace A268945

/-- `(n+2)*(A242135(n+2)-(n-1))` -/
def P10904754993602596634.Spec : Prop :=
  ∀ n, P10904754993602596634.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P912596278744044322

`(n+2)*(A318765(n+1)-(n-2))`
-/

namespace A268945.P912596278744044322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A318765 (n + 1) - ((n : ℤ) - 2))

end

end A268945.P912596278744044322

namespace A268945

/-- `(n+2)*(A318765(n+1)-(n-2))` -/
def P912596278744044322.Spec : Prop :=
  ∀ n, P912596278744044322.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P4608371886634640403

`Δ[A242604(n+1)+A000538(n)]`
-/

namespace A268945.P4608371886634640403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242604 (n + 1) + A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268945.P4608371886634640403

namespace A268945

/-- `Δ[A242604(n+1)+A000538(n)]` -/
def P4608371886634640403.Spec : Prop :=
  ∀ n, P4608371886634640403.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P17200605040868759484

`(A221466(n+1)+A011379(n+1))/(n+1)²`
-/

namespace A268945.P17200605040868759484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221466 (n + 1) + A011379 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A268945.P17200605040868759484

namespace A268945

/-- `(A221466(n+1)+A011379(n+1))/(n+1)²` -/
def P17200605040868759484.Spec : Prop :=
  ∀ n, P17200605040868759484.a n = (A268945 (n + 1) : ℚ)

end A268945

/-! ## A268945.P178779373672272954

`(n+2)*(A121670(n+2)+3)`
-/

namespace A268945.P178779373672272954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A121670 (n + 2) + 3)

end

end A268945.P178779373672272954

namespace A268945

/-- `(n+2)*(A121670(n+2)+3)` -/
def P178779373672272954.Spec : Prop :=
  ∀ n, P178779373672272954.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P6922031499324745619

`(n+2)*(A177058(n+3)+2)`
-/

namespace A268945.P6922031499324745619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A177058 (n + 3) + 2)

end

end A268945.P6922031499324745619

namespace A268945

/-- `(n+2)*(A177058(n+3)+2)` -/
def P6922031499324745619.Spec : Prop :=
  ∀ n, P6922031499324745619.a n = A268945 (n + 1)

end A268945

/-! ## A268945.P1492419564987230540

`(n+2)*(A033445(n+2)-n)`
-/

namespace A268945.P1492419564987230540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A033445 (n + 2) - (n : ℤ))

end

end A268945.P1492419564987230540

namespace A268945

/-- `(n+2)*(A033445(n+2)-n)` -/
def P1492419564987230540.Spec : Prop :=
  ∀ n, P1492419564987230540.a n = A268945 (n + 1)

end A268945

/-!
# A268946: Number of length-5 0..n arrays with no repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A268946, the canonical program `A268946.P11424631748246636975` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268946 has offset 1).

The definition of A268946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268946.P11424631748246636975

`(n+1)^5+5*(n+1)^4+4*(n+1)^3+3*(n+1)²+2*(n+1)-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268946

/-- `(n+1)^5+5*(n+1)^4+4*(n+1)^3+3*(n+1)²+2*(n+1)-1` -/
def P11424631748246636975.Spec : Prop :=
  ∀ n, P11424631748246636975.a n = A268946 (n + 1)

theorem P11424631748246636975.correct : P11424631748246636975.Spec := by
  intro n
  simp only [A268946, Nat.add_sub_cancel]

end A268946

/-!
# A268947: Number of length-6 0..n arrays with no repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A268947, there is no canonical definition to state claims against.
-/

/-! ## A268947.P4098683535310094562

`A268944(A167499(n+4)+1)`
-/

namespace A268947.P4098683535310094562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A167499 (n + 4) + 1).toNat

end

end A268947.P4098683535310094562

/-! ## A268947.P8106887026553128236

`A268944(A133263(n+5)+4)`
-/

namespace A268947.P8106887026553128236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A133263 (n + 5) + 4).toNat

end

end A268947.P8106887026553128236

/-! ## A268947.P5160557656183476171

`A268944(A000124(n+5)+5)`
-/

namespace A268947.P5160557656183476171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000124 (n + 5) + 5).toNat

end

end A268947.P5160557656183476171

/-! ## A268947.P17283838959509838303

`A268944(A253145(n+4)+6)`
-/

namespace A268947.P17283838959509838303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A253145 (n + 4) + 6).toNat

end

end A268947.P17283838959509838303

/-! ## A268947.P9963063163555009400

`A268944(A000217(n+5)+6)`
-/

namespace A268947.P9963063163555009400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000217 (n + 5) + 6).toNat

end

end A268947.P9963063163555009400

/-! ## A268947.P637716613754617315

`A268944(A167614(n+5)+A001489(n+3))`
-/

namespace A268947.P637716613754617315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A167614 (n + 5) + A001489 (n + 3)).toNat

end

end A268947.P637716613754617315

/-!
# A268948: Number of length-7 0..n arrays with no repeated value unequal to the previous repeated value plus one mod n+1.

The programs for A268948, there is no canonical definition to state claims against.
-/

/-! ## A268948.P6807814458692546134

`A268944(A056119(n)+28)`
-/

namespace A268948.P6807814458692546134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A056119 n + 28).toNat

end

end A268948.P6807814458692546134

/-! ## A268948.P11266438198689629499

`A268944(A167499(n+5)+2)`
-/

namespace A268948.P11266438198689629499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A167499 (n + 5) + 2).toNat

end

end A268948.P11266438198689629499

/-! ## A268948.P13740746923257230821

`A268944(A167614(n+5)+4)`
-/

namespace A268948.P13740746923257230821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A167614 (n + 5) + 4).toNat

end

end A268948.P13740746923257230821

/-! ## A268948.P343043926409277388

`A268944(A000124(n+6)+6)`
-/

namespace A268948.P343043926409277388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000124 (n + 6) + 6).toNat

end

end A268948.P343043926409277388

/-! ## A268948.P13360720556066266433

`A268944(A000217(n+6)+7)`
-/

namespace A268948.P13360720556066266433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A000217 (n + 6) + 7).toNat

end

end A268948.P13360720556066266433

/-! ## A268948.P11020747491420508887

`A268944(A345478(Δ[A023551(n+1)]))`
-/

namespace A268948.P11020747491420508887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268944 (A345478 (f1 (n + 1) - f1 n).toNat).toNat

end

end A268948.P11020747491420508887

/-!
# A268949: Number of sequences in {1,...,2n}^(2n) with longest increasing subsequence of length n.

The programs for A268949, there is no canonical definition to state claims against.
-/

/-! ## A268949.P17667648484885287623

`A245667(∑[4*n])`
-/

namespace A268949.P17667648484885287623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245667 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268949.P17667648484885287623

/-! ## A268949.P15880838796897158095

`A245667(A046092(n))^A178334(n)`
-/

namespace A268949.P15880838796897158095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245667 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A268949.P15880838796897158095

/-! ## A268949.P4774752892631985895

`or(A000007(n), A245667(A046092(n)))`
-/

namespace A268949.P4774752892631985895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245667 (A046092 n).toNat)

end

end A268949.P4774752892631985895

/-! ## A268949.P13632456963927514274

`or(A178226(n), A245667(A046092(n)))`
-/

namespace A268949.P13632456963927514274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178226 n) (A245667 (A046092 n).toNat)

end

end A268949.P13632456963927514274

/-! ## A268949.P11190068264572430198

`or(A245667(A046092(n)), A299038(n))`
-/

namespace A268949.P11190068264572430198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245667 (A046092 n).toNat) (A299038 n)

end

end A268949.P11190068264572430198

/-!
# A268950: Number of perfectly looping walks containing n pieces from the set described in the links.

The programs for A268950, there is no canonical definition to state claims against.
-/

/-! ## A268950.P11889208313520912068

`A351290(A246565(n)-A191617(n+1))`
-/

namespace A268950.P11889208313520912068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A246565 n - A191617 (n + 1)).toNat

end

end A268950.P11889208313520912068

/-!
# A268951: Number of growing tree trajectories (T(1),T(2),...,T(n)), where T(k) is an unlabeled tree on k nodes and T(k) can be obtained from T(k+1) by deletion of a leaf.

The programs for A268951, there is no canonical definition to state claims against.
-/

/-! ## A268951.P4189288187296312360

`A219347(n)+A066490(A295370(n))`
-/

namespace A268951.P4189288187296312360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n + A066490 (A295370 n).toNat

end

end A268951.P4189288187296312360

/-! ## A268951.P1680645202521350419

`A340764(A286077(n)+A001405(n))`
-/

namespace A268951.P1680645202521350419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A286077 n + A001405 n).toNat

end

end A268951.P1680645202521350419

/-! ## A268951.P11523778902706745090

`A294783(n)+A066490(A295370(n))`
-/

namespace A268951.P11523778902706745090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 n + A066490 (A295370 n).toNat

end

end A268951.P11523778902706745090

/-! ## A268951.P16125253210148867952

`A138265(n)-A325106(A005043(n))`
-/

namespace A268951.P16125253210148867952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138265 n - A325106 (A005043 n).toNat

end

end A268951.P16125253210148867952

/-!
# A268952: Number of length-n 0..4 arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268952, there is no canonical definition to state claims against.
-/

/-! ## A268952.P13888224106142316518

`A268956(Δ[∑[∑[n+1]]+(n+1)²]+1)`
-/

namespace A268952.P13888224106142316518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A268952.P13888224106142316518

/-! ## A268952.P17134739623733137133

`record[A268956(A027379(n))]`
-/

namespace A268952.P17134739623733137133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268952.P17134739623733137133

/-! ## A268952.P1403398818340492410

`A268956(A027379(n+2))^ceil(acot(n))`
-/

namespace A268952.P1403398818340492410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268956 (A027379 (n + 2)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A268952.P1403398818340492410

/-! ## A268952.P11567179594778058879

`gcd(n, n+1)*A268956(A055998(n+2))`
-/

namespace A268952.P11567179594778058879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A268956 (A055998 (n + 2)).toNat

end

end A268952.P11567179594778058879

/-! ## A268952.P9969589147151574423

`record[A268956(A004273(n)+A000124(n))]`
-/

namespace A268952.P9969589147151574423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A004273 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268952.P9969589147151574423

/-! ## A268952.P6955707627897232377

`or(A000007(n), A268956(A027379(n+2)))`
-/

namespace A268952.P6955707627897232377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A268956 (A027379 (n + 2)).toNat)

end

end A268952.P6955707627897232377

/-! ## A268952.P17889865197129515780

`A268956(A155212(n)+5)^A019426(2*n)`
-/

namespace A268952.P17889865197129515780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268956 (A155212 n + 5).toNat : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A268952.P17889865197129515780

/-! ## A268952.P2401275631592222862

`lcm(A268956(A000124(n+4)-4), A309873(n+1))`
-/

namespace A268952.P2401275631592222862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A268956 (A000124 (n + 4) - 4).toNat) (A309873 (n + 1))

end

end A268952.P2401275631592222862

/-!
# A268953: Number of length-n 0..5 arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268953, there is no canonical definition to state claims against.
-/

/-! ## A268953.P4227654571754761164

`A268956(A046691(n+3))`
-/

namespace A268953.P4227654571754761164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A046691 (n + 3)).toNat

end

end A268953.P4227654571754761164

/-! ## A268953.P16732544527543078139

`A268956(Δ[A023545(n+1)])`
-/

namespace A268953.P16732544527543078139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (f1 (n + 1) - f1 n).toNat

end

end A268953.P16732544527543078139

/-! ## A268953.P5668828578074150652

`A268956(A027379(n+3)-1)`
-/

namespace A268953.P5668828578074150652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A027379 (n + 3) - 1).toNat

end

end A268953.P5668828578074150652

/-! ## A268953.P5965882163465206626

`A268956(A000217(n+5)-4)`
-/

namespace A268953.P5965882163465206626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000217 (n + 5) - 4).toNat

end

end A268953.P5965882163465206626

/-! ## A268953.P18429807035210684840

`record[A268956(A122797(A052905(n)))]`
-/

namespace A268953.P18429807035210684840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A122797 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268953.P18429807035210684840

/-!
# A268954: Number of length-n 0..6 arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268954, there is no canonical definition to state claims against.
-/

/-! ## A268954.P14936054929978512990

`A268956(A052905(n+3))`
-/

namespace A268954.P14936054929978512990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A052905 (n + 3)).toNat

end

end A268954.P14936054929978512990

/-! ## A268954.P8301495203242940722

`A268956(A055999(n+3)+1)`
-/

namespace A268954.P8301495203242940722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A055999 (n + 3) + 1).toNat

end

end A268954.P8301495203242940722

/-! ## A268954.P8045491147365567127

`A268956(A027379(n+4)-2)`
-/

namespace A268954.P8045491147365567127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A027379 (n + 4) - 2).toNat

end

end A268954.P8045491147365567127

/-! ## A268954.P15869220676941621228

`A268956(A055998(n+4)-2)`
-/

namespace A268954.P15869220676941621228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A055998 (n + 4) - 2).toNat

end

end A268954.P15869220676941621228

/-! ## A268954.P12718007484351008786

`A268956(A000096(n+5)-4)`
-/

namespace A268954.P12718007484351008786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000096 (n + 5) - 4).toNat

end

end A268954.P12718007484351008786

/-! ## A268954.P11955571673275860372

`A268956(A000124(n+6)-6)`
-/

namespace A268954.P11955571673275860372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000124 (n + 6) - 6).toNat

end

end A268954.P11955571673275860372

/-! ## A268954.P4263606726134157522

`A268956(Δ[A023551(n+1)]+1)`
-/

namespace A268954.P4263606726134157522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (f1 (n + 1) - f1 n + 1).toNat

end

end A268954.P4263606726134157522

/-! ## A268954.P5060908510380724946

`A268956(Δ[A023545(n+2)]-1)`
-/

namespace A268954.P5060908510380724946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (f1 (n + 1) - f1 n - 1).toNat

end

end A268954.P5060908510380724946

/-! ## A268954.P1405366215777294235

`A268956(n+2+A000096(n+4))`
-/

namespace A268954.P1405366215777294235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 ((n + 2 : ℤ) + A000096 (n + 4)).toNat

end

end A268954.P1405366215777294235

/-! ## A268954.P4749129788804283693

`A268956(A000217(n+5)+n+1)`
-/

namespace A268954.P4749129788804283693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A268954.P4749129788804283693

/-!
# A268955: Number of length-n 0..7 arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268955, there is no canonical definition to state claims against.
-/

/-! ## A268955.P2691600508888786627

`A268956(C(n+7, 2)+n+1)`
-/

namespace A268955.P2691600508888786627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (Nat.choose (n + 7) 2 + (n + 1))

end

end A268955.P2691600508888786627

/-! ## A268955.P17039519749456144387

`A268956(A055999(n+4))`
-/

namespace A268955.P17039519749456144387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A055999 (n + 4)).toNat

end

end A268955.P17039519749456144387

/-! ## A268955.P6266479215561170800

`A268956(Δ[A023551(n+2)])`
-/

namespace A268955.P6266479215561170800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (f1 (n + 1) - f1 n).toNat

end

end A268955.P6266479215561170800

/-! ## A268955.P9720949258068400085

`A268956(A052905(n+4)-1)`
-/

namespace A268955.P9720949258068400085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A052905 (n + 4) - 1).toNat

end

end A268955.P9720949258068400085

/-! ## A268955.P14457874906727617821

`A268956(A000096(n+6)-5)`
-/

namespace A268955.P14457874906727617821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000096 (n + 6) - 5).toNat

end

end A268955.P14457874906727617821

/-! ## A268955.P1383433080967583792

`A268956(A000124(n+7)-7)`
-/

namespace A268955.P1383433080967583792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000124 (n + 7) - 7).toNat

end

end A268955.P1383433080967583792

/-! ## A268955.P11431376766472130092

`A268956(A000217(n+6)+n+1)`
-/

namespace A268955.P11431376766472130092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A268955.P11431376766472130092

/-!
# A268956: T(n,k)=Number of length-n 0..k arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268956, there is no canonical definition to state claims against.
-/

/-! ## A268956.P8665772978555689759

`A120397(A226441(n+1)%A195877(n+1))`
-/

namespace A268956.P8665772978555689759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (Int.tmod (A226441 (n + 1)) (A195877 (n + 1))).toNat

end

end A268956.P8665772978555689759

/-! ## A268956.P16887165547084705974

`A331852(A001318(A263703(n+1)))`
-/

namespace A268956.P16887165547084705974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A001318 (A263703 (n + 1)).toNat).toNat

end

end A268956.P16887165547084705974

/-! ## A268956.P7127143024465098231

`A263744(n+1)-A178780(A209576(n+1))`
-/

namespace A268956.P7127143024465098231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263744 (n + 1) - A178780 (A209576 (n + 1)).toNat

end

end A268956.P7127143024465098231

/-! ## A268956.P16390136287365604201

`A139094(A002260(n+1)*A263703(n+1))`
-/

namespace A268956.P16390136287365604201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139094 (A002260 (n + 1) * A263703 (n + 1)).toNat

end

end A268956.P16390136287365604201

/-! ## A268956.P1444213154625700495

`A120397(A226441(n+1))`
-/

namespace A268956.P1444213154625700495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A226441 (n + 1)).toNat

end

end A268956.P1444213154625700495

/-!
# A268957: Number of length-(n+3) 0..n arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268957, there is no canonical definition to state claims against.
-/

/-! ## A268957.P13679848140382458782

`A268956((n+1)²+(n+3)²)`
-/

namespace A268957.P13679848140382458782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A268957.P13679848140382458782

/-! ## A268957.P2302145717935141559

`A268009(A000124(n+3))-A000124(n+3)`
-/

namespace A268957.P2302145717935141559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (A000124 (n + 3)).toNat - A000124 (n + 3)

end

end A268957.P2302145717935141559

/-!
# A268958: Number of length-(n+4) 0..n arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268958, there is no canonical definition to state claims against.
-/

/-! ## A268958.P17189223280342003032

`A268956(C(2*(n+3), 2)-n)`
-/

namespace A268958.P17189223280342003032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (Nat.choose (2 * (n + 3)) 2 - n)

end

end A268958.P17189223280342003032

/-! ## A268958.P3298699457426560825

`A268956(eq[11, A249900(n)])`
-/

namespace A268958.P3298699457426560825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268958.P3298699457426560825

/-! ## A268958.P5016783163920413604

`A268956(A000384(n+3)-n)`
-/

namespace A268958.P5016783163920413604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A000384 (n + 3) - (n : ℤ)).toNat

end

end A268958.P5016783163920413604

/-! ## A268958.P15936372891274334054

`A268956(A326658(2*n+3)+7)`
-/

namespace A268958.P15936372891274334054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A326658 (2 * n + 3) + 7).toNat

end

end A268958.P15936372891274334054

/-!
# A268959: Number of length-(n+5) 0..n arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268959, there is no canonical definition to state claims against.
-/

/-! ## A268959.P4842747105237856119

`A268956(eq[10, A249900(n)])`
-/

namespace A268959.P4842747105237856119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268959.P4842747105237856119

/-!
# A268960: Number of length-(n+6) 0..n arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268960, there is no canonical definition to state claims against.
-/

/-! ## A268960.P9257609892091457333

`A268956(eq[14, A249900(n)])`
-/

namespace A268960.P9257609892091457333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268960.P9257609892091457333

/-! ## A268960.P15512671187178098227

`A268956(A001844(n+3)+3)`
-/

namespace A268960.P15512671187178098227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A001844 (n + 3) + 3).toNat

end

end A268960.P15512671187178098227

/-! ## A268960.P5242812016891150504

`A268956(2*A014206(n+3))`
-/

namespace A268960.P5242812016891150504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (2 * A014206 (n + 3)).toNat

end

end A268960.P5242812016891150504

/-! ## A268960.P2548273052201001896

`A268956(4*A000124(n+3))`
-/

namespace A268960.P2548273052201001896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (4 * A000124 (n + 3)).toNat

end

end A268960.P2548273052201001896

/-! ## A268960.P14350530724953725527

`A268956(A166136(2*n+5)+n+1)`
-/

namespace A268960.P14350530724953725527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A166136 (2 * n + 5) + (n : ℤ) + 1).toNat

end

end A268960.P14350530724953725527

/-!
# A268961: Number of length-(n+7) 0..n arrays with no repeated value equal to the previous repeated value, with new values introduced in sequential order.

The programs for A268961, there is no canonical definition to state claims against.
-/

/-! ## A268961.P16759851201611248358

`A268956(A268581(n+2)+7)`
-/

namespace A268961.P16759851201611248358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A268581 (n + 2) + 7).toNat

end

end A268961.P16759851201611248358

/-! ## A268961.P1490753336612602020

`A268956(A014105(n+4)-n)`
-/

namespace A268961.P1490753336612602020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A014105 (n + 4) - (n : ℤ)).toNat

end

end A268961.P1490753336612602020

/-!
# A268963: Primes 4k+1 at the end of the maximal gaps in A084162.

The programs for A268963, there is no canonical definition to state claims against.
-/

/-! ## A268963.P15284153820414914041

`A084161(n)+A084162(n)`
-/

namespace A268963.P15284153820414914041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084161 n + A084162 n

end

end A268963.P15284153820414914041

/-! ## A268963.P4837363295586674394

`A084162(n)+A084160(floor(A084162(n)/4))`
-/

namespace A268963.P4837363295586674394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084162 n + A084160 ⌊(A084162 n : ℚ) / 4⌋.toNat

end

end A268963.P4837363295586674394

/-! ## A268963.P5301314302463845181

`A084161(n)+record[Δ[A002313(n+1)]]`
-/

namespace A268963.P5301314302463845181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084161 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268963.P5301314302463845181

/-! ## A268963.P1690762763714579760

`A084161(n)+record[A002144(n+1)-A002313(n+1)]`
-/

namespace A268963.P1690762763714579760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084161 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268963.P1690762763714579760

/-! ## A268963.P4815080466192660478

`A084161(n)+record[A002313(n+2)-A002313(n+1)]`
-/

namespace A268963.P4815080466192660478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084161 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268963.P4815080466192660478

/-!
# A268964: Number of n X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268964, there is no canonical definition to state claims against.
-/

/-! ## A268964.P16915058550228385095

`A268897(n+1)+A233155(A001844(n))`
-/

namespace A268964.P16915058550228385095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268897 (n + 1) + A233155 (A001844 n).toNat

end

end A268964.P16915058550228385095

/-! ## A268964.P12551451947134592072

`A268971(∑[4*n]+1)`
-/

namespace A268964.P12551451947134592072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268964.P12551451947134592072

/-! ## A268964.P2317054902684229357

`lcm(3, A268971(A001844(n)))`
-/

namespace A268964.P2317054902684229357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A268971 (A001844 n).toNat)

end

end A268964.P2317054902684229357

/-! ## A268964.P3032928175772520994

`record[gcd(A114327(n), A268971(n+1))]`
-/

namespace A268964.P3032928175772520994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A268971 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268964.P3032928175772520994

/-! ## A268964.P11286919505008369920

`or(A000007(n), A268971(A001844(n)))`
-/

namespace A268964.P11286919505008369920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A268971 (A001844 n).toNat)

end

end A268964.P11286919505008369920

/-!
# A268965: Number of n X 2 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268965, the canonical program `A268965.P9050296392268249360` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268965 has offset 1).

The definition of A268965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268965.P9050296392268249360

`ogf((9-12x)/(1-8x+16x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268965

/-- `ogf((9-12x)/(1-8x+16x^2))` -/
def P9050296392268249360.Spec : Prop :=
  ∀ n, P9050296392268249360.a n = A268965 (n + 1)

theorem P9050296392268249360.correct : P9050296392268249360.Spec := by
  intro n
  simp only [A268965, Nat.add_sub_cancel]

end A268965

/-! ## A268965.P14689004654501732155

`(6*n+9)*4^n`
-/

namespace A268965.P14689004654501732155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 9) * 4 ^ n

end

end A268965.P14689004654501732155

namespace A268965

/-- `(6*n+9)*4^n` -/
def P14689004654501732155.Spec : Prop :=
  ∀ n, (P14689004654501732155.a n : ℤ) = A268965 (n + 1)

end A268965

/-! ## A268965.P1566998892476147509

`record[-((2/(n+2)+2)*a(n-1))]` with `a(0)=9`
-/

namespace A268965.P1566998892476147509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [9] fun n f1 =>
  -((2 / (n + 2 : ℚ) + 2) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268965.P1566998892476147509

namespace A268965

/-- `record[-((2/(n+2)+2)*a(n-1))]` -/
def P1566998892476147509.Spec : Prop :=
  ∀ n, P1566998892476147509.a n = (A268965 (n + 1) : ℚ)

end A268965

/-! ## A268965.P15617902162414210207

`record[-(a(n-1)+a(n-1)+a(n-1)/(n/2+1))]` with `a(0)=9`
-/

namespace A268965.P15617902162414210207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [9] fun n f1 =>
  -(f1 (n - 1) + (f1 (n - 1) + f1 (n - 1) / ((n : ℚ) / 2 + 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268965.P15617902162414210207

namespace A268965

/-- `record[-(a(n-1)+a(n-1)+a(n-1)/(n/2+1))]` -/
def P15617902162414210207.Spec : Prop :=
  ∀ n, P15617902162414210207.a n = (A268965 (n + 1) : ℚ)

end A268965

/-! ## A268965.P5665690236911484354

`A084858(2*(n+1))`
-/

namespace A268965.P5665690236911484354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 (2 * (n + 1))

end

end A268965.P5665690236911484354

namespace A268965

/-- `A084858(2*(n+1))` -/
def P5665690236911484354.Spec : Prop :=
  ∀ n, P5665690236911484354.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P9915262576595102623

`record[(n+3)*A098646(n)]`
-/

namespace A268965.P9915262576595102623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A098646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268965.P9915262576595102623

namespace A268965

/-- `record[(n+3)*A098646(n)]` -/
def P9915262576595102623.Spec : Prop :=
  ∀ n, P9915262576595102623.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P17065641671361370848

`A007283(n)²+n*A002023(n)`
-/

namespace A268965.P17065641671361370848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n ^ 2 + (n : ℤ) * A002023 n

end

end A268965.P17065641671361370848

namespace A268965

/-- `A007283(n)²+n*A002023(n)` -/
def P17065641671361370848.Spec : Prop :=
  ∀ n, P17065641671361370848.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P2943208232753046412

`A045883(2*n)+A014916(n+2)`
-/

namespace A268965.P2943208232753046412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (2 * n) + A014916 (n + 2)

end

end A268965.P2943208232753046412

namespace A268965

/-- `A045883(2*n)+A014916(n+2)` -/
def P2943208232753046412.Spec : Prop :=
  ∀ n, P2943208232753046412.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P7098441002768205145

`A002697(n+2)+A001787(2*n+1)`
-/

namespace A268965.P7098441002768205145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 2) + A001787 (2 * n + 1)

end

end A268965.P7098441002768205145

namespace A268965

/-- `A002697(n+2)+A001787(2*n+1)` -/
def P7098441002768205145.Spec : Prop :=
  ∀ n, P7098441002768205145.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P9221840917550760398

`A229580(n+2)+A229580(n+2)/2`
-/

namespace A268965.P9221840917550760398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229580 (n + 2) : ℚ) + (A229580 (n + 2) : ℚ) / 2

end

end A268965.P9221840917550760398

namespace A268965

/-- `A229580(n+2)+A229580(n+2)/2` -/
def P9221840917550760398.Spec : Prop :=
  ∀ n, P9221840917550760398.a n = (A268965 (n + 1) : ℚ)

end A268965

/-! ## A268965.P510483519802901060

`A045883(2*n+3)+A045883(2*n)`
-/

namespace A268965.P510483519802901060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (2 * n + 3) + A045883 (2 * n)

end

end A268965.P510483519802901060

namespace A268965

/-- `A045883(2*n+3)+A045883(2*n)` -/
def P510483519802901060.Spec : Prop :=
  ∀ n, P510483519802901060.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P7468998012640123541

`A053220(2*(n+1))+A000079(n+1)²`
-/

namespace A268965.P7468998012640123541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (2 * (n + 1)) + A000079 (n + 1) ^ 2

end

end A268965.P7468998012640123541

namespace A268965

/-- `A053220(2*(n+1))+A000079(n+1)²` -/
def P7468998012640123541.Spec : Prop :=
  ∀ n, P7468998012640123541.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P11642050528824593528

`A066373(2*n+3)+2*A000079(n)²`
-/

namespace A268965.P11642050528824593528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (2 * n + 3) + 2 * A000079 n ^ 2

end

end A268965.P11642050528824593528

namespace A268965

/-- `A066373(2*n+3)+2*A000079(n)²` -/
def P11642050528824593528.Spec : Prop :=
  ∀ n, P11642050528824593528.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P12325385761935528173

`A001792(2*(n+1))+A001787(2*n+1)`
-/

namespace A268965.P12325385761935528173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * (n + 1)) + A001787 (2 * n + 1)

end

end A268965.P12325385761935528173

namespace A268965

/-- `A001792(2*(n+1))+A001787(2*n+1)` -/
def P12325385761935528173.Spec : Prop :=
  ∀ n, P12325385761935528173.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P13673969996402708603

`A045623(2*(n+1))+A001787(2*(n+1))`
-/

namespace A268965.P13673969996402708603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (2 * (n + 1)) + A001787 (2 * (n + 1))

end

end A268965.P13673969996402708603

namespace A268965

/-- `A045623(2*(n+1))+A001787(2*(n+1))` -/
def P13673969996402708603.Spec : Prop :=
  ∀ n, P13673969996402708603.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P17741646136135636376

`A047859(2*n+1)+A005183(2*(n+1))`
-/

namespace A268965.P17741646136135636376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 (2 * n + 1) + A005183 (2 * (n + 1))

end

end A268965.P17741646136135636376

namespace A268965

/-- `A047859(2*n+1)+A005183(2*(n+1))` -/
def P17741646136135636376.Spec : Prop :=
  ∀ n, P17741646136135636376.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P1404700774035976089

`A066373(2*n+3)+A000079(2*n+1)`
-/

namespace A268965.P1404700774035976089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (2 * n + 3) + A000079 (2 * n + 1)

end

end A268965.P1404700774035976089

namespace A268965

/-- `A066373(2*n+3)+A000079(2*n+1)` -/
def P1404700774035976089.Spec : Prop :=
  ∀ n, P1404700774035976089.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P1092962719810521626

`A000302(n+1)+A000302(n)*A016969(n)`
-/

namespace A268965.P1092962719810521626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) + A000302 n * A016969 n

end

end A268965.P1092962719810521626

namespace A268965

/-- `A000302(n+1)+A000302(n)*A016969(n)` -/
def P1092962719810521626.Spec : Prop :=
  ∀ n, P1092962719810521626.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P1555145991407913401

`A003947(n+1)+A004171(n)*A016789(n)`
-/

namespace A268965.P1555145991407913401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (n + 1) + A004171 n * A016789 n

end

end A268965.P1555145991407913401

namespace A268965

/-- `A003947(n+1)+A004171(n)*A016789(n)` -/
def P1555145991407913401.Spec : Prop :=
  ∀ n, P1555145991407913401.a n = A268965 (n + 1)

end A268965

/-! ## A268965.P9438661054535500933

`A004171(n)*A016789(n+1)-A000302(n)`
-/

namespace A268965.P9438661054535500933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A016789 (n + 1) - A000302 n

end

end A268965.P9438661054535500933

namespace A268965

/-- `A004171(n)*A016789(n+1)-A000302(n)` -/
def P9438661054535500933.Spec : Prop :=
  ∀ n, P9438661054535500933.a n = A268965 (n + 1)

end A268965

/-!
# A268966: Number of n X 3 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268966, the canonical program `A268966.P14810776689894935647` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268966 has offset 1).

The definition of A268966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268966.P14810776689894935647

`2^(n+3)*3^n*(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268966

/-- `2^(n+3)*3^n*(2*(n+1)+1)` -/
def P14810776689894935647.Spec : Prop :=
  ∀ n, (P14810776689894935647.a n : ℤ) = A268966 (n + 1)

theorem P14810776689894935647.correct : P14810776689894935647.Spec := by
  intro n
  simp only [A268966, Nat.add_sub_cancel]

end A268966

/-! ## A268966.P5074992419533367950

`12*a(n-1)-36*a(n-2)` with `a(0)=24, a(1)=240`
-/

namespace A268966.P5074992419533367950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24, 240] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A268966.P5074992419533367950

namespace A268966

/-- `12*a(n-1)-36*a(n-2)` -/
def P5074992419533367950.Spec : Prop :=
  ∀ n, P5074992419533367950.a n = A268966 (n + 1)

theorem P5074992419533367950.correct : P5074992419533367950.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A268966, Nat.add_sub_cancel, A268966.P5074992419533367950.a, A268966.P14810776689894935647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A268966, Nat.add_sub_cancel, A268966.P5074992419533367950.a, A268966.P14810776689894935647.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A268966

/-! ## A268966.P8469469722857804898

`A229505(n+2)/2`
-/

namespace A268966.P8469469722857804898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229505 (n + 2) : ℚ) / 2

end

end A268966.P8469469722857804898

namespace A268966

/-- `A229505(n+2)/2` -/
def P8469469722857804898.Spec : Prop :=
  ∀ n, P8469469722857804898.a n = (A268966 (n + 1) : ℚ)

end A268966

/-! ## A268966.P2738973588969508284

`8*A199299(n+1)/6`
-/

namespace A268966.P2738973588969508284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A199299 (n + 1) : ℚ) / 6

end

end A268966.P2738973588969508284

namespace A268966

/-- `8*A199299(n+1)/6` -/
def P2738973588969508284.Spec : Prop :=
  ∀ n, P2738973588969508284.a n = (A268966 (n + 1) : ℚ)

end A268966

/-! ## A268966.P6985135848714181461

`A171494(n+1)*A229277(n+1)/2`
-/

namespace A268966.P6985135848714181461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171494 (n + 1) * A229277 (n + 1) : ℚ) / 2

end

end A268966.P6985135848714181461

namespace A268966

/-- `A171494(n+1)*A229277(n+1)/2` -/
def P6985135848714181461.Spec : Prop :=
  ∀ n, P6985135848714181461.a n = (A268966 (n + 1) : ℚ)

end A268966

/-! ## A268966.P603469167186124692

`A155559(n+1)*A268633(n+2)/2`
-/

namespace A268966.P603469167186124692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 (n + 1) * A268633 (n + 2) : ℚ) / 2

end

end A268966.P603469167186124692

namespace A268966

/-- `A155559(n+1)*A268633(n+2)/2` -/
def P603469167186124692.Spec : Prop :=
  ∀ n, P603469167186124692.a n = (A268966 (n + 1) : ℚ)

end A268966

/-!
# A268967: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268967, the canonical program `A268967.P6279919360814936462` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268967 has offset 1).

The definition of A268967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268967.P14698647564229958794

`A268972(2*(n+1))`
-/

namespace A268967.P14698647564229958794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268972 (2 * (n + 1))

end

end A268967.P14698647564229958794

namespace A268967

/-- `A268972(2*(n+1))` -/
def P14698647564229958794.Spec : Prop :=
  ∀ n, P14698647564229958794.a n = A268967 (n + 1)

end A268967

/-! ## A268967.P6279919360814936462

`Δ[4*A229277(2*n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A268967

/-- `Δ[4*A229277(2*n)]` -/
def P6279919360814936462.Spec : Prop :=
  ∀ n, P6279919360814936462.a n = A268967 (n + 1)

theorem P6279919360814936462.correct : P6279919360814936462.Spec := by
  intro n
  simp only [A268967, Nat.add_sub_cancel]

end A268967

/-!
# A268968: Number of n X 5 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268968, there is no canonical definition to state claims against.
-/

/-! ## A268968.P8107792062832523996

`A268971(A046691(n+3))`
-/

namespace A268968.P8107792062832523996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A046691 (n + 3)).toNat

end

end A268968.P8107792062832523996

/-! ## A268968.P4803519923213759782

`A268971(A056115(n)+11)`
-/

namespace A268968.P4803519923213759782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A056115 n + 11).toNat

end

end A268968.P4803519923213759782

/-! ## A268968.P2493525468106176526

`A268971(eq[4, A193592(n)])`
-/

namespace A268968.P2493525468106176526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268968.P2493525468106176526

/-! ## A268968.P10090133986929743268

`A268971(eq[5, A239144(n)])`
-/

namespace A268968.P10090133986929743268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268968.P10090133986929743268

/-! ## A268968.P9669418124150012104

`A268971(Δ[A023545(n+1)])`
-/

namespace A268968.P9669418124150012104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (f1 (n + 1) - f1 n).toNat

end

end A268968.P9669418124150012104

/-!
# A268969: Number of n X 6 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268969, there is no canonical definition to state claims against.
-/

/-! ## A268969.P9498429802639840540

`A268902(n+1)+A233153(n+1)`
-/

namespace A268969.P9498429802639840540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268902 (n + 1) + A233153 (n + 1)

end

end A268969.P9498429802639840540

/-! ## A268969.P679977205280454246

`A268902(n+1)+sqrt(A204103(2*n+1))`
-/

namespace A268969.P679977205280454246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268902 (n + 1) : ℝ) + Real.sqrt (A204103 (2 * n + 1) : ℝ)

end

end A268969.P679977205280454246

/-! ## A268969.P16200059610003035753

`A268902(n+1)+A233155(A052905(n+3))`
-/

namespace A268969.P16200059610003035753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268902 (n + 1) + A233155 (A052905 (n + 3)).toNat

end

end A268969.P16200059610003035753

/-! ## A268969.P14998702051307356222

`A268902(n+1)+A233155(A167499(n+5)-10)`
-/

namespace A268969.P14998702051307356222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268902 (n + 1) + A233155 (A167499 (n + 5) - 10).toNat

end

end A268969.P14998702051307356222

/-! ## A268969.P14580220820102427748

`A268971(A052905(n+3))`
-/

namespace A268969.P14580220820102427748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A052905 (n + 3)).toNat

end

end A268969.P14580220820102427748

/-!
# A268970: Number of nX7 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268970, there is no canonical definition to state claims against.
-/

/-! ## A268970.P15567032698546511697

`A268903(n+1)+A233154(n+1)`
-/

namespace A268970.P15567032698546511697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268903 (n + 1) + A233154 (n + 1)

end

end A268970.P15567032698546511697

/-! ## A268970.P16531583197476490890

`A268903(n+1)+A233155(eq[6, A193592(n)])`
-/

namespace A268970.P16531583197476490890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268903 (n + 1) + A233155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268970.P16531583197476490890

/-! ## A268970.P6781705750374368115

`A268971(A055999(n+4))`
-/

namespace A268970.P6781705750374368115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A055999 (n + 4)).toNat

end

end A268970.P6781705750374368115

/-! ## A268970.P4921057392638702991

`A268971(eq[4, A219347(n)])`
-/

namespace A268970.P4921057392638702991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268970.P4921057392638702991

/-! ## A268970.P8025487667416217777

`A268971(eq[6, A193592(n)])`
-/

namespace A268970.P8025487667416217777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268970.P8025487667416217777

/-!
# A268971: T(n,k)=Number of nXk 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268971, there is no canonical definition to state claims against.
-/

/-! ## A268971.P5259954503467255183

`A268904(n+1)+A233155(n+1)`
-/

namespace A268971.P5259954503467255183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268904 (n + 1) + A233155 (n + 1)

end

end A268971.P5259954503467255183

/-! ## A268971.P18175256371674638433

`A233155(n+1)+A229586(n+1)*A267884(n)`
-/

namespace A268971.P18175256371674638433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (n + 1) + A229586 (n + 1) * A267884 n

end

end A268971.P18175256371674638433

/-! ## A268971.P11154367911775010110

`A233155(n+1)+gcd(6, A167667(n))*A229586(n+1)`
-/

namespace A268971.P11154367911775010110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (n + 1) + (Int.gcd 6 (A167667 n) : ℤ) * A229586 (n + 1)

end

end A268971.P11154367911775010110

/-! ## A268971.P3479938350276178418

`A233155(n+1)+A040006(floor(2*n/5))*A229586(n+1)`
-/

namespace A268971.P3479938350276178418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (n + 1) + A040006 ⌊2 * ((n : ℚ) / 5)⌋.toNat * A229586 (n + 1)

end

end A268971.P3479938350276178418

/-! ## A268971.P11248873291502196951

`A233155(n+1)+A229586(n+1)*A266251(A004273(n))`
-/

namespace A268971.P11248873291502196951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (n + 1) + A229586 (n + 1) * A266251 (A004273 n).toNat

end

end A268971.P11248873291502196951

/-! ## A268971.P1330733780431352411

`A233155(n+1)+A089353(A034856(n+1))*A229586(n+1)`
-/

namespace A268971.P1330733780431352411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233155 (n + 1) + A089353 (A034856 (n + 1)).toNat * A229586 (n + 1)

end

end A268971.P1330733780431352411

/-!
# A268972: Number of 2 X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268972, the canonical program `A268972.P17898447141333390862` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268972 has offset 1).

The definition of A268972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268972.P17898447141333390862

`6*a(n-1)-9*a(n-2)` with `a(0)=9, a(1)=60, a(2)=240, a(3)=912`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268972

/-- `6*a(n-1)-9*a(n-2)` -/
def P17898447141333390862.Spec : Prop :=
  ∀ n, P17898447141333390862.a n = A268972 (n + 1)

theorem P17898447141333390862.correct : P17898447141333390862.Spec := by
  intro n
  simp only [A268972, Nat.add_sub_cancel]

end A268972

/-! ## A268972.P145179766138807771

`A268971(∑[n+1]+2)`
-/

namespace A268972.P145179766138807771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268972.P145179766138807771

namespace A268972

/-- `A268971(∑[n+1]+2)` -/
def P145179766138807771.Spec : Prop :=
  ∀ n, P145179766138807771.a n = A268972 (n + 1)

end A268972

/-! ## A268972.P15039321275665413375

`lcm(3, A268971(A133263(n+1)))`
-/

namespace A268972.P15039321275665413375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A268971 (A133263 (n + 1)).toNat)

end

end A268972.P15039321275665413375

namespace A268972

/-- `lcm(3, A268971(A133263(n+1)))` -/
def P15039321275665413375.Spec : Prop :=
  ∀ n, (P15039321275665413375.a n : ℤ) = A268972 (n + 1)

end A268972

/-! ## A268972.P13748097727392770110

`abs(A033999(n)*A268971(A133263(n+1)))`
-/

namespace A268972.P13748097727392770110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A268971 (A133263 (n + 1)).toNat|

end

end A268972.P13748097727392770110

namespace A268972

/-- `abs(A033999(n)*A268971(A133263(n+1)))` -/
def P13748097727392770110.Spec : Prop :=
  ∀ n, P13748097727392770110.a n = A268972 (n + 1)

end A268972

/-! ## A268972.P17988766502984929787

`A268971(A133263(n+1))%A268966(n+1)`
-/

namespace A268972.P17988766502984929787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268971 (A133263 (n + 1)).toNat) (A268966 (n + 1))

end

end A268972.P17988766502984929787

namespace A268972

/-- `A268971(A133263(n+1))%A268966(n+1)` -/
def P17988766502984929787.Spec : Prop :=
  ∀ n, P17988766502984929787.a n = A268972 (n + 1)

end A268972

/-!
# A268973: Number of 3 X n 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268973, there is no canonical definition to state claims against.
-/

/-! ## A268973.P11640278356264528108

`A268971(∑[n+2]+4)`
-/

namespace A268973.P11640278356264528108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268973.P11640278356264528108

/-! ## A268973.P9952184219893214873

`lcm(3, A268971(A167614(n+1)))`
-/

namespace A268973.P9952184219893214873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A268971 (A167614 (n + 1)).toNat)

end

end A268973.P9952184219893214873

/-! ## A268973.P14467337865485724423

`A268971(A167614(n+1))+A185255(n)`
-/

namespace A268973.P14467337865485724423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A167614 (n + 1)).toNat + A185255 n

end

end A268973.P14467337865485724423

/-! ## A268973.P8021094187693437969

`A268971(A167614(n+1))+A185284(n)`
-/

namespace A268973.P8021094187693437969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A167614 (n + 1)).toNat + A185284 n

end

end A268973.P8021094187693437969

/-! ## A268973.P11457653644405624365

`A015600(n)*A268971(A167614(n+1))`
-/

namespace A268973.P11457653644405624365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A268971 (A167614 (n + 1)).toNat

end

end A268973.P11457653644405624365

/-!
# A268974: Number of 4Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268974, there is no canonical definition to state claims against.
-/

/-! ## A268974.P4435795609925650942

`A268971(A141214(n)+7)`
-/

namespace A268974.P4435795609925650942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A141214 n + 7).toNat

end

end A268974.P4435795609925650942

/-! ## A268974.P16948702974137316038

`A268971(A052905(n)+9)`
-/

namespace A268974.P16948702974137316038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A052905 n + 9).toNat

end

end A268974.P16948702974137316038

/-! ## A268974.P3526717654966610025

`A268971(A055999(n)+10)`
-/

namespace A268974.P3526717654966610025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A055999 n + 10).toNat

end

end A268974.P3526717654966610025

/-! ## A268974.P3010339920926025542

`A268971(A167614(n+2)+1)`
-/

namespace A268974.P3010339920926025542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A167614 (n + 2) + 1).toNat

end

end A268974.P3010339920926025542

/-! ## A268974.P17705382225314060307

`A268971(A000217(n+3)+4)`
-/

namespace A268974.P17705382225314060307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A000217 (n + 3) + 4).toNat

end

end A268974.P17705382225314060307

/-!
# A268975: Number of 5Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268975, there is no canonical definition to state claims against.
-/

/-! ## A268975.P12682155934805533342

`A268971(A167499(n+3))`
-/

namespace A268975.P12682155934805533342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A167499 (n + 3)).toNat

end

end A268975.P12682155934805533342

/-! ## A268975.P14227617475545452818

`A268971(A155212(n)+13)`
-/

namespace A268975.P14227617475545452818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A155212 n + 13).toNat

end

end A268975.P14227617475545452818

/-! ## A268975.P407877197047813780

`A268971(A056000(n)+15)`
-/

namespace A268975.P407877197047813780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A056000 n + 15).toNat

end

end A268975.P407877197047813780

/-! ## A268975.P7427709411668971091

`A268971(A000096(n+3)+6)`
-/

namespace A268975.P7427709411668971091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A000096 (n + 3) + 6).toNat

end

end A268975.P7427709411668971091

/-! ## A268975.P232720663952778563

`A268971(A055998(n+2)+8)`
-/

namespace A268975.P232720663952778563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A055998 (n + 2) + 8).toNat

end

end A268975.P232720663952778563

/-!
# A268976: Number of 6Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268976, there is no canonical definition to state claims against.
-/

/-! ## A268976.P1690844433520192244

`A268971(A056115(n)+21)`
-/

namespace A268976.P1690844433520192244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A056115 n + 21).toNat

end

end A268976.P1690844433520192244

/-! ## A268976.P7840369932244106497

`A268971(A000124(n+5)+5)`
-/

namespace A268976.P7840369932244106497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A000124 (n + 5) + 5).toNat

end

end A268976.P7840369932244106497

/-! ## A268976.P9015405459728499116

`A268971(eq[5, A002262(n)]+1)`
-/

namespace A268976.P9015405459728499116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A268976.P9015405459728499116

/-! ## A268976.P7238447374274943129

`A268971(eq[7, A131818(n+1)])`
-/

namespace A268976.P7238447374274943129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268976.P7238447374274943129

/-! ## A268976.P14540744193831777428

`A268971(Δ[A023545(n+1)]+10)`
-/

namespace A268976.P14540744193831777428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (f1 (n + 1) - f1 n + 10).toNat

end

end A268976.P14540744193831777428

/-!
# A268977: Number of 7Xn 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268977, there is no canonical definition to state claims against.
-/

/-! ## A268977.P8767528762148140085

`A268971(A167487(n+5))`
-/

namespace A268977.P8767528762148140085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A167487 (n + 5)).toNat

end

end A268977.P8767528762148140085

/-! ## A268977.P11269216552938856477

`A268971(A056119(n)+28)`
-/

namespace A268977.P11269216552938856477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A056119 n + 28).toNat

end

end A268977.P11269216552938856477

/-! ## A268977.P17664534924637369119

`A268971(eq[11, A066657(n)])`
-/

namespace A268977.P17664534924637369119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268977.P17664534924637369119

/-! ## A268977.P8096783734757680226

`A268971(eq[8, A131818(n+1)])`
-/

namespace A268977.P8096783734757680226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268977.P8096783734757680226

/-! ## A268977.P4099081953094656116

`A268971(A167499(n+5)+gcd(2, ∑[2^n])+1)`
-/

namespace A268977.P4099081953094656116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268971 (A167499 (n + 5) + (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + 1).toNat

end

end A268977.P4099081953094656116

/-!
# A268984: Record (maximal) gaps between primes of the form 10k + 1.

The programs for A268984, there is no canonical definition to state claims against.
-/

/-! ## A268984.P685348784731963059

`A268986(n+1)-A268985(n+1)`
-/

namespace A268984.P685348784731963059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268986 (n + 1) - A268985 (n + 1)

end

end A268984.P685348784731963059

/-! ## A268984.P15679290016055985144

`record[A030430(n+2)-A030430(n+1)]`
-/

namespace A268984.P15679290016055985144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 2) - A030430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268984.P15679290016055985144

/-! ## A268984.P8122754983837615865

`record[A030430(n+4)%A030430(n+3)]`
-/

namespace A268984.P8122754983837615865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030430 (n + 4)) (A030430 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268984.P8122754983837615865

/-! ## A268984.P1795364122654928925

`record[A090756(n+2)-A090756(n+1)]`
-/

namespace A268984.P1795364122654928925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 2) - A090756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268984.P1795364122654928925

/-! ## A268984.P8321430972870817692

`record[A045453(n+3)-A045453(n+2)]`
-/

namespace A268984.P8321430972870817692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 3) - A045453 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268984.P8321430972870817692

/-!
# A268985: Primes 10k + 1 preceding the maximal gaps in A268984.

The programs for A268985, there is no canonical definition to state claims against.
-/

/-! ## A268985.P7239990983664806386

`A268986(n+1)-A268984(n+1)`
-/

namespace A268985.P7239990983664806386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268986 (n + 1) - A268984 (n + 1)

end

end A268985.P7239990983664806386

/-! ## A268985.P5447824933279211826

`A268986(n+1)-record[A030430(n+2)-A030430(n+1)]`
-/

namespace A268985.P5447824933279211826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 2) - A030430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268986 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268985.P5447824933279211826

/-! ## A268985.P17612859893349332872

`A268986(n+1)-record[A090756(n+2)-A090756(n+1)]`
-/

namespace A268985.P17612859893349332872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 2) - A090756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268986 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268985.P17612859893349332872

/-! ## A268985.P15357181795824292486

`A268986(n+1)-record[A045453(n+3)-A045453(n+2)]`
-/

namespace A268985.P15357181795824292486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 3) - A045453 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268986 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268985.P15357181795824292486

/-!
# A268986: Primes 10k + 1 at the end of the maximal gaps in A268984.

The programs for A268986, there is no canonical definition to state claims against.
-/

/-! ## A268986.P15037603459063364514

`A268985(n+1)+A268984(n+1)`
-/

namespace A268986.P15037603459063364514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268985 (n + 1) + A268984 (n + 1)

end

end A268986.P15037603459063364514

/-! ## A268986.P8788545106200390582

`A268985(n+1)+record[A030430(n+2)-A030430(n+1)]`
-/

namespace A268986.P8788545106200390582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 2) - A030430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268985 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268986.P8788545106200390582

/-! ## A268986.P898728026504945120

`A268985(n+1)+record[A030430(n+4)%A030430(n+3)]`
-/

namespace A268986.P898728026504945120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030430 (n + 4)) (A030430 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268985 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268986.P898728026504945120

/-! ## A268986.P1241669430732644548

`A268985(n+1)+record[A090756(n+2)-A090756(n+1)]`
-/

namespace A268986.P1241669430732644548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 2) - A090756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268985 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268986.P1241669430732644548

/-! ## A268986.P11976705360360739696

`A268985(n+1)+record[A045453(n+3)-A045453(n+2)]`
-/

namespace A268986.P11976705360360739696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 3) - A045453 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268985 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268986.P11976705360360739696

/-!
# A268988: Number of n X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268988, there is no canonical definition to state claims against.
-/

/-! ## A268988.P11231553243594971158

`A268995((n+1)²+n²)`
-/

namespace A268988.P11231553243594971158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 ((n + 1) ^ 2 + n ^ 2)

end

end A268988.P11231553243594971158

/-! ## A268988.P16132147050719263550

`record[A003982(n)*A268995(n+1)]`
-/

namespace A268988.P16132147050719263550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268988.P16132147050719263550

/-! ## A268988.P14198687865929707152

`record[gcd(A114327(n), A268995(n+1))]`
-/

namespace A268988.P14198687865929707152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A268995 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268988.P14198687865929707152

/-! ## A268988.P18424820520004682307

`A268995(A001844(n))+A011744(n)`
-/

namespace A268988.P18424820520004682307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A001844 n).toNat + A011744 n

end

end A268988.P18424820520004682307

/-! ## A268988.P12461886141783255351

`gcd(A000038(n), A268995(A001844(n)))`
-/

namespace A268988.P12461886141783255351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A268995 (A001844 n).toNat)

end

end A268988.P12461886141783255351

/-!
# A268989: Number of n X 2 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268989, the canonical program `A268989.P662386248003310424` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268989 has offset 1).

The definition of A268989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268989.P9213113511188985414

`Δ[A377866(n+3)]`
-/

namespace A268989.P9213113511188985414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377866 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268989.P9213113511188985414

namespace A268989

/-- `Δ[A377866(n+3)]` -/
def P9213113511188985414.Spec : Prop :=
  ∀ n, P9213113511188985414.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P662386248003310424

`A208354(2*n+3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A268989

/-- `A208354(2*n+3)` -/
def P662386248003310424.Spec : Prop :=
  ∀ n, P662386248003310424.a n = A268989 (n + 1)

theorem P662386248003310424.correct : P662386248003310424.Spec := by
  intro n
  simp only [A268989, Nat.add_sub_cancel]

end A268989

/-! ## A268989.P11803318841868628974

`Δ[A010049(2*(n+1))]`
-/

namespace A268989.P11803318841868628974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268989.P11803318841868628974

namespace A268989

/-- `Δ[A010049(2*(n+1))]` -/
def P11803318841868628974.Spec : Prop :=
  ∀ n, P11803318841868628974.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P2336620042811605060

`2*A290917(n)-A001906(n)`
-/

namespace A268989.P2336620042811605060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290917 n - A001906 n

end

end A268989.P2336620042811605060

namespace A268989

/-- `2*A290917(n)-A001906(n)` -/
def P2336620042811605060.Spec : Prop :=
  ∀ n, P2336620042811605060.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P1089045599934857554

`Δ[2*A038731(n)-A001519(n)]`
-/

namespace A268989.P1089045599934857554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038731 n - A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268989.P1089045599934857554

namespace A268989

/-- `Δ[2*A038731(n)-A001519(n)]` -/
def P1089045599934857554.Spec : Prop :=
  ∀ n, P1089045599934857554.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P2633893617156602496

`A271785(2*n+1)+A002878(n)`
-/

namespace A268989.P2633893617156602496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271785 (2 * n + 1) + A002878 n

end

end A268989.P2633893617156602496

namespace A268989

/-- `A271785(2*n+1)+A002878(n)` -/
def P2633893617156602496.Spec : Prop :=
  ∀ n, P2633893617156602496.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P17784135123733865937

`A030267(n+2)-A129720(2*n)`
-/

namespace A268989.P17784135123733865937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 2) - A129720 (2 * n)

end

end A268989.P17784135123733865937

namespace A268989

/-- `A030267(n+2)-A129720(2*n)` -/
def P17784135123733865937.Spec : Prop :=
  ∀ n, P17784135123733865937.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P12672035785738639263

`A030267(n+2)-A129722(2*n)`
-/

namespace A268989.P12672035785738639263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 2) - A129722 (2 * n)

end

end A268989.P12672035785738639263

namespace A268989

/-- `A030267(n+2)-A129722(2*n)` -/
def P12672035785738639263.Spec : Prop :=
  ∀ n, P12672035785738639263.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P8264961154196331945

`A129720(2*n+1)+A059502(n+2)`
-/

namespace A268989.P8264961154196331945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n + 1) + A059502 (n + 2)

end

end A268989.P8264961154196331945

namespace A268989

/-- `A129720(2*n+1)+A059502(n+2)` -/
def P8264961154196331945.Spec : Prop :=
  ∀ n, P8264961154196331945.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P3108955064720398275

`A279735(n+2)+A006367(2*(n+1))`
-/

namespace A268989.P3108955064720398275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279735 (n + 2) + A006367 (2 * (n + 1))

end

end A268989.P3108955064720398275

namespace A268989

/-- `A279735(n+2)+A006367(2*(n+1))` -/
def P3108955064720398275.Spec : Prop :=
  ∀ n, P3108955064720398275.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P2695254172761846484

`A020701(2*n)+A001629(2*(n+1))`
-/

namespace A268989.P2695254172761846484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) + A001629 (2 * (n + 1))

end

end A268989.P2695254172761846484

namespace A268989

/-- `A020701(2*n)+A001629(2*(n+1))` -/
def P2695254172761846484.Spec : Prop :=
  ∀ n, P2695254172761846484.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P16278337963506257027

`A010049(2*n)+2*A102702(2*n)`
-/

namespace A268989.P16278337963506257027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + 2 * A102702 (2 * n)

end

end A268989.P16278337963506257027

namespace A268989

/-- `A010049(2*n)+2*A102702(2*n)` -/
def P16278337963506257027.Spec : Prop :=
  ∀ n, P16278337963506257027.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P692536998996034080

`Δ[A029907(2*n+1)+A000045(2*n)]`
-/

namespace A268989.P692536998996034080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n + 1) + A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268989.P692536998996034080

namespace A268989

/-- `Δ[A029907(2*n+1)+A000045(2*n)]` -/
def P692536998996034080.Spec : Prop :=
  ∀ n, P692536998996034080.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P5017370593521633762

`Δ[A001629(2*n+1)+A000071(2*(n+1))]`
-/

namespace A268989.P5017370593521633762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n + 1) + A000071 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268989.P5017370593521633762

namespace A268989

/-- `Δ[A001629(2*n+1)+A000071(2*(n+1))]` -/
def P5017370593521633762.Spec : Prop :=
  ∀ n, P5017370593521633762.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P14898053832741520817

`A055244(2*n+1)+Δ[A014217(2*n+1)]`
-/

namespace A268989.P14898053832741520817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A268989.P14898053832741520817

namespace A268989

/-- `A055244(2*n+1)+Δ[A014217(2*n+1)]` -/
def P14898053832741520817.Spec : Prop :=
  ∀ n, P14898053832741520817.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P9101254643253885389

`A027990(n+1)+A238846(n)+A027990(n)`
-/

namespace A268989.P9101254643253885389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027990 (n + 1) + (A238846 n + A027990 n)

end

end A268989.P9101254643253885389

namespace A268989

/-- `A027990(n+1)+A238846(n)+A027990(n)` -/
def P9101254643253885389.Spec : Prop :=
  ∀ n, P9101254643253885389.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P4084213650396059962

`A238846(n+1)+A054444(n)-A001870(n)`
-/

namespace A268989.P4084213650396059962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 (n + 1) + (A054444 n - A001870 n)

end

end A268989.P4084213650396059962

namespace A268989

/-- `A238846(n+1)+A054444(n)-A001870(n)` -/
def P4084213650396059962.Spec : Prop :=
  ∀ n, P4084213650396059962.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P16121997433258724491

`A030267(n+1)+A238846(n+1)-A238846(n)`
-/

namespace A268989.P16121997433258724491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + (A238846 (n + 1) - A238846 n)

end

end A268989.P16121997433258724491

namespace A268989

/-- `A030267(n+1)+A238846(n+1)-A238846(n)` -/
def P16121997433258724491.Spec : Prop :=
  ∀ n, P16121997433258724491.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P16428908998317798031

`A030267(n+1)+A030267(n+2)-A001870(n)`
-/

namespace A268989.P16428908998317798031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + (A030267 (n + 2) - A001870 n)

end

end A268989.P16428908998317798031

namespace A268989

/-- `A030267(n+1)+A030267(n+2)-A001870(n)` -/
def P16428908998317798031.Spec : Prop :=
  ∀ n, P16428908998317798031.a n = A268989 (n + 1)

end A268989

/-! ## A268989.P13918579394309826709

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=41, a(3)=126`
-/

namespace A268989.P13918579394309826709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13, 41, 126] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A268989.P13918579394309826709

namespace A268989

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P13918579394309826709.Spec : Prop :=
  ∀ n, P13918579394309826709.a n = A268989 (n + 1)

end A268989

/-!
# A268990: Number of n X 3 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268990, the canonical program `A268990.P1739115472981210794` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268990 has offset 1).

The definition of A268990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268990.P1739115472981210794

`10*a(n-1)-31*a(n-2)+30*a(n-3)-9*a(n-4)` with `a(0)=7, a(1)=35, a(2)=174, a(3)=849`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A268990

/-- `10*a(n-1)-31*a(n-2)+30*a(n-3)-9*a(n-4)` -/
def P1739115472981210794.Spec : Prop :=
  ∀ n, P1739115472981210794.a n = A268990 (n + 1)

theorem P1739115472981210794.correct : P1739115472981210794.Spec := by
  intro n
  simp only [A268990, Nat.add_sub_cancel]

end A268990

/-! ## A268990.P5385084630438425835

`A268995(∑[n+3]+1)`
-/

namespace A268990.P5385084630438425835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268990.P5385084630438425835

namespace A268990

/-- `A268995(∑[n+3]+1)` -/
def P5385084630438425835.Spec : Prop :=
  ∀ n, P5385084630438425835.a n = A268990 (n + 1)

end A268990

/-!
# A268991: Number of n X 4 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268991, there is no canonical definition to state claims against.
-/

/-! ## A268991.P14506614321032311978

`A268995(A155212(n)+5)`
-/

namespace A268991.P14506614321032311978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A155212 n + 5).toNat

end

end A268991.P14506614321032311978

/-! ## A268991.P14353819624444185311

`A268995(A056000(n)+7)`
-/

namespace A268991.P14353819624444185311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A056000 n + 7).toNat

end

end A268991.P14353819624444185311

/-! ## A268991.P8662021194139175760

`A268995(eq[4, A209434(n)])`
-/

namespace A268991.P8662021194139175760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268991.P8662021194139175760

/-! ## A268991.P9896585124448689302

`A268995(Δ[A034857(n+1)])`
-/

namespace A268991.P9896585124448689302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (f1 (n + 1) - f1 n).toNat

end

end A268991.P9896585124448689302

/-! ## A268991.P608107419907312638

`A268995(A052905(n+1)+2)`
-/

namespace A268991.P608107419907312638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A052905 (n + 1) + 2).toNat

end

end A268991.P608107419907312638

/-!
# A268992: Number of nX5 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268992, there is no canonical definition to state claims against.
-/

/-! ## A268992.P6816605620390938128

`A268995(Δ[A264443(n)])`
-/

namespace A268992.P6816605620390938128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (f1 (n + 1) - f1 n).toNat

end

end A268992.P6816605620390938128

/-! ## A268992.P6358969093797179820

`A268995(A046691(n+3))`
-/

namespace A268992.P6358969093797179820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A046691 (n + 3)).toNat

end

end A268992.P6358969093797179820

/-! ## A268992.P4091843320934173815

`A268995(eq[4, A193592(n)])`
-/

namespace A268992.P4091843320934173815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268992.P4091843320934173815

/-! ## A268992.P9088183962764708731

`A268995(Δ[A023545(n+1)])`
-/

namespace A268992.P9088183962764708731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (f1 (n + 1) - f1 n).toNat

end

end A268992.P9088183962764708731

/-! ## A268992.P15561824491728460175

`A268995(A166136(n+4)-10)`
-/

namespace A268992.P15561824491728460175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A166136 (n + 4) - 10).toNat

end

end A268992.P15561824491728460175

/-!
# A268993: Number of nX6 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268993, there is no canonical definition to state claims against.
-/

/-! ## A268993.P6680971206743599373

`A268995(A052905(n+3))`
-/

namespace A268993.P6680971206743599373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A052905 (n + 3)).toNat

end

end A268993.P6680971206743599373

/-! ## A268993.P5754734506620701877

`A268995(eq[3, A219347(n)])`
-/

namespace A268993.P5754734506620701877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268993.P5754734506620701877

/-! ## A268993.P15739580720647897249

`A268995(eq[5, A193592(n)])`
-/

namespace A268993.P15739580720647897249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268993.P15739580720647897249

/-! ## A268993.P7606506570577755802

`A268995(eq[8, A258709(n)])`
-/

namespace A268993.P7606506570577755802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268993.P7606506570577755802

/-! ## A268993.P4853100771407653164

`A268995(eq[8, A185782(n+1)])`
-/

namespace A268993.P4853100771407653164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268993.P4853100771407653164

/-!
# A268994: Number of nX7 binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268994, there is no canonical definition to state claims against.
-/

/-! ## A268994.P17017967934973631173

`A268995(A055999(n+4))`
-/

namespace A268994.P17017967934973631173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A055999 (n + 4)).toNat

end

end A268994.P17017967934973631173

/-! ## A268994.P17907795494755105500

`A268995(eq[4, A219347(n)])`
-/

namespace A268994.P17907795494755105500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268994.P17907795494755105500

/-! ## A268994.P14786914498688618413

`A268995(eq[6, A193592(n)])`
-/

namespace A268994.P14786914498688618413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268994.P14786914498688618413

/-! ## A268994.P11789460884699796717

`A268995(eq[6, A025581(n)]+1)`
-/

namespace A268994.P11789460884699796717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A268994.P11789460884699796717

/-! ## A268994.P16383126723768008013

`A268995(eq[32, A057728(n+1)])`
-/

namespace A268994.P16383126723768008013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268994.P16383126723768008013

/-!
# A268995: T(n,k)=Number of nXk binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268995, there is no canonical definition to state claims against.
-/

/-! ## A268995.P13720582436140835140

`A276531(A077739(n+1))+A094305(n)`
-/

namespace A268995.P13720582436140835140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276531 (A077739 (n + 1)).toNat + A094305 n

end

end A268995.P13720582436140835140

/-! ## A268995.P14985254354336073884

`A297607(n+1)+A046660(A288805(n))`
-/

namespace A268995.P14985254354336073884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297607 (n + 1) + A046660 (A288805 n).toNat

end

end A268995.P14985254354336073884

/-!
# A268996: Number of 2 X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268996, there is no canonical definition to state claims against.
-/

/-! ## A268996.P11092392050739687910

`A268995(∑[n+1]+2)`
-/

namespace A268996.P11092392050739687910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268996.P11092392050739687910

/-! ## A268996.P14290516271266183991

`record[A268995(2-A271439(n)+n)]`
-/

namespace A268996.P14290516271266183991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (2 - A271439 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268996.P14290516271266183991

/-! ## A268996.P12732077262440187776

`record[gcd(A025581(n), A268995(n+3))]`
-/

namespace A268996.P12732077262440187776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A268995 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268996.P12732077262440187776

/-! ## A268996.P17902564870734137058

`A268995(A133263(n+1))/A033999(n)²`
-/

namespace A268996.P17902564870734137058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268995 (A133263 (n + 1)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A268996.P17902564870734137058

/-! ## A268996.P12586993291836994682

`A268995(A133263(n+1))%A268965(n+1)`
-/

namespace A268996.P12586993291836994682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268995 (A133263 (n + 1)).toNat) (A268965 (n + 1))

end

end A268996.P12586993291836994682

/-!
# A268997: Number of 3 X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268997, there is no canonical definition to state claims against.
-/

/-! ## A268997.P10044100977797616733

`A268888(n+1)+A188700(n+1)`
-/

namespace A268997.P10044100977797616733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268888 (n + 1) + A188700 (n + 1)

end

end A268997.P10044100977797616733

/-! ## A268997.P3975793888078442622

`A268995(∑[n+2]+4)`
-/

namespace A268997.P3975793888078442622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268997.P3975793888078442622

/-! ## A268997.P9835681241678745608

`A268888(n+1)+A188706(∑[n+3]+1)`
-/

namespace A268997.P9835681241678745608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268888 (n + 1) + A188706 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268997.P9835681241678745608

/-! ## A268997.P14445443011346019037

`A268886(∑[n+2]+4)+A188700(n+1)`
-/

namespace A268997.P14445443011346019037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268886 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + A188700 (n + 1)

end

end A268997.P14445443011346019037

/-! ## A268997.P5407635196028265824

`A268995(A167614(n+1))%A017625(n)`
-/

namespace A268997.P5407635196028265824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268995 (A167614 (n + 1)).toNat) (A017625 n)

end

end A268997.P5407635196028265824

/-!
# A268998: Number of 4Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268998, there is no canonical definition to state claims against.
-/

/-! ## A268998.P5928693160512114203

`A268995(A052905(n)+9)`
-/

namespace A268998.P5928693160512114203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A052905 n + 9).toNat

end

end A268998.P5928693160512114203

/-! ## A268998.P7349611389537938465

`A268995(A055999(n)+10)`
-/

namespace A268998.P7349611389537938465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A055999 n + 10).toNat

end

end A268998.P7349611389537938465

/-! ## A268998.P11728440021307503775

`A268995(A167614(n+2)+1)`
-/

namespace A268998.P11728440021307503775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A167614 (n + 2) + 1).toNat

end

end A268998.P11728440021307503775

/-! ## A268998.P7444004900075086913

`A268995(A166136(n+2)-2)`
-/

namespace A268998.P7444004900075086913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A166136 (n + 2) - 2).toNat

end

end A268998.P7444004900075086913

/-! ## A268998.P3035204555158633973

`A268995(eq[5, A131818(n+1)])`
-/

namespace A268998.P3035204555158633973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268998.P3035204555158633973

/-!
# A268999: Number of 5Xn binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

The programs for A268999, there is no canonical definition to state claims against.
-/

/-! ## A268999.P3945306325258627277

`A268890(n+1)+A188702(n+1)`
-/

namespace A268999.P3945306325258627277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268890 (n + 1) + A188702 (n + 1)

end

end A268999.P3945306325258627277

/-! ## A268999.P13577046963497623140

`A268995(A167499(n+3))`
-/

namespace A268999.P13577046963497623140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A167499 (n + 3)).toNat

end

end A268999.P13577046963497623140

/-! ## A268999.P12635801994591695296

`A268995(A155212(n)+13)`
-/

namespace A268999.P12635801994591695296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A155212 n + 13).toNat

end

end A268999.P12635801994591695296

/-! ## A268999.P9240962507297906750

`A268995(A056000(n)+15)`
-/

namespace A268999.P9240962507297906750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (A056000 n + 15).toNat

end

end A268999.P9240962507297906750

/-! ## A268999.P3848939905391581516

`A268995(eq[6, A131818(n+1)])`
-/

namespace A268999.P3848939905391581516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268995 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268999.P3848939905391581516

