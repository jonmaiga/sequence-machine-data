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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C001
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027901: Divisors of 10^9 + 1.

The programs for A027901, there is no canonical definition to state claims against.
-/

/-! ## A027901.P9248215282743611706

`∩[A043292(n+1), A113522(n+1)]`
-/

namespace A027901.P9248215282743611706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027901.P9248215282743611706

/-! ## A027901.P11588484835083102062

`∩[A087008(n+1), A292315(n+1)]`
-/

namespace A027901.P11588484835083102062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027901.P11588484835083102062

/-! ## A027901.P6027107038061549598

`record[gcd(A158548(3*n), A158552(n+1))]`
-/

namespace A027901.P6027107038061549598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158548 (3 * n)) (A158552 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027901.P6027107038061549598

/-! ## A027901.P16758579058507568811

`∪[11*A133029(n+1), A133029(n+1)]`
-/

namespace A027901.P16758579058507568811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A133029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027901.P16758579058507568811

/-! ## A027901.P16290222911675105148

`∩[A290729(n+1), A324695(n+1)]`
-/

namespace A027901.P16290222911675105148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027901.P16290222911675105148

/-!
# A027902: Divisors of 3^24 - 1.

The programs for A027902, there is no canonical definition to state claims against.
-/

/-! ## A027902.P12141572757792547775

`eq[A192006(n), A327804(2*n)]`
-/

namespace A027902.P12141572757792547775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027902.P12141572757792547775

/-! ## A027902.P12012238785078168121

`record[gcd(n+1, A162668(A139272(n)))]`
-/

namespace A027902.P12012238785078168121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A162668 (A139272 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027902.P12012238785078168121

/-! ## A027902.P9113478788890491581

`eq[A011655(n), A106602(A232989(n))]`
-/

namespace A027902.P9113478788890491581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 (A232989 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027902.P9113478788890491581

/-! ## A027902.P12643325903931978264

`eq[A035539(n), A343380(n)]`
-/

namespace A027902.P12643325903931978264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035539 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027902.P12643325903931978264

/-! ## A027902.P11270856196482758897

`eq[A113038(n+1), A343380(n)]`
-/

namespace A027902.P11270856196482758897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027902.P11270856196482758897

/-!
# A027903: a(n) = n*(n + 1)*(3*n + 1).

The programs for A027903, the canonical program `A027903.P4209147286881915011` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027903 has offset 0).

The definition of A027903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(3*n+1)` (program `A027903.P4209147286881915011`, by `A027903.P4209147286881915011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027903.P4209147286881915011

`n*(n+1)*(3*n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027903

/-- `n*(n+1)*(3*n+1)` -/
def P4209147286881915011.Spec : Prop :=
  ∀ n, (P4209147286881915011.a n : ℤ) = A027903 n

theorem P4209147286881915011.correct : P4209147286881915011.Spec := by
  intro n
  simp only [A027903]

end A027903

/-! ## A027903.P4680344566321004058

`A117642(n)+A016742(n)+n`
-/

namespace A027903.P4680344566321004058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + A016742 n + (n : ℤ)

end

end A027903.P4680344566321004058

namespace A027903

/-- `A117642(n)+A016742(n)+n` -/
def P4680344566321004058.Spec : Prop :=
  ∀ n, P4680344566321004058.a n = A027903 n

theorem P4680344566321004058.correct : P4680344566321004058.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P4680344566321004058.a, A027903.P4209147286881915011.a, A016742, A016742.P17821809754172938154.a, A117642, A117642.P2206942344561243653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-! ## A027903.P5557482682936580029

`lcm(n, ∑[6*n+1])`
-/

namespace A027903.P5557482682936580029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027903.P5557482682936580029

namespace A027903

/-- `lcm(n, ∑[6*n+1])` -/
def P5557482682936580029.Spec : Prop :=
  ∀ n, (P5557482682936580029.a n : ℤ) = A027903 n

end A027903

/-! ## A027903.P13340600495920525422

`(3*n)²-(n-a(n-1))` with `a(0)=0`
-/

namespace A027903.P13340600495920525422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((3 * n) ^ 2 : ℤ) - ((n : ℤ) - a (n - 1))

end

end A027903.P13340600495920525422

namespace A027903

/-- `(3*n)²-(n-a(n-1))` -/
def P13340600495920525422.Spec : Prop :=
  ∀ n, P13340600495920525422.a n = A027903 n

theorem P13340600495920525422.correct : P13340600495920525422.Spec := by
  intro n
  induction n with
  | zero => simp [A027903, A027903.P13340600495920525422.a, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027903, Nat.add_sub_cancel, A027903.P13340600495920525422.a, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027903

/-! ## A027903.P12709843909828973683

`∑[2*A022266(n)]`
-/

namespace A027903.P12709843909828973683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027903.P12709843909828973683

namespace A027903

/-- `∑[2*A022266(n)]` -/
def P12709843909828973683.Spec : Prop :=
  ∀ n, P12709843909828973683.a n = A027903 n

end A027903

/-! ## A027903.P10969498750226166950

`A249354(n)+n²`
-/

namespace A027903.P10969498750226166950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n + (n ^ 2 : ℤ)

end

end A027903.P10969498750226166950

namespace A027903

/-- `A249354(n)+n²` -/
def P10969498750226166950.Spec : Prop :=
  ∀ n, P10969498750226166950.a n = A027903 n

theorem P10969498750226166950.correct : P10969498750226166950.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P10969498750226166950.a, A027903.P4209147286881915011.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-! ## A027903.P2164043199435514944

`∑[A013656(n)+n]`
-/

namespace A027903.P2164043199435514944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027903.P2164043199435514944

namespace A027903

/-- `∑[A013656(n)+n]` -/
def P2164043199435514944.Spec : Prop :=
  ∀ n, P2164043199435514944.a n = A027903 n

end A027903

/-! ## A027903.P12834803261642947829

`∑[A016766(n)-n]`
-/

namespace A027903.P12834803261642947829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027903.P12834803261642947829

namespace A027903

/-- `∑[A016766(n)-n]` -/
def P12834803261642947829.Spec : Prop :=
  ∀ n, P12834803261642947829.a n = A027903 n

end A027903

/-! ## A027903.P15951181266713002586

`A220443(n)-∑[n]`
-/

namespace A027903.P15951181266713002586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027903.P15951181266713002586

namespace A027903

/-- `A220443(n)-∑[n]` -/
def P15951181266713002586.Spec : Prop :=
  ∀ n, P15951181266713002586.a n = A027903 n

end A027903

/-! ## A027903.P5002163528648369519

`A084367(n)-n^3`
-/

namespace A027903.P5002163528648369519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n - (n ^ 3 : ℤ)

end

end A027903.P5002163528648369519

namespace A027903

/-- `A084367(n)-n^3` -/
def P5002163528648369519.Spec : Prop :=
  ∀ n, P5002163528648369519.a n = A027903 n

theorem P5002163528648369519.correct : P5002163528648369519.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P5002163528648369519.a, A027903.P4209147286881915011.a, A084367, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-! ## A027903.P16996578602699500909

`∑[A139274(n)+n²]`
-/

namespace A027903.P16996578602699500909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027903.P16996578602699500909

namespace A027903

/-- `∑[A139274(n)+n²]` -/
def P16996578602699500909.Spec : Prop :=
  ∀ n, P16996578602699500909.a n = A027903 n

end A027903

/-! ## A027903.P16368652171610324016

`∑[A008585(n)²-n]`
-/

namespace A027903.P16368652171610324016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027903.P16368652171610324016

namespace A027903

/-- `∑[A008585(n)²-n]` -/
def P16368652171610324016.Spec : Prop :=
  ∀ n, P16368652171610324016.a n = A027903 n

end A027903

/-! ## A027903.P11707243736083223260

`A022271(n)+A005945(n)`
-/

namespace A027903.P11707243736083223260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A005945 n

end

end A027903.P11707243736083223260

namespace A027903

/-- `A022271(n)+A005945(n)` -/
def P11707243736083223260.Spec : Prop :=
  ∀ n, P11707243736083223260.a n = A027903 n

end A027903

/-! ## A027903.P757497983277829409

`A050409(n)+A016061(n)`
-/

namespace A027903.P757497983277829409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n + A016061 n

end

end A027903.P757497983277829409

namespace A027903

/-- `A050409(n)+A016061(n)` -/
def P757497983277829409.Spec : Prop :=
  ∀ n, P757497983277829409.a n = A027903 n

end A027903

/-! ## A027903.P9492886932155477918

`A055112(n)+A011379(n)`
-/

namespace A027903.P9492886932155477918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A011379 n

end

end A027903.P9492886932155477918

namespace A027903

/-- `A055112(n)+A011379(n)` -/
def P9492886932155477918.Spec : Prop :=
  ∀ n, P9492886932155477918.a n = A027903 n

theorem P9492886932155477918.correct : P9492886932155477918.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P9492886932155477918.a, A027903.P4209147286881915011.a, A011379, A011379.P13170028565952122956.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-! ## A027903.P6048401500869871525

`A067389(n)+A001105(n)`
-/

namespace A027903.P6048401500869871525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + A001105 n

end

end A027903.P6048401500869871525

namespace A027903

/-- `A067389(n)+A001105(n)` -/
def P6048401500869871525.Spec : Prop :=
  ∀ n, P6048401500869871525.a n = A027903 n

theorem P6048401500869871525.correct : P6048401500869871525.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P6048401500869871525.a, A027903.P4209147286881915011.a, A001105, A001105.P6098599260439307493.a, A067389, A067389.P14097551594125527113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-! ## A027903.P10906856166864235583

`A071230(n)+A022272(n)`
-/

namespace A027903.P10906856166864235583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071230 n + A022272 n

end

end A027903.P10906856166864235583

namespace A027903

/-- `A071230(n)+A022272(n)` -/
def P10906856166864235583.Spec : Prop :=
  ∀ n, P10906856166864235583.a n = A027903 n

end A027903

/-! ## A027903.P6972279845060821794

`A115519(n)+A005475(n)`
-/

namespace A027903.P6972279845060821794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A005475 n

end

end A027903.P6972279845060821794

namespace A027903

/-- `A115519(n)+A005475(n)` -/
def P6972279845060821794.Spec : Prop :=
  ∀ n, P6972279845060821794.a n = A027903 n

end A027903

/-! ## A027903.P3677204302987007532

`A119536(n)+A002939(n)`
-/

namespace A027903.P3677204302987007532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 n + A002939 n

end

end A027903.P3677204302987007532

namespace A027903

/-- `A119536(n)+A002939(n)` -/
def P3677204302987007532.Spec : Prop :=
  ∀ n, P3677204302987007532.a n = A027903 n

theorem P3677204302987007532.correct : P3677204302987007532.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P3677204302987007532.a, A027903.P4209147286881915011.a, A002939, A002939.P11095602872349887610.a, A119536, A119536.P17684524526440716851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-! ## A027903.P9253965988910554310

`A117642(n)+A007742(n)`
-/

namespace A027903.P9253965988910554310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + A007742 n

end

end A027903.P9253965988910554310

namespace A027903

/-- `A117642(n)+A007742(n)` -/
def P9253965988910554310.Spec : Prop :=
  ∀ n, P9253965988910554310.a n = A027903 n

theorem P9253965988910554310.correct : P9253965988910554310.Spec := by
  intro n
  simp only [A027903, Nat.add_sub_cancel, A027903.P9253965988910554310.a, A027903.P4209147286881915011.a, A007742, A007742.P14173437786459717136.a, A117642, A117642.P2206942344561243653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027903

/-!
# A027906: Expansion of Product_{m>=1} (1+q^m)^(4*m).

The programs for A027906, there is no canonical definition to state claims against.
-/

/-! ## A027906.P16650051202338335320

`A277938(∑[n+5]+5)`
-/

namespace A027906.P16650051202338335320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A027906.P16650051202338335320

/-! ## A027906.P16399555085467328501

`record[A277938(A052905(n))]`
-/

namespace A027906.P16399555085467328501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P16399555085467328501

/-! ## A027906.P6062130549846089970

`record[A277938(A055999(n)+1)]`
-/

namespace A027906.P6062130549846089970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P6062130549846089970

/-! ## A027906.P13563494322973920687

`record[A277938(abs(A046691(n))-1)]`
-/

namespace A027906.P13563494322973920687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P13563494322973920687

/-! ## A027906.P11579691424114305784

`record[A277938(A046691(n+1)-1)]`
-/

namespace A027906.P11579691424114305784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P11579691424114305784

/-! ## A027906.P11588164291710546149

`record[A277938(A027379(n+1)-2)]`
-/

namespace A027906.P11588164291710546149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P11588164291710546149

/-! ## A027906.P17262466250727116529

`record[A277938(A055998(n+1)-2)]`
-/

namespace A027906.P17262466250727116529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P17262466250727116529

/-! ## A027906.P3121159429592346649

`record[A277938(A034856(n+2)-3)]`
-/

namespace A027906.P3121159429592346649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P3121159429592346649

/-! ## A027906.P8497923210858033160

`record[A277938(A165157(2*n+1)+n)]`
-/

namespace A027906.P8497923210858033160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (A165157 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027906.P8497923210858033160

/-! ## A027906.P5603636012103530177

`A277938(eq[4, A025581(n)])%A042864(n)`
-/

namespace A027906.P5603636012103530177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A042864 n)

end

end A027906.P5603636012103530177

/-! ## A027906.P12499346897568247526

`A277938(eq[4, A025581(n)])^A019428(2*n)`
-/

namespace A027906.P12499346897568247526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) ^ (A019428 (2 * n) : ℤ)

end

end A027906.P12499346897568247526

/-!
# A027907: Triangle of trinomial coefficients T(n,k) (n >= 0, 0 <= k <= 2*n), read by rows: n-th row is obtained by expanding (1 + x + x^2)^n.

The programs for A027907, there is no canonical definition to state claims against.
-/

/-! ## A027907.P16049525766680264518

`A169623(A161983(n))`
-/

namespace A027907.P16049525766680264518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A161983 n).toNat

end

end A027907.P16049525766680264518

/-! ## A027907.P13947924217868981620

`A169623(A316670(n+1))`
-/

namespace A027907.P13947924217868981620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A316670 (n + 1)).toNat

end

end A027907.P13947924217868981620

/-! ## A027907.P5616256454349018030

`A169623(A007606(n+1)-1)`
-/

namespace A027907.P5616256454349018030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A007606 (n + 1) - 1).toNat

end

end A027907.P5616256454349018030

/-! ## A027907.P7558447766836694521

`(A025564(n)+A025177(n))/2`
-/

namespace A027907.P7558447766836694521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025564 n + A025177 n : ℚ) / 2

end

end A027907.P7558447766836694521

/-! ## A027907.P18208291700680570389

`A169623(2*n-A196199(n))`
-/

namespace A027907.P18208291700680570389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 ((2 * n : ℤ) - A196199 n).toNat

end

end A027907.P18208291700680570389

/-! ## A027907.P15853165856464264604

`A169623(n-A196199(n)+n)`
-/

namespace A027907.P15853165856464264604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A027907.P15853165856464264604

/-! ## A027907.P13081813327302285037

`A169623(n-(A196199(n)-n))`
-/

namespace A027907.P13081813327302285037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A027907.P13081813327302285037

/-! ## A027907.P474251585303946769

`A169623(A007606(A008486(n)-A005843(n)))`
-/

namespace A027907.P474251585303946769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A007606 (A008486 n - A005843 n).toNat).toNat

end

end A027907.P474251585303946769

/-! ## A027907.P2783568283832019319

`A169623(A116942(2*n))`
-/

namespace A027907.P2783568283832019319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A116942 (2 * n)).toNat

end

end A027907.P2783568283832019319

/-! ## A027907.P12397686711094044616

`A169623(A316965(n)+1)`
-/

namespace A027907.P12397686711094044616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A316965 n + 1).toNat

end

end A027907.P12397686711094044616

/-!
# A027908: a(n) = T(2*n, n), T given by A027907.

The programs for A027908, there is no canonical definition to state claims against.
-/

/-! ## A027908.P6991158199850533752

`A027913(2*n)`
-/

namespace A027908.P6991158199850533752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027913 (2 * n)

end

end A027908.P6991158199850533752

/-! ## A027908.P316913500191035338

`record[A027913(n%4+n)]`
-/

namespace A027908.P316913500191035338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027913 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027908.P316913500191035338

/-! ## A027908.P10693957071918633

`record[gcd(val(n+1, 2), A027913(n))]`
-/

namespace A027908.P10693957071918633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A027913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027908.P10693957071918633

/-! ## A027908.P2324002394820965760

`record[A027913(n)/A033999(n)]`
-/

namespace A027908.P2324002394820965760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027913 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027908.P2324002394820965760

/-! ## A027908.P9676436742918812007

`A094531(∑[4*n])`
-/

namespace A027908.P9676436742918812007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027908.P9676436742918812007

/-! ## A027908.P10608765728353174695

`A111808((n+1)²+n²)`
-/

namespace A027908.P10608765728353174695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 ((n + 1) ^ 2 + n ^ 2)

end

end A027908.P10608765728353174695

/-! ## A027908.P6397844580277133499

`A082870(2*n+3*n²)`
-/

namespace A027908.P6397844580277133499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (2 * n + 3 * n ^ 2)

end

end A027908.P6397844580277133499

/-! ## A027908.P11013991212634577105

`A027907((2*n)²+n)`
-/

namespace A027908.P11013991212634577105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((2 * n) ^ 2 + n)

end

end A027908.P11013991212634577105

/-! ## A027908.P8997426968484265586

`A169623(A139276(n))`
-/

namespace A027908.P8997426968484265586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A139276 n).toNat

end

end A027908.P8997426968484265586

/-! ## A027908.P14316393224961110129

`A169623(A139277(n))`
-/

namespace A027908.P14316393224961110129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A139277 n).toNat

end

end A027908.P14316393224961110129

/-!
# A027909: T(2n,n-1), T given by A027907.

The programs for A027909, there is no canonical definition to state claims against.
-/

/-! ## A027909.P7770673729257654986

`(n+1)*A143927(n)`
-/

namespace A027909.P7770673729257654986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143927 n

end

end A027909.P7770673729257654986

/-! ## A027909.P12688699506335238564

`(n+1)*A143926(2*(n+1))`
-/

namespace A027909.P12688699506335238564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143926 (2 * (n + 1))

end

end A027909.P12688699506335238564

/-! ## A027909.P14520266834337898306

`(n+1)*record[A143926(A133265(n))]`
-/

namespace A027909.P14520266834337898306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143926 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027909.P14520266834337898306

/-! ## A027909.P13296143597643570739

`(n+1)*A378292(A007401(A000096(n+1)))`
-/

namespace A027909.P13296143597643570739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A378292 (A007401 (A000096 (n + 1)).toNat).toNat

end

end A027909.P13296143597643570739

/-! ## A027909.P11474611255198580717

`A111808(∑[4*(n+1)])`
-/

namespace A027909.P11474611255198580717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027909.P11474611255198580717

/-! ## A027909.P5895214212620130975

`A094531(A001844(n+1))`
-/

namespace A027909.P5895214212620130975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A001844 (n + 1)).toNat

end

end A027909.P5895214212620130975

/-! ## A027909.P5459065168653311915

`A094531(A099776(n+1))`
-/

namespace A027909.P5459065168653311915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A099776 (n + 1)).toNat

end

end A027909.P5459065168653311915

/-! ## A027909.P10336133860825524298

`A082870(A080663(n+1))`
-/

namespace A027909.P10336133860825524298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (A080663 (n + 1)).toNat

end

end A027909.P10336133860825524298

/-!
# A027910: T(2n,n-2), T given by A027907.

The programs for A027910, there is no canonical definition to state claims against.
-/

/-! ## A027910.P349146156974308207

`record[A120987(A004273(n²))]`
-/

namespace A027910.P349146156974308207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (A004273 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027910.P349146156974308207

/-! ## A027910.P13472661201070715578

`A120987(A004273((n+2)²))`
-/

namespace A027910.P13472661201070715578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120987 (A004273 ((n + 2) ^ 2)).toNat

end

end A027910.P13472661201070715578

/-! ## A027910.P17656821555343188036

`A094531(A099776(n+2)+1)`
-/

namespace A027910.P17656821555343188036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A099776 (n + 2) + 1).toNat

end

end A027910.P17656821555343188036

/-! ## A027910.P11240361952404891179

`A111808(A014105(n+2)+n+1)`
-/

namespace A027910.P11240361952404891179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (A014105 (n + 2) + (n + 1 : ℤ)).toNat

end

end A027910.P11240361952404891179

/-! ## A027910.P15155113242170126822

`A082870(A140676(n+1))`
-/

namespace A027910.P15155113242170126822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (A140676 (n + 1)).toNat

end

end A027910.P15155113242170126822

/-! ## A027910.P7655322491338247195

`A082870(A000217(n)+∑[5*n+7])`
-/

namespace A027910.P7655322491338247195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (A000217 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A027910.P7655322491338247195

/-!
# A027911: a(n) = T(2*n+1,n), with T given by A027907.

The programs for A027911, there is no canonical definition to state claims against.
-/

/-! ## A027911.P12287729544222162908

`A027913(Δ[n²])`
-/

namespace A027911.P12287729544222162908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027911.P12287729544222162908

/-! ## A027911.P16828772373878791514

`(2*n+1)*A006605(n)`
-/

namespace A027911.P16828772373878791514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006605 n

end

end A027911.P16828772373878791514

/-! ## A027911.P11436994848353202479

`record[A027913((n+1)%6+n)]`
-/

namespace A027911.P11436994848353202479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027913 ((n + 1) % 6 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027911.P11436994848353202479

/-! ## A027911.P16348324425742928460

`(2*n+1)*A143926(Δ[n²])`
-/

namespace A027911.P16348324425742928460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A143926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027911.P16348324425742928460

/-! ## A027911.P6339459236343143905

`lcm(2*n+1, A027913(2*n+1))`
-/

namespace A027911.P6339459236343143905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A027913 (2 * n + 1))

end

end A027911.P6339459236343143905

/-! ## A027911.P10626631908770896148

`(2*n+1)/(n+1)*A026307(2*n)`
-/

namespace A027911.P10626631908770896148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (n + 1 : ℚ) * (A026307 (2 * n) : ℚ)

end

end A027911.P10626631908770896148

/-! ## A027911.P7864644038797156296

`record[A027913(A033999(n)+n)]`
-/

namespace A027911.P7864644038797156296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027913 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027911.P7864644038797156296

/-! ## A027911.P14809011330488904660

`record[A027913(n*A000035(n))]`
-/

namespace A027911.P14809011330488904660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027913 ((n : ℤ) * A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027911.P14809011330488904660

/-! ## A027911.P15881524513512318945

`2*A026302(n)-A006605(n)`
-/

namespace A027911.P15881524513512318945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026302 n - A006605 n

end

end A027911.P15881524513512318945

/-! ## A027911.P16157211942670420117

`record[(A133265(n)-1)*A143926(n)]`
-/

namespace A027911.P16157211942670420117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133265 n - 1) * A143926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027911.P16157211942670420117

/-! ## A027911.P9504150277310914005

`2*(n+1)*A143926(2*n+1)-A143926(2*n+1)`
-/

namespace A027911.P9504150277310914005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A143926 (2 * n + 1) - A143926 (2 * n + 1)

end

end A027911.P9504150277310914005

/-! ## A027911.P14417038941208799343

`(4*n+2)*A143926(2*n+1)/2`
-/

namespace A027911.P14417038941208799343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 2 : ℤ) * A143926 (2 * n + 1) : ℚ) / 2

end

end A027911.P14417038941208799343

/-!
# A027912: T(2n-1,n-2), T given by A027907.

The programs for A027912, there is no canonical definition to state claims against.
-/

/-! ## A027912.P3426979015852916040

`A094531(A167614(2*(n+1))+n)`
-/

namespace A027912.P3426979015852916040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A027912.P3426979015852916040

/-! ## A027912.P8786330690144818062

`A082870(A270710(n+1))`
-/

namespace A027912.P8786330690144818062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (A270710 (n + 1)).toNat

end

end A027912.P8786330690144818062

/-! ## A027912.P7883361470414921674

`A082870((n+2)*A016789(n))`
-/

namespace A027912.P7883361470414921674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 ((n + 2 : ℤ) * A016789 n).toNat

end

end A027912.P7883361470414921674

/-! ## A027912.P15169841477169233117

`A027907(∑[8*n+9])`
-/

namespace A027912.P15169841477169233117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027912.P15169841477169233117

/-! ## A027912.P10306782981552936737

`record[A027907(A249122(n+1)+A005563(n))]`
-/

namespace A027912.P10306782981552936737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A249122 (n + 1) + A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027912.P10306782981552936737

/-!
# A027913: T(n,[ n/2 ]), T given by A027907.

The programs for A027913, there is no canonical definition to state claims against.
-/

/-! ## A027913.P4394443325495855922

`A094531(A007590(n+1))`
-/

namespace A027913.P4394443325495855922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A007590 (n + 1)).toNat

end

end A027913.P4394443325495855922

/-! ## A027913.P17030257436638577750

`A111808(A000982(n+1))`
-/

namespace A027913.P17030257436638577750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (A000982 (n + 1)).toNat

end

end A027913.P17030257436638577750

/-! ## A027913.P8662060095228958627

`A111808(A030978(n+1))`
-/

namespace A027913.P8662060095228958627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 (A030978 (n + 1)).toNat

end

end A027913.P8662060095228958627

/-! ## A027913.P16756037598134249042

`A094531(A080476(n+1))`
-/

namespace A027913.P16756037598134249042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (A080476 (n + 1)).toNat

end

end A027913.P16756037598134249042

/-! ## A027913.P5175119042461938298

`A082870(A001082(n+1))`
-/

namespace A027913.P5175119042461938298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082870 (A001082 (n + 1)).toNat

end

end A027913.P5175119042461938298

/-! ## A027913.P14841401995322394741

`A027907(floor(n/2)+n²)`
-/

namespace A027913.P14841401995322394741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (⌊(n : ℚ) / 2⌋ + (n ^ 2 : ℤ)).toNat

end

end A027913.P14841401995322394741

/-! ## A027913.P11798914090088976587

`A169623(A139593(n))`
-/

namespace A027913.P11798914090088976587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A139593 n).toNat

end

end A027913.P11798914090088976587

/-! ## A027913.P17885504259077381296

`A169623(A139595(n))`
-/

namespace A027913.P17885504259077381296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A139595 n).toNat

end

end A027913.P17885504259077381296

/-! ## A027913.P8332000087159672854

`A169623(A274681(n+1))`
-/

namespace A027913.P8332000087159672854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A274681 (n + 1)).toNat

end

end A027913.P8332000087159672854

/-! ## A027913.P6224203812966693459

`A169623(A299645(n+1))`
-/

namespace A027913.P6224203812966693459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A299645 (n + 1)).toNat

end

end A027913.P6224203812966693459

/-!
# A027914: T(n,0) + T(n,1) + ... + T(n,n), T given by A027907.

The programs for A027914, the canonical program `A027914.P5443014063113288149` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027914 has offset 0).

The definition of A027914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027914.P5443014063113288149

`(3^n+A002426(n))/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027914

/-- `(3^n+A002426(n))/2` -/
def P5443014063113288149.Spec : Prop :=
  ∀ n, P5443014063113288149.a n = (A027914 n : ℚ)

end A027914

/-! ## A027914.P2271598177852779820

`∑[A025191(n)]`
-/

namespace A027914.P2271598177852779820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027914.P2271598177852779820

namespace A027914

/-- `∑[A025191(n)]` -/
def P2271598177852779820.Spec : Prop :=
  ∀ n, P2271598177852779820.a n = A027914 n

end A027914

/-! ## A027914.P14355996895196961556

`A097861(n)+A007051(n)`
-/

namespace A027914.P14355996895196961556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + A007051 n

end

end A027914.P14355996895196961556

namespace A027914

/-- `A097861(n)+A007051(n)` -/
def P14355996895196961556.Spec : Prop :=
  ∀ n, P14355996895196961556.a n = A027914 n

end A027914

/-! ## A027914.P2297583052727510912

`A140429(n)+A116410(n)`
-/

namespace A027914.P2297583052727510912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A116410 n

end

end A027914.P2297583052727510912

namespace A027914

/-- `A140429(n)+A116410(n)` -/
def P2297583052727510912.Spec : Prop :=
  ∀ n, P2297583052727510912.a n = A027914 n

end A027914

/-! ## A027914.P16720292109625842945

`A257520(n)+A003462(n)`
-/

namespace A027914.P16720292109625842945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + A003462 n

end

end A027914.P16720292109625842945

namespace A027914

/-- `A257520(n)+A003462(n)` -/
def P16720292109625842945.Spec : Prop :=
  ∀ n, P16720292109625842945.a n = A027914 n

end A027914

/-! ## A027914.P10635200469297199949

`A257520(n)+∑[A140429(n)]`
-/

namespace A027914.P10635200469297199949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027914.P10635200469297199949

namespace A027914

/-- `A257520(n)+∑[A140429(n)]` -/
def P10635200469297199949.Spec : Prop :=
  ∀ n, P10635200469297199949.a n = A027914 n

end A027914

/-! ## A027914.P610467115789999473

`A108863(n)+A005717(n+1)`
-/

namespace A027914.P610467115789999473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 n + A005717 (n + 1)

end

end A027914.P610467115789999473

namespace A027914

/-- `A108863(n)+A005717(n+1)` -/
def P610467115789999473.Spec : Prop :=
  ∀ n, P610467115789999473.a n = A027914 n

end A027914

/-! ## A027914.P17562940878047756088

`A124302(n+1)+A097861(n)`
-/

namespace A027914.P17562940878047756088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + A097861 n

end

end A027914.P17562940878047756088

namespace A027914

/-- `A124302(n+1)+A097861(n)` -/
def P17562940878047756088.Spec : Prop :=
  ∀ n, P17562940878047756088.a n = A027914 n

end A027914

/-! ## A027914.P10556101176152315173

`ceil(A003462(n)+A002426(n)/2)`
-/

namespace A027914.P10556101176152315173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003462 n : ℚ) + (A002426 n : ℚ) / 2⌉

end

end A027914.P10556101176152315173

namespace A027914

/-- `ceil(A003462(n)+A002426(n)/2)` -/
def P10556101176152315173.Spec : Prop :=
  ∀ n, P10556101176152315173.a n = A027914 n

end A027914

/-! ## A027914.P2122764183193441991

`A116410(n+1)+A005043(n)-A002426(n)`
-/

namespace A027914.P2122764183193441991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 (n + 1) + (A005043 n - A002426 n)

end

end A027914.P2122764183193441991

namespace A027914

/-- `A116410(n+1)+A005043(n)-A002426(n)` -/
def P2122764183193441991.Spec : Prop :=
  ∀ n, P2122764183193441991.a n = A027914 n

end A027914

/-! ## A027914.P5545359131088052042

`ceil(A081673(n)/2)`
-/

namespace A027914.P5545359131088052042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081673 n : ℚ) / 2⌉

end

end A027914.P5545359131088052042

namespace A027914

/-- `ceil(A081673(n)/2)` -/
def P5545359131088052042.Spec : Prop :=
  ∀ n, P5545359131088052042.a n = A027914 n

end A027914

/-! ## A027914.P15331704019069266954

`A025578(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A027914.P15331704019069266954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025578 (n + 1) - a (n - 1)

end

end A027914.P15331704019069266954

namespace A027914

/-- `A025578(n+1)-a(n-1)` -/
def P15331704019069266954.Spec : Prop :=
  ∀ n, P15331704019069266954.a n = A027914 n

end A027914

/-! ## A027914.P5676277452741401347

`A055217(n)-A330796(n)`
-/

namespace A027914.P5676277452741401347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055217 n - A330796 n

end

end A027914.P5676277452741401347

namespace A027914

/-- `A055217(n)-A330796(n)` -/
def P5676277452741401347.Spec : Prop :=
  ∀ n, P5676277452741401347.a n = A027914 n

end A027914

/-! ## A027914.P7235777195367709909

`A097861(n)-A123183(n+2)`
-/

namespace A027914.P7235777195367709909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n - A123183 (n + 2)

end

end A027914.P7235777195367709909

namespace A027914

/-- `A097861(n)-A123183(n+2)` -/
def P7235777195367709909.Spec : Prop :=
  ∀ n, P7235777195367709909.a n = A027914 n

end A027914

/-! ## A027914.P12105158983516347912

`(A002426(n)+A000244(n))/2`
-/

namespace A027914.P12105158983516347912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n + A000244 n : ℚ) / 2

end

end A027914.P12105158983516347912

namespace A027914

/-- `(A002426(n)+A000244(n))/2` -/
def P12105158983516347912.Spec : Prop :=
  ∀ n, P12105158983516347912.a n = (A027914 n : ℚ)

end A027914

/-! ## A027914.P9420486487859964044

`(A024023(n)+A002426(n)+1)/2`
-/

namespace A027914.P9420486487859964044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n + A002426 n + 1 : ℚ) / 2

end

end A027914.P9420486487859964044

namespace A027914

/-- `(A024023(n)+A002426(n)+1)/2` -/
def P9420486487859964044.Spec : Prop :=
  ∀ n, P9420486487859964044.a n = (A027914 n : ℚ)

end A027914

/-! ## A027914.P18302326663573206332

`∑[A330796(n)+A002426(n)]-A330796(n)`
-/

namespace A027914.P18302326663573206332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330796 n + A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330796 n

end

end A027914.P18302326663573206332

namespace A027914

/-- `∑[A330796(n)+A002426(n)]-A330796(n)` -/
def P18302326663573206332.Spec : Prop :=
  ∀ n, P18302326663573206332.a n = A027914 n

end A027914

/-! ## A027914.P12526255832782447776

`A027915(n+1)-(A027915(n)+A025191(n+1))`
-/

namespace A027914.P12526255832782447776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027915 (n + 1) - (A027915 n + A025191 (n + 1))

end

end A027914.P12526255832782447776

namespace A027914

/-- `A027915(n+1)-(A027915(n)+A025191(n+1))` -/
def P12526255832782447776.Spec : Prop :=
  ∀ n, P12526255832782447776.a n = A027914 n

end A027914

/-!
# A027915: a(n) = Sum_{0<=j<=i, 0<=i<=n} A027907(i, j).

The programs for A027915, the canonical program `A027915.P5286031001483950181` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027915 has offset 0).

The definition of A027915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027915.P5286031001483950181

`∑[A027914(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027915

/-- `∑[A027914(n)]` -/
def P5286031001483950181.Spec : Prop :=
  ∀ n, P5286031001483950181.a n = A027915 n

theorem P5286031001483950181.correct : P5286031001483950181.Spec := by
  intro n
  simp only [A027915]

end A027915

/-! ## A027915.P142231848396090860

`∑[∑[A025191(n)]]`
-/

namespace A027915.P142231848396090860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025191 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P142231848396090860

namespace A027915

/-- `∑[∑[A025191(n)]]` -/
def P142231848396090860.Spec : Prop :=
  ∀ n, P142231848396090860.a n = A027915 n

end A027915

/-! ## A027915.P1192424366181456322

`∑[ceil(A081673(n)/2)]`
-/

namespace A027915.P1192424366181456322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081673 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P1192424366181456322

namespace A027915

/-- `∑[ceil(A081673(n)/2)]` -/
def P1192424366181456322.Spec : Prop :=
  ∀ n, P1192424366181456322.a n = A027915 n

end A027915

/-! ## A027915.P5030654634045938520

`A116410(n)+a(n-1)+3^(n-1)` with `a(0)=1`
-/

namespace A027915.P5030654634045938520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A116410 n : ℚ) + (a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A027915.P5030654634045938520

namespace A027915

/-- `A116410(n)+a(n-1)+3^(n-1)` -/
def P5030654634045938520.Spec : Prop :=
  ∀ n, P5030654634045938520.a n = (A027915 n : ℚ)

end A027915

/-! ## A027915.P6882878339429164821

`A116409(n)+A003462(n)`
-/

namespace A027915.P6882878339429164821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116409 n + A003462 n

end

end A027915.P6882878339429164821

namespace A027915

/-- `A116409(n)+A003462(n)` -/
def P6882878339429164821.Spec : Prop :=
  ∀ n, P6882878339429164821.a n = A027915 n

end A027915

/-! ## A027915.P10879964899844149572

`A247287(n)+A047926(n)`
-/

namespace A027915.P10879964899844149572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247287 n + A047926 n

end

end A027915.P10879964899844149572

namespace A027915

/-- `A247287(n)+A047926(n)` -/
def P10879964899844149572.Spec : Prop :=
  ∀ n, P10879964899844149572.a n = A027915 n

end A027915

/-! ## A027915.P2397063598341988325

`∑[A097861(n)+A007051(n)]`
-/

namespace A027915.P2397063598341988325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P2397063598341988325

namespace A027915

/-- `∑[A097861(n)+A007051(n)]` -/
def P2397063598341988325.Spec : Prop :=
  ∀ n, P2397063598341988325.a n = A027915 n

end A027915

/-! ## A027915.P16615425504940579677

`A003462(n)+∑[A116410(n)]`
-/

namespace A027915.P16615425504940579677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P16615425504940579677

namespace A027915

/-- `A003462(n)+∑[A116410(n)]` -/
def P16615425504940579677.Spec : Prop :=
  ∀ n, P16615425504940579677.a n = A027915 n

end A027915

/-! ## A027915.P16940477720410772917

`∑[A257520(n)+∑[A140429(n)]]`
-/

namespace A027915.P16940477720410772917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P16940477720410772917

namespace A027915

/-- `∑[A257520(n)+∑[A140429(n)]]` -/
def P16940477720410772917.Spec : Prop :=
  ∀ n, P16940477720410772917.a n = A027915 n

end A027915

/-! ## A027915.P15186435376429418259

`∑[A108863(n)+A005717(n+1)]`
-/

namespace A027915.P15186435376429418259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 n + A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P15186435376429418259

namespace A027915

/-- `∑[A108863(n)+A005717(n+1)]` -/
def P15186435376429418259.Spec : Prop :=
  ∀ n, P15186435376429418259.a n = A027915 n

theorem P15186435376429418259.correct : P15186435376429418259.Spec := by
  intro n
  simp only [A027915, Nat.add_sub_cancel, A027915.P15186435376429418259.f1, A027915.P15186435376429418259.a, A027915.P5286031001483950181.f1, A027915.P5286031001483950181.a, A005717, A005717.P3550266723113261491.a, A027914, A027914.P5443014063113288149.a, A108863, A108863.P15641938226968541285.a, A001006, A001006.P11199602840237397285.a, A002426, A002426.P18316219981098248731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027915

/-! ## A027915.P8273817634712938720

`∑[(A002426(n)+A000244(n))/2]`
-/

namespace A027915.P8273817634712938720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n + A000244 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P8273817634712938720

namespace A027915

/-- `∑[(A002426(n)+A000244(n))/2]` -/
def P8273817634712938720.Spec : Prop :=
  ∀ n, P8273817634712938720.a n = (A027915 n : ℚ)

end A027915

/-! ## A027915.P18308022238812569766

`∑[(A024023(n)+A002426(n)+1)/2]`
-/

namespace A027915.P18308022238812569766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024023 n + A002426 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027915.P18308022238812569766

namespace A027915

/-- `∑[(A024023(n)+A002426(n)+1)/2]` -/
def P18308022238812569766.Spec : Prop :=
  ∀ n, P18308022238812569766.a n = (A027915 n : ℚ)

end A027915

/-! ## A027915.P3086903905370934156

`a(n-1)+A027914(A000007(n)+n)` with `a(0)=1`
-/

namespace A027915.P3086903905370934156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A027914 (A000007 n + (n : ℤ)).toNat

end

end A027915.P3086903905370934156

namespace A027915

/-- `a(n-1)+A027914(A000007(n)+n)` -/
def P3086903905370934156.Spec : Prop :=
  ∀ n, P3086903905370934156.a n = A027915 n

end A027915

/-!
# A027916: Least k such that 1+2+...+k >= E{1,2,...,n}, where E = 2nd elementary symmetric function.

The programs for A027916, the canonical program `A027916.P11935412473002307859` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027916 has offset 2).

The definition of A027916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027916.P11935412473002307859

`((n+2)²+n+2-2)/2-floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027916

/-- `((n+2)²+n+2-2)/2-floor((n+1)/3)` -/
def P11935412473002307859.Spec : Prop :=
  ∀ n, P11935412473002307859.a n = (A027916 (n + 2) : ℚ)

end A027916

/-! ## A027916.P1427093150827268320

`∑[∑[2-n%3]]`
-/

namespace A027916.P1427093150827268320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P1427093150827268320

namespace A027916

/-- `∑[∑[2-n%3]]` -/
def P1427093150827268320.Spec : Prop :=
  ∀ n, P1427093150827268320.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P10655410747283421627

`∑[∑[-n%3+2]]`
-/

namespace A027916.P10655410747283421627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 3 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P10655410747283421627

namespace A027916

/-- `∑[∑[-n%3+2]]` -/
def P10655410747283421627.Spec : Prop :=
  ∀ n, P10655410747283421627.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P6113087696961037205

`∑[∑[(2*(n+1))%3]]`
-/

namespace A027916.P6113087696961037205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P6113087696961037205

namespace A027916

/-- `∑[∑[(2*(n+1))%3]]` -/
def P6113087696961037205.Spec : Prop :=
  ∀ n, (P6113087696961037205.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P2930121622116762910

`∑[a(n-3)+3]` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A027916.P2930121622116762910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 3] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P2930121622116762910

namespace A027916

/-- `∑[a(n-3)+3]` -/
def P2930121622116762910.Spec : Prop :=
  ∀ n, (P2930121622116762910.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P14854767157442228403

`∑[∑[abs(a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A027916.P14854767157442228403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P14854767157442228403

namespace A027916

/-- `∑[∑[abs(a(n-3))]]` -/
def P14854767157442228403.Spec : Prop :=
  ∀ n, (P14854767157442228403.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P9444405469450524574

`∑[∑[dr(a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A027916.P9444405469450524574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P9444405469450524574

namespace A027916

/-- `∑[∑[dr(a(n-3))]]` -/
def P9444405469450524574.Spec : Prop :=
  ∀ n, (P9444405469450524574.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P2465713805303209139

`∑[∑[floor(a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A027916.P2465713805303209139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P2465713805303209139

namespace A027916

/-- `∑[∑[floor(a(n-3))]]` -/
def P2465713805303209139.Spec : Prop :=
  ∀ n, (P2465713805303209139.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P8990575291689096705

`∑[∑[ceil(a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A027916.P8990575291689096705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P8990575291689096705

namespace A027916

/-- `∑[∑[ceil(a(n-3))]]` -/
def P8990575291689096705.Spec : Prop :=
  ∀ n, (P8990575291689096705.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P14970947954667461445

`∑[∑[round(a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A027916.P14970947954667461445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P14970947954667461445

namespace A027916

/-- `∑[∑[round(a(n-3))]]` -/
def P14970947954667461445.Spec : Prop :=
  ∀ n, (P14970947954667461445.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P12055281435181490158

`∑[∑[∑[ogf((2+x)/(1+x+x^2))]]]`
-/

namespace A027916.P12055281435181490158
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P12055281435181490158

namespace A027916

/-- `∑[∑[∑[ogf((2+x)/(1+x+x^2))]]]` -/
def P12055281435181490158.Spec : Prop :=
  ∀ n, P12055281435181490158.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P2775160838142736541

`ogf((2+x)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A027916.P2775160838142736541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -2, 1, -1, 2, -1] n

end

end A027916.P2775160838142736541

namespace A027916

/-- `ogf((2+x)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P2775160838142736541.Spec : Prop :=
  ∀ n, P2775160838142736541.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P14206608084273728557

`∑[∑[and(3, a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A027916.P14206608084273728557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  Nat.land 3 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P14206608084273728557

namespace A027916

/-- `∑[∑[and(3, a(n-3))]]` -/
def P14206608084273728557.Spec : Prop :=
  ∀ n, (P14206608084273728557.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P8291512219947525352

`∑[∑[C(2, a(n-2)²)]]` with `a(0)=2, a(1)=1`
-/

namespace A027916.P8291512219947525352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  Nat.choose 2 (f2 (n - 2) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P8291512219947525352

namespace A027916

/-- `∑[∑[C(2, a(n-2)²)]]` -/
def P8291512219947525352.Spec : Prop :=
  ∀ n, (P8291512219947525352.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P8078275715592811358

`∑[(n+1)²%3+n+1]`
-/

namespace A027916.P8078275715592811358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3 + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P8078275715592811358

namespace A027916

/-- `∑[(n+1)²%3+n+1]` -/
def P8078275715592811358.Spec : Prop :=
  ∀ n, (P8078275715592811358.a n : ℤ) = A027916 (n + 2)

end A027916

/-! ## A027916.P18267520484605473053

`∑[∑[2-a(a(n-3))]]` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A027916.P18267520484605473053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n f2 =>
  2 - f2 (f2 (n - 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027916.P18267520484605473053

namespace A027916

/-- `∑[∑[2-a(a(n-3))]]` -/
def P18267520484605473053.Spec : Prop :=
  ∀ n, P18267520484605473053.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P7806981273692968825

`floor(C(n+3, 2)-(n+2)/3)`
-/

namespace A027916.P7806981273692968825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℚ) - (n + 2 : ℚ) / 3⌋

end

end A027916.P7806981273692968825

namespace A027916

/-- `floor(C(n+3, 2)-(n+2)/3)` -/
def P7806981273692968825.Spec : Prop :=
  ∀ n, P7806981273692968825.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P1920783560095646639

`round(C(n+3, 2)-(n+3)/3)`
-/

namespace A027916.P1920783560095646639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℚ) - (n + 3 : ℚ) / 3)

end

end A027916.P1920783560095646639

namespace A027916

/-- `round(C(n+3, 2)-(n+3)/3)` -/
def P1920783560095646639.Spec : Prop :=
  ∀ n, P1920783560095646639.a n = A027916 (n + 2)

end A027916

/-! ## A027916.P10087811032100281288

`floor(Δ[(n+2)*C(n+3, 3)/(n+3)])`
-/

namespace A027916.P10087811032100281288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.choose (n + 3) 3 : ℚ) / (n + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A027916.P10087811032100281288

namespace A027916

/-- `floor(Δ[(n+2)*C(n+3, 3)/(n+3)])` -/
def P10087811032100281288.Spec : Prop :=
  ∀ n, P10087811032100281288.a n = A027916 (n + 2)

end A027916

/-!
# A027917: a(n) = least k such that 1+2+...+k >= E{1,2,...,n}, where E is the 3rd elementary symmetric function.

The programs for A027917, the canonical program `A027917.P8849645933797540329` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027917 has offset 3).

The definition of A027917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027917.P8849645933797540329

`round(sqrt(2*C(n+4, 2)*C(n+4, 4)))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027917

/-- `round(sqrt(2*C(n+4, 2)*C(n+4, 4)))` -/
def P8849645933797540329.Spec : Prop :=
  ∀ n, P8849645933797540329.a n = A027917 (n + 3)

theorem P8849645933797540329.correct : P8849645933797540329.Spec := by
  intro n
  simp only [A027917, Nat.add_sub_cancel]

end A027917

/-! ## A027917.P1161173831475745775

`round(sqrt(2*A001303(n+1)))`
-/

namespace A027917.P1161173831475745775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A001303 (n + 1) : ℝ))

end

end A027917.P1161173831475745775

namespace A027917

/-- `round(sqrt(2*A001303(n+1)))` -/
def P1161173831475745775.Spec : Prop :=
  ∀ n, P1161173831475745775.a n = A027917 (n + 3)

end A027917

/-! ## A027917.P15754490839103330496

`∑[A006075(2*n+5)-A054030(2*(n+1))]`
-/

namespace A027917.P15754490839103330496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006075 (2 * n + 5) - A054030 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027917.P15754490839103330496

namespace A027917

/-- `∑[A006075(2*n+5)-A054030(2*(n+1))]` -/
def P15754490839103330496.Spec : Prop :=
  ∀ n, P15754490839103330496.a n = A027917 (n + 3)

end A027917

/-! ## A027917.P650718648785552589

`A179831(n+1)+A172471(C(n+4, 2)*C(n+4, 4))`
-/

namespace A027917.P650718648785552589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (n + 1) + A172471 (Nat.choose (n + 4) 2 * Nat.choose (n + 4) 4)

end

end A027917.P650718648785552589

namespace A027917

/-- `A179831(n+1)+A172471(C(n+4, 2)*C(n+4, 4))` -/
def P650718648785552589.Spec : Prop :=
  ∀ n, P650718648785552589.a n = A027917 (n + 3)

end A027917

/-!
# A027918: Least k such that 1+2+...+k >= E{1,2,...,n}, where E is the 4th elementary symmetric function.

The programs for A027918, the canonical program `A027918.P13685422701588991741` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027918 has offset 4).

The definition of A027918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027918.P13685422701588991741

`round(sqrt(2*A000915(n+1)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027918

/-- `round(sqrt(2*A000915(n+1)))` -/
def P13685422701588991741.Spec : Prop :=
  ∀ n, P13685422701588991741.a n = A027918 (n + 4)

theorem P13685422701588991741.correct : P13685422701588991741.Spec := by
  intro n
  simp only [A027918, Nat.add_sub_cancel]

end A027918

/-!
# A027919: a(n) = least k such that 2nd elementary symmetric function of {1,2,...,k+1} >= 3rd elementary symmetric function of {1,2,...,n}.

The programs for A027919, there is no canonical definition to state claims against.
-/

/-! ## A027919.P14102963338445599192

`A172471(A027917(n+3)-A004524(n))`
-/

namespace A027919.P14102963338445599192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A027917 (n + 3) - A004524 n).toNat

end

end A027919.P14102963338445599192

/-! ## A027919.P15734049852646812063

`A172471(A027917(n+3)-A004526(n))`
-/

namespace A027919.P15734049852646812063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A027917 (n + 3) - A004526 n).toNat

end

end A027919.P15734049852646812063

/-! ## A027919.P12597586119449275278

`A172471(A027917(n+3)-A029923(n))`
-/

namespace A027919.P12597586119449275278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A027917 (n + 3) - A029923 n).toNat

end

end A027919.P12597586119449275278

/-! ## A027919.P13478992250968543404

`A172471(A027917(n+3)+A172471(n)-n)`
-/

namespace A027919.P13478992250968543404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A027917 (n + 3) + (A172471 n - (n : ℤ))).toNat

end

end A027919.P13478992250968543404

/-! ## A027919.P7475950704981411623

`A002024(∑[A194144(n+2)])`
-/

namespace A027919.P7475950704981411623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194144 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027919.P7475950704981411623

/-!
# A027920: Least k such that 2nd elementary symmetric function of {1,2,...,k} >= 4th elementary symmetric function of {1,2,...,n}.

The programs for A027920, there is no canonical definition to state claims against.
-/

/-! ## A027920.P1122200757187859019

`A002024(A216175(n+2)+n)`
-/

namespace A027920.P1122200757187859019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A216175 (n + 2) + (n : ℤ)).toNat

end

end A027920.P1122200757187859019

/-! ## A027920.P10521319839296432476

`A003056(A027918(n+4)+2*n)`
-/

namespace A027920.P10521319839296432476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A027918 (n + 4) + (2 * n : ℤ)).toNat

end

end A027920.P10521319839296432476

/-! ## A027920.P5831482637518289437

`A003056(A027918(n+4)+n+n)`
-/

namespace A027920.P5831482637518289437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A027918 (n + 4) + (n : ℤ) + (n : ℤ)).toNat

end

end A027920.P5831482637518289437

/-! ## A027920.P9553399154332622721

`A003056(∑[∑[A217460(n+1)+n²]])`
-/

namespace A027920.P9553399154332622721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217460 (n + 1) + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027920.P9553399154332622721

/-! ## A027920.P10538518310327504031

`A003056(A198081(A063258(n)))`
-/

namespace A027920.P10538518310327504031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A198081 (A063258 n).toNat).toNat

end

end A027920.P10538518310327504031

/-!
# A027921: a(n) = least k such that 3rd elementary symmetric function of {1,2,...,k} >= 4th elementary symmetric function of {1,2,...,n}.

The programs for A027921, there is no canonical definition to state claims against.
-/

/-! ## A027921.P9213248716264277357

`round(A141214(n)^root(π, -3))`
-/

namespace A027921.P9213248716264277357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141214 n : ℝ) ^ (Real.pi ^ (1 / (-3 : ℝ))))

end

end A027921.P9213248716264277357

/-! ## A027921.P7436409121667961153

`A000196(A112887(3*n+5)+A112873(2*n+1))`
-/

namespace A027921.P7436409121667961153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A112887 (3 * n + 5) + A112873 (2 * n + 1)).toNat

end

end A027921.P7436409121667961153

/-! ## A027921.P5649488586911276865

`A036042(A305498(n+1))+n`
-/

namespace A027921.P5649488586911276865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A305498 (n + 1)).toNat + (n : ℤ)

end

end A027921.P5649488586911276865

/-! ## A027921.P1846255261608034797

`A139338(A094019(n+1))`
-/

namespace A027921.P1846255261608034797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A094019 (n + 1)).toNat

end

end A027921.P1846255261608034797

/-! ## A027921.P3548801312256915020

`A185600(A296007(2*n+5))-A296007(2*n+5)`
-/

namespace A027921.P3548801312256915020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185600 (A296007 (2 * n + 5)).toNat - A296007 (2 * n + 5)

end

end A027921.P3548801312256915020

/-!
# A027922: Least k such that 1+2+...+k >= 1^2 + 2^2 + ... + n^2.

The programs for A027922, the canonical program `A027922.P7994694909720208906` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027922 has offset 1).

The definition of A027922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027922.P7994694909720208906

`round(sqrt(∑[2*(n+1)²]))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027922

/-- `round(sqrt(∑[2*(n+1)²]))` -/
def P7994694909720208906.Spec : Prop :=
  ∀ n, P7994694909720208906.a n = A027922 (n + 1)

theorem P7994694909720208906.correct : P7994694909720208906.Spec := by
  intro n
  simp only [A027922, Nat.add_sub_cancel]

end A027922

/-! ## A027922.P16784994072399089430

`round(sqrt(A006331(n+1)))%A001538(n)`
-/

namespace A027922.P16784994072399089430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A006331 (n + 1) : ℝ))) (A001538 n)

end

end A027922.P16784994072399089430

namespace A027922

/-- `round(sqrt(A006331(n+1)))%A001538(n)` -/
def P16784994072399089430.Spec : Prop :=
  ∀ n, P16784994072399089430.a n = A027922 (n + 1)

end A027922

/-! ## A027922.P13844216440997836687

`A000027(round(sqrt(A006331(n+1))))`
-/

namespace A027922.P13844216440997836687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A006331 (n + 1) : ℝ))).toNat

end

end A027922.P13844216440997836687

namespace A027922

/-- `A000027(round(sqrt(A006331(n+1))))` -/
def P13844216440997836687.Spec : Prop :=
  ∀ n, P13844216440997836687.a n = A027922 (n + 1)

end A027922

/-! ## A027922.P12258512096966655186

`A000027(round(sqrt(A112524(n+1))))`
-/

namespace A027922.P12258512096966655186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A112524 (n + 1) : ℝ))).toNat

end

end A027922.P12258512096966655186

namespace A027922

/-- `A000027(round(sqrt(A112524(n+1))))` -/
def P12258512096966655186.Spec : Prop :=
  ∀ n, P12258512096966655186.a n = A027922 (n + 1)

end A027922

/-! ## A027922.P781943895148153007

`lt[A065228(n), n+1]`
-/

namespace A027922.P781943895148153007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065228 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A027922.P781943895148153007

namespace A027922

/-- `lt[A065228(n), n+1]` -/
def P781943895148153007.Spec : Prop :=
  ∀ n, (P781943895148153007.a n : ℤ) = A027922 (n + 1)

end A027922

/-! ## A027922.P1189577089140388353

`A028310(round(sqrt(A112524(n+1))))`
-/

namespace A027922.P1189577089140388353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A112524 (n + 1) : ℝ))).toNat

end

end A027922.P1189577089140388353

namespace A027922

/-- `A028310(round(sqrt(A112524(n+1))))` -/
def P1189577089140388353.Spec : Prop :=
  ∀ n, P1189577089140388353.a n = A027922 (n + 1)

end A027922

/-!
# A027923: a(n) = least k such that E{1,2,...,k} >= 1^2 + 2^2 + ... + n^2, where E = 2nd elementary symmetric function.

The programs for A027923, there is no canonical definition to state claims against.
-/

/-! ## A027923.P2595442517099184132

`A003056(A034463(n+1)+∑[A225687(n+1)])`
-/

namespace A027923.P2595442517099184132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A034463 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027923.P2595442517099184132

/-! ## A027923.P6544873750480129325

`A048766(A326299(∑[n+2]))`
-/

namespace A027923.P6544873750480129325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A326299 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027923.P6544873750480129325

/-! ## A027923.P5664769421320912285

`A048766(A219648((n+2)²-1))`
-/

namespace A027923.P5664769421320912285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A219648 ((n + 2) ^ 2 - 1)).toNat

end

end A027923.P5664769421320912285

/-! ## A027923.P1780000114299891082

`A048766(∑[3*A265899(n+1)])`
-/

namespace A027923.P1780000114299891082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A265899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027923.P1780000114299891082

/-! ## A027923.P15603997221288246494

`A048766(∑[A210184(3*n+1)+n+2])`
-/

namespace A027923.P15603997221288246494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210184 (3 * n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027923.P15603997221288246494

/-!
# A027924: a(n) = least k such that 1+2+...+k >= 1^3 + 2^3 + ... + n^3.

The programs for A027924, the canonical program `A027924.P14384980963376928318` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027924 has offset 1).

The definition of A027924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027924.P14384980963376928318

`round(sqrt(1/2)*(n+1)*(n+2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027924

/-- `round(sqrt(1/2)*(n+1)*(n+2))` -/
def P14384980963376928318.Spec : Prop :=
  ∀ n, P14384980963376928318.a n = A027924 (n + 1)

theorem P14384980963376928318.correct : P14384980963376928318.Spec := by
  intro n
  simp only [A027924, Nat.add_sub_cancel]

end A027924

/-! ## A027924.P10890163318839863847

`ceil(floor(2*C(n+2, 2)*sqrt(2))/2)`
-/

namespace A027924.P10890163318839863847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(2 * Nat.choose (n + 2) 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℚ) / 2⌉

end

end A027924.P10890163318839863847

namespace A027924

/-- `ceil(floor(2*C(n+2, 2)*sqrt(2))/2)` -/
def P10890163318839863847.Spec : Prop :=
  ∀ n, P10890163318839863847.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P2754607607354051467

`round(sqrt(A163102(n+1)))-n-A001057(2*n)`
-/

namespace A027924.P2754607607354051467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A163102 (n + 1) : ℝ)) - (n : ℤ) - A001057 (2 * n)

end

end A027924.P2754607607354051467

namespace A027924

/-- `round(sqrt(A163102(n+1)))-n-A001057(2*n)` -/
def P2754607607354051467.Spec : Prop :=
  ∀ n, P2754607607354051467.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P12026402560197751021

`round(sqrt(A163102(n+1)))%(A316018(n)+2)²`
-/

namespace A027924.P12026402560197751021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A163102 (n + 1) : ℝ))) ((A316018 n + 2) ^ 2)

end

end A027924.P12026402560197751021

namespace A027924

/-- `round(sqrt(A163102(n+1)))%(A316018(n)+2)²` -/
def P12026402560197751021.Spec : Prop :=
  ∀ n, P12026402560197751021.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P1953722368462009533

`A000027(round(sqrt(A163102(n+1))))`
-/

namespace A027924.P1953722368462009533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A163102 (n + 1) : ℝ))).toNat

end

end A027924.P1953722368462009533

namespace A027924

/-- `A000027(round(sqrt(A163102(n+1))))` -/
def P1953722368462009533.Spec : Prop :=
  ∀ n, P1953722368462009533.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P905863030431135100

`A022846(∑[n+1])`
-/

namespace A027924.P905863030431135100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027924.P905863030431135100

namespace A027924

/-- `A022846(∑[n+1])` -/
def P905863030431135100.Spec : Prop :=
  ∀ n, P905863030431135100.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P13718413808196153472

`floor(A198263(∑[n+1])/2)`
-/

namespace A027924.P13718413808196153472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198263 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A027924.P13718413808196153472

namespace A027924

/-- `floor(A198263(∑[n+1])/2)` -/
def P13718413808196153472.Spec : Prop :=
  ∀ n, P13718413808196153472.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P18332802515657655017

`ceil(A022842(∑[n+1])/2)`
-/

namespace A027924.P18332802515657655017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022842 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A027924.P18332802515657655017

namespace A027924

/-- `ceil(A022842(∑[n+1])/2)` -/
def P18332802515657655017.Spec : Prop :=
  ∀ n, P18332802515657655017.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P2095593289513197609

`A184622(∑[n+1]+2)-2`
-/

namespace A027924.P2095593289513197609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184622 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 2

end

end A027924.P2095593289513197609

namespace A027924

/-- `A184622(∑[n+1]+2)-2` -/
def P2095593289513197609.Spec : Prop :=
  ∀ n, P2095593289513197609.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P10535871536427882090

`record[A022846(C(n, 2)-n+1)]`
-/

namespace A027924.P10535871536427882090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 ((Nat.choose n 2 : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027924.P10535871536427882090

namespace A027924

/-- `record[A022846(C(n, 2)-n+1)]` -/
def P10535871536427882090.Spec : Prop :=
  ∀ n, P10535871536427882090.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P8846323051444793314

`A003153(∑[n+1])-∑[n+1]`
-/

namespace A027924.P8846323051444793314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A027924.P8846323051444793314

namespace A027924

/-- `A003153(∑[n+1])-∑[n+1]` -/
def P8846323051444793314.Spec : Prop :=
  ∀ n, P8846323051444793314.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P5645829321671660638

`record[A022846(A008795(n))]`
-/

namespace A027924.P5645829321671660638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A008795 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027924.P5645829321671660638

namespace A027924

/-- `record[A022846(A008795(n))]` -/
def P5645829321671660638.Spec : Prop :=
  ∀ n, P5645829321671660638.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P18368631565888735595

`record[A022846(A025796(n))]`
-/

namespace A027924.P18368631565888735595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A025796 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027924.P18368631565888735595

namespace A027924

/-- `record[A022846(A025796(n))]` -/
def P18368631565888735595.Spec : Prop :=
  ∀ n, P18368631565888735595.a n = A027924 (n + 1)

end A027924

/-! ## A027924.P13817017550307751601

`record[A022846(A038722(n+1))]`
-/

namespace A027924.P13817017550307751601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027924.P13817017550307751601

namespace A027924

/-- `record[A022846(A038722(n+1))]` -/
def P13817017550307751601.Spec : Prop :=
  ∀ n, P13817017550307751601.a n = A027924 (n + 1)

end A027924

/-!
# A027925: a(n) = least k such that E{1,2,...,k} >= 1^3 + 2^3 + ... + n^3, where E = 2nd elementary symmetric function.

The programs for A027925, the canonical program `A027925.P13465229352086100905` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027925 has offset 1).

The definition of A027925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027925.P6174057573775141580

`floor(log(A001642(2*n+1)))+1`
-/

namespace A027925.P6174057573775141580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A001642 (2 * n + 1) : ℝ)⌋ + 1

end

end A027925.P6174057573775141580

namespace A027925

/-- `floor(log(A001642(2*n+1)))+1` -/
def P6174057573775141580.Spec : Prop :=
  ∀ n, P6174057573775141580.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P4962523694260260957

`floor(log(∑{d}[2*n+1, #*A060167(#)]))+1`
-/

namespace A027925.P4962523694260260957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060167 d : ℤ) : ℝ)⌋ + 1

end

end A027925.P4962523694260260957

namespace A027925

/-- `floor(log(∑{d}[2*n+1, #*A060167(#)]))+1` -/
def P4962523694260260957.Spec : Prop :=
  ∀ n, P4962523694260260957.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P13465229352086100905

`A172471(∑[A001953(n)+1])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027925

/-- `A172471(∑[A001953(n)+1])` -/
def P13465229352086100905.Spec : Prop :=
  ∀ n, P13465229352086100905.a n = A027925 (n + 1)

theorem P13465229352086100905.correct : P13465229352086100905.Spec := by
  intro n
  simp only [A027925, Nat.add_sub_cancel]

end A027925

/-! ## A027925.P12152258916253090292

`A172471(∑[A136119(n+1)])`
-/

namespace A027925.P12152258916253090292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027925.P12152258916253090292

namespace A027925

/-- `A172471(∑[A136119(n+1)])` -/
def P12152258916253090292.Spec : Prop :=
  ∀ n, P12152258916253090292.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P6461847435881991917

`A172471(∑[A049474(Δ[n²])])`
-/

namespace A027925.P6461847435881991917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027925.P6461847435881991917

namespace A027925

/-- `A172471(∑[A049474(Δ[n²])])` -/
def P6461847435881991917.Spec : Prop :=
  ∀ n, P6461847435881991917.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P11210529777900320107

`A172471(∑[A172471(∑[2*n])+1])`
-/

namespace A027925.P11210529777900320107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027925.P11210529777900320107

namespace A027925

/-- `A172471(∑[A172471(∑[2*n])+1])` -/
def P11210529777900320107.Spec : Prop :=
  ∀ n, P11210529777900320107.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P12299883655717616229

`A003056(∑[A210357(2*(n+1))])`
-/

namespace A027925.P12299883655717616229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027925.P12299883655717616229

namespace A027925

/-- `A003056(∑[A210357(2*(n+1))])` -/
def P12299883655717616229.Spec : Prop :=
  ∀ n, P12299883655717616229.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P14015534409265362265

`ceil(sqrt(A285343(n²+1+n)))`
-/

namespace A027925.P14015534409265362265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A285343 (n ^ 2 + 1 + n) : ℝ)⌉

end

end A027925.P14015534409265362265

namespace A027925

/-- `ceil(sqrt(A285343(n²+1+n)))` -/
def P14015534409265362265.Spec : Prop :=
  ∀ n, P14015534409265362265.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P2790758404337998522

`A003059(round(sqrt(A008514(n))))`
-/

namespace A027925.P2790758404337998522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (SequenceMachineLib.roundAway (Real.sqrt (A008514 n : ℝ))).toNat

end

end A027925.P2790758404337998522

namespace A027925

/-- `A003059(round(sqrt(A008514(n))))` -/
def P2790758404337998522.Spec : Prop :=
  ∀ n, P2790758404337998522.a n = A027925 (n + 1)

end A027925

/-! ## A027925.P894919609519145320

`A003059(round(sqrt(A294433(n))))`
-/

namespace A027925.P894919609519145320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (SequenceMachineLib.roundAway (Real.sqrt (A294433 n : ℝ))).toNat

end

end A027925.P894919609519145320

namespace A027925

/-- `A003059(round(sqrt(A294433(n))))` -/
def P894919609519145320.Spec : Prop :=
  ∀ n, P894919609519145320.a n = A027925 (n + 1)

end A027925

/-!
# A027926: Triangular array T read by rows: T(n,0) = T(n,2n) = 1 for n >= 0; T(n,1) = 1 for n >= 1; T(n,k) = T(n-1,k-2) + T(n-1,k-1) for k = 2..2n-1, n >= 2.

The programs for A027926, there is no canonical definition to state claims against.
-/

/-! ## A027926.P14045620168161509536

`A162741(A020703(n+1))`
-/

namespace A027926.P14045620168161509536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162741 (A020703 (n + 1)).toNat

end

end A027926.P14045620168161509536

/-! ## A027926.P17963365647233755451

`A123736(A020703(n+1)+A000196(n))`
-/

namespace A027926.P17963365647233755451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A020703 (n + 1) + A000196 n).toNat

end

end A027926.P17963365647233755451

/-! ## A027926.P15042769885676385301

`A055801(2*C(floor(sqrt(n))+2, 2)+n)`
-/

namespace A027926.P15042769885676385301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (2 * Nat.choose (Nat.sqrt n + 2) 2 + n)

end

end A027926.P15042769885676385301

/-! ## A027926.P14651591308444402505

`A055801(lt[n+1, A216248(n+1)])`
-/

namespace A027926.P14651591308444402505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A027926.P14651591308444402505

/-! ## A027926.P11790261594103111110

`A055801(record[A083920(A211394(n+1))])`
-/

namespace A027926.P11790261594103111110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A211394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027926.P11790261594103111110

/-! ## A027926.P8638854238864483373

`A055801(A317303(n+1))`
-/

namespace A027926.P8638854238864483373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A317303 (n + 1)).toNat

end

end A027926.P8638854238864483373

/-!
# A027927: Number of plane regions after drawing (in general position) a convex n-gon and all its diagonals.

The programs for A027927, the canonical program `A027927.P8470506974673547009` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027927 has offset 2).

The definition of A027927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027927.P8470506974673547009

`1+C(n+2, 4)+C(n+1, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027927

/-- `1+C(n+2, 4)+C(n+1, 2)` -/
def P8470506974673547009.Spec : Prop :=
  ∀ n, (P8470506974673547009.a n : ℤ) = A027927 (n + 2)

theorem P8470506974673547009.correct : P8470506974673547009.Spec := by
  intro n
  simp only [A027927, Nat.add_sub_cancel]

end A027927

/-! ## A027927.P14066186127080871114

`(n+2)*((n+2)^3-6*(n+2)²+23*(n+2)-42)/24+2`
-/

namespace A027927.P14066186127080871114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (((n + 2) ^ 3 : ℤ) - (6 * (n + 2) ^ 2 : ℤ) + (23 * (n + 2) : ℤ) - 42) : ℚ) / 24 + 2

end

end A027927.P14066186127080871114

namespace A027927

/-- `(n+2)*((n+2)^3-6*(n+2)²+23*(n+2)-42)/24+2` -/
def P14066186127080871114.Spec : Prop :=
  ∀ n, P14066186127080871114.a n = (A027927 (n + 2) : ℚ)

theorem P14066186127080871114.correct : P14066186127080871114.Spec := by
  intro n
  simp only [A027927, Nat.add_sub_cancel, A027927.P14066186127080871114.a, A027927.P8470506974673547009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027927

/-! ## A027927.P4398799928085911019

`1/6*A152950(n+1)*A152948(n+2)`
-/

namespace A027927.P4398799928085911019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (A152950 (n + 1) : ℚ) * (A152948 (n + 2) : ℚ)

end

end A027927.P4398799928085911019

namespace A027927

/-- `1/6*A152950(n+1)*A152948(n+2)` -/
def P4398799928085911019.Spec : Prop :=
  ∀ n, P4398799928085911019.a n = (A027927 (n + 2) : ℚ)

end A027927

/-! ## A027927.P2707682670340562662

`C(∑[n]+3, 2)/3`
-/

namespace A027927.P2707682670340562662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 3) 2 : ℚ) / 3

end

end A027927.P2707682670340562662

namespace A027927

/-- `C(∑[n]+3, 2)/3` -/
def P2707682670340562662.Spec : Prop :=
  ∀ n, P2707682670340562662.a n = (A027927 (n + 2) : ℚ)

end A027927

/-! ## A027927.P12575559376279120679

`∑[∑[a(n-1)+n-1]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A027927.P12575559376279120679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  f2 (n - 1) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027927.P12575559376279120679

namespace A027927

/-- `∑[∑[a(n-1)+n-1]]` -/
def P12575559376279120679.Spec : Prop :=
  ∀ n, P12575559376279120679.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P10595256132497255298

`∑[∑[n-(1-a(n-1))]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A027927.P10595256132497255298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  (n : ℤ) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027927.P10595256132497255298

namespace A027927

/-- `∑[∑[n-(1-a(n-1))]]` -/
def P10595256132497255298.Spec : Prop :=
  ∀ n, P10595256132497255298.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P4323865120293065843

`(A008498(n)+4)/5`
-/

namespace A027927.P4323865120293065843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008498 n + 4 : ℚ) / 5

end

end A027927.P4323865120293065843

namespace A027927

/-- `(A008498(n)+4)/5` -/
def P4323865120293065843.Spec : Prop :=
  ∀ n, P4323865120293065843.a n = (A027927 (n + 2) : ℚ)

theorem P4323865120293065843.correct : P4323865120293065843.Spec := by
  intro n
  simp only [A027927, Nat.add_sub_cancel, A027927.P4323865120293065843.a, A027927.P8470506974673547009.a, A008498, A008498.P8566296902789686221.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027927

/-! ## A027927.P7750911794305401015

`∑[A003600(n)-∑[n]]`
-/

namespace A027927.P7750911794305401015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027927.P7750911794305401015

namespace A027927

/-- `∑[A003600(n)-∑[n]]` -/
def P7750911794305401015.Spec : Prop :=
  ∀ n, P7750911794305401015.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P3575508698202990258

`∑[∑[A238531(n)]-n]`
-/

namespace A027927.P3575508698202990258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027927.P3575508698202990258

namespace A027927

/-- `∑[∑[A238531(n)]-n]` -/
def P3575508698202990258.Spec : Prop :=
  ∀ n, P3575508698202990258.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P8307747178209296864

`A055804(2*n+5)`
-/

namespace A027927.P8307747178209296864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055804 (2 * n + 5)

end

end A027927.P8307747178209296864

namespace A027927

/-- `A055804(2*n+5)` -/
def P8307747178209296864.Spec : Prop :=
  ∀ n, P8307747178209296864.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P16222321789128738580

`∑[A055803(2*n+3)]`
-/

namespace A027927.P16222321789128738580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055803 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027927.P16222321789128738580

namespace A027927

/-- `∑[A055803(2*n+3)]` -/
def P16222321789128738580.Spec : Prop :=
  ∀ n, P16222321789128738580.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P11474021713785410327

`∑[A255047(n)-A002663(n)]`
-/

namespace A027927.P11474021713785410327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A002663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027927.P11474021713785410327

namespace A027927

/-- `∑[A255047(n)-A002663(n)]` -/
def P11474021713785410327.Spec : Prop :=
  ∀ n, P11474021713785410327.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P10517344254878835018

`A000217(∑[n]+2)/3`
-/

namespace A027927.P10517344254878835018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 3

end

end A027927.P10517344254878835018

namespace A027927

/-- `A000217(∑[n]+2)/3` -/
def P10517344254878835018.Spec : Prop :=
  ∀ n, P10517344254878835018.a n = (A027927 (n + 2) : ℚ)

end A027927

/-! ## A027927.P2005844231547602882

`A001318(A096777(n+1))`
-/

namespace A027927.P2005844231547602882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A096777 (n + 1)).toNat

end

end A027927.P2005844231547602882

namespace A027927

/-- `A001318(A096777(n+1))` -/
def P2005844231547602882.Spec : Prop :=
  ∀ n, P2005844231547602882.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P14343164212689576284

`A027626(∑[n])`
-/

namespace A027927.P14343164212689576284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027927.P14343164212689576284

namespace A027927

/-- `A027626(∑[n])` -/
def P14343164212689576284.Spec : Prop :=
  ∀ n, P14343164212689576284.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P3704775740695464962

`A001840(∑[n]+1)`
-/

namespace A027927.P3704775740695464962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027927.P3704775740695464962

namespace A027927

/-- `A001840(∑[n]+1)` -/
def P3704775740695464962.Spec : Prop :=
  ∀ n, P3704775740695464962.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P9210357635801555683

`A188623(∑[n]+1)`
-/

namespace A027927.P9210357635801555683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188623 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027927.P9210357635801555683

namespace A027927

/-- `A188623(∑[n]+1)` -/
def P9210357635801555683.Spec : Prop :=
  ∀ n, P9210357635801555683.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P10491249784999906402

`A211004(∑[n]+1)`
-/

namespace A027927.P10491249784999906402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027927.P10491249784999906402

namespace A027927

/-- `A211004(∑[n]+1)` -/
def P10491249784999906402.Spec : Prop :=
  ∀ n, P10491249784999906402.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P8029383999548791402

`A234041(∑[n]+1)`
-/

namespace A027927.P8029383999548791402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027927.P8029383999548791402

namespace A027927

/-- `A234041(∑[n]+1)` -/
def P8029383999548791402.Spec : Prop :=
  ∀ n, P8029383999548791402.a n = A027927 (n + 2)

end A027927

/-! ## A027927.P16074227644842091840

`A087539(∑[n]+3)`
-/

namespace A027927.P16074227644842091840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087539 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027927.P16074227644842091840

namespace A027927

/-- `A087539(∑[n]+3)` -/
def P16074227644842091840.Spec : Prop :=
  ∀ n, P16074227644842091840.a n = A027927 (n + 2)

end A027927

/-!
# A027928: a(n) = T(n, 2*n-5), T given by A027926.

The programs for A027928, the canonical program `A027928.P5891612510050957937` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027928 has offset 3).

The definition of A027928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027928.P5891612510050957937

`(n+1)*((n+3)^4-8*(n+3)^3+39*(n+3)²-92*(n+3)+180)/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027928

/-- `(n+1)*((n+3)^4-8*(n+3)^3+39*(n+3)²-92*(n+3)+180)/120` -/
def P5891612510050957937.Spec : Prop :=
  ∀ n, P5891612510050957937.a n = (A027928 (n + 3) : ℚ)

end A027928

/-! ## A027928.P1506269259810138393

`∑[C(∑[n]+3, 2)/3]`
-/

namespace A027928.P1506269259810138393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 3) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027928.P1506269259810138393

namespace A027928

/-- `∑[C(∑[n]+3, 2)/3]` -/
def P1506269259810138393.Spec : Prop :=
  ∀ n, P1506269259810138393.a n = (A027928 (n + 3) : ℚ)

end A027928

/-! ## A027928.P8837924481202588496

`∑[∑[∑[C(n, 2)]+n]+1]`
-/

namespace A027928.P8837924481202588496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027928.P8837924481202588496

namespace A027928

/-- `∑[∑[∑[C(n, 2)]+n]+1]` -/
def P8837924481202588496.Spec : Prop :=
  ∀ n, (P8837924481202588496.a n : ℤ) = A027928 (n + 3)

end A027928

/-! ## A027928.P16596439796599096941

`∑[A027927(n+2)]`
-/

namespace A027928.P16596439796599096941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027928.P16596439796599096941

namespace A027928

/-- `∑[A027927(n+2)]` -/
def P16596439796599096941.Spec : Prop :=
  ∀ n, P16596439796599096941.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P13344023297959366581

`A027660(n)-∑[n]`
-/

namespace A027928.P13344023297959366581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027928.P13344023297959366581

namespace A027928

/-- `A027660(n)-∑[n]` -/
def P13344023297959366581.Spec : Prop :=
  ∀ n, P13344023297959366581.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P12369979246617204435

`∑[∑[A004006(n)]]+n+1`
-/

namespace A027928.P12369979246617204435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A027928.P12369979246617204435

namespace A027928

/-- `∑[∑[A004006(n)]]+n+1` -/
def P12369979246617204435.Spec : Prop :=
  ∀ n, P12369979246617204435.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P4153734486266619712

`A134393(n+1)+∑[C(n, 4)]`
-/

namespace A027928.P4153734486266619712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027928.P4153734486266619712

namespace A027928

/-- `A134393(n+1)+∑[C(n, 4)]` -/
def P4153734486266619712.Spec : Prop :=
  ∀ n, P4153734486266619712.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P14554540812173879121

`A154322(n)+A000292(n)`
-/

namespace A027928.P14554540812173879121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154322 n + A000292 n

end

end A027928.P14554540812173879121

namespace A027928

/-- `A154322(n)+A000292(n)` -/
def P14554540812173879121.Spec : Prop :=
  ∀ n, P14554540812173879121.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P7085656234925827701

`A161701(n)+A006007(n)`
-/

namespace A027928.P7085656234925827701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + A006007 n

end

end A027928.P7085656234925827701

namespace A027928

/-- `A161701(n)+A006007(n)` -/
def P7085656234925827701.Spec : Prop :=
  ∀ n, P7085656234925827701.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P11553859693180649436

`A042984(n)-A162668(n)`
-/

namespace A027928.P11553859693180649436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042984 n - A162668 n

end

end A027928.P11553859693180649436

namespace A027928

/-- `A042984(n)-A162668(n)` -/
def P11553859693180649436.Spec : Prop :=
  ∀ n, P11553859693180649436.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P5541015123737019948

`A161701(n)+∑[A033547(n)-n]`
-/

namespace A027928.P5541015123737019948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027928.P5541015123737019948

namespace A027928

/-- `A161701(n)+∑[A033547(n)-n]` -/
def P5541015123737019948.Spec : Prop :=
  ∀ n, P5541015123737019948.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P8054224070086580627

`A027660(n)+1+n-A000217(n+1)`
-/

namespace A027928.P8054224070086580627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 n + 1 + (n : ℤ) - A000217 (n + 1)

end

end A027928.P8054224070086580627

namespace A027928

/-- `A027660(n)+1+n-A000217(n+1)` -/
def P8054224070086580627.Spec : Prop :=
  ∀ n, P8054224070086580627.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P4860776586805484593

`A000292(n)+A145127(n)-∑[A000292(n)]`
-/

namespace A027928.P4860776586805484593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A145127 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027928.P4860776586805484593

namespace A027928

/-- `A000292(n)+A145127(n)-∑[A000292(n)]` -/
def P4860776586805484593.Spec : Prop :=
  ∀ n, P4860776586805484593.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P13702907159362440764

`∑[A179865(n+1)+A145126(n)]-A145126(n)`
-/

namespace A027928.P13702907159362440764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) + A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A145126 n

end

end A027928.P13702907159362440764

namespace A027928

/-- `∑[A179865(n+1)+A145126(n)]-A145126(n)` -/
def P13702907159362440764.Spec : Prop :=
  ∀ n, P13702907159362440764.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P6798694420972356129

`Δ[A027929(n+3)]`
-/

namespace A027928.P6798694420972356129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027929 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027928.P6798694420972356129

namespace A027928

/-- `Δ[A027929(n+3)]` -/
def P6798694420972356129.Spec : Prop :=
  ∀ n, P6798694420972356129.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P14175676189099757306

`A027929(n+4)-A027929(n+3)`
-/

namespace A027928.P14175676189099757306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027929 (n + 4) - A027929 (n + 3)

end

end A027928.P14175676189099757306

namespace A027928

/-- `A027929(n+4)-A027929(n+3)` -/
def P14175676189099757306.Spec : Prop :=
  ∀ n, P14175676189099757306.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P6544894854424224447

`A057703(n+1)+A055795(n+2)-A000217(n+1)`
-/

namespace A027928.P6544894854424224447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (n + 1) + (A055795 (n + 2) - A000217 (n + 1))

end

end A027928.P6544894854424224447

namespace A027928

/-- `A057703(n+1)+A055795(n+2)-A000217(n+1)` -/
def P6544894854424224447.Spec : Prop :=
  ∀ n, P6544894854424224447.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P12304681344975421682

`A145127(n)-A000332(n+2)`
-/

namespace A027928.P12304681344975421682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n - A000332 (n + 2)

end

end A027928.P12304681344975421682

namespace A027928

/-- `A145127(n)-A000332(n+2)` -/
def P12304681344975421682.Spec : Prop :=
  ∀ n, P12304681344975421682.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P17668347026817440439

`A057703(n+1)+A000332(n+2)`
-/

namespace A027928.P17668347026817440439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (n + 1) + A000332 (n + 2)

end

end A027928.P17668347026817440439

namespace A027928

/-- `A057703(n+1)+A000332(n+2)` -/
def P17668347026817440439.Spec : Prop :=
  ∀ n, P17668347026817440439.a n = A027928 (n + 3)

end A027928

/-! ## A027928.P17145911476426630228

`A057703(n+2)-A000124(n+1)`
-/

namespace A027928.P17145911476426630228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (n + 2) - A000124 (n + 1)

end

end A027928.P17145911476426630228

namespace A027928

/-- `A057703(n+2)-A000124(n+1)` -/
def P17145911476426630228.Spec : Prop :=
  ∀ n, P17145911476426630228.a n = A027928 (n + 3)

end A027928

/-!
# A027929: a(n) = T(n, 2*n-6), T given by A027926.

The programs for A027929, the canonical program `A027929.P12688522285522700288` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027929 has offset 3).

The definition of A027929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027929.P12688522285522700288

`A027928(n+2)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027929

/-- `A027928(n+2)+a(n-1)` -/
def P12688522285522700288.Spec : Prop :=
  ∀ n, P12688522285522700288.a n = A027929 (n + 3)

theorem P12688522285522700288.correct : P12688522285522700288.Spec := by
  intro n
  simp only [A027929, Nat.add_sub_cancel]

end A027929

/-! ## A027929.P1467759873999377019

`∑[∑[A000127(n+1)-n]]-n`
-/

namespace A027929.P1467759873999377019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A027929.P1467759873999377019

namespace A027929

/-- `∑[∑[A000127(n+1)-n]]-n` -/
def P1467759873999377019.Spec : Prop :=
  ∀ n, P1467759873999377019.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P10180849020830870900

`∑[A027928(n+3)]+1-A027928(n+3)`
-/

namespace A027929.P10180849020830870900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027928 (n + 3))

end

end A027929.P10180849020830870900

namespace A027929

/-- `∑[A027928(n+3)]+1-A027928(n+3)` -/
def P10180849020830870900.Spec : Prop :=
  ∀ n, P10180849020830870900.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P681971461253246038

`∑[∑[A006522(n+1)]+n]+1`
-/

namespace A027929.P681971461253246038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027929.P681971461253246038

namespace A027929

/-- `∑[∑[A006522(n+1)]+n]+1` -/
def P681971461253246038.Spec : Prop :=
  ∀ n, P681971461253246038.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P8316116786135042509

`∑[∑[A000332(n+1)+C(n, 2)+1]-1]+1`
-/

namespace A027929.P8316116786135042509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (Nat.choose n 2 + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027929.P8316116786135042509

namespace A027929

/-- `∑[∑[A000332(n+1)+C(n, 2)+1]-1]+1` -/
def P8316116786135042509.Spec : Prop :=
  ∀ n, P8316116786135042509.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P1923313787307504907

`Δ[A027930(n+4)]-A027928(n+3)`
-/

namespace A027929.P1923313787307504907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027930 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027928 (n + 3)

end

end A027929.P1923313787307504907

namespace A027929

/-- `Δ[A027930(n+4)]-A027928(n+3)` -/
def P1923313787307504907.Spec : Prop :=
  ∀ n, P1923313787307504907.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P16101353925801075521

`A027930(n+5)-(A027930(n+4)+A027928(n+3))`
-/

namespace A027929.P16101353925801075521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027930 (n + 5) - (A027930 (n + 4) + A027928 (n + 3))

end

end A027929.P16101353925801075521

namespace A027929

/-- `A027930(n+5)-(A027930(n+4)+A027928(n+3))` -/
def P16101353925801075521.Spec : Prop :=
  ∀ n, P16101353925801075521.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P13433840552515751885

`A055806(2*n+7)`
-/

namespace A027929.P13433840552515751885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055806 (2 * n + 7)

end

end A027929.P13433840552515751885

namespace A027929

/-- `A055806(2*n+7)` -/
def P13433840552515751885.Spec : Prop :=
  ∀ n, P13433840552515751885.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P9670983885672193332

`∑[A055805(2*n+5)]`
-/

namespace A027929.P9670983885672193332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055805 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027929.P9670983885672193332

namespace A027929

/-- `∑[A055805(2*n+5)]` -/
def P9670983885672193332.Spec : Prop :=
  ∀ n, P9670983885672193332.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P8553932337034329032

`A115567(n+2)-A053436(2*n+1)`
-/

namespace A027929.P8553932337034329032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 (n + 2) - A053436 (2 * n + 1)

end

end A027929.P8553932337034329032

namespace A027929

/-- `A115567(n+2)-A053436(2*n+1)` -/
def P8553932337034329032.Spec : Prop :=
  ∀ n, P8553932337034329032.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P1081802227601559026

`A210215(∑[n+3])`
-/

namespace A027929.P1081802227601559026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027929.P1081802227601559026

namespace A027929

/-- `A210215(∑[n+3])` -/
def P1081802227601559026.Spec : Prop :=
  ∀ n, P1081802227601559026.a n = A027929 (n + 3)

end A027929

/-! ## A027929.P1065470315508916551

`A027935(∑[n+3]+n+3)`
-/

namespace A027929.P1065470315508916551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A027929.P1065470315508916551

namespace A027929

/-- `A027935(∑[n+3]+n+3)` -/
def P1065470315508916551.Spec : Prop :=
  ∀ n, P1065470315508916551.a n = A027929 (n + 3)

end A027929

/-!
# A027930: a(n) = T(n, 2*n-7), T given by A027926.

The programs for A027930, the canonical program `A027930.P2607499071711366274` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027930 has offset 4).

The definition of A027930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027930.P2607499071711366274

`∑[A027929(n+3)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027930

/-- `∑[A027929(n+3)]` -/
def P2607499071711366274.Spec : Prop :=
  ∀ n, P2607499071711366274.a n = A027930 (n + 4)

theorem P2607499071711366274.correct : P2607499071711366274.Spec := by
  intro n
  simp only [A027930, Nat.add_sub_cancel]

end A027930

/-! ## A027930.P5841120078368003344

`Δ[A027931(n+4)]`
-/

namespace A027930.P5841120078368003344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027931 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027930.P5841120078368003344

namespace A027930

/-- `Δ[A027931(n+4)]` -/
def P5841120078368003344.Spec : Prop :=
  ∀ n, P5841120078368003344.a n = A027930 (n + 4)

end A027930

/-! ## A027930.P15051937837758280694

`A027931(n+5)-A027931(n+4)`
-/

namespace A027930.P15051937837758280694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027931 (n + 5) - A027931 (n + 4)

end

end A027930.P15051937837758280694

namespace A027930

/-- `A027931(n+5)-A027931(n+4)` -/
def P15051937837758280694.Spec : Prop :=
  ∀ n, P15051937837758280694.a n = A027930 (n + 4)

end A027930

/-! ## A027930.P4460070665508531367

`∑[A055806(2*n+7)]`
-/

namespace A027930.P4460070665508531367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055806 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027930.P4460070665508531367

namespace A027930

/-- `∑[A055806(2*n+7)]` -/
def P4460070665508531367.Spec : Prop :=
  ∀ n, P4460070665508531367.a n = A027930 (n + 4)

end A027930

/-! ## A027930.P3094243552977743845

`∑[∑[A055805(2*n+5)]]`
-/

namespace A027930.P3094243552977743845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055805 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027930.P3094243552977743845

namespace A027930

/-- `∑[∑[A055805(2*n+5)]]` -/
def P3094243552977743845.Spec : Prop :=
  ∀ n, P3094243552977743845.a n = A027930 (n + 4)

end A027930

/-! ## A027930.P17543579736791789764

`∑[A210215(∑[n+3])]`
-/

namespace A027930.P17543579736791789764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027930.P17543579736791789764

namespace A027930

/-- `∑[A210215(∑[n+3])]` -/
def P17543579736791789764.Spec : Prop :=
  ∀ n, P17543579736791789764.a n = A027930 (n + 4)

end A027930

/-! ## A027930.P9643269783059217244

`∑[∑[A027926((n+3)²-6)]]`
-/

namespace A027930.P9643269783059217244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n + 3) ^ 2 - 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027930.P9643269783059217244

namespace A027930

/-- `∑[∑[A027926((n+3)²-6)]]` -/
def P9643269783059217244.Spec : Prop :=
  ∀ n, P9643269783059217244.a n = A027930 (n + 4)

end A027930

/-! ## A027930.P7955614419387619788

`A055800(A187989(n+2))`
-/

namespace A027930.P7955614419387619788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055800 (A187989 (n + 2)).toNat

end

end A027930.P7955614419387619788

namespace A027930

/-- `A055800(A187989(n+2))` -/
def P7955614419387619788.Spec : Prop :=
  ∀ n, P7955614419387619788.a n = A027930 (n + 4)

end A027930

/-!
# A027931: T(n, 2n-8), T given by A027926.

The programs for A027931, the canonical program `A027931.P1336290053932205075` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027931 has offset 4).

The definition of A027931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027931.P1336290053932205075

`A027930(n+3)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027931

/-- `A027930(n+3)+a(n-1)` -/
def P1336290053932205075.Spec : Prop :=
  ∀ n, P1336290053932205075.a n = A027931 (n + 4)

theorem P1336290053932205075.correct : P1336290053932205075.Spec := by
  intro n
  simp only [A027931, Nat.add_sub_cancel]

end A027931

/-! ## A027931.P1877777319778191666

`∑[A027930(n+4)]+1-A027930(n+4)`
-/

namespace A027931.P1877777319778191666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027930 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027930 (n + 4))

end

end A027931.P1877777319778191666

namespace A027931

/-- `∑[A027930(n+4)]+1-A027930(n+4)` -/
def P1877777319778191666.Spec : Prop :=
  ∀ n, P1877777319778191666.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P9621057430206575545

`Δ[A027932(n+5)]-A027930(n+4)`
-/

namespace A027931.P9621057430206575545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027932 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027930 (n + 4)

end

end A027931.P9621057430206575545

namespace A027931

/-- `Δ[A027932(n+5)]-A027930(n+4)` -/
def P9621057430206575545.Spec : Prop :=
  ∀ n, P9621057430206575545.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P8998470720657869951

`Δ[A027932(n+5)]-∑[A027929(n+3)]`
-/

namespace A027931.P8998470720657869951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027932 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027929 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A027931.P8998470720657869951

namespace A027931

/-- `Δ[A027932(n+5)]-∑[A027929(n+3)]` -/
def P8998470720657869951.Spec : Prop :=
  ∀ n, P8998470720657869951.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P9934441849078561116

`A027932(n+6)-(A027932(n+5)+A027930(n+4))`
-/

namespace A027931.P9934441849078561116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027932 (n + 6) - (A027932 (n + 5) + A027930 (n + 4))

end

end A027931.P9934441849078561116

namespace A027931

/-- `A027932(n+6)-(A027932(n+5)+A027930(n+4))` -/
def P9934441849078561116.Spec : Prop :=
  ∀ n, P9934441849078561116.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P19903597289924369

`∑[A027948(∑[n+4]+1)]`
-/

namespace A027931.P19903597289924369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027931.P19903597289924369

namespace A027931

/-- `∑[A027948(∑[n+4]+1)]` -/
def P19903597289924369.Spec : Prop :=
  ∀ n, P19903597289924369.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P4403560355084524986

`A210215(∑[n+3]+n+3)`
-/

namespace A027931.P4403560355084524986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A027931.P4403560355084524986

namespace A027931

/-- `A210215(∑[n+3]+n+3)` -/
def P4403560355084524986.Spec : Prop :=
  ∀ n, P4403560355084524986.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P8054288416859884627

`A027935(∑[n+5]+5)`
-/

namespace A027931.P8054288416859884627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A027931.P8054288416859884627

namespace A027931

/-- `A027935(∑[n+5]+5)` -/
def P8054288416859884627.Spec : Prop :=
  ∀ n, P8054288416859884627.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P15109512179442870477

`∑[A027926((n+4)²-8)]`
-/

namespace A027931.P15109512179442870477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n + 4) ^ 2 - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027931.P15109512179442870477

namespace A027931

/-- `∑[A027926((n+4)²-8)]` -/
def P15109512179442870477.Spec : Prop :=
  ∀ n, P15109512179442870477.a n = A027931 (n + 4)

end A027931

/-! ## A027931.P17712797397385282516

`A027926((n+5)²-9)`
-/

namespace A027931.P17712797397385282516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n + 5) ^ 2 - 9)

end

end A027931.P17712797397385282516

namespace A027931

/-- `A027926((n+5)²-9)` -/
def P17712797397385282516.Spec : Prop :=
  ∀ n, P17712797397385282516.a n = A027931 (n + 4)

end A027931

/-!
# A027932: T(n, 2n-9), T given by A027926.

The programs for A027932, the canonical program `A027932.P9364518516003833136` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027932 has offset 5).

The definition of A027932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027932.P9364518516003833136

`∑[A027931(n+4)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027932

/-- `∑[A027931(n+4)]` -/
def P9364518516003833136.Spec : Prop :=
  ∀ n, P9364518516003833136.a n = A027932 (n + 5)

theorem P9364518516003833136.correct : P9364518516003833136.Spec := by
  intro n
  simp only [A027932, Nat.add_sub_cancel]

end A027932

/-! ## A027932.P2756952930959493757

`∑[A027930(n+3)+a(n-1)]` with `a(0)=1`
-/

namespace A027932.P2756952930959493757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027930 (n + 3) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027932.P2756952930959493757

namespace A027932

/-- `∑[A027930(n+3)+a(n-1)]` -/
def P2756952930959493757.Spec : Prop :=
  ∀ n, P2756952930959493757.a n = A027932 (n + 5)

end A027932

/-! ## A027932.P14468212080020114892

`A027971(n+5)-2*A027931(n+4)`
-/

namespace A027932.P14468212080020114892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (n + 5) - 2 * A027931 (n + 4)

end

end A027932.P14468212080020114892

namespace A027932

/-- `A027971(n+5)-2*A027931(n+4)` -/
def P14468212080020114892.Spec : Prop :=
  ∀ n, P14468212080020114892.a n = A027932 (n + 5)

end A027932

/-! ## A027932.P10852389110602156871

`Δ[A027933(n+5)]`
-/

namespace A027932.P10852389110602156871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027933 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027932.P10852389110602156871

namespace A027932

/-- `Δ[A027933(n+5)]` -/
def P10852389110602156871.Spec : Prop :=
  ∀ n, P10852389110602156871.a n = A027932 (n + 5)

end A027932

/-! ## A027932.P8171269268322361309

`A027933(n+6)-A027933(n+5)`
-/

namespace A027932.P8171269268322361309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027933 (n + 6) - A027933 (n + 5)

end

end A027932.P8171269268322361309

namespace A027932

/-- `A027933(n+6)-A027933(n+5)` -/
def P8171269268322361309.Spec : Prop :=
  ∀ n, P8171269268322361309.a n = A027932 (n + 5)

end A027932

/-! ## A027932.P2952769356979752975

`A027948((n+4)²-∑[n+1])`
-/

namespace A027932.P2952769356979752975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027948 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027932.P2952769356979752975

namespace A027932

/-- `A027948((n+4)²-∑[n+1])` -/
def P2952769356979752975.Spec : Prop :=
  ∀ n, P2952769356979752975.a n = A027932 (n + 5)

end A027932

/-! ## A027932.P5761811979752449113

`Δ[A027935(Δ[A023551(n+1)])]`
-/

namespace A027932.P5761811979752449113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027932.P5761811979752449113

namespace A027932

/-- `Δ[A027935(Δ[A023551(n+1)])]` -/
def P5761811979752449113.Spec : Prop :=
  ∀ n, P5761811979752449113.a n = A027932 (n + 5)

end A027932

/-!
# A027933: a(n) = T(n, 2*n-10), T given by A027926.

The programs for A027933, the canonical program `A027933.P2138915729023418697` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027933 has offset 5).

The definition of A027933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027933.P2138915729023418697

`A027932(n+4)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027933

/-- `A027932(n+4)+a(n-1)` -/
def P2138915729023418697.Spec : Prop :=
  ∀ n, P2138915729023418697.a n = A027933 (n + 5)

theorem P2138915729023418697.correct : P2138915729023418697.Spec := by
  intro n
  simp only [A027933, Nat.add_sub_cancel]

end A027933

/-! ## A027933.P8567307840901537347

`∑[A027932(round(sqrt(n²+1))+4)]`
-/

namespace A027933.P8567307840901537347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027932 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027933.P8567307840901537347

namespace A027933

/-- `∑[A027932(round(sqrt(n²+1))+4)]` -/
def P8567307840901537347.Spec : Prop :=
  ∀ n, P8567307840901537347.a n = A027933 (n + 5)

end A027933

/-! ## A027933.P9998186669039536554

`∑[A027932(n+5)]+1-A027932(n+5)`
-/

namespace A027933.P9998186669039536554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027932 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027932 (n + 5))

end

end A027933.P9998186669039536554

namespace A027933

/-- `∑[A027932(n+5)]+1-A027932(n+5)` -/
def P9998186669039536554.Spec : Prop :=
  ∀ n, P9998186669039536554.a n = A027933 (n + 5)

end A027933

/-! ## A027933.P2077533732917189343

`record[A027935(A055999(n))]`
-/

namespace A027933.P2077533732917189343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027933.P2077533732917189343

namespace A027933

/-- `record[A027935(A055999(n))]` -/
def P2077533732917189343.Spec : Prop :=
  ∀ n, P2077533732917189343.a n = A027933 (n + 5)

end A027933

/-! ## A027933.P5586586011595696496

`A027935(A055999(n+3))`
-/

namespace A027933.P5586586011595696496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A055999 (n + 3)).toNat

end

end A027933.P5586586011595696496

namespace A027933

/-- `A027935(A055999(n+3))` -/
def P5586586011595696496.Spec : Prop :=
  ∀ n, P5586586011595696496.a n = A027933 (n + 5)

end A027933

/-! ## A027933.P8655732239043924844

`A027935(Δ[A023551(n+1)])`
-/

namespace A027933.P8655732239043924844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (f1 (n + 1) - f1 n).toNat

end

end A027933.P8655732239043924844

namespace A027933

/-- `A027935(Δ[A023551(n+1)])` -/
def P8655732239043924844.Spec : Prop :=
  ∀ n, P8655732239043924844.a n = A027933 (n + 5)

end A027933

/-!
# A027934: a(0)=0, a(1)=1, a(2)=2; for n > 2, a(n) = 3*a(n-1) - a(n-2) - 2*a(n-3).

The programs for A027934, the canonical program `A027934.P16798785412658734534` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027934 has offset 0).

The definition of A027934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-2*a(n-3)` (program `A027934.P16798785412658734534`, by `A027934.P16798785412658734534.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027934.P16469788521893745442

`2^n-A000045(n+1)`
-/

namespace A027934.P16469788521893745442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A000045 (n + 1)

end

end A027934.P16469788521893745442

namespace A027934

/-- `2^n-A000045(n+1)` -/
def P16469788521893745442.Spec : Prop :=
  ∀ n, P16469788521893745442.a n = A027934 n

end A027934

/-! ## A027934.P16495221682065647793

`4*a(n-2)+A000032(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A027934.P16495221682065647793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 2) + A000032 (n - 2)

end

end A027934.P16495221682065647793

namespace A027934

/-- `4*a(n-2)+A000032(n-2)` -/
def P16495221682065647793.Spec : Prop :=
  ∀ n, P16495221682065647793.a n = A027934 n

end A027934

/-! ## A027934.P16798785412658734534

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027934

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P16798785412658734534.Spec : Prop :=
  ∀ n, P16798785412658734534.a n = A027934 n

theorem P16798785412658734534.correct : P16798785412658734534.Spec := by
  intro n
  simp only [A027934]

end A027934

/-! ## A027934.P3636363307615519330

`ogf((x-x^2)/(1-3x+x^2+2x^3))`
-/

namespace A027934.P3636363307615519330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, 1, 2] n

end

end A027934.P3636363307615519330

namespace A027934

/-- `ogf((x-x^2)/(1-3x+x^2+2x^3))` -/
def P3636363307615519330.Spec : Prop :=
  ∀ n, P3636363307615519330.a n = A027934 n

end A027934

/-! ## A027934.P11402266226419247778

`2^n-∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A027934.P11402266226419247778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027934.P11402266226419247778

namespace A027934

/-- `2^n-∑[a(n-1)+a(n-2)]` -/
def P11402266226419247778.Spec : Prop :=
  ∀ n, P11402266226419247778.a n = A027934 n

end A027934

/-! ## A027934.P5029726924938137252

`a(n-1)+a(n-2)+2^(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A027934.P5029726924938137252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A027934.P5029726924938137252

namespace A027934

/-- `a(n-1)+a(n-2)+2^(n-2)` -/
def P5029726924938137252.Spec : Prop :=
  ∀ n, P5029726924938137252.a n = (A027934 n : ℚ)

end A027934

/-! ## A027934.P4159966555951659225

`abs(Δ[A100321(n)])`
-/

namespace A027934.P4159966555951659225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A027934.P4159966555951659225

namespace A027934

/-- `abs(Δ[A100321(n)])` -/
def P4159966555951659225.Spec : Prop :=
  ∀ n, P4159966555951659225.a n = A027934 n

end A027934

/-! ## A027934.P4295545857897508545

`2^n-∑[A212804(n)]`
-/

namespace A027934.P4295545857897508545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027934.P4295545857897508545

namespace A027934

/-- `2^n-∑[A212804(n)]` -/
def P4295545857897508545.Spec : Prop :=
  ∀ n, P4295545857897508545.a n = A027934 n

end A027934

/-! ## A027934.P14259310976075611957

`A152163(n+3)+2^n`
-/

namespace A027934.P14259310976075611957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 3) + (2 ^ n : ℤ)

end

end A027934.P14259310976075611957

namespace A027934

/-- `A152163(n+3)+2^n` -/
def P14259310976075611957.Spec : Prop :=
  ∀ n, P14259310976075611957.a n = A027934 n

end A027934

/-! ## A027934.P8391119833893655055

`2^n-A212804(n+2)`
-/

namespace A027934.P8391119833893655055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A212804 (n + 2)

end

end A027934.P8391119833893655055

namespace A027934

/-- `2^n-A212804(n+2)` -/
def P8391119833893655055.Spec : Prop :=
  ∀ n, P8391119833893655055.a n = A027934 n

end A027934

/-! ## A027934.P5778682326283471460

`2^n-A324969(n+2)`
-/

namespace A027934.P5778682326283471460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A324969 (n + 2)

end

end A027934.P5778682326283471460

namespace A027934

/-- `2^n-A324969(n+2)` -/
def P5778682326283471460.Spec : Prop :=
  ∀ n, P5778682326283471460.a n = A027934 n

end A027934

/-! ## A027934.P16202173724823042245

`2^n-(A001611(n+1)-1)`
-/

namespace A027934.P16202173724823042245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A001611 (n + 1) - 1)

end

end A027934.P16202173724823042245

namespace A027934

/-- `2^n-(A001611(n+1)-1)` -/
def P16202173724823042245.Spec : Prop :=
  ∀ n, P16202173724823042245.a n = A027934 n

end A027934

/-! ## A027934.P16274765973142454735

`Δ[-A000045(n+2)]+2^n`
-/

namespace A027934.P16274765973142454735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ n : ℤ)

end

end A027934.P16274765973142454735

namespace A027934

/-- `Δ[-A000045(n+2)]+2^n` -/
def P16274765973142454735.Spec : Prop :=
  ∀ n, P16274765973142454735.a n = A027934 n

end A027934

/-! ## A027934.P12648606605324508285

`A000045(n-2)+2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A027934.P12648606605324508285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (n - 2) + 2 * a (n - 1)

end

end A027934.P12648606605324508285

namespace A027934

/-- `A000045(n-2)+2*a(n-1)` -/
def P12648606605324508285.Spec : Prop :=
  ∀ n, P12648606605324508285.a n = A027934 n

end A027934

/-! ## A027934.P791814884383421094

`A094687(n)+A001045(n)`
-/

namespace A027934.P791814884383421094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094687 n + A001045 n

end

end A027934.P791814884383421094

namespace A027934

/-- `A094687(n)+A001045(n)` -/
def P791814884383421094.Spec : Prop :=
  ∀ n, P791814884383421094.a n = A027934 n

end A027934

/-! ## A027934.P17388082789501678354

`A006127(n)-A081659(n)`
-/

namespace A027934.P17388082789501678354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A081659 n

end

end A027934.P17388082789501678354

namespace A027934

/-- `A006127(n)-A081659(n)` -/
def P17388082789501678354.Spec : Prop :=
  ∀ n, P17388082789501678354.a n = A027934 n

end A027934

/-! ## A027934.P5497945801030454230

`A088859(n)-A013655(n)`
-/

namespace A027934.P5497945801030454230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088859 n - A013655 n

end

end A027934.P5497945801030454230

namespace A027934

/-- `A088859(n)-A013655(n)` -/
def P5497945801030454230.Spec : Prop :=
  ∀ n, P5497945801030454230.a n = A027934 n

end A027934

/-! ## A027934.P6232904507636992073

`A052531(n)-A052959(n)`
-/

namespace A027934.P6232904507636992073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n - A052959 n

end

end A027934.P6232904507636992073

namespace A027934

/-- `A052531(n)-A052959(n)` -/
def P6232904507636992073.Spec : Prop :=
  ∀ n, P6232904507636992073.a n = A027934 n

end A027934

/-! ## A027934.P10300216334153911098

`A166920(n)-A074331(n)`
-/

namespace A027934.P10300216334153911098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n - A074331 n

end

end A027934.P10300216334153911098

namespace A027934

/-- `A166920(n)-A074331(n)` -/
def P10300216334153911098.Spec : Prop :=
  ∀ n, P10300216334153911098.a n = A027934 n

end A027934

/-! ## A027934.P11610403211001638092

`∑[A011782(n)-A212804(n)]`
-/

namespace A027934.P11610403211001638092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027934.P11610403211001638092

namespace A027934

/-- `∑[A011782(n)-A212804(n)]` -/
def P11610403211001638092.Spec : Prop :=
  ∀ n, P11610403211001638092.a n = A027934 n

end A027934

/-!
# A027935: Triangular array T read by rows: T(n,k)=t(n,2k), t given by A027926; 0 <= k <= n, n >= 0.

The programs for A027935, there is no canonical definition to state claims against.
-/

/-! ## A027935.P11938814846614500201

`A027926(A133280(n))`
-/

namespace A027935.P11938814846614500201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A133280 n).toNat

end

end A027935.P11938814846614500201

/-! ## A027935.P16340137111717910284

`A027926(A001614(n+1)-1)`
-/

namespace A027935.P16340137111717910284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A001614 (n + 1) - 1).toNat

end

end A027935.P16340137111717910284

/-! ## A027935.P2969773869296941176

`A027926(2*n-A003056(n))`
-/

namespace A027935.P2969773869296941176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((2 * n : ℤ) - A003056 n).toNat

end

end A027935.P2969773869296941176

/-! ## A027935.P2988162609251522566

`A027926(n-A003056(n)+n)`
-/

namespace A027935.P2988162609251522566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n : ℤ) - A003056 n + (n : ℤ)).toNat

end

end A027935.P2988162609251522566

/-! ## A027935.P8980572026570638906

`A027926(n-(A003056(n)-n))`
-/

namespace A027935.P8980572026570638906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((n : ℤ) - (A003056 n - (n : ℤ))).toNat

end

end A027935.P8980572026570638906

/-! ## A027935.P6332450038831243571

`A027926(2*n+1-A002024(n+1))`
-/

namespace A027935.P6332450038831243571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 ((2 * n : ℤ) + (1 - A002024 (n + 1))).toNat

end

end A027935.P6332450038831243571

/-! ## A027935.P14178104799954886994

`A055801(A185869(n+1))`
-/

namespace A027935.P14178104799954886994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A185869 (n + 1)).toNat

end

end A027935.P14178104799954886994

/-! ## A027935.P12013763945578955959

`A055801(A185870(n+1)-1)`
-/

namespace A027935.P12013763945578955959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A185870 (n + 1) - 1).toNat

end

end A027935.P12013763945578955959

/-!
# A027936: Distinct value of array T given by A027935.

The programs for A027936, there is no canonical definition to state claims against.
-/

/-! ## A027936.P3710633929748079234

`lt[0, char[A210215(n+1)]]`
-/

namespace A027936.P3710633929748079234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027936.P3710633929748079234

/-! ## A027936.P6632723900331516467

`lt[0, char[A027935(n)]]`
-/

namespace A027936.P6632723900331516467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027936.P6632723900331516467

/-! ## A027936.P13237831902260984141

`eq[1, char[A027935(n+1)]]`
-/

namespace A027936.P13237831902260984141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027936.P13237831902260984141

/-! ## A027936.P18192565603201857511

`A000027(eq[1, char[A027935(n)]])`
-/

namespace A027936.P18192565603201857511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027936.P18192565603201857511

/-! ## A027936.P12015912592444195862

`eq[char[A027935(n)], A054977(n)]`
-/

namespace A027936.P12015912592444195862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A027936.P12015912592444195862

/-!
# A027937: a(n) = T(2*n, n+1), T given by A027935.

The programs for A027937, the canonical program `A027937.P10977973690695847010` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027937 has offset 1).

The definition of A027937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027937.P10977973690695847010

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=26, a(3)=79`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027937

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P10977973690695847010.Spec : Prop :=
  ∀ n, P10977973690695847010.a n = A027937 (n + 1)

theorem P10977973690695847010.correct : P10977973690695847010.Spec := by
  intro n
  simp only [A027937, Nat.add_sub_cancel]

end A027937

/-! ## A027937.P15500410701279928510

`∑[∑[ogf((1+2x-x^2)/(1-3x+x^2))]]`
-/

namespace A027937.P15500410701279928510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -3, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P15500410701279928510

namespace A027937

/-- `∑[∑[ogf((1+2x-x^2)/(1-3x+x^2))]]` -/
def P15500410701279928510.Spec : Prop :=
  ∀ n, P15500410701279928510.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P10038889003887885136

`record[a(n-2)-(a(n-1)+n)]` with `a(0)=1, a(1)=1`
-/

namespace A027937.P10038889003887885136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027937.P10038889003887885136

namespace A027937

/-- `record[a(n-2)-(a(n-1)+n)]` -/
def P10038889003887885136.Spec : Prop :=
  ∀ n, P10038889003887885136.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P1091898052473421287

`record[a(n-2)-a(n-1)-n]` with `a(0)=1, a(1)=1`
-/

namespace A027937.P1091898052473421287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027937.P1091898052473421287

namespace A027937

/-- `record[a(n-2)-a(n-1)-n]` -/
def P1091898052473421287.Spec : Prop :=
  ∀ n, P1091898052473421287.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P824178942879345038

`floor(ϕ*(ϕ*a(n-1)+2*n+1))` with `a(0)=1`
-/

namespace A027937.P824178942879345038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ) + (2 * n + 1 : ℝ))⌋

end

end A027937.P824178942879345038

namespace A027937

/-- `floor(ϕ*(ϕ*a(n-1)+2*n+1))` -/
def P824178942879345038.Spec : Prop :=
  ∀ n, P824178942879345038.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P9030529650160792684

`A001924(Δ[n²])`
-/

namespace A027937.P9030529650160792684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027937.P9030529650160792684

namespace A027937

/-- `A001924(Δ[n²])` -/
def P9030529650160792684.Spec : Prop :=
  ∀ n, P9030529650160792684.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P3972953926731381998

`∑[A249450(n+2)]`
-/

namespace A027937.P3972953926731381998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P3972953926731381998

namespace A027937

/-- `∑[A249450(n+2)]` -/
def P3972953926731381998.Spec : Prop :=
  ∀ n, P3972953926731381998.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P2950292221389309008

`∑[A355019(4*n)]`
-/

namespace A027937.P2950292221389309008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355019 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P2950292221389309008

namespace A027937

/-- `∑[A355019(4*n)]` -/
def P2950292221389309008.Spec : Prop :=
  ∀ n, P2950292221389309008.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P2941464200977435816

`record[A094967(n)-n]`
-/

namespace A027937.P2941464200977435816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027937.P2941464200977435816

namespace A027937

/-- `record[A094967(n)-n]` -/
def P2941464200977435816.Spec : Prop :=
  ∀ n, P2941464200977435816.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P14092085749889540948

`record[A097131(n)-n]`
-/

namespace A027937.P14092085749889540948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027937.P14092085749889540948

namespace A027937

/-- `record[A097131(n)-n]` -/
def P14092085749889540948.Spec : Prop :=
  ∀ n, P14092085749889540948.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P1442550890060621082

`record[A108362(n)-n]`
-/

namespace A027937.P1442550890060621082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027937.P1442550890060621082

namespace A027937

/-- `record[A108362(n)-n]` -/
def P1442550890060621082.Spec : Prop :=
  ∀ n, P1442550890060621082.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P5737177652992945563

`∑[A001911(Δ[n²])]`
-/

namespace A027937.P5737177652992945563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P5737177652992945563

namespace A027937

/-- `∑[A001911(Δ[n²])]` -/
def P5737177652992945563.Spec : Prop :=
  ∀ n, P5737177652992945563.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P1977134063972042520

`Δ[A344004(Δ[n²])]`
-/

namespace A027937.P1977134063972042520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344004 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027937.P1977134063972042520

namespace A027937

/-- `Δ[A344004(Δ[n²])]` -/
def P1977134063972042520.Spec : Prop :=
  ∀ n, P1977134063972042520.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P1348407456613021443

`∑[∑[A048575(n)]-1]`
-/

namespace A027937.P1348407456613021443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P1348407456613021443

namespace A027937

/-- `∑[∑[A048575(n)]-1]` -/
def P1348407456613021443.Spec : Prop :=
  ∀ n, P1348407456613021443.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P11190599135941600388

`∑[A035508(n+1)-1]`
-/

namespace A027937.P11190599135941600388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P11190599135941600388

namespace A027937

/-- `∑[A035508(n+1)-1]` -/
def P11190599135941600388.Spec : Prop :=
  ∀ n, P11190599135941600388.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P11077907505668198681

`∑[A020701(2*n)-2]`
-/

namespace A027937.P11077907505668198681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P11077907505668198681

namespace A027937

/-- `∑[A020701(2*n)-2]` -/
def P11077907505668198681.Spec : Prop :=
  ∀ n, P11077907505668198681.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P2673044438959511268

`A038737(n+2)+∑[n]`
-/

namespace A027937.P2673044438959511268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038737 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027937.P2673044438959511268

namespace A027937

/-- `A038737(n+2)+∑[n]` -/
def P2673044438959511268.Spec : Prop :=
  ∀ n, P2673044438959511268.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P7469867286182048976

`∑[A099571(2*n)+n]`
-/

namespace A027937.P7469867286182048976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027937.P7469867286182048976

namespace A027937

/-- `∑[A099571(2*n)+n]` -/
def P7469867286182048976.Spec : Prop :=
  ∀ n, P7469867286182048976.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P12154263791846033795

`A099572(2*n)+∑[n]`
-/

namespace A027937.P12154263791846033795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099572 (2 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027937.P12154263791846033795

namespace A027937

/-- `A099572(2*n)+∑[n]` -/
def P12154263791846033795.Spec : Prop :=
  ∀ n, P12154263791846033795.a n = A027937 (n + 1)

end A027937

/-! ## A027937.P4819141920659162295

`record[A152192(n+1)-n]`
-/

namespace A027937.P4819141920659162295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152192 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027937.P4819141920659162295

namespace A027937

/-- `record[A152192(n+1)-n]` -/
def P4819141920659162295.Spec : Prop :=
  ∀ n, P4819141920659162295.a n = A027937 (n + 1)

end A027937

/-!
# A027938: a(n) = T(2n, n+2), T given by A027935.

The programs for A027938, the canonical program `A027938.P2157139328720794464` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027938 has offset 2).

The definition of A027938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027938.P2157139328720794464

`A014166(Δ[n²])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027938

/-- `A014166(Δ[n²])` -/
def P2157139328720794464.Spec : Prop :=
  ∀ n, P2157139328720794464.a n = A027938 (n + 2)

theorem P2157139328720794464.correct : P2157139328720794464.Spec := by
  intro n
  simp only [A027938, Nat.add_sub_cancel]

end A027938

/-! ## A027938.P12225925737255456348

`∑[A053808(2*n)]`
-/

namespace A027938.P12225925737255456348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027938.P12225925737255456348

namespace A027938

/-- `∑[A053808(2*n)]` -/
def P12225925737255456348.Spec : Prop :=
  ∀ n, P12225925737255456348.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P3039803803307734560

`∑[A163250(2*(n+1))]`
-/

namespace A027938.P3039803803307734560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027938.P3039803803307734560

namespace A027938

/-- `∑[A163250(2*(n+1))]` -/
def P3039803803307734560.Spec : Prop :=
  ∀ n, P3039803803307734560.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P8294470278658537135

`∑[∑[A023652(2*n+1)]]`
-/

namespace A027938.P8294470278658537135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023652 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027938.P8294470278658537135

namespace A027938

/-- `∑[∑[A023652(2*n+1)]]` -/
def P8294470278658537135.Spec : Prop :=
  ∀ n, P8294470278658537135.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P18104671406918158703

`A053808(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A027938.P18104671406918158703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053808 (n + n) + a (n - 1)

end

end A027938.P18104671406918158703

namespace A027938

/-- `A053808(n+n)+a(n-1)` -/
def P18104671406918158703.Spec : Prop :=
  ∀ n, P18104671406918158703.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P7293609204301038421

`A027954(n+2)-A027949(n+2)`
-/

namespace A027938.P7293609204301038421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027954 (n + 2) - A027949 (n + 2)

end

end A027938.P7293609204301038421

namespace A027938

/-- `A027954(n+2)-A027949(n+2)` -/
def P7293609204301038421.Spec : Prop :=
  ∀ n, P7293609204301038421.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P9239619045309794718

`A053809(2*n)-A014166(2*n)`
-/

namespace A027938.P9239619045309794718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 (2 * n) - A014166 (2 * n)

end

end A027938.P9239619045309794718

namespace A027938

/-- `A053809(2*n)-A014166(2*n)` -/
def P9239619045309794718.Spec : Prop :=
  ∀ n, P9239619045309794718.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P9157149325558071267

`A014166(2*n)+A014162(2*n+1)`
-/

namespace A027938.P9157149325558071267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 * n) + A014162 (2 * n + 1)

end

end A027938.P9157149325558071267

namespace A027938

/-- `A014166(2*n)+A014162(2*n+1)` -/
def P9157149325558071267.Spec : Prop :=
  ∀ n, P9157149325558071267.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P10269410267686822128

`A213586(2*n+1)-A000292(2*n)`
-/

namespace A027938.P10269410267686822128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213586 (2 * n + 1) - A000292 (2 * n)

end

end A027938.P10269410267686822128

namespace A027938

/-- `A213586(2*n+1)-A000292(2*n)` -/
def P10269410267686822128.Spec : Prop :=
  ∀ n, P10269410267686822128.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P7381098080347850993

`∑[A014162(2*n+1)+A014162(2*n)]`
-/

namespace A027938.P7381098080347850993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n + 1) + A014162 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027938.P7381098080347850993

namespace A027938

/-- `∑[A014162(2*n+1)+A014162(2*n)]` -/
def P7381098080347850993.Spec : Prop :=
  ∀ n, P7381098080347850993.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P898196148057427193

`∑[∑[A001891(2*n+1)+A001891(2*n)]]`
-/

namespace A027938.P898196148057427193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (2 * n + 1) + A001891 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027938.P898196148057427193

namespace A027938

/-- `∑[∑[A001891(2*n+1)+A001891(2*n)]]` -/
def P898196148057427193.Spec : Prop :=
  ∀ n, P898196148057427193.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P5526046581195245253

`∑[∑[A192749(2*n+1)-A000071(2*(n+1))]]`
-/

namespace A027938.P5526046581195245253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 (2 * n + 1) - A000071 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027938.P5526046581195245253

namespace A027938

/-- `∑[∑[A192749(2*n+1)-A000071(2*(n+1))]]` -/
def P5526046581195245253.Spec : Prop :=
  ∀ n, P5526046581195245253.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P12690834968076055313

`A014166(2*n+3)-A053808(2*(n+1))`
-/

namespace A027938.P12690834968076055313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 * n + 3) - A053808 (2 * (n + 1))

end

end A027938.P12690834968076055313

namespace A027938

/-- `A014166(2*n+3)-A053808(2*(n+1))` -/
def P12690834968076055313.Spec : Prop :=
  ∀ n, P12690834968076055313.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P18130912068802141559

`A027964(2*n+5)-A053809(2*n+1)`
-/

namespace A027938.P18130912068802141559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (2 * n + 5) - A053809 (2 * n + 1)

end

end A027938.P18130912068802141559

namespace A027938

/-- `A027964(2*n+5)-A053809(2*n+1)` -/
def P18130912068802141559.Spec : Prop :=
  ∀ n, P18130912068802141559.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P18089878512309627272

`2*A014166(2*n+1)-A014166(2*n+1)`
-/

namespace A027938.P18089878512309627272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014166 (2 * n + 1) - A014166 (2 * n + 1)

end

end A027938.P18089878512309627272

namespace A027938

/-- `2*A014166(2*n+1)-A014166(2*n+1)` -/
def P18089878512309627272.Spec : Prop :=
  ∀ n, P18089878512309627272.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P3552519187119961318

`A053809(2*n+1)+A053739(2*n)-A053739(2*n+1)`
-/

namespace A027938.P3552519187119961318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 (2 * n + 1) + (A053739 (2 * n) - A053739 (2 * n + 1))

end

end A027938.P3552519187119961318

namespace A027938

/-- `A053809(2*n+1)+A053739(2*n)-A053739(2*n+1)` -/
def P3552519187119961318.Spec : Prop :=
  ∀ n, P3552519187119961318.a n = A027938 (n + 2)

end A027938

/-! ## A027938.P12056095024705847678

`gcd(A008574(n+1)*A014166(2*n+1), A014166(2*n+1))`
-/

namespace A027938.P12056095024705847678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 (n + 1) * A014166 (2 * n + 1)) (A014166 (2 * n + 1))

end

end A027938.P12056095024705847678

namespace A027938

/-- `gcd(A008574(n+1)*A014166(2*n+1), A014166(2*n+1))` -/
def P12056095024705847678.Spec : Prop :=
  ∀ n, (P12056095024705847678.a n : ℤ) = A027938 (n + 2)

end A027938

/-! ## A027938.P9169544809975573288

`A014166(2*n+1)²/A014166(A004273(n+1))`
-/

namespace A027938.P9169544809975573288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014166 (2 * n + 1) ^ 2 : ℚ) / (A014166 (A004273 (n + 1)).toNat : ℚ)

end

end A027938.P9169544809975573288

namespace A027938

/-- `A014166(2*n+1)²/A014166(A004273(n+1))` -/
def P9169544809975573288.Spec : Prop :=
  ∀ n, P9169544809975573288.a n = (A027938 (n + 2) : ℚ)

end A027938

/-!
# A027939: a(n) = T(2*n, n+3), T given by A027935.

The programs for A027939, the canonical program `A027939.P11937322755474473543` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027939 has offset 3).

The definition of A027939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027939.P11937322755474473543

`A053295(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027939

/-- `A053295(2*n)` -/
def P11937322755474473543.Spec : Prop :=
  ∀ n, P11937322755474473543.a n = A027939 (n + 3)

theorem P11937322755474473543.correct : P11937322755474473543.Spec := by
  intro n
  simp only [A027939, Nat.add_sub_cancel]

end A027939

/-! ## A027939.P16062065625914469183

`∑[A054469(2*n)]`
-/

namespace A027939.P16062065625914469183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054469 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027939.P16062065625914469183

namespace A027939

/-- `∑[A054469(2*n)]` -/
def P16062065625914469183.Spec : Prop :=
  ∀ n, P16062065625914469183.a n = A027939 (n + 3)

end A027939

/-! ## A027939.P16592995064449857989

`A054469(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A027939.P16592995064449857989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054469 (n + n) + a (n - 1)

end

end A027939.P16592995064449857989

namespace A027939

/-- `A054469(n+n)+a(n-1)` -/
def P16592995064449857989.Spec : Prop :=
  ∀ n, P16592995064449857989.a n = A027939 (n + 3)

end A027939

/-! ## A027939.P7639940254657736500

`record[A053295(A014681(n))]`
-/

namespace A027939.P7639940254657736500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027939.P7639940254657736500

namespace A027939

/-- `record[A053295(A014681(n))]` -/
def P7639940254657736500.Spec : Prop :=
  ∀ n, P7639940254657736500.a n = A027939 (n + 3)

end A027939

/-! ## A027939.P14700798206691739543

`record[gcd(A007814(n+1), A053295(n))]`
-/

namespace A027939.P14700798206691739543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A053295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027939.P14700798206691739543

namespace A027939

/-- `record[gcd(A007814(n+1), A053295(n))]` -/
def P14700798206691739543.Spec : Prop :=
  ∀ n, (P14700798206691739543.a n : ℤ) = A027939 (n + 3)

end A027939

/-! ## A027939.P10455411865882399065

`A027955(n+3)-A027950(n+3)`
-/

namespace A027939.P10455411865882399065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027955 (n + 3) - A027950 (n + 3)

end

end A027939.P10455411865882399065

namespace A027939

/-- `A027955(n+3)-A027950(n+3)` -/
def P10455411865882399065.Spec : Prop :=
  ∀ n, P10455411865882399065.a n = A027939 (n + 3)

end A027939

/-! ## A027939.P16292550118650639003

`record[A053295(A002264(A001281(n)))]`
-/

namespace A027939.P16292550118650639003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A002264 (A001281 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027939.P16292550118650639003

namespace A027939

/-- `record[A053295(A002264(A001281(n)))]` -/
def P16292550118650639003.Spec : Prop :=
  ∀ n, P16292550118650639003.a n = A027939 (n + 3)

end A027939

/-! ## A027939.P12308040232584916502

`record[A053295(A257684(A008458(n)))]`
-/

namespace A027939.P12308040232584916502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A257684 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027939.P12308040232584916502

namespace A027939

/-- `record[A053295(A257684(A008458(n)))]` -/
def P12308040232584916502.Spec : Prop :=
  ∀ n, P12308040232584916502.a n = A027939 (n + 3)

end A027939

/-! ## A027939.P3020814513375943401

`A053296(2*n+1)-(A053739(2*n+1)+A053296(2*n))`
-/

namespace A027939.P3020814513375943401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (2 * n + 1) - (A053739 (2 * n + 1) + A053296 (2 * n))

end

end A027939.P3020814513375943401

namespace A027939

/-- `A053296(2*n+1)-(A053739(2*n+1)+A053296(2*n))` -/
def P3020814513375943401.Spec : Prop :=
  ∀ n, P3020814513375943401.a n = A027939 (n + 3)

end A027939

/-!
# A027940: a(n) = T(2*n, n+4), T given by A027935.

The programs for A027940, the canonical program `A027940.P14742331233262133392` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027940 has offset 4).

The definition of A027940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027940.P14742331233262133392

`A053308(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027940

/-- `A053308(2*n)` -/
def P14742331233262133392.Spec : Prop :=
  ∀ n, P14742331233262133392.a n = A027940 (n + 4)

theorem P14742331233262133392.correct : P14742331233262133392.Spec := by
  intro n
  simp only [A027940, Nat.add_sub_cancel]

end A027940

/-! ## A027940.P8355068021340787543

`record[A053308(A006257(n+1)-1)]`
-/

namespace A027940.P8355068021340787543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A006257 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027940.P8355068021340787543

namespace A027940

/-- `record[A053308(A006257(n+1)-1)]` -/
def P8355068021340787543.Spec : Prop :=
  ∀ n, P8355068021340787543.a n = A027940 (n + 4)

end A027940

/-! ## A027940.P17291042351398091351

`record[A053308((A167614(n+1)-5)%(n+1))]`
-/

namespace A027940.P17291042351398091351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (Int.tmod (A167614 (n + 1) - 5) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027940.P17291042351398091351

namespace A027940

/-- `record[A053308((A167614(n+1)-5)%(n+1))]` -/
def P17291042351398091351.Spec : Prop :=
  ∀ n, P17291042351398091351.a n = A027940 (n + 4)

end A027940

/-! ## A027940.P13332286307253059952

`record[A053308(A052928(A028242(n)))]`
-/

namespace A027940.P13332286307253059952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A052928 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027940.P13332286307253059952

namespace A027940

/-- `record[A053308(A052928(A028242(n)))]` -/
def P13332286307253059952.Spec : Prop :=
  ∀ n, P13332286307253059952.a n = A027940 (n + 4)

end A027940

/-! ## A027940.P17541975144424231585

`record[A053308(A052928(A000265(n+1)))]`
-/

namespace A027940.P17541975144424231585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A052928 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027940.P17541975144424231585

namespace A027940

/-- `record[A053308(A052928(A000265(n+1)))]` -/
def P17541975144424231585.Spec : Prop :=
  ∀ n, P17541975144424231585.a n = A027940 (n + 4)

end A027940

/-! ## A027940.P2753530996101012552

`A053309(2*n+1)-(A053309(2*n)+A053296(2*n+1))`
-/

namespace A027940.P2753530996101012552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (2 * n + 1) - (A053309 (2 * n) + A053296 (2 * n + 1))

end

end A027940.P2753530996101012552

namespace A027940

/-- `A053309(2*n+1)-(A053309(2*n)+A053296(2*n+1))` -/
def P2753530996101012552.Spec : Prop :=
  ∀ n, P2753530996101012552.a n = A027940 (n + 4)

end A027940

/-! ## A027940.P2166946101535157591

`A136431(∑[n])+A053308(n+n)`
-/

namespace A027940.P2166946101535157591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (∑ j ∈ Finset.range (n + 1), f1 j) + A053308 (n + n)

end

end A027940.P2166946101535157591

namespace A027940

/-- `A136431(∑[n])+A053308(n+n)` -/
def P2166946101535157591.Spec : Prop :=
  ∀ n, P2166946101535157591.a n = A027940 (n + 4)

end A027940

/-! ## A027940.P2410479634725651942

`record[A053308(A052928(n))²/A053308(n)]`
-/

namespace A027940.P2410479634725651942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053308 (A052928 n).toNat ^ 2 : ℚ) / (A053308 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027940.P2410479634725651942

namespace A027940

/-- `record[A053308(A052928(n))²/A053308(n)]` -/
def P2410479634725651942.Spec : Prop :=
  ∀ n, P2410479634725651942.a n = (A027940 (n + 4) : ℚ)

end A027940

/-!
# A027941: a(n) = Fibonacci(2*n + 1) - 1.

The programs for A027941, the canonical program `A027941.P9120053372006935795` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027941 has offset 0).

The definition of A027941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027941.P9120053372006935795

`3*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027941

/-- `3*a(n-1)-a(n-2)+1` -/
def P9120053372006935795.Spec : Prop :=
  ∀ n, P9120053372006935795.a n = A027941 n

theorem P9120053372006935795.correct : P9120053372006935795.Spec := by
  intro n
  simp only [A027941]

end A027941

/-! ## A027941.P16359508122132131211

`∑[ogf(x/(1-3x+x^2))]`
-/

namespace A027941.P16359508122132131211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027941.P16359508122132131211

namespace A027941

/-- `∑[ogf(x/(1-3x+x^2))]` -/
def P16359508122132131211.Spec : Prop :=
  ∀ n, P16359508122132131211.a n = A027941 n

end A027941

/-! ## A027941.P12012946435202783557

`ogf(x/(1-4x+4x^2-x^3))`
-/

namespace A027941.P12012946435202783557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 4, -1] n

end

end A027941.P12012946435202783557

namespace A027941

/-- `ogf(x/(1-4x+4x^2-x^3))` -/
def P12012946435202783557.Spec : Prop :=
  ∀ n, P12012946435202783557.a n = A027941 n

end A027941

/-! ## A027941.P7397039597606048216

`ceil(ϕ²*a(n-1))+1` with `a(0)=0`
-/

namespace A027941.P7397039597606048216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉ + 1

end

end A027941.P7397039597606048216

namespace A027941

/-- `ceil(ϕ²*a(n-1))+1` -/
def P7397039597606048216.Spec : Prop :=
  ∀ n, P7397039597606048216.a n = A027941 n

end A027941

/-! ## A027941.P1150797689044268556

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A027941.P1150797689044268556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027941.P1150797689044268556

namespace A027941

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P1150797689044268556.Spec : Prop :=
  ∀ n, P1150797689044268556.a n = A027941 n

end A027941

/-! ## A027941.P3790061509746155736

`1-floor(a(n-1)/(ϕ-2))` with `a(0)=0`
-/

namespace A027941.P3790061509746155736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 2)⌋

end

end A027941.P3790061509746155736

namespace A027941

/-- `1-floor(a(n-1)/(ϕ-2))` -/
def P3790061509746155736.Spec : Prop :=
  ∀ n, P3790061509746155736.a n = A027941 n

end A027941

/-! ## A027941.P12613515506326837337

`floor(ϕ²*a(n-1))+2` with `a(0)=0, a(1)=1`
-/

namespace A027941.P12613515506326837337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ + 2

end

end A027941.P12613515506326837337

namespace A027941

/-- `floor(ϕ²*a(n-1))+2` -/
def P12613515506326837337.Spec : Prop :=
  ∀ n, P12613515506326837337.a n = A027941 n

end A027941

/-! ## A027941.P13354476267447002157

`∑[3*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A027941.P13354476267447002157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027941.P13354476267447002157

namespace A027941

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P13354476267447002157.Spec : Prop :=
  ∀ n, P13354476267447002157.a n = A027941 n

end A027941

/-! ## A027941.P12618530134324011173

`record[a(n-2)-(a(n-1)+1)]` with `a(0)=0, a(1)=0`
-/

namespace A027941.P12618530134324011173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027941.P12618530134324011173

namespace A027941

/-- `record[a(n-2)-(a(n-1)+1)]` -/
def P12618530134324011173.Spec : Prop :=
  ∀ n, P12618530134324011173.a n = A027941 n

end A027941

/-! ## A027941.P14858466102294069610

`record[a(n-2)-1-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A027941.P14858466102294069610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027941.P14858466102294069610

namespace A027941

/-- `record[a(n-2)-1-a(n-1)]` -/
def P14858466102294069610.Spec : Prop :=
  ∀ n, P14858466102294069610.a n = A027941 n

end A027941

/-! ## A027941.P9917440433177943975

`1-(a(n-2)-3*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A027941.P9917440433177943975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 2) - 3 * a (n - 1))

end

end A027941.P9917440433177943975

namespace A027941

/-- `1-(a(n-2)-3*a(n-1))` -/
def P9917440433177943975.Spec : Prop :=
  ∀ n, P9917440433177943975.a n = A027941 n

end A027941

/-! ## A027941.P6654605650669160700

`∑[a(n-1)+a(n-1)+a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A027941.P6654605650669160700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027941.P6654605650669160700

namespace A027941

/-- `∑[a(n-1)+a(n-1)+a(n-1)-a(n-2)]` -/
def P6654605650669160700.Spec : Prop :=
  ∀ n, P6654605650669160700.a n = A027941 n

end A027941

/-! ## A027941.P1605869380210299821

`∑[a(n-1)-(a(n-2)-a(n-1)-a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A027941.P1605869380210299821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027941.P1605869380210299821

namespace A027941

/-- `∑[a(n-1)-(a(n-2)-a(n-1)-a(n-1))]` -/
def P1605869380210299821.Spec : Prop :=
  ∀ n, P1605869380210299821.a n = A027941 n

end A027941

/-! ## A027941.P1174074764647336545

`a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A027941.P1174074764647336545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A027941.P1174074764647336545

namespace A027941

/-- `a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` -/
def P1174074764647336545.Spec : Prop :=
  ∀ n, P1174074764647336545.a n = A027941 n

theorem P1174074764647336545.correct : P1174074764647336545.Spec := by
  intro n
  simp only [A027941, Nat.add_sub_cancel, A027941.P1174074764647336545.a, A027941.P9120053372006935795.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027941

/-! ## A027941.P13091336223968703306

`1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A027941.P13091336223968703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A027941.P13091336223968703306

namespace A027941

/-- `1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P13091336223968703306.Spec : Prop :=
  ∀ n, P13091336223968703306.a n = A027941 n

end A027941

/-! ## A027941.P9617664213656276227

`∑[A001906(n)]`
-/

namespace A027941.P9617664213656276227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027941.P9617664213656276227

namespace A027941

/-- `∑[A001906(n)]` -/
def P9617664213656276227.Spec : Prop :=
  ∀ n, P9617664213656276227.a n = A027941 n

end A027941

/-! ## A027941.P10792204790820823886

`Δ[A054452(n)]`
-/

namespace A027941.P10792204790820823886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027941.P10792204790820823886

namespace A027941

/-- `Δ[A054452(n)]` -/
def P10792204790820823886.Spec : Prop :=
  ∀ n, P10792204790820823886.a n = A027941 n

end A027941

/-! ## A027941.P8059173737620432803

`record[A119282(n)]`
-/

namespace A027941.P8059173737620432803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027941.P8059173737620432803

namespace A027941

/-- `record[A119282(n)]` -/
def P8059173737620432803.Spec : Prop :=
  ∀ n, P8059173737620432803.a n = A027941 n

end A027941

/-! ## A027941.P11819584812107850138

`A122367(n)-1`
-/

namespace A027941.P11819584812107850138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - 1

end

end A027941.P11819584812107850138

namespace A027941

/-- `A122367(n)-1` -/
def P11819584812107850138.Spec : Prop :=
  ∀ n, P11819584812107850138.a n = A027941 n

end A027941

/-! ## A027941.P4438660283269122812

`A293064(n+2)`
-/

namespace A027941.P4438660283269122812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 2)

end

end A027941.P4438660283269122812

namespace A027941

/-- `A293064(n+2)` -/
def P4438660283269122812.Spec : Prop :=
  ∀ n, P4438660283269122812.a n = A027941 n

end A027941

/-!
# A027942: a(n) = T(2n+1, n+2), T given by A027935.

The programs for A027942, the canonical program `A027942.P7178593209293820108` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027942 has offset 1).

The definition of A027942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027942.P7178593209293820108

`A014162(Δ[n²])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027942

/-- `A014162(Δ[n²])` -/
def P7178593209293820108.Spec : Prop :=
  ∀ n, P7178593209293820108.a n = A027942 (n + 1)

theorem P7178593209293820108.correct : P7178593209293820108.Spec := by
  intro n
  simp only [A027942, Nat.add_sub_cancel]

end A027942

/-! ## A027942.P3655321244499278534

`∑[A001891(Δ[n²])]`
-/

namespace A027942.P3655321244499278534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P3655321244499278534

namespace A027942

/-- `∑[A001891(Δ[n²])]` -/
def P3655321244499278534.Spec : Prop :=
  ∀ n, P3655321244499278534.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P15189420505833294066

`∑[∑[A238374(4*n)]]`
-/

namespace A027942.P15189420505833294066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P15189420505833294066

namespace A027942

/-- `∑[∑[A238374(4*n)]]` -/
def P15189420505833294066.Spec : Prop :=
  ∀ n, P15189420505833294066.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P13982647904874393756

`A116717(2*(n+1))-1`
-/

namespace A027942.P13982647904874393756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (2 * (n + 1)) - 1

end

end A027942.P13982647904874393756

namespace A027942

/-- `A116717(2*(n+1))-1` -/
def P13982647904874393756.Spec : Prop :=
  ∀ n, P13982647904874393756.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P17573940352434339178

`∑[∑[A020712(2*n)-4]]`
-/

namespace A027942.P17573940352434339178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (2 * n) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P17573940352434339178

namespace A027942

/-- `∑[∑[A020712(2*n)-4]]` -/
def P17573940352434339178.Spec : Prop :=
  ∀ n, P17573940352434339178.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P6300160696850231866

`∑[∑[A157728(2*n+5)]]`
-/

namespace A027942.P6300160696850231866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P6300160696850231866

namespace A027942

/-- `∑[∑[A157728(2*n+5)]]` -/
def P6300160696850231866.Spec : Prop :=
  ∀ n, P6300160696850231866.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P2241278010696610156

`∑[∑[A167616(2*n+5)+1]]`
-/

namespace A027942.P2241278010696610156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (2 * n + 5) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P2241278010696610156

namespace A027942

/-- `∑[∑[A167616(2*n+5)+1]]` -/
def P2241278010696610156.Spec : Prop :=
  ∀ n, P2241278010696610156.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P6039641491309928624

`∑[∑[A006327(2*n+5)-1]]`
-/

namespace A027942.P6039641491309928624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (2 * n + 5) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P6039641491309928624

namespace A027942

/-- `∑[∑[A006327(2*n+5)-1]]` -/
def P6039641491309928624.Spec : Prop :=
  ∀ n, P6039641491309928624.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P15810636263686292219

`∑[∑[A000045(2*n+5)-4]]`
-/

namespace A027942.P15810636263686292219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 5) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P15810636263686292219

namespace A027942

/-- `∑[∑[A000045(2*n+5)-4]]` -/
def P15810636263686292219.Spec : Prop :=
  ∀ n, P15810636263686292219.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P11177525107970838371

`record[A014162(A026741(n+1))]`
-/

namespace A027942.P11177525107970838371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027942.P11177525107970838371

namespace A027942

/-- `record[A014162(A026741(n+1))]` -/
def P11177525107970838371.Spec : Prop :=
  ∀ n, P11177525107970838371.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P181722675736576812

`A027949(n+2)-A027953(n+1)`
-/

namespace A027942.P181722675736576812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027949 (n + 2) - A027953 (n + 1)

end

end A027942.P181722675736576812

namespace A027942

/-- `A027949(n+2)-A027953(n+1)` -/
def P181722675736576812.Spec : Prop :=
  ∀ n, P181722675736576812.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P3485054643642427006

`A053808(2*n)-A014162(2*n)`
-/

namespace A027942.P3485054643642427006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 (2 * n) - A014162 (2 * n)

end

end A027942.P3485054643642427006

namespace A027942

/-- `A053808(2*n)-A014162(2*n)` -/
def P3485054643642427006.Spec : Prop :=
  ∀ n, P3485054643642427006.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P1856288747928136846

`A014162(2*n)+A001924(2*n+1)`
-/

namespace A027942.P1856288747928136846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n) + A001924 (2 * n + 1)

end

end A027942.P1856288747928136846

namespace A027942

/-- `A014162(2*n)+A001924(2*n+1)` -/
def P1856288747928136846.Spec : Prop :=
  ∀ n, P1856288747928136846.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P8268649347788861109

`A193044(2*n)+A192956(2*n+1)`
-/

namespace A027942.P8268649347788861109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 (2 * n) + A192956 (2 * n + 1)

end

end A027942.P8268649347788861109

namespace A027942

/-- `A193044(2*n)+A192956(2*n+1)` -/
def P8268649347788861109.Spec : Prop :=
  ∀ n, P8268649347788861109.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P7271557455902009606

`A033937(2*n)-A000217(2*n+1)`
-/

namespace A027942.P7271557455902009606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 (2 * n) - A000217 (2 * n + 1)

end

end A027942.P7271557455902009606

namespace A027942

/-- `A033937(2*n)-A000217(2*n+1)` -/
def P7271557455902009606.Spec : Prop :=
  ∀ n, P7271557455902009606.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P11943941460264806505

`∑[A001924(2*n+1)+A001924(2*n)]`
-/

namespace A027942.P11943941460264806505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (2 * n + 1) + A001924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P11943941460264806505

namespace A027942

/-- `∑[A001924(2*n+1)+A001924(2*n)]` -/
def P11943941460264806505.Spec : Prop :=
  ∀ n, P11943941460264806505.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P12587374481134174181

`A344004(2*(n+1))+A344004(2*n+3)`
-/

namespace A027942.P12587374481134174181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344004 (2 * (n + 1)) + A344004 (2 * n + 3)

end

end A027942.P12587374481134174181

namespace A027942

/-- `A344004(2*(n+1))+A344004(2*n+3)` -/
def P12587374481134174181.Spec : Prop :=
  ∀ n, P12587374481134174181.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P3721195015831571299

`A000126(2*(n+2))-A000124(2*n+3)`
-/

namespace A027942.P3721195015831571299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (2 * (n + 2)) - A000124 (2 * n + 3)

end

end A027942.P3721195015831571299

namespace A027942

/-- `A000126(2*(n+2))-A000124(2*n+3)` -/
def P3721195015831571299.Spec : Prop :=
  ∀ n, P3721195015831571299.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P11353622290846920969

`A014162(2*n+1)*A105812(2*n+3)`
-/

namespace A027942.P11353622290846920969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n + 1) * A105812 (2 * n + 3)

end

end A027942.P11353622290846920969

namespace A027942

/-- `A014162(2*n+1)*A105812(2*n+3)` -/
def P11353622290846920969.Spec : Prop :=
  ∀ n, P11353622290846920969.a n = A027942 (n + 1)

end A027942

/-! ## A027942.P5868118472446289754

`∑[A192979(2*n+1)+∑[A000045(2*n)]]`
-/

namespace A027942.P5868118472446289754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027942.P5868118472446289754

namespace A027942

/-- `∑[A192979(2*n+1)+∑[A000045(2*n)]]` -/
def P5868118472446289754.Spec : Prop :=
  ∀ n, P5868118472446289754.a n = A027942 (n + 1)

end A027942

/-!
# A027943: a(n) = T(2*n+1, n+3), T given by A027935.

The programs for A027943, the canonical program `A027943.P2641762158736206185` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027943 has offset 2).

The definition of A027943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027943.P9509559934875000332

`A053739(2*n)`
-/

namespace A027943.P9509559934875000332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (2 * n)

end

end A027943.P9509559934875000332

namespace A027943

/-- `A053739(2*n)` -/
def P9509559934875000332.Spec : Prop :=
  ∀ n, P9509559934875000332.a n = A027943 (n + 2)

end A027943

/-! ## A027943.P2758453919849776670

`∑[A053809(2*n)]`
-/

namespace A027943.P2758453919849776670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027943.P2758453919849776670

namespace A027943

/-- `∑[A053809(2*n)]` -/
def P2758453919849776670.Spec : Prop :=
  ∀ n, P2758453919849776670.a n = A027943 (n + 2)

end A027943

/-! ## A027943.P2641762158736206185

`∑[∑[A213586(2*n+1)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027943

/-- `∑[∑[A213586(2*n+1)]]` -/
def P2641762158736206185.Spec : Prop :=
  ∀ n, P2641762158736206185.a n = A027943 (n + 2)

theorem P2641762158736206185.correct : P2641762158736206185.Spec := by
  intro n
  simp only [A027943, Nat.add_sub_cancel]

end A027943

/-! ## A027943.P2306726653449804424

`A053809(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A027943.P2306726653449804424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053809 (n + n) + a (n - 1)

end

end A027943.P2306726653449804424

namespace A027943

/-- `A053809(n+n)+a(n-1)` -/
def P2306726653449804424.Spec : Prop :=
  ∀ n, P2306726653449804424.a n = A027943 (n + 2)

end A027943

/-! ## A027943.P8604162013654479308

`record[A053739(A014681(n))]`
-/

namespace A027943.P8604162013654479308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027943.P8604162013654479308

namespace A027943

/-- `record[A053739(A014681(n))]` -/
def P8604162013654479308.Spec : Prop :=
  ∀ n, P8604162013654479308.a n = A027943 (n + 2)

end A027943

/-! ## A027943.P15869326986847327116

`A027950(n+3)-A027954(n+2)`
-/

namespace A027943.P15869326986847327116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027950 (n + 3) - A027954 (n + 2)

end

end A027943.P15869326986847327116

namespace A027943

/-- `A027950(n+3)-A027954(n+2)` -/
def P15869326986847327116.Spec : Prop :=
  ∀ n, P15869326986847327116.a n = A027943 (n + 2)

end A027943

/-! ## A027943.P8081390844533010416

`A027950(n+3)-A014166(2*(n+1))`
-/

namespace A027943.P8081390844533010416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027950 (n + 3) - A014166 (2 * (n + 1))

end

end A027943.P8081390844533010416

namespace A027943

/-- `A027950(n+3)-A014166(2*(n+1))` -/
def P8081390844533010416.Spec : Prop :=
  ∀ n, P8081390844533010416.a n = A027943 (n + 2)

end A027943

/-! ## A027943.P15655432055915512962

`∑[A014166(2*n+1)+A014166(2*n)]`
-/

namespace A027943.P15655432055915512962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 * n + 1) + A014166 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027943.P15655432055915512962

namespace A027943

/-- `∑[A014166(2*n+1)+A014166(2*n)]` -/
def P15655432055915512962.Spec : Prop :=
  ∀ n, P15655432055915512962.a n = A027943 (n + 2)

end A027943

/-!
# A027944: a(n) = T(2n+1, n+4), T given by A027935.

The programs for A027944, the canonical program `A027944.P4242396060519287181` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027944 has offset 3).

The definition of A027944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027944.P4242396060519287181

`A053296(2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027944

/-- `A053296(2*n)` -/
def P4242396060519287181.Spec : Prop :=
  ∀ n, P4242396060519287181.a n = A027944 (n + 3)

theorem P4242396060519287181.correct : P4242396060519287181.Spec := by
  intro n
  simp only [A027944, Nat.add_sub_cancel]

end A027944

/-! ## A027944.P18208037187851705491

`∑[A054470(2*n)]`
-/

namespace A027944.P18208037187851705491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027944.P18208037187851705491

namespace A027944

/-- `∑[A054470(2*n)]` -/
def P18208037187851705491.Spec : Prop :=
  ∀ n, P18208037187851705491.a n = A027944 (n + 3)

end A027944

/-! ## A027944.P11919243737834056516

`A054470(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A027944.P11919243737834056516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054470 (n + n) + a (n - 1)

end

end A027944.P11919243737834056516

namespace A027944

/-- `A054470(n+n)+a(n-1)` -/
def P11919243737834056516.Spec : Prop :=
  ∀ n, P11919243737834056516.a n = A027944 (n + 3)

end A027944

/-! ## A027944.P5400487703653607807

`record[A053296(A014681(n))]`
-/

namespace A027944.P5400487703653607807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027944.P5400487703653607807

namespace A027944

/-- `record[A053296(A014681(n))]` -/
def P5400487703653607807.Spec : Prop :=
  ∀ n, P5400487703653607807.a n = A027944 (n + 3)

end A027944

/-! ## A027944.P5004174697148915837

`∑[A027955(n+2)+A027939(n+3)]-1`
-/

namespace A027944.P5004174697148915837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027955 (n + 2) + A027939 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A027944.P5004174697148915837

namespace A027944

/-- `∑[A027955(n+2)+A027939(n+3)]-1` -/
def P5004174697148915837.Spec : Prop :=
  ∀ n, P5004174697148915837.a n = A027944 (n + 3)

end A027944

/-! ## A027944.P985588034717081770

`record[A053296(A142150(A042948(n)))]`
-/

namespace A027944.P985588034717081770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (A142150 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027944.P985588034717081770

namespace A027944

/-- `record[A053296(A142150(A042948(n)))]` -/
def P985588034717081770.Spec : Prop :=
  ∀ n, P985588034717081770.a n = A027944 (n + 3)

end A027944

/-! ## A027944.P1943114070604516203

`A053308(2*n+1)-(A053308(2*n)+A053295(2*n+1))`
-/

namespace A027944.P1943114070604516203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (2 * n + 1) - (A053308 (2 * n) + A053295 (2 * n + 1))

end

end A027944.P1943114070604516203

namespace A027944

/-- `A053308(2*n+1)-(A053308(2*n)+A053295(2*n+1))` -/
def P1943114070604516203.Spec : Prop :=
  ∀ n, P1943114070604516203.a n = A027944 (n + 3)

end A027944

/-!
# A027945: Greatest number in row n of array T given by A027935.

The programs for A027945, there is no canonical definition to state claims against.
-/

/-! ## A027945.P14072596854975036775

`A000005(n!)-A237768(n+1)²`
-/

namespace A027945.P14072596854975036775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial n) - A237768 (n + 1) ^ 2

end

end A027945.P14072596854975036775

/-! ## A027945.P12760645516028815495

`A000196(A107898(n+1)*A294159(n))`
-/

namespace A027945.P12760645516028815495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A107898 (n + 1) * A294159 n).toNat

end

end A027945.P12760645516028815495

/-!
# A027946: a(n) is the sum of the non-Fibonacci numbers in row n of array T given by A027935, computed as T(n,m) + T(n,m+1) + ... + T(n,n-1), where m = floor((n+2)/2).

The programs for A027946, the canonical program `A027946.P18359284671002825256` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027946 has offset 0).

The definition of A027946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027946.P18359284671002825256

`A255047(n)-A001906(A008619(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027946

/-- `A255047(n)-A001906(A008619(n))` -/
def P18359284671002825256.Spec : Prop :=
  ∀ n, P18359284671002825256.a n = A027946 n

theorem P18359284671002825256.correct : P18359284671002825256.Spec := by
  intro n
  simp only [A027946]

end A027946

/-! ## A027946.P16824544268726185392

`A255047(n)-A109794(A052928(n))`
-/

namespace A027946.P16824544268726185392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n - A109794 (A052928 n).toNat

end

end A027946.P16824544268726185392

namespace A027946

/-- `A255047(n)-A109794(A052928(n))` -/
def P16824544268726185392.Spec : Prop :=
  ∀ n, P16824544268726185392.a n = A027946 n

end A027946

/-! ## A027946.P5179142395628552379

`A000225(A000007(n)+n)-A094966(n+1)`
-/

namespace A027946.P5179142395628552379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000007 n + (n : ℤ)).toNat - A094966 (n + 1)

end

end A027946.P5179142395628552379

namespace A027946

/-- `A000225(A000007(n)+n)-A094966(n+1)` -/
def P5179142395628552379.Spec : Prop :=
  ∀ n, P5179142395628552379.a n = A027946 n

end A027946

/-! ## A027946.P7942764149582585271

`xor(A000225(n)+A000007(n), A094966(n+1))`
-/

namespace A027946.P7942764149582585271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n + A000007 n) (A094966 (n + 1))

end

end A027946.P7942764149582585271

namespace A027946

/-- `xor(A000225(n)+A000007(n), A094966(n+1))` -/
def P7942764149582585271.Spec : Prop :=
  ∀ n, P7942764149582585271.a n = A027946 n

end A027946

/-! ## A027946.P16642754811917813525

`and(A000225(n+1)-A094966(n+1), A000225(n))`
-/

namespace A027946.P16642754811917813525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1) - A094966 (n + 1)) (A000225 n)

end

end A027946.P16642754811917813525

namespace A027946

/-- `and(A000225(n+1)-A094966(n+1), A000225(n))` -/
def P16642754811917813525.Spec : Prop :=
  ∀ n, P16642754811917813525.a n = A027946 n

end A027946

/-!
# A027947: a(n) = Sum_{k=m..n} T(k,n-k), where m = floor((n+1)/2); a(n) is the n-th diagonal-sum of left justified array T given by A027935.

The programs for A027947, the canonical program `A027947.P16737674988158166657` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027947 has offset 0).

The definition of A027947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027947.P16737674988158166657

`2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027947

/-- `2*a(n-2)+a(n-3)-a(n-4)` -/
def P16737674988158166657.Spec : Prop :=
  ∀ n, P16737674988158166657.a n = A027947 n

theorem P16737674988158166657.correct : P16737674988158166657.Spec := by
  intro n
  simp only [A027947]

end A027947

/-! ## A027947.P12070362623681294722

`ogf((1+x)/(1-2x^2-x^3+x^4))`
-/

namespace A027947.P12070362623681294722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -2, -1, 1] n

end

end A027947.P12070362623681294722

namespace A027947

/-- `ogf((1+x)/(1-2x^2-x^3+x^4))` -/
def P12070362623681294722.Spec : Prop :=
  ∀ n, P12070362623681294722.a n = A027947 n

end A027947

/-! ## A027947.P3315472721636081273

`∑[A017817(2*n)]`
-/

namespace A027947.P3315472721636081273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027947.P3315472721636081273

namespace A027947

/-- `∑[A017817(2*n)]` -/
def P3315472721636081273.Spec : Prop :=
  ∀ n, P3315472721636081273.a n = A027947 n

end A027947

/-! ## A027947.P10631192582137398075

`A079398(2*(n+1))`
-/

namespace A027947.P10631192582137398075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (2 * (n + 1))

end

end A027947.P10631192582137398075

namespace A027947

/-- `A079398(2*(n+1))` -/
def P10631192582137398075.Spec : Prop :=
  ∀ n, P10631192582137398075.a n = A027947 n

end A027947

/-! ## A027947.P16816661362604499371

`A122521(4*(n+1))`
-/

namespace A027947.P16816661362604499371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (4 * (n + 1))

end

end A027947.P16816661362604499371

namespace A027947

/-- `A122521(4*(n+1))` -/
def P16816661362604499371.Spec : Prop :=
  ∀ n, P16816661362604499371.a n = A027947 n

end A027947

/-! ## A027947.P2984635477254974816

`∑[A127838(2*(n+2)+1)]`
-/

namespace A027947.P2984635477254974816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (2 * (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027947.P2984635477254974816

namespace A027947

/-- `∑[A127838(2*(n+2)+1)]` -/
def P2984635477254974816.Spec : Prop :=
  ∀ n, P2984635477254974816.a n = A027947 n

end A027947

/-! ## A027947.P12523917940428296292

`A017817(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A027947.P12523917940428296292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017817 (n + n) + a (n - 1)

end

end A027947.P12523917940428296292

namespace A027947

/-- `A017817(n+n)+a(n-1)` -/
def P12523917940428296292.Spec : Prop :=
  ∀ n, P12523917940428296292.a n = A027947 n

end A027947

/-! ## A027947.P6957669339215227139

`A062200(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A027947.P6957669339215227139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062200 (n - 2) + a (n - 1)

end

end A027947.P6957669339215227139

namespace A027947

/-- `A062200(n-2)+a(n-1)` -/
def P6957669339215227139.Spec : Prop :=
  ∀ n, P6957669339215227139.a n = A027947 n

end A027947

/-! ## A027947.P8852519084027399013

`A122514(n+1)+A122514(n)`
-/

namespace A027947.P8852519084027399013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122514 (n + 1) + A122514 n

end

end A027947.P8852519084027399013

namespace A027947

/-- `A122514(n+1)+A122514(n)` -/
def P8852519084027399013.Spec : Prop :=
  ∀ n, P8852519084027399013.a n = A027947 n

end A027947

/-! ## A027947.P17841148674463006463

`A017817(2*n+1)+A017817(2*n+3)`
-/

namespace A027947.P17841148674463006463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (2 * n + 1) + A017817 (2 * n + 3)

end

end A027947.P17841148674463006463

namespace A027947

/-- `A017817(2*n+1)+A017817(2*n+3)` -/
def P17841148674463006463.Spec : Prop :=
  ∀ n, P17841148674463006463.a n = A027947 n

end A027947

/-! ## A027947.P1494320310580414302

`A123015(2*n+1)-A123015(2*n)`
-/

namespace A027947.P1494320310580414302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123015 (2 * n + 1) - A123015 (2 * n)

end

end A027947.P1494320310580414302

namespace A027947

/-- `A123015(2*n+1)-A123015(2*n)` -/
def P1494320310580414302.Spec : Prop :=
  ∀ n, P1494320310580414302.a n = A027947 n

end A027947

/-! ## A027947.P2065519393099794436

`A164317(2*n+3)-A164317(2*(n+1))`
-/

namespace A027947.P2065519393099794436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164317 (2 * n + 3) - A164317 (2 * (n + 1))

end

end A027947.P2065519393099794436

namespace A027947

/-- `A164317(2*n+3)-A164317(2*(n+1))` -/
def P2065519393099794436.Spec : Prop :=
  ∀ n, P2065519393099794436.a n = A027947 n

end A027947

/-!
# A027948: Triangular array T read by rows: T(n,k) = t(n,2k+1) for 0 <= k <= n, T(n,n)=1, t given by A027926, n >= 0.

The programs for A027948, there is no canonical definition to state claims against.
-/

/-! ## A027948.P15342420274484552309

`A210216(A083920(n)+1)`
-/

namespace A027948.P15342420274484552309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (A083920 n + 1).toNat

end

end A027948.P15342420274484552309

/-! ## A027948.P8794975433137472693

`A210216(A122797(n+1))`
-/

namespace A027948.P8794975433137472693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (A122797 (n + 1)).toNat

end

end A027948.P8794975433137472693

/-! ## A027948.P6510022148564803750

`A210216(A001614(n+1)-n)`
-/

namespace A027948.P6510022148564803750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (A001614 (n + 1) - (n : ℤ)).toNat

end

end A027948.P6510022148564803750

/-! ## A027948.P1346126759364375146

`A210216(1-A003056(n)+n)`
-/

namespace A027948.P1346126759364375146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (1 - A003056 n + (n : ℤ)).toNat

end

end A027948.P1346126759364375146

/-! ## A027948.P11684372867812145590

`A210216(1-(A003056(n)-n))`
-/

namespace A027948.P11684372867812145590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (1 - (A003056 n - (n : ℤ))).toNat

end

end A027948.P11684372867812145590

/-! ## A027948.P10019049207945476773

`A027926(A001614(n+2)-2)`
-/

namespace A027948.P10019049207945476773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A001614 (n + 2) - 2).toNat

end

end A027948.P10019049207945476773

/-! ## A027948.P3454071025752681481

`A027926(∑[2-char[∑[n]]])`
-/

namespace A027948.P3454071025752681481
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027948.P3454071025752681481

/-! ## A027948.P3809306495340534224

`gcd(A000038(n), A027926(A001614(n+1)))`
-/

namespace A027948.P3809306495340534224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027926 (A001614 (n + 1)).toNat)

end

end A027948.P3809306495340534224

/-! ## A027948.P9247763211561843519

`A027926(A001614(n+1))%A277946(n+1)`
-/

namespace A027948.P9247763211561843519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027926 (A001614 (n + 1)).toNat) (A277946 (n + 1))

end

end A027948.P9247763211561843519

/-! ## A027948.P12699263460510497326

`A062157(A014722(n)+n)²*A027926(A001614(n+1))`
-/

namespace A027948.P12699263460510497326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A014722 n + (n : ℤ)).toNat ^ 2 * A027926 (A001614 (n + 1)).toNat

end

end A027948.P12699263460510497326

/-! ## A027948.P5818963634361579927

`A055801(A185870(n+1))`
-/

namespace A027948.P5818963634361579927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A185870 (n + 1)).toNat

end

end A027948.P5818963634361579927

/-! ## A027948.P17584593703076856290

`A055801(A185869(n+1)+1)`
-/

namespace A027948.P17584593703076856290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A185869 (n + 1) + 1).toNat

end

end A027948.P17584593703076856290

/-!
# A027949: a(n) = T(2n,n+1), T given by A027948.

The programs for A027949, the canonical program `A027949.P15482568513924351520` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027949 has offset 1).

The definition of A027949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027949.P15482568513924351520

`6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=25, a(3)=97, a(4)=309, a(5)=894`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027949

/-- `6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` -/
def P15482568513924351520.Spec : Prop :=
  ∀ n, P15482568513924351520.a n = A027949 (n + 1)

theorem P15482568513924351520.correct : P15482568513924351520.Spec := by
  intro n
  simp only [A027949, Nat.add_sub_cancel]

end A027949

/-! ## A027949.P4610134690658144942

`A014162(n+1-(1-n)%(n+1))`
-/

namespace A027949.P4610134690658144942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027949.P4610134690658144942

namespace A027949

/-- `A014162(n+1-(1-n)%(n+1))` -/
def P4610134690658144942.Spec : Prop :=
  ∀ n, P4610134690658144942.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P15213621225116573071

`A014162(A004277(n))`
-/

namespace A027949.P15213621225116573071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A004277 n).toNat

end

end A027949.P15213621225116573071

namespace A027949

/-- `A014162(A004277(n))` -/
def P15213621225116573071.Spec : Prop :=
  ∀ n, P15213621225116573071.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P9969052793761589745

`A014162(A004275(n+1))`
-/

namespace A027949.P9969052793761589745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A004275 (n + 1)).toNat

end

end A027949.P9969052793761589745

namespace A027949

/-- `A014162(A004275(n+1))` -/
def P9969052793761589745.Spec : Prop :=
  ∀ n, P9969052793761589745.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P7056522760309555818

`A014162(A004273(n)+1)`
-/

namespace A027949.P7056522760309555818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A004273 n + 1).toNat

end

end A027949.P7056522760309555818

namespace A027949

/-- `A014162(A004273(n)+1)` -/
def P7056522760309555818.Spec : Prop :=
  ∀ n, P7056522760309555818.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P10206730895042948757

`A014162(A123108(4*n))`
-/

namespace A027949.P10206730895042948757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A123108 (4 * n)).toNat

end

end A027949.P10206730895042948757

namespace A027949

/-- `A014162(A123108(4*n))` -/
def P10206730895042948757.Spec : Prop :=
  ∀ n, P10206730895042948757.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P8053513125487326504

`A014162(A008486(n)-n)`
-/

namespace A027949.P8053513125487326504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A008486 n - (n : ℤ)).toNat

end

end A027949.P8053513125487326504

namespace A027949

/-- `A014162(A008486(n)-n)` -/
def P8053513125487326504.Spec : Prop :=
  ∀ n, P8053513125487326504.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P1504456645706630973

`A014162(record[A026741(n)+1])`
-/

namespace A027949.P1504456645706630973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027949.P1504456645706630973

namespace A027949

/-- `A014162(record[A026741(n)+1])` -/
def P1504456645706630973.Spec : Prop :=
  ∀ n, P1504456645706630973.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P16817869842572294756

`A014162(record[xor(1, A131738(n))])`
-/

namespace A027949.P16817869842572294756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A131738 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027949.P16817869842572294756

namespace A027949

/-- `A014162(record[xor(1, A131738(n))])` -/
def P16817869842572294756.Spec : Prop :=
  ∀ n, P16817869842572294756.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P17728035785470907335

`A014162(2-A105811(2*n))`
-/

namespace A027949.P17728035785470907335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 - A105811 (2 * n)).toNat

end

end A027949.P17728035785470907335

namespace A027949

/-- `A014162(2-A105811(2*n))` -/
def P17728035785470907335.Spec : Prop :=
  ∀ n, P17728035785470907335.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P6478316456191734352

`A014162(xor(1, A131738(2*n)))`
-/

namespace A027949.P6478316456191734352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (Int.xor 1 (A131738 (2 * n))).toNat

end

end A027949.P6478316456191734352

namespace A027949

/-- `A014162(xor(1, A131738(2*n)))` -/
def P6478316456191734352.Spec : Prop :=
  ∀ n, P6478316456191734352.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P11038140410244200708

`A014162(A008574(n)-2*n)`
-/

namespace A027949.P11038140410244200708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A008574 n - (2 * n : ℤ)).toNat

end

end A027949.P11038140410244200708

namespace A027949

/-- `A014162(A008574(n)-2*n)` -/
def P11038140410244200708.Spec : Prop :=
  ∀ n, P11038140410244200708.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P6254079646088517291

`A014162(A008574(n)-n-n)`
-/

namespace A027949.P6254079646088517291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A008574 n - (n : ℤ) - (n : ℤ)).toNat

end

end A027949.P6254079646088517291

namespace A027949

/-- `A014162(A008574(n)-n-n)` -/
def P6254079646088517291.Spec : Prop :=
  ∀ n, P6254079646088517291.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P5781963351320203933

`A014162(record[A266073(n+1)/2])`
-/

namespace A027949.P5781963351320203933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266073 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A027949.P5781963351320203933

namespace A027949

/-- `A014162(record[A266073(n+1)/2])` -/
def P5781963351320203933.Spec : Prop :=
  ∀ n, P5781963351320203933.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P4308158765898989041

`A014162(A101279(2*n+1)+n)`
-/

namespace A027949.P4308158765898989041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A101279 (2 * n + 1) + (n : ℤ)).toNat

end

end A027949.P4308158765898989041

namespace A027949

/-- `A014162(A101279(2*n+1)+n)` -/
def P4308158765898989041.Spec : Prop :=
  ∀ n, P4308158765898989041.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P10396712979450923653

`A014162(2*n)+1-A105812(n+1)²`
-/

namespace A027949.P10396712979450923653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n) + (1 - A105812 (n + 1) ^ 2)

end

end A027949.P10396712979450923653

namespace A027949

/-- `A014162(2*n)+1-A105812(n+1)²` -/
def P10396712979450923653.Spec : Prop :=
  ∀ n, P10396712979450923653.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P3163374273726105317

`A014162(2*n)+1-A105812(2*n+1)`
-/

namespace A027949.P3163374273726105317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n) + (1 - A105812 (2 * n + 1))

end

end A027949.P3163374273726105317

namespace A027949

/-- `A014162(2*n)+1-A105812(2*n+1)` -/
def P3163374273726105317.Spec : Prop :=
  ∀ n, P3163374273726105317.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P12917361246266585637

`A014162(A004396(A008486(n)))`
-/

namespace A027949.P12917361246266585637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A004396 (A008486 n).toNat).toNat

end

end A027949.P12917361246266585637

namespace A027949

/-- `A014162(A004396(A008486(n)))` -/
def P12917361246266585637.Spec : Prop :=
  ∀ n, P12917361246266585637.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P17305174278001991728

`A014162(A110654(A008574(n)))`
-/

namespace A027949.P17305174278001991728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (A110654 (A008574 n).toNat).toNat

end

end A027949.P17305174278001991728

namespace A027949

/-- `A014162(A110654(A008574(n)))` -/
def P17305174278001991728.Spec : Prop :=
  ∀ n, P17305174278001991728.a n = A027949 (n + 1)

end A027949

/-! ## A027949.P691975506578130793

`A014162(abs(A001057(A008574(n))))`
-/

namespace A027949.P691975506578130793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 |A001057 (A008574 n).toNat|.toNat

end

end A027949.P691975506578130793

namespace A027949

/-- `A014162(abs(A001057(A008574(n))))` -/
def P691975506578130793.Spec : Prop :=
  ∀ n, P691975506578130793.a n = A027949 (n + 1)

end A027949

/-!
# A027950: a(n) = T(2n,n+2), T given by A027948.

The programs for A027950, the canonical program `A027950.P4353403862052675350` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027950 has offset 2).

The definition of A027950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027950.P4353403862052675350

`A053739(eq[1, gcd(n+1, or(1, n))])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027950

/-- `A053739(eq[1, gcd(n+1, or(1, n))])` -/
def P4353403862052675350.Spec : Prop :=
  ∀ n, P4353403862052675350.a n = A027950 (n + 2)

theorem P4353403862052675350.correct : P4353403862052675350.Spec := by
  intro n
  simp only [A027950, Nat.add_sub_cancel]

end A027950

/-! ## A027950.P117347094854835723

`A053739(n-(1-n)%(n+1))`
-/

namespace A027950.P117347094854835723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027950.P117347094854835723

namespace A027950

/-- `A053739(n-(1-n)%(n+1))` -/
def P117347094854835723.Spec : Prop :=
  ∀ n, P117347094854835723.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P10461719093629326097

`A053739(A004273(n))`
-/

namespace A027950.P10461719093629326097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (A004273 n).toNat

end

end A027950.P10461719093629326097

namespace A027950

/-- `A053739(A004273(n))` -/
def P10461719093629326097.Spec : Prop :=
  ∀ n, P10461719093629326097.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P15324717422667538291

`A053739(record[A006257(n)])`
-/

namespace A027950.P15324717422667538291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027950.P15324717422667538291

namespace A027950

/-- `A053739(record[A006257(n)])` -/
def P15324717422667538291.Spec : Prop :=
  ∀ n, P15324717422667538291.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P1829056141077575363

`A053739(record[A026741(n)])`
-/

namespace A027950.P1829056141077575363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027950.P1829056141077575363

namespace A027950

/-- `A053739(record[A026741(n)])` -/
def P1829056141077575363.Spec : Prop :=
  ∀ n, P1829056141077575363.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P18172587998787999546

`A053739(A014681(2*n))`
-/

namespace A027950.P18172587998787999546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (A014681 (2 * n)).toNat

end

end A027950.P18172587998787999546

namespace A027950

/-- `A053739(A014681(2*n))` -/
def P18172587998787999546.Spec : Prop :=
  ∀ n, P18172587998787999546.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P16127874583812806685

`A053739(eq[n, A026741(n)])`
-/

namespace A027950.P16127874583812806685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027950.P16127874583812806685

namespace A027950

/-- `A053739(eq[n, A026741(n)])` -/
def P16127874583812806685.Spec : Prop :=
  ∀ n, P16127874583812806685.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P3974518815122868291

`A053739(record[gcd(n, A000096(n))])`
-/

namespace A027950.P3974518815122868291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000096 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027950.P3974518815122868291

namespace A027950

/-- `A053739(record[gcd(n, A000096(n))])` -/
def P3974518815122868291.Spec : Prop :=
  ∀ n, P3974518815122868291.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P3379631730362161923

`A053739(eq[0, A266222(3*n)])`
-/

namespace A027950.P3379631730362161923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027950.P3379631730362161923

namespace A027950

/-- `A053739(eq[0, A266222(3*n)])` -/
def P3379631730362161923.Spec : Prop :=
  ∀ n, P3379631730362161923.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P14229755057853682602

`A053739(A008574(n)-A005408(n))`
-/

namespace A027950.P14229755057853682602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (A008574 n - A005408 n).toNat

end

end A027950.P14229755057853682602

namespace A027950

/-- `A053739(A008574(n)-A005408(n))` -/
def P14229755057853682602.Spec : Prop :=
  ∀ n, P14229755057853682602.a n = A027950 (n + 2)

end A027950

/-! ## A027950.P3435361375167758801

`A053739(A025581(∑[n]-n)+n)`
-/

namespace A027950.P3435361375167758801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 (A025581 (∑ j ∈ Finset.range (n + 1), f1 j - n) + (n : ℤ)).toNat

end

end A027950.P3435361375167758801

namespace A027950

/-- `A053739(A025581(∑[n]-n)+n)` -/
def P3435361375167758801.Spec : Prop :=
  ∀ n, P3435361375167758801.a n = A027950 (n + 2)

end A027950

/-!
# A027951: a(n) = T(2n,n+3), T given by A027948.

The programs for A027951, the canonical program `A027951.P13385371042133120629` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027951 has offset 3).

The definition of A027951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027951.P13385371042133120629

`A053296(n-(1-n)%(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027951

/-- `A053296(n-(1-n)%(n+1))` -/
def P13385371042133120629.Spec : Prop :=
  ∀ n, P13385371042133120629.a n = A027951 (n + 3)

theorem P13385371042133120629.correct : P13385371042133120629.Spec := by
  intro n
  simp only [A027951, Nat.add_sub_cancel]

end A027951

/-! ## A027951.P33804263261548042

`A053296(A004273(n))`
-/

namespace A027951.P33804263261548042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (A004273 n).toNat

end

end A027951.P33804263261548042

namespace A027951

/-- `A053296(A004273(n))` -/
def P33804263261548042.Spec : Prop :=
  ∀ n, P33804263261548042.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P3448062617358042001

`A053296(record[A026741(n)])`
-/

namespace A027951.P3448062617358042001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027951.P3448062617358042001

namespace A027951

/-- `A053296(record[A026741(n)])` -/
def P3448062617358042001.Spec : Prop :=
  ∀ n, P3448062617358042001.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P14876511804809219175

`A053296(record[A106609(n)])`
-/

namespace A027951.P14876511804809219175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027951.P14876511804809219175

namespace A027951

/-- `A053296(record[A106609(n)])` -/
def P14876511804809219175.Spec : Prop :=
  ∀ n, P14876511804809219175.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P16427540873252782790

`A053296(A014681(2*n))`
-/

namespace A027951.P16427540873252782790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (A014681 (2 * n)).toNat

end

end A027951.P16427540873252782790

namespace A027951

/-- `A053296(A014681(2*n))` -/
def P16427540873252782790.Spec : Prop :=
  ∀ n, P16427540873252782790.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P4227544803328036559

`A053296(record[n-A142150(n)])`
-/

namespace A027951.P4227544803328036559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027951.P4227544803328036559

namespace A027951

/-- `A053296(record[n-A142150(n)])` -/
def P4227544803328036559.Spec : Prop :=
  ∀ n, P4227544803328036559.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P6066311758293376390

`A053296(eq[n, A131360(2*n+1)])`
-/

namespace A027951.P6066311758293376390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027951.P6066311758293376390

namespace A027951

/-- `A053296(eq[n, A131360(2*n+1)])` -/
def P6066311758293376390.Spec : Prop :=
  ∀ n, P6066311758293376390.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P10670789981211252665

`A053296(eq[n, n*A055396(n+1)])`
-/

namespace A027951.P10670789981211252665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027951.P10670789981211252665

namespace A027951

/-- `A053296(eq[n, n*A055396(n+1)])` -/
def P10670789981211252665.Spec : Prop :=
  ∀ n, P10670789981211252665.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P711076094915159698

`A053296(A016813(n)-A103517(n))`
-/

namespace A027951.P711076094915159698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (A016813 n - A103517 n).toNat

end

end A027951.P711076094915159698

namespace A027951

/-- `A053296(A016813(n)-A103517(n))` -/
def P711076094915159698.Spec : Prop :=
  ∀ n, P711076094915159698.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P18408204507646275147

`A053296(record[A001281(n)-A014601(n)])`
-/

namespace A027951.P18408204507646275147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n - A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027951.P18408204507646275147

namespace A027951

/-- `A053296(record[A001281(n)-A014601(n)])` -/
def P18408204507646275147.Spec : Prop :=
  ∀ n, P18408204507646275147.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P1033178640995417843

`record[A053296(n)/A053296(A142150(n))]`
-/

namespace A027951.P1033178640995417843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053296 n : ℚ) / (A053296 (A142150 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027951.P1033178640995417843

namespace A027951

/-- `record[A053296(n)/A053296(A142150(n))]` -/
def P1033178640995417843.Spec : Prop :=
  ∀ n, P1033178640995417843.a n = (A027951 (n + 3) : ℚ)

end A027951

/-! ## A027951.P12486464663163735198

`A053296(A005408(n)-A036453(n+1))`
-/

namespace A027951.P12486464663163735198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (A005408 n - A036453 (n + 1)).toNat

end

end A027951.P12486464663163735198

namespace A027951

/-- `A053296(A005408(n)-A036453(n+1))` -/
def P12486464663163735198.Spec : Prop :=
  ∀ n, P12486464663163735198.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P17754158138012952600

`A053296(eq[A036453(n+1), A141056(n)])`
-/

namespace A027951.P17754158138012952600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027951.P17754158138012952600

namespace A027951

/-- `A053296(eq[A036453(n+1), A141056(n)])` -/
def P17754158138012952600.Spec : Prop :=
  ∀ n, P17754158138012952600.a n = A027951 (n + 3)

end A027951

/-! ## A027951.P7508485113548021645

`A053296(eq[A055396(n+1)², A055396(n+1)])`
-/

namespace A027951.P7508485113548021645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027951.P7508485113548021645

namespace A027951

/-- `A053296(eq[A055396(n+1)², A055396(n+1)])` -/
def P7508485113548021645.Spec : Prop :=
  ∀ n, P7508485113548021645.a n = A027951 (n + 3)

end A027951

/-!
# A027952: a(n) = T(2n,n+4), T given by A027948.

The programs for A027952, the canonical program `A027952.P14487123218290733274` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027952 has offset 4).

The definition of A027952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027952.P14487123218290733274

`A053309(record[n*n%2])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027952

/-- `A053309(record[n*n%2])` -/
def P14487123218290733274.Spec : Prop :=
  ∀ n, P14487123218290733274.a n = A027952 (n + 4)

theorem P14487123218290733274.correct : P14487123218290733274.Spec := by
  intro n
  simp only [A027952, Nat.add_sub_cancel]

end A027952

/-! ## A027952.P5184044364316797255

`A053309(n-(1-n)%(n+1))`
-/

namespace A027952.P5184044364316797255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027952.P5184044364316797255

namespace A027952

/-- `A053309(n-(1-n)%(n+1))` -/
def P5184044364316797255.Spec : Prop :=
  ∀ n, P5184044364316797255.a n = A027952 (n + 4)

end A027952

/-! ## A027952.P1517053048426527825

`A053309(A004273(n))`
-/

namespace A027952.P1517053048426527825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (A004273 n).toNat

end

end A027952.P1517053048426527825

namespace A027952

/-- `A053309(A004273(n))` -/
def P1517053048426527825.Spec : Prop :=
  ∀ n, P1517053048426527825.a n = A027952 (n + 4)

end A027952

/-! ## A027952.P8722572072650992588

`A053309(eq[n, A317311(n)])`
-/

namespace A027952.P8722572072650992588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027952.P8722572072650992588

namespace A027952

/-- `A053309(eq[n, A317311(n)])` -/
def P8722572072650992588.Spec : Prop :=
  ∀ n, P8722572072650992588.a n = A027952 (n + 4)

end A027952

/-! ## A027952.P890832405157556844

`A053309(A003056(2*n²))`
-/

namespace A027952.P890832405157556844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (A003056 (2 * n ^ 2)).toNat

end

end A027952.P890832405157556844

namespace A027952

/-- `A053309(A003056(2*n²))` -/
def P890832405157556844.Spec : Prop :=
  ∀ n, P890832405157556844.a n = A027952 (n + 4)

end A027952

/-!
# A027953: a(0)=1, a(n) = Fibonacci(2n+4) - (2n+3).

The programs for A027953, the canonical program `A027953.P5836391319973280967` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027953 has offset 0).

The definition of A027953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027953.P5836391319973280967

`record[-(a(n-3)+1-2*a(n-2))]` with `a(0)=1, a(1)=-1, a(2)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027953

/-- `record[-(a(n-3)+1-2*a(n-2))]` -/
def P5836391319973280967.Spec : Prop :=
  ∀ n, P5836391319973280967.a n = A027953 n

theorem P5836391319973280967.correct : P5836391319973280967.Spec := by
  intro n
  simp only [A027953]

end A027953

/-! ## A027953.P11941183893018074352

`record[A355020(n)-n]`
-/

namespace A027953.P11941183893018074352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P11941183893018074352

namespace A027953

/-- `record[A355020(n)-n]` -/
def P11941183893018074352.Spec : Prop :=
  ∀ n, P11941183893018074352.a n = A027953 n

end A027953

/-! ## A027953.P5129157106450170304

`record[A360705(n)-n]`
-/

namespace A027953.P5129157106450170304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360705 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P5129157106450170304

namespace A027953

/-- `record[A360705(n)-n]` -/
def P5129157106450170304.Spec : Prop :=
  ∀ n, P5129157106450170304.a n = A027953 n

end A027953

/-! ## A027953.P4903205789971769395

`record[A065220(2*n)+1]`
-/

namespace A027953.P4903205789971769395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P4903205789971769395

namespace A027953

/-- `record[A065220(2*n)+1]` -/
def P4903205789971769395.Spec : Prop :=
  ∀ n, P4903205789971769395.a n = A027953 n

end A027953

/-! ## A027953.P13835694225715754549

`record[A054452(n)+1-n]`
-/

namespace A027953.P13835694225715754549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 n + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P13835694225715754549

namespace A027953

/-- `record[A054452(n)+1-n]` -/
def P13835694225715754549.Spec : Prop :=
  ∀ n, P13835694225715754549.a n = A027953 n

end A027953

/-! ## A027953.P8094842046321330115

`record[1-(A119282(n)+n)]`
-/

namespace A027953.P8094842046321330115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A119282 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P8094842046321330115

namespace A027953

/-- `record[1-(A119282(n)+n)]` -/
def P8094842046321330115.Spec : Prop :=
  ∀ n, P8094842046321330115.a n = A027953 n

end A027953

/-! ## A027953.P17701196309601214475

`record[A055588(n)-2*n]`
-/

namespace A027953.P17701196309601214475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P17701196309601214475

namespace A027953

/-- `record[A055588(n)-2*n]` -/
def P17701196309601214475.Spec : Prop :=
  ∀ n, P17701196309601214475.a n = A027953 n

end A027953

/-! ## A027953.P16373210192808948402

`record[∑[A001519(n)]-n-n]`
-/

namespace A027953.P16373210192808948402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P16373210192808948402

namespace A027953

/-- `record[∑[A001519(n)]-n-n]` -/
def P16373210192808948402.Spec : Prop :=
  ∀ n, P16373210192808948402.a n = A027953 n

end A027953

/-! ## A027953.P1832248139619795825

`record[A001611(2*n)-2*n]`
-/

namespace A027953.P1832248139619795825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P1832248139619795825

namespace A027953

/-- `record[A001611(2*n)-2*n]` -/
def P1832248139619795825.Spec : Prop :=
  ∀ n, P1832248139619795825.a n = A027953 n

end A027953

/-! ## A027953.P16593764758355874939

`record[A000045(2*n)+1-2*n]`
-/

namespace A027953.P16593764758355874939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P16593764758355874939

namespace A027953

/-- `record[A000045(2*n)+1-2*n]` -/
def P16593764758355874939.Spec : Prop :=
  ∀ n, P16593764758355874939.a n = A027953 n

end A027953

/-! ## A027953.P3087670990429091511

`record[(-1)^n*A000045(n)-(n-1)]`
-/

namespace A027953.P3087670990429091511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 n - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P3087670990429091511

namespace A027953

/-- `record[(-1)^n*A000045(n)-(n-1)]` -/
def P3087670990429091511.Spec : Prop :=
  ∀ n, P3087670990429091511.a n = A027953 n

end A027953

/-! ## A027953.P11183685672097535994

`A001924(A004277(n))`
-/

namespace A027953.P11183685672097535994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A004277 n).toNat

end

end A027953.P11183685672097535994

namespace A027953

/-- `A001924(A004277(n))` -/
def P11183685672097535994.Spec : Prop :=
  ∀ n, P11183685672097535994.a n = A027953 n

end A027953

/-! ## A027953.P7829108833724744163

`A001924(record[A124625(n)])`
-/

namespace A027953.P7829108833724744163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027953.P7829108833724744163

namespace A027953

/-- `A001924(record[A124625(n)])` -/
def P7829108833724744163.Spec : Prop :=
  ∀ n, P7829108833724744163.a n = A027953 n

end A027953

/-! ## A027953.P15880932465163798753

`A001924(A004275(n+1))`
-/

namespace A027953.P15880932465163798753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A004275 (n + 1)).toNat

end

end A027953.P15880932465163798753

namespace A027953

/-- `A001924(A004275(n+1))` -/
def P15880932465163798753.Spec : Prop :=
  ∀ n, P15880932465163798753.a n = A027953 n

end A027953

/-! ## A027953.P10568014802105119959

`A001924(A004273(n)+1)`
-/

namespace A027953.P10568014802105119959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A004273 n + 1).toNat

end

end A027953.P10568014802105119959

namespace A027953

/-- `A001924(A004273(n)+1)` -/
def P10568014802105119959.Spec : Prop :=
  ∀ n, P10568014802105119959.a n = A027953 n

end A027953

/-! ## A027953.P3781568551268056929

`A001924(A008486(n)-n)`
-/

namespace A027953.P3781568551268056929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A008486 n - (n : ℤ)).toNat

end

end A027953.P3781568551268056929

namespace A027953

/-- `A001924(A008486(n)-n)` -/
def P3781568551268056929.Spec : Prop :=
  ∀ n, P3781568551268056929.a n = A027953 n

end A027953

/-! ## A027953.P11333144720786682242

`A001924(record[abs(A099254(n))])`
-/

namespace A027953.P11333144720786682242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099254 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027953.P11333144720786682242

namespace A027953

/-- `A001924(record[abs(A099254(n))])` -/
def P11333144720786682242.Spec : Prop :=
  ∀ n, P11333144720786682242.a n = A027953 n

end A027953

/-! ## A027953.P8667991708566151917

`A001924(A027379(n)-∑[n])`
-/

namespace A027953.P8667991708566151917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (A027379 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A027953.P8667991708566151917

namespace A027953

/-- `A001924(A027379(n)-∑[n])` -/
def P8667991708566151917.Spec : Prop :=
  ∀ n, P8667991708566151917.a n = A027953 n

end A027953

/-! ## A027953.P3464771394922969682

`record[A088305(n)-A004273(n)]`
-/

namespace A027953.P3464771394922969682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027953.P3464771394922969682

namespace A027953

/-- `record[A088305(n)-A004273(n)]` -/
def P3464771394922969682.Spec : Prop :=
  ∀ n, P3464771394922969682.a n = A027953 n

end A027953

/-! ## A027953.P13769030212162515170

`A001924(2-A105811(2*n))`
-/

namespace A027953.P13769030212162515170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (2 - A105811 (2 * n)).toNat

end

end A027953.P13769030212162515170

namespace A027953

/-- `A001924(2-A105811(2*n))` -/
def P13769030212162515170.Spec : Prop :=
  ∀ n, P13769030212162515170.a n = A027953 n

end A027953

/-!
# A027954: a(n) = T(2n+1, n+2), T given by A027948.

The programs for A027954, the canonical program `A027954.P3493308697241277458` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027954 has offset 1).

The definition of A027954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027954.P3493308697241277458

`A014166(record[gcd(n, 1-a(n-1))])` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027954

/-- `A014166(record[gcd(n, 1-a(n-1))])` -/
def P3493308697241277458.Spec : Prop :=
  ∀ n, P3493308697241277458.a n = A027954 (n + 1)

theorem P3493308697241277458.correct : P3493308697241277458.Spec := by
  intro n
  simp only [A027954, Nat.add_sub_cancel]

end A027954

/-! ## A027954.P16072280342131117392

`A014166(n+1-(1-n)%(n+1))`
-/

namespace A027954.P16072280342131117392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027954.P16072280342131117392

namespace A027954

/-- `A014166(n+1-(1-n)%(n+1))` -/
def P16072280342131117392.Spec : Prop :=
  ∀ n, P16072280342131117392.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P7955584561762739235

`A014166(A004277(n))`
-/

namespace A027954.P7955584561762739235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A004277 n).toNat

end

end A027954.P7955584561762739235

namespace A027954

/-- `A014166(A004277(n))` -/
def P7955584561762739235.Spec : Prop :=
  ∀ n, P7955584561762739235.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P16983678805673153074

`A014166(A004275(n+1))`
-/

namespace A027954.P16983678805673153074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A004275 (n + 1)).toNat

end

end A027954.P16983678805673153074

namespace A027954

/-- `A014166(A004275(n+1))` -/
def P16983678805673153074.Spec : Prop :=
  ∀ n, P16983678805673153074.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P8416653560733145626

`A014166(A004273(n)+1)`
-/

namespace A027954.P8416653560733145626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A004273 n + 1).toNat

end

end A027954.P8416653560733145626

namespace A027954

/-- `A014166(A004273(n)+1)` -/
def P8416653560733145626.Spec : Prop :=
  ∀ n, P8416653560733145626.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P13166501882226728979

`A014166(A008486(n)-n)`
-/

namespace A027954.P13166501882226728979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A008486 n - (n : ℤ)).toNat

end

end A027954.P13166501882226728979

namespace A027954

/-- `A014166(A008486(n)-n)` -/
def P13166501882226728979.Spec : Prop :=
  ∀ n, P13166501882226728979.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P15564594508205741112

`A014166(record[xor(1, A131738(n))])`
-/

namespace A027954.P15564594508205741112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A131738 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027954.P15564594508205741112

namespace A027954

/-- `A014166(record[xor(1, A131738(n))])` -/
def P15564594508205741112.Spec : Prop :=
  ∀ n, P15564594508205741112.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P66433196341781141

`A014166(A051755(n+2)-2)`
-/

namespace A027954.P66433196341781141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A051755 (n + 2) - 2).toNat

end

end A027954.P66433196341781141

namespace A027954

/-- `A014166(A051755(n+2)-2)` -/
def P66433196341781141.Spec : Prop :=
  ∀ n, P66433196341781141.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P8922523753926792616

`A014166(A153151(2*n+1))`
-/

namespace A027954.P8922523753926792616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A153151 (2 * n + 1)).toNat

end

end A027954.P8922523753926792616

namespace A027954

/-- `A014166(A153151(2*n+1))` -/
def P8922523753926792616.Spec : Prop :=
  ∀ n, P8922523753926792616.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P17230494837407021072

`A014166(2-A105811(2*n))`
-/

namespace A027954.P17230494837407021072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 - A105811 (2 * n)).toNat

end

end A027954.P17230494837407021072

namespace A027954

/-- `A014166(2-A105811(2*n))` -/
def P17230494837407021072.Spec : Prop :=
  ∀ n, P17230494837407021072.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P2478279495786281012

`A014166(xor(1, A131738(2*n)))`
-/

namespace A027954.P2478279495786281012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (Int.xor 1 (A131738 (2 * n))).toNat

end

end A027954.P2478279495786281012

namespace A027954

/-- `A014166(xor(1, A131738(2*n)))` -/
def P2478279495786281012.Spec : Prop :=
  ∀ n, P2478279495786281012.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P9182529769211648727

`A014166(A008574(n)-2*n)`
-/

namespace A027954.P9182529769211648727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A008574 n - (2 * n : ℤ)).toNat

end

end A027954.P9182529769211648727

namespace A027954

/-- `A014166(A008574(n)-2*n)` -/
def P9182529769211648727.Spec : Prop :=
  ∀ n, P9182529769211648727.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P5389118709976510910

`A014166(gcd(2*n, A008574(n)))`
-/

namespace A027954.P5389118709976510910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (Int.gcd (2 * n : ℤ) (A008574 n))

end

end A027954.P5389118709976510910

namespace A027954

/-- `A014166(gcd(2*n, A008574(n)))` -/
def P5389118709976510910.Spec : Prop :=
  ∀ n, P5389118709976510910.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P13572316925818867501

`A014166(A008574(n)-n-n)`
-/

namespace A027954.P13572316925818867501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A008574 n - (n : ℤ) - (n : ℤ)).toNat

end

end A027954.P13572316925818867501

namespace A027954

/-- `A014166(A008574(n)-n-n)` -/
def P13572316925818867501.Spec : Prop :=
  ∀ n, P13572316925818867501.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P6103673076567419513

`A014166(A014683(2*(n+1))-2)`
-/

namespace A027954.P6103673076567419513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A014683 (2 * (n + 1)) - 2).toNat

end

end A027954.P6103673076567419513

namespace A027954

/-- `A014166(A014683(2*(n+1))-2)` -/
def P6103673076567419513.Spec : Prop :=
  ∀ n, P6103673076567419513.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P12281042313091988116

`A014166(2*n)-(A057427(n)-1)`
-/

namespace A027954.P12281042313091988116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 * n) - (A057427 n - 1)

end

end A027954.P12281042313091988116

namespace A027954

/-- `A014166(2*n)-(A057427(n)-1)` -/
def P12281042313091988116.Spec : Prop :=
  ∀ n, P12281042313091988116.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P5005527043194788748

`A014166(gcd(A008574(n)², A005843(n)))`
-/

namespace A027954.P5005527043194788748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (Int.gcd (A008574 n ^ 2) (A005843 n))

end

end A027954.P5005527043194788748

namespace A027954

/-- `A014166(gcd(A008574(n)², A005843(n)))` -/
def P5005527043194788748.Spec : Prop :=
  ∀ n, P5005527043194788748.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P6920902704936390265

`A014166(A007318(∑[n]+1)+n)`
-/

namespace A027954.P6920902704936390265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)).toNat

end

end A027954.P6920902704936390265

namespace A027954

/-- `A014166(A007318(∑[n]+1)+n)` -/
def P6920902704936390265.Spec : Prop :=
  ∀ n, P6920902704936390265.a n = A027954 (n + 1)

end A027954

/-! ## A027954.P6587007665478077484

`A014166(A030528(∑[n+1]+1)+2*n)`
-/

namespace A027954.P6587007665478077484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (A030528 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (2 * n : ℤ)).toNat

end

end A027954.P6587007665478077484

namespace A027954

/-- `A014166(A030528(∑[n+1]+1)+2*n)` -/
def P6587007665478077484.Spec : Prop :=
  ∀ n, P6587007665478077484.a n = A027954 (n + 1)

end A027954

/-!
# A027955: a(n) = T(2n+1, n+3), T given by A027948.

The programs for A027955, the canonical program `A027955.P11893493600567343976` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027955 has offset 2).

The definition of A027955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027955.P11893493600567343976

`A053295(eq[n, n*gcd(2, n)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027955

/-- `A053295(eq[n, n*gcd(2, n)])` -/
def P11893493600567343976.Spec : Prop :=
  ∀ n, P11893493600567343976.a n = A027955 (n + 2)

theorem P11893493600567343976.correct : P11893493600567343976.Spec := by
  intro n
  simp only [A027955, Nat.add_sub_cancel]

end A027955

/-! ## A027955.P16786596441601418688

`A053295(n-(1-n)%(n+1))`
-/

namespace A027955.P16786596441601418688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027955.P16786596441601418688

namespace A027955

/-- `A053295(n-(1-n)%(n+1))` -/
def P16786596441601418688.Spec : Prop :=
  ∀ n, P16786596441601418688.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P7023320860007267765

`A053295(A004273(n))`
-/

namespace A027955.P7023320860007267765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A004273 n).toNat

end

end A027955.P7023320860007267765

namespace A027955

/-- `A053295(A004273(n))` -/
def P7023320860007267765.Spec : Prop :=
  ∀ n, P7023320860007267765.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P11340682531313682544

`A053295(record[A006257(n)])`
-/

namespace A027955.P11340682531313682544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027955.P11340682531313682544

namespace A027955

/-- `A053295(record[A006257(n)])` -/
def P11340682531313682544.Spec : Prop :=
  ∀ n, P11340682531313682544.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P10989774530803417998

`A053295(record[A026741(n)])`
-/

namespace A027955.P10989774530803417998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027955.P10989774530803417998

namespace A027955

/-- `A053295(record[A026741(n)])` -/
def P10989774530803417998.Spec : Prop :=
  ∀ n, P10989774530803417998.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P14917314742148743096

`A053295(A014681(2*n))`
-/

namespace A027955.P14917314742148743096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A014681 (2 * n)).toNat

end

end A027955.P14917314742148743096

namespace A027955

/-- `A053295(A014681(2*n))` -/
def P14917314742148743096.Spec : Prop :=
  ∀ n, P14917314742148743096.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P10614865236343278908

`A053295(eq[n, A022998(n)])`
-/

namespace A027955.P10614865236343278908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027955.P10614865236343278908

namespace A027955

/-- `A053295(eq[n, A022998(n)])` -/
def P10614865236343278908.Spec : Prop :=
  ∀ n, P10614865236343278908.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P10821161964028934338

`A053295(eq[n, A026741(n)])`
-/

namespace A027955.P10821161964028934338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027955.P10821161964028934338

namespace A027955

/-- `A053295(eq[n, A026741(n)])` -/
def P10821161964028934338.Spec : Prop :=
  ∀ n, P10821161964028934338.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P16095374006573971616

`A053295(eq[n, A106609(n)])`
-/

namespace A027955.P16095374006573971616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027955.P16095374006573971616

namespace A027955

/-- `A053295(eq[n, A106609(n)])` -/
def P16095374006573971616.Spec : Prop :=
  ∀ n, P16095374006573971616.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P13334042193153100180

`A053295(eq[n, n*A040001(n)])`
-/

namespace A027955.P13334042193153100180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027955.P13334042193153100180

namespace A027955

/-- `A053295(eq[n, n*A040001(n)])` -/
def P13334042193153100180.Spec : Prop :=
  ∀ n, P13334042193153100180.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P11771575675061127574

`A053295(eq[n, n/A040001(n)])`
-/

namespace A027955.P11771575675061127574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A040001 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A027955.P11771575675061127574

namespace A027955

/-- `A053295(eq[n, n/A040001(n)])` -/
def P11771575675061127574.Spec : Prop :=
  ∀ n, P11771575675061127574.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P14878586630950992323

`record[gcd(A007814(n+2), A053295(n))]`
-/

namespace A027955.P14878586630950992323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 2)) (A053295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027955.P14878586630950992323

namespace A027955

/-- `record[gcd(A007814(n+2), A053295(n))]` -/
def P14878586630950992323.Spec : Prop :=
  ∀ n, (P14878586630950992323.a n : ℤ) = A027955 (n + 2)

end A027955

/-! ## A027955.P6888040760180415314

`A053295(A027379(n)-A000124(n))`
-/

namespace A027955.P6888040760180415314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A027379 n - A000124 n).toNat

end

end A027955.P6888040760180415314

namespace A027955

/-- `A053295(A027379(n)-A000124(n))` -/
def P6888040760180415314.Spec : Prop :=
  ∀ n, P6888040760180415314.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P2448519010995575493

`A053295(eq[A040001(n), A118102(n)])`
-/

namespace A027955.P2448519010995575493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027955.P2448519010995575493

namespace A027955

/-- `A053295(eq[A040001(n), A118102(n)])` -/
def P2448519010995575493.Spec : Prop :=
  ∀ n, P2448519010995575493.a n = A027955 (n + 2)

end A027955

/-! ## A027955.P17274639229010102012

`A053295(A124927(∑[n]+1)-1)`
-/

namespace A027955.P17274639229010102012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (A124927 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A027955.P17274639229010102012

namespace A027955

/-- `A053295(A124927(∑[n]+1)-1)` -/
def P17274639229010102012.Spec : Prop :=
  ∀ n, P17274639229010102012.a n = A027955 (n + 2)

end A027955

/-!
# A027956: a(n) = T(2n+1, n+4), T given by A027948.

The programs for A027956, the canonical program `A027956.P10499782025491709337` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027956 has offset 3).

The definition of A027956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027956.P10499782025491709337

`A053308(record[n*n%2])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027956

/-- `A053308(record[n*n%2])` -/
def P10499782025491709337.Spec : Prop :=
  ∀ n, P10499782025491709337.a n = A027956 (n + 3)

theorem P10499782025491709337.correct : P10499782025491709337.Spec := by
  intro n
  simp only [A027956, Nat.add_sub_cancel]

end A027956

/-! ## A027956.P17809639605915891372

`A053308(n-(1-n)%(n+1))`
-/

namespace A027956.P17809639605915891372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027956.P17809639605915891372

namespace A027956

/-- `A053308(n-(1-n)%(n+1))` -/
def P17809639605915891372.Spec : Prop :=
  ∀ n, P17809639605915891372.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P18031460154767047067

`A053308(A004273(n))`
-/

namespace A027956.P18031460154767047067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A004273 n).toNat

end

end A027956.P18031460154767047067

namespace A027956

/-- `A053308(A004273(n))` -/
def P18031460154767047067.Spec : Prop :=
  ∀ n, P18031460154767047067.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P5888358652040618280

`A053308(record[A006257(n)])`
-/

namespace A027956.P5888358652040618280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027956.P5888358652040618280

namespace A027956

/-- `A053308(record[A006257(n)])` -/
def P5888358652040618280.Spec : Prop :=
  ∀ n, P5888358652040618280.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P7307293089198159115

`A053308(A004277(n)-1)`
-/

namespace A027956.P7307293089198159115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A004277 n - 1).toNat

end

end A027956.P7307293089198159115

namespace A027956

/-- `A053308(A004277(n)-1)` -/
def P7307293089198159115.Spec : Prop :=
  ∀ n, P7307293089198159115.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P1677843717043707594

`A053308(eq[n, A022998(n)])`
-/

namespace A027956.P1677843717043707594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027956.P1677843717043707594

namespace A027956

/-- `A053308(eq[n, A022998(n)])` -/
def P1677843717043707594.Spec : Prop :=
  ∀ n, P1677843717043707594.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P6236379450088238519

`A053308(A004280(n+2)-2)`
-/

namespace A027956.P6236379450088238519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A004280 (n + 2) - 2).toNat

end

end A027956.P6236379450088238519

namespace A027956

/-- `A053308(A004280(n+2)-2)` -/
def P6236379450088238519.Spec : Prop :=
  ∀ n, P6236379450088238519.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P11507268494312532163

`A053308(A008486(n)-(n+1))`
-/

namespace A027956.P11507268494312532163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A008486 n - (n + 1 : ℤ)).toNat

end

end A027956.P11507268494312532163

namespace A027956

/-- `A053308(A008486(n)-(n+1))` -/
def P11507268494312532163.Spec : Prop :=
  ∀ n, P11507268494312532163.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P18052994857729640229

`A053308(A008486(n)-1-n)`
-/

namespace A027956.P18052994857729640229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (A008486 n - 1 - (n : ℤ)).toNat

end

end A027956.P18052994857729640229

namespace A027956

/-- `A053308(A008486(n)-1-n)` -/
def P18052994857729640229.Spec : Prop :=
  ∀ n, P18052994857729640229.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P914242851311104670

`A053308(2*n-A057427(n))`
-/

namespace A027956.P914242851311104670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 ((2 * n : ℤ) - A057427 n).toNat

end

end A027956.P914242851311104670

namespace A027956

/-- `A053308(2*n-A057427(n))` -/
def P914242851311104670.Spec : Prop :=
  ∀ n, P914242851311104670.a n = A027956 (n + 3)

end A027956

/-! ## A027956.P10953658707735910825

`A053308(record[A027379(n)%(n+1)])`
-/

namespace A027956.P10953658707735910825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027379 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027956.P10953658707735910825

namespace A027956

/-- `A053308(record[A027379(n)%(n+1)])` -/
def P10953658707735910825.Spec : Prop :=
  ∀ n, P10953658707735910825.a n = A027956 (n + 3)

end A027956

/-!
# A027957: a(n) = greatest number in row n of array T given by A027948.

The programs for A027957, there is no canonical definition to state claims against.
-/

/-! ## A027957.P17575897845212575553

`A096601(or(A002378(n), A144001(n+2)))`
-/

namespace A027957.P17575897845212575553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096601 (Int.lor (A002378 n) (A144001 (n + 2))).toNat

end

end A027957.P17575897845212575553

/-! ## A027957.P17655074922795843391

`A086013(n)+A003056(A014535(3*n+1))`
-/

namespace A027957.P17655074922795843391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086013 n + A003056 (A014535 (3 * n + 1)).toNat

end

end A027957.P17655074922795843391

/-!
# A027958: a(n) = T(n,m) + T(n,m+1) + ... + T(n,n), where m = floor((n+2)/2), T given by A027948.

The programs for A027958, the canonical program `A027958.P14156817934296809103` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027958 has offset 1).

The definition of A027958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027958.P14156817934296809103

`A000079(n+1)-A226538(A014601(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027958

/-- `A000079(n+1)-A226538(A014601(n))` -/
def P14156817934296809103.Spec : Prop :=
  ∀ n, P14156817934296809103.a n = A027958 (n + 1)

theorem P14156817934296809103.correct : P14156817934296809103.Spec := by
  intro n
  simp only [A027958, Nat.add_sub_cancel]

end A027958

/-! ## A027958.P3642520471609636117

`A011782(n+2)-A226538(A014601(n))`
-/

namespace A027958.P3642520471609636117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A226538 (A014601 n).toNat

end

end A027958.P3642520471609636117

namespace A027958

/-- `A011782(n+2)-A226538(A014601(n))` -/
def P3642520471609636117.Spec : Prop :=
  ∀ n, P3642520471609636117.a n = A027958 (n + 1)

end A027958

/-! ## A027958.P1470057513011160218

`A131577(n+2)-A226538(A014601(n))`
-/

namespace A027958.P1470057513011160218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2) - A226538 (A014601 n).toNat

end

end A027958.P1470057513011160218

namespace A027958

/-- `A131577(n+2)-A226538(A014601(n))` -/
def P1470057513011160218.Spec : Prop :=
  ∀ n, P1470057513011160218.a n = A027958 (n + 1)

end A027958

/-! ## A027958.P4190987345774942277

`A166444(n+3)-A226538(A014601(n))`
-/

namespace A027958.P4190987345774942277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 3) - A226538 (A014601 n).toNat

end

end A027958.P4190987345774942277

namespace A027958

/-- `A166444(n+3)-A226538(A014601(n))` -/
def P4190987345774942277.Spec : Prop :=
  ∀ n, P4190987345774942277.a n = A027958 (n + 1)

end A027958

/-! ## A027958.P14997695750906121003

`2*A000079(n)-A226538(A014601(n))`
-/

namespace A027958.P14997695750906121003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n - A226538 (A014601 n).toNat

end

end A027958.P14997695750906121003

namespace A027958

/-- `2*A000079(n)-A226538(A014601(n))` -/
def P14997695750906121003.Spec : Prop :=
  ∀ n, P14997695750906121003.a n = A027958 (n + 1)

theorem P14997695750906121003.correct : P14997695750906121003.Spec := by
  intro n
  simp only [A027958, Nat.add_sub_cancel, A027958.P14997695750906121003.a, A027958.P14156817934296809103.a, A000079, A000079.P10855139691139572931.a, A014601, A014601.P15167012504094999713.a, A226538, A226538.P17623945793006048119.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027958

/-!
# A027959: a(n) = Sum_{k=m..n} T(k,n-k), where m = floor((n+1)/2); a(n) is the n-th diagonal-sum of left justified array T given by A027948.

The programs for A027959, the canonical program `A027959.P3404195364708109400` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027959 has offset 1).

The definition of A027959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027959.P3404195364708109400

`3*a(n-2)+a(n-3)-3*a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027959

/-- `3*a(n-2)+a(n-3)-3*a(n-4)-a(n-5)+a(n-6)` -/
def P3404195364708109400.Spec : Prop :=
  ∀ n, P3404195364708109400.a n = A027959 (n + 1)

theorem P3404195364708109400.correct : P3404195364708109400.Spec := by
  intro n
  simp only [A027959, Nat.add_sub_cancel]

end A027959

/-! ## A027959.P16018605126575844247

`A079398(2*n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A027959.P16018605126575844247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079398 (2 * n) + a (n - 2)

end

end A027959.P16018605126575844247

namespace A027959

/-- `A079398(2*n)+a(n-2)` -/
def P16018605126575844247.Spec : Prop :=
  ∀ n, P16018605126575844247.a n = A027959 (n + 1)

end A027959

/-! ## A027959.P7470401488550904097

`∑[A027947(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A027959.P7470401488550904097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027947 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027959.P7470401488550904097

namespace A027959

/-- `∑[A027947(n-1)-a(n-1)]` -/
def P7470401488550904097.Spec : Prop :=
  ∀ n, P7470401488550904097.a n = A027959 (n + 1)

end A027959

/-! ## A027959.P12485153113370202759

`∑[A033999(n)+A017817(2*n+1)]`
-/

namespace A027959.P12485153113370202759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A017817 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027959.P12485153113370202759

namespace A027959

/-- `∑[A033999(n)+A017817(2*n+1)]` -/
def P12485153113370202759.Spec : Prop :=
  ∀ n, P12485153113370202759.a n = A027959 (n + 1)

end A027959

/-! ## A027959.P3365255154060275971

`A122521(record[6-xor(3, -n)])-A000035(n)`
-/

namespace A027959.P3365255154060275971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122521 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000035 n

end

end A027959.P3365255154060275971

namespace A027959

/-- `A122521(record[6-xor(3, -n)])-A000035(n)` -/
def P3365255154060275971.Spec : Prop :=
  ∀ n, P3365255154060275971.a n = A027959 (n + 1)

end A027959

/-! ## A027959.P13893229986950355779

`A000035(n+1)+∑[A017817(2*n+1)]`
-/

namespace A027959.P13893229986950355779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027959.P13893229986950355779

namespace A027959

/-- `A000035(n+1)+∑[A017817(2*n+1)]` -/
def P13893229986950355779.Spec : Prop :=
  ∀ n, P13893229986950355779.a n = A027959 (n + 1)

end A027959

/-!
# A027961: a(n) = Lucas(n+2) - 3.

The programs for A027961, the canonical program `A027961.P14284898692789304593` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027961 has offset 1).

The definition of A027961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027961.P14284898692789304593

`a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027961

/-- `a(n-1)+a(n-2)+3` -/
def P14284898692789304593.Spec : Prop :=
  ∀ n, (P14284898692789304593.a n : ℤ) = A027961 (n + 1)

theorem P14284898692789304593.correct : P14284898692789304593.Spec := by
  intro n
  simp only [A027961, Nat.add_sub_cancel]

end A027961

/-! ## A027961.P2834360512512457337

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A027961.P2834360512512457337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A027961.P2834360512512457337

namespace A027961

/-- `2*a(n-1)-a(n-3)` -/
def P2834360512512457337.Spec : Prop :=
  ∀ n, P2834360512512457337.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P11238929340888070707

`A000204(n+3)-3`
-/

namespace A027961.P11238929340888070707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 3) - 3

end

end A027961.P11238929340888070707

namespace A027961

/-- `A000204(n+3)-3` -/
def P11238929340888070707.Spec : Prop :=
  ∀ n, P11238929340888070707.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P9500400854938680138

`A000045(2*(n+1)+4)/A000045(n+3)-3`
-/

namespace A027961.P9500400854938680138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * (n + 1) + 4) : ℚ) / (A000045 (n + 3) : ℚ) - 3

end

end A027961.P9500400854938680138

namespace A027961

/-- `A000045(2*(n+1)+4)/A000045(n+3)-3` -/
def P9500400854938680138.Spec : Prop :=
  ∀ n, P9500400854938680138.a n = (A027961 (n + 1) : ℚ)

end A027961

/-! ## A027961.P10340133880152106284

`floor(∑[ϕ^(n+1)])`
-/

namespace A027961.P10340133880152106284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A027961.P10340133880152106284

namespace A027961

/-- `floor(∑[ϕ^(n+1)])` -/
def P10340133880152106284.Spec : Prop :=
  ∀ n, P10340133880152106284.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P15656287999089951912

`ogf((1+2x)/(1-2x+x^3))`
-/

namespace A027961.P15656287999089951912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, 0, 1] n

end

end A027961.P15656287999089951912

namespace A027961

/-- `ogf((1+2x)/(1-2x+x^3))` -/
def P15656287999089951912.Spec : Prop :=
  ∀ n, P15656287999089951912.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P11164508137272749406

`ceil(tan(5)+ϕ^(n+3))`
-/

namespace A027961.P11164508137272749406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (5 : ℝ) + Real.goldenRatio ^ (n + 3)⌉

end

end A027961.P11164508137272749406

namespace A027961

/-- `ceil(tan(5)+ϕ^(n+3))` -/
def P11164508137272749406.Spec : Prop :=
  ∀ n, P11164508137272749406.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P16278217596068345054

`ceil(ϕ^(n+3)-sinh(2))`
-/

namespace A027961.P16278217596068345054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 3) - Real.sinh (2 : ℝ)⌉

end

end A027961.P16278217596068345054

namespace A027961

/-- `ceil(ϕ^(n+3)-sinh(2))` -/
def P16278217596068345054.Spec : Prop :=
  ∀ n, P16278217596068345054.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P13210431962465075874

`ceil(cot(6)+ϕ^(n+3))`
-/

namespace A027961.P13210431962465075874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (6 : ℝ) + Real.goldenRatio ^ (n + 3)⌉

end

end A027961.P13210431962465075874

namespace A027961

/-- `ceil(cot(6)+ϕ^(n+3))` -/
def P13210431962465075874.Spec : Prop :=
  ∀ n, P13210431962465075874.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P16201541398878123166

`round(ϕ*a(n-1))+2` with `a(0)=1`
-/

namespace A027961.P16201541398878123166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 2

end

end A027961.P16201541398878123166

namespace A027961

/-- `round(ϕ*a(n-1))+2` -/
def P16201541398878123166.Spec : Prop :=
  ∀ n, P16201541398878123166.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P10904322067168449679

`2-round(-(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A027961.P10904322067168449679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A027961.P10904322067168449679

namespace A027961

/-- `2-round(-(ϕ*a(n-1)))` -/
def P10904322067168449679.Spec : Prop :=
  ∀ n, P10904322067168449679.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P1319193493325062980

`∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A027961.P1319193493325062980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027961.P1319193493325062980

namespace A027961

/-- `∑[a(n-1)+a(n-2)]` -/
def P1319193493325062980.Spec : Prop :=
  ∀ n, (P1319193493325062980.a n : ℤ) = A027961 (n + 1)

end A027961

/-! ## A027961.P8462398673072348185

`round(ϕ^C(n+3, n+2))-3`
-/

namespace A027961.P8462398673072348185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ Nat.choose (n + 3) (n + 2)) - 3

end

end A027961.P8462398673072348185

namespace A027961

/-- `round(ϕ^C(n+3, n+2))-3` -/
def P8462398673072348185.Spec : Prop :=
  ∀ n, P8462398673072348185.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P8765048446908397432

`round(a(n-1)+ϕ^(n+1))` with `a(0)=1`
-/

namespace A027961.P8765048446908397432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio ^ (n + 1))

end

end A027961.P8765048446908397432

namespace A027961

/-- `round(a(n-1)+ϕ^(n+1))` -/
def P8765048446908397432.Spec : Prop :=
  ∀ n, P8765048446908397432.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P10562464348940615794

`ceil(∑[ϕ^((n+1)%(2*n+1))])`
-/

namespace A027961.P10562464348940615794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n + 1) % (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A027961.P10562464348940615794

namespace A027961

/-- `ceil(∑[ϕ^((n+1)%(2*n+1))])` -/
def P10562464348940615794.Spec : Prop :=
  ∀ n, P10562464348940615794.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P18207658060921953781

`4-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A027961.P18207658060921953781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (1 - a (n - 1) - a (n - 2))

end

end A027961.P18207658060921953781

namespace A027961

/-- `4-floor(1-a(n-1)-a(n-2))` -/
def P18207658060921953781.Spec : Prop :=
  ∀ n, P18207658060921953781.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P16121386685726228293

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A027961.P16121386685726228293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027961.P16121386685726228293

namespace A027961

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P16121386685726228293.Spec : Prop :=
  ∀ n, P16121386685726228293.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P17597968842404702067

`4-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A027961.P17597968842404702067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A027961.P17597968842404702067

namespace A027961

/-- `4-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P17597968842404702067.Spec : Prop :=
  ∀ n, P17597968842404702067.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P17605155986522948878

`∑[abs(A075193(n))]`
-/

namespace A027961.P17605155986522948878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027961.P17605155986522948878

namespace A027961

/-- `∑[abs(A075193(n))]` -/
def P17605155986522948878.Spec : Prop :=
  ∀ n, P17605155986522948878.a n = A027961 (n + 1)

end A027961

/-! ## A027961.P9531674944012726442

`∑[A000032(n+1)]`
-/

namespace A027961.P9531674944012726442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027961.P9531674944012726442

namespace A027961

/-- `∑[A000032(n+1)]` -/
def P9531674944012726442.Spec : Prop :=
  ∀ n, P9531674944012726442.a n = A027961 (n + 1)

end A027961

/-!
# A027963: T(n,n+3), T given by A027960.

The programs for A027963, the canonical program `A027963.P650075073565367189` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027963 has offset 3).

The definition of A027963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027963.P3056450203315128877

`∑[∑[ogf((1+2x)/(1-2x+x^3))]]`
-/

namespace A027963.P3056450203315128877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P3056450203315128877

namespace A027963

/-- `∑[∑[ogf((1+2x)/(1-2x+x^3))]]` -/
def P3056450203315128877.Spec : Prop :=
  ∀ n, P3056450203315128877.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P650075073565367189

`∑[∑[∑[a(n-1)+a(n-2)]]]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027963

/-- `∑[∑[∑[a(n-1)+a(n-2)]]]` -/
def P650075073565367189.Spec : Prop :=
  ∀ n, (P650075073565367189.a n : ℤ) = A027963 (n + 3)

theorem P650075073565367189.correct : P650075073565367189.Spec := by
  intro n
  simp only [A027963, Nat.add_sub_cancel]

end A027963

/-! ## A027963.P10548261475507596918

`∑[A023537(n+1)]`
-/

namespace A027963.P10548261475507596918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P10548261475507596918

namespace A027963

/-- `∑[A023537(n+1)]` -/
def P10548261475507596918.Spec : Prop :=
  ∀ n, P10548261475507596918.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P233102591695591896

`∑[∑[A027961(n+1)]]`
-/

namespace A027963.P233102591695591896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P233102591695591896

namespace A027963

/-- `∑[∑[A027961(n+1)]]` -/
def P233102591695591896.Spec : Prop :=
  ∀ n, P233102591695591896.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P6075231436565490737

`∑[∑[∑[A000032(n+1)]]]`
-/

namespace A027963.P6075231436565490737
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P6075231436565490737

namespace A027963

/-- `∑[∑[∑[A000032(n+1)]]]` -/
def P6075231436565490737.Spec : Prop :=
  ∀ n, P6075231436565490737.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P4464688044050541628

`∑[∑[∑[A000204(n+1)]]]`
-/

namespace A027963.P4464688044050541628
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P4464688044050541628

namespace A027963

/-- `∑[∑[∑[A000204(n+1)]]]` -/
def P4464688044050541628.Spec : Prop :=
  ∀ n, P4464688044050541628.a n = A027963 (n + 3)

theorem P4464688044050541628.correct : P4464688044050541628.Spec := by
  intro n
  simp only [A027963, Nat.add_sub_cancel, A027963.P4464688044050541628.f3, A027963.P4464688044050541628.f2, A027963.P4464688044050541628.f1, A027963.P4464688044050541628.a, A027963.P650075073565367189.f3, A027963.P650075073565367189.f2, A027963.P650075073565367189.f1, A027963.P650075073565367189.a, A000204, A000204.P16665566879852712575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027963

/-! ## A027963.P1357840994357096665

`∑[∑[∑[A001610(n)+1]]]`
-/

namespace A027963.P1357840994357096665
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P1357840994357096665

namespace A027963

/-- `∑[∑[∑[A001610(n)+1]]]` -/
def P1357840994357096665.Spec : Prop :=
  ∀ n, P1357840994357096665.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P5117425764330719003

`∑[∑[∑[A329723(n+3)]]]`
-/

namespace A027963.P5117425764330719003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P5117425764330719003

namespace A027963

/-- `∑[∑[∑[A329723(n+3)]]]` -/
def P5117425764330719003.Spec : Prop :=
  ∀ n, P5117425764330719003.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P7191538776689726773

`∑[∑[∑[A090244(2*n)]]]`
-/

namespace A027963.P7191538776689726773
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P7191538776689726773

namespace A027963

/-- `∑[∑[∑[A090244(2*n)]]]` -/
def P7191538776689726773.Spec : Prop :=
  ∀ n, P7191538776689726773.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P13333749840350549297

`∑[∑[A206417(n+1)+1]]`
-/

namespace A027963.P13333749840350549297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P13333749840350549297

namespace A027963

/-- `∑[∑[A206417(n+1)+1]]` -/
def P13333749840350549297.Spec : Prop :=
  ∀ n, P13333749840350549297.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P10297882306081761928

`∑[∑[A014739(n+1)-1]]`
-/

namespace A027963.P10297882306081761928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P10297882306081761928

namespace A027963

/-- `∑[∑[A014739(n+1)-1]]` -/
def P10297882306081761928.Spec : Prop :=
  ∀ n, P10297882306081761928.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P3935967342458618842

`∑[A192978(n)+(n+1)²]`
-/

namespace A027963.P3935967342458618842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P3935967342458618842

namespace A027963

/-- `∑[A192978(n)+(n+1)²]` -/
def P3935967342458618842.Spec : Prop :=
  ∀ n, P3935967342458618842.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P11551876304313983446

`∑[∑[A066982(n+2)+n]]`
-/

namespace A027963.P11551876304313983446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 2) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P11551876304313983446

namespace A027963

/-- `∑[∑[A066982(n+2)+n]]` -/
def P11551876304313983446.Spec : Prop :=
  ∀ n, P11551876304313983446.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P1020576241662606930

`∑[∑[∑[record[A000032(n)]]-1]]`
-/

namespace A027963.P1020576241662606930
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P1020576241662606930

namespace A027963

/-- `∑[∑[∑[record[A000032(n)]]-1]]` -/
def P1020576241662606930.Spec : Prop :=
  ∀ n, P1020576241662606930.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P3515855705787662709

`∑[A023550(n+1)-(n+1)]`
-/

namespace A027963.P3515855705787662709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023550 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P3515855705787662709

namespace A027963

/-- `∑[A023550(n+1)-(n+1)]` -/
def P3515855705787662709.Spec : Prop :=
  ∀ n, P3515855705787662709.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P7922081923982705723

`∑[A027181(n+1)-(n+2)]`
-/

namespace A027963.P7922081923982705723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P7922081923982705723

namespace A027963

/-- `∑[A027181(n+1)-(n+2)]` -/
def P7922081923982705723.Spec : Prop :=
  ∀ n, P7922081923982705723.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P5100132282625468639

`∑[∑[∑[A000211(n+1)-2]]]`
-/

namespace A027963.P5100132282625468639
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P5100132282625468639

namespace A027963

/-- `∑[∑[∑[A000211(n+1)-2]]]` -/
def P5100132282625468639.Spec : Prop :=
  ∀ n, P5100132282625468639.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P11214363715933993879

`∑[∑[∑[A082587(2*n+1)]]]`
-/

namespace A027963.P11214363715933993879
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P11214363715933993879

namespace A027963

/-- `∑[∑[∑[A082587(2*n+1)]]]` -/
def P11214363715933993879.Spec : Prop :=
  ∀ n, P11214363715933993879.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P4348252022240643016

`A053808(n)+A014162(n)`
-/

namespace A027963.P4348252022240643016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 n + A014162 n

end

end A027963.P4348252022240643016

namespace A027963

/-- `A053808(n)+A014162(n)` -/
def P4348252022240643016.Spec : Prop :=
  ∀ n, P4348252022240643016.a n = A027963 (n + 3)

end A027963

/-! ## A027963.P18098622791395746302

`∑[∑[∑[A000045(n+2)+A000045(n)]]]`
-/

namespace A027963.P18098622791395746302
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027963.P18098622791395746302

namespace A027963

/-- `∑[∑[∑[A000045(n+2)+A000045(n)]]]` -/
def P18098622791395746302.Spec : Prop :=
  ∀ n, P18098622791395746302.a n = A027963 (n + 3)

end A027963

/-!
# A027964: T(n,n+4), T given by A027960.

The programs for A027964, the canonical program `A027964.P4648428431722420487` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027964 has offset 4).

The definition of A027964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027964.P416230988842967154

`∑[∑[∑[ogf((1+2x)/(1-2x+x^3))]]]`
-/

namespace A027964.P416230988842967154
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, 0, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P416230988842967154

namespace A027964

/-- `∑[∑[∑[ogf((1+2x)/(1-2x+x^3))]]]` -/
def P416230988842967154.Spec : Prop :=
  ∀ n, P416230988842967154.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P4648428431722420487

`∑[∑[∑[∑[a(n-1)+a(n-2)]]]]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027964

/-- `∑[∑[∑[∑[a(n-1)+a(n-2)]]]]` -/
def P4648428431722420487.Spec : Prop :=
  ∀ n, (P4648428431722420487.a n : ℤ) = A027964 (n + 4)

theorem P4648428431722420487.correct : P4648428431722420487.Spec := by
  intro n
  simp only [A027964, Nat.add_sub_cancel]

end A027964

/-! ## A027964.P7351199870556428184

`∑[A027963(n+3)]`
-/

namespace A027964.P7351199870556428184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P7351199870556428184

namespace A027964

/-- `∑[A027963(n+3)]` -/
def P7351199870556428184.Spec : Prop :=
  ∀ n, P7351199870556428184.a n = A027964 (n + 4)

theorem P7351199870556428184.correct : P7351199870556428184.Spec := by
  intro n
  simp only [A027964, Nat.add_sub_cancel, A027964.P7351199870556428184.f1, A027964.P7351199870556428184.a, A027964.P4648428431722420487.f4, A027964.P4648428431722420487.f3, A027964.P4648428431722420487.f2, A027964.P4648428431722420487.f1, A027964.P4648428431722420487.a, A027963, A027963.P650075073565367189.f3, A027963.P650075073565367189.f2, A027963.P650075073565367189.f1, A027963.P650075073565367189.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027964

/-! ## A027964.P12064988941508593491

`∑[∑[A023537(n+1)]]`
-/

namespace A027964.P12064988941508593491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P12064988941508593491

namespace A027964

/-- `∑[∑[A023537(n+1)]]` -/
def P12064988941508593491.Spec : Prop :=
  ∀ n, P12064988941508593491.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P11356321833423614581

`∑[∑[∑[A027961(n+1)]]]`
-/

namespace A027964.P11356321833423614581
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P11356321833423614581

namespace A027964

/-- `∑[∑[∑[A027961(n+1)]]]` -/
def P11356321833423614581.Spec : Prop :=
  ∀ n, P11356321833423614581.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P235414239779642226

`∑[∑[∑[∑[A000032(n+1)]]]]`
-/

namespace A027964.P235414239779642226
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P235414239779642226

namespace A027964

/-- `∑[∑[∑[∑[A000032(n+1)]]]]` -/
def P235414239779642226.Spec : Prop :=
  ∀ n, P235414239779642226.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P16601359331828973212

`A053809(n)+A014166(n)`
-/

namespace A027964.P16601359331828973212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 n + A014166 n

end

end A027964.P16601359331828973212

namespace A027964

/-- `A053809(n)+A014166(n)` -/
def P16601359331828973212.Spec : Prop :=
  ∀ n, P16601359331828973212.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P7125558897398724594

`A014166(n+1)+2*A014166(n)`
-/

namespace A027964.P7125558897398724594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1) + 2 * A014166 n

end

end A027964.P7125558897398724594

namespace A027964

/-- `A014166(n+1)+2*A014166(n)` -/
def P7125558897398724594.Spec : Prop :=
  ∀ n, P7125558897398724594.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P17959864899404495985

`(A213570(n+1)+A053808(n))/2`
-/

namespace A027964.P17959864899404495985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213570 (n + 1) + A053808 n : ℚ) / 2

end

end A027964.P17959864899404495985

namespace A027964

/-- `(A213570(n+1)+A053808(n))/2` -/
def P17959864899404495985.Spec : Prop :=
  ∀ n, P17959864899404495985.a n = (A027964 (n + 4) : ℚ)

end A027964

/-! ## A027964.P14521599992895255196

`∪[A027017(n+1), A027001(n+2)]`
-/

namespace A027964.P14521599992895255196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027001 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A027964.P14521599992895255196

namespace A027964

/-- `∪[A027017(n+1), A027001(n+2)]` -/
def P14521599992895255196.Spec : Prop :=
  ∀ n, (P14521599992895255196.a n : ℤ) = A027964 (n + 4)

end A027964

/-! ## A027964.P5611089989788869123

`A053298(n+1)-(A053298(n)+A027963(n+4))`
-/

namespace A027964.P5611089989788869123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (n + 1) - (A053298 n + A027963 (n + 4))

end

end A027964.P5611089989788869123

namespace A027964

/-- `A053298(n+1)-(A053298(n)+A027963(n+4))` -/
def P5611089989788869123.Spec : Prop :=
  ∀ n, P5611089989788869123.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P5755092538436488844

`∑[∑[record[A104793(n+1)]]]`
-/

namespace A027964.P5755092538436488844
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P5755092538436488844

namespace A027964

/-- `∑[∑[record[A104793(n+1)]]]` -/
def P5755092538436488844.Spec : Prop :=
  ∀ n, P5755092538436488844.a n = A027964 (n + 4)

end A027964

/-! ## A027964.P2834939705490157846

`∑[∑[A104793(A000124(n))]]`
-/

namespace A027964.P2834939705490157846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104793 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027964.P2834939705490157846

namespace A027964

/-- `∑[∑[A104793(A000124(n))]]` -/
def P2834939705490157846.Spec : Prop :=
  ∀ n, P2834939705490157846.a n = A027964 (n + 4)

end A027964

/-!
# A027965: T(n, 2*n-3), T given by A027960.

The programs for A027965, the canonical program `A027965.P18296804649105090244` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027965 has offset 2).

The definition of A027965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027965.P8344392198782464039

`(18-10*(n+2)+3*(n+2)²+(n+2)^3)/6`
-/

namespace A027965.P8344392198782464039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 - (10 * (n + 2) : ℤ) + (3 * (n + 2) ^ 2 : ℤ) + ((n + 2) ^ 3 : ℤ) : ℚ) / 6

end

end A027965.P8344392198782464039

namespace A027965

/-- `(18-10*(n+2)+3*(n+2)²+(n+2)^3)/6` -/
def P8344392198782464039.Spec : Prop :=
  ∀ n, P8344392198782464039.a n = (A027965 (n + 2) : ℚ)

theorem P8344392198782464039.correct : P8344392198782464039.Spec := by
  intro n
  simp only [A027965, Nat.add_sub_cancel, A027965.P8344392198782464039.a, A027965.P18296804649105090244.a, A008778, A008778.P5727098079324999072.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027965

/-! ## A027965.P8864870197020047859

`A074742(n+1)`
-/

namespace A027965.P8864870197020047859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 (n + 1)

end

end A027965.P8864870197020047859

namespace A027965

/-- `A074742(n+1)` -/
def P8864870197020047859.Spec : Prop :=
  ∀ n, P8864870197020047859.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P18296804649105090244

`A008778(n)+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027965

/-- `A008778(n)+2` -/
def P18296804649105090244.Spec : Prop :=
  ∀ n, P18296804649105090244.a n = A027965 (n + 2)

theorem P18296804649105090244.correct : P18296804649105090244.Spec := by
  intro n
  simp only [A027965, Nat.add_sub_cancel]

end A027965

/-! ## A027965.P17034367121621403065

`Δ[C(n+4, 4)-n²]`
-/

namespace A027965.P17034367121621403065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027965.P17034367121621403065

namespace A027965

/-- `Δ[C(n+4, 4)-n²]` -/
def P17034367121621403065.Spec : Prop :=
  ∀ n, P17034367121621403065.a n = A027965 (n + 2)

theorem P17034367121621403065.correct : P17034367121621403065.Spec := by
  intro n
  simp only [A027965, Nat.add_sub_cancel, A027965.P17034367121621403065.f1, A027965.P17034367121621403065.a, A027965.P18296804649105090244.a, A008778, A008778.P5727098079324999072.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027965

/-! ## A027965.P15344776511268734582

`abs(2*n+1-C(n+4, 3))`
-/

namespace A027965.P15344776511268734582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - (Nat.choose (n + 4) 3 : ℤ)|

end

end A027965.P15344776511268734582

namespace A027965

/-- `abs(2*n+1-C(n+4, 3))` -/
def P15344776511268734582.Spec : Prop :=
  ∀ n, P15344776511268734582.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P1324085088292162983

`record[C(n+2, 3)-2*n+3]`
-/

namespace A027965.P1324085088292162983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) - (2 * n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027965.P1324085088292162983

namespace A027965

/-- `record[C(n+2, 3)-2*n+3]` -/
def P1324085088292162983.Spec : Prop :=
  ∀ n, P1324085088292162983.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P8439295787920150425

`∑[∑[2*a(n-1)-n]]` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A027965.P8439295787920150425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4] fun n f2 =>
  2 * f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027965.P8439295787920150425

namespace A027965

/-- `∑[∑[2*a(n-1)-n]]` -/
def P8439295787920150425.Spec : Prop :=
  ∀ n, P8439295787920150425.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P7644670518582740612

`∑[∑[floor(a(n-1)²/n)]]` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A027965.P7644670518582740612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4] fun n f2 =>
  ⌊(f2 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027965.P7644670518582740612

namespace A027965

/-- `∑[∑[floor(a(n-1)²/n)]]` -/
def P7644670518582740612.Spec : Prop :=
  ∀ n, P7644670518582740612.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P11339065400474364577

`∑[∑[a((n+1)%n)+n+1]]` with `a(0)=3, a(1)=1`
-/

namespace A027965.P11339065400474364577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 ((n + 1) % n) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027965.P11339065400474364577

namespace A027965

/-- `∑[∑[a((n+1)%n)+n+1]]` -/
def P11339065400474364577.Spec : Prop :=
  ∀ n, (P11339065400474364577.a n : ℤ) = A027965 (n + 2)

end A027965

/-! ## A027965.P5393628884033585702

`C(n, 3)+4*C(n, 2)+4*n+3`
-/

namespace A027965.P5393628884033585702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 4 * Nat.choose n 2 + 4 * n + 3

end

end A027965.P5393628884033585702

namespace A027965

/-- `C(n, 3)+4*C(n, 2)+4*n+3` -/
def P5393628884033585702.Spec : Prop :=
  ∀ n, (P5393628884033585702.a n : ℤ) = A027965 (n + 2)

theorem P5393628884033585702.correct : P5393628884033585702.Spec := by
  intro n
  simp only [A027965, Nat.add_sub_cancel, A027965.P5393628884033585702.a, A027965.P18296804649105090244.a, A008778, A008778.P5727098079324999072.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027965

/-! ## A027965.P14316256882508296113

`record[a(n-2)+(n+2)*(n-2)]` with `a(0)=3, a(1)=2`
-/

namespace A027965.P14316256882508296113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 2) + (n + 2 : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027965.P14316256882508296113

namespace A027965

/-- `record[a(n-2)+(n+2)*(n-2)]` -/
def P14316256882508296113.Spec : Prop :=
  ∀ n, P14316256882508296113.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P3997623968919932641

`∑[∑[a(n-1)-(n-a(n-1))]]` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A027965.P3997623968919932641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4] fun n f2 =>
  f2 (n - 1) - ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027965.P3997623968919932641

namespace A027965

/-- `∑[∑[a(n-1)-(n-a(n-1))]]` -/
def P3997623968919932641.Spec : Prop :=
  ∀ n, P3997623968919932641.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P10737532324207585900

`A027378(n)+2+n`
-/

namespace A027965.P10737532324207585900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027378 n + 2 + (n : ℤ)

end

end A027965.P10737532324207585900

namespace A027965

/-- `A027378(n)+2+n` -/
def P10737532324207585900.Spec : Prop :=
  ∀ n, P10737532324207585900.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P14049878718418904557

`A005286(n)+2-n`
-/

namespace A027965.P14049878718418904557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n + (2 - (n : ℤ))

end

end A027965.P14049878718418904557

namespace A027965

/-- `A005286(n)+2-n` -/
def P14049878718418904557.Spec : Prop :=
  ∀ n, P14049878718418904557.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P1205910293186110458

`A006503(n)+3+n`
-/

namespace A027965.P1205910293186110458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + 3 + (n : ℤ)

end

end A027965.P1205910293186110458

namespace A027965

/-- `A006503(n)+3+n` -/
def P1205910293186110458.Spec : Prop :=
  ∀ n, P1205910293186110458.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P4921585008787333525

`A005586(n)+3-n`
-/

namespace A027965.P4921585008787333525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + (3 - (n : ℤ))

end

end A027965.P4921585008787333525

namespace A027965

/-- `A005586(n)+3-n` -/
def P4921585008787333525.Spec : Prop :=
  ∀ n, P4921585008787333525.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P10607304610942240651

`A062748(n)-2*n`
-/

namespace A027965.P10607304610942240651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n - (2 * n : ℤ)

end

end A027965.P10607304610942240651

namespace A027965

/-- `A062748(n)-2*n` -/
def P10607304610942240651.Spec : Prop :=
  ∀ n, P10607304610942240651.a n = A027965 (n + 2)

theorem P10607304610942240651.correct : P10607304610942240651.Spec := by
  intro n
  simp only [A027965, Nat.add_sub_cancel, A027965.P10607304610942240651.a, A027965.P18296804649105090244.a, A008778, A008778.P5727098079324999072.a, A062748, A062748.P14956383250975312494.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027965

/-! ## A027965.P971469438818766661

`∑[abs(A046691(n))+2]`
-/

namespace A027965.P971469438818766661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046691 n| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027965.P971469438818766661

namespace A027965

/-- `∑[abs(A046691(n))+2]` -/
def P971469438818766661.Spec : Prop :=
  ∀ n, P971469438818766661.a n = A027965 (n + 2)

end A027965

/-! ## A027965.P15852591433229824923

`record[A074742(abs(1-n))]`
-/

namespace A027965.P15852591433229824923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027965.P15852591433229824923

namespace A027965

/-- `record[A074742(abs(1-n))]` -/
def P15852591433229824923.Spec : Prop :=
  ∀ n, P15852591433229824923.a n = A027965 (n + 2)

end A027965

/-!
# A027966: T(n, 2*n-4), T given by A027960.

The programs for A027966, the canonical program `A027966.P3081451567528536180` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027966 has offset 2).

The definition of A027966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027966.P3081451567528536180

`((n+2)^4+2*(n+2)^3-25*(n+2)²+94*(n+2)-96)/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027966

/-- `((n+2)^4+2*(n+2)^3-25*(n+2)²+94*(n+2)-96)/24` -/
def P3081451567528536180.Spec : Prop :=
  ∀ n, P3081451567528536180.a n = (A027966 (n + 2) : ℚ)

end A027966

/-! ## A027966.P7748682212342890529

`C(n+4, 4)-n²`
-/

namespace A027966.P7748682212342890529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) - (n ^ 2 : ℤ)

end

end A027966.P7748682212342890529

namespace A027966

/-- `C(n+4, 4)-n²` -/
def P7748682212342890529.Spec : Prop :=
  ∀ n, P7748682212342890529.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P968306053425500694

`∑[∑[floor(∑[n+1]-atan(n))]]`
-/

namespace A027966.P968306053425500694
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℝ) - Real.arctan (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027966.P968306053425500694

namespace A027966

/-- `∑[∑[floor(∑[n+1]-atan(n))]]` -/
def P968306053425500694.Spec : Prop :=
  ∀ n, P968306053425500694.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P13524589863243565888

`∑[∑[∑[n+1]-ceil(atan(n))]]`
-/

namespace A027966.P13524589863243565888
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - ⌈Real.arctan (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027966.P13524589863243565888

namespace A027966

/-- `∑[∑[∑[n+1]-ceil(atan(n))]]` -/
def P13524589863243565888.Spec : Prop :=
  ∀ n, P13524589863243565888.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P7160597679918971889

`∑[C(n+3, 3)-2*n]+n`
-/

namespace A027966.P7160597679918971889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A027966.P7160597679918971889

namespace A027966

/-- `∑[C(n+3, 3)-2*n]+n` -/
def P7160597679918971889.Spec : Prop :=
  ∀ n, P7160597679918971889.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P5698899778900566306

`∑[∑[∑[a(n-1)+1]]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A027966.P5698899778900566306
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027966.P5698899778900566306

namespace A027966

/-- `∑[∑[∑[a(n-1)+1]]]` -/
def P5698899778900566306.Spec : Prop :=
  ∀ n, (P5698899778900566306.a n : ℤ) = A027966 (n + 2)

end A027966

/-! ## A027966.P7208762581114963407

`∑[A074742(n)]-1`
-/

namespace A027966.P7208762581114963407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A027966.P7208762581114963407

namespace A027966

/-- `∑[A074742(n)]-1` -/
def P7208762581114963407.Spec : Prop :=
  ∀ n, P7208762581114963407.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P16916983792909635231

`A368881(n)+2*n`
-/

namespace A027966.P16916983792909635231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368881 n + (2 * n : ℤ)

end

end A027966.P16916983792909635231

namespace A027966

/-- `A368881(n)+2*n` -/
def P16916983792909635231.Spec : Prop :=
  ∀ n, P16916983792909635231.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P3481575453624196191

`∑[A116721(n+1)+n]`
-/

namespace A027966.P3481575453624196191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027966.P3481575453624196191

namespace A027966

/-- `∑[A116721(n+1)+n]` -/
def P3481575453624196191.Spec : Prop :=
  ∀ n, P3481575453624196191.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P15638502777403075796

`∑[A121968(n+1)]+n`
-/

namespace A027966.P15638502777403075796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A027966.P15638502777403075796

namespace A027966

/-- `∑[A121968(n+1)]+n` -/
def P15638502777403075796.Spec : Prop :=
  ∀ n, P15638502777403075796.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P642535170284393485

`∑[A000292(n+1)]-n²`
-/

namespace A027966.P642535170284393485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A027966.P642535170284393485

namespace A027966

/-- `∑[A000292(n+1)]-n²` -/
def P642535170284393485.Spec : Prop :=
  ∀ n, P642535170284393485.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P12011868699772114784

`∑[A089071(n+1)+∑[∑[n]]]`
-/

namespace A027966.P12011868699772114784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027966.P12011868699772114784

namespace A027966

/-- `∑[A089071(n+1)+∑[∑[n]]]` -/
def P12011868699772114784.Spec : Prop :=
  ∀ n, P12011868699772114784.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P14578879639645914851

`A027965(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A027966.P14578879639645914851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027965 (n + 1) + a (n - 1)

end

end A027966.P14578879639645914851

namespace A027966

/-- `A027965(n+1)+a(n-1)` -/
def P14578879639645914851.Spec : Prop :=
  ∀ n, P14578879639645914851.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P9663526603450248387

`∑[∑[∑[n+1]]-A004277(n)+1]`
-/

namespace A027966.P9663526603450248387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A004277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027966.P9663526603450248387

namespace A027966

/-- `∑[∑[∑[n+1]]-A004277(n)+1]` -/
def P9663526603450248387.Spec : Prop :=
  ∀ n, P9663526603450248387.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P9217950953593666426

`A055417(n)+A006003(n)`
-/

namespace A027966.P9217950953593666426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n + A006003 n

end

end A027966.P9217950953593666426

namespace A027966

/-- `A055417(n)+A006003(n)` -/
def P9217950953593666426.Spec : Prop :=
  ∀ n, P9217950953593666426.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P11206349002879628634

`A229183(n)+A000127(n+1)`
-/

namespace A027966.P11206349002879628634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n + A000127 (n + 1)

end

end A027966.P11206349002879628634

namespace A027966

/-- `A229183(n)+A000127(n+1)` -/
def P11206349002879628634.Spec : Prop :=
  ∀ n, P11206349002879628634.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P6901920102143293272

`A318054(n)+A081490(n+1)`
-/

namespace A027966.P6901920102143293272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n + A081490 (n + 1)

end

end A027966.P6901920102143293272

namespace A027966

/-- `A318054(n)+A081490(n+1)` -/
def P6901920102143293272.Spec : Prop :=
  ∀ n, P6901920102143293272.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P1469767070108928509

`A033547(n)+A027927(n+2)`
-/

namespace A027966.P1469767070108928509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n + A027927 (n + 2)

end

end A027966.P1469767070108928509

namespace A027966

/-- `A033547(n)+A027927(n+2)` -/
def P1469767070108928509.Spec : Prop :=
  ∀ n, P1469767070108928509.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P3924702177742378588

`A086274(n+1)-A161680(n)`
-/

namespace A027966.P3924702177742378588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) - A161680 n

end

end A027966.P3924702177742378588

namespace A027966

/-- `A086274(n+1)-A161680(n)` -/
def P3924702177742378588.Spec : Prop :=
  ∀ n, P3924702177742378588.a n = A027966 (n + 2)

end A027966

/-! ## A027966.P4189340509144166595

`A223764(n+1)-A033816(n)`
-/

namespace A027966.P4189340509144166595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (n + 1) - A033816 n

end

end A027966.P4189340509144166595

namespace A027966

/-- `A223764(n+1)-A033816(n)` -/
def P4189340509144166595.Spec : Prop :=
  ∀ n, P4189340509144166595.a n = A027966 (n + 2)

end A027966

/-!
# A027967: T(n, 2*n-5), T given by A027960.

The programs for A027967, the canonical program `A027967.P7774733045436123357` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027967 has offset 3).

The definition of A027967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027967.P7774733045436123357

`(840-736*(n+3)+300*(n+3)²-45*(n+3)^3+(n+3)^5)/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027967

/-- `(840-736*(n+3)+300*(n+3)²-45*(n+3)^3+(n+3)^5)/120` -/
def P7774733045436123357.Spec : Prop :=
  ∀ n, P7774733045436123357.a n = (A027967 (n + 3) : ℚ)

end A027967

/-! ## A027967.P104101127440164331

`∑[C(n+4, 4)-n²]+2`
-/

namespace A027967.P104101127440164331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A027967.P104101127440164331

namespace A027967

/-- `∑[C(n+4, 4)-n²]+2` -/
def P104101127440164331.Spec : Prop :=
  ∀ n, P104101127440164331.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P2927746999610943699

`abs(∑[∑[A116721(n+1)+n]+1]+1-n)`
-/

namespace A027967.P2927746999610943699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)|

end

end A027967.P2927746999610943699

namespace A027967

/-- `abs(∑[∑[A116721(n+1)+n]+1]+1-n)` -/
def P2927746999610943699.Spec : Prop :=
  ∀ n, P2927746999610943699.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P1628819873371200500

`∑[A027966(n+2)+A000038(n)]`
-/

namespace A027967.P1628819873371200500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027966 (n + 2) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027967.P1628819873371200500

namespace A027967

/-- `∑[A027966(n+2)+A000038(n)]` -/
def P1628819873371200500.Spec : Prop :=
  ∀ n, P1628819873371200500.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P3991674734888884918

`abs(A051745(n+1)-A000330(n)-(n-1))`
-/

namespace A027967.P3991674734888884918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051745 (n + 1) - A000330 n - ((n : ℤ) - 1)|

end

end A027967.P3991674734888884918

namespace A027967

/-- `abs(A051745(n+1)-A000330(n)-(n-1))` -/
def P3991674734888884918.Spec : Prop :=
  ∀ n, P3991674734888884918.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P16704901622083204958

`Δ[A027968(n+3)]`
-/

namespace A027967.P16704901622083204958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027968 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027967.P16704901622083204958

namespace A027967

/-- `Δ[A027968(n+3)]` -/
def P16704901622083204958.Spec : Prop :=
  ∀ n, P16704901622083204958.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P12809026005690978116

`A027968(n+4)-A027968(n+3)`
-/

namespace A027967.P12809026005690978116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027968 (n + 4) - A027968 (n + 3)

end

end A027967.P12809026005690978116

namespace A027967

/-- `A027968(n+4)-A027968(n+3)` -/
def P12809026005690978116.Spec : Prop :=
  ∀ n, P12809026005690978116.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P8653506473288238906

`A000127(n+1)+A154322(n+1)+A000292(n)`
-/

namespace A027967.P8653506473288238906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (A154322 (n + 1) + A000292 n)

end

end A027967.P8653506473288238906

namespace A027967

/-- `A000127(n+1)+A154322(n+1)+A000292(n)` -/
def P8653506473288238906.Spec : Prop :=
  ∀ n, P8653506473288238906.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P2246333685352075933

`A179257(n+1)+A116701(n+2)`
-/

namespace A027967.P2246333685352075933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179257 (n + 1) + A116701 (n + 2)

end

end A027967.P2246333685352075933

namespace A027967

/-- `A179257(n+1)+A116701(n+2)` -/
def P2246333685352075933.Spec : Prop :=
  ∀ n, P2246333685352075933.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P10020541151545170434

`∑[A227259(A065033(2*n))+n]`
-/

namespace A027967.P10020541151545170434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227259 (A065033 (2 * n)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027967.P10020541151545170434

namespace A027967

/-- `∑[A227259(A065033(2*n))+n]` -/
def P10020541151545170434.Spec : Prop :=
  ∀ n, P10020541151545170434.a n = A027967 (n + 3)

end A027967

/-! ## A027967.P4546118235962681718

`A027011(∑[n+3]+1)`
-/

namespace A027967.P4546118235962681718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027967.P4546118235962681718

namespace A027967

/-- `A027011(∑[n+3]+1)` -/
def P4546118235962681718.Spec : Prop :=
  ∀ n, P4546118235962681718.a n = A027967 (n + 3)

end A027967

/-!
# A027968: a(n) = T(n, 2*n-6), T given by A027960.

The programs for A027968, the canonical program `A027968.P9996318138673400809` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027968 has offset 3).

The definition of A027968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027968.P9996318138673400809

`A027967(n+2)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027968

/-- `A027967(n+2)+a(n-1)` -/
def P9996318138673400809.Spec : Prop :=
  ∀ n, P9996318138673400809.a n = A027968 (n + 3)

theorem P9996318138673400809.correct : P9996318138673400809.Spec := by
  intro n
  simp only [A027968, Nat.add_sub_cancel]

end A027968

/-! ## A027968.P3766887164482049556

`∑[A027967(n+3)]+1-A027967(n+3)`
-/

namespace A027968.P3766887164482049556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027967 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027967 (n + 3))

end

end A027968.P3766887164482049556

namespace A027968

/-- `∑[A027967(n+3)]+1-A027967(n+3)` -/
def P3766887164482049556.Spec : Prop :=
  ∀ n, P3766887164482049556.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P10205614397579951564

`Δ[A027969(n+4)]-A027967(n+3)`
-/

namespace A027968.P10205614397579951564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027969 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027967 (n + 3)

end

end A027968.P10205614397579951564

namespace A027968

/-- `Δ[A027969(n+4)]-A027967(n+3)` -/
def P10205614397579951564.Spec : Prop :=
  ∀ n, P10205614397579951564.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P3176313708293525772

`A027969(n+5)-(A027969(n+4)+A027967(n+3))`
-/

namespace A027968.P3176313708293525772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027969 (n + 5) - (A027969 (n + 4) + A027967 (n + 3))

end

end A027968.P3176313708293525772

namespace A027968

/-- `A027969(n+5)-(A027969(n+4)+A027967(n+3))` -/
def P3176313708293525772.Spec : Prop :=
  ∀ n, P3176313708293525772.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P7908590629652359078

`A057703(n+1)+A004006(n)+A000579(n+4)`
-/

namespace A027968.P7908590629652359078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (n + 1) + (A004006 n + A000579 (n + 4))

end

end A027968.P7908590629652359078

namespace A027968

/-- `A057703(n+1)+A004006(n)+A000579(n+4)` -/
def P7908590629652359078.Spec : Prop :=
  ∀ n, P7908590629652359078.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P3813809535877249149

`2*A055806(2*(n+4))-A055806(2*n+7)`
-/

namespace A027968.P3813809535877249149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055806 (2 * (n + 4)) - A055806 (2 * n + 7)

end

end A027968.P3813809535877249149

namespace A027968

/-- `2*A055806(2*(n+4))-A055806(2*n+7)` -/
def P3813809535877249149.Spec : Prop :=
  ∀ n, P3813809535877249149.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P7889896392718072568

`∑[A027011(A034856(n+1))]-2`
-/

namespace A027968.P7889896392718072568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A027968.P7889896392718072568

namespace A027968

/-- `∑[A027011(A034856(n+1))]-2` -/
def P7889896392718072568.Spec : Prop :=
  ∀ n, P7889896392718072568.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P17211732017851156742

`∑[A027011(A055998(n)+1)]-2`
-/

namespace A027968.P17211732017851156742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A055998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A027968.P17211732017851156742

namespace A027968

/-- `∑[A027011(A055998(n)+1)]-2` -/
def P17211732017851156742.Spec : Prop :=
  ∀ n, P17211732017851156742.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P10080404958168257054

`A026998(∑[n+3]+n+3)`
-/

namespace A027968.P10080404958168257054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026998 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A027968.P10080404958168257054

namespace A027968

/-- `A026998(∑[n+3]+n+3)` -/
def P10080404958168257054.Spec : Prop :=
  ∀ n, P10080404958168257054.a n = A027968 (n + 3)

end A027968

/-! ## A027968.P5434701381599824465

`∑[A027960((n+3)²-6)]`
-/

namespace A027968.P5434701381599824465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((n + 3) ^ 2 - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027968.P5434701381599824465

namespace A027968

/-- `∑[A027960((n+3)²-6)]` -/
def P5434701381599824465.Spec : Prop :=
  ∀ n, P5434701381599824465.a n = A027968 (n + 3)

end A027968

/-!
# A027969: a(n) = T(n, 2*n-7), T given by A027960.

The programs for A027969, the canonical program `A027969.P4311928240023189760` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027969 has offset 4).

The definition of A027969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027969.P4311928240023189760

`∑[A027968(n+3)]+2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027969

/-- `∑[A027968(n+3)]+2` -/
def P4311928240023189760.Spec : Prop :=
  ∀ n, P4311928240023189760.a n = A027969 (n + 4)

theorem P4311928240023189760.correct : P4311928240023189760.Spec := by
  intro n
  simp only [A027969, Nat.add_sub_cancel]

end A027969

/-! ## A027969.P9851362640931532689

`A027930(n+4)+2*A027929(n+3)`
-/

namespace A027969.P9851362640931532689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027930 (n + 4) + 2 * A027929 (n + 3)

end

end A027969.P9851362640931532689

namespace A027969

/-- `A027930(n+4)+2*A027929(n+3)` -/
def P9851362640931532689.Spec : Prop :=
  ∀ n, P9851362640931532689.a n = A027969 (n + 4)

end A027969

/-! ## A027969.P14987294621923673163

`∑[∑[A027967(n+3)]+1-A027967(n+3)]+2`
-/

namespace A027969.P14987294621923673163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027967 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A027967 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A027969.P14987294621923673163

namespace A027969

/-- `∑[∑[A027967(n+3)]+1-A027967(n+3)]+2` -/
def P14987294621923673163.Spec : Prop :=
  ∀ n, P14987294621923673163.a n = A027969 (n + 4)

end A027969

/-! ## A027969.P17621722231176634843

`Δ[A027970(n+4)]`
-/

namespace A027969.P17621722231176634843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027970 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027969.P17621722231176634843

namespace A027969

/-- `Δ[A027970(n+4)]` -/
def P17621722231176634843.Spec : Prop :=
  ∀ n, P17621722231176634843.a n = A027969 (n + 4)

end A027969

/-! ## A027969.P7021257275223614102

`A027970(n+5)-A027970(n+4)`
-/

namespace A027969.P7021257275223614102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027970 (n + 5) - A027970 (n + 4)

end

end A027969.P7021257275223614102

namespace A027969

/-- `A027970(n+5)-A027970(n+4)` -/
def P7021257275223614102.Spec : Prop :=
  ∀ n, P7021257275223614102.a n = A027969 (n + 4)

end A027969

/-! ## A027969.P225038764082930462

`A027011(A055998(n+2))`
-/

namespace A027969.P225038764082930462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A055998 (n + 2)).toNat

end

end A027969.P225038764082930462

namespace A027969

/-- `A027011(A055998(n+2))` -/
def P225038764082930462.Spec : Prop :=
  ∀ n, P225038764082930462.a n = A027969 (n + 4)

end A027969

/-! ## A027969.P17306432913446848580

`A027011(A034856(n+3)-1)`
-/

namespace A027969.P17306432913446848580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A034856 (n + 3) - 1).toNat

end

end A027969.P17306432913446848580

namespace A027969

/-- `A027011(A034856(n+3)-1)` -/
def P17306432913446848580.Spec : Prop :=
  ∀ n, P17306432913446848580.a n = A027969 (n + 4)

end A027969

/-! ## A027969.P4194265089645859063

`∑[A027960(A028881(n+4))]+2`
-/

namespace A027969.P4194265089645859063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A028881 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A027969.P4194265089645859063

namespace A027969

/-- `∑[A027960(A028881(n+4))]+2` -/
def P4194265089645859063.Spec : Prop :=
  ∀ n, P4194265089645859063.a n = A027969 (n + 4)

end A027969

/-!
# A027970: a(n) = T(n, 2*n-8), T given by A027960.

The programs for A027970, the canonical program `A027970.P1629718102284868813` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027970 has offset 4).

The definition of A027970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027970.P1629718102284868813

`A027969(n+3)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A027970

/-- `A027969(n+3)+a(n-1)` -/
def P1629718102284868813.Spec : Prop :=
  ∀ n, P1629718102284868813.a n = A027970 (n + 4)

theorem P1629718102284868813.correct : P1629718102284868813.Spec := by
  intro n
  simp only [A027970, Nat.add_sub_cancel]

end A027970

/-! ## A027970.P515294769672135727

`∑[A027969(n+4)]+1-A027969(n+4)`
-/

namespace A027970.P515294769672135727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027969 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A027969 (n + 4))

end

end A027970.P515294769672135727

namespace A027970

/-- `∑[A027969(n+4)]+1-A027969(n+4)` -/
def P515294769672135727.Spec : Prop :=
  ∀ n, P515294769672135727.a n = A027970 (n + 4)

end A027970

/-! ## A027970.P4351883500794747570

`Δ[A027971(n+5)]-A027969(n+4)`
-/

namespace A027970.P4351883500794747570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027969 (n + 4)

end

end A027970.P4351883500794747570

namespace A027970

/-- `Δ[A027971(n+5)]-A027969(n+4)` -/
def P4351883500794747570.Spec : Prop :=
  ∀ n, P4351883500794747570.a n = A027970 (n + 4)

end A027970

/-! ## A027970.P9004180866760786456

`A027971(n+6)-(A027971(n+5)+A027969(n+4))`
-/

namespace A027970.P9004180866760786456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (n + 6) - (A027971 (n + 5) + A027969 (n + 4))

end

end A027970.P9004180866760786456

namespace A027970

/-- `A027971(n+6)-(A027971(n+5)+A027969(n+4))` -/
def P9004180866760786456.Spec : Prop :=
  ∀ n, P9004180866760786456.a n = A027970 (n + 4)

end A027970

/-! ## A027970.P11580102249493363025

`Δ[A027971(n+5)]-(A027930(n+4)+2*A027929(n+3))`
-/

namespace A027970.P11580102249493363025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A027930 (n + 4) + 2 * A027929 (n + 3))

end

end A027970.P11580102249493363025

namespace A027970

/-- `Δ[A027971(n+5)]-(A027930(n+4)+2*A027929(n+3))` -/
def P11580102249493363025.Spec : Prop :=
  ∀ n, P11580102249493363025.a n = A027970 (n + 4)

end A027970

/-! ## A027970.P6251929468978027306

`A026998(A034856(n+3)+n+2)`
-/

namespace A027970.P6251929468978027306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026998 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A027970.P6251929468978027306

namespace A027970

/-- `A026998(A034856(n+3)+n+2)` -/
def P6251929468978027306.Spec : Prop :=
  ∀ n, P6251929468978027306.a n = A027970 (n + 4)

end A027970

/-! ## A027970.P14172001815797895065

`∑[A027960((n+4)²-8)]`
-/

namespace A027970.P14172001815797895065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((n + 4) ^ 2 - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027970.P14172001815797895065

namespace A027970

/-- `∑[A027960((n+4)²-8)]` -/
def P14172001815797895065.Spec : Prop :=
  ∀ n, P14172001815797895065.a n = A027970 (n + 4)

end A027970

/-! ## A027970.P1167439788275079464

`A027960((n+5)²-9)`
-/

namespace A027970.P1167439788275079464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((n + 5) ^ 2 - 9)

end

end A027970.P1167439788275079464

namespace A027970

/-- `A027960((n+5)²-9)` -/
def P1167439788275079464.Spec : Prop :=
  ∀ n, P1167439788275079464.a n = A027970 (n + 4)

end A027970

/-!
# A027971: T(n, 2n-9), T given by A027960.

The programs for A027971, the canonical program `A027971.P13614931778188324641` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027971 has offset 5).

The definition of A027971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027971.P13614931778188324641

`∑[A027970(n+4)]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A027971

/-- `∑[A027970(n+4)]+2` -/
def P13614931778188324641.Spec : Prop :=
  ∀ n, P13614931778188324641.a n = A027971 (n + 5)

theorem P13614931778188324641.correct : P13614931778188324641.Spec := by
  intro n
  simp only [A027971, Nat.add_sub_cancel]

end A027971

/-! ## A027971.P493147081326579398

`A027932(n+5)+2*A027931(n+4)`
-/

namespace A027971.P493147081326579398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027932 (n + 5) + 2 * A027931 (n + 4)

end

end A027971.P493147081326579398

namespace A027971

/-- `A027932(n+5)+2*A027931(n+4)` -/
def P493147081326579398.Spec : Prop :=
  ∀ n, P493147081326579398.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P9212024626681985208

`Δ[A027972(n+5)]`
-/

namespace A027971.P9212024626681985208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027972 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027971.P9212024626681985208

namespace A027971

/-- `Δ[A027972(n+5)]` -/
def P9212024626681985208.Spec : Prop :=
  ∀ n, P9212024626681985208.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P6456021332444953895

`abs(Δ[A027972(A020710(n))])`
-/

namespace A027971.P6456021332444953895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027972 (A020710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A027971.P6456021332444953895

namespace A027971

/-- `abs(Δ[A027972(A020710(n))])` -/
def P6456021332444953895.Spec : Prop :=
  ∀ n, P6456021332444953895.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P9809061909666330266

`A027972(n+6)-A027972(n+5)`
-/

namespace A027971.P9809061909666330266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027972 (n + 6) - A027972 (n + 5)

end

end A027971.P9809061909666330266

namespace A027971

/-- `A027972(n+6)-A027972(n+5)` -/
def P9809061909666330266.Spec : Prop :=
  ∀ n, P9809061909666330266.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P2731923260625758294

`A027972(n+6)+A027972(n+5)*A153881(n+2)`
-/

namespace A027971.P2731923260625758294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027972 (n + 6) + A027972 (n + 5) * A153881 (n + 2)

end

end A027971.P2731923260625758294

namespace A027971

/-- `A027972(n+6)+A027972(n+5)*A153881(n+2)` -/
def P2731923260625758294.Spec : Prop :=
  ∀ n, P2731923260625758294.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P15710769776955428751

`A027011(A046691(n+3))`
-/

namespace A027971.P15710769776955428751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A046691 (n + 3)).toNat

end

end A027971.P15710769776955428751

namespace A027971

/-- `A027011(A046691(n+3))` -/
def P15710769776955428751.Spec : Prop :=
  ∀ n, P15710769776955428751.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P2206016723660956791

`A027011(A034856(n+3)+n+3)`
-/

namespace A027971.P2206016723660956791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A034856 (n + 3) + (n + 3 : ℤ)).toNat

end

end A027971.P2206016723660956791

namespace A027971

/-- `A027011(A034856(n+3)+n+3)` -/
def P2206016723660956791.Spec : Prop :=
  ∀ n, P2206016723660956791.a n = A027971 (n + 5)

end A027971

/-! ## A027971.P9306390973796977649

`A027011(A008778(n+3)-A074742(n+3))`
-/

namespace A027971.P9306390973796977649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (A008778 (n + 3) - A074742 (n + 3)).toNat

end

end A027971.P9306390973796977649

namespace A027971

/-- `A027011(A008778(n+3)-A074742(n+3))` -/
def P9306390973796977649.Spec : Prop :=
  ∀ n, P9306390973796977649.a n = A027971 (n + 5)

end A027971

/-!
# A027972: T(n, 2n-10), T given by A027960.

The programs for A027972, the canonical program `A027972.P3797829496454005148` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027972 has offset 5).

The definition of A027972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027972.P3797829496454005148

`A027971(n+4)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A027972

/-- `A027971(n+4)+a(n-1)` -/
def P3797829496454005148.Spec : Prop :=
  ∀ n, P3797829496454005148.a n = A027972 (n + 5)

theorem P3797829496454005148.correct : P3797829496454005148.Spec := by
  intro n
  simp only [A027972, Nat.add_sub_cancel]

end A027972

/-! ## A027972.P12576658988907518100

`∑[A027971(n^floor(atan(n))+4)]-2`
-/

namespace A027972.P12576658988907518100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A027972.P12576658988907518100

namespace A027972

/-- `∑[A027971(n^floor(atan(n))+4)]-2` -/
def P12576658988907518100.Spec : Prop :=
  ∀ n, P12576658988907518100.a n = A027972 (n + 5)

end A027972

/-! ## A027972.P4096219829336082551

`∑[A027971(round(sqrt(n²+1))+4)]-2`
-/

namespace A027972.P4096219829336082551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A027972.P4096219829336082551

namespace A027972

/-- `∑[A027971(round(sqrt(n²+1))+4)]-2` -/
def P4096219829336082551.Spec : Prop :=
  ∀ n, P4096219829336082551.a n = A027972 (n + 5)

end A027972

/-! ## A027972.P448454359745534088

`∑[A027971(n+5)-A027970(n+4)]-1`
-/

namespace A027972.P448454359745534088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027971 (n + 5) - A027970 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A027972.P448454359745534088

namespace A027972

/-- `∑[A027971(n+5)-A027970(n+4)]-1` -/
def P448454359745534088.Spec : Prop :=
  ∀ n, P448454359745534088.a n = A027972 (n + 5)

end A027972

/-! ## A027972.P18337708741522043110

`A026998(A161680(n+7)-6)`
-/

namespace A027972.P18337708741522043110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026998 (A161680 (n + 7) - 6).toNat

end

end A027972.P18337708741522043110

namespace A027972

/-- `A026998(A161680(n+7)-6)` -/
def P18337708741522043110.Spec : Prop :=
  ∀ n, P18337708741522043110.a n = A027972 (n + 5)

end A027972

/-! ## A027972.P2846441963871982407

`A027960(A104675(n+2)+n+1)`
-/

namespace A027972.P2846441963871982407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A104675 (n + 2) + (n + 1 : ℤ)).toNat

end

end A027972.P2846441963871982407

namespace A027972

/-- `A027960(A104675(n+2)+n+1)` -/
def P2846441963871982407.Spec : Prop :=
  ∀ n, P2846441963871982407.a n = A027972 (n + 5)

end A027972

/-! ## A027972.P6264442004684934317

`A027960(4*(n+2)+A002522(n+4))`
-/

namespace A027972.P6264442004684934317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((4 * (n + 2) : ℤ) + A002522 (n + 4)).toNat

end

end A027972.P6264442004684934317

namespace A027972

/-- `A027960(4*(n+2)+A002522(n+4))` -/
def P6264442004684934317.Spec : Prop :=
  ∀ n, P6264442004684934317.a n = A027972 (n + 5)

end A027972

/-! ## A027972.P5651589795698321502

`A027960(A016789(2*(n+2))+A010000(n+3))`
-/

namespace A027972.P5651589795698321502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A016789 (2 * (n + 2)) + A010000 (n + 3)).toNat

end

end A027972.P5651589795698321502

namespace A027972

/-- `A027960(A016789(2*(n+2))+A010000(n+3))` -/
def P5651589795698321502.Spec : Prop :=
  ∀ n, P5651589795698321502.a n = A027972 (n + 5)

end A027972

/-!
# A027973: a(n) = T(n,n) + T(n,n+1) + ... + T(n,2n), T given by A027960.

The programs for A027973, the canonical program `A027973.P17157778531911406182` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027973 has offset 0).

The definition of A027973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027973.P8415443318859442847

`ogf((1+x-2x^2)/(1-3x+x^2+2x^3))`
-/

namespace A027973.P8415443318859442847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -3, 1, 2] n

end

end A027973.P8415443318859442847

namespace A027973

/-- `ogf((1+x-2x^2)/(1-3x+x^2+2x^3))` -/
def P8415443318859442847.Spec : Prop :=
  ∀ n, P8415443318859442847.a n = A027973 n

end A027973

/-! ## A027973.P2386611751696211680

`round(2^(n+2)-ϕ^(n+2))`
-/

namespace A027973.P2386611751696211680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 2) : ℝ) - Real.goldenRatio ^ (n + 2))

end

end A027973.P2386611751696211680

namespace A027973

/-- `round(2^(n+2)-ϕ^(n+2))` -/
def P2386611751696211680.Spec : Prop :=
  ∀ n, P2386611751696211680.a n = A027973 n

end A027973

/-! ## A027973.P17157778531911406182

`2^n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027973

/-- `2^n+a(n-1)+a(n-2)` -/
def P17157778531911406182.Spec : Prop :=
  ∀ n, (P17157778531911406182.a n : ℤ) = A027973 n

theorem P17157778531911406182.correct : P17157778531911406182.Spec := by
  intro n
  simp only [A027973]

end A027973

/-! ## A027973.P8418175860252330546

`2^(n+1)-A227200(n+1)`
-/

namespace A027973.P8418175860252330546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A227200 (n + 1)

end

end A027973.P8418175860252330546

namespace A027973

/-- `2^(n+1)-A227200(n+1)` -/
def P8418175860252330546.Spec : Prop :=
  ∀ n, P8418175860252330546.a n = A027973 n

end A027973

/-! ## A027973.P9190684312944023140

`2^(n+2)-A000032(n+2)`
-/

namespace A027973.P9190684312944023140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A000032 (n + 2)

end

end A027973.P9190684312944023140

namespace A027973

/-- `2^(n+2)-A000032(n+2)` -/
def P9190684312944023140.Spec : Prop :=
  ∀ n, P9190684312944023140.a n = A027973 n

end A027973

/-! ## A027973.P9162213147273907361

`2^(n+2)-A000204(n+2)`
-/

namespace A027973.P9162213147273907361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A000204 (n + 2)

end

end A027973.P9162213147273907361

namespace A027973

/-- `2^(n+2)-A000204(n+2)` -/
def P9162213147273907361.Spec : Prop :=
  ∀ n, P9162213147273907361.a n = A027973 n

end A027973

/-! ## A027973.P573801241454028078

`2^(n+2)-A169985(n+2)`
-/

namespace A027973.P573801241454028078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A169985 (n + 2)

end

end A027973.P573801241454028078

namespace A027973

/-- `2^(n+2)-A169985(n+2)` -/
def P573801241454028078.Spec : Prop :=
  ∀ n, P573801241454028078.a n = A027973 n

end A027973

/-! ## A027973.P15132874481122778021

`2^(n+2)-A254729(n+3)`
-/

namespace A027973.P15132874481122778021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A254729 (n + 3)

end

end A027973.P15132874481122778021

namespace A027973

/-- `2^(n+2)-A254729(n+3)` -/
def P15132874481122778021.Spec : Prop :=
  ∀ n, P15132874481122778021.a n = A027973 n

end A027973

/-! ## A027973.P11724789231983308911

`Δ[A000032(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A027973.P11724789231983308911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A027973.P11724789231983308911

namespace A027973

/-- `Δ[A000032(n)]+2*a(n-1)` -/
def P11724789231983308911.Spec : Prop :=
  ∀ n, P11724789231983308911.a n = A027973 n

end A027973

/-! ## A027973.P9967371258158438643

`A000032(n-1)+2*a(n-1)` with `a(0)=1`
-/

namespace A027973.P9967371258158438643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (n - 1) + 2 * a (n - 1)

end

end A027973.P9967371258158438643

namespace A027973

/-- `A000032(n-1)+2*a(n-1)` -/
def P9967371258158438643.Spec : Prop :=
  ∀ n, P9967371258158438643.a n = A027973 n

end A027973

/-! ## A027973.P1424097198914000665

`Δ[-A000032(n+3)]+2^(n+2)`
-/

namespace A027973.P1424097198914000665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000032 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ (n + 2) : ℤ)

end

end A027973.P1424097198914000665

namespace A027973

/-- `Δ[-A000032(n+3)]+2^(n+2)` -/
def P1424097198914000665.Spec : Prop :=
  ∀ n, P1424097198914000665.a n = A027973 n

end A027973

/-! ## A027973.P12703525694471904211

`A104004(n)+A027934(n)`
-/

namespace A027973.P12703525694471904211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n + A027934 n

end

end A027973.P12703525694471904211

namespace A027973

/-- `A104004(n)+A027934(n)` -/
def P12703525694471904211.Spec : Prop :=
  ∀ n, P12703525694471904211.a n = A027973 n

end A027973

/-! ## A027973.P13148458984946217736

`A175657(n)+A008466(n)`
-/

namespace A027973.P13148458984946217736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 n + A008466 n

end

end A027973.P13148458984946217736

namespace A027973

/-- `A175657(n)+A008466(n)` -/
def P13148458984946217736.Spec : Prop :=
  ∀ n, P13148458984946217736.a n = A027973 n

end A027973

/-! ## A027973.P13410258594515414305

`A175661(n)-A000045(n)`
-/

namespace A027973.P13410258594515414305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175661 n - A000045 n

end

end A027973.P13410258594515414305

namespace A027973

/-- `A175661(n)-A000045(n)` -/
def P13410258594515414305.Spec : Prop :=
  ∀ n, P13410258594515414305.a n = A027973 n

end A027973

/-! ## A027973.P4115770006096404706

`A171497(n)-A288219(n)`
-/

namespace A027973.P4115770006096404706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 n - A288219 n

end

end A027973.P4115770006096404706

namespace A027973

/-- `A171497(n)-A288219(n)` -/
def P4115770006096404706.Spec : Prop :=
  ∀ n, P4115770006096404706.a n = A027973 n

end A027973

/-! ## A027973.P592082118027263158

`A008466(n+2)+A000045(n)`
-/

namespace A027973.P592082118027263158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 2) + A000045 n

end

end A027973.P592082118027263158

namespace A027973

/-- `A008466(n+2)+A000045(n)` -/
def P592082118027263158.Spec : Prop :=
  ∀ n, P592082118027263158.a n = A027973 n

end A027973

/-! ## A027973.P5678890660822943266

`A335714(n+2)+A001629(n)`
-/

namespace A027973.P5678890660822943266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335714 (n + 2) + A001629 n

end

end A027973.P5678890660822943266

namespace A027973

/-- `A335714(n+2)+A001629(n)` -/
def P5678890660822943266.Spec : Prop :=
  ∀ n, P5678890660822943266.a n = A027973 n

end A027973

/-! ## A027973.P13929971503227954785

`A389886(n+3)+A117591(n)`
-/

namespace A027973.P13929971503227954785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389886 (n + 3) + A117591 n

end

end A027973.P13929971503227954785

namespace A027973

/-- `A389886(n+3)+A117591(n)` -/
def P13929971503227954785.Spec : Prop :=
  ∀ n, P13929971503227954785.a n = A027973 n

end A027973

/-! ## A027973.P12925724616117046269

`A175660(n)+2*A000045(n)`
-/

namespace A027973.P12925724616117046269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 n + 2 * A000045 n

end

end A027973.P12925724616117046269

namespace A027973

/-- `A175660(n)+2*A000045(n)` -/
def P12925724616117046269.Spec : Prop :=
  ∀ n, P12925724616117046269.a n = A027973 n

end A027973

/-! ## A027973.P9968351465959536443

`A099036(n+1)+A008466(n+1)`
-/

namespace A027973.P9968351465959536443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 1) + A008466 (n + 1)

end

end A027973.P9968351465959536443

namespace A027973

/-- `A099036(n+1)+A008466(n+1)` -/
def P9968351465959536443.Spec : Prop :=
  ∀ n, P9968351465959536443.a n = A027973 n

end A027973

/-!
# A027974: a(n) = Sum_{k=1..n+1} A027960(n+1, n+1+k).

The programs for A027974, the canonical program `A027974.P578989068893304175` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027974 has offset 0).

The definition of A027974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027974.P578989068893304175

`2^(n+3)-A000032(n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027974

/-- `2^(n+3)-A000032(n+4)` -/
def P578989068893304175.Spec : Prop :=
  ∀ n, P578989068893304175.a n = A027974 n

theorem P578989068893304175.correct : P578989068893304175.Spec := by
  intro n
  simp only [A027974]

end A027974

/-! ## A027974.P3933671417690020004

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A027974.P3933671417690020004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 14] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A027974.P3933671417690020004

namespace A027974

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P3933671417690020004.Spec : Prop :=
  ∀ n, P3933671417690020004.a n = A027974 n

end A027974

/-! ## A027974.P658450281209712375

`ogf((1+2x)/(1-3x+x^2+2x^3))`
-/

namespace A027974.P658450281209712375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 1, 2] n

end

end A027974.P658450281209712375

namespace A027974

/-- `ogf((1+2x)/(1-3x+x^2+2x^3))` -/
def P658450281209712375.Spec : Prop :=
  ∀ n, P658450281209712375.a n = A027974 n

end A027974

/-! ## A027974.P13703913501881895997

`∑[2^n+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=4`
-/

namespace A027974.P13703913501881895997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 ^ n + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027974.P13703913501881895997

namespace A027974

/-- `∑[2^n+a(n-1)+a(n-2)]` -/
def P13703913501881895997.Spec : Prop :=
  ∀ n, (P13703913501881895997.a n : ℤ) = A027974 n

end A027974

/-! ## A027974.P7777615993744443497

`2^(n+1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A027974.P7777615993744443497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 ^ (n + 1) + (a (n - 1) + a (n - 2))

end

end A027974.P7777615993744443497

namespace A027974

/-- `2^(n+1)+a(n-1)+a(n-2)` -/
def P7777615993744443497.Spec : Prop :=
  ∀ n, (P7777615993744443497.a n : ℤ) = A027974 n

end A027974

/-! ## A027974.P8297094076135285973

`∑[A027973(n)]`
-/

namespace A027974.P8297094076135285973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027974.P8297094076135285973

namespace A027974

/-- `∑[A027973(n)]` -/
def P8297094076135285973.Spec : Prop :=
  ∀ n, P8297094076135285973.a n = A027974 n

end A027974

/-! ## A027974.P7518775430096639330

`record[abs(A142585(n))]`
-/

namespace A027974.P7518775430096639330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A142585 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027974.P7518775430096639330

namespace A027974

/-- `record[abs(A142585(n))]` -/
def P7518775430096639330.Spec : Prop :=
  ∀ n, P7518775430096639330.a n = A027974 n

end A027974

/-! ## A027974.P10520661298226608700

`abs(A227200(n+3))`
-/

namespace A027974.P10520661298226608700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227200 (n + 3)|

end

end A027974.P10520661298226608700

namespace A027974

/-- `abs(A227200(n+3))` -/
def P10520661298226608700.Spec : Prop :=
  ∀ n, P10520661298226608700.a n = A027974 n

end A027974

/-! ## A027974.P3141818672254138104

`2^(n+3)-A288219(n+2)`
-/

namespace A027974.P3141818672254138104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A288219 (n + 2)

end

end A027974.P3141818672254138104

namespace A027974

/-- `2^(n+3)-A288219(n+2)` -/
def P3141818672254138104.Spec : Prop :=
  ∀ n, P3141818672254138104.a n = A027974 n

end A027974

/-! ## A027974.P2700208013071618900

`2^(n+3)-A163695(n+3)`
-/

namespace A027974.P2700208013071618900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A163695 (n + 3)

end

end A027974.P2700208013071618900

namespace A027974

/-- `2^(n+3)-A163695(n+3)` -/
def P2700208013071618900.Spec : Prop :=
  ∀ n, P2700208013071618900.a n = A027974 n

end A027974

/-! ## A027974.P8876498352419478530

`record[A000032(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A027974.P8876498352419478530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)

end

end A027974.P8876498352419478530

namespace A027974

/-- `record[A000032(n)]+2*a(n-1)` -/
def P8876498352419478530.Spec : Prop :=
  ∀ n, P8876498352419478530.a n = A027974 n

end A027974

/-! ## A027974.P17098570486552518541

`A000032(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A027974.P17098570486552518541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (n + 1) + 2 * a (n - 1)

end

end A027974.P17098570486552518541

namespace A027974

/-- `A000032(n+1)+2*a(n-1)` -/
def P17098570486552518541.Spec : Prop :=
  ∀ n, P17098570486552518541.a n = A027974 n

end A027974

/-! ## A027974.P6560658815857687318

`A000204(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A027974.P6560658815857687318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000204 (n + 1) + 2 * a (n - 1)

end

end A027974.P6560658815857687318

namespace A027974

/-- `A000204(n+1)+2*a(n-1)` -/
def P6560658815857687318.Spec : Prop :=
  ∀ n, P6560658815857687318.a n = A027974 n

end A027974

/-! ## A027974.P2084514526973886259

`2*a(n-1)+A001610(n)+1` with `a(0)=1`
-/

namespace A027974.P2084514526973886259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A001610 n + 1)

end

end A027974.P2084514526973886259

namespace A027974

/-- `2*a(n-1)+A001610(n)+1` -/
def P2084514526973886259.Spec : Prop :=
  ∀ n, P2084514526973886259.a n = A027974 n

end A027974

/-! ## A027974.P9547524218353758163

`∑[A104004(n)+A027934(n)]`
-/

namespace A027974.P9547524218353758163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n + A027934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027974.P9547524218353758163

namespace A027974

/-- `∑[A104004(n)+A027934(n)]` -/
def P9547524218353758163.Spec : Prop :=
  ∀ n, P9547524218353758163.a n = A027974 n

end A027974

/-! ## A027974.P12661256723237325055

`A027973(n)-A227200(n+2)`
-/

namespace A027974.P12661256723237325055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n - A227200 (n + 2)

end

end A027974.P12661256723237325055

namespace A027974

/-- `A027973(n)-A227200(n+2)` -/
def P12661256723237325055.Spec : Prop :=
  ∀ n, P12661256723237325055.a n = A027974 n

end A027974

/-! ## A027974.P6213340397484323421

`A389886(n+3)+A316528(n)`
-/

namespace A027974.P6213340397484323421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389886 (n + 3) + A316528 n

end

end A027974.P6213340397484323421

namespace A027974

/-- `A389886(n+3)+A316528(n)` -/
def P6213340397484323421.Spec : Prop :=
  ∀ n, P6213340397484323421.a n = A027974 n

end A027974

/-! ## A027974.P8197082437810189974

`record[abs(A000032(n)-A011782(n))]`
-/

namespace A027974.P8197082437810189974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000032 n - A011782 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027974.P8197082437810189974

namespace A027974

/-- `record[abs(A000032(n)-A011782(n))]` -/
def P8197082437810189974.Spec : Prop :=
  ∀ n, P8197082437810189974.a n = A027974 n

end A027974

/-! ## A027974.P12774504953426227594

`A175661(n+1)-A000285(n+1)`
-/

namespace A027974.P12774504953426227594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175661 (n + 1) - A000285 (n + 1)

end

end A027974.P12774504953426227594

namespace A027974

/-- `A175661(n+1)-A000285(n+1)` -/
def P12774504953426227594.Spec : Prop :=
  ∀ n, P12774504953426227594.a n = A027974 n

end A027974

/-! ## A027974.P4146682681826767081

`A027973(n+1)-A000204(n+2)`
-/

namespace A027974.P4146682681826767081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 (n + 1) - A000204 (n + 2)

end

end A027974.P4146682681826767081

namespace A027974

/-- `A027973(n+1)-A000204(n+2)` -/
def P4146682681826767081.Spec : Prop :=
  ∀ n, P4146682681826767081.a n = A027974 n

end A027974

/-!
# A027975: a(n) is the n-th diagonal sum of left justified array T given by A027960.

The programs for A027975, the canonical program `A027975.P9460042647220153087` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027975 has offset 0).

The definition of A027975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027975.P9460042647220153087

`a(n-2)+a(n-3)+3` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027975

/-- `a(n-2)+a(n-3)+3` -/
def P9460042647220153087.Spec : Prop :=
  ∀ n, (P9460042647220153087.a n : ℤ) = A027975 n

theorem P9460042647220153087.correct : P9460042647220153087.Spec := by
  intro n
  simp only [A027975]

end A027975

/-! ## A027975.P13673977317567474940

`ogf((1+2x^2)/(1-x-x^2+x^4))`
-/

namespace A027975.P13673977317567474940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -1, -1, 0, 1] n

end

end A027975.P13673977317567474940

namespace A027975

/-- `ogf((1+2x^2)/(1-x-x^2+x^4))` -/
def P13673977317567474940.Spec : Prop :=
  ∀ n, P13673977317567474940.a n = A027975 n

end A027975

/-! ## A027975.P3185781511534993573

`∑[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A027975.P3185781511534993573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027975.P3185781511534993573

namespace A027975

/-- `∑[a(n-2)+a(n-3)]` -/
def P3185781511534993573.Spec : Prop :=
  ∀ n, (P3185781511534993573.a n : ℤ) = A027975 n

end A027975

/-! ## A027975.P7082012932032568207

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A027975.P7082012932032568207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A027975.P7082012932032568207

namespace A027975

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P7082012932032568207.Spec : Prop :=
  ∀ n, P7082012932032568207.a n = A027975 n

end A027975

/-! ## A027975.P3000038162834191832

`∑[A276276(n+2)]`
-/

namespace A027975.P3000038162834191832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027975.P3000038162834191832

namespace A027975

/-- `∑[A276276(n+2)]` -/
def P3000038162834191832.Spec : Prop :=
  ∀ n, P3000038162834191832.a n = A027975 n

end A027975

/-! ## A027975.P17873109849684967616

`∑[A000931(n)+3*A000931(n+1)]`
-/

namespace A027975.P17873109849684967616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + 3 * A000931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027975.P17873109849684967616

namespace A027975

/-- `∑[A000931(n)+3*A000931(n+1)]` -/
def P17873109849684967616.Spec : Prop :=
  ∀ n, P17873109849684967616.a n = A027975 n

end A027975

/-! ## A027975.P17540223756155763860

`∑[A134816(n+2)]-Δ[A134816(n+2)]`
-/

namespace A027975.P17540223756155763860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A027975.P17540223756155763860

namespace A027975

/-- `∑[A134816(n+2)]-Δ[A134816(n+2)]` -/
def P17540223756155763860.Spec : Prop :=
  ∀ n, P17540223756155763860.a n = A027975 n

end A027975

/-! ## A027975.P119555899859407960

`A000931(n+1)+A054405(n+1)-A052954(n+1)`
-/

namespace A027975.P119555899859407960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A054405 (n + 1) - A052954 (n + 1))

end

end A027975.P119555899859407960

namespace A027975

/-- `A000931(n+1)+A054405(n+1)-A052954(n+1)` -/
def P119555899859407960.Spec : Prop :=
  ∀ n, P119555899859407960.a n = A027975 n

end A027975

/-! ## A027975.P8684335911848276818

`A023434(n+1)+A054405(n+1)-A084338(n+2)`
-/

namespace A027975.P8684335911848276818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1) + (A054405 (n + 1) - A084338 (n + 2))

end

end A027975.P8684335911848276818

namespace A027975

/-- `A023434(n+1)+A054405(n+1)-A084338(n+2)` -/
def P8684335911848276818.Spec : Prop :=
  ∀ n, P8684335911848276818.a n = A027975 n

end A027975

/-! ## A027975.P2913348346588237528

`A168637(n+2)-A052954(n+2)`
-/

namespace A027975.P2913348346588237528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168637 (n + 2) - A052954 (n + 2)

end

end A027975.P2913348346588237528

namespace A027975

/-- `A168637(n+2)-A052954(n+2)` -/
def P2913348346588237528.Spec : Prop :=
  ∀ n, P2913348346588237528.a n = A027975 n

end A027975

/-!
# A027976: n-th diagonal sum of right justified array T given by A027960.

The programs for A027976, the canonical program `A027976.P12652982171173166105` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027976 has offset 0).

The definition of A027976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027976.P12652982171173166105

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027976

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P12652982171173166105.Spec : Prop :=
  ∀ n, P12652982171173166105.a n = A027976 n

theorem P12652982171173166105.correct : P12652982171173166105.Spec := by
  intro n
  simp only [A027976]

end A027976

/-! ## A027976.P5480970705537602933

`A104449(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A027976.P5480970705537602933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A104449 n + a (n - 3)

end

end A027976.P5480970705537602933

namespace A027976

/-- `A104449(n)+a(n-3)` -/
def P5480970705537602933.Spec : Prop :=
  ∀ n, P5480970705537602933.a n = A027976 n

end A027976

/-! ## A027976.P6829760932445765277

`A093040(n+1)+A000071(n+1)`
-/

namespace A027976.P6829760932445765277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (n + 1) + A000071 (n + 1)

end

end A027976.P6829760932445765277

namespace A027976

/-- `A093040(n+1)+A000071(n+1)` -/
def P6829760932445765277.Spec : Prop :=
  ∀ n, P6829760932445765277.a n = A027976 n

end A027976

/-! ## A027976.P6367487901224752904

`A104221(n+1)+A004695(n+3)`
-/

namespace A027976.P6367487901224752904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (n + 1) + A004695 (n + 3)

end

end A027976.P6367487901224752904

namespace A027976

/-- `A104221(n+1)+A004695(n+3)` -/
def P6367487901224752904.Spec : Prop :=
  ∀ n, P6367487901224752904.a n = A027976 n

end A027976

/-! ## A027976.P1244377538045205181

`A000045(n+1)+A093040(n+1)-1`
-/

namespace A027976.P1244377538045205181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A093040 (n + 1) - 1)

end

end A027976.P1244377538045205181

namespace A027976

/-- `A000045(n+1)+A093040(n+1)-1` -/
def P1244377538045205181.Spec : Prop :=
  ∀ n, P1244377538045205181.a n = A027976 n

end A027976

/-! ## A027976.P10911083149004830206

`∑[A000045(n+1)]-Δ[A004695(n+1)]`
-/

namespace A027976.P10911083149004830206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A027976.P10911083149004830206

namespace A027976

/-- `∑[A000045(n+1)]-Δ[A004695(n+1)]` -/
def P10911083149004830206.Spec : Prop :=
  ∀ n, P10911083149004830206.a n = A027976 n

end A027976

/-! ## A027976.P834927159415817329

`∑[A100886(n)]+1-A000045(n)`
-/

namespace A027976.P834927159415817329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000045 n)

end

end A027976.P834927159415817329

namespace A027976

/-- `∑[A100886(n)]+1-A000045(n)` -/
def P834927159415817329.Spec : Prop :=
  ∀ n, P834927159415817329.a n = A027976 n

end A027976

/-! ## A027976.P7328396634689398816

`(A000045(n)+4*A000045(n+1)-A102283(n)-2)/2`
-/

namespace A027976.P7328396634689398816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n + 4 * A000045 (n + 1) - A102283 n - 2 : ℚ) / 2

end

end A027976.P7328396634689398816

namespace A027976

/-- `(A000045(n)+4*A000045(n+1)-A102283(n)-2)/2` -/
def P7328396634689398816.Spec : Prop :=
  ∀ n, P7328396634689398816.a n = (A027976 n : ℚ)

end A027976

/-! ## A027976.P14845016559813592623

`Δ[floor((∑[A000285(n)-3]-(2-n))/2)]`
-/

namespace A027976.P14845016559813592623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j - (2 - (n : ℤ)) : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027976.P14845016559813592623

namespace A027976

/-- `Δ[floor((∑[A000285(n)-3]-(2-n))/2)]` -/
def P14845016559813592623.Spec : Prop :=
  ∀ n, P14845016559813592623.a n = A027976 n

end A027976

/-!
# A027977: a(n) = greatest number in row n of array T given by A027960.

The programs for A027977, there is no canonical definition to state claims against.
-/

/-! ## A027977.P15024240796308850250

`A286516(A131128(n))+A131169(n)`
-/

namespace A027977.P15024240796308850250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286516 (A131128 n).toNat + A131169 n

end

end A027977.P15024240796308850250

/-! ## A027977.P1207747779034906703

`record[A027960(n)/A000005(A026998(2*(n+1)))]`
-/

namespace A027977.P1207747779034906703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027960 n : ℚ) / (A000005 (A026998 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027977.P1207747779034906703

/-! ## A027977.P7926692736444880663

`A173153(A185265(n))`
-/

namespace A027977.P7926692736444880663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173153 (A185265 n).toNat

end

end A027977.P7926692736444880663

/-! ## A027977.P8655440842058051922

`A328928(A302266(n+1)+3)`
-/

namespace A027977.P8655440842058051922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328928 (A302266 (n + 1) + 3).toNat

end

end A027977.P8655440842058051922

/-!
# A027978: a(n) = self-convolution of row n of array T given by A027960.

The programs for A027978, the canonical program `A027978.P13290445822772738107` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027978 has offset 0).

The definition of A027978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027978.P13290445822772738107

`5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=1, a(1)=11, a(2)=42, a(3)=145, a(4)=473`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027978

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` -/
def P13290445822772738107.Spec : Prop :=
  ∀ n, P13290445822772738107.a n = A027978 n

theorem P13290445822772738107.correct : P13290445822772738107.Spec := by
  intro n
  simp only [A027978]

end A027978

/-! ## A027978.P17250728771639533981

`A146005(2*n)+A000285(2*n)`
-/

namespace A027978.P17250728771639533981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (2 * n) + A000285 (2 * n)

end

end A027978.P17250728771639533981

namespace A027978

/-- `A146005(2*n)+A000285(2*n)` -/
def P17250728771639533981.Spec : Prop :=
  ∀ n, P17250728771639533981.a n = A027978 n

end A027978

/-! ## A027978.P16355615592161108127

`2*A027979(n)-A000204(n+1)²`
-/

namespace A027978.P16355615592161108127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027979 n - A000204 (n + 1) ^ 2

end

end A027978.P16355615592161108127

namespace A027978

/-- `2*A027979(n)-A000204(n+1)²` -/
def P16355615592161108127.Spec : Prop :=
  ∀ n, P16355615592161108127.a n = A027978 n

end A027978

/-! ## A027978.P8127896645451720508

`A258321(2*n)+A000032(2*n+1)`
-/

namespace A027978.P8127896645451720508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n) + A000032 (2 * n + 1)

end

end A027978.P8127896645451720508

namespace A027978

/-- `A258321(2*n)+A000032(2*n+1)` -/
def P8127896645451720508.Spec : Prop :=
  ∀ n, P8127896645451720508.a n = A027978 n

end A027978

/-! ## A027978.P11726258336178281725

`A258321(2*n)+A000204(2*n+1)`
-/

namespace A027978.P11726258336178281725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n) + A000204 (2 * n + 1)

end

end A027978.P11726258336178281725

namespace A027978

/-- `A258321(2*n)+A000204(2*n+1)` -/
def P11726258336178281725.Spec : Prop :=
  ∀ n, P11726258336178281725.a n = A027978 n

end A027978

/-! ## A027978.P15330635283550765712

`A258321(2*n)+A014217(2*n+1)`
-/

namespace A027978.P15330635283550765712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n) + A014217 (2 * n + 1)

end

end A027978.P15330635283550765712

namespace A027978

/-- `A258321(2*n)+A014217(2*n+1)` -/
def P15330635283550765712.Spec : Prop :=
  ∀ n, P15330635283550765712.a n = A027978 n

end A027978

/-! ## A027978.P16214269847709569033

`A094588(2*n+1)+2*A094588(2*n)`
-/

namespace A027978.P16214269847709569033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (2 * n + 1) + 2 * A094588 (2 * n)

end

end A027978.P16214269847709569033

namespace A027978

/-- `A094588(2*n+1)+2*A094588(2*n)` -/
def P16214269847709569033.Spec : Prop :=
  ∀ n, P16214269847709569033.a n = A027978 n

end A027978

/-!
# A027979: a(n) = Sum_{k=0..n} T(n,k)*T(n,2n-k), T given by A027960.

The programs for A027979, the canonical program `A027979.P7543321819054048890` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027979 has offset 0).

The definition of A027979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027979.P7543321819054048890

`(n+1)*A000032(2*n)+3*A000045(2*n)-(-1)^n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027979

/-- `(n+1)*A000032(2*n)+3*A000045(2*n)-(-1)^n` -/
def P7543321819054048890.Spec : Prop :=
  ∀ n, P7543321819054048890.a n = A027979 n

theorem P7543321819054048890.correct : P7543321819054048890.Spec := by
  intro n
  simp only [A027979]

end A027979

/-!
# A027980: a(n) = Sum_{k=0..n-1} T(n,k)*T(n,2n-k), T given by A027960.

The programs for A027980, the canonical program `A027980.P5398295459808024036` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027980 has offset 0).

The definition of A027980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027980.P7519804516390433527

`A024469(Δ[n²])`
-/

namespace A027980.P7519804516390433527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024469 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027980.P7519804516390433527

namespace A027980

/-- `A024469(Δ[n²])` -/
def P7519804516390433527.Spec : Prop :=
  ∀ n, P7519804516390433527.a n = A027980 n

end A027980

/-! ## A027980.P5398295459808024036

`A027979(n+1)-A000204(n+2)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027980

/-- `A027979(n+1)-A000204(n+2)²` -/
def P5398295459808024036.Spec : Prop :=
  ∀ n, P5398295459808024036.a n = A027980 n

theorem P5398295459808024036.correct : P5398295459808024036.Spec := by
  intro n
  simp only [A027980]

end A027980

/-! ## A027980.P10272330196371410384

`A027978(n+1)-A027979(n+1)`
-/

namespace A027980.P10272330196371410384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027978 (n + 1) - A027979 (n + 1)

end

end A027980.P10272330196371410384

namespace A027980

/-- `A027978(n+1)-A027979(n+1)` -/
def P10272330196371410384.Spec : Prop :=
  ∀ n, P10272330196371410384.a n = A027980 n

end A027980

/-! ## A027980.P14542047406417975631

`A004799(2*n+1)-A025089(2*n+1)`
-/

namespace A027980.P14542047406417975631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (2 * n + 1) - A025089 (2 * n + 1)

end

end A027980.P14542047406417975631

namespace A027980

/-- `A004799(2*n+1)-A025089(2*n+1)` -/
def P14542047406417975631.Spec : Prop :=
  ∀ n, P14542047406417975631.a n = A027980 n

end A027980

/-! ## A027980.P12475811523129700193

`2*A024469(2*n+1)-A024469(2*n+1)`
-/

namespace A027980.P12475811523129700193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024469 (2 * n + 1) - A024469 (2 * n + 1)

end

end A027980.P12475811523129700193

namespace A027980

/-- `2*A024469(2*n+1)-A024469(2*n+1)` -/
def P12475811523129700193.Spec : Prop :=
  ∀ n, P12475811523129700193.a n = A027980 n

end A027980

/-! ## A027980.P6160508505358686829

`A024469(2*n+1)%A227485(n)`
-/

namespace A027980.P6160508505358686829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024469 (2 * n + 1)) (A227485 n)

end

end A027980.P6160508505358686829

namespace A027980

/-- `A024469(2*n+1)%A227485(n)` -/
def P6160508505358686829.Spec : Prop :=
  ∀ n, P6160508505358686829.a n = A027980 n

end A027980

/-! ## A027980.P8108455674903511967

`A067979(∑[4*n])`
-/

namespace A027980.P8108455674903511967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027980.P8108455674903511967

namespace A027980

/-- `A067979(∑[4*n])` -/
def P8108455674903511967.Spec : Prop :=
  ∀ n, P8108455674903511967.a n = A027980 n

end A027980

/-! ## A027980.P1165804298470152006

`A067990(∑[4*n])`
-/

namespace A027980.P1165804298470152006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027980.P1165804298470152006

namespace A027980

/-- `A067990(∑[4*n])` -/
def P1165804298470152006.Spec : Prop :=
  ∀ n, P1165804298470152006.a n = A027980 n

end A027980

/-! ## A027980.P7187478749306486024

`A067990(A046092(n))*A239700(n+1)`
-/

namespace A027980.P7187478749306486024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067990 (A046092 n).toNat * A239700 (n + 1)

end

end A027980.P7187478749306486024

namespace A027980

/-- `A067990(A046092(n))*A239700(n+1)` -/
def P7187478749306486024.Spec : Prop :=
  ∀ n, P7187478749306486024.a n = A027980 n

end A027980

/-!
# A027981: a(n) = Sum_{k=0..2*n} (k+1)*T(n,k), T given by A027960.

The programs for A027981, the canonical program `A027981.P3364693400701711770` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027981 has offset 0).

The definition of A027981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027981.P3364693400701711770

`3*2^n*(2*n-1)+4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027981

/-- `3*2^n*(2*n-1)+4` -/
def P3364693400701711770.Spec : Prop :=
  ∀ n, P3364693400701711770.a n = A027981 n

theorem P3364693400701711770.correct : P3364693400701711770.Spec := by
  intro n
  simp only [A027981]

end A027981

/-! ## A027981.P7377791682312738116

`∑[ogf((1+5x-2x^2)/(1-4x+4x^2))]`
-/

namespace A027981.P7377791682312738116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P7377791682312738116

namespace A027981

/-- `∑[ogf((1+5x-2x^2)/(1-4x+4x^2))]` -/
def P7377791682312738116.Spec : Prop :=
  ∀ n, P7377791682312738116.a n = A027981 n

end A027981

/-! ## A027981.P4355370853920282441

`4*(a(n-1)+1-a(n-2))` with `a(0)=1, a(1)=10`
-/

namespace A027981.P4355370853920282441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * (a (n - 1) + (1 - a (n - 2)))

end

end A027981.P4355370853920282441

namespace A027981

/-- `4*(a(n-1)+1-a(n-2))` -/
def P4355370853920282441.Spec : Prop :=
  ∀ n, P4355370853920282441.a n = A027981 n

theorem P4355370853920282441.correct : P4355370853920282441.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027981, Nat.add_sub_cancel, A027981.P4355370853920282441.a, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027981, Nat.add_sub_cancel, A027981.P4355370853920282441.a, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027981

/-! ## A027981.P10813766751494363019

`4*(1-(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=10`
-/

namespace A027981.P10813766751494363019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  4 * (1 - (a (n - 2) - a (n - 1)))

end

end A027981.P10813766751494363019

namespace A027981

/-- `4*(1-(a(n-2)-a(n-1)))` -/
def P10813766751494363019.Spec : Prop :=
  ∀ n, P10813766751494363019.a n = A027981 n

theorem P10813766751494363019.correct : P10813766751494363019.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027981, Nat.add_sub_cancel, A027981.P10813766751494363019.a, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027981, Nat.add_sub_cancel, A027981.P10813766751494363019.a, A027981.P3364693400701711770.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027981

/-! ## A027981.P16067553307085056918

`∑[Δ[n²]*A003945(n)]`
-/

namespace A027981.P16067553307085056918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P16067553307085056918

namespace A027981

/-- `∑[Δ[n²]*A003945(n)]` -/
def P16067553307085056918.Spec : Prop :=
  ∀ n, P16067553307085056918.a n = A027981 n

end A027981

/-! ## A027981.P16977328756146202166

`∑[(2*n+1)*Δ[A042950(n)]]`
-/

namespace A027981.P16977328756146202166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P16977328756146202166

namespace A027981

/-- `∑[(2*n+1)*Δ[A042950(n)]]` -/
def P16977328756146202166.Spec : Prop :=
  ∀ n, P16977328756146202166.a n = A027981 n

end A027981

/-! ## A027981.P8471225376772185822

`∑[(2*n+1)*A122391(n+2)]`
-/

namespace A027981.P8471225376772185822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A122391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P8471225376772185822

namespace A027981

/-- `∑[(2*n+1)*A122391(n+2)]` -/
def P8471225376772185822.Spec : Prop :=
  ∀ n, P8471225376772185822.a n = A027981 n

end A027981

/-! ## A027981.P12180191448918570963

`∑[(2*n+1)*A074323(2*n)]`
-/

namespace A027981.P12180191448918570963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A074323 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P12180191448918570963

namespace A027981

/-- `∑[(2*n+1)*A074323(2*n)]` -/
def P12180191448918570963.Spec : Prop :=
  ∀ n, P12180191448918570963.a n = A027981 n

end A027981

/-! ## A027981.P6825063134214075201

`∑[(2*n+1)*Δ[A266550(n+2)]]`
-/

namespace A027981.P6825063134214075201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P6825063134214075201

namespace A027981

/-- `∑[(2*n+1)*Δ[A266550(n+2)]]` -/
def P6825063134214075201.Spec : Prop :=
  ∀ n, P6825063134214075201.a n = A027981 n

end A027981

/-! ## A027981.P2701255093855919763

`∑[(2*n+1)*A029744(2*n+1)]`
-/

namespace A027981.P2701255093855919763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A029744 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P2701255093855919763

namespace A027981

/-- `∑[(2*n+1)*A029744(2*n+1)]` -/
def P2701255093855919763.Spec : Prop :=
  ∀ n, P2701255093855919763.a n = A027981 n

end A027981

/-! ## A027981.P6091119955077293451

`∑[(2*n+1)*floor(A091629(n+1)/4)]`
-/

namespace A027981.P6091119955077293451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ⌊(A091629 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027981.P6091119955077293451

namespace A027981

/-- `∑[(2*n+1)*floor(A091629(n+1)/4)]` -/
def P6091119955077293451.Spec : Prop :=
  ∀ n, P6091119955077293451.a n = A027981 n

end A027981

/-! ## A027981.P4616151613734618723

`ogf((1+5x-2x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A027981.P4616151613734618723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -2] [1, -5, 8, -4] n

end

end A027981.P4616151613734618723

namespace A027981

/-- `ogf((1+5x-2x^2)/(1-5x+8x^2-4x^3))` -/
def P4616151613734618723.Spec : Prop :=
  ∀ n, P4616151613734618723.a n = A027981 n

end A027981

/-! ## A027981.P18290710845550921718

`abs(4-3*A143126(n))`
-/

namespace A027981.P18290710845550921718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 3 * A143126 n|

end

end A027981.P18290710845550921718

namespace A027981

/-- `abs(4-3*A143126(n))` -/
def P18290710845550921718.Spec : Prop :=
  ∀ n, P18290710845550921718.a n = A027981 n

end A027981

/-!
# A027982: a(n) = Sum_{k=0..2*n} (k+1)*T(n, 2*n-k), T given by A027960.

The programs for A027982, the canonical program `A027982.P15404522321963010124` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027982 has offset 0).

The definition of A027982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027982.P15404522321963010124

`(2*n+11)*2^n-2*(3*n+5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027982

/-- `(2*n+11)*2^n-2*(3*n+5)` -/
def P15404522321963010124.Spec : Prop :=
  ∀ n, P15404522321963010124.a n = A027982 n

theorem P15404522321963010124.correct : P15404522321963010124.Spec := by
  intro n
  simp only [A027982]

end A027982

/-! ## A027982.P12556168466821883678

`2*(A132074(n)+a(n-1))` with `a(0)=1`
-/

namespace A027982.P12556168466821883678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A132074 n + a (n - 1))

end

end A027982.P12556168466821883678

namespace A027982

/-- `2*(A132074(n)+a(n-1))` -/
def P12556168466821883678.Spec : Prop :=
  ∀ n, P12556168466821883678.a n = A027982 n

end A027982

/-! ## A027982.P4846955121082297173

`2*(A061761(n)+a(n-1)+n)` with `a(0)=1`
-/

namespace A027982.P4846955121082297173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A061761 n + a (n - 1) + (n : ℤ))

end

end A027982.P4846955121082297173

namespace A027982

/-- `2*(A061761(n)+a(n-1)+n)` -/
def P4846955121082297173.Spec : Prop :=
  ∀ n, P4846955121082297173.a n = A027982 n

theorem P4846955121082297173.correct : P4846955121082297173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A027982, Nat.add_sub_cancel, A027982.P4846955121082297173.a, A027982.P15404522321963010124.a, A061761, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A027982, Nat.add_sub_cancel, A027982.P4846955121082297173.a, A027982.P15404522321963010124.a, A061761, A061761.P16955976905781525061.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A027982

/-! ## A027982.P14512451575368317785

`∑[A134401(n)+A100206(n)]`
-/

namespace A027982.P14512451575368317785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n + A100206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027982.P14512451575368317785

namespace A027982

/-- `∑[A134401(n)+A100206(n)]` -/
def P14512451575368317785.Spec : Prop :=
  ∀ n, P14512451575368317785.a n = A027982 n

end A027982

/-!
# A027984: a(n) = Sum_{k=0..n} T(n, k)*T(n, n+k), T given by A027960.

The programs for A027984, the canonical program `A027984.P16612598708902994729` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027984 has offset 0).

The definition of A027984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027984.P16612598708902994729

`1/2*(5*A000045(2*n+2)+A000032(2*n+1)-A000032(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027984

/-- `1/2*(5*A000045(2*n+2)+A000032(2*n+1)-A000032(n+3))` -/
def P16612598708902994729.Spec : Prop :=
  ∀ n, P16612598708902994729.a n = (A027984 n : ℚ)

end A027984

/-! ## A027984.P2506308571492322969

`ogf((1+2x-x^2-2x^3)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A027984.P2506308571492322969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -2] [1, -4, 3, 2, -1] n

end

end A027984.P2506308571492322969

namespace A027984

/-- `ogf((1+2x-x^2-2x^3)/(1-4x+3x^2+2x^3-x^4))` -/
def P2506308571492322969.Spec : Prop :=
  ∀ n, P2506308571492322969.a n = A027984 n

end A027984

/-! ## A027984.P10042172055875683685

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=58`
-/

namespace A027984.P10042172055875683685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 20, 58] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A027984.P10042172055875683685

namespace A027984

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P10042172055875683685.Spec : Prop :=
  ∀ n, P10042172055875683685.a n = A027984 n

end A027984

/-! ## A027984.P10673789373993236294

`A002878(n+1)-(A049680(n)+A000032(n+1))`
-/

namespace A027984.P10673789373993236294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - (A049680 n + A000032 (n + 1))

end

end A027984.P10673789373993236294

namespace A027984

/-- `A002878(n+1)-(A049680(n)+A000032(n+1))` -/
def P10673789373993236294.Spec : Prop :=
  ∀ n, P10673789373993236294.a n = A027984 n

end A027984

/-! ## A027984.P13253292857697864195

`A002878(n+1)-(A049680(n)+A000204(n+1))`
-/

namespace A027984.P13253292857697864195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - (A049680 n + A000204 (n + 1))

end

end A027984.P13253292857697864195

namespace A027984

/-- `A002878(n+1)-(A049680(n)+A000204(n+1))` -/
def P13253292857697864195.Spec : Prop :=
  ∀ n, P13253292857697864195.a n = A027984 n

end A027984

/-! ## A027984.P8386302030127169035

`A027994(n+2)-(A005207(n+3)+A001519(n))`
-/

namespace A027984.P8386302030127169035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027994 (n + 2) - (A005207 (n + 3) + A001519 n)

end

end A027984.P8386302030127169035

namespace A027984

/-- `A027994(n+2)-(A005207(n+3)+A001519(n))` -/
def P8386302030127169035.Spec : Prop :=
  ∀ n, P8386302030127169035.a n = A027984 n

end A027984

/-! ## A027984.P12578071245417370710

`Δ[A210678(2*n)-A066067(2*(n+1))]`
-/

namespace A027984.P12578071245417370710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 (2 * n) - A066067 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027984.P12578071245417370710

namespace A027984

/-- `Δ[A210678(2*n)-A066067(2*(n+1))]` -/
def P12578071245417370710.Spec : Prop :=
  ∀ n, P12578071245417370710.a n = A027984 n

end A027984

/-!
# A027988: Greatest number in row n of array T given by A027926.

The programs for A027988, there is no canonical definition to state claims against.
-/

/-! ## A027988.P4946611235542519004

`A228074(A062513(n+1)*A080476(n+1))`
-/

namespace A027988.P4946611235542519004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A062513 (n + 1) * A080476 (n + 1)).toNat

end

end A027988.P4946611235542519004

/-! ## A027988.P14630902790157615716

`A228074(A080476(n+1)^A062513(n+1))`
-/

namespace A027988.P14630902790157615716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (SequenceMachineLib.roundAway ((A080476 (n + 1) : ℚ) ^ (A062513 (n + 1) : ℤ))).toNat

end

end A027988.P14630902790157615716

/-! ## A027988.P9669874687614351208

`A228074(A080476(n+1)%A333746(n+1))`
-/

namespace A027988.P9669874687614351208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (Int.tmod (A080476 (n + 1)) (A333746 (n + 1))).toNat

end

end A027988.P9669874687614351208

/-! ## A027988.P15795750333372354321

`A228074(A080476(n+1))+A000007(A036035(n))`
-/

namespace A027988.P15795750333372354321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228074 (A080476 (n + 1)).toNat + A000007 (A036035 n).toNat

end

end A027988.P15795750333372354321

/-! ## A027988.P9449708992084193925

`A096601(n²+n+1)`
-/

namespace A027988.P9449708992084193925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096601 (n ^ 2 + (n + 1))

end

end A027988.P9449708992084193925

/-!
# A027989: a(n) = self-convolution of row n of array T given by A027926.

The programs for A027989, the canonical program `A027989.P2476009227426594195` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027989 has offset 0).

The definition of A027989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027989.P2476009227426594195

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=33`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027989

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P2476009227426594195.Spec : Prop :=
  ∀ n, P2476009227426594195.a n = A027989 n

theorem P2476009227426594195.correct : P2476009227426594195.Spec := by
  intro n
  simp only [A027989]

end A027989

/-! ## A027989.P13508090037948700024

`A010049(Δ[n²])`
-/

namespace A027989.P13508090037948700024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027989.P13508090037948700024

namespace A027989

/-- `A010049(Δ[n²])` -/
def P13508090037948700024.Spec : Prop :=
  ∀ n, P13508090037948700024.a n = A027989 n

end A027989

/-! ## A027989.P5305080537134902393

`∑[A208354(2*n)]`
-/

namespace A027989.P5305080537134902393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027989.P5305080537134902393

namespace A027989

/-- `∑[A208354(2*n)]` -/
def P5305080537134902393.Spec : Prop :=
  ∀ n, P5305080537134902393.a n = A027989 n

end A027989

/-! ## A027989.P3316662045276653042

`abs(Δ[A226432(Δ[n²])])`
-/

namespace A027989.P3316662045276653042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226432 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A027989.P3316662045276653042

namespace A027989

/-- `abs(Δ[A226432(Δ[n²])])` -/
def P3316662045276653042.Spec : Prop :=
  ∀ n, P3316662045276653042.a n = A027989 n

end A027989

/-! ## A027989.P4737816484798533439

`record[A010049(n^(n%2))]`
-/

namespace A027989.P4737816484798533439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027989.P4737816484798533439

namespace A027989

/-- `record[A010049(n^(n%2))]` -/
def P4737816484798533439.Spec : Prop :=
  ∀ n, P4737816484798533439.a n = A027989 n

end A027989

/-! ## A027989.P9077518577436416804

`abs(A010049(2*n+1)-1)+1`
-/

namespace A027989.P9077518577436416804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010049 (2 * n + 1) - 1| + 1

end

end A027989.P9077518577436416804

namespace A027989

/-- `abs(A010049(2*n+1)-1)+1` -/
def P9077518577436416804.Spec : Prop :=
  ∀ n, P9077518577436416804.a n = A027989 n

end A027989

/-! ## A027989.P12123076489381587023

`A117202(n)+A094864(n)`
-/

namespace A027989.P12123076489381587023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 n + A094864 n

end

end A027989.P12123076489381587023

namespace A027989

/-- `A117202(n)+A094864(n)` -/
def P12123076489381587023.Spec : Prop :=
  ∀ n, P12123076489381587023.a n = A027989 n

end A027989

/-! ## A027989.P14675561329373020820

`record[A010049(A006257(n+1))]`
-/

namespace A027989.P14675561329373020820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027989.P14675561329373020820

namespace A027989

/-- `record[A010049(A006257(n+1))]` -/
def P14675561329373020820.Spec : Prop :=
  ∀ n, P14675561329373020820.a n = A027989 n

end A027989

/-! ## A027989.P3963490606394888763

`A116796(n+1)+A027941(n)`
-/

namespace A027989.P3963490606394888763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116796 (n + 1) + A027941 n

end

end A027989.P3963490606394888763

namespace A027989

/-- `A116796(n+1)+A027941(n)` -/
def P3963490606394888763.Spec : Prop :=
  ∀ n, P3963490606394888763.a n = A027989 n

end A027989

/-! ## A027989.P17186247507105898295

`A029907(2*n)+A001519(n)`
-/

namespace A027989.P17186247507105898295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * n) + A001519 n

end

end A027989.P17186247507105898295

namespace A027989

/-- `A029907(2*n)+A001519(n)` -/
def P17186247507105898295.Spec : Prop :=
  ∀ n, P17186247507105898295.a n = A027989 n

end A027989

/-! ## A027989.P3511180922010250861

`A122367(n)+A001629(2*n)`
-/

namespace A027989.P3511180922010250861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A001629 (2 * n)

end

end A027989.P3511180922010250861

namespace A027989

/-- `A122367(n)+A001629(2*n)` -/
def P3511180922010250861.Spec : Prop :=
  ∀ n, P3511180922010250861.a n = A027989 n

end A027989

/-! ## A027989.P13791038341152151603

`A094864(n)+n*A001519(n)`
-/

namespace A027989.P13791038341152151603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n + (n : ℤ) * A001519 n

end

end A027989.P13791038341152151603

namespace A027989

/-- `A094864(n)+n*A001519(n)` -/
def P13791038341152151603.Spec : Prop :=
  ∀ n, P13791038341152151603.a n = A027989 n

end A027989

/-! ## A027989.P15656461508434296468

`A001629(2*n)+A001519(n+1)`
-/

namespace A027989.P15656461508434296468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) + A001519 (n + 1)

end

end A027989.P15656461508434296468

namespace A027989

/-- `A001629(2*n)+A001519(n+1)` -/
def P15656461508434296468.Spec : Prop :=
  ∀ n, P15656461508434296468.a n = A027989 n

end A027989

/-! ## A027989.P3616742480014754718

`A010049(2*n)+A006367(2*n)`
-/

namespace A027989.P3616742480014754718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) + A006367 (2 * n)

end

end A027989.P3616742480014754718

namespace A027989

/-- `A010049(2*n)+A006367(2*n)` -/
def P3616742480014754718.Spec : Prop :=
  ∀ n, P3616742480014754718.a n = A027989 n

end A027989

/-! ## A027989.P9806508295662469413

`A127968(2*n)+A001629(2*n)`
-/

namespace A027989.P9806508295662469413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (2 * n) + A001629 (2 * n)

end

end A027989.P9806508295662469413

namespace A027989

/-- `A127968(2*n)+A001629(2*n)` -/
def P9806508295662469413.Spec : Prop :=
  ∀ n, P9806508295662469413.a n = A027989 n

end A027989

/-! ## A027989.P3202837057742708053

`A212804(2*n)+A029907(2*n)`
-/

namespace A027989.P3202837057742708053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) + A029907 (2 * n)

end

end A027989.P3202837057742708053

namespace A027989

/-- `A212804(2*n)+A029907(2*n)` -/
def P3202837057742708053.Spec : Prop :=
  ∀ n, P3202837057742708053.a n = A027989 n

end A027989

/-! ## A027989.P14901194253520787566

`A001629(2*n)+A000045(Δ[n²])`
-/

namespace A027989.P14901194253520787566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) + A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027989.P14901194253520787566

namespace A027989

/-- `A001629(2*n)+A000045(Δ[n²])` -/
def P14901194253520787566.Spec : Prop :=
  ∀ n, P14901194253520787566.a n = A027989 n

end A027989

/-! ## A027989.P3804515349576841879

`A001629(2*n)+Δ[A000045(2*n)]`
-/

namespace A027989.P3804515349576841879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) + (f1 (n + 1) - f1 n)

end

end A027989.P3804515349576841879

namespace A027989

/-- `A001629(2*n)+Δ[A000045(2*n)]` -/
def P3804515349576841879.Spec : Prop :=
  ∀ n, P3804515349576841879.a n = A027989 n

end A027989

/-! ## A027989.P3589888017344670652

`Δ[A010049(2*n)]-A000045(2*n)`
-/

namespace A027989.P3589888017344670652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 (2 * n)

end

end A027989.P3589888017344670652

namespace A027989

/-- `Δ[A010049(2*n)]-A000045(2*n)` -/
def P3589888017344670652.Spec : Prop :=
  ∀ n, P3589888017344670652.a n = A027989 n

end A027989

/-! ## A027989.P6306424391158012885

`Δ[A010049(2*n)-A212804(2*n)]`
-/

namespace A027989.P6306424391158012885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * n) - A212804 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027989.P6306424391158012885

namespace A027989

/-- `Δ[A010049(2*n)-A212804(2*n)]` -/
def P6306424391158012885.Spec : Prop :=
  ∀ n, P6306424391158012885.a n = A027989 n

end A027989

/-!
# A027990: Sum{T(n,k)*T(n,2n-k)}, 0<=k<=n, T given by A027926.

The programs for A027990, the canonical program `A027990.P6935938659145050057` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027990 has offset 0).

The definition of A027990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027990.P6935938659145050057

`∑[A094864(n)]-A001654(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027990

/-- `∑[A094864(n)]-A001654(n)` -/
def P6935938659145050057.Spec : Prop :=
  ∀ n, P6935938659145050057.a n = A027990 n

theorem P6935938659145050057.correct : P6935938659145050057.Spec := by
  intro n
  simp only [A027990]

end A027990

/-! ## A027990.P14282911537144043125

`∑[A094864(n)-A007598(n)]`
-/

namespace A027990.P14282911537144043125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n - A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027990.P14282911537144043125

namespace A027990

/-- `∑[A094864(n)-A007598(n)]` -/
def P14282911537144043125.Spec : Prop :=
  ∀ n, P14282911537144043125.a n = A027990 n

end A027990

/-! ## A027990.P819201034326872898

`A059502(n+1)-A001654(n)`
-/

namespace A027990.P819201034326872898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) - A001654 n

end

end A027990.P819201034326872898

namespace A027990

/-- `A059502(n+1)-A001654(n)` -/
def P819201034326872898.Spec : Prop :=
  ∀ n, P819201034326872898.a n = A027990 n

end A027990

/-! ## A027990.P8797090721464796732

`∑[A094864(n)-A000045(n)²]`
-/

namespace A027990.P8797090721464796732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n - A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027990.P8797090721464796732

namespace A027990

/-- `∑[A094864(n)-A000045(n)²]` -/
def P8797090721464796732.Spec : Prop :=
  ∀ n, P8797090721464796732.a n = A027990 n

end A027990

/-! ## A027990.P8961565312142750892

`A059505(n+1)-A293411(2*n)`
-/

namespace A027990.P8961565312142750892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) - A293411 (2 * n)

end

end A027990.P8961565312142750892

namespace A027990

/-- `A059505(n+1)-A293411(2*n)` -/
def P8961565312142750892.Spec : Prop :=
  ∀ n, P8961565312142750892.a n = A027990 n

end A027990

/-! ## A027990.P7719733962333730823

`A059502(n+1)-A000045(n+1)*A000045(n)`
-/

namespace A027990.P7719733962333730823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (n + 1) - A000045 (n + 1) * A000045 n

end

end A027990.P7719733962333730823

namespace A027990

/-- `A059502(n+1)-A000045(n+1)*A000045(n)` -/
def P7719733962333730823.Spec : Prop :=
  ∀ n, P7719733962333730823.a n = A027990 n

end A027990

/-! ## A027990.P1847764252077621344

`A027991(n+1)-A129722(2*n)`
-/

namespace A027990.P1847764252077621344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027991 (n + 1) - A129722 (2 * n)

end

end A027990.P1847764252077621344

namespace A027990

/-- `A027991(n+1)-A129722(2*n)` -/
def P1847764252077621344.Spec : Prop :=
  ∀ n, P1847764252077621344.a n = A027990 n

end A027990

/-! ## A027990.P6305053307751080870

`A024458(2*n+1)-A129720(2*n)`
-/

namespace A027990.P6305053307751080870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * n + 1) - A129720 (2 * n)

end

end A027990.P6305053307751080870

namespace A027990

/-- `A024458(2*n+1)-A129720(2*n)` -/
def P6305053307751080870.Spec : Prop :=
  ∀ n, P6305053307751080870.a n = A027990 n

end A027990

/-! ## A027990.P14199164192875378835

`A024458(2*n+1)-A129722(2*n)`
-/

namespace A027990.P14199164192875378835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * n + 1) - A129722 (2 * n)

end

end A027990.P14199164192875378835

namespace A027990

/-- `A024458(2*n+1)-A129722(2*n)` -/
def P14199164192875378835.Spec : Prop :=
  ∀ n, P14199164192875378835.a n = A027990 n

end A027990

/-! ## A027990.P5800901891654919908

`(A010049(2*n+1)+A007598(n+1))/2`
-/

namespace A027990.P5800901891654919908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010049 (2 * n + 1) + A007598 (n + 1) : ℚ) / 2

end

end A027990.P5800901891654919908

namespace A027990

/-- `(A010049(2*n+1)+A007598(n+1))/2` -/
def P5800901891654919908.Spec : Prop :=
  ∀ n, P5800901891654919908.a n = (A027990 n : ℚ)

end A027990

/-! ## A027990.P17419655336364796360

`A024458(2*n+1)-A001629(2*n+1)/2`
-/

namespace A027990.P17419655336364796360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024458 (2 * n + 1) : ℚ) - (A001629 (2 * n + 1) : ℚ) / 2

end

end A027990.P17419655336364796360

namespace A027990

/-- `A024458(2*n+1)-A001629(2*n+1)/2` -/
def P17419655336364796360.Spec : Prop :=
  ∀ n, P17419655336364796360.a n = (A027990 n : ℚ)

end A027990

/-! ## A027990.P269827249128038763

`A129722(2*n+1)+A001654(n+1)-A129722(2*n)`
-/

namespace A027990.P269827249128038763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 1) + (A001654 (n + 1) - A129722 (2 * n))

end

end A027990.P269827249128038763

namespace A027990

/-- `A129722(2*n+1)+A001654(n+1)-A129722(2*n)` -/
def P269827249128038763.Spec : Prop :=
  ∀ n, P269827249128038763.a n = A027990 n

end A027990

/-! ## A027990.P17181495311673025093

`A027991(n+1)+A054444(n)-A001871(n)`
-/

namespace A027990.P17181495311673025093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027991 (n + 1) + (A054444 n - A001871 n)

end

end A027990.P17181495311673025093

namespace A027990

/-- `A027991(n+1)+A054444(n)-A001871(n)` -/
def P17181495311673025093.Spec : Prop :=
  ∀ n, P17181495311673025093.a n = A027990 n

end A027990

/-! ## A027990.P4026774012873983556

`A027991(n+1)+A030267(n+1)-A001870(n)`
-/

namespace A027990.P4026774012873983556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027991 (n + 1) + (A030267 (n + 1) - A001870 n)

end

end A027990.P4026774012873983556

namespace A027990

/-- `A027991(n+1)+A030267(n+1)-A001870(n)` -/
def P4026774012873983556.Spec : Prop :=
  ∀ n, P4026774012873983556.a n = A027990 n

end A027990

/-!
# A027991: a(n) = Sum{T(n,k)*T(n,2n-k)}, 0<=k<=n-1, T given by A027926.

The programs for A027991, the canonical program `A027991.P5048975300542147764` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027991 has offset 1).

The definition of A027991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027991.P16197428245839953603

`A024458(Δ[n²])`
-/

namespace A027991.P16197428245839953603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027991.P16197428245839953603

namespace A027991

/-- `A024458(Δ[n²])` -/
def P16197428245839953603.Spec : Prop :=
  ∀ n, P16197428245839953603.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P12605061592484419846

`A024458(n+1+n)^a(floor(acot(n+3)))` with `a(0)=1`
-/

namespace A027991.P12605061592484419846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A024458 (n + 1 + n) : ℝ) ^ (a ⌊SequenceMachineLib.acot (n + 3 : ℝ)⌋.toNat)

end

end A027991.P12605061592484419846

namespace A027991

/-- `A024458(n+1+n)^a(floor(acot(n+3)))` -/
def P12605061592484419846.Spec : Prop :=
  ∀ n, P12605061592484419846.a n = (A027991 (n + 1) : ℝ)

end A027991

/-! ## A027991.P12941163881389926746

`(n+1)*(A000045(2*n+1)-a(n-1)/(n+1))` with `a(0)=1`
-/

namespace A027991.P12941163881389926746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((A000045 (2 * n + 1) : ℚ) - a (n - 1) / (n + 1 : ℚ))

end

end A027991.P12941163881389926746

namespace A027991

/-- `(n+1)*(A000045(2*n+1)-a(n-1)/(n+1))` -/
def P12941163881389926746.Spec : Prop :=
  ∀ n, P12941163881389926746.a n = (A027991 (n + 1) : ℚ)

end A027991

/-! ## A027991.P5048975300542147764

`A030267(n+1)-A001654(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027991

/-- `A030267(n+1)-A001654(n)` -/
def P5048975300542147764.Spec : Prop :=
  ∀ n, P5048975300542147764.a n = A027991 (n + 1)

theorem P5048975300542147764.correct : P5048975300542147764.Spec := by
  intro n
  simp only [A027991, Nat.add_sub_cancel]

end A027991

/-! ## A027991.P9963939483107532886

`A129722(2*n+1)+A001654(n+1)`
-/

namespace A027991.P9963939483107532886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 1) + A001654 (n + 1)

end

end A027991.P9963939483107532886

namespace A027991

/-- `A129722(2*n+1)+A001654(n+1)` -/
def P9963939483107532886.Spec : Prop :=
  ∀ n, P9963939483107532886.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P8567061125070871104

`∑[A134512(2*n)-A212804(n+1)²]`
-/

namespace A027991.P8567061125070871104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n) - A212804 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027991.P8567061125070871104

namespace A027991

/-- `∑[A134512(2*n)-A212804(n+1)²]` -/
def P8567061125070871104.Spec : Prop :=
  ∀ n, P8567061125070871104.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P6280062221911254159

`A030267(n+1)-A000045(n+1)*A000045(n)`
-/

namespace A027991.P6280062221911254159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) - A000045 (n + 1) * A000045 n

end

end A027991.P6280062221911254159

namespace A027991

/-- `A030267(n+1)-A000045(n+1)*A000045(n)` -/
def P6280062221911254159.Spec : Prop :=
  ∀ n, P6280062221911254159.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P18394553810626848308

`round(A001870(n)/ϕ)`
-/

namespace A027991.P18394553810626848308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001870 n : ℝ) / Real.goldenRatio)

end

end A027991.P18394553810626848308

namespace A027991

/-- `round(A001870(n)/ϕ)` -/
def P18394553810626848308.Spec : Prop :=
  ∀ n, P18394553810626848308.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P18157058247439610508

`A117202(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A027991.P18157058247439610508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117202 (n + 1) - a (n - 1)

end

end A027991.P18157058247439610508

namespace A027991

/-- `A117202(n+1)-a(n-1)` -/
def P18157058247439610508.Spec : Prop :=
  ∀ n, P18157058247439610508.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P5370703394325597373

`A128620(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A027991.P5370703394325597373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128620 (2 * n) - a (n - 1)

end

end A027991.P5370703394325597373

namespace A027991

/-- `A128620(2*n)-a(n-1)` -/
def P5370703394325597373.Spec : Prop :=
  ∀ n, P5370703394325597373.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P6065090548771432026

`(n+1)*A000045(Δ[n²])-a(n-1)` with `a(0)=1`
-/

namespace A027991.P6065090548771432026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A027991.P6065090548771432026

namespace A027991

/-- `(n+1)*A000045(Δ[n²])-a(n-1)` -/
def P6065090548771432026.Spec : Prop :=
  ∀ n, P6065090548771432026.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P16536891519589747372

`(n+1)*Δ[A000045(2*n)]-a(n-1)` with `a(0)=1`
-/

namespace A027991.P16536891519589747372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) - a (n - 1)

end

end A027991.P16536891519589747372

namespace A027991

/-- `(n+1)*Δ[A000045(2*n)]-a(n-1)` -/
def P16536891519589747372.Spec : Prop :=
  ∀ n, P16536891519589747372.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P5599600989935945868

`floor((n+1)*A000045(2*n+1)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A027991.P5599600989935945868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000045 (2 * n + 1) - a (n - 1)

end

end A027991.P5599600989935945868

namespace A027991

/-- `floor((n+1)*A000045(2*n+1)-a(n-1))` -/
def P5599600989935945868.Spec : Prop :=
  ∀ n, P5599600989935945868.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P9435986538217837289

`A025082(2*n+1)-A024458(2*(n+1))`
-/

namespace A027991.P9435986538217837289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (2 * n + 1) - A024458 (2 * (n + 1))

end

end A027991.P9435986538217837289

namespace A027991

/-- `A025082(2*n+1)-A024458(2*(n+1))` -/
def P9435986538217837289.Spec : Prop :=
  ∀ n, P9435986538217837289.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P12819978683188858313

`A025078(2*(n+1))-A025078(2*n+1)`
-/

namespace A027991.P12819978683188858313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025078 (2 * (n + 1)) - A025078 (2 * n + 1)

end

end A027991.P12819978683188858313

namespace A027991

/-- `A025078(2*(n+1))-A025078(2*n+1)` -/
def P12819978683188858313.Spec : Prop :=
  ∀ n, P12819978683188858313.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P16419380620324424364

`2*A024458(2*n+1)-A024458(2*n+1)`
-/

namespace A027991.P16419380620324424364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024458 (2 * n + 1) - A024458 (2 * n + 1)

end

end A027991.P16419380620324424364

namespace A027991

/-- `2*A024458(2*n+1)-A024458(2*n+1)` -/
def P16419380620324424364.Spec : Prop :=
  ∀ n, P16419380620324424364.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P10926818220126851130

`A024458(2*n+1)/A025078(2*n+1)*A024458(2*(n+1))`
-/

namespace A027991.P10926818220126851130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024458 (2 * n + 1) : ℚ) / (A025078 (2 * n + 1) : ℚ) * (A024458 (2 * (n + 1)) : ℚ)

end

end A027991.P10926818220126851130

namespace A027991

/-- `A024458(2*n+1)/A025078(2*n+1)*A024458(2*(n+1))` -/
def P10926818220126851130.Spec : Prop :=
  ∀ n, P10926818220126851130.a n = (A027991 (n + 1) : ℚ)

end A027991

/-! ## A027991.P10572520926023138249

`A025079(2*n+1)-A025082(2*n+1)`
-/

namespace A027991.P10572520926023138249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025079 (2 * n + 1) - A025082 (2 * n + 1)

end

end A027991.P10572520926023138249

namespace A027991

/-- `A025079(2*n+1)-A025082(2*n+1)` -/
def P10572520926023138249.Spec : Prop :=
  ∀ n, P10572520926023138249.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P13477319011547906936

`2*A025082(2*n+1)-A025082(2*(n+1))`
-/

namespace A027991.P13477319011547906936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025082 (2 * n + 1) - A025082 (2 * (n + 1))

end

end A027991.P13477319011547906936

namespace A027991

/-- `2*A025082(2*n+1)-A025082(2*(n+1))` -/
def P13477319011547906936.Spec : Prop :=
  ∀ n, P13477319011547906936.a n = A027991 (n + 1)

end A027991

/-! ## A027991.P1713349871933606699

`1/5*((-1)^n+(n+1)*A000032(2*(n+1))+A000045(2*n+1))`
-/

namespace A027991.P1713349871933606699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * ((-1) ^ n + (n + 1 : ℤ) * A000032 (2 * (n + 1)) + A000045 (2 * n + 1) : ℚ)

end

end A027991.P1713349871933606699

namespace A027991

/-- `1/5*((-1)^n+(n+1)*A000032(2*(n+1))+A000045(2*n+1))` -/
def P1713349871933606699.Spec : Prop :=
  ∀ n, P1713349871933606699.a n = (A027991 (n + 1) : ℚ)

end A027991

/-!
# A027992: a(n) = 1*T(n,0) + 2*T(n,1) + ... + (2n+1)*T(n,2n), T given by A027926.

The programs for A027992, the canonical program `A027992.P7713747682354996554` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027992 has offset 0).

The definition of A027992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027992.P7713747682354996554

`2^n*(3*n-1)+2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027992

/-- `2^n*(3*n-1)+2` -/
def P7713747682354996554.Spec : Prop :=
  ∀ n, P7713747682354996554.a n = A027992 n

theorem P7713747682354996554.correct : P7713747682354996554.Spec := by
  intro n
  simp only [A027992]

end A027992

/-! ## A027992.P9130933744731303546

`∑[ogf((1+x)/(1-4x+4x^2))]`
-/

namespace A027992.P9130933744731303546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P9130933744731303546

namespace A027992

/-- `∑[ogf((1+x)/(1-4x+4x^2))]` -/
def P9130933744731303546.Spec : Prop :=
  ∀ n, P9130933744731303546.a n = A027992 n

end A027992

/-! ## A027992.P14759443912994107524

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=5`
-/

namespace A027992.P14759443912994107524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P14759443912994107524

namespace A027992

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P14759443912994107524.Spec : Prop :=
  ∀ n, P14759443912994107524.a n = A027992 n

end A027992

/-! ## A027992.P5652250474734838962

`∑[(3*n+2)*2^xor(-1, -n)]`
-/

namespace A027992.P5652250474734838962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) * (2 : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P5652250474734838962

namespace A027992

/-- `∑[(3*n+2)*2^xor(-1, -n)]` -/
def P5652250474734838962.Spec : Prop :=
  ∀ n, P5652250474734838962.a n = (A027992 n : ℚ)

end A027992

/-! ## A027992.P9958016137149303945

`xor(3, 4*(a(n-1)-a(n-2))+1)` with `a(0)=1, a(1)=6`
-/

namespace A027992.P9958016137149303945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  Int.xor 3 (4 * (a (n - 1) - a (n - 2)) + 1)

end

end A027992.P9958016137149303945

namespace A027992

/-- `xor(3, 4*(a(n-1)-a(n-2))+1)` -/
def P9958016137149303945.Spec : Prop :=
  ∀ n, P9958016137149303945.a n = A027992 n

end A027992

/-! ## A027992.P13807508333807226199

`∑[∑[A339252(n)]]`
-/

namespace A027992.P13807508333807226199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P13807508333807226199

namespace A027992

/-- `∑[∑[A339252(n)]]` -/
def P13807508333807226199.Spec : Prop :=
  ∀ n, P13807508333807226199.a n = A027992 n

end A027992

/-! ## A027992.P3640655845089614330

`∑[A053220(n+1)]`
-/

namespace A027992.P3640655845089614330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P3640655845089614330

namespace A027992

/-- `∑[A053220(n+1)]` -/
def P3640655845089614330.Spec : Prop :=
  ∀ n, P3640655845089614330.a n = A027992 n

end A027992

/-! ## A027992.P14890282347963594745

`∑[abs(Δ[A048496(n)])]`
-/

namespace A027992.P14890282347963594745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P14890282347963594745

namespace A027992

/-- `∑[abs(Δ[A048496(n)])]` -/
def P14890282347963594745.Spec : Prop :=
  ∀ n, P14890282347963594745.a n = A027992 n

end A027992

/-! ## A027992.P9489250897022908493

`∑[abs(Δ[A053565(n)])]`
-/

namespace A027992.P9489250897022908493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P9489250897022908493

namespace A027992

/-- `∑[abs(Δ[A053565(n)])]` -/
def P9489250897022908493.Spec : Prop :=
  ∀ n, P9489250897022908493.a n = A027992 n

end A027992

/-! ## A027992.P5253164760244715293

`∑[∑[∑[A106472(n)]]]`
-/

namespace A027992.P5253164760244715293
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P5253164760244715293

namespace A027992

/-- `∑[∑[∑[A106472(n)]]]` -/
def P5253164760244715293.Spec : Prop :=
  ∀ n, P5253164760244715293.a n = A027992 n

end A027992

/-! ## A027992.P10957246699165527537

`∑[A203150(2*n+1)]`
-/

namespace A027992.P10957246699165527537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203150 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P10957246699165527537

namespace A027992

/-- `∑[A203150(2*n+1)]` -/
def P10957246699165527537.Spec : Prop :=
  ∀ n, P10957246699165527537.a n = A027992 n

end A027992

/-! ## A027992.P11485631423105661019

`∑[abs(Δ[A085750(n+1)])]`
-/

namespace A027992.P11485631423105661019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P11485631423105661019

namespace A027992

/-- `∑[abs(Δ[A085750(n+1)])]` -/
def P11485631423105661019.Spec : Prop :=
  ∀ n, P11485631423105661019.a n = A027992 n

end A027992

/-! ## A027992.P15450916910870194777

`∑[(A288038(n+1)-1)/2]`
-/

namespace A027992.P15450916910870194777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288038 (n + 1) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P15450916910870194777

namespace A027992

/-- `∑[(A288038(n+1)-1)/2]` -/
def P15450916910870194777.Spec : Prop :=
  ∀ n, P15450916910870194777.a n = (A027992 n : ℚ)

end A027992

/-! ## A027992.P1084902372341182562

`2*(A083329(n)+a(n-1))` with `a(0)=1`
-/

namespace A027992.P1084902372341182562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A083329 n + a (n - 1))

end

end A027992.P1084902372341182562

namespace A027992

/-- `2*(A083329(n)+a(n-1))` -/
def P1084902372341182562.Spec : Prop :=
  ∀ n, P1084902372341182562.a n = A027992 n

end A027992

/-! ## A027992.P591737917966190330

`∑[(n+1+n/2)*A000079(n)]`
-/

namespace A027992.P591737917966190330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) + (n : ℚ) / 2) * (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P591737917966190330

namespace A027992

/-- `∑[(n+1+n/2)*A000079(n)]` -/
def P591737917966190330.Spec : Prop :=
  ∀ n, P591737917966190330.a n = (A027992 n : ℚ)

end A027992

/-! ## A027992.P14424792246806584621

`∑[A036289(n)+A001792(n)]`
-/

namespace A027992.P14424792246806584621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P14424792246806584621

namespace A027992

/-- `∑[A036289(n)+A001792(n)]` -/
def P14424792246806584621.Spec : Prop :=
  ∀ n, P14424792246806584621.a n = A027992 n

end A027992

/-! ## A027992.P3034652488201542730

`∑[A000225(n)+∑[A084858(n)]]`
-/

namespace A027992.P3034652488201542730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P3034652488201542730

namespace A027992

/-- `∑[A000225(n)+∑[A084858(n)]]` -/
def P3034652488201542730.Spec : Prop :=
  ∀ n, P3034652488201542730.a n = A027992 n

end A027992

/-! ## A027992.P15498361630384110785

`ogf((1+x)/(1-5x+8x^2-4x^3))`
-/

namespace A027992.P15498361630384110785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -5, 8, -4] n

end

end A027992.P15498361630384110785

namespace A027992

/-- `ogf((1+x)/(1-5x+8x^2-4x^3))` -/
def P15498361630384110785.Spec : Prop :=
  ∀ n, P15498361630384110785.a n = A027992 n

end A027992

/-! ## A027992.P999496048082846393

`∑[A084857(n+1)/(n+1)]`
-/

namespace A027992.P999496048082846393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084857 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P999496048082846393

namespace A027992

/-- `∑[A084857(n+1)/(n+1)]` -/
def P999496048082846393.Spec : Prop :=
  ∀ n, P999496048082846393.a n = (A027992 n : ℚ)

end A027992

/-! ## A027992.P12383838690893368584

`∑[A393901(∑[n+1])]`
-/

namespace A027992.P12383838690893368584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393901 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027992.P12383838690893368584

namespace A027992

/-- `∑[A393901(∑[n+1])]` -/
def P12383838690893368584.Spec : Prop :=
  ∀ n, P12383838690893368584.a n = A027992 n

end A027992

/-!
# A027993: a(n) = 1*T(n,2n) + 2*T(n,2n-1) + ... + (2n+1)*T(n,0), T given by A027926.

The programs for A027993, the canonical program `A027993.P14239098711139684117` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027993 has offset 0).

The definition of A027993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027993.P14239098711139684117

`(n+5)*2^n-2*n-4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027993

/-- `(n+5)*2^n-2*n-4` -/
def P14239098711139684117.Spec : Prop :=
  ∀ n, P14239098711139684117.a n = A027993 n

theorem P14239098711139684117.correct : P14239098711139684117.Spec := by
  intro n
  simp only [A027993]

end A027993

/-! ## A027993.P12135162715534166582

`∑[∑[ogf((1-3x^2)/(1-4x+4x^2))]]`
-/

namespace A027993.P12135162715534166582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027993.P12135162715534166582

namespace A027993

/-- `∑[∑[ogf((1-3x^2)/(1-4x+4x^2))]]` -/
def P12135162715534166582.Spec : Prop :=
  ∀ n, P12135162715534166582.a n = A027993 n

end A027993

/-! ## A027993.P10823092233257766969

`∑[4*(a(n-1)-a(n-2))-2]` with `a(0)=1, a(1)=5`
-/

namespace A027993.P10823092233257766969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027993.P10823092233257766969

namespace A027993

/-- `∑[4*(a(n-1)-a(n-2))-2]` -/
def P10823092233257766969.Spec : Prop :=
  ∀ n, P10823092233257766969.a n = A027993 n

end A027993

/-! ## A027993.P10330703090400133191

`∑[A047860(n)]`
-/

namespace A027993.P10330703090400133191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027993.P10330703090400133191

namespace A027993

/-- `∑[A047860(n)]` -/
def P10330703090400133191.Spec : Prop :=
  ∀ n, P10330703090400133191.a n = A027993 n

end A027993

/-! ## A027993.P13440265349189169892

`∑[A115618(n)-3]`
-/

namespace A027993.P13440265349189169892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115618 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027993.P13440265349189169892

namespace A027993

/-- `∑[A115618(n)-3]` -/
def P13440265349189169892.Spec : Prop :=
  ∀ n, P13440265349189169892.a n = A027993 n

end A027993

/-! ## A027993.P5439564661868202513

`∑[A133546(n+1)+n]`
-/

namespace A027993.P5439564661868202513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133546 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027993.P5439564661868202513

namespace A027993

/-- `∑[A133546(n+1)+n]` -/
def P5439564661868202513.Spec : Prop :=
  ∀ n, P5439564661868202513.a n = A027993 n

end A027993

/-! ## A027993.P12807611849370160307

`record[A045623(n)-2*n]`
-/

namespace A027993.P12807611849370160307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027993.P12807611849370160307

namespace A027993

/-- `record[A045623(n)-2*n]` -/
def P12807611849370160307.Spec : Prop :=
  ∀ n, P12807611849370160307.a n = A027993 n

end A027993

/-! ## A027993.P15462207761768080713

`Δ[A338230(n+1)]`
-/

namespace A027993.P15462207761768080713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027993.P15462207761768080713

namespace A027993

/-- `Δ[A338230(n+1)]` -/
def P15462207761768080713.Spec : Prop :=
  ∀ n, P15462207761768080713.a n = A027993 n

end A027993

/-! ## A027993.P15189203745453449

`Δ[A053221(n+1)-(n+1)²]`
-/

namespace A027993.P15189203745453449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053221 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027993.P15189203745453449

namespace A027993

/-- `Δ[A053221(n+1)-(n+1)²]` -/
def P15189203745453449.Spec : Prop :=
  ∀ n, P15189203745453449.a n = A027993 n

theorem P15189203745453449.correct : P15189203745453449.Spec := by
  intro n
  simp only [A027993, Nat.add_sub_cancel, A027993.P15189203745453449.f1, A027993.P15189203745453449.a, A027993.P14239098711139684117.a, A053221, A053221.P850033419058403302.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027993

/-!
# A027994: a(n) = (F(2n+3) - F(n))/2 where F() = Fibonacci numbers A000045.

The programs for A027994, the canonical program `A027994.P10202381450971588503` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027994 has offset 0).

The definition of A027994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027994.P7634749779376455179

`ogf((1-2x+x^2)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A027994.P7634749779376455179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 3, 2, -1] n

end

end A027994.P7634749779376455179

namespace A027994

/-- `ogf((1-2x+x^2)/(1-4x+3x^2+2x^3-x^4))` -/
def P7634749779376455179.Spec : Prop :=
  ∀ n, P7634749779376455179.a n = A027994 n

end A027994

/-! ## A027994.P10202381450971588503

`A000045(2*n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027994

/-- `A000045(2*n)+a(n-1)+a(n-2)` -/
def P10202381450971588503.Spec : Prop :=
  ∀ n, P10202381450971588503.a n = A027994 n

theorem P10202381450971588503.correct : P10202381450971588503.Spec := by
  intro n
  simp only [A027994]

end A027994

/-! ## A027994.P17377716964551222716

`A122367(n)+A094292(n)`
-/

namespace A027994.P17377716964551222716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A094292 n

end

end A027994.P17377716964551222716

namespace A027994

/-- `A122367(n)+A094292(n)` -/
def P17377716964551222716.Spec : Prop :=
  ∀ n, P17377716964551222716.a n = A027994 n

end A027994

/-! ## A027994.P14969388034902479082

`A094292(n)+A001519(n+1)`
-/

namespace A027994.P14969388034902479082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n + A001519 (n + 1)

end

end A027994.P14969388034902479082

namespace A027994

/-- `A094292(n)+A001519(n+1)` -/
def P14969388034902479082.Spec : Prop :=
  ∀ n, P14969388034902479082.a n = A027994 n

end A027994

/-! ## A027994.P7213685718377992656

`A191797(n)+A001654(n+1)`
-/

namespace A027994.P7213685718377992656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A001654 (n + 1)

end

end A027994.P7213685718377992656

namespace A027994

/-- `A191797(n)+A001654(n+1)` -/
def P7213685718377992656.Spec : Prop :=
  ∀ n, P7213685718377992656.a n = A027994 n

end A027994

/-! ## A027994.P5733272511815365859

`A059512(n+2)-A000045(n)`
-/

namespace A027994.P5733272511815365859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 2) - A000045 n

end

end A027994.P5733272511815365859

namespace A027994

/-- `A059512(n+2)-A000045(n)` -/
def P5733272511815365859.Spec : Prop :=
  ∀ n, P5733272511815365859.a n = A027994 n

end A027994

/-! ## A027994.P17132532702600248978

`A127968(2*n)+A094292(n)`
-/

namespace A027994.P17132532702600248978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (2 * n) + A094292 n

end

end A027994.P17132532702600248978

namespace A027994

/-- `A127968(2*n)+A094292(n)` -/
def P17132532702600248978.Spec : Prop :=
  ∀ n, P17132532702600248978.a n = A027994 n

end A027994

/-! ## A027994.P1273323331468570384

`A056014(n+1)+A051450(n+1)`
-/

namespace A027994.P1273323331468570384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 1) + A051450 (n + 1)

end

end A027994.P1273323331468570384

namespace A027994

/-- `A056014(n+1)+A051450(n+1)` -/
def P1273323331468570384.Spec : Prop :=
  ∀ n, P1273323331468570384.a n = A027994 n

end A027994

/-! ## A027994.P15583923210988019508

`A056014(n+2)+A000045(n+1)`
-/

namespace A027994.P15583923210988019508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 2) + A000045 (n + 1)

end

end A027994.P15583923210988019508

namespace A027994

/-- `A056014(n+2)+A000045(n+1)` -/
def P15583923210988019508.Spec : Prop :=
  ∀ n, P15583923210988019508.a n = A027994 n

end A027994

/-! ## A027994.P5103295853694775315

`A059512(n+2)-A212804(n+1)`
-/

namespace A027994.P5103295853694775315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 2) - A212804 (n + 1)

end

end A027994.P5103295853694775315

namespace A027994

/-- `A059512(n+2)-A212804(n+1)` -/
def P5103295853694775315.Spec : Prop :=
  ∀ n, P5103295853694775315.a n = A027994 n

end A027994

/-! ## A027994.P11064812298066289674

`A005207(n+2)-A000045(n+2)`
-/

namespace A027994.P11064812298066289674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 2) - A000045 (n + 2)

end

end A027994.P11064812298066289674

namespace A027994

/-- `A005207(n+2)-A000045(n+2)` -/
def P11064812298066289674.Spec : Prop :=
  ∀ n, P11064812298066289674.a n = A027994 n

end A027994

/-! ## A027994.P7234023965130451249

`A094292(n)+A000045(2*n+1)`
-/

namespace A027994.P7234023965130451249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n + A000045 (2 * n + 1)

end

end A027994.P7234023965130451249

namespace A027994

/-- `A094292(n)+A000045(2*n+1)` -/
def P7234023965130451249.Spec : Prop :=
  ∀ n, P7234023965130451249.a n = A027994 n

end A027994

/-! ## A027994.P11083757260899366426

`A005207(n+2)-A212804(n+3)`
-/

namespace A027994.P11083757260899366426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 2) - A212804 (n + 3)

end

end A027994.P11083757260899366426

namespace A027994

/-- `A005207(n+2)-A212804(n+3)` -/
def P11083757260899366426.Spec : Prop :=
  ∀ n, P11083757260899366426.a n = A027994 n

end A027994

/-! ## A027994.P7421570278511476281

`A004695(2*n+3)-A004695(n)`
-/

namespace A027994.P7421570278511476281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * n + 3) - A004695 n

end

end A027994.P7421570278511476281

namespace A027994

/-- `A004695(2*n+3)-A004695(n)` -/
def P7421570278511476281.Spec : Prop :=
  ∀ n, P7421570278511476281.a n = A027994 n

end A027994

/-! ## A027994.P16791053609286180281

`A147997(2*n+3)-A147997(n)`
-/

namespace A027994.P16791053609286180281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (2 * n + 3) - A147997 n

end

end A027994.P16791053609286180281

namespace A027994

/-- `A147997(2*n+3)-A147997(n)` -/
def P16791053609286180281.Spec : Prop :=
  ∀ n, P16791053609286180281.a n = A027994 n

end A027994

/-! ## A027994.P9268587210872123307

`A173173(2*n+3)-A173173(n)`
-/

namespace A027994.P9268587210872123307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (2 * n + 3) - A173173 n

end

end A027994.P9268587210872123307

namespace A027994

/-- `A173173(2*n+3)-A173173(n)` -/
def P9268587210872123307.Spec : Prop :=
  ∀ n, P9268587210872123307.a n = A027994 n

end A027994

/-! ## A027994.P16459253230278858346

`A001654(n+1)+C(A000045(n), 2)`
-/

namespace A027994.P16459253230278858346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) + (Nat.choose (A000045 n).toNat 2 : ℤ)

end

end A027994.P16459253230278858346

namespace A027994

/-- `A001654(n+1)+C(A000045(n), 2)` -/
def P16459253230278858346.Spec : Prop :=
  ∀ n, P16459253230278858346.a n = A027994 n

end A027994

/-! ## A027994.P469208379025812128

`A056014(n+1)+A001224(2*n+1)`
-/

namespace A027994.P469208379025812128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 1) + A001224 (2 * n + 1)

end

end A027994.P469208379025812128

namespace A027994

/-- `A056014(n+1)+A001224(2*n+1)` -/
def P469208379025812128.Spec : Prop :=
  ∀ n, P469208379025812128.a n = A027994 n

end A027994

/-! ## A027994.P3882749943066820843

`A102526(2*n+1)+A056014(n+1)`
-/

namespace A027994.P3882749943066820843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (2 * n + 1) + A056014 (n + 1)

end

end A027994.P3882749943066820843

namespace A027994

/-- `A102526(2*n+1)+A056014(n+1)` -/
def P3882749943066820843.Spec : Prop :=
  ∀ n, P3882749943066820843.a n = A027994 n

end A027994

/-!
# A027995: a(n) = Sum_{k=0..2n-1} T(n,k)*T(n,k+1), T given by A027926.

The programs for A027995, there is no canonical definition to state claims against.
-/

/-! ## A027995.P8129015976308251754

`∑[A074829(∑[4*(n+1)])]`
-/

namespace A027995.P8129015976308251754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027995.P8129015976308251754

/-! ## A027995.P6002738048898580414

`∑[record[A074829(A120097(n+1))]]`
-/

namespace A027995.P6002738048898580414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (A120097 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027995.P6002738048898580414

/-! ## A027995.P11194561116151528882

`A044951(A037955(2*n+3))+A032443(n)`
-/

namespace A027995.P11194561116151528882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044951 (A037955 (2 * n + 3)).toNat + A032443 n

end

end A027995.P11194561116151528882

/-!
# A027996: a(n)=Sum{T(n,k)*T(n,k+2)}, 0<=k<=2n-2, T given by A027926.

The programs for A027996, there is no canonical definition to state claims against.
-/

/-! ## A027996.P1734331862833003716

`A136412(n+1)-A319848(A000670(n))`
-/

namespace A027996.P1734331862833003716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136412 (n + 1) - A319848 (A000670 n).toNat

end

end A027996.P1734331862833003716

/-!
# A027998: Expansion of Product_{m>=1} (1+q^m)^(m^2).

The programs for A027998, there is no canonical definition to state claims against.
-/

/-! ## A027998.P8980749863449801553

`A284992(∑[n+3])`
-/

namespace A027998.P8980749863449801553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027998.P8980749863449801553

/-! ## A027998.P17494770805301125999

`lcm((-1)^n, A284992(A027379(n+1)))`
-/

namespace A027998.P17494770805301125999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A284992 (A027379 (n + 1)).toNat)

end

end A027998.P17494770805301125999

/-! ## A027998.P11052190240797996419

`A284992(A027379(n+1))+A025439(n)`
-/

namespace A027998.P11052190240797996419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A027379 (n + 1)).toNat + A025439 n

end

end A027998.P11052190240797996419

/-! ## A027998.P12433878517964145169

`A284992(A055998(n+1))+A025439(n)`
-/

namespace A027998.P12433878517964145169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A055998 (n + 1)).toNat + A025439 n

end

end A027998.P12433878517964145169

/-! ## A027998.P13552857898405144054

`or(A000007(n), A284992(A027379(n+1)))`
-/

namespace A027998.P13552857898405144054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A284992 (A027379 (n + 1)).toNat)

end

end A027998.P13552857898405144054

/-! ## A027998.P345377103316222022

`or(A036987(n), A284992(A027379(n+1)))`
-/

namespace A027998.P345377103316222022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A284992 (A027379 (n + 1)).toNat)

end

end A027998.P345377103316222022

/-! ## A027998.P5788748439123322846

`A284992(A055998(n+1))+A000007(n+1)`
-/

namespace A027998.P5788748439123322846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A027998.P5788748439123322846

/-!
# A027999: Expansion of Product(1+q^m)^(m(m-1)/2); m=1..inf.

The programs for A027999, there is no canonical definition to state claims against.
-/

/-! ## A027999.P7396913684588048159

`Δ[A050168(n)]-A039963(A000129(n+2))`
-/

namespace A027999.P7396913684588048159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039963 (A000129 (n + 2)).toNat

end

end A027999.P7396913684588048159

/-! ## A027999.P9570641957557179595

`A076739(n)-A046810(A029889(n))`
-/

namespace A027999.P9570641957557179595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076739 n - A046810 (A029889 n).toNat

end

end A027999.P9570641957557179595

/-! ## A027999.P14750715924541177764

`A236627(A084519(n+1))+A124369(n)`
-/

namespace A027999.P14750715924541177764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236627 (A084519 (n + 1)).toNat + A124369 n

end

end A027999.P14750715924541177764

/-! ## A027999.P16251362588778068029

`A000196(A020888(n+1)*A263986(n))`
-/

namespace A027999.P16251362588778068029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A020888 (n + 1) * A263986 n).toNat

end

end A027999.P16251362588778068029

/-! ## A027999.P12739742036221000379

`A000196((A050292(n)+1)*A263986(n))`
-/

namespace A027999.P12739742036221000379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A050292 n + 1) * A263986 n).toNat

end

end A027999.P12739742036221000379

