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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A046100: Biquadratefree numbers: numbers that are not divisible by any 4th power greater than 1.

The programs for A046100, the canonical program `A046100.P13811187242506642601` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046100 has offset 1).

The definition of A046100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046100.P11524418283873278810

`eq[0, A295884(n+1)]+1`
-/

namespace A046100.P11524418283873278810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P11524418283873278810

namespace A046100

/-- `eq[0, A295884(n+1)]+1` -/
def P11524418283873278810.Spec : Prop :=
  ∀ n, (P11524418283873278810.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P6659329526611151335

`eq[1, A300909(n+1)]+1`
-/

namespace A046100.P6659329526611151335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P6659329526611151335

namespace A046100

/-- `eq[1, A300909(n+1)]+1` -/
def P6659329526611151335.Spec : Prop :=
  ∀ n, (P6659329526611151335.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P7598647333202403502

`eq[1, A317933(n+1)]+1`
-/

namespace A046100.P7598647333202403502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P7598647333202403502

namespace A046100

/-- `eq[1, A317933(n+1)]+1` -/
def P7598647333202403502.Spec : Prop :=
  ∀ n, (P7598647333202403502.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P6537756623567869967

`eq[1, A318497(n+1)]+1`
-/

namespace A046100.P6537756623567869967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P6537756623567869967

namespace A046100

/-- `eq[1, A318497(n+1)]+1` -/
def P6537756623567869967.Spec : Prop :=
  ∀ n, (P6537756623567869967.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P13811187242506642601

`lt[A299090(n+1), 3]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A046100

/-- `lt[A299090(n+1), 3]+1` -/
def P13811187242506642601.Spec : Prop :=
  ∀ n, (P13811187242506642601.a n : ℤ) = A046100 (n + 1)

theorem P13811187242506642601.correct : P13811187242506642601.Spec := by
  intro n
  simp only [A046100, Nat.add_sub_cancel]

end A046100

/-! ## A046100.P9951130940679389350

`lt[A051903(n+1), 4]+1`
-/

namespace A046100.P9951130940679389350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046100.P9951130940679389350

namespace A046100

/-- `lt[A051903(n+1), 4]+1` -/
def P9951130940679389350.Spec : Prop :=
  ∀ n, (P9951130940679389350.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P221650118200303997

`A382905(n+1)*A382906(n+1)`
-/

namespace A046100.P221650118200303997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382905 (n + 1) * A382906 (n + 1)

end

end A046100.P221650118200303997

namespace A046100

/-- `A382905(n+1)*A382906(n+1)` -/
def P221650118200303997.Spec : Prop :=
  ∀ n, P221650118200303997.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P16309793705708109921

`lcm(A382902(n+1), A382906(n+1))`
-/

namespace A046100.P16309793705708109921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A382902 (n + 1)) (A382906 (n + 1))

end

end A046100.P16309793705708109921

namespace A046100

/-- `lcm(A382902(n+1), A382906(n+1))` -/
def P16309793705708109921.Spec : Prop :=
  ∀ n, (P16309793705708109921.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P8455860949608387321

`A055231(A382903(n+1))*A382906(n+1)`
-/

namespace A046100.P8455860949608387321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382903 (n + 1)).toNat * A382906 (n + 1)

end

end A046100.P8455860949608387321

namespace A046100

/-- `A055231(A382903(n+1))*A382906(n+1)` -/
def P8455860949608387321.Spec : Prop :=
  ∀ n, P8455860949608387321.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P6400887056310984660

`record[A053165(n+1)]`
-/

namespace A046100.P6400887056310984660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046100.P6400887056310984660

namespace A046100

/-- `record[A053165(n+1)]` -/
def P6400887056310984660.Spec : Prop :=
  ∀ n, P6400887056310984660.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P6927447634132461680

`record[A058035(n+1)]`
-/

namespace A046100.P6927447634132461680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046100.P6927447634132461680

namespace A046100

/-- `record[A058035(n+1)]` -/
def P6927447634132461680.Spec : Prop :=
  ∀ n, P6927447634132461680.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P18342924516515640401

`record[A117657(n+1)]`
-/

namespace A046100.P18342924516515640401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046100.P18342924516515640401

namespace A046100

/-- `record[A117657(n+1)]` -/
def P18342924516515640401.Spec : Prop :=
  ∀ n, P18342924516515640401.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P2550002991380931103

`record[A385007(n+1)]`
-/

namespace A046100.P2550002991380931103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046100.P2550002991380931103

namespace A046100

/-- `record[A385007(n+1)]` -/
def P2550002991380931103.Spec : Prop :=
  ∀ n, P2550002991380931103.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P13447695207639178803

`eq[1, A008835(n+1)]+1`
-/

namespace A046100.P13447695207639178803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P13447695207639178803

namespace A046100

/-- `eq[1, A008835(n+1)]+1` -/
def P13447695207639178803.Spec : Prop :=
  ∀ n, (P13447695207639178803.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P4934329884074652125

`eq[1, A053164(n+1)]+1`
-/

namespace A046100.P4934329884074652125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P4934329884074652125

namespace A046100

/-- `eq[1, A053164(n+1)]+1` -/
def P4934329884074652125.Spec : Prop :=
  ∀ n, (P4934329884074652125.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P7942605142734012930

`eq[1, A062379(n+1)]+1`
-/

namespace A046100.P7942605142734012930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P7942605142734012930

namespace A046100

/-- `eq[1, A062379(n+1)]+1` -/
def P7942605142734012930.Spec : Prop :=
  ∀ n, (P7942605142734012930.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P9684207490028833503

`eq[1, A053865(n+1)²]+1`
-/

namespace A046100.P9684207490028833503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053865 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046100.P9684207490028833503

namespace A046100

/-- `eq[1, A053865(n+1)²]+1` -/
def P9684207490028833503.Spec : Prop :=
  ∀ n, (P9684207490028833503.a n : ℤ) = A046100 (n + 1)

end A046100

/-! ## A046100.P4858349845588433958

`record[(n+1)*A307430(n+1)]`
-/

namespace A046100.P4858349845588433958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046100.P4858349845588433958

namespace A046100

/-- `record[(n+1)*A307430(n+1)]` -/
def P4858349845588433958.Spec : Prop :=
  ∀ n, P4858349845588433958.a n = A046100 (n + 1)

end A046100

/-! ## A046100.P14335603407892174432

`lt[A067132(n+1)²/2, 11]+1`
-/

namespace A046100.P14335603407892174432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067132 (n + 1) ^ 2 : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A046100.P14335603407892174432

namespace A046100

/-- `lt[A067132(n+1)²/2, 11]+1` -/
def P14335603407892174432.Spec : Prop :=
  ∀ n, (P14335603407892174432.a n : ℤ) = A046100 (n + 1)

end A046100

/-!
# A046101: Biquadrateful numbers.

The programs for A046101, there is no canonical definition to state claims against.
-/

/-! ## A046101.P1780603712868711979

`∪[A172418(n+1), A391115(n+1)]`
-/

namespace A046101.P1780603712868711979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046101.P1780603712868711979

/-! ## A046101.P3088852606446130070

`∪[A172418(n+1), A391591(n+1)]`
-/

namespace A046101.P3088852606446130070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046101.P3088852606446130070

/-! ## A046101.P2210018124911103188

`∪[A355265(n+1), A360723(n+1)]`
-/

namespace A046101.P2210018124911103188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046101.P2210018124911103188

/-! ## A046101.P11819708691080746908

`lt[1, A317933(n+1)]+1`
-/

namespace A046101.P11819708691080746908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P11819708691080746908

/-! ## A046101.P6026481517669725113

`lt[2, A299090(n+1)]+1`
-/

namespace A046101.P6026481517669725113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P6026481517669725113

/-! ## A046101.P5405827286901671501

`lt[1, A295884(n+1)+1]+1`
-/

namespace A046101.P5405827286901671501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P5405827286901671501

/-! ## A046101.P3328351161883201101

`lt[4, A051903(n+1)+1]+1`
-/

namespace A046101.P3328351161883201101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P3328351161883201101

/-! ## A046101.P10795493156897934379

`lt[A318316(n+1), A318312(n+1)]+1`
-/

namespace A046101.P10795493156897934379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046101.P10795493156897934379

/-! ## A046101.P8661821747106080179

`lt[A066990(A008833(n+1)), A008833(n+1)]+1`
-/

namespace A046101.P8661821747106080179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A008833 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046101.P8661821747106080179

/-! ## A046101.P12332676215911844510

`eq[0, A007428(n+1)]+1`
-/

namespace A046101.P12332676215911844510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046101.P12332676215911844510

/-! ## A046101.P17813295212164411479

`eq[0, A307430(n+1)]+1`
-/

namespace A046101.P17813295212164411479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046101.P17813295212164411479

/-! ## A046101.P385200578269333143

`eq[0, A307445(n+1)]+1`
-/

namespace A046101.P385200578269333143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046101.P385200578269333143

/-! ## A046101.P9941498374186534921

`lt[1, A008835(n+1)]+1`
-/

namespace A046101.P9941498374186534921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P9941498374186534921

/-! ## A046101.P9059955726592761413

`lt[1, A053164(n+1)]+1`
-/

namespace A046101.P9059955726592761413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P9059955726592761413

/-! ## A046101.P17264660104673563935

`lt[1, A062379(n+1)]+1`
-/

namespace A046101.P17264660104673563935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P17264660104673563935

/-! ## A046101.P5556476145183455943

`lt[1, A063775(n+1)]+1`
-/

namespace A046101.P5556476145183455943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P5556476145183455943

/-! ## A046101.P13301229800159569789

`lt[2, A066301(n+1)]+1`
-/

namespace A046101.P13301229800159569789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046101.P13301229800159569789

/-! ## A046101.P5904439083883764697

`lt[A053165(n+1), n]+1`
-/

namespace A046101.P5904439083883764697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046101.P5904439083883764697

/-! ## A046101.P7753193840956787051

`lt[A058035(n+1), n]+1`
-/

namespace A046101.P7753193840956787051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046101.P7753193840956787051

/-! ## A046101.P14431835701109320570

`record[gcd(n+16, A007428(n+16))]`
-/

namespace A046101.P14431835701109320570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 16 : ℤ) (A007428 (n + 16))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046101.P14431835701109320570

/-!
# A046102: Denominators of convergents to the comma of Pythagoras.

The programs for A046102, there is no canonical definition to state claims against.
-/

/-! ## A046102.P12136318472682532399

`A005663(n+1)-A005664(n+1)`
-/

namespace A046102.P12136318472682532399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005663 (n + 1) - A005664 (n + 1)

end

end A046102.P12136318472682532399

/-! ## A046102.P10841380133150561712

`a(n-2)+a(n-1)*A028507(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A046102.P10841380133150561712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A028507 (n + 1)

end

end A046102.P10841380133150561712

/-! ## A046102.P4992257161025612701

`2*A005663(n+1)-A355512(n+2)`
-/

namespace A046102.P4992257161025612701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005663 (n + 1) - A355512 (n + 2)

end

end A046102.P4992257161025612701

/-! ## A046102.P17781439034961448629

`A355512(n+2)-2*A005664(n+1)`
-/

namespace A046102.P17781439034961448629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355512 (n + 2) - 2 * A005664 (n + 1)

end

end A046102.P17781439034961448629

/-!
# A046103: Numerators of convergents to the diesis, log_2(5/4).

The programs for A046103, there is no canonical definition to state claims against.
-/

/-! ## A046103.P8495860054663211224

`A073733(n+1)%A046104(n+1)`
-/

namespace A046103.P8495860054663211224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073733 (n + 1)) (A046104 (n + 1))

end

end A046103.P8495860054663211224

/-! ## A046103.P15584359063050488064

`A116985(n+1)%A046104(n+1)`
-/

namespace A046103.P15584359063050488064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116985 (n + 1)) (A046104 (n + 1))

end

end A046103.P15584359063050488064

/-! ## A046103.P5847384836272362727

`A116985(n+1)-A020639(2*(n+1))*A046104(n+1)`
-/

namespace A046103.P5847384836272362727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116985 (n + 1) - A020639 (2 * (n + 1)) * A046104 (n + 1)

end

end A046103.P5847384836272362727

/-! ## A046103.P730310183097801910

`A073733(A000027(n+1))%(A073733(n+1)-A116985(n+1))`
-/

namespace A046103.P730310183097801910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073733 (A000027 (n + 1)).toNat) (A073733 (n + 1) - A116985 (n + 1))

end

end A046103.P730310183097801910

/-!
# A046104: Denominators of convergents to the diesis log_2(5/4).

The programs for A046104, there is no canonical definition to state claims against.
-/

/-! ## A046104.P7395751059039108669

`round(A116985(n+1)/log2(5))`
-/

namespace A046104.P7395751059039108669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116985 (n + 1) : ℝ) / Real.logb 2 (5 : ℝ))

end

end A046104.P7395751059039108669

/-! ## A046104.P4777987016122104136

`A073733(n+1)-A116985(n+1)`
-/

namespace A046104.P4777987016122104136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073733 (n + 1) - A116985 (n + 1)

end

end A046104.P4777987016122104136

/-! ## A046104.P3656554705845438722

`(A073733(n+1)-A046103(n+1))/3`
-/

namespace A046104.P3656554705845438722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073733 (n + 1) - A046103 (n + 1) : ℚ) / 3

end

end A046104.P3656554705845438722

/-! ## A046104.P4978942827024250370

`A073733(A000027(n+1))%A116985(n+1)`
-/

namespace A046104.P4978942827024250370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073733 (A000027 (n + 1)).toNat) (A116985 (n + 1))

end

end A046104.P4978942827024250370

/-!
# A046105: a(n) = A026301(n)/2^n.

The programs for A046105, there is no canonical definition to state claims against.
-/

/-! ## A046105.P3135454041418346289

`A026301(n)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046105.P3135454041418346289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026301 n : ℚ) / (2 ^ n : ℚ)

end

end A046105.P3135454041418346289

/-! ## A046105.P11825544041976843423

`ceil(A026301(n)/A000079(n))`
-/

namespace A046105.P11825544041976843423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026301 n : ℚ) / (A000079 n : ℚ)⌉

end

end A046105.P11825544041976843423

/-!
# A046107: Triangle of prime numbers in which n-th row lists all primes p such that 1/p has decimal period n, n >= 1.

The programs for A046107, there is no canonical definition to state claims against.
-/

/-! ## A046107.P3915727601273222319

`A204845(round(cos(4)^n)+n+2)`
-/

namespace A046107.P3915727601273222319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204845 (SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n) + (n + 2 : ℤ)).toNat

end

end A046107.P3915727601273222319

/-! ## A046107.P5087160029887108542

`A204845(C(2, C(3, n²))+n+1)`
-/

namespace A046107.P5087160029887108542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204845 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n + 1)

end

end A046107.P5087160029887108542

/-! ## A046107.P5611518501223229887

`A204845(A181440(n+1)+1)`
-/

namespace A046107.P5611518501223229887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204845 (A181440 (n + 1) + 1).toNat

end

end A046107.P5611518501223229887

/-! ## A046107.P9236865342670907343

`p?[A227969(n+1)]`
-/

namespace A046107.P9236865342670907343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046107.P9236865342670907343

/-! ## A046107.P2733707251465254121

`p?[A227969(A028310(n))%A007247(n)]`
-/

namespace A046107.P2733707251465254121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227969 (A028310 n).toNat) (A007247 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046107.P2733707251465254121

/-!
# A046108: Decimal period of 1/b(n), where b(n) is A046107.

The programs for A046108, there is no canonical definition to state claims against.
-/

/-! ## A046108.P13763876768040811802

`∑[A018852(A184696(n+1))%2]`
-/

namespace A046108.P13763876768040811802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018852 (A184696 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046108.P13763876768040811802

/-! ## A046108.P7214693890056350926

`∑[A284391(A033273(A000031(n)))]`
-/

namespace A046108.P7214693890056350926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (A033273 (A000031 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046108.P7214693890056350926

/-! ## A046108.P8449923997288592016

`∑[A010060(A239700(A226863(n+1)))]`
-/

namespace A046108.P8449923997288592016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A239700 (A226863 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046108.P8449923997288592016

/-! ## A046108.P16309314427901545092

`A055086(∑[gcd(6, A089300(n))])`
-/

namespace A046108.P16309314427901545092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A089300 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046108.P16309314427901545092

/-! ## A046108.P10619848362024896573

`A070939(A000720(n+1)*A076682(n+2))`
-/

namespace A046108.P10619848362024896573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000720 (n + 1) * A076682 (n + 2)).toNat

end

end A046108.P10619848362024896573

/-!
# A046109: Number of lattice points (x,y) on the circumference of a circle of radius n with center at (0,0).

The programs for A046109, there is no canonical definition to state claims against.
-/

/-! ## A046109.P13478734700668892072

`A000328(n)-A051132(n)`
-/

namespace A046109.P13478734700668892072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A051132 n

end

end A046109.P13478734700668892072

/-! ## A046109.P8678511804748224079

`A004018(n²)`
-/

namespace A046109.P8678511804748224079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n ^ 2)

end

end A046109.P8678511804748224079

/-! ## A046109.P11901387591908794358

`a(A083952(n))*A256452(n)` with `a(0)=1, a(1)=4`
-/

namespace A046109.P11901387591908794358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (A083952 n).toNat * A256452 n

end

end A046109.P11901387591908794358

/-! ## A046109.P9761540427721570360

`∑[A036693(n)]-A051132(n)`
-/

namespace A046109.P9761540427721570360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051132 n

end

end A046109.P9761540427721570360

/-! ## A046109.P6433683208951615167

`A053411(2*n)-A051132(n)`
-/

namespace A046109.P6433683208951615167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A051132 n

end

end A046109.P6433683208951615167

/-! ## A046109.P11351650848058507410

`A000328(n)-A053456(2*n)`
-/

namespace A046109.P11351650848058507410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A053456 (2 * n)

end

end A046109.P11351650848058507410

/-! ## A046109.P6969932116180699888

`A053411(2*n)-A053456(2*n)`
-/

namespace A046109.P6969932116180699888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A053456 (2 * n)

end

end A046109.P6969932116180699888

/-! ## A046109.P891987365085068457

`A047077(n)-A036693(n+1)`
-/

namespace A046109.P891987365085068457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047077 n - A036693 (n + 1)

end

end A046109.P891987365085068457

/-! ## A046109.P10363476156010872305

`A000328(n)+A047077(n)-A000328(n+1)`
-/

namespace A046109.P10363476156010872305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n + (A047077 n - A000328 (n + 1))

end

end A046109.P10363476156010872305

/-! ## A046109.P5808559551463685139

`A051132(n+1)-(A077770(n)+A051132(n))`
-/

namespace A046109.P5808559551463685139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - (A077770 n + A051132 n)

end

end A046109.P5808559551463685139

/-! ## A046109.P1893823317084296839

`A105352(A047808(n))`
-/

namespace A046109.P1893823317084296839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105352 (A047808 n).toNat

end

end A046109.P1893823317084296839

/-! ## A046109.P15233473961304415335

`A302996(∑[n+3])`
-/

namespace A046109.P15233473961304415335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046109.P15233473961304415335

/-! ## A046109.P12000779673283328161

`abs(A104794(n²))`
-/

namespace A046109.P12000779673283328161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 (n ^ 2)|

end

end A046109.P12000779673283328161

/-! ## A046109.P5003397019337692120

`A094683(A104794(n²)²)`
-/

namespace A046109.P5003397019337692120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (A104794 (n ^ 2) ^ 2).toNat

end

end A046109.P5003397019337692120

/-! ## A046109.P1689536490319169200

`A262689(A104794(n²)²)`
-/

namespace A046109.P1689536490319169200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A104794 (n ^ 2) ^ 2).toNat

end

end A046109.P1689536490319169200

/-! ## A046109.P13122325025398101803

`A008574(A000925(n²)-1)`
-/

namespace A046109.P13122325025398101803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000925 (n ^ 2) - 1).toNat

end

end A046109.P13122325025398101803

/-! ## A046109.P5510058427606141

`A104794(n²)/A033999(n)`
-/

namespace A046109.P5510058427606141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104794 (n ^ 2) : ℚ) / (A033999 n : ℚ)

end

end A046109.P5510058427606141

/-! ## A046109.P8717675922672744393

`gcd(A000038(n), A104794(n²))`
-/

namespace A046109.P8717675922672744393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104794 (n ^ 2))

end

end A046109.P8717675922672744393

/-! ## A046109.P14877384756378713106

`lcm(A000034(n), A104794(n²))`
-/

namespace A046109.P14877384756378713106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A104794 (n ^ 2))

end

end A046109.P14877384756378713106

/-! ## A046109.P16741906517120422390

`∑{d}[A104794(n²), A000010(#)]`
-/

namespace A046109.P16741906517120422390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A046109.P16741906517120422390

/-!
# A046110: Number of lattice points on circumference of a circle of radius (2n+1)/2 with center at (1/2,0).

The programs for A046110, the canonical program `A046110.P1368238171005837857` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046110 has offset 0).

The definition of A046110 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046110.P1368238171005837857

`4*A046080(2*n+1)+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046110

/-- `4*A046080(2*n+1)+2` -/
def P1368238171005837857.Spec : Prop :=
  ∀ n, P1368238171005837857.a n = A046110 n

theorem P1368238171005837857.correct : P1368238171005837857.Spec := by
  intro n
  simp only [A046110]

end A046110

/-! ## A046110.P3273316350379380794

`2*A005408(A046080(2*n+1))`
-/

namespace A046110.P3273316350379380794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005408 (A046080 (2 * n + 1)).toNat

end

end A046110.P3273316350379380794

namespace A046110

/-- `2*A005408(A046080(2*n+1))` -/
def P3273316350379380794.Spec : Prop :=
  ∀ n, P3273316350379380794.a n = A046110 n

end A046110

/-! ## A046110.P15277058075482863506

`2*A256452(Δ[n²])`
-/

namespace A046110.P15277058075482863506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256452 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046110.P15277058075482863506

namespace A046110

/-- `2*A256452(Δ[n²])` -/
def P15277058075482863506.Spec : Prop :=
  ∀ n, P15277058075482863506.a n = A046110 n

end A046110

/-! ## A046110.P11376171752114340164

`A046109(Δ[n²])/2`
-/

namespace A046110.P11376171752114340164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A046110.P11376171752114340164

namespace A046110

/-- `A046109(Δ[n²])/2` -/
def P11376171752114340164.Spec : Prop :=
  ∀ n, P11376171752114340164.a n = (A046110 n : ℚ)

end A046110

/-! ## A046110.P2725322488785293511

`A005843(A256452(2*n+1))`
-/

namespace A046110.P2725322488785293511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A256452 (2 * n + 1)).toNat

end

end A046110.P2725322488785293511

namespace A046110

/-- `A005843(A256452(2*n+1))` -/
def P2725322488785293511.Spec : Prop :=
  ∀ n, P2725322488785293511.a n = A046110 n

end A046110

/-! ## A046110.P7092867295691644616

`A188134(2*A046109(Δ[n²]))`
-/

namespace A046110.P7092867295691644616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * A046109 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A046110.P7092867295691644616

namespace A046110

/-- `A188134(2*A046109(Δ[n²]))` -/
def P7092867295691644616.Spec : Prop :=
  ∀ n, P7092867295691644616.a n = A046110 n

end A046110

/-! ## A046110.P4980759763254526494

`A003602(A046109(2*n+1)-1)`
-/

namespace A046110.P4980759763254526494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A046109 (2 * n + 1) - 1).toNat

end

end A046110.P4980759763254526494

namespace A046110

/-- `A003602(A046109(2*n+1)-1)` -/
def P4980759763254526494.Spec : Prop :=
  ∀ n, P4980759763254526494.a n = A046110 n

end A046110

/-! ## A046110.P13346526078249828726

`A008619(A046109(2*n+1)-1)`
-/

namespace A046110.P13346526078249828726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A046109 (2 * n + 1) - 1).toNat

end

end A046110.P13346526078249828726

namespace A046110

/-- `A008619(A046109(2*n+1)-1)` -/
def P13346526078249828726.Spec : Prop :=
  ∀ n, P13346526078249828726.a n = A046110 n

end A046110

/-! ## A046110.P7255849696128401892

`A008586(A338939(2*n+1))+2`
-/

namespace A046110.P7255849696128401892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A338939 (2 * n + 1)).toNat + 2

end

end A046110.P7255849696128401892

namespace A046110

/-- `A008586(A338939(2*n+1))+2` -/
def P7255849696128401892.Spec : Prop :=
  ∀ n, P7255849696128401892.a n = A046110 n

end A046110

/-! ## A046110.P13093482531296092033

`2*A048691(A170818(2*n+1))`
-/

namespace A046110.P13093482531296092033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048691 (A170818 (2 * n + 1)).toNat

end

end A046110.P13093482531296092033

namespace A046110

/-- `2*A048691(A170818(2*n+1))` -/
def P13093482531296092033.Spec : Prop :=
  ∀ n, P13093482531296092033.a n = A046110 n

end A046110

/-! ## A046110.P1095089935093718907

`2*A275367(A072436(2*n+1))`
-/

namespace A046110.P1095089935093718907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275367 (A072436 (2 * n + 1)).toNat

end

end A046110.P1095089935093718907

namespace A046110

/-- `2*A275367(A072436(2*n+1))` -/
def P1095089935093718907.Spec : Prop :=
  ∀ n, P1095089935093718907.a n = A046110 n

end A046110

/-! ## A046110.P390929140632814375

`2*A000005(A286361(2*n+1)²)`
-/

namespace A046110.P390929140632814375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A286361 (2 * n + 1) ^ 2).toNat

end

end A046110.P390929140632814375

namespace A046110

/-- `2*A000005(A286361(2*n+1)²)` -/
def P390929140632814375.Spec : Prop :=
  ∀ n, P390929140632814375.a n = A046110 n

end A046110

/-! ## A046110.P9136006344626018111

`A000328(2*n+1)-A387220(2*n+1)`
-/

namespace A046110.P9136006344626018111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (2 * n + 1) - A387220 (2 * n + 1)

end

end A046110.P9136006344626018111

namespace A046110

/-- `A000328(2*n+1)-A387220(2*n+1)` -/
def P9136006344626018111.Spec : Prop :=
  ∀ n, P9136006344626018111.a n = A046110 n

end A046110

/-! ## A046110.P6751198906365714631

`A004526(A349538(2*n+1)-A349538(2*n))`
-/

namespace A046110.P6751198906365714631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A349538 (2 * n + 1) - A349538 (2 * n)).toNat

end

end A046110.P6751198906365714631

namespace A046110

/-- `A004526(A349538(2*n+1)-A349538(2*n))` -/
def P6751198906365714631.Spec : Prop :=
  ∀ n, P6751198906365714631.a n = A046110 n

end A046110

/-! ## A046110.P480551818260161342

`A053414(2*n+1)-A053457(2*n+1)`
-/

namespace A046110.P480551818260161342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053414 (2 * n + 1) - A053457 (2 * n + 1)

end

end A046110.P480551818260161342

namespace A046110

/-- `A053414(2*n+1)-A053457(2*n+1)` -/
def P480551818260161342.Spec : Prop :=
  ∀ n, P480551818260161342.a n = A046110 n

end A046110

/-! ## A046110.P10293500721851987294

`A092089(2*A170818(2*n+1))`
-/

namespace A046110.P10293500721851987294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (2 * A170818 (2 * n + 1)).toNat

end

end A046110.P10293500721851987294

namespace A046110

/-- `A092089(2*A170818(2*n+1))` -/
def P10293500721851987294.Spec : Prop :=
  ∀ n, P10293500721851987294.a n = A046110 n

end A046110

/-! ## A046110.P17420049844883921445

`2*A338939(4*n+2)`
-/

namespace A046110.P17420049844883921445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338939 (4 * n + 2)

end

end A046110.P17420049844883921445

namespace A046110

/-- `2*A338939(4*n+2)` -/
def P17420049844883921445.Spec : Prop :=
  ∀ n, P17420049844883921445.a n = A046110 n

end A046110

/-! ## A046110.P2294409788612905422

`∑{d}[4*n+2, A000089(#)]`
-/

namespace A046110.P2294409788612905422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d

end

end A046110.P2294409788612905422

namespace A046110

/-- `∑{d}[4*n+2, A000089(#)]` -/
def P2294409788612905422.Spec : Prop :=
  ∀ n, P2294409788612905422.a n = A046110 n

end A046110

/-! ## A046110.P8995311226286970955

`A016825(A328712(2*(2*n+1)))`
-/

namespace A046110.P8995311226286970955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A328712 (2 * (2 * n + 1))).toNat

end

end A046110.P8995311226286970955

namespace A046110

/-- `A016825(A328712(2*(2*n+1)))` -/
def P8995311226286970955.Spec : Prop :=
  ∀ n, P8995311226286970955.a n = A046110 n

end A046110

/-! ## A046110.P12545278959348408477

`A387220(2*n+1)-A051132(2*n+1)`
-/

namespace A046110.P12545278959348408477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387220 (2 * n + 1) - A051132 (2 * n + 1)

end

end A046110.P12545278959348408477

namespace A046110

/-- `A387220(2*n+1)-A051132(2*n+1)` -/
def P12545278959348408477.Spec : Prop :=
  ∀ n, P12545278959348408477.a n = A046110 n

end A046110

/-!
# A046111: Number of lattice points on circumference of a circle of radius 1/3,2/3,4/3,5/3,... with center at (1/3,0).

The programs for A046111, the canonical program `A046111.P6337604296461611774` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046111 has offset 0).

The definition of A046111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046111.P7088218729902275797

`A256452(floor(n/2)+n+1)`
-/

namespace A046111.P7088218729902275797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)).toNat

end

end A046111.P7088218729902275797

namespace A046111

/-- `A256452(floor(n/2)+n+1)` -/
def P7088218729902275797.Spec : Prop :=
  ∀ n, P7088218729902275797.a n = A046111 n

end A046111

/-! ## A046111.P5761881908682927026

`or(1, A256452(A001651(n+1)))`
-/

namespace A046111.P5761881908682927026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256452 (A001651 (n + 1)).toNat)

end

end A046111.P5761881908682927026

namespace A046111

/-- `or(1, A256452(A001651(n+1)))` -/
def P5761881908682927026.Spec : Prop :=
  ∀ n, P5761881908682927026.a n = A046111 n

end A046111

/-! ## A046111.P5001133740873358787

`A256452(A001651(n+1))%A016789(n)`
-/

namespace A046111.P5001133740873358787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256452 (A001651 (n + 1)).toNat) (A016789 n)

end

end A046111.P5001133740873358787

namespace A046111

/-- `A256452(A001651(n+1))%A016789(n)` -/
def P5001133740873358787.Spec : Prop :=
  ∀ n, P5001133740873358787.a n = A046111 n

end A046111

/-! ## A046111.P6337604296461611774

