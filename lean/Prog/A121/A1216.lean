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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A121600: a(n) = number of earlier terms which are not divisible by the largest prime dividing n, for n >= 2, with a(1) = 1.

The programs for A121600, there is no canonical definition to state claims against.
-/

/-! ## A121600.P506180056927084851

`A003967(n+1)-A001222(A334099(n))`
-/

namespace A121600.P506180056927084851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1) - A001222 (A334099 n).toNat

end

end A121600.P506180056927084851

/-!
# A121605: Primes of the form (Fibonacci[n+3] + 2) = A018910[n], Pisot sequence L(4,5).

The programs for A121605, there is no canonical definition to state claims against.
-/

/-! ## A121605.P4057890429532521156

`A018910(A121606(n+1))`
-/

namespace A121605.P4057890429532521156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (A121606 (n + 1)).toNat

end

end A121605.P4057890429532521156

/-! ## A121605.P17440875541161298054

`A048584(A121606(n+1)-1)`
-/

namespace A121605.P17440875541161298054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 (A121606 (n + 1) - 1).toNat

end

end A121605.P17440875541161298054

/-! ## A121605.P889073162018810230

`A157725(A121606(n+1)+3)`
-/

namespace A121605.P889073162018810230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (A121606 (n + 1) + 3).toNat

end

end A121605.P889073162018810230

/-! ## A121605.P18313192675767177650

`A018910(eq[2, A159978(n+3)])`
-/

namespace A121605.P18313192675767177650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121605.P18313192675767177650

/-! ## A121605.P17277757355455122713

`∩[A178576(n+1), A018910(n)]`
-/

namespace A121605.P17277757355455122713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121605.P17277757355455122713

/-!
# A121606: Indices n such that A018910[n] = (Fibonacci[n+3] + 2) are primes.

The programs for A121606, there is no canonical definition to state claims against.
-/

/-! ## A121606.P230061198967042125

`eq[2, A159978(n+3)]`
-/

namespace A121606.P230061198967042125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121606.P230061198967042125

/-! ## A121606.P11177084115674963597

`lt[A159978(n+3), A332827(A101597(n+1))]`
-/

namespace A121606.P11177084115674963597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159978 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332827 (A101597 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121606.P11177084115674963597

/-!
# A121607: a(n) = (n^3 + n)*3^n.

The programs for A121607, the canonical program `A121607.P12777103385746461110` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121607 has offset 1).

The definition of A121607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^3+n+1)*3^(n+1)` (program `A121607.P12777103385746461110`, by `A121607.P12777103385746461110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121607.P12777103385746461110

`((n+1)^3+n+1)*3^(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121607

/-- `((n+1)^3+n+1)*3^(n+1)` -/
def P12777103385746461110.Spec : Prop :=
  ∀ n, (P12777103385746461110.a n : ℤ) = A121607 (n + 1)

theorem P12777103385746461110.correct : P12777103385746461110.Spec := by
  intro n
  simp only [A121607, Nat.add_sub_cancel]

end A121607

/-! ## A121607.P17632888945355727171

`A128986(n+1)+A116138(n+1)`
-/

namespace A121607.P17632888945355727171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128986 (n + 1) + A116138 (n + 1)

end

end A121607.P17632888945355727171

namespace A121607

/-- `A128986(n+1)+A116138(n+1)` -/
def P17632888945355727171.Spec : Prop :=
  ∀ n, P17632888945355727171.a n = A121607 (n + 1)

end A121607

/-! ## A121607.P1606491286063785424

`A129003(n+1)-A128797(n+1)`
-/

namespace A121607.P1606491286063785424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129003 (n + 1) - A128797 (n + 1)

end

end A121607.P1606491286063785424

namespace A121607

/-- `A129003(n+1)-A128797(n+1)` -/
def P1606491286063785424.Spec : Prop :=
  ∀ n, P1606491286063785424.a n = A121607 (n + 1)

end A121607

/-! ## A121607.P5763087187057736855

`lcm(A002522(n+1), A036290(n+1))`
-/

namespace A121607.P5763087187057736855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002522 (n + 1)) (A036290 (n + 1))

end

end A121607.P5763087187057736855

namespace A121607

/-- `lcm(A002522(n+1), A036290(n+1))` -/
def P5763087187057736855.Spec : Prop :=
  ∀ n, (P5763087187057736855.a n : ℤ) = A121607 (n + 1)

end A121607

/-! ## A121607.P15132871444734668823

`A116138(n+1)+A128961(n+1)-A128961(n+1)/(n+2)`
-/

namespace A121607.P15132871444734668823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (n + 1) : ℚ) + ((A128961 (n + 1) : ℚ) - (A128961 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A121607.P15132871444734668823

namespace A121607

/-- `A116138(n+1)+A128961(n+1)-A128961(n+1)/(n+2)` -/
def P15132871444734668823.Spec : Prop :=
  ∀ n, P15132871444734668823.a n = (A121607 (n + 1) : ℚ)

end A121607

/-! ## A121607.P16835980286403218292

`A128043(n+1)/A000079(n+1)`
-/

namespace A121607.P16835980286403218292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128043 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A121607.P16835980286403218292

namespace A121607

/-- `A128043(n+1)/A000079(n+1)` -/
def P16835980286403218292.Spec : Prop :=
  ∀ n, P16835980286403218292.a n = (A121607 (n + 1) : ℚ)

end A121607

/-! ## A121607.P9856746440603851601

`A128074(n+1)/3^(n+1)`
-/

namespace A121607.P9856746440603851601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128074 (n + 1) : ℚ) / (3 ^ (n + 1) : ℚ)

end

end A121607.P9856746440603851601

namespace A121607

/-- `A128074(n+1)/3^(n+1)` -/
def P9856746440603851601.Spec : Prop :=
  ∀ n, P9856746440603851601.a n = (A121607 (n + 1) : ℚ)

end A121607

/-! ## A121607.P3680351304342307521

`gcd(A128043(n+1), A128074(n+1))`
-/

namespace A121607.P3680351304342307521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128043 (n + 1)) (A128074 (n + 1))

end

end A121607.P3680351304342307521

namespace A121607

/-- `gcd(A128043(n+1), A128074(n+1))` -/
def P3680351304342307521.Spec : Prop :=
  ∀ n, (P3680351304342307521.a n : ℤ) = A121607 (n + 1)

end A121607

/-!
# A121608: Primes that can be written as concatenation of two composite numbers in decimal representation.

The programs for A121608, there is no canonical definition to state claims against.
-/

/-! ## A121608.P1408759915189437992

`A141883(A307257(n+1)+2)`
-/

namespace A121608.P1408759915189437992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (A307257 (n + 1) + 2).toNat

end

end A121608.P1408759915189437992

/-! ## A121608.P14639462549082130048

`A141883(A032559(n+4)-2)`
-/

namespace A121608.P14639462549082130048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (A032559 (n + 4) - 2).toNat

end

end A121608.P14639462549082130048

/-!
# A121609: Composite numbers that can be written as concatenation of two primes in decimal representation.

The programs for A121609, there is no canonical definition to state claims against.
-/

/-! ## A121609.P9539914269898791732

`filter[A106582(n+1), A005171(#)]`
-/

namespace A121609.P9539914269898791732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A121609.P9539914269898791732

/-! ## A121609.P13167672087057458768

`filter[A106582(n+1), A066247(#)]`
-/

namespace A121609.P13167672087057458768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A121609.P13167672087057458768

/-! ## A121609.P9202287838152076107

`∩[A066737(n+1), A106582(n+1)]`
-/

namespace A121609.P9202287838152076107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P9202287838152076107

/-! ## A121609.P13012447011109097308

`∩[A002808(n+1), A106582(n+1)]`
-/

namespace A121609.P13012447011109097308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P13012447011109097308

/-! ## A121609.P10722519358685419725

`∩[A018252(n+1), A106582(n+1)]`
-/

namespace A121609.P10722519358685419725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P10722519358685419725

/-! ## A121609.P15988650610622251087

`∩[A106582(n+1), A141468(n+1)]`
-/

namespace A121609.P15988650610622251087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P15988650610622251087

/-! ## A121609.P8538788183578141622

`∩[A056653(n+1), A106582(n+1)]`
-/

namespace A121609.P8538788183578141622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P8538788183578141622

/-! ## A121609.P9203932330938742043

`∩[A062973(n+1), A106582(n+1)]`
-/

namespace A121609.P9203932330938742043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P9203932330938742043

/-! ## A121609.P8594206825115810767

`∩[A106582(n+1), A176423(n+1)]`
-/

namespace A121609.P8594206825115810767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P8594206825115810767

/-! ## A121609.P1617511353736939430

`∩[A065090(n+1), A106582(n+1)]`
-/

namespace A121609.P1617511353736939430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P1617511353736939430

/-! ## A121609.P2603814611160047118

`∩[A106582(n+1), A171581(n+1)]`
-/

namespace A121609.P2603814611160047118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P2603814611160047118

/-! ## A121609.P2764798908474732733

`∩[A106582(n+1), A173905(n+1)]`
-/

namespace A121609.P2764798908474732733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121609.P2764798908474732733

/-! ## A121609.P1332736873582442283

`record[A191558(A106582(n+1))]`
-/

namespace A121609.P1332736873582442283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A106582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121609.P1332736873582442283

/-! ## A121609.P8961295164568227732

`A018252(record[A022447(A106582(n+1))])`
-/

namespace A121609.P8961295164568227732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A106582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121609.P8961295164568227732

/-! ## A121609.P14734693728810949993

`A026239(record[A026239(A106582(n+1))])`
-/

namespace A121609.P14734693728810949993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A106582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121609.P14734693728810949993

/-! ## A121609.P1739736681091037439

`A026239(p?[A026239(A106582(n+1))])`
-/

namespace A121609.P1739736681091037439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A106582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121609.P1739736681091037439

/-!
# A121610: Composite numbers that can be written as concatenation of two composite numbers in decimal representation.

The programs for A121610, there is no canonical definition to state claims against.
-/

/-! ## A121610.P411288983179446270

`A037282(A225619(n+1))`
-/

namespace A121610.P411288983179446270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037282 (A225619 (n + 1)).toNat

end

end A121610.P411288983179446270

/-! ## A121610.P15683769007016261030

`record[A225619(A167430(n+1))]`
-/

namespace A121610.P15683769007016261030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225619 (A167430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121610.P15683769007016261030

/-! ## A121610.P17075264270132573096

`record[A225619(A200779(n+1))]`
-/

namespace A121610.P17075264270132573096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225619 (A200779 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121610.P17075264270132573096

/-! ## A121610.P2154496764600287314

`∩[A225619(n+1), A244644(n)]`
-/

namespace A121610.P2154496764600287314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121610.P2154496764600287314

/-! ## A121610.P4240634676643937865

`∩[A178223(n+1), A225619(n+1)]`
-/

namespace A121610.P4240634676643937865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121610.P4240634676643937865

/-!
# A121611: Number of ways to express n as an average of three distinct primes.

The programs for A121611, there is no canonical definition to state claims against.
-/

/-! ## A121611.P7031622180077264650

`A125688(3*(n+1))`
-/

namespace A121611.P7031622180077264650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (3 * (n + 1))

end

end A121611.P7031622180077264650

/-! ## A121611.P10156075179898086617

`or(char[3], A125688(A008585(n+1)))`
-/

namespace A121611.P10156075179898086617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A125688 (A008585 (n + 1)).toNat)

end

end A121611.P10156075179898086617

/-! ## A121611.P8998898890942036307

`A125688(Δ[(n+1)²]+n)%A000041(n)`
-/

namespace A121611.P8998898890942036307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) (A000041 n)

end

end A121611.P8998898890942036307

/-! ## A121611.P5143958189332765658

`A068307(3*(n+1))-A046926(3*(n+1))`
-/

namespace A121611.P5143958189332765658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (3 * (n + 1)) - A046926 (3 * (n + 1))

end

end A121611.P5143958189332765658

/-! ## A121611.P9082764484336454309

`A125688(A008585(n+1))%A001937(n)`
-/

namespace A121611.P9082764484336454309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125688 (A008585 (n + 1)).toNat) (A001937 n)

end

end A121611.P9082764484336454309

/-! ## A121611.P7602703947244132053

`A125688(A008585(n+1))/A000038(n)!`
-/

namespace A121611.P7602703947244132053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125688 (A008585 (n + 1)).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A121611.P7602703947244132053

/-! ## A121611.P12553469574819597919

`A125688(A008585(n+1))+char[A016900(n)]`
-/

namespace A121611.P12553469574819597919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A008585 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121611.P12553469574819597919

/-! ## A121611.P7863740093236509706

`A125688(A008585(n+1))/A007318(C(2, n))`
-/

namespace A121611.P7863740093236509706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125688 (A008585 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A121611.P7863740093236509706

/-! ## A121611.P15664649963673682048

`A125688(A008585(n+1))^A000010(C(2, n)!)`
-/

namespace A121611.P15664649963673682048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125688 (A008585 (n + 1)).toNat : ℚ) ^ (A000010 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A121611.P15664649963673682048

/-! ## A121611.P8916347881504685139

`A125688(A008585(n+1))^A000010(and(3, n²-3))`
-/

namespace A121611.P8916347881504685139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125688 (A008585 (n + 1)).toNat : ℚ) ^ (A000010 (Int.land 3 ((n ^ 2 : ℤ) - 3)).toNat : ℤ)

end

end A121611.P8916347881504685139

/-!
# A121613: Expansion of psi(-x)^4 in powers of x where psi() is a Ramanujan theta function.

The programs for A121613, the canonical program `A121613.P12497213193092273123` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121613 has offset 0).

The definition of A121613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121613.P12497213193092273123

`(-1)^n*A008438(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121613

/-- `(-1)^n*A008438(n)` -/
def P12497213193092273123.Spec : Prop :=
  ∀ n, P12497213193092273123.a n = A121613 n

theorem P12497213193092273123.correct : P12497213193092273123.Spec := by
  intro n
  simp only [A121613]

end A121613

/-! ## A121613.P14383707163554553088

`(-1)^n*∑{d}[2*n+1, #]`
-/

namespace A121613.P14383707163554553088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A121613.P14383707163554553088

namespace A121613

/-- `(-1)^n*∑{d}[2*n+1, #]` -/
def P14383707163554553088.Spec : Prop :=
  ∀ n, P14383707163554553088.a n = A121613 n

end A121613

/-! ## A121613.P12274870278482341733

`(-1)^n*A000203(Δ[n²])`
-/

namespace A121613.P12274870278482341733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A121613.P12274870278482341733

namespace A121613

/-- `(-1)^n*A000203(Δ[n²])` -/
def P12274870278482341733.Spec : Prop :=
  ∀ n, P12274870278482341733.a n = A121613 n

end A121613

/-! ## A121613.P13788169894691923792

`A000203(2*n+1)/(-1)^n`
-/

namespace A121613.P13788169894691923792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A121613.P13788169894691923792

namespace A121613

/-- `A000203(2*n+1)/(-1)^n` -/
def P13788169894691923792.Spec : Prop :=
  ∀ n, P13788169894691923792.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P2703451004254834519

`A008438(n)*A033999(n)`
-/

namespace A121613.P2703451004254834519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n * A033999 n

end

end A121613.P2703451004254834519

namespace A121613

/-- `A008438(n)*A033999(n)` -/
def P2703451004254834519.Spec : Prop :=
  ∀ n, P2703451004254834519.a n = A121613 n

end A121613

/-! ## A121613.P15042549200334088978

`A239052(n+1)/A174971(n)`
-/

namespace A121613.P15042549200334088978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239052 (n + 1) : ℚ) / (A174971 n : ℚ)

end

end A121613.P15042549200334088978

namespace A121613

/-- `A239052(n+1)/A174971(n)` -/
def P15042549200334088978.Spec : Prop :=
  ∀ n, P15042549200334088978.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P17281858379525959433

`∑{d}[A157142(n), A157142(n)/#]`
-/

namespace A121613.P17281858379525959433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A157142 n : ℚ) / (d : ℚ)

end

end A121613.P17281858379525959433

namespace A121613

/-- `∑{d}[A157142(n), A157142(n)/#]` -/
def P17281858379525959433.Spec : Prop :=
  ∀ n, P17281858379525959433.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P17725571565897836781

`A346865(n+1)/A143348(n+1)`
-/

namespace A121613.P17725571565897836781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346865 (n + 1) : ℚ) / (A143348 (n + 1) : ℚ)

end

end A121613.P17725571565897836781

namespace A121613

/-- `A346865(n+1)/A143348(n+1)` -/
def P17725571565897836781.Spec : Prop :=
  ∀ n, P17725571565897836781.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P16609839240268149437

`A000203(2*n+1)*A033999(n)`
-/

namespace A121613.P16609839240268149437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * A033999 n

end

end A121613.P16609839240268149437

namespace A121613

/-- `A000203(2*n+1)*A033999(n)` -/
def P16609839240268149437.Spec : Prop :=
  ∀ n, P16609839240268149437.a n = A121613 n

end A121613

/-! ## A121613.P315442965602019325

`A000203(2*n+1)*A062157(n+1)`
-/

namespace A121613.P315442965602019325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * A062157 (n + 1)

end

end A121613.P315442965602019325

namespace A121613

/-- `A000203(2*n+1)*A062157(n+1)` -/
def P315442965602019325.Spec : Prop :=
  ∀ n, P315442965602019325.a n = A121613 n

end A121613

/-! ## A121613.P469132556439592395

`A000203(2*n+1)*A009001(2*n)`
-/

namespace A121613.P469132556439592395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * A009001 (2 * n)

end

end A121613.P469132556439592395

namespace A121613

/-- `A000203(2*n+1)*A009001(2*n)` -/
def P469132556439592395.Spec : Prop :=
  ∀ n, P469132556439592395.a n = A121613 n

end A121613

/-! ## A121613.P2285426584321450905

`∑{d}[2*n+1, #]*A349341(A006519(n+1))`
-/

namespace A121613.P2285426584321450905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A349341 (A006519 (n + 1)).toNat

end

end A121613.P2285426584321450905

namespace A121613

/-- `∑{d}[2*n+1, #]*A349341(A006519(n+1))` -/
def P2285426584321450905.Spec : Prop :=
  ∀ n, P2285426584321450905.a n = A121613 n

end A121613

/-! ## A121613.P3269516473815366989

`∑{d}[A009001(2*n+1), #*A009001(2*n)]`
-/

namespace A121613.P3269516473815366989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A009001 (2 * n)

end

end A121613.P3269516473815366989

namespace A121613

/-- `∑{d}[A009001(2*n+1), #*A009001(2*n)]` -/
def P3269516473815366989.Spec : Prop :=
  ∀ n, P3269516473815366989.a n = A121613 n

end A121613

/-! ## A121613.P17071920105517783344

`A000203(2*n+1)*A008683(and(1, n-2)+1)`
-/

namespace A121613.P17071920105517783344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * A008683 (Int.land 1 ((n : ℤ) - 2) + 1).toNat

end

end A121613.P17071920105517783344

namespace A121613

/-- `A000203(2*n+1)*A008683(and(1, n-2)+1)` -/
def P17071920105517783344.Spec : Prop :=
  ∀ n, P17071920105517783344.a n = A121613 n

