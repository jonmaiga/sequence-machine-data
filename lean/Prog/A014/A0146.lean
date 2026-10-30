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
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A014600: Class numbers h(D) of imaginary quadratic orders with discriminant D == 0 or 1 mod 4, D<0.

The programs for A014600, there is no canonical definition to state claims against.
-/

/-! ## A014600.P17615802717376009735

`A124765(A166974(n)+A124753(n))`
-/

namespace A014600.P17615802717376009735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A166974 n + A124753 n).toNat

end

end A014600.P17615802717376009735

/-! ## A014600.P16763978655872817488

`A124765(A124753(n)+A030399(n+1))`
-/

namespace A014600.P16763978655872817488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A124753 n + A030399 (n + 1)).toNat

end

end A014600.P16763978655872817488

/-!
# A014601: Numbers congruent to 0 or 3 mod 4.

The programs for A014601, the canonical program `A014601.P15167012504094999713` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014601 has offset 0).

The definition of A014601 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A014601.anchor (n : ℕ) : A014601 n = (Nat.nth (fun k => k % 4 ∈ ({0, 3} : Finset ℕ)) (n) : ℤ)` in `Proof.A014.A014601`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014601.P15167012504094999713

`2*n+n%2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014601

/-- `2*n+n%2` -/
def P15167012504094999713.Spec : Prop :=
  ∀ n, (P15167012504094999713.a n : ℤ) = A014601 n

theorem P15167012504094999713.correct : P15167012504094999713.Spec := by
  intro n
  simp only [A014601]

end A014601

/-! ## A014601.P9053138865530322307

`ogf((3x+x^2)/(1-x-x^2+x^3))`
-/

namespace A014601.P9053138865530322307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -1, -1, 1] n

end

end A014601.P9053138865530322307

namespace A014601

/-- `ogf((3x+x^2)/(1-x-x^2+x^3))` -/
def P9053138865530322307.Spec : Prop :=
  ∀ n, P9053138865530322307.a n = A014601 n

end A014601

/-! ## A014601.P4014037420593615568

`3*n-2*floor(n/2)`
-/

namespace A014601.P4014037420593615568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋

end

end A014601.P4014037420593615568

namespace A014601

/-- `3*n-2*floor(n/2)` -/
def P4014037420593615568.Spec : Prop :=
  ∀ n, P4014037420593615568.a n = A014601 n

end A014601

/-! ## A014601.P14460842676018121097

`comp[or(2, n)-1]`
-/

namespace A014601.P14460842676018121097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014601.P14460842676018121097

namespace A014601

/-- `comp[or(2, n)-1]` -/
def P14460842676018121097.Spec : Prop :=
  ∀ n, (P14460842676018121097.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P16937377136473878729

`comp[abs(or(2, -n))]`
-/

namespace A014601.P16937377136473878729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014601.P16937377136473878729

namespace A014601

/-- `comp[abs(or(2, -n))]` -/
def P16937377136473878729.Spec : Prop :=
  ∀ n, (P16937377136473878729.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P4394970318436628827

`comp[-or(2, -n)]`
-/

namespace A014601.P4394970318436628827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014601.P4394970318436628827

namespace A014601

/-- `comp[-or(2, -n)]` -/
def P4394970318436628827.Spec : Prop :=
  ∀ n, (P4394970318436628827.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P18294409895690266167

`and(1, n)+2*n`
-/

namespace A014601.P18294409895690266167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2 * n

end

end A014601.P18294409895690266167

namespace A014601

/-- `and(1, n)+2*n` -/
def P18294409895690266167.Spec : Prop :=
  ∀ n, (P18294409895690266167.a n : ℤ) = A014601 n

theorem P18294409895690266167.correct : P18294409895690266167.Spec := by
  intro n
  simp only [A014601, Nat.add_sub_cancel, A014601.P18294409895690266167.a, A014601.P15167012504094999713.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A014601

/-! ## A014601.P13529438224090181721

`xor(1, or(1, n)+n)`
-/

namespace A014601.P13529438224090181721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n + n)

end

end A014601.P13529438224090181721

namespace A014601

/-- `xor(1, or(1, n)+n)` -/
def P13529438224090181721.Spec : Prop :=
  ∀ n, (P13529438224090181721.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P3247095565126689469

`or(2*n, and(1, n))`
-/

namespace A014601.P3247095565126689469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.land 1 n)

end

end A014601.P3247095565126689469

namespace A014601

/-- `or(2*n, and(1, n))` -/
def P3247095565126689469.Spec : Prop :=
  ∀ n, (P3247095565126689469.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P5824895324475740766

`xor(2*n, and(1, n))`
-/

namespace A014601.P5824895324475740766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.land 1 n)

end

end A014601.P5824895324475740766

namespace A014601

/-- `xor(2*n, and(1, n))` -/
def P5824895324475740766.Spec : Prop :=
  ∀ n, (P5824895324475740766.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P11572012462435286820

`lt[or(2, n-1), n]`
-/

namespace A014601.P11572012462435286820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014601.P11572012462435286820

namespace A014601

/-- `lt[or(2, n-1), n]` -/
def P11572012462435286820.Spec : Prop :=
  ∀ n, (P11572012462435286820.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P2634795932228653495

`lt[n, xor(2, n+1)]`
-/

namespace A014601.P2634795932228653495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014601.P2634795932228653495

namespace A014601

/-- `lt[n, xor(2, n+1)]` -/
def P2634795932228653495.Spec : Prop :=
  ∀ n, (P2634795932228653495.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P12166474348383660569

`lt[xor(2, n-1), n]`
-/

namespace A014601.P12166474348383660569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014601.P12166474348383660569

namespace A014601

/-- `lt[xor(2, n-1), n]` -/
def P12166474348383660569.Spec : Prop :=
  ∀ n, (P12166474348383660569.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P8777993533795054823

`record[2-or(2, -n)]`
-/

namespace A014601.P8777993533795054823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014601.P8777993533795054823

namespace A014601

/-- `record[2-or(2, -n)]` -/
def P8777993533795054823.Spec : Prop :=
  ∀ n, P8777993533795054823.a n = A014601 n

end A014601

/-! ## A014601.P13325877634950366824

`record[-xor(2, 2-n)]`
-/

namespace A014601.P13325877634950366824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014601.P13325877634950366824

namespace A014601

/-- `record[-xor(2, 2-n)]` -/
def P13325877634950366824.Spec : Prop :=
  ∀ n, P13325877634950366824.a n = A014601 n

end A014601

/-! ## A014601.P1474174459195428637

`record[and(2, -n)+n]`
-/

namespace A014601.P1474174459195428637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014601.P1474174459195428637

namespace A014601

/-- `record[and(2, -n)+n]` -/
def P1474174459195428637.Spec : Prop :=
  ∀ n, P1474174459195428637.a n = A014601 n

end A014601

/-! ## A014601.P14852244925508914486

`record[n-and(2, -n)]`
-/

namespace A014601.P14852244925508914486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014601.P14852244925508914486

namespace A014601

/-- `record[n-and(2, -n)]` -/
def P14852244925508914486.Spec : Prop :=
  ∀ n, P14852244925508914486.a n = A014601 n

end A014601

/-! ## A014601.P16900857139601906238

`lt[-or(2, -n), n]`
-/

namespace A014601.P16900857139601906238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014601.P16900857139601906238

namespace A014601

/-- `lt[-or(2, -n), n]` -/
def P16900857139601906238.Spec : Prop :=
  ∀ n, (P16900857139601906238.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P14992976588061831621

`lt[-xor(2, -n), n]`
-/

namespace A014601.P14992976588061831621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014601.P14992976588061831621

namespace A014601

/-- `lt[-xor(2, -n), n]` -/
def P14992976588061831621.Spec : Prop :=
  ∀ n, (P14992976588061831621.a n : ℤ) = A014601 n

end A014601

/-! ## A014601.P9859800782077803961

`a(n-2)+4` with `a(0)=0, a(1)=3`
-/

namespace A014601.P9859800782077803961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 4

end

end A014601.P9859800782077803961

namespace A014601

/-- `a(n-2)+4` -/
def P9859800782077803961.Spec : Prop :=
  ∀ n, (P9859800782077803961.a n : ℤ) = A014601 n

end A014601

/-!
# A014602: Discriminants of imaginary quadratic fields with class number 1 (negated).

The programs for A014602, there is no canonical definition to state claims against.
-/

/-! ## A014602.P5820381908034120876

`eq[1, A058305(n)]`
-/

namespace A014602.P5820381908034120876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014602.P5820381908034120876

/-! ## A014602.P6130129552085718849

`eq[1, A191410(n+1)]+1`
-/

namespace A014602.P6130129552085718849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014602.P6130129552085718849

/-! ## A014602.P16440322614894204188

`filter[lcm(2, n)/gcd(2, n), A058305(#)]`
-/

namespace A014602.P16440322614894204188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058305 (SequenceMachineLib.roundAway (f1 j)).toNat = 1) n)

end

end A014602.P16440322614894204188

/-! ## A014602.P1673236654659810737

`A133675(∑[A084546(n)])`
-/

namespace A014602.P1673236654659810737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133675 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014602.P1673236654659810737

/-! ## A014602.P16324896154131639077

`eq[1, A191410(A028310(n))]`
-/

namespace A014602.P16324896154131639077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014602.P16324896154131639077

/-!
# A014603: Discriminants of imaginary quadratic fields with class number 2 (negated).

The programs for A014603, there is no canonical definition to state claims against.
-/

/-! ## A014603.P7552937866119777064

`eq[2, A191410(n+1)]+1`
-/

namespace A014603.P7552937866119777064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014603.P7552937866119777064

/-! ## A014603.P10257689287937447362

`eq[2, A191410(A028310(n))]`
-/

namespace A014603.P10257689287937447362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014603.P10257689287937447362

/-! ## A014603.P1397165666669786043

`A011760(eq[2, A191410(n+1)])`
-/

namespace A014603.P1397165666669786043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014603.P1397165666669786043

/-! ## A014603.P17564077631482475990

`A020725(eq[2, A191410(n+1)])`
-/

namespace A014603.P17564077631482475990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014603.P17564077631482475990

/-! ## A014603.P14514452480202490216

`A056699(eq[2, A191410(n+1)])`
-/

namespace A014603.P14514452480202490216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014603.P14514452480202490216

/-!
# A014604: Inverse of 595th cyclotomic polynomial.

The programs for A014604, there is no canonical definition to state claims against.
-/

/-! ## A014604.P9453843987908988471

`A015199(n)*A033999(n)`
-/

namespace A014604.P9453843987908988471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015199 n * A033999 n

end

end A014604.P9453843987908988471

/-!
# A014605: Partial sums of A001935; at one time this was conjectured to agree with A007478.

The programs for A014605, there is no canonical definition to state claims against.
-/

/-! ## A014605.P9623086177610010794

`a(n-1)+A001935(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A014605.P9623086177610010794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + A001935 (n - 4)

end

end A014605.P9623086177610010794

/-!
# A014606: a(n) = (3n)!/(6^n).

The programs for A014606, the canonical program `A014606.P8810441277372417473` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014606 has offset 0).

The definition of A014606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014606.P1879584851986808126

`A025035(n)*n!`
-/

namespace A014606.P1879584851986808126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025035 n * (Nat.factorial n : ℤ)

end

end A014606.P1879584851986808126

namespace A014606

/-- `A025035(n)*n!` -/
def P1879584851986808126.Spec : Prop :=
  ∀ n, P1879584851986808126.a n = A014606 n

end A014606

/-! ## A014606.P8810441277372417473

`(3*n)!/6^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014606

/-- `(3*n)!/6^n` -/
def P8810441277372417473.Spec : Prop :=
  ∀ n, P8810441277372417473.a n = (A014606 n : ℚ)

end A014606

/-! ## A014606.P8421337156149786622

`C(3*n, 3)*a(n-1)` with `a(0)=1`
-/

namespace A014606.P8421337156149786622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (3 * n) 3 * a (n - 1)

end

end A014606.P8421337156149786622

namespace A014606

/-- `C(3*n, 3)*a(n-1)` -/
def P8421337156149786622.Spec : Prop :=
  ∀ n, (P8421337156149786622.a n : ℤ) = A014606 n

end A014606

/-! ## A014606.P14746954105578786795

`n!*∏[∑[9*n-4]+5-5*n]`
-/

namespace A014606.P14746954105578786795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 5 - (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A014606.P14746954105578786795

namespace A014606

/-- `n!*∏[∑[9*n-4]+5-5*n]` -/
def P14746954105578786795.Spec : Prop :=
  ∀ n, P14746954105578786795.a n = A014606 n

end A014606

/-! ## A014606.P11212162445483240887

`n*((n-1)*9*n+2)*a(n-1)/2` with `a(0)=1`
-/

namespace A014606.P11212162445483240887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((((n : ℤ) - 1) * (9 * n : ℤ) + 2 : ℚ) * a (n - 1) / 2)

end

end A014606.P11212162445483240887

namespace A014606

/-- `n*((n-1)*9*n+2)*a(n-1)/2` -/
def P11212162445483240887.Spec : Prop :=
  ∀ n, P11212162445483240887.a n = (A014606 n : ℚ)

end A014606

/-!
# A014607: Inverse of 598th cyclotomic polynomial.

The programs for A014607, there is no canonical definition to state claims against.
-/

/-! ## A014607.P9367706528917838670

`A014308(n)*A033999(n)`
-/

namespace A014607.P9367706528917838670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014308 n * A033999 n

end

end A014607.P9367706528917838670

/-!
# A014608: a(n) = (4n)!/(24^n).

The programs for A014608, the canonical program `A014608.P10987299112937126242` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014608 has offset 0).

The definition of A014608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014608.P217215056887465692

`n!*A025036(n)`
-/

namespace A014608.P217215056887465692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025036 n

end

end A014608.P217215056887465692

namespace A014608

/-- `n!*A025036(n)` -/
def P217215056887465692.Spec : Prop :=
  ∀ n, P217215056887465692.a n = A014608 n

end A014608

/-! ## A014608.P10987299112937126242

`(4*n)!/24^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014608

/-- `(4*n)!/24^n` -/
def P10987299112937126242.Spec : Prop :=
  ∀ n, P10987299112937126242.a n = (A014608 n : ℚ)

end A014608

/-! ## A014608.P17207891132871883954

`C(4*n, 4)*a(n-1)` with `a(0)=1`
-/

namespace A014608.P17207891132871883954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (4 * n) 4 * a (n - 1)

end

end A014608.P17207891132871883954

namespace A014608

/-- `C(4*n, 4)*a(n-1)` -/
def P17207891132871883954.Spec : Prop :=
  ∀ n, (P17207891132871883954.a n : ℤ) = A014608 n

end A014608

/-! ## A014608.P176245072088507778

`A278074(∑[n]+n)`
-/

namespace A014608.P176245072088507778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278074 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A014608.P176245072088507778

namespace A014608

/-- `A278074(∑[n]+n)` -/
def P176245072088507778.Spec : Prop :=
  ∀ n, P176245072088507778.a n = A014608 n

end A014608

/-! ## A014608.P14263754705330857700

`a(n-1)*A060541(n)` with `a(0)=1`
-/

namespace A014608.P14263754705330857700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A060541 n

end

end A014608.P14263754705330857700

namespace A014608

/-- `a(n-1)*A060541(n)` -/
def P14263754705330857700.Spec : Prop :=
  ∀ n, P14263754705330857700.a n = A014608 n

end A014608

/-!
# A014609: a(n) = (5n)!/(5!^n).

The programs for A014609, there is no canonical definition to state claims against.
-/

/-! ## A014609.P12621530013680684863

`C(5*n, 5)*a(n-1)` with `a(0)=1`
-/

namespace A014609.P12621530013680684863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (5 * n) 5 * a (n - 1)

end

end A014609.P12621530013680684863

/-! ## A014609.P2017170052008756298

`A087109(∑[2*a(n-1)-a(n-2)])` with `a(0)=1, a(1)=6`
-/

namespace A014609.P2017170052008756298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087109 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014609.P2017170052008756298

/-! ## A014609.P2518824479298563441

`A087109(A000566(n+1))`
-/

namespace A014609.P2518824479298563441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087109 (A000566 (n + 1)).toNat

end

end A014609.P2518824479298563441

/-! ## A014609.P12352783793834112055

`A089759(eq[5, A002262(n)])`
-/

namespace A014609.P12352783793834112055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014609.P12352783793834112055

/-! ## A014609.P2705252193054311254

`A187783(eq[6, A193739(n)])`
-/

namespace A014609.P2705252193054311254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014609.P2705252193054311254

/-!
# A014610: Tetranacci numbers arising in connection with current algebras sp(2)_n.

The programs for A014610, the canonical program `A014610.P14468616751136250844` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014610 has offset 0).

The definition of A014610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014610.P14468616751136250844

`ogf((3+2x+2x^2+x^3)/(1-x-x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014610

/-- `ogf((3+2x+2x^2+x^3)/(1-x-x^2-x^3-x^4))` -/
def P14468616751136250844.Spec : Prop :=
  ∀ n, P14468616751136250844.a n = A014610 n

theorem P14468616751136250844.correct : P14468616751136250844.Spec := by
  intro n
  simp only [A014610]

end A014610

/-! ## A014610.P17620630868811848070

`A001630(n+3)+Δ[A089074(n)]`
-/

namespace A014610.P17620630868811848070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 3) + (f1 (n + 1) - f1 n)

end

end A014610.P17620630868811848070

namespace A014610

/-- `A001630(n+3)+Δ[A089074(n)]` -/
def P17620630868811848070.Spec : Prop :=
  ∀ n, P17620630868811848070.a n = A014610 n

end A014610

/-! ## A014610.P9886028230771339172

`A001630(n+4)-record[A001631(n)]`
-/

namespace A014610.P9886028230771339172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014610.P9886028230771339172

namespace A014610

/-- `A001630(n+4)-record[A001631(n)]` -/
def P9886028230771339172.Spec : Prop :=
  ∀ n, P9886028230771339172.a n = A014610 n

end A014610

/-! ## A014610.P6937210060642751853

`A135492(n+1)+Δ[record[A001631(n)]]`
-/

namespace A014610.P6937210060642751853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 1) + (f1 (n + 1) - f1 n)

end

end A014610.P6937210060642751853

namespace A014610

/-- `A135492(n+1)+Δ[record[A001631(n)]]` -/
def P6937210060642751853.Spec : Prop :=
  ∀ n, P6937210060642751853.a n = A014610 n

end A014610

/-! ## A014610.P5696037894415420865

`A251703(n+1)+∑[A100532(n+1)]`
-/

namespace A014610.P5696037894415420865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014610.P5696037894415420865

namespace A014610

/-- `A251703(n+1)+∑[A100532(n+1)]` -/
def P5696037894415420865.Spec : Prop :=
  ∀ n, P5696037894415420865.a n = A014610 n

end A014610

/-! ## A014610.P18009915990430725159

`A135492(n+1)+Δ[A001631(n+3)]`
-/

namespace A014610.P18009915990430725159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 1) + (f1 (n + 1) - f1 n)

end

end A014610.P18009915990430725159

namespace A014610

/-- `A135492(n+1)+Δ[A001631(n+3)]` -/
def P18009915990430725159.Spec : Prop :=
  ∀ n, P18009915990430725159.a n = A014610 n

end A014610

/-! ## A014610.P299948233502598551

`A093175(n+1)+A251703(n+1)+A000288(n)`
-/

namespace A014610.P299948233502598551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093175 (n + 1) + (A251703 (n + 1) + A000288 n)

end

end A014610.P299948233502598551

namespace A014610

/-- `A093175(n+1)+A251703(n+1)+A000288(n)` -/
def P299948233502598551.Spec : Prop :=
  ∀ n, P299948233502598551.a n = A014610 n

end A014610

/-! ## A014610.P1814942710531579712

`A093175(n+1)+A251704(n+1)+A251703(n)`
-/

namespace A014610.P1814942710531579712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093175 (n + 1) + (A251704 (n + 1) + A251703 n)

end

end A014610.P1814942710531579712

namespace A014610

/-- `A093175(n+1)+A251704(n+1)+A251703(n)` -/
def P1814942710531579712.Spec : Prop :=
  ∀ n, P1814942710531579712.a n = A014610 n

end A014610

/-! ## A014610.P11299388671995269280

`A073817(n+1)+A100532(n+1)-A001630(n+1)`
-/

namespace A014610.P11299388671995269280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (n + 1) + (A100532 (n + 1) - A001630 (n + 1))

end

end A014610.P11299388671995269280

namespace A014610

/-- `A073817(n+1)+A100532(n+1)-A001630(n+1)` -/
def P11299388671995269280.Spec : Prop :=
  ∀ n, P11299388671995269280.a n = A014610 n

end A014610

/-! ## A014610.P17018626937646090977

`4-(a(n-1)-A266337(n))` with `a(0)=3`
-/

namespace A014610.P17018626937646090977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 - (a (n - 1) - A266337 n)

end

end A014610.P17018626937646090977

namespace A014610

/-- `4-(a(n-1)-A266337(n))` -/
def P17018626937646090977.Spec : Prop :=
  ∀ n, P17018626937646090977.a n = A014610 n

end A014610

/-! ## A014610.P3364494107796063012

`A001631(A020715(n))-A000078(A020705(n))`
-/

namespace A014610.P3364494107796063012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (A020715 n).toNat - A000078 (A020705 n).toNat

end

end A014610.P3364494107796063012

namespace A014610

/-- `A001631(A020715(n))-A000078(A020705(n))` -/
def P3364494107796063012.Spec : Prop :=
  ∀ n, P3364494107796063012.a n = A014610 n

end A014610

/-! ## A014610.P17697818477087833859

`Δ[A089074(n+2)-A107066(n)]`
-/

namespace A014610.P17697818477087833859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 (n + 2) - A107066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014610.P17697818477087833859

namespace A014610

/-- `Δ[A089074(n+2)-A107066(n)]` -/
def P17697818477087833859.Spec : Prop :=
  ∀ n, P17697818477087833859.a n = A014610 n

end A014610

/-!
# A014611: Inverse of 602nd cyclotomic polynomial.

The programs for A014611, there is no canonical definition to state claims against.
-/

/-! ## A014611.P3363295323542983046

`A014310(n)*A033999(n)`
-/

namespace A014611.P3363295323542983046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014310 n * A033999 n

end

end A014611.P3363295323542983046

/-!
# A014612: Numbers that are the product of exactly three (not necessarily distinct) primes.

The programs for A014612, the canonical program `A014612.P5035219895023979827` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014612 has offset 1).

The definition of A014612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014612.P17329303964260996395

`eq[3, A001222(1+n)]+1`
-/

namespace A014612.P17329303964260996395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014612.P17329303964260996395

namespace A014612

/-- `eq[3, A001222(1+n)]+1` -/
def P17329303964260996395.Spec : Prop :=
  ∀ n, (P17329303964260996395.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P5858850408396448626

`eq[3, A008481(n+1)]+1`
-/

namespace A014612.P5858850408396448626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014612.P5858850408396448626

namespace A014612

/-- `eq[3, A008481(n+1)]+1` -/
def P5858850408396448626.Spec : Prop :=
  ∀ n, (P5858850408396448626.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P1261032170883587072

`eq[n, n-a(A001222(n))]` with `a(0)=1, a(1)=3`
-/

namespace A014612.P1261032170883587072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014612.P1261032170883587072

namespace A014612

/-- `eq[n, n-a(A001222(n))]` -/
def P1261032170883587072.Spec : Prop :=
  ∀ n, (P1261032170883587072.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P5035219895023979827

`eq[4, A318473(n+1)+1]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A014612

/-- `eq[4, A318473(n+1)+1]+1` -/
def P5035219895023979827.Spec : Prop :=
  ∀ n, (P5035219895023979827.a n : ℤ) = A014612 (n + 1)

theorem P5035219895023979827.correct : P5035219895023979827.Spec := by
  intro n
  simp only [A014612, Nat.add_sub_cancel]

end A014612

/-! ## A014612.P10776635366195551484

`∪[A217856(n+1), A033477(n)]`
-/

namespace A014612.P10776635366195551484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P10776635366195551484

namespace A014612

/-- `∪[A217856(n+1), A033477(n)]` -/
def P10776635366195551484.Spec : Prop :=
  ∀ n, (P10776635366195551484.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P11611171258175299486

`A162731(n+1)+A162361(n+1)`
-/

namespace A014612.P11611171258175299486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162731 (n + 1) + A162361 (n + 1)

end

end A014612.P11611171258175299486

namespace A014612

/-- `A162731(n+1)+A162361(n+1)` -/
def P11611171258175299486.Spec : Prop :=
  ∀ n, P11611171258175299486.a n = A014612 (n + 1)

theorem P11611171258175299486.correct : P11611171258175299486.Spec := by
  intro n
  simp only [A014612, Nat.add_sub_cancel, A014612.P11611171258175299486.a, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A162361, A162361.P4203513439730037896.a, A162731, A162731.P11062943425591500254.a, A318473, A318473.P15254297892022099386.a, A006530, A006530.P13372528560459906635.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A070229, A070229.P5792893597916963980.a, A318472, A318472.P17460137329707848954.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A318471, A318471.P10974853522261478504.f1, A318471.P10974853522261478504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014612

/-! ## A014612.P9756970243546868946

`A114382(n+1)-A133796(n+1)`
-/

namespace A014612.P9756970243546868946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114382 (n + 1) - A133796 (n + 1)

end

end A014612.P9756970243546868946

namespace A014612

/-- `A114382(n+1)-A133796(n+1)` -/
def P9756970243546868946.Spec : Prop :=
  ∀ n, P9756970243546868946.a n = A014612 (n + 1)

theorem P9756970243546868946.correct : P9756970243546868946.Spec := by
  intro n
  simp only [A014612, Nat.add_sub_cancel, A014612.P9756970243546868946.a, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A114382, A114382.P1208901813651073029.a, A133796, A133796.P4942108177998988067.a, A318473, A318473.P15254297892022099386.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A088707, A088707.P7291141647877559993.a, A318472, A318472.P17460137329707848954.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318471, A318471.P10974853522261478504.f1, A318471.P10974853522261478504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014612

/-! ## A014612.P14931662291890043310

`A162361(n+1)*A163173(n+1)`
-/

namespace A014612.P14931662291890043310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162361 (n + 1) * A163173 (n + 1)

end

end A014612.P14931662291890043310

namespace A014612

/-- `A162361(n+1)*A163173(n+1)` -/
def P14931662291890043310.Spec : Prop :=
  ∀ n, P14931662291890043310.a n = A014612 (n + 1)

end A014612

/-! ## A014612.P15648894183930271398

`∪[A075818(n+1), A046316(n+1)]`
-/

namespace A014612.P15648894183930271398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P15648894183930271398

namespace A014612

/-- `∪[A075818(n+1), A046316(n+1)]` -/
def P15648894183930271398.Spec : Prop :=
  ∀ n, (P15648894183930271398.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P2556764449497342214

`∪[A110187(n+1), A110188(n+1)]`
-/

namespace A014612.P2556764449497342214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P2556764449497342214

namespace A014612

/-- `∪[A110187(n+1), A110188(n+1)]` -/
def P2556764449497342214.Spec : Prop :=
  ∀ n, (P2556764449497342214.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P10166832293729187788

`∪[A217856(n+1), A030078(n+1)]`
-/

namespace A014612.P10166832293729187788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P10166832293729187788

namespace A014612

/-- `∪[A217856(n+1), A030078(n+1)]` -/
def P10166832293729187788.Spec : Prop :=
  ∀ n, (P10166832293729187788.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P5192319496166163956

`∪[A217856(n+1), A051751(n+1)]`
-/

namespace A014612.P5192319496166163956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P5192319496166163956

namespace A014612

/-- `∪[A217856(n+1), A051751(n+1)]` -/
def P5192319496166163956.Spec : Prop :=
  ∀ n, (P5192319496166163956.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P17064194080968943437

`∪[A285508(n+1), A007304(n+1)]`
-/

namespace A014612.P17064194080968943437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P17064194080968943437

namespace A014612

/-- `∪[A285508(n+1), A007304(n+1)]` -/
def P17064194080968943437.Spec : Prop :=
  ∀ n, (P17064194080968943437.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P4422483063845620101

`∪[A110188(n+1), A217856(n+1)]`
-/

namespace A014612.P4422483063845620101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014612.P4422483063845620101

namespace A014612

/-- `∪[A110188(n+1), A217856(n+1)]` -/
def P4422483063845620101.Spec : Prop :=
  ∀ n, (P4422483063845620101.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P9757702243367432062

`A114382(n+1)-(A001358(n+1)+A000040(n+1))`
-/

namespace A014612.P9757702243367432062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114382 (n + 1) - (A001358 (n + 1) + A000040 (n + 1))

end

end A014612.P9757702243367432062

namespace A014612

/-- `A114382(n+1)-(A001358(n+1)+A000040(n+1))` -/
def P9757702243367432062.Spec : Prop :=
  ∀ n, P9757702243367432062.a n = A014612 (n + 1)

theorem P9757702243367432062.correct : P9757702243367432062.Spec := by
  intro n
  simp only [A014612, Nat.add_sub_cancel, A014612.P9757702243367432062.a, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A114382, A114382.P1208901813651073029.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A088707, A088707.P7291141647877559993.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318472, A318472.P17460137329707848954.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A072000, A072000.P3706059858088101648.a, A318471, A318471.P10974853522261478504.f1, A318471.P10974853522261478504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014612

/-! ## A014612.P15393891262854622960

`Δ[A110209(n)]`
-/

namespace A014612.P15393891262854622960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014612.P15393891262854622960

namespace A014612

/-- `Δ[A110209(n)]` -/
def P15393891262854622960.Spec : Prop :=
  ∀ n, P15393891262854622960.a n = A014612 (n + 1)

end A014612

/-! ## A014612.P17439245041375586797

`A110209(n+1)-A110209(n)`
-/

namespace A014612.P17439245041375586797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 (n + 1) - A110209 n

end

end A014612.P17439245041375586797

namespace A014612

/-- `A110209(n+1)-A110209(n)` -/
def P17439245041375586797.Spec : Prop :=
  ∀ n, P17439245041375586797.a n = A014612 (n + 1)

end A014612

/-! ## A014612.P18021930241759223328

`filter[A358763(n+1), A340369(#)]`
-/

namespace A014612.P18021930241759223328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A014612.P18021930241759223328

namespace A014612

/-- `filter[A358763(n+1), A340369(#)]` -/
def P18021930241759223328.Spec : Prop :=
  ∀ n, P18021930241759223328.a n = A014612 (n + 1)

end A014612

/-! ## A014612.P2485653289773746055

`eq[1, A101637(2*(n+1))]+1`
-/

namespace A014612.P2485653289773746055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014612.P2485653289773746055

namespace A014612

/-- `eq[1, A101637(2*(n+1))]+1` -/
def P2485653289773746055.Spec : Prop :=
  ∀ n, (P2485653289773746055.a n : ℤ) = A014612 (n + 1)

end A014612

/-! ## A014612.P7805456181511325954

`filter[A326111(n+1), A066829(#)]`
-/

namespace A014612.P7805456181511325954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A014612.P7805456181511325954

namespace A014612

/-- `filter[A326111(n+1), A066829(#)]` -/
def P7805456181511325954.Spec : Prop :=
  ∀ n, P7805456181511325954.a n = A014612 (n + 1)

end A014612

/-! ## A014612.P3965808178198789599

`eq[3, ∑{e}[n+3, #]]+3`
-/

namespace A014612.P3965808178198789599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A014612.P3965808178198789599

namespace A014612

/-- `eq[3, ∑{e}[n+3, #]]+3` -/
def P3965808178198789599.Spec : Prop :=
  ∀ n, (P3965808178198789599.a n : ℤ) = A014612 (n + 1)

end A014612

/-!
# A014613: Numbers that are products of 4 primes.

The programs for A014613, the canonical program `A014613.P1114013819310587080` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014613 has offset 1).

The definition of A014613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014613.P1754161284380075410

`filter[A344180(n), A101637(#)]`
-/

namespace A014613.P1754161284380075410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P1754161284380075410

namespace A014613

/-- `filter[A344180(n), A101637(#)]` -/
def P1754161284380075410.Spec : Prop :=
  ∀ n, P1754161284380075410.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P1551609683894411658

`filter[A305901(n+1), A101637(#)]`
-/

namespace A014613.P1551609683894411658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P1551609683894411658

namespace A014613

/-- `filter[A305901(n+1), A101637(#)]` -/
def P1551609683894411658.Spec : Prop :=
  ∀ n, P1551609683894411658.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P306547267429395515

`A114944(n+1)-A114382(n+1)`
-/

namespace A014613.P306547267429395515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114944 (n + 1) - A114382 (n + 1)

end

end A014613.P306547267429395515

namespace A014613

/-- `A114944(n+1)-A114382(n+1)` -/
def P306547267429395515.Spec : Prop :=
  ∀ n, P306547267429395515.a n = A014613 (n + 1)

theorem P306547267429395515.correct : P306547267429395515.Spec := by
  intro n
  simp only [A014613, Nat.add_sub_cancel, A014613.P306547267429395515.a, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A030514, A030514.P11974636125371552077.a, A114382, A114382.P1208901813651073029.a, A114944, A114944.P5745295539132009725.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A088707, A088707.P7291141647877559993.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014613

/-! ## A014613.P6074594067965249585

`∪[A110227(n+1), A110228(n+1)]`
-/

namespace A014613.P6074594067965249585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014613.P6074594067965249585

namespace A014613

/-- `∪[A110227(n+1), A110228(n+1)]` -/
def P6074594067965249585.Spec : Prop :=
  ∀ n, (P6074594067965249585.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P1114013819310587080

`∪[A030514(n+1), A307342(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A014613

/-- `∪[A030514(n+1), A307342(n+1)]` -/
def P1114013819310587080.Spec : Prop :=
  ∀ n, (P1114013819310587080.a n : ℤ) = A014613 (n + 1)

theorem P1114013819310587080.correct : P1114013819310587080.Spec := by
  intro n
  simp only [A014613, Nat.add_sub_cancel]

end A014613

/-! ## A014613.P10680414823593311448

`∪[A046386(n+1), A307341(n+1)]`
-/

namespace A014613.P10680414823593311448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014613.P10680414823593311448

namespace A014613

/-- `∪[A046386(n+1), A307341(n+1)]` -/
def P10680414823593311448.Spec : Prop :=
  ∀ n, (P10680414823593311448.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P13333535980806424753

`∪[A074985(n+1), A307342(n+1)]`
-/

namespace A014613.P13333535980806424753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014613.P13333535980806424753

namespace A014613

/-- `∪[A074985(n+1), A307342(n+1)]` -/
def P13333535980806424753.Spec : Prop :=
  ∀ n, (P13333535980806424753.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P1803445152243400691

`∪[A110228(n+1), A307342(n+1)]`
-/

namespace A014613.P1803445152243400691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014613.P1803445152243400691

namespace A014613

/-- `∪[A110228(n+1), A307342(n+1)]` -/
def P1803445152243400691.Spec : Prop :=
  ∀ n, (P1803445152243400691.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P6086465826734316773

`A114966(n+1)-(A114382(n+1)+A014614(n+1))`
-/

namespace A014613.P6086465826734316773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - (A114382 (n + 1) + A014614 (n + 1))

end

end A014613.P6086465826734316773

namespace A014613

/-- `A114966(n+1)-(A114382(n+1)+A014614(n+1))` -/
def P6086465826734316773.Spec : Prop :=
  ∀ n, P6086465826734316773.a n = A014613 (n + 1)

theorem P6086465826734316773.correct : P6086465826734316773.Spec := by
  intro n
  simp only [A014613, Nat.add_sub_cancel, A014613.P6086465826734316773.a, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A030514, A030514.P11974636125371552077.a, A114382, A114382.P1208901813651073029.a, A114966, A114966.P15379347381698072828.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A114944, A114944.P5745295539132009725.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A088707, A088707.P7291141647877559993.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014613

/-! ## A014613.P14504915278173834652

`Δ[A110226(n)]`
-/

namespace A014613.P14504915278173834652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014613.P14504915278173834652

namespace A014613

/-- `Δ[A110226(n)]` -/
def P14504915278173834652.Spec : Prop :=
  ∀ n, P14504915278173834652.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P10459944645249715944

`A110226(n+1)-A110226(n)`
-/

namespace A014613.P10459944645249715944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110226 (n + 1) - A110226 n

end

end A014613.P10459944645249715944

namespace A014613

/-- `A110226(n+1)-A110226(n)` -/
def P10459944645249715944.Spec : Prop :=
  ∀ n, P10459944645249715944.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P16407236586612611452

`filter[A323350(n+1), A065043(#)]`
-/

namespace A014613.P16407236586612611452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A014613.P16407236586612611452

namespace A014613

/-- `filter[A323350(n+1), A065043(#)]` -/
def P16407236586612611452.Spec : Prop :=
  ∀ n, P16407236586612611452.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P4315881208510441585

`filter[A323350(n+1), A101637(#)]`
-/

namespace A014613.P4315881208510441585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P4315881208510441585

namespace A014613

/-- `filter[A323350(n+1), A101637(#)]` -/
def P4315881208510441585.Spec : Prop :=
  ∀ n, P4315881208510441585.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P12230607306440830441

`eq[1, A101637(n+1)]+1`
-/

namespace A014613.P12230607306440830441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014613.P12230607306440830441

namespace A014613

/-- `eq[1, A101637(n+1)]+1` -/
def P12230607306440830441.Spec : Prop :=
  ∀ n, (P12230607306440830441.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P15664262311114707304

`eq[4, A001222(n+1)]+1`
-/

namespace A014613.P15664262311114707304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014613.P15664262311114707304

namespace A014613

/-- `eq[4, A001222(n+1)]+1` -/
def P15664262311114707304.Spec : Prop :=
  ∀ n, (P15664262311114707304.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P5426663943841138578

`eq[n, n/a(A001222(n))]` with `a(0)=2`
-/

namespace A014613.P5426663943841138578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℚ) / f2 (A001222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A014613.P5426663943841138578

namespace A014613

/-- `eq[n, n/a(A001222(n))]` -/
def P5426663943841138578.Spec : Prop :=
  ∀ n, (P5426663943841138578.a n : ℤ) = A014613 (n + 1)

end A014613

/-! ## A014613.P18128076035928484433

`filter[A319701(n+1), A101637(#)]`
-/

namespace A014613.P18128076035928484433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P18128076035928484433

namespace A014613

/-- `filter[A319701(n+1), A101637(#)]` -/
def P18128076035928484433.Spec : Prop :=
  ∀ n, P18128076035928484433.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P10657035540801605405

`filter[A319702(n+1), A101637(#)]`
-/

namespace A014613.P10657035540801605405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P10657035540801605405

namespace A014613

/-- `filter[A319702(n+1), A101637(#)]` -/
def P10657035540801605405.Spec : Prop :=
  ∀ n, P10657035540801605405.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P2360568875658191056

`filter[A326203(n+1), A101637(#)]`
-/

namespace A014613.P2360568875658191056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P2360568875658191056

namespace A014613

/-- `filter[A326203(n+1), A101637(#)]` -/
def P2360568875658191056.Spec : Prop :=
  ∀ n, P2360568875658191056.a n = A014613 (n + 1)

end A014613

/-! ## A014613.P12018103207372718551

`filter[A346488(n+1), A101637(#)]`
-/

namespace A014613.P12018103207372718551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A014613.P12018103207372718551

namespace A014613

/-- `filter[A346488(n+1), A101637(#)]` -/
def P12018103207372718551.Spec : Prop :=
  ∀ n, P12018103207372718551.a n = A014613 (n + 1)

end A014613

/-!
# A014614: Numbers that are products of 5 primes (or 5-almost primes, a generalization of semiprimes).

The programs for A014614, the canonical program `A014614.P8846493082158940166` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014614 has offset 1).

The definition of A014614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014614.P12262806634286587850

`A114966(n+1)-A114944(n+1)`
-/

namespace A014614.P12262806634286587850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - A114944 (n + 1)

end

end A014614.P12262806634286587850

namespace A014614

/-- `A114966(n+1)-A114944(n+1)` -/
def P12262806634286587850.Spec : Prop :=
  ∀ n, P12262806634286587850.a n = A014614 (n + 1)

theorem P12262806634286587850.correct : P12262806634286587850.Spec := by
  intro n
  simp only [A014614, Nat.add_sub_cancel, A014614.P12262806634286587850.a, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A114944, A114944.P5745295539132009725.a, A114966, A114966.P15379347381698072828.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014614

/-! ## A014614.P17345934037076475485

`∪[A110229(n+1), A110230(n+1)]`
-/

namespace A014614.P17345934037076475485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014614.P17345934037076475485

namespace A014614

/-- `∪[A110229(n+1), A110230(n+1)]` -/
def P17345934037076475485.Spec : Prop :=
  ∀ n, (P17345934037076475485.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P8483142187522894003

`A114966(n+1)-(A114382(n+1)+A014613(n+1))`
-/

namespace A014614.P8483142187522894003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - (A114382 (n + 1) + A014613 (n + 1))

end

end A014614.P8483142187522894003

namespace A014614

/-- `A114966(n+1)-(A114382(n+1)+A014613(n+1))` -/
def P8483142187522894003.Spec : Prop :=
  ∀ n, P8483142187522894003.a n = A014614 (n + 1)

theorem P8483142187522894003.correct : P8483142187522894003.Spec := by
  intro n
  simp only [A014614, Nat.add_sub_cancel, A014614.P8483142187522894003.a, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A114966, A114966.P15379347381698072828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A114944, A114944.P5745295539132009725.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014614

/-! ## A014614.P8846493082158940166

`eq[5, A001222(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014614

/-- `eq[5, A001222(n+1)]+1` -/
def P8846493082158940166.Spec : Prop :=
  ∀ n, (P8846493082158940166.a n : ℤ) = A014614 (n + 1)

theorem P8846493082158940166.correct : P8846493082158940166.Spec := by
  intro n
  simp only [A014614, Nat.add_sub_cancel]

end A014614

/-! ## A014614.P8476269439820363882

`eq[n-3, n-a(A001222(n))]` with `a(0)=0, a(1)=2`
-/

namespace A014614.P8476269439820363882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014614.P8476269439820363882

namespace A014614

/-- `eq[n-3, n-a(A001222(n))]` -/
def P8476269439820363882.Spec : Prop :=
  ∀ n, (P8476269439820363882.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P6894502645981675430

`record[A046306(n+1)/A020639(A046306(n+1))]`
-/

namespace A014614.P6894502645981675430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046306 (n + 1) : ℚ) / (A020639 (A046306 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014614.P6894502645981675430

namespace A014614

/-- `record[A046306(n+1)/A020639(A046306(n+1))]` -/
def P6894502645981675430.Spec : Prop :=
  ∀ n, P6894502645981675430.a n = (A014614 (n + 1) : ℚ)

end A014614

/-! ## A014614.P1759900742932987343

`∩[A046304(n+1), A166719(n+1)]`
-/

namespace A014614.P1759900742932987343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014614.P1759900742932987343

namespace A014614

/-- `∩[A046304(n+1), A166719(n+1)]` -/
def P1759900742932987343.Spec : Prop :=
  ∀ n, (P1759900742932987343.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P7252231646032005832

`eq[5, A001222(A028310(n))]`
-/

namespace A014614.P7252231646032005832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014614.P7252231646032005832

namespace A014614

/-- `eq[5, A001222(A028310(n))]` -/
def P7252231646032005832.Spec : Prop :=
  ∀ n, (P7252231646032005832.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P16030896996920047469

`eq[6, A001222(A004277(n))]`
-/

namespace A014614.P16030896996920047469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014614.P16030896996920047469

namespace A014614

/-- `eq[6, A001222(A004277(n))]` -/
def P16030896996920047469.Spec : Prop :=
  ∀ n, (P16030896996920047469.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P12661544755785632422

`eq[1, A101605(A054576(n+1))]+1`
-/

namespace A014614.P12661544755785632422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (A054576 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014614.P12661544755785632422

namespace A014614

/-- `eq[1, A101605(A054576(n+1))]+1` -/
def P12661544755785632422.Spec : Prop :=
  ∀ n, (P12661544755785632422.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P7701233457348234700

`eq[A040000(n)², A252736(n+1)]+1`
-/

namespace A014614.P7701233457348234700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A014614.P7701233457348234700

namespace A014614

/-- `eq[A040000(n)², A252736(n+1)]+1` -/
def P7701233457348234700.Spec : Prop :=
  ∀ n, (P7701233457348234700.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P14344752406599521151

`eq[n*A001222(A022144(n)), A022144(n)]`
-/

namespace A014614.P14344752406599521151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014614.P14344752406599521151

namespace A014614

/-- `eq[n*A001222(A022144(n)), A022144(n)]` -/
def P14344752406599521151.Spec : Prop :=
  ∀ n, (P14344752406599521151.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P12660196973821676349

`eq[n*A001222(A234275(n)), A234275(n)]`
-/

namespace A014614.P12660196973821676349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A234275 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014614.P12660196973821676349

namespace A014614

/-- `eq[n*A001222(A234275(n)), A234275(n)]` -/
def P12660196973821676349.Spec : Prop :=
  ∀ n, (P12660196973821676349.a n : ℤ) = A014614 (n + 1)

end A014614

/-! ## A014614.P2065529495661037688

`A000720(A124308(n+1))`
-/

namespace A014614.P2065529495661037688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124308 (n + 1)).toNat

end

end A014614.P2065529495661037688

namespace A014614

/-- `A000720(A124308(n+1))` -/
def P2065529495661037688.Spec : Prop :=
  ∀ n, P2065529495661037688.a n = A014614 (n + 1)

end A014614

/-! ## A014614.P63280599751934574

`record[A117358(A046310(n+1))]`
-/

namespace A014614.P63280599751934574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014614.P63280599751934574

namespace A014614

/-- `record[A117358(A046310(n+1))]` -/
def P63280599751934574.Spec : Prop :=
  ∀ n, P63280599751934574.a n = A014614 (n + 1)

end A014614

/-! ## A014614.P15944920481887809976

`record[A117358(4*A046306(n+1))]`
-/

namespace A014614.P15944920481887809976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A046306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014614.P15944920481887809976

namespace A014614

/-- `record[A117358(4*A046306(n+1))]` -/
def P15944920481887809976.Spec : Prop :=
  ∀ n, P15944920481887809976.a n = A014614 (n + 1)

end A014614

/-! ## A014614.P11987890005490397347

`record[A025480(A046306(n+1))]`
-/

namespace A014614.P11987890005490397347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A046306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014614.P11987890005490397347

namespace A014614

/-- `record[A025480(A046306(n+1))]` -/
def P11987890005490397347.Spec : Prop :=
  ∀ n, P11987890005490397347.a n = A014614 (n + 1)

end A014614

/-! ## A014614.P4513885847544879802

`record[A152271(A046306(n+1)-1)]`
-/

namespace A014614.P4513885847544879802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A046306 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014614.P4513885847544879802

namespace A014614

/-- `record[A152271(A046306(n+1)-1)]` -/
def P4513885847544879802.Spec : Prop :=
  ∀ n, P4513885847544879802.a n = A014614 (n + 1)

end A014614

/-! ## A014614.P3797866957604540715

`record[A158416(A046306(n+1)-2)]`
-/

namespace A014614.P3797866957604540715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A046306 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014614.P3797866957604540715

namespace A014614

/-- `record[A158416(A046306(n+1)-2)]` -/
def P3797866957604540715.Spec : Prop :=
  ∀ n, P3797866957604540715.a n = A014614 (n + 1)

end A014614

/-!
# A014616: a(n) = solution to the postage stamp problem with 2 denominations and n stamps.

The programs for A014616, the canonical program `A014616.P13328413878082500687` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014616 has offset 1).

The definition of A014616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014616.P14886255827045159088

`ogf((2-x^2)/(1-2x+2x^3-x^4))`
-/

namespace A014616.P14886255827045159088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -2, 0, 2, -1] n

end

end A014616.P14886255827045159088

namespace A014616

/-- `ogf((2-x^2)/(1-2x+2x^3-x^4))` -/
def P14886255827045159088.Spec : Prop :=
  ∀ n, P14886255827045159088.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P5458982945356263576

`floor(((n+1)²+6*(n+1)+1)/4)`
-/

namespace A014616.P5458982945356263576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 + 6 * (n + 1) + 1 : ℚ) / 4⌋

end

end A014616.P5458982945356263576

namespace A014616

/-- `floor(((n+1)²+6*(n+1)+1)/4)` -/
def P5458982945356263576.Spec : Prop :=
  ∀ n, P5458982945356263576.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P13328413878082500687

`A004116(n+1)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014616

/-- `A004116(n+1)+1` -/
def P13328413878082500687.Spec : Prop :=
  ∀ n, P13328413878082500687.a n = A014616 (n + 1)

theorem P13328413878082500687.correct : P13328413878082500687.Spec := by
  intro n
  simp only [A014616, Nat.add_sub_cancel]

end A014616

/-! ## A014616.P16644900852583916015

`2*(n+1)+A002620(n)`
-/

namespace A014616.P16644900852583916015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A002620 n

end

end A014616.P16644900852583916015

namespace A014616

/-- `2*(n+1)+A002620(n)` -/
def P16644900852583916015.Spec : Prop :=
  ∀ n, P16644900852583916015.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P644785464505529794

`A024206(n+3)-1`
-/

namespace A014616.P644785464505529794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 3) - 1

end

end A014616.P644785464505529794

namespace A014616

/-- `A024206(n+3)-1` -/
def P644785464505529794.Spec : Prop :=
  ∀ n, P644785464505529794.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P9642200788250166407

`A002620(n+4)-2`
-/

namespace A014616.P9642200788250166407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 4) - 2

end

end A014616.P9642200788250166407

namespace A014616

/-- `A002620(n+4)-2` -/
def P9642200788250166407.Spec : Prop :=
  ∀ n, P9642200788250166407.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P8353409632385324786

`∑[∑[gcd(2, n)]-n]`
-/

namespace A014616.P8353409632385324786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014616.P8353409632385324786

namespace A014616

/-- `∑[∑[gcd(2, n)]-n]` -/
def P8353409632385324786.Spec : Prop :=
  ∀ n, P8353409632385324786.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P15056843566610655757

`∑[or(1, n)+3]/2`
-/

namespace A014616.P15056843566610655757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A014616.P15056843566610655757

namespace A014616

/-- `∑[or(1, n)+3]/2` -/
def P15056843566610655757.Spec : Prop :=
  ∀ n, P15056843566610655757.a n = (A014616 (n + 1) : ℚ)

end A014616

/-! ## A014616.P10675970561151248539

`round(∑[∑[cos(n)²]+1])`
-/

namespace A014616.P10675970561151248539
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014616.P10675970561151248539

namespace A014616

/-- `round(∑[∑[cos(n)²]+1])` -/
def P10675970561151248539.Spec : Prop :=
  ∀ n, P10675970561151248539.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P5787501168658630344

`a(n-2)+3+n` with `a(0)=2, a(1)=4`
-/

namespace A014616.P5787501168658630344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 3 + n

end

end A014616.P5787501168658630344

namespace A014616

/-- `a(n-2)+3+n` -/
def P5787501168658630344.Spec : Prop :=
  ∀ n, (P5787501168658630344.a n : ℤ) = A014616 (n + 1)

end A014616

/-! ## A014616.P4605739553372544771

`∑[∑[1-a(n-1)]]` with `a(0)=2, a(1)=0`
-/

namespace A014616.P4605739553372544771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014616.P4605739553372544771

namespace A014616

/-- `∑[∑[1-a(n-1)]]` -/
def P4605739553372544771.Spec : Prop :=
  ∀ n, P4605739553372544771.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P17668547087733981810

`∑[n+2]-∑[∑[n%2]]`
-/

namespace A014616.P17668547087733981810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A014616.P17668547087733981810

namespace A014616

/-- `∑[n+2]-∑[∑[n%2]]` -/
def P17668547087733981810.Spec : Prop :=
  ∀ n, P17668547087733981810.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P4689011746437037124

`∑[n+2]-∑[∑[and(1, n)]]`
-/

namespace A014616.P4689011746437037124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A014616.P4689011746437037124

namespace A014616

/-- `∑[n+2]-∑[∑[and(1, n)]]` -/
def P4689011746437037124.Spec : Prop :=
  ∀ n, P4689011746437037124.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P14730433594375133718

`∑[∑[char[lcm(2, n)]]]+n+1`
-/

namespace A014616.P14730433594375133718
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A014616.P14730433594375133718

namespace A014616

/-- `∑[∑[char[lcm(2, n)]]]+n+1` -/
def P14730433594375133718.Spec : Prop :=
  ∀ n, (P14730433594375133718.a n : ℤ) = A014616 (n + 1)

end A014616

/-! ## A014616.P12815007669067140198

`round(∑[∑[sin(n+1)²]+1])`
-/

namespace A014616.P12815007669067140198
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014616.P12815007669067140198

namespace A014616

/-- `round(∑[∑[sin(n+1)²]+1])` -/
def P12815007669067140198.Spec : Prop :=
  ∀ n, P12815007669067140198.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P7972762795498794017

`∑[∑[∑[ogf((2-x^2)/(1+x))]]]`
-/

namespace A014616.P7972762795498794017
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014616.P7972762795498794017

namespace A014616

/-- `∑[∑[∑[ogf((2-x^2)/(1+x))]]]` -/
def P7972762795498794017.Spec : Prop :=
  ∀ n, P7972762795498794017.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P1523151387153141224

`record[a(n-2)-(5-n)]` with `a(0)=2, a(1)=0`
-/

namespace A014616.P1523151387153141224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 2) - (5 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014616.P1523151387153141224

namespace A014616

/-- `record[a(n-2)-(5-n)]` -/
def P1523151387153141224.Spec : Prop :=
  ∀ n, P1523151387153141224.a n = A014616 (n + 1)

end A014616

/-! ## A014616.P13062523329904939982

`∑[∑[(n+1)%2]]+n+1`
-/

namespace A014616.P13062523329904939982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A014616.P13062523329904939982

namespace A014616

/-- `∑[∑[(n+1)%2]]+n+1` -/
def P13062523329904939982.Spec : Prop :=
  ∀ n, (P13062523329904939982.a n : ℤ) = A014616 (n + 1)

end A014616

/-! ## A014616.P17180604790387626646

`∑[∑[and(1, n+1)]]+n+1`
-/

namespace A014616.P17180604790387626646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A014616.P17180604790387626646

namespace A014616

/-- `∑[∑[and(1, n+1)]]+n+1` -/
def P17180604790387626646.Spec : Prop :=
  ∀ n, (P17180604790387626646.a n : ℤ) = A014616 (n + 1)

end A014616

/-!
# A014617: Antidiagonals of the prime-composite array B(m,n) (see A067681) that are zeros from the first Borve conjecture.

The programs for A014617, there is no canonical definition to state claims against.
-/

/-! ## A014617.P2396020089194580689

`A063174(n+1)-1-A000720(A063174(n+1)+1)`
-/

namespace A014617.P2396020089194580689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063174 (n + 1) - 1 - A000720 (A063174 (n + 1) + 1).toNat

end

end A014617.P2396020089194580689

/-! ## A014617.P7579494096100986427

`A026238(A063174(n+1))`
-/

namespace A014617.P7579494096100986427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A063174 (n + 1)).toNat

end

end A014617.P7579494096100986427

/-! ## A014617.P10101756596204793278

`A026233(A063174(n+1)-1)`
-/

namespace A014617.P10101756596204793278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A063174 (n + 1) - 1).toNat

end

end A014617.P10101756596204793278

/-! ## A014617.P18427179515382520374

`A062298(A063174(n+1)-1)`
-/

namespace A014617.P18427179515382520374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A063174 (n + 1) - 1).toNat

end

end A014617.P18427179515382520374

/-! ## A014617.P12418310161112018629

`A066246(or(1, A063174(n+1)))`
-/

namespace A014617.P12418310161112018629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.lor 1 (A063174 (n + 1))).toNat

end

end A014617.P12418310161112018629

/-! ## A014617.P12050454868320364874

`A026233(xor(1, A063174(n+1)))`
-/

namespace A014617.P12050454868320364874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.xor 1 (A063174 (n + 1))).toNat

end

end A014617.P12050454868320364874

/-! ## A014617.P1930138465909896895

`A062298(xor(1, A063174(n+1)))`
-/

namespace A014617.P1930138465909896895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (Int.xor 1 (A063174 (n + 1))).toNat

end

end A014617.P1930138465909896895

/-!
# A014618: Inverse of 609th cyclotomic polynomial.

The programs for A014618, there is no canonical definition to state claims against.
-/

/-! ## A014618.P12606152110748758435

`A015227(n)*A033999(n)`
-/

namespace A014618.P12606152110748758435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015227 n * A033999 n

end

end A014618.P12606152110748758435

/-!
# A014619: Exponential generating function is -f(x) * Integral_{t = 0..x} exp(exp(-t) - 1) dt, where f(x) = exp(1 - x - exp(-x)) is the exponential generating function for A014182.

The programs for A014619, there is no canonical definition to state claims against.
-/

/-! ## A014619.P3949786944665305175

`A326829(n+2)-A014182(n+1)`
-/

namespace A014619.P3949786944665305175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326829 (n + 2) - A014182 (n + 1)

end

end A014619.P3949786944665305175

/-! ## A014619.P4485811355170862582

`A014182(n+1)-A379781(n+3)`
-/

namespace A014619.P4485811355170862582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (n + 1) - A379781 (n + 3)

end

end A014619.P4485811355170862582

/-!
# A014620: Inverse of 611th cyclotomic polynomial.

The programs for A014620, there is no canonical definition to state claims against.
-/

/-! ## A014620.P14916406857623486955

`A015231(n)*A033999(n)`
-/

namespace A014620.P14916406857623486955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015231 n * A033999 n

end

end A014620.P14916406857623486955

/-!
# A014621: Triangle of numbers arising from analysis of Levine's sequence A011784.

The programs for A014621, there is no canonical definition to state claims against.
-/

/-! ## A014621.P15457326392366604815

`abs(A144006(n+1))`
-/

namespace A014621.P15457326392366604815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144006 (n + 1)|

end

end A014621.P15457326392366604815

/-! ## A014621.P17829125511995901566

`∏[abs(ratio[A144006(n)])]`
-/

namespace A014621.P17829125511995901566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144006 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014621.P17829125511995901566

/-! ## A014621.P14123662483008210862

`lcm(A007318(∑[n]), A144006(n+1))`
-/

namespace A014621.P14123662483008210862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A144006 (n + 1))

end

end A014621.P14123662483008210862

/-! ## A014621.P4959370889299823634

`gcd(A144006(n+1), A208575(2*n))`
-/

namespace A014621.P4959370889299823634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144006 (n + 1)) (A208575 (2 * n))

end

end A014621.P4959370889299823634

/-! ## A014621.P17510464131326865281

`lcm(A055881(2*n+5), A144006(A000027(n+1)))`
-/

namespace A014621.P17510464131326865281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055881 (2 * n + 5)) (A144006 (A000027 (n + 1)).toNat)

end

end A014621.P17510464131326865281

/-!
# A014623: Sequence arising from analysis of Levine's sequence A011784: essentially a duplicate of A144005.

The programs for A014623, there is no canonical definition to state claims against.
-/

/-! ## A014623.P17663724260300944682

`A144005(n+1)`
-/

namespace A014623.P17663724260300944682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144005 (n + 1)

end

end A014623.P17663724260300944682

/-! ## A014623.P16260740028627187149

`Δ[abs(∑[A144005(n)])]`
-/

namespace A014623.P16260740028627187149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014623.P16260740028627187149

/-! ## A014623.P6601991540133341266

`abs(A144005(comp[14*n]))`
-/

namespace A014623.P6601991540133341266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A144005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A014623.P6601991540133341266

/-! ## A014623.P14723864099466890819

`lcm((-1)^n, A144005(lt[0, ∏{digits}[n, (1-#)²]]))`
-/

namespace A014623.P14723864099466890819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A144005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A014623.P14723864099466890819

/-! ## A014623.P2428831695530983625

`∑{digits}[n, A144005(A048379(#))]`
-/

namespace A014623.P2428831695530983625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A144005 (A048379 x).toNat).sum

end

end A014623.P2428831695530983625

/-!
# A014624: Inverse of 615th cyclotomic polynomial.

The programs for A014624, there is no canonical definition to state claims against.
-/

/-! ## A014624.P7558687940725914184

`A015239(n)*A033999(n)`
-/

namespace A014624.P7558687940725914184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015239 n * A033999 n

end

end A014624.P7558687940725914184

/-!
# A014625: Inverse of 616th cyclotomic polynomial.

The programs for A014625, there is no canonical definition to state claims against.
-/

/-! ## A014625.P12173388953011452173

`A014317(n/gcd(2, n))`
-/

namespace A014625.P12173388953011452173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014317 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A014625.P12173388953011452173

/-!
# A014626: Number of intersection points of diagonals of an n-gon in general position, plus number of vertices.

The programs for A014626, the canonical program `A014626.P18328208515890592145` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014626 has offset 0).

The definition of A014626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014626.P3477622905836536451

`ogf((x-3x^2+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A014626.P3477622905836536451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3, 3] [1, -5, 10, -10, 5, -1] n

end

end A014626.P3477622905836536451

namespace A014626

/-- `ogf((x-3x^2+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P3477622905836536451.Spec : Prop :=
  ∀ n, P3477622905836536451.a n = A014626 n

end A014626

/-! ## A014626.P18328208515890592145

`n*(n+1)*(n²-7*n+18)/24`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014626

/-- `n*(n+1)*(n²-7*n+18)/24` -/
def P18328208515890592145.Spec : Prop :=
  ∀ n, P18328208515890592145.a n = (A014626 n : ℚ)

end A014626

/-! ## A014626.P10046582462121850269

`C(n, 4)+n`
-/

namespace A014626.P10046582462121850269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + n

end

end A014626.P10046582462121850269

namespace A014626

/-- `C(n, 4)+n` -/
def P10046582462121850269.Spec : Prop :=
  ∀ n, (P10046582462121850269.a n : ℤ) = A014626 n

end A014626

/-! ## A014626.P6662106197825756905

`n-Δ[-C(n, 5)]`
-/

namespace A014626.P6662106197825756905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A014626.P6662106197825756905

namespace A014626

/-- `n-Δ[-C(n, 5)]` -/
def P6662106197825756905.Spec : Prop :=
  ∀ n, P6662106197825756905.a n = A014626 n

end A014626

/-! ## A014626.P12497745491609002802

`∑{#}[2, C(n, #²)]-1`
-/

namespace A014626.P12497745491609002802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n (k ^ 2) : ℕ) : ℤ) - 1

end

end A014626.P12497745491609002802

namespace A014626

/-- `∑{#}[2, C(n, #²)]-1` -/
def P12497745491609002802.Spec : Prop :=
  ∀ n, P12497745491609002802.a n = A014626 n

end A014626

/-! ## A014626.P12791045751463983501

`2*n-(n-C(n, 4))`
-/

namespace A014626.P12791045751463983501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.choose n 4 : ℤ))

end

end A014626.P12791045751463983501

namespace A014626

/-- `2*n-(n-C(n, 4))` -/
def P12791045751463983501.Spec : Prop :=
  ∀ n, P12791045751463983501.a n = A014626 n

end A014626

/-! ## A014626.P11002532547271427256

`n-1-xor(-1, C(n, 4))`
-/

namespace A014626.P11002532547271427256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.xor (-1) (Nat.choose n 4 : ℤ)

end

end A014626.P11002532547271427256

namespace A014626

/-- `n-1-xor(-1, C(n, 4))` -/
def P11002532547271427256.Spec : Prop :=
  ∀ n, P11002532547271427256.a n = A014626 n

end A014626

/-! ## A014626.P17798449718924867841

`∑[a(n-2)+(3-n)²]` with `a(0)=0, a(1)=1`
-/

namespace A014626.P17798449718924867841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (3 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014626.P17798449718924867841

namespace A014626

/-- `∑[a(n-2)+(3-n)²]` -/
def P17798449718924867841.Spec : Prop :=
  ∀ n, P17798449718924867841.a n = A014626 n

end A014626

/-! ## A014626.P12845538206077366523

`∑[∑[a(n-1)-3+n]]` with `a(0)=0, a(1)=1`
-/

namespace A014626.P12845538206077366523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) - 3 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014626.P12845538206077366523

namespace A014626

/-- `∑[∑[a(n-1)-3+n]]` -/
def P12845538206077366523.Spec : Prop :=
  ∀ n, P12845538206077366523.a n = A014626 n

end A014626

/-! ## A014626.P41472419304049610

`∑[∑[a(n-1)-(3-n)]]` with `a(0)=0, a(1)=1`
-/

namespace A014626.P41472419304049610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) - (3 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014626.P41472419304049610

namespace A014626

/-- `∑[∑[a(n-1)-(3-n)]]` -/
def P41472419304049610.Spec : Prop :=
  ∀ n, P41472419304049610.a n = A014626 n

end A014626

/-! ## A014626.P17205691405417209417

`∑[∑[∑[n-3%(2*n+1)]]]`
-/

namespace A014626.P17205691405417209417
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((3 % (2 * n + 1) : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014626.P17205691405417209417

namespace A014626

/-- `∑[∑[∑[n-3%(2*n+1)]]]` -/
def P17205691405417209417.Spec : Prop :=
  ∀ n, P17205691405417209417.a n = A014626 n

end A014626

/-! ## A014626.P12696481934743097513

`∑[A050407(n)]`
-/

namespace A014626.P12696481934743097513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014626.P12696481934743097513

namespace A014626

/-- `∑[A050407(n)]` -/
def P12696481934743097513.Spec : Prop :=
  ∀ n, P12696481934743097513.a n = A014626 n

end A014626

/-! ## A014626.P7913462792229975672

`n+A000332(n)`
-/

namespace A014626.P7913462792229975672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000332 n

end

end A014626.P7913462792229975672

namespace A014626

/-- `n+A000332(n)` -/
def P7913462792229975672.Spec : Prop :=
  ∀ n, P7913462792229975672.a n = A014626 n

end A014626

/-! ## A014626.P275888502541303651

`A034827(n)/2+n`
-/

namespace A014626.P275888502541303651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034827 n : ℚ) / 2 + (n : ℚ)

end

end A014626.P275888502541303651

namespace A014626

/-- `A034827(n)/2+n` -/
def P275888502541303651.Spec : Prop :=
  ∀ n, P275888502541303651.a n = (A014626 n : ℚ)

end A014626

/-! ## A014626.P18385969368391384893

`A052762(n)/24+n`
-/

namespace A014626.P18385969368391384893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24 + (n : ℚ)

end

end A014626.P18385969368391384893

namespace A014626

/-- `A052762(n)/24+n` -/
def P18385969368391384893.Spec : Prop :=
  ∀ n, P18385969368391384893.a n = (A014626 n : ℚ)

end A014626

/-! ## A014626.P7281954668779712291

`A318054(n)-∑[n²]`
-/

namespace A014626.P7281954668779712291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014626.P7281954668779712291

namespace A014626

/-- `A318054(n)-∑[n²]` -/
def P7281954668779712291.Spec : Prop :=
  ∀ n, P7281954668779712291.a n = A014626 n

end A014626

/-! ## A014626.P14497528792719189610

`∑{d}[n, A346761(#)]+n`
-/

namespace A014626.P14497528792719189610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346761 d + (n : ℤ)

end

end A014626.P14497528792719189610

namespace A014626

/-- `∑{d}[n, A346761(#)]+n` -/
def P14497528792719189610.Spec : Prop :=
  ∀ n, P14497528792719189610.a n = A014626 n

end A014626

/-! ## A014626.P10889444080229991058

`A101338(n)-∑[(1-n)²]`
-/

namespace A014626.P10889444080229991058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014626.P10889444080229991058

namespace A014626

/-- `A101338(n)-∑[(1-n)²]` -/
def P10889444080229991058.Spec : Prop :=
  ∀ n, P10889444080229991058.a n = A014626 n

end A014626

/-! ## A014626.P9942653290628775731

`A319930(n)+A162607(n)`
-/

namespace A014626.P9942653290628775731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319930 n + A162607 n

end

end A014626.P9942653290628775731

namespace A014626

/-- `A319930(n)+A162607(n)` -/
def P9942653290628775731.Spec : Prop :=
  ∀ n, P9942653290628775731.a n = A014626 n

end A014626

/-! ## A014626.P3785187940670038461

`A000332(n)-A001489(n)`
-/

namespace A014626.P3785187940670038461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n - A001489 n

end

end A014626.P3785187940670038461

namespace A014626

/-- `A000332(n)-A001489(n)` -/
def P3785187940670038461.Spec : Prop :=
  ∀ n, P3785187940670038461.a n = A014626 n

end A014626

/-!
# A014628: Number of segments (and sides) created by diagonals of an n-gon in general position.

The programs for A014628, the canonical program `A014628.P14262074362138778281` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014628 has offset 3).

The definition of A014628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014628.P14262074362138778281

`C(n+3, 2)+2*C(n+3, 4)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014628

/-- `C(n+3, 2)+2*C(n+3, 4)` -/
def P14262074362138778281.Spec : Prop :=
  ∀ n, (P14262074362138778281.a n : ℤ) = A014628 (n + 3)

theorem P14262074362138778281.correct : P14262074362138778281.Spec := by
  intro n
  simp only [A014628, Nat.add_sub_cancel]

end A014628

/-! ## A014628.P1919561116983525188

`ogf((3-7x+10x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A014628.P1919561116983525188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7, 10, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A014628.P1919561116983525188

namespace A014628

/-- `ogf((3-7x+10x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1919561116983525188.Spec : Prop :=
  ∀ n, P1919561116983525188.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P11565314657769056927

`(n+3)*(n+2)*((n+3)²-5*(n+3)+12)/12`
-/

namespace A014628.P11565314657769056927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (n + 2) : ℤ) * (((n + 3) ^ 2 : ℤ) - (5 * (n + 3) : ℤ) + 12) : ℚ) / 12

end

end A014628.P11565314657769056927

namespace A014628

/-- `(n+3)*(n+2)*((n+3)²-5*(n+3)+12)/12` -/
def P11565314657769056927.Spec : Prop :=
  ∀ n, P11565314657769056927.a n = (A014628 (n + 3) : ℚ)

theorem P11565314657769056927.correct : P11565314657769056927.Spec := by
  intro n
  simp only [A014628, Nat.add_sub_cancel, A014628.P11565314657769056927.a, A014628.P14262074362138778281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014628

/-! ## A014628.P13143152786580490076

`∑[n+1+a(n-1)+n²]` with `a(0)=3, a(1)=5`
-/

namespace A014628.P13143152786580490076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  n + 1 + (f1 (n - 1) + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014628.P13143152786580490076

namespace A014628

/-- `∑[n+1+a(n-1)+n²]` -/
def P13143152786580490076.Spec : Prop :=
  ∀ n, (P13143152786580490076.a n : ℤ) = A014628 (n + 3)

end A014628

/-! ## A014628.P12481171355639861673

`∑[a(n-1)+n*(n+1)+1]` with `a(0)=3, a(1)=5`
-/

namespace A014628.P12481171355639861673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + (n * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014628.P12481171355639861673

namespace A014628

/-- `∑[a(n-1)+n*(n+1)+1]` -/
def P12481171355639861673.Spec : Prop :=
  ∀ n, (P12481171355639861673.a n : ℤ) = A014628 (n + 3)

end A014628

/-! ## A014628.P7042675507832414072

`A014629(n+1)+3+n`
-/

namespace A014628.P7042675507832414072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014629 (n + 1) + 3 + (n : ℤ)

end

end A014628.P7042675507832414072

namespace A014628

/-- `A014629(n+1)+3+n` -/
def P7042675507832414072.Spec : Prop :=
  ∀ n, P7042675507832414072.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P5361068229176835415

`∑[round((A197773(n+1)-n)/3)]`
-/

namespace A014628.P5361068229176835415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A197773 (n + 1) - (n : ℤ) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014628.P5361068229176835415

namespace A014628

/-- `∑[round((A197773(n+1)-n)/3)]` -/
def P5361068229176835415.Spec : Prop :=
  ∀ n, P5361068229176835415.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P3173959577966964956

`A395260(n+1)-A008778(n)`
-/

namespace A014628.P3173959577966964956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395260 (n + 1) - A008778 n

end

end A014628.P3173959577966964956

namespace A014628

/-- `A395260(n+1)-A008778(n)` -/
def P3173959577966964956.Spec : Prop :=
  ∀ n, P3173959577966964956.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P18112176950802132207

`A400561(n+2)+A056520(n)`
-/

namespace A014628.P18112176950802132207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400561 (n + 2) + A056520 n

end

end A014628.P18112176950802132207

namespace A014628

/-- `A400561(n+2)+A056520(n)` -/
def P18112176950802132207.Spec : Prop :=
  ∀ n, P18112176950802132207.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P12068917546482386723

`A134393(n+2)`
-/

namespace A014628.P12068917546482386723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 2)

end

end A014628.P12068917546482386723

namespace A014628

/-- `A134393(n+2)` -/
def P12068917546482386723.Spec : Prop :=
  ∀ n, P12068917546482386723.a n = A014628 (n + 3)

theorem P12068917546482386723.correct : P12068917546482386723.Spec := by
  intro n
  simp only [A014628, Nat.add_sub_cancel, A014628.P12068917546482386723.a, A014628.P14262074362138778281.a, A134393, A134393.P1935029761730703367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014628

/-! ## A014628.P15205819124211621095

`A006007(n+1)+2+n`
-/

namespace A014628.P15205819124211621095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 (n + 1) + 2 + (n : ℤ)

end

end A014628.P15205819124211621095

namespace A014628

/-- `A006007(n+1)+2+n` -/
def P15205819124211621095.Spec : Prop :=
  ∀ n, P15205819124211621095.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P8167196816339226619

`Δ[A005585(n+1)-C(∑[n+1], 2)]`
-/

namespace A014628.P8167196816339226619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014628.P8167196816339226619

namespace A014628

/-- `Δ[A005585(n+1)-C(∑[n+1], 2)]` -/
def P8167196816339226619.Spec : Prop :=
  ∀ n, P8167196816339226619.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P891386836273025335

`A100185(n+2)-A117066(n+1)`
-/

namespace A014628.P891386836273025335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100185 (n + 2) - A117066 (n + 1)

end

end A014628.P891386836273025335

namespace A014628

/-- `A100185(n+2)-A117066(n+1)` -/
def P891386836273025335.Spec : Prop :=
  ∀ n, P891386836273025335.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P12180341956753946187

`A027927(n+2)+A027927(n+3)+A004006(n)`
-/

namespace A014628.P12180341956753946187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027927 (n + 2) + (A027927 (n + 3) + A004006 n)

end

end A014628.P12180341956753946187

namespace A014628

/-- `A027927(n+2)+A027927(n+3)+A004006(n)` -/
def P12180341956753946187.Spec : Prop :=
  ∀ n, P12180341956753946187.a n = A014628 (n + 3)

theorem P12180341956753946187.correct : P12180341956753946187.Spec := by
  intro n
  simp only [A014628, Nat.add_sub_cancel, A014628.P12180341956753946187.a, A014628.P14262074362138778281.a, A004006, A004006.P3732720668660365450.a, A027927, A027927.P8470506974673547009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014628

/-! ## A014628.P7476918623846728016

`A004006(n+2)+A002415(n+1)`
-/

namespace A014628.P7476918623846728016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 2) + A002415 (n + 1)

end

end A014628.P7476918623846728016

namespace A014628

/-- `A004006(n+2)+A002415(n+1)` -/
def P7476918623846728016.Spec : Prop :=
  ∀ n, P7476918623846728016.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P1206052588724559638

`A254749(n+2)+A002415(n+2)`
-/

namespace A014628.P1206052588724559638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254749 (n + 2) + A002415 (n + 2)

end

end A014628.P1206052588724559638

namespace A014628

/-- `A254749(n+2)+A002415(n+2)` -/
def P1206052588724559638.Spec : Prop :=
  ∀ n, P1206052588724559638.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P3064331313329907604

`A081283(2*n+1)+n+2`
-/

namespace A014628.P3064331313329907604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081283 (2 * n + 1) + (n + 2 : ℤ)

end

end A014628.P3064331313329907604

namespace A014628

/-- `A081283(2*n+1)+n+2` -/
def P3064331313329907604.Spec : Prop :=
  ∀ n, P3064331313329907604.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P3045699824911374702

`A096338(2*n)+A000217(n+2)`
-/

namespace A014628.P3045699824911374702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (2 * n) + A000217 (n + 2)

end

end A014628.P3045699824911374702

namespace A014628

/-- `A096338(2*n)+A000217(n+2)` -/
def P3045699824911374702.Spec : Prop :=
  ∀ n, P3045699824911374702.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P14353040840434733393

`∑[A054977(n)+A004657(2*n+1)]`
-/

namespace A014628.P14353040840434733393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A004657 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014628.P14353040840434733393

namespace A014628

/-- `∑[A054977(n)+A004657(2*n+1)]` -/
def P14353040840434733393.Spec : Prop :=
  ∀ n, P14353040840434733393.a n = A014628 (n + 3)

end A014628

/-! ## A014628.P3610391444377518250

`A087483(∑[n+1])+n+1`
-/

namespace A014628.P3610391444377518250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A014628.P3610391444377518250

namespace A014628

/-- `A087483(∑[n+1])+n+1` -/
def P3610391444377518250.Spec : Prop :=
  ∀ n, P3610391444377518250.a n = A014628 (n + 3)

end A014628

/-!
# A014629: Number of segments created by diagonals of n-gon.

The programs for A014629, the canonical program `A014629.P3278294826337671325` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014629 has offset 1).

The definition of A014629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014629.P2388898613861447479

`ogf((4x-5x^2+4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A014629.P2388898613861447479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -5, 4, -1] [1, -5, 10, -10, 5, -1] n

end

end A014629.P2388898613861447479

namespace A014629

/-- `ogf((4x-5x^2+4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2388898613861447479.Spec : Prop :=
  ∀ n, P2388898613861447479.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P3278294826337671325

`((n+1)^4+2*(n+1)^3+5*(n+1)²+4*(n+1)-12)/12`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014629

/-- `((n+1)^4+2*(n+1)^3+5*(n+1)²+4*(n+1)-12)/12` -/
def P3278294826337671325.Spec : Prop :=
  ∀ n, P3278294826337671325.a n = (A014629 (n + 1) : ℚ)

end A014629

/-! ## A014629.P1524073488787251401

`∑[∑[cot(abs(Δ[acot(n)]))]]-1`
-/

namespace A014629.P1524073488787251401
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot |f3 (n + 1) - f3 n|

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014629.P1524073488787251401

namespace A014629

/-- `∑[∑[cot(abs(Δ[acot(n)]))]]-1` -/
def P1524073488787251401.Spec : Prop :=
  ∀ n, P1524073488787251401.a n = (A014629 (n + 1) : ℝ)

end A014629

/-! ## A014629.P8271040935103125507

`∑[∑[lcm(n+1, n)+1]]-1`
-/

namespace A014629.P8271040935103125507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A014629.P8271040935103125507

namespace A014629

/-- `∑[∑[lcm(n+1, n)+1]]-1` -/
def P8271040935103125507.Spec : Prop :=
  ∀ n, P8271040935103125507.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P17278270619134926692

`xor(-1, ∑[∑[n-(n+1)²]])`
-/

namespace A014629.P17278270619134926692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014629.P17278270619134926692

namespace A014629

/-- `xor(-1, ∑[∑[n-(n+1)²]])` -/
def P17278270619134926692.Spec : Prop :=
  ∀ n, P17278270619134926692.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P17962884303126980418

`(C(n+3, 3)+n+3)*n/2`
-/

namespace A014629.P17962884303126980418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 + (n + 3) : ℚ) * ((n : ℚ) / 2)

end

end A014629.P17962884303126980418

namespace A014629

/-- `(C(n+3, 3)+n+3)*n/2` -/
def P17962884303126980418.Spec : Prop :=
  ∀ n, P17962884303126980418.a n = (A014629 (n + 1) : ℚ)

end A014629

/-! ## A014629.P10178756091287099817

`∑[n+1+a(n-1)+n²]` with `a(0)=0, a(1)=4`
-/

namespace A014629.P10178756091287099817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  n + 1 + (f1 (n - 1) + n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P10178756091287099817

namespace A014629

/-- `∑[n+1+a(n-1)+n²]` -/
def P10178756091287099817.Spec : Prop :=
  ∀ n, (P10178756091287099817.a n : ℤ) = A014629 (n + 1)

end A014629

/-! ## A014629.P8940572189791792788

`∑[∑[∑[2*n]+1]%((n+1)^3)]`
-/

namespace A014629.P8940572189791792788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P8940572189791792788

namespace A014629

/-- `∑[∑[∑[2*n]+1]%((n+1)^3)]` -/
def P8940572189791792788.Spec : Prop :=
  ∀ n, (P8940572189791792788.a n : ℤ) = A014629 (n + 1)

end A014629

/-! ## A014629.P8874995809618692367

`∑[A167875(n)]-1`
-/

namespace A014629.P8874995809618692367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014629.P8874995809618692367

namespace A014629

/-- `∑[A167875(n)]-1` -/
def P8874995809618692367.Spec : Prop :=
  ∀ n, P8874995809618692367.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P18446586267181359765

`∑[A145069(n)]+n`
-/

namespace A014629.P18446586267181359765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A014629.P18446586267181359765

namespace A014629

/-- `∑[A145069(n)]+n` -/
def P18446586267181359765.Spec : Prop :=
  ∀ n, P18446586267181359765.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P6552030337480439565

`∑[A253145(n)+∑[n²]]`
-/

namespace A014629.P6552030337480439565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P6552030337480439565

namespace A014629

/-- `∑[A253145(n)+∑[n²]]` -/
def P6552030337480439565.Spec : Prop :=
  ∀ n, P6552030337480439565.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P8141793133615367735

`∑[∑[A164004(n)]-n²]`
-/

namespace A014629.P8141793133615367735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P8141793133615367735

namespace A014629

/-- `∑[∑[A164004(n)]-n²]` -/
def P8141793133615367735.Spec : Prop :=
  ∀ n, P8141793133615367735.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P1904469633846713114

`A014628(n+3)-(n+3)`
-/

namespace A014629.P1904469633846713114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014628 (n + 3) - (n + 3 : ℤ)

end

end A014629.P1904469633846713114

namespace A014629

/-- `A014628(n+3)-(n+3)` -/
def P1904469633846713114.Spec : Prop :=
  ∀ n, P1904469633846713114.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P5414019135901683824

`(∑[n+1]+3)*A028552(n)/6`
-/

namespace A014629.P5414019135901683824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) * ((A028552 n : ℚ) / 6)

end

end A014629.P5414019135901683824

namespace A014629

/-- `(∑[n+1]+3)*A028552(n)/6` -/
def P5414019135901683824.Spec : Prop :=
  ∀ n, P5414019135901683824.a n = (A014629 (n + 1) : ℚ)

end A014629

/-! ## A014629.P8749967585361175785

`∑[∑[(n+1)²]-A179865(n+1)]`
-/

namespace A014629.P8749967585361175785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P8749967585361175785

namespace A014629

/-- `∑[∑[(n+1)²]-A179865(n+1)]` -/
def P8749967585361175785.Spec : Prop :=
  ∀ n, P8749967585361175785.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P12374958334700541679

`∑[∑[n²+1+n]-A000007(n)]`
-/

namespace A014629.P12374958334700541679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P12374958334700541679

namespace A014629

/-- `∑[∑[n²+1+n]-A000007(n)]` -/
def P12374958334700541679.Spec : Prop :=
  ∀ n, P12374958334700541679.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P9653309431207106563

`∑[and(∑[n²+1+n], A057428(n))]`
-/

namespace A014629.P9653309431207106563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A057428 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P9653309431207106563

namespace A014629

/-- `∑[and(∑[n²+1+n], A057428(n))]` -/
def P9653309431207106563.Spec : Prop :=
  ∀ n, P9653309431207106563.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P14426431572163183818

`(A000292(n+1)+n+3)*n/2`
-/

namespace A014629.P14426431572163183818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) + (n + 3 : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A014629.P14426431572163183818

namespace A014629

/-- `(A000292(n+1)+n+3)*n/2` -/
def P14426431572163183818.Spec : Prop :=
  ∀ n, P14426431572163183818.a n = (A014629 (n + 1) : ℚ)

end A014629

/-! ## A014629.P13703855312681122845

`∑[∑[n²+1+n]-and(1, A000010(n+2))]`
-/

namespace A014629.P13703855312681122845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - Int.land 1 (A000010 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014629.P13703855312681122845

namespace A014629

/-- `∑[∑[n²+1+n]-and(1, A000010(n+2))]` -/
def P13703855312681122845.Spec : Prop :=
  ∀ n, P13703855312681122845.a n = A014629 (n + 1)

end A014629

/-! ## A014629.P5315479772573644031

`A014205(n)+A005563(n)`
-/

namespace A014629.P5315479772573644031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014205 n + A005563 n

end

end A014629.P5315479772573644031

namespace A014629

/-- `A014205(n)+A005563(n)` -/
def P5315479772573644031.Spec : Prop :=
  ∀ n, P5315479772573644031.a n = A014629 (n + 1)

end A014629

/-!
# A014630: Distinct elements occurring in triangle of Eulerian numbers (unsorted).

The programs for A014630, the canonical program `A014630.P4760886536345502386` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014630 has offset 1).

The definition of A014630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014630.P2850855833882498297

`A173018(lt[n*A145460(n), 1])`
-/

namespace A014630.P2850855833882498297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145460 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A014630.P2850855833882498297

namespace A014630

/-- `A173018(lt[n*A145460(n), 1])` -/
def P2850855833882498297.Spec : Prop :=
  ∀ n, P2850855833882498297.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P4760886536345502386

`A173018(record[A278818(A061579(n))])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014630

/-- `A173018(record[A278818(A061579(n))])` -/
def P4760886536345502386.Spec : Prop :=
  ∀ n, P4760886536345502386.a n = A014630 (n + 1)

theorem P4760886536345502386.correct : P4760886536345502386.Spec := by
  intro n
  simp only [A014630, Nat.add_sub_cancel]

end A014630

/-! ## A014630.P7434901462188232384

`A173018(eq[A010054(n), A026729(n)])`
-/

namespace A014630.P7434901462188232384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P7434901462188232384

namespace A014630

/-- `A173018(eq[A010054(n), A026729(n)])` -/
def P7434901462188232384.Spec : Prop :=
  ∀ n, P7434901462188232384.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P11050536925278019609

`A173018(eq[A010816(n), A026729(n)])`
-/

namespace A014630.P11050536925278019609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P11050536925278019609

namespace A014630

/-- `A173018(eq[A010816(n), A026729(n)])` -/
def P11050536925278019609.Spec : Prop :=
  ∀ n, P11050536925278019609.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P10684401658664316377

`A173018(eq[A010054(n), A098158(n)])`
-/

namespace A014630.P10684401658664316377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P10684401658664316377

namespace A014630

/-- `A173018(eq[A010054(n), A098158(n)])` -/
def P10684401658664316377.Spec : Prop :=
  ∀ n, P10684401658664316377.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P1822055234592429495

`A173018(eq[A010816(n), A098158(n)])`
-/

namespace A014630.P1822055234592429495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P1822055234592429495

namespace A014630

/-- `A173018(eq[A010816(n), A098158(n)])` -/
def P1822055234592429495.Spec : Prop :=
  ∀ n, P1822055234592429495.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P9606545364015282991

`A173018(eq[A000007(n), A145460(n)])`
-/

namespace A014630.P9606545364015282991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P9606545364015282991

namespace A014630

/-- `A173018(eq[A000007(n), A145460(n)])` -/
def P9606545364015282991.Spec : Prop :=
  ∀ n, P9606545364015282991.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P15856816306875423949

`A173018(eq[A026729(n), A198954(n)])`
-/

namespace A014630.P15856816306875423949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P15856816306875423949

namespace A014630

/-- `A173018(eq[A026729(n), A198954(n)])` -/
def P15856816306875423949.Spec : Prop :=
  ∀ n, P15856816306875423949.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P12927835633455455640

`A173018(eq[A098158(n), A198954(n)])`
-/

namespace A014630.P12927835633455455640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P12927835633455455640

namespace A014630

/-- `A173018(eq[A098158(n), A198954(n)])` -/
def P12927835633455455640.Spec : Prop :=
  ∀ n, P12927835633455455640.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P12224132056495680783

`A173018(eq[n*A145460(n), A145460(n)])`
-/

namespace A014630.P12224132056495680783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A014630.P12224132056495680783

namespace A014630

/-- `A173018(eq[n*A145460(n), A145460(n)])` -/
def P12224132056495680783.Spec : Prop :=
  ∀ n, P12224132056495680783.a n = A014630 (n + 1)

end A014630

/-! ## A014630.P8570784520593681903

`sqrt(A014765(n+1))`
-/

namespace A014630.P8570784520593681903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014765 (n + 1) : ℝ)

end

end A014630.P8570784520593681903

namespace A014630

/-- `sqrt(A014765(n+1))` -/
def P8570784520593681903.Spec : Prop :=
  ∀ n, P8570784520593681903.a n = (A014630 (n + 1) : ℝ)

end A014630

/-!
# A014631: Numbers in order in which they appear in Pascal's triangle.

The programs for A014631, there is no canonical definition to state claims against.
-/

/-! ## A014631.P280635143197763833

`A028328(n)/2`
-/

namespace A014631.P280635143197763833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028328 n : ℚ) / 2

end

end A014631.P280635143197763833

/-! ## A014631.P5840297039658968939

`sqrt(A014764(n+1))`
-/

namespace A014631.P5840297039658968939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014764 (n + 1) : ℝ)

end

end A014631.P5840297039658968939

/-! ## A014631.P13924553996430744748

`root(A014764(n+1), A040000(n))`
-/

namespace A014631.P13924553996430744748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014764 (n + 1) : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A014631.P13924553996430744748

/-! ## A014631.P4628778562963000653

`root(A014764(n+1), A000038(n)+2)`
-/

namespace A014631.P4628778562963000653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014764 (n + 1) : ℝ) ^ (1 / (A000038 n + 2 : ℝ))

end

end A014631.P4628778562963000653

/-! ## A014631.P18068181275269743513

`root(A014764(n+1), A020639(2*(n+1)))`
-/

namespace A014631.P18068181275269743513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014764 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A014631.P18068181275269743513

/-! ## A014631.P14715040503046979664

`A273943(A028328(n))`
-/

namespace A014631.P14715040503046979664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A028328 n).toNat

end

end A014631.P14715040503046979664

/-! ## A014631.P2321008595856651992

`A014682(A028328(n))`
-/

namespace A014631.P2321008595856651992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028328 n).toNat

end

end A014631.P2321008595856651992

/-!
# A014632: Odd pentagonal numbers.

The programs for A014632, the canonical program `A014632.P13043909666610888078` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014632 has offset 0).

The definition of A014632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014632.P6425374716549106787

`ogf((1+4x+28x^2+8x^3+7x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A014632.P6425374716549106787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 28, 8, 7] [1, -1, -2, 2, 1, -1] n

end

end A014632.P6425374716549106787

namespace A014632

/-- `ogf((1+4x+28x^2+8x^3+7x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P6425374716549106787.Spec : Prop :=
  ∀ n, P6425374716549106787.a n = A014632 n

end A014632

/-! ## A014632.P13043909666610888078

`48+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=35, a(3)=51`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014632

/-- `48+2*a(n-2)-a(n-4)` -/
def P13043909666610888078.Spec : Prop :=
  ∀ n, P13043909666610888078.a n = A014632 n

theorem P13043909666610888078.correct : P13043909666610888078.Spec := by
  intro n
  simp only [A014632]

end A014632

/-! ## A014632.P12959346072256925603

`(3*(-1)^n+12*n+1)*((-1)^n+4*n+1)/8`
-/

namespace A014632.P12959346072256925603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (-1) ^ n + (12 * n : ℤ) + 1) * ((-1) ^ n + (4 * n : ℤ) + 1) : ℚ) / 8

end

end A014632.P12959346072256925603

namespace A014632

/-- `(3*(-1)^n+12*n+1)*((-1)^n+4*n+1)/8` -/
def P12959346072256925603.Spec : Prop :=
  ∀ n, P12959346072256925603.a n = (A014632 n : ℚ)

theorem P12959346072256925603.correct : P12959346072256925603.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A014632, Nat.add_sub_cancel, A014632.P12959346072256925603.a, A014632.P13043909666610888078.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A014632, Nat.add_sub_cancel, A014632.P12959346072256925603.a, A014632.P13043909666610888078.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A014632

/-! ## A014632.P9265798668755326991

`or(1, 3*n)²-(3*n²+n)`
-/

namespace A014632.P9265798668755326991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (3 * n) ^ 2 : ℤ) - (3 * n ^ 2 + n : ℤ)

end

end A014632.P9265798668755326991

namespace A014632

/-- `or(1, 3*n)²-(3*n²+n)` -/
def P9265798668755326991.Spec : Prop :=
  ∀ n, P9265798668755326991.a n = A014632 n

end A014632

/-! ## A014632.P16888350219186566471

`record[(C(or(2, n), 2)+n²+n)/(1-and(2, n))]`
-/

namespace A014632.P16888350219186566471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 2 n) 2 + (n ^ 2 + n) : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014632.P16888350219186566471

namespace A014632

/-- `record[(C(or(2, n), 2)+n²+n)/(1-and(2, n))]` -/
def P16888350219186566471.Spec : Prop :=
  ∀ n, P16888350219186566471.a n = (A014632 n : ℚ)

end A014632

/-! ## A014632.P1661977374485199991

`record[(C(or(2, n), 2)+n²+n)^(1-and(2, n))]`
-/

namespace A014632.P1661977374485199991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 2 n) 2 + (n ^ 2 + n) : ℚ) ^ (1 - (Nat.land 2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014632.P1661977374485199991

namespace A014632

/-- `record[(C(or(2, n), 2)+n²+n)^(1-and(2, n))]` -/
def P1661977374485199991.Spec : Prop :=
  ∀ n, P1661977374485199991.a n = (A014632 n : ℚ)

end A014632

/-! ## A014632.P14313443257148608196

`sqrt(A014769(n))`
-/

namespace A014632.P14313443257148608196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014769 n : ℝ)

end

end A014632.P14313443257148608196

namespace A014632

/-- `sqrt(A014769(n))` -/
def P14313443257148608196.Spec : Prop :=
  ∀ n, P14313443257148608196.a n = (A014632 n : ℝ)

end A014632

/-! ## A014632.P3878588151366041342

`∑[A019557(n)/3^(n%2)]`
-/

namespace A014632.P3878588151366041342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019557 n : ℚ) / (3 ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014632.P3878588151366041342

namespace A014632

/-- `∑[A019557(n)/3^(n%2)]` -/
def P3878588151366041342.Spec : Prop :=
  ∀ n, P3878588151366041342.a n = (A014632 n : ℚ)

end A014632

/-! ## A014632.P16544972480931713233

`(6*n+1)*A109613(n)-2*n`
-/

namespace A014632.P16544972480931713233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A109613 n - (2 * n : ℤ)

end

end A014632.P16544972480931713233

namespace A014632

/-- `(6*n+1)*A109613(n)-2*n` -/
def P16544972480931713233.Spec : Prop :=
  ∀ n, P16544972480931713233.a n = A014632 n

end A014632

/-! ## A014632.P14774269223877942067

`A381390(n)-A014633(n)`
-/

namespace A014632.P14774269223877942067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n - A014633 n

end

end A014632.P14774269223877942067

namespace A014632

/-- `A381390(n)-A014633(n)` -/
def P14774269223877942067.Spec : Prop :=
  ∀ n, P14774269223877942067.a n = A014632 n

end A014632

/-! ## A014632.P7462224558671003357

`A179741(n)+2-A014633(n)`
-/

namespace A014632.P7462224558671003357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179741 n + (2 - A014633 n)

end

end A014632.P7462224558671003357

namespace A014632

/-- `A179741(n)+2-A014633(n)` -/
def P7462224558671003357.Spec : Prop :=
  ∀ n, P7462224558671003357.a n = A014632 n

end A014632

/-! ## A014632.P721256692927593360

`A276914(n)+(A042948(n)+1)²`
-/

namespace A014632.P721256692927593360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276914 n + (A042948 n + 1) ^ 2

end

end A014632.P721256692927593360

namespace A014632

/-- `A276914(n)+(A042948(n)+1)²` -/
def P721256692927593360.Spec : Prop :=
  ∀ n, P721256692927593360.a n = A014632 n

end A014632

/-! ## A014632.P636254971895185617

`2*A042963(n+1)²-A014493(n+1)`
-/

namespace A014632.P636254971895185617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A042963 (n + 1) ^ 2 - A014493 (n + 1)

end

end A014632.P636254971895185617

namespace A014632

/-- `2*A042963(n+1)²-A014493(n+1)` -/
def P636254971895185617.Spec : Prop :=
  ∀ n, P636254971895185617.a n = A014632 n

end A014632

/-! ## A014632.P16733155104738857449

`A042963(n+1)²+n*A168277(n+1)`
-/

namespace A014632.P16733155104738857449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) ^ 2 + (n : ℤ) * A168277 (n + 1)

end

end A014632.P16733155104738857449

namespace A014632

/-- `A042963(n+1)²+n*A168277(n+1)` -/
def P16733155104738857449.Spec : Prop :=
  ∀ n, P16733155104738857449.a n = A014632 n

end A014632

/-! ## A014632.P14343085546821951591

`n²+A000567(or(1, n))+A000217(2*n)`
-/

namespace A014632.P14343085546821951591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A000567 (Nat.lor 1 n) + A000217 (2 * n))

end

end A014632.P14343085546821951591

namespace A014632

/-- `n²+A000567(or(1, n))+A000217(2*n)` -/
def P14343085546821951591.Spec : Prop :=
  ∀ n, P14343085546821951591.a n = A014632 n

end A014632

/-! ## A014632.P17522797117892207855

`A042948(n)+A276916(n)-A276914(n)`
-/

namespace A014632.P17522797117892207855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n + (A276916 n - A276914 n)

end

end A014632.P17522797117892207855

namespace A014632

/-- `A042948(n)+A276916(n)-A276914(n)` -/
def P17522797117892207855.Spec : Prop :=
  ∀ n, P17522797117892207855.a n = A014632 n

end A014632

/-! ## A014632.P15896306792814748938

`A014493(n+1)+A042948(n)*A042963(n+1)`
-/

namespace A014632.P15896306792814748938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) + A042948 n * A042963 (n + 1)

end

end A014632.P15896306792814748938

namespace A014632

/-- `A014493(n+1)+A042948(n)*A042963(n+1)` -/
def P15896306792814748938.Spec : Prop :=
  ∀ n, P15896306792814748938.a n = A014632 n

end A014632

/-! ## A014632.P4678077820647451965

`or(1, n)*A016777(2*n)-2*n`
-/

namespace A014632.P4678077820647451965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A016777 (2 * n) - (2 * n : ℤ)

end

end A014632.P4678077820647451965

namespace A014632

/-- `or(1, n)*A016777(2*n)-2*n` -/
def P4678077820647451965.Spec : Prop :=
  ∀ n, P4678077820647451965.a n = A014632 n

end A014632

/-! ## A014632.P352985352944538315

`A000326(or(1, n)+n)`
-/

namespace A014632.P352985352944538315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (Nat.lor 1 n + n)

end

end A014632.P352985352944538315

namespace A014632

/-- `A000326(or(1, n)+n)` -/
def P352985352944538315.Spec : Prop :=
  ∀ n, P352985352944538315.a n = A014632 n

end A014632

/-! ## A014632.P5981335688829104729

`(6*n+1)*A186421(2*n+1)-2*n`
-/

namespace A014632.P5981335688829104729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A186421 (2 * n + 1) - (2 * n : ℤ)

end

end A014632.P5981335688829104729

namespace A014632

/-- `(6*n+1)*A186421(2*n+1)-2*n` -/
def P5981335688829104729.Spec : Prop :=
  ∀ n, P5981335688829104729.a n = A014632 n

end A014632

/-!
# A014633: Even pentagonal numbers.

The programs for A014633, the canonical program `A014633.P11082921280104602440` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014633 has offset 0).

The definition of A014633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014633.P11082921280104602440

`48+2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=22, a(3)=70`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014633

/-- `48+2*a(n-2)-a(n-4)` -/
def P11082921280104602440.Spec : Prop :=
  ∀ n, P11082921280104602440.a n = A014633 n

theorem P11082921280104602440.correct : P11082921280104602440.Spec := by
  intro n
  simp only [A014633]

end A014633

/-! ## A014633.P5339258210289244292

`2*((6*n+1)*round(n/2)-n)`
-/

namespace A014633.P5339258210289244292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((6 * n + 1 : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) / 2) - (n : ℤ))

end

end A014633.P5339258210289244292

namespace A014633

/-- `2*((6*n+1)*round(n/2)-n)` -/
def P5339258210289244292.Spec : Prop :=
  ∀ n, P5339258210289244292.a n = A014633 n

end A014633

/-! ## A014633.P8743611692497096467

`sqrt(A014770(n))`
-/

namespace A014633.P8743611692497096467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014770 n : ℝ)

end

end A014633.P8743611692497096467

namespace A014633

/-- `sqrt(A014770(n))` -/
def P8743611692497096467.Spec : Prop :=
  ∀ n, P8743611692497096467.a n = (A014633 n : ℝ)

end A014633

/-! ## A014633.P3612892160142617335

`A193866(n)+A193866(n)`
-/

namespace A014633.P3612892160142617335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193866 n + A193866 n

end

end A014633.P3612892160142617335

namespace A014633

/-- `A193866(n)+A193866(n)` -/
def P3612892160142617335.Spec : Prop :=
  ∀ n, P3612892160142617335.a n = A014633 n

end A014633

/-! ## A014633.P2879431330639761753

`A381390(n)-A014632(n)`
-/

namespace A014633.P2879431330639761753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n - A014632 n

end

end A014633.P2879431330639761753

namespace A014633

/-- `A381390(n)-A014632(n)` -/
def P2879431330639761753.Spec : Prop :=
  ∀ n, P2879431330639761753.a n = A014633 n

end A014633

/-! ## A014633.P17018955375526639377

`2*A014601(n)²-A014494(n)`
-/

namespace A014633.P17018955375526639377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014601 n ^ 2 - A014494 n

end

end A014633.P17018955375526639377

namespace A014633

/-- `2*A014601(n)²-A014494(n)` -/
def P17018955375526639377.Spec : Prop :=
  ∀ n, P17018955375526639377.a n = A014633 n

end A014633

/-! ## A014633.P8941400887455399826

`A047233(n+1)²+1-A056108(n)`
-/

namespace A014633.P8941400887455399826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047233 (n + 1) ^ 2 + (1 - A056108 n)

end

end A014633.P8941400887455399826

namespace A014633

/-- `A047233(n+1)²+1-A056108(n)` -/
def P8941400887455399826.Spec : Prop :=
  ∀ n, P8941400887455399826.a n = A014633 n

end A014633

/-! ## A014633.P18442025556288647113

`A000326(2*n+n%2)`
-/

namespace A014633.P18442025556288647113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n + n % 2)

end

end A014633.P18442025556288647113

namespace A014633

/-- `A000326(2*n+n%2)` -/
def P18442025556288647113.Spec : Prop :=
  ∀ n, P18442025556288647113.a n = A014633 n

end A014633

/-! ## A014633.P9607722738665104020

`A000326(3*n+1-or(1, n))`
-/

namespace A014633.P9607722738665104020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (3 * n + 1 - Nat.lor 1 n)

end

end A014633.P9607722738665104020

namespace A014633

/-- `A000326(3*n+1-or(1, n))` -/
def P9607722738665104020.Spec : Prop :=
  ∀ n, P9607722738665104020.a n = A014633 n

end A014633

/-! ## A014633.P1040489401793620130

`A000326(A014601(n))`
-/

namespace A014633.P1040489401793620130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A014601 n).toNat

end

end A014633.P1040489401793620130

namespace A014633

/-- `A000326(A014601(n))` -/
def P1040489401793620130.Spec : Prop :=
  ∀ n, P1040489401793620130.a n = A014633 n

end A014633

/-! ## A014633.P15712123635756173549

`∩[A000326(n), A193828(n)]`
-/

namespace A014633.P15712123635756173549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014633.P15712123635756173549

namespace A014633

/-- `∩[A000326(n), A193828(n)]` -/
def P15712123635756173549.Spec : Prop :=
  ∀ n, (P15712123635756173549.a n : ℤ) = A014633 n

end A014633

/-! ## A014633.P9290988694571608415

`A000326(comp[Δ[A014848(n)]])`
-/

namespace A014633.P9290988694571608415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014633.P9290988694571608415

namespace A014633

/-- `A000326(comp[Δ[A014848(n)]])` -/
def P9290988694571608415.Spec : Prop :=
  ∀ n, P9290988694571608415.a n = A014633 n

end A014633

/-! ## A014633.P16558739936553071431

`A000326(A042948(n+1)-1)`
-/

namespace A014633.P16558739936553071431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042948 (n + 1) - 1).toNat

end

end A014633.P16558739936553071431

namespace A014633

/-- `A000326(A042948(n+1)-1)` -/
def P16558739936553071431.Spec : Prop :=
  ∀ n, P16558739936553071431.a n = A014633 n

end A014633

/-! ## A014633.P7367012054291134151

`A000326(A042963(n+2)-2)`
-/

namespace A014633.P7367012054291134151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A042963 (n + 2) - 2).toNat

end

end A014633.P7367012054291134151

namespace A014633

/-- `A000326(A042963(n+2)-2)` -/
def P7367012054291134151.Spec : Prop :=
  ∀ n, P7367012054291134151.a n = A014633 n

end A014633

/-! ## A014633.P15265789988374368861

`A000326(A052928(n+1)+n)`
-/

namespace A014633.P15265789988374368861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A052928 (n + 1) + (n : ℤ)).toNat

end

end A014633.P15265789988374368861

namespace A014633

/-- `A000326(A052928(n+1)+n)` -/
def P15265789988374368861.Spec : Prop :=
  ∀ n, P15265789988374368861.a n = A014633 n

end A014633

/-! ## A014633.P18059169868692038211

`A000326(A000035(n)+2*n)`
-/

namespace A014633.P18059169868692038211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A000035 n + (2 * n : ℤ)).toNat

end

end A014633.P18059169868692038211

namespace A014633

/-- `A000326(A000035(n)+2*n)` -/
def P18059169868692038211.Spec : Prop :=
  ∀ n, P18059169868692038211.a n = A014633 n

end A014633

/-! ## A014633.P7801514821380810336

`A000326(2*A110654(n)+n)`
-/

namespace A014633.P7801514821380810336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * A110654 n + (n : ℤ)).toNat

end

end A014633.P7801514821380810336

namespace A014633

/-- `A000326(2*A110654(n)+n)` -/
def P7801514821380810336.Spec : Prop :=
  ∀ n, P7801514821380810336.a n = A014633 n

end A014633

/-! ## A014633.P16462953200658908785

`A000326(A212831(2*n)+n)`
-/

namespace A014633.P16462953200658908785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A212831 (2 * n) + (n : ℤ)).toNat

end

end A014633.P16462953200658908785

namespace A014633

/-- `A000326(A212831(2*n)+n)` -/
def P16462953200658908785.Spec : Prop :=
  ∀ n, P16462953200658908785.a n = A014633 n

end A014633

/-! ## A014633.P939211489310428723

`A000326(2*A007494(n)-n)`
-/

namespace A014633.P939211489310428723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * A007494 n - (n : ℤ)).toNat

end

end A014633.P939211489310428723

namespace A014633

/-- `A000326(2*A007494(n)-n)` -/
def P939211489310428723.Spec : Prop :=
  ∀ n, P939211489310428723.a n = A014633 n

end A014633

/-! ## A014633.P2158883657748822978

`A000326(A016777(n)-A109613(n))`
-/

namespace A014633.P2158883657748822978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A016777 n - A109613 n).toNat

end

end A014633.P2158883657748822978

namespace A014633

/-- `A000326(A016777(n)-A109613(n))` -/
def P2158883657748822978.Spec : Prop :=
  ∀ n, P2158883657748822978.a n = A014633 n

end A014633

/-!
# A014634: a(n) = (2*n+1)*(4*n+1).

The programs for A014634, the canonical program `A014634.P13834563675282914036` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014634 has offset 0).

The definition of A014634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(4*n+1)` (program `A014634.P13834563675282914036`, by `A014634.P13834563675282914036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014634.P14044639718608822464

`ogf((1+12x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A014634.P14044639718608822464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 3] [1, -3, 3, -1] n

end

end A014634.P14044639718608822464

namespace A014634

/-- `ogf((1+12x+3x^2)/(1-3x+3x^2-x^3))` -/
def P14044639718608822464.Spec : Prop :=
  ∀ n, P14044639718608822464.a n = A014634 n

end A014634

/-! ## A014634.P13834563675282914036

`(2*n+1)*(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014634

/-- `(2*n+1)*(4*n+1)` -/
def P13834563675282914036.Spec : Prop :=
  ∀ n, (P13834563675282914036.a n : ℤ) = A014634 n

theorem P13834563675282914036.correct : P13834563675282914036.Spec := by
  intro n
  simp only [A014634]

end A014634

/-! ## A014634.P14149948934287367297

`A157870(n)/2`
-/

namespace A014634.P14149948934287367297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157870 n : ℚ) / 2

end

end A014634.P14149948934287367297

namespace A014634

/-- `A157870(n)/2` -/
def P14149948934287367297.Spec : Prop :=
  ∀ n, P14149948934287367297.a n = (A014634 n : ℚ)

theorem P14149948934287367297.correct : P14149948934287367297.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P14149948934287367297.a, A014634.P13834563675282914036.a, A157870, A157870.P6469800247760931367.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014634

/-! ## A014634.P2812375864238988585

`A194268(n)-n`
-/

namespace A014634.P2812375864238988585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 n - (n : ℤ)

end

end A014634.P2812375864238988585

namespace A014634

/-- `A194268(n)-n` -/
def P2812375864238988585.Spec : Prop :=
  ∀ n, P2812375864238988585.a n = A014634 n

theorem P2812375864238988585.correct : P2812375864238988585.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P2812375864238988585.a, A014634.P13834563675282914036.a, A194268, A194268.P13709870917259288745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014634

/-! ## A014634.P6983004950966017280

`2*A033954(n)+1`
-/

namespace A014634.P6983004950966017280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033954 n + 1

end

end A014634.P6983004950966017280

namespace A014634

/-- `2*A033954(n)+1` -/
def P6983004950966017280.Spec : Prop :=
  ∀ n, P6983004950966017280.a n = A014634 n

theorem P6983004950966017280.correct : P6983004950966017280.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P6983004950966017280.a, A014634.P13834563675282914036.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014634

/-! ## A014634.P15547375106171942820

`A003154(n+1)+2*A000290(n)`
-/

namespace A014634.P15547375106171942820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) + 2 * A000290 n

end

end A014634.P15547375106171942820

namespace A014634

/-- `A003154(n+1)+2*A000290(n)` -/
def P15547375106171942820.Spec : Prop :=
  ∀ n, P15547375106171942820.a n = A014634 n

theorem P15547375106171942820.correct : P15547375106171942820.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P15547375106171942820.a, A014634.P13834563675282914036.a, A000290, A000290.P12206242496348924484.a, A003154, A003154.P12292724974289202885.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014634

/-! ## A014634.P14364330874456909261

`C(4*n+2, 2)`
-/

namespace A014634.P14364330874456909261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) 2

end

end A014634.P14364330874456909261

namespace A014634

/-- `C(4*n+2, 2)` -/
def P14364330874456909261.Spec : Prop :=
  ∀ n, (P14364330874456909261.a n : ℤ) = A014634 n

theorem P14364330874456909261.correct : P14364330874456909261.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P14364330874456909261.a, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014634

/-! ## A014634.P8061940370432340243

`record[C(lcm(2, n+1), 2)]`
-/

namespace A014634.P8061940370432340243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lcm 2 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P8061940370432340243

namespace A014634

/-- `record[C(lcm(2, n+1), 2)]` -/
def P8061940370432340243.Spec : Prop :=
  ∀ n, (P8061940370432340243.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P17403979086738962870

`record[C(2*xor(1, n), 2)]`
-/

namespace A014634.P17403979086738962870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.xor 1 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P17403979086738962870

namespace A014634

/-- `record[C(2*xor(1, n), 2)]` -/
def P17403979086738962870.Spec : Prop :=
  ∀ n, (P17403979086738962870.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P1047269168679373410

`∑[a(n-1)+16]` with `a(0)=1, a(1)=14`
-/

namespace A014634.P1047269168679373410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014634.P1047269168679373410

namespace A014634

/-- `∑[a(n-1)+16]` -/
def P1047269168679373410.Spec : Prop :=
  ∀ n, (P1047269168679373410.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P15214750045931199837

`filter[C(2*n, 2), #%2]`
-/

namespace A014634.P15214750045931199837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A014634.P15214750045931199837

namespace A014634

/-- `filter[C(2*n, 2), #%2]` -/
def P15214750045931199837.Spec : Prop :=
  ∀ n, (P15214750045931199837.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P9341947225957797813

`∑[ogf((1+12x+3x^2)/(1-2x+x^2))]`
-/

namespace A014634.P9341947225957797813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014634.P9341947225957797813

namespace A014634

/-- `∑[ogf((1+12x+3x^2)/(1-2x+x^2))]` -/
def P9341947225957797813.Spec : Prop :=
  ∀ n, P9341947225957797813.a n = A014634 n

end A014634

/-! ## A014634.P11761775261548857860

`record[(2*n+1)*xor(1, n)]`
-/

namespace A014634.P11761775261548857860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P11761775261548857860

namespace A014634

/-- `record[(2*n+1)*xor(1, n)]` -/
def P11761775261548857860.Spec : Prop :=
  ∀ n, (P11761775261548857860.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P12679257724180038514

`record[C(2*n, 2*n%2)]`
-/

namespace A014634.P12679257724180038514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (2 * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P12679257724180038514

namespace A014634

/-- `record[C(2*n, 2*n%2)]` -/
def P12679257724180038514.Spec : Prop :=
  ∀ n, (P12679257724180038514.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P17396291279166005976

`record[C(n+1, xor(3, n+2))]`
-/

namespace A014634.P17396291279166005976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.xor 3 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P17396291279166005976

namespace A014634

/-- `record[C(n+1, xor(3, n+2))]` -/
def P17396291279166005976.Spec : Prop :=
  ∀ n, (P17396291279166005976.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P1886907164216402989

`record[C(2*n, 2*and(1, n))]`
-/

namespace A014634.P1886907164216402989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P1886907164216402989

namespace A014634

/-- `record[C(2*n, 2*and(1, n))]` -/
def P1886907164216402989.Spec : Prop :=
  ∀ n, (P1886907164216402989.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P17784261310899300615

`record[C(2*or(1, n), 2*n)]`
-/

namespace A014634.P17784261310899300615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.lor 1 n) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014634.P17784261310899300615

namespace A014634

/-- `record[C(2*or(1, n), 2*n)]` -/
def P17784261310899300615.Spec : Prop :=
  ∀ n, (P17784261310899300615.a n : ℤ) = A014634 n

end A014634

/-! ## A014634.P3763809141645839488

`Δ[n²]*Δ[C(2*n, 2)]`
-/

namespace A014634.P3763809141645839488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A014634.P3763809141645839488

namespace A014634

/-- `Δ[n²]*Δ[C(2*n, 2)]` -/
def P3763809141645839488.Spec : Prop :=
  ∀ n, P3763809141645839488.a n = A014634 n

theorem P3763809141645839488.correct : P3763809141645839488.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P3763809141645839488.f1, A014634.P3763809141645839488.f2, A014634.P3763809141645839488.a, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014634

/-! ## A014634.P3694014849833083348

`4*4*n-(2-a(n-1))` with `a(0)=1`
-/

namespace A014634.P3694014849833083348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (4 * n) : ℤ) - (2 - a (n - 1))

end

end A014634.P3694014849833083348

namespace A014634

/-- `4*4*n-(2-a(n-1))` -/
def P3694014849833083348.Spec : Prop :=
  ∀ n, P3694014849833083348.a n = A014634 n

theorem P3694014849833083348.correct : P3694014849833083348.Spec := by
  intro n
  induction n with
  | zero => simp [A014634, A014634.P3694014849833083348.a, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A014634, Nat.add_sub_cancel, A014634.P3694014849833083348.a, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A014634

/-! ## A014634.P4835595248305759506

`A033587(n)+1`
-/

namespace A014634.P4835595248305759506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033587 n + 1

end

end A014634.P4835595248305759506

namespace A014634

/-- `A033587(n)+1` -/
def P4835595248305759506.Spec : Prop :=
  ∀ n, P4835595248305759506.a n = A014634 n

theorem P4835595248305759506.correct : P4835595248305759506.Spec := by
  intro n
  simp only [A014634, Nat.add_sub_cancel, A014634.P4835595248305759506.a, A014634.P13834563675282914036.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014634

/-!
# A014635: a(n) = 2*n*(4*n - 1).

The programs for A014635, the canonical program `A014635.P12617269699985302371` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014635 has offset 0).

The definition of A014635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n-1)` (program `A014635.P12617269699985302371`, by `A014635.P12617269699985302371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014635.P3125693807345417660

`C(4*n, 2)`
-/

namespace A014635.P3125693807345417660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 2

end

end A014635.P3125693807345417660

namespace A014635

/-- `C(4*n, 2)` -/
def P3125693807345417660.Spec : Prop :=
  ∀ n, (P3125693807345417660.a n : ℤ) = A014635 n

theorem P3125693807345417660.correct : P3125693807345417660.Spec := by
  intro n
  simp only [A014635, Nat.add_sub_cancel, A014635.P3125693807345417660.a, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014635

/-! ## A014635.P6487241865410831966

`8*n²-2*n`
-/

namespace A014635.P6487241865410831966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - (2 * n : ℤ)

end

end A014635.P6487241865410831966

namespace A014635

/-- `8*n²-2*n` -/
def P6487241865410831966.Spec : Prop :=
  ∀ n, P6487241865410831966.a n = A014635 n

theorem P6487241865410831966.correct : P6487241865410831966.Spec := by
  intro n
  simp only [A014635, Nat.add_sub_cancel, A014635.P6487241865410831966.a, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014635

/-! ## A014635.P12617269699985302371

`2*n*(4*n-1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014635

/-- `2*n*(4*n-1)` -/
def P12617269699985302371.Spec : Prop :=
  ∀ n, P12617269699985302371.a n = A014635 n

theorem P12617269699985302371.correct : P12617269699985302371.Spec := by
  intro n
  simp only [A014635]

end A014635

/-! ## A014635.P12768913388952789911

`ogf((6x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A014635.P12768913388952789911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 10] [1, -3, 3, -1] n

end

end A014635.P12768913388952789911

namespace A014635

/-- `ogf((6x+10x^2)/(1-3x+3x^2-x^3))` -/
def P12768913388952789911.Spec : Prop :=
  ∀ n, P12768913388952789911.a n = A014635 n

end A014635

/-! ## A014635.P10431542023689005131

`n*(record[lcm(4, n)]+2)`
-/

namespace A014635.P10431542023689005131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2)

end

end A014635.P10431542023689005131

namespace A014635

/-- `n*(record[lcm(4, n)]+2)` -/
def P10431542023689005131.Spec : Prop :=
  ∀ n, (P10431542023689005131.a n : ℤ) = A014635 n

end A014635

/-! ## A014635.P17888663202068542710

`∑[a(n-1)+16]` with `a(0)=0, a(1)=6`
-/

namespace A014635.P17888663202068542710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014635.P17888663202068542710

namespace A014635

/-- `∑[a(n-1)+16]` -/
def P17888663202068542710.Spec : Prop :=
  ∀ n, (P17888663202068542710.a n : ℤ) = A014635 n

end A014635

/-! ## A014635.P2287295004571108856

`∑[ogf((6x+10x^2)/(1-2x+x^2))]`
-/

namespace A014635.P2287295004571108856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014635.P2287295004571108856

namespace A014635

/-- `∑[ogf((6x+10x^2)/(1-2x+x^2))]` -/
def P2287295004571108856.Spec : Prop :=
  ∀ n, P2287295004571108856.a n = A014635 n

end A014635

/-! ## A014635.P5077732381871272274

`lcm(2*n, or(1, -(4*n)))`
-/

namespace A014635.P5077732381871272274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (Int.lor 1 (-(4 * n : ℤ)))

end

end A014635.P5077732381871272274

namespace A014635

/-- `lcm(2*n, or(1, -(4*n)))` -/
def P5077732381871272274.Spec : Prop :=
  ∀ n, (P5077732381871272274.a n : ℤ) = A014635 n

end A014635

/-! ## A014635.P5802207508461517320

`lcm(2, C((n+1)²-(1-n)², 2))`
-/

namespace A014635.P5802207508461517320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2).toNat 2)

end

end A014635.P5802207508461517320

namespace A014635

/-- `lcm(2, C((n+1)²-(1-n)², 2))` -/
def P5802207508461517320.Spec : Prop :=
  ∀ n, (P5802207508461517320.a n : ℤ) = A014635 n

end A014635

/-! ## A014635.P10770435426545028959

`record[(2*n+1)*(n+1)*and(1, n)]`
-/

namespace A014635.P10770435426545028959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((n + 1) * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014635.P10770435426545028959

namespace A014635

/-- `record[(2*n+1)*(n+1)*and(1, n)]` -/
def P10770435426545028959.Spec : Prop :=
  ∀ n, (P10770435426545028959.a n : ℤ) = A014635 n

end A014635

/-! ## A014635.P16575640872233978639

`floor(lcm(2*n+2*n+1, (2*n)²)/(2*n+1))`
-/

namespace A014635.P16575640872233978639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + (2 * n + 1)) ((2 * n) ^ 2) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A014635.P16575640872233978639

namespace A014635

/-- `floor(lcm(2*n+2*n+1, (2*n)²)/(2*n+1))` -/
def P16575640872233978639.Spec : Prop :=
  ∀ n, P16575640872233978639.a n = A014635 n

end A014635

/-! ## A014635.P9752802642954131549

`A104188(n)/2`
-/

namespace A014635.P9752802642954131549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104188 n : ℚ) / 2

end

end A014635.P9752802642954131549

namespace A014635

/-- `A104188(n)/2` -/
def P9752802642954131549.Spec : Prop :=
  ∀ n, P9752802642954131549.a n = (A014635 n : ℚ)

theorem P9752802642954131549.correct : P9752802642954131549.Spec := by
  intro n
  simp only [A014635, Nat.add_sub_cancel, A014635.P9752802642954131549.a, A014635.P12617269699985302371.a, A104188, A104188.P226395597657789732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014635

/-! ## A014635.P7403397085005236912

`record[C(A019425(n), 2)]`
-/

namespace A014635.P7403397085005236912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A019425 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014635.P7403397085005236912

namespace A014635

/-- `record[C(A019425(n), 2)]` -/
def P7403397085005236912.Spec : Prop :=
  ∀ n, (P7403397085005236912.a n : ℤ) = A014635 n

end A014635

/-! ## A014635.P2898190948068046793

`2*A062783(n)/3`
-/

namespace A014635.P2898190948068046793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A062783 n : ℚ) / 3

end

end A014635.P2898190948068046793

namespace A014635

/-- `2*A062783(n)/3` -/
def P2898190948068046793.Spec : Prop :=
  ∀ n, P2898190948068046793.a n = (A014635 n : ℚ)

theorem P2898190948068046793.correct : P2898190948068046793.Spec := by
  intro n
  simp only [A014635, Nat.add_sub_cancel, A014635.P2898190948068046793.a, A014635.P12617269699985302371.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014635

/-! ## A014635.P10723980167006733450

`A082041(n)%A014634(n)`
-/

namespace A014635.P10723980167006733450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082041 n) (A014634 n)

end

end A014635.P10723980167006733450

namespace A014635

/-- `A082041(n)%A014634(n)` -/
def P10723980167006733450.Spec : Prop :=
  ∀ n, P10723980167006733450.a n = A014635 n

end A014635

/-! ## A014635.P1996414672478085555

`A152100(n)%A035471(n)`
-/

namespace A014635.P1996414672478085555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152100 n) (A035471 n)

end

end A014635.P1996414672478085555

namespace A014635

/-- `A152100(n)%A035471(n)` -/
def P1996414672478085555.Spec : Prop :=
  ∀ n, P1996414672478085555.a n = A014635 n

end A014635

/-! ## A014635.P12286881406514408500

`A185096(n)%A008527(n)`
-/

namespace A014635.P12286881406514408500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185096 n) (A008527 n)

end

end A014635.P12286881406514408500

namespace A014635

/-- `A185096(n)%A008527(n)` -/
def P12286881406514408500.Spec : Prop :=
  ∀ n, P12286881406514408500.a n = A014635 n

end A014635

/-! ## A014635.P16248642501376732380

`A204675(n)%A102083(n)`
-/

namespace A014635.P16248642501376732380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204675 n) (A102083 n)

end

end A014635.P16248642501376732380

namespace A014635

/-- `A204675(n)%A102083(n)` -/
def P16248642501376732380.Spec : Prop :=
  ∀ n, P16248642501376732380.a n = A014635 n

end A014635

/-! ## A014635.P10790551524878674848

`A270704(n)%A067239(n)`
-/

namespace A014635.P10790551524878674848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270704 n) (A067239 n)

end

end A014635.P10790551524878674848

namespace A014635

/-- `A270704(n)%A067239(n)` -/
def P10790551524878674848.Spec : Prop :=
  ∀ n, P10790551524878674848.a n = A014635 n

end A014635

/-! ## A014635.P4191474319124430278

`A158493(n)%A194454(n)`
-/

namespace A014635.P4191474319124430278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158493 n) (A194454 n)

end

end A014635.P4191474319124430278

namespace A014635

/-- `A158493(n)%A194454(n)` -/
def P4191474319124430278.Spec : Prop :=
  ∀ n, P4191474319124430278.a n = A014635 n

end A014635

/-!
# A014636: Inverse of 627th cyclotomic polynomial.

The programs for A014636, there is no canonical definition to state claims against.
-/

/-! ## A014636.P2509750334629645049

`A015263(n)*A033999(n)`
-/

namespace A014636.P2509750334629645049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015263 n * A033999 n

end

end A014636.P2509750334629645049

/-!
# A014637: Odd heptagonal numbers (A000566).

The programs for A014637, the canonical program `A014637.P7931059359978617609` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014637 has offset 0).

The definition of A014637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014637.P11925440952186954435

`ogf((1+6x+46x^2+14x^3+13x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A014637.P11925440952186954435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 46, 14, 13] [1, -1, -2, 2, 1, -1] n

end

end A014637.P11925440952186954435

namespace A014637

/-- `ogf((1+6x+46x^2+14x^3+13x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P11925440952186954435.Spec : Prop :=
  ∀ n, P11925440952186954435.a n = A014637 n

end A014637

/-! ## A014637.P7931059359978617609

`80+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=55, a(3)=81`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014637

/-- `80+2*a(n-2)-a(n-4)` -/
def P7931059359978617609.Spec : Prop :=
  ∀ n, P7931059359978617609.a n = A014637 n

theorem P7931059359978617609.correct : P7931059359978617609.Spec := by
  intro n
  simp only [A014637]

end A014637

/-! ## A014637.P4401661998560078556

`(5*(-1)^n+20*n-1)*(4*n+1+(-1)^n)/8`
-/

namespace A014637.P4401661998560078556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (-1) ^ n + (20 * n : ℤ) - 1) * ((4 * n + 1 : ℤ) + (-1) ^ n) : ℚ) / 8

end

end A014637.P4401661998560078556

namespace A014637

/-- `(5*(-1)^n+20*n-1)*(4*n+1+(-1)^n)/8` -/
def P4401661998560078556.Spec : Prop :=
  ∀ n, P4401661998560078556.a n = (A014637 n : ℚ)

theorem P4401661998560078556.correct : P4401661998560078556.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A014637, Nat.add_sub_cancel, A014637.P4401661998560078556.a, A014637.P7931059359978617609.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A014637, Nat.add_sub_cancel, A014637.P4401661998560078556.a, A014637.P7931059359978617609.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A014637

/-! ## A014637.P12326166227845973561

`sqrt(A014773(n+1))`
-/

namespace A014637.P12326166227845973561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014773 (n + 1) : ℝ)

end

end A014637.P12326166227845973561

namespace A014637

/-- `sqrt(A014773(n+1))` -/
def P12326166227845973561.Spec : Prop :=
  ∀ n, P12326166227845973561.a n = (A014637 n : ℝ)

end A014637

/-! ## A014637.P8230050217392690394

`2*A014632(n)-A014493(n+1)`
-/

namespace A014637.P8230050217392690394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014632 n - A014493 (n + 1)

end

end A014637.P8230050217392690394

namespace A014637

/-- `2*A014632(n)-A014493(n+1)` -/
def P8230050217392690394.Spec : Prop :=
  ∀ n, P8230050217392690394.a n = A014637 n

end A014637

/-! ## A014637.P15927207807453153118

`A042948(n)+A276916(n)+A276914(n)`
-/

namespace A014637.P15927207807453153118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n + (A276916 n + A276914 n)

end

end A014637.P15927207807453153118

namespace A014637

/-- `A042948(n)+A276916(n)+A276914(n)` -/
def P15927207807453153118.Spec : Prop :=
  ∀ n, P15927207807453153118.a n = A014637 n

end A014637

/-! ## A014637.P9058763845955157002

`∪[A033571(2*n), A153127(2*n)+1]`
-/

namespace A014637.P9058763845955157002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153127 (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014637.P9058763845955157002

namespace A014637

/-- `∪[A033571(2*n), A153127(2*n)+1]` -/
def P9058763845955157002.Spec : Prop :=
  ∀ n, (P9058763845955157002.a n : ℤ) = A014637 n

end A014637

/-! ## A014637.P7378800586821097410

`A000566(or(1, n)+n)`
-/

namespace A014637.P7378800586821097410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (Nat.lor 1 n + n)

end

end A014637.P7378800586821097410

namespace A014637

/-- `A000566(or(1, n)+n)` -/
def P7378800586821097410.Spec : Prop :=
  ∀ n, P7378800586821097410.a n = A014637 n

end A014637

/-! ## A014637.P624670982702157671

`A192136(or(1, n)+n)-1`
-/

namespace A014637.P624670982702157671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 (Nat.lor 1 n + n) - 1

end

end A014637.P624670982702157671

namespace A014637

/-- `A192136(or(1, n)+n)-1` -/
def P624670982702157671.Spec : Prop :=
  ∀ n, P624670982702157671.a n = A014637 n

end A014637

/-! ## A014637.P3627833812452678529

`A000566(∑[4-a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A014637.P3627833812452678529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014637.P3627833812452678529

namespace A014637

/-- `A000566(∑[4-a(n-1)])` -/
def P3627833812452678529.Spec : Prop :=
  ∀ n, P3627833812452678529.a n = A014637 n

end A014637

/-! ## A014637.P5361121528789512717

`A000566((n+1)%2+2*n)`
-/

namespace A014637.P5361121528789512717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 ((n + 1) % 2 + 2 * n)

end

end A014637.P5361121528789512717

namespace A014637

/-- `A000566((n+1)%2+2*n)` -/
def P5361121528789512717.Spec : Prop :=
  ∀ n, P5361121528789512717.a n = A014637 n

end A014637

/-! ## A014637.P13848036803882879495

`A000566(and(1, n+1)+2*n)`
-/

namespace A014637.P13848036803882879495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (Nat.land 1 (n + 1) + 2 * n)

end

end A014637.P13848036803882879495

namespace A014637

/-- `A000566(and(1, n+1)+2*n)` -/
def P13848036803882879495.Spec : Prop :=
  ∀ n, P13848036803882879495.a n = A014637 n

end A014637

/-! ## A014637.P13068898649808260022

`A192136(char[2*n]+2*n)-1`
-/

namespace A014637.P13068898649808260022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n) - 1

end

end A014637.P13068898649808260022

namespace A014637

/-- `A192136(char[2*n]+2*n)-1` -/
def P13068898649808260022.Spec : Prop :=
  ∀ n, P13068898649808260022.a n = A014637 n

end A014637

/-! ## A014637.P14368931163843923226

`A000566(Δ[A014848(n)])`
-/

namespace A014637.P14368931163843923226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (f1 (n + 1) - f1 n).toNat

end

end A014637.P14368931163843923226

namespace A014637

/-- `A000566(Δ[A014848(n)])` -/
def P14368931163843923226.Spec : Prop :=
  ∀ n, P14368931163843923226.a n = A014637 n

end A014637

/-! ## A014637.P3243851937222211790

`A000566(A042948(n)+1)`
-/

namespace A014637.P3243851937222211790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042948 n + 1).toNat

end

end A014637.P3243851937222211790

namespace A014637

/-- `A000566(A042948(n)+1)` -/
def P3243851937222211790.Spec : Prop :=
  ∀ n, P3243851937222211790.a n = A014637 n

end A014637

/-! ## A014637.P13907040389255046290

`A000566(A042963(n+1))`
-/

namespace A014637.P13907040389255046290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042963 (n + 1)).toNat

end

end A014637.P13907040389255046290

namespace A014637

/-- `A000566(A042963(n+1))` -/
def P13907040389255046290.Spec : Prop :=
  ∀ n, P13907040389255046290.a n = A014637 n

end A014637

/-! ## A014637.P17426358468812639186

`A000566(xor(1, A014601(n)))`
-/

namespace A014637.P17426358468812639186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (Int.xor 1 (A014601 n)).toNat

end

end A014637.P17426358468812639186

namespace A014637

/-- `A000566(xor(1, A014601(n)))` -/
def P17426358468812639186.Spec : Prop :=
  ∀ n, P17426358468812639186.a n = A014637 n

end A014637

/-! ## A014637.P18105547087363538853

`A000566(A109613(n)+n)`
-/

namespace A014637.P18105547087363538853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A109613 n + (n : ℤ)).toNat

end

end A014637.P18105547087363538853

namespace A014637

/-- `A000566(A109613(n)+n)` -/
def P18105547087363538853.Spec : Prop :=
  ∀ n, P18105547087363538853.a n = A014637 n

end A014637

/-! ## A014637.P108970800004101875

`A000566(A014601(n+1)-2)`
-/

namespace A014637.P108970800004101875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A014601 (n + 1) - 2).toNat

end

end A014637.P108970800004101875

namespace A014637

/-- `A000566(A014601(n+1)-2)` -/
def P108970800004101875.Spec : Prop :=
  ∀ n, P108970800004101875.a n = A014637 n

end A014637

/-! ## A014637.P3208790970788555110

`A000566(A080412(2*n)+1)`
-/

namespace A014637.P3208790970788555110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A080412 (2 * n) + 1).toNat

end

end A014637.P3208790970788555110

namespace A014637

/-- `A000566(A080412(2*n)+1)` -/
def P3208790970788555110.Spec : Prop :=
  ∀ n, P3208790970788555110.a n = A014637 n

end A014637

/-!
# A014638: Inverse of 629th cyclotomic polynomial.

The programs for A014638, there is no canonical definition to state claims against.
-/

/-! ## A014638.P935346978131406761

`A015267(n)*A033999(n)`
-/

namespace A014638.P935346978131406761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015267 n * A033999 n

end

end A014638.P935346978131406761

/-!
# A014639: Inverse of 630th cyclotomic polynomial.

The programs for A014639, there is no canonical definition to state claims against.
-/

/-! ## A014639.P2608032736764335021

`A014429(round(2*n/3))`
-/

namespace A014639.P2608032736764335021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014429 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A014639.P2608032736764335021

/-!
# A014640: Even heptagonal numbers (A000566).

The programs for A014640, the canonical program `A014640.P2660513334737310485` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014640 has offset 0).

The definition of A014640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014640.P4730542245002702111

`ogf((18x+16x^2+42x^3+4x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A014640.P4730542245002702111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 18, 16, 42, 4] [1, -1, -2, 2, 1, -1] n

end

end A014640.P4730542245002702111

namespace A014640

/-- `ogf((18x+16x^2+42x^3+4x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P4730542245002702111.Spec : Prop :=
  ∀ n, P4730542245002702111.a n = A014640 n

end A014640

/-! ## A014640.P17124081835871509274

`(20*n²-10*(-1)^n*n+4*n-(-1)^n+1)/2`
-/

namespace A014640.P17124081835871509274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * n ^ 2 : ℤ) - 10 * (-1) ^ n * (n : ℤ) + (4 * n : ℤ) - (-1) ^ n + 1 : ℚ) / 2

end

end A014640.P17124081835871509274

namespace A014640

/-- `(20*n²-10*(-1)^n*n+4*n-(-1)^n+1)/2` -/
def P17124081835871509274.Spec : Prop :=
  ∀ n, P17124081835871509274.a n = (A014640 n : ℚ)

theorem P17124081835871509274.correct : P17124081835871509274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A014640, Nat.add_sub_cancel, A014640.P17124081835871509274.a, A014640.P2660513334737310485.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A014640, Nat.add_sub_cancel, A014640.P17124081835871509274.a, A014640.P2660513334737310485.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A014640

/-! ## A014640.P2660513334737310485

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=18, a(2)=34, a(3)=112, a(4)=148`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014640

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2660513334737310485.Spec : Prop :=
  ∀ n, P2660513334737310485.a n = A014640 n

theorem P2660513334737310485.correct : P2660513334737310485.Spec := by
  intro n
  simp only [A014640]

end A014640

/-! ## A014640.P202229474307103972

`sqrt(A014792(n))`
-/

namespace A014640.P202229474307103972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014792 n : ℝ)

end

end A014640.P202229474307103972

namespace A014640

/-- `sqrt(A014792(n))` -/
def P202229474307103972.Spec : Prop :=
  ∀ n, P202229474307103972.a n = (A014640 n : ℝ)

end A014640

/-! ## A014640.P3956309558630594903

`A014601(n)²+A014633(n)-A014601(n)`
-/

namespace A014640.P3956309558630594903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n ^ 2 + (A014633 n - A014601 n)

end

end A014640.P3956309558630594903

namespace A014640

/-- `A014601(n)²+A014633(n)-A014601(n)` -/
def P3956309558630594903.Spec : Prop :=
  ∀ n, P3956309558630594903.a n = A014640 n

end A014640

/-! ## A014640.P11253112659851857010

`A000566(comp[or(2, n)-1])`
-/

namespace A014640.P11253112659851857010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A014640.P11253112659851857010

namespace A014640

/-- `A000566(comp[or(2, n)-1])` -/
def P11253112659851857010.Spec : Prop :=
  ∀ n, P11253112659851857010.a n = A014640 n

end A014640

/-! ## A014640.P12344955996208042627

`A000566(and(1, n)+2*n)`
-/

namespace A014640.P12344955996208042627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (Nat.land 1 n + 2 * n)

end

end A014640.P12344955996208042627

namespace A014640

/-- `A000566(and(1, n)+2*n)` -/
def P12344955996208042627.Spec : Prop :=
  ∀ n, P12344955996208042627.a n = A014640 n

end A014640

/-! ## A014640.P560340026166742531

`A192136(n%2+2*n)-1`
-/

namespace A014640.P560340026166742531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 (n % 2 + 2 * n) - 1

end

end A014640.P560340026166742531

namespace A014640

/-- `A192136(n%2+2*n)-1` -/
def P560340026166742531.Spec : Prop :=
  ∀ n, P560340026166742531.a n = A014640 n

end A014640

/-! ## A014640.P6802773409204057940

`A000566(A014601(n))`
-/

namespace A014640.P6802773409204057940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A014601 n).toNat

end

end A014640.P6802773409204057940

namespace A014640

/-- `A000566(A014601(n))` -/
def P6802773409204057940.Spec : Prop :=
  ∀ n, P6802773409204057940.a n = A014640 n

end A014640

/-! ## A014640.P10669548325200514400

`A000566(A042948(n+1)-1)`
-/

namespace A014640.P10669548325200514400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042948 (n + 1) - 1).toNat

end

end A014640.P10669548325200514400

namespace A014640

/-- `A000566(A042948(n+1)-1)` -/
def P10669548325200514400.Spec : Prop :=
  ∀ n, P10669548325200514400.a n = A014640 n

end A014640

/-! ## A014640.P13431091961814813806

`A000566(A042963(n+2)-2)`
-/

namespace A014640.P13431091961814813806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A042963 (n + 2) - 2).toNat

end

end A014640.P13431091961814813806

namespace A014640

/-- `A000566(A042963(n+2)-2)` -/
def P13431091961814813806.Spec : Prop :=
  ∀ n, P13431091961814813806.a n = A014640 n

end A014640

/-! ## A014640.P340486375715960082

`A000566(A047233(n+1)-n)`
-/

namespace A014640.P340486375715960082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A047233 (n + 1) - (n : ℤ)).toNat

end

end A014640.P340486375715960082

namespace A014640

/-- `A000566(A047233(n+1)-n)` -/
def P340486375715960082.Spec : Prop :=
  ∀ n, P340486375715960082.a n = A014640 n

end A014640

/-! ## A014640.P17243821409330094183

`A000566(A000035(n)+2*n)`
-/

namespace A014640.P17243821409330094183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A000035 n + (2 * n : ℤ)).toNat

end

end A014640.P17243821409330094183

namespace A014640

/-- `A000566(A000035(n)+2*n)` -/
def P17243821409330094183.Spec : Prop :=
  ∀ n, P17243821409330094183.a n = A014640 n

end A014640

/-! ## A014640.P358139311941427021

`A000566(2*A110654(n)+n)`
-/

namespace A014640.P358139311941427021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (2 * A110654 n + (n : ℤ)).toNat

end

end A014640.P358139311941427021

namespace A014640

/-- `A000566(2*A110654(n)+n)` -/
def P358139311941427021.Spec : Prop :=
  ∀ n, P358139311941427021.a n = A014640 n

end A014640

/-! ## A014640.P858789669490997812

`A000566(A000035(n)+n+n)`
-/

namespace A014640.P858789669490997812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A014640.P858789669490997812

namespace A014640

/-- `A000566(A000035(n)+n+n)` -/
def P858789669490997812.Spec : Prop :=
  ∀ n, P858789669490997812.a n = A014640 n

end A014640

/-! ## A014640.P6459405960688512914

`A000566(Δ[A014848(n+1)]-2)`
-/

namespace A014640.P6459405960688512914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (f1 (n + 1) - f1 n - 2).toNat

end

end A014640.P6459405960688512914

namespace A014640

/-- `A000566(Δ[A014848(n+1)]-2)` -/
def P6459405960688512914.Spec : Prop :=
  ∀ n, P6459405960688512914.a n = A014640 n

end A014640

/-! ## A014640.P12818849258482196213

`A000566(A007310(n+1)-(n+1))`
-/

namespace A014640.P12818849258482196213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A007310 (n + 1) - (n + 1 : ℤ)).toNat

end

end A014640.P12818849258482196213

namespace A014640

/-- `A000566(A007310(n+1)-(n+1))` -/
def P12818849258482196213.Spec : Prop :=
  ∀ n, P12818849258482196213.a n = A014640 n

end A014640

/-! ## A014640.P17482544300880227538

`A000566(A195016(n)-A085787(2*n))`
-/

namespace A014640.P17482544300880227538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A195016 n - A085787 (2 * n)).toNat

end

end A014640.P17482544300880227538

namespace A014640

/-- `A000566(A195016(n)-A085787(2*n))` -/
def P17482544300880227538.Spec : Prop :=
  ∀ n, P17482544300880227538.a n = A014640 n

end A014640

/-! ## A014640.P17488355515316451502

`A000566(A110654(n)+A110654(n)+n)`
-/

namespace A014640.P17488355515316451502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A110654 n + (A110654 n + (n : ℤ))).toNat

end

end A014640.P17488355515316451502

namespace A014640

/-- `A000566(A110654(n)+A110654(n)+n)` -/
def P17488355515316451502.Spec : Prop :=
  ∀ n, P17488355515316451502.a n = A014640 n

end A014640

/-! ## A014640.P6078877093504807014

`A000566(A003815(2*n))`
-/

namespace A014640.P6078877093504807014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A003815 (2 * n)).toNat

end

end A014640.P6078877093504807014

namespace A014640

/-- `A000566(A003815(2*n))` -/
def P6078877093504807014.Spec : Prop :=
  ∀ n, P6078877093504807014.a n = A014640 n

end A014640

/-!
# A014641: Odd octagonal numbers: (2n+1)*(6n+1).

The programs for A014641, the canonical program `A014641.P17401664217162026339` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014641 has offset 0).

The definition of A014641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(6*n+1)` (program `A014641.P17401664217162026339`, by `A014641.P17401664217162026339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014641.P2655498296664291368

`ogf((1+18x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A014641.P2655498296664291368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18, 5] [1, -3, 3, -1] n

end

end A014641.P2655498296664291368

namespace A014641

/-- `ogf((1+18x+5x^2)/(1-3x+3x^2-x^3))` -/
def P2655498296664291368.Spec : Prop :=
  ∀ n, P2655498296664291368.a n = A014641 n

end A014641

/-! ## A014641.P17401664217162026339

`(2*n+1)*(6*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014641

/-- `(2*n+1)*(6*n+1)` -/
def P17401664217162026339.Spec : Prop :=
  ∀ n, (P17401664217162026339.a n : ℤ) = A014641 n

theorem P17401664217162026339.correct : P17401664217162026339.Spec := by
  intro n
  simp only [A014641]

end A014641

/-! ## A014641.P8543802998007152284

`A016754(n)+4*A014105(n)`
-/

namespace A014641.P8543802998007152284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + 4 * A014105 n

end

end A014641.P8543802998007152284

namespace A014641

/-- `A016754(n)+4*A014105(n)` -/
def P8543802998007152284.Spec : Prop :=
  ∀ n, P8543802998007152284.a n = A014641 n

theorem P8543802998007152284.correct : P8543802998007152284.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P8543802998007152284.a, A014641.P17401664217162026339.a, A014105, A014105.P182524374866796289.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P17088722339975159616

`A289873(6*n+2)`
-/

namespace A014641.P17088722339975159616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289873 (6 * n + 2)

end

end A014641.P17088722339975159616

namespace A014641

/-- `A289873(6*n+2)` -/
def P17088722339975159616.Spec : Prop :=
  ∀ n, P17088722339975159616.a n = A014641 n

end A014641

/-! ## A014641.P15085802598276725274

`∑[a(n-1)+24]` with `a(0)=1, a(1)=20`
-/

namespace A014641.P15085802598276725274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014641.P15085802598276725274

namespace A014641

/-- `∑[a(n-1)+24]` -/
def P15085802598276725274.Spec : Prop :=
  ∀ n, (P15085802598276725274.a n : ℤ) = A014641 n

end A014641

/-! ## A014641.P12084747565549212019

`∑[ogf((1+18x+5x^2)/(1-2x+x^2))]`
-/

namespace A014641.P12084747565549212019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 18, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014641.P12084747565549212019

namespace A014641

/-- `∑[ogf((1+18x+5x^2)/(1-2x+x^2))]` -/
def P12084747565549212019.Spec : Prop :=
  ∀ n, P12084747565549212019.a n = A014641 n

end A014641

/-! ## A014641.P4003336905126437318

`24*n-(4-a(n-1))` with `a(0)=1`
-/

namespace A014641.P4003336905126437318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (24 * n : ℤ) - (4 - a (n - 1))

end

end A014641.P4003336905126437318

namespace A014641

/-- `24*n-(4-a(n-1))` -/
def P4003336905126437318.Spec : Prop :=
  ∀ n, P4003336905126437318.a n = A014641 n

theorem P4003336905126437318.correct : P4003336905126437318.Spec := by
  intro n
  induction n with
  | zero => simp [A014641, A014641.P4003336905126437318.a, A014641.P17401664217162026339.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A014641, Nat.add_sub_cancel, A014641.P4003336905126437318.a, A014641.P17401664217162026339.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A014641

/-! ## A014641.P3771935076019032632

`Δ[lcm(n, Δ[n²]-(2*n)²)]`
-/

namespace A014641.P3771935076019032632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((2 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014641.P3771935076019032632

namespace A014641

/-- `Δ[lcm(n, Δ[n²]-(2*n)²)]` -/
def P3771935076019032632.Spec : Prop :=
  ∀ n, P3771935076019032632.a n = A014641 n

end A014641

/-! ## A014641.P4971463013413816877

`Δ[2*n*C(2*n, 2)]-1`
-/

namespace A014641.P4971463013413816877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A014641.P4971463013413816877

namespace A014641

/-- `Δ[2*n*C(2*n, 2)]-1` -/
def P4971463013413816877.Spec : Prop :=
  ∀ n, P4971463013413816877.a n = A014641 n

theorem P4971463013413816877.correct : P4971463013413816877.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P4971463013413816877.f1, A014641.P4971463013413816877.a, A014641.P17401664217162026339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P18421854818965693455

`sqrt(A014793(n))`
-/

namespace A014641.P18421854818965693455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014793 n : ℝ)

end

end A014641.P18421854818965693455

namespace A014641

/-- `sqrt(A014793(n))` -/
def P18421854818965693455.Spec : Prop :=
  ∀ n, P18421854818965693455.a n = (A014641 n : ℝ)

end A014641

/-! ## A014641.P16474372069191530369

`A033577(n)+n`
-/

namespace A014641.P16474372069191530369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 n + (n : ℤ)

end

end A014641.P16474372069191530369

namespace A014641

/-- `A033577(n)+n` -/
def P16474372069191530369.Spec : Prop :=
  ∀ n, P16474372069191530369.a n = A014641 n

theorem P16474372069191530369.correct : P16474372069191530369.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P16474372069191530369.a, A014641.P17401664217162026339.a, A033577, A033577.P191086975953029494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P5057247167520850992

`floor(A016934(n)/3)`
-/

namespace A014641.P5057247167520850992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016934 n : ℚ) / 3⌋

end

end A014641.P5057247167520850992

namespace A014641

/-- `floor(A016934(n)/3)` -/
def P5057247167520850992.Spec : Prop :=
  ∀ n, P5057247167520850992.a n = A014641 n

end A014641

/-! ## A014641.P9303742759052728355

`2*A202804(n)+1`
-/

namespace A014641.P9303742759052728355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202804 n + 1

end

end A014641.P9303742759052728355

namespace A014641

/-- `2*A202804(n)+1` -/
def P9303742759052728355.Spec : Prop :=
  ∀ n, P9303742759052728355.a n = A014641 n

theorem P9303742759052728355.correct : P9303742759052728355.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P9303742759052728355.a, A014641.P17401664217162026339.a, A202804, A202804.P11278304754932210698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P17684025217009721037

`2*A080859(n)-1`
-/

namespace A014641.P17684025217009721037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080859 n - 1

end

end A014641.P17684025217009721037

namespace A014641

/-- `2*A080859(n)-1` -/
def P17684025217009721037.Spec : Prop :=
  ∀ n, P17684025217009721037.a n = A014641 n

theorem P17684025217009721037.correct : P17684025217009721037.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P17684025217009721037.a, A014641.P17401664217162026339.a, A080859, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P5358840661084140551

`4*A045944(n)+1`
-/

namespace A014641.P5358840661084140551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045944 n + 1

end

end A014641.P5358840661084140551

namespace A014641

/-- `4*A045944(n)+1` -/
def P5358840661084140551.Spec : Prop :=
  ∀ n, P5358840661084140551.a n = A014641 n

theorem P5358840661084140551.correct : P5358840661084140551.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P5358840661084140551.a, A014641.P17401664217162026339.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P2079125796565195283

`4*A056109(n)-3`
-/

namespace A014641.P2079125796565195283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056109 n - 3

end

end A014641.P2079125796565195283

namespace A014641

/-- `4*A056109(n)-3` -/
def P2079125796565195283.Spec : Prop :=
  ∀ n, P2079125796565195283.a n = A014641 n

theorem P2079125796565195283.correct : P2079125796565195283.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P2079125796565195283.a, A014641.P17401664217162026339.a, A056109, A056109.P1021656474208167212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P9516427115365928498

`4*A270710(n)+5`
-/

namespace A014641.P9516427115365928498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A270710 n + 5

end

end A014641.P9516427115365928498

namespace A014641

/-- `4*A270710(n)+5` -/
def P9516427115365928498.Spec : Prop :=
  ∀ n, P9516427115365928498.a n = A014641 n

theorem P9516427115365928498.correct : P9516427115365928498.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P9516427115365928498.a, A014641.P17401664217162026339.a, A270710, A270710.P7193795266762276404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P1756764813357412955

`n*A017617(n)+1`
-/

namespace A014641.P1756764813357412955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017617 n + 1

end

end A014641.P1756764813357412955

namespace A014641

/-- `n*A017617(n)+1` -/
def P1756764813357412955.Spec : Prop :=
  ∀ n, P1756764813357412955.a n = A014641 n

theorem P1756764813357412955.correct : P1756764813357412955.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P1756764813357412955.a, A014641.P17401664217162026339.a, A017617, A017617.P15573883131522867575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P12891709545259473268

`Δ[n*(A002939(n)-1)]`
-/

namespace A014641.P12891709545259473268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002939 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014641.P12891709545259473268

namespace A014641

/-- `Δ[n*(A002939(n)-1)]` -/
def P12891709545259473268.Spec : Prop :=
  ∀ n, P12891709545259473268.a n = A014641 n

theorem P12891709545259473268.correct : P12891709545259473268.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P12891709545259473268.f1, A014641.P12891709545259473268.a, A014641.P17401664217162026339.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-! ## A014641.P14345750150820564162

`A244806(n+1)+3*n`
-/

namespace A014641.P14345750150820564162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244806 (n + 1) + (3 * n : ℤ)

end

end A014641.P14345750150820564162

namespace A014641

/-- `A244806(n+1)+3*n` -/
def P14345750150820564162.Spec : Prop :=
  ∀ n, P14345750150820564162.a n = A014641 n

theorem P14345750150820564162.correct : P14345750150820564162.Spec := by
  intro n
  simp only [A014641, Nat.add_sub_cancel, A014641.P14345750150820564162.a, A014641.P17401664217162026339.a, A244806, A244806.P12540561993492766238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014641

/-!
# A014642: Even octagonal numbers: a(n) = 4*n*(3*n-1).

The programs for A014642, the canonical program `A014642.P1230047363248524840` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014642 has offset 0).

The definition of A014642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(3*n-1)` (program `A014642.P1230047363248524840`, by `A014642.P1230047363248524840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014642.P3526101527750494084

`8*C(3*n, 2)/3`
-/

namespace A014642.P3526101527750494084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (3 * n) 2 : ℚ) / 3

end

end A014642.P3526101527750494084

namespace A014642

/-- `8*C(3*n, 2)/3` -/
def P3526101527750494084.Spec : Prop :=
  ∀ n, P3526101527750494084.a n = (A014642 n : ℚ)

theorem P3526101527750494084.correct : P3526101527750494084.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P3526101527750494084.a, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P1230047363248524840

`4*n*(3*n-1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014642

/-- `4*n*(3*n-1)` -/
def P1230047363248524840.Spec : Prop :=
  ∀ n, P1230047363248524840.a n = A014642 n

theorem P1230047363248524840.correct : P1230047363248524840.Spec := by
  intro n
  simp only [A014642]

end A014642

/-! ## A014642.P18164064942039169780

`ogf((8x+16x^2)/(1-3x+3x^2-x^3))`
-/

namespace A014642.P18164064942039169780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 16] [1, -3, 3, -1] n

end

end A014642.P18164064942039169780

namespace A014642

/-- `ogf((8x+16x^2)/(1-3x+3x^2-x^3))` -/
def P18164064942039169780.Spec : Prop :=
  ∀ n, P18164064942039169780.a n = A014642 n

end A014642

/-! ## A014642.P9666032305290154297

`8*(C(n, 2)+n²)`
-/

namespace A014642.P9666032305290154297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (Nat.choose n 2 + n ^ 2)

end

end A014642.P9666032305290154297

namespace A014642

/-- `8*(C(n, 2)+n²)` -/
def P9666032305290154297.Spec : Prop :=
  ∀ n, (P9666032305290154297.a n : ℤ) = A014642 n

theorem P9666032305290154297.correct : P9666032305290154297.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P9666032305290154297.a, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P14845558977773170226

`8*C(3*n, 2)/3`
-/

namespace A014642.P14845558977773170226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((Nat.choose (3 * n) 2 : ℚ) / 3)

end

end A014642.P14845558977773170226

namespace A014642

/-- `8*C(3*n, 2)/3` -/
def P14845558977773170226.Spec : Prop :=
  ∀ n, P14845558977773170226.a n = (A014642 n : ℚ)

theorem P14845558977773170226.correct : P14845558977773170226.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P14845558977773170226.a, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P11185116884731006671

`∑[a(n-1)+24]` with `a(0)=0, a(1)=8`
-/

namespace A014642.P11185116884731006671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014642.P11185116884731006671

namespace A014642

/-- `∑[a(n-1)+24]` -/
def P11185116884731006671.Spec : Prop :=
  ∀ n, (P11185116884731006671.a n : ℤ) = A014642 n

end A014642

/-! ## A014642.P9844301424727532941

`2*n+6*C(2*n, 2)`
-/

namespace A014642.P9844301424727532941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 6 * Nat.choose (2 * n) 2

end

end A014642.P9844301424727532941

namespace A014642

/-- `2*n+6*C(2*n, 2)` -/
def P9844301424727532941.Spec : Prop :=
  ∀ n, (P9844301424727532941.a n : ℤ) = A014642 n

theorem P9844301424727532941.correct : P9844301424727532941.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P9844301424727532941.a, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P5386924909293729335

`sqrt(A014794(n))`
-/

namespace A014642.P5386924909293729335
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014794 n : ℝ)

end

end A014642.P5386924909293729335

namespace A014642

/-- `sqrt(A014794(n))` -/
def P5386924909293729335.Spec : Prop :=
  ∀ n, P5386924909293729335.a n = (A014642 n : ℝ)

end A014642

/-! ## A014642.P9829228410635195009

`A396291(n)+n`
-/

namespace A014642.P9829228410635195009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396291 n + (n : ℤ)

end

end A014642.P9829228410635195009

namespace A014642

/-- `A396291(n)+n` -/
def P9829228410635195009.Spec : Prop :=
  ∀ n, P9829228410635195009.a n = A014642 n

theorem P9829228410635195009.correct : P9829228410635195009.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P9829228410635195009.a, A014642.P1230047363248524840.a, A396291, A396291.P2280103338649089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P12201562004367265240

`A062783(n)-n`
-/

namespace A014642.P12201562004367265240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n - (n : ℤ)

end

end A014642.P12201562004367265240

namespace A014642

/-- `A062783(n)-n` -/
def P12201562004367265240.Spec : Prop :=
  ∀ n, P12201562004367265240.a n = A014642 n

theorem P12201562004367265240.correct : P12201562004367265240.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P12201562004367265240.a, A014642.P1230047363248524840.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P5082453340040269352

`floor(A174371(n)/3)`
-/

namespace A014642.P5082453340040269352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174371 n : ℚ) / 3⌋

end

end A014642.P5082453340040269352

namespace A014642

/-- `floor(A174371(n)/3)` -/
def P5082453340040269352.Spec : Prop :=
  ∀ n, P5082453340040269352.a n = A014642 n

end A014642

/-! ## A014642.P14764517029397460204

`2*A153792(n)/3`
-/

namespace A014642.P14764517029397460204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A153792 n : ℚ) / 3

end

end A014642.P14764517029397460204

namespace A014642

/-- `2*A153792(n)/3` -/
def P14764517029397460204.Spec : Prop :=
  ∀ n, P14764517029397460204.a n = (A014642 n : ℚ)

theorem P14764517029397460204.correct : P14764517029397460204.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P14764517029397460204.a, A014642.P1230047363248524840.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P11343451753521828983

`4*A152743(n)/3`
-/

namespace A014642.P11343451753521828983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A152743 n : ℚ) / 3

end

end A014642.P11343451753521828983

namespace A014642

/-- `4*A152743(n)/3` -/
def P11343451753521828983.Spec : Prop :=
  ∀ n, P11343451753521828983.a n = (A014642 n : ℚ)

theorem P11343451753521828983.correct : P11343451753521828983.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P11343451753521828983.a, A014642.P1230047363248524840.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P7816996261422398203

`xor(4, 4*A056106(n))`
-/

namespace A014642.P7816996261422398203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (4 * A056106 n)

end

end A014642.P7816996261422398203

namespace A014642

/-- `xor(4, 4*A056106(n))` -/
def P7816996261422398203.Spec : Prop :=
  ∀ n, P7816996261422398203.a n = A014642 n

end A014642

/-! ## A014642.P10722557322669904150

`A152746(n)+2*n`
-/

namespace A014642.P10722557322669904150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n + (2 * n : ℤ)

end

end A014642.P10722557322669904150

namespace A014642

/-- `A152746(n)+2*n` -/
def P10722557322669904150.Spec : Prop :=
  ∀ n, P10722557322669904150.a n = A014642 n

theorem P10722557322669904150.correct : P10722557322669904150.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P10722557322669904150.a, A014642.P1230047363248524840.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P10115967812660916756

`A126964(n)-2*n`
-/

namespace A014642.P10115967812660916756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n - (2 * n : ℤ)

end

end A014642.P10115967812660916756

namespace A014642

/-- `A126964(n)-2*n` -/
def P10115967812660916756.Spec : Prop :=
  ∀ n, P10115967812660916756.a n = A014642 n

theorem P10115967812660916756.correct : P10115967812660916756.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P10115967812660916756.a, A014642.P1230047363248524840.a, A126964, A126964.P15256011894595819792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P1583572491243429971

`A270704(n)/2+n`
-/

namespace A014642.P1583572491243429971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270704 n : ℚ) / 2 + (n : ℚ)

end

end A014642.P1583572491243429971

namespace A014642

/-- `A270704(n)/2+n` -/
def P1583572491243429971.Spec : Prop :=
  ∀ n, P1583572491243429971.a n = (A014642 n : ℚ)

theorem P1583572491243429971.correct : P1583572491243429971.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P1583572491243429971.a, A014642.P1230047363248524840.a, A270704, A270704.P3134271867177922031.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P18305545680281708121

`3*A033991(n)-n`
-/

namespace A014642.P18305545680281708121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033991 n - (n : ℤ)

end

end A014642.P18305545680281708121

namespace A014642

/-- `3*A033991(n)-n` -/
def P18305545680281708121.Spec : Prop :=
  ∀ n, P18305545680281708121.a n = A014642 n

theorem P18305545680281708121.correct : P18305545680281708121.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P18305545680281708121.a, A014642.P1230047363248524840.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P720409883103322340

`A153794(n)+4*n`
-/

namespace A014642.P720409883103322340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + (4 * n : ℤ)

end

end A014642.P720409883103322340

namespace A014642

/-- `A153794(n)+4*n` -/
def P720409883103322340.Spec : Prop :=
  ∀ n, P720409883103322340.a n = A014642 n

theorem P720409883103322340.correct : P720409883103322340.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P720409883103322340.a, A014642.P1230047363248524840.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-! ## A014642.P5132242805351270112

`A135453(n)-4*n`
-/

namespace A014642.P5132242805351270112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - (4 * n : ℤ)

end

end A014642.P5132242805351270112

namespace A014642

/-- `A135453(n)-4*n` -/
def P5132242805351270112.Spec : Prop :=
  ∀ n, P5132242805351270112.a n = A014642 n

theorem P5132242805351270112.correct : P5132242805351270112.Spec := by
  intro n
  simp only [A014642, Nat.add_sub_cancel, A014642.P5132242805351270112.a, A014642.P1230047363248524840.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014642

/-!
# A014643: Triangular array starting with {1,1}; then i-th term in a row gives number of i's in next row.

The programs for A014643, there is no canonical definition to state claims against.
-/

/-! ## A014643.P13380396191902125071

`A057226(∑[A148115(A182888(n))])`
-/

namespace A014643.P13380396191902125071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148115 (A182888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A014643.P13380396191902125071

/-! ## A014643.P3333019905650491742

`A005041(A194029(n+1))%A318978(3*n+2)`
-/

namespace A014643.P3333019905650491742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005041 (A194029 (n + 1)).toNat) (A318978 (3 * n + 2))

end

end A014643.P3333019905650491742

/-! ## A014643.P3863364268321359064

`A007895(A000079(A107017(n+1))+A000071(n+1))`
-/

namespace A014643.P3863364268321359064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000079 (A107017 (n + 1)).toNat + A000071 (n + 1)).toNat

end

end A014643.P3863364268321359064

/-! ## A014643.P17977414963139969961

`A008619(A194029(n+1)%A080289(2*(n+1)))`
-/

namespace A014643.P17977414963139969961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A194029 (n + 1)) (A080289 (2 * (n + 1)))).toNat

end

end A014643.P17977414963139969961

/-! ## A014643.P12564564978933506799

`A043563(A068743(n))`
-/

namespace A014643.P12564564978933506799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043563 (A068743 n).toNat

end

end A014643.P12564564978933506799

/-!
# A014644: Form array starting with {1,1}; then i-th term in a row gives number of i's in next row; sequence is formed from final term in each row.

The programs for A014644, there is no canonical definition to state claims against.
-/

/-! ## A014644.P10523658037696947995

`A001463(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A014644.P10523658037696947995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A001463 (a (n - 1)).toNat

end

end A014644.P10523658037696947995

/-! ## A014644.P6668526728806085083

`A095114(a(n-1)+1)-1` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A014644.P6668526728806085083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  A095114 (a (n - 1) + 1).toNat - 1

end

end A014644.P6668526728806085083

/-!
# A014645: a(n) = (n-1)^a(1) + (n-2)^a(2) + (n-3)^a(3) + ... + 1^a(n-1).

The programs for A014645, there is no canonical definition to state claims against.
-/

/-! ## A014645.P6924469310819714691

`xor(a(n-1), A066305(n+1))` with `a(0)=1`
-/

namespace A014645.P6924469310819714691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A066305 (n + 1))

end

end A014645.P6924469310819714691

/-! ## A014645.P8488122788227734944

`A056239(ceil(C(or(1, n), n)/2)+n^n)`
-/

namespace A014645.P8488122788227734944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ + (n ^ n : ℤ)).toNat

end

end A014645.P8488122788227734944

/-!
# A014646: Inverse of 637th cyclotomic polynomial.

The programs for A014646, there is no canonical definition to state claims against.
-/

/-! ## A014646.P6704798384892591498

`A014023(n)*A015283(n)`
-/

namespace A014646.P6704798384892591498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014023 n * A015283 n

end

end A014646.P6704798384892591498

/-!
# A014647: Inverse of 638th cyclotomic polynomial.

The programs for A014647, there is no canonical definition to state claims against.
-/

/-! ## A014647.P6185641105569596410

`A014328(n)*A033999(n)`
-/

namespace A014647.P6185641105569596410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014328 n * A033999 n

end

end A014647.P6185641105569596410

/-!
# A014648: Number of partitions of n into its divisors with at least one part of size 1.

The programs for A014648, there is no canonical definition to state claims against.
-/

/-! ## A014648.P17360932582778675013

`A018818(n+1)-A211110(n+1)`
-/

namespace A014648.P17360932582778675013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (n + 1) - A211110 (n + 1)

end

end A014648.P17360932582778675013

/-! ## A014648.P7890561624143391198

`A210442(n+1)+1-A211110(n+1)`
-/

namespace A014648.P7890561624143391198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (n + 1) + (1 - A211110 (n + 1))

end

end A014648.P7890561624143391198

/-! ## A014648.P14093993044947276221

`A210442(A233583(n+2))-A293813(n+1)`
-/

namespace A014648.P14093993044947276221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A233583 (n + 2)).toNat - A293813 (n + 1)

end

end A014648.P14093993044947276221

/-! ## A014648.P12803989649909928449

`A210442(log2(A011782(n))+2)-A293813(n+1)`
-/

namespace A014648.P12803989649909928449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ) + 2)).toNat - A293813 (n + 1)

end

end A014648.P12803989649909928449

/-! ## A014648.P8167125522669998920

`A028310(A210442(n+1)-A293813(n+1))`
-/

namespace A014648.P8167125522669998920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A210442 (n + 1) - A293813 (n + 1)).toNat

end

end A014648.P8167125522669998920

/-!
# A014649: Number of partitions of n into its nonprime power divisors with at least one part of size 1.

The programs for A014649, there is no canonical definition to state claims against.
-/

/-! ## A014649.P1572021537056893859

`A048766(A110981(n+1)+6)`
-/

namespace A014649.P1572021537056893859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A110981 (n + 1) + 6).toNat

end

end A014649.P1572021537056893859

/-! ## A014649.P13426005311535231711

`gcd(A076977(A074971(n+1)), A141214(n))`
-/

namespace A014649.P13426005311535231711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076977 (A074971 (n + 1)).toNat) (A141214 n)

end

end A014649.P13426005311535231711

/-! ## A014649.P6495209772830989703

`gcd(A117358(A066729(n+1)), A256999(n))`
-/

namespace A014649.P6495209772830989703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117358 (A066729 (n + 1)).toNat) (A256999 n)

end

end A014649.P6495209772830989703

/-! ## A014649.P10317124851065132491

`A105224(A078899(n+1)^A281116(n+1))`
-/

namespace A014649.P10317124851065132491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (SequenceMachineLib.roundAway ((A078899 (n + 1) : ℚ) ^ (A281116 (n + 1) : ℤ))).toNat

end

end A014649.P10317124851065132491

/-! ## A014649.P1878742840772920186

`A367931(A183092(n+1))`
-/

namespace A014649.P1878742840772920186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367931 (A183092 (n + 1)).toNat

end

end A014649.P1878742840772920186

/-!
# A014650: Number of partitions of n into its divisors that are powers of primes (A000961) with at least one part of size 1.

The programs for A014650, there is no canonical definition to state claims against.
-/

/-! ## A014650.P17549835293752112015

`A187829(A014648(n+1))%A144022(A008706(n+1))`
-/

namespace A014650.P17549835293752112015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187829 (A014648 (n + 1)).toNat) (A144022 (A008706 (n + 1)).toNat)

end

end A014650.P17549835293752112015

/-! ## A014650.P13109241759762691425

`A029017(A001065(n+1)^A339421(n))`
-/

namespace A014650.P13109241759762691425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 (SequenceMachineLib.roundAway ((A001065 (n + 1) : ℚ) ^ (A339421 n : ℤ))).toNat

end

end A014650.P13109241759762691425

/-! ## A014650.P5756197746457016809

`A029017(A001065(n+1)^A054576(3*n+2))`
-/

namespace A014650.P5756197746457016809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 (SequenceMachineLib.roundAway ((A001065 (n + 1) : ℚ) ^ (A054576 (3 * n + 2) : ℤ))).toNat

end

end A014650.P5756197746457016809

/-! ## A014650.P6754506239105382740

`A029017(A001065(n+1)%A141214(3*n))`
-/

namespace A014650.P6754506239105382740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029017 (Int.tmod (A001065 (n + 1)) (A141214 (3 * n))).toNat

end

end A014650.P6754506239105382740

/-!
# A014651: Number of partitions of n into its nonprime divisors with at least one part of size 1.

The programs for A014651, there is no canonical definition to state claims against.
-/

/-! ## A014651.P321390832720418209

`A037075(A054576(n+1))%10`
-/

namespace A014651.P321390832720418209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037075 (A054576 (n + 1)).toNat) 10

end

end A014651.P321390832720418209

/-! ## A014651.P5102405969285963817

`A093684((n+1)^A322977(n+1))`
-/

namespace A014651.P5102405969285963817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A322977 (n + 1) : ℤ))).toNat

end

end A014651.P5102405969285963817

/-! ## A014651.P11938805176687481372

`A000120(C(comp[2*n+3], A200221(n+1)))`
-/

namespace A014651.P11938805176687481372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (A200221 (n + 1)).toNat)

end

end A014651.P11938805176687481372

/-! ## A014651.P5354030005634056370

`A081604(A054576(n+1)^A061392(n))`
-/

namespace A014651.P5354030005634056370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (SequenceMachineLib.roundAway ((A054576 (n + 1) : ℚ) ^ (A061392 n : ℤ))).toNat

end

end A014651.P5354030005634056370

/-!
# A014652: Number of partitions of n in its prime divisors with at least one part of size 1.

The programs for A014652, there is no canonical definition to state claims against.
-/

/-! ## A014652.P5269601625021105839

`A092976(n+1)-A066882(n+1)`
-/

namespace A014652.P5269601625021105839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (n + 1) - A066882 (n + 1)

end

end A014652.P5269601625021105839

/-! ## A014652.P12503905960825328255

`A092976(n+1)-A168324(A187829(n+1))`
-/

namespace A014652.P12503905960825328255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (n + 1) - A168324 (A187829 (n + 1)).toNat

end

end A014652.P12503905960825328255

/-! ## A014652.P6929603116611062218

`A092976(A187829(n+1))-A330757(n+1)`
-/

namespace A014652.P6929603116611062218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (A187829 (n + 1)).toNat - A330757 (n + 1)

end

end A014652.P6929603116611062218

/-! ## A014652.P3537928752222710004

`A092976(A187829(n+1))-A008480(n+1)%(n+1)`
-/

namespace A014652.P3537928752222710004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (A187829 (n + 1)).toNat - Int.tmod (A008480 (n + 1)) (n + 1 : ℤ)

end

end A014652.P3537928752222710004

/-! ## A014652.P3445176963994674751

`A092976(A187829(n+1))-(A335447(n+1)+A057427(n))`
-/

namespace A014652.P3445176963994674751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (A187829 (n + 1)).toNat - (A335447 (n + 1) + A057427 n)

end

end A014652.P3445176963994674751

/-!
# A014653: Inverse of 644th cyclotomic polynomial.

The programs for A014653, there is no canonical definition to state claims against.
-/

/-! ## A014653.P13581934122727598492

`A015297(A022998(n))`
-/

namespace A014653.P13581934122727598492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015297 (A022998 n).toNat

end

end A014653.P13581934122727598492

/-!
# A014654: Inverse of 645th cyclotomic polynomial.

The programs for A014654, there is no canonical definition to state claims against.
-/

/-! ## A014654.P56181421734993190

`A015299(n)*A033999(n)`
-/

namespace A014654.P56181421734993190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015299 n * A033999 n

end

end A014654.P56181421734993190

/-!
# A014655: Inverse of 646th cyclotomic polynomial.

The programs for A014655, there is no canonical definition to state claims against.
-/

/-! ## A014655.P15960027919475258251

`A014332(n)*A033999(n)`
-/

namespace A014655.P15960027919475258251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014332 n * A033999 n

end

end A014655.P15960027919475258251

/-!
# A014656: Numbers of letters in n (in the Norwegian language Bokmål).

The programs for A014656, there is no canonical definition to state claims against.
-/

/-! ## A014656.P10031677698496367343

`A028292(n+1)-A014560(A014641(n))`
-/

namespace A014656.P10031677698496367343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028292 (n + 1) - A014560 (A014641 n).toNat

end

end A014656.P10031677698496367343

/-! ## A014656.P8381545708422026980

`A028292(n+1)-A014624(A014642(n+1))`
-/

namespace A014656.P8381545708422026980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028292 (n + 1) - A014624 (A014642 (n + 1)).toNat

end

end A014656.P8381545708422026980

/-! ## A014656.P18198488076193380718

`A003078(n+1)%A003119(n+3)`
-/

namespace A014656.P18198488076193380718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003078 (n + 1)) (A003119 (n + 3))

end

end A014656.P18198488076193380718

/-! ## A014656.P607338746242523398

`A028292(n+1)-A010052(A000098(n))`
-/

namespace A014656.P607338746242523398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028292 (n + 1) - A010052 (A000098 n).toNat

end

end A014656.P607338746242523398

/-! ## A014656.P11822668260098211037

`A028292(n+1)-A000122(A035597(n))`
-/

namespace A014656.P11822668260098211037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028292 (n + 1) - A000122 (A035597 n).toNat

end

end A014656.P11822668260098211037

/-!
# A014657: Numbers m that divide 2^k + 1 for some nonnegative k.

The programs for A014657, there is no canonical definition to state claims against.
-/

/-! ## A014657.P9349593061916866449

`A321580(n)+a(val(n, n+1))` with `a(0)=1`
-/

namespace A014657.P9349593061916866449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321580 n + a (SequenceMachineLib.valuation n (n + 1))

end

end A014657.P9349593061916866449

/-! ## A014657.P9704224534131892896

`record[(n+1)%(A000079(A195470(n+1))+n)]`
-/

namespace A014657.P9704224534131892896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000079 (A195470 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014657.P9704224534131892896

/-! ## A014657.P6947417013060004861

`eq[A065033(A086342(n)), A082460(n+1)]`
-/

namespace A014657.P6947417013060004861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A086342 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014657.P6947417013060004861

/-! ## A014657.P12300729402083355145

`eq[n, A327649(n+1)]+1`
-/

namespace A014657.P12300729402083355145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A014657.P12300729402083355145

/-! ## A014657.P7270015552705594136

`eq[n, A327649(A028310(n))+1]`
-/

namespace A014657.P7270015552705594136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327649 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014657.P7270015552705594136

/-! ## A014657.P12147275058507707386

`record[(n+1)/A322965(n-A327649(n+1)+1)]`
-/

namespace A014657.P12147275058507707386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322965 ((n : ℤ) - A327649 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014657.P12147275058507707386

/-!
# A014658: Inverse of 649th cyclotomic polynomial.

The programs for A014658, there is no canonical definition to state claims against.
-/

/-! ## A014658.P8505189909556555165

`A014958(A347456(n+1)+A335467(n+1))`
-/

namespace A014658.P8505189909556555165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014958 (A347456 (n + 1) + A335467 (n + 1)).toNat

end

end A014658.P8505189909556555165

/-!
# A014659: Odd numbers that do not divide 2^k + 1 for any k >= 1.

The programs for A014659, there is no canonical definition to state claims against.
-/

/-! ## A014659.P16930199038096793176

`∩[2*n+1, A014661(n+1)]`
-/

namespace A014659.P16930199038096793176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P16930199038096793176

/-! ## A014659.P1703294411081710822

`record[A000265(A014661(n+4))]`
-/

namespace A014659.P1703294411081710822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014661 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014659.P1703294411081710822

/-! ## A014659.P11548637248109076161

`∩[A014661(n+1), A004273(n)]`
-/

namespace A014659.P11548637248109076161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P11548637248109076161

/-! ## A014659.P1398919768639023881

`∩[A014661(n+1), A020742(n)]`
-/

namespace A014659.P1398919768639023881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P1398919768639023881

/-! ## A014659.P5376515498264577968

`∩[A014661(n+1), A060747(n)]`
-/

namespace A014659.P5376515498264577968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P5376515498264577968

/-! ## A014659.P6663645812560220540

`∩[A014661(n+1), A062545(n)]`
-/

namespace A014659.P6663645812560220540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P6663645812560220540

/-! ## A014659.P3417787899413460922

`∩[A014661(n+1), A020735(n+1)]`
-/

namespace A014659.P3417787899413460922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P3417787899413460922

/-! ## A014659.P11537518650542606500

`∩[A014661(n+1), A144396(n+1)]`
-/

namespace A014659.P11537518650542606500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P11537518650542606500

/-! ## A014659.P6944555214627530943

`∩[A014661(n+1), A216848(n+1)]`
-/

namespace A014659.P6944555214627530943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P6944555214627530943

/-! ## A014659.P6084328108261432810

`∩[A014661(n+1), A317439(n+1)]`
-/

namespace A014659.P6084328108261432810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014659.P6084328108261432810

/-! ## A014659.P14608647436491968055

`eq[0, A195470(A093178(n))]`
-/

namespace A014659.P14608647436491968055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014659.P14608647436491968055

/-! ## A014659.P4329852342063005427

`filter[A014661(n+1), A000035(#)]`
-/

namespace A014659.P4329852342063005427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A014659.P4329852342063005427

/-! ## A014659.P7849833759631585995

`filter[A014661(n+1), A266070(#)]`
-/

namespace A014659.P7849833759631585995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A014659.P7849833759631585995

/-! ## A014659.P9189167591725581331

`filter[A014661(n+2), A266611(#)]`
-/

namespace A014659.P9189167591725581331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A014659.P9189167591725581331

/-! ## A014659.P16257304105538099502

`filter[A014661(n+2), A266719(#)]`
-/

namespace A014659.P16257304105538099502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A014659.P16257304105538099502

/-! ## A014659.P6648830666572409736

`filter[A014661(n+2), A296066(#)]`
-/

namespace A014659.P6648830666572409736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A014659.P6648830666572409736

/-! ## A014659.P10744532463627925715

`filter[A014661(n+3), A266246(#)]`
-/

namespace A014659.P10744532463627925715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A014659.P10744532463627925715

/-! ## A014659.P6417456646748319441

`A005408(eq[0, A195470(2*n+1)])`
-/

namespace A014659.P6417456646748319441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014659.P6417456646748319441

/-! ## A014659.P8207382965390298672

`A000265(eq[A195470(n+1)+n+1, A000265(n+1)]+1)`
-/

namespace A014659.P8207382965390298672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (n + 1) + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A014659.P8207382965390298672

/-! ## A014659.P8273205387542154687

`A005408(lt[A179382(n+1), A003558(n)])`
-/

namespace A014659.P8273205387542154687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014659.P8273205387542154687

/-!
# A014660: Inverse of 651st cyclotomic polynomial.

The programs for A014660, there is no canonical definition to state claims against.
-/

/-! ## A014660.P6600683421921908088

`A015311(n)*A033999(n)`
-/

namespace A014660.P6600683421921908088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015311 n * A033999 n

end

end A014660.P6600683421921908088

/-!
# A014661: Numbers that do not divide 2^k + 1 for any k>0.

The programs for A014661, there is no canonical definition to state claims against.
-/

/-! ## A014661.P12645869612681298739

`comp[A014657(n+3)-2]+2`
-/

namespace A014661.P12645869612681298739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A014661.P12645869612681298739

/-! ## A014661.P15944499071106932267

`∪[A014659(n+1), A119432(n+1)]`
-/

namespace A014661.P15944499071106932267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014661.P15944499071106932267

/-! ## A014661.P7024517966213552299

`∪[A014659(n+1), A317440(n+1)]`
-/

namespace A014661.P7024517966213552299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014661.P7024517966213552299

/-! ## A014661.P16662701696190537841

`eq[A000007(n), A321512(n+1)]+2`
-/

namespace A014661.P16662701696190537841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A014661.P16662701696190537841

/-! ## A014661.P12913108065770996139

`lt[2*and(1, n), A086342(n)]`
-/

namespace A014661.P12913108065770996139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014661.P12913108065770996139

/-! ## A014661.P12511155160752675450

`record[n+3-A195470(n+3)]`
-/

namespace A014661.P12511155160752675450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A195470 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014661.P12511155160752675450

/-! ## A014661.P9750266203905484184

`eq[0, A195470(A257088(n))]`
-/

namespace A014661.P9750266203905484184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014661.P9750266203905484184

/-! ## A014661.P1926867455292227202

`eq[A195470(2*(n+1)), A195470(n+2)]+2`
-/

namespace A014661.P1926867455292227202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A014661.P1926867455292227202

/-! ## A014661.P9652507974626815758

`record[A165751(n)*A195470(n+1)+n+1]`
-/

namespace A014661.P9652507974626815758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165751 n * A195470 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014661.P9652507974626815758

/-! ## A014661.P6335624229782869010

`∪[A014659(n+1), A366846(n+1)]`
-/

namespace A014661.P6335624229782869010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014661.P6335624229782869010

/-!
# A014662: Primes p such that order of 2 mod p (=A007733(p)) is even.

The programs for A014662, there is no canonical definition to state claims against.
-/

/-! ## A014662.P5653777306338664329

`A091317(n+2)`
-/

namespace A014662.P5653777306338664329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091317 (n + 2)

end

end A014662.P5653777306338664329

/-! ## A014662.P10732568876474437768

`p?[A014657(n+3)]`
-/

namespace A014662.P10732568876474437768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014662.P10732568876474437768

/-! ## A014662.P322763847772993843

`filter[A014657(n+1), A379969(#)]`
-/

namespace A014662.P322763847772993843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A014662.P322763847772993843

/-! ## A014662.P14056289727281335141

`filter[A014657(n+3), A010051(#)]`
-/

namespace A014662.P14056289727281335141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A014662.P14056289727281335141

/-! ## A014662.P13813007994589482040

`filter[A014657(n+3), A380467(#)]`
-/

namespace A014662.P13813007994589482040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A014662.P13813007994589482040

/-! ## A014662.P14368647806110421963

`∩[A014657(n+1), A045403(n+1)]`
-/

namespace A014662.P14368647806110421963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P14368647806110421963

/-! ## A014662.P15219378103446334995

`∩[A014657(n+1), A065091(n+1)]`
-/

namespace A014662.P15219378103446334995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P15219378103446334995

/-! ## A014662.P2248388794801017666

`∩[A014657(n+1), A066542(n+1)]`
-/

namespace A014662.P2248388794801017666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P2248388794801017666

/-! ## A014662.P4895000754115428944

`∩[A014657(n+1), A082378(n+1)]`
-/

namespace A014662.P4895000754115428944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P4895000754115428944

/-! ## A014662.P18396653021824613367

`∩[A140826(n+1), A014657(n+1)]`
-/

namespace A014662.P18396653021824613367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P18396653021824613367

/-! ## A014662.P14678748932040015059

`∩[A000040(n+2), A014657(n+2)]`
-/

namespace A014662.P14678748932040015059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P14678748932040015059

/-! ## A014662.P18171296747170781442

`∩[A014657(n+2), A042998(n+2)]`
-/

namespace A014662.P18171296747170781442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P18171296747170781442

/-! ## A014662.P3817318456147178507

`∩[A014657(n+2), A051948(n+2)]`
-/

namespace A014662.P3817318456147178507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P3817318456147178507

/-! ## A014662.P15655381618827293564

`∩[A014657(n+2), A053813(n+2)]`
-/

namespace A014662.P15655381618827293564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P15655381618827293564

/-! ## A014662.P2099967705428438600

`∩[A014657(n+2), A066191(n+2)]`
-/

namespace A014662.P2099967705428438600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P2099967705428438600

/-! ## A014662.P297897821352010613

`filter[A014657(n+1), A353670(#)]`
-/

namespace A014662.P297897821352010613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A014662.P297897821352010613

/-! ## A014662.P2231078169159848662

`filter[A014657(n+3), A323152(#)]`
-/

namespace A014662.P2231078169159848662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A014662.P2231078169159848662

/-! ## A014662.P11538557805527711471

`filter[A014657(n+3), A323153(#)]`
-/

namespace A014662.P11538557805527711471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A014662.P11538557805527711471

/-! ## A014662.P17781162563350774279

`filter[A014657(n+3), A340371(#)]`
-/

namespace A014662.P17781162563350774279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A014662.P17781162563350774279

/-! ## A014662.P8373678274600900144

`∩[A014657(n+1), A001751(n+2)]`
-/

namespace A014662.P8373678274600900144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014662.P8373678274600900144

/-!
# A014663: Primes p such that multiplicative order of 2 modulo p is odd.

The programs for A014663, there is no canonical definition to state claims against.
-/

/-! ## A014663.P1706050242860155022

`A072936(n+2)`
-/

namespace A014663.P1706050242860155022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072936 (n + 2)

end

end A014663.P1706050242860155022

/-! ## A014663.P11371194589385879146

`p?[A036259(n+1)]`
-/

namespace A014663.P11371194589385879146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014663.P11371194589385879146

/-! ## A014663.P16914194342145415638

`p?[2*A053006(n+1)-1]`
-/

namespace A014663.P16914194342145415638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053006 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014663.P16914194342145415638

/-! ## A014663.P160138629010525788

`∩[A036259(n+1), A040098(n+1)]`
-/

namespace A014663.P160138629010525788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P160138629010525788

/-! ## A014663.P5077651488205131942

`p?[A053006(n+2)+A053006(n+2)-1]`
-/

namespace A014663.P5077651488205131942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053006 (n + 2) + (A053006 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A014663.P5077651488205131942

/-! ## A014663.P951315506236005524

`∩[A036259(n+1), A045315(n+1)]`
-/

namespace A014663.P951315506236005524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P951315506236005524

/-! ## A014663.P3357678088286373135

`∩[A001132(n+1), A036259(n+1)]`
-/

namespace A014663.P3357678088286373135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P3357678088286373135

/-! ## A014663.P4827695779604636374

`∩[A036259(n+1), A038873(n+1)]`
-/

namespace A014663.P4827695779604636374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P4827695779604636374

/-! ## A014663.P4064167587463370983

`∩[A036259(n+1), A045323(n+1)]`
-/

namespace A014663.P4064167587463370983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P4064167587463370983

/-! ## A014663.P8027046106398790268

`∩[A036259(n+1), A045419(n+1)]`
-/

namespace A014663.P8027046106398790268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P8027046106398790268

/-! ## A014663.P17520443496038503269

`∩[A036259(n+1), A045352(n+1)]`
-/

namespace A014663.P17520443496038503269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P17520443496038503269

/-! ## A014663.P18217006371961048229

`∩[A036259(n+1), A045442(n+1)]`
-/

namespace A014663.P18217006371961048229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P18217006371961048229

/-! ## A014663.P9095002175322806859

`∩[A004139(n+1), A036259(n+1)]`
-/

namespace A014663.P9095002175322806859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P9095002175322806859

/-! ## A014663.P11088657617733036457

`∩[A036259(n+1), A045319(n+1)]`
-/

namespace A014663.P11088657617733036457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P11088657617733036457

/-! ## A014663.P17216028059941495079

`∩[A036259(n+1), A045344(n+1)]`
-/

namespace A014663.P17216028059941495079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P17216028059941495079

/-! ## A014663.P13757234186828538918

`∩[A000040(n+1), A036259(n+1)]`
-/

namespace A014663.P13757234186828538918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P13757234186828538918

/-! ## A014663.P13136560166978526942

`∩[A036259(n+1), A051948(n+1)]`
-/

namespace A014663.P13136560166978526942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P13136560166978526942

/-! ## A014663.P15248824499919138516

`∩[A036259(n+1), A093515(n+1)]`
-/

namespace A014663.P15248824499919138516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P15248824499919138516

/-! ## A014663.P14358226075665623695

`∩[A161346(n+1), A036259(n+1)]`
-/

namespace A014663.P14358226075665623695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P14358226075665623695

/-! ## A014663.P1627359403414969747

`∩[A053813(n+1), A036259(n+1)]`
-/

namespace A014663.P1627359403414969747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014663.P1627359403414969747

/-!
# A014664: Order of 2 modulo the n-th prime.

The programs for A014664, there is no canonical definition to state claims against.
-/

/-! ## A014664.P6202034450381483201

`(A000040(n+2)-1)/A001917(n+2)`
-/

namespace A014664.P6202034450381483201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - 1 : ℚ) / (A001917 (n + 2) : ℚ)

end

end A014664.P6202034450381483201

/-! ## A014664.P4077670945181301578

`(A065091(n+1)-1)/A001917(n+2)`
-/

namespace A014664.P4077670945181301578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 1 : ℚ) / (A001917 (n + 2) : ℚ)

end

end A014664.P4077670945181301578

/-! ## A014664.P17607068455235852931

`2*A005097(n+1)/A001917(n+2)`
-/

namespace A014664.P17607068455235852931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A005097 (n + 1) : ℚ) / (A001917 (n + 2) : ℚ))

end

end A014664.P17607068455235852931

/-! ## A014664.P6883912831411938861

`gcd(A037166(n+1), A243905(n+2))`
-/

namespace A014664.P6883912831411938861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037166 (n + 1)) (A243905 (n + 2))

end

end A014664.P6883912831411938861

/-! ## A014664.P9216480327185302455

`lcm(A082654(n+2), A211244(n+2))`
-/

namespace A014664.P9216480327185302455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082654 (n + 2)) (A211244 (n + 2))

end

end A014664.P9216480327185302455

/-! ## A014664.P3143557844833093734

`A000010(A000040(n+2))/A001917(n+2)`
-/

namespace A014664.P3143557844833093734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000040 (n + 2)).toNat : ℚ) / (A001917 (n + 2) : ℚ)

end

end A014664.P3143557844833093734

/-! ## A014664.P4629450246226662598

`A118106(2*A000040(n+2))`
-/

namespace A014664.P4629450246226662598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (2 * A000040 (n + 2)).toNat

end

end A014664.P4629450246226662598

/-! ## A014664.P8297887984517246160

`A002326(A005097(n+1))`
-/

namespace A014664.P8297887984517246160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A005097 (n + 1)).toNat

end

end A014664.P8297887984517246160

/-! ## A014664.P7177265746613843378

`A002326(A102781(n+2))`
-/

namespace A014664.P7177265746613843378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A102781 (n + 2)).toNat

end

end A014664.P7177265746613843378

/-! ## A014664.P12327984329795786821

`A002326(A130290(n+2))`
-/

namespace A014664.P12327984329795786821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A130290 (n + 2)).toNat

end

end A014664.P12327984329795786821

/-! ## A014664.P4844285433300363113

`A002326(A006254(n+1)-1)`
-/

namespace A014664.P4844285433300363113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A006254 (n + 1) - 1).toNat

end

end A014664.P4844285433300363113

/-! ## A014664.P18239983729874421284

`A002326(eq[2, A278223(n+1)])`
-/

namespace A014664.P18239983729874421284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014664.P18239983729874421284

/-! ## A014664.P4419601574176375326

`A002326(eq[2, A077462(2*n+1)])`
-/

namespace A014664.P4419601574176375326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014664.P4419601574176375326

/-! ## A014664.P1530043972956593566

`A002326(eq[2, A101296(2*n+1)])`
-/

namespace A014664.P1530043972956593566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A014664.P1530043972956593566

/-! ## A014664.P14242021593206924145

`A002326(A163057(n+1)-(n+1))`
-/

namespace A014664.P14242021593206924145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A163057 (n + 1) - (n + 1 : ℤ)).toNat

end

end A014664.P14242021593206924145

/-! ## A014664.P6816809600969980734

`A336843(A000040(n+1))`
-/

namespace A014664.P6816809600969980734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A000040 (n + 1)).toNat

end

end A014664.P6816809600969980734

/-! ## A014664.P6712792421660142499

`A336843(A008578(n+2))`
-/

namespace A014664.P6712792421660142499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (A008578 (n + 2)).toNat

end

end A014664.P6712792421660142499

/-! ## A014664.P1795131483975053887

`A336843(record[A006530(n+2)])`
-/

namespace A014664.P1795131483975053887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014664.P1795131483975053887

/-! ## A014664.P12267090064772866841

`A336843(record[A020639(n+2)])`
-/

namespace A014664.P12267090064772866841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014664.P12267090064772866841

/-! ## A014664.P7124572122802164174

`A336843(record[A014963(n+2)])`
-/

namespace A014664.P7124572122802164174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A014664.P7124572122802164174

/-!
# A014665: Number of new fractions m/n < 1, where (m,n)=1 and "new" means the value of m*n has not occurred before.

The programs for A014665, there is no canonical definition to state claims against.
-/

/-! ## A014665.P431634540372693503

`Δ[A027435(a(1-gcd(n, n+1))+n)]` with `a(0)=0`
-/

namespace A014665.P431634540372693503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A027435 (f1 (1 - Nat.gcd n (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014665.P431634540372693503

/-! ## A014665.P703041836267024194

`A028310(Δ[A027435(A028310(n))])`
-/

namespace A014665.P703041836267024194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027435 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A014665.P703041836267024194

/-! ## A014665.P6678741922199076642

`A000007(n)+Δ[A027435(A000007(n)+n)]`
-/

namespace A014665.P6678741922199076642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027435 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A014665.P6678741922199076642

/-! ## A014665.P12296798944003684391

`A028310(Δ[A236309(A028310(n))])`
-/

namespace A014665.P12296798944003684391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236309 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A014665.P12296798944003684391

/-! ## A014665.P10609168046806672494

`A236309(A028310(n)+1)-A236309(A028310(n))`
-/

namespace A014665.P10609168046806672494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236309 (A028310 n + 1).toNat - A236309 (A028310 n).toNat

end

end A014665.P10609168046806672494

/-! ## A014665.P12949935875800648224

`A028310(A236309(n+1))-A236309(A028310(n))`
-/

namespace A014665.P12949935875800648224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A236309 (n + 1)).toNat - A236309 (A028310 n).toNat

end

end A014665.P12949935875800648224

/-!
# A014667: Inverse of 658th cyclotomic polynomial.

The programs for A014667, there is no canonical definition to state claims against.
-/

/-! ## A014667.P16480260661037722507

`A014338(n)*A033999(n)`
-/

namespace A014667.P16480260661037722507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014338 n * A033999 n

end

end A014667.P16480260661037722507

/-!
# A014668: a(1) = 1, a(n) = Sum_{k=1..n-1} Sum_{d|k} a(d).

The programs for A014668, there is no canonical definition to state claims against.
-/

/-! ## A014668.P15377545068600791878

`A163313(∑[n+1])`
-/

namespace A014668.P15377545068600791878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014668.P15377545068600791878

/-! ## A014668.P13613466333269738580

`or(char[1], A163313(A000217(n+1)))`
-/

namespace A014668.P13613466333269738580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A163313 (A000217 (n + 1)).toNat)

end

end A014668.P13613466333269738580

/-! ## A014668.P8904815091505235899

`A163313(A000217(n+1))%A008776(n)`
-/

namespace A014668.P8904815091505235899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163313 (A000217 (n + 1)).toNat) (A008776 n)

end

end A014668.P8904815091505235899

/-! ## A014668.P14358315201536120368

`A007318(C(2, n))*A163313(A000217(n+1))`
-/

namespace A014668.P14358315201536120368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A163313 (A000217 (n + 1)).toNat

end

end A014668.P14358315201536120368

/-! ## A014668.P14333809997835288619

`(A000041(n)%2)!*A163313(A000217(n+1))`
-/

namespace A014668.P14333809997835288619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A163313 (A000217 (n + 1)).toNat

end

end A014668.P14333809997835288619

/-! ## A014668.P140324040264065288

`A163313(A000217(n+1))+char[A000045(n+12)]`
-/

namespace A014668.P140324040264065288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163313 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A014668.P140324040264065288

/-! ## A014668.P7312341184962129919

`A163313(A000217(n+1))+A008683(4*(n+2))`
-/

namespace A014668.P7312341184962129919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163313 (A000217 (n + 1)).toNat + A008683 (4 * (n + 2))

end

end A014668.P7312341184962129919

/-! ## A014668.P2018486604810921231

`A014963(6*(n+1))*A163313(A000217(n+1))`
-/

namespace A014668.P2018486604810921231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A163313 (A000217 (n + 1)).toNat

end

end A014668.P2018486604810921231

/-! ## A014668.P12182324119412294303

`A000041(C(2, n+2))*A163313(A000217(n+1))`
-/

namespace A014668.P12182324119412294303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A163313 (A000217 (n + 1)).toNat

end

end A014668.P12182324119412294303

/-! ## A014668.P11825560572303825672

`A163313(A000217(n+1))+C(n, A000040(n+1))`
-/

namespace A014668.P11825560572303825672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163313 (A000217 (n + 1)).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A014668.P11825560572303825672

/-!
# A014669: Inverse of 660th cyclotomic polynomial.

The programs for A014669, there is no canonical definition to state claims against.
-/

/-! ## A014669.P13750679848379351722

`A015329(A022998(n))`
-/

namespace A014669.P13750679848379351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (A022998 n).toNat

end

end A014669.P13750679848379351722

/-!
# A014670: G.f.: (1+x)*(1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^8)*(1-x^10)).

The programs for A014670, there is no canonical definition to state claims against.
-/

/-! ## A014670.P16608523725763241109

`A316675(A000096(n+10)+12)`
-/

namespace A014670.P16608523725763241109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 (A000096 (n + 10) + 12).toNat

end

end A014670.P16608523725763241109

/-! ## A014670.P13071453681726316777

`∑[A324192(A249572(A036020(n)))]`
-/

namespace A014670.P13071453681726316777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (A249572 (A036020 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014670.P13071453681726316777

/-!
# A014671: Poincaré series [or Poincare series] (or Molien series) for mod 2 cohomology of alternating group A_7 subset A_8 acting on polynomial ring F_2[ x_1,y_1,z_1,w_1 ].

The programs for A014671, there is no canonical definition to state claims against.
-/

/-! ## A014671.P15195773032079567354

`A323022(A189934(n+1)^A091426(n))`
-/

namespace A014671.P15195773032079567354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (SequenceMachineLib.roundAway ((A189934 (n + 1) : ℚ) ^ (A091426 n : ℤ))).toNat

end

end A014671.P15195773032079567354

/-! ## A014671.P8753876057506422355

`A051903(gcd(n, A094501(n)))`
-/

namespace A014671.P8753876057506422355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.gcd (n : ℤ) (A094501 n))

end

end A014671.P8753876057506422355

/-! ## A014671.P4771904400710338103

`A323022(∑[n+2]^A091426(n))`
-/

namespace A014671.P4771904400710338103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A091426 n : ℤ))).toNat

end

end A014671.P4771904400710338103

/-! ## A014671.P15367296097676758364

`∑{e}[A246142(n+3)-A032741(n)+1, #]`
-/

namespace A014671.P15367296097676758364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (n + 3) - A032741 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A014671.P15367296097676758364

/-! ## A014671.P17075396071654412529

`A142886(∑{e}[A090861(n+2)+A216964(n+2), #]+1)`
-/

namespace A014671.P17075396071654412529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (n + 2) + A216964 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142886 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A014671.P17075396071654412529

/-!
# A014672: Inverse of 663rd cyclotomic polynomial.

The programs for A014672, there is no canonical definition to state claims against.
-/

/-! ## A014672.P10508395965796137279

`A015335(n)*A033999(n)`
-/

namespace A014672.P10508395965796137279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015335 n * A033999 n

end

end A014672.P10508395965796137279

/-!
# A014673: Smallest prime factor of greatest proper divisor of n.

The programs for A014673, there is no canonical definition to state claims against.
-/

/-! ## A014673.P576224215439312496

`A020639(A032742(n+1))`
-/

namespace A014673.P576224215439312496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032742 (n + 1)).toNat

end

end A014673.P576224215439312496

/-! ## A014673.P17834067728951727635

`A020639((n+1)/A020639(n+1))`
-/

namespace A014673.P17834067728951727635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A014673.P17834067728951727635

/-! ## A014673.P4311326637733464591

`A020639(A346704(1+n))`
-/

namespace A014673.P4311326637733464591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A346704 (1 + n)).toNat

end

end A014673.P4311326637733464591

/-! ## A014673.P2997387577002913666

`A028233(∏{p}[A032742(n+1), #])`
-/

namespace A014673.P2997387577002913666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A014673.P2997387577002913666

/-! ## A014673.P3179363888070626350

`A034684(∏{p}[A032742(n+1), #])`
-/

namespace A014673.P3179363888070626350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A014673.P3179363888070626350

/-! ## A014673.P16624300823895065207

`A126773(∏{p}[A032742(n+1), #])`
-/

namespace A014673.P16624300823895065207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A014673.P16624300823895065207

/-! ## A014673.P2816868149710674705

`A020639(gcd(∑[n], A322982(n+1)))`
-/

namespace A014673.P2816868149710674705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A322982 (n + 1)))

end

end A014673.P2816868149710674705

/-! ## A014673.P17311446105221652301

`A020639(1-A060681(n+1)+n)`
-/

namespace A014673.P17311446105221652301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A014673.P17311446105221652301

/-! ## A014673.P7619814193808215575

`A085392(n+1)-A085393(n+1)`
-/

namespace A014673.P7619814193808215575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) - A085393 (n + 1)

end

end A014673.P7619814193808215575

/-! ## A014673.P11246434453645369168

`A032742((n+1)/A054576(n+1))`
-/

namespace A014673.P11246434453645369168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A054576 (n + 1) : ℚ))).toNat

end

end A014673.P11246434453645369168

/-! ## A014673.P12910274869803318757

`A085392((n+1)/A054576(n+1))`
-/

namespace A014673.P12910274869803318757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A054576 (n + 1) : ℚ))).toNat

end

end A014673.P12910274869803318757

/-! ## A014673.P10069407397354902150

`A020639(gcd(n+1, A220096(n+1)))`
-/

namespace A014673.P10069407397354902150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 1 : ℤ) (A220096 (n + 1)))

end

end A014673.P10069407397354902150

/-! ## A014673.P13161220787060485576

`A032742(n+1)/A117358(2*(n+1))`
-/

namespace A014673.P13161220787060485576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A117358 (2 * (n + 1)) : ℚ)

end

end A014673.P13161220787060485576

/-! ## A014673.P1208385113455027966

`A020639(A111234(n+1)-A020639(n+1))`
-/

namespace A014673.P1208385113455027966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111234 (n + 1) - A020639 (n + 1)).toNat

end

end A014673.P1208385113455027966

/-! ## A014673.P3367512177601192272

`A032742((n+1)/A032742(A032742(n+1)))`
-/

namespace A014673.P3367512177601192272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (A032742 (n + 1)).toNat : ℚ))).toNat

end

end A014673.P3367512177601192272

/-! ## A014673.P3232871069121011685

`A020639(xor(A318505(n+1), A318507(n+1)))`
-/

namespace A014673.P3232871069121011685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (A318505 (n + 1)) (A318507 (n + 1))).toNat

end

end A014673.P3232871069121011685

/-! ## A014673.P13367063670473150480

`A115561(2*(n+1))`
-/

namespace A014673.P13367063670473150480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (2 * (n + 1))

end

end A014673.P13367063670473150480

/-! ## A014673.P8316193109322328209

`A020639(A054576(2*(n+1)))`
-/

namespace A014673.P8316193109322328209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054576 (2 * (n + 1))).toNat

end

end A014673.P8316193109322328209

/-! ## A014673.P16824516271942181131

`A006530(A115561(n+2+n))`
-/

namespace A014673.P16824516271942181131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A115561 (n + 2 + n)).toNat

end

end A014673.P16824516271942181131

/-!
# A014674: Inverse of 665th cyclotomic polynomial.

The programs for A014674, there is no canonical definition to state claims against.
-/

/-! ## A014674.P13440055888075282137

`A015339(n)*A033999(n)`
-/

namespace A014674.P13440055888075282137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015339 n * A033999 n

end

end A014674.P13440055888075282137

/-!
# A014675: The infinite Fibonacci word (start with 1, apply 1->2, 2->21, take limit).

The programs for A014675, the canonical program `A014675.P17423219922035932121` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014675 has offset 0).

The definition of A014675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014675.P17423219922035932121

`floor((n+2)*ϕ)-floor((n+1)*ϕ)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014675

/-- `floor((n+2)*ϕ)-floor((n+1)*ϕ)` -/
def P17423219922035932121.Spec : Prop :=
  ∀ n, P17423219922035932121.a n = A014675 n

theorem P17423219922035932121.correct : P17423219922035932121.Spec := by
  intro n
  simp only [A014675]

end A014675

/-! ## A014675.P17099707400154348179

`runs[floor((n+2)/ϕ)]`
-/

namespace A014675.P17099707400154348179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A014675.P17099707400154348179

namespace A014675

/-- `runs[floor((n+2)/ϕ)]` -/
def P17099707400154348179.Spec : Prop :=
  ∀ n, (P17099707400154348179.a n : ℤ) = A014675 n

end A014675

/-! ## A014675.P18066775730312730188

`Δ[floor((n+1)*ϕ)]!`
-/

namespace A014675.P18066775730312730188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A014675.P18066775730312730188

namespace A014675

/-- `Δ[floor((n+1)*ϕ)]!` -/
def P18066775730312730188.Spec : Prop :=
  ∀ n, (P18066775730312730188.a n : ℤ) = A014675 n

end A014675

/-! ## A014675.P2203725763790065736

`dr(Δ[floor((n+1)*ϕ)])`
-/

namespace A014675.P2203725763790065736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A014675.P2203725763790065736

namespace A014675

/-- `dr(Δ[floor((n+1)*ϕ)])` -/
def P2203725763790065736.Spec : Prop :=
  ∀ n, (P2203725763790065736.a n : ℤ) = A014675 n

end A014675

/-! ## A014675.P2779862834861994348

`Δ[ceil(ϕ*(n+1))]%3`
-/

namespace A014675.P2779862834861994348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A014675.P2779862834861994348

namespace A014675

/-- `Δ[ceil(ϕ*(n+1))]%3` -/
def P2779862834861994348.Spec : Prop :=
  ∀ n, P2779862834861994348.a n = A014675 n

end A014675

/-! ## A014675.P13137169935029830150

`C(2, Δ[floor((n+1)/ϕ)])`
-/

namespace A014675.P13137169935029830150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A014675.P13137169935029830150

namespace A014675

/-- `C(2, Δ[floor((n+1)/ϕ)])` -/
def P13137169935029830150.Spec : Prop :=
  ∀ n, (P13137169935029830150.a n : ℤ) = A014675 n

end A014675

/-! ## A014675.P5225369610820574976

`runs[ceil((n+3)/ϕ²)]-1`
-/

namespace A014675.P5225369610820574976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℝ) / Real.goldenRatio ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A014675.P5225369610820574976

namespace A014675

/-- `runs[ceil((n+3)/ϕ²)]-1` -/
def P5225369610820574976.Spec : Prop :=
  ∀ n, P5225369610820574976.a n = A014675 n

end A014675

/-! ## A014675.P669561687117457213

`and(1, Δ[floor((n+1)/ϕ)])+1`
-/

namespace A014675.P669561687117457213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) + 1

end

end A014675.P669561687117457213

namespace A014675

/-- `and(1, Δ[floor((n+1)/ϕ)])+1` -/
def P669561687117457213.Spec : Prop :=
  ∀ n, P669561687117457213.a n = A014675 n

end A014675

/-! ## A014675.P12808888439577919462

`xor(3, 2-Δ[floor((n+1)/ϕ)])`
-/

namespace A014675.P12808888439577919462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 - (f1 (n + 1) - f1 n))

end

end A014675.P12808888439577919462

namespace A014675

/-- `xor(3, 2-Δ[floor((n+1)/ϕ)])` -/
def P12808888439577919462.Spec : Prop :=
  ∀ n, P12808888439577919462.a n = A014675 n

end A014675

/-! ## A014675.P9628595370440272872

`Δ[n-a(a(n-1))]+1` with `a(0)=0`
-/

namespace A014675.P9628595370440272872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A014675.P9628595370440272872

namespace A014675

/-- `Δ[n-a(a(n-1))]+1` -/
def P9628595370440272872.Spec : Prop :=
  ∀ n, P9628595370440272872.a n = A014675 n

end A014675

/-! ## A014675.P10327941970506161059

`2/a(Δ[floor((n+1)/ϕ)])` with `a(0)=2`
-/

namespace A014675.P10327941970506161059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 / a (f1 (n + 1) - f1 n).toNat

end

end A014675.P10327941970506161059

namespace A014675

/-- `2/a(Δ[floor((n+1)/ϕ)])` -/
def P10327941970506161059.Spec : Prop :=
  ∀ n, P10327941970506161059.a n = (A014675 n : ℚ)

end A014675

/-! ## A014675.P3395394580066777142

`gcd(2*n, Δ[floor(ϕ*(2*n-(n-1)))])`
-/

namespace A014675.P3395394580066777142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((2 * n : ℤ) - ((n : ℤ) - 1) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (f1 (n + 1) - f1 n)

end

end A014675.P3395394580066777142

namespace A014675

/-- `gcd(2*n, Δ[floor(ϕ*(2*n-(n-1)))])` -/
def P3395394580066777142.Spec : Prop :=
  ∀ n, (P3395394580066777142.a n : ℤ) = A014675 n

end A014675

/-! ## A014675.P7153544750227096074

`A059426(abs(1-n))`
-/

namespace A014675.P7153544750227096074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 |1 - (n : ℤ)|.toNat

end

end A014675.P7153544750227096074

namespace A014675

/-- `A059426(abs(1-n))` -/
def P7153544750227096074.Spec : Prop :=
  ∀ n, P7153544750227096074.a n = A014675 n

end A014675

/-! ## A014675.P7141378183117871627

`A000034(A035612(n+1))`
-/

namespace A014675.P7141378183117871627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A035612 (n + 1)).toNat

end

end A014675.P7141378183117871627

namespace A014675

/-- `A000034(A035612(n+1))` -/
def P7141378183117871627.Spec : Prop :=
  ∀ n, P7141378183117871627.a n = A014675 n

end A014675

/-! ## A014675.P9969809750141292726

`A316825(n*A003849(n))`
-/

namespace A014675.P9969809750141292726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 ((n : ℤ) * A003849 n).toNat

end

end A014675.P9969809750141292726

namespace A014675

/-- `A316825(n*A003849(n))` -/
def P9969809750141292726.Spec : Prop :=
  ∀ n, P9969809750141292726.a n = A014675 n

end A014675

/-! ## A014675.P12327178093518849339

`A316825(n*A316825(n))`
-/

namespace A014675.P12327178093518849339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 ((n : ℤ) * A316825 n).toNat

end

end A014675.P12327178093518849339

namespace A014675

/-- `A316825(n*A316825(n))` -/
def P12327178093518849339.Spec : Prop :=
  ∀ n, P12327178093518849339.a n = A014675 n

end A014675

/-! ## A014675.P11287773942551786700

`and(A050141(n+1), A319432(n+1))`
-/

namespace A014675.P11287773942551786700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050141 (n + 1)) (A319432 (n + 1))

end

end A014675.P11287773942551786700

namespace A014675

/-- `and(A050141(n+1), A319432(n+1))` -/
def P11287773942551786700.Spec : Prop :=
  ∀ n, P11287773942551786700.a n = A014675 n

end A014675

/-! ## A014675.P9331026113702664561

`A001468(n+1)`
-/

namespace A014675.P9331026113702664561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1)

end

end A014675.P9331026113702664561

namespace A014675

/-- `A001468(n+1)` -/
def P9331026113702664561.Spec : Prop :=
  ∀ n, P9331026113702664561.a n = A014675 n

theorem P9331026113702664561.correct : P9331026113702664561.Spec := by
  intro n
  simp only [A014675, Nat.add_sub_cancel, A014675.P9331026113702664561.a, A014675.P17423219922035932121.a, A001468, A001468.P12360075344960480253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014675

/-! ## A014675.P15668411821607172077

`Δ[Δ[A054347(n)]]`
-/

namespace A014675.P15668411821607172077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014675.P15668411821607172077

namespace A014675

/-- `Δ[Δ[A054347(n)]]` -/
def P15668411821607172077.Spec : Prop :=
  ∀ n, P15668411821607172077.a n = A014675 n

end A014675

/-! ## A014675.P6145855380894174358

`Δ[Δ[A283733(n)]]`
-/

namespace A014675.P6145855380894174358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014675.P6145855380894174358

namespace A014675

/-- `Δ[Δ[A283733(n)]]` -/
def P6145855380894174358.Spec : Prop :=
  ∀ n, P6145855380894174358.a n = A014675 n

end A014675

/-!
# A014676: Inverse of 667th cyclotomic polynomial.

The programs for A014676, there is no canonical definition to state claims against.
-/

/-! ## A014676.P5927887827424952206

`A015343(n)*A033999(n)`
-/

namespace A014676.P5927887827424952206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 n * A033999 n

end

end A014676.P5927887827424952206

/-!
# A014677: First differences of A001468.

The programs for A014677, the canonical program `A014677.P9753683054404277987` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014677 has offset 0).

The definition of A014677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014677.P9753683054404277987

`Δ[floor(ϕ*(n+1))]-Δ[floor(ϕ*n)]`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014677

/-- `Δ[floor(ϕ*(n+1))]-Δ[floor(ϕ*n)]` -/
def P9753683054404277987.Spec : Prop :=
  ∀ n, P9753683054404277987.a n = A014677 n

theorem P9753683054404277987.correct : P9753683054404277987.Spec := by
  intro n
  simp only [A014677]

end A014677

/-! ## A014677.P3735957366443227646

`log2(ratio[runs[A005206(n)]])`
-/

namespace A014677.P3735957366443227646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A014677.P3735957366443227646

namespace A014677

/-- `log2(ratio[runs[A005206(n)]])` -/
def P3735957366443227646.Spec : Prop :=
  ∀ n, P3735957366443227646.a n = (A014677 n : ℝ)

end A014677

/-! ## A014677.P3419802027448862423

`Δ[char[A307294(2*n)]]`
-/

namespace A014677.P3419802027448862423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307294 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P3419802027448862423

namespace A014677

/-- `Δ[char[A307294(2*n)]]` -/
def P3419802027448862423.Spec : Prop :=
  ∀ n, P3419802027448862423.a n = A014677 n

end A014677

/-! ## A014677.P17619096100466203241

`Δ[runs[A356387(n+1)]]`
-/

namespace A014677.P17619096100466203241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356387 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P17619096100466203241

namespace A014677

/-- `Δ[runs[A356387(n+1)]]` -/
def P17619096100466203241.Spec : Prop :=
  ∀ n, P17619096100466203241.a n = A014677 n

end A014677

/-! ## A014677.P4041942459715462827

`Δ[runs[A356388(n+1)]]`
-/

namespace A014677.P4041942459715462827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356388 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P4041942459715462827

namespace A014677

/-- `Δ[runs[A356388(n+1)]]` -/
def P4041942459715462827.Spec : Prop :=
  ∀ n, P4041942459715462827.a n = A014677 n

end A014677

/-! ## A014677.P6931795314346818266

`-Δ[A003849(floor(ϕ*n)+1)]`
-/

namespace A014677.P6931795314346818266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A014677.P6931795314346818266

namespace A014677

/-- `-Δ[A003849(floor(ϕ*n)+1)]` -/
def P6931795314346818266.Spec : Prop :=
  ∀ n, P6931795314346818266.a n = A014677 n

end A014677

/-! ## A014677.P3268595217219332746

`Δ[runs[A380960(n)]]`
-/

namespace A014677.P3268595217219332746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P3268595217219332746

namespace A014677

/-- `Δ[runs[A380960(n)]]` -/
def P3268595217219332746.Spec : Prop :=
  ∀ n, P3268595217219332746.a n = A014677 n

end A014677

/-! ## A014677.P7877761093853325056

`Δ[runs[A019446(n+1)]]`
-/

namespace A014677.P7877761093853325056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P7877761093853325056

namespace A014677

/-- `Δ[runs[A019446(n+1)]]` -/
def P7877761093853325056.Spec : Prop :=
  ∀ n, P7877761093853325056.a n = A014677 n

end A014677

/-! ## A014677.P11814530598090233147

`Δ[runs[A060143(n+1)]]`
-/

namespace A014677.P11814530598090233147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P11814530598090233147

namespace A014677

/-- `Δ[runs[A060143(n+1)]]` -/
def P11814530598090233147.Spec : Prop :=
  ∀ n, P11814530598090233147.a n = A014677 n

end A014677

/-! ## A014677.P10502092957127989668

`Δ[runs[A078796(n+1)]]`
-/

namespace A014677.P10502092957127989668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P10502092957127989668

namespace A014677

/-- `Δ[runs[A078796(n+1)]]` -/
def P10502092957127989668.Spec : Prop :=
  ∀ n, P10502092957127989668.a n = A014677 n

end A014677

/-! ## A014677.P12849163982665413173

`Δ[runs[A105669(n+1)]]`
-/

namespace A014677.P12849163982665413173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105669 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P12849163982665413173

namespace A014677

/-- `Δ[runs[A105669(n+1)]]` -/
def P12849163982665413173.Spec : Prop :=
  ∀ n, P12849163982665413173.a n = A014677 n

end A014677

/-! ## A014677.P323402424910492239

`Δ[runs[A120613(n+1)]]`
-/

namespace A014677.P323402424910492239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P323402424910492239

namespace A014677

/-- `Δ[runs[A120613(n+1)]]` -/
def P323402424910492239.Spec : Prop :=
  ∀ n, P323402424910492239.a n = A014677 n

end A014677

/-! ## A014677.P8515912054182755879

`Δ[runs[A214990(n+1)]]`
-/

namespace A014677.P8515912054182755879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P8515912054182755879

namespace A014677

/-- `Δ[runs[A214990(n+1)]]` -/
def P8515912054182755879.Spec : Prop :=
  ∀ n, P8515912054182755879.a n = A014677 n

end A014677

/-! ## A014677.P4769443227840856207

`Δ[runs[A123070(n+3)]]`
-/

namespace A014677.P4769443227840856207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P4769443227840856207

namespace A014677

/-- `Δ[runs[A123070(n+3)]]` -/
def P4769443227840856207.Spec : Prop :=
  ∀ n, P4769443227840856207.a n = A014677 n

end A014677

/-! ## A014677.P13357254268116723092

`Δ[p?[A108103(n+1)]]`
-/

namespace A014677.P13357254268116723092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014677.P13357254268116723092

namespace A014677

/-- `Δ[p?[A108103(n+1)]]` -/
def P13357254268116723092.Spec : Prop :=
  ∀ n, P13357254268116723092.a n = A014677 n

end A014677

/-! ## A014677.P17486463218585158438

`Δ[A108103(2*(n+1))]`
-/

namespace A014677.P17486463218585158438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014677.P17486463218585158438

namespace A014677

/-- `Δ[A108103(2*(n+1))]` -/
def P17486463218585158438.Spec : Prop :=
  ∀ n, P17486463218585158438.a n = A014677 n

end A014677

/-! ## A014677.P1020859134705900182

`Δ[A284620(2*n+1)!]`
-/

namespace A014677.P1020859134705900182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A284620 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A014677.P1020859134705900182

namespace A014677

/-- `Δ[A284620(2*n+1)!]` -/
def P1020859134705900182.Spec : Prop :=
  ∀ n, P1020859134705900182.a n = A014677 n

end A014677

/-! ## A014677.P3730879631445580396

`Δ[A001468(A004526(2*n))]`
-/

namespace A014677.P3730879631445580396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A004526 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014677.P3730879631445580396

namespace A014677

/-- `Δ[A001468(A004526(2*n))]` -/
def P3730879631445580396.Spec : Prop :=
  ∀ n, P3730879631445580396.a n = A014677 n

end A014677

/-! ## A014677.P15224224247367452948

`Δ[Δ[A054082(2*n+1)]]`
-/

namespace A014677.P15224224247367452948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014677.P15224224247367452948

namespace A014677

/-- `Δ[Δ[A054082(2*n+1)]]` -/
def P15224224247367452948.Spec : Prop :=
  ∀ n, P15224224247367452948.a n = A014677 n

end A014677

/-! ## A014677.P15616775181565176237

`Δ[Δ[A054089(2*n+1)]]`
-/

namespace A014677.P15616775181565176237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054089 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014677.P15616775181565176237

namespace A014677

/-- `Δ[Δ[A054089(2*n+1)]]` -/
def P15616775181565176237.Spec : Prop :=
  ∀ n, P15616775181565176237.a n = A014677 n

end A014677

/-!
# A014679: G.f.: (1+x^3)^2/((1-x^2)*(1-x^3)*(1-x^4)).

The programs for A014679, the canonical program `A014679.P9947285456164827845` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014679 has offset 0).

The definition of A014679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014679.P966414299563471891

`ogf((1-2x+3x^2-2x^3+x^4)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))`
-/

namespace A014679.P966414299563471891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3, -2, 1] [1, -2, 2, -3, 3, -2, 2, -1] n

end

end A014679.P966414299563471891

namespace A014679

/-- `ogf((1-2x+3x^2-2x^3+x^4)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))` -/
def P966414299563471891.Spec : Prop :=
  ∀ n, P966414299563471891.a n = A014679 n

end A014679

/-! ## A014679.P9947285456164827845

`n²/12+n/4+13/36-A057077(n)/4+4*A099837(n+3)/9`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014679

/-- `n²/12+n/4+13/36-A057077(n)/4+4*A099837(n+3)/9` -/
def P9947285456164827845.Spec : Prop :=
  ∀ n, P9947285456164827845.a n = (A014679 n : ℚ)

end A014679

/-! ## A014679.P6135591942749347725

`floor(∑[a(n-3)+1]/2)` with `a(0)=3, a(1)=-2, a(2)=1`
-/

namespace A014679.P6135591942749347725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 1] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A014679.P6135591942749347725

namespace A014679

/-- `floor(∑[a(n-3)+1]/2)` -/
def P6135591942749347725.Spec : Prop :=
  ∀ n, P6135591942749347725.a n = A014679 n

end A014679

/-! ## A014679.P5326655770773625938

`or(1, a(n-1)+a(n-3))-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A014679.P5326655770773625938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  Int.lor 1 (a (n - 1) + a (n - 3)) - a (n - 4)

end

end A014679.P5326655770773625938

namespace A014679

/-- `or(1, a(n-1)+a(n-3))-a(n-4)` -/
def P5326655770773625938.Spec : Prop :=
  ∀ n, P5326655770773625938.a n = A014679 n

end A014679

/-! ## A014679.P16435161022994978620

`A253012(n)-A112690(n)`
-/

namespace A014679.P16435161022994978620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 n - A112690 n

end

end A014679.P16435161022994978620

namespace A014679

/-- `A253012(n)-A112690(n)` -/
def P16435161022994978620.Spec : Prop :=
  ∀ n, P16435161022994978620.a n = A014679 n

end A014679

/-! ## A014679.P12779453146061898776

`A008742(n)+2*A005044(n)`
-/

namespace A014679.P12779453146061898776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + 2 * A005044 n

end

end A014679.P12779453146061898776

namespace A014679

/-- `A008742(n)+2*A005044(n)` -/
def P12779453146061898776.Spec : Prop :=
  ∀ n, P12779453146061898776.a n = A014679 n

end A014679

/-! ## A014679.P7997595567212013087

`A008743(n)+3*A005044(n)`
-/

namespace A014679.P7997595567212013087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 n + 3 * A005044 n

end

end A014679.P7997595567212013087

namespace A014679

/-- `A008743(n)+3*A005044(n)` -/
def P7997595567212013087.Spec : Prop :=
  ∀ n, P7997595567212013087.a n = A014679 n

end A014679

/-! ## A014679.P4699685982126011843

`A008742(n)+Δ[2*A026810(n)]`
-/

namespace A014679.P4699685982126011843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n + (f1 (n + 1) - f1 n)

end

end A014679.P4699685982126011843

namespace A014679

/-- `A008742(n)+Δ[2*A026810(n)]` -/
def P4699685982126011843.Spec : Prop :=
  ∀ n, P4699685982126011843.a n = A014679 n

end A014679

/-! ## A014679.P10039561983147504912

`∑[A063942(2*n)-A004524(n)]`
-/

namespace A014679.P10039561983147504912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (2 * n) - A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014679.P10039561983147504912

namespace A014679

/-- `∑[A063942(2*n)-A004524(n)]` -/
def P10039561983147504912.Spec : Prop :=
  ∀ n, P10039561983147504912.a n = A014679 n

end A014679

/-! ## A014679.P16659486923747024104

`∑[A063942(2*n)]-A011848(n)`
-/

namespace A014679.P16659486923747024104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011848 n

end

end A014679.P16659486923747024104

namespace A014679

/-- `∑[A063942(2*n)]-A011848(n)` -/
def P16659486923747024104.Spec : Prop :=
  ∀ n, P16659486923747024104.a n = A014679 n

end A014679

/-! ## A014679.P8496844842636347952

`A008611(A079524(n))-A002265(n)`
-/

namespace A014679.P8496844842636347952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A079524 n).toNat - A002265 n

end

end A014679.P8496844842636347952

namespace A014679

/-- `A008611(A079524(n))-A002265(n)` -/
def P8496844842636347952.Spec : Prop :=
  ∀ n, P8496844842636347952.a n = A014679 n

end A014679

/-! ## A014679.P17776016338003768424

`A008619(A008611(∑[n])+n)-A008611(n+1)`
-/

namespace A014679.P17776016338003768424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008611 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat - A008611 (n + 1)

end

end A014679.P17776016338003768424

namespace A014679

/-- `A008619(A008611(∑[n])+n)-A008611(n+1)` -/
def P17776016338003768424.Spec : Prop :=
  ∀ n, P17776016338003768424.a n = A014679 n

end A014679

/-! ## A014679.P10728020481421365843

`A008612(∑[n+1]+2)`
-/

namespace A014679.P10728020481421365843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A014679.P10728020481421365843

namespace A014679

/-- `A008612(∑[n+1]+2)` -/
def P10728020481421365843.Spec : Prop :=
  ∀ n, P10728020481421365843.a n = A014679 n

end A014679

/-! ## A014679.P7699683683002484732

`A008615(∑[n+1])+char[3*n]`
-/

namespace A014679.P7699683683002484732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A014679.P7699683683002484732

namespace A014679

/-- `A008615(∑[n+1])+char[3*n]` -/
def P7699683683002484732.Spec : Prop :=
  ∀ n, P7699683683002484732.a n = A014679 n

end A014679

/-! ## A014679.P7521318462349782330

`A008611(A028242(∑[n+1]))`
-/

namespace A014679.P7521318462349782330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A028242 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A014679.P7521318462349782330

namespace A014679

/-- `A008611(A028242(∑[n+1]))` -/
def P7521318462349782330.Spec : Prop :=
  ∀ n, P7521318462349782330.a n = A014679 n

end A014679

/-! ## A014679.P273083977646197528

`A008611(A110654(xor(1, ∑[n+1])))`
-/

namespace A014679.P273083977646197528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A110654 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A014679.P273083977646197528

namespace A014679

/-- `A008611(A110654(xor(1, ∑[n+1])))` -/
def P273083977646197528.Spec : Prop :=
  ∀ n, P273083977646197528.a n = A014679 n

end A014679

/-! ## A014679.P1397934581418033093

`A008611(A052938(∑[n]+n)-1)`
-/

namespace A014679.P1397934581418033093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A052938 (∑ j ∈ Finset.range (n + 1), f1 j + n) - 1).toNat

end

end A014679.P1397934581418033093

namespace A014679

/-- `A008611(A052938(∑[n]+n)-1)` -/
def P1397934581418033093.Spec : Prop :=
  ∀ n, P1397934581418033093.a n = A014679 n

end A014679

/-! ## A014679.P5049939730639713840

`∑[A008611(n)]-A008615(A000096(n))`
-/

namespace A014679.P5049939730639713840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008615 (A000096 n).toNat

end

end A014679.P5049939730639713840

namespace A014679

/-- `∑[A008611(n)]-A008615(A000096(n))` -/
def P5049939730639713840.Spec : Prop :=
  ∀ n, P5049939730639713840.a n = A014679 n

end A014679

/-! ## A014679.P1919310250790387795

`A194523(A281026(n+1))`
-/

namespace A014679.P1919310250790387795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (A281026 (n + 1)).toNat

end

end A014679.P1919310250790387795

namespace A014679

/-- `A194523(A281026(n+1))` -/
def P1919310250790387795.Spec : Prop :=
  ∀ n, P1919310250790387795.a n = A014679 n

end A014679

/-! ## A014679.P14427236621530618019

`A063942(n²)-A011848(n)`
-/

namespace A014679.P14427236621530618019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (n ^ 2) - A011848 n

end

end A014679.P14427236621530618019

namespace A014679

/-- `A063942(n²)-A011848(n)` -/
def P14427236621530618019.Spec : Prop :=
  ∀ n, P14427236621530618019.a n = A014679 n

end A014679

/-!
# A014680: Inverse of 671st cyclotomic polynomial.

The programs for A014680, there is no canonical definition to state claims against.
-/

/-! ## A014680.P717197659981557352

`A015351(n)/A033999(n)`
-/

namespace A014680.P717197659981557352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015351 n : ℚ) / (A033999 n : ℚ)

end

end A014680.P717197659981557352

/-!
# A014681: Fix 0; exchange even and odd numbers.

The programs for A014681, the canonical program `A014681.P5993139036264792398` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014681 has offset 0).

The definition of A014681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014681.P5993139036264792398

`a(n-2)+2` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014681

/-- `a(n-2)+2` -/
def P5993139036264792398.Spec : Prop :=
  ∀ n, (P5993139036264792398.a n : ℤ) = A014681 n

theorem P5993139036264792398.correct : P5993139036264792398.Spec := by
  intro n
  simp only [A014681]

end A014681

/-! ## A014681.P13900521751157369062

`ogf((2x-x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A014681.P13900521751157369062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 1] [1, -1, -1, 1] n

end

end A014681.P13900521751157369062

namespace A014681

/-- `ogf((2x-x^2+x^3)/(1-x-x^2+x^3))` -/
def P13900521751157369062.Spec : Prop :=
  ∀ n, P13900521751157369062.a n = A014681 n

end A014681

/-! ## A014681.P5985408897665551877

`2+a(n-2)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A014681.P5985408897665551877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 + a (n - 2)

end

end A014681.P5985408897665551877

namespace A014681

/-- `2+a(n-2)` -/
def P5985408897665551877.Spec : Prop :=
  ∀ n, (P5985408897665551877.a n : ℤ) = A014681 n

theorem P5985408897665551877.correct : P5985408897665551877.Spec := by
  intro n
  simp only [A014681, Nat.add_sub_cancel, A014681.P5985408897665551877.a, A014681.P5993139036264792398.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014681

/-! ## A014681.P9911590621430686075

`floor(abs(Δ[xor(1, n²)])/2)`
-/

namespace A014681.P9911590621430686075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|(f1 (n + 1) : ℤ) - (f1 n : ℤ)| : ℚ) / 2⌋

end

end A014681.P9911590621430686075

namespace A014681

/-- `floor(abs(Δ[xor(1, n²)])/2)` -/
def P9911590621430686075.Spec : Prop :=
  ∀ n, P9911590621430686075.a n = A014681 n

end A014681

/-! ## A014681.P4005400048873533035

`abs(xor(1, -n)%Δ[n²])`
-/

namespace A014681.P4005400048873533035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.xor 1 (-(n : ℤ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A014681.P4005400048873533035

namespace A014681

/-- `abs(xor(1, -n)%Δ[n²])` -/
def P4005400048873533035.Spec : Prop :=
  ∀ n, P4005400048873533035.a n = A014681 n

end A014681

/-! ## A014681.P15876711531030269729

`-xor(1, -n)%Δ[n²]`
-/

namespace A014681.P15876711531030269729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor 1 (-(n : ℤ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014681.P15876711531030269729

namespace A014681

/-- `-xor(1, -n)%Δ[n²]` -/
def P15876711531030269729.Spec : Prop :=
  ∀ n, P15876711531030269729.a n = A014681 n

end A014681

/-! ## A014681.P9629589482234806880

`n-((-1)^n)%(n+1)`
-/

namespace A014681.P9629589482234806880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((-1) ^ n) (n + 1 : ℤ)

end

end A014681.P9629589482234806880

namespace A014681

/-- `n-((-1)^n)%(n+1)` -/
def P9629589482234806880.Spec : Prop :=
  ∀ n, P9629589482234806880.a n = A014681 n

end A014681

/-! ## A014681.P7803466474526152528

`n-(1-a(n%2))` with `a(0)=0, a(1)=2`
-/

namespace A014681.P7803466474526152528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n : ℤ) - (1 - a (n % 2))

end

end A014681.P7803466474526152528

namespace A014681

/-- `n-(1-a(n%2))` -/
def P7803466474526152528.Spec : Prop :=
  ∀ n, P7803466474526152528.a n = A014681 n

end A014681

/-! ## A014681.P11237139776180829139

`-xor(1, C(2, n+2)-n)`
-/

namespace A014681.P11237139776180829139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 ((Nat.choose 2 (n + 2) : ℤ) - (n : ℤ))

end

end A014681.P11237139776180829139

namespace A014681

/-- `-xor(1, C(2, n+2)-n)` -/
def P11237139776180829139.Spec : Prop :=
  ∀ n, P11237139776180829139.a n = A014681 n

end A014681

/-! ## A014681.P10287297847917870133

`xor(1, ceil(sqrt(∑[2*n])))-1`
-/

namespace A014681.P10287297847917870133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ - 1

end

end A014681.P10287297847917870133

namespace A014681

/-- `xor(1, ceil(sqrt(∑[2*n])))-1` -/
def P10287297847917870133.Spec : Prop :=
  ∀ n, P10287297847917870133.a n = A014681 n

end A014681

/-! ## A014681.P15899575659694967003

`2-runs[val(n+2, 4)]+n`
-/

namespace A014681.P15899575659694967003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) + (n : ℤ)

end

end A014681.P15899575659694967003

namespace A014681

/-- `2-runs[val(n+2, 4)]+n` -/
def P15899575659694967003.Spec : Prop :=
  ∀ n, P15899575659694967003.a n = A014681 n

end A014681

/-! ## A014681.P3962281220220001525

`C(n, 2*n)-xor(1, -n)`
-/

namespace A014681.P3962281220220001525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (2 * n) : ℤ) - Int.xor 1 (-(n : ℤ))

end

end A014681.P3962281220220001525

namespace A014681

/-- `C(n, 2*n)-xor(1, -n)` -/
def P3962281220220001525.Spec : Prop :=
  ∀ n, P3962281220220001525.a n = A014681 n

end A014681

/-! ## A014681.P12467496029785546110

`-xor(-n, ceil(n/(n+1)))`
-/

namespace A014681.P12467496029785546110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(n : ℤ)) ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A014681.P12467496029785546110

namespace A014681

/-- `-xor(-n, ceil(n/(n+1)))` -/
def P12467496029785546110.Spec : Prop :=
  ∀ n, P12467496029785546110.a n = A014681 n

end A014681

/-! ## A014681.P12087209439526376146

`∑[2-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A014681.P12087209439526376146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014681.P12087209439526376146

namespace A014681

/-- `∑[2-a(n-1)]` -/
def P12087209439526376146.Spec : Prop :=
  ∀ n, P12087209439526376146.a n = A014681 n

end A014681

/-! ## A014681.P14586944225566856911

`n-(-1)^a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A014681.P14586944225566856911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n : ℝ) - (-1 : ℝ) ^ (a (n - 1))

end

end A014681.P14586944225566856911

namespace A014681

/-- `n-(-1)^a(n-1)` -/
def P14586944225566856911.Spec : Prop :=
  ∀ n, P14586944225566856911.a n = (A014681 n : ℝ)

end A014681

/-! ## A014681.P14700208518356223443

`∑[∑[ogf((2x-x^2+x^3)/(1+x))]]`
-/

namespace A014681.P14700208518356223443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014681.P14700208518356223443

namespace A014681

/-- `∑[∑[ogf((2x-x^2+x^3)/(1+x))]]` -/
def P14700208518356223443.Spec : Prop :=
  ∀ n, P14700208518356223443.a n = A014681 n

end A014681

/-! ## A014681.P12675347325615581551

`2-floor(-a(n-2))` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A014681.P12675347325615581551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (-a (n - 2))

end

end A014681.P12675347325615581551

namespace A014681

/-- `2-floor(-a(n-2))` -/
def P12675347325615581551.Spec : Prop :=
  ∀ n, P12675347325615581551.a n = A014681 n

end A014681

/-! ## A014681.P811207549467304502

`2-ceil(-a(n-2))` with `a(0)=0, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A014681.P811207549467304502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (-a (n - 2))

end

end A014681.P811207549467304502

namespace A014681

/-- `2-ceil(-a(n-2))` -/
def P811207549467304502.Spec : Prop :=
  ∀ n, P811207549467304502.a n = A014681 n

end A014681

/-! ## A014681.P4399789428180497924

`2-round(-a(n-2))` with `a(0)=0, a(1)=2, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A014681.P4399789428180497924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  2 - (-a (n - 2))

end

end A014681.P4399789428180497924

namespace A014681

/-- `2-round(-a(n-2))` -/
def P4399789428180497924.Spec : Prop :=
  ∀ n, P4399789428180497924.a n = A014681 n

end A014681

/-! ## A014681.P8194707823923655419

`2-(char[2]-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A014681.P8194707823923655419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A014681.P8194707823923655419

namespace A014681

/-- `2-(char[2]-a(n-2))` -/
def P8194707823923655419.Spec : Prop :=
  ∀ n, P8194707823923655419.a n = A014681 n

end A014681

/-!
# A014682: The Collatz or 3x+1 function: a(n) = n/2 if n is even, otherwise (3n+1)/2.

The programs for A014682, the canonical program `A014682.P15017874184431916706` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014682 has offset 0).

The definition of A014682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014682.P9345299638677573266

`n*n%2+ceil(n/2)`
-/

namespace A014682.P9345299638677573266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n % 2) : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉

end

end A014682.P9345299638677573266

namespace A014682

/-- `n*n%2+ceil(n/2)` -/
def P9345299638677573266.Spec : Prop :=
  ∀ n, P9345299638677573266.a n = A014682 n

end A014682

/-! ## A014682.P15017874184431916706

`(n*(n+1))%(n+n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014682

/-- `(n*(n+1))%(n+n+1)` -/
def P15017874184431916706.Spec : Prop :=
  ∀ n, (P15017874184431916706.a n : ℤ) = A014682 n

theorem P15017874184431916706.correct : P15017874184431916706.Spec := by
  intro n
  simp only [A014682]

end A014682

/-! ## A014682.P6275939342140182509

`ogf((2x+x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A014682.P6275939342140182509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1] [1, 0, -2, 0, 1] n

end

end A014682.P6275939342140182509

namespace A014682

/-- `ogf((2x+x^2+x^3)/(1-2x^2+x^4))` -/
def P6275939342140182509.Spec : Prop :=
  ∀ n, P6275939342140182509.a n = A014682 n

end A014682

/-! ## A014682.P7886950790643191352

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=5`
-/

namespace A014682.P7886950790643191352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 5] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A014682.P7886950790643191352

namespace A014682

/-- `2*a(n-2)-a(n-4)` -/
def P7886950790643191352.Spec : Prop :=
  ∀ n, P7886950790643191352.a n = A014682 n

end A014682

/-! ## A014682.P3321881619512866322

`(4*n+1)/4-(2*n+1)*(-1)^n/4`
-/

namespace A014682.P3321881619512866322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) / 4 - ((2 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 4

end

end A014682.P3321881619512866322

namespace A014682

/-- `(4*n+1)/4-(2*n+1)*(-1)^n/4` -/
def P3321881619512866322.Spec : Prop :=
  ∀ n, P3321881619512866322.a n = (A014682 n : ℚ)

end A014682

/-! ## A014682.P10891337846349166293

`lcm(2, n)-floor(n/2)`
-/

namespace A014682.P10891337846349166293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A014682.P10891337846349166293

namespace A014682

/-- `lcm(2, n)-floor(n/2)` -/
def P10891337846349166293.Spec : Prop :=
  ∀ n, P10891337846349166293.a n = A014682 n

end A014682

/-! ## A014682.P16221814811587802398

`n+1-Δ[gcd(n, ∑[n])]`
-/

namespace A014682.P16221814811587802398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014682.P16221814811587802398

namespace A014682

/-- `n+1-Δ[gcd(n, ∑[n])]` -/
def P16221814811587802398.Spec : Prop :=
  ∀ n, P16221814811587802398.a n = A014682 n

end A014682

/-! ## A014682.P17026726856223559221

`ceil((lcm(4, 2*n)-n)/2)`
-/

namespace A014682.P17026726856223559221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lcm 4 (2 * n) : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A014682.P17026726856223559221

namespace A014682

/-- `ceil((lcm(4, 2*n)-n)/2)` -/
def P17026726856223559221.Spec : Prop :=
  ∀ n, P17026726856223559221.a n = A014682 n

end A014682

/-! ## A014682.P15786723927995077020

`∑[2-xor(1, a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A014682.P15786723927995077020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 - Int.xor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014682.P15786723927995077020

namespace A014682

/-- `∑[2-xor(1, a(n-1))]` -/
def P15786723927995077020.Spec : Prop :=
  ∀ n, P15786723927995077020.a n = A014682 n

end A014682

/-! ## A014682.P1328509662528460508

`Δ[n*∑[and(1, n+1)]]-1`
-/

namespace A014682.P1328509662528460508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A014682.P1328509662528460508

namespace A014682

/-- `Δ[n*∑[and(1, n+1)]]-1` -/
def P1328509662528460508.Spec : Prop :=
  ∀ n, P1328509662528460508.a n = A014682 n

end A014682

/-! ## A014682.P13295891676137217470

`n+1-Δ[n/gcd(2, n²)]`
-/

namespace A014682.P13295891676137217470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (f1 (n + 1) - f1 n)

end

end A014682.P13295891676137217470

namespace A014682

/-- `n+1-Δ[n/gcd(2, n²)]` -/
def P13295891676137217470.Spec : Prop :=
  ∀ n, P13295891676137217470.a n = (A014682 n : ℚ)

end A014682

/-! ## A014682.P12488483231663491510

`ceil(n/2*(2*and(1, n)+1))`
-/

namespace A014682.P12488483231663491510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 * (2 * Nat.land 1 n + 1 : ℚ)⌉

end

end A014682.P12488483231663491510

namespace A014682

/-- `ceil(n/2*(2*and(1, n)+1))` -/
def P12488483231663491510.Spec : Prop :=
  ∀ n, P12488483231663491510.a n = A014682 n

end A014682

/-! ## A014682.P1420015944068239519

`round(n/2*(2*and(1, n)+1))`
-/

namespace A014682.P1420015944068239519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 * (2 * Nat.land 1 n + 1 : ℚ))

end

end A014682.P1420015944068239519

namespace A014682

/-- `round(n/2*(2*and(1, n)+1))` -/
def P1420015944068239519.Spec : Prop :=
  ∀ n, P1420015944068239519.a n = A014682 n

end A014682

/-! ## A014682.P4806195027803125209

`((2*n+1)*and(1, n)+n)/2`
-/

namespace A014682.P4806195027803125209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 n + n : ℚ) / 2

end

end A014682.P4806195027803125209

namespace A014682

/-- `((2*n+1)*and(1, n)+n)/2` -/
def P4806195027803125209.Spec : Prop :=
  ∀ n, P4806195027803125209.a n = (A014682 n : ℚ)

end A014682

/-! ## A014682.P12845086662354222783

`or(1, n-1)+n-a(n-1)` with `a(0)=0`
-/

namespace A014682.P12845086662354222783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 ((n : ℤ) - 1) + (n : ℤ) - a (n - 1)

end

end A014682.P12845086662354222783

namespace A014682

/-- `or(1, n-1)+n-a(n-1)` -/
def P12845086662354222783.Spec : Prop :=
  ∀ n, P12845086662354222783.a n = A014682 n

end A014682

/-! ## A014682.P7389305017342349698

`(2*n+1)*∑[and(1, n)]-n²`
-/

namespace A014682.P7389305017342349698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A014682.P7389305017342349698

namespace A014682

/-- `(2*n+1)*∑[and(1, n)]-n²` -/
def P7389305017342349698.Spec : Prop :=
  ∀ n, P7389305017342349698.a n = A014682 n

end A014682

/-! ## A014682.P294283236383005096

`Δ[gcd(n+2, floor((n+2)/2))]+n`
-/

namespace A014682.P294283236383005096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ⌊(n + 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A014682.P294283236383005096

namespace A014682

/-- `Δ[gcd(n+2, floor((n+2)/2))]+n` -/
def P294283236383005096.Spec : Prop :=
  ∀ n, P294283236383005096.a n = A014682 n

end A014682

/-! ## A014682.P6297966036659066278

`gcd(2*n, ∑[2*n])-floor(n/2)`
-/

namespace A014682.P6297966036659066278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A014682.P6297966036659066278

namespace A014682

/-- `gcd(2*n, ∑[2*n])-floor(n/2)` -/
def P6297966036659066278.Spec : Prop :=
  ∀ n, P6297966036659066278.a n = A014682 n

end A014682

/-! ## A014682.P15806314809065775789

`a(n-2)+2*and(1, n)+1` with `a(0)=0, a(1)=2`
-/

namespace A014682.P15806314809065775789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 2 * Nat.land 1 n + 1

end

end A014682.P15806314809065775789

namespace A014682

/-- `a(n-2)+2*and(1, n)+1` -/
def P15806314809065775789.Spec : Prop :=
  ∀ n, (P15806314809065775789.a n : ℤ) = A014682 n

end A014682

/-! ## A014682.P107343280281378070

`ceil(a(n-2)+n/a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A014682.P107343280281378070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n : ℚ) / (a (n - 1) : ℚ)⌉

end

end A014682.P107343280281378070

namespace A014682

/-- `ceil(a(n-2)+n/a(n-1))` -/
def P107343280281378070.Spec : Prop :=
  ∀ n, P107343280281378070.a n = A014682 n

end A014682

/-!
# A014683: In the sequence of positive integers add 1 to each prime number.

The programs for A014683, the canonical program `A014683.P4274130993241959458` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014683 has offset 1).

The definition of A014683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014683.P4274130993241959458

`n+1+A010051(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014683

/-- `n+1+A010051(n+1)` -/
def P4274130993241959458.Spec : Prop :=
  ∀ n, P4274130993241959458.a n = A014683 (n + 1)

theorem P4274130993241959458.correct : P4274130993241959458.Spec := by
  intro n
  simp only [A014683, Nat.add_sub_cancel]

end A014683

/-! ## A014683.P12474207234416189618

`∑{d}[n+1, A380457(#)*A008683((n+1)/#)]`
-/

namespace A014683.P12474207234416189618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A380457 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A014683.P12474207234416189618

namespace A014683

/-- `∑{d}[n+1, A380457(#)*A008683((n+1)/#)]` -/
def P12474207234416189618.Spec : Prop :=
  ∀ n, P12474207234416189618.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P6813635524349652079

`C(2, ∑{e}[n+1, #])!+n`
-/

namespace A014683.P6813635524349652079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + n

end

end A014683.P6813635524349652079

namespace A014683

/-- `C(2, ∑{e}[n+1, #])!+n` -/
def P6813635524349652079.Spec : Prop :=
  ∀ n, (P6813635524349652079.a n : ℤ) = A014683 (n + 1)

end A014683

/-! ## A014683.P13413549774315378689

`∏{p}[n+1, ceil(#/n)]+n`
-/

namespace A014683.P13413549774315378689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉ + (n : ℤ)

end

end A014683.P13413549774315378689

namespace A014683

/-- `∏{p}[n+1, ceil(#/n)]+n` -/
def P13413549774315378689.Spec : Prop :=
  ∀ n, P13413549774315378689.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P17062536679552503007

`C(C(2, ∑{e}[n+1, #]), 2)+1+n`
-/

namespace A014683.P17062536679552503007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2 + (1 + n)

end

end A014683.P17062536679552503007

namespace A014683

/-- `C(C(2, ∑{e}[n+1, #]), 2)+1+n` -/
def P17062536679552503007.Spec : Prop :=
  ∀ n, (P17062536679552503007.a n : ℤ) = A014683 (n + 1)

end A014683

/-! ## A014683.P11510112447098097800

`∑{p}[n+1, val(#, n+1)]+n+1`
-/

namespace A014683.P11510112447098097800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) + (n + 1)

end

end A014683.P11510112447098097800

namespace A014683

/-- `∑{p}[n+1, val(#, n+1)]+n+1` -/
def P11510112447098097800.Spec : Prop :=
  ∀ n, (P11510112447098097800.a n : ℤ) = A014683 (n + 1)

end A014683

/-! ## A014683.P1592087749986401301

`∑{p}[n+1, C(#, n+1)]+n+1`
-/

namespace A014683.P1592087749986401301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1) + (n + 1)

end

end A014683.P1592087749986401301

namespace A014683

/-- `∑{p}[n+1, C(#, n+1)]+n+1` -/
def P1592087749986401301.Spec : Prop :=
  ∀ n, (P1592087749986401301.a n : ℤ) = A014683 (n + 1)

theorem P1592087749986401301.correct : P1592087749986401301.Spec := by
  intro n
  simp only [A014683, Nat.add_sub_cancel, A014683.P1592087749986401301.f1, A014683.P1592087749986401301.a, A014683.P4274130993241959458.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014683

/-! ## A014683.P4846802870351541093

`n-(∏{p}[n+1, C(#%n, #)]-2)`
-/

namespace A014683.P4846802870351541093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) - 2)

end

end A014683.P4846802870351541093

namespace A014683

/-- `n-(∏{p}[n+1, C(#%n, #)]-2)` -/
def P4846802870351541093.Spec : Prop :=
  ∀ n, P4846802870351541093.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P6203139333787252816

`∑{p}[n+1, floor(#/(n+1))]+n+1`
-/

namespace A014683.P6203139333787252816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋ + (n + 1 : ℤ)

end

end A014683.P6203139333787252816

namespace A014683

/-- `∑{p}[n+1, floor(#/(n+1))]+n+1` -/
def P6203139333787252816.Spec : Prop :=
  ∀ n, P6203139333787252816.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P2919131149373536400

`round(∑{p}[n+1, #/(2*n+1)]+n+1)`
-/

namespace A014683.P2919131149373536400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n + 1 : ℚ) + (n + 1 : ℚ))

end

end A014683.P2919131149373536400

namespace A014683

/-- `round(∑{p}[n+1, #/(2*n+1)]+n+1)` -/
def P2919131149373536400.Spec : Prop :=
  ∀ n, P2919131149373536400.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P16727871119887680630

`A113637(n+1)+1`
-/

namespace A014683.P16727871119887680630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 1) + 1

end

end A014683.P16727871119887680630

namespace A014683

/-- `A113637(n+1)+1` -/
def P16727871119887680630.Spec : Prop :=
  ∀ n, P16727871119887680630.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P13005667702302283312

`∑{d}[n+1, A140706(#)]`
-/

namespace A014683.P13005667702302283312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A140706 d

end

end A014683.P13005667702302283312

namespace A014683

/-- `∑{d}[n+1, A140706(#)]` -/
def P13005667702302283312.Spec : Prop :=
  ∀ n, P13005667702302283312.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P5547780791837101760

`ceil(ratio[A151800(n)]+n)`
-/

namespace A014683.P5547780791837101760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)⌉

end

end A014683.P5547780791837101760

namespace A014683

/-- `ceil(ratio[A151800(n)]+n)` -/
def P5547780791837101760.Spec : Prop :=
  ∀ n, P5547780791837101760.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P1160469566736998351

`ceil(2/A013632(n)+n)`
-/

namespace A014683.P1160469566736998351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A013632 n : ℚ) + (n : ℚ)⌉

end

end A014683.P1160469566736998351

namespace A014683

/-- `ceil(2/A013632(n)+n)` -/
def P1160469566736998351.Spec : Prop :=
  ∀ n, P1160469566736998351.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P13541267500837132272

`2-A005171(n+1)+n`
-/

namespace A014683.P13541267500837132272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005171 (n + 1) + (n : ℤ)

end

end A014683.P13541267500837132272

namespace A014683

/-- `2-A005171(n+1)+n` -/
def P13541267500837132272.Spec : Prop :=
  ∀ n, P13541267500837132272.a n = A014683 (n + 1)

theorem P13541267500837132272.correct : P13541267500837132272.Spec := by
  intro n
  simp only [A014683, Nat.add_sub_cancel, A014683.P13541267500837132272.a, A014683.P4274130993241959458.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014683

/-! ## A014683.P7966412952620353341

`gcd(2, A105560(n+1))+n`
-/

namespace A014683.P7966412952620353341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A105560 (n + 1)) + n

end

end A014683.P7966412952620353341

namespace A014683

/-- `gcd(2, A105560(n+1))+n` -/
def P7966412952620353341.Spec : Prop :=
  ∀ n, (P7966412952620353341.a n : ℤ) = A014683 (n + 1)

end A014683

/-! ## A014683.P1567070623714970284

`C(2, A061007(n+1))+n`
-/

namespace A014683.P1567070623714970284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A061007 (n + 1)).toNat + n

end

end A014683.P1567070623714970284

namespace A014683

/-- `C(2, A061007(n+1))+n` -/
def P1567070623714970284.Spec : Prop :=
  ∀ n, (P1567070623714970284.a n : ℤ) = A014683 (n + 1)

end A014683

/-! ## A014683.P16961211185001808410

`C(2, A105661(n+1))+n`
-/

namespace A014683.P16961211185001808410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A105661 (n + 1)).toNat + n

end

end A014683.P16961211185001808410

namespace A014683

/-- `C(2, A105661(n+1))+n` -/
def P16961211185001808410.Spec : Prop :=
  ∀ n, (P16961211185001808410.a n : ℤ) = A014683 (n + 1)

end A014683

/-! ## A014683.P12408805282503946463

`A129950(n+1)²+n+1`
-/

namespace A014683.P12408805282503946463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2 + (n + 1 : ℤ)

end

end A014683.P12408805282503946463

namespace A014683

/-- `A129950(n+1)²+n+1` -/
def P12408805282503946463.Spec : Prop :=
  ∀ n, P12408805282503946463.a n = A014683 (n + 1)

end A014683

/-! ## A014683.P6326516674404243136

`A227625(n+1)²+n+1`
-/

namespace A014683.P6326516674404243136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (n + 1) ^ 2 + (n + 1 : ℤ)

end

end A014683.P6326516674404243136

namespace A014683

/-- `A227625(n+1)²+n+1` -/
def P6326516674404243136.Spec : Prop :=
  ∀ n, P6326516674404243136.a n = A014683 (n + 1)

end A014683

/-!
# A014684: In the sequence of positive integers subtract 1 from each prime number.

The programs for A014684, the canonical program `A014684.P14857736222881351984` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014684 has offset 1).

The definition of A014684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014684.P14857736222881351984

`A005171(n+1)+n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014684

/-- `A005171(n+1)+n` -/
def P14857736222881351984.Spec : Prop :=
  ∀ n, P14857736222881351984.a n = A014684 (n + 1)

theorem P14857736222881351984.correct : P14857736222881351984.Spec := by
  intro n
  simp only [A014684, Nat.add_sub_cancel]

end A014684

/-! ## A014684.P2598652331190683804

`n+1-A010051(n+1)`
-/

namespace A014684.P2598652331190683804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A010051 (n + 1)

end

end A014684.P2598652331190683804

namespace A014684

/-- `n+1-A010051(n+1)` -/
def P2598652331190683804.Spec : Prop :=
  ∀ n, P2598652331190683804.a n = A014684 (n + 1)

theorem P2598652331190683804.correct : P2598652331190683804.Spec := by
  intro n
  simp only [A014684, Nat.add_sub_cancel, A014684.P2598652331190683804.a, A014684.P14857736222881351984.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014684

/-! ## A014684.P18167906996190093137

`∏{p}[1+n, C(#%n, #)]+n`
-/

namespace A014684.P18167906996190093137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p + n

end

end A014684.P18167906996190093137

namespace A014684

/-- `∏{p}[1+n, C(#%n, #)]+n` -/
def P18167906996190093137.Spec : Prop :=
  ∀ n, (P18167906996190093137.a n : ℤ) = A014684 (n + 1)

end A014684

/-! ## A014684.P17435977971741926251

`C(n, ∑{p}[1+n, C(#, n)])+n`
-/

namespace A014684.P17435977971741926251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) + n

end

end A014684.P17435977971741926251

namespace A014684

/-- `C(n, ∑{p}[1+n, C(#, n)])+n` -/
def P17435977971741926251.Spec : Prop :=
  ∀ n, (P17435977971741926251.a n : ℤ) = A014684 (n + 1)

end A014684

/-! ## A014684.P16134410827094556669

`2-C(2, ∑{e}[n+1, #])!+n`
-/

namespace A014684.P16134410827094556669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) + (n : ℤ)

end

end A014684.P16134410827094556669

namespace A014684

/-- `2-C(2, ∑{e}[n+1, #])!+n` -/
def P16134410827094556669.Spec : Prop :=
  ∀ n, P16134410827094556669.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P4147853637932299515

`floor(n+2-∏{p}[n+1, #/n])`
-/

namespace A014684.P4147853637932299515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) - ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n : ℚ)⌋

end

end A014684.P4147853637932299515

namespace A014684

/-- `floor(n+2-∏{p}[n+1, #/n])` -/
def P4147853637932299515.Spec : Prop :=
  ∀ n, P4147853637932299515.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P12203913065383434708

`n+2-∏{p}[n+1, ceil(#/n)]`
-/

namespace A014684.P12203913065383434708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉

end

end A014684.P12203913065383434708

namespace A014684

/-- `n+2-∏{p}[n+1, ceil(#/n)]` -/
def P12203913065383434708.Spec : Prop :=
  ∀ n, P12203913065383434708.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P618759077814135837

`n+1-∑{p}[n+1, val(#, n+1)]`
-/

namespace A014684.P618759077814135837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

end

end A014684.P618759077814135837

namespace A014684

/-- `n+1-∑{p}[n+1, val(#, n+1)]` -/
def P618759077814135837.Spec : Prop :=
  ∀ n, P618759077814135837.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P12856891066096106296

`n+1-∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A014684.P12856891066096106296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A014684.P12856891066096106296

namespace A014684

/-- `n+1-∑{p}[n+1, floor(#/(n+1))]` -/
def P12856891066096106296.Spec : Prop :=
  ∀ n, P12856891066096106296.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P15774046446412579927

`ceil(n+1-∑{p}[n+1, #/(n+1)])`
-/

namespace A014684.P15774046446412579927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ)⌉

end

end A014684.P15774046446412579927

namespace A014684

/-- `ceil(n+1-∑{p}[n+1, #/(n+1)])` -/
def P15774046446412579927.Spec : Prop :=
  ∀ n, P15774046446412579927.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P3982838066940457630

`round(n+1-∑{p}[n+1, #/(2*n)])`
-/

namespace A014684.P3982838066940457630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n : ℚ))

end

end A014684.P3982838066940457630

namespace A014684

/-- `round(n+1-∑{p}[n+1, #/(2*n)])` -/
def P3982838066940457630.Spec : Prop :=
  ∀ n, P3982838066940457630.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P4440757772920818953

`A113636(n+1)-1`
-/

namespace A014684.P4440757772920818953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113636 (n + 1) - 1

end

end A014684.P4440757772920818953

namespace A014684

/-- `A113636(n+1)-1` -/
def P4440757772920818953.Spec : Prop :=
  ∀ n, P4440757772920818953.a n = A014684 (n + 1)

theorem P4440757772920818953.correct : P4440757772920818953.Spec := by
  intro n
  simp only [A014684, Nat.add_sub_cancel, A014684.P4440757772920818953.a, A014684.P14857736222881351984.a, A005171, A005171.P15860856746370777121.a, A113636, A113636.P387307132510664875.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014684

/-! ## A014684.P8472983010860232559

`A143545(n+1)%(n+2)`
-/

namespace A014684.P8472983010860232559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) (n + 2 : ℤ)

end

end A014684.P8472983010860232559

namespace A014684

/-- `A143545(n+1)%(n+2)` -/
def P8472983010860232559.Spec : Prop :=
  ∀ n, P8472983010860232559.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P2822048993306222069

`and(1, A073898(n+1))+n`
-/

namespace A014684.P2822048993306222069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A073898 (n + 1)) + (n : ℤ)

end

end A014684.P2822048993306222069

namespace A014684

/-- `and(1, A073898(n+1))+n` -/
def P2822048993306222069.Spec : Prop :=
  ∀ n, P2822048993306222069.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P5009076757422485279

`and(1, A105560(n+1))+n`
-/

namespace A014684.P5009076757422485279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A105560 (n + 1)) + (n : ℤ)

end

end A014684.P5009076757422485279

namespace A014684

/-- `and(1, A105560(n+1))+n` -/
def P5009076757422485279.Spec : Prop :=
  ∀ n, P5009076757422485279.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P3592442687740406808

`and(1, A135141(n+1))+n`
-/

namespace A014684.P3592442687740406808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A135141 (n + 1)) + (n : ℤ)

end

end A014684.P3592442687740406808

namespace A014684

/-- `and(1, A135141(n+1))+n` -/
def P3592442687740406808.Spec : Prop :=
  ∀ n, P3592442687740406808.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P2973419444226043970

`C(n, A061397(n+1))+n`
-/

namespace A014684.P2973419444226043970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A061397 (n + 1)).toNat + n

end

end A014684.P2973419444226043970

namespace A014684

/-- `C(n, A061397(n+1))+n` -/
def P2973419444226043970.Spec : Prop :=
  ∀ n, (P2973419444226043970.a n : ℤ) = A014684 (n + 1)

end A014684

/-! ## A014684.P3970857359293962950

`C(n, A175028(n+1))+n`
-/

namespace A014684.P3970857359293962950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A175028 (n + 1)).toNat + n

end

end A014684.P3970857359293962950

namespace A014684

/-- `C(n, A175028(n+1))+n` -/
def P3970857359293962950.Spec : Prop :=
  ∀ n, (P3970857359293962950.a n : ℤ) = A014684 (n + 1)

end A014684

/-! ## A014684.P18115778423387501729

`Δ[n²]-A113637(n+1)`
-/

namespace A014684.P18115778423387501729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A113637 (n + 1)

end

end A014684.P18115778423387501729

namespace A014684

/-- `Δ[n²]-A113637(n+1)` -/
def P18115778423387501729.Spec : Prop :=
  ∀ n, P18115778423387501729.a n = A014684 (n + 1)

end A014684

/-! ## A014684.P10096782205234839937

`char[comp[A006093(n+1)]]+n`
-/

namespace A014684.P10096782205234839937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A014684.P10096782205234839937

namespace A014684

/-- `char[comp[A006093(n+1)]]+n` -/
def P10096782205234839937.Spec : Prop :=
  ∀ n, (P10096782205234839937.a n : ℤ) = A014684 (n + 1)

end A014684

/-!
# A014685: In sequence of positive integers add 1 to first prime and subtract 1 from 2nd prime; add 1 to 3rd prime and subtract 1 from 4th prime and so on.

The programs for A014685, the canonical program `A014685.P5961631929682614758` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014685 has offset 1).

The definition of A014685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014685.P5961631929682614758

`1-Δ[A065357(n)/2]+n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014685

/-- `1-Δ[A065357(n)/2]+n` -/
def P5961631929682614758.Spec : Prop :=
  ∀ n, P5961631929682614758.a n = (A014685 (n + 1) : ℚ)

end A014685

/-! ## A014685.P4551242076429941756

`Δ[(A048058(n)-A065357(n))/2]`
-/

namespace A014685.P4551242076429941756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048058 n - A065357 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014685.P4551242076429941756

namespace A014685

/-- `Δ[(A048058(n)-A065357(n))/2]` -/
def P4551242076429941756.Spec : Prop :=
  ∀ n, P4551242076429941756.a n = (A014685 (n + 1) : ℚ)

end A014685

/-! ## A014685.P10217966057519400827

`A062157(A049084(n+1))+1+n`
-/

namespace A014685.P10217966057519400827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A049084 (n + 1)).toNat + 1 + (n : ℤ)

end

end A014685.P10217966057519400827

namespace A014685

/-- `A062157(A049084(n+1))+1+n` -/
def P10217966057519400827.Spec : Prop :=
  ∀ n, P10217966057519400827.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P2149776772318605232

`A071986(n+1)+A131377(n)+n`
-/

namespace A014685.P2149776772318605232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (n + 1) + (A131377 n + (n : ℤ))

end

end A014685.P2149776772318605232

namespace A014685

/-- `A071986(n+1)+A131377(n)+n` -/
def P2149776772318605232.Spec : Prop :=
  ∀ n, P2149776772318605232.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P1602636154340822156

`char[A006093(n+1)]*A065357(n)+n+1`
-/

namespace A014685.P1602636154340822156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A065357 n + (n + 1 : ℤ)

end

end A014685.P1602636154340822156

namespace A014685

/-- `char[A006093(n+1)]*A065357(n)+n+1` -/
def P1602636154340822156.Spec : Prop :=
  ∀ n, P1602636154340822156.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P12447378322825916057

`A353364(n*A010051(n+1)+1)+n+1`
-/

namespace A014685.P12447378322825916057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353364 ((n : ℤ) * A010051 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A014685.P12447378322825916057

namespace A014685

/-- `A353364(n*A010051(n+1)+1)+n+1` -/
def P12447378322825916057.Spec : Prop :=
  ∀ n, P12447378322825916057.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P15473235875158326285

`1+Δ[A131378(n)]+n`
-/

namespace A014685.P15473235875158326285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A014685.P15473235875158326285

namespace A014685

/-- `1+Δ[A131378(n)]+n` -/
def P15473235875158326285.Spec : Prop :=
  ∀ n, P15473235875158326285.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P13128010720301461922

`1-Δ[A131377(n)]+n`
-/

namespace A014685.P13128010720301461922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A014685.P13128010720301461922

namespace A014685

/-- `1-Δ[A131377(n)]+n` -/
def P13128010720301461922.Spec : Prop :=
  ∀ n, P13128010720301461922.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P9384723977000454810

`Δ[and(1, A230980(n))]+n+1`
-/

namespace A014685.P9384723977000454810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A230980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A014685.P9384723977000454810

namespace A014685

/-- `Δ[and(1, A230980(n))]+n+1` -/
def P9384723977000454810.Spec : Prop :=
  ∀ n, P9384723977000454810.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P14893861119435164564

`Δ[A131378(n)+A000124(n)]`
-/

namespace A014685.P14893861119435164564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014685.P14893861119435164564

namespace A014685

/-- `Δ[A131378(n)+A000124(n)]` -/
def P14893861119435164564.Spec : Prop :=
  ∀ n, P14893861119435164564.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P16227279553535273765

`Δ[A131378(n)+A000217(n)]`
-/

namespace A014685.P16227279553535273765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014685.P16227279553535273765

namespace A014685

/-- `Δ[A131378(n)+A000217(n)]` -/
def P16227279553535273765.Spec : Prop :=
  ∀ n, P16227279553535273765.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P7604850899303071671

`Δ[A000124(n)-A131377(n)]`
-/

namespace A014685.P7604850899303071671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A131377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014685.P7604850899303071671

namespace A014685

/-- `Δ[A000124(n)-A131377(n)]` -/
def P7604850899303071671.Spec : Prop :=
  ∀ n, P7604850899303071671.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P15343888920717999853

`Δ[A000217(n)-A131377(n)]`
-/

namespace A014685.P15343888920717999853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A131377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014685.P15343888920717999853

namespace A014685

/-- `Δ[A000217(n)-A131377(n)]` -/
def P15343888920717999853.Spec : Prop :=
  ∀ n, P15343888920717999853.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P10317274622804863737

`A071986(n+1)+A071986(A151800(n))+n`
-/

namespace A014685.P10317274622804863737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (n + 1) + (A071986 (A151800 n).toNat + (n : ℤ))

end

end A014685.P10317274622804863737

namespace A014685

/-- `A071986(n+1)+A071986(A151800(n))+n` -/
def P10317274622804863737.Spec : Prop :=
  ∀ n, P10317274622804863737.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P3516253770385257487

`n+1-Δ[∑[char[A075860(n+1)]]%2]`
-/

namespace A014685.P3516253770385257487
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014685.P3516253770385257487

namespace A014685

/-- `n+1-Δ[∑[char[A075860(n+1)]]%2]` -/
def P3516253770385257487.Spec : Prop :=
  ∀ n, P3516253770385257487.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P2394569157795733756

`A008619(2*n)-Δ[A065357(n)/2]`
-/

namespace A014685.P2394569157795733756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065357 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) - (f1 (n + 1) - f1 n)

end

end A014685.P2394569157795733756

namespace A014685

/-- `A008619(2*n)-Δ[A065357(n)/2]` -/
def P2394569157795733756.Spec : Prop :=
  ∀ n, P2394569157795733756.a n = (A014685 (n + 1) : ℚ)

end A014685

/-! ## A014685.P12539887728776376588

`A008619(Δ[n²-A065357(n)])`
-/

namespace A014685.P12539887728776376588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A014685.P12539887728776376588

namespace A014685

/-- `A008619(Δ[n²-A065357(n)])` -/
def P12539887728776376588.Spec : Prop :=
  ∀ n, P12539887728776376588.a n = A014685 (n + 1)

end A014685

/-! ## A014685.P5455635738321373568

`A332823(n*char[p?[∏{p}[n, #]]-1]+1)+n+1`
-/

namespace A014685.P5455635738321373568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) + (n + 1 : ℤ)

end

end A014685.P5455635738321373568

namespace A014685

/-- `A332823(n*char[p?[∏{p}[n, #]]-1]+1)+n+1` -/
def P5455635738321373568.Spec : Prop :=
  ∀ n, P5455635738321373568.a n = A014685 (n + 1)

end A014685

/-!
# A014686: In sequence of prime numbers add 1 to first prime, 3rd prime, fifth prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

The programs for A014686, the canonical program `A014686.P12969874611921445345` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014686 has offset 1).

The definition of A014686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014686.P12969874611921445345

`A000040(n+1)-(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014686

/-- `A000040(n+1)-(-1)^(n+1)` -/
def P12969874611921445345.Spec : Prop :=
  ∀ n, P12969874611921445345.a n = A014686 (n + 1)

theorem P12969874611921445345.correct : P12969874611921445345.Spec := by
  intro n
  simp only [A014686, Nat.add_sub_cancel]

end A014686

/-! ## A014686.P1991790412711406413

`abs(1-A273960(n+1))`
-/

namespace A014686.P1991790412711406413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A273960 (n + 1)|

end

end A014686.P1991790412711406413

namespace A014686

/-- `abs(1-A273960(n+1))` -/
def P1991790412711406413.Spec : Prop :=
  ∀ n, P1991790412711406413.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P6655391898855673788

`Δ[A007504(n)+n%2]`
-/

namespace A014686.P6655391898855673788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014686.P6655391898855673788

namespace A014686

/-- `Δ[A007504(n)+n%2]` -/
def P6655391898855673788.Spec : Prop :=
  ∀ n, P6655391898855673788.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P2362344735389482438

`A014692(n+1)+xor(1, n)`
-/

namespace A014686.P2362344735389482438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (Nat.xor 1 n : ℤ)

end

end A014686.P2362344735389482438

namespace A014686

/-- `A014692(n+1)+xor(1, n)` -/
def P2362344735389482438.Spec : Prop :=
  ∀ n, P2362344735389482438.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P7917450333829065217

`A001043(n)-a(n-1)` with `a(0)=3`
-/

namespace A014686.P7917450333829065217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001043 n - a (n - 1)

end

end A014686.P7917450333829065217

namespace A014686

/-- `A001043(n)-a(n-1)` -/
def P7917450333829065217.Spec : Prop :=
  ∀ n, P7917450333829065217.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P2243280095138465271

`(-1)^n+A000040(n+1)`
-/

namespace A014686.P2243280095138465271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A000040 (n + 1)

end

end A014686.P2243280095138465271

namespace A014686

/-- `(-1)^n+A000040(n+1)` -/
def P2243280095138465271.Spec : Prop :=
  ∀ n, P2243280095138465271.a n = A014686 (n + 1)

theorem P2243280095138465271.correct : P2243280095138465271.Spec := by
  intro n
  simp only [A014686, Nat.add_sub_cancel, A014686.P2243280095138465271.a, A014686.P12969874611921445345.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014686

/-! ## A014686.P13221921549240243707

`A011974(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A014686.P13221921549240243707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A011974 (n + 1) - a (n - 1)

end

end A014686.P13221921549240243707

namespace A014686

/-- `A011974(n+1)-a(n-1)` -/
def P13221921549240243707.Spec : Prop :=
  ∀ n, P13221921549240243707.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P8324895496527831899

`A033999(n)+Δ[A007504(n)]`
-/

namespace A014686.P8324895496527831899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (f1 (n + 1) - f1 n)

end

end A014686.P8324895496527831899

namespace A014686

/-- `A033999(n)+Δ[A007504(n)]` -/
def P8324895496527831899.Spec : Prop :=
  ∀ n, P8324895496527831899.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P4830070478508855721

`A014692(n+1)+A004442(n)`
-/

namespace A014686.P4830070478508855721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + A004442 n

end

end A014686.P4830070478508855721

namespace A014686

/-- `A014692(n+1)+A004442(n)` -/
def P4830070478508855721.Spec : Prop :=
  ∀ n, P4830070478508855721.a n = A014686 (n + 1)

theorem P4830070478508855721.correct : P4830070478508855721.Spec := by
  intro n
  simp only [A014686, Nat.add_sub_cancel, A014686.P4830070478508855721.a, A014686.P12969874611921445345.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004442, A004442.P2439415777187857398.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014686

/-! ## A014686.P8749420514785359819

`A036467(n)+A008347(n+1)`
-/

namespace A014686.P8749420514785359819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n + A008347 (n + 1)

end

end A014686.P8749420514785359819

namespace A014686

/-- `A036467(n)+A008347(n+1)` -/
def P8749420514785359819.Spec : Prop :=
  ∀ n, P8749420514785359819.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P6260943329242717552

`A105397(n)+A086801(n+1)`
-/

namespace A014686.P6260943329242717552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n + A086801 (n + 1)

end

end A014686.P6260943329242717552

namespace A014686

/-- `A105397(n)+A086801(n+1)` -/
def P6260943329242717552.Spec : Prop :=
  ∀ n, P6260943329242717552.a n = A014686 (n + 1)

theorem P6260943329242717552.correct : P6260943329242717552.Spec := by
  intro n
  simp only [A014686, Nat.add_sub_cancel, A014686.P6260943329242717552.a, A014686.P12969874611921445345.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, A105397, A105397.P12786109591907576801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014686

/-! ## A014686.P446911339816672117

`A114285(n)+A095116(n+1)`
-/

namespace A014686.P446911339816672117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n + A095116 (n + 1)

end

end A014686.P446911339816672117

namespace A014686

/-- `A114285(n)+A095116(n+1)` -/
def P446911339816672117.Spec : Prop :=
  ∀ n, P446911339816672117.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P4312343663971739793

`A176040(n)+A040976(n+1)`
-/

namespace A014686.P4312343663971739793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n + A040976 (n + 1)

end

end A014686.P4312343663971739793

namespace A014686

/-- `A176040(n)+A040976(n+1)` -/
def P4312343663971739793.Spec : Prop :=
  ∀ n, P4312343663971739793.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P14553744498838429748

`A008864(n+1)-A010673(n)`
-/

namespace A014686.P14553744498838429748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A010673 n

end

end A014686.P14553744498838429748

namespace A014686

/-- `A008864(n+1)-A010673(n)` -/
def P14553744498838429748.Spec : Prop :=
  ∀ n, P14553744498838429748.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P1151582844685265873

`A052147(n+1)-A010684(n)`
-/

namespace A014686.P1151582844685265873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A010684 n

end

end A014686.P1151582844685265873

namespace A014686

/-- `A052147(n+1)-A010684(n)` -/
def P1151582844685265873.Spec : Prop :=
  ∀ n, P1151582844685265873.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P11832830559104833152

`A107622(n+1)-A010685(n)`
-/

namespace A014686.P11832830559104833152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107622 (n + 1) - A010685 n

end

end A014686.P11832830559104833152

namespace A014686

/-- `A107622(n+1)-A010685(n)` -/
def P11832830559104833152.Spec : Prop :=
  ∀ n, P11832830559104833152.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P9094220777428102348

`A107623(n+1)-A010693(n)`
-/

namespace A014686.P9094220777428102348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107623 (n + 1) - A010693 n

end

end A014686.P9094220777428102348

namespace A014686

/-- `A107623(n+1)-A010693(n)` -/
def P9094220777428102348.Spec : Prop :=
  ∀ n, P9094220777428102348.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P1632174828941373290

`A113935(n+1)-A010694(n)`
-/

namespace A014686.P1632174828941373290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A010694 n

end

end A014686.P1632174828941373290

namespace A014686

/-- `A113935(n+1)-A010694(n)` -/
def P1632174828941373290.Spec : Prop :=
  ∀ n, P1632174828941373290.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P11184535816428384578

`A139049(n+1)-A010718(n)`
-/

namespace A014686.P11184535816428384578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - A010718 n

end

end A014686.P11184535816428384578

namespace A014686

/-- `A139049(n+1)-A010718(n)` -/
def P11184535816428384578.Spec : Prop :=
  ∀ n, P11184535816428384578.a n = A014686 (n + 1)

end A014686

/-! ## A014686.P7199686831916211935

`A140353(n+1)-A010733(n)`
-/

namespace A014686.P7199686831916211935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - A010733 n

end

end A014686.P7199686831916211935

namespace A014686

/-- `A140353(n+1)-A010733(n)` -/
def P7199686831916211935.Spec : Prop :=
  ∀ n, P7199686831916211935.a n = A014686 (n + 1)

end A014686

/-!
# A014687: In sequence of odd primes add 1 to first prime, 3rd prime, 5th prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

The programs for A014687, the canonical program `A014687.P7527588623448438610` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014687 has offset 1).

The definition of A014687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014687.P7527588623448438610

`A000040(n+2)+(-1)^n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014687

/-- `A000040(n+2)+(-1)^n` -/
def P7527588623448438610.Spec : Prop :=
  ∀ n, P7527588623448438610.a n = A014687 (n + 1)

theorem P7527588623448438610.correct : P7527588623448438610.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel]

end A014687

/-! ## A014687.P8092002982009889479

`A000040(n+1)+A000040(n+2)-a(n-1)` with `a(0)=4`
-/

namespace A014687.P8092002982009889479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000040 (n + 1) + A000040 (n + 2) - a (n - 1)

end

end A014687.P8092002982009889479

namespace A014687

/-- `A000040(n+1)+A000040(n+2)-a(n-1)` -/
def P8092002982009889479.Spec : Prop :=
  ∀ n, P8092002982009889479.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P15536541888361836775

`p?[2*n+1]+(-1)^n`
-/

namespace A014687.P15536541888361836775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (-1) ^ n

end

end A014687.P15536541888361836775

namespace A014687

/-- `p?[2*n+1]+(-1)^n` -/
def P15536541888361836775.Spec : Prop :=
  ∀ n, P15536541888361836775.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P17639163679572947510

`A065091(n+1)+(-1)^n`
-/

namespace A014687.P17639163679572947510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (-1) ^ n

end

end A014687.P17639163679572947510

namespace A014687

/-- `A065091(n+1)+(-1)^n` -/
def P17639163679572947510.Spec : Prop :=
  ∀ n, P17639163679572947510.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P3985899742473733382

`A031131(n)+a(n-2)` with `a(0)=4, a(1)=4`
-/

namespace A014687.P3985899742473733382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  A031131 n + a (n - 2)

end

end A014687.P3985899742473733382

namespace A014687

/-- `A031131(n)+a(n-2)` -/
def P3985899742473733382.Spec : Prop :=
  ∀ n, P3985899742473733382.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P6381200949043490845

`Δ[or(1, A007504(n+1)-1)]`
-/

namespace A014687.P6381200949043490845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007504 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014687.P6381200949043490845

namespace A014687

/-- `Δ[or(1, A007504(n+1)-1)]` -/
def P6381200949043490845.Spec : Prop :=
  ∀ n, P6381200949043490845.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P17274649285808463606

`A001043(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A014687.P17274649285808463606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A001043 (n + 1) - a (n - 1)

end

end A014687.P17274649285808463606

namespace A014687

/-- `A001043(n+1)-a(n-1)` -/
def P17274649285808463606.Spec : Prop :=
  ∀ n, P17274649285808463606.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P2502723751711331857

`A011974(n+2)-a(n-1)` with `a(0)=4`
-/

namespace A014687.P2502723751711331857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A011974 (n + 2) - a (n - 1)

end

end A014687.P2502723751711331857

namespace A014687

/-- `A011974(n+2)-a(n-1)` -/
def P2502723751711331857.Spec : Prop :=
  ∀ n, P2502723751711331857.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P174031330192856567

`A154115(n+1)+A105397(n)`
-/

namespace A014687.P174031330192856567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A105397 n

end

end A014687.P174031330192856567

namespace A014687

/-- `A154115(n+1)+A105397(n)` -/
def P174031330192856567.Spec : Prop :=
  ∀ n, P174031330192856567.a n = A014687 (n + 1)

theorem P174031330192856567.correct : P174031330192856567.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P174031330192856567.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A105397, A105397.P12786109591907576801.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P14616733687148993627

`A048974(n+1)-A010684(n)`
-/

namespace A014687.P14616733687148993627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - A010684 n

end

end A014687.P14616733687148993627

namespace A014687

/-- `A048974(n+1)-A010684(n)` -/
def P14616733687148993627.Spec : Prop :=
  ∀ n, P14616733687148993627.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P10061974029869716990

`A298252(n+1)-A010694(n)`
-/

namespace A014687.P10061974029869716990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) - A010694 n

end

end A014687.P10061974029869716990

namespace A014687

/-- `A298252(n+1)-A010694(n)` -/
def P10061974029869716990.Spec : Prop :=
  ∀ n, P10061974029869716990.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P5524805749867134946

`A014686(n+1)+A001223(n+1)`
-/

namespace A014687.P5524805749867134946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + A001223 (n + 1)

end

end A014687.P5524805749867134946

namespace A014687

/-- `A014686(n+1)+A001223(n+1)` -/
def P5524805749867134946.Spec : Prop :=
  ∀ n, P5524805749867134946.a n = A014687 (n + 1)

theorem P5524805749867134946.correct : P5524805749867134946.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P5524805749867134946.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A014686, A014686.P12969874611921445345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P5421464283125773562

`A001043(n+1)-A172022(n+1)`
-/

namespace A014687.P5421464283125773562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A172022 (n + 1)

end

end A014687.P5421464283125773562

namespace A014687

/-- `A001043(n+1)-A172022(n+1)` -/
def P5421464283125773562.Spec : Prop :=
  ∀ n, P5421464283125773562.a n = A014687 (n + 1)

theorem P5421464283125773562.correct : P5421464283125773562.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P5421464283125773562.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A172022, A172022.P2113971824774684846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P9655622828492937319

`A172022(n+2)`
-/

namespace A014687.P9655622828492937319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172022 (n + 2)

end

end A014687.P9655622828492937319

namespace A014687

/-- `A172022(n+2)` -/
def P9655622828492937319.Spec : Prop :=
  ∀ n, P9655622828492937319.a n = A014687 (n + 1)

theorem P9655622828492937319.correct : P9655622828492937319.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P9655622828492937319.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172022, A172022.P2113971824774684846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P13986345160373870352

`abs(A273960(n+2)+1)`
-/

namespace A014687.P13986345160373870352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 2) + 1|

end

end A014687.P13986345160373870352

namespace A014687

/-- `abs(A273960(n+2)+1)` -/
def P13986345160373870352.Spec : Prop :=
  ∀ n, P13986345160373870352.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P3230561196988473207

`A033999(n)+A000040(n+2)`
-/

namespace A014687.P3230561196988473207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A000040 (n + 2)

end

end A014687.P3230561196988473207

namespace A014687

/-- `A033999(n)+A000040(n+2)` -/
def P3230561196988473207.Spec : Prop :=
  ∀ n, P3230561196988473207.a n = A014687 (n + 1)

theorem P3230561196988473207.correct : P3230561196988473207.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P3230561196988473207.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P1486553433524987791

`A033999(n)+A006005(n+2)`
-/

namespace A014687.P1486553433524987791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A006005 (n + 2)

end

end A014687.P1486553433524987791

namespace A014687

/-- `A033999(n)+A006005(n+2)` -/
def P1486553433524987791.Spec : Prop :=
  ∀ n, P1486553433524987791.a n = A014687 (n + 1)

theorem P1486553433524987791.correct : P1486553433524987791.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P1486553433524987791.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A033999, A033999.P17703899380244199787.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P16864737462177111750

`A105397(n)+A086801(n+2)`
-/

namespace A014687.P16864737462177111750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n + A086801 (n + 2)

end

end A014687.P16864737462177111750

namespace A014687

/-- `A105397(n)+A086801(n+2)` -/
def P16864737462177111750.Spec : Prop :=
  ∀ n, P16864737462177111750.a n = A014687 (n + 1)

theorem P16864737462177111750.correct : P16864737462177111750.Spec := by
  intro n
  simp only [A014687, Nat.add_sub_cancel, A014687.P16864737462177111750.a, A014687.P7527588623448438610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, A105397, A105397.P12786109591907576801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014687

/-! ## A014687.P2316318415622339053

`A176040(n)+A040976(n+2)`
-/

namespace A014687.P2316318415622339053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n + A040976 (n + 2)

end

end A014687.P2316318415622339053

namespace A014687

/-- `A176040(n)+A040976(n+2)` -/
def P2316318415622339053.Spec : Prop :=
  ∀ n, P2316318415622339053.a n = A014687 (n + 1)

end A014687

/-! ## A014687.P2106881375772161714

`A008864(n+2)-A010673(n)`
-/

namespace A014687.P2106881375772161714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) - A010673 n

end

end A014687.P2106881375772161714

namespace A014687

/-- `A008864(n+2)-A010673(n)` -/
def P2106881375772161714.Spec : Prop :=
  ∀ n, P2106881375772161714.a n = A014687 (n + 1)

end A014687

/-!
# A014688: a(n) = n-th prime + n.

The programs for A014688, the canonical program `A014688.P4990984272387159238` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014688 has offset 1).

The definition of A014688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014688.P7735459923922784604

`n+1+A000040(n+1)`
-/

namespace A014688.P7735459923922784604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000040 (n + 1)

end

end A014688.P7735459923922784604

namespace A014688

/-- `n+1+A000040(n+1)` -/
def P7735459923922784604.Spec : Prop :=
  ∀ n, P7735459923922784604.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P233452242676808581

`A078916(n+1)-(n+1)`
-/

namespace A014688.P233452242676808581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - (n + 1 : ℤ)

end

end A014688.P233452242676808581

namespace A014688

/-- `A078916(n+1)-(n+1)` -/
def P233452242676808581.Spec : Prop :=
  ∀ n, P233452242676808581.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P12850611189239587141

`a(n-1)+A001223(n)+1` with `a(0)=3`
-/

namespace A014688.P12850611189239587141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + A001223 n + 1

end

end A014688.P12850611189239587141

namespace A014688

/-- `a(n-1)+A001223(n)+1` -/
def P12850611189239587141.Spec : Prop :=
  ∀ n, P12850611189239587141.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P3536178116092668873

`A167136(n+2)`
-/

namespace A014688.P3536178116092668873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 2)

end

end A014688.P3536178116092668873

namespace A014688

/-- `A167136(n+2)` -/
def P3536178116092668873.Spec : Prop :=
  ∀ n, P3536178116092668873.a n = A014688 (n + 1)

theorem P3536178116092668873.correct : P3536178116092668873.Spec := by
  intro n
  simp only [A014688, Nat.add_sub_cancel, A014688.P3536178116092668873.a, A014688.P4990984272387159238.a, A090178, A090178.P3922482968985292774.a, A167136, A167136.P17162096113252504066.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014688

/-! ## A014688.P4990984272387159238

`A090178(n+2)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014688

/-- `A090178(n+2)-1` -/
def P4990984272387159238.Spec : Prop :=
  ∀ n, P4990984272387159238.a n = A014688 (n + 1)

theorem P4990984272387159238.correct : P4990984272387159238.Spec := by
  intro n
  simp only [A014688, Nat.add_sub_cancel]

end A014688

/-! ## A014688.P15269368315093949030

`n+1+A008578(n+2)`
-/

namespace A014688.P15269368315093949030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A008578 (n + 2)

end

end A014688.P15269368315093949030

namespace A014688

/-- `n+1+A008578(n+2)` -/
def P15269368315093949030.Spec : Prop :=
  ∀ n, P15269368315093949030.a n = A014688 (n + 1)

theorem P15269368315093949030.correct : P15269368315093949030.Spec := by
  intro n
  simp only [A014688, Nat.add_sub_cancel, A014688.P15269368315093949030.a, A014688.P4990984272387159238.a, A008578, A008578.P3639467937083264764.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014688

/-! ## A014688.P7506179539876317019

`n+1+A158611(n+3)`
-/

namespace A014688.P7506179539876317019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A158611 (n + 3)

end

end A014688.P7506179539876317019

namespace A014688

/-- `n+1+A158611(n+3)` -/
def P7506179539876317019.Spec : Prop :=
  ∀ n, P7506179539876317019.a n = A014688 (n + 1)

theorem P7506179539876317019.correct : P7506179539876317019.Spec := by
  intro n
  simp only [A014688, Nat.add_sub_cancel, A014688.P7506179539876317019.a, A014688.P4990984272387159238.a, A090178, A090178.P3922482968985292774.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008578, A008578.P3639467937083264764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014688

/-! ## A014688.P2488061027417427205

`∑[A230847(n+1)]`
-/

namespace A014688.P2488061027417427205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014688.P2488061027417427205

namespace A014688

/-- `∑[A230847(n+1)]` -/
def P2488061027417427205.Spec : Prop :=
  ∀ n, P2488061027417427205.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P14794644214052909909

`A095116(n+1)+1`
-/

namespace A014688.P14794644214052909909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + 1

end

end A014688.P14794644214052909909

namespace A014688

/-- `A095116(n+1)+1` -/
def P14794644214052909909.Spec : Prop :=
  ∀ n, P14794644214052909909.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P2177580944379499067

`A008864(n+1)+n`
-/

namespace A014688.P2177580944379499067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (n : ℤ)

end

end A014688.P2177580944379499067

namespace A014688

/-- `A008864(n+1)+n` -/
def P2177580944379499067.Spec : Prop :=
  ∀ n, P2177580944379499067.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P13683160537101779968

`A028815(n+1)+n`
-/

namespace A014688.P13683160537101779968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + (n : ℤ)

end

end A014688.P13683160537101779968

namespace A014688

/-- `A028815(n+1)+n` -/
def P13683160537101779968.Spec : Prop :=
  ∀ n, P13683160537101779968.a n = A014688 (n + 1)

theorem P13683160537101779968.correct : P13683160537101779968.Spec := by
  intro n
  simp only [A014688, Nat.add_sub_cancel, A014688.P13683160537101779968.a, A014688.P4990984272387159238.a, A028815, A028815.P810525423351225743.a, A090178, A090178.P3922482968985292774.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014688

/-! ## A014688.P15488816366199905677

`∑[A054541(n+1)+1]`
-/

namespace A014688.P15488816366199905677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014688.P15488816366199905677

namespace A014688

/-- `∑[A054541(n+1)+1]` -/
def P15488816366199905677.Spec : Prop :=
  ∀ n, P15488816366199905677.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P9804747400398031476

`∑[A230846(n+1)]+1`
-/

namespace A014688.P9804747400398031476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A014688.P9804747400398031476

namespace A014688

/-- `∑[A230846(n+1)]+1` -/
def P9804747400398031476.Spec : Prop :=
  ∀ n, P9804747400398031476.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P17966854986660680154

`∑[A076368(n+1)]+2`
-/

namespace A014688.P17966854986660680154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A014688.P17966854986660680154

namespace A014688

/-- `∑[A076368(n+1)]+2` -/
def P17966854986660680154.Spec : Prop :=
  ∀ n, P17966854986660680154.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P14407232601470727885

`sqrt(A110833(n+1))+n`
-/

namespace A014688.P14407232601470727885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ) + (n : ℝ)

end

end A014688.P14407232601470727885

namespace A014688

/-- `sqrt(A110833(n+1))+n` -/
def P14407232601470727885.Spec : Prop :=
  ∀ n, P14407232601470727885.a n = (A014688 (n + 1) : ℝ)

end A014688

/-! ## A014688.P17877660747867161549

`∑[A125266(n+1)]+n`
-/

namespace A014688.P17877660747867161549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A014688.P17877660747867161549

namespace A014688

/-- `∑[A125266(n+1)]+n` -/
def P17877660747867161549.Spec : Prop :=
  ∀ n, P17877660747867161549.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P3109038133068509223

`Δ[A007504(n)]+n+1`
-/

namespace A014688.P3109038133068509223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A014688.P3109038133068509223

namespace A014688

/-- `Δ[A007504(n)]+n+1` -/
def P3109038133068509223.Spec : Prop :=
  ∀ n, P3109038133068509223.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P2523227541399260488

`1+A000040(n+1)+n`
-/

namespace A014688.P2523227541399260488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A000040 (n + 1) + (n : ℤ))

end

end A014688.P2523227541399260488

namespace A014688

/-- `1+A000040(n+1)+n` -/
def P2523227541399260488.Spec : Prop :=
  ∀ n, P2523227541399260488.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P9299339609847728900

`A006093(n+1)+2+n`
-/

namespace A014688.P9299339609847728900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2 + (n : ℤ)

end

end A014688.P9299339609847728900

namespace A014688

/-- `A006093(n+1)+2+n` -/
def P9299339609847728900.Spec : Prop :=
  ∀ n, P9299339609847728900.a n = A014688 (n + 1)

end A014688

/-! ## A014688.P14481379086504515361

`A052147(n+1)-1+n`
-/

namespace A014688.P14481379086504515361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 1 + (n : ℤ)

end

end A014688.P14481379086504515361

namespace A014688

/-- `A052147(n+1)-1+n` -/
def P14481379086504515361.Spec : Prop :=
  ∀ n, P14481379086504515361.a n = A014688 (n + 1)

end A014688

/-!
# A014689: a(n) = prime(n)-n, the number of nonprimes less than prime(n).

The programs for A014689, the canonical program `A014689.P6286543075765329050` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014689 has offset 1).

The definition of A014689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)` (program `A014689.P6286543075765329050`, by `A014689.P6286543075765329050.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014689.P6286543075765329050

`A000040(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014689

/-- `A000040(n+1)-(n+1)` -/
def P6286543075765329050.Spec : Prop :=
  ∀ n, P6286543075765329050.a n = A014689 (n + 1)

theorem P6286543075765329050.correct : P6286543075765329050.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel]

end A014689

/-! ## A014689.P11875527393103686722

`∑[A075526(n)]-n`
-/

namespace A014689.P11875527393103686722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014689.P11875527393103686722

namespace A014689

/-- `∑[A075526(n)]-n` -/
def P11875527393103686722.Spec : Prop :=
  ∀ n, P11875527393103686722.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P17184114323500629589

`1+A065890(1+n)`
-/

namespace A014689.P17184114323500629589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A065890 (1 + n)

end

end A014689.P17184114323500629589

namespace A014689

/-- `1+A065890(1+n)` -/
def P17184114323500629589.Spec : Prop :=
  ∀ n, P17184114323500629589.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P14294678286420458128

`A014692(n+1)-1`
-/

namespace A014689.P14294678286420458128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 1

end

end A014689.P14294678286420458128

namespace A014689

/-- `A014692(n+1)-1` -/
def P14294678286420458128.Spec : Prop :=
  ∀ n, P14294678286420458128.a n = A014689 (n + 1)

theorem P14294678286420458128.correct : P14294678286420458128.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P14294678286420458128.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P10651125379240800643

`A131733(n+1)+n`
-/

namespace A014689.P10651125379240800643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + (n : ℤ)

end

end A014689.P10651125379240800643

namespace A014689

/-- `A131733(n+1)+n` -/
def P10651125379240800643.Spec : Prop :=
  ∀ n, P10651125379240800643.a n = A014689 (n + 1)

theorem P10651125379240800643.correct : P10651125379240800643.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P10651125379240800643.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P3456970834266250440

`A006093(n+1)-n`
-/

namespace A014689.P3456970834266250440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n : ℤ)

end

end A014689.P3456970834266250440

namespace A014689

/-- `A006093(n+1)-n` -/
def P3456970834266250440.Spec : Prop :=
  ∀ n, P3456970834266250440.a n = A014689 (n + 1)

theorem P3456970834266250440.correct : P3456970834266250440.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P3456970834266250440.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P10585336357219887675

`∑[A054541(n+1)-1]`
-/

namespace A014689.P10585336357219887675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014689.P10585336357219887675

namespace A014689

/-- `∑[A054541(n+1)-1]` -/
def P10585336357219887675.Spec : Prop :=
  ∀ n, P10585336357219887675.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P15998210686961633751

`∑[A230847(n+1)-2]`
-/

namespace A014689.P15998210686961633751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014689.P15998210686961633751

namespace A014689

/-- `∑[A230847(n+1)-2]` -/
def P15998210686961633751.Spec : Prop :=
  ∀ n, P15998210686961633751.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P15100473333657873141

`sqrt(A005722(n+1))-n`
-/

namespace A014689.P15100473333657873141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) - (n : ℝ)

end

end A014689.P15100473333657873141

namespace A014689

/-- `sqrt(A005722(n+1))-n` -/
def P15100473333657873141.Spec : Prop :=
  ∀ n, P15100473333657873141.a n = (A014689 (n + 1) : ℝ)

end A014689

/-! ## A014689.P18190576058908290756

`Δ[A007504(n)]-(n+1)`
-/

namespace A014689.P18190576058908290756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A014689.P18190576058908290756

namespace A014689

/-- `Δ[A007504(n)]-(n+1)` -/
def P18190576058908290756.Spec : Prop :=
  ∀ n, P18190576058908290756.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P619128975491034487

`(A239636(n+1)+1)/2`
-/

namespace A014689.P619128975491034487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239636 (n + 1) + 1 : ℚ) / 2

end

end A014689.P619128975491034487

namespace A014689

/-- `(A239636(n+1)+1)/2` -/
def P619128975491034487.Spec : Prop :=
  ∀ n, P619128975491034487.a n = (A014689 (n + 1) : ℚ)

theorem P619128975491034487.correct : P619128975491034487.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P619128975491034487.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A239636, A239636.P9315992942707104834.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P14600345397674095863

`A040976(n+1)+1-n`
-/

namespace A014689.P14600345397674095863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - (n : ℤ))

end

end A014689.P14600345397674095863

namespace A014689

/-- `A040976(n+1)+1-n` -/
def P14600345397674095863.Spec : Prop :=
  ∀ n, P14600345397674095863.a n = A014689 (n + 1)

theorem P14600345397674095863.correct : P14600345397674095863.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P14600345397674095863.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P12264593538210599114

`A173072(n+1)-1+n`
-/

namespace A014689.P12264593538210599114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) - 1 + (n : ℤ)

end

end A014689.P12264593538210599114

namespace A014689

/-- `A173072(n+1)-1+n` -/
def P12264593538210599114.Spec : Prop :=
  ∀ n, P12264593538210599114.a n = A014689 (n + 1)

theorem P12264593538210599114.correct : P12264593538210599114.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P12264593538210599114.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P272957542926369178

`A008864(n+1)-(n+2)`
-/

namespace A014689.P272957542926369178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (n + 2 : ℤ)

end

end A014689.P272957542926369178

namespace A014689

/-- `A008864(n+1)-(n+2)` -/
def P272957542926369178.Spec : Prop :=
  ∀ n, P272957542926369178.a n = A014689 (n + 1)

theorem P272957542926369178.correct : P272957542926369178.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P272957542926369178.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P1614324422366785462

`A028815(n+1)-(n+2)`
-/

namespace A014689.P1614324422366785462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - (n + 2 : ℤ)

end

end A014689.P1614324422366785462

namespace A014689

/-- `A028815(n+1)-(n+2)` -/
def P1614324422366785462.Spec : Prop :=
  ∀ n, P1614324422366785462.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P1716153584759897976

`A052147(n+1)-(n+3)`
-/

namespace A014689.P1716153584759897976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (n + 3 : ℤ)

end

end A014689.P1716153584759897976

namespace A014689

/-- `A052147(n+1)-(n+3)` -/
def P1716153584759897976.Spec : Prop :=
  ∀ n, P1716153584759897976.a n = A014689 (n + 1)

theorem P1716153584759897976.correct : P1716153584759897976.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P1716153584759897976.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P535605572451084751

`A037168(n+1)/2-n`
-/

namespace A014689.P535605572451084751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037168 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A014689.P535605572451084751

namespace A014689

/-- `A037168(n+1)/2-n` -/
def P535605572451084751.Spec : Prop :=
  ∀ n, P535605572451084751.a n = (A014689 (n + 1) : ℚ)

theorem P535605572451084751.correct : P535605572451084751.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P535605572451084751.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P11418686974629161838

`A046933(n)+a(n-1)` with `a(0)=1`
-/

namespace A014689.P11418686974629161838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046933 n + a (n - 1)

end

end A014689.P11418686974629161838

namespace A014689

/-- `A046933(n)+a(n-1)` -/
def P11418686974629161838.Spec : Prop :=
  ∀ n, P11418686974629161838.a n = A014689 (n + 1)

end A014689

/-! ## A014689.P13177675713073032499

`A095116(n+1)-Δ[n²]`
-/

namespace A014689.P13177675713073032499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014689.P13177675713073032499

namespace A014689

/-- `A095116(n+1)-Δ[n²]` -/
def P13177675713073032499.Spec : Prop :=
  ∀ n, P13177675713073032499.a n = A014689 (n + 1)

theorem P13177675713073032499.correct : P13177675713073032499.Spec := by
  intro n
  simp only [A014689, Nat.add_sub_cancel, A014689.P13177675713073032499.f1, A014689.P13177675713073032499.a, A014689.P6286543075765329050.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014689

/-! ## A014689.P12511413695613410851

`A046930(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A014689.P12511413695613410851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A046930 n + a (n - 2)

end

end A014689.P12511413695613410851

namespace A014689

/-- `A046930(n)+a(n-2)` -/
def P12511413695613410851.Spec : Prop :=
  ∀ n, P12511413695613410851.a n = A014689 (n + 1)

end A014689

/-!
# A014690: a(n) = n + prime(n+1).

The programs for A014690, the canonical program `A014690.P15659938011012629912` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014690 has offset 1).

The definition of A014690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000040(n+2)` (program `A014690.P15659938011012629912`, by `A014690.P15659938011012629912.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014690.P15659938011012629912

`n+1+A000040(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014690

/-- `n+1+A000040(n+2)` -/
def P15659938011012629912.Spec : Prop :=
  ∀ n, P15659938011012629912.a n = A014690 (n + 1)

theorem P15659938011012629912.correct : P15659938011012629912.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel]

end A014690

/-! ## A014690.P2594226108511907338

`p?[2*n+1]+1+n`
-/

namespace A014690.P2594226108511907338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 + n

end

end A014690.P2594226108511907338

namespace A014690

/-- `p?[2*n+1]+1+n` -/
def P2594226108511907338.Spec : Prop :=
  ∀ n, (P2594226108511907338.a n : ℤ) = A014690 (n + 1)

end A014690

/-! ## A014690.P6148084672877746725

`p?[n+1+n]+n+1`
-/

namespace A014690.P6148084672877746725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1)

end

end A014690.P6148084672877746725

namespace A014690

/-- `p?[n+1+n]+n+1` -/
def P6148084672877746725.Spec : Prop :=
  ∀ n, (P6148084672877746725.a n : ℤ) = A014690 (n + 1)

end A014690

/-! ## A014690.P9195044940034633922

`A055670(n+2)+n`
-/

namespace A014690.P9195044940034633922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) + (n : ℤ)

end

end A014690.P9195044940034633922

namespace A014690

/-- `A055670(n+2)+n` -/
def P9195044940034633922.Spec : Prop :=
  ∀ n, P9195044940034633922.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P2765334546820900596

`A065091(n+1)+1+n`
-/

namespace A014690.P2765334546820900596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 1 + (n : ℤ)

end

end A014690.P2765334546820900596

namespace A014690

/-- `A065091(n+1)+1+n` -/
def P2765334546820900596.Spec : Prop :=
  ∀ n, P2765334546820900596.a n = A014690 (n + 1)

theorem P2765334546820900596.correct : P2765334546820900596.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P2765334546820900596.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P1858023256556797345

`A048974(n+1)-1+n`
-/

namespace A014690.P1858023256556797345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - 1 + (n : ℤ)

end

end A014690.P1858023256556797345

namespace A014690

/-- `A048974(n+1)-1+n` -/
def P1858023256556797345.Spec : Prop :=
  ∀ n, P1858023256556797345.a n = A014690 (n + 1)

theorem P1858023256556797345.correct : P1858023256556797345.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P1858023256556797345.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048974, A048974.P12620924037349992420.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P10032579499925221437

`A298252(n+1)-2+n`
-/

namespace A014690.P10032579499925221437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) - 2 + (n : ℤ)

end

end A014690.P10032579499925221437

namespace A014690

/-- `A298252(n+1)-2+n` -/
def P10032579499925221437.Spec : Prop :=
  ∀ n, P10032579499925221437.a n = A014690 (n + 1)

theorem P10032579499925221437.correct : P10032579499925221437.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P10032579499925221437.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A298252, A298252.P859259455876682479.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P14364094986443504719

`2*A006254(n+1)+n`
-/

namespace A014690.P14364094986443504719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006254 (n + 1) + (n : ℤ)

end

end A014690.P14364094986443504719

namespace A014690

/-- `2*A006254(n+1)+n` -/
def P14364094986443504719.Spec : Prop :=
  ∀ n, P14364094986443504719.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P2211589534931445807

`2*A163057(n+1)-n`
-/

namespace A014690.P2211589534931445807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163057 (n + 1) - (n : ℤ)

end

end A014690.P2211589534931445807

namespace A014690

/-- `2*A163057(n+1)-n` -/
def P2211589534931445807.Spec : Prop :=
  ∀ n, P2211589534931445807.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P9027900454442401769

`∑[A001223(n+1)+1]+2`
-/

namespace A014690.P9027900454442401769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A014690.P9027900454442401769

namespace A014690

/-- `∑[A001223(n+1)+1]+2` -/
def P9027900454442401769.Spec : Prop :=
  ∀ n, P9027900454442401769.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P16828775345612750620

`Δ[A007504(n+1)]+n+1`
-/

namespace A014690.P16828775345612750620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A014690.P16828775345612750620

namespace A014690

/-- `Δ[A007504(n+1)]+n+1` -/
def P16828775345612750620.Spec : Prop :=
  ∀ n, P16828775345612750620.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P10606517539341937695

`A048974(n+1)+A023443(n)`
-/

namespace A014690.P10606517539341937695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + A023443 n

end

end A014690.P10606517539341937695

namespace A014690

/-- `A048974(n+1)+A023443(n)` -/
def P10606517539341937695.Spec : Prop :=
  ∀ n, P10606517539341937695.a n = A014690 (n + 1)

theorem P10606517539341937695.correct : P10606517539341937695.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P10606517539341937695.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023443, A023443.P2966051066474347068.a, A048974, A048974.P12620924037349992420.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P4622321848259644345

`A118538(n+1)+A020719(n)`
-/

namespace A014690.P4622321848259644345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + A020719 n

end

end A014690.P4622321848259644345

namespace A014690

/-- `A118538(n+1)+A020719(n)` -/
def P4622321848259644345.Spec : Prop :=
  ∀ n, P4622321848259644345.a n = A014690 (n + 1)

theorem P4622321848259644345.correct : P4622321848259644345.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P4622321848259644345.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A020719, A020719.P8384566430789263348.a, A118538, A118538.P16184586288289674409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P1089891751349288483

`A135731(n+1)+A028310(n)`
-/

namespace A014690.P1089891751349288483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) + A028310 n

end

end A014690.P1089891751349288483

namespace A014690

/-- `A135731(n+1)+A028310(n)` -/
def P1089891751349288483.Spec : Prop :=
  ∀ n, P1089891751349288483.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P16341509504601866753

`A090178(n+1)+A075527(n)`
-/

namespace A014690.P16341509504601866753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) + A075527 n

end

end A014690.P16341509504601866753

namespace A014690

/-- `A090178(n+1)+A075527(n)` -/
def P16341509504601866753.Spec : Prop :=
  ∀ n, P16341509504601866753.a n = A014690 (n + 1)

end A014690

/-! ## A014690.P15932455212147284673

`A154115(n+1)+A020705(n)`
-/

namespace A014690.P15932455212147284673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A020705 n

end

end A014690.P15932455212147284673

namespace A014690

/-- `A154115(n+1)+A020705(n)` -/
def P15932455212147284673.Spec : Prop :=
  ∀ n, P15932455212147284673.a n = A014690 (n + 1)

theorem P15932455212147284673.correct : P15932455212147284673.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P15932455212147284673.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A020705, A020705.P1213730512334166827.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P6112938388100237030

`A298252(n+1)+A023444(n)`
-/

namespace A014690.P6112938388100237030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) + A023444 n

end

end A014690.P6112938388100237030

namespace A014690

/-- `A298252(n+1)+A023444(n)` -/
def P6112938388100237030.Spec : Prop :=
  ∀ n, P6112938388100237030.a n = A014690 (n + 1)

theorem P6112938388100237030.correct : P6112938388100237030.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P6112938388100237030.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023444, A023444.P8712163668128210297.a, A298252, A298252.P859259455876682479.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P4766649546103376840

`A048974(n+1)-A024000(n)`
-/

namespace A014690.P4766649546103376840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - A024000 n

end

end A014690.P4766649546103376840

namespace A014690

/-- `A048974(n+1)-A024000(n)` -/
def P4766649546103376840.Spec : Prop :=
  ∀ n, P4766649546103376840.a n = A014690 (n + 1)

theorem P4766649546103376840.correct : P4766649546103376840.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P4766649546103376840.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A024000, A024000.P8748414335487061084.a, A048974, A048974.P12620924037349992420.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P10254113478621255899

`A033287(n)-A147967(n+1)`
-/

namespace A014690.P10254113478621255899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A147967 (n + 1)

end

end A014690.P10254113478621255899

namespace A014690

/-- `A033287(n)-A147967(n+1)` -/
def P10254113478621255899.Spec : Prop :=
  ∀ n, P10254113478621255899.a n = A014690 (n + 1)

theorem P10254113478621255899.correct : P10254113478621255899.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P10254113478621255899.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033287, A033287.P5066765549217672205.a, A147967, A147967.P11868943010124678636.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, A062357, A062357.P6547862121818116138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-! ## A014690.P6173876606674034749

`A298252(n+1)-A022958(n)`
-/

namespace A014690.P6173876606674034749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298252 (n + 1) - A022958 n

end

end A014690.P6173876606674034749

namespace A014690

/-- `A298252(n+1)-A022958(n)` -/
def P6173876606674034749.Spec : Prop :=
  ∀ n, P6173876606674034749.a n = A014690 (n + 1)

theorem P6173876606674034749.correct : P6173876606674034749.Spec := by
  intro n
  simp only [A014690, Nat.add_sub_cancel, A014690.P6173876606674034749.a, A014690.P15659938011012629912.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A022958, A022958.P1044776346471009207.a, A298252, A298252.P859259455876682479.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014690

/-!
# A014691: Inverse of 682nd cyclotomic polynomial.

The programs for A014691, there is no canonical definition to state claims against.
-/

/-! ## A014691.P12977027566591084927

`A014350(n)*A033999(n)`
-/

namespace A014691.P12977027566591084927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014350 n * A033999 n

end

end A014691.P12977027566591084927

/-!
# A014692: a(n) = prime(n) - (n-1).

The programs for A014692, the canonical program `A014692.P2004927767556050134` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014692 has offset 1).

The definition of A014692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-n` (program `A014692.P2004927767556050134`, by `A014692.P2004927767556050134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014692.P2004927767556050134

`A000040(n+1)-n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014692

/-- `A000040(n+1)-n` -/
def P2004927767556050134.Spec : Prop :=
  ∀ n, P2004927767556050134.a n = A014692 (n + 1)

theorem P2004927767556050134.correct : P2004927767556050134.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel]

end A014692

/-! ## A014692.P9638241683399049963

`p?[round(8*n/7)]-n`
-/

namespace A014692.P9638241683399049963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)

end

end A014692.P9638241683399049963

namespace A014692

/-- `p?[round(8*n/7)]-n` -/
def P9638241683399049963.Spec : Prop :=
  ∀ n, P9638241683399049963.a n = A014692 (n + 1)

end A014692

/-! ## A014692.P8381414739307415167

`Δ[A007504(n)]-n`
-/

namespace A014692.P8381414739307415167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A014692.P8381414739307415167

namespace A014692

/-- `Δ[A007504(n)]-n` -/
def P8381414739307415167.Spec : Prop :=
  ∀ n, P8381414739307415167.a n = A014692 (n + 1)

end A014692

/-! ## A014692.P16815752671781149834

`1+A014689(n+1)`
-/

namespace A014692.P16815752671781149834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A014689 (n + 1)

end

end A014692.P16815752671781149834

namespace A014692

/-- `1+A014689(n+1)` -/
def P16815752671781149834.Spec : Prop :=
  ∀ n, P16815752671781149834.a n = A014692 (n + 1)

theorem P16815752671781149834.correct : P16815752671781149834.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P16815752671781149834.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P6560838809784435623

`2+A065890(1+n)`
-/

namespace A014692.P6560838809784435623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A065890 (1 + n)

end

end A014692.P6560838809784435623

namespace A014692

/-- `2+A065890(1+n)` -/
def P6560838809784435623.Spec : Prop :=
  ∀ n, P6560838809784435623.a n = A014692 (n + 1)

end A014692

/-! ## A014692.P6708223099954306274

`A173072(n+1)+n`
-/

namespace A014692.P6708223099954306274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) + (n : ℤ)

end

end A014692.P6708223099954306274

namespace A014692

/-- `A173072(n+1)+n` -/
def P6708223099954306274.Spec : Prop :=
  ∀ n, P6708223099954306274.a n = A014692 (n + 1)

theorem P6708223099954306274.correct : P6708223099954306274.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P6708223099954306274.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P10956741872626132352

`sqrt(A001248(n+1))-n`
-/

namespace A014692.P10956741872626132352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (n : ℝ)

end

end A014692.P10956741872626132352

namespace A014692

/-- `sqrt(A001248(n+1))-n` -/
def P10956741872626132352.Spec : Prop :=
  ∀ n, P10956741872626132352.a n = (A014692 (n + 1) : ℝ)

end A014692

/-! ## A014692.P23692846218439405

`∑[A054541(n+1)]-n`
-/

namespace A014692.P23692846218439405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014692.P23692846218439405

namespace A014692

/-- `∑[A054541(n+1)]-n` -/
def P23692846218439405.Spec : Prop :=
  ∀ n, P23692846218439405.a n = A014692 (n + 1)

end A014692

/-! ## A014692.P13706201950852902868

`(A239636(n+1)+3)/2`
-/

namespace A014692.P13706201950852902868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239636 (n + 1) + 3 : ℚ) / 2

end

end A014692.P13706201950852902868

namespace A014692

/-- `(A239636(n+1)+3)/2` -/
def P13706201950852902868.Spec : Prop :=
  ∀ n, P13706201950852902868.a n = (A014692 (n + 1) : ℚ)

theorem P13706201950852902868.correct : P13706201950852902868.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P13706201950852902868.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A239636, A239636.P9315992942707104834.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P11617854232540650337

`A131733(n+1)+1+n`
-/

namespace A014692.P11617854232540650337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + 1 + (n : ℤ)

end

end A014692.P11617854232540650337

namespace A014692

/-- `A131733(n+1)+1+n` -/
def P11617854232540650337.Spec : Prop :=
  ∀ n, P11617854232540650337.a n = A014692 (n + 1)

theorem P11617854232540650337.correct : P11617854232540650337.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P11617854232540650337.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P4323742343701064665

`A006093(n+1)+1-n`
-/

namespace A014692.P4323742343701064665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - (n : ℤ))

end

end A014692.P4323742343701064665

namespace A014692

/-- `A006093(n+1)+1-n` -/
def P4323742343701064665.Spec : Prop :=
  ∀ n, P4323742343701064665.a n = A014692 (n + 1)

theorem P4323742343701064665.correct : P4323742343701064665.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P4323742343701064665.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P13376528097189333481

`A008864(n+1)-(n+1)`
-/

namespace A014692.P13376528097189333481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (n + 1 : ℤ)

end

end A014692.P13376528097189333481

namespace A014692

/-- `A008864(n+1)-(n+1)` -/
def P13376528097189333481.Spec : Prop :=
  ∀ n, P13376528097189333481.a n = A014692 (n + 1)

theorem P13376528097189333481.correct : P13376528097189333481.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P13376528097189333481.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P3049803072597829645

`A040976(n+1)+2-n`
-/

namespace A014692.P3049803072597829645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - (n : ℤ))

end

end A014692.P3049803072597829645

namespace A014692

/-- `A040976(n+1)+2-n` -/
def P3049803072597829645.Spec : Prop :=
  ∀ n, P3049803072597829645.a n = A014692 (n + 1)

theorem P3049803072597829645.correct : P3049803072597829645.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P3049803072597829645.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P3341670414475442962

`A052147(n+1)-(n+2)`
-/

namespace A014692.P3341670414475442962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (n + 2 : ℤ)

end

end A014692.P3341670414475442962

namespace A014692

/-- `A052147(n+1)-(n+2)` -/
def P3341670414475442962.Spec : Prop :=
  ∀ n, P3341670414475442962.a n = A014692 (n + 1)

theorem P3341670414475442962.correct : P3341670414475442962.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P3341670414475442962.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P11873663570579201478

`A086801(n+1)+3-n`
-/

namespace A014692.P11873663570579201478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + (3 - (n : ℤ))

end

end A014692.P11873663570579201478

namespace A014692

/-- `A086801(n+1)+3-n` -/
def P11873663570579201478.Spec : Prop :=
  ∀ n, P11873663570579201478.a n = A014692 (n + 1)

theorem P11873663570579201478.correct : P11873663570579201478.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P11873663570579201478.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P17182629448914382765

`A095116(n+1)-2*n`
-/

namespace A014692.P17182629448914382765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (2 * n : ℤ)

end

end A014692.P17182629448914382765

namespace A014692

/-- `A095116(n+1)-2*n` -/
def P17182629448914382765.Spec : Prop :=
  ∀ n, P17182629448914382765.a n = A014692 (n + 1)

theorem P17182629448914382765.correct : P17182629448914382765.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P17182629448914382765.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A095116, A095116.P2789422422958858773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P8637624464146243428

`A001748(n+1)/3-n`
-/

namespace A014692.P8637624464146243428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 - (n : ℚ)

end

end A014692.P8637624464146243428

namespace A014692

/-- `A001748(n+1)/3-n` -/
def P8637624464146243428.Spec : Prop :=
  ∀ n, P8637624464146243428.a n = (A014692 (n + 1) : ℚ)

theorem P8637624464146243428.correct : P8637624464146243428.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P8637624464146243428.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-! ## A014692.P13037602935855032377

`abs(A000040(2*n-(n-1))-n)`
-/

namespace A014692.P13037602935855032377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)|

end

end A014692.P13037602935855032377

namespace A014692

/-- `abs(A000040(2*n-(n-1))-n)` -/
def P13037602935855032377.Spec : Prop :=
  ∀ n, P13037602935855032377.a n = A014692 (n + 1)

end A014692

/-! ## A014692.P1907501630230683850

`Δ[a(n-1)-(n-1-A000040(n))]` with `a(0)=0`
-/

namespace A014692.P1907501630230683850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - 1 - A000040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014692.P1907501630230683850

namespace A014692

/-- `Δ[a(n-1)-(n-1-A000040(n))]` -/
def P1907501630230683850.Spec : Prop :=
  ∀ n, P1907501630230683850.a n = A014692 (n + 1)

end A014692

/-! ## A014692.P2344505958040763691

`A001489(n)+A000040(n+1)`
-/

namespace A014692.P2344505958040763691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000040 (n + 1)

end

end A014692.P2344505958040763691

namespace A014692

/-- `A001489(n)+A000040(n+1)` -/
def P2344505958040763691.Spec : Prop :=
  ∀ n, P2344505958040763691.a n = A014692 (n + 1)

theorem P2344505958040763691.correct : P2344505958040763691.Spec := by
  intro n
  simp only [A014692, Nat.add_sub_cancel, A014692.P2344505958040763691.a, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014692

/-!
# A014693: In sequence of prime numbers add 1 to first number, 2 to 3rd number, 3 to 5th number, ... then subtract 1 from 2nd number, 2 from 4th number, 3 from 6th number and so on.

The programs for A014693, the canonical program `A014693.P15164110812174912353` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014693 has offset 1).

The definition of A014693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014693.P15164110812174912353

`A000040(n+1)+∑[(n+1)*(-1)^n]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014693

/-- `A000040(n+1)+∑[(n+1)*(-1)^n]` -/
def P15164110812174912353.Spec : Prop :=
  ∀ n, P15164110812174912353.a n = A014693 (n + 1)

theorem P15164110812174912353.correct : P15164110812174912353.Spec := by
  intro n
  simp only [A014693, Nat.add_sub_cancel]

end A014693

/-! ## A014693.P958245013603864327

`A350171(n+1)+A130472(n)`
-/

namespace A014693.P958245013603864327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) + A130472 n

end

end A014693.P958245013603864327

namespace A014693

/-- `A350171(n+1)+A130472(n)` -/
def P958245013603864327.Spec : Prop :=
  ∀ n, P958245013603864327.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P11917381595992242736

`A350171(n+1)-A001057(n)`
-/

namespace A014693.P11917381595992242736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350171 (n + 1) - A001057 n

end

end A014693.P11917381595992242736

namespace A014693

/-- `A350171(n+1)-A001057(n)` -/
def P11917381595992242736.Spec : Prop :=
  ∀ n, P11917381595992242736.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P10454868703397235825

`abs(A273960(n+1)-A008619(n))`
-/

namespace A014693.P10454868703397235825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1) - A008619 n|

end

end A014693.P10454868703397235825

namespace A014693

/-- `abs(A273960(n+1)-A008619(n))` -/
def P10454868703397235825.Spec : Prop :=
  ∀ n, P10454868703397235825.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P18313825826905180665

`A008864(n+1)+∑[A131738(n)]`
-/

namespace A014693.P18313825826905180665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014693.P18313825826905180665

namespace A014693

/-- `A008864(n+1)+∑[A131738(n)]` -/
def P18313825826905180665.Spec : Prop :=
  ∀ n, P18313825826905180665.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P165433613076466709

`A014689(n+1)+A014682(n+1)`
-/

namespace A014693.P165433613076466709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A014682 (n + 1)

end

end A014693.P165433613076466709

namespace A014693

/-- `A014689(n+1)+A014682(n+1)` -/
def P165433613076466709.Spec : Prop :=
  ∀ n, P165433613076466709.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P17295122377350561774

`A014694(n+1)-A001223(n+1)`
-/

namespace A014693.P17295122377350561774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014694 (n + 1) - A001223 (n + 1)

end

end A014693.P17295122377350561774

namespace A014693

/-- `A014694(n+1)-A001223(n+1)` -/
def P17295122377350561774.Spec : Prop :=
  ∀ n, P17295122377350561774.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P17152450467579953854

`A014682(n+1)+A014686(n+1)-A014681(n+1)`
-/

namespace A014693.P17152450467579953854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) + (A014686 (n + 1) - A014681 (n + 1))

end

end A014693.P17152450467579953854

namespace A014693

/-- `A014682(n+1)+A014686(n+1)-A014681(n+1)` -/
def P17152450467579953854.Spec : Prop :=
  ∀ n, P17152450467579953854.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P9571154670141469579

`A001057(n+1)+Δ[A007504(n)]`
-/

namespace A014693.P9571154670141469579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (f1 (n + 1) - f1 n)

end

end A014693.P9571154670141469579

namespace A014693

/-- `A001057(n+1)+Δ[A007504(n)]` -/
def P9571154670141469579.Spec : Prop :=
  ∀ n, P9571154670141469579.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P10123316376808690295

`A001057(n+1)+A000040(n+1)`
-/

namespace A014693.P10123316376808690295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + A000040 (n + 1)

end

end A014693.P10123316376808690295

namespace A014693

/-- `A001057(n+1)+A000040(n+1)` -/
def P10123316376808690295.Spec : Prop :=
  ∀ n, P10123316376808690295.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P15858997063120739208

`A008578(n+2)+A001057(n+1)`
-/

namespace A014693.P15858997063120739208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A001057 (n + 1)

end

end A014693.P15858997063120739208

namespace A014693

/-- `A008578(n+2)+A001057(n+1)` -/
def P15858997063120739208.Spec : Prop :=
  ∀ n, P15858997063120739208.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P5095167800490735429

`Δ[A080512(n+1)+A007504(n)]-1`
-/

namespace A014693.P5095167800490735429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A014693.P5095167800490735429

namespace A014693

/-- `Δ[A080512(n+1)+A007504(n)]-1` -/
def P5095167800490735429.Spec : Prop :=
  ∀ n, P5095167800490735429.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P3745874571802508628

`A001057(n+1)+A006093(n+1)+1`
-/

namespace A014693.P3745874571802508628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A006093 (n + 1) + 1)

end

end A014693.P3745874571802508628

namespace A014693

/-- `A001057(n+1)+A006093(n+1)+1` -/
def P3745874571802508628.Spec : Prop :=
  ∀ n, P3745874571802508628.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P15015515223329986152

`A040976(n+1)+Δ[A133622(n+1)]+2`
-/

namespace A014693.P15015515223329986152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (f1 (n + 1) - f1 n + 2)

end

end A014693.P15015515223329986152

namespace A014693

/-- `A040976(n+1)+Δ[A133622(n+1)]+2` -/
def P15015515223329986152.Spec : Prop :=
  ∀ n, P15015515223329986152.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P12875593311720947303

`A014689(n+1)+A093353(n+1)-A093353(n)`
-/

namespace A014693.P12875593311720947303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A093353 (n + 1) - A093353 n)

end

end A014693.P12875593311720947303

namespace A014693

/-- `A014689(n+1)+A093353(n+1)-A093353(n)` -/
def P12875593311720947303.Spec : Prop :=
  ∀ n, P12875593311720947303.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P16529394532102385525

`A001057(n+1)+A174008(n+1)-A163300(n+1)`
-/

namespace A014693.P16529394532102385525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A174008 (n + 1) - A163300 (n + 1))

end

end A014693.P16529394532102385525

namespace A014693

/-- `A001057(n+1)+A174008(n+1)-A163300(n+1)` -/
def P16529394532102385525.Spec : Prop :=
  ∀ n, P16529394532102385525.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P1585896939758283510

`A001057(n+1)+A171575(n+2)-A163300(n+2)`
-/

namespace A014693.P1585896939758283510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A171575 (n + 2) - A163300 (n + 2))

end

end A014693.P1585896939758283510

namespace A014693

/-- `A001057(n+1)+A171575(n+2)-A163300(n+2)` -/
def P1585896939758283510.Spec : Prop :=
  ∀ n, P1585896939758283510.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P8148427975225325976

`Δ[A142150(n+1)+A007504(n)]`
-/

namespace A014693.P8148427975225325976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014693.P8148427975225325976

namespace A014693

/-- `Δ[A142150(n+1)+A007504(n)]` -/
def P8148427975225325976.Spec : Prop :=
  ∀ n, P8148427975225325976.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P913200779645014199

`A001057(n+1)+record[A006530(n+2)]`
-/

namespace A014693.P913200779645014199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014693.P913200779645014199

namespace A014693

/-- `A001057(n+1)+record[A006530(n+2)]` -/
def P913200779645014199.Spec : Prop :=
  ∀ n, P913200779645014199.a n = A014693 (n + 1)

end A014693

/-! ## A014693.P8834112044294343147

`A207790(2*(n+1))+A001057(n+1)`
-/

namespace A014693.P8834112044294343147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * (n + 1)) + A001057 (n + 1)

end

end A014693.P8834112044294343147

namespace A014693

/-- `A207790(2*(n+1))+A001057(n+1)` -/
def P8834112044294343147.Spec : Prop :=
  ∀ n, P8834112044294343147.a n = A014693 (n + 1)

end A014693

/-!
# A014694: a(n) = prime(n+1) - (-1)^n*ceiling(n/2).

The programs for A014694, the canonical program `A014694.P1985719910170416763` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014694 has offset 1).

The definition of A014694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-(-1)^(n+1)*ceil((n+1)/2)` (program `A014694.P1985719910170416763`, by `A014694.P1985719910170416763.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014694.P1985719910170416763

`A000040(n+2)-(-1)^(n+1)*ceil((n+1)/2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014694

/-- `A000040(n+2)-(-1)^(n+1)*ceil((n+1)/2)` -/
def P1985719910170416763.Spec : Prop :=
  ∀ n, P1985719910170416763.a n = A014694 (n + 1)

theorem P1985719910170416763.correct : P1985719910170416763.Spec := by
  intro n
  simp only [A014694, Nat.add_sub_cancel]

end A014694

/-! ## A014694.P5774154949154781315

`p?[2*n+1]+∑[xor(n, (-1)^n)]`
-/

namespace A014694.P5774154949154781315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A014694.P5774154949154781315

namespace A014694

/-- `p?[2*n+1]+∑[xor(n, (-1)^n)]` -/
def P5774154949154781315.Spec : Prop :=
  ∀ n, P5774154949154781315.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P3991323624866735466

`A065091(n+1)+∑[xor(1, -a(n-1))]` with `a(0)=1`
-/

namespace A014694.P3991323624866735466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 1 (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014694.P3991323624866735466

namespace A014694

/-- `A065091(n+1)+∑[xor(1, -a(n-1))]` -/
def P3991323624866735466.Spec : Prop :=
  ∀ n, P3991323624866735466.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P2046552030474823274

`A014693(n+1)+A001223(n+1)`
-/

namespace A014694.P2046552030474823274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014693 (n + 1) + A001223 (n + 1)

end

end A014694.P2046552030474823274

namespace A014694

/-- `A014693(n+1)+A001223(n+1)` -/
def P2046552030474823274.Spec : Prop :=
  ∀ n, P2046552030474823274.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P18063361184835089590

`A001057(n+1)+p?[2*n+1]`
-/

namespace A014694.P18063361184835089590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A014694.P18063361184835089590

namespace A014694

/-- `A001057(n+1)+p?[2*n+1]` -/
def P18063361184835089590.Spec : Prop :=
  ∀ n, P18063361184835089590.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P6101393806226175516

`∑[xor(n, (-1)^n)]+A000040(n+2)`
-/

namespace A014694.P6101393806226175516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000040 (n + 2)

end

end A014694.P6101393806226175516

namespace A014694

/-- `∑[xor(n, (-1)^n)]+A000040(n+2)` -/
def P6101393806226175516.Spec : Prop :=
  ∀ n, P6101393806226175516.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P3903959316793551954

`A065091(n+1)+A001057(n+1)`
-/

namespace A014694.P3903959316793551954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001057 (n + 1)

end

end A014694.P3903959316793551954

namespace A014694

/-- `A065091(n+1)+A001057(n+1)` -/
def P3903959316793551954.Spec : Prop :=
  ∀ n, P3903959316793551954.a n = A014694 (n + 1)

theorem P3903959316793551954.correct : P3903959316793551954.Spec := by
  intro n
  simp only [A014694, Nat.add_sub_cancel, A014694.P3903959316793551954.a, A014694.P1985719910170416763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001057, A001057.P5698194758103254717.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014694

/-! ## A014694.P6922971618702262495

`A001057(n+1)+A000040(n+2)`
-/

namespace A014694.P6922971618702262495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + A000040 (n + 2)

end

end A014694.P6922971618702262495

namespace A014694

/-- `A001057(n+1)+A000040(n+2)` -/
def P6922971618702262495.Spec : Prop :=
  ∀ n, P6922971618702262495.a n = A014694 (n + 1)

theorem P6922971618702262495.correct : P6922971618702262495.Spec := by
  intro n
  simp only [A014694, Nat.add_sub_cancel, A014694.P6922971618702262495.a, A014694.P1985719910170416763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001057, A001057.P5698194758103254717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014694

/-! ## A014694.P8695038471136028772

`A065091(n+1)-A130472(n+1)`
-/

namespace A014694.P8695038471136028772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A130472 (n + 1)

end

end A014694.P8695038471136028772

namespace A014694

/-- `A065091(n+1)-A130472(n+1)` -/
def P8695038471136028772.Spec : Prop :=
  ∀ n, P8695038471136028772.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P17392392582509079150

`A006005(n+2)-A130472(n+1)`
-/

namespace A014694.P17392392582509079150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) - A130472 (n + 1)

end

end A014694.P17392392582509079150

namespace A014694

/-- `A006005(n+2)-A130472(n+1)` -/
def P17392392582509079150.Spec : Prop :=
  ∀ n, P17392392582509079150.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P13631180625411782189

`A001057(n+1)+Δ[A007504(n+1)]`
-/

namespace A014694.P13631180625411782189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (f1 (n + 1) - f1 n)

end

end A014694.P13631180625411782189

namespace A014694

/-- `A001057(n+1)+Δ[A007504(n+1)]` -/
def P13631180625411782189.Spec : Prop :=
  ∀ n, P13631180625411782189.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P5300038751577703167

`A008864(n+2)-Δ[A026741(n+1)]`
-/

namespace A014694.P5300038751577703167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) - (f1 (n + 1) - f1 n)

end

end A014694.P5300038751577703167

namespace A014694

/-- `A008864(n+2)-Δ[A026741(n+1)]` -/
def P5300038751577703167.Spec : Prop :=
  ∀ n, P5300038751577703167.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P17750996403400829785

`A001057(n+1)+A006093(n+2)+1`
-/

namespace A014694.P17750996403400829785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A006093 (n + 2) + 1)

end

end A014694.P17750996403400829785

namespace A014694

/-- `A001057(n+1)+A006093(n+2)+1` -/
def P17750996403400829785.Spec : Prop :=
  ∀ n, P17750996403400829785.a n = A014694 (n + 1)

theorem P17750996403400829785.correct : P17750996403400829785.Spec := by
  intro n
  simp only [A014694, Nat.add_sub_cancel, A014694.P17750996403400829785.a, A014694.P1985719910170416763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001057, A001057.P5698194758103254717.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014694

/-! ## A014694.P2052617860268284527

`A014682(n+1)+A014689(n+2)+1`
-/

namespace A014694.P2052617860268284527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) + (A014689 (n + 2) + 1)

end

end A014694.P2052617860268284527

namespace A014694

/-- `A014682(n+1)+A014689(n+2)+1` -/
def P2052617860268284527.Spec : Prop :=
  ∀ n, P2052617860268284527.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P6946983991074668281

`A001057(n+1)+A008864(n+2)-1`
-/

namespace A014694.P6946983991074668281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A008864 (n + 2) - 1)

end

end A014694.P6946983991074668281

namespace A014694

/-- `A001057(n+1)+A008864(n+2)-1` -/
def P6946983991074668281.Spec : Prop :=
  ∀ n, P6946983991074668281.a n = A014694 (n + 1)

theorem P6946983991074668281.correct : P6946983991074668281.Spec := by
  intro n
  simp only [A014694, Nat.add_sub_cancel, A014694.P6946983991074668281.a, A014694.P1985719910170416763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001057, A001057.P5698194758103254717.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014694

/-! ## A014694.P5278716894479921166

`A001057(n+1)+A040976(n+2)+2`
-/

namespace A014694.P5278716894479921166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + (A040976 (n + 2) + 2)

end

end A014694.P5278716894479921166

namespace A014694

/-- `A001057(n+1)+A040976(n+2)+2` -/
def P5278716894479921166.Spec : Prop :=
  ∀ n, P5278716894479921166.a n = A014694 (n + 1)

theorem P5278716894479921166.correct : P5278716894479921166.Spec := by
  intro n
  simp only [A014694, Nat.add_sub_cancel, A014694.P5278716894479921166.a, A014694.P1985719910170416763.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001057, A001057.P5698194758103254717.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014694

/-! ## A014694.P1383840039691699561

`A014682(n+1)+A006093(n+2)-n`
-/

namespace A014694.P1383840039691699561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) + (A006093 (n + 2) - (n : ℤ))

end

end A014694.P1383840039691699561

namespace A014694

/-- `A014682(n+1)+A006093(n+2)-n` -/
def P1383840039691699561.Spec : Prop :=
  ∀ n, P1383840039691699561.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P169530306784176492

`∑[∑[A009001(2*n+1)]]+A000040(n+2)`
-/

namespace A014694.P169530306784176492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000040 (n + 2)

end

end A014694.P169530306784176492

namespace A014694

/-- `∑[∑[A009001(2*n+1)]]+A000040(n+2)` -/
def P169530306784176492.Spec : Prop :=
  ∀ n, P169530306784176492.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P14259070565456090530

`A176624(n+2)-A130472(n+2)`
-/

namespace A014694.P14259070565456090530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176624 (n + 2) - A130472 (n + 2)

end

end A014694.P14259070565456090530

namespace A014694

/-- `A176624(n+2)-A130472(n+2)` -/
def P14259070565456090530.Spec : Prop :=
  ∀ n, P14259070565456090530.a n = A014694 (n + 1)

end A014694

/-! ## A014694.P13321532259662372300

`Δ[A142150(n+1)+A007504(n+1)]`
-/

namespace A014694.P13321532259662372300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014694.P13321532259662372300

namespace A014694

/-- `Δ[A142150(n+1)+A007504(n+1)]` -/
def P13321532259662372300.Spec : Prop :=
  ∀ n, P13321532259662372300.a n = A014694 (n + 1)

end A014694

/-!
# A014695: Poincaré series [or Poincare series] (or Molien series) for mod 2 cohomology of Q_8.

The programs for A014695, the canonical program `A014695.P14118743807230253823` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014695 has offset 0).

The definition of A014695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014695.P14118743807230253823

`ogf((1+x+x^2)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014695

/-- `ogf((1+x+x^2)/(1-x+x^2-x^3))` -/
def P14118743807230253823.Spec : Prop :=
  ∀ n, P14118743807230253823.a n = A014695 n

theorem P14118743807230253823.correct : P14118743807230253823.Spec := by
  intro n
  simp only [A014695]

end A014695

/-!
# A014696: Poincaré series [or Poincare series] (or Molien series) for mod 2 cohomology of universal W-group W(3).

The programs for A014696, the canonical program `A014696.P6381468843269543564` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014696 has offset 0).

The definition of A014696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014696.P6381468843269543564

`ogf((1+x+5x^2+x^3+x^4)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014696

/-- `ogf((1+x+5x^2+x^3+x^4)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))` -/
def P6381468843269543564.Spec : Prop :=
  ∀ n, P6381468843269543564.a n = A014696 n

theorem P6381468843269543564.correct : P6381468843269543564.Spec := by
  intro n
  simp only [A014696]

end A014696

/-!
# A014697: Poincaré series [or Poincare series] (or Molien series) for mod 2 cohomology of universal W-group W(4).

The programs for A014697, there is no canonical definition to state claims against.
-/

/-! ## A014697.P15413223724832502062

`filter[A215460(n+3), A263919(#)]`
-/

namespace A014697.P15413223724832502062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215460 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A263919 (f1 j).toNat = 1) n)

end

end A014697.P15413223724832502062

/-!
# A014698: Inverse of 689th cyclotomic polynomial.

The programs for A014698, there is no canonical definition to state claims against.
-/

/-! ## A014698.P12674434650131015385

`A015387(Δ[A008619(n)])*A015387(n)`
-/

namespace A014698.P12674434650131015385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015387 (f1 (n + 1) - f1 n).toNat * A015387 n

end

end A014698.P12674434650131015385

/-!
# A014699: Inverse of 690th cyclotomic polynomial.

The programs for A014699, there is no canonical definition to state claims against.
-/

/-! ## A014699.P18445746373339807477

`A014354(n)*A033999(n)`
-/

namespace A014699.P18445746373339807477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014354 n * A033999 n

end

end A014699.P18445746373339807477