`A338939(and(n, -2)+2*(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A046111

/-- `A338939(and(n, -2)+2*(n+1))` -/
def P6337604296461611774.Spec : Prop :=
  ∀ n, P6337604296461611774.a n = A046111 n

theorem P6337604296461611774.correct : P6337604296461611774.Spec := by
  intro n
  simp only [A046111]

end A046111

/-! ## A046111.P14956820100017704946

`A046109(A008619(3*n))/4`
-/

namespace A046111.P14956820100017704946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046109 (A008619 (3 * n)).toNat : ℚ) / 4

end

end A046111.P14956820100017704946

namespace A046111

/-- `A046109(A008619(3*n))/4` -/
def P14956820100017704946.Spec : Prop :=
  ∀ n, P14956820100017704946.a n = (A046111 n : ℚ)

end A046111

/-! ## A046111.P5617471249163833051

`A338939(A052928(n)+2*(n+1))`
-/

namespace A046111.P5617471249163833051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338939 (A052928 n + (2 * (n + 1) : ℤ)).toNat

end

end A046111.P5617471249163833051

namespace A046111

/-- `A338939(A052928(n)+2*(n+1))` -/
def P5617471249163833051.Spec : Prop :=
  ∀ n, P5617471249163833051.a n = A046111 n

end A046111

/-! ## A046111.P9782733039480855490

`A122865(A001082(n+1))`
-/

namespace A046111.P9782733039480855490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A001082 (n + 1)).toNat

end

end A046111.P9782733039480855490

namespace A046111

/-- `A122865(A001082(n+1))` -/
def P9782733039480855490.Spec : Prop :=
  ∀ n, P9782733039480855490.a n = A046111 n

end A046111

/-! ## A046111.P11715209081883601523

`A122856(2*A001082(n+1))`
-/

namespace A046111.P11715209081883601523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (2 * A001082 (n + 1)).toNat

end

end A046111.P11715209081883601523

namespace A046111

/-- `A122856(2*A001082(n+1))` -/
def P11715209081883601523.Spec : Prop :=
  ∀ n, P11715209081883601523.a n = A046111 n

end A046111

/-! ## A046111.P16695668614987357094

`A258278(2*A001082(n+1))`
-/

namespace A046111.P16695668614987357094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 (2 * A001082 (n + 1)).toNat

end

end A046111.P16695668614987357094

namespace A046111

/-- `A258278(2*A001082(n+1))` -/
def P16695668614987357094.Spec : Prop :=
  ∀ n, P16695668614987357094.a n = A046111 n

end A046111

/-!
# A046113: Coefficients in expansion of theta_3(q) * theta_3(q^6) in powers of q.

The programs for A046113, there is no canonical definition to state claims against.
-/

/-! ## A046113.P11028475397608095788

`abs(A260309(n))`
-/

namespace A046113.P11028475397608095788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260309 n|

end

end A046113.P11028475397608095788

/-! ## A046113.P14299010640992131782

`A057077(n)*A260309(n)`
-/

namespace A046113.P14299010640992131782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A260309 n

end

end A046113.P14299010640992131782

/-! ## A046113.P2652780008496109578

`gcd(A000038(n), A260309(n))`
-/

namespace A046113.P2652780008496109578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260309 n)

end

end A046113.P2652780008496109578

/-! ## A046113.P8512897732699723222

`lcm(A000034(n), A260309(n))`
-/

namespace A046113.P8512897732699723222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260309 n)

end

end A046113.P8512897732699723222

/-! ## A046113.P4105267800122617317

`2*A000377(n)-A108563(n)`
-/

namespace A046113.P4105267800122617317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000377 n - A108563 n

end

end A046113.P4105267800122617317

/-! ## A046113.P828111923397135491

`A108563(A064680(n))`
-/

namespace A046113.P828111923397135491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (A064680 n).toNat

end

end A046113.P828111923397135491

/-! ## A046113.P8889614188325637378

`A108563(2*n)`
-/

namespace A046113.P8889614188325637378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n)

end

end A046113.P8889614188325637378

/-! ## A046113.P17067639877709645919

`A061347(n+2)*A263577(2*n)`
-/

namespace A046113.P17067639877709645919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A263577 (2 * n)

end

end A046113.P17067639877709645919

/-! ## A046113.P7837447963272611759

`A263577(3*n)`
-/

namespace A046113.P7837447963272611759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 (3 * n)

end

end A046113.P7837447963272611759

/-! ## A046113.P18395870946545664164

`A028590(4*n)`
-/

namespace A046113.P18395870946545664164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028590 (4 * n)

end

end A046113.P18395870946545664164

/-! ## A046113.P3908208826214703139

`A260309(4*n)`
-/

namespace A046113.P3908208826214703139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260309 (4 * n)

end

end A046113.P3908208826214703139

/-! ## A046113.P14510344613916877219

`abs(A229723(6*n))`
-/

namespace A046113.P14510344613916877219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A229723 (6 * n)|

end

end A046113.P14510344613916877219

/-! ## A046113.P9592584408166895816

`A028661(4*4*n)`
-/

namespace A046113.P9592584408166895816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028661 (4 * (4 * n))

end

end A046113.P9592584408166895816

/-! ## A046113.P13070046212382438077

`A229723(4*6*n)`
-/

namespace A046113.P13070046212382438077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 (4 * (6 * n))

end

end A046113.P13070046212382438077

/-!
# A046115: Denominators of convergents to Euler-Mascheroni constant.

The programs for A046115, there is no canonical definition to state claims against.
-/

/-! ## A046115.P12482776057037066246

`A071766(or(A000166(n), A003462(n)))`
-/

namespace A046115.P12482776057037066246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (Int.lor (A000166 n) (A003462 n)).toNat

end

end A046115.P12482776057037066246

/-!
# A046116: Numbers k such that no Paley-type Hadamard matrix of order k exists.

The programs for A046116, there is no canonical definition to state claims against.
-/

/-! ## A046116.P2272853088938341882

`A360248(or(A000005(3*n+4), A360248(2*n+3)))`
-/

namespace A046116.P2272853088938341882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360248 (Int.lor (A000005 (3 * n + 4)) (A360248 (2 * n + 3))).toNat

end

end A046116.P2272853088938341882

/-!
# A046117: Primes p such that p-6 is also prime. (Upper of a pair of sexy primes.)

The programs for A046117, the canonical program `A046117.P460302525211984613` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046117 has offset 1).

The definition of A046117 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046117.P2986227851366711111

`A087695(n+1)+3`
-/

namespace A046117.P2986227851366711111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) + 3

end

end A046117.P2986227851366711111

namespace A046117

/-- `A087695(n+1)+3` -/
def P2986227851366711111.Spec : Prop :=
  ∀ n, P2986227851366711111.a n = A046117 (n + 1)

theorem P2986227851366711111.correct : P2986227851366711111.Spec := by
  intro n
  simp only [A046117, Nat.add_sub_cancel, A046117.P2986227851366711111.a, A046117.P460302525211984613.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A087695, A087695.P4000952237766351123.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046117

/-! ## A046117.P460302525211984613

`A023201(n+1)+6`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046117

/-- `A023201(n+1)+6` -/
def P460302525211984613.Spec : Prop :=
  ∀ n, P460302525211984613.a n = A046117 (n + 1)

theorem P460302525211984613.correct : P460302525211984613.Spec := by
  intro n
  simp only [A046117, Nat.add_sub_cancel]

end A046117

/-! ## A046117.P3998792800209210731

`2*A088763(n+1)+3`
-/

namespace A046117.P3998792800209210731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1) + 3

end

end A046117.P3998792800209210731

namespace A046117

/-- `2*A088763(n+1)+3` -/
def P3998792800209210731.Spec : Prop :=
  ∀ n, P3998792800209210731.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P17611717358584239476

`A104010(n+1)/2+3`
-/

namespace A046117.P17611717358584239476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) : ℚ) / 2 + 3

end

end A046117.P17611717358584239476

namespace A046117

/-- `A104010(n+1)/2+3` -/
def P17611717358584239476.Spec : Prop :=
  ∀ n, P17611717358584239476.a n = (A046117 (n + 1) : ℚ)

theorem P17611717358584239476.correct : P17611717358584239476.Spec := by
  intro n
  simp only [A046117, Nat.add_sub_cancel, A046117.P17611717358584239476.a, A046117.P460302525211984613.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A087695, A087695.P4000952237766351123.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046117

/-! ## A046117.P6737709143995704684

`A067831(n+2)`
-/

namespace A046117.P6737709143995704684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 2)

end

end A046117.P6737709143995704684

namespace A046117

/-- `A067831(n+2)` -/
def P6737709143995704684.Spec : Prop :=
  ∀ n, P6737709143995704684.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P5641438307027313764

`A172071(n+2)`
-/

namespace A046117.P5641438307027313764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 2)

end

end A046117.P5641438307027313764

namespace A046117

/-- `A172071(n+2)` -/
def P5641438307027313764.Spec : Prop :=
  ∀ n, P5641438307027313764.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P5853764014306621682

`A172988(n+2)`
-/

namespace A046117.P5853764014306621682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 2)

end

end A046117.P5853764014306621682

namespace A046117

/-- `A172988(n+2)` -/
def P5853764014306621682.Spec : Prop :=
  ∀ n, P5853764014306621682.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P6520971565893559512

`p?[A262084(n+1)+6]`
-/

namespace A046117.P6520971565893559512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P6520971565893559512

namespace A046117

/-- `p?[A262084(n+1)+6]` -/
def P6520971565893559512.Spec : Prop :=
  ∀ n, P6520971565893559512.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P11452839802547608011

`A156274(2*(n+1))`
-/

namespace A046117.P11452839802547608011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * (n + 1))

end

end A046117.P11452839802547608011

namespace A046117

/-- `A156274(2*(n+1))` -/
def P11452839802547608011.Spec : Prop :=
  ∀ n, P11452839802547608011.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P8374339329217612523

`p?[p?[2*n+1]+6]`
-/

namespace A046117.P8374339329217612523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046117.P8374339329217612523

namespace A046117

/-- `p?[p?[2*n+1]+6]` -/
def P8374339329217612523.Spec : Prop :=
  ∀ n, (P8374339329217612523.a n : ℤ) = A046117 (n + 1)

end A046117

/-! ## A046117.P1349264347905119443

`p?[A139049(n+1)]`
-/

namespace A046117.P1349264347905119443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P1349264347905119443

namespace A046117

/-- `p?[A139049(n+1)]` -/
def P1349264347905119443.Spec : Prop :=
  ∀ n, P1349264347905119443.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P14643883557885756697

`p?[A175222(n+1)+1]`
-/

namespace A046117.P14643883557885756697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P14643883557885756697

namespace A046117

/-- `p?[A175222(n+1)+1]` -/
def P14643883557885756697.Spec : Prop :=
  ∀ n, P14643883557885756697.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P6095143765306603469

`p?[A175221(n+1)+2]`
-/

namespace A046117.P6095143765306603469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P6095143765306603469

namespace A046117

/-- `p?[A175221(n+1)+2]` -/
def P6095143765306603469.Spec : Prop :=
  ∀ n, P6095143765306603469.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P8414041800900973586

`p?[A175224(n+1)-2]`
-/

namespace A046117.P8414041800900973586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P8414041800900973586

namespace A046117

/-- `p?[A175224(n+1)-2]` -/
def P8414041800900973586.Spec : Prop :=
  ∀ n, P8414041800900973586.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P329917024473032468

`p?[A008864(n+1)+5]`
-/

namespace A046117.P329917024473032468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P329917024473032468

namespace A046117

/-- `p?[A008864(n+1)+5]` -/
def P329917024473032468.Spec : Prop :=
  ∀ n, P329917024473032468.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P8674723936649227318

`p?[A175216(n+1)+5]`
-/

namespace A046117.P8674723936649227318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P8674723936649227318

namespace A046117

/-- `p?[A175216(n+1)+5]` -/
def P8674723936649227318.Spec : Prop :=
  ∀ n, P8674723936649227318.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P3995620885603799446

`p?[A000040(n+1)+6]`
-/

namespace A046117.P3995620885603799446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P3995620885603799446

namespace A046117

/-- `p?[A000040(n+1)+6]` -/
def P3995620885603799446.Spec : Prop :=
  ∀ n, P3995620885603799446.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P8454766206372649381

`p?[A028815(n+2)+5]`
-/

namespace A046117.P8454766206372649381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P8454766206372649381

namespace A046117

/-- `p?[A028815(n+2)+5]` -/
def P8454766206372649381.Spec : Prop :=
  ∀ n, P8454766206372649381.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P17785820438864988523

`p?[A065091(n+1)+6]`
-/

namespace A046117.P17785820438864988523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046117.P17785820438864988523

namespace A046117

/-- `p?[A065091(n+1)+6]` -/
def P17785820438864988523.Spec : Prop :=
  ∀ n, P17785820438864988523.a n = A046117 (n + 1)

end A046117

/-! ## A046117.P11317950999985775845

`A000040(A172072(n+2))`
-/

namespace A046117.P11317950999985775845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A172072 (n + 2)).toNat

end

end A046117.P11317950999985775845

namespace A046117

/-- `A000040(A172072(n+2))` -/
def P11317950999985775845.Spec : Prop :=
  ∀ n, P11317950999985775845.a n = A046117 (n + 1)

end A046117

/-!
# A046118: Smallest member of a sexy prime triple: value of p such that p, p+6 and p+12 are all prime, but p+18 is not (although p-6 might be).

The programs for A046118, there is no canonical definition to state claims against.
-/

/-! ## A046118.P6962056192317254133

`A046119(n+1)-6`
-/

namespace A046118.P6962056192317254133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046119 (n + 1) - 6

end

end A046118.P6962056192317254133

/-! ## A046118.P15821649716852822205

`A046120(n+1)-12`
-/

namespace A046118.P15821649716852822205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046120 (n + 1) - 12

end

end A046118.P15821649716852822205

/-! ## A046118.P16331332045017369719

`A286217(n+1)/(A046119(n+1)*A046120(n+1))`
-/

namespace A046118.P16331332045017369719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286217 (n + 1) : ℚ) / (A046119 (n + 1) * A046120 (n + 1) : ℚ)

end

end A046118.P16331332045017369719

/-! ## A046118.P8242637312095295715

`A275681(3*n+1)`
-/

namespace A046118.P8242637312095295715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (3 * n + 1)

end

end A046118.P8242637312095295715

/-! ## A046118.P5835067635418518375

`A078587(A046119(n+1))`
-/

namespace A046118.P5835067635418518375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A046119 (n + 1)).toNat

end

end A046118.P5835067635418518375

/-! ## A046118.P18410957726827459336

`A023454(A046120(n+1))`
-/

namespace A046118.P18410957726827459336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A046120 (n + 1)).toNat

end

end A046118.P18410957726827459336

/-! ## A046118.P2988911914468665923

`A014963(A275681(n+1+n+n))`
-/

namespace A046118.P2988911914468665923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A275681 (n + 1 + (n + n))).toNat

end

end A046118.P2988911914468665923

/-!
# A046119: Middle member of a sexy prime triple: value of p+6 such that p, p+6 and p+12 are all prime, but p+18 is not (although p-6 might be).

The programs for A046119, there is no canonical definition to state claims against.
-/

/-! ## A046119.P3743766374350625631

`A046118(n+1)+6`
-/

namespace A046119.P3743766374350625631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1) + 6

end

end A046119.P3743766374350625631

/-! ## A046119.P6799708807631936123

`A046120(n+1)-6`
-/

namespace A046119.P6799708807631936123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046120 (n + 1) - 6

end

end A046119.P6799708807631936123

/-! ## A046119.P1660801699693887270

`A275681(3*n+1)+6`
-/

namespace A046119.P1660801699693887270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (3 * n + 1) + 6

end

end A046119.P1660801699693887270

/-! ## A046119.P18073164606009616847

`A275681(3*n+2)`
-/

namespace A046119.P18073164606009616847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (3 * n + 2)

end

end A046119.P18073164606009616847

/-! ## A046119.P16087836356617612720

`record[A275681(A113655(n+1))]-6`
-/

namespace A046119.P16087836356617612720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (A113655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 6

end

end A046119.P16087836356617612720

/-! ## A046119.P3982608871286878805

`A020715(A046118(n+1))`
-/

namespace A046119.P3982608871286878805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A046118 (n + 1)).toNat

end

end A046119.P3982608871286878805

/-! ## A046119.P17456904752936103507

`A023448(A046120(n+1))`
-/

namespace A046119.P17456904752936103507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A046120 (n + 1)).toNat

end

end A046119.P17456904752936103507

/-! ## A046119.P18273357435628378543

`A023454(2*A046120(n+1))/2`
-/

namespace A046119.P18273357435628378543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023454 (2 * A046120 (n + 1)).toNat : ℚ) / 2

end

end A046119.P18273357435628378543

/-!
# A046120: Largest member of a sexy prime triple; value of p+12 where p, p+6 and p+12 are all prime, but p+18 is not.

The programs for A046120, there is no canonical definition to state claims against.
-/

/-! ## A046120.P10676981212007443118

`A046119(n+1)+6`
-/

namespace A046120.P10676981212007443118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046119 (n + 1) + 6

end

end A046120.P10676981212007443118

/-! ## A046120.P11098604772405554026

`A046118(n+1)+12`
-/

namespace A046120.P11098604772405554026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1) + 12

end

end A046120.P11098604772405554026

/-! ## A046120.P2647092235757308171

`A275681(3*(n+1))`
-/

namespace A046120.P2647092235757308171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (3 * (n + 1))

end

end A046120.P2647092235757308171

/-! ## A046120.P3909284100812167250

`record[A275681(A113655(n+1))]`
-/

namespace A046120.P3909284100812167250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275681 (A113655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046120.P3909284100812167250

/-! ## A046120.P939861546594430000

`A078496(A046119(n+1))`
-/

namespace A046120.P939861546594430000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A046119 (n + 1)).toNat

end

end A046120.P939861546594430000

/-! ## A046120.P11760019117668913384

`A033662(A046118(n+1))`
-/

namespace A046120.P11760019117668913384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (A046118 (n + 1)).toNat

end

end A046120.P11760019117668913384

/-!
# A046122: Second member of a sexy prime quadruple: value of p+6 such that p, p+6, p+12 and p+18 are all prime.

The programs for A046122, there is no canonical definition to state claims against.
-/

/-! ## A046122.P2471552824021528772

`6+A023271(n+1)`
-/

namespace A046122.P2471552824021528772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + A023271 (n + 1)

end

end A046122.P2471552824021528772

/-! ## A046122.P328690381227743370

`A046123(n+1)-6`
-/

namespace A046122.P328690381227743370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046123 (n + 1) - 6

end

end A046122.P328690381227743370

/-! ## A046122.P2768535741121273276

`A046124(n+1)-12`
-/

namespace A046122.P2768535741121273276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046124 (n + 1) - 12

end

end A046122.P2768535741121273276

/-! ## A046122.P13634008004794587854

`(2*A046123(n+1))%A046124(n+1)`
-/

namespace A046122.P13634008004794587854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A046123 (n + 1)) (A046124 (n + 1))

end

end A046122.P13634008004794587854

/-! ## A046122.P12995699994397697040

`∩[A006489(n+1), A023241(n+1)]`
-/

namespace A046122.P12995699994397697040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P12995699994397697040

/-! ## A046122.P10691928716408541803

`A275682(record[A266303(n)])`
-/

namespace A046122.P10691928716408541803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046122.P10691928716408541803

/-! ## A046122.P14915890624508712257

`A275682(A111284(n+1))`
-/

namespace A046122.P14915890624508712257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (A111284 (n + 1)).toNat

end

end A046122.P14915890624508712257

/-! ## A046122.P18235437057673214417

`A275682(A004526(abs(3-8*n)))`
-/

namespace A046122.P18235437057673214417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (A004526 |3 - (8 * n : ℤ)|.toNat).toNat

end

end A046122.P18235437057673214417

/-! ## A046122.P2926722880077104932

`∩[A006489(n+1), A086136(n+1)]`
-/

namespace A046122.P2926722880077104932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P2926722880077104932

/-! ## A046122.P14711730049823093327

`A123083(4*n+2)`
-/

namespace A046122.P14711730049823093327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (4 * n + 2)

end

end A046122.P14711730049823093327

/-! ## A046122.P9792130696459287879

`∩[A006489(n+1), A046133(n+1)]`
-/

namespace A046122.P9792130696459287879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P9792130696459287879

/-! ## A046122.P4117564403949236259

`∩[A023241(n+1), A087681(n+1)]`
-/

namespace A046122.P4117564403949236259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P4117564403949236259

/-! ## A046122.P14914918481733026481

`∩[A046133(n+1), A087681(n+1)]`
-/

namespace A046122.P14914918481733026481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P14914918481733026481

/-! ## A046122.P98421554884239654

`∩[A086136(n+1), A087681(n+1)]`
-/

namespace A046122.P98421554884239654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P98421554884239654

/-! ## A046122.P5845701692800235859

`∩[A006489(n+1), A015917(n+1)]`
-/

namespace A046122.P5845701692800235859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P5845701692800235859

/-! ## A046122.P8752576018059932692

`∩[A023241(n+1), A046117(n+1)]`
-/

namespace A046122.P8752576018059932692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P8752576018059932692

/-! ## A046122.P107295976699513625

`∩[A023241(n+1), A172071(n+1)]`
-/

namespace A046122.P107295976699513625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P107295976699513625

/-! ## A046122.P5862063333767672742

`∩[A006489(n+1), A056775(n+1)]`
-/

namespace A046122.P5862063333767672742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046122.P5862063333767672742

/-!
# A046123: Third member of a sexy prime quadruple: value of p+12 such that p, p+6, p+12 and p+18 are all prime.

The programs for A046123, there is no canonical definition to state claims against.
-/

/-! ## A046123.P380365094885833259

`A046122(n+1)+6`
-/

namespace A046123.P380365094885833259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1) + 6

end

end A046123.P380365094885833259

/-! ## A046123.P17747394438717270216

`A046124(n+1)-6`
-/

namespace A046123.P17747394438717270216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046124 (n + 1) - 6

end

end A046123.P17747394438717270216

/-! ## A046123.P13245101197812870716

`A023271(n+1)+12`
-/

namespace A046123.P13245101197812870716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1) + 12

end

end A046123.P13245101197812870716

/-! ## A046123.P216483340853827095

`A275682(record[A266303(n)+1])`
-/

namespace A046123.P216483340853827095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046123.P216483340853827095

/-! ## A046123.P17883447547136879241

`A275682(A111284(n+1)+1)`
-/

namespace A046123.P17883447547136879241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (A111284 (n + 1) + 1).toNat

end

end A046123.P17883447547136879241

/-! ## A046123.P10036594373433716745

`A123083(3*(n+1)+n)`
-/

namespace A046123.P10036594373433716745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (3 * (n + 1) + n)

end

end A046123.P10036594373433716745

/-! ## A046123.P14923551146721041898

`∩[A006489(n+1), A092216(n+1)]`
-/

namespace A046123.P14923551146721041898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046123.P14923551146721041898

/-! ## A046123.P12163387386708206056

`∩[A087681(n+1), A092216(n+1)]`
-/

namespace A046123.P12163387386708206056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046123.P12163387386708206056

/-! ## A046123.P18405727252225864777

`A084704(A377318(n+1))`
-/

namespace A046123.P18405727252225864777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084704 (A377318 (n + 1)).toNat

end

end A046123.P18405727252225864777

/-! ## A046123.P4186029758752148597

`A078496(A046122(n+1))`
-/

namespace A046123.P4186029758752148597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A046122 (n + 1)).toNat

end

end A046123.P4186029758752148597

/-!
# A046124: Last member of a sexy prime quadruple: value of p+18 such that p, p+6, p+12 and p+18 are all prime.

The programs for A046124, there is no canonical definition to state claims against.
-/

/-! ## A046124.P3641544711510013315

`A046123(n+1)+6`
-/

namespace A046124.P3641544711510013315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046123 (n + 1) + 6

end

end A046124.P3641544711510013315

/-! ## A046124.P13408688390289338206

`A046122(n+1)+12`
-/

namespace A046124.P13408688390289338206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1) + 12

end

end A046124.P13408688390289338206

/-! ## A046124.P16715484717068000393

`A023271(n+1)+18`
-/

namespace A046124.P16715484717068000393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1) + 18

end

end A046124.P16715484717068000393

/-! ## A046124.P2120949419275287015

`A275682(record[A266303(n)+2])`
-/

namespace A046124.P2120949419275287015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046124.P2120949419275287015

/-! ## A046124.P7030218798753738595

`A275682(A111284(n+1)+2)`
-/

namespace A046124.P7030218798753738595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (A111284 (n + 1) + 2).toNat

end

end A046124.P7030218798753738595

/-! ## A046124.P13930874964550265608

`p?[A006489(n+1)+12]`
-/

namespace A046124.P13930874964550265608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046124.P13930874964550265608

/-! ## A046124.P9506346051011466318

`p?[A023241(n+1)+18]`
-/

namespace A046124.P9506346051011466318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046124.P9506346051011466318

/-! ## A046124.P4715156748056668554

`A123083(4*(n+1))`
-/

namespace A046124.P4715156748056668554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (4 * (n + 1))

end

end A046124.P4715156748056668554

/-! ## A046124.P11037608409813102798

`A078496(A046123(n+1))`
-/

namespace A046124.P11037608409813102798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A046123 (n + 1)).toNat

end

end A046124.P11037608409813102798

/-!
# A046126: Denominators q[ n ] of convergents to Stern's non-simple continued fraction for Pi/2.

The programs for A046126, there is no canonical definition to state claims against.
-/

/-! ## A046126.P2212897758261620394

`∏[3-Δ[lcm(2, n)]]`
-/

namespace A046126.P2212897758261620394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P2212897758261620394

/-! ## A046126.P1751061442558433362

`∏[Δ[n*gcd(2, n)]]`
-/

namespace A046126.P1751061442558433362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P1751061442558433362

/-! ## A046126.P577719829824450813

`∏[Δ[n%or(1, n)]+1]`
-/

namespace A046126.P577719829824450813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P577719829824450813

/-! ## A046126.P10020360405081043611

`∏[Δ[n*(and(1, n+1)+1)]]`
-/

namespace A046126.P10020360405081043611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P10020360405081043611

/-! ## A046126.P12473138631201655599

`∏[Δ[n*(n+1)%2+n]]`
-/

namespace A046126.P12473138631201655599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P12473138631201655599

/-! ## A046126.P15101026153992840288

`∏[Δ[2*n/comp[3*n]%3]]`
-/

namespace A046126.P15101026153992840288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n % 3 : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P15101026153992840288

/-! ## A046126.P9161359407545868375

`∏[2-(a(n-1)-2*and(1, n))]` with `a(0)=1`
-/

namespace A046126.P9161359407545868375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - (f1 (n - 1) - (2 * Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P9161359407545868375

/-! ## A046126.P11612985231091397820

`∏[(2*n+1)*and(1, n)-(n-1)]`
-/

namespace A046126.P11612985231091397820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land 1 n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P11612985231091397820

/-! ## A046126.P8437908804909493511

`a(n-1)*Δ[lcm(n+1, 2*n)/(n+1)]` with `a(0)=1`
-/

namespace A046126.P8437908804909493511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A046126.P8437908804909493511

/-! ## A046126.P18237681584261347791

`∏[Δ[A022998(n)]]`
-/

namespace A046126.P18237681584261347791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046126.P18237681584261347791

/-!
# A046127: a(0) = 0; for n>0, a(n) = maximal number of regions into which space can be divided by n spheres.

The programs for A046127, the canonical program `A046127.P10871150297714877059` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046127 has offset 0).

The definition of A046127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046127.P14212642577195472655

`n*(n²-3*n+8)/3`
-/

namespace A046127.P14212642577195472655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 8) : ℚ) / 3

end

end A046127.P14212642577195472655

namespace A046127

/-- `n*(n²-3*n+8)/3` -/
def P14212642577195472655.Spec : Prop :=
  ∀ n, P14212642577195472655.a n = (A046127 n : ℚ)

theorem P14212642577195472655.correct : P14212642577195472655.Spec := by
  intro n
  induction n with
  | zero => simp [A046127, A046127.P14212642577195472655.a, A046127.P10871150297714877059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A046127, Nat.add_sub_cancel, A046127.P14212642577195472655.a, A046127.P10871150297714877059.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A046127

/-! ## A046127.P10871150297714877059

`a(n-1)+n*(n-3)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046127

/-- `a(n-1)+n*(n-3)+4` -/
def P10871150297714877059.Spec : Prop :=
  ∀ n, P10871150297714877059.a n = A046127 n

theorem P10871150297714877059.correct : P10871150297714877059.Spec := by
  intro n
  simp only [A046127]

end A046127

/-! ## A046127.P6039877213460675724

`2*(C(n, 3)+n)`
-/

namespace A046127.P6039877213460675724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose n 3 + n)

end

end A046127.P6039877213460675724

namespace A046127

/-- `2*(C(n, 3)+n)` -/
def P6039877213460675724.Spec : Prop :=
  ∀ n, (P6039877213460675724.a n : ℤ) = A046127 n

end A046127

/-! ## A046127.P699559869566111991

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A046127.P699559869566111991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046127.P699559869566111991

namespace A046127

/-- `∑[∑[a(n-1)+2]]` -/
def P699559869566111991.Spec : Prop :=
  ∀ n, (P699559869566111991.a n : ℤ) = A046127 n

end A046127

/-! ## A046127.P15546628637927990549

`∑[∑[2*(n-2%(n+1))]]`
-/

namespace A046127.P15546628637927990549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046127.P15546628637927990549

namespace A046127

/-- `∑[∑[2*(n-2%(n+1))]]` -/
def P15546628637927990549.Spec : Prop :=
  ∀ n, P15546628637927990549.a n = A046127 n

end A046127

/-! ## A046127.P6407265608640185881

`∑[∑[2*(3*n)%(n+1)]]`
-/

namespace A046127.P6407265608640185881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * n % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046127.P6407265608640185881

namespace A046127

/-- `∑[∑[2*(3*n)%(n+1)]]` -/
def P6407265608640185881.Spec : Prop :=
  ∀ n, (P6407265608640185881.a n : ℤ) = A046127 n

end A046127

/-! ## A046127.P7068995043315233300

`2*(∑[∑[n]]-lcm(n, n-1))`
-/

namespace A046127.P7068995043315233300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ))

end

end A046127.P7068995043315233300

namespace A046127

/-- `2*(∑[∑[n]]-lcm(n, n-1))` -/
def P7068995043315233300.Spec : Prop :=
  ∀ n, P7068995043315233300.a n = A046127 n

end A046127

/-! ## A046127.P17430145078226415698

`(2-n)²+a(n-1)+n` with `a(0)=0`
-/

namespace A046127.P17430145078226415698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 - (n : ℤ)) ^ 2 + (a (n - 1) + (n : ℤ))

end

end A046127.P17430145078226415698

namespace A046127

/-- `(2-n)²+a(n-1)+n` -/
def P17430145078226415698.Spec : Prop :=
  ∀ n, P17430145078226415698.a n = A046127 n

end A046127

/-! ## A046127.P12602789378508861859

`2*∑[a(n-1)-(2-n)]` with `a(0)=0, a(1)=1`
-/

namespace A046127.P12602789378508861859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046127.P12602789378508861859

namespace A046127

/-- `2*∑[a(n-1)-(2-n)]` -/
def P12602789378508861859.Spec : Prop :=
  ∀ n, P12602789378508861859.a n = A046127 n

end A046127

/-! ## A046127.P8277272068846743062

`∑[a(n-1)-(4-n-n)]` with `a(0)=0, a(1)=2`
-/

namespace A046127.P8277272068846743062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046127.P8277272068846743062

namespace A046127

/-- `∑[a(n-1)-(4-n-n)]` -/
def P8277272068846743062.Spec : Prop :=
  ∀ n, P8277272068846743062.a n = A046127 n

end A046127

/-! ## A046127.P15510712934598779418

`∑[∑[2*n]]-(C(2*n, 2)-n)`
-/

namespace A046127.P15510712934598779418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose (2 * n) 2 : ℤ) - (n : ℤ))

end

end A046127.P15510712934598779418

namespace A046127

/-- `∑[∑[2*n]]-(C(2*n, 2)-n)` -/
def P15510712934598779418.Spec : Prop :=
  ∀ n, P15510712934598779418.a n = A046127 n

end A046127

/-! ## A046127.P10530811152348364079

`abs(n-3-(1-n)²-a(n-1))` with `a(0)=0`
-/

namespace A046127.P10530811152348364079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |(n : ℤ) - 3 - (1 - (n : ℤ)) ^ 2 - a (n - 1)|

end

end A046127.P10530811152348364079

namespace A046127

/-- `abs(n-3-(1-n)²-a(n-1))` -/
def P10530811152348364079.Spec : Prop :=
  ∀ n, P10530811152348364079.a n = A046127 n

end A046127

/-! ## A046127.P15135684987767763405

`lcm(2, ∑[n-2-(1-n)²]-(n-3))`
-/

namespace A046127.P15135684987767763405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 3))

end

end A046127.P15135684987767763405

namespace A046127

/-- `lcm(2, ∑[n-2-(1-n)²]-(n-3))` -/
def P15135684987767763405.Spec : Prop :=
  ∀ n, (P15135684987767763405.a n : ℤ) = A046127 n

end A046127

/-! ## A046127.P9221891874517763214

`∑[∑[and(2*n+1, 2*n)]]-(n-1)*2*n`
-/

namespace A046127.P9221891874517763214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) * (2 * n : ℤ)

end

end A046127.P9221891874517763214

namespace A046127

/-- `∑[∑[and(2*n+1, 2*n)]]-(n-1)*2*n` -/
def P9221891874517763214.Spec : Prop :=
  ∀ n, P9221891874517763214.a n = A046127 n

end A046127

/-! ## A046127.P3074541615945186181

`A136254(n)-4`
-/

namespace A046127.P3074541615945186181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136254 n - 4

end

end A046127.P3074541615945186181

namespace A046127

/-- `A136254(n)-4` -/
def P3074541615945186181.Spec : Prop :=
  ∀ n, P3074541615945186181.a n = A046127 n

end A046127

/-! ## A046127.P9751674170616638540

`2*n+A007290(n)`
-/

namespace A046127.P9751674170616638540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A007290 n

end

end A046127.P9751674170616638540

namespace A046127

/-- `2*n+A007290(n)` -/
def P9751674170616638540.Spec : Prop :=
  ∀ n, P9751674170616638540.a n = A046127 n

end A046127

/-! ## A046127.P16379439692510591994

`∑[A097141(n)²+n]`
-/

namespace A046127.P16379439692510591994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097141 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046127.P16379439692510591994

namespace A046127

/-- `∑[A097141(n)²+n]` -/
def P16379439692510591994.Spec : Prop :=
  ∀ n, P16379439692510591994.a n = A046127 n

end A046127

/-! ## A046127.P2195927395312669144

`A086514(n+1)-1+n`
-/

namespace A046127.P2195927395312669144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086514 (n + 1) - 1 + (n : ℤ)

end

end A046127.P2195927395312669144

namespace A046127

/-- `A086514(n+1)-1+n` -/
def P2195927395312669144.Spec : Prop :=
  ∀ n, P2195927395312669144.a n = A046127 n

end A046127

/-! ## A046127.P16530408986570642185

`∑[(n+1)²]-A140066(n+1)`
-/

namespace A046127.P16530408986570642185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A140066 (n + 1)

end

end A046127.P16530408986570642185

namespace A046127

/-- `∑[(n+1)²]-A140066(n+1)` -/
def P16530408986570642185.Spec : Prop :=
  ∀ n, P16530408986570642185.a n = A046127 n

end A046127

/-! ## A046127.P2622804791615244558

`A007290(n)+A005843(n)`
-/

namespace A046127.P2622804791615244558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A005843 n

end

end A046127.P2622804791615244558

namespace A046127

/-- `A007290(n)+A005843(n)` -/
def P2622804791615244558.Spec : Prop :=
  ∀ n, P2622804791615244558.a n = A046127 n

end A046127

/-!
# A046132: Larger member p+4 of cousin primes (p, p+4).

The programs for A046132, there is no canonical definition to state claims against.
-/

/-! ## A046132.P5572131384233092713

`A087679(n+1)+2`
-/

namespace A046132.P5572131384233092713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) + 2

end

end A046132.P5572131384233092713

/-! ## A046132.P1917246567029150511

`A015913(n+1)+4`
-/

namespace A046132.P1917246567029150511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) + 4

end

end A046132.P1917246567029150511

/-! ## A046132.P6072090789521613652

`2*A088762(n+1)+3`
-/

namespace A046132.P6072090789521613652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088762 (n + 1) + 3

end

end A046132.P6072090789521613652

/-! ## A046132.P1199807341187889652

`2*A047847(n+1)+5`
-/

namespace A046132.P1199807341187889652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047847 (n + 1) + 5

end

end A046132.P1199807341187889652

/-! ## A046132.P9425927902474364075

`A165986(n+1)/2+4`
-/

namespace A046132.P9425927902474364075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165986 (n + 1) : ℚ) / 2 + 4

end

end A046132.P9425927902474364075

/-! ## A046132.P4409999397379265908

`ceil(sqrt(A143206(n+1)))+2`
-/

namespace A046132.P4409999397379265908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A143206 (n + 1) : ℝ)⌉ + 2

end

end A046132.P4409999397379265908

/-! ## A046132.P1866311206489500754

`A031505(n+1)-A053320(n+1)`
-/

namespace A046132.P1866311206489500754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1) - A053320 (n + 1)

end

end A046132.P1866311206489500754

/-! ## A046132.P11033565685385332030

`A067830(n+2)`
-/

namespace A046132.P11033565685385332030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067830 (n + 2)

end

end A046132.P11033565685385332030

/-! ## A046132.P17395360364759574008

`A172238(n+2)+4`
-/

namespace A046132.P17395360364759574008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 2) + 4

end

end A046132.P17395360364759574008

/-! ## A046132.P16570821972356549983

`A111980(A004277(n))`
-/

namespace A046132.P16570821972356549983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (A004277 n).toNat

end

end A046132.P16570821972356549983

/-! ## A046132.P13847043934251501532

`A111980(A004275(n+1))`
-/

namespace A046132.P13847043934251501532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (A004275 (n + 1)).toNat

end

end A046132.P13847043934251501532

/-! ## A046132.P5446849746472310441

`A094343(2*(n+1))`
-/

namespace A046132.P5446849746472310441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (2 * (n + 1))

end

end A046132.P5446849746472310441

/-! ## A046132.P4479412229916047135

`A072541(Δ[n²])+3`
-/

namespace A046132.P4479412229916047135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 3

end

end A046132.P4479412229916047135

/-! ## A046132.P1059334775859627134

`A094343(n+1+n)+4`
-/

namespace A046132.P1059334775859627134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (n + 1 + n) + 4

end

end A046132.P1059334775859627134

/-! ## A046132.P9849711857924303958

`record[A094343(A258451(2*n))]`
-/

namespace A046132.P9849711857924303958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (A258451 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046132.P9849711857924303958

/-! ## A046132.P6317358638634767668

`p?[p?[2*n+1]+4]`
-/

namespace A046132.P6317358638634767668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046132.P6317358638634767668

/-! ## A046132.P9163569614819985017

`p?[A175221(n+1)]`
-/

namespace A046132.P9163569614819985017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046132.P9163569614819985017

/-! ## A046132.P1537429069169452647

`p?[A113935(n+1)+1]`
-/

namespace A046132.P1537429069169452647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046132.P1537429069169452647

/-! ## A046132.P16134678540838539405

`p?[A048974(n+1)+2]`
-/

namespace A046132.P16134678540838539405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046132.P16134678540838539405

/-! ## A046132.P2474496437006722822

`p?[A052147(n+1)+2]`
-/

namespace A046132.P2474496437006722822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046132.P2474496437006722822

/-!
# A046133: Primes p such that p + 12 is also prime.

The programs for A046133, there is no canonical definition to state claims against.
-/

/-! ## A046133.P10341966486481443192

`A087681(n+1)-6`
-/

namespace A046133.P10341966486481443192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) - 6