end A121613

/-! ## A121613.P277351313684152267

`A000203(2*n+1)*A008683(gcd(n+1, 1-n))`
-/

namespace A121613.P277351313684152267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * A008683 (Int.gcd (n + 1 : ℤ) (1 - (n : ℤ)))

end

end A121613.P277351313684152267

namespace A121613

/-- `A000203(2*n+1)*A008683(gcd(n+1, 1-n))` -/
def P277351313684152267.Spec : Prop :=
  ∀ n, P277351313684152267.a n = A121613 n

end A121613

/-! ## A121613.P10420300387938580284

`A000203(2*n+1)*A008683(lcm(2, n+2)/(n+2))`
-/

namespace A121613.P10420300387938580284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) * A008683 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A121613.P10420300387938580284

namespace A121613

/-- `A000203(2*n+1)*A008683(lcm(2, n+2)/(n+2))` -/
def P10420300387938580284.Spec : Prop :=
  ∀ n, P10420300387938580284.a n = A121613 n

end A121613

/-! ## A121613.P15526855474852401574

`A000118(n)*A008438(n)/A096727(n)`
-/

namespace A121613.P15526855474852401574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n * A008438 n : ℚ) / (A096727 n : ℚ)

end

end A121613.P15526855474852401574

namespace A121613

/-- `A000118(n)*A008438(n)/A096727(n)` -/
def P15526855474852401574.Spec : Prop :=
  ∀ n, P15526855474852401574.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P12241510410151714086

`A008438(n)*A097057(n)/A133690(n)`
-/

namespace A121613.P12241510410151714086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008438 n * A097057 n : ℚ) / (A133690 n : ℚ)

end

end A121613.P12241510410151714086

namespace A121613

/-- `A008438(n)*A097057(n)/A133690(n)` -/
def P12241510410151714086.Spec : Prop :=
  ∀ n, P12241510410151714086.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P2504513938846985291

`A207541(2*n+1)/4`
-/

namespace A121613.P2504513938846985291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207541 (2 * n + 1) : ℚ) / 4

end

end A121613.P2504513938846985291

namespace A121613

/-- `A207541(2*n+1)/4` -/
def P2504513938846985291.Spec : Prop :=
  ∀ n, P2504513938846985291.a n = (A121613 n : ℚ)

end A121613

/-! ## A121613.P12654939645071817587

`A236925(2*n+1)-A008438(n)`
-/

namespace A121613.P12654939645071817587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236925 (2 * n + 1) - A008438 n

end

end A121613.P12654939645071817587

namespace A121613

/-- `A236925(2*n+1)-A008438(n)` -/
def P12654939645071817587.Spec : Prop :=
  ∀ n, P12654939645071817587.a n = A121613 n

end A121613

/-!
# A121614: Numbers that have composite sum of digits and prime sum of squares of digits.

The programs for A121614, the canonical program `A121614.P7539545876056911518` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121614 has offset 1).

The definition of A121614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121614.P7539545876056911518

`∩[A104211(n+1), A108662(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121614

/-- `∩[A104211(n+1), A108662(n+1)]` -/
def P7539545876056911518.Spec : Prop :=
  ∀ n, (P7539545876056911518.a n : ℤ) = A121614 (n + 1)

theorem P7539545876056911518.correct : P7539545876056911518.Spec := by
  intro n
  simp only [A121614, Nat.add_sub_cancel]

end A121614

/-! ## A121614.P4913877425457338763

`∩[A108662(n+1), A141640(n+1)]`
-/

namespace A121614.P4913877425457338763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121614.P4913877425457338763

namespace A121614

/-- `∩[A108662(n+1), A141640(n+1)]` -/
def P4913877425457338763.Spec : Prop :=
  ∀ n, (P4913877425457338763.a n : ℤ) = A121614 (n + 1)

end A121614

/-!
# A121615: Lexicographically earliest sequence such that the k-th prime occurs altogether not more than k times as prime factor.

The programs for A121615, there is no canonical definition to state claims against.
-/

/-! ## A121615.P13714645012442829166

`or(A091247(A357488(n+1)), A117287(n+2))`
-/

namespace A121615.P13714645012442829166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091247 (A357488 (n + 1)).toNat) (A117287 (n + 2))

end

end A121615.P13714645012442829166

/-! ## A121615.P13221180871696316690

`A127708(2*n+3)+A117287(n+2)`
-/

namespace A121615.P13221180871696316690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (2 * n + 3) + A117287 (n + 2)

end

end A121615.P13221180871696316690

/-! ## A121615.P12903360794003984383

`or(A091247(A179070(n+1)), A117287(n+2))`
-/

namespace A121615.P12903360794003984383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091247 (A179070 (n + 1)).toNat) (A117287 (n + 2))

end

end A121615.P12903360794003984383

/-! ## A121615.P5240387242894746361

`or(A091247(A000043(n+1)), A117287(n+2))`
-/

namespace A121615.P5240387242894746361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091247 (A000043 (n + 1)).toNat) (A117287 (n + 2))

end

end A121615.P5240387242894746361

/-! ## A121615.P17195653919379455795

`∩[A098962(n+1), A127161(n+1)]`
-/

namespace A121615.P17195653919379455795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121615.P17195653919379455795

/-!
# A121616: Primes of form (k+1)^5 - k^5 = A022521(k).

The programs for A121616, there is no canonical definition to state claims against.
-/

/-! ## A121616.P9414065224735412864

`A022521(A121617(n+1)-1)`
-/

namespace A121616.P9414065224735412864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 (A121617 (n + 1) - 1).toNat

end

end A121616.P9414065224735412864

/-! ## A121616.P1855371048413051562

`A022521(A005917(A121617(n+1))%A121617(n+1))`
-/

namespace A121616.P1855371048413051562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 (Int.tmod (A005917 (A121617 (n + 1)).toNat) (A121617 (n + 1))).toNat

end

end A121616.P1855371048413051562

/-! ## A121616.P14965180143528529110

`∩[A002649(n+1), A022521(n)]`
-/

namespace A121616.P14965180143528529110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121616.P14965180143528529110

/-! ## A121616.P6644002456204320483

`∩[A090562(n+1), A022521(n)]`
-/

namespace A121616.P6644002456204320483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121616.P6644002456204320483

/-! ## A121616.P2509274437357064197

`∩[A002649(n+1), A090562(n+1)]`
-/

namespace A121616.P2509274437357064197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121616.P2509274437357064197

/-!
# A121617: Numbers n such that A022521(n-1) = n^5 - (n-1)^5 is prime.

The programs for A121617, there is no canonical definition to state claims against.
-/

/-! ## A121617.P13092254928450645362

`A111094(2*n+3)-A171977(A079004(n+1))`
-/

namespace A121617.P13092254928450645362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (2 * n + 3) - A171977 (A079004 (n + 1)).toNat

end

end A121617.P13092254928450645362

/-!
# A121618: Nexus primes of order 7 or primes of form n^7 - (n-1)^7 = A022523(n-1).

The programs for A121618, there is no canonical definition to state claims against.
-/

/-! ## A121618.P182315866488242398

`A022523(A113826(n+1))`
-/

namespace A121618.P182315866488242398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (A113826 (n + 1)).toNat

end

end A121618.P182315866488242398

/-! ## A121618.P14469803104813232923

`A022523(A121619(n+1)-1)`
-/

namespace A121618.P14469803104813232923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (A121619 (n + 1) - 1).toNat

end

end A121618.P14469803104813232923

/-! ## A121618.P9472441438597497147

`A001015(A121619(n+1))-A001015(A113826(n+1))`
-/

namespace A121618.P9472441438597497147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A121619 (n + 1)).toNat - A001015 (A113826 (n + 1)).toNat

end

end A121618.P9472441438597497147

/-! ## A121618.P17075181065817042039

`A022523(A005917(A121619(n+1))%A121619(n+1))`
-/

namespace A121618.P17075181065817042039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022523 (Int.tmod (A005917 (A121619 (n + 1)).toNat) (A121619 (n + 1))).toNat

end

end A121618.P17075181065817042039

/-! ## A121618.P13998773475197129791

`Δ[A221979(A028310(n))%A221979(n+1)]`
-/

namespace A121618.P13998773475197129791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221979 (A028310 n).toNat) (A221979 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121618.P13998773475197129791

/-!
# A121619: Indices n such that Nexus numbers of order 7 (A022523(n-1) = n^7 - (n-1)^7) are primes.

The programs for A121619, there is no canonical definition to state claims against.
-/

/-! ## A121619.P6984755814334950720

`A113826(n+1)+1`
-/

namespace A121619.P6984755814334950720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113826 (n + 1) + 1

end

end A121619.P6984755814334950720

/-! ## A121619.P11572544977506810801

`A020725(A113826(n+1))`
-/

namespace A121619.P11572544977506810801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A113826 (n + 1)).toNat

end

end A121619.P11572544977506810801

/-!
# A121621: Real part of (2 + 3i)^n.

The programs for A121621, the canonical program `A121621.P13244001076015537856` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121621 has offset 0).

The definition of A121621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121621.P13244001076015537856

`4*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121621

/-- `4*a(n-1)-13*a(n-2)` -/
def P13244001076015537856.Spec : Prop :=
  ∀ n, P13244001076015537856.a n = A121621 n

theorem P13244001076015537856.correct : P13244001076015537856.Spec := by
  intro n
  simp only [A121621]

end A121621

/-! ## A121621.P17185158058377711638

`ogf((1-2x)/(1-4x+13x^2))`
-/

namespace A121621.P17185158058377711638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 13] n

end

end A121621.P17185158058377711638

namespace A121621

/-- `ogf((1-2x)/(1-4x+13x^2))` -/
def P17185158058377711638.Spec : Prop :=
  ∀ n, P17185158058377711638.a n = A121621 n

end A121621

/-!
# A121622: Real part of (3 + 2i)^n.

The programs for A121622, the canonical program `A121622.P6180407391744983282` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121622 has offset 0).

The definition of A121622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121622.P6180407391744983282

`6*a(n-1)-13*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121622

/-- `6*a(n-1)-13*a(n-2)` -/
def P6180407391744983282.Spec : Prop :=
  ∀ n, P6180407391744983282.a n = A121622 n

theorem P6180407391744983282.correct : P6180407391744983282.Spec := by
  intro n
  simp only [A121622]

end A121622

/-! ## A121622.P12500224810568480931

`ogf((1-3x)/(1-6x+13x^2))`
-/

namespace A121622.P12500224810568480931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, 13] n

end

end A121622.P12500224810568480931

namespace A121622

/-- `ogf((1-3x)/(1-6x+13x^2))` -/
def P12500224810568480931.Spec : Prop :=
  ∀ n, P12500224810568480931.a n = A121622 n

end A121622

/-! ## A121622.P12709489134027018759

`(-1)^n*A009001(A188983(n))`
-/

namespace A121622.P12709489134027018759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009001 (A188983 n).toNat

end

end A121622.P12709489134027018759

namespace A121622

/-- `(-1)^n*A009001(A188983(n))` -/
def P12709489134027018759.Spec : Prop :=
  ∀ n, P12709489134027018759.a n = A121622 n

end A121622

/-! ## A121622.P16000384556222402147

`A009001(A188983(n))*A033999(n)`
-/

namespace A121622.P16000384556222402147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A188983 n).toNat * A033999 n

end

end A121622.P16000384556222402147

namespace A121622

/-- `A009001(A188983(n))*A033999(n)` -/
def P16000384556222402147.Spec : Prop :=
  ∀ n, P16000384556222402147.a n = A121622 n

end A121622

/-! ## A121622.P9759659215063560051

`A009001(A188983(n))*A009001(2*n)`
-/

namespace A121622.P9759659215063560051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A188983 n).toNat * A009001 (2 * n)

end

end A121622.P9759659215063560051

namespace A121622

/-- `A009001(A188983(n))*A009001(2*n)` -/
def P9759659215063560051.Spec : Prop :=
  ∀ n, P9759659215063560051.a n = A121622 n

end A121622

/-!
# A121623: Floor((prime(n)/n)^n).

The programs for A121623, there is no canonical definition to state claims against.
-/

/-! ## A121623.P7988374903369256116

`floor((A000040(n+1)/(n+1))^(n+1))`
-/

namespace A121623.P7988374903369256116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000040 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)⌋

end

end A121623.P7988374903369256116

/-! ## A121623.P12655466356423420315

`floor((A069675(n+1)/(n+1))^(n+1))`
-/

namespace A121623.P12655466356423420315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A069675 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)⌋

end

end A121623.P12655466356423420315

/-! ## A121623.P16774618797220469080

`floor((A069676(n+1)/(n+1))^(n+1))`
-/

namespace A121623.P16774618797220469080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A069676 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)⌋

end

end A121623.P16774618797220469080

/-! ## A121623.P14808718989880705516

`floor((A069677(n+1)/(n+1))^(n+1))`
-/

namespace A121623.P14808718989880705516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A069677 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)⌋

end

end A121623.P14808718989880705516

/-! ## A121623.P8752869947456048063

`(A062457(n+1)-A262207(n+1))/A000312(n+1)`
-/

namespace A121623.P8752869947456048063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062457 (n + 1) - A262207 (n + 1) : ℚ) / (A000312 (n + 1) : ℚ)

end

end A121623.P8752869947456048063

/-!
# A121624: Numbers k such that floor((prime(k)/k)^k) is prime.

The programs for A121624, there is no canonical definition to state claims against.
-/

/-! ## A121624.P14976125198374105254

`A072039(A148874(n+1))`
-/

namespace A121624.P14976125198374105254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072039 (A148874 (n + 1)).toNat

end

end A121624.P14976125198374105254

/-! ## A121624.P12530333963338390044

`A191426(A383829(n))+n`
-/

namespace A121624.P12530333963338390044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191426 (A383829 n).toNat + (n : ℤ)

end

end A121624.P12530333963338390044

/-!
# A121625: Real part of (n + n*i)^n.

The programs for A121625, the canonical program `A121625.P17625148713159675040` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121625 has offset 0).

The definition of A121625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121625.P17625148713159675040

`n^n*A146559(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121625

/-- `n^n*A146559(n)` -/
def P17625148713159675040.Spec : Prop :=
  ∀ n, P17625148713159675040.a n = A121625 n

theorem P17625148713159675040.correct : P17625148713159675040.Spec := by
  intro n
  simp only [A121625]

end A121625

/-! ## A121625.P18417728340443890140

`(-n)^n*A009116(n)`
-/

namespace A121625.P18417728340443890140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n * A009116 n

end

end A121625.P18417728340443890140

namespace A121625

/-- `(-n)^n*A009116(n)` -/
def P18417728340443890140.Spec : Prop :=
  ∀ n, P18417728340443890140.a n = A121625 n

end A121625

/-! ## A121625.P7881922320867160030

`n^n*A138231(2*n+1)`
-/

namespace A121625.P7881922320867160030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A138231 (2 * n + 1)

end

end A121625.P7881922320867160030

namespace A121625

/-- `n^n*A138231(2*n+1)` -/
def P7881922320867160030.Spec : Prop :=
  ∀ n, P7881922320867160030.a n = A121625 n

end A121625

/-! ## A121625.P4170438734008575372

`Δ[A009545(n)]*A000312(n)`
-/

namespace A121625.P4170438734008575372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000312 n

end

end A121625.P4170438734008575372

namespace A121625

/-- `Δ[A009545(n)]*A000312(n)` -/
def P4170438734008575372.Spec : Prop :=
  ∀ n, P4170438734008575372.a n = A121625 n

end A121625

/-! ## A121625.P16275458673586479808

`(A038503(n)-A038505(n))*n^n`
-/

namespace A121625.P16275458673586479808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038503 n - A038505 n) * (n ^ n : ℤ)

end

end A121625.P16275458673586479808

namespace A121625

/-- `(A038503(n)-A038505(n))*n^n` -/
def P16275458673586479808.Spec : Prop :=
  ∀ n, P16275458673586479808.a n = A121625 n

end A121625

/-!
# A121626: Real part of (1 + n*i)^n, where i=sqrt(-1).

The programs for A121626, there is no canonical definition to state claims against.
-/

/-! ## A121626.P2678996176431918601

`A378063(n)%A134660(A109457(n))`
-/

namespace A121626.P2678996176431918601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378063 n) (A134660 (A109457 n).toNat)

end

end A121626.P2678996176431918601

/-!
# A121627: Real part of a complex operation analogous to the factorials.

The programs for A121627, there is no canonical definition to state claims against.
-/

/-! ## A121627.P5092341940270373166

`(n+1)!*Δ[A099087(n)]`
-/

namespace A121627.P5092341940270373166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A121627.P5092341940270373166

/-! ## A121627.P15033440145997471620

`(n+1)!*A138232(2*n)`
-/

namespace A121627.P15033440145997471620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A138232 (2 * n)

end

end A121627.P15033440145997471620

/-! ## A121627.P9667992345974829767

`∏[n+1]*A146559(n+1)`
-/

namespace A121627.P9667992345974829767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A146559 (n + 1)

end

end A121627.P9667992345974829767

/-! ## A121627.P36720820627418514

`(n+1)!*Δ[A009545(n+1)]`
-/

namespace A121627.P36720820627418514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A121627.P36720820627418514

/-! ## A121627.P14258438512447396392

`Δ[A009545(n+1)]*A000142(n+1)`
-/

namespace A121627.P14258438512447396392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000142 (n + 1)

end

end A121627.P14258438512447396392

/-!
# A121628: Nonnegative k such that 3*k + 1 is a perfect cube.

The programs for A121628, the canonical program `A121628.P12785342200933405274` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121628 has offset 1).

The definition of A121628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121628.P12785342200933405274