end

end A046133.P10341966486481443192

/-! ## A046133.P5973781651529003580

`A092216(n+1)-12`
-/

namespace A046133.P5973781651529003580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 12

end

end A046133.P5973781651529003580

/-! ## A046133.P17550408941422617866

`2*A088766(n+1)-5`
-/

namespace A046133.P17550408941422617866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088766 (n + 1) - 5

end

end A046133.P17550408941422617866

/-! ## A046133.P4421906355673300745

`p?[A015917(n+1)]`
-/

namespace A046133.P4421906355673300745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P4421906355673300745

/-! ## A046133.P14034302380150854369

`p?[A056775(n+1)]`
-/

namespace A046133.P14034302380150854369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P14034302380150854369

/-! ## A046133.P11417254340396357089

`∩[A015917(n+1), A015919(n+1)]`
-/

namespace A046133.P11417254340396357089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046133.P11417254340396357089

/-! ## A046133.P14683894667898547712

`∩[A009087(n+1), A015917(n+1)]`
-/

namespace A046133.P14683894667898547712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046133.P14683894667898547712

/-! ## A046133.P1028919691033770434

`∩[A015917(n+1), A045393(n+1)]`
-/

namespace A046133.P1028919691033770434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046133.P1028919691033770434

/-! ## A046133.P9590301445909296963

`∩[A015917(n+1), A336547(n+1)]`
-/

namespace A046133.P9590301445909296963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046133.P9590301445909296963

/-! ## A046133.P12505391445828417259

`∩[A049545(n+1), A015917(n+1)]`
-/

namespace A046133.P12505391445828417259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046133.P12505391445828417259

/-! ## A046133.P9109572404923759657

`p?[A172407(n+1)-2]`
-/

namespace A046133.P9109572404923759657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P9109572404923759657

/-! ## A046133.P8478327348269244650

`p?[2*A153081(n+1)+1]`
-/

namespace A046133.P8478327348269244650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153081 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P8478327348269244650

/-! ## A046133.P1160748403879637124

`p?[2*A101448(n+1)-1]`
-/

namespace A046133.P1160748403879637124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101448 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P1160748403879637124

/-! ## A046133.P6351273174433250501

`p?[p?[2*n+1]-12]`
-/

namespace A046133.P6351273174433250501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P6351273174433250501

/-! ## A046133.P16609700934749759114

`p?[A040976(n+1)-10]`
-/

namespace A046133.P16609700934749759114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P16609700934749759114

/-! ## A046133.P4089035922837121551

`p?[A006093(n+1)-11]`
-/

namespace A046133.P4089035922837121551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P4089035922837121551

/-! ## A046133.P9943165787608118140

`p?[A000040(n+1)-12]`
-/

namespace A046133.P9943165787608118140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P9943165787608118140

/-! ## A046133.P9859736485946695516

`p?[A065091(n+1)-12]`
-/

namespace A046133.P9859736485946695516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P9859736485946695516

/-! ## A046133.P9767950837720171792

`p?[A008864(n+1)-13]`
-/

namespace A046133.P9767950837720171792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046133.P9767950837720171792

/-! ## A046133.P5013543989882959959

`∩[A000040(n+1), A015917(n+1)]`
-/

namespace A046133.P5013543989882959959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046133.P5013543989882959959

/-!
# A046134: p, p+2 and p+8 are primes.

The programs for A046134, there is no canonical definition to state claims against.
-/

/-! ## A046134.P11248341335974301994

`∩[A001359(n+1), A049436(n+1)]`
-/

namespace A046134.P11248341335974301994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P11248341335974301994

/-! ## A046134.P14176949502865782815

`∩[A049436(n+1), A141830(n+1)]`
-/

namespace A046134.P14176949502865782815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P14176949502865782815

/-! ## A046134.P15872245431638229479

`∩[A049436(n+1), A054799(n+1)]`
-/

namespace A046134.P15872245431638229479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P15872245431638229479

/-! ## A046134.P2702153398341812788

`∩[A049436(n+1), A063700(n+1)]`
-/

namespace A046134.P2702153398341812788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P2702153398341812788

/-! ## A046134.P6820475818720666063

`∩[A049436(n+1), A063693(n+1)]`
-/

namespace A046134.P6820475818720666063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P6820475818720666063

/-! ## A046134.P15703245232230274918

`∩[A001359(n+1), A015915(n+1)]`
-/

namespace A046134.P15703245232230274918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P15703245232230274918

/-! ## A046134.P11575612673523985525

`∩[A001359(n+1), A023202(n+1)]`
-/

namespace A046134.P11575612673523985525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P11575612673523985525

/-! ## A046134.P7568291817825090725

`∩[A015915(n+1), A054799(n+1)]`
-/

namespace A046134.P7568291817825090725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P7568291817825090725

/-! ## A046134.P16973863685733874202

`∩[A023202(n+1), A054799(n+1)]`
-/

namespace A046134.P16973863685733874202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P16973863685733874202

/-! ## A046134.P8044844580767095421

`∩[A015915(n+1), A063693(n+1)]`
-/

namespace A046134.P8044844580767095421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P8044844580767095421

/-! ## A046134.P16249752450238021633

`∩[A023202(n+1), A063693(n+1)]`
-/

namespace A046134.P16249752450238021633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P16249752450238021633

/-! ## A046134.P6243663461852221449

`∩[A023202(n+1), A063700(n+1)]`
-/

namespace A046134.P6243663461852221449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P6243663461852221449

/-! ## A046134.P8973638864972369949

`∩[A015915(n+1), A141830(n+1)]`
-/

namespace A046134.P8973638864972369949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P8973638864972369949

/-! ## A046134.P6956426391364374994

`∩[A023202(n+1), A141830(n+1)]`
-/

namespace A046134.P6956426391364374994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P6956426391364374994

/-! ## A046134.P15932272932233903464

`∩[A015915(n+1), A238528(n+1)]`
-/

namespace A046134.P15932272932233903464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P15932272932233903464

/-! ## A046134.P13730559341416765870

`∩[A378983(n+1), A015915(n+1)]`
-/

namespace A046134.P13730559341416765870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P13730559341416765870

/-! ## A046134.P2910144429954369887

`∩[A015915(n+1), A073534(n+1)]`
-/

namespace A046134.P2910144429954369887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P2910144429954369887

/-! ## A046134.P14144009917999107201

`∩[A023202(n+1), A073534(n+1)]`
-/

namespace A046134.P14144009917999107201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P14144009917999107201

/-! ## A046134.P12827732918210778760

`∩[A049436(n+1), A073534(n+1)]`
-/

namespace A046134.P12827732918210778760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P12827732918210778760

/-! ## A046134.P18336965843413283622

`∩[A280590(n+1), A023202(n+1)]`
-/

namespace A046134.P18336965843413283622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046134.P18336965843413283622

/-!
# A046135: Primes p such that p+2 and p+12 are primes.

The programs for A046135, there is no canonical definition to state claims against.
-/

/-! ## A046135.P10806519336637224351

`∩[A001359(n+1), A086136(n+1)]`
-/

namespace A046135.P10806519336637224351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P10806519336637224351

/-! ## A046135.P17303319594665799049

`∩[A054799(n+1), A086136(n+1)]`
-/

namespace A046135.P17303319594665799049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P17303319594665799049

/-! ## A046135.P18214219893985819227

`∩[A063693(n+1), A086136(n+1)]`
-/

namespace A046135.P18214219893985819227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P18214219893985819227

/-! ## A046135.P8939036433709176722

`∩[A063700(n+1), A086136(n+1)]`
-/

namespace A046135.P8939036433709176722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P8939036433709176722

/-! ## A046135.P2667234330638819108

`∩[A001838(n+1), A086136(n+1)]`
-/

namespace A046135.P2667234330638819108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P2667234330638819108

/-! ## A046135.P11754411105560709700

`p?[A015916(n+1)-2]`
-/

namespace A046135.P11754411105560709700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046135.P11754411105560709700

/-! ## A046135.P18132914855631212235

`p?[A262086(n+1)-2]`
-/

namespace A046135.P18132914855631212235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046135.P18132914855631212235

/-! ## A046135.P14784342162515596686

`p?[A087696(n+1)-7]`
-/

namespace A046135.P14784342162515596686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046135.P14784342162515596686

/-! ## A046135.P1361638922268334320

`p?[A046133(n+1)+2]-2`
-/

namespace A046135.P1361638922268334320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A046135.P1361638922268334320

/-! ## A046135.P2168734213601988391

`∩[A001359(n+1), A015917(n+1)]`
-/

namespace A046135.P2168734213601988391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P2168734213601988391

/-! ## A046135.P689173447031959752

`∩[A001838(n+1), A015917(n+1)]`
-/

namespace A046135.P689173447031959752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P689173447031959752

/-! ## A046135.P8975390281592377069

`∩[A001359(n+1), A046133(n+1)]`
-/

namespace A046135.P8975390281592377069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P8975390281592377069

/-! ## A046135.P2944816847458078151

`∩[A001838(n+1), A046133(n+1)]`
-/

namespace A046135.P2944816847458078151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P2944816847458078151

/-! ## A046135.P4535977073801031916

`∩[A015917(n+1), A054799(n+1)]`
-/

namespace A046135.P4535977073801031916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P4535977073801031916

/-! ## A046135.P943814260787578961

`∩[A015917(n+1), A063693(n+1)]`
-/

namespace A046135.P943814260787578961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P943814260787578961

/-! ## A046135.P10865333081673894119

`∩[A015917(n+1), A073534(n+1)]`
-/

namespace A046135.P10865333081673894119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P10865333081673894119

/-! ## A046135.P3091362613531961082

`∩[A046133(n+1), A054799(n+1)]`
-/

namespace A046135.P3091362613531961082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P3091362613531961082

/-! ## A046135.P10170847328098265607

`∩[A046133(n+1), A063693(n+1)]`
-/

namespace A046135.P10170847328098265607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P10170847328098265607

/-! ## A046135.P1616770709126696986

`∩[A046133(n+1), A063700(n+1)]`
-/

namespace A046135.P1616770709126696986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046135.P1616770709126696986

/-!
# A046136: Primes p such that p, p+4 and p+10 are primes.

The programs for A046136, the canonical program `A046136.P11134419459334397821` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046136 has offset 1).

The definition of A046136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046136.P14591196186409372305

`∩[A015913(n+1), A086135(n+1)]`
-/

namespace A046136.P14591196186409372305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P14591196186409372305

namespace A046136

/-- `∩[A015913(n+1), A086135(n+1)]` -/
def P14591196186409372305.Spec : Prop :=
  ∀ n, (P14591196186409372305.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P18291945689710166938

`∩[A086135(n+1), A172238(n+1)]`
-/

namespace A046136.P18291945689710166938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P18291945689710166938

namespace A046136

/-- `∩[A086135(n+1), A172238(n+1)]` -/
def P18291945689710166938.Spec : Prop :=
  ∀ n, (P18291945689710166938.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P2492779077226576963

`∩[A086135(n+1), A164572(n+1)]`
-/

namespace A046136.P2492779077226576963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P2492779077226576963

namespace A046136

/-- `∩[A086135(n+1), A164572(n+1)]` -/
def P2492779077226576963.Spec : Prop :=
  ∀ n, (P2492779077226576963.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P697874445458379915

`∩[A056772(n+1), A086135(n+1)]`
-/

namespace A046136.P697874445458379915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P697874445458379915

namespace A046136

/-- `∩[A056772(n+1), A086135(n+1)]` -/
def P697874445458379915.Spec : Prop :=
  ∀ n, (P697874445458379915.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P10081311545590804856

`p?[A087696(n+1)-1]-4`
-/

namespace A046136.P10081311545590804856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A046136.P10081311545590804856

namespace A046136

/-- `p?[A087696(n+1)-1]-4` -/
def P10081311545590804856.Spec : Prop :=
  ∀ n, P10081311545590804856.a n = A046136 (n + 1)

end A046136

/-! ## A046136.P5895444566288124914

`∩[A015913(n+1), A015916(n+1)]`
-/

namespace A046136.P5895444566288124914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P5895444566288124914

namespace A046136

/-- `∩[A015913(n+1), A015916(n+1)]` -/
def P5895444566288124914.Spec : Prop :=
  ∀ n, (P5895444566288124914.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P865155597459047862

`∩[A015916(n+1), A056772(n+1)]`
-/

namespace A046136.P865155597459047862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P865155597459047862

namespace A046136

/-- `∩[A015916(n+1), A056772(n+1)]` -/
def P865155597459047862.Spec : Prop :=
  ∀ n, (P865155597459047862.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P15809848383709422232

`∩[A015916(n+1), A172238(n+1)]`
-/

namespace A046136.P15809848383709422232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P15809848383709422232

namespace A046136

/-- `∩[A015916(n+1), A172238(n+1)]` -/
def P15809848383709422232.Spec : Prop :=
  ∀ n, (P15809848383709422232.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P4555068935401616609

`∩[A015913(n+1), A262086(n+1)]`
-/

namespace A046136.P4555068935401616609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P4555068935401616609

namespace A046136

/-- `∩[A015913(n+1), A262086(n+1)]` -/
def P4555068935401616609.Spec : Prop :=
  ∀ n, (P4555068935401616609.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P11134419459334397821

`p?[A023201(n+1)-4]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046136

/-- `p?[A023201(n+1)-4]` -/
def P11134419459334397821.Spec : Prop :=
  ∀ n, P11134419459334397821.a n = A046136 (n + 1)

theorem P11134419459334397821.correct : P11134419459334397821.Spec := by
  intro n
  simp only [A046136, Nat.add_sub_cancel]

end A046136

/-! ## A046136.P10037377075285664033

`p?[A087695(n+1)-7]`
-/

namespace A046136.P10037377075285664033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046136.P10037377075285664033

namespace A046136

/-- `p?[A087695(n+1)-7]` -/
def P10037377075285664033.Spec : Prop :=
  ∀ n, P10037377075285664033.a n = A046136 (n + 1)

theorem P10037377075285664033.correct : P10037377075285664033.Spec := by
  intro n
  simp only [A046136, Nat.add_sub_cancel, A046136.P10037377075285664033.f1, A046136.P10037377075285664033.a, A046136.P11134419459334397821.f1, A046136.P11134419459334397821.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A087695, A087695.P4000952237766351123.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A046117, A046117.P460302525211984613.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046136

/-! ## A046136.P14422260497611110770

`p?[A046117(n+1)-10]`
-/

namespace A046136.P14422260497611110770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046136.P14422260497611110770

namespace A046136

/-- `p?[A046117(n+1)-10]` -/
def P14422260497611110770.Spec : Prop :=
  ∀ n, P14422260497611110770.a n = A046136 (n + 1)

theorem P14422260497611110770.correct : P14422260497611110770.Spec := by
  intro n
  simp only [A046136, Nat.add_sub_cancel, A046136.P14422260497611110770.f1, A046136.P14422260497611110770.a, A046136.P11134419459334397821.f1, A046136.P11134419459334397821.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046136

/-! ## A046136.P6163113061895662277

`p?[2*A088763(n+1)-7]`
-/

namespace A046136.P6163113061895662277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046136.P6163113061895662277

namespace A046136

/-- `p?[2*A088763(n+1)-7]` -/
def P6163113061895662277.Spec : Prop :=
  ∀ n, P6163113061895662277.a n = A046136 (n + 1)

end A046136

/-! ## A046136.P2204646810200860337

`∩[A015916(n+1), A061771(n+1)]`
-/

namespace A046136.P2204646810200860337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P2204646810200860337

namespace A046136

/-- `∩[A015916(n+1), A061771(n+1)]` -/
def P2204646810200860337.Spec : Prop :=
  ∀ n, (P2204646810200860337.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P4723577192422521308

`∩[A061771(n+1), A086135(n+1)]`
-/

namespace A046136.P4723577192422521308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P4723577192422521308

namespace A046136

/-- `∩[A061771(n+1), A086135(n+1)]` -/
def P4723577192422521308.Spec : Prop :=
  ∀ n, (P4723577192422521308.a n : ℤ) = A046136 (n + 1)

end A046136

/-! ## A046136.P8627416754137173762

`∩[A061771(n+1), A262086(n+1)]`
-/

namespace A046136.P8627416754137173762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046136.P8627416754137173762

namespace A046136

/-- `∩[A061771(n+1), A262086(n+1)]` -/
def P8627416754137173762.Spec : Prop :=
  ∀ n, (P8627416754137173762.a n : ℤ) = A046136 (n + 1)

end A046136

/-!
# A046137: Primes p such that p+4 and p+12 are also prime.

The programs for A046137, the canonical program `A046137.P13806103826788507979` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046137 has offset 1).

The definition of A046137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046137.P8401567949967779979

`∩[A015913(n+1), A086136(n+1)]`
-/

namespace A046137.P8401567949967779979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P8401567949967779979

namespace A046137

/-- `∩[A015913(n+1), A086136(n+1)]` -/
def P8401567949967779979.Spec : Prop :=
  ∀ n, (P8401567949967779979.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P11004453062534610489

`∩[A029710(n+1), A086136(n+1)]`
-/

namespace A046137.P11004453062534610489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P11004453062534610489

namespace A046137

/-- `∩[A029710(n+1), A086136(n+1)]` -/
def P11004453062534610489.Spec : Prop :=
  ∀ n, (P11004453062534610489.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P8331378867199597953

`∩[A086136(n+1), A172238(n+1)]`
-/

namespace A046137.P8331378867199597953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P8331378867199597953

namespace A046137

/-- `∩[A086136(n+1), A172238(n+1)]` -/
def P8331378867199597953.Spec : Prop :=
  ∀ n, (P8331378867199597953.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P8788931979871256984

`∩[A056772(n+1), A086136(n+1)]`
-/

namespace A046137.P8788931979871256984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P8788931979871256984

namespace A046137

/-- `∩[A056772(n+1), A086136(n+1)]` -/
def P8788931979871256984.Spec : Prop :=
  ∀ n, (P8788931979871256984.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P13806103826788507979

`p?[A023202(n+1)-4]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046137

/-- `p?[A023202(n+1)-4]` -/
def P13806103826788507979.Spec : Prop :=
  ∀ n, P13806103826788507979.a n = A046137 (n + 1)

theorem P13806103826788507979.correct : P13806103826788507979.Spec := by
  intro n
  simp only [A046137, Nat.add_sub_cancel]

end A046137

/-! ## A046137.P8522369091476290318

`p?[A262085(n+1)-4]`
-/

namespace A046137.P8522369091476290318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046137.P8522369091476290318

namespace A046137

/-- `p?[A262085(n+1)-4]` -/
def P8522369091476290318.Spec : Prop :=
  ∀ n, P8522369091476290318.a n = A046137 (n + 1)

end A046137

/-! ## A046137.P12424091931217484475

`p?[A087680(n+1)-8]`
-/

namespace A046137.P12424091931217484475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046137.P12424091931217484475

namespace A046137

/-- `p?[A087680(n+1)-8]` -/
def P12424091931217484475.Spec : Prop :=
  ∀ n, P12424091931217484475.a n = A046137 (n + 1)

theorem P12424091931217484475.correct : P12424091931217484475.Spec := by
  intro n
  simp only [A046137, Nat.add_sub_cancel, A046137.P12424091931217484475.f1, A046137.P12424091931217484475.a, A046137.P13806103826788507979.f1, A046137.P13806103826788507979.a, A023202, A023202.P11096894219968463901.f1, A023202.P11096894219968463901.a, A087680, A087680.P10355844668314196368.a, A015915, A015915.P7648696316371349775.f1, A015915.P7648696316371349775.f2, A015915.P7648696316371349775.a, A005408, A005408.P17437947328870227736.a, A054024, A054024.P118057642486655144.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046137

/-! ## A046137.P10611098932021295726

`p?[2*A088764(n+2)-7]`
-/

namespace A046137.P10611098932021295726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088764 (n + 2) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046137.P10611098932021295726

namespace A046137

/-- `p?[2*A088764(n+2)-7]` -/
def P10611098932021295726.Spec : Prop :=
  ∀ n, P10611098932021295726.a n = A046137 (n + 1)

end A046137

/-! ## A046137.P16198043359843933591

`p?[A046133(n+1)+4]-4`
-/

namespace A046137.P16198043359843933591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A046137.P16198043359843933591

namespace A046137

/-- `p?[A046133(n+1)+4]-4` -/
def P16198043359843933591.Spec : Prop :=
  ∀ n, P16198043359843933591.a n = A046137 (n + 1)

end A046137

/-! ## A046137.P6206470563100779339

`∩[A015913(n+1), A046133(n+1)]`
-/

namespace A046137.P6206470563100779339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P6206470563100779339

namespace A046137

/-- `∩[A015913(n+1), A046133(n+1)]` -/
def P6206470563100779339.Spec : Prop :=
  ∀ n, (P6206470563100779339.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P17403900309843850595

`∩[A029710(n+1), A046133(n+1)]`
-/

namespace A046137.P17403900309843850595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P17403900309843850595

namespace A046137

/-- `∩[A029710(n+1), A046133(n+1)]` -/
def P17403900309843850595.Spec : Prop :=
  ∀ n, (P17403900309843850595.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P14364339054858788787

`∩[A046133(n+1), A056772(n+1)]`
-/

namespace A046137.P14364339054858788787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P14364339054858788787

namespace A046137

/-- `∩[A046133(n+1), A056772(n+1)]` -/
def P14364339054858788787.Spec : Prop :=
  ∀ n, (P14364339054858788787.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P4566030088468033223

`∩[A046133(n+1), A172238(n+1)]`
-/

namespace A046137.P4566030088468033223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P4566030088468033223

namespace A046137

/-- `∩[A046133(n+1), A172238(n+1)]` -/
def P4566030088468033223.Spec : Prop :=
  ∀ n, (P4566030088468033223.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P8959623786912604287

`p?[A015917(n+1)+4]-4`
-/

namespace A046137.P8959623786912604287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A046137.P8959623786912604287

namespace A046137

/-- `p?[A015917(n+1)+4]-4` -/
def P8959623786912604287.Spec : Prop :=
  ∀ n, P8959623786912604287.a n = A046137 (n + 1)

end A046137

/-! ## A046137.P6510723061415956036

`∩[A015913(n+1), A015917(n+1)]`
-/

namespace A046137.P6510723061415956036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P6510723061415956036

namespace A046137

/-- `∩[A015913(n+1), A015917(n+1)]` -/
def P6510723061415956036.Spec : Prop :=
  ∀ n, (P6510723061415956036.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P6533242633639824526

`∩[A015917(n+1), A029710(n+1)]`
-/

namespace A046137.P6533242633639824526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P6533242633639824526

namespace A046137

/-- `∩[A015917(n+1), A029710(n+1)]` -/
def P6533242633639824526.Spec : Prop :=
  ∀ n, (P6533242633639824526.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P7455998384292382422

`∩[A015917(n+1), A056772(n+1)]`
-/

namespace A046137.P7455998384292382422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P7455998384292382422

namespace A046137

/-- `∩[A015917(n+1), A056772(n+1)]` -/
def P7455998384292382422.Spec : Prop :=
  ∀ n, (P7455998384292382422.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P15975231957350305778

`∩[A015917(n+1), A172238(n+1)]`
-/

namespace A046137.P15975231957350305778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P15975231957350305778

namespace A046137

/-- `∩[A015917(n+1), A172238(n+1)]` -/
def P15975231957350305778.Spec : Prop :=
  ∀ n, (P15975231957350305778.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P8616884034630089222

`∩[A015913(n+1), A056775(n+1)]`
-/

namespace A046137.P8616884034630089222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P8616884034630089222

namespace A046137

/-- `∩[A015913(n+1), A056775(n+1)]` -/
def P8616884034630089222.Spec : Prop :=
  ∀ n, (P8616884034630089222.a n : ℤ) = A046137 (n + 1)

end A046137

/-! ## A046137.P16609956976189232609

`∩[A029710(n+1), A056775(n+1)]`
-/

namespace A046137.P16609956976189232609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046137.P16609956976189232609

namespace A046137

/-- `∩[A029710(n+1), A056775(n+1)]` -/
def P16609956976189232609.Spec : Prop :=
  ∀ n, (P16609956976189232609.a n : ℤ) = A046137 (n + 1)

end A046137

/-!
# A046138: Primes p such that p+6 and p+8 are also primes.

The programs for A046138, there is no canonical definition to state claims against.
-/

/-! ## A046138.P8514192068106358019

`A144842(n+1)-3`
-/

namespace A046138.P8514192068106358019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144842 (n + 1) - 3

end

end A046138.P8514192068106358019

/-! ## A046138.P3971074844622950037

`∪[A007530(n+1), A049438(n+1)]`
-/

namespace A046138.P3971074844622950037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P3971074844622950037

/-! ## A046138.P5377383617484221991

`p?[A001359(n+1)-6]`
-/

namespace A046138.P5377383617484221991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P5377383617484221991

/-! ## A046138.P10506687309322257007

`p?[A014574(n+1)-7]`
-/

namespace A046138.P10506687309322257007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P10506687309322257007

/-! ## A046138.P4488756743123088567

`p?[A006512(n+1)-8]`
-/

namespace A046138.P4488756743123088567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P4488756743123088567

/-! ## A046138.P8651557240528657924

`p?[A067829(n+1)-8]`
-/

namespace A046138.P8651557240528657924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P8651557240528657924

/-! ## A046138.P16694058712301932027

`p?[2*A116958(n+1)-1]`
-/

namespace A046138.P16694058712301932027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116958 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P16694058712301932027

/-! ## A046138.P7736774711472874759

`p?[A001838(n+1)-6]`
-/

namespace A046138.P7736774711472874759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P7736774711472874759

/-! ## A046138.P17925545774208751264

`p?[A056853(n+1)-7]`
-/

namespace A046138.P17925545774208751264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P17925545774208751264

/-! ## A046138.P1687080897095239597

`p?[A001097(2*(n+1))-6]`
-/

namespace A046138.P1687080897095239597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046138.P1687080897095239597

/-! ## A046138.P6593972176606596390

`∩[A015914(n+1), A015915(n+1)]`
-/

namespace A046138.P6593972176606596390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P6593972176606596390

/-! ## A046138.P14155244788258736084

`∩[A015914(n+1), A023202(n+1)]`
-/

namespace A046138.P14155244788258736084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P14155244788258736084

/-! ## A046138.P9130721923648805344

`∩[A015915(n+1), A023201(n+1)]`
-/

namespace A046138.P9130721923648805344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P9130721923648805344

/-! ## A046138.P10764089207793333039

`∩[A023201(n+1), A023202(n+1)]`
-/

namespace A046138.P10764089207793333039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P10764089207793333039

/-! ## A046138.P14489418070417999765

`∩[A015914(n+1), A049436(n+1)]`
-/

namespace A046138.P14489418070417999765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P14489418070417999765

/-! ## A046138.P15545646359345362335

`∩[A023201(n+1), A049436(n+1)]`
-/

namespace A046138.P15545646359345362335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P15545646359345362335

/-! ## A046138.P3985932562665072568

`∩[A015914(n+1), A262085(n+1)]`
-/

namespace A046138.P3985932562665072568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P3985932562665072568

/-! ## A046138.P16853864740033420786

`∩[A023201(n+1), A262085(n+1)]`
-/

namespace A046138.P16853864740033420786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P16853864740033420786

/-! ## A046138.P5328191548702151609

`∩[A015915(n+1), A262084(n+1)]`
-/

namespace A046138.P5328191548702151609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046138.P5328191548702151609

/-!
# A046139: p, p+6 and p+10 are primes.

The programs for A046139, there is no canonical definition to state claims against.
-/

/-! ## A046139.P8140241155763379879

`∪[A052378(n+1), A078562(n+1)]`
-/

namespace A046139.P8140241155763379879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P8140241155763379879

/-! ## A046139.P9224266120187066052

`p?[A015913(n+1)-6]`
-/

namespace A046139.P9224266120187066052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046139.P9224266120187066052

/-! ## A046139.P3035016611445276095

`p?[A029710(n+1)-6]`
-/

namespace A046139.P3035016611445276095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046139.P3035016611445276095

/-! ## A046139.P10703332320333914897

`p?[A029708(n+1)-8]`
-/

namespace A046139.P10703332320333914897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046139.P10703332320333914897

/-! ## A046139.P9913078936972416155

`p?[A087679(n+1)-8]`
-/

namespace A046139.P9913078936972416155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046139.P9913078936972416155

/-! ## A046139.P8868626738331696497

`p?[A046132(n+1)-10]`
-/

namespace A046139.P8868626738331696497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046139.P8868626738331696497

/-! ## A046139.P15462817814310854775

`∩[A015916(n+1), A023201(n+1)]`
-/

namespace A046139.P15462817814310854775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P15462817814310854775

/-! ## A046139.P13782952150417485799

`∩[A023201(n+1), A086135(n+1)]`
-/

namespace A046139.P13782952150417485799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P13782952150417485799

/-! ## A046139.P9825617675286815596

`∩[A023201(n+1), A262086(n+1)]`
-/

namespace A046139.P9825617675286815596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P9825617675286815596

/-! ## A046139.P7481279190619996435

`∩[A015914(n+1), A015916(n+1)]`
-/

namespace A046139.P7481279190619996435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P7481279190619996435

/-! ## A046139.P129306044247561570

`∩[A015914(n+1), A086135(n+1)]`
-/

namespace A046139.P129306044247561570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P129306044247561570

/-! ## A046139.P15954275100975193287

`∩[A015914(n+1), A262086(n+1)]`
-/

namespace A046139.P15954275100975193287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P15954275100975193287

/-! ## A046139.P11363439934402755921

`∩[A015916(n+1), A262084(n+1)]`
-/

namespace A046139.P11363439934402755921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P11363439934402755921

/-! ## A046139.P13232092695652136411

`∩[A086135(n+1), A262084(n+1)]`
-/

namespace A046139.P13232092695652136411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P13232092695652136411

/-! ## A046139.P4952525705025469282

`∩[A262084(n+1), A262086(n+1)]`
-/

namespace A046139.P4952525705025469282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P4952525705025469282

/-! ## A046139.P11454787608803771440

`∩[A086135(n+1), A147812(n+1)]`
-/

namespace A046139.P11454787608803771440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046139.P11454787608803771440

/-! ## A046139.P1316226095869517553

`p?[p?[A000040(n+1)-4]-6]`
-/

namespace A046139.P1316226095869517553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046139.P1316226095869517553

/-!
# A046141: p, p+8 and p+12 are primes.

The programs for A046141, there is no canonical definition to state claims against.
-/

/-! ## A046141.P6401435246325178104

`∩[A015915(n+1), A086136(n+1)]`
-/

namespace A046141.P6401435246325178104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P6401435246325178104

/-! ## A046141.P10741173430498083300

`∩[A023202(n+1), A086136(n+1)]`
-/

namespace A046141.P10741173430498083300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P10741173430498083300

/-! ## A046141.P1615325065524989148

`∩[A086136(n+1), A262085(n+1)]`
-/

namespace A046141.P1615325065524989148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P1615325065524989148

/-! ## A046141.P17864023657858142858

`p?[A029710(n+1)-8]`
-/

namespace A046141.P17864023657858142858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P17864023657858142858

/-! ## A046141.P6752284656016954250

`p?[A029708(n+1)-10]`
-/

namespace A046141.P6752284656016954250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P6752284656016954250

/-! ## A046141.P14575113972478251160

`p?[A087679(n+1)-10]`
-/

namespace A046141.P14575113972478251160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P14575113972478251160

/-! ## A046141.P15779419096633181373

`p?[A046132(n+1)-12]`
-/

namespace A046141.P15779419096633181373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P15779419096633181373

/-! ## A046141.P14796730878843019579

`p?[2*(A088762(n+1)-4)-1]`
-/

namespace A046141.P14796730878843019579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088762 (n + 1) - 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P14796730878843019579

/-! ## A046141.P14612882901117279201

`∩[A015915(n+1), A046133(n+1)]`
-/

namespace A046141.P14612882901117279201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P14612882901117279201

/-! ## A046141.P3046295176949546878

`∩[A023202(n+1), A046133(n+1)]`
-/

namespace A046141.P3046295176949546878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P3046295176949546878

/-! ## A046141.P17734828312039906491

`∩[A046133(n+1), A262085(n+1)]`
-/

namespace A046141.P17734828312039906491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P17734828312039906491

/-! ## A046141.P13516468720957009793

`p?[A072541(2*n+1)-9]`
-/

namespace A046141.P13516468720957009793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072541 (2 * n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P13516468720957009793

/-! ## A046141.P16284111863476573334

`∩[A015915(n+1), A015917(n+1)]`
-/

namespace A046141.P16284111863476573334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P16284111863476573334

/-! ## A046141.P7851532064338538897

`∩[A015917(n+1), A023202(n+1)]`
-/

namespace A046141.P7851532064338538897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P7851532064338538897

/-! ## A046141.P3304952081360188099

`∩[A015917(n+1), A262085(n+1)]`
-/

namespace A046141.P3304952081360188099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P3304952081360188099

/-! ## A046141.P3851308646112799571

`∩[A015915(n+1), A056775(n+1)]`
-/

namespace A046141.P3851308646112799571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P3851308646112799571

/-! ## A046141.P9598622217737224094

`∩[A023202(n+1), A056775(n+1)]`
-/

namespace A046141.P9598622217737224094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P9598622217737224094

/-! ## A046141.P12584160745684720712

`p?[A000040(A029709(n+1))-8]`
-/

namespace A046141.P12584160745684720712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029709 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046141.P12584160745684720712

/-! ## A046141.P5151750587121524325

`∩[A046133(n+1), A086304(n+1)-2]`
-/

namespace A046141.P5151750587121524325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P5151750587121524325

/-! ## A046141.P3368281283093739484

`∩[A046133(n+1), A118538(n+1)-2]`
-/

namespace A046141.P3368281283093739484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046141.P3368281283093739484

/-!
# A046142: Haüy rhombic dodecahedral numbers.

The programs for A046142, the canonical program `A046142.P862032000347106236` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046142 has offset 1).

The definition of A046142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046142.P757198198273648302

`(2*(n+1)-1)*(8*(n+1)²-14*(n+1)+7)`
-/

namespace A046142.P757198198273648302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * ((8 * (n + 1) ^ 2 : ℤ) - (14 * (n + 1) : ℤ) + 7)

end

end A046142.P757198198273648302

namespace A046142

/-- `(2*(n+1)-1)*(8*(n+1)²-14*(n+1)+7)` -/
def P757198198273648302.Spec : Prop :=
  ∀ n, P757198198273648302.a n = A046142 (n + 1)

theorem P757198198273648302.correct : P757198198273648302.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P757198198273648302.a, A046142.P862032000347106236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P757198198273648302.a, A046142.P862032000347106236.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A046142

/-! ## A046142.P862032000347106236

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=33, a(2)=185, a(3)=553`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046142

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P862032000347106236.Spec : Prop :=
  ∀ n, P862032000347106236.a n = A046142 (n + 1)

theorem P862032000347106236.correct : P862032000347106236.Spec := by
  intro n
  simp only [A046142, Nat.add_sub_cancel]

end A046142

/-! ## A046142.P11933719197996727258

`A016755(n)+6*A000447(n)`
-/

namespace A046142.P11933719197996727258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n + 6 * A000447 n

end

end A046142.P11933719197996727258

namespace A046142

/-- `A016755(n)+6*A000447(n)` -/
def P11933719197996727258.Spec : Prop :=
  ∀ n, P11933719197996727258.a n = A046142 (n + 1)

end A046142

/-! ## A046142.P2755494194668623933

`A001845(2*(n+1)-2)+8*A002412(n)`
-/

namespace A046142.P2755494194668623933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (2 * (n + 1) - 2) + 8 * A002412 n

end

end A046142.P2755494194668623933

namespace A046142

/-- `A001845(2*(n+1)-2)+8*A002412(n)` -/
def P2755494194668623933.Spec : Prop :=
  ∀ n, P2755494194668623933.a n = A046142 (n + 1)

end A046142

/-! ## A046142.P6901982477869845271

`Δ[C(2*n, 2)²]-2*n`
-/

namespace A046142.P6901982477869845271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n : ℤ)

end

end A046142.P6901982477869845271

namespace A046142

/-- `Δ[C(2*n, 2)²]-2*n` -/
def P6901982477869845271.Spec : Prop :=
  ∀ n, P6901982477869845271.a n = A046142 (n + 1)

end A046142

/-! ## A046142.P17620165406200306250

`Δ[lcm(n, 2*n-1)²]-2*n`
-/

namespace A046142.P17620165406200306250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((2 * n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n : ℤ)

end

end A046142.P17620165406200306250

namespace A046142

/-- `Δ[lcm(n, 2*n-1)²]-2*n` -/
def P17620165406200306250.Spec : Prop :=
  ∀ n, P17620165406200306250.a n = A046142 (n + 1)

end A046142

/-! ## A046142.P10230865043568754868

`lcm(2*n+1, 8*n²+2*n+1)`
-/

namespace A046142.P10230865043568754868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (8 * n ^ 2 + (2 * n + 1))

end

end A046142.P10230865043568754868

namespace A046142

/-- `lcm(2*n+1, 8*n²+2*n+1)` -/
def P10230865043568754868.Spec : Prop :=
  ∀ n, (P10230865043568754868.a n : ℤ) = A046142 (n + 1)

end A046142

/-! ## A046142.P9418513152348929355

`A341043(n+1)-2*n`
-/

namespace A046142.P9418513152348929355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341043 (n + 1) - (2 * n : ℤ)

end

end A046142.P9418513152348929355

namespace A046142

/-- `A341043(n+1)-2*n` -/
def P9418513152348929355.Spec : Prop :=
  ∀ n, P9418513152348929355.a n = A046142 (n + 1)

theorem P9418513152348929355.correct : P9418513152348929355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P9418513152348929355.a, A046142.P862032000347106236.a, A341043, A341043.P13276608249437996011.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P9418513152348929355.a, A046142.P862032000347106236.a, A341043, A341043.P13276608249437996011.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P394399517757455179

`Δ[A000384(n)²]-n-n`
-/

namespace A046142.P394399517757455179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) - (n : ℤ)

end

end A046142.P394399517757455179

namespace A046142

/-- `Δ[A000384(n)²]-n-n` -/
def P394399517757455179.Spec : Prop :=
  ∀ n, P394399517757455179.a n = A046142 (n + 1)

theorem P394399517757455179.correct : P394399517757455179.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P394399517757455179.f1, A046142.P394399517757455179.a, A046142.P862032000347106236.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P394399517757455179.f1, A046142.P394399517757455179.a, A046142.P862032000347106236.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P16211824001740305783

`A280059(n)-n*(8*n+4)`
-/

namespace A046142.P16211824001740305783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n - (n * (8 * n + 4) : ℤ)

end

end A046142.P16211824001740305783

namespace A046142

/-- `A280059(n)-n*(8*n+4)` -/
def P16211824001740305783.Spec : Prop :=
  ∀ n, P16211824001740305783.a n = A046142 (n + 1)

theorem P16211824001740305783.correct : P16211824001740305783.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P16211824001740305783.a, A046142.P862032000347106236.a, A280059, A280059.P842335069521915048.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P16211824001740305783.a, A046142.P862032000347106236.a, A280059, A280059.P842335069521915048.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P831436961500099699

`A191745(n)+A056578(n)`
-/

namespace A046142.P831436961500099699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191745 n + A056578 n

end

end A046142.P831436961500099699

namespace A046142

/-- `A191745(n)+A056578(n)` -/
def P831436961500099699.Spec : Prop :=
  ∀ n, P831436961500099699.a n = A046142 (n + 1)

theorem P831436961500099699.correct : P831436961500099699.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P831436961500099699.a, A046142.P862032000347106236.a, A056578, A056578.P9350945664084925479.a, A191745, A191745.P10900827607197799470.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P831436961500099699.a, A046142.P862032000347106236.a, A056578, A056578.P9350945664084925479.a, A191745, A191745.P10900827607197799470.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P10918142464884280189

`A272130(n)+A001105(n)`
-/

namespace A046142.P10918142464884280189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272130 n + A001105 n

end

end A046142.P10918142464884280189

namespace A046142

/-- `A272130(n)+A001105(n)` -/
def P10918142464884280189.Spec : Prop :=
  ∀ n, P10918142464884280189.a n = A046142 (n + 1)

theorem P10918142464884280189.correct : P10918142464884280189.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P10918142464884280189.a, A046142.P862032000347106236.a, A001105, A001105.P6098599260439307493.a, A272130, A272130.P8084678550180586502.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P10918142464884280189.a, A046142.P862032000347106236.a, A001105, A001105.P6098599260439307493.a, A272130, A272130.P8084678550180586502.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P4288075118834452733

`A158480(n)+A144965(n)`
-/

namespace A046142.P4288075118834452733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n + A144965 n

end

end A046142.P4288075118834452733

namespace A046142

/-- `A158480(n)+A144965(n)` -/
def P4288075118834452733.Spec : Prop :=
  ∀ n, P4288075118834452733.a n = A046142 (n + 1)

theorem P4288075118834452733.correct : P4288075118834452733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P4288075118834452733.a, A046142.P862032000347106236.a, A144965, A144965.P16257968433978150562.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P4288075118834452733.a, A046142.P862032000347106236.a, A144965, A144965.P16257968433978150562.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P6011290199795333432

`A271636(n)+A185212(n)`
-/

namespace A046142.P6011290199795333432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271636 n + A185212 n

end

end A046142.P6011290199795333432

namespace A046142

/-- `A271636(n)+A185212(n)` -/
def P6011290199795333432.Spec : Prop :=
  ∀ n, P6011290199795333432.a n = A046142 (n + 1)

theorem P6011290199795333432.correct : P6011290199795333432.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P6011290199795333432.a, A046142.P862032000347106236.a, A185212, A185212.P9778455479555571894.a, A271636, A271636.P3875615987854989896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P6011290199795333432.a, A046142.P862032000347106236.a, A185212, A185212.P9778455479555571894.a, A271636, A271636.P3875615987854989896.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P8576420289635135313

`A254473(n)-A260955(n)`
-/

namespace A046142.P8576420289635135313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254473 n - A260955 n

end

end A046142.P8576420289635135313

namespace A046142

/-- `A254473(n)-A260955(n)` -/
def P8576420289635135313.Spec : Prop :=
  ∀ n, P8576420289635135313.a n = A046142 (n + 1)

theorem P8576420289635135313.correct : P8576420289635135313.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P8576420289635135313.a, A046142.P862032000347106236.a, A254473, A254473.P9352682138429531850.a, A260955, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P8576420289635135313.a, A046142.P862032000347106236.a, A254473, A254473.P9352682138429531850.a, A260955, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P10230195973850969962

`abs(A033586(n)-A280059(n))`
-/

namespace A046142.P10230195973850969962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033586 n - A280059 n|

end

end A046142.P10230195973850969962

namespace A046142

/-- `abs(A033586(n)-A280059(n))` -/
def P10230195973850969962.Spec : Prop :=
  ∀ n, P10230195973850969962.a n = A046142 (n + 1)

end A046142

/-! ## A046142.P16791776386695398675

`A190705(n)+A005917(n+1)`
-/

namespace A046142.P16791776386695398675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190705 n + A005917 (n + 1)

end

end A046142.P16791776386695398675

namespace A046142

/-- `A190705(n)+A005917(n+1)` -/
def P16791776386695398675.Spec : Prop :=
  ∀ n, P16791776386695398675.a n = A046142 (n + 1)

theorem P16791776386695398675.correct : P16791776386695398675.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P16791776386695398675.a, A046142.P862032000347106236.a, A005917, A005917.P593194106963301078.a, A190705, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P16791776386695398675.a, A046142.P862032000347106236.a, A005917, A005917.P593194106963301078.a, A190705, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P11232360768141441421

`A005910(n+1)-A045944(n)`
-/

namespace A046142.P11232360768141441421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005910 (n + 1) - A045944 n

end

end A046142.P11232360768141441421

namespace A046142

/-- `A005910(n+1)-A045944(n)` -/
def P11232360768141441421.Spec : Prop :=
  ∀ n, P11232360768141441421.a n = A046142 (n + 1)

theorem P11232360768141441421.correct : P11232360768141441421.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P11232360768141441421.a, A046142.P862032000347106236.a, A005910, A005910.P3096839229101576451.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P11232360768141441421.a, A046142.P862032000347106236.a, A005910, A005910.P3096839229101576451.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P18273702505239511324

`A181773(n+1)-A179741(n)`
-/

namespace A046142.P18273702505239511324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) - A179741 n

end

end A046142.P18273702505239511324

namespace A046142

/-- `A181773(n+1)-A179741(n)` -/
def P18273702505239511324.Spec : Prop :=
  ∀ n, P18273702505239511324.a n = A046142 (n + 1)

theorem P18273702505239511324.correct : P18273702505239511324.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P18273702505239511324.a, A046142.P862032000347106236.a, A179741, A179741.P3894650603299352832.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P18273702505239511324.a, A046142.P862032000347106236.a, A179741, A179741.P3894650603299352832.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-! ## A046142.P4465680700513483900

`A008586(n)*A033951(n)+1`
-/

namespace A046142.P4465680700513483900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n * A033951 n + 1

end

end A046142.P4465680700513483900

namespace A046142

/-- `A008586(n)*A033951(n)+1` -/
def P4465680700513483900.Spec : Prop :=
  ∀ n, P4465680700513483900.a n = A046142 (n + 1)

theorem P4465680700513483900.correct : P4465680700513483900.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A046142, Nat.add_sub_cancel, A046142.P4465680700513483900.a, A046142.P862032000347106236.a, A008586, A008586.P15642444062404201100.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A046142, Nat.add_sub_cancel, A046142.P4465680700513483900.a, A046142.P862032000347106236.a, A008586, A008586.P15642444062404201100.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A046142

/-!
# A046143: Triangle T(n, k) = gcd(2^n-1, 2^k-1), for n>=1 and 1 <= k <= n.

The programs for A046143, the canonical program `A046143.P11176743541360955962` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046143 has offset 1).

The definition of A046143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046143.P11176743541360955962

`2^gcd(row(n)+1, col(n)+1)-1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046143

/-- `2^gcd(row(n)+1, col(n)+1)-1` -/
def P11176743541360955962.Spec : Prop :=
  ∀ n, P11176743541360955962.a n = A046143 (n + 1)

theorem P11176743541360955962.correct : P11176743541360955962.Spec := by
  intro n
  simp only [A046143, Nat.add_sub_cancel]

end A046143

/-! ## A046143.P3709501152744360150

`gcd(2^(row(n)+1)-1, 2^(col(n)+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046143.P3709501152744360150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - 1) ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1)

end

end A046143.P3709501152744360150

namespace A046143

/-- `gcd(2^(row(n)+1)-1, 2^(col(n)+1)-1)` -/
def P3709501152744360150.Spec : Prop :=
  ∀ n, (P3709501152744360150.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P14915500089124515459

`gcd(2^(col(n)+1)-1, 2^(row(n)-col(n))-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046143.P14915500089124515459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1))

end

end A046143.P14915500089124515459

namespace A046143

/-- `gcd(2^(col(n)+1)-1, 2^(row(n)-col(n))-1)` -/
def P14915500089124515459.Spec : Prop :=
  ∀ n, (P14915500089124515459.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P13983183554857158221

`gcd(2^(row(n)-col(n))-1, 2^(col(n)+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046143.P13983183554857158221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1)) ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1)

end

end A046143.P13983183554857158221

namespace A046143

/-- `gcd(2^(row(n)-col(n))-1, 2^(col(n)+1)-1)` -/
def P13983183554857158221.Spec : Prop :=
  ∀ n, (P13983183554857158221.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P9598712063782398913

`2^A050873(n+1)-1`
-/

namespace A046143.P9598712063782398913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A050873 (n + 1) : ℤ) - 1

end

end A046143.P9598712063782398913

namespace A046143

/-- `2^A050873(n+1)-1` -/
def P9598712063782398913.Spec : Prop :=
  ∀ n, P9598712063782398913.a n = (A046143 (n + 1) : ℚ)

end A046143

/-! ## A046143.P4235851225605946430

`A000225(A050873(n+1))`
-/

namespace A046143.P4235851225605946430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A050873 (n + 1)).toNat

end

end A046143.P4235851225605946430

namespace A046143

/-- `A000225(A050873(n+1))` -/
def P4235851225605946430.Spec : Prop :=
  ∀ n, P4235851225605946430.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P14077964451569046037

`gcd(A099627(n), A173787(n))`
-/

namespace A046143.P14077964451569046037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099627 n) (A173787 n)

end

end A046143.P14077964451569046037

namespace A046143

/-- `gcd(A099627(n), A173787(n))` -/
def P14077964451569046037.Spec : Prop :=
  ∀ n, (P14077964451569046037.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P3724273157657511552

`gcd(A228035(n), A233757(n+1))`
-/

namespace A046143.P3724273157657511552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228035 n) (A233757 (n + 1))

end

end A046143.P3724273157657511552

namespace A046143

/-- `gcd(A228035(n), A233757(n+1))` -/
def P3724273157657511552.Spec : Prop :=
  ∀ n, (P3724273157657511552.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P3697676329966888211

`A000079(A050873(Δ[n²]-n))-1`
-/

namespace A046143.P3697676329966888211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A050873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A046143.P3697676329966888211

namespace A046143

/-- `A000079(A050873(Δ[n²]-n))-1` -/
def P3697676329966888211.Spec : Prop :=
  ∀ n, P3697676329966888211.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P11623041466097887557

`A000225(gcd(A002260(n+1), A025581(n)))`
-/

namespace A046143.P11623041466097887557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.gcd (A002260 (n + 1)) (A025581 n))

end

end A046143.P11623041466097887557

namespace A046143

/-- `A000225(gcd(A002260(n+1), A025581(n)))` -/
def P11623041466097887557.Spec : Prop :=
  ∀ n, P11623041466097887557.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P17498290372978870430

`A000225(A002024(n+1)/A054531(n+1))`
-/

namespace A046143.P17498290372978870430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ))).toNat

end

end A046143.P17498290372978870430

namespace A046143

/-- `A000225(A002024(n+1)/A054531(n+1))` -/
def P17498290372978870430.Spec : Prop :=
  ∀ n, P17498290372978870430.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P4697933655559532102

`A000225(A002260(n+1)/A164306(n+1))`
-/

namespace A046143.P4697933655559532102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ))).toNat

end

end A046143.P4697933655559532102

namespace A046143

/-- `A000225(A002260(n+1)/A164306(n+1))` -/
def P4697933655559532102.Spec : Prop :=
  ∀ n, P4697933655559532102.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P5310056857344226864

`2^gcd(A002024(n+1), A025581(A028310(n)))-1`
-/

namespace A046143.P5310056857344226864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Int.gcd (A002024 (n + 1)) (A025581 (A028310 n).toNat) : ℤ) - 1

end

end A046143.P5310056857344226864

namespace A046143

/-- `2^gcd(A002024(n+1), A025581(A028310(n)))-1` -/
def P5310056857344226864.Spec : Prop :=
  ∀ n, P5310056857344226864.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P11023711012320884025

`A078446(A050873(n+1)²)`
-/

namespace A046143.P11023711012320884025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (A050873 (n + 1) ^ 2).toNat

end

end A046143.P11023711012320884025

namespace A046143

/-- `A078446(A050873(n+1)²)` -/
def P11023711012320884025.Spec : Prop :=
  ∀ n, P11023711012320884025.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P5849302341559117625

`gcd(A228035(n)+A164874(n+1), A164874(n+1))`
-/

namespace A046143.P5849302341559117625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228035 n + A164874 (n + 1)) (A164874 (n + 1))

end

end A046143.P5849302341559117625

namespace A046143

/-- `gcd(A228035(n)+A164874(n+1), A164874(n+1))` -/
def P5849302341559117625.Spec : Prop :=
  ∀ n, (P5849302341559117625.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P2000294006450936710

`gcd(Δ[A117401(n)], A228035(n))`
-/

namespace A046143.P2000294006450936710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A228035 n)

end

end A046143.P2000294006450936710

namespace A046143

/-- `gcd(Δ[A117401(n)], A228035(n))` -/
def P2000294006450936710.Spec : Prop :=
  ∀ n, (P2000294006450936710.a n : ℤ) = A046143 (n + 1)

end A046143

/-! ## A046143.P7547237025957890530

`A000203(2^A050873(n+1)/2)`
-/

namespace A046143.P7547237025957890530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050873 (n + 1) : ℤ) / 2)).toNat

end

end A046143.P7547237025957890530

namespace A046143

/-- `A000203(2^A050873(n+1)/2)` -/
def P7547237025957890530.Spec : Prop :=
  ∀ n, P7547237025957890530.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P11770343687211879255

`A126646(A093057(n+1))`
-/

namespace A046143.P11770343687211879255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A093057 (n + 1)).toNat

end

end A046143.P11770343687211879255

namespace A046143

/-- `A126646(A093057(n+1))` -/
def P11770343687211879255.Spec : Prop :=
  ∀ n, P11770343687211879255.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P11429519655627361286

`A001065(2^A050873(n+1))`
-/

namespace A046143.P11429519655627361286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050873 (n + 1) : ℤ))).toNat

end

end A046143.P11429519655627361286

namespace A046143

/-- `A001065(2^A050873(n+1))` -/
def P11429519655627361286.Spec : Prop :=
  ∀ n, P11429519655627361286.a n = A046143 (n + 1)

end A046143

/-! ## A046143.P17062002780609723301

`A014681(2^A050873(n+1))`
-/

namespace A046143.P17062002780609723301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050873 (n + 1) : ℤ))).toNat

end

end A046143.P17062002780609723301

namespace A046143

/-- `A014681(2^A050873(n+1))` -/
def P17062002780609723301.Spec : Prop :=
  ∀ n, P17062002780609723301.a n = A046143 (n + 1)

end A046143

/-!
# A046144: Number of primitive roots modulo n.

The programs for A046144, the canonical program `A046144.P10723392011678918045` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046144 has offset 1).

The definition of A046144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046144.P9656454237157720394

`A010554(n+1)%(A046146(n+1)+2)`
-/

namespace A046144.P9656454237157720394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010554 (n + 1)) (A046146 (n + 1) + 2)

end

end A046144.P9656454237157720394

namespace A046144

/-- `A010554(n+1)%(A046146(n+1)+2)` -/
def P9656454237157720394.Spec : Prop :=
  ∀ n, P9656454237157720394.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P2185664927951719876

`C(A000010(A002322(n+1)), A290084(n+1))`
-/

namespace A046144.P2185664927951719876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A002322 (n + 1)).toNat).toNat (A290084 (n + 1)).toNat

end

end A046144.P2185664927951719876

namespace A046144

/-- `C(A000010(A002322(n+1)), A290084(n+1))` -/
def P2185664927951719876.Spec : Prop :=
  ∀ n, (P2185664927951719876.a n : ℤ) = A046144 (n + 1)

end A046144

/-! ## A046144.P1092051304013517777

`C(A000010(A289624(n+1)), A290084(n+1))`
-/

namespace A046144.P1092051304013517777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A289624 (n + 1)).toNat).toNat (A290084 (n + 1)).toNat

end

end A046144.P1092051304013517777

namespace A046144

/-- `C(A000010(A289624(n+1)), A290084(n+1))` -/
def P1092051304013517777.Spec : Prop :=
  ∀ n, (P1092051304013517777.a n : ℤ) = A046144 (n + 1)

end A046144

/-! ## A046144.P14113174112667298241

`A008683(A034380(n+1)²)*A302257(n+1)`
-/

namespace A046144.P14113174112667298241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A034380 (n + 1) ^ 2).toNat * A302257 (n + 1)

end

end A046144.P14113174112667298241

namespace A046144

/-- `A008683(A034380(n+1)²)*A302257(n+1)` -/
def P14113174112667298241.Spec : Prop :=
  ∀ n, P14113174112667298241.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P15011579236382359035

`C(A000010(A000010(n+1)), A290084(n+1)²)`
-/

namespace A046144.P15011579236382359035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (A000010 (n + 1)).toNat).toNat (A290084 (n + 1) ^ 2).toNat

end

end A046144.P15011579236382359035

namespace A046144

/-- `C(A000010(A000010(n+1)), A290084(n+1)²)` -/
def P15011579236382359035.Spec : Prop :=
  ∀ n, (P15011579236382359035.a n : ℤ) = A046144 (n + 1)

end A046144

/-! ## A046144.P6805646038401796271

`A008683(6*A034380(n+1))*A302257(n+1)`
-/

namespace A046144.P6805646038401796271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * A034380 (n + 1)).toNat * A302257 (n + 1)

end

end A046144.P6805646038401796271

namespace A046144

/-- `A008683(6*A034380(n+1))*A302257(n+1)` -/
def P6805646038401796271.Spec : Prop :=
  ∀ n, P6805646038401796271.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P6900729005249136321

`and(1, A034380(n+1))*A000010(A000010(n+1))`
-/

namespace A046144.P6900729005249136321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034380 (n + 1)) * A000010 (A000010 (n + 1)).toNat

end

end A046144.P6900729005249136321

namespace A046144

/-- `and(1, A034380(n+1))*A000010(A000010(n+1))` -/
def P6900729005249136321.Spec : Prop :=
  ∀ n, P6900729005249136321.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P10723392011678918045

`and(A046072(n+1)-2, A000010(A000010(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A046144

/-- `and(A046072(n+1)-2, A000010(A000010(n+1)))` -/
def P10723392011678918045.Spec : Prop :=
  ∀ n, P10723392011678918045.a n = A046144 (n + 1)

theorem P10723392011678918045.correct : P10723392011678918045.Spec := by
  intro n
  simp only [A046144, Nat.add_sub_cancel]

end A046144

/-! ## A046144.P13536715212933960934

`A000010(A000010(n+1))*A000089(A060594(n+1))`
-/

namespace A046144.P13536715212933960934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat * A000089 (A060594 (n + 1)).toNat

end

end A046144.P13536715212933960934

namespace A046144

/-- `A000010(A000010(n+1))*A000089(A060594(n+1))` -/
def P13536715212933960934.Spec : Prop :=
  ∀ n, P13536715212933960934.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P16431494142512158892

`C(A290084(2*A002322(n+1)), A290084(n+1))`
-/

namespace A046144.P16431494142512158892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290084 (2 * A002322 (n + 1)).toNat).toNat (A290084 (n + 1)).toNat

end

end A046144.P16431494142512158892

namespace A046144

/-- `C(A290084(2*A002322(n+1)), A290084(n+1))` -/
def P16431494142512158892.Spec : Prop :=
  ∀ n, (P16431494142512158892.a n : ℤ) = A046144 (n + 1)

end A046144

/-! ## A046144.P13175505475106496762

`C(A290084(2*A289624(n+1)), A290084(n+1))`
-/

namespace A046144.P13175505475106496762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290084 (2 * A289624 (n + 1)).toNat).toNat (A290084 (n + 1)).toNat

end

end A046144.P13175505475106496762

namespace A046144

/-- `C(A290084(2*A289624(n+1)), A290084(n+1))` -/
def P13175505475106496762.Spec : Prop :=
  ∀ n, (P13175505475106496762.a n : ℤ) = A046144 (n + 1)

end A046144

/-! ## A046144.P17182776115977941833

`Δ[A002088(n)]-A345674(n+1)`
-/

namespace A046144.P17182776115977941833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A345674 (n + 1)

end

end A046144.P17182776115977941833

namespace A046144

/-- `Δ[A002088(n)]-A345674(n+1)` -/
def P17182776115977941833.Spec : Prop :=
  ∀ n, P17182776115977941833.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P11409993934262018791

`A000010(n+1)-A345674(n+1)`
-/

namespace A046144.P11409993934262018791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A345674 (n + 1)

end

end A046144.P11409993934262018791

namespace A046144

/-- `A000010(n+1)-A345674(n+1)` -/
def P11409993934262018791.Spec : Prop :=
  ∀ n, P11409993934262018791.a n = A046144 (n + 1)

theorem P11409993934262018791.correct : P11409993934262018791.Spec := by
  intro n
  simp only [A046144, Nat.add_sub_cancel, A046144.P11409993934262018791.a, A046144.P10723392011678918045.a, A000010, A000010.P4673923239450215316.a, A046072, A046072.P3486266862875082890.f1, A046072.P3486266862875082890.a, A345674, A345674.P823125279381487032.a, A003557, A003557.P6364735403900941810.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A114643, A114643.P3385208476335884825.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A059841, A059841.P7264174615531153985.a, A063659, A063659.P17976112420004081821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046144

/-! ## A046144.P1860753582253868407

`A349137(2*n+1)-A345674(n+1)`
-/

namespace A046144.P1860753582253868407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) - A345674 (n + 1)

end

end A046144.P1860753582253868407

namespace A046144

/-- `A349137(2*n+1)-A345674(n+1)` -/
def P1860753582253868407.Spec : Prop :=
  ∀ n, P1860753582253868407.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P15992061842752167223

`A002088(n+1)-(A345674(n+1)+A002088(n))`
-/

namespace A046144.P15992061842752167223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - (A345674 (n + 1) + A002088 n)

end

end A046144.P15992061842752167223

namespace A046144

/-- `A002088(n+1)-(A345674(n+1)+A002088(n))` -/
def P15992061842752167223.Spec : Prop :=
  ∀ n, P15992061842752167223.a n = A046144 (n + 1)

end A046144

/-! ## A046144.P15169332090966762416

`A349679(n+1)-(A345674(n+1)+A067392(n+1))`
-/

namespace A046144.P15169332090966762416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349679 (n + 1) - (A345674 (n + 1) + A067392 (n + 1))

end

end A046144.P15169332090966762416

namespace A046144

/-- `A349679(n+1)-(A345674(n+1)+A067392(n+1))` -/
def P15169332090966762416.Spec : Prop :=
  ∀ n, P15169332090966762416.a n = A046144 (n + 1)

theorem P15169332090966762416.correct : P15169332090966762416.Spec := by
  intro n
  simp only [A046144, Nat.add_sub_cancel, A046144.P15169332090966762416.a, A046144.P10723392011678918045.a, A000010, A000010.P4673923239450215316.a, A046072, A046072.P3486266862875082890.f1, A046072.P3486266862875082890.a, A067392, A067392.P7533820900183805373.a, A345674, A345674.P823125279381487032.a, A349679, A349679.P14975392500775805578.a, A000217, A000217.P10269402890581615239.a, A003557, A003557.P6364735403900941810.a, A023896, A023896.P10594219463258781009.f1, A023896.P10594219463258781009.f2, A023896.P10594219463258781009.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A114643, A114643.P3385208476335884825.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A050361, A050361.P4609984906141832222.f1, A050361.P4609984906141832222.a, A059841, A059841.P7264174615531153985.a, A063659, A063659.P17976112420004081821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046144

/-! ## A046144.P9385720050494573090

`A164296(n+1)+A164297(n+1)-A345674(n+1)`
-/

namespace A046144.P9385720050494573090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164296 (n + 1) + (A164297 (n + 1) - A345674 (n + 1))

end

end A046144.P9385720050494573090

namespace A046144

/-- `A164296(n+1)+A164297(n+1)-A345674(n+1)` -/
def P9385720050494573090.Spec : Prop :=
  ∀ n, P9385720050494573090.a n = A046144 (n + 1)

end A046144

/-!
# A046145: Smallest primitive root modulo n, or 0 if no root exists.

The programs for A046145, there is no canonical definition to state claims against.
-/

/-! ## A046145.P6281643262426097519

`A103309(n)+A010051(A133214(n))`
-/

namespace A046145.P6281643262426097519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n + A010051 (A133214 n).toNat

end

end A046145.P6281643262426097519

/-! ## A046145.P9979772782611169942

`A103309(n)+A028240(A292745(n))`
-/

namespace A046145.P9979772782611169942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n + A028240 (A292745 n).toNat

end

end A046145.P9979772782611169942

/-! ## A046145.P9291594418733121186

`A324539(A139362(n+1))+A103309(n)`
-/

namespace A046145.P9291594418733121186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (A139362 (n + 1)).toNat + A103309 n

end

end A046145.P9291594418733121186

/-! ## A046145.P18267549188463663549

`A103309(n)-A010815(A181452(n+1))`
-/

namespace A046145.P18267549188463663549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n - A010815 (A181452 (n + 1)).toNat

end

end A046145.P18267549188463663549

/-! ## A046145.P15145039201021017292

`A359549(A113323(2*(n+2)))+A103309(n)`
-/

namespace A046145.P15145039201021017292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359549 (A113323 (2 * (n + 2))).toNat + A103309 n

end

end A046145.P15145039201021017292

/-!
# A046146: Largest primitive root modulo n, or 0 if no root exists.

The programs for A046146, there is no canonical definition to state claims against.
-/

/-! ## A046146.P12963389186566749793

`A103310(n)+A010051(A036882(n))`
-/

namespace A046146.P12963389186566749793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 n + A010051 (A036882 n).toNat

end

end A046146.P12963389186566749793

/-!
# A046147: Triangle read by rows in which row n lists the primitive roots mod n (omitting numbers n without a primitive root).

The programs for A046147, there is no canonical definition to state claims against.
-/

/-! ## A046147.P1904335104207925085

`xor(∏{e}[n+1, #+1], A170957(A179959(n)))`
-/

namespace A046147.P1904335104207925085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A170957 (A179959 n).toNat)

end

end A046147.P1904335104207925085

/-! ## A046147.P428137073037842992

`xor(∏{e}[n+1, #+1], A090172(A286202(n)))`
-/

namespace A046147.P428137073037842992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A090172 (A286202 n).toNat)

end

end A046147.P428137073037842992

/-! ## A046147.P3733187998515422314

`xor(∏{e}[n+1, #+1], A135157(A249393(n)))`
-/

namespace A046147.P3733187998515422314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A135157 (A249393 n).toNat)

end

end A046147.P3733187998515422314

/-! ## A046147.P3863170413856130312

`xor(∏{e}[n+1, #+1], A267848(A286798(n)))`
-/

namespace A046147.P3863170413856130312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A267848 (A286798 n).toNat)

end

end A046147.P3863170413856130312

/-! ## A046147.P4291130018450488624

`xor(∏{e}[n+1, #+1], A288226(A307264(n)))`
-/

namespace A046147.P4291130018450488624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A288226 (A307264 n).toNat)

end

end A046147.P4291130018450488624

/-!
# A046149: Smallest n-digit number with maximal multiplicative persistence A014553.

The programs for A046149, there is no canonical definition to state claims against.
-/

/-! ## A046149.P10483007563403371762

`A003001(lcm(n+3, lcm(32, n)/32))`
-/

namespace A046149.P10483007563403371762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003001 (Int.lcm (n + 3 : ℤ) (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)))

end

end A046149.P10483007563403371762

/-!
# A046151: a(n) = n*phi(n) - 1.

The programs for A046151, the canonical program `A046151.P159560385155613916` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046151 has offset 1).

The definition of A046151 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046151.P159560385155613916

`(n+1)*A000010(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046151

/-- `(n+1)*A000010(n+1)-1` -/
def P159560385155613916.Spec : Prop :=
  ∀ n, P159560385155613916.a n = A046151 (n + 1)

theorem P159560385155613916.correct : P159560385155613916.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel]

end A046151

/-! ## A046151.P375633206193176774

`2*(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)`
-/

namespace A046151.P375633206193176774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) - ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ)) + 1)

end

end A046151.P375633206193176774

namespace A046151

/-- `2*(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)` -/
def P375633206193176774.Spec : Prop :=
  ∀ n, P375633206193176774.a n = (A046151 (n + 1) : ℚ)

end A046151

/-! ## A046151.P4599815594015785580

`Δ[A240877(n)]-1`
-/

namespace A046151.P4599815594015785580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A046151.P4599815594015785580

namespace A046151

/-- `Δ[A240877(n)]-1` -/
def P4599815594015785580.Spec : Prop :=
  ∀ n, P4599815594015785580.a n = A046151 (n + 1)

end A046151

/-! ## A046151.P17980553061403973034

`A002618(n+1)-1`
-/

namespace A046151.P17980553061403973034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - 1

end

end A046151.P17980553061403973034

namespace A046151

/-- `A002618(n+1)-1` -/
def P17980553061403973034.Spec : Prop :=
  ∀ n, P17980553061403973034.a n = A046151 (n + 1)

end A046151

/-! ## A046151.P14547495860703669713

`A046152(n+1)-2`
-/

namespace A046151.P14547495860703669713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1) - 2

end

end A046151.P14547495860703669713

namespace A046151

/-- `A046152(n+1)-2` -/
def P14547495860703669713.Spec : Prop :=
  ∀ n, P14547495860703669713.a n = A046151 (n + 1)

theorem P14547495860703669713.correct : P14547495860703669713.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P14547495860703669713.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A046152, A046152.P7809861723130686075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P13538960679828990142

`A071118(n+1)/2-1`
-/

namespace A046151.P13538960679828990142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / 2 - 1

end

end A046151.P13538960679828990142

namespace A046151

/-- `A071118(n+1)/2-1` -/
def P13538960679828990142.Spec : Prop :=
  ∀ n, P13538960679828990142.a n = (A046151 (n + 1) : ℚ)

theorem P13538960679828990142.correct : P13538960679828990142.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P13538960679828990142.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A071118, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P8488361015127019782

`A064400(n+1)/3-1`
-/

namespace A046151.P8488361015127019782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (n + 1) : ℚ) / 3 - 1

end

end A046151.P8488361015127019782

namespace A046151

/-- `A064400(n+1)/3-1` -/
def P8488361015127019782.Spec : Prop :=
  ∀ n, P8488361015127019782.a n = (A046151 (n + 1) : ℚ)

theorem P8488361015127019782.correct : P8488361015127019782.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P8488361015127019782.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A064400, A064400.P18224085056823472977.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P5186262083345305651

`A053191(n+1)/(n+1)-1`
-/

namespace A046151.P5186262083345305651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A046151.P5186262083345305651

namespace A046151

/-- `A053191(n+1)/(n+1)-1` -/
def P5186262083345305651.Spec : Prop :=
  ∀ n, P5186262083345305651.a n = (A046151 (n + 1) : ℚ)

end A046151

/-! ## A046151.P14136746568187415543

`(n+1)*A109606(n+1)+n`
-/

namespace A046151.P14136746568187415543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109606 (n + 1) + (n : ℤ)

end

end A046151.P14136746568187415543

namespace A046151

/-- `(n+1)*A109606(n+1)+n` -/
def P14136746568187415543.Spec : Prop :=
  ∀ n, P14136746568187415543.a n = A046151 (n + 1)

theorem P14136746568187415543.correct : P14136746568187415543.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P14136746568187415543.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P10074081616206395470

`(n+1)*(A039649(n+1)-1)-1`
-/

namespace A046151.P10074081616206395470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A039649 (n + 1) - 1) - 1

end

end A046151.P10074081616206395470

namespace A046151

/-- `(n+1)*(A039649(n+1)-1)-1` -/
def P10074081616206395470.Spec : Prop :=
  ∀ n, P10074081616206395470.a n = A046151 (n + 1)

theorem P10074081616206395470.correct : P10074081616206395470.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P10074081616206395470.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P2566495278690848558

`A005563(n)-A053650(n+1)`
-/

namespace A046151.P2566495278690848558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n - A053650 (n + 1)

end

end A046151.P2566495278690848558

namespace A046151

/-- `A005563(n)-A053650(n+1)` -/
def P2566495278690848558.Spec : Prop :=
  ∀ n, P2566495278690848558.a n = A046151 (n + 1)

theorem P2566495278690848558.correct : P2566495278690848558.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P2566495278690848558.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A005563, A005563.P13300161655551567421.a, A053650, A053650.P6469571087341810863.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P14562542908237321170

`A011755(n+1)-A240877(n)`
-/

namespace A046151.P14562542908237321170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011755 (n + 1) - A240877 n

end

end A046151.P14562542908237321170

namespace A046151

/-- `A011755(n+1)-A240877(n)` -/
def P14562542908237321170.Spec : Prop :=
  ∀ n, P14562542908237321170.a n = A046151 (n + 1)

end A046151

/-! ## A046151.P4682532518712762767

`A109606(n+1)+A062955(n+1)`
-/

namespace A046151.P4682532518712762767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A062955 (n + 1)

end

end A046151.P4682532518712762767

namespace A046151

/-- `A109606(n+1)+A062955(n+1)` -/
def P4682532518712762767.Spec : Prop :=
  ∀ n, P4682532518712762767.a n = A046151 (n + 1)

theorem P4682532518712762767.correct : P4682532518712762767.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P4682532518712762767.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A062955, A062955.P10591233305349930181.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P10619126464122248424

`A071118(n+1)%A046152(n+1)`
-/

namespace A046151.P10619126464122248424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071118 (n + 1)) (A046152 (n + 1))

end

end A046151.P10619126464122248424

namespace A046151

/-- `A071118(n+1)%A046152(n+1)` -/
def P10619126464122248424.Spec : Prop :=
  ∀ n, P10619126464122248424.a n = A046151 (n + 1)

end A046151

/-! ## A046151.P3964470061151932735

`A000010(n+1)+A062955(n+1)-1`
-/

namespace A046151.P3964470061151932735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A062955 (n + 1) - 1)

end

end A046151.P3964470061151932735

namespace A046151

/-- `A000010(n+1)+A062955(n+1)-1` -/
def P3964470061151932735.Spec : Prop :=
  ∀ n, P3964470061151932735.a n = A046151 (n + 1)

theorem P3964470061151932735.correct : P3964470061151932735.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P3964470061151932735.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A062955, A062955.P10591233305349930181.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P11047727936519837818

`A238533(n+1)²/A306412(n+1)-1`
-/

namespace A046151.P11047727936519837818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) ^ 2 : ℚ) / (A306412 (n + 1) : ℚ) - 1

end

end A046151.P11047727936519837818

namespace A046151

/-- `A238533(n+1)²/A306412(n+1)-1` -/
def P11047727936519837818.Spec : Prop :=
  ∀ n, P11047727936519837818.a n = (A046151 (n + 1) : ℚ)

end A046151

/-! ## A046151.P2816905779007021244

`∑{d}[n+1, A055615(#)*A235799((n+1)/#)]`
-/

namespace A046151.P2816905779007021244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A235799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046151.P2816905779007021244

namespace A046151

/-- `∑{d}[n+1, A055615(#)*A235799((n+1)/#)]` -/
def P2816905779007021244.Spec : Prop :=
  ∀ n, P2816905779007021244.a n = A046151 (n + 1)

end A046151

/-! ## A046151.P4867947600673917701

`A000010(n+1)+A005563(n)-A345892(n+1)`
-/

namespace A046151.P4867947600673917701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A005563 n - A345892 (n + 1))

end

end A046151.P4867947600673917701

namespace A046151

/-- `A000010(n+1)+A005563(n)-A345892(n+1)` -/
def P4867947600673917701.Spec : Prop :=
  ∀ n, P4867947600673917701.a n = A046151 (n + 1)

theorem P4867947600673917701.correct : P4867947600673917701.Spec := by
  intro n
  simp only [A046151, Nat.add_sub_cancel, A046151.P4867947600673917701.a, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A005563, A005563.P13300161655551567421.a, A345892, A345892.P16235346904455731503.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046151

/-! ## A046151.P13598408714437281766

`A109607(n+1)+A000217(n)-A308473(n+1)`
-/

namespace A046151.P13598408714437281766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 1) + (A000217 n - A308473 (n + 1))

end

end A046151.P13598408714437281766

namespace A046151

/-- `A109607(n+1)+A000217(n)-A308473(n+1)` -/
def P13598408714437281766.Spec : Prop :=
  ∀ n, P13598408714437281766.a n = A046151 (n + 1)

end A046151

/-! ## A046151.P4002702065354252206

`(A000056(n+1)-A001615(n+1))/A001615(n+1)`
-/

namespace A046151.P4002702065354252206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) - A001615 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A046151.P4002702065354252206

namespace A046151

/-- `(A000056(n+1)-A001615(n+1))/A001615(n+1)` -/
def P4002702065354252206.Spec : Prop :=
  ∀ n, P4002702065354252206.a n = (A046151 (n + 1) : ℚ)

end A046151

/-!
# A046152: a(n) = n*phi(n) + 1.

The programs for A046152, the canonical program `A046152.P7809861723130686075` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046152 has offset 1).

The definition of A046152 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046152.P7809861723130686075

`(n+1)*A000010(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046152

/-- `(n+1)*A000010(n+1)+1` -/
def P7809861723130686075.Spec : Prop :=
  ∀ n, P7809861723130686075.a n = A046152 (n + 1)

theorem P7809861723130686075.correct : P7809861723130686075.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel]

end A046152

/-! ## A046152.P256041904670794534

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1`
-/

namespace A046152.P256041904670794534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) + 1

end

end A046152.P256041904670794534

namespace A046152

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1` -/
def P256041904670794534.Spec : Prop :=
  ∀ n, P256041904670794534.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P1357486946175961041

`Δ[A240877(n)]+1`
-/

namespace A046152.P1357486946175961041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A046152.P1357486946175961041

namespace A046152

/-- `Δ[A240877(n)]+1` -/
def P1357486946175961041.Spec : Prop :=
  ∀ n, P1357486946175961041.a n = A046152 (n + 1)

end A046152

/-! ## A046152.P129153505727752026

`A002618(n+1)+1`
-/

namespace A046152.P129153505727752026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + 1

end

end A046152.P129153505727752026

namespace A046152

/-- `A002618(n+1)+1` -/
def P129153505727752026.Spec : Prop :=
  ∀ n, P129153505727752026.a n = A046152 (n + 1)

end A046152

/-! ## A046152.P17931852614987402425

`A046151(n+1)+2`
-/

namespace A046152.P17931852614987402425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1) + 2

end

end A046152.P17931852614987402425

namespace A046152

/-- `A046151(n+1)+2` -/
def P17931852614987402425.Spec : Prop :=
  ∀ n, P17931852614987402425.a n = A046152 (n + 1)

theorem P17931852614987402425.correct : P17931852614987402425.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P17931852614987402425.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A046151, A046151.P159560385155613916.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P13636260617964116084

`A071118(n+1)/2+1`
-/

namespace A046152.P13636260617964116084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / 2 + 1

end

end A046152.P13636260617964116084

namespace A046152

/-- `A071118(n+1)/2+1` -/
def P13636260617964116084.Spec : Prop :=
  ∀ n, P13636260617964116084.a n = (A046152 (n + 1) : ℚ)

theorem P13636260617964116084.correct : P13636260617964116084.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P13636260617964116084.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A071118, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P4204771353206441420

`A064400(n+1)/3+1`
-/

namespace A046152.P4204771353206441420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064400 (n + 1) : ℚ) / 3 + 1

end

end A046152.P4204771353206441420

namespace A046152

/-- `A064400(n+1)/3+1` -/
def P4204771353206441420.Spec : Prop :=
  ∀ n, P4204771353206441420.a n = (A046152 (n + 1) : ℚ)

theorem P4204771353206441420.correct : P4204771353206441420.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P4204771353206441420.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A064400, A064400.P18224085056823472977.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P8061340637764172319

`(n+1)*Δ[A005728(n)]+1`
-/

namespace A046152.P8061340637764172319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) + 1

end

end A046152.P8061340637764172319

namespace A046152

/-- `(n+1)*Δ[A005728(n)]+1` -/
def P8061340637764172319.Spec : Prop :=
  ∀ n, P8061340637764172319.a n = A046152 (n + 1)

end A046152

/-! ## A046152.P153812634767032040

`A053191(n+1)/(n+1)+1`
-/

namespace A046152.P153812634767032040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A046152.P153812634767032040

namespace A046152

/-- `A053191(n+1)/(n+1)+1` -/
def P153812634767032040.Spec : Prop :=
  ∀ n, P153812634767032040.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P9465499405377111951

`(n+1)*A039649(n+1)-n`
-/

namespace A046152.P9465499405377111951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A039649 (n + 1) - (n : ℤ)

end

end A046152.P9465499405377111951

namespace A046152

/-- `(n+1)*A039649(n+1)-n` -/
def P9465499405377111951.Spec : Prop :=
  ∀ n, P9465499405377111951.a n = A046152 (n + 1)

theorem P9465499405377111951.correct : P9465499405377111951.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P9465499405377111951.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P6687615397867362813

`(n+1)*Δ[A100449(n)/4]+1`
-/

namespace A046152.P6687615397867362813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n) + 1

end

end A046152.P6687615397867362813

namespace A046152

/-- `(n+1)*Δ[A100449(n)/4]+1` -/
def P6687615397867362813.Spec : Prop :=
  ∀ n, P6687615397867362813.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P15834585530560298927

`(n+1)*(A109606(n+1)+1)+1`
-/

namespace A046152.P15834585530560298927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A109606 (n + 1) + 1) + 1

end

end A046152.P15834585530560298927

namespace A046152

/-- `(n+1)*(A109606(n+1)+1)+1` -/
def P15834585530560298927.Spec : Prop :=
  ∀ n, P15834585530560298927.a n = A046152 (n + 1)

theorem P15834585530560298927.correct : P15834585530560298927.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P15834585530560298927.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P14602022569263325617

`A062955(n+1)+A039649(n+1)`
-/

namespace A046152.P14602022569263325617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062955 (n + 1) + A039649 (n + 1)

end

end A046152.P14602022569263325617

namespace A046152

/-- `A062955(n+1)+A039649(n+1)` -/
def P14602022569263325617.Spec : Prop :=
  ∀ n, P14602022569263325617.a n = A046152 (n + 1)

theorem P14602022569263325617.correct : P14602022569263325617.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P14602022569263325617.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A062955, A062955.P10591233305349930181.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P17226587221251025812

`A345891(n+1)-A219428(n+1)`
-/

namespace A046152.P17226587221251025812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345891 (n + 1) - A219428 (n + 1)

end

end A046152.P17226587221251025812

namespace A046152

/-- `A345891(n+1)-A219428(n+1)` -/
def P17226587221251025812.Spec : Prop :=
  ∀ n, P17226587221251025812.a n = A046152 (n + 1)

theorem P17226587221251025812.correct : P17226587221251025812.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P17226587221251025812.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A345891, A345891.P1680838059371173555.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P3123258416510172151

`A000010(n+1)+A062955(n+1)+1`
-/

namespace A046152.P3123258416510172151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A062955 (n + 1) + 1)

end

end A046152.P3123258416510172151

namespace A046152

/-- `A000010(n+1)+A062955(n+1)+1` -/
def P3123258416510172151.Spec : Prop :=
  ∀ n, P3123258416510172151.a n = A046152 (n + 1)

theorem P3123258416510172151.correct : P3123258416510172151.Spec := by
  intro n
  simp only [A046152, Nat.add_sub_cancel, A046152.P3123258416510172151.a, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A062955, A062955.P10591233305349930181.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046152

/-! ## A046152.P6657792629066191050

`A238533(n+1)²/A306412(n+1)+1`
-/

namespace A046152.P6657792629066191050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) ^ 2 : ℚ) / (A306412 (n + 1) : ℚ) + 1

end

end A046152.P6657792629066191050

namespace A046152

/-- `A238533(n+1)²/A306412(n+1)+1` -/
def P6657792629066191050.Spec : Prop :=
  ∀ n, P6657792629066191050.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P13102816926427507648

`(A001615(n+1)+A000056(n+1))/A001615(n+1)`
-/

namespace A046152.P13102816926427507648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) + A000056 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A046152.P13102816926427507648

namespace A046152

/-- `(A001615(n+1)+A000056(n+1))/A001615(n+1)` -/
def P13102816926427507648.Spec : Prop :=
  ∀ n, P13102816926427507648.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P7963771054144601696

`(A007434(n+1)+A000252(n+1))/A007434(n+1)`
-/

namespace A046152.P7963771054144601696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) + A000252 (n + 1) : ℚ) / (A007434 (n + 1) : ℚ)

end

end A046152.P7963771054144601696

namespace A046152

/-- `(A007434(n+1)+A000252(n+1))/A007434(n+1)` -/
def P7963771054144601696.Spec : Prop :=
  ∀ n, P7963771054144601696.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P9217403452327038752

`(A327570(n+1)+A000010(n+1))/A000010(n+1)`
-/

namespace A046152.P9217403452327038752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327570 (n + 1) + A000010 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A046152.P9217403452327038752

namespace A046152

/-- `(A327570(n+1)+A000010(n+1))/A000010(n+1)` -/
def P9217403452327038752.Spec : Prop :=
  ∀ n, P9217403452327038752.a n = (A046152 (n + 1) : ℚ)

end A046152

/-! ## A046152.P14418143717795636942

`A076402(A340698(n+1))+1`
-/

namespace A046152.P14418143717795636942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076402 (A340698 (n + 1)).toNat + 1

end

end A046152.P14418143717795636942

namespace A046152

/-- `A076402(A340698(n+1))+1` -/
def P14418143717795636942.Spec : Prop :=
  ∀ n, P14418143717795636942.a n = A046152 (n + 1)

end A046152

/-!
# A046153: Primes of the form m*2^phi(m)-1 with phi(m) the Euler function, in order of increasing m.

The programs for A046153, there is no canonical definition to state claims against.
-/

/-! ## A046153.P3846076128374725766

`A239126(lcm(A003592(2*n+1), A007092(n+1)))`
-/

namespace A046153.P3846076128374725766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239126 (Int.lcm (A003592 (2 * n + 1)) (A007092 (n + 1)))

end

end A046153.P3846076128374725766

/-!
# A046154: Primes of the form k*2^phi(k) + 1 with phi the Euler function.

The programs for A046154, there is no canonical definition to state claims against.
-/

/-! ## A046154.P2640159436966742547

`p?[(n+1)*A066781(n+1)+1]`
-/

namespace A046154.P2640159436966742547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066781 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046154.P2640159436966742547

/-! ## A046154.P8838189797056037609

`p?[(n+1)*A000079(A000010(n+1))+1]`
-/

namespace A046154.P8838189797056037609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A000010 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046154.P8838189797056037609

/-!
# A046155: k that maximizes partitions of n into exactly k parts.

The programs for A046155, there is no canonical definition to state claims against.
-/

/-! ## A046155.P13508774836932265196

`A026819(A028310(n))-A000007(n)`
-/

namespace A046155.P13508774836932265196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A028310 n).toNat - A000007 n

end

end A046155.P13508774836932265196

/-! ## A046155.P8056915284601440188

`A026819(A028310(n))*A057427(n)`
-/

namespace A046155.P8056915284601440188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A028310 n).toNat * A057427 n

end

end A046155.P8056915284601440188

/-! ## A046155.P9152380637491091985

`A026819(A000007(n)+n)-A000007(n)`
-/

namespace A046155.P9152380637491091985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A046155.P9152380637491091985

/-! ## A046155.P17501205793766855470

`A026819(A000038(n)+n)%A000124(n)`
-/

namespace A046155.P17501205793766855470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026819 (A000038 n + (n : ℤ)).toNat) (A000124 n)

end

end A046155.P17501205793766855470

/-! ## A046155.P8447327753477739682

`A026819(or(n, A000038(n)))%A000124(n)`
-/

namespace A046155.P8447327753477739682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026819 (Int.lor (n : ℤ) (A000038 n)).toNat) (A000124 n)

end

end A046155.P8447327753477739682

/-! ## A046155.P2518080011185875945

`A026819(A065033(2*n))%(n+1)`
-/

namespace A046155.P2518080011185875945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026819 (A065033 (2 * n)).toNat) (n + 1 : ℤ)

end

end A046155.P2518080011185875945

/-! ## A046155.P12616635169033696839

`A026819(A065033(2*n))-A000007(n)`
-/

namespace A046155.P12616635169033696839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A065033 (2 * n)).toNat - A000007 n

end

end A046155.P12616635169033696839

/-! ## A046155.P8128403561162194270

`A026819(A233583(n+1))%(n+1)`
-/

namespace A046155.P8128403561162194270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026819 (A233583 (n + 1)).toNat) (n + 1 : ℤ)

end

end A046155.P8128403561162194270

/-! ## A046155.P16111803892834469315

`A026819(A233583(n+1))*A057427(n)`
-/

namespace A046155.P16111803892834469315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A233583 (n + 1)).toNat * A057427 n

end

end A046155.P16111803892834469315

/-! ## A046155.P6906056543751073460

`and(A003817(n), A026819(A233583(n+1)))`
-/

namespace A046155.P6906056543751073460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A026819 (A233583 (n + 1)).toNat)

end

end A046155.P6906056543751073460

/-! ## A046155.P6548255925339122589

`A026819(A002260(∑[n+2]-1))%(n+1)`
-/

namespace A046155.P6548255925339122589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026819 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat) (n + 1 : ℤ)

end

end A046155.P6548255925339122589

/-!
# A046156: Limit set for operation of repeatedly replacing a number with the sum of the cubes of its digits.

The programs for A046156, there is no canonical definition to state claims against.
-/

/-! ## A046156.P248827337161341692

`eq[0, A165331(n)]`
-/

namespace A046156.P248827337161341692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046156.P248827337161341692

/-! ## A046156.P16853528253066866828

`eq[n, A165330(n)]`
-/

namespace A046156.P16853528253066866828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046156.P16853528253066866828

/-! ## A046156.P4901763574804765874

`A165330(lt[A165331(n), 1])`
-/

namespace A046156.P4901763574804765874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165330 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046156.P4901763574804765874

/-! ## A046156.P4647895246216317369

`lt[A165331(n), A001222(A151800(n))]`
-/

namespace A046156.P4647895246216317369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046156.P4647895246216317369

/-! ## A046156.P3148354532179673089

`lt[A165331(n), A001222(A049564(n+1))]`
-/

namespace A046156.P3148354532179673089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049564 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046156.P3148354532179673089

/-!
# A046158: Values of n for which there are no empty intervals when frac(m*gamma) for m = 1, ..., n is plotted along [0, 1] subdivided into n equal regions.

The programs for A046158, there is no canonical definition to state claims against.
-/

/-! ## A046158.P5085950006502885417

`eq[0, A046157(n+1)]+1`
-/

namespace A046158.P5085950006502885417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046157 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046158.P5085950006502885417

/-! ## A046158.P11731374039014528965

`A304042(n)+lt[A046157(n+1), 1]`
-/

namespace A046158.P11731374039014528965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046157 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A046158.P11731374039014528965

/-! ## A046158.P14424725787549808911

`lt[A046157(n+1), A000007(n)+1]+1`
-/

namespace A046158.P14424725787549808911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046158.P14424725787549808911

/-! ## A046158.P5780939086041743063

`eq[A000007(n), A046157(A028310(n))]`
-/

namespace A046158.P5780939086041743063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046157 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046158.P5780939086041743063

/-! ## A046158.P9179182820748997089

`eq[A000038(n), A046157(A028310(n))]`
-/

namespace A046158.P9179182820748997089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046157 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046158.P9179182820748997089

/-!
# A046159: Bends of spheres in the plane of Soddy's bowl of integers.

The programs for A046159, the canonical program `A046159.P12915748056577816484` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046159 has offset 1).

The definition of A046159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046159.P12915748056577816484

`A270248(n+2)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046159

/-- `A270248(n+2)-1` -/
def P12915748056577816484.Spec : Prop :=
  ∀ n, P12915748056577816484.a n = A046159 (n + 1)

theorem P12915748056577816484.correct : P12915748056577816484.Spec := by
  intro n
  simp only [A046159, Nat.add_sub_cancel]

end A046159

/-! ## A046159.P3701562277552529787

`A003136(A024608(n+2))-1`
-/

namespace A046159.P3701562277552529787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A024608 (n + 2)).toNat - 1

end

end A046159.P3701562277552529787

namespace A046159

/-- `A003136(A024608(n+2))-1` -/
def P3701562277552529787.Spec : Prop :=
  ∀ n, P3701562277552529787.a n = A046159 (n + 1)

end A046159

/-! ## A046159.P11044848247022113667

`A234011(A003136(n+2))`
-/

namespace A046159.P11044848247022113667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234011 (A003136 (n + 2)).toNat

end

end A046159.P11044848247022113667

namespace A046159

/-- `A234011(A003136(n+2))` -/
def P11044848247022113667.Spec : Prop :=
  ∀ n, P11044848247022113667.a n = A046159 (n + 1)

end A046159

/-! ## A046159.P12669363328808609246

`A004273(A270050(n+2))`
-/

namespace A046159.P12669363328808609246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A270050 (n + 2)).toNat

end

end A046159.P12669363328808609246

namespace A046159

/-- `A004273(A270050(n+2))` -/
def P12669363328808609246.Spec : Prop :=
  ∀ n, P12669363328808609246.a n = A046159 (n + 1)

end A046159

/-! ## A046159.P8642961130738533318

`A004772(A270672(n+2))`
-/

namespace A046159.P8642961130738533318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A270672 (n + 2)).toNat

end

end A046159.P8642961130738533318

namespace A046159

/-- `A004772(A270672(n+2))` -/
def P8642961130738533318.Spec : Prop :=
  ∀ n, P8642961130738533318.a n = A046159 (n + 1)

end A046159

/-! ## A046159.P3758399515882775066

`A014681(A270248(n+2))`
-/

namespace A046159.P3758399515882775066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A270248 (n + 2)).toNat

end

end A046159.P3758399515882775066

namespace A046159

/-- `A014681(A270248(n+2))` -/
def P3758399515882775066.Spec : Prop :=
  ∀ n, P3758399515882775066.a n = A046159 (n + 1)

end A046159

/-! ## A046159.P10282150368181225286

`eq[A000035(n), A390692(n+1)]`
-/

namespace A046159.P10282150368181225286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P10282150368181225286

namespace A046159

/-- `eq[A000035(n), A390692(n+1)]` -/
def P10282150368181225286.Spec : Prop :=
  ∀ n, (P10282150368181225286.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P5998753907228316226

`eq[A003816(n), A390694(n+1)]`
-/

namespace A046159.P5998753907228316226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P5998753907228316226

namespace A046159

/-- `eq[A003816(n), A390694(n+1)]` -/
def P5998753907228316226.Spec : Prop :=
  ∀ n, (P5998753907228316226.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P13095771532832537950

`eq[A007877(n), A390692(n+1)]`
-/

namespace A046159.P13095771532832537950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P13095771532832537950

namespace A046159

/-- `eq[A007877(n), A390692(n+1)]` -/
def P13095771532832537950.Spec : Prop :=
  ∀ n, (P13095771532832537950.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P17757134615892945546

`eq[A010123(n), A390692(n+1)]`
-/

namespace A046159.P17757134615892945546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P17757134615892945546

namespace A046159

/-- `eq[A010123(n), A390692(n+1)]` -/
def P17757134615892945546.Spec : Prop :=
  ∀ n, (P17757134615892945546.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P7258135327575082777

`eq[A010127(n), A390692(n+1)]`
-/

namespace A046159.P7258135327575082777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P7258135327575082777

namespace A046159

/-- `eq[A010127(n), A390692(n+1)]` -/
def P7258135327575082777.Spec : Prop :=
  ∀ n, (P7258135327575082777.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P3219133719913378046

`eq[A010131(n), A390692(n+1)]`
-/

namespace A046159.P3219133719913378046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P3219133719913378046

namespace A046159

/-- `eq[A010131(n), A390692(n+1)]` -/
def P3219133719913378046.Spec : Prop :=
  ∀ n, (P3219133719913378046.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P778270043717325658

`eq[A010132(n), A390692(n+1)]`
-/

namespace A046159.P778270043717325658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P778270043717325658

namespace A046159

/-- `eq[A010132(n), A390692(n+1)]` -/
def P778270043717325658.Spec : Prop :=
  ∀ n, (P778270043717325658.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P14214049061853206070

`eq[A010146(n), A390692(n+1)]`
-/

namespace A046159.P14214049061853206070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P14214049061853206070

namespace A046159

/-- `eq[A010146(n), A390692(n+1)]` -/
def P14214049061853206070.Spec : Prop :=
  ∀ n, (P14214049061853206070.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P18100957917325931502

`eq[A010156(n), A390692(n+1)]`
-/

namespace A046159.P18100957917325931502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P18100957917325931502

namespace A046159

/-- `eq[A010156(n), A390692(n+1)]` -/
def P18100957917325931502.Spec : Prop :=
  ∀ n, (P18100957917325931502.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P13682580502735246994

`eq[A010157(n), A390692(n+1)]`
-/

namespace A046159.P13682580502735246994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P13682580502735246994

namespace A046159

/-- `eq[A010157(n), A390692(n+1)]` -/
def P13682580502735246994.Spec : Prop :=
  ∀ n, (P13682580502735246994.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P13282287733068308989

`eq[A010166(n), A390692(n+1)]`
-/

namespace A046159.P13282287733068308989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P13282287733068308989

namespace A046159

/-- `eq[A010166(n), A390692(n+1)]` -/
def P13282287733068308989.Spec : Prop :=
  ∀ n, (P13282287733068308989.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P3707338159371649581

`eq[A010167(n), A390692(n+1)]`
-/

namespace A046159.P3707338159371649581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P3707338159371649581

namespace A046159

/-- `eq[A010167(n), A390692(n+1)]` -/
def P3707338159371649581.Spec : Prop :=
  ∀ n, (P3707338159371649581.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P4950026453685670961

`eq[A010169(n), A390692(n+1)]`
-/

namespace A046159.P4950026453685670961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P4950026453685670961

namespace A046159

/-- `eq[A010169(n), A390692(n+1)]` -/
def P4950026453685670961.Spec : Prop :=
  ∀ n, (P4950026453685670961.a n : ℤ) = A046159 (n + 1)

end A046159

/-! ## A046159.P12502086444838796996

`eq[A010170(n), A390692(n+1)]`
-/

namespace A046159.P12502086444838796996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046159.P12502086444838796996

namespace A046159

/-- `eq[A010170(n), A390692(n+1)]` -/
def P12502086444838796996.Spec : Prop :=
  ∀ n, (P12502086444838796996.a n : ℤ) = A046159 (n + 1)

end A046159

/-!
# A046160: Bends of spheres in Soddy's bowl of integers which are tangent to the unit sphere and a single 2-sphere.

The programs for A046160, the canonical program `A046160.P5184694842882973366` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046160 has offset 1).

The definition of A046160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046160.P17826056675100179357

`A319701(A270050(n+2))`
-/

namespace A046160.P17826056675100179357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (A270050 (n + 2)).toNat

end

end A046160.P17826056675100179357

namespace A046160

/-- `A319701(A270050(n+2))` -/
def P17826056675100179357.Spec : Prop :=
  ∀ n, P17826056675100179357.a n = A046160 (n + 1)

end A046160

/-! ## A046160.P5184694842882973366

`A003136(A065475(n+1))+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046160

/-- `A003136(A065475(n+1))+2` -/
def P5184694842882973366.Spec : Prop :=
  ∀ n, P5184694842882973366.a n = A046160 (n + 1)

theorem P5184694842882973366.correct : P5184694842882973366.Spec := by
  intro n
  simp only [A046160, Nat.add_sub_cancel]

end A046160

/-! ## A046160.P9721990928556970838

`A040001(2*n)+A003136(n+2)`
-/

namespace A046160.P9721990928556970838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) + A003136 (n + 2)

end

end A046160.P9721990928556970838

namespace A046160

/-- `A040001(2*n)+A003136(n+2)` -/
def P9721990928556970838.Spec : Prop :=
  ∀ n, P9721990928556970838.a n = A046160 (n + 1)

end A046160

/-! ## A046160.P1793449783437876002

`A053589(A061393(n))+A003136(n+2)`
-/

namespace A046160.P1793449783437876002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A061393 n).toNat + A003136 (n + 2)

end

end A046160.P1793449783437876002

namespace A046160

/-- `A053589(A061393(n))+A003136(n+2)` -/
def P1793449783437876002.Spec : Prop :=
  ∀ n, P1793449783437876002.a n = A046160 (n + 1)

end A046160

/-! ## A046160.P5112336787459622579

`A320111(A000040(n+1))+A003136(n+2)`
-/

namespace A046160.P5112336787459622579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A000040 (n + 1)).toNat + A003136 (n + 2)

end

end A046160.P5112336787459622579

namespace A046160

/-- `A320111(A000040(n+1))+A003136(n+2)` -/
def P5112336787459622579.Spec : Prop :=
  ∀ n, P5112336787459622579.a n = A046160 (n + 1)

end A046160

/-! ## A046160.P16691780792121456708

`A020639(A000010(n+2))+A003136(n+2)`
-/

namespace A046160.P16691780792121456708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat + A003136 (n + 2)

end

end A046160.P16691780792121456708

namespace A046160

/-- `A020639(A000010(n+2))+A003136(n+2)` -/
def P16691780792121456708.Spec : Prop :=
  ∀ n, P16691780792121456708.a n = A046160 (n + 1)

end A046160

/-! ## A046160.P6617712311444202411

`A003136(n+2)+A000122(n²)`
-/

namespace A046160.P6617712311444202411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 2) + A000122 (n ^ 2)

end

end A046160.P6617712311444202411

namespace A046160

/-- `A003136(n+2)+A000122(n²)` -/
def P6617712311444202411.Spec : Prop :=
  ∀ n, P6617712311444202411.a n = A046160 (n + 1)

end A046160

/-!
# A046161: a(n) = denominator of binomial(2n,n)/4^n.

The programs for A046161, the canonical program `A046161.P11774724709527425901` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046161 has offset 0).

The definition of A046161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046161.P11774724709527425901

`2^A005187(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046161

/-- `2^A005187(n)` -/
def P11774724709527425901.Spec : Prop :=
  ∀ n, P11774724709527425901.a n = (A046161 n : ℚ)

end A046161

/-! ## A046161.P12476897997250763573

`2^n*A060818(n)`
-/

namespace A046161.P12476897997250763573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A060818 n

end

end A046161.P12476897997250763573

namespace A046161

/-- `2^n*A060818(n)` -/
def P12476897997250763573.Spec : Prop :=
  ∀ n, P12476897997250763573.a n = A046161 n

end A046161

/-! ## A046161.P3476280396942475894

`2^A001511(n)*a(n-1)` with `a(0)=1`
-/

namespace A046161.P3476280396942475894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A001511 n : ℤ) * a (n - 1)

end

end A046161.P3476280396942475894

namespace A046161

/-- `2^A001511(n)*a(n-1)` -/
def P3476280396942475894.Spec : Prop :=
  ∀ n, P3476280396942475894.a n = (A046161 n : ℚ)

end A046161

/-! ## A046161.P8214856655274155045

`4^n/2^A000120(n)`
-/

namespace A046161.P8214856655274155045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (2 : ℚ) ^ (A000120 n : ℤ)

end

end A046161.P8214856655274155045

namespace A046161

/-- `4^n/2^A000120(n)` -/
def P8214856655274155045.Spec : Prop :=
  ∀ n, P8214856655274155045.a n = (A046161 n : ℚ)

end A046161

/-! ## A046161.P18030708125104478740

`∏[gcd(2*n, 2^n)]`
-/

namespace A046161.P18030708125104478740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046161.P18030708125104478740

namespace A046161

/-- `∏[gcd(2*n, 2^n)]` -/
def P18030708125104478740.Spec : Prop :=
  ∀ n, (P18030708125104478740.a n : ℤ) = A046161 n

end A046161

/-! ## A046161.P1362737149239514893

`2^∑[∑{e}[xor(n, -n), #]]`
-/

namespace A046161.P1362737149239514893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046161.P1362737149239514893

namespace A046161

/-- `2^∑[∑{e}[xor(n, -n), #]]` -/
def P1362737149239514893.Spec : Prop :=
  ∀ n, (P1362737149239514893.a n : ℤ) = A046161 n

end A046161

/-! ## A046161.P12727654433597309908

`∏[2^∑{e}[xor(n, -n), #]]`
-/

namespace A046161.P12727654433597309908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046161.P12727654433597309908

namespace A046161

/-- `∏[2^∑{e}[xor(n, -n), #]]` -/
def P12727654433597309908.Spec : Prop :=
  ∀ n, (P12727654433597309908.a n : ℤ) = A046161 n

end A046161

/-! ## A046161.P8834631816656838919

`2^n*a(floor(n/2))` with `a(0)=1`
-/

namespace A046161.P8834631816656838919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A046161.P8834631816656838919

namespace A046161

/-- `2^n*a(floor(n/2))` -/
def P8834631816656838919.Spec : Prop :=
  ∀ n, (P8834631816656838919.a n : ℤ) = A046161 n

end A046161

/-! ## A046161.P7926311660964162082

`2^∑[a(∑[n]%n)+1]` with `a(0)=0`
-/

namespace A046161.P7926311660964162082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046161.P7926311660964162082

namespace A046161

/-- `2^∑[a(∑[n]%n)+1]` -/
def P7926311660964162082.Spec : Prop :=
  ∀ n, (P7926311660964162082.a n : ℤ) = A046161 n

end A046161

/-! ## A046161.P18295466664023637515

`-(xor(n, -n)*a(n-1))` with `a(0)=1`
-/

namespace A046161.P18295466664023637515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.xor (n : ℤ) (-(n : ℤ)) * a (n - 1))

end

end A046161.P18295466664023637515

namespace A046161

/-- `-(xor(n, -n)*a(n-1))` -/
def P18295466664023637515.Spec : Prop :=
  ∀ n, P18295466664023637515.a n = A046161 n

end A046161

/-! ## A046161.P8087635273372673601

`record[or(n, -n)*a(n-1)]` with `a(0)=1`
-/

namespace A046161.P8087635273372673601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor (n : ℤ) (-(n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046161.P8087635273372673601

namespace A046161

/-- `record[or(n, -n)*a(n-1)]` -/
def P8087635273372673601.Spec : Prop :=
  ∀ n, P8087635273372673601.a n = A046161 n

end A046161

/-! ## A046161.P5774952027861242721

`2*a(n-1)*gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A046161.P5774952027861242721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * Nat.gcd n (a (n - 1))

end

end A046161.P5774952027861242721

namespace A046161

/-- `2*a(n-1)*gcd(n, a(n-1))` -/
def P5774952027861242721.Spec : Prop :=
  ∀ n, (P5774952027861242721.a n : ℤ) = A046161 n

end A046161

/-! ## A046161.P10724818753153527629

`-(or(2*n, -(2*n))*a(n-1))` with `a(0)=1`
-/

namespace A046161.P10724818753153527629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(Int.lor (2 * n : ℤ) (-(2 * n : ℤ)) * a (n - 1))

end

end A046161.P10724818753153527629

namespace A046161

/-- `-(or(2*n, -(2*n))*a(n-1))` -/
def P10724818753153527629.Spec : Prop :=
  ∀ n, P10724818753153527629.a n = A046161 n

end A046161

/-! ## A046161.P10208903592838835588

`floor(and(1-2*n, 2*n)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A046161.P10208903592838835588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ) * a (n - 1)

end

end A046161.P10208903592838835588

namespace A046161

/-- `floor(and(1-2*n, 2*n)*a(n-1))` -/
def P10208903592838835588.Spec : Prop :=
  ∀ n, P10208903592838835588.a n = A046161 n

end A046161

/-! ## A046161.P7731151863222370088

`record[A004732(n)]`
-/

namespace A046161.P7731151863222370088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046161.P7731151863222370088

namespace A046161

/-- `record[A004732(n)]` -/
def P7731151863222370088.Spec : Prop :=
  ∀ n, P7731151863222370088.a n = A046161 n

end A046161

/-! ## A046161.P6257802347630674398

`record[A397606(n)]`
-/

namespace A046161.P6257802347630674398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046161.P6257802347630674398

namespace A046161

/-- `record[A397606(n)]` -/
def P6257802347630674398.Spec : Prop :=
  ∀ n, P6257802347630674398.a n = A046161 n

end A046161

/-! ## A046161.P16274735453168933748

`A004730(2*n)`
-/

namespace A046161.P16274735453168933748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * n)

end

end A046161.P16274735453168933748

namespace A046161

/-- `A004730(2*n)` -/
def P16274735453168933748.Spec : Prop :=
  ∀ n, P16274735453168933748.a n = A046161 n

end A046161

/-! ## A046161.P3433799521879686945

`A004732(2*n)`
-/

namespace A046161.P3433799521879686945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004732 (2 * n)

end

end A046161.P3433799521879686945

namespace A046161

/-- `A004732(2*n)` -/
def P3433799521879686945.Spec : Prop :=
  ∀ n, P3433799521879686945.a n = A046161 n

end A046161

/-! ## A046161.P3159061444395654571

`A060818(2*n)`
-/

namespace A046161.P3159061444395654571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * n)

end

end A046161.P3159061444395654571

namespace A046161

/-- `A060818(2*n)` -/
def P3159061444395654571.Spec : Prop :=
  ∀ n, P3159061444395654571.a n = A046161 n

end A046161

/-! ## A046161.P12968324869877462185

`A380909(2*n)`
-/

namespace A046161.P12968324869877462185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 (2 * n)

end

end A046161.P12968324869877462185

namespace A046161

/-- `A380909(2*n)` -/
def P12968324869877462185.Spec : Prop :=
  ∀ n, P12968324869877462185.a n = A046161 n

end A046161

/-!
# A046162: Reduced numerators of (n-1)^2/(n^2 + n + 1).

The programs for A046162, the canonical program `A046162.P5432675134339952397` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046162 has offset 1).

The definition of A046162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046162.P10197198617211282699

`lcm(3, n²)/3`
-/

namespace A046162.P10197198617211282699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n ^ 2) : ℚ) / 3

end

end A046162.P10197198617211282699

namespace A046162

/-- `lcm(3, n²)/3` -/
def P10197198617211282699.Spec : Prop :=
  ∀ n, P10197198617211282699.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P7077987624399314832

`n²/gcd(3, n)`
-/

namespace A046162.P7077987624399314832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A046162.P7077987624399314832

namespace A046162

/-- `n²/gcd(3, n)` -/
def P7077987624399314832.Spec : Prop :=
  ∀ n, P7077987624399314832.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P5432675134339952397

`gcd(n², C(n², 3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046162

/-- `gcd(n², C(n², 3))` -/
def P5432675134339952397.Spec : Prop :=
  ∀ n, (P5432675134339952397.a n : ℤ) = A046162 (n + 1)

theorem P5432675134339952397.correct : P5432675134339952397.Spec := by
  intro n
  simp only [A046162, Nat.add_sub_cancel]

end A046162

/-! ## A046162.P15392499699247694852

`n*lcm(6, 2*n)/6`
-/

namespace A046162.P15392499699247694852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.lcm 6 (2 * n) : ℚ) / 6)

end

end A046162.P15392499699247694852

namespace A046162

/-- `n*lcm(6, 2*n)/6` -/
def P15392499699247694852.Spec : Prop :=
  ∀ n, P15392499699247694852.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P3040372395836800727

`gcd(n^3, ∑[C(2*n, 3)])`
-/

namespace A046162.P3040372395836800727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046162.P3040372395836800727

namespace A046162

/-- `gcd(n^3, ∑[C(2*n, 3)])` -/
def P3040372395836800727.Spec : Prop :=
  ∀ n, (P3040372395836800727.a n : ℤ) = A046162 (n + 1)

end A046162

/-! ## A046162.P1389902421249359684

`2*n*n/gcd(6, 2*n)`
-/

namespace A046162.P1389902421249359684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((n : ℚ) / (Nat.gcd 6 (2 * n) : ℚ))

end

end A046162.P1389902421249359684

namespace A046162

/-- `2*n*n/gcd(6, 2*n)` -/
def P1389902421249359684.Spec : Prop :=
  ∀ n, P1389902421249359684.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P5967311886629780262

`n²/3^(1-n²%3)`
-/

namespace A046162.P5967311886629780262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (3 : ℚ) ^ (1 - ((n ^ 2 % 3 : ℕ) : ℤ) : ℤ)

end

end A046162.P5967311886629780262

namespace A046162

/-- `n²/3^(1-n²%3)` -/
def P5967311886629780262.Spec : Prop :=
  ∀ n, P5967311886629780262.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P6902371119378249876

`n²/3^(∑[n+1]%3)`
-/

namespace A046162.P6902371119378249876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (3 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)

end

end A046162.P6902371119378249876

namespace A046162

/-- `n²/3^(∑[n+1]%3)` -/
def P6902371119378249876.Spec : Prop :=
  ∀ n, P6902371119378249876.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P5706839634993459828

`n*lcm(n, n+3)%(n+2)`
-/

namespace A046162.P5706839634993459828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.lcm n (n + 3) % (n + 2))

end

end A046162.P5706839634993459828

namespace A046162

/-- `n*lcm(n, n+3)%(n+2)` -/
def P5706839634993459828.Spec : Prop :=
  ∀ n, (P5706839634993459828.a n : ℤ) = A046162 (n + 1)

end A046162

/-! ## A046162.P18338226605944658961

`gcd(2*n*∑[n²], n²²)`
-/

namespace A046162.P18338226605944658961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) ((n ^ 2) ^ 2)

end

end A046162.P18338226605944658961

namespace A046162

/-- `gcd(2*n*∑[n²], n²²)` -/
def P18338226605944658961.Spec : Prop :=
  ∀ n, (P18338226605944658961.a n : ℤ) = A046162 (n + 1)

end A046162

/-! ## A046162.P15090225078303895463

`n*gcd(2*n-n, ∑[∑[n]])`
-/

namespace A046162.P15090225078303895463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd ((2 * n : ℤ) - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A046162.P15090225078303895463

namespace A046162

/-- `n*gcd(2*n-n, ∑[∑[n]])` -/
def P15090225078303895463.Spec : Prop :=
  ∀ n, (P15090225078303895463.a n : ℤ) = A046162 (n + 1)

end A046162

/-! ## A046162.P3718084711135579958

`n²/∑[ogf((3+x+x^2)/(1+x+x^2))]`
-/

namespace A046162.P3718084711135579958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1] [1, 1, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A046162.P3718084711135579958

namespace A046162

/-- `n²/∑[ogf((3+x+x^2)/(1+x+x^2))]` -/
def P3718084711135579958.Spec : Prop :=
  ∀ n, P3718084711135579958.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P10121701352530902448

`n*n/∑[ogf((3+x+x^2)/(1+x+x^2))]`
-/

namespace A046162.P10121701352530902448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1] [1, 1, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A046162.P10121701352530902448

namespace A046162

/-- `n*n/∑[ogf((3+x+x^2)/(1+x+x^2))]` -/
def P10121701352530902448.Spec : Prop :=
  ∀ n, P10121701352530902448.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P13678250471152236396

`n²/∑[floor(a(n-3))]` with `a(0)=3, a(1)=-2, a(2)=0, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A046162.P13678250471152236396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 0, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A046162.P13678250471152236396

namespace A046162

/-- `n²/∑[floor(a(n-3))]` -/
def P13678250471152236396.Spec : Prop :=
  ∀ n, P13678250471152236396.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P2497367424231044508

`A147560(n)/4`
-/

namespace A046162.P2497367424231044508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147560 n : ℚ) / 4

end

end A046162.P2497367424231044508

namespace A046162

/-- `A147560(n)/4` -/
def P2497367424231044508.Spec : Prop :=
  ∀ n, P2497367424231044508.a n = (A046162 (n + 1) : ℚ)

theorem P2497367424231044508.correct : P2497367424231044508.Spec := by
  intro n
  simp only [A046162, Nat.add_sub_cancel, A046162.P2497367424231044508.a, A046162.P5432675134339952397.a, A147560, A147560.P7607383619755191846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A046162

/-! ## A046162.P15629944638087577569

`n*A051176(n)`
-/

namespace A046162.P15629944638087577569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051176 n

end

end A046162.P15629944638087577569

namespace A046162

/-- `n*A051176(n)` -/
def P15629944638087577569.Spec : Prop :=
  ∀ n, P15629944638087577569.a n = A046162 (n + 1)

end A046162

/-! ## A046162.P7379779838236484598

`n²/A109007(n)`
-/

namespace A046162.P7379779838236484598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (A109007 n : ℚ)

end

end A046162.P7379779838236484598

namespace A046162

/-- `n²/A109007(n)` -/
def P7379779838236484598.Spec : Prop :=
  ∀ n, P7379779838236484598.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P1287036028391962051

`n/3*A109044(n)`
-/

namespace A046162.P1287036028391962051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A109044 n : ℚ)

end

end A046162.P1287036028391962051

namespace A046162

/-- `n/3*A109044(n)` -/
def P1287036028391962051.Spec : Prop :=
  ∀ n, P1287036028391962051.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P4494809003881761504

`n²/(4-A169609(n))`
-/

namespace A046162.P4494809003881761504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (4 - A169609 n : ℚ)

end

end A046162.P4494809003881761504

namespace A046162

/-- `n²/(4-A169609(n))` -/
def P4494809003881761504.Spec : Prop :=
  ∀ n, P4494809003881761504.a n = (A046162 (n + 1) : ℚ)

end A046162

/-! ## A046162.P13889868564674565703

`n²/or(1, A100063(n))`
-/

namespace A046162.P13889868564674565703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (Int.lor 1 (A100063 n) : ℚ)

end

end A046162.P13889868564674565703

namespace A046162

/-- `n²/or(1, A100063(n))` -/
def P13889868564674565703.Spec : Prop :=
  ∀ n, P13889868564674565703.a n = (A046162 (n + 1) : ℚ)

end A046162

/-!
# A046163: Reduced denominators of (n-1)^2/(n^2 + n + 1).

The programs for A046163, the canonical program `A046163.P5806449323017116819` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046163 has offset 1).

The definition of A046163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046163.P2780376916227940396

`lcm(3, n*(n+3)+3)/3`
-/

namespace A046163.P2780376916227940396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n * (n + 3) + 3) : ℚ) / 3

end

end A046163.P2780376916227940396

namespace A046163

/-- `lcm(3, n*(n+3)+3)/3` -/
def P2780376916227940396.Spec : Prop :=
  ∀ n, P2780376916227940396.a n = (A046163 (n + 1) : ℚ)

end A046163

/-! ## A046163.P9721720066700664177

`(n*(n+3)+3)/gcd(3, n)`
-/

namespace A046163.P9721720066700664177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) + 3 : ℚ) / (Nat.gcd 3 n : ℚ)

end

end A046163.P9721720066700664177

namespace A046163

/-- `(n*(n+3)+3)/gcd(3, n)` -/
def P9721720066700664177.Spec : Prop :=
  ∀ n, P9721720066700664177.a n = (A046163 (n + 1) : ℚ)

end A046163

/-! ## A046163.P3623007387197581059

`A153171(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A046163.P3623007387197581059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153171 (n - 1) + a (n - 1)

end

end A046163.P3623007387197581059

namespace A046163

/-- `A153171(n-1)+a(n-1)` -/
def P3623007387197581059.Spec : Prop :=
  ∀ n, P3623007387197581059.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P11347789733878803899

`A158622(n+2)-A153171(n)`
-/

namespace A046163.P11347789733878803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158622 (n + 2) - A153171 n

end

end A046163.P11347789733878803899

namespace A046163

/-- `A158622(n+2)-A153171(n)` -/
def P11347789733878803899.Spec : Prop :=
  ∀ n, P11347789733878803899.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P673590345404147398

`gcd(A068601(n+1), A220892(n))`
-/

namespace A046163.P673590345404147398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068601 (n + 1)) (A220892 n)

end

end A046163.P673590345404147398

namespace A046163

/-- `gcd(A068601(n+1), A220892(n))` -/
def P673590345404147398.Spec : Prop :=
  ∀ n, (P673590345404147398.a n : ℤ) = A046163 (n + 1)

end A046163

/-! ## A046163.P5806449323017116819

`2*A222591(n+3)-A169609(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046163

/-- `2*A222591(n+3)-A169609(n)` -/
def P5806449323017116819.Spec : Prop :=
  ∀ n, P5806449323017116819.a n = A046163 (n + 1)

theorem P5806449323017116819.correct : P5806449323017116819.Spec := by
  intro n
  simp only [A046163, Nat.add_sub_cancel]

end A046163

/-! ## A046163.P8154627848266791531

`A130770(n+1)`
-/

namespace A046163.P8154627848266791531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (n + 1)

end

end A046163.P8154627848266791531

namespace A046163

/-- `A130770(n+1)` -/
def P8154627848266791531.Spec : Prop :=
  ∀ n, P8154627848266791531.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P8873505857394660905

`A130723(n+1)/3`
-/

namespace A046163.P8873505857394660905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130723 (n + 1) : ℚ) / 3

end

end A046163.P8873505857394660905

namespace A046163

/-- `A130723(n+1)/3` -/
def P8873505857394660905.Spec : Prop :=
  ∀ n, P8873505857394660905.a n = (A046163 (n + 1) : ℚ)

end A046163

/-! ## A046163.P7412930017165929436

`ratio[A130770(n)]*A130770(n)`
-/

namespace A046163.P7412930017165929436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A130770 n : ℚ)

end

end A046163.P7412930017165929436

namespace A046163

/-- `ratio[A130770(n)]*A130770(n)` -/
def P7412930017165929436.Spec : Prop :=
  ∀ n, P7412930017165929436.a n = (A046163 (n + 1) : ℚ)

end A046163

/-! ## A046163.P15313331855175584790

`A002061(n+2)/A109007(n)`
-/

namespace A046163.P15313331855175584790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002061 (n + 2) : ℚ) / (A109007 n : ℚ)

end

end A046163.P15313331855175584790

namespace A046163

/-- `A002061(n+2)/A109007(n)` -/
def P15313331855175584790.Spec : Prop :=
  ∀ n, P15313331855175584790.a n = (A046163 (n + 1) : ℚ)

end A046163

/-! ## A046163.P16135683934088503262

`A194767(n+1)-A146535(n+2)`
-/

namespace A046163.P16135683934088503262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194767 (n + 1) - A146535 (n + 2)

end

end A046163.P16135683934088503262

namespace A046163

/-- `A194767(n+1)-A146535(n+2)` -/
def P16135683934088503262.Spec : Prop :=
  ∀ n, P16135683934088503262.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P7732491184183270138

`gcd(A006565(n+1), A111002(n+1))`
-/

namespace A046163.P7732491184183270138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006565 (n + 1)) (A111002 (n + 1))

end

end A046163.P7732491184183270138

namespace A046163

/-- `gcd(A006565(n+1), A111002(n+1))` -/
def P7732491184183270138.Spec : Prop :=
  ∀ n, (P7732491184183270138.a n : ℤ) = A046163 (n + 1)

end A046163

/-! ## A046163.P2368889388863200748

`gcd(A059721(n+1), A102909(n+1))`
-/

namespace A046163.P2368889388863200748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059721 (n + 1)) (A102909 (n + 1))

end

end A046163.P2368889388863200748

namespace A046163

/-- `gcd(A059721(n+1), A102909(n+1))` -/
def P2368889388863200748.Spec : Prop :=
  ∀ n, (P2368889388863200748.a n : ℤ) = A046163 (n + 1)

end A046163

/-! ## A046163.P14364619400508679884

`gcd(A027444(n+1), A220892(n+1))`
-/

namespace A046163.P14364619400508679884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027444 (n + 1)) (A220892 (n + 1))

end

end A046163.P14364619400508679884

namespace A046163

/-- `gcd(A027444(n+1), A220892(n+1))` -/
def P14364619400508679884.Spec : Prop :=
  ∀ n, (P14364619400508679884.a n : ℤ) = A046163 (n + 1)

end A046163

/-! ## A046163.P4010261813185924485

`gcd(A005898(n+1), A331528(n+1))`
-/

namespace A046163.P4010261813185924485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005898 (n + 1)) (A331528 (n + 1))

end

end A046163.P4010261813185924485

namespace A046163

/-- `gcd(A005898(n+1), A331528(n+1))` -/
def P4010261813185924485.Spec : Prop :=
  ∀ n, (P4010261813185924485.a n : ℤ) = A046163 (n + 1)

end A046163

/-! ## A046163.P18329791402565311163

`A169609(n)+n*A145064(n+1)`
-/

namespace A046163.P18329791402565311163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169609 n + (n : ℤ) * A145064 (n + 1)

end

end A046163.P18329791402565311163

namespace A046163

/-- `A169609(n)+n*A145064(n+1)` -/
def P18329791402565311163.Spec : Prop :=
  ∀ n, P18329791402565311163.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P9258600038320541230

`A194767(n+1)-A145064(2*n+1)`
-/

namespace A046163.P9258600038320541230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194767 (n + 1) - A145064 (2 * n + 1)

end

end A046163.P9258600038320541230

namespace A046163

/-- `A194767(n+1)-A145064(2*n+1)` -/
def P9258600038320541230.Spec : Prop :=
  ∀ n, P9258600038320541230.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P18095115504647520079

`(n+2)*A145064(n+1)-A145064(2*n+1)`
-/

namespace A046163.P18095115504647520079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A145064 (n + 1) - A145064 (2 * n + 1)

end

end A046163.P18095115504647520079

namespace A046163

/-- `(n+2)*A145064(n+1)-A145064(2*n+1)` -/
def P18095115504647520079.Spec : Prop :=
  ∀ n, P18095115504647520079.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P14914052357380335077

`ceil(A129202(2*(n+1))/4)`
-/

namespace A046163.P14914052357380335077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129202 (2 * (n + 1)) : ℚ) / 4⌉