`3*n*(1+3*n+3*n²)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121628

/-- `3*n*(1+3*n+3*n²)` -/
def P12785342200933405274.Spec : Prop :=
  ∀ n, (P12785342200933405274.a n : ℤ) = A121628 (n + 1)

theorem P12785342200933405274.correct : P12785342200933405274.Spec := by
  intro n
  simp only [A121628, Nat.add_sub_cancel]

end A121628

/-! ## A121628.P9953102968044095928

`lcm(3*n, Δ[n*n²])`
-/

namespace A121628.P9953102968044095928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A121628.P9953102968044095928

namespace A121628

/-- `lcm(3*n, Δ[n*n²])` -/
def P9953102968044095928.Spec : Prop :=
  ∀ n, (P9953102968044095928.a n : ℤ) = A121628 (n + 1)

end A121628

/-! ## A121628.P6142143910842197656

`2*n*C(3*n+2, 2)+n`
-/

namespace A121628.P6142143910842197656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (3 * n + 2) 2 + n

end

end A121628.P6142143910842197656

namespace A121628

/-- `2*n*C(3*n+2, 2)+n` -/
def P6142143910842197656.Spec : Prop :=
  ∀ n, (P6142143910842197656.a n : ℤ) = A121628 (n + 1)

end A121628

/-! ## A121628.P10626685620258134733

`floor(sqrt(A282232(n)))`
-/

namespace A121628.P10626685620258134733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A282232 n)

end

end A121628.P10626685620258134733

namespace A121628

/-- `floor(sqrt(A282232(n)))` -/
def P10626685620258134733.Spec : Prop :=
  ∀ n, P10626685620258134733.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P8194101566423743163

`floor(A016779(n)/3)`
-/

namespace A121628.P8194101566423743163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016779 n : ℚ) / 3⌋

end

end A121628.P8194101566423743163

namespace A121628

/-- `floor(A016779(n)/3)` -/
def P8194101566423743163.Spec : Prop :=
  ∀ n, P8194101566423743163.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P1126971313248927290

`n*A001504(n)+n`
-/

namespace A121628.P1126971313248927290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001504 n + (n : ℤ)

end

end A121628.P1126971313248927290

namespace A121628

/-- `n*A001504(n)+n` -/
def P1126971313248927290.Spec : Prop :=
  ∀ n, P1126971313248927290.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P11432707809273502077

`Δ[A100255(n)-n²]`
-/

namespace A121628.P11432707809273502077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100255 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121628.P11432707809273502077

namespace A121628

/-- `Δ[A100255(n)-n²]` -/
def P11432707809273502077.Spec : Prop :=
  ∀ n, P11432707809273502077.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P267504823502174990

`floor(sqrt(floor(A016782(n)/9)))`
-/

namespace A121628.P267504823502174990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊(A016782 n : ℚ) / 9⌋

end

end A121628.P267504823502174990

namespace A121628

/-- `floor(sqrt(floor(A016782(n)/9)))` -/
def P267504823502174990.Spec : Prop :=
  ∀ n, P267504823502174990.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P2534550804351492519

`A195319(n)+A085409(n)`
-/

namespace A121628.P2534550804351492519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + A085409 n

end

end A121628.P2534550804351492519

namespace A121628

/-- `A195319(n)+A085409(n)` -/
def P2534550804351492519.Spec : Prop :=
  ∀ n, P2534550804351492519.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P9628479752149797527

`A244728(n)+A045945(n)`
-/

namespace A121628.P9628479752149797527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244728 n + A045945 n

end

end A121628.P9628479752149797527

namespace A121628

/-- `A244728(n)+A045945(n)` -/
def P9628479752149797527.Spec : Prop :=
  ∀ n, P9628479752149797527.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P14621435576116270362

`A214659(n)+A188050(n)`
-/

namespace A121628.P14621435576116270362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214659 n + A188050 n

end

end A121628.P14621435576116270362

namespace A121628

/-- `A214659(n)+A188050(n)` -/
def P14621435576116270362.Spec : Prop :=
  ∀ n, P14621435576116270362.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P12145813516085799331

`A299965(n)-A242135(n)`
-/

namespace A121628.P12145813516085799331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299965 n - A242135 n

end

end A121628.P12145813516085799331

namespace A121628

/-- `A299965(n)-A242135(n)` -/
def P12145813516085799331.Spec : Prop :=
  ∀ n, P12145813516085799331.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P15567124625521032891

`A100165(n+1)-A080859(n)`
-/

namespace A121628.P15567124625521032891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100165 (n + 1) - A080859 n

end

end A121628.P15567124625521032891

namespace A121628

/-- `A100165(n+1)-A080859(n)` -/
def P15567124625521032891.Spec : Prop :=
  ∀ n, P15567124625521032891.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P6132441411982841084

`A287335(n+1)-A001504(n)`
-/

namespace A121628.P6132441411982841084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287335 (n + 1) - A001504 n

end

end A121628.P6132441411982841084

namespace A121628

/-- `A287335(n+1)-A001504(n)` -/
def P6132441411982841084.Spec : Prop :=
  ∀ n, P6132441411982841084.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P5447215770620010222

`A316224(n)+2*A027480(n)`
-/

namespace A121628.P5447215770620010222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + 2 * A027480 n

end

end A121628.P5447215770620010222

namespace A121628

/-- `A316224(n)+2*A027480(n)` -/
def P5447215770620010222.Spec : Prop :=
  ∀ n, P5447215770620010222.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P14101757332422595588

`A249354(n)+2*A249354(n)`
-/

namespace A121628.P14101757332422595588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n + 2 * A249354 n

end

end A121628.P14101757332422595588

namespace A121628

/-- `A249354(n)+2*A249354(n)` -/
def P14101757332422595588.Spec : Prop :=
  ∀ n, P14101757332422595588.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P4506129174012946822

`A045945(n)+n*A016766(n)`
-/

namespace A121628.P4506129174012946822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + (n : ℤ) * A016766 n

end

end A121628.P4506129174012946822

namespace A121628

/-- `A045945(n)+n*A016766(n)` -/
def P4506129174012946822.Spec : Prop :=
  ∀ n, P4506129174012946822.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P13924037359069531740

`A016789(n)*A049451(n)+n`
-/

namespace A121628.P13924037359069531740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n * A049451 n + (n : ℤ)

end

end A121628.P13924037359069531740

namespace A121628

/-- `A016789(n)*A049451(n)+n` -/
def P13924037359069531740.Spec : Prop :=
  ∀ n, P13924037359069531740.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P270107347827491508

`A005843(n)*A060544(n+1)+n`
-/

namespace A121628.P270107347827491508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A060544 (n + 1) + (n : ℤ)

end

end A121628.P270107347827491508

namespace A121628

/-- `A005843(n)*A060544(n+1)+n` -/
def P270107347827491508.Spec : Prop :=
  ∀ n, P270107347827491508.a n = A121628 (n + 1)

end A121628

/-! ## A121628.P17332302974216321952

`(A270710(n)+1)*A016777(n)+n`
-/

namespace A121628.P17332302974216321952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A270710 n + 1) * A016777 n + (n : ℤ)

end

end A121628.P17332302974216321952

namespace A121628

/-- `(A270710(n)+1)*A016777(n)+n` -/
def P17332302974216321952.Spec : Prop :=
  ∀ n, P17332302974216321952.a n = A121628 (n + 1)

end A121628

/-!
# A121629: Finite sum involving signless Stirling numbers of the first kind and the Bell numbers. Appears in the process of normal ordering of n-th power of (a)^2*(a+*a), where a+ and a are boson creation and annihilation operators, respectively.

The programs for A121629, there is no canonical definition to state claims against.
-/

/-! ## A121629.P14815792892303132160

`A113763((2*n+1)*a(n-1))` with `a(0)=1`
-/

namespace A121629.P14815792892303132160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113763 ((2 * n + 1 : ℤ) * a (n - 1)).toNat

end

end A121629.P14815792892303132160

/-!
# A121630: Finite sum involving signless Stirling numbers of the first kind and the Bell numbers. Appears in the process of normal ordering of n-th power of (a)^3*(a+*a), where a+ and a are boson creation and annihilation operators, respectively.

The programs for A121630, there is no canonical definition to state claims against.
-/

/-! ## A121630.P17973070088485289971

`A057359(A182053(n)+A024216(n))`
-/

namespace A121630.P17973070088485289971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A182053 n + A024216 n).toNat

end

end A121630.P17973070088485289971

/-!
# A121631: Finite sum involving signless Stirling numbers of the first kind and the Bell numbers. Appears in the process of normal ordering of n-th power of (a)^4*(a+*a), where a+ and a are boson creation and annihilation operators, respectively.

The programs for A121631, there is no canonical definition to state claims against.
-/

/-! ## A121631.P15428325914604980868

`A068719(A001813(n))+A001318(n)`
-/

namespace A121631.P15428325914604980868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A001813 n).toNat + A001318 n

end

end A121631.P15428325914604980868

/-!
# A121633: Sum of the bottom levels of the last column over all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121633, the canonical program `A121633.P15864642843842844716` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121633 has offset 1).

The definition of A121633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121633.P15864642843842844716

`(n+1)*a(n-1)+n!-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121633

/-- `(n+1)*a(n-1)+n!-1` -/
def P15864642843842844716.Spec : Prop :=
  ∀ n, P15864642843842844716.a n = A121633 (n + 1)

theorem P15864642843842844716.correct : P15864642843842844716.Spec := by
  intro n
  simp only [A121633, Nat.add_sub_cancel]

end A121633

/-! ## A121633.P8425660564697813512

`A000142(n)+(n+1)*a(n-1)-1` with `a(0)=0`
-/

namespace A121633.P8425660564697813512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000142 n + (n + 1 : ℤ) * a (n - 1) - 1

end

end A121633.P8425660564697813512

namespace A121633

/-- `A000142(n)+(n+1)*a(n-1)-1` -/
def P8425660564697813512.Spec : Prop :=
  ∀ n, P8425660564697813512.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P9727130730895736189

`A186760(n+1)-record[A094587(n)]`
-/

namespace A121633.P9727130730895736189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186760 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121633.P9727130730895736189

namespace A121633

/-- `A186760(n+1)-record[A094587(n)]` -/
def P9727130730895736189.Spec : Prop :=
  ∀ n, P9727130730895736189.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P17018534878489534505

`A186768(n+1)+A184958(n+1)`
-/

namespace A121633.P17018534878489534505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186768 (n + 1) + A184958 (n + 1)

end

end A121633.P17018534878489534505

namespace A121633

/-- `A186768(n+1)+A184958(n+1)` -/
def P17018534878489534505.Spec : Prop :=
  ∀ n, P17018534878489534505.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P9227063061705521292

`A187252(n+1)+A187246(n+1)`
-/

namespace A121633.P9227063061705521292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187252 (n + 1) + A187246 (n + 1)

end

end A121633.P9227063061705521292

namespace A121633

/-- `A187252(n+1)+A187246(n+1)` -/
def P9227063061705521292.Spec : Prop :=
  ∀ n, P9227063061705521292.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P5664824613735035272

`A000774(n+1)-A000522(n+1)`
-/

namespace A121633.P5664824613735035272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 (n + 1) - A000522 (n + 1)

end

end A121633.P5664824613735035272

namespace A121633

/-- `A000774(n+1)-A000522(n+1)` -/
def P5664824613735035272.Spec : Prop :=
  ∀ n, P5664824613735035272.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P11467666973547589578

`A000254(n+1)-A002627(n+1)`
-/

namespace A121633.P11467666973547589578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - A002627 (n + 1)

end

end A121633.P11467666973547589578

namespace A121633

/-- `A000254(n+1)-A002627(n+1)` -/
def P11467666973547589578.Spec : Prop :=
  ∀ n, P11467666973547589578.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P3674700906079933205

`A186760(n+1)-A000142(n+1)`
-/

namespace A121633.P3674700906079933205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186760 (n + 1) - A000142 (n + 1)

end

end A121633.P3674700906079933205

namespace A121633

/-- `A186760(n+1)-A000142(n+1)` -/
def P3674700906079933205.Spec : Prop :=
  ∀ n, P3674700906079933205.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P5052805967380952040

`abs(A081048(n+1))-A002627(n+1)`
-/

namespace A121633.P5052805967380952040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081048 (n + 1)| - A002627 (n + 1)

end

end A121633.P5052805967380952040

namespace A121633

/-- `abs(A081048(n+1))-A002627(n+1)` -/
def P5052805967380952040.Spec : Prop :=
  ∀ n, P5052805967380952040.a n = A121633 (n + 1)

end A121633

/-! ## A121633.P8051121230282368805

`A186760(n+1)-A094587(A000124(n+1))`
-/

namespace A121633.P8051121230282368805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186760 (n + 1) - A094587 (A000124 (n + 1)).toNat

end

end A121633.P8051121230282368805

namespace A121633

/-- `A186760(n+1)-A094587(A000124(n+1))` -/
def P8051121230282368805.Spec : Prop :=
  ∀ n, P8051121230282368805.a n = A121633 (n + 1)

end A121633

/-!
# A121634: Triangle read by rows: T(n,k) is the number of deco polyominoes of height n and having k 2-cell columns starting at level 0 (n >= 1; 0 <= k <= n-1).

The programs for A121634, there is no canonical definition to state claims against.
-/

/-! ## A121634.P5402889660159753330

`A373624(A096294(n))`
-/

namespace A121634.P5402889660159753330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A096294 n).toNat

end

end A121634.P5402889660159753330

/-! ## A121634.P5828071430346901576

`∑{d}[A179430(n), A093719(#)]`
-/

namespace A121634.P5828071430346901576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A093719 d

end

end A121634.P5828071430346901576

/-!
# A121635: Number of deco polyominoes of height n, having no 2-cell columns starting at level 0. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121635, the canonical program `A121635.P17371205226425154134` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121635 has offset 1).

The definition of A121635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121635.P17371205226425154134

`(n-1)*((n-1)!+a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121635

/-- `(n-1)*((n-1)!+a(n-1))` -/
def P17371205226425154134.Spec : Prop :=
  ∀ n, P17371205226425154134.a n = A121635 (n + 1)

theorem P17371205226425154134.correct : P17371205226425154134.Spec := by
  intro n
  simp only [A121635, Nat.add_sub_cancel]

end A121635

/-! ## A121635.P9430827729639780834

`abs(1-n)!*∑[abs(1-n)]`
-/

namespace A121635.P9430827729639780834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121635.P9430827729639780834

namespace A121635

/-- `abs(1-n)!*∑[abs(1-n)]` -/
def P9430827729639780834.Spec : Prop :=
  ∀ n, P9430827729639780834.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P16784767523990581394

`(A000124(n)+n-2*n)*abs(1-n)!`
-/

namespace A121635.P16784767523990581394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000124 n + (n : ℤ) - (2 * n : ℤ)) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)

end

end A121635.P16784767523990581394

namespace A121635

/-- `(A000124(n)+n-2*n)*abs(1-n)!` -/
def P16784767523990581394.Spec : Prop :=
  ∀ n, P16784767523990581394.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P13992372812194195651

`(C(n, 2)+1)*A094587((n²-n)/2+1)`
-/

namespace A121635.P13992372812194195651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1 : ℤ) * A094587 (SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 + 1)).toNat

end

end A121635.P13992372812194195651

namespace A121635

/-- `(C(n, 2)+1)*A094587((n²-n)/2+1)` -/
def P13992372812194195651.Spec : Prop :=
  ∀ n, P13992372812194195651.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P2930133933222217223

`(1-Δ[-C(n, 3)])*A094587(lcm(n, n-1)/2+1)`
-/

namespace A121635.P2930133933222217223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * A094587 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2 + 1)).toNat

end

end A121635.P2930133933222217223

namespace A121635

/-- `(1-Δ[-C(n, 3)])*A094587(lcm(n, n-1)/2+1)` -/
def P2930133933222217223.Spec : Prop :=
  ∀ n, P2930133933222217223.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P7851416746761025548

`A081123(A004273(n))*A152947(n+1)`
-/

namespace A121635.P7851416746761025548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A004273 n).toNat * A152947 (n + 1)

end

end A121635.P7851416746761025548

namespace A121635

/-- `A081123(A004273(n))*A152947(n+1)` -/
def P7851416746761025548.Spec : Prop :=
  ∀ n, P7851416746761025548.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P16187955260566768708

`A081123(A004275(n))*A152947(n+1)`
-/

namespace A121635.P16187955260566768708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A004275 n).toNat * A152947 (n + 1)

end

end A121635.P16187955260566768708

namespace A121635

/-- `A081123(A004275(n))*A152947(n+1)` -/
def P16187955260566768708.Spec : Prop :=
  ∀ n, P16187955260566768708.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P684520355700819963

`(A161680(n)+1)*A081123(A004273(n))`
-/

namespace A121635.P684520355700819963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161680 n + 1) * A081123 (A004273 n).toNat

end

end A121635.P684520355700819963

namespace A121635

/-- `(A161680(n)+1)*A081123(A004273(n))` -/
def P684520355700819963.Spec : Prop :=
  ∀ n, P684520355700819963.a n = A121635 (n + 1)

end A121635

/-! ## A121635.P3820892358320219991

`A098361(A000124(n))*A152947(n+1)`
-/

namespace A121635.P3820892358320219991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat * A152947 (n + 1)

end

end A121635.P3820892358320219991

namespace A121635

/-- `A098361(A000124(n))*A152947(n+1)` -/
def P3820892358320219991.Spec : Prop :=
  ∀ n, P3820892358320219991.a n = A121635 (n + 1)

end A121635

/-!
# A121636: Number of 2-cell columns starting at level 0 in all of deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121636, the canonical program `A121636.P14961982792447088551` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121636 has offset 1).

The definition of A121636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121636.P14961982792447088551

`(n+1)*(n-1)!+n*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121636

/-- `(n+1)*(n-1)!+n*a(n-1)` -/
def P14961982792447088551.Spec : Prop :=
  ∀ n, (P14961982792447088551.a n : ℤ) = A121636 (n + 1)

theorem P14961982792447088551.correct : P14961982792447088551.Spec := by
  intro n
  simp only [A121636, Nat.add_sub_cancel]

end A121636

/-! ## A121636.P4308304487438685022

`Δ[n!]-A081047(A028310(n))`
-/

namespace A121636.P4308304487438685022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A081047 (A028310 n).toNat

end

end A121636.P4308304487438685022

namespace A121636

/-- `Δ[n!]-A081047(A028310(n))` -/
def P4308304487438685022.Spec : Prop :=
  ∀ n, P4308304487438685022.a n = A121636 (n + 1)

end A121636

/-! ## A121636.P10476162448994666306

`Δ[n*A104150(n)]-A081047(n)`
-/

namespace A121636.P10476162448994666306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081047 n

end

end A121636.P10476162448994666306

namespace A121636

/-- `Δ[n*A104150(n)]-A081047(n)` -/
def P10476162448994666306.Spec : Prop :=
  ∀ n, P10476162448994666306.a n = A121636 (n + 1)

end A121636

/-! ## A121636.P10400238095107450733

`A000254(n)+n*A094304(n+1)`
-/

namespace A121636.P10400238095107450733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n + (n : ℤ) * A094304 (n + 1)

end

end A121636.P10400238095107450733

namespace A121636

/-- `A000254(n)+n*A094304(n+1)` -/
def P10400238095107450733.Spec : Prop :=
  ∀ n, P10400238095107450733.a n = A121636 (n + 1)

end A121636

/-! ## A121636.P5633095239253357194

`A001563(n)-A081047(A028310(n))`
-/

namespace A121636.P5633095239253357194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n - A081047 (A028310 n).toNat

end

end A121636.P5633095239253357194

namespace A121636

/-- `A001563(n)-A081047(A028310(n))` -/
def P5633095239253357194.Spec : Prop :=
  ∀ n, P5633095239253357194.a n = A121636 (n + 1)

end A121636

/-! ## A121636.P2987663732542921627

`A130534(A000124(n))+Δ[A065355(n)]`
-/

namespace A121636.P2987663732542921627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000124 n).toNat + (f1 (n + 1) - f1 n)

end

end A121636.P2987663732542921627

namespace A121636

/-- `A130534(A000124(n))+Δ[A065355(n)]` -/
def P2987663732542921627.Spec : Prop :=
  ∀ n, P2987663732542921627.a n = A121636 (n + 1)

end A121636

/-! ## A121636.P13669740100121058991

`A000142(n+1)+A000254(n)-A098558(n)`
-/

namespace A121636.P13669740100121058991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + (A000254 n - A098558 n)

end

end A121636.P13669740100121058991

namespace A121636

/-- `A000142(n+1)+A000254(n)-A098558(n)` -/
def P13669740100121058991.Spec : Prop :=
  ∀ n, P13669740100121058991.a n = A121636 (n + 1)

end A121636

/-!
# A121638: Number of deco polyominoes of height n, having no 2-cell columns. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121638, the canonical program `A121638.P12559800315656564515` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121638 has offset 1).

The definition of A121638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121638.P12559800315656564515

`n*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121638

/-- `n*a(n-1)+a(n-3)` -/
def P12559800315656564515.Spec : Prop :=
  ∀ n, (P12559800315656564515.a n : ℤ) = A121638 (n + 1)

theorem P12559800315656564515.correct : P12559800315656564515.Spec := by
  intro n
  simp only [A121638, Nat.add_sub_cancel]

end A121638

/-! ## A121638.P267046633953499443

`n*a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A121638.P267046633953499443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - (-a (n - 3))

end

end A121638.P267046633953499443

namespace A121638

/-- `n*a(n-1)-floor(-a(n-3))` -/
def P267046633953499443.Spec : Prop :=
  ∀ n, P267046633953499443.a n = A121638 (n + 1)

end A121638

/-! ## A121638.P15633022735591240354

`a(n-3)+a(n-1)/tan(acot(n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A121638.P15633022735591240354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A121638.P15633022735591240354

namespace A121638

/-- `a(n-3)+a(n-1)/tan(acot(n))` -/
def P15633022735591240354.Spec : Prop :=
  ∀ n, P15633022735591240354.a n = (A121638 (n + 1) : ℝ)

end A121638

/-! ## A121638.P16739516098988221158

`a(n-3)+a(n-1)/n^(-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A121638.P16739516098988221158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A121638.P16739516098988221158

namespace A121638

/-- `a(n-3)+a(n-1)/n^(-1)` -/
def P16739516098988221158.Spec : Prop :=
  ∀ n, P16739516098988221158.a n = (A121638 (n + 1) : ℚ)

end A121638

/-! ## A121638.P11957142443777727464

`a(n-3)-a(n-1)*A001489(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A121638.P11957142443777727464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) - a (n - 1) * A001489 n

end

end A121638.P11957142443777727464

namespace A121638

/-- `a(n-3)-a(n-1)*A001489(n)` -/
def P11957142443777727464.Spec : Prop :=
  ∀ n, P11957142443777727464.a n = A121638 (n + 1)

end A121638

/-!
# A121639: Number of 2-cell columns in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121639, the canonical program `A121639.P2258809906357764166` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121639 has offset 1).

The definition of A121639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121639.P2258809906357764166

`(n+1)*a(n-1)+n!-(n-2)!` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121639

/-- `(n+1)*a(n-1)+n!-(n-2)!` -/
def P2258809906357764166.Spec : Prop :=
  ∀ n, P2258809906357764166.a n = A121639 (n + 1)

theorem P2258809906357764166.correct : P2258809906357764166.Spec := by
  intro n
  simp only [A121639, Nat.add_sub_cancel]

end A121639

/-! ## A121639.P2782311839354000118

`Δ[A057359(A052881(n))]`
-/

namespace A121639.P2782311839354000118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A052881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121639.P2782311839354000118

namespace A121639

/-- `Δ[A057359(A052881(n))]` -/
def P2782311839354000118.Spec : Prop :=
  ∀ n, P2782311839354000118.a n = A121639 (n + 1)

end A121639

/-!
# A121640: a(1) = 1. a(n) = a(n-1) + (n-th integer from among those positive integers which are coprime to a(n-1)).

The programs for A121640, there is no canonical definition to state claims against.
-/

/-! ## A121640.P16377576125253630318

`∑[A121528(n+1)]`
-/

namespace A121640.P16377576125253630318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121640.P16377576125253630318

/-! ## A121640.P14675979623370057759

`A121528(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A121640.P14675979623370057759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121528 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A121640.P14675979623370057759

/-! ## A121640.P15930409788363802742

`A121528(abs(1-n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A121640.P15930409788363802742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121528 (|1 - (n : ℤ)| + 2).toNat + a (n - 1)

end

end A121640.P15930409788363802742

/-! ## A121640.P14823694124181902308

`∑[A121528(-xor(n, -1))/A000034(2*n)]`
-/

namespace A121640.P14823694124181902308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121528 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / (A000034 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121640.P14823694124181902308

/-! ## A121640.P12062952874670239623

`∑[A121528(ϕ²-(ϕ-n))/A000034(2*n)]`
-/

namespace A121640.P12062952874670239623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121528 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / (A000034 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121640.P12062952874670239623

/-! ## A121640.P9210902596856923354

`a(n-1)+A121528(n+1)/A000034(2*n)` with `a(0)=1`
-/

namespace A121640.P9210902596856923354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A121528 (n + 1) : ℚ) / (A000034 (2 * n) : ℚ)

end

end A121640.P9210902596856923354

/-! ## A121640.P1319030236264665471

`a(n-1)+A121528(n+1)/A007913((n+1)²)` with `a(0)=1`
-/

namespace A121640.P1319030236264665471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A121528 (n + 1) : ℚ) / (A007913 ((n + 1) ^ 2) : ℚ)

end

end A121640.P1319030236264665471

/-!
# A121641: a(0) = 1. a(n) = a(n-1) + (n-th integer from among those positive integers which are coprime to a(n-1)).

The programs for A121641, there is no canonical definition to state claims against.
-/

/-! ## A121641.P163114785483998609

`∑[A121527(n)]`
-/

namespace A121641.P163114785483998609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121641.P163114785483998609

/-!
# A121642: Numbers with composite sum of digits and prime sum of cubes of digits.

The programs for A121642, there is no canonical definition to state claims against.
-/

/-! ## A121642.P1950307503644411932

`∩[A028839(n+1), A225534(n+1)]`
-/

namespace A121642.P1950307503644411932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121642.P1950307503644411932

/-! ## A121642.P10382681656263165925

`∩[A141640(n+1), A225534(n+1)]`
-/

namespace A121642.P10382681656263165925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121642.P10382681656263165925

/-!
# A121644: Slowest increasing sequence with squarefree cumulative sums.

The programs for A121644, there is no canonical definition to state claims against.
-/

/-! ## A121644.P9639442135181156084

`eq[char[A120645(n+1)], A151933(n)]`
-/

namespace A121644.P9639442135181156084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120645 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A121644.P9639442135181156084

/-! ## A121644.P4732435582591095957

`eq[char[A120645(n+1)], A151622(n)]`
-/

namespace A121644.P4732435582591095957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120645 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A121644.P4732435582591095957

/-! ## A121644.P1242306970615368267

`eq[A005088(n+7), A005089(A195441(n+2))]`
-/

namespace A121644.P1242306970615368267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A195441 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121644.P1242306970615368267

/-! ## A121644.P15305285148801572286

`eq[char[A120645(n+1)], A151660(n)]`
-/

namespace A121644.P15305285148801572286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120645 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A121644.P15305285148801572286

/-! ## A121644.P16082569768712252396

`eq[char[A168532(A050047(2*(n+1)))+2*(n+3)], A151660(n)]`
-/

namespace A121644.P16082569768712252396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A050047 (2 * (n + 1))).toNat + (2 * (n + 3) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A121644.P16082569768712252396

/-!
# A121646: a(n) = Fibonacci(n-1)^2 - Fibonacci(n)^2.

The programs for A121646, the canonical program `A121646.P14075488146765142285` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121646 has offset 1).

The definition of A121646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121646.P9882040399408769955

`ogf((1-2x+x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A121646.P9882040399408769955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, -1] [1, -2, -2, 1] n

end

end A121646.P9882040399408769955

namespace A121646

/-- `ogf((1-2x+x^2)/(-1+2x+2x^2-x^3))` -/
def P9882040399408769955.Spec : Prop :=
  ∀ n, P9882040399408769955.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P14075488146765142285

`-A226205(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121646

/-- `-A226205(n+1)` -/
def P14075488146765142285.Spec : Prop :=
  ∀ n, P14075488146765142285.a n = A121646 (n + 1)

theorem P14075488146765142285.correct : P14075488146765142285.Spec := by
  intro n
  simp only [A121646, Nat.add_sub_cancel]

end A121646

/-! ## A121646.P15840834969933400531

`-A236165(2*n+1)`
-/

namespace A121646.P15840834969933400531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A236165 (2 * n + 1)

end

end A121646.P15840834969933400531

namespace A121646

/-- `-A236165(2*n+1)` -/
def P15840834969933400531.Spec : Prop :=
  ∀ n, P15840834969933400531.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P8228269892248171926

`n-xor(1, n)-∑[A007598(n)]`
-/

namespace A121646.P8228269892248171926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.xor 1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121646.P8228269892248171926

namespace A121646

/-- `n-xor(1, n)-∑[A007598(n)]` -/
def P8228269892248171926.Spec : Prop :=
  ∀ n, P8228269892248171926.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P15212392852687396469

`A033999(n+1)-A001654(n)`
-/

namespace A121646.P15212392852687396469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A001654 n

end

end A121646.P15212392852687396469

namespace A121646

/-- `A033999(n+1)-A001654(n)` -/
def P15212392852687396469.Spec : Prop :=
  ∀ n, P15212392852687396469.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P11075338866903981078

`A010684(n)-(A001654(n)+2)`
-/

namespace A121646.P11075338866903981078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n - (A001654 n + 2)

end

end A121646.P11075338866903981078

namespace A121646

/-- `A010684(n)-(A001654(n)+2)` -/
def P11075338866903981078.Spec : Prop :=
  ∀ n, P11075338866903981078.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P16896164917547104632

`A105812(n+2)-A001654(n)`
-/

namespace A121646.P16896164917547104632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 2) - A001654 n

end

end A121646.P16896164917547104632

namespace A121646

/-- `A105812(n+2)-A001654(n)` -/
def P16896164917547104632.Spec : Prop :=
  ∀ n, P16896164917547104632.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P15032196360963871832

`2-(A176040(n)+A001654(n))`
-/

namespace A121646.P15032196360963871832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A176040 n + A001654 n)

end

end A121646.P15032196360963871832

namespace A121646

/-- `2-(A176040(n)+A001654(n))` -/
def P15032196360963871832.Spec : Prop :=
  ∀ n, P15032196360963871832.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P520746997608709312

`n-(A004442(n)+A001654(n))`
-/

namespace A121646.P520746997608709312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004442 n + A001654 n)

end

end A121646.P520746997608709312

namespace A121646

/-- `n-(A004442(n)+A001654(n))` -/
def P520746997608709312.Spec : Prop :=
  ∀ n, P520746997608709312.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P7716366921497721909

`-(A000045(n+2)*A212804(n))`
-/

namespace A121646.P7716366921497721909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000045 (n + 2) * A212804 n)

end

end A121646.P7716366921497721909

namespace A121646

/-- `-(A000045(n+2)*A212804(n))` -/
def P7716366921497721909.Spec : Prop :=
  ∀ n, P7716366921497721909.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P3654128330265990619

`A152163(n)²-A295684(2*n)`
-/

namespace A121646.P3654128330265990619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n ^ 2 - A295684 (2 * n)

end

end A121646.P3654128330265990619

namespace A121646

/-- `A152163(n)²-A295684(2*n)` -/
def P3654128330265990619.Spec : Prop :=
  ∀ n, P3654128330265990619.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P9407984669017563200

`A033999(n+1)-∑[A007598(n)]`
-/

namespace A121646.P9407984669017563200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121646.P9407984669017563200

namespace A121646

/-- `A033999(n+1)-∑[A007598(n)]` -/
def P9407984669017563200.Spec : Prop :=
  ∀ n, P9407984669017563200.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P701560560498831060

`-(A033999(n)+∑[A000045(n)²])`
-/

namespace A121646.P701560560498831060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121646.P701560560498831060

namespace A121646

/-- `-(A033999(n)+∑[A000045(n)²])` -/
def P701560560498831060.Spec : Prop :=
  ∀ n, P701560560498831060.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P12621662656376372982

`Δ[Δ[A000045(n)]²]-A001906(n)`
-/

namespace A121646.P12621662656376372982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001906 n

end

end A121646.P12621662656376372982

namespace A121646

/-- `Δ[Δ[A000045(n)]²]-A001906(n)` -/
def P12621662656376372982.Spec : Prop :=
  ∀ n, P12621662656376372982.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P11429691004573377927

`A000035(n)-(A059840(n+1)+1)`
-/

namespace A121646.P11429691004573377927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - (A059840 (n + 1) + 1)

end

end A121646.P11429691004573377927

namespace A121646

/-- `A000035(n)-(A059840(n+1)+1)` -/
def P11429691004573377927.Spec : Prop :=
  ∀ n, P11429691004573377927.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P14996127601109170987

`A000045(n+2)*A152163(n+1)`
-/

namespace A121646.P14996127601109170987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A152163 (n + 1)

end

end A121646.P14996127601109170987

namespace A121646

/-- `A000045(n+2)*A152163(n+1)` -/
def P14996127601109170987.Spec : Prop :=
  ∀ n, P14996127601109170987.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P17062193601492645153

`A087960(2*n+1)-A001654(n)`
-/

namespace A121646.P17062193601492645153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n + 1) - A001654 n

end

end A121646.P17062193601492645153

namespace A121646

/-- `A087960(2*n+1)-A001654(n)` -/
def P17062193601492645153.Spec : Prop :=
  ∀ n, P17062193601492645153.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P11553445407947123275

`A033999(n+1)-A074677(2*n)`
-/

namespace A121646.P11553445407947123275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A074677 (2 * n)

end

end A121646.P11553445407947123275

namespace A121646

/-- `A033999(n+1)-A074677(2*n)` -/
def P11553445407947123275.Spec : Prop :=
  ∀ n, P11553445407947123275.a n = A121646 (n + 1)

end A121646

/-! ## A121646.P15133455296144159775

`A152163(n+1)*A211228(2*n)`
-/

namespace A121646.P15133455296144159775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) * A211228 (2 * n)

end

end A121646.P15133455296144159775

namespace A121646

/-- `A152163(n+1)*A211228(2*n)` -/
def P15133455296144159775.Spec : Prop :=
  ∀ n, P15133455296144159775.a n = A121646 (n + 1)

end A121646

/-!
# A121647: Sequence gives values of sigma(n)^2 divided by UnitarySigma(n)*UnitaryPhi(n) associated with n in A121556.

The programs for A121647, there is no canonical definition to state claims against.
-/

/-! ## A121647.P8224487540423637100

`A070032(A121556(n+1))`
-/

namespace A121647.P8224487540423637100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070032 (A121556 (n + 1)).toNat

end

end A121647.P8224487540423637100

/-! ## A121647.P581938091927101551

`A123042(A077168(n))`
-/

namespace A121647.P581938091927101551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123042 (A077168 n).toNat

end

end A121647.P581938091927101551

/-! ## A121647.P1671337942523818947

`A123042(A324826(2^n))`
-/

namespace A121647.P1671337942523818947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123042 (A324826 (2 ^ n)).toNat

end

end A121647.P1671337942523818947

/-! ## A121647.P801077344374123078

`A123042(log2(A054785(2^n)))`
-/

namespace A121647.P801077344374123078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123042 (SequenceMachineLib.roundAway (Real.logb 2 (A054785 (2 ^ n) : ℝ))).toNat

end

end A121647.P801077344374123078

/-! ## A121647.P10111556430059910678

`A123042(n+1)%A337523(3*n+1)`
-/

namespace A121647.P10111556430059910678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123042 (n + 1)) (A337523 (3 * n + 1))

end

end A121647.P10111556430059910678

/-!
# A121648: a(n) is the square of the coefficient of x^n in 1/(1 - x*A(x^2)), where g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A121648, there is no canonical definition to state claims against.
-/

/-! ## A121648.P12128078819270787751

`A121649(n)²`
-/

namespace A121648.P12128078819270787751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 n ^ 2

end

end A121648.P12128078819270787751

/-! ## A121648.P3597973705010569361

`A121649(n-char[1])^2`
-/

namespace A121648.P3597973705010569361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (n - (if ∃ j, f1 j = n then 1 else 0)) ^ 2

end

end A121648.P3597973705010569361

/-! ## A121648.P17194570904073046702

`A040002(n)^log2(A121649(n))`
-/

namespace A121648.P17194570904073046702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A040002 n : ℝ) ^ (Real.logb 2 (A121649 n : ℝ))

end

end A121648.P17194570904073046702

/-! ## A121648.P4872912478889073562

`(-A121649(n))^A010693(2*n)`
-/

namespace A121648.P4872912478889073562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A121649 n : ℚ) ^ (A010693 (2 * n) : ℤ)

end

end A121648.P4872912478889073562

/-! ## A121648.P8824671586824442015

`A121649(char[1]+n)*A121649(n)`
-/

namespace A121648.P8824671586824442015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 ((if ∃ j, f1 j = n then 1 else 0) + n) * A121649 n

end

end A121648.P8824671586824442015

/-!
# A121649: G.f.: A(x) = 1/(1 - x*B(x^2)), where B(x) = Sum_{n>=0} a(n)^2*x^n is the g.f. of A121648.

The programs for A121649, there is no canonical definition to state claims against.
-/

/-! ## A121649.P12954596790395758636

`A121648(n)^(1/2)`
-/

namespace A121649.P12954596790395758636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121648 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A121649.P12954596790395758636

/-! ## A121649.P224129506312935423

`sqrt(A121648(n))`
-/

namespace A121649.P224129506312935423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A121648 n : ℝ)

end

end A121649.P224129506312935423

/-! ## A121649.P15046673867966611181

`root(A121648(n), abs(A280560(n)))`
-/

namespace A121649.P15046673867966611181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121648 n : ℝ) ^ (1 / (|A280560 n| : ℝ))

end

end A121649.P15046673867966611181

/-! ## A121649.P1068571225430761456

`root(A121648(n), A040002(n))²`
-/

namespace A121649.P1068571225430761456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A121648 n : ℝ) ^ (1 / (A040002 n : ℝ))) ^ 2

end

end A121649.P1068571225430761456

/-!
# A121650: A bisection of A121649; a(n) = A121649(2*n) = A121648(2*n)^(1/2).

The programs for A121650, there is no canonical definition to state claims against.
-/

/-! ## A121650.P1236107152088115840

`A121649(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121650.P1236107152088115840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (2 * n)

end

end A121650.P1236107152088115840

/-! ## A121650.P11630280934029074941

`A121648(2*n)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121650.P11630280934029074941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121648 (2 * n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A121650.P11630280934029074941

/-! ## A121650.P16746174387954381495

`A121649(A004277(n))+char[20]`
-/

namespace A121650.P16746174387954381495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (A004277 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121650.P16746174387954381495

/-! ## A121650.P17786791265975283093

`A326683(n)+A121649(A005843(n))`
-/

namespace A121650.P17786791265975283093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A121649 (A005843 n).toNat

end

end A121650.P17786791265975283093

/-!
# A121651: A bisection of A121649; a(n) = A121649(2*n+1) = A121648(2*n+1)^(1/2).

The programs for A121651, there is no canonical definition to state claims against.
-/

/-! ## A121651.P5160512655545524955

`A121649(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121651.P5160512655545524955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (2 * n + 1)

end

end A121651.P5160512655545524955

/-! ## A121651.P3440441031075225655

`A121648(2*n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121651.P3440441031075225655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121648 (2 * n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A121651.P3440441031075225655

/-! ## A121651.P2530470420305133151

`record[A121649(xor(1, n))]`
-/

namespace A121651.P2530470420305133151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121651.P2530470420305133151

/-! ## A121651.P14263690321711049551

`record[A121649(gcd(n, ∑[n]))]`
-/

namespace A121651.P14263690321711049551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121651.P14263690321711049551

/-! ## A121651.P7718747872859577063

`record[A121649(lcm(16, n)/16)]`
-/

namespace A121651.P7718747872859577063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121651.P7718747872859577063

/-!
# A121652: a(n) is the cube of the coefficient of x^n in 1/(1 - x*A(x^3)), where g.f. A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A121652, there is no canonical definition to state claims against.
-/

/-! ## A121652.P18131470403975025067

`A121653(n)^3`
-/

namespace A121652.P18131470403975025067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 n ^ 3

end

end A121652.P18131470403975025067

/-! ## A121652.P5873764743060335071

`A121653(A028310(n))²*A121653(n)`
-/

namespace A121652.P5873764743060335071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (A028310 n).toNat ^ 2 * A121653 n

end

end A121652.P5873764743060335071

/-! ## A121652.P15751901841083971593

`A121653(n)²*A121653(A254109(n))`
-/

namespace A121652.P15751901841083971593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 n ^ 2 * A121653 (A254109 n).toNat

end

end A121652.P15751901841083971593

/-! ## A121652.P15244069494349048952

`A121653(n)²*A121653(A254667(n))`
-/

namespace A121652.P15244069494349048952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 n ^ 2 * A121653 (A254667 n).toNat

end

end A121652.P15244069494349048952

/-! ## A121652.P17463152952707848635

`root(A121653(n), A028310(n)/A008486(n))`
-/

namespace A121652.P17463152952707848635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121653 n : ℝ) ^ (1 / ((A028310 n : ℚ) / (A008486 n : ℚ) : ℝ))

end

end A121652.P17463152952707848635

/-!
# A121653: G.f.: A(x) = 1/(1 - x*B(x^3)), where B(x) = Sum_{n>=0} a(n)^3*x^n is the g.f. of A121652.

The programs for A121653, there is no canonical definition to state claims against.
-/

/-! ## A121653.P15869075408275523400

`A121652(n)^(1/3)`
-/

namespace A121653.P15869075408275523400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121652 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121653.P15869075408275523400

/-! ## A121653.P2361426824290879022

`root(A121652(n), 3)`
-/

namespace A121653.P2361426824290879022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121652 n : ℝ) ^ (1 / (3 : ℝ))

end

end A121653.P2361426824290879022

/-! ## A121653.P524457046772292224

`floor(root(A093311(n), 7))`
-/

namespace A121653.P524457046772292224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093311 n : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A121653.P524457046772292224

/-! ## A121653.P4835313451756404312

`floor(root(A103468(n+1), 6))`
-/

namespace A121653.P4835313451756404312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103468 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A121653.P4835313451756404312

/-! ## A121653.P17889133904448271397

`∏{e}[3^n, A000930(#-1)]`
-/

namespace A121653.P17889133904448271397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000930 (Nat.factorization (f1 n) p - 1)

end

end A121653.P17889133904448271397

/-!
# A121654: A trisection of A121653; a(n) = A121653(3*n) = A121652(3*n)^(1/3).

The programs for A121654, there is no canonical definition to state claims against.
-/

/-! ## A121654.P4218138490382715417

`A121653(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121654.P4218138490382715417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (3 * n)

end

end A121654.P4218138490382715417

/-! ## A121654.P16399702544148950504

`A121652(3*n)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121654.P16399702544148950504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121652 (3 * n) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121654.P16399702544148950504

/-! ## A121654.P12387171075656571409

`A121653(A008486(n))+char[15]`
-/

namespace A121654.P12387171075656571409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (A008486 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121654.P12387171075656571409

/-! ## A121654.P5114125882027132891

`A243833(n)+A121653(A008486(n))`
-/

namespace A121654.P5114125882027132891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 n + A121653 (A008486 n).toNat

end

end A121654.P5114125882027132891

/-! ## A121654.P13384608379060610950

`A121653(A008585(n))%A001551(n)`
-/

namespace A121654.P13384608379060610950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121653 (A008585 n).toNat) (A001551 n)

end

end A121654.P13384608379060610950

/-!
# A121655: A trisection of A121653; a(n) = A121653(3*n+1) = A121652(3*n+1)^(1/3).

The programs for A121655, there is no canonical definition to state claims against.
-/

/-! ## A121655.P10596382297356949012

`A121653(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121655.P10596382297356949012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (3 * n + 1)

end

end A121655.P10596382297356949012

/-! ## A121655.P1787604998023761292

`A121652(3*n+1)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121655.P1787604998023761292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121652 (3 * n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121655.P1787604998023761292

/-! ## A121655.P9085819558670483774

`record[A121653(Δ[A128223(n)])]`
-/

namespace A121655.P9085819558670483774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121655.P9085819558670483774

/-! ## A121655.P15768440507284198254

`record[A121653(and(n, A049347(n)))]`
-/

namespace A121655.P15768440507284198254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (Int.land (n : ℤ) (A049347 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121655.P15768440507284198254

/-! ## A121655.P8405812038423577916

`record[A121653(and(n, A257075(n)))]`
-/

namespace A121655.P8405812038423577916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (Int.land (n : ℤ) (A257075 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121655.P8405812038423577916

/-!
# A121656: A trisection of A121653; a(n) = A121653(3*n+2) = A121652(3*n+2)^(1/3).

The programs for A121656, there is no canonical definition to state claims against.
-/

/-! ## A121656.P16717633039137780532

`A121653(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121656.P16717633039137780532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (3 * n + 2)

end

end A121656.P16717633039137780532

/-! ## A121656.P12824789512296724027

`A121652(3*n+2)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121656.P12824789512296724027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A121652 (3 * n + 2) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A121656.P12824789512296724027

/-! ## A121656.P11545389747936945784

`record[A121653(Δ[n*floor(n/2)])]`
-/

namespace A121656.P11545389747936945784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121656.P11545389747936945784

/-! ## A121656.P8615706980341294585

`and(-1, A121653(A016789(n)))`
-/

namespace A121656.P8615706980341294585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A121653 (A016789 n).toNat)

end

end A121656.P8615706980341294585

/-! ## A121656.P16171106692072523580

`record[A121653(n)^A131736(n)]`
-/

namespace A121656.P16171106692072523580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121653 n : ℚ) ^ (A131736 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121656.P16171106692072523580

/-!
# A121657: Successive run lengths in decimal expansion of Pi.

The programs for A121657, there is no canonical definition to state claims against.
-/

/-! ## A121657.P12034259730222745917

`A079619(Δ[n²])`
-/

namespace A121657.P12034259730222745917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A121657.P12034259730222745917

/-!
# A121658: Primes neither of the n^2+1 nor n^2+n+1 form.

The programs for A121658, the canonical program `A121658.P2530819270355937176` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121658 has offset 1).

The definition of A121658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121658.P2530819270355937176

`p?[ceil((sqrt(n+1)+1)²)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121658

/-- `p?[ceil((sqrt(n+1)+1)²)]` -/
def P2530819270355937176.Spec : Prop :=
  ∀ n, P2530819270355937176.a n = A121658 (n + 1)

theorem P2530819270355937176.correct : P2530819270355937176.Spec := by
  intro n
  simp only [A121658, Nat.add_sub_cancel]

end A121658

/-! ## A121658.P11951345596394875756

`or(1, p?[A265412(n)])`
-/

namespace A121658.P11951345596394875756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A121658.P11951345596394875756

namespace A121658

/-- `or(1, p?[A265412(n)])` -/
def P11951345596394875756.Spec : Prop :=
  ∀ n, P11951345596394875756.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P7679220233597446225

`filter[A265412(n), A010051(#)]`
-/

namespace A121658.P7679220233597446225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A121658.P7679220233597446225

namespace A121658

/-- `filter[A265412(n), A010051(#)]` -/
def P7679220233597446225.Spec : Prop :=
  ∀ n, P7679220233597446225.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P5021451348844881191

`filter[A265412(n), A302777(#)]`
-/

namespace A121658.P5021451348844881191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A121658.P5021451348844881191

namespace A121658

/-- `filter[A265412(n), A302777(#)]` -/
def P5021451348844881191.Spec : Prop :=
  ∀ n, P5021451348844881191.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P11408412835447971330

`record[A006530(A265412(n+2))]`
-/

namespace A121658.P11408412835447971330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265412 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121658.P11408412835447971330

namespace A121658

/-- `record[A006530(A265412(n+2))]` -/
def P11408412835447971330.Spec : Prop :=
  ∀ n, P11408412835447971330.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P11652379821761948588

`filter[A265412(n+1), A355937(#)]`
-/

namespace A121658.P11652379821761948588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A121658.P11652379821761948588

namespace A121658

/-- `filter[A265412(n+1), A355937(#)]` -/
def P11652379821761948588.Spec : Prop :=
  ∀ n, P11652379821761948588.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P5353447312750706858

`filter[A265412(2*n), A323153(#)]`
-/

namespace A121658.P5353447312750706858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A121658.P5353447312750706858

namespace A121658

/-- `filter[A265412(2*n), A323153(#)]` -/
def P5353447312750706858.Spec : Prop :=
  ∀ n, P5353447312750706858.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P11835530898362164264

`filter[A265412(2*n), A353670(#)]`
-/

namespace A121658.P11835530898362164264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A121658.P11835530898362164264

namespace A121658

/-- `filter[A265412(2*n), A353670(#)]` -/
def P11835530898362164264.Spec : Prop :=
  ∀ n, P11835530898362164264.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P3833539031277505167

`filter[A265412(2*n), A379969(#)]`
-/

namespace A121658.P3833539031277505167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A121658.P3833539031277505167

namespace A121658

/-- `filter[A265412(2*n), A379969(#)]` -/
def P3833539031277505167.Spec : Prop :=
  ∀ n, P3833539031277505167.a n = A121658 (n + 1)

end A121658

/-! ## A121658.P564252769299205239

`∩[A000040(n+1), A265412(n)]`
-/

namespace A121658.P564252769299205239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P564252769299205239

namespace A121658

/-- `∩[A000040(n+1), A265412(n)]` -/
def P564252769299205239.Spec : Prop :=
  ∀ n, (P564252769299205239.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P2649656035449886207

`∩[A000430(n+1), A265412(n)]`
-/

namespace A121658.P2649656035449886207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P2649656035449886207

namespace A121658

/-- `∩[A000430(n+1), A265412(n)]` -/
def P2649656035449886207.Spec : Prop :=
  ∀ n, (P2649656035449886207.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P5010587718658082921

`∩[A004139(n+1), A265412(n)]`
-/

namespace A121658.P5010587718658082921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P5010587718658082921

namespace A121658

/-- `∩[A004139(n+1), A265412(n)]` -/
def P5010587718658082921.Spec : Prop :=
  ∀ n, (P5010587718658082921.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P16305793697229558963

`∩[A009087(n+1), A265412(n)]`
-/

namespace A121658.P16305793697229558963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P16305793697229558963

namespace A121658

/-- `∩[A009087(n+1), A265412(n)]` -/
def P16305793697229558963.Spec : Prop :=
  ∀ n, (P16305793697229558963.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P5086177201339387501

`∩[A045319(n+1), A265412(n)]`
-/

namespace A121658.P5086177201339387501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P5086177201339387501

namespace A121658

/-- `∩[A045319(n+1), A265412(n)]` -/
def P5086177201339387501.Spec : Prop :=
  ∀ n, (P5086177201339387501.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P4659508110942268955

`∩[A045344(n+1), A265412(n)]`
-/

namespace A121658.P4659508110942268955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P4659508110942268955

namespace A121658

/-- `∩[A045344(n+1), A265412(n)]` -/
def P4659508110942268955.Spec : Prop :=
  ∀ n, (P4659508110942268955.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P7494525880928930967

`∩[A050150(n+1), A265412(n)]`
-/

namespace A121658.P7494525880928930967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P7494525880928930967

namespace A121658

/-- `∩[A050150(n+1), A265412(n)]` -/
def P7494525880928930967.Spec : Prop :=
  ∀ n, (P7494525880928930967.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P1599748993054973474

`∩[A050376(n+1), A265412(n)]`
-/

namespace A121658.P1599748993054973474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P1599748993054973474

namespace A121658

/-- `∩[A050376(n+1), A265412(n)]` -/
def P1599748993054973474.Spec : Prop :=
  ∀ n, (P1599748993054973474.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P13563302117973196485

`∩[A065091(n+1), A265412(n)]`
-/

namespace A121658.P13563302117973196485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P13563302117973196485

namespace A121658

/-- `∩[A065091(n+1), A265412(n)]` -/
def P13563302117973196485.Spec : Prop :=
  ∀ n, (P13563302117973196485.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P453269253851158787

`∩[A070303(n+1), A265412(n)]`
-/

namespace A121658.P453269253851158787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P453269253851158787

namespace A121658

/-- `∩[A070303(n+1), A265412(n)]` -/
def P453269253851158787.Spec : Prop :=
  ∀ n, (P453269253851158787.a n : ℤ) = A121658 (n + 1)

end A121658

/-! ## A121658.P1071485478919721376

`∩[A083249(n+1), A265412(n)]`
-/

namespace A121658.P1071485478919721376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121658.P1071485478919721376

namespace A121658

/-- `∩[A083249(n+1), A265412(n)]` -/
def P1071485478919721376.Spec : Prop :=
  ∀ n, (P1071485478919721376.a n : ℤ) = A121658 (n + 1)

end A121658

/-!
# A121659: Number of partitions of n into parts with at most one part <= 2.

The programs for A121659, there is no canonical definition to state claims against.
-/

/-! ## A121659.P12399240586699728481

`∑[A008484(n+1)]+1`
-/

namespace A121659.P12399240586699728481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121659.P12399240586699728481

/-! ## A121659.P14252971063058161401

`∑[A008484(A326178(n))]`
-/

namespace A121659.P14252971063058161401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A326178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121659.P14252971063058161401

/-! ## A121659.P11316521802389132098

`∑[A008484(abs(A131738(n)))]`
-/

namespace A121659.P11316521802389132098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 |A131738 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121659.P11316521802389132098

/-! ## A121659.P9475060763429365361

`∑[A008484(A057427(n)+n)]`
-/

namespace A121659.P9475060763429365361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A057427 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121659.P9475060763429365361

/-! ## A121659.P11752884678347113835

`A181531(n+1)+A181531(n)`
-/

namespace A121659.P11752884678347113835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181531 (n + 1) + A181531 n

end

end A121659.P11752884678347113835

/-! ## A121659.P16159440654255012568

`A121081(n+2)-A008483(n+2)`
-/

namespace A121659.P16159440654255012568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121081 (n + 2) - A008483 (n + 2)

end

end A121659.P16159440654255012568

/-! ## A121659.P3511889135105130121

`A027337(n+1)+A002865(n)-A027338(n)`
-/

namespace A121659.P3511889135105130121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) + (A002865 n - A027338 n)

end

end A121659.P3511889135105130121

/-! ## A121659.P12597973186797279761

`A027336(n+1)+A027336(n)-A027338(n)`
-/

namespace A121659.P12597973186797279761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027336 n - A027338 n)

end

end A121659.P12597973186797279761

/-! ## A121659.P18264687211883248176

`A027338(n+1)+A008483(n)-A027338(n)`
-/

namespace A121659.P18264687211883248176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (n + 1) + (A008483 n - A027338 n)

end

end A121659.P18264687211883248176

/-! ## A121659.P8652701516445992099

`A320689(n+1)-A027338(n)`
-/

namespace A121659.P8652701516445992099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320689 (n + 1) - A027338 n

end

end A121659.P8652701516445992099

/-! ## A121659.P10808258789060565954

`A027336(n+1)+A027337(n+1)-A027339(n+1)`
-/

namespace A121659.P10808258789060565954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A027337 (n + 1) - A027339 (n + 1))

end

end A121659.P10808258789060565954

/-! ## A121659.P17293996234753293335

`∑[A008484(A131738(2*n)-n)]`
-/

namespace A121659.P17293996234753293335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A131738 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121659.P17293996234753293335

/-! ## A121659.P11437713463921095496

`∑[A008484(A008611(A008486(n)))]`
-/

namespace A121659.P11437713463921095496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 (A008611 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121659.P11437713463921095496

/-!
# A121662: Triangle read by rows: T(i,j) for the recurrence T(i,j) = (T(i-1,j) + 1)*i.

The programs for A121662, there is no canonical definition to state claims against.
-/

/-! ## A121662.P5515787439771547157

`A285268(∑[char[∑[n]]]²-n)`
-/

namespace A121662.P5515787439771547157
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285268 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A121662.P5515787439771547157

/-! ## A121662.P16109704003568509340

`or(char[3], A285268(A038722(n+1)))`
-/

namespace A121662.P16109704003568509340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A285268 (A038722 (n + 1)).toNat)

end

end A121662.P16109704003568509340

/-! ## A121662.P8984948749290144100

`∑[A010054(n)]*A347667(A061579(n))`
-/

namespace A121662.P8984948749290144100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A347667 (A061579 n).toNat

end

end A121662.P8984948749290144100

/-! ## A121662.P12878780227037332293

`A002024(n+1)*A347667(A061579(n))`
-/

namespace A121662.P12878780227037332293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A347667 (A061579 n).toNat

end

end A121662.P12878780227037332293

/-! ## A121662.P18347706751743889925

`A285268(A038722(n+1))*A304042(n)`
-/

namespace A121662.P18347706751743889925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285268 (A038722 (n + 1)).toNat * A304042 n

end

end A121662.P18347706751743889925

/-! ## A121662.P6945268594832165210

`A285268(A038722(n+1))%A016972(n)`
-/

namespace A121662.P6945268594832165210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285268 (A038722 (n + 1)).toNat) (A016972 n)

end

end A121662.P6945268594832165210

/-! ## A121662.P13734208366638683527

`gcd(A000038(n), A285268(A038722(n+1)))`
-/

namespace A121662.P13734208366638683527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285268 (A038722 (n + 1)).toNat)

end

end A121662.P13734208366638683527

/-! ## A121662.P16991039340922767564

`lcm(A033999(n), A285268(A038722(n+1)))`
-/

namespace A121662.P16991039340922767564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A285268 (A038722 (n + 1)).toNat)

end

end A121662.P16991039340922767564

/-! ## A121662.P1434200207549919869

`and(A260196(n), A285268(A038722(n+1)))`
-/

namespace A121662.P1434200207549919869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A285268 (A038722 (n + 1)).toNat)

end

end A121662.P1434200207549919869

/-! ## A121662.P3871539900848148384

`A285268(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A121662.P3871539900848148384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285268 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A121662.P3871539900848148384

/-!
# A121663: a(0) = 1; if n = 2^k, a(n) = k+2, otherwise a(n)=(A000523(n)+2)*a(A053645(n)).

The programs for A121663, the canonical program `A121663.P16388253668531222567` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121663 has offset 0).

The definition of A121663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121663.P16388253668531222567

`(A000523(n)+2)*a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121663

/-- `(A000523(n)+2)*a(A053645(n))` -/
def P16388253668531222567.Spec : Prop :=
  ∀ n, P16388253668531222567.a n = A121663 n

theorem P16388253668531222567.correct : P16388253668531222567.Spec := by
  intro n
  simp only [A121663]

end A121663

/-! ## A121663.P16401088205157576483

`(val(n, 2)+2)*a(and(n, n-1))` with `a(0)=1`
-/

namespace A121663.P16401088205157576483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation n 2 + 2) * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A121663.P16401088205157576483

namespace A121663

/-- `(val(n, 2)+2)*a(and(n, n-1))` -/
def P16401088205157576483.Spec : Prop :=
  ∀ n, (P16401088205157576483.a n : ℤ) = A121663 n

end A121663

/-! ## A121663.P5014939613461926645

`(floor(log2(n))+2)*a(n-2^floor(log2(n)))` with `a(0)=1`
-/

namespace A121663.P5014939613461926645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.log 2 n + 2) * a (n - 2 ^ Nat.log 2 n)

end

end A121663.P5014939613461926645

namespace A121663

/-- `(floor(log2(n))+2)*a(n-2^floor(log2(n)))` -/
def P5014939613461926645.Spec : Prop :=
  ∀ n, (P5014939613461926645.a n : ℤ) = A121663 n

end A121663

/-! ## A121663.P9601449085388679908

`A306286(A145341(n+1))`
-/

namespace A121663.P9601449085388679908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A145341 (n + 1)).toNat

end

end A121663.P9601449085388679908

namespace A121663

/-- `A306286(A145341(n+1))` -/
def P9601449085388679908.Spec : Prop :=
  ∀ n, P9601449085388679908.a n = A121663 n

end A121663

/-! ## A121663.P7670760618723126968

`A096111(2*n)`
-/

namespace A121663.P7670760618723126968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (2 * n)

end

end A121663.P7670760618723126968

namespace A121663

/-- `A096111(2*n)` -/
def P7670760618723126968.Spec : Prop :=
  ∀ n, P7670760618723126968.a n = A121663 n

end A121663

/-! ## A121663.P12350898557992269625

`A096111(n+n)%∑[A052330(n+1)]`
-/

namespace A121663.P12350898557992269625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096111 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121663.P12350898557992269625

namespace A121663

/-- `A096111(n+n)%∑[A052330(n+1)]` -/
def P12350898557992269625.Spec : Prop :=
  ∀ n, P12350898557992269625.a n = A121663 n

end A121663

/-! ## A121663.P18386246515433688106

`A306286(A030101(2*n+1))`
-/

namespace A121663.P18386246515433688106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A030101 (2 * n + 1)).toNat

end

end A121663.P18386246515433688106

namespace A121663

/-- `A306286(A030101(2*n+1))` -/
def P18386246515433688106.Spec : Prop :=
  ∀ n, P18386246515433688106.a n = A121663 n

end A121663

/-! ## A121663.P2959691529742543559

`A306286(A165789(2*n+1))`
-/

namespace A121663.P2959691529742543559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A165789 (2 * n + 1)).toNat

end

end A121663.P2959691529742543559

namespace A121663

/-- `A306286(A165789(2*n+1))` -/
def P2959691529742543559.Spec : Prop :=
  ∀ n, P2959691529742543559.a n = A121663 n

end A121663

/-! ## A121663.P11075175117705799894

`∏{digits}[A063013(n), #+1]`
-/

namespace A121663.P11075175117705799894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A121663.P11075175117705799894

namespace A121663

/-- `∏{digits}[A063013(n), #+1]` -/
def P11075175117705799894.Spec : Prop :=
  ∀ n, (P11075175117705799894.a n : ℤ) = A121663 n

end A121663

/-! ## A121663.P742760644885353962

`∏{digits}[A086068(2*n+1), #+1]`
-/

namespace A121663.P742760644885353962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A121663.P742760644885353962

namespace A121663

/-- `∏{digits}[A086068(2*n+1), #+1]` -/
def P742760644885353962.Spec : Prop :=
  ∀ n, (P742760644885353962.a n : ℤ) = A121663 n

end A121663

/-! ## A121663.P9744133691879696420

`∏{digits}[A262557(2*n+1), #+1]`
-/

namespace A121663.P9744133691879696420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A121663.P9744133691879696420

namespace A121663

/-- `∏{digits}[A262557(2*n+1), #+1]` -/
def P9744133691879696420.Spec : Prop :=
  ∀ n, (P9744133691879696420.a n : ℤ) = A121663 n

end A121663

/-! ## A121663.P1786759683888110440

`A243499(A124108(n))`
-/

namespace A121663.P1786759683888110440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A124108 n).toNat

end

end A121663.P1786759683888110440

namespace A121663

/-- `A243499(A124108(n))` -/
def P1786759683888110440.Spec : Prop :=
  ∀ n, P1786759683888110440.a n = A121663 n

end A121663

/-! ## A121663.P7801877173870900441

`A243499(A048678(2*n))`
-/

namespace A121663.P7801877173870900441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A048678 (2 * n)).toNat

end

end A121663.P7801877173870900441

namespace A121663

/-- `A243499(A048678(2*n))` -/
def P7801877173870900441.Spec : Prop :=
  ∀ n, P7801877173870900441.a n = A121663 n

end A121663

/-! ## A121663.P6707399166290248726

`A122155(A122155(A096111(n+n)))`
-/

namespace A121663.P6707399166290248726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (A122155 (A096111 (n + n)).toNat).toNat

end

end A121663.P6707399166290248726

namespace A121663

/-- `A122155(A122155(A096111(n+n)))` -/
def P6707399166290248726.Spec : Prop :=
  ∀ n, P6707399166290248726.a n = A121663 n

end A121663

/-!
# A121664: Inverse permutation to A096114.

The programs for A121664, there is no canonical definition to state claims against.
-/

/-! ## A121664.P8817343838085491246

`A096114(A096114(A052330(A052331(A096114(n+1)))))`
-/

namespace A121664.P8817343838085491246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096114 (A096114 (A052330 (A052331 (A096114 (n + 1)).toNat).toNat).toNat).toNat

end

end A121664.P8817343838085491246

/-! ## A121664.P11816539210249047590

`A096114(A096114(A096114(A064358(A052330(n)))))`
-/

namespace A121664.P11816539210249047590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096114 (A096114 (A096114 (A064358 (A052330 n).toNat).toNat).toNat).toNat

end

end A121664.P11816539210249047590

/-! ## A121664.P4154231897746595354

`A096114(A096114(A096114(A064358(A344535(n)))))`
-/

namespace A121664.P4154231897746595354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096114 (A096114 (A096114 (A064358 (A344535 n).toNat).toNat).toNat).toNat

end

end A121664.P4154231897746595354

/-! ## A121664.P5978088948418118078

`A096114(A096114(A096114(A000120(A000225(n+1)))))`
-/

namespace A121664.P5978088948418118078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096114 (A096114 (A096114 (A000120 (A000225 (n + 1)).toNat).toNat).toNat).toNat

end

end A121664.P5978088948418118078

/-! ## A121664.P14937976868501344802

`A096114(A096114(A096114(A000523(A000079(n+1)))))`
-/

namespace A121664.P14937976868501344802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096114 (A096114 (A096114 (A000523 (A000079 (n + 1)).toNat).toNat).toNat).toNat

end

end A121664.P14937976868501344802

/-!
# A121668: Products of consecutive Apery numbers, cf. A006221.

The programs for A121668, there is no canonical definition to state claims against.
-/

/-! ## A121668.P12731933572347765708

`A005259(n+1)*A005259(n)`
-/

namespace A121668.P12731933572347765708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005259 (n + 1) * A005259 n

end

end A121668.P12731933572347765708

/-!
# A121670: a(n) = n^3 - 3*n.

The programs for A121670, the canonical program `A121670.P867872710961214995` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121670 has offset 0).

The definition of A121670 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-3*n` (program `A121670.P867872710961214995`, by `A121670.P867872710961214995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121670.P867872710961214995

`n^3-3*n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121670

/-- `n^3-3*n` -/
def P867872710961214995.Spec : Prop :=
  ∀ n, P867872710961214995.a n = A121670 n

theorem P867872710961214995.correct : P867872710961214995.Spec := by
  intro n
  simp only [A121670]

end A121670

/-! ## A121670.P2670713276528979501

`n/tan(acot(n²-3))`
-/

namespace A121670.P2670713276528979501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((n ^ 2 : ℤ) - 3 : ℝ))

end

end A121670.P2670713276528979501

namespace A121670

/-- `n/tan(acot(n²-3))` -/
def P2670713276528979501.Spec : Prop :=
  ∀ n, P2670713276528979501.a n = (A121670 n : ℝ)

end A121670

/-! ## A121670.P12146008267408155849

`n*(A028875(n)+2)`
-/

namespace A121670.P12146008267408155849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028875 n + 2)

end

end A121670.P12146008267408155849

namespace A121670

/-- `n*(A028875(n)+2)` -/
def P12146008267408155849.Spec : Prop :=
  ∀ n, P12146008267408155849.a n = A121670 n

end A121670

/-! ## A121670.P2968147190857959269

`2*(A135503(n)-n)`
-/

namespace A121670.P2968147190857959269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135503 n - (n : ℤ))

end

end A121670.P2968147190857959269

namespace A121670

/-- `2*(A135503(n)-n)` -/
def P2968147190857959269.Spec : Prop :=
  ∀ n, P2968147190857959269.a n = A121670 n

end A121670

/-! ## A121670.P11144270808795556396

`n*(A000290(n)-3)`
-/

namespace A121670.P11144270808795556396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000290 n - 3)

end

end A121670.P11144270808795556396

namespace A121670

/-- `n*(A000290(n)-3)` -/
def P11144270808795556396.Spec : Prop :=
  ∀ n, P11144270808795556396.a n = A121670 n

end A121670

/-! ## A121670.P16943424222108413972

`n*(A253909(n)-3)`
-/

namespace A121670.P16943424222108413972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A253909 n - 3)

end

end A121670.P16943424222108413972

namespace A121670

/-- `n*(A253909(n)-3)` -/
def P16943424222108413972.Spec : Prop :=
  ∀ n, P16943424222108413972.a n = A121670 n

end A121670

/-! ## A121670.P13263871181197197654

`n*(A002522(n)-4)`
-/

namespace A121670.P13263871181197197654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002522 n - 4)

end

end A121670.P13263871181197197654

namespace A121670

/-- `n*(A002522(n)-4)` -/
def P13263871181197197654.Spec : Prop :=
  ∀ n, P13263871181197197654.a n = A121670 n

end A121670

/-! ## A121670.P12754529298166752427

`n*(A010000(n)-5)`
-/

namespace A121670.P12754529298166752427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010000 n - 5)

end

end A121670.P12754529298166752427

namespace A121670

/-- `n*(A010000(n)-5)` -/
def P12754529298166752427.Spec : Prop :=
  ∀ n, P12754529298166752427.a n = A121670 n

end A121670

/-! ## A121670.P17230411952151069860

`n*(A059100(n)-5)`
-/

namespace A121670.P17230411952151069860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A059100 n - 5)

end

end A121670.P17230411952151069860

namespace A121670

/-- `n*(A059100(n)-5)` -/
def P17230411952151069860.Spec : Prop :=
  ∀ n, P17230411952151069860.a n = A121670 n

end A121670

/-! ## A121670.P13325047214078627546

`Δ[(∑[n-1]-2)*C(n, 2)]`
-/

namespace A121670.P13325047214078627546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 2) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121670.P13325047214078627546

namespace A121670

/-- `Δ[(∑[n-1]-2)*C(n, 2)]` -/
def P13325047214078627546.Spec : Prop :=
  ∀ n, P13325047214078627546.a n = A121670 n

end A121670

/-! ## A121670.P6938305457936189821

`Δ[A289121(n+1)-n²]`
-/

namespace A121670.P6938305457936189821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289121 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121670.P6938305457936189821

namespace A121670

/-- `Δ[A289121(n+1)-n²]` -/
def P6938305457936189821.Spec : Prop :=
  ∀ n, P6938305457936189821.a n = A121670 n

end A121670

/-! ## A121670.P18266649594662511200

`n*(∩[2*n, ∑[2*n]]-(n+3))`
-/

namespace A121670.P18266649594662511200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n : ℤ) - (n + 3 : ℤ))

end

end A121670.P18266649594662511200

namespace A121670

/-- `n*(∩[2*n, ∑[2*n]]-(n+3))` -/
def P18266649594662511200.Spec : Prop :=
  ∀ n, P18266649594662511200.a n = A121670 n

end A121670

/-! ## A121670.P4887069365507032823

`n*A023445(n²)`
-/

namespace A121670.P4887069365507032823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023445 (n ^ 2)

end

end A121670.P4887069365507032823

namespace A121670

/-- `n*A023445(n²)` -/
def P4887069365507032823.Spec : Prop :=
  ∀ n, P4887069365507032823.a n = A121670 n

end A121670

/-!
# A121671: Real part of (1 + n*i)^5.

The programs for A121671, the canonical program `A121671.P11352218429020484864` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121671 has offset 0).

The definition of A121671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121671.P11352218429020484864

`5*n^4-10*n²+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121671

/-- `5*n^4-10*n²+1` -/
def P11352218429020484864.Spec : Prop :=
  ∀ n, P11352218429020484864.a n = A121671 n

theorem P11352218429020484864.correct : P11352218429020484864.Spec := by
  intro n
  simp only [A121671]

end A121671

/-! ## A121671.P17684683165893986114

`floor(A157411(n+1)/6)`
-/

namespace A121671.P17684683165893986114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157411 (n + 1) : ℚ) / 6⌋

end

end A121671.P17684683165893986114

namespace A121671

/-- `floor(A157411(n+1)/6)` -/
def P17684683165893986114.Spec : Prop :=
  ∀ n, P17684683165893986114.a n = A121671 n

end A121671

/-! ## A121671.P8119873989477758374

`floor(A272870(n)+A144130(n)/2)`
-/

namespace A121671.P8119873989477758374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272870 n : ℚ) + (A144130 n : ℚ) / 2⌋

end

end A121671.P8119873989477758374

namespace A121671

/-- `floor(A272870(n)+A144130(n)/2)` -/
def P8119873989477758374.Spec : Prop :=
  ∀ n, P8119873989477758374.a n = A121671 n

end A121671

/-! ## A121671.P3466374396435720758

`(A272870(n)+A239607(n)-1)%A144130(n+2)`
-/

namespace A121671.P3466374396435720758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272870 n + (A239607 n - 1)) (A144130 (n + 2))

end

end A121671.P3466374396435720758

namespace A121671

/-- `(A272870(n)+A239607(n)-1)%A144130(n+2)` -/
def P3466374396435720758.Spec : Prop :=
  ∀ n, P3466374396435720758.a n = A121671 n

end A121671

/-! ## A121671.P11036197854767403416

`(A272870(n)+(1-A001105(n))²-1)%A144130(n+2)`
-/

namespace A121671.P11036197854767403416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272870 n + ((1 - A001105 n) ^ 2 - 1)) (A144130 (n + 2))

end

end A121671.P11036197854767403416

namespace A121671

/-- `(A272870(n)+(1-A001105(n))²-1)%A144130(n+2)` -/
def P11036197854767403416.Spec : Prop :=
  ∀ n, P11036197854767403416.a n = A121671 n

end A121671

/-! ## A121671.P9456348410447153456

`ceil(A157411(n+1)/6-A000041(A151935(n)))`
-/

namespace A121671.P9456348410447153456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157411 (n + 1) : ℚ) / 6 - (A000041 (A151935 n).toNat : ℚ)⌉

end

end A121671.P9456348410447153456

namespace A121671

/-- `ceil(A157411(n+1)/6-A000041(A151935(n)))` -/
def P9456348410447153456.Spec : Prop :=
  ∀ n, P9456348410447153456.a n = A121671 n

end A121671

/-!
# A121672: Real part of (n + i)^5.

The programs for A121672, the canonical program `A121672.P9319493448643221302` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121672 has offset 0).