end

end A046163.P14914052357380335077

namespace A046163

/-- `ceil(A129202(2*(n+1))/4)` -/
def P14914052357380335077.Spec : Prop :=
  ∀ n, P14914052357380335077.a n = A046163 (n + 1)

end A046163

/-! ## A046163.P2030819894108703838

`A093411(A167614(2*n+1)+n)`
-/

namespace A046163.P2030819894108703838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A167614 (2 * n + 1) + (n : ℤ)).toNat

end

end A046163.P2030819894108703838

namespace A046163

/-- `A093411(A167614(2*n+1)+n)` -/
def P2030819894108703838.Spec : Prop :=
  ∀ n, P2030819894108703838.a n = A046163 (n + 1)

end A046163

/-!
# A046165: Number of minimal covers of n objects.

The programs for A046165, there is no canonical definition to state claims against.
-/

/-! ## A046165.P13675694374270015736

`A111891(∑[floor(8^(n-1))]+3)`
-/

namespace A046165.P13675694374270015736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111891 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A046165.P13675694374270015736

/-! ## A046165.P4318088604493210896

`A266196(A042968(n!))`
-/

namespace A046165.P4318088604493210896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266196 (A042968 (Nat.factorial n)).toNat

end

end A046165.P4318088604493210896

/-!
# A046167: Number of minimal covers on n objects with 6 members.

The programs for A046167, there is no canonical definition to state claims against.
-/

/-! ## A046167.P9369968628894930452

`A006463(2^C(n, 5))`
-/

namespace A046167.P9369968628894930452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (2 ^ Nat.choose n 5)

end

end A046167.P9369968628894930452

/-! ## A046167.P9087792907750597893

`A129167(C(n, 5)^(2-char[∑[n]]))`
-/

namespace A046167.P9087792907750597893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 (SequenceMachineLib.roundAway ((Nat.choose n 5 : ℚ) ^ (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))).toNat

end

end A046167.P9087792907750597893

/-! ## A046167.P16347056450148487150

`floor((A098852(3*n+2)+1)²/4)`
-/

namespace A046167.P16347056450148487150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A098852 (3 * n + 2) + 1) ^ 2 : ℚ) / 4⌋

end

end A046167.P16347056450148487150

/-!
# A046168: Number of minimal covers on n objects with 8 members.

The programs for A046168, there is no canonical definition to state claims against.
-/

/-! ## A046168.P16588882610456737229

`A324218(A373913(n))`
-/

namespace A046168.P16588882610456737229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324218 (A373913 n).toNat

end

end A046168.P16588882610456737229

/-! ## A046168.P11494378576971082856

`A240867(A174642(n+1))`
-/

namespace A046168.P11494378576971082856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240867 (A174642 (n + 1)).toNat

end

end A046168.P11494378576971082856

/-! ## A046168.P4098410079017851808

`A324218(A212387(n+1))`
-/

namespace A046168.P4098410079017851808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324218 (A212387 (n + 1)).toNat

end

end A046168.P4098410079017851808

/-! ## A046168.P6199374659097065314

`A324218(A306859(n+1))`
-/

namespace A046168.P6199374659097065314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324218 (A306859 (n + 1)).toNat

end

end A046168.P6199374659097065314

/-! ## A046168.P930716885164549763

`A324218(2*A324230(n+1))`
-/

namespace A046168.P930716885164549763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324218 (2 * A324230 (n + 1)).toNat

end

end A046168.P930716885164549763

/-!
# A046169: Number of minimal covers on n objects with 9 members.

The programs for A046169, there is no canonical definition to state claims against.
-/

/-! ## A046169.P17862046679196358897

`A283042(A352095(n)!)`
-/

namespace A046169.P17862046679196358897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283042 (Nat.factorial (A352095 n).toNat)

end

end A046169.P17862046679196358897

/-! ## A046169.P17247751464669711114

`A238627(6^A326452(n))`
-/

namespace A046169.P17247751464669711114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238627 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A326452 n : ℤ))).toNat

end

end A046169.P17247751464669711114

/-! ## A046169.P13821546824895282139

`A129165(A026812(n)!²)`
-/

namespace A046169.P13821546824895282139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (Nat.factorial (A026812 n).toNat ^ 2)

end

end A046169.P13821546824895282139

/-! ## A046169.P9416539812792304359

`A129165(A107368(n)!²)`
-/

namespace A046169.P9416539812792304359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (Nat.factorial (A107368 n).toNat ^ 2)

end

end A046169.P9416539812792304359

/-! ## A046169.P4806037286386285517

`A129165(A309897(n)!²)`
-/

namespace A046169.P4806037286386285517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129165 (Nat.factorial (A309897 n).toNat ^ 2)

end

end A046169.P4806037286386285517

/-!
# A046170: Number of self-avoiding walks on a 2-D lattice of length n which start at the origin, take first step in the {+1,0} direction and whose vertices are always nonnegative in x and y.

The programs for A046170, there is no canonical definition to state claims against.
-/

/-! ## A046170.P12878719469827364899

`A038373(n+1)/2`
-/

namespace A046170.P12878719469827364899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038373 (n + 1) : ℚ) / 2

end

end A046170.P12878719469827364899

/-! ## A046170.P4112038684265191804

`Δ[∑[A038373(n)]/2]`
-/

namespace A046170.P4112038684265191804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046170.P4112038684265191804

/-! ## A046170.P15460074557745345539

`record[ratio[A038373(A158416(n))]]`
-/

namespace A046170.P15460074557745345539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046170.P15460074557745345539

/-! ## A046170.P13054333403956677458

`record[ratio[A038373(A158821(n))]]`
-/

namespace A046170.P13054333403956677458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038373 (A158821 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046170.P13054333403956677458

/-! ## A046170.P7402361129554510534

`record[A038373(A123108(n))/2]`
-/

namespace A046170.P7402361129554510534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038373 (A123108 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046170.P7402361129554510534

/-!
# A046171: Number of inequivalent self-avoiding walks of length n on a 2-D lattice which start at origin, take first step in {+1,0} direction and if any steps are vertical, a step up is taken before a step down.

The programs for A046171, there is no canonical definition to state claims against.
-/

/-! ## A046171.P1631273132351435913

`(A001411(n+1)+4)/8`
-/

namespace A046171.P1631273132351435913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (n + 1) + 4 : ℚ) / 8

end

end A046171.P1631273132351435913

/-! ## A046171.P13803627801037644083

`ceil(A046661(n+1)/2)`
-/

namespace A046171.P13803627801037644083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046661 (n + 1) : ℚ) / 2⌉

end

end A046171.P13803627801037644083

/-! ## A046171.P12936978728311176803

`ceil(A002900(n+1)/4)`
-/

namespace A046171.P12936978728311176803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002900 (n + 1) : ℚ) / 4⌉

end

end A046171.P12936978728311176803

/-! ## A046171.P16424668002553569458

`ceil(A001411(n+1)/8)`
-/

namespace A046171.P16424668002553569458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001411 (n + 1) : ℚ) / 8⌉

end

end A046171.P16424668002553569458

/-! ## A046171.P14620440970796556254

`ceil(Δ[∑[A001411(n)]/4]/2)`
-/

namespace A046171.P14620440970796556254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) / 2⌉

end

end A046171.P14620440970796556254

/-!
# A046172: Indices of pentagonal numbers (A000326) that are also squares (A000290).

The programs for A046172, the canonical program `A046172.P7241373663882644220` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046172 has offset 1).

The definition of A046172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046172.P7241373663882644220

`98*a(n-1)-a(n-2)-16` with `a(0)=1, a(1)=81`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046172

/-- `98*a(n-1)-a(n-2)-16` -/
def P7241373663882644220.Spec : Prop :=
  ∀ n, P7241373663882644220.a n = A046172 (n + 1)

theorem P7241373663882644220.correct : P7241373663882644220.Spec := by
  intro n
  simp only [A046172, Nat.add_sub_cancel]

end A046172

/-! ## A046172.P9540265735925710755

`A072256(n+1)²`
-/

namespace A046172.P9540265735925710755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1) ^ 2

end

end A046172.P9540265735925710755

namespace A046172

/-- `A072256(n+1)²` -/
def P9540265735925710755.Spec : Prop :=
  ∀ n, P9540265735925710755.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P11154599831432313974

`ceil(1/12*(sqrt(3)+sqrt(2))^(4*(n+1)-2))`
-/

namespace A046172.P11154599831432313974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 12 : ℝ) * (Real.sqrt (3 : ℝ) + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ)⌉

end

end A046172.P11154599831432313974

namespace A046172

/-- `ceil(1/12*(sqrt(3)+sqrt(2))^(4*(n+1)-2))` -/
def P11154599831432313974.Spec : Prop :=
  ∀ n, P11154599831432313974.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P17269512994773522946

`A138288(n)²`
-/

namespace A046172.P17269512994773522946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n ^ 2

end

end A046172.P17269512994773522946

namespace A046172

/-- `A138288(n)²` -/
def P17269512994773522946.Spec : Prop :=
  ∀ n, P17269512994773522946.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P18417993604993798038

`Δ[A004189(n)]²`
-/

namespace A046172.P18417993604993798038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A046172.P18417993604993798038

namespace A046172

/-- `Δ[A004189(n)]²` -/
def P18417993604993798038.Spec : Prop :=
  ∀ n, P18417993604993798038.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P10893896299704896784

`A098308(Δ[n²])`
-/

namespace A046172.P10893896299704896784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098308 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046172.P10893896299704896784

namespace A046172

/-- `A098308(Δ[n²])` -/
def P10893896299704896784.Spec : Prop :=
  ∀ n, P10893896299704896784.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P7236940504601721785

`A041007(2*n)²`
-/

namespace A046172.P7236940504601721785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n) ^ 2

end

end A046172.P7236940504601721785

namespace A046172

/-- `A041007(2*n)²` -/
def P7236940504601721785.Spec : Prop :=
  ∀ n, P7236940504601721785.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P14316184008367648053

`A041039(2*n)²`
-/

namespace A046172.P14316184008367648053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (2 * n) ^ 2

end

end A046172.P14316184008367648053

namespace A046172

/-- `A041039(2*n)²` -/
def P14316184008367648053.Spec : Prop :=
  ∀ n, P14316184008367648053.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P8645679506534407412

`A142239(2*n)²`
-/

namespace A046172.P8645679506534407412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (2 * n) ^ 2

end

end A046172.P8645679506534407412

namespace A046172

/-- `A142239(2*n)²` -/
def P8645679506534407412.Spec : Prop :=
  ∀ n, P8645679506534407412.a n = A046172 (n + 1)

end A046172

/-! ## A046172.P13458211331873231491

`A080872(Δ[n²])²`
-/

namespace A046172.P13458211331873231491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A046172.P13458211331873231491

namespace A046172

/-- `A080872(Δ[n²])²` -/
def P13458211331873231491.Spec : Prop :=
  ∀ n, P13458211331873231491.a n = A046172 (n + 1)

end A046172

/-!
# A046173: Indices of square numbers that are also pentagonal.

The programs for A046173, the canonical program `A046173.P13401993268950129491` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046173 has offset 1).

The definition of A046173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046173.P13401993268950129491

`98*a(n-1)-a(n-2)` with `a(0)=1, a(1)=99`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046173

/-- `98*a(n-1)-a(n-2)` -/
def P13401993268950129491.Spec : Prop :=
  ∀ n, P13401993268950129491.a n = A046173 (n + 1)

theorem P13401993268950129491.correct : P13401993268950129491.Spec := by
  intro n
  simp only [A046173, Nat.add_sub_cancel]

end A046173

/-! ## A046173.P8175155610472021833

`A138288(n)*A054320(n)`
-/

namespace A046173.P8175155610472021833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n * A054320 n

end

end A046173.P8175155610472021833

namespace A046173

/-- `A138288(n)*A054320(n)` -/
def P8175155610472021833.Spec : Prop :=
  ∀ n, P8175155610472021833.a n = A046173 (n + 1)

end A046173

/-! ## A046173.P2054196035675575563

`Δ[A108741(n)]`
-/

namespace A046173.P2054196035675575563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046173.P2054196035675575563

namespace A046173

/-- `Δ[A108741(n)]` -/
def P2054196035675575563.Spec : Prop :=
  ∀ n, P2054196035675575563.a n = A046173 (n + 1)

end A046173

/-! ## A046173.P10279865636026508873

`A004189(Δ[n²])`
-/

namespace A046173.P10279865636026508873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046173.P10279865636026508873

namespace A046173

/-- `A004189(Δ[n²])` -/
def P10279865636026508873.Spec : Prop :=
  ∀ n, P10279865636026508873.a n = A046173 (n + 1)

end A046173

/-! ## A046173.P2282174125250618691

`record[A004189(xor(1, n))]`
-/

namespace A046173.P2282174125250618691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046173.P2282174125250618691

namespace A046173

/-- `record[A004189(xor(1, n))]` -/
def P2282174125250618691.Spec : Prop :=
  ∀ n, P2282174125250618691.a n = A046173 (n + 1)

end A046173

/-! ## A046173.P3786753055902411520

`A251914(n+1)+1`
-/

namespace A046173.P3786753055902411520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251914 (n + 1) + 1

end

end A046173.P3786753055902411520

namespace A046173

/-- `A251914(n+1)+1` -/
def P3786753055902411520.Spec : Prop :=
  ∀ n, P3786753055902411520.a n = A046173 (n + 1)

theorem P3786753055902411520.correct : P3786753055902411520.Spec := by
  intro n
  simp only [A046173, Nat.add_sub_cancel, A046173.P3786753055902411520.a, A046173.P13401993268950129491.a, A251914, A251914.P6618389004869711842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A046173

/-! ## A046173.P6813766521064279603

`A041173(4*n+1)`
-/

namespace A046173.P6813766521064279603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041173 (4 * n + 1)

end

end A046173.P6813766521064279603

namespace A046173

/-- `A041173(4*n+1)` -/
def P6813766521064279603.Spec : Prop :=
  ∀ n, P6813766521064279603.a n = A046173 (n + 1)

end A046173

/-! ## A046173.P5930313203753163291

`A001078(Δ[n²])/2`
-/

namespace A046173.P5930313203753163291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A046173.P5930313203753163291

namespace A046173

/-- `A001078(Δ[n²])/2` -/
def P5930313203753163291.Spec : Prop :=
  ∀ n, P5930313203753163291.a n = (A046173 (n + 1) : ℚ)

end A046173

/-! ## A046173.P15483241873993374577

`∑[A087799(2*n)]-1`
-/

namespace A046173.P15483241873993374577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087799 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046173.P15483241873993374577

namespace A046173

/-- `∑[A087799(2*n)]-1` -/
def P15483241873993374577.Spec : Prop :=
  ∀ n, P15483241873993374577.a n = A046173 (n + 1)

end A046173

/-! ## A046173.P1182602788895595494

`2*A248205(n+1)-1`
-/

namespace A046173.P1182602788895595494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248205 (n + 1) - 1

end

end A046173.P1182602788895595494

namespace A046173

/-- `2*A248205(n+1)-1` -/
def P1182602788895595494.Spec : Prop :=
  ∀ n, P1182602788895595494.a n = A046173 (n + 1)

end A046173

/-!
# A046174: Indices of pentagonal numbers which are also triangular.

The programs for A046174, the canonical program `A046174.P17970074796578722677` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046174 has offset 0).