The definition of A121672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121672.P9319493448643221302

`n*(n^4-10*n²+5)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121672

/-- `n*(n^4-10*n²+5)` -/
def P9319493448643221302.Spec : Prop :=
  ∀ n, P9319493448643221302.a n = A121672 n

theorem P9319493448643221302.correct : P9319493448643221302.Spec := by
  intro n
  simp only [A121672]

end A121672

/-! ## A121672.P3849654372601844142

`n^5-5*A007588(n)`
-/

namespace A121672.P3849654372601844142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - 5 * A007588 n

end

end A121672.P3849654372601844142

namespace A121672

/-- `n^5-5*A007588(n)` -/
def P3849654372601844142.Spec : Prop :=
  ∀ n, P3849654372601844142.a n = A121672 n

end A121672

/-! ## A121672.P13965305429136511134

`A180355(n)-A244729(n)`
-/

namespace A121672.P13965305429136511134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180355 n - A244729 n

end

end A121672.P13965305429136511134

namespace A121672

/-- `A180355(n)-A244729(n)` -/
def P13965305429136511134.Spec : Prop :=
  ∀ n, P13965305429136511134.a n = A121672 n

end A121672

/-! ## A121672.P17470167089008520294

`A180355(n)-2*A244725(n)`
-/

namespace A121672.P17470167089008520294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180355 n - 2 * A244725 n

end

end A121672.P17470167089008520294

namespace A121672

/-- `A180355(n)-2*A244725(n)` -/
def P17470167089008520294.Spec : Prop :=
  ∀ n, P17470167089008520294.a n = A121672 n

end A121672

/-! ## A121672.P8108988906523207968

`A061167(n)-4*A063522(n)`
-/

namespace A121672.P8108988906523207968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 n - 4 * A063522 n

end

end A121672.P8108988906523207968

namespace A121672

/-- `A061167(n)-4*A063522(n)` -/
def P8108988906523207968.Spec : Prop :=
  ∀ n, P8108988906523207968.a n = A121672 n

end A121672

/-! ## A121672.P3698392818518980473

`n*A272870(n)-A272871(n)`
-/

namespace A121672.P3698392818518980473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272870 n - A272871 n

end

end A121672.P3698392818518980473

namespace A121672

/-- `n*A272870(n)-A272871(n)` -/
def P3698392818518980473.Spec : Prop :=
  ∀ n, P3698392818518980473.a n = A121672 n

end A121672

/-!
# A121673: a(n) = [x^n] (1 + x*(1+x)^(n-1) )^n.

The programs for A121673, there is no canonical definition to state claims against.
-/

/-! ## A121673.P10486729031040566480

`A004526(A019990(∏[abs(1-2*n)]))`
-/

namespace A121673.P10486729031040566480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A019990 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A121673.P10486729031040566480

/-! ## A121673.P16315107235378640727

`A376237(n)+A002266(A002295(n))`
-/

namespace A121673.P16315107235378640727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376237 n + A002266 (A002295 n).toNat

end

end A121673.P16315107235378640727

/-!
# A121674: a(n) = [x^n] (1 + x*(1+x)^n )^n.

The programs for A121674, there is no canonical definition to state claims against.
-/

/-! ## A121674.P14684585360591217967

`A036714(A277393(n)-A025581(n))`
-/

namespace A121674.P14684585360591217967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 (A277393 n - A025581 n).toNat

end

end A121674.P14684585360591217967

/-! ## A121674.P6411808083201605347

`xor(A059995(A145159(n)), A261498(n))`
-/

namespace A121674.P6411808083201605347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059995 (A145159 n).toNat) (A261498 n)

end

end A121674.P6411808083201605347

/-!
# A121675: a(n) = [x^n] (1 + x*(1+x)^(n+1) )^n.

The programs for A121675, there is no canonical definition to state claims against.
-/

/-! ## A121675.P10924947266203492515

`∏{e}[23^n, A208595(#)]`
-/

namespace A121675.P10924947266203492515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A208595 (Nat.factorization (f1 n) p)

end

end A121675.P10924947266203492515

/-!
# A121676: a(n) = [x^n] (1 + x*(1+x)^(n-1) )^(n+1).

The programs for A121676, there is no canonical definition to state claims against.
-/

/-! ## A121676.P18206328857972616315

`(n+1)*A121677(n)`
-/

namespace A121676.P18206328857972616315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121677 n

end

end A121676.P18206328857972616315

/-! ## A121676.P12344556337673857810

`A121677(n)*A126988(A000124(n))`
-/

namespace A121676.P12344556337673857810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121677 n * A126988 (A000124 n).toNat

end

end A121676.P12344556337673857810

/-! ## A121676.P9222759132861570639

`A121677(n)*A143182(A000217(n))`
-/

namespace A121676.P9222759132861570639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121677 n * A143182 (A000217 n).toNat

end

end A121676.P9222759132861570639

/-! ## A121676.P5351585609134461993

`A121677(n)*A152271(A005408(n))`
-/

namespace A121676.P5351585609134461993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121677 n * A152271 (A005408 n).toNat

end

end A121676.P5351585609134461993

/-! ## A121676.P2891322553569781084

`A121677(n)/A121679(n)*A121678(n)`
-/

namespace A121676.P2891322553569781084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121677 n : ℚ) / (A121679 n : ℚ) * (A121678 n : ℚ)

end

end A121676.P2891322553569781084

/-!
# A121677: a(n) = A121676(n)/(n+1) = [x^n] (1 + x*(1+x)^(n-1) )^(n+1) / (n+1).

The programs for A121677, there is no canonical definition to state claims against.
-/

/-! ## A121677.P2403474048056912823

`A121676(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121677.P2403474048056912823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121676 n : ℚ) / (n + 1 : ℚ)

end

end A121677.P2403474048056912823

/-! ## A121677.P9561096533116561732

`A087338(A204200(n+1))`
-/

namespace A121677.P9561096533116561732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087338 (A204200 (n + 1)).toNat

end

end A121677.P9561096533116561732

/-!
# A121678: a(n) = [x^n] (1 + x*(1+x)^n )^(n+1).

The programs for A121678, there is no canonical definition to state claims against.
-/

/-! ## A121678.P10031712689628632635

`(n+1)*A121679(n)`
-/

namespace A121678.P10031712689628632635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121679 n

end

end A121678.P10031712689628632635

/-! ## A121678.P13789092004653533566

`A121679(n)*A126988(A000124(n))`
-/

namespace A121678.P13789092004653533566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121679 n * A126988 (A000124 n).toNat

end

end A121678.P13789092004653533566

/-! ## A121678.P11847751795520348993

`A121679(n)*A143182(A000217(n))`
-/

namespace A121678.P11847751795520348993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121679 n * A143182 (A000217 n).toNat

end

end A121678.P11847751795520348993

/-! ## A121678.P4368202609648204264

`A121679(n)/A121681(n)*A121680(n)`
-/

namespace A121678.P4368202609648204264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121679 n : ℚ) / (A121681 n : ℚ) * (A121680 n : ℚ)

end

end A121678.P4368202609648204264

/-! ## A121678.P4143617471237942573

`A121676(n)*A121679(n)/A121677(n)`
-/

namespace A121678.P4143617471237942573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121676 n * A121679 n : ℚ) / (A121677 n : ℚ)

end

end A121678.P4143617471237942573

/-!
# A121679: a(n) = A121678(n)/(n+1) = [x^n] (1 + x*(1+x)^n )^(n+1) / (n+1).

The programs for A121679, there is no canonical definition to state claims against.
-/

/-! ## A121679.P10355292794051164553

`A121678(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121679.P10355292794051164553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121678 n : ℚ) / (n + 1 : ℚ)

end

end A121679.P10355292794051164553

/-! ## A121679.P2257100047555612106

`floor(A121678(n)/A065033(Δ[n²]))`
-/

namespace A121679.P2257100047555612106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121678 n : ℚ) / (A065033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)⌋