The definition of A046174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046174.P17970074796578722677

`14*a(n-1)-a(n-2)-2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046174

/-- `14*a(n-1)-a(n-2)-2` -/
def P17970074796578722677.Spec : Prop :=
  ∀ n, P17970074796578722677.a n = A046174 n

theorem P17970074796578722677.correct : P17970074796578722677.Spec := by
  intro n
  simp only [A046174]

end A046174

/-! ## A046174.P15250187708604705808

`record[round(a(n-1)/(sqrt(3)-2))+1]` with `a(0)=0`
-/

namespace A046174.P15250187708604705808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046174.P15250187708604705808

namespace A046174

/-- `record[round(a(n-1)/(sqrt(3)-2))+1]` -/
def P15250187708604705808.Spec : Prop :=
  ∀ n, P15250187708604705808.a n = A046174 n

end A046174

/-! ## A046174.P5222501399984956206

`ceil(A046175(n)/sqrt(3))`
-/

namespace A046174.P5222501399984956206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046175 n : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A046174.P5222501399984956206

namespace A046174

/-- `ceil(A046175(n)/sqrt(3))` -/
def P5222501399984956206.Spec : Prop :=
  ∀ n, P5222501399984956206.a n = A046174 n

end A046174

/-! ## A046174.P399799714215260887

`A109437(comp[2*(n+1)])`
-/

namespace A046174.P399799714215260887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A046174.P399799714215260887

namespace A046174

/-- `A109437(comp[2*(n+1)])` -/
def P399799714215260887.Spec : Prop :=
  ∀ n, P399799714215260887.a n = A046174 n

end A046174

/-! ## A046174.P387972808205526670

`∑[A001835(comp[2*(n+1)])]-1`
-/

namespace A046174.P387972808205526670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046174.P387972808205526670

namespace A046174

/-- `∑[A001835(comp[2*(n+1)])]-1` -/
def P387972808205526670.Spec : Prop :=
  ∀ n, P387972808205526670.a n = A046174 n

end A046174

/-! ## A046174.P10648413494057896767

`A011944(n)-A098301(n)`
-/

namespace A046174.P10648413494057896767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n - A098301 n

end

end A046174.P10648413494057896767

namespace A046174

/-- `A011944(n)-A098301(n)` -/
def P10648413494057896767.Spec : Prop :=
  ∀ n, P10648413494057896767.a n = A046174 n

end A046174

/-! ## A046174.P17944173238858574985

`A001353(n)*A001835(n)`
-/

namespace A046174.P17944173238858574985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n * A001835 n

end

end A046174.P17944173238858574985

namespace A046174

/-- `A001353(n)*A001835(n)` -/
def P17944173238858574985.Spec : Prop :=
  ∀ n, P17944173238858574985.a n = A046174 n

end A046174

/-! ## A046174.P17882009519808041983

`A011944(n)-A001353(n)²`
-/

namespace A046174.P17882009519808041983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n - A001353 n ^ 2

end

end A046174.P17882009519808041983

namespace A046174

/-- `A011944(n)-A001353(n)²` -/
def P17882009519808041983.Spec : Prop :=
  ∀ n, P17882009519808041983.a n = A046174 n

end A046174

/-! ## A046174.P18050960690465276166

`A011944(n)-A106707(n)²`
-/

namespace A046174.P18050960690465276166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n - A106707 n ^ 2

end

end A046174.P18050960690465276166

namespace A046174

/-- `A011944(n)-A106707(n)²` -/
def P18050960690465276166.Spec : Prop :=
  ∀ n, P18050960690465276166.a n = A046174 n

end A046174

/-! ## A046174.P4056018848199406332

`A001835(n)*A002530(2*n)`
-/

namespace A046174.P4056018848199406332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n * A002530 (2 * n)

end

end A046174.P4056018848199406332

namespace A046174

/-- `A001835(n)*A002530(2*n)` -/
def P4056018848199406332.Spec : Prop :=
  ∀ n, P4056018848199406332.a n = A046174 n

end A046174

/-!
# A046175: Indices of triangular numbers which are also pentagonal.

The programs for A046175, the canonical program `A046175.P9715256042690742745` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046175 has offset 0).

The definition of A046175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046175.P9715256042690742745

`14*a(n-1)-a(n-2)+6` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046175

/-- `14*a(n-1)-a(n-2)+6` -/
def P9715256042690742745.Spec : Prop :=
  ∀ n, P9715256042690742745.a n = A046175 n

theorem P9715256042690742745.correct : P9715256042690742745.Spec := by
  intro n
  simp only [A046175]

end A046175

/-! ## A046175.P5567230154049901217

`∑[ogf((x+5x^2)/(1-14x+x^2))]`
-/

namespace A046175.P5567230154049901217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046175.P5567230154049901217

namespace A046175

/-- `∑[ogf((x+5x^2)/(1-14x+x^2))]` -/
def P5567230154049901217.Spec : Prop :=
  ∀ n, P5567230154049901217.a n = A046175 n

end A046175

/-! ## A046175.P6783288779334527508

`14*a(n-1)-(a(n-2)-6)` with `a(0)=0, a(1)=1`
-/

namespace A046175.P6783288779334527508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  14 * a (n - 1) - (a (n - 2) - 6)

end

end A046175.P6783288779334527508

namespace A046175

/-- `14*a(n-1)-(a(n-2)-6)` -/
def P6783288779334527508.Spec : Prop :=
  ∀ n, P6783288779334527508.a n = A046175 n

theorem P6783288779334527508.correct : P6783288779334527508.Spec := by
  intro n
  simp only [A046175, Nat.add_sub_cancel, A046175.P6783288779334527508.a, A046175.P9715256042690742745.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A046175

/-! ## A046175.P8941045716111831702

`record[round(a(n-1)/(sqrt(3)-2))-2]` with `a(0)=0, a(1)=1`
-/

namespace A046175.P8941045716111831702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046175.P8941045716111831702

namespace A046175

/-- `record[round(a(n-1)/(sqrt(3)-2))-2]` -/
def P8941045716111831702.Spec : Prop :=
  ∀ n, P8941045716111831702.a n = A046175 n

end A046175

/-! ## A046175.P6258410162795134488

`A101879(2*n)-1`
-/

namespace A046175.P6258410162795134488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (2 * n) - 1

end

end A046175.P6258410162795134488

namespace A046175

/-- `A101879(2*n)-1` -/
def P6258410162795134488.Spec : Prop :=
  ∀ n, P6258410162795134488.a n = A046175 n

end A046175

/-! ## A046175.P11704535263153922694

`A107388(Δ[n²])-1`
-/

namespace A046175.P11704535263153922694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107388 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A046175.P11704535263153922694

namespace A046175

/-- `A107388(Δ[n²])-1` -/
def P11704535263153922694.Spec : Prop :=
  ∀ n, P11704535263153922694.a n = A046175 n

end A046175

/-! ## A046175.P1436062631991324160

`floor(A001835(2*n)/2)`
-/

namespace A046175.P1436062631991324160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001835 (2 * n) : ℚ) / 2⌋

end

end A046175.P1436062631991324160

namespace A046175

/-- `floor(A001835(2*n)/2)` -/
def P1436062631991324160.Spec : Prop :=
  ∀ n, P1436062631991324160.a n = A046175 n

end A046175

/-! ## A046175.P15843976744212067012

`record[∑[A108413(n+1)]-1]`
-/

namespace A046175.P15843976744212067012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046175.P15843976744212067012

namespace A046175

/-- `record[∑[A108413(n+1)]-1]` -/
def P15843976744212067012.Spec : Prop :=
  ∀ n, P15843976744212067012.a n = A046175 n

end A046175

/-! ## A046175.P12920685145925221256

`A061278(round(sqrt(n²+1))+n-1)`
-/

namespace A046175.P12920685145925221256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + ((n : ℤ) - 1)).toNat

end

end A046175.P12920685145925221256

namespace A046175

/-- `A061278(round(sqrt(n²+1))+n-1)` -/
def P12920685145925221256.Spec : Prop :=
  ∀ n, P12920685145925221256.a n = A046175 n

end A046175

/-! ## A046175.P10235894095477354180

`A101265(A004277(n))-1`
-/

namespace A046175.P10235894095477354180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (A004277 n).toNat - 1

end

end A046175.P10235894095477354180

namespace A046175

/-- `A101265(A004277(n))-1` -/
def P10235894095477354180.Spec : Prop :=
  ∀ n, P10235894095477354180.a n = A046175 n

end A046175

/-!
# A046176: Indices of square numbers that are also hexagonal.

The programs for A046176, the canonical program `A046176.P17036293458756997446` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046176 has offset 1).

The definition of A046176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046176.P17036293458756997446

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046176

/-- `34*a(n-1)-a(n-2)` -/
def P17036293458756997446.Spec : Prop :=
  ∀ n, P17036293458756997446.a n = A046176 (n + 1)

theorem P17036293458756997446.correct : P17036293458756997446.Spec := by
  intro n
  simp only [A046176, Nat.add_sub_cancel]

end A046176

/-! ## A046176.P15908193179976053499

`A001109(2*n+1)`
-/

namespace A046176.P15908193179976053499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (2 * n + 1)

end

end A046176.P15908193179976053499

namespace A046176

/-- `A001109(2*n+1)` -/
def P15908193179976053499.Spec : Prop :=
  ∀ n, P15908193179976053499.a n = A046176 (n + 1)

end A046176

/-! ## A046176.P8694759883559597675

`A000129(4*(n+1)-2)/2`
-/

namespace A046176.P8694759883559597675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (4 * (n + 1) - 2) : ℚ) / 2

end

end A046176.P8694759883559597675

namespace A046176

/-- `A000129(4*(n+1)-2)/2` -/
def P8694759883559597675.Spec : Prop :=
  ∀ n, P8694759883559597675.a n = (A046176 (n + 1) : ℚ)

end A046176

/-! ## A046176.P5370084181860866021

`A001653(n+1)*A002315(n)`
-/

namespace A046176.P5370084181860866021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) * A002315 n

end

end A046176.P5370084181860866021

namespace A046176

/-- `A001653(n+1)*A002315(n)` -/
def P5370084181860866021.Spec : Prop :=
  ∀ n, P5370084181860866021.a n = A046176 (n + 1)

end A046176

/-! ## A046176.P1158660021047409032

`sqrt(2)/8*((1+sqrt(2))^(4*(n+1)-2)-(1-sqrt(2))^(4*(n+1)-2))`
-/

namespace A046176.P1158660021047409032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) / 8 * ((1 + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ) - (1 - Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ))

end

end A046176.P1158660021047409032

namespace A046176

/-- `sqrt(2)/8*((1+sqrt(2))^(4*(n+1)-2)-(1-sqrt(2))^(4*(n+1)-2))` -/
def P1158660021047409032.Spec : Prop :=
  ∀ n, P1158660021047409032.a n = (A046176 (n + 1) : ℝ)

end A046176

/-! ## A046176.P11994240551811455236

`record[-round(a(n-1)/(3-sqrt(8)))]` with `a(0)=1`
-/

namespace A046176.P11994240551811455236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046176.P11994240551811455236

namespace A046176

/-- `record[-round(a(n-1)/(3-sqrt(8)))]` -/
def P11994240551811455236.Spec : Prop :=
  ∀ n, P11994240551811455236.a n = A046176 (n + 1)

end A046176

/-! ## A046176.P15239436825820388069

`Δ[A001110(n)]`
-/

namespace A046176.P15239436825820388069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046176.P15239436825820388069

namespace A046176

/-- `Δ[A001110(n)]` -/
def P15239436825820388069.Spec : Prop :=
  ∀ n, P15239436825820388069.a n = A046176 (n + 1)

end A046176

/-! ## A046176.P18049905871989865482

`Δ[A001109(n)²]`
-/

namespace A046176.P18049905871989865482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046176.P18049905871989865482

namespace A046176

/-- `Δ[A001109(n)²]` -/
def P18049905871989865482.Spec : Prop :=
  ∀ n, P18049905871989865482.a n = A046176 (n + 1)

end A046176

/-! ## A046176.P8759000075778898538

`A144534(Δ[n²])`
-/

namespace A046176.P8759000075778898538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046176.P8759000075778898538

namespace A046176

/-- `A144534(Δ[n²])` -/
def P8759000075778898538.Spec : Prop :=
  ∀ n, P8759000075778898538.a n = A046176 (n + 1)

end A046176

/-! ## A046176.P11881919125474854444

`∑[A099425(4*n)]`
-/

namespace A046176.P11881919125474854444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046176.P11881919125474854444

namespace A046176

/-- `∑[A099425(4*n)]` -/
def P11881919125474854444.Spec : Prop :=
  ∀ n, P11881919125474854444.a n = A046176 (n + 1)

end A046176

/-!
# A046177: Squares (A000290) which are also hexagonal numbers (A000384).

The programs for A046177, the canonical program `A046177.P8767503573281854959` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046177 has offset 1).

The definition of A046177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046177.P8767503573281854959

`A001110(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046177

/-- `A001110(2*(n+1)-1)` -/
def P8767503573281854959.Spec : Prop :=
  ∀ n, P8767503573281854959.a n = A046177 (n + 1)

theorem P8767503573281854959.correct : P8767503573281854959.Spec := by
  intro n
  simp only [A046177, Nat.add_sub_cancel]

end A046177

/-! ## A046177.P9389115950875273960

`Δ[A001110(n)]²`
-/

namespace A046177.P9389115950875273960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A046177.P9389115950875273960

namespace A046177

/-- `Δ[A001110(n)]²` -/
def P9389115950875273960.Spec : Prop :=
  ∀ n, P9389115950875273960.a n = A046177 (n + 1)

end A046177

/-! ## A046177.P5262729679782446661

`A046176(n+1)²`
-/

namespace A046177.P5262729679782446661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046176 (n + 1) ^ 2

end

end A046177.P5262729679782446661

namespace A046177

/-- `A046176(n+1)²` -/
def P5262729679782446661.Spec : Prop :=
  ∀ n, P5262729679782446661.a n = A046177 (n + 1)

end A046177

/-! ## A046177.P12331868921838943837

`(A350986(n)/3)²`
-/

namespace A046177.P12331868921838943837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A350986 n : ℚ) / 3) ^ 2

end

end A046177.P12331868921838943837

namespace A046177

/-- `(A350986(n)/3)²` -/
def P12331868921838943837.Spec : Prop :=
  ∀ n, P12331868921838943837.a n = (A046177 (n + 1) : ℚ)

end A046177

/-! ## A046177.P4748415701123835084

`(A280761(n)/8)²`
-/

namespace A046177.P4748415701123835084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A280761 n : ℚ) / 8) ^ 2

end

end A046177.P4748415701123835084

namespace A046177

/-- `(A280761(n)/8)²` -/
def P4748415701123835084.Spec : Prop :=
  ∀ n, P4748415701123835084.a n = (A046177 (n + 1) : ℚ)

end A046177

/-!
# A046178: Indices of pentagonal numbers that are also hexagonal.

The programs for A046178, the canonical program `A046178.P10846771629522541698` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046178 has offset 1).

The definition of A046178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046178.P10846771629522541698

`194*a(n-1)-a(n-2)-32` with `a(0)=1, a(1)=165`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046178

/-- `194*a(n-1)-a(n-2)-32` -/
def P10846771629522541698.Spec : Prop :=
  ∀ n, P10846771629522541698.a n = A046178 (n + 1)

theorem P10846771629522541698.correct : P10846771629522541698.Spec := by
  intro n
  simp only [A046178, Nat.add_sub_cancel]

end A046178

/-! ## A046178.P3156709771059504081

`ceil(1/12*(sqrt(3)-1)*(2+sqrt(3))^(4*(n+1)-2))`
-/

namespace A046178.P3156709771059504081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 12 : ℝ) * (Real.sqrt (3 : ℝ) - 1) * (2 + Real.sqrt (3 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ)⌉

end

end A046178.P3156709771059504081

namespace A046178

/-- `ceil(1/12*(sqrt(3)-1)*(2+sqrt(3))^(4*(n+1)-2))` -/
def P3156709771059504081.Spec : Prop :=
  ∀ n, P3156709771059504081.a n = A046178 (n + 1)

end A046178

/-! ## A046178.P7801502527618247462

`A046174(Δ[n²])`
-/

namespace A046178.P7801502527618247462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046178.P7801502527618247462

namespace A046178

/-- `A046174(Δ[n²])` -/
def P7801502527618247462.Spec : Prop :=
  ∀ n, P7801502527618247462.a n = A046178 (n + 1)

end A046178

/-! ## A046178.P2371656931804301743

`A109437(4*n+1)`
-/

namespace A046178.P2371656931804301743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (4 * n + 1)

end

end A046178.P2371656931804301743

namespace A046178

/-- `A109437(4*n+1)` -/
def P2371656931804301743.Spec : Prop :=
  ∀ n, P2371656931804301743.a n = A046178 (n + 1)

end A046178

/-! ## A046178.P13063780511793392924

`A081065(2*n+1)/2`
-/

namespace A046178.P13063780511793392924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081065 (2 * n + 1) : ℚ) / 2

end

end A046178.P13063780511793392924

namespace A046178

/-- `A081065(2*n+1)/2` -/
def P13063780511793392924.Spec : Prop :=
  ∀ n, P13063780511793392924.a n = (A046178 (n + 1) : ℚ)

end A046178

/-!
# A046179: Indices of hexagonal numbers that are also pentagonal.

The programs for A046179, the canonical program `A046179.P198350054420406955` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046179 has offset 1).

The definition of A046179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046179.P198350054420406955

`194*a(n-1)-a(n-2)-48` with `a(0)=1, a(1)=143`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046179

/-- `194*a(n-1)-a(n-2)-48` -/
def P198350054420406955.Spec : Prop :=
  ∀ n, P198350054420406955.a n = A046179 (n + 1)

theorem P198350054420406955.correct : P198350054420406955.Spec := by
  intro n
  simp only [A046179, Nat.add_sub_cancel]

end A046179

/-! ## A046179.P16825528352717752251

`ceil(1/24*sqrt(3)*(sqrt(3)-1)*(2+sqrt(3))^(4*(n+1)-2))`
-/

namespace A046179.P16825528352717752251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 24 : ℝ) * Real.sqrt (3 : ℝ) * (Real.sqrt (3 : ℝ) - 1) * (2 + Real.sqrt (3 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ)⌉

end

end A046179.P16825528352717752251

namespace A046179

/-- `ceil(1/24*sqrt(3)*(sqrt(3)-1)*(2+sqrt(3))^(4*(n+1)-2))` -/
def P16825528352717752251.Spec : Prop :=
  ∀ n, P16825528352717752251.a n = A046179 (n + 1)

end A046179

/-! ## A046179.P14484104690682331840

`A276915(2*(n+1)-1)`
-/

namespace A046179.P14484104690682331840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276915 (2 * (n + 1) - 1)

end

end A046179.P14484104690682331840

namespace A046179

/-- `A276915(2*(n+1)-1)` -/
def P14484104690682331840.Spec : Prop :=
  ∀ n, P14484104690682331840.a n = A046179 (n + 1)

end A046179

/-! ## A046179.P11068258503097038974

`A101265(4*n+2)/2`
-/

namespace A046179.P11068258503097038974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101265 (4 * n + 2) : ℚ) / 2

end

end A046179.P11068258503097038974

namespace A046179

/-- `A101265(4*n+2)/2` -/
def P11068258503097038974.Spec : Prop :=
  ∀ n, P11068258503097038974.a n = (A046179 (n + 1) : ℚ)

end A046179

/-! ## A046179.P423176065978480590

`A101879(4*n+2)/2`
-/

namespace A046179.P423176065978480590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101879 (4 * n + 2) : ℚ) / 2

end

end A046179.P423176065978480590

namespace A046179

/-- `A101879(4*n+2)/2` -/
def P423176065978480590.Spec : Prop :=
  ∀ n, P423176065978480590.a n = (A046179 (n + 1) : ℚ)

end A046179

/-!
# A046180: 

The programs for A046180, there is no canonical definition to state claims against.
-/

/-! ## A046180.P13853325071869509656

`A014979(2*(n+1))`
-/

namespace A046180.P13853325071869509656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014979 (2 * (n + 1))

end

end A046180.P13853325071869509656

/-! ## A046180.P16432478247409414262

`A076139(3*n+1+n)`
-/

namespace A046180.P16432478247409414262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076139 (3 * n + 1 + n)

end

end A046180.P16432478247409414262

/-! ## A046180.P3285157084018315172

`record[A014979(n+1)^(n%2)]`
-/

namespace A046180.P3285157084018315172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014979 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046180.P3285157084018315172

/-! ## A046180.P9938954048395594527

`record[A014979(n+2)/(-1)^n]`
-/

namespace A046180.P9938954048395594527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014979 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046180.P9938954048395594527

/-! ## A046180.P3262009862832352783

`A045899(A016825(n))/8`
-/

namespace A046180.P3262009862832352783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045899 (A016825 n).toNat : ℚ) / 8

end

end A046180.P3262009862832352783

/-!
# A046181: Indices of octagonal numbers which are also triangular.

The programs for A046181, the canonical program `A046181.P15454951118730620738` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046181 has offset 1).

The definition of A046181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046181.P15454951118730620738

`98*a(n-2)-a(n-4)-32` with `a(0)=1, a(1)=3, a(2)=63, a(3)=261`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046181

/-- `98*a(n-2)-a(n-4)-32` -/
def P15454951118730620738.Spec : Prop :=
  ∀ n, P15454951118730620738.a n = A046181 (n + 1)

theorem P15454951118730620738.correct : P15454951118730620738.Spec := by
  intro n
  simp only [A046181, Nat.add_sub_cancel]

end A046181

/-! ## A046181.P10571302531038061758

`A072256(A008619(n))*A080806(n+1)`
-/

namespace A046181.P10571302531038061758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (A008619 n).toNat * A080806 (n + 1)

end

end A046181.P10571302531038061758

namespace A046181

/-- `A072256(A008619(n))*A080806(n+1)` -/
def P10571302531038061758.Spec : Prop :=
  ∀ n, P10571302531038061758.a n = A046181 (n + 1)

end A046181

/-! ## A046181.P13785120700079043024

`A041007(A052928(n))*A080806(n+1)`
-/

namespace A046181.P13785120700079043024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (A052928 n).toNat * A080806 (n + 1)

end

end A046181.P13785120700079043024

namespace A046181

/-- `A041007(A052928(n))*A080806(n+1)` -/
def P13785120700079043024.Spec : Prop :=
  ∀ n, P13785120700079043024.a n = A046181 (n + 1)

end A046181

/-! ## A046181.P1048527834283299102

`A080806(n+1)*A138288(A004526(n))`
-/

namespace A046181.P1048527834283299102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) * A138288 (A004526 n).toNat

end

end A046181.P1048527834283299102

namespace A046181

/-- `A080806(n+1)*A138288(A004526(n))` -/
def P1048527834283299102.Spec : Prop :=
  ∀ n, P1048527834283299102.a n = A046181 (n + 1)

end A046181

/-! ## A046181.P3826575916183100980

`A080806(n+1)*A080872(A109613(n))`
-/

namespace A046181.P3826575916183100980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1) * A080872 (A109613 n).toNat

end

end A046181.P3826575916183100980

namespace A046181

/-- `A080806(n+1)*A080872(A109613(n))` -/
def P3826575916183100980.Spec : Prop :=
  ∀ n, P3826575916183100980.a n = A046181 (n + 1)

end A046181

/-! ## A046181.P8902970182842063622

`A072256(A008624(2*n))*A080806(n+1)`
-/

namespace A046181.P8902970182842063622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (A008624 (2 * n)).toNat * A080806 (n + 1)

end

end A046181.P8902970182842063622

namespace A046181

/-- `A072256(A008624(2*n))*A080806(n+1)` -/
def P8902970182842063622.Spec : Prop :=
  ∀ n, P8902970182842063622.a n = A046181 (n + 1)

end A046181

/-! ## A046181.P563065025680754547

`ceil(A129445(n-n%2+n+2)/3)`
-/

namespace A046181.P563065025680754547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129445 ((n : ℤ) - ((n % 2 : ℕ) : ℤ) + (n : ℤ) + 2).toNat : ℚ) / 3⌉

end

end A046181.P563065025680754547

namespace A046181

/-- `ceil(A129445(n-n%2+n+2)/3)` -/
def P563065025680754547.Spec : Prop :=
  ∀ n, P563065025680754547.a n = A046181 (n + 1)

end A046181

/-!
# A046182: Indices of triangular numbers which are also octagonal.

The programs for A046182, the canonical program `A046182.P14059658831483792236` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046182 has offset 1).

The definition of A046182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046182.P14059658831483792236

`98*a(n-2)-a(n-4)+48` with `a(0)=1, a(1)=6, a(2)=153, a(3)=638`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046182

/-- `98*a(n-2)-a(n-4)+48` -/
def P14059658831483792236.Spec : Prop :=
  ∀ n, P14059658831483792236.a n = A046182 (n + 1)

theorem P14059658831483792236.correct : P14059658831483792236.Spec := by
  intro n
  simp only [A046182, Nat.add_sub_cancel]

end A046182

/-! ## A046182.P17238708559426239950

`A233450(record[or(2, n)])`
-/

namespace A046182.P17238708559426239950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A046182.P17238708559426239950

namespace A046182

/-- `A233450(record[or(2, n)])` -/
def P17238708559426239950.Spec : Prop :=
  ∀ n, P17238708559426239950.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P11581034804066971924

`A233450(A042964(n+1))`
-/

namespace A046182.P11581034804066971924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A042964 (n + 1)).toNat

end

end A046182.P11581034804066971924

namespace A046182

/-- `A233450(A042964(n+1))` -/
def P11581034804066971924.Spec : Prop :=
  ∀ n, P11581034804066971924.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P1714249702025706975

`A233450(A053438(n+1))`
-/

namespace A046182.P1714249702025706975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A053438 (n + 1)).toNat

end

end A046182.P1714249702025706975

namespace A046182

/-- `A233450(A053438(n+1))` -/
def P1714249702025706975.Spec : Prop :=
  ∀ n, P1714249702025706975.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P16494579074118131925

`A233450(or(2, A014601(n)))`
-/

namespace A046182.P16494579074118131925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (Int.lor 2 (A014601 n)).toNat

end

end A046182.P16494579074118131925

namespace A046182

/-- `A233450(or(2, A014601(n)))` -/
def P16494579074118131925.Spec : Prop :=
  ∀ n, P16494579074118131925.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P2191680694978144499

`A233450(A014601(n+1)-1)`
-/

namespace A046182.P2191680694978144499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A014601 (n + 1) - 1).toNat

end

end A046182.P2191680694978144499

namespace A046182

/-- `A233450(A014601(n+1)-1)` -/
def P2191680694978144499.Spec : Prop :=
  ∀ n, P2191680694978144499.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P9921792560674654799

`A233450(A338062(n+2)-2)`
-/

namespace A046182.P9921792560674654799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (A338062 (n + 2) - 2).toNat

end

end A046182.P9921792560674654799

namespace A046182

/-- `A233450(A338062(n+2)-2)` -/
def P9921792560674654799.Spec : Prop :=
  ∀ n, P9921792560674654799.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P12629753441780716620

`A054320(n)+∑[A146311(n)]-1`
-/

namespace A046182.P12629753441780716620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A046182.P12629753441780716620

namespace A046182

/-- `A054320(n)+∑[A146311(n)]-1` -/
def P12629753441780716620.Spec : Prop :=
  ∀ n, P12629753441780716620.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P17786460348863088022

`∑[A146311(n)+A087799(n)]-2`
-/

namespace A046182.P17786460348863088022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n + A087799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A046182.P17786460348863088022

namespace A046182

/-- `∑[A146311(n)+A087799(n)]-2` -/
def P17786460348863088022.Spec : Prop :=
  ∀ n, P17786460348863088022.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P12924206086868554951

`A001078(or(1, n))-∑[A146311(n)]`
-/

namespace A046182.P12924206086868554951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (Nat.lor 1 n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046182.P12924206086868554951

namespace A046182

/-- `A001078(or(1, n))-∑[A146311(n)]` -/
def P12924206086868554951.Spec : Prop :=
  ∀ n, P12924206086868554951.a n = A046182 (n + 1)

end A046182

/-! ## A046182.P12506585345845198880

`A129444(A042963(n+1)+2)-1`
-/

namespace A046182.P12506585345845198880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (A042963 (n + 1) + 2).toNat - 1

end

end A046182.P12506585345845198880

namespace A046182

/-- `A129444(A042963(n+1)+2)-1` -/
def P12506585345845198880.Spec : Prop :=
  ∀ n, P12506585345845198880.a n = A046182 (n + 1)

end A046182

/-!
# A046183: Octagonal triangular numbers.

The programs for A046183, the canonical program `A046183.P13519830496242250470` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046183 has offset 1).

The definition of A046183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046183.P13519830496242250470

`floor(1/96*(7-2*sqrt(6)*(-1)^(n+1))*(sqrt(3)+sqrt(2))^(4*(n+1)-2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046183

/-- `floor(1/96*(7-2*sqrt(6)*(-1)^(n+1))*(sqrt(3)+sqrt(2))^(4*(n+1)-2))` -/
def P13519830496242250470.Spec : Prop :=
  ∀ n, P13519830496242250470.a n = A046183 (n + 1)

theorem P13519830496242250470.correct : P13519830496242250470.Spec := by
  intro n
  simp only [A046183, Nat.add_sub_cancel]

end A046183

/-! ## A046183.P10118793249749470794

`A245031(A042964(n+1))`
-/

namespace A046183.P10118793249749470794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (A042964 (n + 1)).toNat

end

end A046183.P10118793249749470794

namespace A046183

/-- `A245031(A042964(n+1))` -/
def P10118793249749470794.Spec : Prop :=
  ∀ n, P10118793249749470794.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P2635693639200854545

`A247247(A047235(n+1))`
-/

namespace A046183.P2635693639200854545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A047235 (n + 1)).toNat

end

end A046183.P2635693639200854545

namespace A046183

/-- `A247247(A047235(n+1))` -/
def P2635693639200854545.Spec : Prop :=
  ∀ n, P2635693639200854545.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P1291698060256073934

`A245031(A053438(n+1))`
-/

namespace A046183.P1291698060256073934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (A053438 (n + 1)).toNat

end

end A046183.P1291698060256073934

namespace A046183

/-- `A245031(A053438(n+1))` -/
def P1291698060256073934.Spec : Prop :=
  ∀ n, P1291698060256073934.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P3372694971317989573

`A247247(A328588(n+1))`
-/

namespace A046183.P3372694971317989573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A328588 (n + 1)).toNat

end

end A046183.P3372694971317989573

namespace A046183

/-- `A247247(A328588(n+1))` -/
def P3372694971317989573.Spec : Prop :=
  ∀ n, P3372694971317989573.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P48085359327194761

`A373081(A271508(n+1))`
-/

namespace A046183.P48085359327194761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373081 (A271508 (n + 1)).toNat

end

end A046183.P48085359327194761

namespace A046183

/-- `A373081(A271508(n+1))` -/
def P48085359327194761.Spec : Prop :=
  ∀ n, P48085359327194761.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P13724064930002681924

`A245031(or(2, A014601(n)))`
-/

namespace A046183.P13724064930002681924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (Int.lor 2 (A014601 n)).toNat

end

end A046183.P13724064930002681924

namespace A046183

/-- `A245031(or(2, A014601(n)))` -/
def P13724064930002681924.Spec : Prop :=
  ∀ n, P13724064930002681924.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P8154667419614526287

`A247247(A047241(n+1)+1)`
-/

namespace A046183.P8154667419614526287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A047241 (n + 1) + 1).toNat

end

end A046183.P8154667419614526287

namespace A046183

/-- `A247247(A047241(n+1)+1)` -/
def P8154667419614526287.Spec : Prop :=
  ∀ n, P8154667419614526287.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P6489731866823621878

`A245031(A014601(n+1)-1)`
-/

namespace A046183.P6489731866823621878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (A014601 (n + 1) - 1).toNat

end

end A046183.P6489731866823621878

namespace A046183

/-- `A245031(A014601(n+1)-1)` -/
def P6489731866823621878.Spec : Prop :=
  ∀ n, P6489731866823621878.a n = A046183 (n + 1)

end A046183

/-! ## A046183.P4183638139904401274

`A247247(2*A001651(n+1))`
-/

namespace A046183.P4183638139904401274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (2 * A001651 (n + 1)).toNat

end

end A046183.P4183638139904401274

namespace A046183

/-- `A247247(2*A001651(n+1))` -/
def P4183638139904401274.Spec : Prop :=
  ∀ n, P4183638139904401274.a n = A046183 (n + 1)

end A046183

/-!
# A046184: Indices of octagonal numbers which are also squares.

The programs for A046184, the canonical program `A046184.P5867501593009160593` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046184 has offset 1).

The definition of A046184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046184.P5867501593009160593

`14*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046184

/-- `14*a(n-1)-a(n-2)-4` -/
def P5867501593009160593.Spec : Prop :=
  ∀ n, P5867501593009160593.a n = A046184 (n + 1)

theorem P5867501593009160593.correct : P5867501593009160593.Spec := by
  intro n
  simp only [A046184, Nat.add_sub_cancel]

end A046184

/-! ## A046184.P2592525329953749968

`A006253(2*n)`
-/

namespace A046184.P2592525329953749968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (2 * n)

end

end A046184.P2592525329953749968

namespace A046184

/-- `A006253(2*n)` -/
def P2592525329953749968.Spec : Prop :=
  ∀ n, P2592525329953749968.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P1948519884046484772

`A001835(n+1)²`
-/

namespace A046184.P1948519884046484772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1) ^ 2

end

end A046184.P1948519884046484772

namespace A046184

/-- `A001835(n+1)²` -/
def P1948519884046484772.Spec : Prop :=
  ∀ n, P1948519884046484772.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P16367421966234034235

`ceil(1/6*(2+sqrt(3))^(2*(n+1)-1))`
-/

namespace A046184.P16367421966234034235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 6 : ℝ) * (2 + Real.sqrt (3 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)⌉

end

end A046184.P16367421966234034235

namespace A046184

/-- `ceil(1/6*(2+sqrt(3))^(2*(n+1)-1))` -/
def P16367421966234034235.Spec : Prop :=
  ∀ n, P16367421966234034235.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P16150603819460699902

`∑[ogf(8x/(1-14x+x^2))]+1`
-/

namespace A046184.P16150603819460699902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046184.P16150603819460699902

namespace A046184

/-- `∑[ogf(8x/(1-14x+x^2))]+1` -/
def P16150603819460699902.Spec : Prop :=
  ∀ n, P16150603819460699902.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P16493543848775974345

`or(1, ∑[ogf(8x/(1-14x+x^2))])`
-/

namespace A046184.P16493543848775974345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046184.P16493543848775974345

namespace A046184

/-- `or(1, ∑[ogf(8x/(1-14x+x^2))])` -/
def P16493543848775974345.Spec : Prop :=
  ∀ n, P16493543848775974345.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P11955362847987615502

`xor(1, ∑[ogf(8x/(1-14x+x^2))])`
-/

namespace A046184.P11955362847987615502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046184.P11955362847987615502

namespace A046184

/-- `xor(1, ∑[ogf(8x/(1-14x+x^2))])` -/
def P11955362847987615502.Spec : Prop :=
  ∀ n, P11955362847987615502.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P7968370465043588977

`floor((sqrt(3)+2)²*a(n-1))-4` with `a(0)=1`
-/

namespace A046184.P7968370465043588977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ - 4

end

end A046184.P7968370465043588977

namespace A046184

/-- `floor((sqrt(3)+2)²*a(n-1))-4` -/
def P7968370465043588977.Spec : Prop :=
  ∀ n, P7968370465043588977.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P10933806674260934160

`Δ[ceil((sqrt(3)+2)*a(n-1))]²` with `a(0)=0, a(1)=1`
-/

namespace A046184.P10933806674260934160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A046184.P10933806674260934160

namespace A046184

/-- `Δ[ceil((sqrt(3)+2)*a(n-1))]²` -/
def P10933806674260934160.Spec : Prop :=
  ∀ n, P10933806674260934160.a n = A046184 (n + 1)

end A046184

/-! ## A046184.P14592119220811821405

`∑[ceil((sqrt(3)+2)*a(n-1))]²` with `a(0)=1, a(1)=2`
-/

namespace A046184.P14592119220811821405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A046184.P14592119220811821405

namespace A046184

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]²` -/
def P14592119220811821405.Spec : Prop :=
  ∀ n, P14592119220811821405.a n = A046184 (n + 1)

end A046184

/-!
# A046185: A B2-sequence due to Rachel Lewis.

The programs for A046185, there is no canonical definition to state claims against.
-/

/-! ## A046185.P3514731689967457917

`A384729(n+1)%A372981(n)`
-/

namespace A046185.P3514731689967457917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384729 (n + 1)) (A372981 n)

end

end A046185.P3514731689967457917

/-! ## A046185.P16478085359989070905

`A384729(n+1)+A047762(A384764(n))`
-/

namespace A046185.P16478085359989070905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384729 (n + 1) + A047762 (A384764 n).toNat

end

end A046185.P16478085359989070905

/-! ## A046185.P18340670868739899970

`A005171(A384764(2*n+1))*A384729(n+1)`
-/

namespace A046185.P18340670868739899970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A384764 (2 * n + 1)).toNat * A384729 (n + 1)

end

end A046185.P18340670868739899970

/-! ## A046185.P18301779345522342314

`A000035(A218592(n+1))*A384729(n+1)`
-/

namespace A046185.P18301779345522342314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A218592 (n + 1)).toNat * A384729 (n + 1)

end

end A046185.P18301779345522342314

/-! ## A046185.P11821652034399860596

`A343652(A000040(n+1))*A384729(n+1)`
-/

namespace A046185.P11821652034399860596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (A000040 (n + 1)).toNat * A384729 (n + 1)

end

end A046185.P11821652034399860596

/-!
# A046187: Indices of pentagonal numbers which are also octagonal.

The programs for A046187, there is no canonical definition to state claims against.
-/

/-! ## A046187.P10498715583703137588

`round(sqrt(2)*A046188(n+1))`
-/

namespace A046187.P10498715583703137588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A046188 (n + 1) : ℝ))

end

end A046187.P10498715583703137588

/-! ## A046187.P14661951113786395951

`ceil((3-sqrt(2)*(-1)^(n+1))*(1+sqrt(2))^(4*(n+1)-3)/12)`
-/

namespace A046187.P14661951113786395951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 - Real.sqrt (2 : ℝ) * ((-1) ^ (n + 1) : ℝ)) * (1 + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ) / 12⌉

end

end A046187.P14661951113786395951

/-!
# A046188: Indices of octagonal numbers which are also pentagonal.

The programs for A046188, the canonical program `A046188.P4671484196611991944` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046188 has offset 1).

The definition of A046188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046188.P4671484196611991944

`ceil(1/24*sqrt(2)*(3-sqrt(2)*(-1)^(n+1))*(1+sqrt(2))^(4*(n+1)-3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046188

/-- `ceil(1/24*sqrt(2)*(3-sqrt(2)*(-1)^(n+1))*(1+sqrt(2))^(4*(n+1)-3))` -/
def P4671484196611991944.Spec : Prop :=
  ∀ n, P4671484196611991944.a n = A046188 (n + 1)

theorem P4671484196611991944.correct : P4671484196611991944.Spec := by
  intro n
  simp only [A046188, Nat.add_sub_cancel]

end A046188

/-! ## A046188.P7582070731437740206

`round(A046187(A005843(n)/2+1)/sqrt(2))`
-/

namespace A046188.P7582070731437740206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046187 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2 + 1)).toNat : ℝ) / Real.sqrt (2 : ℝ))

end

end A046188.P7582070731437740206

namespace A046188

/-- `round(A046187(A005843(n)/2+1)/sqrt(2))` -/
def P7582070731437740206.Spec : Prop :=
  ∀ n, P7582070731437740206.a n = A046188 (n + 1)

end A046188

/-! ## A046188.P17596802448095210048

`round(A046187(A000007(n+1)+n+1)/sqrt(2))`
-/

namespace A046188.P17596802448095210048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046187 (A000007 (n + 1) + (n + 1 : ℤ)).toNat : ℝ) / Real.sqrt (2 : ℝ))

end

end A046188.P17596802448095210048

namespace A046188

/-- `round(A046187(A000007(n+1)+n+1)/sqrt(2))` -/
def P17596802448095210048.Spec : Prop :=
  ∀ n, P17596802448095210048.a n = A046188 (n + 1)

end A046188

/-! ## A046188.P7184844198855820022

`round(A046187(A062399(n)+1)/sqrt(2))`
-/

namespace A046188.P7184844198855820022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046187 (A062399 n + 1).toNat : ℝ) / Real.sqrt (2 : ℝ))

end

end A046188.P7184844198855820022

namespace A046188

/-- `round(A046187(A062399(n)+1)/sqrt(2))` -/
def P7184844198855820022.Spec : Prop :=
  ∀ n, P7184844198855820022.a n = A046188 (n + 1)

end A046188

/-!
# A046189: Octagonal pentagonal numbers.

The programs for A046189, the canonical program `A046189.P6691063843014125237` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046189 has offset 0).

The definition of A046189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046189.P6691063843014125237

`floor(1/96*(11-6*sqrt(2)*(-1)^n)*(1+sqrt(2))^(8*n-6))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046189

/-- `floor(1/96*(11-6*sqrt(2)*(-1)^n)*(1+sqrt(2))^(8*n-6))` -/
def P6691063843014125237.Spec : Prop :=
  ∀ n, P6691063843014125237.a n = A046189 n

theorem P6691063843014125237.correct : P6691063843014125237.Spec := by
  intro n
  simp only [A046189]

end A046189

/-!
# A046190: Indices of octagonal numbers which are also hexagonal numbers.

The programs for A046190, the canonical program `A046190.P4577791833206106310` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046190 has offset 1).

The definition of A046190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046190.P4577791833206106310

`98*a(n-1)-a(n-2)-32` with `a(0)=1, a(1)=63`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046190

/-- `98*a(n-1)-a(n-2)-32` -/
def P4577791833206106310.Spec : Prop :=
  ∀ n, P4577791833206106310.a n = A046190 (n + 1)

theorem P4577791833206106310.correct : P4577791833206106310.Spec := by
  intro n
  simp only [A046190, Nat.add_sub_cancel]

end A046190

/-! ## A046190.P16311609233335212112

`ceil(1/24*sqrt(2)*(1+sqrt(6))*(sqrt(3)+sqrt(2))^(4*(n+1)-3))`
-/

namespace A046190.P16311609233335212112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 24 : ℝ) * Real.sqrt (2 : ℝ) * (1 + Real.sqrt (6 : ℝ)) * (Real.sqrt (3 : ℝ) + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ)⌉

end

end A046190.P16311609233335212112

namespace A046190

/-- `ceil(1/24*sqrt(2)*(1+sqrt(6))*(sqrt(3)+sqrt(2))^(4*(n+1)-3))` -/
def P16311609233335212112.Spec : Prop :=
  ∀ n, P16311609233335212112.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P16561703244017123424

`A046181(Δ[n²])`
-/

namespace A046190.P16561703244017123424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046190.P16561703244017123424

namespace A046190

/-- `A046181(Δ[n²])` -/
def P16561703244017123424.Spec : Prop :=
  ∀ n, P16561703244017123424.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P14225170462664287756

`record[A046181((n+1)/2^val(n+1, 2))]`
-/

namespace A046190.P14225170462664287756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046181 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046190.P14225170462664287756

namespace A046190

/-- `record[A046181((n+1)/2^val(n+1, 2))]` -/
def P14225170462664287756.Spec : Prop :=
  ∀ n, P14225170462664287756.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P12649175992936909980

`A080806(2*n+1)*A138288(n)`
-/

namespace A046190.P12649175992936909980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (2 * n + 1) * A138288 n

end

end A046190.P12649175992936909980

namespace A046190

/-- `A080806(2*n+1)*A138288(n)` -/
def P12649175992936909980.Spec : Prop :=
  ∀ n, P12649175992936909980.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P14913944484378074883

`A041039(2*n)*A152450(Δ[n²])`
-/

namespace A046190.P14913944484378074883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (2 * n) * A152450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046190.P14913944484378074883

namespace A046190

/-- `A041039(2*n)*A152450(Δ[n²])` -/
def P14913944484378074883.Spec : Prop :=
  ∀ n, P14913944484378074883.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P2919915376919010430

`A072256(n+1)*A080806(2*n+1)`
-/

namespace A046190.P2919915376919010430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1) * A080806 (2 * n + 1)

end

end A046190.P2919915376919010430

namespace A046190

/-- `A072256(n+1)*A080806(2*n+1)` -/
def P2919915376919010430.Spec : Prop :=
  ∀ n, P2919915376919010430.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P8119075108942965960

`A072256(n+1)*A080873(2*n+1)`
-/

namespace A046190.P8119075108942965960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1) * A080873 (2 * n + 1)

end

end A046190.P8119075108942965960

namespace A046190

/-- `A072256(n+1)*A080873(2*n+1)` -/
def P8119075108942965960.Spec : Prop :=
  ∀ n, P8119075108942965960.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P16194398534363353441

`A041007(2*n)*A080806(2*n+1)`
-/

namespace A046190.P16194398534363353441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n) * A080806 (2 * n + 1)

end

end A046190.P16194398534363353441

namespace A046190

/-- `A041007(2*n)*A080806(2*n+1)` -/
def P16194398534363353441.Spec : Prop :=
  ∀ n, P16194398534363353441.a n = A046190 (n + 1)

end A046190

/-! ## A046190.P9136943098536979937

`A041007(2*n)*A080873(2*n+1)`
-/

namespace A046190.P9136943098536979937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n) * A080873 (2 * n + 1)

end

end A046190.P9136943098536979937

namespace A046190

/-- `A041007(2*n)*A080873(2*n+1)` -/
def P9136943098536979937.Spec : Prop :=
  ∀ n, P9136943098536979937.a n = A046190 (n + 1)

end A046190

/-!
# A046191: Indices of hexagonal numbers which are also octagonal.

The programs for A046191, the canonical program `A046191.P11431515914710433370` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046191 has offset 1).

The definition of A046191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046191.P11431515914710433370

`98*a(n-1)-a(n-2)-24` with `a(0)=1, a(1)=77`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046191

/-- `98*a(n-1)-a(n-2)-24` -/
def P11431515914710433370.Spec : Prop :=
  ∀ n, P11431515914710433370.a n = A046191 (n + 1)

theorem P11431515914710433370.correct : P11431515914710433370.Spec := by
  intro n
  simp only [A046191, Nat.add_sub_cancel]

end A046191

/-! ## A046191.P4253115237895768548

`ceil(1/24*sqrt(3)*(1+sqrt(6))*(sqrt(3)+sqrt(2))^(4*(n+1)-3))`
-/

namespace A046191.P4253115237895768548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 24 : ℝ) * Real.sqrt (3 : ℝ) * (1 + Real.sqrt (6 : ℝ)) * (Real.sqrt (3 : ℝ) + Real.sqrt (2 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ)⌉

end

end A046191.P4253115237895768548

namespace A046191

/-- `ceil(1/24*sqrt(3)*(1+sqrt(6))*(sqrt(3)+sqrt(2))^(4*(n+1)-3))` -/
def P4253115237895768548.Spec : Prop :=
  ∀ n, P4253115237895768548.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P10881933181479738891

`round(A046182(2*n+1)/2)`
-/

namespace A046191.P10881933181479738891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046182 (2 * n + 1) : ℚ) / 2)

end

end A046191.P10881933181479738891

namespace A046191

/-- `round(A046182(2*n+1)/2)` -/
def P10881933181479738891.Spec : Prop :=
  ∀ n, P10881933181479738891.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P3300522318199484330

`floor(A233450(n+1+Δ[n²]+n)/2)+1`
-/

namespace A046191.P3300522318199484330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A233450 ((n + 1 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))).toNat : ℚ) / 2⌋ + 1

end

end A046191.P3300522318199484330

namespace A046191

/-- `floor(A233450(n+1+Δ[n²]+n)/2)+1` -/
def P3300522318199484330.Spec : Prop :=
  ∀ n, P3300522318199484330.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P1269488800841168200

`A138288(n)²-A001078(n)²`
-/

namespace A046191.P1269488800841168200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n ^ 2 - A001078 n ^ 2

end

end A046191.P1269488800841168200

namespace A046191

/-- `A138288(n)²-A001078(n)²` -/
def P1269488800841168200.Spec : Prop :=
  ∀ n, P1269488800841168200.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P12629637502425695423

`A054320(n)²-A105038(2*n)`
-/

namespace A046191.P12629637502425695423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n ^ 2 - A105038 (2 * n)

end

end A046191.P12629637502425695423

namespace A046191

/-- `A054320(n)²-A105038(2*n)` -/
def P12629637502425695423.Spec : Prop :=
  ∀ n, P12629637502425695423.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P16099818505438396488

`Δ[A004189(n)]²-A001078(n)²`
-/

namespace A046191.P16099818505438396488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A001078 n ^ 2

end

end A046191.P16099818505438396488

namespace A046191

/-- `Δ[A004189(n)]²-A001078(n)²` -/
def P16099818505438396488.Spec : Prop :=
  ∀ n, P16099818505438396488.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P9103939006427814221

`A054320(n)*A080873(2*n+1)`
-/

namespace A046191.P9103939006427814221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n * A080873 (2 * n + 1)

end

end A046191.P9103939006427814221

namespace A046191

/-- `A054320(n)*A080873(2*n+1)` -/
def P9103939006427814221.Spec : Prop :=
  ∀ n, P9103939006427814221.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P13384487012301467512

`A046172(n+1)-(2*A004189(n))²`
-/

namespace A046191.P13384487012301467512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046172 (n + 1) - (2 * A004189 n) ^ 2

end

end A046191.P13384487012301467512

namespace A046191

/-- `A046172(n+1)-(2*A004189(n))²` -/
def P13384487012301467512.Spec : Prop :=
  ∀ n, P13384487012301467512.a n = A046191 (n + 1)

end A046191

/-! ## A046191.P14140220131114840365

`A001078(2*n+1)-A054320(n)²`
-/

namespace A046191.P14140220131114840365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (2 * n + 1) - A054320 n ^ 2

end

end A046191.P14140220131114840365

namespace A046191

/-- `A001078(2*n+1)-A054320(n)²` -/
def P14140220131114840365.Spec : Prop :=
  ∀ n, P14140220131114840365.a n = A046191 (n + 1)

end A046191

/-!
# A046192: 

The programs for A046192, there is no canonical definition to state claims against.
-/

/-! ## A046192.P14440048923002061604

`A046183(Δ[n²])`
-/

namespace A046192.P14440048923002061604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046183 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046192.P14440048923002061604

/-! ## A046192.P13615666646398888765

`A245031(2*Δ[n²])`
-/

namespace A046192.P13615666646398888765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245031 (2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A046192.P13615666646398888765

/-! ## A046192.P13910010862890730875

`A247247(A047235(Δ[n²]))`
-/

namespace A046192.P13910010862890730875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A047235 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A046192.P13910010862890730875

/-! ## A046192.P17405775265154661842

`A046182(2*n+1)*A046191(n+1)`
-/

namespace A046192.P17405775265154661842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046182 (2 * n + 1) * A046191 (n + 1)

end

end A046192.P17405775265154661842

/-!
# A046193: Indices of heptagonal numbers (A000566) which are also triangular numbers (A000217).

The programs for A046193, the canonical program `A046193.P10244875722957354228` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046193 has offset 1).

The definition of A046193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046193.P10244875722957354228

`A000045(3*(n+1)-1+(n+1)%2)*A000045(3*(n+1)-3+(n+1)%2)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046193

/-- `A000045(3*(n+1)-1+(n+1)%2)*A000045(3*(n+1)-3+(n+1)%2)/2` -/
def P10244875722957354228.Spec : Prop :=
  ∀ n, P10244875722957354228.a n = (A046193 (n + 1) : ℚ)

end A046193

/-! ## A046193.P15924199372311780395

`ceil((sqrt(5)-(-1)^(n+1))*(2+sqrt(5))^(2*(n+1)-1)/20)`
-/

namespace A046193.P15924199372311780395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (5 : ℝ) - ((-1) ^ (n + 1) : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) / 20⌉

end

end A046193.P15924199372311780395

namespace A046193

/-- `ceil((sqrt(5)-(-1)^(n+1))*(2+sqrt(5))^(2*(n+1)-1)/20)` -/
def P15924199372311780395.Spec : Prop :=
  ∀ n, P15924199372311780395.a n = A046193 (n + 1)

end A046193

/-! ## A046193.P15415859729120138505

`A220739(A047241(n+1))`
-/

namespace A046193.P15415859729120138505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220739 (A047241 (n + 1)).toNat

end

end A046193.P15415859729120138505

namespace A046193

/-- `A220739(A047241(n+1))` -/
def P15415859729120138505.Spec : Prop :=
  ∀ n, P15415859729120138505.a n = A046193 (n + 1)

end A046193

/-! ## A046193.P5299594390656987516

`A220739(or(1, A008486(n)))`
-/

namespace A046193.P5299594390656987516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220739 (Int.lor 1 (A008486 n)).toNat

end

end A046193.P5299594390656987516

namespace A046193

/-- `A220739(or(1, A008486(n)))` -/
def P5299594390656987516.Spec : Prop :=
  ∀ n, P5299594390656987516.a n = A046193 (n + 1)

end A046193

/-! ## A046193.P10780884997301355754

`A007805(n)-A225785(n+1)`
-/

namespace A046193.P10780884997301355754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007805 n - A225785 (n + 1)

end

end A046193.P10780884997301355754

namespace A046193

/-- `A007805(n)-A225785(n+1)` -/
def P10780884997301355754.Spec : Prop :=
  ∀ n, P10780884997301355754.a n = A046193 (n + 1)

end A046193

/-! ## A046193.P2345122371790854513

`A007805(n)-4*A077260(n)`
-/

namespace A046193.P2345122371790854513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007805 n - 4 * A077260 n

end

end A046193.P2345122371790854513

namespace A046193

/-- `A007805(n)-4*A077260(n)` -/
def P2345122371790854513.Spec : Prop :=
  ∀ n, P2345122371790854513.a n = A046193 (n + 1)

end A046193

/-! ## A046193.P15212414808064552607

`Δ[A049660(n)]-A225785(n+1)`
-/

namespace A046193.P15212414808064552607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A225785 (n + 1)

end

end A046193.P15212414808064552607

namespace A046193

/-- `Δ[A049660(n)]-A225785(n+1)` -/
def P15212414808064552607.Spec : Prop :=
  ∀ n, P15212414808064552607.a n = A046193 (n + 1)

end A046193

/-! ## A046193.P15302232116458169744

`A007805(n)-4/5*A077261(n)`
-/

namespace A046193.P15302232116458169744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007805 n : ℚ) - (4 : ℚ) / 5 * (A077261 n : ℚ)

end

end A046193.P15302232116458169744

namespace A046193

/-- `A007805(n)-4/5*A077261(n)` -/
def P15302232116458169744.Spec : Prop :=
  ∀ n, P15302232116458169744.a n = (A046193 (n + 1) : ℚ)

end A046193

/-! ## A046193.P4789220009973556389

`A007805(n)-(A190949(n+1)²-1)/2`
-/

namespace A046193.P4789220009973556389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007805 n : ℚ) - (A190949 (n + 1) ^ 2 - 1 : ℚ) / 2

end

end A046193.P4789220009973556389

namespace A046193

/-- `A007805(n)-(A190949(n+1)²-1)/2` -/
def P4789220009973556389.Spec : Prop :=
  ∀ n, P4789220009973556389.a n = (A046193 (n + 1) : ℚ)

end A046193

/-! ## A046193.P5692648132114339372

`A059973(A016825(n))-A225785(n+1)`
-/

namespace A046193.P5692648132114339372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (A016825 n).toNat - A225785 (n + 1)

end

end A046193.P5692648132114339372

namespace A046193

/-- `A059973(A016825(n))-A225785(n+1)` -/
def P5692648132114339372.Spec : Prop :=
  ∀ n, P5692648132114339372.a n = A046193 (n + 1)

end A046193

/-!
# A046194: Heptagonal triangular numbers.

The programs for A046194, the canonical program `A046194.P2385633686826609502` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046194 has offset 1).

The definition of A046194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046194.P2385633686826609502

`floor(1/80*(3-sqrt(5)*(-1)^(n+1))*(2+sqrt(5))^(4*(n+1)-2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046194

/-- `floor(1/80*(3-sqrt(5)*(-1)^(n+1))*(2+sqrt(5))^(4*(n+1)-2))` -/
def P2385633686826609502.Spec : Prop :=
  ∀ n, P2385633686826609502.a n = A046194 (n + 1)

theorem P2385633686826609502.correct : P2385633686826609502.Spec := by
  intro n
  simp only [A046194, Nat.add_sub_cancel]

end A046194

/-! ## A046194.P14035983279918934625

`1+A000045(6*(n+1)+2*(n+1)%2)*A000045(6*(n+1)-8+2*(n+1)%2)/8`
-/

namespace A046194.P14035983279918934625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A000045 (6 * (n + 1) + 2 * ((n + 1) % 2)) * A000045 ((6 * (n + 1) : ℤ) - 8 + ((2 * ((n + 1) % 2) : ℕ) : ℤ)).toNat : ℚ) / 8

end

end A046194.P14035983279918934625

namespace A046194

/-- `1+A000045(6*(n+1)+2*(n+1)%2)*A000045(6*(n+1)-8+2*(n+1)%2)/8` -/
def P14035983279918934625.Spec : Prop :=
  ∀ n, P14035983279918934625.a n = (A046194 (n + 1) : ℚ)

end A046194

/-! ## A046194.P10677651451760231119

`C(A254627(record[or(2, n)]), 2)`
-/

namespace A046194.P10677651451760231119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A254627 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat 2

end

end A046194.P10677651451760231119

namespace A046194

/-- `C(A254627(record[or(2, n)]), 2)` -/
def P10677651451760231119.Spec : Prop :=
  ∀ n, (P10677651451760231119.a n : ℤ) = A046194 (n + 1)

end A046194

/-! ## A046194.P2451544229430986513

`C(A039835(n+1)+1, 2)`
-/

namespace A046194.P2451544229430986513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039835 (n + 1) + 1).toNat 2

end

end A046194.P2451544229430986513

namespace A046194

/-- `C(A039835(n+1)+1, 2)` -/
def P2451544229430986513.Spec : Prop :=
  ∀ n, (P2451544229430986513.a n : ℤ) = A046194 (n + 1)

end A046194

/-! ## A046194.P4652576491605688615

`C(A147997(A092259(n+1)), 2)`
-/

namespace A046194.P4652576491605688615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A147997 (A092259 (n + 1)).toNat).toNat 2

end

end A046194.P4652576491605688615

namespace A046194

/-- `C(A147997(A092259(n+1)), 2)` -/
def P4652576491605688615.Spec : Prop :=
  ∀ n, (P4652576491605688615.a n : ℤ) = A046194 (n + 1)

end A046194

/-!
# A046196: Indices of square numbers which are also heptagonal.

The programs for A046196, there is no canonical definition to state claims against.
-/

/-! ## A046196.P14850521944795551966

`A251927(n+1)+1`
-/

namespace A046196.P14850521944795551966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251927 (n + 1) + 1

end

end A046196.P14850521944795551966

/-! ## A046196.P8056895592135552708

`A075873(2*(n+1))`
-/

namespace A046196.P8056895592135552708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075873 (2 * (n + 1))

end

end A046196.P8056895592135552708

/-! ## A046196.P9760703691663008516

`2*A253920(n+1)-1`
-/

namespace A046196.P9760703691663008516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253920 (n + 1) - 1

end

end A046196.P9760703691663008516

/-! ## A046196.P7323898576395045715

`A110315(A014963(2*(n+1)))+2*A253920(n+1)`
-/

namespace A046196.P7323898576395045715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (A014963 (2 * (n + 1))).toNat + 2 * A253920 (n + 1)

end

end A046196.P7323898576395045715

/-! ## A046196.P4471419585338553484

`A075836(2*(n+1))/2`
-/

namespace A046196.P4471419585338553484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075836 (2 * (n + 1)) : ℚ) / 2

end

end A046196.P4471419585338553484

/-! ## A046196.P350494021800484427

`ceil(A075836(Δ[A202018(n)])/2)`
-/

namespace A046196.P350494021800484427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075836 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌉

end

end A046196.P350494021800484427

/-! ## A046196.P16469243811858879067

`A008683(A028871(n+1))+2*A253920(n+1)`
-/

namespace A046196.P16469243811858879067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028871 (n + 1)).toNat + 2 * A253920 (n + 1)

end

end A046196.P16469243811858879067

/-!
# A046197: Fixed points for operation of repeatedly replacing a number with the sum of the cubes of its digits.

The programs for A046197, there is no canonical definition to state claims against.
-/

/-! ## A046197.P6348135996330198946

`A252648(n+13)`
-/

namespace A046197.P6348135996330198946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 13)

end

end A046197.P6348135996330198946

/-!
# A046198: Indices of heptagonal numbers (A000566) which are also pentagonal.

The programs for A046198, the canonical program `A046198.P13262934502235765731` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046198 has offset 1).

The definition of A046198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046198.P13262934502235765731

`62*a(n-1)-a(n-2)-18` with `a(0)=1, a(1)=42`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046198

/-- `62*a(n-1)-a(n-2)-18` -/
def P13262934502235765731.Spec : Prop :=
  ∀ n, P13262934502235765731.a n = A046198 (n + 1)

theorem P13262934502235765731.correct : P13262934502235765731.Spec := by
  intro n
  simp only [A046198, Nat.add_sub_cancel]

end A046198

/-! ## A046198.P16663738897124327973

`ceil(1/60*(9-sqrt(15))*(4+sqrt(15))^(2*(n+1)-1))`
-/

namespace A046198.P16663738897124327973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 60 : ℝ) * (9 - Real.sqrt (15 : ℝ)) * (4 + Real.sqrt (15 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)⌉

end

end A046198.P16663738897124327973

namespace A046198

/-- `ceil(1/60*(9-sqrt(15))*(4+sqrt(15))^(2*(n+1)-1))` -/
def P16663738897124327973.Spec : Prop :=
  ∀ n, P16663738897124327973.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P7479843695216709438

`A070997(n)*A341927(n)`
-/

namespace A046198.P7479843695216709438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n * A341927 n

end

end A046198.P7479843695216709438

namespace A046198

/-- `A070997(n)*A341927(n)` -/
def P7479843695216709438.Spec : Prop :=
  ∀ n, P7479843695216709438.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P2712820751060863740

`Δ[A001090(n)]*A341927(n)`
-/

namespace A046198.P2712820751060863740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A341927 n

end

end A046198.P2712820751060863740

namespace A046198

/-- `Δ[A001090(n)]*A341927(n)` -/
def P2712820751060863740.Spec : Prop :=
  ∀ n, P2712820751060863740.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P2848867655349764787

`A070997(n)*A237262(2*n+1)`
-/

namespace A046198.P2848867655349764787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n * A237262 (2 * n + 1)

end

end A046198.P2848867655349764787

namespace A046198

/-- `A070997(n)*A237262(2*n+1)` -/
def P2848867655349764787.Spec : Prop :=
  ∀ n, P2848867655349764787.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P11973696178411348557

`A041023(2*n)*A237262(2*n+1)`
-/

namespace A046198.P11973696178411348557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n) * A237262 (2 * n + 1)

end

end A046198.P11973696178411348557

namespace A046198

/-- `A041023(2*n)*A237262(2*n+1)` -/
def P11973696178411348557.Spec : Prop :=
  ∀ n, P11973696178411348557.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P639423110204560396

`(A070997(n)-A001090(n))*A070997(n)`
-/

namespace A046198.P639423110204560396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070997 n - A001090 n) * A070997 n

end

end A046198.P639423110204560396

namespace A046198

/-- `(A070997(n)-A001090(n))*A070997(n)` -/
def P639423110204560396.Spec : Prop :=
  ∀ n, P639423110204560396.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P2004216281584766765

`(A077246(n)-A070997(n))*A070997(n)`
-/

namespace A046198.P2004216281584766765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077246 n - A070997 n) * A070997 n

end

end A046198.P2004216281584766765

namespace A046198

/-- `(A077246(n)-A070997(n))*A070997(n)` -/
def P2004216281584766765.Spec : Prop :=
  ∀ n, P2004216281584766765.a n = A046198 (n + 1)

end A046198

/-! ## A046198.P13160513422421481276

`(A237262(2*(n+1))-A001090(n+1))*A237262(2*n+1)`
-/

namespace A046198.P13160513422421481276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237262 (2 * (n + 1)) - A001090 (n + 1)) * A237262 (2 * n + 1)

end

end A046198.P13160513422421481276

namespace A046198

/-- `(A237262(2*(n+1))-A001090(n+1))*A237262(2*n+1)` -/
def P13160513422421481276.Spec : Prop :=
  ∀ n, P13160513422421481276.a n = A046198 (n + 1)

end A046198

/-!
# A046199: Indices of pentagonal numbers that are also heptagonal.

The programs for A046199, the canonical program `A046199.P7655635790094312319` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046199 has offset 1).

The definition of A046199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046199.P7655635790094312319

`62*a(n-1)-a(n-2)-10` with `a(0)=1, a(1)=54`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046199

/-- `62*a(n-1)-a(n-2)-10` -/
def P7655635790094312319.Spec : Prop :=
  ∀ n, P7655635790094312319.a n = A046199 (n + 1)

theorem P7655635790094312319.correct : P7655635790094312319.Spec := by
  intro n
  simp only [A046199, Nat.add_sub_cancel]

end A046199

/-! ## A046199.P1757475782370895989

`ceil(1/60*(3*sqrt(15)-5)*(4+sqrt(15))^(2*(n+1)-1))`
-/

namespace A046199.P1757475782370895989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 60 : ℝ) * (3 * Real.sqrt (15 : ℝ) - 5) * (4 + Real.sqrt (15 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)⌉

end

end A046199.P1757475782370895989

namespace A046199

/-- `ceil(1/60*(3*sqrt(15)-5)*(4+sqrt(15))^(2*(n+1)-1))` -/
def P1757475782370895989.Spec : Prop :=
  ∀ n, P1757475782370895989.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P1062126360449675544

`A322780(2*n+1)*A341927(n)`
-/

namespace A046199.P1062126360449675544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 (2 * n + 1) * A341927 n

end

end A046199.P1062126360449675544

namespace A046199

/-- `A322780(2*n+1)*A341927(n)` -/
def P1062126360449675544.Spec : Prop :=
  ∀ n, P1062126360449675544.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P16226830255953920531

`A237262(2*n+1)*A322780(2*n+1)`
-/

namespace A046199.P16226830255953920531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (2 * n + 1) * A322780 (2 * n + 1)

end

end A046199.P16226830255953920531

namespace A046199

/-- `A237262(2*n+1)*A322780(2*n+1)` -/
def P16226830255953920531.Spec : Prop :=
  ∀ n, P16226830255953920531.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P16536937593111222453

`2*A001090(2*n+1)-A076765(2*n)`
-/

namespace A046199.P16536937593111222453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001090 (2 * n + 1) - A076765 (2 * n)

end

end A046199.P16536937593111222453

namespace A046199

/-- `2*A001090(2*n+1)-A076765(2*n)` -/
def P16536937593111222453.Spec : Prop :=
  ∀ n, P16536937593111222453.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P9733209483185137648

`(A070997(n)-A001090(n))*A057080(n)`
-/

namespace A046199.P9733209483185137648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070997 n - A001090 n) * A057080 n

end

end A046199.P9733209483185137648

namespace A046199

/-- `(A070997(n)-A001090(n))*A057080(n)` -/
def P9733209483185137648.Spec : Prop :=
  ∀ n, P9733209483185137648.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P5669372142405990365

`(A341929(n+1)-A341927(n))*A341927(n)`
-/

namespace A046199.P5669372142405990365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341929 (n + 1) - A341927 n) * A341927 n

end

end A046199.P5669372142405990365

namespace A046199

/-- `(A341929(n+1)-A341927(n))*A341927(n)` -/
def P5669372142405990365.Spec : Prop :=
  ∀ n, P5669372142405990365.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P6629915222214275926

`(A341929(n+1)-A237262(2*n+1))*A237262(2*n+1)`
-/

namespace A046199.P6629915222214275926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341929 (n + 1) - A237262 (2 * n + 1)) * A237262 (2 * n + 1)

end

end A046199.P6629915222214275926

namespace A046199

/-- `(A341929(n+1)-A237262(2*n+1))*A237262(2*n+1)` -/
def P6629915222214275926.Spec : Prop :=
  ∀ n, P6629915222214275926.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P3037385836939706337

`(A341929(n+1)-A322780(2*n+1))*A322780(2*n+1)`
-/

namespace A046199.P3037385836939706337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341929 (n + 1) - A322780 (2 * n + 1)) * A322780 (2 * n + 1)

end

end A046199.P3037385836939706337

namespace A046199

/-- `(A341929(n+1)-A322780(2*n+1))*A322780(2*n+1)` -/
def P3037385836939706337.Spec : Prop :=
  ∀ n, P3037385836939706337.a n = A046199 (n + 1)

end A046199

/-! ## A046199.P101284973913517662

`(A237262(2*(n+1))-A237262(2*n+1))*A237262(2*n+1)`
-/

namespace A046199.P101284973913517662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237262 (2 * (n + 1)) - A237262 (2 * n + 1)) * A237262 (2 * n + 1)

end

end A046199.P101284973913517662

namespace A046199

/-- `(A237262(2*(n+1))-A237262(2*n+1))*A237262(2*n+1)` -/
def P101284973913517662.Spec : Prop :=
  ∀ n, P101284973913517662.a n = A046199 (n + 1)

end A046199