end

end A121679.P2257100047555612106

/-! ## A121679.P8606619568746869570

`A121677(n)/A121676(n)*A121678(n)`
-/

namespace A121679.P8606619568746869570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121677 n : ℚ) / (A121676 n : ℚ) * (A121678 n : ℚ)

end

end A121679.P8606619568746869570

/-! ## A121679.P9856602504801669881

`A121678(n)/A121680(n)*A121681(n)`
-/

namespace A121679.P9856602504801669881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121678 n : ℚ) / (A121680 n : ℚ) * (A121681 n : ℚ)

end

end A121679.P9856602504801669881

/-!
# A121680: a(n) = [x^n] (1 + x*(1+x)^(n+1) )^(n+1).

The programs for A121680, there is no canonical definition to state claims against.
-/

/-! ## A121680.P9445687097679926816

`(n+1)*A121681(n)`
-/

namespace A121680.P9445687097679926816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A121681 n

end

end A121680.P9445687097679926816

/-! ## A121680.P10929751210902829586

`A121681(n)*A126988(A000124(n))`
-/

namespace A121680.P10929751210902829586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121681 n * A126988 (A000124 n).toNat

end

end A121680.P10929751210902829586

/-! ## A121680.P6279819131372780502

`A121681(n)*A143182(A000217(n))`
-/

namespace A121680.P6279819131372780502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121681 n * A143182 (A000217 n).toNat

end

end A121680.P6279819131372780502

/-! ## A121680.P587567082171806065

`A121676(n)*A121681(n)/A121677(n)`
-/

namespace A121680.P587567082171806065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121676 n * A121681 n : ℚ) / (A121677 n : ℚ)

end

end A121680.P587567082171806065

/-! ## A121680.P5643960729153251810

`A121678(n)*A121681(n)/A121679(n)`
-/

namespace A121680.P5643960729153251810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121678 n * A121681 n : ℚ) / (A121679 n : ℚ)

end

end A121680.P5643960729153251810

/-!
# A121681: a(n) = A121680(n)/(n+1) = [x^n] (1 + x*(1+x)^(n+1) )^(n+1) / (n+1).

The programs for A121681, there is no canonical definition to state claims against.
-/

/-! ## A121681.P11550555458814619650

`A121680(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121681.P11550555458814619650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121680 n : ℚ) / (n + 1 : ℚ)

end

end A121681.P11550555458814619650

/-! ## A121681.P5614829922769826527

`floor(A121680(n)/A266981(2*n))`
-/

namespace A121681.P5614829922769826527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121680 n : ℚ) / (A266981 (2 * n) : ℚ)⌋

end

end A121681.P5614829922769826527

/-! ## A121681.P884472468846391457

`A121677(n)/A121676(n)*A121680(n)`
-/

namespace A121681.P884472468846391457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121677 n : ℚ) / (A121676 n : ℚ) * (A121680 n : ℚ)

end

end A121681.P884472468846391457

/-! ## A121681.P6928201123834219722

`A121679(n)/A121678(n)*A121680(n)`
-/

namespace A121681.P6928201123834219722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121679 n : ℚ) / (A121678 n : ℚ) * (A121680 n : ℚ)

end

end A121681.P6928201123834219722

/-!
# A121683: Untouchable cubes.

The programs for A121683, there is no canonical definition to state claims against.
-/

/-! ## A121683.P4917421150480526567

`∩[A005114(n+2), n^3]`
-/

namespace A121683.P4917421150480526567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121683.P4917421150480526567

/-! ## A121683.P15735542332811140229

`A094543(A005835(n+1))`
-/

namespace A121683.P15735542332811140229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094543 (A005835 (n + 1)).toNat

end

end A121683.P15735542332811140229

/-! ## A121683.P7419531077617060940

`A094543(A023196(n+1))`
-/

namespace A121683.P7419531077617060940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094543 (A023196 (n + 1)).toNat

end

end A121683.P7419531077617060940

/-!
# A121684: Union of {8, 9, 18}, S, 2S and 4S, where S = odd squarefree numbers (A056911).

The programs for A121684, the canonical program `A121684.P14387965251010562134` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121684 has offset 1).

The definition of A121684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121684.P13312442972227118376

`lt[n, 2*A007947(n+1)+7]+1`
-/

namespace A121684.P13312442972227118376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (n + 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A121684.P13312442972227118376

namespace A121684

/-- `lt[n, 2*A007947(n+1)+7]+1` -/
def P13312442972227118376.Spec : Prop :=
  ∀ n, (P13312442972227118376.a n : ℤ) = A121684 (n + 1)

end A121684

/-! ## A121684.P11503101082809835146

`lt[n, A013929(A007947(n+1))]+1`
-/

namespace A121684.P11503101082809835146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A121684.P11503101082809835146

namespace A121684

/-- `lt[n, A013929(A007947(n+1))]+1` -/
def P11503101082809835146.Spec : Prop :=
  ∀ n, (P11503101082809835146.a n : ℤ) = A121684 (n + 1)

end A121684

/-! ## A121684.P14387965251010562134

`∪[A065966(n+1), A078779(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A121684

/-- `∪[A065966(n+1), A078779(n+1)]` -/
def P14387965251010562134.Spec : Prop :=
  ∀ n, (P14387965251010562134.a n : ℤ) = A121684 (n + 1)

theorem P14387965251010562134.correct : P14387965251010562134.Spec := by
  intro n
  simp only [A121684, Nat.add_sub_cancel]

end A121684

/-! ## A121684.P17075979906752276897

`∪[A078779(n+1), A135393(n+1)]`
-/

namespace A121684.P17075979906752276897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121684.P17075979906752276897

namespace A121684

/-- `∪[A078779(n+1), A135393(n+1)]` -/
def P17075979906752276897.Spec : Prop :=
  ∀ n, (P17075979906752276897.a n : ℤ) = A121684 (n + 1)

end A121684

/-! ## A121684.P5856075724130182573

`∩[A121176(n+1), A253781(n+1)]`
-/

namespace A121684.P5856075724130182573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121684.P5856075724130182573

namespace A121684

/-- `∩[A121176(n+1), A253781(n+1)]` -/
def P5856075724130182573.Spec : Prop :=
  ∀ n, (P5856075724130182573.a n : ℤ) = A121684 (n + 1)

end A121684

/-! ## A121684.P8795219748092855401

`lt[(∑[n-3]+1)/∏{p}[n+1, #], n]+1`
-/

namespace A121684.P8795219748092855401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n + 1

end

end A121684.P8795219748092855401

namespace A121684

/-- `lt[(∑[n-3]+1)/∏{p}[n+1, #], n]+1` -/
def P8795219748092855401.Spec : Prop :=
  ∀ n, (P8795219748092855401.a n : ℤ) = A121684 (n + 1)

end A121684

/-! ## A121684.P13949881230198071247

`lt[A047206(n+1), A005101(A007947(n+1))]+1`
-/

namespace A121684.P13949881230198071247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A121684.P13949881230198071247

namespace A121684

/-- `lt[A047206(n+1), A005101(A007947(n+1))]+1` -/
def P13949881230198071247.Spec : Prop :=
  ∀ n, (P13949881230198071247.a n : ℤ) = A121684 (n + 1)

end A121684

/-!
# A121685: Triangle read by rows: T(n,k) is the number of binary trees having n edges and k branches (1<=k<=n). A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

The programs for A121685, there is no canonical definition to state claims against.
-/

/-! ## A121685.P2929294473563868186

`2*A051290(n)/∑[char[∑[n]]]`
-/

namespace A121685.P2929294473563868186
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A051290 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A121685.P2929294473563868186

/-! ## A121685.P14995283096516278457

`2/∑[A010054(n)]*A051290(n)`
-/

namespace A121685.P14995283096516278457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A051290 n : ℚ)

end

end A121685.P14995283096516278457

/-! ## A121685.P1090387950906207880

`2/A002024(n+1)*A051290(n)`
-/

namespace A121685.P1090387950906207880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A002024 (n + 1) : ℚ) * (A051290 n : ℚ)

end

end A121685.P1090387950906207880

/-! ## A121685.P16696566830130251494

`A005843(A051290(n))/log2(A140513(n))`
-/

namespace A121685.P16696566830130251494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005843 (A051290 n).toNat : ℝ) / Real.logb 2 (A140513 n : ℝ)

end

end A121685.P16696566830130251494

/-! ## A121685.P6277953853561948024

`A005843(A051290(n))/∑[A010054(n)]`
-/

namespace A121685.P6277953853561948024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A051290 n).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A121685.P6277953853561948024

/-!
# A121686: Number of branches in all binary trees with n edges. A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

The programs for A121686, the canonical program `A121686.P17737768362692979232` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121686 has offset 1).

The definition of A121686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121686.P17737768362692979232

`2*((n+1)²+2)*C(2*(n+1), n+1)/((n+2)*(n+3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121686

/-- `2*((n+1)²+2)*C(2*(n+1), n+1)/((n+2)*(n+3))` -/
def P17737768362692979232.Spec : Prop :=
  ∀ n, P17737768362692979232.a n = (A121686 (n + 1) : ℚ)

end A121686

/-! ## A121686.P6471584685073129166

`2*A344191(n+1)`
-/

namespace A121686.P6471584685073129166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344191 (n + 1)

end

end A121686.P6471584685073129166

namespace A121686

/-- `2*A344191(n+1)` -/
def P6471584685073129166.Spec : Prop :=
  ∀ n, P6471584685073129166.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P15117541512494941618

`A344136(n+1)+A001700(n)`
-/

namespace A121686.P15117541512494941618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344136 (n + 1) + A001700 n

end

end A121686.P15117541512494941618

namespace A121686

/-- `A344136(n+1)+A001700(n)` -/
def P15117541512494941618.Spec : Prop :=
  ∀ n, P15117541512494941618.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P18423018079817173218

`A001700(n+1)-A070031(n)`
-/

namespace A121686.P18423018079817173218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) - A070031 n

end

end A121686.P18423018079817173218

namespace A121686

/-- `A001700(n+1)-A070031(n)` -/
def P18423018079817173218.Spec : Prop :=
  ∀ n, P18423018079817173218.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P7665071847856366445

`Δ[Δ[A276666(n)]]-A276666(n)`
-/

namespace A121686.P7665071847856366445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276666 n

end

end A121686.P7665071847856366445

namespace A121686

/-- `Δ[Δ[A276666(n)]]-A276666(n)` -/
def P7665071847856366445.Spec : Prop :=
  ∀ n, P7665071847856366445.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P12174034436927605721

`A120009(n+1)+A002054(n+1)`
-/

namespace A121686.P12174034436927605721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 1) + A002054 (n + 1)

end

end A121686.P12174034436927605721

namespace A121686

/-- `A120009(n+1)+A002054(n+1)` -/
def P12174034436927605721.Spec : Prop :=
  ∀ n, P12174034436927605721.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P10766263241240868569

`A349695(n+1)+A000108(n+1)`
-/

namespace A121686.P10766263241240868569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349695 (n + 1) + A000108 (n + 1)

end

end A121686.P10766263241240868569

namespace A121686

/-- `A349695(n+1)+A000108(n+1)` -/
def P10766263241240868569.Spec : Prop :=
  ∀ n, P10766263241240868569.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P12149988484277785898

`A276666(n+2)-A246574(n+1)`
-/

namespace A121686.P12149988484277785898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276666 (n + 2) - A246574 (n + 1)

end

end A121686.P12149988484277785898

namespace A121686

/-- `A276666(n+2)-A246574(n+1)` -/
def P12149988484277785898.Spec : Prop :=
  ∀ n, P12149988484277785898.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P6544033202474843473

`A024483(n+3)-A246574(n+1)`
-/

namespace A121686.P6544033202474843473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 3) - A246574 (n + 1)

end

end A121686.P6544033202474843473

namespace A121686

/-- `A024483(n+3)-A246574(n+1)` -/
def P6544033202474843473.Spec : Prop :=
  ∀ n, P6544033202474843473.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P2110630513566804519

`Δ[A024483(n+2)]-A024483(n+2)`
-/

namespace A121686.P2110630513566804519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A024483 (n + 2)

end

end A121686.P2110630513566804519

namespace A121686

/-- `Δ[A024483(n+2)]-A024483(n+2)` -/
def P2110630513566804519.Spec : Prop :=
  ∀ n, P2110630513566804519.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P6995693049280545904

`A246574(n+1)+2*A120009(n+1)`
-/

namespace A121686.P6995693049280545904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (n + 1) + 2 * A120009 (n + 1)

end

end A121686.P6995693049280545904

namespace A121686

/-- `A246574(n+1)+2*A120009(n+1)` -/
def P6995693049280545904.Spec : Prop :=
  ∀ n, P6995693049280545904.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P14124870612786644413

`2*(A000984(n+1)-A000245(n+1))`
-/

namespace A121686.P14124870612786644413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000984 (n + 1) - A000245 (n + 1))

end

end A121686.P14124870612786644413

namespace A121686

/-- `2*(A000984(n+1)-A000245(n+1))` -/
def P14124870612786644413.Spec : Prop :=
  ∀ n, P14124870612786644413.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P5235393093629869835

`A028329(n+1)-2*A000245(n+1)`
-/

namespace A121686.P5235393093629869835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 (n + 1) - 2 * A000245 (n + 1)

end

end A121686.P5235393093629869835

namespace A121686

/-- `A028329(n+1)-2*A000245(n+1)` -/
def P5235393093629869835.Spec : Prop :=
  ∀ n, P5235393093629869835.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P11741085041296544733

`2*A000984(n+1)-A071721(n+1)`
-/

namespace A121686.P11741085041296544733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 (n + 1) - A071721 (n + 1)

end

end A121686.P11741085041296544733

namespace A121686

/-- `2*A000984(n+1)-A071721(n+1)` -/
def P11741085041296544733.Spec : Prop :=
  ∀ n, P11741085041296544733.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P3241336950014700920

`2*(A028329(n+1)-A077587(n+1))`
-/

namespace A121686.P3241336950014700920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028329 (n + 1) - A077587 (n + 1))

end

end A121686.P3241336950014700920

namespace A121686

/-- `2*(A028329(n+1)-A077587(n+1))` -/
def P3241336950014700920.Spec : Prop :=
  ∀ n, P3241336950014700920.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P8246758219333704211

`2*A002054(n+1)-A246574(n+1)`
-/

namespace A121686.P8246758219333704211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002054 (n + 1) - A246574 (n + 1)

end

end A121686.P8246758219333704211

namespace A121686

/-- `2*A002054(n+1)-A246574(n+1)` -/
def P8246758219333704211.Spec : Prop :=
  ∀ n, P8246758219333704211.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P14821908367040033336

`2*(A002054(n+1)-A024483(n+2))`
-/

namespace A121686.P14821908367040033336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002054 (n + 1) - A024483 (n + 2))

end

end A121686.P14821908367040033336

namespace A121686

/-- `2*(A002054(n+1)-A024483(n+2))` -/
def P14821908367040033336.Spec : Prop :=
  ∀ n, P14821908367040033336.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P9710038336770740846

`2*(A076540(n+2)-A162551(n+1))`
-/

namespace A121686.P9710038336770740846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A076540 (n + 2) - A162551 (n + 1))

end

end A121686.P9710038336770740846

namespace A121686

/-- `2*(A076540(n+2)-A162551(n+1))` -/
def P9710038336770740846.Spec : Prop :=
  ∀ n, P9710038336770740846.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P1375939307681499356

`2*(A024482(n+3)-A051945(n+1))`
-/

namespace A121686.P1375939307681499356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024482 (n + 3) - A051945 (n + 1))

end

end A121686.P1375939307681499356

namespace A121686

/-- `2*(A024482(n+3)-A051945(n+1))` -/
def P1375939307681499356.Spec : Prop :=
  ∀ n, P1375939307681499356.a n = A121686 (n + 1)

end A121686

/-! ## A121686.P9729157353300223400

`A024483(n+3)-2*A276666(n+1)`
-/

namespace A121686.P9729157353300223400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024483 (n + 3) - 2 * A276666 (n + 1)

end

end A121686.P9729157353300223400

namespace A121686

/-- `A024483(n+3)-2*A276666(n+1)` -/
def P9729157353300223400.Spec : Prop :=
  ∀ n, P9729157353300223400.a n = A121686 (n + 1)

end A121686

/-!
# A121687: G.f. satisfies A(x) = 1 + x*A(x) * A( x*A(x) )^2.

The programs for A121687, there is no canonical definition to state claims against.
-/

/-! ## A121687.P8334457691152393660

`A154757(n+1)-A089311(n!)`
-/

namespace A121687.P8334457691152393660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154757 (n + 1) - A089311 (Nat.factorial n)

end

end A121687.P8334457691152393660

/-! ## A121687.P15033459723822198603

`A028310(A154757(n+1)-A000579(n))`
-/

namespace A121687.P15033459723822198603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A154757 (n + 1) - A000579 n).toNat

end

end A121687.P15033459723822198603

/-! ## A121687.P14318727978923849227

`A028310(A154757(n+1)-A026812(n))`
-/

namespace A121687.P14318727978923849227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A154757 (n + 1) - A026812 n).toNat

end

end A121687.P14318727978923849227

/-!
# A121688: G.f.: Sum_{n>=0} x^n * (1+x)^(2^n).

The programs for A121688, there is no canonical definition to state claims against.
-/

/-! ## A121688.P12788133532294650206

`A140199(∑[A007476(n)])`
-/

namespace A121688.P12788133532294650206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121688.P12788133532294650206

/-! ## A121688.P3909052117699137851

`A356737(∑[∑[A356604(n)]])`
-/

namespace A121688.P3909052117699137851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121688.P3909052117699137851

/-! ## A121688.P4267271322805002493

`A303759(A259793(n+1))+n`
-/

namespace A121688.P4267271322805002493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303759 (A259793 (n + 1)).toNat + (n : ℤ)

end

end A121688.P4267271322805002493

/-!
# A121689: G.f.: Sum_{n>=0} x^n * (1+x)^(n^2).

The programs for A121689, there is no canonical definition to state claims against.
-/

/-! ## A121689.P10930690285885500272

`A325580(∑[n])`
-/

namespace A121689.P10930690285885500272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121689.P10930690285885500272

/-! ## A121689.P16360486645173063033

`A325580(C(n+1, 2))^A178334(n)`
-/

namespace A121689.P16360486645173063033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325580 (Nat.choose (n + 1) 2) : ℚ) ^ (A178334 n : ℤ)

end

end A121689.P16360486645173063033

/-! ## A121689.P12205149100946105333

`A325580(A000217(n))^A178334(n)`
-/

namespace A121689.P12205149100946105333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325580 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A121689.P12205149100946105333

/-! ## A121689.P9997442558900464761

`gcd(A000038(n), A325580(A000217(n)))`
-/

namespace A121689.P9997442558900464761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A325580 (A000217 n).toNat)

end

end A121689.P9997442558900464761

/-! ## A121689.P7126667258359028631

`lcm(A020985(n), A325580(A000217(n)))`
-/

namespace A121689.P7126667258359028631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A325580 (A000217 n).toNat)

end

end A121689.P7126667258359028631

/-! ## A121689.P17197124577913678657

`or(A000007(n), A325580(A000217(n)))`
-/

namespace A121689.P17197124577913678657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A325580 (A000217 n).toNat)

end

end A121689.P17197124577913678657

/-!
# A121690: G.f.: A(x) = Sum_{k>=0} x^k * (1+x)^(k*(k+1)/2).

The programs for A121690, there is no canonical definition to state claims against.
-/

/-! ## A121690.P11924826392490292565

`A131338(C(n+3, 3)+1)`
-/

namespace A121690.P11924826392490292565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131338 (Nat.choose (n + 3) 3 + 1)

end

end A121690.P11924826392490292565

/-! ## A121690.P6779082810573628842

`A131338(∑[∑[n+1]]+1)`
-/

namespace A121690.P6779082810573628842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121690.P6779082810573628842

/-! ## A121690.P5095174109458360772

`A108141(A148144(n))`
-/

namespace A121690.P5095174109458360772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148144 n).toNat

end

end A121690.P5095174109458360772

/-! ## A121690.P16858960014609443866

`A024417(A164651(n)+n)`
-/

namespace A121690.P16858960014609443866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A164651 n + (n : ℤ)).toNat

end

end A121690.P16858960014609443866

/-!
# A121691: Number of deco polyominoes of area n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121691, there is no canonical definition to state claims against.
-/

/-! ## A121691.P1208910179227383235

`A100196(A151452(n+1))`
-/

namespace A121691.P1208910179227383235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A151452 (n + 1)).toNat

end

end A121691.P1208910179227383235

/-! ## A121691.P1849538058204814926

`A286294(or(1, A006575(n+1)))`
-/

namespace A121691.P1849538058204814926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286294 (Int.lor 1 (A006575 (n + 1))).toNat

end

end A121691.P1849538058204814926

/-! ## A121691.P10314619530422560638

`A062108(or(A050292(n), A217782(n)))`
-/

namespace A121691.P10314619530422560638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.lor (A050292 n) (A217782 n)).toNat

end

end A121691.P10314619530422560638

/-! ## A121691.P17476163040626157476

`A062108(or(A091018(n), A217782(n)))`
-/

namespace A121691.P17476163040626157476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.lor (A091018 n) (A217782 n)).toNat

end

end A121691.P17476163040626157476

/-!
# A121693: Number of deco polyominoes of height n and vertical height 3 (i.e., having 3 rows).

The programs for A121693, the canonical program `A121693.P18416777011297628321` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121693 has offset 1).

The definition of A121693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121693.P9712488469599525030

`3*(a(n-1)+2^(n-1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A121693.P9712488469599525030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A121693.P9712488469599525030

namespace A121693

/-- `3*(a(n-1)+2^(n-1)-1)` -/
def P9712488469599525030.Spec : Prop :=
  ∀ n, P9712488469599525030.a n = (A121693 (n + 1) : ℚ)

end A121693

/-! ## A121693.P18416777011297628321

`ceil((23*3^(n+1)-81*2^(n+1)+81)/54)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121693

/-- `ceil((23*3^(n+1)-81*2^(n+1)+81)/54)` -/
def P18416777011297628321.Spec : Prop :=
  ∀ n, P18416777011297628321.a n = A121693 (n + 1)

theorem P18416777011297628321.correct : P18416777011297628321.Spec := by
  intro n
  simp only [A121693, Nat.add_sub_cancel]

end A121693

/-! ## A121693.P18210308376950354345

`3*(∑[2*a(n-1)]+a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A121693.P18210308376950354345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A121693.P18210308376950354345

namespace A121693

/-- `3*(∑[2*a(n-1)]+a(n-1))` -/
def P18210308376950354345.Spec : Prop :=
  ∀ n, (P18210308376950354345.a n : ℤ) = A121693 (n + 1)

end A121693

/-! ## A121693.P14805690025257858576

`3*(a(n-1)+2-A122958(n))-3` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A121693.P14805690025257858576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * (a (n - 1) + (2 - A122958 n)) - 3

end

end A121693.P14805690025257858576

namespace A121693

/-- `3*(a(n-1)+2-A122958(n))-3` -/
def P14805690025257858576.Spec : Prop :=
  ∀ n, P14805690025257858576.a n = A121693 (n + 1)

end A121693

/-! ## A121693.P11708191832409095541

`A008585(A008861(n-1)+a(n-1)-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A121693.P11708191832409095541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A008585 (A008861 (n - 1) + a (n - 1) - 1).toNat

end

end A121693.P11708191832409095541

namespace A121693

/-- `A008585(A008861(n-1)+a(n-1)-1)` -/
def P11708191832409095541.Spec : Prop :=
  ∀ n, P11708191832409095541.a n = A121693 (n + 1)

end A121693

/-!
# A121694: Sum of the vertical heights (i.e., number of rows) of all deco polyominoes of height n.

The programs for A121694, there is no canonical definition to state claims against.
-/

/-! ## A121694.P14737007586190857241

`A133310(A331336(n+1)-A350102(n))`
-/

namespace A121694.P14737007586190857241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A331336 (n + 1) - A350102 n).toNat

end

end A121694.P14737007586190857241

/-!
# A121695: Number of odd-length first columns in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121695, the canonical program `A121695.P13946523727611198148` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121695 has offset 1).

The definition of A121695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121695.P13946523727611198148

`a(n-2)+(n-1)!*((n+1)*floor((n+1)/2)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121695

/-- `a(n-2)+(n-1)!*((n+1)*floor((n+1)/2)-1)` -/
def P13946523727611198148.Spec : Prop :=
  ∀ n, P13946523727611198148.a n = A121695 (n + 1)

theorem P13946523727611198148.correct : P13946523727611198148.Spec := by
  intro n
  simp only [A121695, Nat.add_sub_cancel]

end A121695

/-! ## A121695.P4845934600538573539

`(ceil(n/2)+1)*n!-a(n-1)` with `a(0)=1`
-/

namespace A121695.P4845934600538573539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (⌈(n : ℚ) / 2⌉ + 1) * (Nat.factorial n : ℤ) - a (n - 1)

end

end A121695.P4845934600538573539

namespace A121695

/-- `(ceil(n/2)+1)*n!-a(n-1)` -/
def P4845934600538573539.Spec : Prop :=
  ∀ n, P4845934600538573539.a n = A121695 (n + 1)

end A121695

/-! ## A121695.P3777605162594033806

`A052689(n)-a(n-1)` with `a(0)=1`
-/

namespace A121695.P3777605162594033806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052689 n - a (n - 1)

end

end A121695.P3777605162594033806

namespace A121695

/-- `A052689(n)-a(n-1)` -/
def P3777605162594033806.Spec : Prop :=
  ∀ n, P3777605162594033806.a n = A121695 (n + 1)

end A121695

/-! ## A121695.P15872543801836584837

`abs(∑[A080513(n)*A133942(n)])`
-/

namespace A121695.P15872543801836584837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A121695.P15872543801836584837

namespace A121695

/-- `abs(∑[A080513(n)*A133942(n)])` -/
def P15872543801836584837.Spec : Prop :=
  ∀ n, P15872543801836584837.a n = A121695 (n + 1)

end A121695

/-! ## A121695.P9962913095894653954

`(n+1)!-A121696(n+1)`
-/

namespace A121695.P9962913095894653954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A121696 (n + 1)

end

end A121695.P9962913095894653954

namespace A121695

/-- `(n+1)!-A121696(n+1)` -/
def P9962913095894653954.Spec : Prop :=
  ∀ n, P9962913095894653954.a n = A121695 (n + 1)

end A121695

/-! ## A121695.P14363112052357598454

`A000142(n+1)-A121696(n+1)`
-/

namespace A121695.P14363112052357598454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A121696 (n + 1)

end

end A121695.P14363112052357598454

namespace A121695

/-- `A000142(n+1)-A121696(n+1)` -/
def P14363112052357598454.Spec : Prop :=
  ∀ n, P14363112052357598454.a n = A121695 (n + 1)

end A121695

/-!
# A121696: Number of even-length first columns in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A121696, the canonical program `A121696.P4492932267453692239` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121696 has offset 1).

The definition of A121696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121696.P4492932267453692239

`a(n-2)+(n+1)*(n-1)!*floor(n/2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121696

/-- `a(n-2)+(n+1)*(n-1)!*floor(n/2)` -/
def P4492932267453692239.Spec : Prop :=
  ∀ n, P4492932267453692239.a n = A121696 (n + 1)

theorem P4492932267453692239.correct : P4492932267453692239.Spec := by
  intro n
  simp only [A121696, Nat.add_sub_cancel]

end A121696

/-! ## A121696.P4609759224287323191

`n!*∑[char[2*n]]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A121696.P4609759224287323191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - a (n - 1)

end

end A121696.P4609759224287323191

namespace A121696

/-- `n!*∑[char[2*n]]-a(n-1)` -/
def P4609759224287323191.Spec : Prop :=
  ∀ n, P4609759224287323191.a n = A121696 (n + 1)

end A121696

/-! ## A121696.P750442976161911605

`A052558(n)-a(n-1)` with `a(0)=0`
-/

namespace A121696.P750442976161911605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052558 n - a (n - 1)

end

end A121696.P750442976161911605

namespace A121696

/-- `A052558(n)-a(n-1)` -/
def P750442976161911605.Spec : Prop :=
  ∀ n, P750442976161911605.a n = A121696 (n + 1)

end A121696

/-! ## A121696.P14825495943281617820

`(n+1)!-A121695(n+1)`
-/

namespace A121696.P14825495943281617820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A121695 (n + 1)

end

end A121696.P14825495943281617820

namespace A121696

/-- `(n+1)!-A121695(n+1)` -/
def P14825495943281617820.Spec : Prop :=
  ∀ n, P14825495943281617820.a n = A121696 (n + 1)

end A121696

/-! ## A121696.P8309847250468709524

`record[A152656(n)]-A121695(n+1)`
-/

namespace A121696.P8309847250468709524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A121695 (n + 1)

end

end A121696.P8309847250468709524

namespace A121696

/-- `record[A152656(n)]-A121695(n+1)` -/
def P8309847250468709524.Spec : Prop :=
  ∀ n, P8309847250468709524.a n = A121696 (n + 1)

end A121696

/-! ## A121696.P11247269770205533647

`A000142(n+1)-A121695(n+1)`
-/

namespace A121696.P11247269770205533647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A121695 (n + 1)

end

end A121696.P11247269770205533647

namespace A121696

/-- `A000142(n+1)-A121695(n+1)` -/
def P11247269770205533647.Spec : Prop :=
  ∀ n, P11247269770205533647.a n = A121696 (n + 1)

end A121696

/-!
# A121699: a(n) = floor((prime(n+1)/prime(n))^n).

The programs for A121699, the canonical program `A121699.P8887310455835328610` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121699 has offset 1).

The definition of A121699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121699.P8887310455835328610

`floor(ratio[A001748(n+1)]^(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121699

/-- `floor(ratio[A001748(n+1)]^(n+1))` -/
def P8887310455835328610.Spec : Prop :=
  ∀ n, P8887310455835328610.a n = A121699 (n + 1)

theorem P8887310455835328610.correct : P8887310455835328610.Spec := by
  intro n
  simp only [A121699, Nat.add_sub_cancel]

end A121699

/-! ## A121699.P13118045774812170588

`floor(ratio[A001749(n+1)]^(n+1))`
-/

namespace A121699.P13118045774812170588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)⌋

end

end A121699.P13118045774812170588

namespace A121699

/-- `floor(ratio[A001749(n+1)]^(n+1))` -/
def P13118045774812170588.Spec : Prop :=
  ∀ n, P13118045774812170588.a n = A121699 (n + 1)

end A121699

/-! ## A121699.P13677604270356448155

`floor((A001748(n+2)/A001748(n+1))^(n+1))`
-/

namespace A121699.P13677604270356448155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001748 (n + 2) : ℚ) / (A001748 (n + 1) : ℚ)) ^ (n + 1)⌋

end

end A121699.P13677604270356448155

namespace A121699

/-- `floor((A001748(n+2)/A001748(n+1))^(n+1))` -/
def P13677604270356448155.Spec : Prop :=
  ∀ n, P13677604270356448155.a n = A121699 (n + 1)

theorem P13677604270356448155.correct : P13677604270356448155.Spec := by
  intro n
  simp only [A121699, Nat.add_sub_cancel, A121699.P13677604270356448155.a, A121699.P8887310455835328610.f1, A121699.P8887310455835328610.a, SequenceMachineLib.memo_apply]

end A121699

/-! ## A121699.P12588099922234823869

`floor(ratio[A000040(n+1)]^(n+1))`
-/

namespace A121699.P12588099922234823869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)⌋

end

end A121699.P12588099922234823869

namespace A121699

/-- `floor(ratio[A000040(n+1)]^(n+1))` -/
def P12588099922234823869.Spec : Prop :=
  ∀ n, P12588099922234823869.a n = A121699 (n + 1)

end A121699

/-! ## A121699.P17431657881768083745

`floor(ratio[A100484(n+1)]^(n+1))`
-/

namespace A121699.P17431657881768083745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)⌋

end

end A121699.P17431657881768083745

namespace A121699

/-- `floor(ratio[A100484(n+1)]^(n+1))` -/
def P17431657881768083745.Spec : Prop :=
  ∀ n, P17431657881768083745.a n = A121699 (n + 1)

end A121699

/-! ## A121699.P9264446851942511162

`floor((A000040(n+2)/A000040(n+1))^(n+1))`
-/

namespace A121699.P9264446851942511162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000040 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)) ^ (n + 1)⌋

end

end A121699.P9264446851942511162

namespace A121699

/-- `floor((A000040(n+2)/A000040(n+1))^(n+1))` -/
def P9264446851942511162.Spec : Prop :=
  ∀ n, P9264446851942511162.a n = A121699 (n + 1)

end A121699

/-! ## A121699.P13888037995898249959

`A000196(floor(ratio[A001248(n+1)]^(n+1)))`
-/

namespace A121699.P13888037995898249959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)⌋.toNat

end

end A121699.P13888037995898249959

namespace A121699

/-- `A000196(floor(ratio[A001248(n+1)]^(n+1)))` -/
def P13888037995898249959.Spec : Prop :=
  ∀ n, P13888037995898249959.a n = A121699 (n + 1)

end A121699

