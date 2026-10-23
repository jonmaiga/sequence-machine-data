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
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A137200: Number of ways to tile an n X 1 strip with 1 X 1 squares and 2 X 1 dominoes with the restriction that no three consecutive tiles are of the same type.

The programs for A137200, the canonical program `A137200.P14230897967230810751` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137200 has offset 0).

The definition of A137200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137200.P14230897967230810751

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137200

/-- `a(n-1)+a(n-4)` -/
def P14230897967230810751.Spec : Prop :=
  ∀ n, (P14230897967230810751.a n : ℤ) = A137200 n

theorem P14230897967230810751.correct : P14230897967230810751.Spec := by
  intro n
  simp only [A137200]

end A137200

/-! ## A137200.P4105066276487829264

`A226517(2*(n+1))+A003269(n+2)`
-/

namespace A137200.P4105066276487829264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (2 * (n + 1)) + A003269 (n + 2)

end

end A137200.P4105066276487829264

namespace A137200

/-- `A226517(2*(n+1))+A003269(n+2)` -/
def P4105066276487829264.Spec : Prop :=
  ∀ n, P4105066276487829264.a n = A137200 n

end A137200

/-! ## A137200.P13262644018587597374

`A003411(n)-A103632(n+1)`
-/

namespace A137200.P13262644018587597374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 n - A103632 (n + 1)

end

end A137200.P13262644018587597374

namespace A137200

/-- `A003411(n)-A103632(n+1)` -/
def P13262644018587597374.Spec : Prop :=
  ∀ n, P13262644018587597374.a n = A137200 n

end A137200

/-! ## A137200.P17273115919337021798

`record[A103632(n)]-A103632(n+1)`
-/

namespace A137200.P17273115919337021798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A103632 (n + 1)

end

end A137200.P17273115919337021798

namespace A137200

/-- `record[A103632(n)]-A103632(n+1)` -/
def P17273115919337021798.Spec : Prop :=
  ∀ n, P17273115919337021798.a n = A137200 n

end A137200

/-! ## A137200.P7631285003500216849

`A078467(n+2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A137200.P7631285003500216849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A078467 (n + 2) - a (n - 1)

end

end A137200.P7631285003500216849

namespace A137200

/-- `A078467(n+2)-a(n-1)` -/
def P7631285003500216849.Spec : Prop :=
  ∀ n, P7631285003500216849.a n = A137200 n

end A137200

/-! ## A137200.P4365620298505413320

`Δ[A048590(n)-∑[A103632(n)]]`
-/

namespace A137200.P4365620298505413320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137200.P4365620298505413320

namespace A137200

/-- `Δ[A048590(n)-∑[A103632(n)]]` -/
def P4365620298505413320.Spec : Prop :=
  ∀ n, P4365620298505413320.a n = A137200 n

end A137200

/-! ## A137200.P4923054541143437267

`Δ[A048592(n)-∑[A103632(n)]]`
-/

namespace A137200.P4923054541143437267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048592 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137200.P4923054541143437267

namespace A137200

/-- `Δ[A048592(n)-∑[A103632(n)]]` -/
def P4923054541143437267.Spec : Prop :=
  ∀ n, P4923054541143437267.a n = A137200 n

end A137200

/-! ## A137200.P7897011241147359539

`Δ[A048590(n)]-A103632(n+1)`
-/

namespace A137200.P7897011241147359539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A103632 (n + 1)

end

end A137200.P7897011241147359539

namespace A137200

/-- `Δ[A048590(n)]-A103632(n+1)` -/
def P7897011241147359539.Spec : Prop :=
  ∀ n, P7897011241147359539.a n = A137200 n

end A137200

/-! ## A137200.P13687796513071199340

`Δ[A048592(n)]-A103632(n+1)`
-/

namespace A137200.P13687796513071199340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A103632 (n + 1)

end

end A137200.P13687796513071199340

namespace A137200

/-- `Δ[A048592(n)]-A103632(n+1)` -/
def P13687796513071199340.Spec : Prop :=
  ∀ n, P13687796513071199340.a n = A137200 n

end A137200

/-! ## A137200.P11794007467419101145

`A048590(n+1)-(A103632(n+1)+A048590(n))`
-/

namespace A137200.P11794007467419101145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048590 (n + 1) - (A103632 (n + 1) + A048590 n)

end

end A137200.P11794007467419101145

namespace A137200

/-- `A048590(n+1)-(A103632(n+1)+A048590(n))` -/
def P11794007467419101145.Spec : Prop :=
  ∀ n, P11794007467419101145.a n = A137200 n

end A137200

/-!
# A137202: Number of nodes in the BDD for the hidden weighted bit function h_n under the best possible ordering of variables.

The programs for A137202, there is no canonical definition to state claims against.
-/

/-! ## A137202.P8589277757717104090

`A334299(A181061(n))+A002061(n)`
-/

namespace A137202.P8589277757717104090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (A181061 n).toNat + A002061 n

end

end A137202.P8589277757717104090

/-!
# A137203: Number of Fibonacci numbers less than or equal to n^2.

The programs for A137203, the canonical program `A137203.P13219969352286166426` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137203 has offset 0).

The definition of A137203 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137203.P13219969352286166426

`A108852(n²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A137203

/-- `A108852(n²)` -/
def P13219969352286166426.Spec : Prop :=
  ∀ n, P13219969352286166426.a n = A137203 n

theorem P13219969352286166426.correct : P13219969352286166426.Spec := by
  intro n
  simp only [A137203]

end A137203

/-! ## A137203.P9899270202289211441

`comp[ceil(sqrt(A000045(n))+n)]-n`
-/

namespace A137203.P9899270202289211441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000045 n : ℝ) + (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A137203.P9899270202289211441

namespace A137203

/-- `comp[ceil(sqrt(A000045(n))+n)]-n` -/
def P9899270202289211441.Spec : Prop :=
  ∀ n, P9899270202289211441.a n = A137203 n

end A137203

/-! ## A137203.P11974937042715045500

`comp[ceil(sqrt(A212804(n+1)))+n]-n`
-/

namespace A137203.P11974937042715045500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A212804 (n + 1) : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A137203.P11974937042715045500

namespace A137203

/-- `comp[ceil(sqrt(A212804(n+1)))+n]-n` -/
def P11974937042715045500.Spec : Prop :=
  ∀ n, P11974937042715045500.a n = A137203 n

end A137203

/-! ## A137203.P1737055889982034696

`comp[ceil(sqrt(A103609(2*n)))+n]-n`
-/

namespace A137203.P1737055889982034696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A103609 (2 * n) : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A137203.P1737055889982034696

namespace A137203

/-- `comp[ceil(sqrt(A103609(2*n)))+n]-n` -/
def P1737055889982034696.Spec : Prop :=
  ∀ n, P1737055889982034696.a n = A137203 n

end A137203

/-! ## A137203.P376088000348909351

`A130245(n*A195121(n))+1`
-/

namespace A137203.P376088000348909351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ((n : ℤ) * A195121 n).toNat + 1

end

end A137203.P376088000348909351

namespace A137203

/-- `A130245(n*A195121(n))+1` -/
def P376088000348909351.Spec : Prop :=
  ∀ n, P376088000348909351.a n = A137203 n

end A137203

/-! ## A137203.P5992716960575500605

`A000124(n)-(∑[n]-A130245(n*A195121(n)))`
-/

namespace A137203.P5992716960575500605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130245 ((n : ℤ) * A195121 n).toNat)

end

end A137203.P5992716960575500605

namespace A137203

/-- `A000124(n)-(∑[n]-A130245(n*A195121(n)))` -/
def P5992716960575500605.Spec : Prop :=
  ∀ n, P5992716960575500605.a n = A137203 n

end A137203

/-! ## A137203.P5887718058196372134

`1-(A000035(2*n)-A130245(n*A195121(n)))`
-/

namespace A137203.P5887718058196372134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 (2 * n) - A130245 ((n : ℤ) * A195121 n).toNat)

end

end A137203.P5887718058196372134

namespace A137203

/-- `1-(A000035(2*n)-A130245(n*A195121(n)))` -/
def P5887718058196372134.Spec : Prop :=
  ∀ n, P5887718058196372134.a n = A137203 n

end A137203

/-! ## A137203.P10729307885568620012

`A008619(2*n)-(n-A130245(n*A195121(n)))`
-/

namespace A137203.P10729307885568620012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - ((n : ℤ) - A130245 ((n : ℤ) * A195121 n).toNat)

end

end A137203.P10729307885568620012

namespace A137203

/-- `A008619(2*n)-(n-A130245(n*A195121(n)))` -/
def P10729307885568620012.Spec : Prop :=
  ∀ n, P10729307885568620012.a n = A137203 n

end A137203

/-! ## A137203.P10621615396645414590

`A008621(4*n)-(n-A130245(n*A195121(n)))`
-/

namespace A137203.P10621615396645414590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * n) - ((n : ℤ) - A130245 ((n : ℤ) * A195121 n).toNat)

end

end A137203.P10621615396645414590

namespace A137203

/-- `A008621(4*n)-(n-A130245(n*A195121(n)))` -/
def P10621615396645414590.Spec : Prop :=
  ∀ n, P10621615396645414590.a n = A137203 n

end A137203

/-! ## A137203.P12788373832039780255

`A135481(A017101(n))-(2-A130245(n*A195121(n)))`
-/

namespace A137203.P12788373832039780255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A017101 n).toNat - (2 - A130245 ((n : ℤ) * A195121 n).toNat)

end

end A137203.P12788373832039780255

namespace A137203

/-- `A135481(A017101(n))-(2-A130245(n*A195121(n)))` -/
def P12788373832039780255.Spec : Prop :=
  ∀ n, P12788373832039780255.a n = A137203 n

end A137203

/-! ## A137203.P15864376378259973851

`A003602(A017113(n))-(n-A130245(n*A195121(n)))`
-/

namespace A137203.P15864376378259973851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A017113 n).toNat - ((n : ℤ) - A130245 ((n : ℤ) * A195121 n).toNat)

end

end A137203.P15864376378259973851

namespace A137203

/-- `A003602(A017113(n))-(n-A130245(n*A195121(n)))` -/
def P15864376378259973851.Spec : Prop :=
  ∀ n, P15864376378259973851.a n = A137203 n

end A137203

/-! ## A137203.P2573515171267033637

`A130233(n²)+1`
-/

namespace A137203.P2573515171267033637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (n ^ 2) + 1

end

end A137203.P2573515171267033637

namespace A137203

/-- `A130233(n²)+1` -/
def P2573515171267033637.Spec : Prop :=
  ∀ n, P2573515171267033637.a n = A137203 n

end A137203

/-! ## A137203.P4027024860347909372

`A348553(A130233(n²))`
-/

namespace A137203.P4027024860347909372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A130233 (n ^ 2)).toNat

end

end A137203.P4027024860347909372

namespace A137203

/-- `A348553(A130233(n²))` -/
def P4027024860347909372.Spec : Prop :=
  ∀ n, P4027024860347909372.a n = A137203 n

end A137203

/-! ## A137203.P92998725091052081

`A000027(A108852(n*n))`
-/

namespace A137203.P92998725091052081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A108852 (n * n)).toNat

end

end A137203.P92998725091052081

namespace A137203

/-- `A000027(A108852(n*n))` -/
def P92998725091052081.Spec : Prop :=
  ∀ n, P92998725091052081.a n = A137203 n

end A137203

/-! ## A137203.P14379852431097602044

`A130245(A195121(n²))+1`
-/

namespace A137203.P14379852431097602044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A195121 (n ^ 2)).toNat + 1

end

end A137203.P14379852431097602044

namespace A137203

/-- `A130245(A195121(n²))+1` -/
def P14379852431097602044.Spec : Prop :=
  ∀ n, P14379852431097602044.a n = A137203 n

end A137203

/-! ## A137203.P11872117147836610740

`lcm(A014963(∑[n+1]), A108852(n*n))`
-/

namespace A137203.P11872117147836610740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) (A108852 (n * n))

end

end A137203.P11872117147836610740

namespace A137203

/-- `lcm(A014963(∑[n+1]), A108852(n*n))` -/
def P11872117147836610740.Spec : Prop :=
  ∀ n, (P11872117147836610740.a n : ℤ) = A137203 n

end A137203

/-! ## A137203.P7201000406923657537

`A000124(n)-(∑[n]-A130245(A195121(n²)))`
-/

namespace A137203.P7201000406923657537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130245 (A195121 (n ^ 2)).toNat)

end

end A137203.P7201000406923657537

namespace A137203

/-- `A000124(n)-(∑[n]-A130245(A195121(n²)))` -/
def P7201000406923657537.Spec : Prop :=
  ∀ n, P7201000406923657537.a n = A137203 n

end A137203

/-! ## A137203.P11292435761065942292

`A130234(n²+1)`
-/

namespace A137203.P11292435761065942292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (n ^ 2 + 1)

end

end A137203.P11292435761065942292

namespace A137203

/-- `A130234(n²+1)` -/
def P11292435761065942292.Spec : Prop :=
  ∀ n, P11292435761065942292.a n = A137203 n

end A137203

/-! ## A137203.P7358829032695154060

`A130245(A184584(n²+1))`
-/

namespace A137203.P7358829032695154060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A184584 (n ^ 2 + 1)).toNat

end

end A137203.P7358829032695154060

namespace A137203

/-- `A130245(A184584(n²+1))` -/
def P7358829032695154060.Spec : Prop :=
  ∀ n, P7358829032695154060.a n = A137203 n

end A137203

/-! ## A137203.P3292100389723616455

`A130245(A184586(n²+1))`
-/

namespace A137203.P3292100389723616455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A184586 (n ^ 2 + 1)).toNat

end

end A137203.P3292100389723616455

namespace A137203

/-- `A130245(A184586(n²+1))` -/
def P3292100389723616455.Spec : Prop :=
  ∀ n, P3292100389723616455.a n = A137203 n

end A137203

/-!
# A137206: First differences of A074323.

The programs for A137206, the canonical program `A137206.P14916974729964262309` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137206 has offset 0).

The definition of A137206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137206.P14916974729964262309

`2*a(n-2)` with `a(0)=0, a(1)=2, a(2)=-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137206

/-- `2*a(n-2)` -/
def P14916974729964262309.Spec : Prop :=
  ∀ n, P14916974729964262309.a n = A137206 n

theorem P14916974729964262309.correct : P14916974729964262309.Spec := by
  intro n
  simp only [A137206]

end A137206

/-! ## A137206.P13275950411060002751

`ogf((2x-x^2)/(1-2x^2))`
-/

namespace A137206.P13275950411060002751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, 0, -2] n

end

end A137206.P13275950411060002751

namespace A137206

/-- `ogf((2x-x^2)/(1-2x^2))` -/
def P13275950411060002751.Spec : Prop :=
  ∀ n, P13275950411060002751.a n = A137206 n

end A137206

/-! ## A137206.P5637055021416349118

`a(n-2)+a(n-2)` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A137206.P5637055021416349118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n a =>
  a (n - 2) + a (n - 2)

end

end A137206.P5637055021416349118

namespace A137206

/-- `a(n-2)+a(n-2)` -/
def P5637055021416349118.Spec : Prop :=
  ∀ n, P5637055021416349118.a n = A137206 n

theorem P5637055021416349118.correct : P5637055021416349118.Spec := by
  intro n
  simp only [A137206, Nat.add_sub_cancel, A137206.P5637055021416349118.a, A137206.P14916974729964262309.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A137206

/-! ## A137206.P11497630676438811854

`a(n-2)/(1-1/2)` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A137206.P11497630676438811854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, -1] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A137206.P11497630676438811854

namespace A137206

/-- `a(n-2)/(1-1/2)` -/
def P11497630676438811854.Spec : Prop :=
  ∀ n, P11497630676438811854.a n = (A137206 n : ℚ)

end A137206

/-! ## A137206.P1636073059286526856

`a(n-2)-(char[2]-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A137206.P1636073059286526856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A137206.P1636073059286526856

namespace A137206

/-- `a(n-2)-(char[2]-a(n-2))` -/
def P1636073059286526856.Spec : Prop :=
  ∀ n, P1636073059286526856.a n = A137206 n

end A137206

/-! ## A137206.P10693915649686120325

`A076736(n+3)-A077957(n)`
-/

namespace A137206.P10693915649686120325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 3) - A077957 n

end

end A137206.P10693915649686120325

namespace A137206

/-- `A076736(n+3)-A077957(n)` -/
def P10693915649686120325.Spec : Prop :=
  ∀ n, P10693915649686120325.a n = A137206 n

end A137206

/-! ## A137206.P6346824690751151772

`A131575(n+2)-Δ[A158780(n+1)]`
-/

namespace A137206.P6346824690751151772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 2) - (f1 (n + 1) - f1 n)

end

end A137206.P6346824690751151772

namespace A137206

/-- `A131575(n+2)-Δ[A158780(n+1)]` -/
def P6346824690751151772.Spec : Prop :=
  ∀ n, P6346824690751151772.a n = A137206 n

end A137206

/-! ## A137206.P9051414036206132081

`(A014681(n)-n)*A016116(A014681(n))`
-/

namespace A137206.P9051414036206132081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A016116 (A014681 n).toNat

end

end A137206.P9051414036206132081

namespace A137206

/-- `(A014681(n)-n)*A016116(A014681(n))` -/
def P9051414036206132081.Spec : Prop :=
  ∀ n, P9051414036206132081.a n = A137206 n

end A137206

/-! ## A137206.P6622173453547893112

`(A029744(n+1)-A016116(n))*A280193(n+1)`
-/

namespace A137206.P6622173453547893112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 1) - A016116 n) * A280193 (n + 1)

end

end A137206.P6622173453547893112

namespace A137206

/-- `(A029744(n+1)-A016116(n))*A280193(n+1)` -/
def P6622173453547893112.Spec : Prop :=
  ∀ n, P6622173453547893112.a n = A137206 n

end A137206

/-! ## A137206.P10603298977858986732

`Δ[A074323(n)]`
-/

namespace A137206.P10603298977858986732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137206.P10603298977858986732

namespace A137206

/-- `Δ[A074323(n)]` -/
def P10603298977858986732.Spec : Prop :=
  ∀ n, P10603298977858986732.a n = A137206 n

end A137206

/-! ## A137206.P14659115298733620718

`Δ[A164073(A028310(n))]`
-/

namespace A137206.P14659115298733620718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137206.P14659115298733620718

namespace A137206

/-- `Δ[A164073(A028310(n))]` -/
def P14659115298733620718.Spec : Prop :=
  ∀ n, P14659115298733620718.a n = A137206 n

end A137206

/-! ## A137206.P12266418168295198728

`A074323(n+1)-A074323(n)`
-/

namespace A137206.P12266418168295198728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (n + 1) - A074323 n

end

end A137206.P12266418168295198728

namespace A137206

/-- `A074323(n+1)-A074323(n)` -/
def P12266418168295198728.Spec : Prop :=
  ∀ n, P12266418168295198728.a n = A137206 n

end A137206

/-! ## A137206.P10705334554926198555

`A143095(n)-A029744(n+1)`
-/

namespace A137206.P10705334554926198555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 n - A029744 (n + 1)

end

end A137206.P10705334554926198555

namespace A137206

/-- `A143095(n)-A029744(n+1)` -/
def P10705334554926198555.Spec : Prop :=
  ∀ n, P10705334554926198555.a n = A137206 n

end A137206

/-! ## A137206.P10893684369027126034

`Δ[A029744(n+1)/A000034(n)]`
-/

namespace A137206.P10893684369027126034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137206.P10893684369027126034

namespace A137206

/-- `Δ[A029744(n+1)/A000034(n)]` -/
def P10893684369027126034.Spec : Prop :=
  ∀ n, P10893684369027126034.a n = (A137206 n : ℚ)

end A137206

/-! ## A137206.P11746528560474879219

`Δ[gcd(A029744(n+1), A131575(n))]`
-/

namespace A137206.P11746528560474879219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029744 (n + 1)) (A131575 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137206.P11746528560474879219

namespace A137206

/-- `Δ[gcd(A029744(n+1), A131575(n))]` -/
def P11746528560474879219.Spec : Prop :=
  ∀ n, P11746528560474879219.a n = A137206 n

end A137206

/-! ## A137206.P3322576546714386193

`A135530(n+1)-A029744(n+1)`
-/

namespace A137206.P3322576546714386193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1) - A029744 (n + 1)

end

end A137206.P3322576546714386193

namespace A137206

/-- `A135530(n+1)-A029744(n+1)` -/
def P3322576546714386193.Spec : Prop :=
  ∀ n, P3322576546714386193.a n = A137206 n

end A137206

/-! ## A137206.P8033146236747346071

`Δ[A164073(val(A038328(n)+1, 2)+n)]`
-/

namespace A137206.P8033146236747346071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (SequenceMachineLib.valuation (A038328 n + 1).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137206.P8033146236747346071

namespace A137206

/-- `Δ[A164073(val(A038328(n)+1, 2)+n)]` -/
def P8033146236747346071.Spec : Prop :=
  ∀ n, P8033146236747346071.a n = A137206 n

end A137206

/-! ## A137206.P4832473430898668212

`A164073(n+1)-A164073(A028310(n))`
-/

namespace A137206.P4832473430898668212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1) - A164073 (A028310 n).toNat

end

end A137206.P4832473430898668212

namespace A137206

/-- `A164073(n+1)-A164073(A028310(n))` -/
def P4832473430898668212.Spec : Prop :=
  ∀ n, P4832473430898668212.a n = A137206 n

end A137206

/-! ## A137206.P6351110117986155188

`A164073(n+1)-A164073(A004277(n)-n)`
-/

namespace A137206.P6351110117986155188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1) - A164073 (A004277 n - (n : ℤ)).toNat

end

end A137206.P6351110117986155188

namespace A137206

/-- `A164073(n+1)-A164073(A004277(n)-n)` -/
def P6351110117986155188.Spec : Prop :=
  ∀ n, P6351110117986155188.a n = A137206 n

end A137206

/-! ## A137206.P2937788555390611634

`A158780(n+1)+A164073(n+1)-A060546(n+1)`
-/

namespace A137206.P2937788555390611634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1) + (A164073 (n + 1) - A060546 (n + 1))

end

end A137206.P2937788555390611634

namespace A137206

/-- `A158780(n+1)+A164073(n+1)-A060546(n+1)` -/
def P2937788555390611634.Spec : Prop :=
  ∀ n, P2937788555390611634.a n = A137206 n

end A137206

/-!
# A137207: Number of exceptional sets of roots of type D_n. Also the number of unordered factorizations of the Coxeter element.

The programs for A137207, the canonical program `A137207.P7225846757620017661` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137207 has offset 3).

The definition of A137207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137207.P7225846757620017661

`(16*(n+3)²-41*(n+3)+24)/((n+3)*(2*(n+3)-1))*C(3*(n+3)-5, n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137207

/-- `(16*(n+3)²-41*(n+3)+24)/((n+3)*(2*(n+3)-1))*C(3*(n+3)-5, n+1)` -/
def P7225846757620017661.Spec : Prop :=
  ∀ n, P7225846757620017661.a n = (A137207 (n + 3) : ℚ)

end A137207

/-!
# A137208: a(n) = a(n-1) + 4*a(n-2) - 4*a(n-3) for n > 2; a(0)=2, a(1)=3, a(2)=6.

The programs for A137208, the canonical program `A137208.P17680422444655002418` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137208 has offset 0).

The definition of A137208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)-4*a(n-3)` (program `A137208.P17680422444655002418`, by `A137208.P17680422444655002418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137208.P420390798811576683

`2/3+5/4*2^n+1/12*(-2)^n`
-/

namespace A137208.P420390798811576683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 + (5 : ℚ) / 4 * (2 ^ n : ℚ) + (1 : ℚ) / 12 * ((-2) ^ n : ℚ)

end

end A137208.P420390798811576683

namespace A137208

/-- `2/3+5/4*2^n+1/12*(-2)^n` -/
def P420390798811576683.Spec : Prop :=
  ∀ n, P420390798811576683.a n = (A137208 n : ℚ)

theorem P420390798811576683.correct : P420390798811576683.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A137208, Nat.add_sub_cancel, A137208.P420390798811576683.a, A137208.P17680422444655002418.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A137208, Nat.add_sub_cancel, A137208.P420390798811576683.a, A137208.P17680422444655002418.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A137208

/-! ## A137208.P17680422444655002418

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137208

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P17680422444655002418.Spec : Prop :=
  ∀ n, P17680422444655002418.a n = A137208 n

theorem P17680422444655002418.correct : P17680422444655002418.Spec := by
  intro n
  simp only [A137208]

end A137208

/-! ## A137208.P3707147877850421859

`∑[ogf((2+x-5x^2)/(1-4x^2))]`
-/

namespace A137208.P3707147877850421859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -5] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137208.P3707147877850421859

namespace A137208

/-- `∑[ogf((2+x-5x^2)/(1-4x^2))]` -/
def P3707147877850421859.Spec : Prop :=
  ∀ n, P3707147877850421859.a n = A137208 n

end A137208

/-! ## A137208.P9348394642497947613

`ogf((2+x-5x^2)/(1-x-4x^2+4x^3))`
-/

namespace A137208.P9348394642497947613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -5] [1, -1, -4, 4] n

end

end A137208.P9348394642497947613

namespace A137208

/-- `ogf((2+x-5x^2)/(1-x-4x^2+4x^3))` -/
def P9348394642497947613.Spec : Prop :=
  ∀ n, P9348394642497947613.a n = A137208 n

end A137208

/-! ## A137208.P9359163037657431641

`∑[4*a(n-2)]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A137208.P9359163037657431641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137208.P9359163037657431641

namespace A137208

/-- `∑[4*a(n-2)]` -/
def P9359163037657431641.Spec : Prop :=
  ∀ n, (P9359163037657431641.a n : ℤ) = A137208 n

end A137208

/-! ## A137208.P13383857691680675954

`record[2*(1-a(n-2))]` with `a(0)=2, a(1)=3`
-/

namespace A137208.P13383857691680675954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  2 * (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137208.P13383857691680675954

namespace A137208

/-- `record[2*(1-a(n-2))]` -/
def P13383857691680675954.Spec : Prop :=
  ∀ n, P13383857691680675954.a n = A137208 n

end A137208

/-! ## A137208.P18428332112768628258

`record[2-a(n-2)-a(n-2)]` with `a(0)=2, a(1)=3`
-/

namespace A137208.P18428332112768628258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  2 - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137208.P18428332112768628258

namespace A137208

/-- `record[2-a(n-2)-a(n-2)]` -/
def P18428332112768628258.Spec : Prop :=
  ∀ n, P18428332112768628258.a n = A137208 n

end A137208

/-! ## A137208.P682985137824127469

`record[A191668(n+2)]`
-/

namespace A137208.P682985137824127469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137208.P682985137824127469

namespace A137208

/-- `record[A191668(n+2)]` -/
def P682985137824127469.Spec : Prop :=
  ∀ n, P682985137824127469.a n = A137208 n

end A137208

/-!
# A137211: Generalized or s-Catalan numbers.

The programs for A137211, there is no canonical definition to state claims against.
-/

/-! ## A137211.P9402572850413211565

`A070914(A245300(n)+A025581(n))`
-/

namespace A137211.P9402572850413211565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A245300 n + A025581 n).toNat

end

end A137211.P9402572850413211565

/-! ## A137211.P332528331661337731

`A070914(A004736(n+1)+A245300(n)-1)`
-/

namespace A137211.P332528331661337731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A004736 (n + 1) + (A245300 n - 1)).toNat

end

end A137211.P332528331661337731

/-!
# A137212: a(n) = 5*a(n-1) - 5*a(n-2) - 3*a(n-3).

The programs for A137212, the canonical program `A137212.P13729760388039572808` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137212 has offset 0).

The definition of A137212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-5*a(n-2)-3*a(n-3)` (program `A137212.P13729760388039572808`, by `A137212.P13729760388039572808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137212.P13729760388039572808

`5*a(n-1)-5*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137212

/-- `5*a(n-1)-5*a(n-2)-3*a(n-3)` -/
def P13729760388039572808.Spec : Prop :=
  ∀ n, P13729760388039572808.a n = A137212 n

theorem P13729760388039572808.correct : P13729760388039572808.Spec := by
  intro n
  simp only [A137212]

end A137212

/-! ## A137212.P6678922219861432874

`A193519(n)/2`
-/

namespace A137212.P6678922219861432874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193519 n : ℚ) / 2

end

end A137212.P6678922219861432874

namespace A137212

/-- `A193519(n)/2` -/
def P6678922219861432874.Spec : Prop :=
  ∀ n, P6678922219861432874.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P4536781016446155038

`(3^n-A078057(n))/2`
-/

namespace A137212.P4536781016446155038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - A078057 n : ℚ) / 2

end

end A137212.P4536781016446155038

namespace A137212

/-- `(3^n-A078057(n))/2` -/
def P4536781016446155038.Spec : Prop :=
  ∀ n, P4536781016446155038.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P7180564390550138019

`1/4*(2*3^n-A002203(n+1))`
-/

namespace A137212.P7180564390550138019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((2 * 3 ^ n : ℤ) - A002203 (n + 1) : ℚ)

end

end A137212.P7180564390550138019

namespace A137212

/-- `1/4*(2*3^n-A002203(n+1))` -/
def P7180564390550138019.Spec : Prop :=
  ∀ n, P7180564390550138019.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P1769915380099367581

`ogf(x^2/(1-5x+5x^2+3x^3))`
-/

namespace A137212.P1769915380099367581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -5, 5, 3] n

end

end A137212.P1769915380099367581

namespace A137212

/-- `ogf(x^2/(1-5x+5x^2+3x^3))` -/
def P1769915380099367581.Spec : Prop :=
  ∀ n, P1769915380099367581.a n = A137212 n

end A137212

/-! ## A137212.P12206272211063985909

`∑[A137213(log2(ceil(2^(n-1))))]`
-/

namespace A137212.P12206272211063985909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137213 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137212.P12206272211063985909

namespace A137212

/-- `∑[A137213(log2(ceil(2^(n-1))))]` -/
def P12206272211063985909.Spec : Prop :=
  ∀ n, P12206272211063985909.a n = A137212 n

end A137212

/-! ## A137212.P16625985767598637

`A137213(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A137212.P16625985767598637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A137213 (n - 1) + a (n - 1)

end

end A137212.P16625985767598637

namespace A137212

/-- `A137213(n-1)+a(n-1)` -/
def P16625985767598637.Spec : Prop :=
  ∀ n, P16625985767598637.a n = A137212 n

end A137212

/-! ## A137212.P5863033456022531707

`∑[floor(3^(n-1))-A000129(n)]`
-/

namespace A137212.P5863033456022531707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137212.P5863033456022531707

namespace A137212

/-- `∑[floor(3^(n-1))-A000129(n)]` -/
def P5863033456022531707.Spec : Prop :=
  ∀ n, P5863033456022531707.a n = A137212 n

end A137212

/-! ## A137212.P10640607983396551420

`A007051(n)-A024537(n)`
-/

namespace A137212.P10640607983396551420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A024537 n

end

end A137212.P10640607983396551420

namespace A137212

/-- `A007051(n)-A024537(n)` -/
def P10640607983396551420.Spec : Prop :=
  ∀ n, P10640607983396551420.a n = A137212 n

end A137212

/-! ## A137212.P4881750468155736877

`A003462(n)-∑[A000129(n)]`
-/

namespace A137212.P4881750468155736877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137212.P4881750468155736877

namespace A137212

/-- `A003462(n)-∑[A000129(n)]` -/
def P4881750468155736877.Spec : Prop :=
  ∀ n, P4881750468155736877.a n = A137212 n

end A137212

/-! ## A137212.P8346606470777874340

`A007051(n)-∑[A215928(n)]`
-/

namespace A137212.P8346606470777874340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137212.P8346606470777874340

namespace A137212

/-- `A007051(n)-∑[A215928(n)]` -/
def P8346606470777874340.Spec : Prop :=
  ∀ n, P8346606470777874340.a n = A137212 n

end A137212

/-! ## A137212.P11091682391231231301

`A232801(2*n)-∑[A000129(n)]`
-/

namespace A137212.P11091682391231231301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137212.P11091682391231231301

namespace A137212

/-- `A232801(2*n)-∑[A000129(n)]` -/
def P11091682391231231301.Spec : Prop :=
  ∀ n, P11091682391231231301.a n = A137212 n

end A137212

/-! ## A137212.P15534560306999118674

`∑[A137213(n)]-A137213(n)`
-/

namespace A137212.P15534560306999118674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137213 n

end

end A137212.P15534560306999118674

namespace A137212

/-- `∑[A137213(n)]-A137213(n)` -/
def P15534560306999118674.Spec : Prop :=
  ∀ n, P15534560306999118674.a n = A137212 n

end A137212

/-! ## A137212.P6540384346824181911

`(A137213(n)-A000129(n))/2`
-/

namespace A137212.P6540384346824181911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137213 n - A000129 n : ℚ) / 2

end

end A137212.P6540384346824181911

namespace A137212

/-- `(A137213(n)-A000129(n))/2` -/
def P6540384346824181911.Spec : Prop :=
  ∀ n, P6540384346824181911.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P9481055168959930217

`(A034472(n)-A182780(n))/2`
-/

namespace A137212.P9481055168959930217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034472 n - A182780 n : ℚ) / 2

end

end A137212.P9481055168959930217

namespace A137212

/-- `(A034472(n)-A182780(n))/2` -/
def P9481055168959930217.Spec : Prop :=
  ∀ n, P9481055168959930217.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P12915009860216527015

`(A212323(n)-A106515(n))/2`
-/

namespace A137212.P12915009860216527015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212323 n - A106515 n : ℚ) / 2

end

end A137212.P12915009860216527015

namespace A137212

/-- `(A212323(n)-A106515(n))/2` -/
def P12915009860216527015.Spec : Prop :=
  ∀ n, P12915009860216527015.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P3187529391115366758

`(A102345(n)-A228797(n+1))/2`
-/

namespace A137212.P3187529391115366758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102345 n - A228797 (n + 1) : ℚ) / 2

end

end A137212.P3187529391115366758

namespace A137212

/-- `(A102345(n)-A228797(n+1))/2` -/
def P3187529391115366758.Spec : Prop :=
  ∀ n, P3187529391115366758.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P4934039741360135056

`(A083658(2*n)-A001333(n+1))/2`
-/

namespace A137212.P4934039741360135056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083658 (2 * n) - A001333 (n + 1) : ℚ) / 2

end

end A137212.P4934039741360135056

namespace A137212

/-- `(A083658(2*n)-A001333(n+1))/2` -/
def P4934039741360135056.Spec : Prop :=
  ∀ n, P4934039741360135056.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P1856059352636927735

`(A108411(2*n)-A001333(n+1))/2`
-/

namespace A137212.P1856059352636927735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108411 (2 * n) - A001333 (n + 1) : ℚ) / 2

end

end A137212.P1856059352636927735

namespace A137212

/-- `(A108411(2*n)-A001333(n+1))/2` -/
def P1856059352636927735.Spec : Prop :=
  ∀ n, P1856059352636927735.a n = (A137212 n : ℚ)

end A137212

/-! ## A137212.P3693739178756048528

`A015518(n+1)-(A097076(n+1)+A015518(n))`
-/

namespace A137212.P3693739178756048528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) - (A097076 (n + 1) + A015518 n)

end

end A137212.P3693739178756048528

namespace A137212

/-- `A015518(n+1)-(A097076(n+1)+A015518(n))` -/
def P3693739178756048528.Spec : Prop :=
  ∀ n, P3693739178756048528.a n = A137212 n

end A137212

/-!
# A137213: First differences of A137212.

The programs for A137213, the canonical program `A137213.P6087140348945722974` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137213 has offset 0).

The definition of A137213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137213.P6087140348945722974

`3^n-A000129(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137213

/-- `3^n-A000129(n+1)` -/
def P6087140348945722974.Spec : Prop :=
  ∀ n, P6087140348945722974.a n = A137213 n

theorem P6087140348945722974.correct : P6087140348945722974.Spec := by
  intro n
  simp only [A137213]

end A137213

/-! ## A137213.P1881445294615002442

`ogf((x-x^2)/(1-5x+5x^2+3x^3))`
-/

namespace A137213.P1881445294615002442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -5, 5, 3] n

end

end A137213.P1881445294615002442

namespace A137213

/-- `ogf((x-x^2)/(1-5x+5x^2+3x^3))` -/
def P1881445294615002442.Spec : Prop :=
  ∀ n, P1881445294615002442.a n = A137213 n

end A137213

/-! ## A137213.P18132344681763365258

`Δ[A137212(n)]`
-/

namespace A137213.P18132344681763365258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137213.P18132344681763365258

namespace A137213

/-- `Δ[A137212(n)]` -/
def P18132344681763365258.Spec : Prop :=
  ∀ n, P18132344681763365258.a n = A137213 n

end A137213

/-! ## A137213.P16572595991382531140

`3^n-∑[A001333(n)]`
-/

namespace A137213.P16572595991382531140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137213.P16572595991382531140

namespace A137213

/-- `3^n-∑[A001333(n)]` -/
def P16572595991382531140.Spec : Prop :=
  ∀ n, P16572595991382531140.a n = A137213 n

end A137213

/-! ## A137213.P9288585926475152230

`A176981(n+2)+3^n`
-/

namespace A137213.P9288585926475152230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 2) + (3 ^ n : ℤ)

end

end A137213.P9288585926475152230

namespace A137213

/-- `A176981(n+2)+3^n` -/
def P9288585926475152230.Spec : Prop :=
  ∀ n, P9288585926475152230.a n = A137213 n

end A137213

/-! ## A137213.P3398360465508055503

`3^n-A215928(n+1)`
-/

namespace A137213.P3398360465508055503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A215928 (n + 1)

end

end A137213.P3398360465508055503

namespace A137213

/-- `3^n-A215928(n+1)` -/
def P3398360465508055503.Spec : Prop :=
  ∀ n, P3398360465508055503.a n = A137213 n

end A137213

/-! ## A137213.P1380750296875474225

`A034472(n)-A052937(n)`
-/

namespace A137213.P1380750296875474225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A052937 n

end

end A137213.P1380750296875474225

namespace A137213

/-- `A034472(n)-A052937(n)` -/
def P1380750296875474225.Spec : Prop :=
  ∀ n, P1380750296875474225.a n = A137213 n

end A137213

/-! ## A137213.P5385149170532605576

`A103453(n)-A005409(n+1)`
-/

namespace A137213.P5385149170532605576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n - A005409 (n + 1)

end

end A137213.P5385149170532605576

namespace A137213

/-- `A103453(n)-A005409(n+1)` -/
def P5385149170532605576.Spec : Prop :=
  ∀ n, P5385149170532605576.a n = A137213 n

end A137213

/-! ## A137213.P14841287952733671872

`A137212(n+1)-A137212(n)`
-/

namespace A137213.P14841287952733671872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137212 (n + 1) - A137212 n

end

end A137213.P14841287952733671872

namespace A137213

/-- `A137212(n+1)-A137212(n)` -/
def P14841287952733671872.Spec : Prop :=
  ∀ n, P14841287952733671872.a n = A137213 n

end A137213

/-! ## A137213.P12635276319537758615

`A000129(n)+2*A137212(n)`
-/

namespace A137213.P12635276319537758615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + 2 * A137212 n

end

end A137213.P12635276319537758615

namespace A137213

/-- `A000129(n)+2*A137212(n)` -/
def P12635276319537758615.Spec : Prop :=
  ∀ n, P12635276319537758615.a n = A137213 n

end A137213

/-! ## A137213.P8293445821881181707

`A000244(n)-Δ[A171842(n+1)]`
-/

namespace A137213.P8293445821881181707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (f1 (n + 1) - f1 n)

end

end A137213.P8293445821881181707

namespace A137213

/-- `A000244(n)-Δ[A171842(n+1)]` -/
def P8293445821881181707.Spec : Prop :=
  ∀ n, P8293445821881181707.a n = A137213 n

end A137213

/-! ## A137213.P12257814404353262843

`A048328(2*n)+1-A000129(n+1)`
-/

namespace A137213.P12257814404353262843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n) + (1 - A000129 (n + 1))

end

end A137213.P12257814404353262843

namespace A137213

/-- `A048328(2*n)+1-A000129(n+1)` -/
def P12257814404353262843.Spec : Prop :=
  ∀ n, P12257814404353262843.a n = A137213 n

end A137213

/-! ## A137213.P11047567552173166218

`A000244(n)-A000129(n)-A001333(n)`
-/

namespace A137213.P11047567552173166218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A000129 n - A001333 n

end

end A137213.P11047567552173166218

namespace A137213

/-- `A000244(n)-A000129(n)-A001333(n)` -/
def P11047567552173166218.Spec : Prop :=
  ∀ n, P11047567552173166218.a n = A137213 n

end A137213

/-! ## A137213.P12312110561946432343

`A000244(n)+A094723(n)-Δ[A094723(n)]`
-/

namespace A137213.P12312110561946432343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A094723 n - (f1 (n + 1) - f1 n))

end

end A137213.P12312110561946432343

namespace A137213

/-- `A000244(n)+A094723(n)-Δ[A094723(n)]` -/
def P12312110561946432343.Spec : Prop :=
  ∀ n, P12312110561946432343.a n = A137213 n

end A137213

/-! ## A137213.P68606288739912921

`A003462(n+1)-(A003462(n)+A000129(n+1))`
-/

namespace A137213.P68606288739912921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) - (A003462 n + A000129 (n + 1))

end

end A137213.P68606288739912921

namespace A137213

/-- `A003462(n+1)-(A003462(n)+A000129(n+1))` -/
def P68606288739912921.Spec : Prop :=
  ∀ n, P68606288739912921.a n = A137213 n

end A137213

/-! ## A137213.P16635373867044486494

`A007051(n+1)-(A007051(n)+A000129(n+1))`
-/

namespace A137213.P16635373867044486494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - (A007051 n + A000129 (n + 1))

end

end A137213.P16635373867044486494

namespace A137213

/-- `A007051(n+1)-(A007051(n)+A000129(n+1))` -/
def P16635373867044486494.Spec : Prop :=
  ∀ n, P16635373867044486494.a n = A137213 n

end A137213

/-! ## A137213.P13895672682976800447

`A015518(n+1)+A015518(n)-A000129(n+1)`
-/

namespace A137213.P13895672682976800447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + (A015518 n - A000129 (n + 1))

end

end A137213.P13895672682976800447

namespace A137213

/-- `A015518(n+1)+A015518(n)-A000129(n+1)` -/
def P13895672682976800447.Spec : Prop :=
  ∀ n, P13895672682976800447.a n = A137213 n

end A137213

/-! ## A137213.P4066488211616183730

`A054878(n+1)+A054878(n)-A000129(n+1)`
-/

namespace A137213.P4066488211616183730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (n + 1) + (A054878 n - A000129 (n + 1))

end

end A137213.P4066488211616183730

namespace A137213

/-- `A054878(n+1)+A054878(n)-A000129(n+1)` -/
def P4066488211616183730.Spec : Prop :=
  ∀ n, P4066488211616183730.a n = A137213 n

end A137213

/-! ## A137213.P226626182578960935

`Δ[A193519(n)/2]`
-/

namespace A137213.P226626182578960935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193519 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137213.P226626182578960935

namespace A137213

/-- `Δ[A193519(n)/2]` -/
def P226626182578960935.Spec : Prop :=
  ∀ n, P226626182578960935.a n = (A137213 n : ℚ)

end A137213

/-! ## A137213.P4114280251429083075

`A038754(2*n+1)-(A038754(2*n)+A000129(n+1))`
-/

namespace A137213.P4114280251429083075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n + 1) - (A038754 (2 * n) + A000129 (n + 1))

end

end A137213.P4114280251429083075

namespace A137213

/-- `A038754(2*n+1)-(A038754(2*n)+A000129(n+1))` -/
def P4114280251429083075.Spec : Prop :=
  ∀ n, P4114280251429083075.a n = A137213 n

end A137213

/-!
# A137215: a(n) = 3*(10^n) + (n^2 + 1)*(10^n - 1)/9.

The programs for A137215, the canonical program `A137215.P7631403346100247437` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137215 has offset 0).

The definition of A137215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137215.P7631403346100247437

`3*10^n+(1+n²)*(10^n-1)/9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137215

/-- `3*10^n+(1+n²)*(10^n-1)/9` -/
def P7631403346100247437.Spec : Prop :=
  ∀ n, P7631403346100247437.a n = (A137215 n : ℚ)

end A137215

/-! ## A137215.P6600586707185906340

`3*10^n+(n²+1)*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137215.P6600586707185906340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 10 ^ n : ℚ) + ((n ^ 2 + 1 : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 9

end

end A137215.P6600586707185906340

namespace A137215

/-- `3*10^n+(n²+1)*(10^n-1)/9` -/
def P6600586707185906340.Spec : Prop :=
  ∀ n, P6600586707185906340.a n = (A137215 n : ℚ)

end A137215

/-!
# A137216: Erlang C queues type triangular sequence based on A122525.

The programs for A137216, there is no canonical definition to state claims against.
-/

/-! ## A137216.P17626958318096652240

`A173753(A298072(n)+1)`
-/

namespace A137216.P17626958318096652240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173753 (A298072 n + 1).toNat

end

end A137216.P17626958318096652240

/-! ## A137216.P4363623584869485768

`A376590(A219802(n+1))+A293607(n)`
-/

namespace A137216.P4363623584869485768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376590 (A219802 (n + 1)).toNat + A293607 n

end

end A137216.P4363623584869485768

/-! ## A137216.P224396559299386412

`A347578(A251705(n))+A347516(n+2)`
-/

namespace A137216.P224396559299386412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A251705 n).toNat + A347516 (n + 2)

end

end A137216.P224396559299386412

/-! ## A137216.P7216799633933894841

`A358021(or(A079069(n+1), A168201(n)))`
-/

namespace A137216.P7216799633933894841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358021 (Int.lor (A079069 (n + 1)) (A168201 n)).toNat

end

end A137216.P7216799633933894841

/-!
# A137217: A self-describing sequence: 2 odd digits between two even, then 3 odd digits between two even, then 5 odd digits between two even, then 6, then 7... The length of each run of odd digits is given by the sequence itself (the smallest available integer is used when needed). Zero is an even digit.

The programs for A137217, there is no canonical definition to state claims against.
-/

/-! ## A137217.P6208076979955629690

`A324562(lt[A270831(n+1), A288105(n+1)])`
-/

namespace A137217.P6208076979955629690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324562 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137217.P6208076979955629690

/-! ## A137217.P8987842211308296455

`∑[A007920(A000225(A330556(n)²))]`
-/

namespace A137217.P8987842211308296455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000225 (A330556 n ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137217.P8987842211308296455

/-! ## A137217.P6433180844719447307

`lt[A000032(A265205(n)), A002378(n)]`
-/

namespace A137217.P6433180844719447307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A265205 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137217.P6433180844719447307

/-! ## A137217.P11723724755609578020

`lt[A351018(A265205(n)), A074377(n)]`
-/

namespace A137217.P11723724755609578020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351018 (A265205 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137217.P11723724755609578020

/-! ## A137217.P9932475409187924321

`lt[A000055(A265205(n)), A265251(2*n+3)]`
-/

namespace A137217.P9932475409187924321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A265205 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265251 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137217.P9932475409187924321

/-!
# A137219: a(n) = (A126086(n) - 3*A001850(n) + 2)/6.

The programs for A137219, there is no canonical definition to state claims against.
-/

/-! ## A137219.P11197996425677258554

`(A126086(n+1)-3*A001850(n+1)+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137219.P11197996425677258554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126086 (n + 1) - 3 * A001850 (n + 1) + 2 : ℚ) / 6

end

end A137219.P11197996425677258554

/-! ## A137219.P10414412865872389713

`A137220(n+1)-A001850(n+1)`
-/

namespace A137219.P10414412865872389713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137220 (n + 1) - A001850 (n + 1)

end

end A137219.P10414412865872389713

/-! ## A137219.P903627002496977664

`A331277(A046691(n+3))`
-/

namespace A137219.P903627002496977664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (A046691 (n + 3)).toNat

end

end A137219.P903627002496977664

/-! ## A137219.P12552139305077155372

`A331277(eq[3, A152157(n)])`
-/

namespace A137219.P12552139305077155372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137219.P12552139305077155372

/-! ## A137219.P4494611159189902738

`A331277(eq[4, A193592(n)])`
-/

namespace A137219.P4494611159189902738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A137219.P4494611159189902738

/-!
# A137220: a(n) = (A126086(n) + 3*A001850(n) + 2)/6.

The programs for A137220, there is no canonical definition to state claims against.
-/

/-! ## A137220.P3651216844255946276

`(A126086(n)+3*A001850(n)+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137220.P3651216844255946276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126086 n + 3 * A001850 n + 2 : ℚ) / 6

end

end A137220.P3651216844255946276

/-! ## A137220.P17765316028445959596

`ceil((A126086(n)+3*A001850(n))/6)`
-/

namespace A137220.P17765316028445959596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126086 n + 3 * A001850 n : ℚ) / 6⌉

end

end A137220.P17765316028445959596

/-! ## A137220.P12782289904735426237

`A330942(∑[n+3]+n+3)`
-/

namespace A137220.P12782289904735426237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A137220.P12782289904735426237

/-! ## A137220.P15908240781863911916

`record[gcd(A124323(n+2), A330942(n))]`
-/

namespace A137220.P15908240781863911916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124323 (n + 2)) (A330942 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137220.P15908240781863911916

/-! ## A137220.P2937643697968985472

`A330942(A046691(n+2))+A217155(n+1)`
-/

namespace A137220.P2937643697968985472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330942 (A046691 (n + 2)).toNat + A217155 (n + 1)

end

end A137220.P2937643697968985472

/-!
# A137221: a(n) = 5*a(n-1) - 9*a(n-2) + 8*a(n-3) - 4*a(n-4), with a(0)=0, a(1)=0, a(2)=0, a(3)=1.

The programs for A137221, the canonical program `A137221.P907163541740090224` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137221 has offset 0).

The definition of A137221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-9*a(n-2)+8*a(n-3)-4*a(n-4)` (program `A137221.P907163541740090224`, by `A137221.P907163541740090224.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137221.P907163541740090224

`5*a(n-1)-9*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137221

/-- `5*a(n-1)-9*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P907163541740090224.Spec : Prop :=
  ∀ n, P907163541740090224.a n = A137221 n

theorem P907163541740090224.correct : P907163541740090224.Spec := by
  intro n
  simp only [A137221]

end A137221

/-! ## A137221.P17206861484812909852

`round((n-2)*2^(n-log2(6)))`
-/

namespace A137221.P17206861484812909852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℝ) * (2 : ℝ) ^ ((n : ℝ) - Real.logb 2 (6 : ℝ)))

end

end A137221.P17206861484812909852

namespace A137221

/-- `round((n-2)*2^(n-log2(6)))` -/
def P17206861484812909852.Spec : Prop :=
  ∀ n, P17206861484812909852.a n = A137221 n

end A137221

/-! ## A137221.P15957365463778791231

`∑[A100335(A289207(n))]`
-/

namespace A137221.P15957365463778791231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100335 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137221.P15957365463778791231

namespace A137221

/-- `∑[A100335(A289207(n))]` -/
def P15957365463778791231.Spec : Prop :=
  ∀ n, P15957365463778791231.a n = A137221 n

end A137221

/-! ## A137221.P4977478699910855681

`A093041(n)-A130781(n)`
-/

namespace A137221.P4977478699910855681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093041 n - A130781 n

end

end A137221.P4977478699910855681

namespace A137221

/-- `A093041(n)-A130781(n)` -/
def P4977478699910855681.Spec : Prop :=
  ∀ n, P4977478699910855681.a n = A137221 n

end A137221

/-! ## A137221.P17869051021548046372

`floor(∑[A139756(n)/3])`
-/

namespace A137221.P17869051021548046372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139756 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A137221.P17869051021548046372

namespace A137221

/-- `floor(∑[A139756(n)/3])` -/
def P17869051021548046372.Spec : Prop :=
  ∀ n, P17869051021548046372.a n = A137221 n

end A137221

/-! ## A137221.P12537940327053034023

`A001787(n)-A100335(n)`
-/

namespace A137221.P12537940327053034023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A100335 n

end

end A137221.P12537940327053034023

namespace A137221

/-- `A001787(n)-A100335(n)` -/
def P12537940327053034023.Spec : Prop :=
  ∀ n, P12537940327053034023.a n = A137221 n

end A137221

/-! ## A137221.P5635551347748339649

`∑[round(A000337(n)/12)]`
-/

namespace A137221.P5635551347748339649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000337 n : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137221.P5635551347748339649

namespace A137221

/-- `∑[round(A000337(n)/12)]` -/
def P5635551347748339649.Spec : Prop :=
  ∀ n, P5635551347748339649.a n = A137221 n

end A137221

/-! ## A137221.P15825635885408362880

`floor(∑[abs(1-n)*A011782(n)]/6)`
-/

namespace A137221.P15825635885408362880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6⌋

end

end A137221.P15825635885408362880

namespace A137221

/-- `floor(∑[abs(1-n)*A011782(n)]/6)` -/
def P15825635885408362880.Spec : Prop :=
  ∀ n, P15825635885408362880.a n = A137221 n

end A137221

/-!
# A137222: Partial sums of A087429.

The programs for A137222, the canonical program `A137222.P5944416911786828449` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137222 has offset 1).

The definition of A137222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137222.P2287409850001209271

`∑[A087429(n+1)]`
-/

namespace A137222.P2287409850001209271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P2287409850001209271

namespace A137222

/-- `∑[A087429(n+1)]` -/
def P2287409850001209271.Spec : Prop :=
  ∀ n, P2287409850001209271.a n = A137222 (n + 1)

end A137222

/-! ## A137222.P4028843371064870743

`∑[char[A070089(n+1)-1]]`
-/

namespace A137222.P4028843371064870743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P4028843371064870743

namespace A137222

/-- `∑[char[A070089(n+1)-1]]` -/
def P4028843371064870743.Spec : Prop :=
  ∀ n, (P4028843371064870743.a n : ℤ) = A137222 (n + 1)

end A137222

/-! ## A137222.P15165862686924406456

`∑[ceil(Δ[atan(A006530(n+1))])]`
-/

namespace A137222.P15165862686924406456
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A006530 (n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P15165862686924406456

namespace A137222

/-- `∑[ceil(Δ[atan(A006530(n+1))])]` -/
def P15165862686924406456.Spec : Prop :=
  ∀ n, P15165862686924406456.a n = A137222 (n + 1)

end A137222

/-! ## A137222.P16398921515868480024

`∑[(n+1)²%A074399(n+1)]`
-/

namespace A137222.P16398921515868480024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A074399 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137222.P16398921515868480024

namespace A137222

/-- `∑[(n+1)²%A074399(n+1)]` -/
def P16398921515868480024.Spec : Prop :=
  ∀ n, P16398921515868480024.a n = A137222 (n + 1)

end A137222

/-! ## A137222.P5944416911786828449

`∑[ceil(Δ[A061395(n+1)]/(n+1)^4)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A137222

/-- `∑[ceil(Δ[A061395(n+1)]/(n+1)^4)]` -/
def P5944416911786828449.Spec : Prop :=
  ∀ n, P5944416911786828449.a n = A137222 (n + 1)

theorem P5944416911786828449.correct : P5944416911786828449.Spec := by
  intro n
  simp only [A137222, Nat.add_sub_cancel]

end A137222

/-! ## A137222.P6608010359496054753

`A289435(A359953(n+2)+n+1)`
-/

namespace A137222.P6608010359496054753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A359953 (n + 2) + (n + 1 : ℤ)).toNat

end

end A137222.P6608010359496054753

namespace A137222

/-- `A289435(A359953(n+2)+n+1)` -/
def P6608010359496054753.Spec : Prop :=
  ∀ n, P6608010359496054753.a n = A137222 (n + 1)

end A137222

/-!
# A137223: a(n) = A135574(3*n) + A135574(3*n+1) + A135574(3*n+2).

The programs for A137223, the canonical program `A137223.P2905100958406323800` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137223 has offset 0).

The definition of A137223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137223.P2905100958406323800

`A135574(3*n)+A135574(3*n+1)+A135574(3*n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137223

/-- `A135574(3*n)+A135574(3*n+1)+A135574(3*n+2)` -/
def P2905100958406323800.Spec : Prop :=
  ∀ n, P2905100958406323800.a n = A137223 n

theorem P2905100958406323800.correct : P2905100958406323800.Spec := by
  intro n
  simp only [A137223]

end A137223

/-! ## A137223.P4256010914969874269

`((35+9*(-1)^n)*8^n-8*(-1)^n)/12`
-/

namespace A137223.P4256010914969874269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((35 + 9 * (-1) ^ n) * (8 ^ n : ℤ) - 8 * (-1) ^ n : ℚ) / 12

end

end A137223.P4256010914969874269

namespace A137223

/-- `((35+9*(-1)^n)*8^n-8*(-1)^n)/12` -/
def P4256010914969874269.Spec : Prop :=
  ∀ n, P4256010914969874269.a n = (A137223 n : ℚ)

end A137223

/-! ## A137223.P16994679845355088967

`Δ[lcm(3, A096773(A047241(n+1)))]`
-/

namespace A137223.P16994679845355088967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A096773 (A047241 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137223.P16994679845355088967

namespace A137223

/-- `Δ[lcm(3, A096773(A047241(n+1)))]` -/
def P16994679845355088967.Spec : Prop :=
  ∀ n, P16994679845355088967.a n = A137223 n

end A137223

/-! ## A137223.P9093262849210206154

`Δ[or(A001045(3*n), A136324(3*n))]`
-/

namespace A137223.P9093262849210206154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 (3 * n)) (A136324 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137223.P9093262849210206154

namespace A137223

/-- `Δ[or(A001045(3*n), A136324(3*n))]` -/
def P9093262849210206154.Spec : Prop :=
  ∀ n, P9093262849210206154.a n = A137223 n

end A137223

/-! ## A137223.P16005900598225001474

`Δ[A001045(3*n)+A001045(A124625(3*n))]`
-/

namespace A137223.P16005900598225001474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (3 * n) + A001045 (A124625 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137223.P16005900598225001474

namespace A137223

/-- `Δ[A001045(3*n)+A001045(A124625(3*n))]` -/
def P16005900598225001474.Spec : Prop :=
  ∀ n, P16005900598225001474.a n = A137223 n

end A137223

/-! ## A137223.P3607067275289584597

`Δ[A000975(3*n)-A136324(3*n)]`
-/

namespace A137223.P3607067275289584597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (3 * n) - A136324 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137223.P3607067275289584597

namespace A137223

/-- `Δ[A000975(3*n)-A136324(3*n)]` -/
def P3607067275289584597.Spec : Prop :=
  ∀ n, P3607067275289584597.a n = A137223 n

end A137223

/-!
# A137224: Interleave 4*n^2, 1+4*n^2, 1+(2n+1)^2, (2n+1)^2 (or A016742, A053755, A069894, A016754).

The programs for A137224, the canonical program `A137224.P16145137295852194717` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137224 has offset 0).

The definition of A137224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137224.P5072131307047327011

`and(2, -n)/2+floor(n/2)²`
-/

namespace A137224.P5072131307047327011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (-(n : ℤ)) : ℚ) / 2 + (⌊(n : ℚ) / 2⌋ ^ 2 : ℚ)

end

end A137224.P5072131307047327011

namespace A137224

/-- `and(2, -n)/2+floor(n/2)²` -/
def P5072131307047327011.Spec : Prop :=
  ∀ n, P5072131307047327011.a n = (A137224 n : ℚ)

end A137224

/-! ## A137224.P3752020082214191519

`char[or(2, n)-1]+floor(n/2)²`
-/

namespace A137224.P3752020082214191519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋ ^ 2

end

end A137224.P3752020082214191519

namespace A137224

/-- `char[or(2, n)-1]+floor(n/2)²` -/
def P3752020082214191519.Spec : Prop :=
  ∀ n, P3752020082214191519.a n = A137224 n

end A137224

/-! ## A137224.P16145137295852194717

`∑[and(n+1, n+1-a(n-1))-1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137224

/-- `∑[and(n+1, n+1-a(n-1))-1]` -/
def P16145137295852194717.Spec : Prop :=
  ∀ n, P16145137295852194717.a n = A137224 n

theorem P16145137295852194717.correct : P16145137295852194717.Spec := by
  intro n
  simp only [A137224]

end A137224

/-! ## A137224.P5347275442297471798

`2*floor((floor(n/2)²+n+1)/2)-n`
-/

namespace A137224.P5347275442297471798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(⌊(n : ℚ) / 2⌋ ^ 2 + (n + 1 : ℤ) : ℚ) / 2⌋ - (n : ℤ)

end

end A137224.P5347275442297471798

namespace A137224

/-- `2*floor((floor(n/2)²+n+1)/2)-n` -/
def P5347275442297471798.Spec : Prop :=
  ∀ n, P5347275442297471798.a n = A137224 n

end A137224

/-! ## A137224.P13595069051684564889

`∑[∑[A143432(n)]-n^and(1, n)]`
-/

namespace A137224.P13595069051684564889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143432 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137224.P13595069051684564889

namespace A137224

/-- `∑[∑[A143432(n)]-n^and(1, n)]` -/
def P13595069051684564889.Spec : Prop :=
  ∀ n, P13595069051684564889.a n = A137224 n

end A137224

/-! ## A137224.P8168477777795974191

`(A192447(n+1)+1)%∑[1-A133265(n)]`
-/

namespace A137224.P8168477777795974191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192447 (n + 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137224.P8168477777795974191

namespace A137224

/-- `(A192447(n+1)+1)%∑[1-A133265(n)]` -/
def P8168477777795974191.Spec : Prop :=
  ∀ n, P8168477777795974191.a n = A137224 n

end A137224

/-! ## A137224.P4855896908008931517

`A063656(A166515(n)-A002265(n+1))`
-/

namespace A137224.P4855896908008931517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (A166515 n - A002265 (n + 1)).toNat

end

end A137224.P4855896908008931517

namespace A137224

/-- `A063656(A166515(n)-A002265(n+1))` -/
def P4855896908008931517.Spec : Prop :=
  ∀ n, P4855896908008931517.a n = A137224 n

end A137224

/-! ## A137224.P15001269538583622886

`A207260(A007590(n)+n)`
-/

namespace A137224.P15001269538583622886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A007590 n + (n : ℤ)).toNat

end

end A137224.P15001269538583622886

namespace A137224

/-- `A207260(A007590(n)+n)` -/
def P15001269538583622886.Spec : Prop :=
  ∀ n, P15001269538583622886.a n = A137224 n

end A137224

/-! ## A137224.P16719832767975394687

`A207260(∑[A109613(n)]-1)`
-/

namespace A137224.P16719832767975394687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A137224.P16719832767975394687

namespace A137224

/-- `A207260(∑[A109613(n)]-1)` -/
def P16719832767975394687.Spec : Prop :=
  ∀ n, P16719832767975394687.a n = A137224 n

end A137224

/-! ## A137224.P2909433109354520789

`A207260(A000982(n+1)-1)`
-/

namespace A137224.P2909433109354520789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A000982 (n + 1) - 1).toNat

end

end A137224.P2909433109354520789

namespace A137224

/-- `A207260(A000982(n+1)-1)` -/
def P2909433109354520789.Spec : Prop :=
  ∀ n, P2909433109354520789.a n = A137224 n

end A137224

/-! ## A137224.P3548401222142348896

`A207260(A061925(n+1)-2)`
-/

namespace A137224.P3548401222142348896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A061925 (n + 1) - 2).toNat

end

end A137224.P3548401222142348896

namespace A137224

/-- `A207260(A061925(n+1)-2)` -/
def P3548401222142348896.Spec : Prop :=
  ∀ n, P3548401222142348896.a n = A137224 n

end A137224

/-! ## A137224.P1714069472269147584

`A207260(A000217(n)+floor(n/2))`
-/

namespace A137224.P1714069472269147584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A000217 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A137224.P1714069472269147584

namespace A137224

/-- `A207260(A000217(n)+floor(n/2))` -/
def P1714069472269147584.Spec : Prop :=
  ∀ n, P1714069472269147584.a n = A137224 n

end A137224

/-! ## A137224.P2210807481863348704

`A207260(A137928(n+1)/2-1)`
-/

namespace A137224.P2210807481863348704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (SequenceMachineLib.roundAway ((A137928 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A137224.P2210807481863348704

namespace A137224

/-- `A207260(A137928(n+1)/2-1)` -/
def P2210807481863348704.Spec : Prop :=
  ∀ n, P2210807481863348704.a n = A137224 n

end A137224

/-! ## A137224.P3790372103059485237

`A207260(A047838(n+2)-(n+1))`
-/

namespace A137224.P3790372103059485237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A137224.P3790372103059485237

namespace A137224

/-- `A207260(A047838(n+2)-(n+1))` -/
def P3790372103059485237.Spec : Prop :=
  ∀ n, P3790372103059485237.a n = A137224 n

end A137224

/-! ## A137224.P6885443637146081333

`A207260(A130519(2*n+1)+n)`
-/

namespace A137224.P6885443637146081333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A130519 (2 * n + 1) + (n : ℤ)).toNat

end

end A137224.P6885443637146081333

namespace A137224

/-- `A207260(A130519(2*n+1)+n)` -/
def P6885443637146081333.Spec : Prop :=
  ∀ n, P6885443637146081333.a n = A137224 n

end A137224

/-! ## A137224.P17242251044989492836

`A207260(A052928(n)+A000982(n))`
-/

namespace A137224.P17242251044989492836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A052928 n + A000982 n).toNat

end

end A137224.P17242251044989492836

namespace A137224

/-- `A207260(A052928(n)+A000982(n))` -/
def P17242251044989492836.Spec : Prop :=
  ∀ n, P17242251044989492836.a n = A137224 n

end A137224

/-! ## A137224.P3959612033575842844

`A207260(A116940(n+1))`
-/

namespace A137224.P3959612033575842844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (A116940 (n + 1)).toNat

end

end A137224.P3959612033575842844

namespace A137224

/-- `A207260(A116940(n+1))` -/
def P3959612033575842844.Spec : Prop :=
  ∀ n, P3959612033575842844.a n = A137224 n

end A137224

/-! ## A137224.P12853447257562709902

`A207260(∑[A109613(n+2)])`
-/

namespace A137224.P12853447257562709902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137224.P12853447257562709902

namespace A137224

/-- `A207260(∑[A109613(n+2)])` -/
def P12853447257562709902.Spec : Prop :=
  ∀ n, P12853447257562709902.a n = A137224 n

end A137224

/-! ## A137224.P10476665681843860068

`A285869(A247375(n))`
-/

namespace A137224.P10476665681843860068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A247375 n).toNat

end

end A137224.P10476665681843860068

namespace A137224

/-- `A285869(A247375(n))` -/
def P10476665681843860068.Spec : Prop :=
  ∀ n, P10476665681843860068.a n = A137224 n

end A137224

/-! ## A137224.P7995983962851128823

`filter[A227542(2*n), A266298(#)]`
-/

namespace A137224.P7995983962851128823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227542 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266298 (f1 j).toNat = 1) n)

end

end A137224.P7995983962851128823

namespace A137224

/-- `filter[A227542(2*n), A266298(#)]` -/
def P7995983962851128823.Spec : Prop :=
  ∀ n, P7995983962851128823.a n = A137224 n

end A137224

/-!
# A137226: Lesser of twins prime p of A135170(n).

The programs for A137226, there is no canonical definition to state claims against.
-/

/-! ## A137226.P16160186600745420975

`filter[A135170(n+1), A296212(#)]`
-/

namespace A137226.P16160186600745420975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A137226.P16160186600745420975

/-! ## A137226.P3824013743789139154

`filter[A135170(n+1), A353463(#)]`
-/

namespace A137226.P3824013743789139154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A137226.P3824013743789139154

/-! ## A137226.P3679099004106469076

`∩[A001359(n+1), A135170(n+1)]`
-/

namespace A137226.P3679099004106469076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137226.P3679099004106469076

/-! ## A137226.P7780999379056362142

`∩[A001838(n+1), A135170(n+1)]`
-/

namespace A137226.P7780999379056362142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137226.P7780999379056362142

/-! ## A137226.P18127329155515335596

`∩[A054799(n+1), A135170(n+1)]`
-/

namespace A137226.P18127329155515335596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137226.P18127329155515335596

/-!
# A137228: Minimal total number of edges in a polyiamond consisting of n triangular cells.

The programs for A137228, the canonical program `A137228.P18017378543647975834` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137228 has offset 1).

The definition of A137228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137228.P18017378543647975834

`(3*(n+1)+A067628(n+1))/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137228

/-- `(3*(n+1)+A067628(n+1))/2` -/
def P18017378543647975834.Spec : Prop :=
  ∀ n, P18017378543647975834.a n = (A137228 (n + 1) : ℚ)

end A137228

/-! ## A137228.P14541872344350410513

`comp[ceil((1-sqrt(3*n+1))²)]+1`
-/

namespace A137228.P14541872344350410513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.sqrt (3 * n + 1 : ℝ)) ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137228.P14541872344350410513

namespace A137228

/-- `comp[ceil((1-sqrt(3*n+1))²)]+1` -/
def P14541872344350410513.Spec : Prop :=
  ∀ n, (P14541872344350410513.a n : ℤ) = A137228 (n + 1)

end A137228

/-! ## A137228.P2663509275876380274

`∑[3-Δ[A263135(n)]]`
-/

namespace A137228.P2663509275876380274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137228.P2663509275876380274

namespace A137228

/-- `∑[3-Δ[A263135(n)]]` -/
def P2663509275876380274.Spec : Prop :=
  ∀ n, P2663509275876380274.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P7522261214964656343

`∑[A004444(Δ[A263135(n)])]`
-/

namespace A137228.P7522261214964656343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137228.P7522261214964656343

namespace A137228

/-- `∑[A004444(Δ[A263135(n)])]` -/
def P7522261214964656343.Spec : Prop :=
  ∀ n, P7522261214964656343.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P9871755641697548164

`∑[A022959(Δ[A263135(n)])]`
-/

namespace A137228.P9871755641697548164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022959 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137228.P9871755641697548164

namespace A137228

/-- `∑[A022959(Δ[A263135(n)])]` -/
def P9871755641697548164.Spec : Prop :=
  ∀ n, P9871755641697548164.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P12660494390332228276

`∑[A279318(Δ[A263135(n)])]`
-/

namespace A137228.P12660494390332228276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137228.P12660494390332228276

namespace A137228

/-- `∑[A279318(Δ[A263135(n)])]` -/
def P12660494390332228276.Spec : Prop :=
  ∀ n, P12660494390332228276.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P6480104845788379413

`∑[A327467(Δ[A263135(n)])]`
-/

namespace A137228.P6480104845788379413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263135 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327467 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137228.P6480104845788379413

namespace A137228

/-- `∑[A327467(Δ[A263135(n)])]` -/
def P6480104845788379413.Spec : Prop :=
  ∀ n, P6480104845788379413.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P16827801155880411226

`ceil(A135708(2*(n+1))/4)`
-/

namespace A137228.P16827801155880411226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135708 (2 * (n + 1)) : ℚ) / 4⌉

end

end A137228.P16827801155880411226

namespace A137228

/-- `ceil(A135708(2*(n+1))/4)` -/
def P16827801155880411226.Spec : Prop :=
  ∀ n, P16827801155880411226.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P15517871070809094850

`ceil(A079896(3*(n+1))/4)`
-/

namespace A137228.P15517871070809094850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079896 (3 * (n + 1)) : ℚ) / 4⌉

end

end A137228.P15517871070809094850

namespace A137228

/-- `ceil(A079896(3*(n+1))/4)` -/
def P15517871070809094850.Spec : Prop :=
  ∀ n, P15517871070809094850.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P17331049767866214831

`A026741(A067628(n+1)+A008585(n+1))`
-/

namespace A137228.P17331049767866214831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A067628 (n + 1) + A008585 (n + 1)).toNat

end

end A137228.P17331049767866214831

namespace A137228

/-- `A026741(A067628(n+1)+A008585(n+1))` -/
def P17331049767866214831.Spec : Prop :=
  ∀ n, P17331049767866214831.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P13950084999111812653

`A142150(A067628(n+1)+A008486(n+1))`
-/

namespace A137228.P13950084999111812653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A067628 (n + 1) + A008486 (n + 1)).toNat

end

end A137228.P13950084999111812653

namespace A137228

/-- `A142150(A067628(n+1)+A008486(n+1))` -/
def P13950084999111812653.Spec : Prop :=
  ∀ n, P13950084999111812653.a n = A137228 (n + 1)

end A137228

/-! ## A137228.P17565642696213522533

`ceil(A049068(6*(n+1))/4)`
-/

namespace A137228.P17565642696213522533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049068 (6 * (n + 1)) : ℚ) / 4⌉

end

end A137228.P17565642696213522533

namespace A137228

/-- `ceil(A049068(6*(n+1))/4)` -/
def P17565642696213522533.Spec : Prop :=
  ∀ n, P17565642696213522533.a n = A137228 (n + 1)

end A137228

/-!
# A137229: Expansion of g.f. x/((1-x)*(1-3*x+2*x^2-x^3)).

The programs for A137229, the canonical program `A137229.P15049909651012233948` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137229 has offset 1).

The definition of A137229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+5x^2-3x^3+x^4))` (program `A137229.P15049909651012233948`, by `A137229.P15049909651012233948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137229.P15049909651012233948

`ogf(1/(1-4x+5x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137229

/-- `ogf(1/(1-4x+5x^2-3x^3+x^4))` -/
def P15049909651012233948.Spec : Prop :=
  ∀ n, P15049909651012233948.a n = A137229 (n + 1)

theorem P15049909651012233948.correct : P15049909651012233948.Spec := by
  intro n
  simp only [A137229, Nat.add_sub_cancel]

end A137229

/-! ## A137229.P7711672415012255701

`∑[∑[A052921(n)]]`
-/

namespace A137229.P7711672415012255701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P7711672415012255701

namespace A137229

/-- `∑[∑[A052921(n)]]` -/
def P7711672415012255701.Spec : Prop :=
  ∀ n, P7711672415012255701.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P2099543094199442463

`∑[A095263(n+1)]`
-/

namespace A137229.P2099543094199442463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P2099543094199442463

namespace A137229

/-- `∑[A095263(n+1)]` -/
def P2099543094199442463.Spec : Prop :=
  ∀ n, P2099543094199442463.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P2384193601920417265

`∑[abs(Δ[A181984(n)])]`
-/

namespace A137229.P2384193601920417265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P2384193601920417265

namespace A137229

/-- `∑[abs(Δ[A181984(n)])]` -/
def P2384193601920417265.Spec : Prop :=
  ∀ n, P2384193601920417265.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P17479709834118278550

`A181984(n+1)-1`
-/

namespace A137229.P17479709834118278550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1) - 1

end

end A137229.P17479709834118278550

namespace A137229

/-- `A181984(n+1)-1` -/
def P17479709834118278550.Spec : Prop :=
  ∀ n, P17479709834118278550.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P1190053897693354366

`A034943(n+3)-1`
-/

namespace A137229.P1190053897693354366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 3) - 1

end

end A137229.P1190053897693354366

namespace A137229

/-- `A034943(n+3)-1` -/
def P1190053897693354366.Spec : Prop :=
  ∀ n, P1190053897693354366.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P16024969556874209400

`A023434(3*n+2)`
-/

namespace A137229.P16024969556874209400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (3 * n + 2)

end

end A137229.P16024969556874209400

namespace A137229

/-- `A023434(3*n+2)` -/
def P16024969556874209400.Spec : Prop :=
  ∀ n, P16024969556874209400.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P6465977135765579348

`∑[record[A078027(3*n)]]`
-/

namespace A137229.P6465977135765579348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P6465977135765579348

namespace A137229

/-- `∑[record[A078027(3*n)]]` -/
def P6465977135765579348.Spec : Prop :=
  ∀ n, P6465977135765579348.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P2470416088174647070

`∑[A134816(3*(n+1))]`
-/

namespace A137229.P2470416088174647070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P2470416088174647070

namespace A137229

/-- `∑[A134816(3*(n+1))]` -/
def P2470416088174647070.Spec : Prop :=
  ∀ n, P2470416088174647070.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P16856627701463338460

`∑[A078027(3*(n+3))]`
-/

namespace A137229.P16856627701463338460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P16856627701463338460

namespace A137229

/-- `∑[A078027(3*(n+3))]` -/
def P16856627701463338460.Spec : Prop :=
  ∀ n, P16856627701463338460.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P11492583558438952757

`∑[∑[∑[A034943(n+1)]]]`
-/

namespace A137229.P11492583558438952757
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P11492583558438952757

namespace A137229

/-- `∑[∑[∑[A034943(n+1)]]]` -/
def P11492583558438952757.Spec : Prop :=
  ∀ n, P11492583558438952757.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P10418791584098087706

`A164001(3*n+2)-1`
-/

namespace A137229.P10418791584098087706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (3 * n + 2) - 1

end

end A137229.P10418791584098087706

namespace A137229

/-- `A164001(3*n+2)-1` -/
def P10418791584098087706.Spec : Prop :=
  ∀ n, P10418791584098087706.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P17188136985490264287

`A182097(3*(n+2))-1`
-/

namespace A137229.P17188136985490264287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * (n + 2)) - 1

end

end A137229.P17188136985490264287

namespace A137229

/-- `A182097(3*(n+2))-1` -/
def P17188136985490264287.Spec : Prop :=
  ∀ n, P17188136985490264287.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P10487221461822341667

`A000931(3*(n+3))-1`
-/

namespace A137229.P10487221461822341667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * (n + 3)) - 1

end

end A137229.P10487221461822341667

namespace A137229

/-- `A000931(3*(n+3))-1` -/
def P10487221461822341667.Spec : Prop :=
  ∀ n, P10487221461822341667.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P16550591897109733352

`A052954(3*(n+2))-2`
-/

namespace A137229.P16550591897109733352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (3 * (n + 2)) - 2

end

end A137229.P16550591897109733352

namespace A137229

/-- `A052954(3*(n+2))-2` -/
def P16550591897109733352.Spec : Prop :=
  ∀ n, P16550591897109733352.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P10965479141703217993

`∑[∑[A329244(n+1)-1]]`
-/

namespace A137229.P10965479141703217993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P10965479141703217993

namespace A137229

/-- `∑[∑[A329244(n+1)-1]]` -/
def P10965479141703217993.Spec : Prop :=
  ∀ n, P10965479141703217993.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P4208009932873002123

`∑[record[A133034(3*n+2)]]`
-/

namespace A137229.P4208009932873002123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P4208009932873002123

namespace A137229

/-- `∑[record[A133034(3*n+2)]]` -/
def P4208009932873002123.Spec : Prop :=
  ∀ n, P4208009932873002123.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P13645674086069816716

`A137531(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A137229.P13645674086069816716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A137531 n + a (n - 2)

end

end A137229.P13645674086069816716

namespace A137229

/-- `A137531(n)+a(n-2)` -/
def P13645674086069816716.Spec : Prop :=
  ∀ n, P13645674086069816716.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P2308326425823624849

`∑[A228361(2*n+n+2)]`
-/

namespace A137229.P2308326425823624849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137229.P2308326425823624849

namespace A137229

/-- `∑[A228361(2*n+n+2)]` -/
def P2308326425823624849.Spec : Prop :=
  ∀ n, P2308326425823624849.a n = A137229 (n + 1)

end A137229

/-! ## A137229.P1736071227290998683

`A010912(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A137229.P1736071227290998683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010912 (n - 1) + a (n - 1)

end

end A137229.P1736071227290998683

namespace A137229

/-- `A010912(n-1)+a(n-1)` -/
def P1736071227290998683.Spec : Prop :=
  ∀ n, P1736071227290998683.a n = A137229 (n + 1)

end A137229

/-!
# A137230: Composite numbers that are divisible by the number of their prime factors (counted with multiplicity).

The programs for A137230, the canonical program `A137230.P15376731335293041150` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137230 has offset 1).

The definition of A137230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137230.P15376731335293041150

`filter[A074946(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A137230

/-- `filter[A074946(n+1), A005171(#)]` -/
def P15376731335293041150.Spec : Prop :=
  ∀ n, P15376731335293041150.a n = A137230 (n + 1)

theorem P15376731335293041150.correct : P15376731335293041150.Spec := by
  intro n
  simp only [A137230, Nat.add_sub_cancel]

end A137230

/-! ## A137230.P4834855968985108819

`filter[A074946(n+1), A066247(#)]`
-/

namespace A137230.P4834855968985108819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A137230.P4834855968985108819

namespace A137230

/-- `filter[A074946(n+1), A066247(#)]` -/
def P4834855968985108819.Spec : Prop :=
  ∀ n, P4834855968985108819.a n = A137230 (n + 1)

end A137230

/-! ## A137230.P867777887580762991

`∩[A002808(n+1), A074946(n+1)]`
-/

namespace A137230.P867777887580762991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137230.P867777887580762991

namespace A137230

/-- `∩[A002808(n+1), A074946(n+1)]` -/
def P867777887580762991.Spec : Prop :=
  ∀ n, (P867777887580762991.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P17791336344501874790

`∩[A018252(n+1), A074946(n+1)]`
-/

namespace A137230.P17791336344501874790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137230.P17791336344501874790

namespace A137230

/-- `∩[A018252(n+1), A074946(n+1)]` -/
def P17791336344501874790.Spec : Prop :=
  ∀ n, (P17791336344501874790.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P8454935713509528021

`∩[A074946(n+1), A141468(n+1)]`
-/

namespace A137230.P8454935713509528021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137230.P8454935713509528021

namespace A137230

/-- `∩[A074946(n+1), A141468(n+1)]` -/
def P8454935713509528021.Spec : Prop :=
  ∀ n, (P8454935713509528021.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P570748267044143492

`∩[A074946(n+1), A377723(n+1)]`
-/

namespace A137230.P570748267044143492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137230.P570748267044143492

namespace A137230

/-- `∩[A074946(n+1), A377723(n+1)]` -/
def P570748267044143492.Spec : Prop :=
  ∀ n, (P570748267044143492.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P16247314197624863273

`∩[A074946(n+1), A175526(n+1)]`
-/

namespace A137230.P16247314197624863273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137230.P16247314197624863273

namespace A137230

/-- `∩[A074946(n+1), A175526(n+1)]` -/
def P16247314197624863273.Spec : Prop :=
  ∀ n, (P16247314197624863273.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P14200013746046056745

`record[A191558(A074946(n+3))]`
-/

namespace A137230.P14200013746046056745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A074946 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137230.P14200013746046056745

namespace A137230

/-- `record[A191558(A074946(n+3))]` -/
def P14200013746046056745.Spec : Prop :=
  ∀ n, P14200013746046056745.a n = A137230 (n + 1)

end A137230

/-! ## A137230.P5611342054042434477

`record[gcd(A113646(n+1), A161658(n+1))]`
-/

namespace A137230.P5611342054042434477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113646 (n + 1)) (A161658 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137230.P5611342054042434477

namespace A137230

/-- `record[gcd(A113646(n+1), A161658(n+1))]` -/
def P5611342054042434477.Spec : Prop :=
  ∀ n, (P5611342054042434477.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P14559435330500789524

`eq[A066560(n+1), A161658(n+1)]+1`
-/

namespace A137230.P14559435330500789524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137230.P14559435330500789524

namespace A137230

/-- `eq[A066560(n+1), A161658(n+1)]+1` -/
def P14559435330500789524.Spec : Prop :=
  ∀ n, (P14559435330500789524.a n : ℤ) = A137230 (n + 1)

end A137230

/-! ## A137230.P4954916335400950106

`A020725(eq[A066560(n+1), A161658(n+1)])`
-/

namespace A137230.P4954916335400950106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137230.P4954916335400950106

namespace A137230

/-- `A020725(eq[A066560(n+1), A161658(n+1)])` -/
def P4954916335400950106.Spec : Prop :=
  ∀ n, P4954916335400950106.a n = A137230 (n + 1)

end A137230

/-! ## A137230.P13972299571425854849

`eq[char[A134334(n+1)], A339579(n+1)]`
-/

namespace A137230.P13972299571425854849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134334 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A137230.P13972299571425854849

namespace A137230

/-- `eq[char[A134334(n+1)], A339579(n+1)]` -/
def P13972299571425854849.Spec : Prop :=
  ∀ n, (P13972299571425854849.a n : ℤ) = A137230 (n + 1)

end A137230

/-!
# A137231: Amicable triples. Sequence gives sigma values: A125490(n) + A125491(n) + A125492(n).

The programs for A137231, there is no canonical definition to state claims against.
-/

/-! ## A137231.P16010668706339473734

`A125490(n+1)+A125491(n+1)+A125492(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137231.P16010668706339473734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125490 (n + 1) + A125491 (n + 1) + A125492 (n + 1)

end

end A137231.P16010668706339473734

/-! ## A137231.P14836036527620896524

`∑{d}[A125490(n+1), #]`
-/

namespace A137231.P14836036527620896524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A137231.P14836036527620896524

/-! ## A137231.P7941541818945052131

`∑{d}[A125491(n+1), #]`
-/

namespace A137231.P7941541818945052131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A137231.P7941541818945052131

/-! ## A137231.P9701200224057555284

`∑{d}[A125492(n+1), #]`
-/

namespace A137231.P9701200224057555284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A137231.P9701200224057555284

/-! ## A137231.P7346135896530863943

`A000203(A125490(n+1))`
-/

namespace A137231.P7346135896530863943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A125490 (n + 1)).toNat

end

end A137231.P7346135896530863943

/-!
# A137232: a(n) = -a(n-1) + 7*a(n-2) + 3*a(n-3) with a(0) = a(1) = 0, a(2) = 1.

The programs for A137232, the canonical program `A137232.P13604095628878155868` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137232 has offset 0).

The definition of A137232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)+7*a(n-2)+3*a(n-3)` (program `A137232.P13604095628878155868`, by `A137232.P13604095628878155868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137232.P13604095628878155868

`-a(n-1)+7*a(n-2)+3*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137232

/-- `-a(n-1)+7*a(n-2)+3*a(n-3)` -/
def P13604095628878155868.Spec : Prop :=
  ∀ n, P13604095628878155868.a n = A137232 n

theorem P13604095628878155868.correct : P13604095628878155868.Spec := by
  intro n
  simp only [A137232]

end A137232

/-! ## A137232.P11818209852443531926

`((-3)^n+A135532(n))/14`
-/

namespace A137232.P11818209852443531926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-3) ^ n + A135532 n : ℚ) / 14

end

end A137232.P11818209852443531926

namespace A137232

/-- `((-3)^n+A135532(n))/14` -/
def P11818209852443531926.Spec : Prop :=
  ∀ n, P11818209852443531926.a n = (A137232 n : ℚ)

end A137232

/-! ## A137232.P8402173544568900049

`ogf(x^2/(1+x-7x^2-3x^3))`
-/

namespace A137232.P8402173544568900049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 1, -7, -3] n

end

end A137232.P8402173544568900049

namespace A137232

/-- `ogf(x^2/(1+x-7x^2-3x^3))` -/
def P8402173544568900049.Spec : Prop :=
  ∀ n, P8402173544568900049.a n = A137232 n

end A137232

/-! ## A137232.P11621298425371723564

`3*a(n-2)-a(n-1)+3*a(n-3)+4*a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A137232.P11621298425371723564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  3 * a (n - 2) - a (n - 1) + (3 * a (n - 3) + 4 * a (n - 2))

end

end A137232.P11621298425371723564

namespace A137232

/-- `3*a(n-2)-a(n-1)+3*a(n-3)+4*a(n-2)` -/
def P11621298425371723564.Spec : Prop :=
  ∀ n, P11621298425371723564.a n = A137232 n

end A137232

/-! ## A137232.P15031570218418862917

`A000129(n-1)-3*a(n-1)` with `a(0)=0`
-/

namespace A137232.P15031570218418862917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000129 (n - 1) - 3 * a (n - 1)

end

end A137232.P15031570218418862917

namespace A137232

/-- `A000129(n-1)-3*a(n-1)` -/
def P15031570218418862917.Spec : Prop :=
  ∀ n, P15031570218418862917.a n = A137232 n

end A137232

/-!
# A137233: Number of n-digit even numbers.

The programs for A137233, the canonical program `A137233.P17266259230135121142` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137233 has offset 1).

The definition of A137233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137233.P17266259230135121142

`10*a(n-1)` with `a(0)=5, a(1)=45`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137233

/-- `10*a(n-1)` -/
def P17266259230135121142.Spec : Prop :=
  ∀ n, (P17266259230135121142.a n : ℤ) = A137233 (n + 1)

theorem P17266259230135121142.correct : P17266259230135121142.Spec := by
  intro n
  simp only [A137233, Nat.add_sub_cancel]

end A137233

/-! ## A137233.P13895434427717270251

`ogf((5-5x)/(1-10x))`
-/

namespace A137233.P13895434427717270251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -5] [1, -10] n

end

end A137233.P13895434427717270251

namespace A137233

/-- `ogf((5-5x)/(1-10x))` -/
def P13895434427717270251.Spec : Prop :=
  ∀ n, P13895434427717270251.a n = A137233 (n + 1)

end A137233

/-! ## A137233.P8134573376307669102

`Δ[floor(10^n/2)]`
-/

namespace A137233.P8134573376307669102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137233.P8134573376307669102

namespace A137233

/-- `Δ[floor(10^n/2)]` -/
def P8134573376307669102.Spec : Prop :=
  ∀ n, P8134573376307669102.a n = A137233 (n + 1)

end A137233

/-! ## A137233.P3603338410805148633

`Δ[and(10^n, -2)]/2`
-/

namespace A137233.P3603338410805148633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A137233.P3603338410805148633

namespace A137233

/-- `Δ[and(10^n, -2)]/2` -/
def P3603338410805148633.Spec : Prop :=
  ∀ n, P3603338410805148633.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P7457608474186763650

`abs(∏[-a(n-1)])` with `a(0)=5, a(1)=9, a(2)=10`
-/

namespace A137233.P7457608474186763650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 9, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A137233.P7457608474186763650

namespace A137233

/-- `abs(∏[-a(n-1)])` -/
def P7457608474186763650.Spec : Prop :=
  ∀ n, P7457608474186763650.a n = A137233 (n + 1)

end A137233

/-! ## A137233.P1419685183551049593

`Δ[A178500(n)]/2`
-/

namespace A137233.P1419685183551049593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A137233.P1419685183551049593

namespace A137233

/-- `Δ[A178500(n)]/2` -/
def P1419685183551049593.Spec : Prop :=
  ∀ n, P1419685183551049593.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P18259923552359556642

`5*Δ[A178501(n)]`
-/

namespace A137233.P18259923552359556642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A137233.P18259923552359556642

namespace A137233

/-- `5*Δ[A178501(n)]` -/
def P18259923552359556642.Spec : Prop :=
  ∀ n, P18259923552359556642.a n = A137233 (n + 1)

end A137233

/-! ## A137233.P13294621803449965790

`A063945(n+1)/2`
-/

namespace A137233.P13294621803449965790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063945 (n + 1) : ℚ) / 2

end

end A137233.P13294621803449965790

namespace A137233

/-- `A063945(n+1)/2` -/
def P13294621803449965790.Spec : Prop :=
  ∀ n, P13294621803449965790.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P17285694751379713696

`A070252(Δ[n²])/2`
-/

namespace A137233.P17285694751379713696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A137233.P17285694751379713696

namespace A137233

/-- `A070252(Δ[n²])/2` -/
def P17285694751379713696.Spec : Prop :=
  ∀ n, P17285694751379713696.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P3726386228161864676

`ceil(A052268(n+1)/2)`
-/

namespace A137233.P3726386228161864676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052268 (n + 1) : ℚ) / 2⌉

end

end A137233.P3726386228161864676

namespace A137233

/-- `ceil(A052268(n+1)/2)` -/
def P3726386228161864676.Spec : Prop :=
  ∀ n, P3726386228161864676.a n = A137233 (n + 1)

end A137233

/-! ## A137233.P11754278316021097319

`A216653(∑[n+1])/2`
-/

namespace A137233.P11754278316021097319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216653 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A137233.P11754278316021097319

namespace A137233

/-- `A216653(∑[n+1])/2` -/
def P11754278316021097319.Spec : Prop :=
  ∀ n, P11754278316021097319.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P7172859390001791683

`record[A070252(n+1)/2]`
-/

namespace A137233.P7172859390001791683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070252 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137233.P7172859390001791683

namespace A137233

/-- `record[A070252(n+1)/2]` -/
def P7172859390001791683.Spec : Prop :=
  ∀ n, P7172859390001791683.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P10172670092450011950

`record[A216653(n+1)/2]`
-/

namespace A137233.P10172670092450011950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216653 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137233.P10172670092450011950

namespace A137233

/-- `record[A216653(n+1)/2]` -/
def P10172670092450011950.Spec : Prop :=
  ∀ n, P10172670092450011950.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P9473444749497085909

`(A109002(n+1)+1)/2`
-/

namespace A137233.P9473444749497085909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109002 (n + 1) + 1 : ℚ) / 2

end

end A137233.P9473444749497085909

namespace A137233

/-- `(A109002(n+1)+1)/2` -/
def P9473444749497085909.Spec : Prop :=
  ∀ n, P9473444749497085909.a n = (A137233 (n + 1) : ℚ)

end A137233

/-! ## A137233.P6142360115316317143

`ceil(A050683(2*(n+1))/2)`
-/

namespace A137233.P6142360115316317143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050683 (2 * (n + 1)) : ℚ) / 2⌉

end

end A137233.P6142360115316317143

namespace A137233

/-- `ceil(A050683(2*(n+1))/2)` -/
def P6142360115316317143.Spec : Prop :=
  ∀ n, P6142360115316317143.a n = A137233 (n + 1)

end A137233

/-! ## A137233.P9085010441029244523

`A093143(n)+A093141(n+1)`
-/

namespace A137233.P9085010441029244523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n + A093141 (n + 1)

end

end A137233.P9085010441029244523

namespace A137233

/-- `A093143(n)+A093141(n+1)` -/
def P9085010441029244523.Spec : Prop :=
  ∀ n, P9085010441029244523.a n = A137233 (n + 1)

end A137233

/-!
# A137234: Expansion of g.f. 1/((1-x)^2*(1 - 3*x + 2*x^2 - x^3)).

The programs for A137234, the canonical program `A137234.P7248050292032781434` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137234 has offset 0).

The definition of A137234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+9x^2-8x^3+4x^4-x^5))` (program `A137234.P7248050292032781434`, by `A137234.P7248050292032781434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137234.P7248050292032781434

`ogf(1/(1-5x+9x^2-8x^3+4x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137234

/-- `ogf(1/(1-5x+9x^2-8x^3+4x^4-x^5))` -/
def P7248050292032781434.Spec : Prop :=
  ∀ n, P7248050292032781434.a n = A137234 n

theorem P7248050292032781434.correct : P7248050292032781434.Spec := by
  intro n
  simp only [A137234]

end A137234

/-! ## A137234.P15298802636189913566

`∑[A137229(n+1)]`
-/

namespace A137234.P15298802636189913566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P15298802636189913566

namespace A137234

/-- `∑[A137229(n+1)]` -/
def P15298802636189913566.Spec : Prop :=
  ∀ n, P15298802636189913566.a n = A137234 n

end A137234

/-! ## A137234.P2276490052925155557

`∑[∑[∑[A052921(n)]]]`
-/

namespace A137234.P2276490052925155557
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P2276490052925155557

namespace A137234

/-- `∑[∑[∑[A052921(n)]]]` -/
def P2276490052925155557.Spec : Prop :=
  ∀ n, P2276490052925155557.a n = A137234 n

end A137234

/-! ## A137234.P14278512619245570306

`A164315(3*n)-n`
-/

namespace A137234.P14278512619245570306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (3 * n) - (n : ℤ)

end

end A137234.P14278512619245570306

namespace A137234

/-- `A164315(3*n)-n` -/
def P14278512619245570306.Spec : Prop :=
  ∀ n, P14278512619245570306.a n = A137234 n

end A137234

/-! ## A137234.P1126705609573341206

`∑[∑[A095263(n+1)]]`
-/

namespace A137234.P1126705609573341206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P1126705609573341206

namespace A137234

/-- `∑[∑[A095263(n+1)]]` -/
def P1126705609573341206.Spec : Prop :=
  ∀ n, P1126705609573341206.a n = A137234 n

end A137234

/-! ## A137234.P4380612097788739062

`∑[A181984(n+1)-1]`
-/

namespace A137234.P4380612097788739062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P4380612097788739062

namespace A137234

/-- `∑[A181984(n+1)-1]` -/
def P4380612097788739062.Spec : Prop :=
  ∀ n, P4380612097788739062.a n = A137234 n

end A137234

/-! ## A137234.P4265284332352046919

`∑[A034943(n+3)-1]`
-/

namespace A137234.P4265284332352046919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P4265284332352046919

namespace A137234

/-- `∑[A034943(n+3)-1]` -/
def P4265284332352046919.Spec : Prop :=
  ∀ n, P4265284332352046919.a n = A137234 n

end A137234

/-! ## A137234.P14593154256678805212

`∑[A023434(3*n+2)]`
-/

namespace A137234.P14593154256678805212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P14593154256678805212

namespace A137234

/-- `∑[A023434(3*n+2)]` -/
def P14593154256678805212.Spec : Prop :=
  ∀ n, P14593154256678805212.a n = A137234 n

end A137234

/-! ## A137234.P9937962801747967031

`A052921(n+2)-(n+3)`
-/

namespace A137234.P9937962801747967031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 2) - (n + 3 : ℤ)

end

end A137234.P9937962801747967031

namespace A137234

/-- `A052921(n+2)-(n+3)` -/
def P9937962801747967031.Spec : Prop :=
  ∀ n, P9937962801747967031.a n = A137234 n

end A137234

/-! ## A137234.P12584655336752725415

`∑[∑[A134816(3*(n+1))]]`
-/

namespace A137234.P12584655336752725415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P12584655336752725415

namespace A137234

/-- `∑[∑[A134816(3*(n+1))]]` -/
def P12584655336752725415.Spec : Prop :=
  ∀ n, P12584655336752725415.a n = A137234 n

end A137234

/-! ## A137234.P15664439009323194119

`∑[∑[A182097(3*n+4)]]`
-/

namespace A137234.P15664439009323194119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P15664439009323194119

namespace A137234

/-- `∑[∑[A182097(3*n+4)]]` -/
def P15664439009323194119.Spec : Prop :=
  ∀ n, P15664439009323194119.a n = A137234 n

end A137234

/-! ## A137234.P2399065319341175131

`A136303(n)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A137234.P2399065319341175131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A136303 n - a (n - 2)

end

end A137234.P2399065319341175131

namespace A137234

/-- `A136303(n)-a(n-2)` -/
def P2399065319341175131.Spec : Prop :=
  ∀ n, P2399065319341175131.a n = A137234 n

end A137234

/-! ## A137234.P10415924125206990879

`A228361(3*(n+2))-(n+3)`
-/

namespace A137234.P10415924125206990879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (3 * (n + 2)) - (n + 3 : ℤ)

end

end A137234.P10415924125206990879

namespace A137234

/-- `A228361(3*(n+2))-(n+3)` -/
def P10415924125206990879.Spec : Prop :=
  ∀ n, P10415924125206990879.a n = A137234 n

end A137234

/-! ## A137234.P10071273355637876610

`∑[Δ[A023434(A016777(n))]-1]`
-/

namespace A137234.P10071273355637876610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (A016777 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P10071273355637876610

namespace A137234

/-- `∑[Δ[A023434(A016777(n))]-1]` -/
def P10071273355637876610.Spec : Prop :=
  ∀ n, P10071273355637876610.a n = A137234 n

end A137234

/-! ## A137234.P13789005832651757666

`A000931(A016789(n+3))-(n+3)`
-/

namespace A137234.P13789005832651757666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A016789 (n + 3)).toNat - (n + 3 : ℤ)

end

end A137234.P13789005832651757666

namespace A137234

/-- `A000931(A016789(n+3))-(n+3)` -/
def P13789005832651757666.Spec : Prop :=
  ∀ n, P13789005832651757666.a n = A137234 n

end A137234

/-! ## A137234.P7337163084998856150

`∑[∑[A136302(n+1)-A097550(n)]]`
-/

namespace A137234.P7337163084998856150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136302 (n + 1) - A097550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P7337163084998856150

namespace A137234

/-- `∑[∑[A136302(n+1)-A097550(n)]]` -/
def P7337163084998856150.Spec : Prop :=
  ∀ n, P7337163084998856150.a n = A137234 n

end A137234

/-! ## A137234.P3547916517631673017

`∑[A164001(A000027(3*n+1)+1)-1]`
-/

namespace A137234.P3547916517631673017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A000027 (3 * n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137234.P3547916517631673017

namespace A137234

/-- `∑[A164001(A000027(3*n+1)+1)-1]` -/
def P3547916517631673017.Spec : Prop :=
  ∀ n, P3547916517631673017.a n = A137234 n

end A137234

/-! ## A137234.P2239197677705171948

`Δ[A010912(n)]-(n+3)`
-/

namespace A137234.P2239197677705171948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A137234.P2239197677705171948

namespace A137234

/-- `Δ[A010912(n)]-(n+3)` -/
def P2239197677705171948.Spec : Prop :=
  ∀ n, P2239197677705171948.a n = A137234 n

end A137234

/-! ## A137234.P607961251450238425

`Δ[A095263(n+2)]-(n+3)`
-/

namespace A137234.P607961251450238425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A137234.P607961251450238425

namespace A137234

/-- `Δ[A095263(n+2)]-(n+3)` -/
def P607961251450238425.Spec : Prop :=
  ∀ n, P607961251450238425.a n = A137234 n

end A137234

/-!
# A137235: a(n) = (n+1)/2 if n is odd; a(n) = n/2 + 6 if n is even.

The programs for A137235, the canonical program `A137235.P16987386408737672274` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137235 has offset 0).

The definition of A137235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137235.P16987386408737672274

`1/4*(2*(n+1)-11*(-1)^(n+1)+11)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137235

/-- `1/4*(2*(n+1)-11*(-1)^(n+1)+11)` -/
def P16987386408737672274.Spec : Prop :=
  ∀ n, P16987386408737672274.a n = (A137235 n : ℚ)

end A137235

/-! ## A137235.P4495670909562140439

`a(n-2)+1` with `a(0)=6, a(1)=1`
-/

namespace A137235.P4495670909562140439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n a =>
  a (n - 2) + 1

end

end A137235.P4495670909562140439

namespace A137235

/-- `a(n-2)+1` -/
def P4495670909562140439.Spec : Prop :=
  ∀ n, (P4495670909562140439.a n : ℤ) = A137235 n

end A137235

/-! ## A137235.P16112950916925004950

`∑[6-11*n%2]`
-/

namespace A137235.P16112950916925004950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((11 * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P16112950916925004950

namespace A137235

/-- `∑[6-11*n%2]` -/
def P16112950916925004950.Spec : Prop :=
  ∀ n, P16112950916925004950.a n = A137235 n

end A137235

/-! ## A137235.P15419128026174192661

`∑[1-a(n-1)]` with `a(0)=6`
-/

namespace A137235.P15419128026174192661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P15419128026174192661

namespace A137235

/-- `∑[1-a(n-1)]` -/
def P15419128026174192661.Spec : Prop :=
  ∀ n, P15419128026174192661.a n = A137235 n

end A137235

/-! ## A137235.P1090128586297160653

`∑[6-11*and(1, n)]`
-/

namespace A137235.P1090128586297160653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (11 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P1090128586297160653

namespace A137235

/-- `∑[6-11*and(1, n)]` -/
def P1090128586297160653.Spec : Prop :=
  ∀ n, P1090128586297160653.a n = A137235 n

end A137235

/-! ## A137235.P2013947329406835132

`∑[11*gcd(2, n)-16]`
-/

namespace A137235.P2013947329406835132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * Nat.gcd 2 n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P2013947329406835132

namespace A137235

/-- `∑[11*gcd(2, n)-16]` -/
def P2013947329406835132.Spec : Prop :=
  ∀ n, P2013947329406835132.a n = A137235 n

end A137235

/-! ## A137235.P9629057916726054360

`∑[7-12^and(1, n)]`
-/

namespace A137235.P9629057916726054360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (12 ^ Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P9629057916726054360

namespace A137235

/-- `∑[7-12^and(1, n)]` -/
def P9629057916726054360.Spec : Prop :=
  ∀ n, P9629057916726054360.a n = A137235 n

end A137235

/-! ## A137235.P18277235252973741763

`∑[∑[ogf((6-5x)/(1+x))]]`
-/

namespace A137235.P18277235252973741763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P18277235252973741763

namespace A137235

/-- `∑[∑[ogf((6-5x)/(1+x))]]` -/
def P18277235252973741763.Spec : Prop :=
  ∀ n, P18277235252973741763.a n = A137235 n

end A137235

/-! ## A137235.P4195011292957691142

`ogf((6-5x)/(1-x-x^2+x^3))`
-/

namespace A137235.P4195011292957691142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -1, -1, 1] n

end

end A137235.P4195011292957691142

namespace A137235

/-- `ogf((6-5x)/(1-x-x^2+x^3))` -/
def P4195011292957691142.Spec : Prop :=
  ∀ n, P4195011292957691142.a n = A137235 n

end A137235

/-! ## A137235.P3039071569997733506

`6-(a(n-1)-n)` with `a(0)=6`
-/

namespace A137235.P3039071569997733506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 - (a (n - 1) - (n : ℤ))

end

end A137235.P3039071569997733506

namespace A137235

/-- `6-(a(n-1)-n)` -/
def P3039071569997733506.Spec : Prop :=
  ∀ n, P3039071569997733506.a n = A137235 n

end A137235

/-! ## A137235.P18171340110561411984

`(gcd(4, 2*n)!+2*n)/4`
-/

namespace A137235.P18171340110561411984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.gcd 4 (2 * n)) + 2 * n : ℚ) / 4

end

end A137235.P18171340110561411984

namespace A137235

/-- `(gcd(4, 2*n)!+2*n)/4` -/
def P18171340110561411984.Spec : Prop :=
  ∀ n, P18171340110561411984.a n = (A137235 n : ℚ)

end A137235

/-! ## A137235.P17520742630376822558

`Δ[∪[(n+3)², (n+3)²-n]]`
-/

namespace A137235.P17520742630376822558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A137235.P17520742630376822558

namespace A137235

/-- `Δ[∪[(n+3)², (n+3)²-n]]` -/
def P17520742630376822558.Spec : Prop :=
  ∀ n, P17520742630376822558.a n = A137235 n

end A137235

/-! ## A137235.P10889612539722815303

`∑[(n+1)%2]+5*(n+1)%2`
-/

namespace A137235.P10889612539722815303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * ((n + 1) % 2)

end

end A137235.P10889612539722815303

namespace A137235

/-- `∑[(n+1)%2]+5*(n+1)%2` -/
def P10889612539722815303.Spec : Prop :=
  ∀ n, (P10889612539722815303.a n : ℤ) = A137235 n

end A137235

/-! ## A137235.P3198379966629507892

`∑[xor(4, A168361(n+1))]`
-/

namespace A137235.P3198379966629507892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A168361 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137235.P3198379966629507892

namespace A137235

/-- `∑[xor(4, A168361(n+1))]` -/
def P3198379966629507892.Spec : Prop :=
  ∀ n, P3198379966629507892.a n = A137235 n

end A137235

/-! ## A137235.P14092031964648914423

`(A040041(n+2)+n)/2`
-/

namespace A137235.P14092031964648914423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040041 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A137235.P14092031964648914423

namespace A137235

/-- `(A040041(n+2)+n)/2` -/
def P14092031964648914423.Spec : Prop :=
  ∀ n, P14092031964648914423.a n = (A137235 n : ℚ)

end A137235

/-!
# A137236: Numbers k such that 13^k + 4 is prime.

The programs for A137236, there is no canonical definition to state claims against.
-/

/-! ## A137236.P4331525204322193022

`lt[A127799(n), 5]`
-/

namespace A137236.P4331525204322193022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127799 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A137236.P4331525204322193022

/-! ## A137236.P1213052490404848343

`eq[A123932(n), A127799(n)]`
-/

namespace A137236.P1213052490404848343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137236.P1213052490404848343

/-! ## A137236.P1695938423799962919

`eq[A000005(A000469(n+1)), A127799(n)]`
-/

namespace A137236.P1695938423799962919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000469 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137236.P1695938423799962919

/-! ## A137236.P13516766504387229843

`eq[A127799(n), A141248(A141248(n+1))]`
-/

namespace A137236.P13516766504387229843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141248 (A141248 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137236.P13516766504387229843

/-!
# A137238: Primes which contain the digit 1 or the digit 2.

The programs for A137238, there is no canonical definition to state claims against.
-/

/-! ## A137238.P4502884897395843579

`p?[comp[A176407(n)]]`
-/

namespace A137238.P4502884897395843579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P4502884897395843579

/-! ## A137238.P7347254155422285874

`p?[comp[A004177(A004176(n))]]`
-/

namespace A137238.P7347254155422285874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A004176 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P7347254155422285874

/-! ## A137238.P13261997264226369781

`p?[lt[A176407(A026741(n)), n]]`
-/

namespace A137238.P13261997264226369781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 (A026741 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P13261997264226369781

/-! ## A137238.P519787290154060933

`p?[lt[A176407(n), A035043(n)]]`
-/

namespace A137238.P519787290154060933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P519787290154060933

/-! ## A137238.P3010787449084973770

`p?[lt[A004176(n), A222232(n)]]`
-/

namespace A137238.P3010787449084973770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P3010787449084973770

/-! ## A137238.P4256303419128743238

`p?[lt[A004176(n), A222233(n)]]`
-/

namespace A137238.P4256303419128743238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P4256303419128743238

/-! ## A137238.P16328469714381519507

`p?[lt[A176407(n), A171462(n+1)]]`
-/

namespace A137238.P16328469714381519507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137238.P16328469714381519507

/-! ## A137238.P1156536577750485149

`∪[A045708(n+1), A208270(n+1)]`
-/

namespace A137238.P1156536577750485149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137238.P1156536577750485149

/-! ## A137238.P8328044912913019953

`∪[A106102(n+1), A208270(n+1)]`
-/

namespace A137238.P8328044912913019953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137238.P8328044912913019953

/-!
# A137239: a(n) is the number of Catalan numbers with n digits.

The programs for A137239, there is no canonical definition to state claims against.
-/

/-! ## A137239.P320618051794804617

`A340675(A237871(n+1)+A122413(n+1))`
-/

namespace A137239.P320618051794804617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (A237871 (n + 1) + A122413 (n + 1)).toNat

end

end A137239.P320618051794804617

/-! ## A137239.P277508318044564411

`A001176(A288103(n+1)+A227679(n+2))`
-/

namespace A137239.P277508318044564411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A288103 (n + 1) + A227679 (n + 2)).toNat

end

end A137239.P277508318044564411

/-! ## A137239.P12875822637995793720

`A208645((A168201(n)*A311493(n))²)`
-/

namespace A137239.P12875822637995793720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 ((A168201 n * A311493 n) ^ 2).toNat

end

end A137239.P12875822637995793720

/-! ## A137239.P17209423719097304718

`A208645((A144755(n+1)-1)*A168201(n))`
-/

namespace A137239.P17209423719097304718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 ((A144755 (n + 1) - 1) * A168201 n).toNat

end

end A137239.P17209423719097304718

/-!
# A137240: Number of nonnegative k such that binomial(k, floor(k/2)) has n decimal digits.

The programs for A137240, there is no canonical definition to state claims against.
-/

/-! ## A137240.P14718247528816950126

`A033322(n+1)+A010702(A001631(n))`
-/

namespace A137240.P14718247528816950126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) + A010702 (A001631 n).toNat

end

end A137240.P14718247528816950126

/-! ## A137240.P11474116448222194934

`6-A110012(A161701(n))`
-/

namespace A137240.P11474116448222194934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A110012 (A161701 n).toNat

end

end A137240.P11474116448222194934

/-! ## A137240.P5669160524053962208

`A104514(A250120(n+2)+A073852(n+1))`
-/

namespace A137240.P5669160524053962208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104514 (A250120 (n + 2) + A073852 (n + 1)).toNat

end

end A137240.P5669160524053962208

/-! ## A137240.P17914706660616254926

`A321093(3*n)-A001221(A122164(3*(n+1)))`
-/

namespace A137240.P17914706660616254926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 (3 * n) - A001221 (A122164 (3 * (n + 1))).toNat

end

end A137240.P17914706660616254926

/-! ## A137240.P14642311321118059901

`A316828(A036035(n)²)+3`
-/

namespace A137240.P14642311321118059901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A036035 n ^ 2).toNat + 3

end

end A137240.P14642311321118059901

/-!
# A137241: Number triples (k,3-k,2-2k), concatenated for k=0, 1, 2, 3,...

The programs for A137241, the canonical program `A137241.P8720886542605095459` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137241 has offset 0).

The definition of A137241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137241.P8720886542605095459

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1, a(4)=2, a(5)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137241

/-- `2*a(n-3)-a(n-6)` -/
def P8720886542605095459.Spec : Prop :=
  ∀ n, P8720886542605095459.a n = A137241 n

theorem P8720886542605095459.correct : P8720886542605095459.Spec := by
  intro n
  simp only [A137241]

end A137241

/-! ## A137241.P15175631408243530767

`A008585(gcd(n, A009947(n)))-A009947(n)`
-/

namespace A137241.P15175631408243530767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.gcd (n : ℤ) (A009947 n)) - A009947 n

end

end A137241.P15175631408243530767

namespace A137241

/-- `A008585(gcd(n, A009947(n)))-A009947(n)` -/
def P15175631408243530767.Spec : Prop :=
  ∀ n, P15175631408243530767.a n = A137241 n

end A137241

/-! ## A137241.P3378495583620052307

`A135997(A222256(n))+A011655(n)`
-/

namespace A137241.P3378495583620052307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A222256 n).toNat + A011655 n

end

end A137241.P3378495583620052307

namespace A137241

/-- `A135997(A222256(n))+A011655(n)` -/
def P3378495583620052307.Spec : Prop :=
  ∀ n, P3378495583620052307.a n = A137241 n

end A137241

/-! ## A137241.P11495115120055498231

`A135997(A222256(n))+abs(A102283(n))`
-/

namespace A137241.P11495115120055498231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A222256 n).toNat + |A102283 n|

end

end A137241.P11495115120055498231

namespace A137241

/-- `A135997(A222256(n))+abs(A102283(n))` -/
def P11495115120055498231.Spec : Prop :=
  ∀ n, P11495115120055498231.a n = A137241 n

end A137241

/-! ## A137241.P8965968785900241756

`A011655(n)-A057428(n)*A135997(A222256(n))`
-/

namespace A137241.P8965968785900241756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n - A057428 n * A135997 (A222256 n).toNat

end

end A137241.P8965968785900241756

namespace A137241

/-- `A011655(n)-A057428(n)*A135997(A222256(n))` -/
def P8965968785900241756.Spec : Prop :=
  ∀ n, P8965968785900241756.a n = A137241 n

end A137241

/-!
# A137242: Numbers n such that A116127(n) = 2.

The programs for A137242, there is no canonical definition to state claims against.
-/

/-! ## A137242.P17572663609484046657

`eq[2, A116127(n+1)]+1`
-/

namespace A137242.P17572663609484046657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137242.P17572663609484046657

/-! ## A137242.P10945515636888326672

`eq[2, floor(sqrt(A054541(n+1)))]`
-/

namespace A137242.P10945515636888326672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A054541 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P10945515636888326672

/-! ## A137242.P4385298159431100192

`eq[2, floor(sqrt(A125266(n+1)))]`
-/

namespace A137242.P4385298159431100192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A125266 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P4385298159431100192

/-! ## A137242.P7528385706916175830

`eq[3, ceil(sqrt(A076368(n+1)))]`
-/

namespace A137242.P7528385706916175830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A076368 (n + 1) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P7528385706916175830

/-! ## A137242.P5841684352475909883

`eq[3, ceil(sqrt(A230847(n+1)))]`
-/

namespace A137242.P5841684352475909883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A230847 (n + 1) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P5841684352475909883

/-! ## A137242.P581809974587072782

`eq[2, floor(sqrt(A001223(n+1)))]+1`
-/

namespace A137242.P581809974587072782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001223 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137242.P581809974587072782

/-! ## A137242.P10028837453942460839

`eq[2, A116127(A028310(n))]`
-/

namespace A137242.P10028837453942460839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116127 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P10028837453942460839

/-! ## A137242.P358902591235288857

`eq[1, A056811(A054541(n+1))]`
-/

namespace A137242.P358902591235288857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P358902591235288857

/-! ## A137242.P9196389511810674146

`eq[2, A001299(A076368(n+1))]`
-/

namespace A137242.P9196389511810674146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001299 (A076368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137242.P9196389511810674146

/-! ## A137242.P8599835375190334833

`lt[5, A254597(A230847(n+1))]`
-/

namespace A137242.P8599835375190334833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254597 (A230847 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A137242.P8599835375190334833

/-!
# A137243: Number of coprime pairs (a,b) with -n <= a,b <= n.

The programs for A137243, the canonical program `A137243.P6717013021254346252` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137243 has offset 1).

The definition of A137243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018805, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137243.P6717013021254346252

`4*A018805(n+1)+4`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A137243

/-- `4*A018805(n+1)+4` -/
def P6717013021254346252.Spec : Prop :=
  ∀ n, P6717013021254346252.a n = A137243 (n + 1)

theorem P6717013021254346252.correct : P6717013021254346252.Spec := by
  intro n
  simp only [A137243, Nat.add_sub_cancel]

end A137243

/-! ## A137243.P17048661248309987124

`∑[8*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]`
-/

namespace A137243.P17048661248309987124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P17048661248309987124

namespace A137243

/-- `∑[8*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]` -/
def P17048661248309987124.Spec : Prop :=
  ∀ n, P17048661248309987124.a n = (A137243 (n + 1) : ℚ)

end A137243

/-! ## A137243.P187194719384207580

`Δ[8*A103116(n)]`
-/

namespace A137243.P187194719384207580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137243.P187194719384207580

namespace A137243

/-- `Δ[8*A103116(n)]` -/
def P187194719384207580.Spec : Prop :=
  ∀ n, P187194719384207580.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P15979438280835107694

`A206258(n+1)+3`
-/

namespace A137243.P15979438280835107694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206258 (n + 1) + 3

end

end A137243.P15979438280835107694

namespace A137243

/-- `A206258(n+1)+3` -/
def P15979438280835107694.Spec : Prop :=
  ∀ n, P15979438280835107694.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P2713707734736579296

`2*A140466(n+1)`
-/

namespace A137243.P2713707734736579296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140466 (n + 1)

end

end A137243.P2713707734736579296

namespace A137243

/-- `2*A140466(n+1)` -/
def P2713707734736579296.Spec : Prop :=
  ∀ n, P2713707734736579296.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P17842044179452807021

`8*A002088(n+1)`
-/

namespace A137243.P17842044179452807021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002088 (n + 1)

end

end A137243.P17842044179452807021

namespace A137243

/-- `8*A002088(n+1)` -/
def P17842044179452807021.Spec : Prop :=
  ∀ n, P17842044179452807021.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P4533533415512338483

`8*A092249(n+1)`
-/

namespace A137243.P4533533415512338483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A092249 (n + 1)

end

end A137243.P4533533415512338483

namespace A137243

/-- `8*A092249(n+1)` -/
def P4533533415512338483.Spec : Prop :=
  ∀ n, P4533533415512338483.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P7961372510042680909

`∑[2*Δ[A100449(n)]]`
-/

namespace A137243.P7961372510042680909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P7961372510042680909

namespace A137243

/-- `∑[2*Δ[A100449(n)]]` -/
def P7961372510042680909.Spec : Prop :=
  ∀ n, P7961372510042680909.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P5035032048471321126

`∑[8*Δ[A002088(n)]]`
-/

namespace A137243.P5035032048471321126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P5035032048471321126

namespace A137243

/-- `∑[8*Δ[A002088(n)]]` -/
def P5035032048471321126.Spec : Prop :=
  ∀ n, P5035032048471321126.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P2698272552868159659

`∑[8*Δ[A005728(n)]]`
-/

namespace A137243.P2698272552868159659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P2698272552868159659

namespace A137243

/-- `∑[8*Δ[A005728(n)]]` -/
def P2698272552868159659.Spec : Prop :=
  ∀ n, P2698272552868159659.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P16561640978488479834

`∑[8*A000010(n+1)]`
-/

namespace A137243.P16561640978488479834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P16561640978488479834

namespace A137243

/-- `∑[8*A000010(n+1)]` -/
def P16561640978488479834.Spec : Prop :=
  ∀ n, P16561640978488479834.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P12975114289335590662

`2*(A100449(n+1)-1)`
-/

namespace A137243.P12975114289335590662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100449 (n + 1) - 1)

end

end A137243.P12975114289335590662

namespace A137243

/-- `2*(A100449(n+1)-1)` -/
def P12975114289335590662.Spec : Prop :=
  ∀ n, P12975114289335590662.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P9688676214963024461

`2*(∑[A002246(n+1)]+1)`
-/

namespace A137243.P9688676214963024461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A137243.P9688676214963024461

namespace A137243

/-- `2*(∑[A002246(n+1)]+1)` -/
def P9688676214963024461.Spec : Prop :=
  ∀ n, P9688676214963024461.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P11769996676131521192

`∑[8*(A109606(n+1)+1)]`
-/

namespace A137243.P11769996676131521192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P11769996676131521192

namespace A137243

/-- `∑[8*(A109606(n+1)+1)]` -/
def P11769996676131521192.Spec : Prop :=
  ∀ n, P11769996676131521192.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P8958660762943608212

`∑[8*(A039649(n+1)-1)]`
-/

namespace A137243.P8958660762943608212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A039649 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P8958660762943608212

namespace A137243

/-- `∑[8*(A039649(n+1)-1)]` -/
def P8958660762943608212.Spec : Prop :=
  ∀ n, P8958660762943608212.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P15833436557009375937

`∑[8*(n-A219428(n+1))]`
-/

namespace A137243.P15833436557009375937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℤ) - A219428 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P15833436557009375937

namespace A137243

/-- `∑[8*(n-A219428(n+1))]` -/
def P15833436557009375937.Spec : Prop :=
  ∀ n, P15833436557009375937.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P5407024716047621703

`8*∑[A000010(2*n-(n-1))]`
-/

namespace A137243.P5407024716047621703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137243.P5407024716047621703

namespace A137243

/-- `8*∑[A000010(2*n-(n-1))]` -/
def P5407024716047621703.Spec : Prop :=
  ∀ n, P5407024716047621703.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P17505319529097444189

`∑[8*∏{p}[n+1, #-1]*A003557(n+1)]`
-/

namespace A137243.P17505319529097444189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) * A003557 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P17505319529097444189

namespace A137243

/-- `∑[8*∏{p}[n+1, #-1]*A003557(n+1)]` -/
def P17505319529097444189.Spec : Prop :=
  ∀ n, P17505319529097444189.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P16222503937795232470

`8*∑[∑{d}[n+1, #*A008683((n+1)/#)]]`
-/

namespace A137243.P16222503937795232470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137243.P16222503937795232470

namespace A137243

/-- `8*∑[∑{d}[n+1, #*A008683((n+1)/#)]]` -/
def P16222503937795232470.Spec : Prop :=
  ∀ n, P16222503937795232470.a n = A137243 (n + 1)

end A137243

/-! ## A137243.P3401249425049819812

`∑[8*(n+1)/∏{p}[n+1, #]*A047994(∏{p}[n+1, #])]`
-/

namespace A137243.P3401249425049819812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A047994 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137243.P3401249425049819812

namespace A137243

/-- `∑[8*(n+1)/∏{p}[n+1, #]*A047994(∏{p}[n+1, #])]` -/
def P3401249425049819812.Spec : Prop :=
  ∀ n, P3401249425049819812.a n = (A137243 (n + 1) : ℚ)

end A137243

/-!
# A137244: a(n) = lcm_{k=0..n} (k! + 1).

The programs for A137244, there is no canonical definition to state claims against.
-/

/-! ## A137244.P16645377302961801377

`lcm(n!+1, a(n-1))` with `a(0)=2`
-/

namespace A137244.P16645377302961801377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm (Nat.factorial n + 1) (a (n - 1))

end

end A137244.P16645377302961801377

/-! ## A137244.P13128545661792717890

`lcm(-a(n-1), or(1, n!))` with `a(0)=2`
-/

namespace A137244.P13128545661792717890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (Nat.lor 1 (Nat.factorial n) : ℤ)

end

end A137244.P13128545661792717890

/-! ## A137244.P7440689084583233843

`lcm(xor(-1, n!), floor(a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A137244.P7440689084583233843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (Int.xor (-1) (Nat.factorial n : ℤ)) (a (n - 1) : ℤ)

end

end A137244.P7440689084583233843

/-! ## A137244.P646570649299986834

`lcm(a(n-1), A038507(n))` with `a(0)=2`
-/

namespace A137244.P646570649299986834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A038507 n)

end

end A137244.P646570649299986834

/-!
# A137246: a(n) is the ratio of the sum of the squares of the bends (curvatures) of the n-th generation of an Apollonian packing to the sum of the squares of the bends of the initial four-circle configuration.

The programs for A137246, the canonical program `A137246.P13485746703362381411` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137246 has offset 1).

The definition of A137246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137246.P13485746703362381411

`20*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=17, a(2)=339`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137246

/-- `20*a(n-1)-3*a(n-2)` -/
def P13485746703362381411.Spec : Prop :=
  ∀ n, P13485746703362381411.a n = A137246 (n + 1)

theorem P13485746703362381411.correct : P13485746703362381411.Spec := by
  intro n
  simp only [A137246, Nat.add_sub_cancel]

end A137246

/-!
# A137247: a(n) = 4*a(n-1) - 6*a(n-2) + 6*a(n-3) - 3*a(n-4), with initial terms 0, 0, 0, 1.

The programs for A137247, the canonical program `A137247.P11055038134138132314` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137247 has offset 0).

The definition of A137247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+6*a(n-3)-3*a(n-4)` (program `A137247.P11055038134138132314`, by `A137247.P11055038134138132314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137247.P11055038134138132314

`4*a(n-1)-6*a(n-2)+6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137247

/-- `4*a(n-1)-6*a(n-2)+6*a(n-3)-3*a(n-4)` -/
def P11055038134138132314.Spec : Prop :=
  ∀ n, P11055038134138132314.a n = A137247 n

theorem P11055038134138132314.correct : P11055038134138132314.Spec := by
  intro n
  simp only [A137247]

end A137247

/-! ## A137247.P10726277993706011155

`∑[A052103(abs(1-n))]`
-/

namespace A137247.P10726277993706011155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137247.P10726277993706011155

namespace A137247

/-- `∑[A052103(abs(1-n))]` -/
def P10726277993706011155.Spec : Prop :=
  ∀ n, P10726277993706011155.a n = A137247 n

end A137247

/-! ## A137247.P8488837648547194971

`A052103(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A137247.P8488837648547194971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052103 (n - 1) + a (n - 1)

end

end A137247.P8488837648547194971

namespace A137247

/-- `A052103(n-1)+a(n-1)` -/
def P8488837648547194971.Spec : Prop :=
  ∀ n, P8488837648547194971.a n = A137247 n

end A137247

/-! ## A137247.P13567596773716931987

`floor(A052101(n)/2)`
-/

namespace A137247.P13567596773716931987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052101 n : ℚ) / 2⌋

end

end A137247.P13567596773716931987

namespace A137247

/-- `floor(A052101(n)/2)` -/
def P13567596773716931987.Spec : Prop :=
  ∀ n, P13567596773716931987.a n = A137247 n

end A137247

/-! ## A137247.P13605239990709248242

`(Δ[A052102(n)]-1)/2`
-/

namespace A137247.P13605239990709248242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A137247.P13605239990709248242

namespace A137247

/-- `(Δ[A052102(n)]-1)/2` -/
def P13605239990709248242.Spec : Prop :=
  ∀ n, P13605239990709248242.a n = (A137247 n : ℚ)

end A137247

/-! ## A137247.P15379085033142459249

`∑[A052103(n)]-A052103(n)`
-/

namespace A137247.P15379085033142459249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052103 n

end

end A137247.P15379085033142459249

namespace A137247

/-- `∑[A052103(n)]-A052103(n)` -/
def P15379085033142459249.Spec : Prop :=
  ∀ n, P15379085033142459249.a n = A137247 n

end A137247

/-! ## A137247.P14242501335032346595

`(A052102(n+1)-A052102(n)-1)/2`
-/

namespace A137247.P14242501335032346595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052102 (n + 1) - A052102 n - 1 : ℚ) / 2

end

end A137247.P14242501335032346595

namespace A137247

/-- `(A052102(n+1)-A052102(n)-1)/2` -/
def P14242501335032346595.Spec : Prop :=
  ∀ n, P14242501335032346595.a n = (A137247 n : ℚ)

end A137247

/-! ## A137247.P2122661249704177423

`A137256(n)%(∑[A052102(n)]+1)/2`
-/

namespace A137247.P2122661249704177423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A137256 n) (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A137247.P2122661249704177423

namespace A137247

/-- `A137256(n)%(∑[A052102(n)]+1)/2` -/
def P2122661249704177423.Spec : Prop :=
  ∀ n, P2122661249704177423.a n = (A137247 n : ℚ)

end A137247

/-! ## A137247.P428656144200293782

`∑[A137256(n)-A052102(n)]-A137256(n)`
-/

namespace A137247.P428656144200293782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137256 n

end

end A137247.P428656144200293782

namespace A137247

/-- `∑[A137256(n)-A052102(n)]-A137256(n)` -/
def P428656144200293782.Spec : Prop :=
  ∀ n, P428656144200293782.a n = A137247 n

end A137247

/-!
# A137249: Expansion of g.f. z*(2-2*z+z^2+z^3)/((1+z)*(1-3*z+2*z^2-z^3)).

The programs for A137249, the canonical program `A137249.P3206101480216285297` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137249 has offset 1).

The definition of A137249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137249.P1719538586394958353

`ogf((2-2x+x^2+x^3)/(1-2x-x^2+x^3-x^4))`
-/

namespace A137249.P1719538586394958353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1, 1] [1, -2, -1, 1, -1] n

end

end A137249.P1719538586394958353

namespace A137249

/-- `ogf((2-2x+x^2+x^3)/(1-2x-x^2+x^3-x^4))` -/
def P1719538586394958353.Spec : Prop :=
  ∀ n, P1719538586394958353.a n = A137249 (n + 1)

end A137249

/-! ## A137249.P3206101480216285297

`A000931(3*n+1)+2*A003520(3*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137249

/-- `A000931(3*n+1)+2*A003520(3*n)` -/
def P3206101480216285297.Spec : Prop :=
  ∀ n, P3206101480216285297.a n = A137249 (n + 1)

theorem P3206101480216285297.correct : P3206101480216285297.Spec := by
  intro n
  simp only [A137249, Nat.add_sub_cancel]

end A137249

/-! ## A137249.P6523799801783617977

`Δ[A052921(n)+A017899(A016789(n))]`
-/

namespace A137249.P6523799801783617977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n + A017899 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137249.P6523799801783617977

namespace A137249

/-- `Δ[A052921(n)+A017899(A016789(n))]` -/
def P6523799801783617977.Spec : Prop :=
  ∀ n, P6523799801783617977.a n = A137249 (n + 1)

end A137249

/-! ## A137249.P1315418550240887463

`A181984(n)+Δ[A017899(A016789(n))]`
-/

namespace A137249.P1315418550240887463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n + (f1 (n + 1) - f1 n)

end

end A137249.P1315418550240887463

namespace A137249

/-- `A181984(n)+Δ[A017899(A016789(n))]` -/
def P1315418550240887463.Spec : Prop :=
  ∀ n, P1315418550240887463.a n = A137249 (n + 1)

end A137249

/-! ## A137249.P12332788767959862158

`A159328(n)-Δ[A003520(A008585(n))]`
-/

namespace A137249.P12332788767959862158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n - (f1 (n + 1) - f1 n)

end

end A137249.P12332788767959862158

namespace A137249

/-- `A159328(n)-Δ[A003520(A008585(n))]` -/
def P12332788767959862158.Spec : Prop :=
  ∀ n, P12332788767959862158.a n = A137249 (n + 1)

end A137249

/-! ## A137249.P6765552640140058078

`Δ[A190525(n)-Δ[A034943(n)]]`
-/

namespace A137249.P6765552640140058078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190525 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137249.P6765552640140058078

namespace A137249

/-- `Δ[A190525(n)-Δ[A034943(n)]]` -/
def P6765552640140058078.Spec : Prop :=
  ∀ n, P6765552640140058078.a n = A137249 (n + 1)

end A137249

/-!
# A137251: Triangle T(n,k) read by rows: number of k X k triangular matrices with nonnegative integer entries and without zero rows or columns such that sum of all entries is equal to n, n>=1, 1<=k<=n.

The programs for A137251, there is no canonical definition to state claims against.
-/

/-! ## A137251.P5678082546476796451

`A325400(A008278(n+1))`
-/

namespace A137251.P5678082546476796451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A008278 (n + 1)).toNat

end

end A137251.P5678082546476796451

/-! ## A137251.P2003988963094392074

`A338331(A008278(n+1)+1)-1`
-/

namespace A137251.P2003988963094392074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A008278 (n + 1) + 1).toNat - 1

end

end A137251.P2003988963094392074

/-! ## A137251.P2990083416431033755

`A338331(A008278(n+1)+C(n, 64)²)`
-/

namespace A137251.P2990083416431033755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A008278 (n + 1) + (Nat.choose n 64 ^ 2 : ℤ)).toNat

end

end A137251.P2990083416431033755

/-! ## A137251.P5506034725193545581

`A338331(A008278(n+1))+A243833(n)`
-/

namespace A137251.P5506034725193545581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A008278 (n + 1)).toNat + A243833 n

end

end A137251.P5506034725193545581

/-! ## A137251.P1432418958610732969

`A338331(A008278(n+1)^A035214(n))`
-/

namespace A137251.P1432418958610732969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (SequenceMachineLib.roundAway ((A008278 (n + 1) : ℚ) ^ (A035214 n : ℤ))).toNat

end

end A137251.P1432418958610732969

/-!
# A137252: Triangle T(n,k) read by rows: number of k X k triangular (0,1)-matrices with exactly n entries equal to 1 and no zero rows or columns.

The programs for A137252, there is no canonical definition to state claims against.
-/

/-! ## A137252.P3174287736477478861

`A102705(A177517(n+1)²)`
-/

namespace A137252.P3174287736477478861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A177517 (n + 1) ^ 2).toNat

end

end A137252.P3174287736477478861

/-! ## A137252.P7280141843950465217

`A102705(A177517(n+1)^2)`
-/

namespace A137252.P7280141843950465217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A177517 (n + 1) ^ 2).toNat

end

end A137252.P7280141843950465217

/-! ## A137252.P11775601154094452714

`A001222((2^A177517(n+1))!)`
-/

namespace A137252.P11775601154094452714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A177517 (n + 1) : ℤ))).toNat)

end

end A137252.P11775601154094452714

/-! ## A137252.P14451238938551793466

`∑{e}[(2^A177517(n+1))!, A020639(#)]`
-/

namespace A137252.P14451238938551793466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A177517 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A020639 (Nat.factorization (f1 n) p)

end

end A137252.P14451238938551793466

/-! ## A137252.P7321067454290226008

`A019298(A177517(n+1)%A089085(n+1))`
-/

namespace A137252.P7321067454290226008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (Int.tmod (A177517 (n + 1)) (A089085 (n + 1))).toNat

end

end A137252.P7321067454290226008

/-!
# A137254: Numbers n for which r(n) = 3 * S(n)/2, where r(n) = number of digits of n and S(n) = sum of digits of n; n in binary notation.

The programs for A137254, there is no canonical definition to state claims against.
-/

/-! ## A137254.P14667785655224255139

`eq[6, A334487(A165265(n))]`
-/

namespace A137254.P14667785655224255139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334487 (A165265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137254.P14667785655224255139

/-! ## A137254.P10413365020524514876

`eq[A023416(n), A145037(n)]`
-/

namespace A137254.P10413365020524514876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P10413365020524514876

/-! ## A137254.P7030541857692813391

`eq[abs(A037861(n)), A080791(n)]`
-/

namespace A137254.P7030541857692813391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P7030541857692813391

/-! ## A137254.P3441265957670296914

`eq[-A023416(n), A037861(n)]`
-/

namespace A137254.P3441265957670296914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P3441265957670296914

/-! ## A137254.P501157491204537181

`eq[A056791(n), A271479(n+1)]`
-/

namespace A137254.P501157491204537181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P501157491204537181

/-! ## A137254.P14624799484027650503

`eq[2*A023416(n), A000120(n)]`
-/

namespace A137254.P14624799484027650503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P14624799484027650503

/-! ## A137254.P5713274363895486227

`eq[3*A023416(n), A070939(n)]`
-/

namespace A137254.P5713274363895486227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P5713274363895486227

/-! ## A137254.P8842265332687964637

`eq[4^A023416(n), A001316(n)]`
-/

namespace A137254.P8842265332687964637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A023416 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A137254.P8842265332687964637

/-! ## A137254.P7214319555917886207

`eq[8, A099245(n)^A099246(n)]`
-/

namespace A137254.P7214319555917886207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099245 n : ℚ) ^ (A099246 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A137254.P7214319555917886207

/-! ## A137254.P434772405164341632

`eq[2*A080100(n)², A267447(n)]`
-/

namespace A137254.P434772405164341632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080100 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137254.P434772405164341632

/-!
# A137255: a(n) = 2*a(n-1) + 4*a(n-2) - 6*a(n-3) - 3*a(n-4) for n > 3, with a(0)=1, a(1)=2, a(2)=4, a(3)=8.

The programs for A137255, the canonical program `A137255.P5591165237171164681` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137255 has offset 0).

The definition of A137255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)-6*a(n-3)-3*a(n-4)` (program `A137255.P5591165237171164681`, by `A137255.P5591165237171164681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137255.P5591165237171164681

`2*a(n-1)+4*a(n-2)-6*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137255

/-- `2*a(n-1)+4*a(n-2)-6*a(n-3)-3*a(n-4)` -/
def P5591165237171164681.Spec : Prop :=
  ∀ n, P5591165237171164681.a n = A137255 n

theorem P5591165237171164681.correct : P5591165237171164681.Spec := by
  intro n
  simp only [A137255]

end A137255

/-! ## A137255.P389168856378971470

`A000129(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A137255.P389168856378971470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000129 (n - 1) + 3 * a (n - 2)

end

end A137255.P389168856378971470

namespace A137255

/-- `A000129(n-1)+3*a(n-2)` -/
def P389168856378971470.Spec : Prop :=
  ∀ n, P389168856378971470.a n = A137255 n

end A137255

/-! ## A137255.P16618903942875743963

`A136201(n+1)+A038754(n)`
-/

namespace A137255.P16618903942875743963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136201 (n + 1) + A038754 n

end

end A137255.P16618903942875743963

namespace A137255

/-- `A136201(n+1)+A038754(n)` -/
def P16618903942875743963.Spec : Prop :=
  ∀ n, P16618903942875743963.a n = A137255 n

end A137255

/-! ## A137255.P1456679727105193127

`A138194(A026581(n+1))`
-/

namespace A137255.P1456679727105193127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A026581 (n + 1)).toNat

end

end A137255.P1456679727105193127

namespace A137255

/-- `A138194(A026581(n+1))` -/
def P1456679727105193127.Spec : Prop :=
  ∀ n, P1456679727105193127.a n = A137255 n

end A137255

/-! ## A137255.P10516941852272798202

`A333489(A126796(n))+A259544(n+1)`
-/

namespace A137255.P10516941852272798202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A126796 n).toNat + A259544 (n + 1)

end

end A137255.P10516941852272798202

namespace A137255

/-- `A333489(A126796(n))+A259544(n+1)` -/
def P10516941852272798202.Spec : Prop :=
  ∀ n, P10516941852272798202.a n = A137255 n

end A137255

/-!
# A137256: Binomial transform of 2^n, 2^n, 2^n.

The programs for A137256, the canonical program `A137256.P9545406633931337133` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137256 has offset 0).

The definition of A137256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137256.P9545406633931337133

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137256

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)` -/
def P9545406633931337133.Spec : Prop :=
  ∀ n, P9545406633931337133.a n = A137256 n

theorem P9545406633931337133.correct : P9545406633931337133.Spec := by
  intro n
  simp only [A137256]

end A137256

/-! ## A137256.P14153719917076541502

`ogf((1-x+x^2)/(1-3x+3x^2-3x^3))`
-/

namespace A137256.P14153719917076541502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 3, -3] n

end

end A137256.P14153719917076541502

namespace A137256

/-- `ogf((1-x+x^2)/(1-3x+3x^2-3x^3))` -/
def P14153719917076541502.Spec : Prop :=
  ∀ n, P14153719917076541502.a n = A137256 n

end A137256

/-! ## A137256.P10322418407705044718

`3*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A137256.P10322418407705044718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A137256.P10322418407705044718

namespace A137256

/-- `3*(a(n-1)+a(n-3)-a(n-2))` -/
def P10322418407705044718.Spec : Prop :=
  ∀ n, P10322418407705044718.a n = A137256 n

end A137256

/-! ## A137256.P11949965228136834996

`3*a(n-1)-A052102(n)` with `a(0)=1`
-/

namespace A137256.P11949965228136834996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A052102 n

end

end A137256.P11949965228136834996

namespace A137256

/-- `3*a(n-1)-A052102(n)` -/
def P11949965228136834996.Spec : Prop :=
  ∀ n, P11949965228136834996.a n = A137256 n

end A137256

/-! ## A137256.P2983600795409675863

`A052101(n)+∑[A052102(n)]`
-/

namespace A137256.P2983600795409675863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137256.P2983600795409675863

namespace A137256

/-- `A052101(n)+∑[A052102(n)]` -/
def P2983600795409675863.Spec : Prop :=
  ∀ n, P2983600795409675863.a n = A137256 n

end A137256

/-! ## A137256.P606770077829356487

`A052103(n)+∑[A052101(n)]`
-/

namespace A137256.P606770077829356487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137256.P606770077829356487

namespace A137256

/-- `A052103(n)+∑[A052101(n)]` -/
def P606770077829356487.Spec : Prop :=
  ∀ n, P606770077829356487.a n = A137256 n

end A137256

/-! ## A137256.P8140343242631828962

`A140498(n)-∑[A052102(n)]`
-/

namespace A137256.P8140343242631828962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137256.P8140343242631828962

namespace A137256

/-- `A140498(n)-∑[A052102(n)]` -/
def P8140343242631828962.Spec : Prop :=
  ∀ n, P8140343242631828962.a n = A137256 n

end A137256

/-! ## A137256.P17372669494366917116

`A052103(n+1)+A052101(n)`
-/

namespace A137256.P17372669494366917116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 (n + 1) + A052101 n

end

end A137256.P17372669494366917116

namespace A137256

/-- `A052103(n+1)+A052101(n)` -/
def P17372669494366917116.Spec : Prop :=
  ∀ n, P17372669494366917116.a n = A137256 n

end A137256

/-! ## A137256.P5485867083715359711

`A052103(n)+A052102(n+1)`
-/

namespace A137256.P5485867083715359711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n + A052102 (n + 1)

end

end A137256.P5485867083715359711

namespace A137256

/-- `A052103(n)+A052102(n+1)` -/
def P5485867083715359711.Spec : Prop :=
  ∀ n, P5485867083715359711.a n = A137256 n

end A137256

/-! ## A137256.P9418172433457541836

`A140498(n)-A052103(n+1)`
-/

namespace A137256.P9418172433457541836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - A052103 (n + 1)

end

end A137256.P9418172433457541836

namespace A137256

/-- `A140498(n)-A052103(n+1)` -/
def P9418172433457541836.Spec : Prop :=
  ∀ n, P9418172433457541836.a n = A137256 n

end A137256

/-! ## A137256.P97055946239215860

`∑[A052102(n+1)]-A052102(n)`
-/

namespace A137256.P97055946239215860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052102 n

end

end A137256.P97055946239215860

namespace A137256

/-- `∑[A052102(n+1)]-A052102(n)` -/
def P97055946239215860.Spec : Prop :=
  ∀ n, P97055946239215860.a n = A137256 n

end A137256

/-! ## A137256.P1641402253501704303

`A052103(n)+Δ[A052103(n+1)]`
-/

namespace A137256.P1641402253501704303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052103 n + (f1 (n + 1) - f1 n)

end

end A137256.P1641402253501704303

namespace A137256

/-- `A052103(n)+Δ[A052103(n+1)]` -/
def P1641402253501704303.Spec : Prop :=
  ∀ n, P1641402253501704303.a n = A137256 n

end A137256

/-! ## A137256.P4941839503428778354

`A140498(n)-Δ[A137247(n+1)]`
-/

namespace A137256.P4941839503428778354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - (f1 (n + 1) - f1 n)

end

end A137256.P4941839503428778354

namespace A137256

/-- `A140498(n)-Δ[A137247(n+1)]` -/
def P4941839503428778354.Spec : Prop :=
  ∀ n, P4941839503428778354.a n = A137256 n

end A137256

/-! ## A137256.P17305874976677904112

`A140498(n)-A052102(n)-A052103(n)`
-/

namespace A137256.P17305874976677904112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140498 n - A052102 n - A052103 n

end

end A137256.P17305874976677904112

namespace A137256

/-- `A140498(n)-A052102(n)-A052103(n)` -/
def P17305874976677904112.Spec : Prop :=
  ∀ n, P17305874976677904112.a n = A137256 n

end A137256

/-! ## A137256.P11780679191486115430

`A052102(n+1)+A137247(n+1)-A137247(n)`
-/

namespace A137256.P11780679191486115430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052102 (n + 1) + (A137247 (n + 1) - A137247 n)

end

end A137256.P11780679191486115430

namespace A137256

/-- `A052102(n+1)+A137247(n+1)-A137247(n)` -/
def P11780679191486115430.Spec : Prop :=
  ∀ n, P11780679191486115430.a n = A137256 n

end A137256

/-! ## A137256.P18347839511267191121

`Δ[A140498(n)/2]`
-/

namespace A137256.P18347839511267191121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140498 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137256.P18347839511267191121

namespace A137256

/-- `Δ[A140498(n)/2]` -/
def P18347839511267191121.Spec : Prop :=
  ∀ n, P18347839511267191121.a n = (A137256 n : ℚ)

end A137256

/-! ## A137256.P4539972363710008617

`A052103(n+3)/3`
-/

namespace A137256.P4539972363710008617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052103 (n + 3) : ℚ) / 3

end

end A137256.P4539972363710008617

namespace A137256

/-- `A052103(n+3)/3` -/
def P4539972363710008617.Spec : Prop :=
  ∀ n, P4539972363710008617.a n = (A137256 n : ℚ)

end A137256

/-! ## A137256.P14284562574487069943

`(A140498(n)+A052101(n))/2`
-/

namespace A137256.P14284562574487069943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140498 n + A052101 n : ℚ) / 2

end

end A137256.P14284562574487069943

namespace A137256

/-- `(A140498(n)+A052101(n))/2` -/
def P14284562574487069943.Spec : Prop :=
  ∀ n, P14284562574487069943.a n = (A137256 n : ℚ)

end A137256

/-! ## A137256.P14855526034329749999

`Δ[A137247(n+3)/3]`
-/

namespace A137256.P14855526034329749999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137247 (n + 3) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137256.P14855526034329749999

namespace A137256

/-- `Δ[A137247(n+3)/3]` -/
def P14855526034329749999.Spec : Prop :=
  ∀ n, P14855526034329749999.a n = (A137256 n : ℚ)

end A137256

/-! ## A137256.P2091441072408260118

`Δ[A136297(A020723(n))/27]/2`
-/

namespace A137256.P2091441072408260118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136297 (A020723 n).toNat : ℚ) / 27

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A137256.P2091441072408260118

namespace A137256

/-- `Δ[A136297(A020723(n))/27]/2` -/
def P2091441072408260118.Spec : Prop :=
  ∀ n, P2091441072408260118.a n = (A137256 n : ℚ)

end A137256

/-!
# A137257: A number k is included if there is at least one (nonzero) exponent in the prime factorization of k that is not coprime to k.

The programs for A137257, the canonical program `A137257.P10786127464413507786` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137257 has offset 1).

The definition of A137257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137257.P10786127464413507786

`lt[1, gcd(n+1, A005361(n+1))]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137257

/-- `lt[1, gcd(n+1, A005361(n+1))]+1` -/
def P10786127464413507786.Spec : Prop :=
  ∀ n, (P10786127464413507786.a n : ℤ) = A137257 (n + 1)

theorem P10786127464413507786.correct : P10786127464413507786.Spec := by
  intro n
  simp only [A137257, Nat.add_sub_cancel]

end A137257

/-! ## A137257.P11370418980906738138

`A020725(comp[A144146(n+1)-1])`
-/

namespace A137257.P11370418980906738138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A137257.P11370418980906738138

namespace A137257

/-- `A020725(comp[A144146(n+1)-1])` -/
def P11370418980906738138.Spec : Prop :=
  ∀ n, P11370418980906738138.a n = A137257 (n + 1)

end A137257

/-! ## A137257.P15493122169793461164

`lt[A136177(n+1), A158210(n+1)]+1`
-/

namespace A137257.P15493122169793461164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137257.P15493122169793461164

namespace A137257

/-- `lt[A136177(n+1), A158210(n+1)]+1` -/
def P15493122169793461164.Spec : Prop :=
  ∀ n, (P15493122169793461164.a n : ℤ) = A137257 (n + 1)

end A137257

/-! ## A137257.P1679742967104723886

`lt[1, gcd(n, ∏{e}[n, #²])]`
-/

namespace A137257.P1679742967104723886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137257.P1679742967104723886

namespace A137257

/-- `lt[1, gcd(n, ∏{e}[n, #²])]` -/
def P1679742967104723886.Spec : Prop :=
  ∀ n, (P1679742967104723886.a n : ℤ) = A137257 (n + 1)

end A137257

/-!
# A137258: Primes p that satisfy s-t < 0 where s = sigma(2*p+1) mod phi(p) and t = sigma(2*p+1) mod p.

The programs for A137258, there is no canonical definition to state claims against.
-/

/-! ## A137258.P18210196669582934342

`p?[∑[A238125(A351649(n+1))]]`
-/

namespace A137258.P18210196669582934342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A351649 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137258.P18210196669582934342

/-! ## A137258.P16052534416391147359

`record[A139206(char[1]+Δ[n²])]`
-/

namespace A137258.P16052534416391147359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139206 (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137258.P16052534416391147359

/-!
# A137259: Triangle T(n, k) = n*( (n-1)! - (k-1)! ), read by rows.

The programs for A137259, the canonical program `A137259.P5308526100559247135` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137259 has offset 1).

The definition of A137259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137259.P5308526100559247135

`A130493(n+1)-A130493(n+1)/A094587(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A137259

/-- `A130493(n+1)-A130493(n+1)/A094587(n)` -/
def P5308526100559247135.Spec : Prop :=
  ∀ n, P5308526100559247135.a n = (A137259 (n + 1) : ℚ)

end A137259

/-! ## A137259.P8941320635991305931

`A002024(n+1)/A193738(n)*A137260(n+1)`
-/

namespace A137259.P8941320635991305931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A193738 n : ℚ) * (A137260 (n + 1) : ℚ)

end

end A137259.P8941320635991305931

namespace A137259

/-- `A002024(n+1)/A193738(n)*A137260(n+1)` -/
def P8941320635991305931.Spec : Prop :=
  ∀ n, P8941320635991305931.a n = (A137259 (n + 1) : ℚ)

end A137259

/-! ## A137259.P14902945205326089366

`A002024(n+1)/A002260(n+1)*A137260(n+1)`
-/

namespace A137259.P14902945205326089366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A137260 (n + 1) : ℚ)

end

end A137259.P14902945205326089366

namespace A137259

/-- `A002024(n+1)/A002260(n+1)*A137260(n+1)` -/
def P14902945205326089366.Spec : Prop :=
  ∀ n, P14902945205326089366.a n = (A137259 (n + 1) : ℚ)

end A137259

/-! ## A137259.P4039641370653804154

`A137260(n+1)*A183110(n+1)/A193738(n)`
-/

namespace A137259.P4039641370653804154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137260 (n + 1) * A183110 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A137259.P4039641370653804154

namespace A137259

/-- `A137260(n+1)*A183110(n+1)/A193738(n)` -/
def P4039641370653804154.Spec : Prop :=
  ∀ n, P4039641370653804154.a n = (A137259 (n + 1) : ℚ)

end A137259

/-! ## A137259.P15530853205851493900

`A137260(n+1)/A002260(n+1)*A183110(n+1)`
-/

namespace A137259.P15530853205851493900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137260 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A183110 (n + 1) : ℚ)

end

end A137259.P15530853205851493900

namespace A137259

/-- `A137260(n+1)/A002260(n+1)*A183110(n+1)` -/
def P15530853205851493900.Spec : Prop :=
  ∀ n, P15530853205851493900.a n = (A137259 (n + 1) : ℚ)

end A137259

/-!
# A137260: Triangle T(n, k) = k*(n-1)! - k!, read by rows.

The programs for A137260, the canonical program `A137260.P7284618185643126145` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137260 has offset 1).

The definition of A137260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137260.P7284618185643126145

`A162608(n)-A166350(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A137260

/-- `A162608(n)-A166350(n+1)` -/
def P7284618185643126145.Spec : Prop :=
  ∀ n, P7284618185643126145.a n = A137260 (n + 1)

theorem P7284618185643126145.correct : P7284618185643126145.Spec := by
  intro n
  simp only [A137260, Nat.add_sub_cancel]

end A137260

/-! ## A137260.P11861443322092689215

`A162608(n)-A002260(n+1)!`
-/

namespace A137260.P11861443322092689215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n - (Nat.factorial (A002260 (n + 1)).toNat : ℤ)

end

end A137260.P11861443322092689215

namespace A137260

/-- `A162608(n)-A002260(n+1)!` -/
def P11861443322092689215.Spec : Prop :=
  ∀ n, P11861443322092689215.a n = A137260 (n + 1)

end A137260

/-! ## A137260.P7661004520913904007

`(A094587(n)-1)*A166350(n+1)`
-/

namespace A137260.P7661004520913904007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094587 n - 1) * A166350 (n + 1)

end

end A137260.P7661004520913904007

namespace A137260

/-- `(A094587(n)-1)*A166350(n+1)` -/
def P7661004520913904007.Spec : Prop :=
  ∀ n, P7661004520913904007.a n = A137260 (n + 1)

end A137260

/-! ## A137260.P3960471914277143130

`A162608(n)-A214080(A133819(n+1))`
-/

namespace A137260.P3960471914277143130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n - A214080 (A133819 (n + 1)).toNat

end

end A137260.P3960471914277143130

namespace A137260

/-- `A162608(n)-A214080(A133819(n+1))` -/
def P3960471914277143130.Spec : Prop :=
  ∀ n, P3960471914277143130.a n = A137260 (n + 1)

end A137260

/-! ## A137260.P11338659819121641793

`A162608(n)-A162608(n)/A094587(n)`
-/

namespace A137260.P11338659819121641793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162608 n : ℚ) - (A162608 n : ℚ) / (A094587 n : ℚ)

end

end A137260.P11338659819121641793

namespace A137260

/-- `A162608(n)-A162608(n)/A094587(n)` -/
def P11338659819121641793.Spec : Prop :=
  ∀ n, P11338659819121641793.a n = (A137260 (n + 1) : ℚ)

end A137260

/-! ## A137260.P16637323982828736319

`A094587(n)*A233543(n+1)-A233543(n+1)`
-/

namespace A137260.P16637323982828736319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A233543 (n + 1) - A233543 (n + 1)

end

end A137260.P16637323982828736319

namespace A137260

/-- `A094587(n)*A233543(n+1)-A233543(n+1)` -/
def P16637323982828736319.Spec : Prop :=
  ∀ n, P16637323982828736319.a n = A137260 (n + 1)

end A137260

/-! ## A137260.P12885358589328156840

`A156992(n+1)/A135278(n)-A166350(n+1)`
-/

namespace A137260.P12885358589328156840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A135278 n : ℚ) - (A166350 (n + 1) : ℚ)

end

end A137260.P12885358589328156840

namespace A137260

/-- `A156992(n+1)/A135278(n)-A166350(n+1)` -/
def P12885358589328156840.Spec : Prop :=
  ∀ n, P12885358589328156840.a n = (A137260 (n + 1) : ℚ)

end A137260

/-!
# A137263: Interprimes (A024675) == 2 (mod 3).

The programs for A137263, the canonical program `A137263.P10830162275430257195` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137263 has offset 1).

The definition of A137263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137263.P10830162275430257195

`∩[3*n+2, A024675(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137263

/-- `∩[3*n+2, A024675(n+1)]` -/
def P10830162275430257195.Spec : Prop :=
  ∀ n, (P10830162275430257195.a n : ℤ) = A137263 (n + 1)

theorem P10830162275430257195.correct : P10830162275430257195.Spec := by
  intro n
  simp only [A137263, Nat.add_sub_cancel]

end A137263

/-! ## A137263.P14464790761116606998

`∩[A024675(n+1), A016789(n)]`
-/

namespace A137263.P14464790761116606998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P14464790761116606998

namespace A137263

/-- `∩[A024675(n+1), A016789(n)]` -/
def P14464790761116606998.Spec : Prop :=
  ∀ n, (P14464790761116606998.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P16281988361183796158

`∩[A162735(n+1), A016789(n)]`
-/

namespace A137263.P16281988361183796158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P16281988361183796158

namespace A137263

/-- `∩[A162735(n+1), A016789(n)]` -/
def P16281988361183796158.Spec : Prop :=
  ∀ n, (P16281988361183796158.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P10098765432884750072

`∩[A180486(n+1), A162800(n)]`
-/

namespace A137263.P10098765432884750072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P10098765432884750072

namespace A137263

/-- `∩[A180486(n+1), A162800(n)]` -/
def P10098765432884750072.Spec : Prop :=
  ∀ n, (P10098765432884750072.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P2128761868376606157

`∩[A024675(n+1), A061570(n+1)]`
-/

namespace A137263.P2128761868376606157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P2128761868376606157

namespace A137263

/-- `∩[A024675(n+1), A061570(n+1)]` -/
def P2128761868376606157.Spec : Prop :=
  ∀ n, (P2128761868376606157.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P16751318464194600549

`∩[A024675(n+1), A180486(n+1)]`
-/

namespace A137263.P16751318464194600549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P16751318464194600549

namespace A137263

/-- `∩[A024675(n+1), A180486(n+1)]` -/
def P16751318464194600549.Spec : Prop :=
  ∀ n, (P16751318464194600549.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P23497285782255675

`∩[A162735(n+1), A180486(n+1)]`
-/

namespace A137263.P23497285782255675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P23497285782255675

namespace A137263

/-- `∩[A162735(n+1), A180486(n+1)]` -/
def P23497285782255675.Spec : Prop :=
  ∀ n, (P23497285782255675.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P1506143442273062611

`∩[A024675(n+1), A004273(n)+n]`
-/

namespace A137263.P1506143442273062611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P1506143442273062611

namespace A137263

/-- `∩[A024675(n+1), A004273(n)+n]` -/
def P1506143442273062611.Spec : Prop :=
  ∀ n, (P1506143442273062611.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P5058417894711478080

`∩[A024675(n+1), A060747(n)+n]`
-/

namespace A137263.P5058417894711478080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P5058417894711478080

namespace A137263

/-- `∩[A024675(n+1), A060747(n)+n]` -/
def P5058417894711478080.Spec : Prop :=
  ∀ n, (P5058417894711478080.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P17331467458209009447

`∩[A024675(n+1), A103517(n)+n]`
-/

namespace A137263.P17331467458209009447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P17331467458209009447

namespace A137263

/-- `∩[A024675(n+1), A103517(n)+n]` -/
def P17331467458209009447.Spec : Prop :=
  ∀ n, (P17331467458209009447.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P5147375751107400774

`eq[A210882(n+1), A397751(n)]`
-/

namespace A137263.P5147375751107400774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137263.P5147375751107400774

namespace A137263

/-- `eq[A210882(n+1), A397751(n)]` -/
def P5147375751107400774.Spec : Prop :=
  ∀ n, (P5147375751107400774.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P3700688512228267145

`eq[A063932(n+2), A397751(n)]`
-/

namespace A137263.P3700688512228267145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137263.P3700688512228267145

namespace A137263

/-- `eq[A063932(n+2), A397751(n)]` -/
def P3700688512228267145.Spec : Prop :=
  ∀ n, (P3700688512228267145.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P18316937768132445050

`eq[A119257(n+1), A130508(n+1)]`
-/

namespace A137263.P18316937768132445050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137263.P18316937768132445050

namespace A137263

/-- `eq[A119257(n+1), A130508(n+1)]` -/
def P18316937768132445050.Spec : Prop :=
  ∀ n, (P18316937768132445050.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P12129896985071911047

`eq[A063933(n+2), A096062(n+1)]`
-/

namespace A137263.P12129896985071911047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063933 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137263.P12129896985071911047

namespace A137263

/-- `eq[A063933(n+2), A096062(n+1)]` -/
def P12129896985071911047.Spec : Prop :=
  ∀ n, (P12129896985071911047.a n : ℤ) = A137263 (n + 1)

end A137263

/-! ## A137263.P8909606396246323224

`eq[A063933(n+2), A236333(n+3)]`
-/

namespace A137263.P8909606396246323224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063933 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236333 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137263.P8909606396246323224

namespace A137263

/-- `eq[A063933(n+2), A236333(n+3)]` -/
def P8909606396246323224.Spec : Prop :=
  ∀ n, (P8909606396246323224.a n : ℤ) = A137263 (n + 1)

end A137263

/-!
# A137264: Prime number gaps read modulo 3.

The programs for A137264, the canonical program `A137264.P2691179123898335522` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137264 has offset 1).

The definition of A137264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137264.P2691179123898335522

`(7*(p?[2*n+1]-(p?[xor(1, n)+1]+1))+1)%3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137264

/-- `(7*(p?[2*n+1]-(p?[xor(1, n)+1]+1))+1)%3` -/
def P2691179123898335522.Spec : Prop :=
  ∀ n, P2691179123898335522.a n = A137264 (n + 1)

theorem P2691179123898335522.correct : P2691179123898335522.Spec := by
  intro n
  simp only [A137264, Nat.add_sub_cancel]

end A137264

/-! ## A137264.P177676180958757792

`A001223(n+1)%3`
-/

namespace A137264.P177676180958757792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 3

end

end A137264.P177676180958757792

namespace A137264

/-- `A001223(n+1)%3` -/
def P177676180958757792.Spec : Prop :=
  ∀ n, P177676180958757792.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P15610936252576121028

`A054763(n+1)%3`
-/

namespace A137264.P15610936252576121028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054763 (n + 1)) 3

end

end A137264.P15610936252576121028

namespace A137264

/-- `A054763(n+1)%3` -/
def P15610936252576121028.Spec : Prop :=
  ∀ n, P15610936252576121028.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P7190028211601860462

`A075526(n+1)%3`
-/

namespace A137264.P7190028211601860462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075526 (n + 1)) 3

end

end A137264.P7190028211601860462

namespace A137264

/-- `A075526(n+1)%3` -/
def P7190028211601860462.Spec : Prop :=
  ∀ n, P7190028211601860462.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P14542069594766096700

`A129701(n+1)%3`
-/

namespace A137264.P14542069594766096700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129701 (n + 1)) 3

end

end A137264.P14542069594766096700

namespace A137264

/-- `A129701(n+1)%3` -/
def P14542069594766096700.Spec : Prop :=
  ∀ n, P14542069594766096700.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P6500851189620617577

`A054541(n+2)%3`
-/

namespace A137264.P6500851189620617577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 2)) 3

end

end A137264.P6500851189620617577

namespace A137264

/-- `A054541(n+2)%3` -/
def P6500851189620617577.Spec : Prop :=
  ∀ n, P6500851189620617577.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P418496618625255394

`A125266(n+2)%3`
-/

namespace A137264.P418496618625255394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125266 (n + 2)) 3

end

end A137264.P418496618625255394

namespace A137264

/-- `A125266(n+2)%3` -/
def P418496618625255394.Spec : Prop :=
  ∀ n, P418496618625255394.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P7766757981088420050

`A270264(n+2)%3`
-/

namespace A137264.P7766757981088420050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270264 (n + 2)) 3

end

end A137264.P7766757981088420050

namespace A137264

/-- `A270264(n+2)%3` -/
def P7766757981088420050.Spec : Prop :=
  ∀ n, P7766757981088420050.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P165630703750261265

`Δ[A000040(n+1)]%3`
-/

namespace A137264.P165630703750261265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P165630703750261265

namespace A137264

/-- `Δ[A000040(n+1)]%3` -/
def P165630703750261265.Spec : Prop :=
  ∀ n, P165630703750261265.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P15484325026380713178

`Δ[A006093(n+1)]%3`
-/

namespace A137264.P15484325026380713178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P15484325026380713178

namespace A137264

/-- `Δ[A006093(n+1)]%3` -/
def P15484325026380713178.Spec : Prop :=
  ∀ n, P15484325026380713178.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P4804850295898614057

`Δ[A008864(n+1)]%3`
-/

namespace A137264.P4804850295898614057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P4804850295898614057

namespace A137264

/-- `Δ[A008864(n+1)]%3` -/
def P4804850295898614057.Spec : Prop :=
  ∀ n, P4804850295898614057.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P7570679365987259373

`Δ[A040976(n+1)]%3`
-/

namespace A137264.P7570679365987259373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P7570679365987259373

namespace A137264

/-- `Δ[A040976(n+1)]%3` -/
def P7570679365987259373.Spec : Prop :=
  ∀ n, P7570679365987259373.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P8249274401140461481

`(A076368(n+2)-1)%3`
-/

namespace A137264.P8249274401140461481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076368 (n + 2) - 1) 3

end

end A137264.P8249274401140461481

namespace A137264

/-- `(A076368(n+2)-1)%3` -/
def P8249274401140461481.Spec : Prop :=
  ∀ n, P8249274401140461481.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P1573101047453715104

`A134735(2*(n+1))%3`
-/

namespace A137264.P1573101047453715104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134735 (2 * (n + 1))) 3

end

end A137264.P1573101047453715104

namespace A137264

/-- `A134735(2*(n+1))%3` -/
def P1573101047453715104.Spec : Prop :=
  ∀ n, P1573101047453715104.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P14177972897795743890

`A219606(2*n+1)%3`
-/

namespace A137264.P14177972897795743890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219606 (2 * n + 1)) 3

end

end A137264.P14177972897795743890

namespace A137264

/-- `A219606(2*n+1)%3` -/
def P14177972897795743890.Spec : Prop :=
  ∀ n, P14177972897795743890.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P16633626596211324150

`A262138(2*n+1)%3`
-/

namespace A137264.P16633626596211324150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262138 (2 * n + 1)) 3

end

end A137264.P16633626596211324150

namespace A137264

/-- `A262138(2*n+1)%3` -/
def P16633626596211324150.Spec : Prop :=
  ∀ n, P16633626596211324150.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P4456432740845787632

`Δ[record[A000010(n+1)]]%3`
-/

namespace A137264.P4456432740845787632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P4456432740845787632

namespace A137264

/-- `Δ[record[A000010(n+1)]]%3` -/
def P4456432740845787632.Spec : Prop :=
  ∀ n, P4456432740845787632.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P5816343622490567682

`Δ[record[A006530(n+2)]]%3`
-/

namespace A137264.P5816343622490567682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P5816343622490567682

namespace A137264

/-- `Δ[record[A006530(n+2)]]%3` -/
def P5816343622490567682.Spec : Prop :=
  ∀ n, P5816343622490567682.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P11460966317206484415

`Δ[record[A020639(n+2)]]%3`
-/

namespace A137264.P11460966317206484415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A137264.P11460966317206484415

namespace A137264

/-- `Δ[record[A020639(n+2)]]%3` -/
def P11460966317206484415.Spec : Prop :=
  ∀ n, P11460966317206484415.a n = A137264 (n + 1)

end A137264

/-! ## A137264.P1575727431895873980

`A010872(A001223(n+1))`
-/

namespace A137264.P1575727431895873980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A001223 (n + 1)).toNat

end

end A137264.P1575727431895873980

namespace A137264

/-- `A010872(A001223(n+1))` -/
def P1575727431895873980.Spec : Prop :=
  ∀ n, P1575727431895873980.a n = A137264 (n + 1)

end A137264

/-!
# A137265: G.f. y(x) is solution of x y^3 - (1 + x^2) y + 1 = 0 with y(0) = 1.

The programs for A137265, there is no canonical definition to state claims against.
-/

/-! ## A137265.P4199484352209029541

`A165125(A342639(n)+A136792(n))`
-/

namespace A137265.P4199484352209029541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165125 (A342639 n + A136792 n).toNat

end

end A137265.P4199484352209029541

/-! ## A137265.P7030773200552723641

`A364472(n)-A054907(A232432(n))`
-/

namespace A137265.P7030773200552723641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364472 n - A054907 (A232432 n).toNat

end

end A137265.P7030773200552723641

/-! ## A137265.P13582732690176719420

`A008621(A349769(n)-A349788(n))`
-/

namespace A137265.P13582732690176719420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A349769 n - A349788 n).toNat

end

end A137265.P13582732690176719420

/-!
# A137266: a(n) = number of positive integers k where k divides (n - floor(n/k)).

The programs for A137266, there is no canonical definition to state claims against.
-/

/-! ## A137266.P12703783514725065715

`A137921(n+1)+A064894(A156139(n+2))`
-/

namespace A137266.P12703783514725065715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1) + A064894 (A156139 (n + 2)).toNat

end

end A137266.P12703783514725065715

/-! ## A137266.P6788870198521676080

`A001222(or(12, A062112(n+1)))`
-/

namespace A137266.P6788870198521676080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 12 (A062112 (n + 1))).toNat

end

end A137266.P6788870198521676080

/-! ## A137266.P7181584420585906127

`A330551(A005728(n))+A137921(n+1)`
-/

namespace A137266.P7181584420585906127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A005728 n).toNat + A137921 (n + 1)

end

end A137266.P7181584420585906127

/-! ## A137266.P2293288701765670076

`A323308(n+1)+A051903(A056040(n))`
-/

namespace A137266.P2293288701765670076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (n + 1) + A051903 (A056040 n).toNat

end

end A137266.P2293288701765670076

/-! ## A137266.P12852629361296124945

`A358371(A358379(n+3)*A358522(n+1))`
-/

namespace A137266.P12852629361296124945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A358379 (n + 3) * A358522 (n + 1)).toNat

end

end A137266.P12852629361296124945

/-!
# A137267: Chung-Graham juggling polynomials as a triangular sequence of positive coefficients.

The programs for A137267, the canonical program `A137267.P13997790594792920379` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137267 has offset 1).

The definition of A137267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137267.P9554253415878128454

`A137948(char[∑[n+1]]+n)`
-/

namespace A137267.P9554253415878128454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A137267.P9554253415878128454

namespace A137267

/-- `A137948(char[∑[n+1]]+n)` -/
def P9554253415878128454.Spec : Prop :=
  ∀ n, P9554253415878128454.a n = A137267 (n + 1)

end A137267

/-! ## A137267.P13997790594792920379

`A137948(n)-A073424(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A137267

/-- `A137948(n)-A073424(n)` -/
def P13997790594792920379.Spec : Prop :=
  ∀ n, P13997790594792920379.a n = A137267 (n + 1)

theorem P13997790594792920379.correct : P13997790594792920379.Spec := by
  intro n
  simp only [A137267, Nat.add_sub_cancel]

end A137267

/-! ## A137267.P6882670735820344844

`A193739(n)*A233543(n)`
-/

namespace A137267.P6882670735820344844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n * A233543 n

end

end A137267.P6882670735820344844

namespace A137267

/-- `A193739(n)*A233543(n)` -/
def P6882670735820344844.Spec : Prop :=
  ∀ n, P6882670735820344844.a n = A137267 (n + 1)

end A137267

/-! ## A137267.P1326714633759943218

`A137948(n)-char[A000217(n+1)]`
-/

namespace A137267.P1326714633759943218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137267.P1326714633759943218

namespace A137267

/-- `A137948(n)-char[A000217(n+1)]` -/
def P1326714633759943218.Spec : Prop :=
  ∀ n, P1326714633759943218.a n = A137267 (n + 1)

end A137267

/-! ## A137267.P9763675923383411966

`A137948(n)-char[A000124(n)+n]`
-/

namespace A137267.P9763675923383411966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137267.P9763675923383411966

namespace A137267

/-- `A137948(n)-char[A000124(n)+n]` -/
def P9763675923383411966.Spec : Prop :=
  ∀ n, P9763675923383411966.a n = A137267 (n + 1)

end A137267

/-! ## A137267.P14949631308269714319

`A137948(n)-char[A004736(n+1)+n]`
-/

namespace A137267.P14949631308269714319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137267.P14949631308269714319

namespace A137267

/-- `A137948(n)-char[A004736(n+1)+n]` -/
def P14949631308269714319.Spec : Prop :=
  ∀ n, P14949631308269714319.a n = A137267 (n + 1)

end A137267

/-!
# A137268: Triangle T(n, k) = k! * (k+1)^(n-k), read by rows.

The programs for A137268, the canonical program `A137268.P14198878865993767981` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137268 has offset 1).

The definition of A137268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137268.P14198878865993767981

`A051129(n+2)*A166350(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A137268

/-- `A051129(n+2)*A166350(n+1)` -/
def P14198878865993767981.Spec : Prop :=
  ∀ n, P14198878865993767981.a n = A137268 (n + 1)

theorem P14198878865993767981.correct : P14198878865993767981.Spec := by
  intro n
  simp only [A137268, Nat.add_sub_cancel]

end A137268

/-! ## A137268.P13315255474811809837

`A002260(n+1)!*A051129(n+2)`
-/

namespace A137268.P13315255474811809837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A051129 (n + 2)

end

end A137268.P13315255474811809837

namespace A137268

/-- `A002260(n+1)!*A051129(n+2)` -/
def P13315255474811809837.Spec : Prop :=
  ∀ n, P13315255474811809837.a n = A137268 (n + 1)

end A137268

/-! ## A137268.P3274546604499227369

`A009998(A014132(n+1))*A166350(n+1)`
-/

namespace A137268.P3274546604499227369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A014132 (n + 1)).toNat * A166350 (n + 1)

end

end A137268.P3274546604499227369

namespace A137268

/-- `A009998(A014132(n+1))*A166350(n+1)` -/
def P3274546604499227369.Spec : Prop :=
  ∀ n, P3274546604499227369.a n = A137268 (n + 1)

end A137268

/-! ## A137268.P5723550981813690206

`A299504(comp[∑[n]])`
-/

namespace A137268.P5723550981813690206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A137268.P5723550981813690206

namespace A137268

/-- `A299504(comp[∑[n]])` -/
def P5723550981813690206.Spec : Prop :=
  ∀ n, P5723550981813690206.a n = A137268 (n + 1)

end A137268

/-! ## A137268.P870816820008596751

`A000005(A059268(n))!*A051129(n+2)`
-/

namespace A137268.P870816820008596751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (A059268 n).toNat).toNat : ℤ) * A051129 (n + 2)

end

end A137268.P870816820008596751

namespace A137268

/-- `A000005(A059268(n))!*A051129(n+2)` -/
def P870816820008596751.Spec : Prop :=
  ∀ n, P870816820008596751.a n = A137268 (n + 1)

end A137268

/-!
# A137269: Number of primes with maximal digit product for a digit sum of n.

The programs for A137269, there is no canonical definition to state claims against.
-/

/-! ## A137269.P388149629336552531

`gcd(A000038(A017898(n)), A265433(n+1))`
-/

namespace A137269.P388149629336552531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A017898 n).toNat) (A265433 (n + 1))

end

end A137269.P388149629336552531

/-! ## A137269.P4288952666501733260

`A265433(n+1)+A000038(A265433(n+1)+A017898(n))`
-/

namespace A137269.P4288952666501733260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265433 (n + 1) + A000038 (A265433 (n + 1) + A017898 n).toNat

end

end A137269.P4288952666501733260

/-! ## A137269.P2626215742482524176

`gcd(A261595(3*n+2), A351870(A265433(n+1)))`
-/

namespace A137269.P2626215742482524176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261595 (3 * n + 2)) (A351870 (A265433 (n + 1)).toNat)

end

end A137269.P2626215742482524176

/-! ## A137269.P9253267964306987197

`A265433(n+1)+A000038(A329714(n+1))`
-/

namespace A137269.P9253267964306987197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265433 (n + 1) + A000038 (A329714 (n + 1)).toNat

end

end A137269.P9253267964306987197

/-! ## A137269.P4496918828958101630

`A265433(n+1)+A261595(A046034(n+1))`
-/

namespace A137269.P4496918828958101630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265433 (n + 1) + A261595 (A046034 (n + 1)).toNat

end

end A137269.P4496918828958101630

/-!
# A137270: Primes p such that p^2 - 6 is also prime.

The programs for A137270, there is no canonical definition to state claims against.
-/

/-! ## A137270.P16867448792626997086

`p?[A028879(n+1)]`
-/

namespace A137270.P16867448792626997086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A137270.P16867448792626997086

/-! ## A137270.P13952444301771726465

`∩[A028879(n+1), A040179(n+1)]`
-/

namespace A137270.P13952444301771726465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P13952444301771726465

/-! ## A137270.P3896180622156120880

`∩[A028879(n+1), A040970(n+1)]`
-/

namespace A137270.P3896180622156120880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P3896180622156120880

/-! ## A137270.P2548616580199240883

`∩[A040986(n+1), A028879(n+1)]`
-/

namespace A137270.P2548616580199240883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P2548616580199240883

/-! ## A137270.P4545234370062112485

`∩[A040990(n+1), A028879(n+1)]`
-/

namespace A137270.P4545234370062112485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P4545234370062112485

/-! ## A137270.P13071236618497835746

`∩[A028879(n+1), A040159(n+1)]`
-/

namespace A137270.P13071236618497835746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P13071236618497835746

/-! ## A137270.P13611100745861871830

`∩[A028879(n+1), A040161(n+1)]`
-/

namespace A137270.P13611100745861871830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P13611100745861871830

/-! ## A137270.P7585209612726187625

`∩[A028879(n+1), A040169(n+1)]`
-/

namespace A137270.P7585209612726187625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P7585209612726187625

/-! ## A137270.P9111959149564184161

`∩[A028879(n+1), A040972(n+1)]`
-/

namespace A137270.P9111959149564184161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P9111959149564184161

/-! ## A137270.P3678681868329330054

`∩[A028879(n+1), A040980(n+1)]`
-/

namespace A137270.P3678681868329330054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P3678681868329330054

/-! ## A137270.P13996319706498362447

`∩[A028879(n+1), A040165(n+1)]`
-/

namespace A137270.P13996319706498362447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P13996319706498362447

/-! ## A137270.P3113826131540770933

`∩[A028879(n+1), A040171(n+1)]`
-/

namespace A137270.P3113826131540770933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P3113826131540770933

/-! ## A137270.P13377384617336939052

`∩[A028879(n+1), A040978(n+1)]`
-/

namespace A137270.P13377384617336939052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P13377384617336939052

/-! ## A137270.P7865294839969301013

`∩[A028879(n+1), A040982(n+1)]`
-/

namespace A137270.P7865294839969301013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P7865294839969301013

/-! ## A137270.P14152408129092993247

`∩[A028879(n+1), A040184(n+1)]`
-/

namespace A137270.P14152408129092993247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P14152408129092993247

/-! ## A137270.P18256489794169277192

`∩[A028879(n+1), A040177(n+1)]`
-/

namespace A137270.P18256489794169277192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P18256489794169277192

/-! ## A137270.P18015680699518175715

`∩[A028879(n+1), A040974(n+1)]`
-/

namespace A137270.P18015680699518175715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P18015680699518175715

/-! ## A137270.P18210907020911468689

`∩[A000040(n+1), A028879(n+1)]`
-/

namespace A137270.P18210907020911468689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P18210907020911468689

/-! ## A137270.P815984043106334753

`∩[A006005(n+1), A028879(n+1)]`
-/

namespace A137270.P815984043106334753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P815984043106334753

/-! ## A137270.P2931702403834308042

`∩[A008578(n+1), A028879(n+1)]`
-/

namespace A137270.P2931702403834308042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137270.P2931702403834308042

/-!
# A137273: Number of partitions of n-th Fibonacci number into Fibonacci parts obtained by iteratively dividing F(k) into F(n-1) and F(n-2); number of sub-Fibonacci sequences of length n starting with 1,0.

The programs for A137273, there is no canonical definition to state claims against.
-/

/-! ## A137273.P14406247038528528496

`A051889(floor(sqrt(A244754(n))))`
-/

namespace A137273.P14406247038528528496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.sqrt (A244754 n)).toNat

end

end A137273.P14406247038528528496

/-! ## A137273.P16303519502141264236

`A243283(A000166(n)+∑[n])`
-/

namespace A137273.P16303519502141264236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A000166 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A137273.P16303519502141264236

/-! ## A137273.P13888086952058960013

`A333223(A273873(n+1))+1`
-/

namespace A137273.P13888086952058960013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A273873 (n + 1)).toNat + 1

end

end A137273.P13888086952058960013

/-! ## A137273.P4038304078961279619

`A001462(A029744(∑[abs(1-n)]))`
-/

namespace A137273.P4038304078961279619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A029744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A137273.P4038304078961279619

/-!
# A137276: Triangle T(n,k), read by rows: T(n,k)= 0 if n-k odd. T(n,k)= 2*(-1)^((n-k)/2)*(2k-n)/(n+k)*binomial((n+k)/2,(n-k)/2) if n-k even.

The programs for A137276, there is no canonical definition to state claims against.
-/

/-! ## A137276.P14536188571125520089

`A135929(∑[2*n]%comp[∑[n]])`
-/

namespace A137276.P14536188571125520089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A137276.P14536188571125520089

/-! ## A137276.P11676164433391919764

`A135929(∑[char[∑[n]]]²-(n+1))`
-/

namespace A137276.P11676164433391919764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A137276.P11676164433391919764

/-! ## A137276.P4618653188378821159

`or(A000007(n), A135929(A061579(n)))`
-/

namespace A137276.P4618653188378821159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A135929 (A061579 n).toNat)

end

end A137276.P4618653188378821159

/-! ## A137276.P18181993855110729787

`A135929(A061579(n))+char[A016903(n)]`
-/

namespace A137276.P18181993855110729787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016903 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 (A061579 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A137276.P18181993855110729787

/-! ## A137276.P10467172038520122787

`char[A014682(n)]*A135929(A061579(n))`
-/

namespace A137276.P10467172038520122787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A135929 (A061579 n).toNat

end

end A137276.P10467172038520122787

/-! ## A137276.P5721711745482971962

`A033999(n)^2*A135929(A061579(n))`
-/

namespace A137276.P5721711745482971962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A135929 (A061579 n).toNat

end

end A137276.P5721711745482971962

/-! ## A137276.P11807709373366392597

`A007318(C(2, n))*A135929(A061579(n))`
-/

namespace A137276.P11807709373366392597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A135929 (A061579 n).toNat

end

end A137276.P11807709373366392597

/-! ## A137276.P8160156311815084849

`or(∏{d}[n, A001222(#)], A135929(A061579(n)))`
-/

namespace A137276.P8160156311815084849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ d ∈ Nat.divisors (f1 n), A001222 d) (A135929 (A061579 n).toNat)

end

end A137276.P8160156311815084849

/-! ## A137276.P11389520243036404336

`A007318(and(1, -n))*A135929(A061579(n))`
-/

namespace A137276.P11389520243036404336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A135929 (A061579 n).toNat

end

end A137276.P11389520243036404336

/-! ## A137276.P2056346416642890728

`A135929(A061579(n))/A007318(C(n, n²))`
-/

namespace A137276.P2056346416642890728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135929 (A061579 n).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A137276.P2056346416642890728

/-! ## A137276.P5082733677159772958

`A000041(gcd(n, n+1))*A135929(A061579(n))`
-/

namespace A137276.P5082733677159772958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A135929 (A061579 n).toNat

end

end A137276.P5082733677159772958

/-! ## A137276.P4718299392253901400

`A007318(∑[(-1)^n])*A135929(A061579(n))`
-/

namespace A137276.P4718299392253901400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A135929 (A061579 n).toNat

end

end A137276.P4718299392253901400

/-! ## A137276.P15064847461023294325

`A192011(A038722(n+2))-A049310(n)`
-/

namespace A137276.P15064847461023294325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A038722 (n + 2)).toNat - A049310 n

end

end A137276.P15064847461023294325

/-! ## A137276.P7888911486418675558

`A014963(∑[n+1])*A135929(A061579(n))`
-/

namespace A137276.P7888911486418675558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A135929 (A061579 n).toNat

end

end A137276.P7888911486418675558

/-!
# A137277: Triangle of the coefficients [x^k] P_n(x) of the polynomials P_n(x) = 1/n * sum(j=0..floor(n/2), (-1)^j * binomial(n,j) * (n-4*j) * x^(n-2*j) ).

The programs for A137277, there is no canonical definition to state claims against.
-/

/-! ## A137277.P1275120286676973315

`A040906(A135115(n+1))*A137276(n)`
-/

namespace A137277.P1275120286676973315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040906 (A135115 (n + 1)).toNat * A137276 n

end

end A137277.P1275120286676973315

/-! ## A137277.P16883508778394910484

`A040906(A135115(n+1))*A135929(A061579(n))`
-/

namespace A137277.P16883508778394910484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040906 (A135115 (n + 1)).toNat * A135929 (A061579 n).toNat

end

end A137277.P16883508778394910484

/-! ## A137277.P5410371661374107680

`A137276(n)*A340035(A000055(n))`
-/

namespace A137277.P5410371661374107680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137276 n * A340035 (A000055 n).toNat

end

end A137277.P5410371661374107680

/-! ## A137277.P4047694912344739506

`A137276(n)*A265005(A178470(n))`
-/

namespace A137277.P4047694912344739506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137276 n * A265005 (A178470 n).toNat

end

end A137277.P4047694912344739506

/-! ## A137277.P9726589793411717037

`and(A075693(A007088(n)), A137276(n))`
-/

namespace A137277.P9726589793411717037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075693 (A007088 n).toNat) (A137276 n)

end

end A137277.P9726589793411717037

/-!
# A137279: Number of ways of placing ceiling(n/2) nonattacking queens on an n X n Mobius chessboard.

The programs for A137279, there is no canonical definition to state claims against.
-/

/-! ## A137279.P14985084106263388708

`A080917((n*2^(n+1)-1)*∑[n])`
-/

namespace A137279.P14985084106263388708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (((n * 2 ^ (n + 1) : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A137279.P14985084106263388708

/-! ## A137279.P7685607354641728940

`A034933(A112293(n)-1)`
-/

namespace A137279.P7685607354641728940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 (A112293 n - 1).toNat

end

end A137279.P7685607354641728940

/-!
# A137280: a(n) = 3*a(n-1) + 7*a(n-2), with a(1) = 1, a(2) = 10.

The programs for A137280, the canonical program `A137280.P14631742375559681065` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137280 has offset 1).

The definition of A137280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+7*a(n-2)` (program `A137280.P14631742375559681065`, by `A137280.P14631742375559681065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137280.P14631742375559681065

`3*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137280

/-- `3*a(n-1)+7*a(n-2)` -/
def P14631742375559681065.Spec : Prop :=
  ∀ n, (P14631742375559681065.a n : ℤ) = A137280 (n + 1)

theorem P14631742375559681065.correct : P14631742375559681065.Spec := by
  intro n
  simp only [A137280, Nat.add_sub_cancel]

end A137280

/-! ## A137280.P12727556365711942238

`A015524(n+1)+7*A015524(n)`
-/

namespace A137280.P12727556365711942238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015524 (n + 1) + 7 * A015524 n

end

end A137280.P12727556365711942238

namespace A137280

/-- `A015524(n+1)+7*A015524(n)` -/
def P12727556365711942238.Spec : Prop :=
  ∀ n, P12727556365711942238.a n = A137280 (n + 1)

end A137280

/-! ## A137280.P2829110382092155615

`ogf((1+7x)/(1-3x-7x^2))`
-/

namespace A137280.P2829110382092155615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -3, -7] n

end

end A137280.P2829110382092155615

namespace A137280

/-- `ogf((1+7x)/(1-3x-7x^2))` -/
def P2829110382092155615.Spec : Prop :=
  ∀ n, P2829110382092155615.a n = A137280 (n + 1)

end A137280

/-! ## A137280.P14020701529502301049

`A179603(n)+4*A015524(n)`
-/

namespace A137280.P14020701529502301049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179603 n + 4 * A015524 n

end

end A137280.P14020701529502301049

namespace A137280

/-- `A179603(n)+4*A015524(n)` -/
def P14020701529502301049.Spec : Prop :=
  ∀ n, P14020701529502301049.a n = A137280 (n + 1)

end A137280

/-! ## A137280.P3914047866776927461

`A179602(n)+5*A015524(n)`
-/

namespace A137280.P3914047866776927461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179602 n + 5 * A015524 n

end

end A137280.P3914047866776927461

namespace A137280

/-- `A179602(n)+5*A015524(n)` -/
def P3914047866776927461.Spec : Prop :=
  ∀ n, P3914047866776927461.a n = A137280 (n + 1)

end A137280

/-! ## A137280.P8339021389735661138

`A015524(n+2)-A015524(n+1)-A015524(n+1)`
-/

namespace A137280.P8339021389735661138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015524 (n + 2) - A015524 (n + 1) - A015524 (n + 1)

end

end A137280.P8339021389735661138

namespace A137280

/-- `A015524(n+2)-A015524(n+1)-A015524(n+1)` -/
def P8339021389735661138.Spec : Prop :=
  ∀ n, P8339021389735661138.a n = A137280 (n + 1)

end A137280

/-!
# A137281: Numbers k such that T(k) is not divisible by T(i), 1 < i < k, where T(k) = k-th triangular number A000217(k).

The programs for A137281, there is no canonical definition to state claims against.
-/

/-! ## A137281.P6016292677958678953

`floor(sqrt(2*A226863(n+1)))`
-/

namespace A137281.P6016292677958678953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A226863 (n + 1))

end

end A137281.P6016292677958678953

/-! ## A137281.P4335943229878175548

`eq[2, A076982(n+1)]+1`
-/

namespace A137281.P4335943229878175548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137281.P4335943229878175548

/-! ## A137281.P11515347973878031014

`eq[A130706(n), A225399(n)]`
-/

namespace A137281.P11515347973878031014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137281.P11515347973878031014

/-! ## A137281.P14221592542138093680

`eq[A169585(n), A225399(n)]`
-/

namespace A137281.P14221592542138093680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137281.P14221592542138093680

/-! ## A137281.P15946447875468202550

`eq[A019590(n+1), A225399(n)]`
-/

namespace A137281.P15946447875468202550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137281.P15946447875468202550

/-! ## A137281.P13300596707562718229

`eq[A033322(n+1), A225399(n)]`
-/

namespace A137281.P13300596707562718229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137281.P13300596707562718229

/-! ## A137281.P17075395236592111826

`eq[A154955(n+1), A225399(n)]`
-/

namespace A137281.P17075395236592111826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137281.P17075395236592111826

/-! ## A137281.P1032089931892858101

`record[A005843(n+1)/A076982(n+1)]`
-/

namespace A137281.P1032089931892858101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A076982 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137281.P1032089931892858101

/-! ## A137281.P10650703745897830882

`eq[A225399(n), A285476(n)]`
-/

namespace A137281.P10650703745897830882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137281.P10650703745897830882

/-! ## A137281.P380010265377256960

`record[A032742(4*(n+1))/A076982(n+1)]`
-/

namespace A137281.P380010265377256960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (4 * (n + 1)) : ℚ) / (A076982 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137281.P380010265377256960

/-! ## A137281.P9679161120674587840

`A080098(A226863(n+1))`
-/

namespace A137281.P9679161120674587840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A226863 (n + 1)).toNat

end

end A137281.P9679161120674587840

/-!
# A137282: Final digit of A136408(n).

The programs for A137282, the canonical program `A137282.P2016201665392545808` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137282 has offset 0).

The definition of A137282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137282.P2016201665392545808

`A136408(n)%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137282

/-- `A136408(n)%10` -/
def P2016201665392545808.Spec : Prop :=
  ∀ n, P2016201665392545808.a n = A137282 n

theorem P2016201665392545808.correct : P2016201665392545808.Spec := by
  intro n
  simp only [A137282]

end A137282

/-!
# A137284: a(0)=1 and a(n) for n > 0 equals the minimal positive integer such that addition of 2^(-a(n)) to Sum_{k = 0,1,...,n-1} 2^(-a(k)) changes only trailing zeros in its decimal representation.

The programs for A137284, there is no canonical definition to state claims against.
-/

/-! ## A137284.P14172073091700518052

`ceil(log2(10)*a(n-1))` with `a(0)=1`
-/

namespace A137284.P14172073091700518052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.logb 2 (10 : ℝ) * (a (n - 1) : ℝ)⌉

end

end A137284.P14172073091700518052

/-! ## A137284.P14649326271934768590

`floor(log2(10)*a(n-1))+1` with `a(0)=1`
-/

namespace A137284.P14649326271934768590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.logb 2 (10 : ℝ) * (a (n - 1) : ℝ)⌋ + 1

end

end A137284.P14649326271934768590

/-! ## A137284.P11890982788085709002

`A067497(a(n-1))` with `a(0)=1`
-/

namespace A137284.P11890982788085709002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067497 (a (n - 1)).toNat

end

end A137284.P11890982788085709002

/-!
# A137285: a(1)=1. a(n+1) = a(n) + (number of terms of this sequence, from among terms a(1) through a(n), that are >= (1/n)sum{k=1 to n} a(k)).

The programs for A137285, there is no canonical definition to state claims against.
-/

/-! ## A137285.P2109496346938171690

`∑[round(sqrt(3*(n²+1+n)/17))]+1`
-/

namespace A137285.P2109496346938171690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (3 * ((n ^ 2 + 1 + n : ℚ) / 17) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A137285.P2109496346938171690

/-! ## A137285.P5294432485707131832

`∑[A000196(A101402(∑[n+1]))]`
-/

namespace A137285.P5294432485707131832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A101402 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137285.P5294432485707131832

/-! ## A137285.P2356779499382146940

`∑[A008620(comp[A005206(8*n+11)])]`
-/

namespace A137285.P2356779499382146940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (8 * n + 11)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137285.P2356779499382146940

/-! ## A137285.P7638885645105166893

`∑[A110656(A325456(n+1)+2*n)]`
-/

namespace A137285.P7638885645105166893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A325456 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137285.P7638885645105166893

/-! ## A137285.P15429163050732985979

`∑[A000196(A194990(A134869(n+1)))]`
-/

namespace A137285.P15429163050732985979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A194990 (A134869 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137285.P15429163050732985979

/-! ## A137285.P9270436804347557982

`∑[A000196(A025798(n)+A001840(n))]`
-/

namespace A137285.P9270436804347557982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A025798 n + A001840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137285.P9270436804347557982

/-!
# A137286: Triangle of coefficients of a version of the Hermite polynomials defined by P(x, n) = x*P(x, n - 1) - n*P(x, n - 2).

The programs for A137286, there is no canonical definition to state claims against.
-/

/-! ## A137286.P5857248355761781855

`A106470(n)*A180048(n)`
-/

namespace A137286.P5857248355761781855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A180048 n

end

end A137286.P5857248355761781855

/-! ## A137286.P8424938999959552965

`A117568(n)*A180048(n)`
-/

namespace A137286.P8424938999959552965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A180048 n

end

end A137286.P8424938999959552965

/-! ## A137286.P12622877102689840594

`A180048(n)*A369736(n)`
-/

namespace A137286.P12622877102689840594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180048 n * A369736 n

end

end A137286.P12622877102689840594

/-! ## A137286.P5565016946706941240

`A230698(n)*A369736(n)`
-/

namespace A137286.P5565016946706941240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 n * A369736 n

end

end A137286.P5565016946706941240

/-! ## A137286.P5794105517561194479

`A130194(n+1)*A180048(n)`
-/

namespace A137286.P5794105517561194479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A180048 n

end

end A137286.P5794105517561194479

/-! ## A137286.P14423663615196370947

`A130194(n+1)%2*A230698(n)`
-/

namespace A137286.P14423663615196370947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130194 (n + 1)) 2 * A230698 n

end

end A137286.P14423663615196370947

/-! ## A137286.P14035075485906609428

`A009001(A025581(n))*A180048(n)`
-/

namespace A137286.P14035075485906609428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A025581 n).toNat * A180048 n

end

end A137286.P14035075485906609428

/-! ## A137286.P16617981132250731415

`A009001(A051933(n))*A180048(n)`
-/

namespace A137286.P16617981132250731415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051933 n).toNat * A180048 n

end

end A137286.P16617981132250731415

/-! ## A137286.P16854632006087328843

`A014581(A025581(n))*A230698(n)`
-/

namespace A137286.P16854632006087328843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (A025581 n).toNat * A230698 n

end

end A137286.P16854632006087328843

/-!
# A137287: a(n) is the number 2 written (prime(n)-1)/2 times followed by the digit 1; a(1)=2.

The programs for A137287, there is no canonical definition to state claims against.
-/

/-! ## A137287.P1305258565870572712

`A322925(A000040(n+1))`
-/

namespace A137287.P1305258565870572712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (A000040 (n + 1)).toNat

end

end A137287.P1305258565870572712

/-! ## A137287.P18429902106002661413

`A322925(A030291(n+1))`
-/

namespace A137287.P18429902106002661413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (A030291 (n + 1)).toNat

end

end A137287.P18429902106002661413

/-! ## A137287.P5943118519684862078

`A322925(A030475(n+1))`
-/

namespace A137287.P5943118519684862078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (A030475 (n + 1)).toNat

end

end A137287.P5943118519684862078

/-! ## A137287.P16719180983881424581

`A322925(A038614(n+1))`
-/

namespace A137287.P16719180983881424581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (A038614 (n + 1)).toNat

end

end A137287.P16719180983881424581

/-! ## A137287.P6406135967941070145

`A322925(A038616(n+1))`
-/

namespace A137287.P6406135967941070145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (A038616 (n + 1)).toNat

end

end A137287.P6406135967941070145

/-!
# A137288: Numbers k such that 2*prime(k)-1 is prime.

The programs for A137288, the canonical program `A137288.P10083510828041765000` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137288 has offset 1).

The definition of A137288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137288.P16894106262366795908

`lt[1, A181715(n+1)]+1`
-/

namespace A137288.P16894106262366795908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A137288.P16894106262366795908

namespace A137288

/-- `lt[1, A181715(n+1)]+1` -/
def P16894106262366795908.Spec : Prop :=
  ∀ n, (P16894106262366795908.a n : ℤ) = A137288 (n + 1)

end A137288

/-! ## A137288.P4727499422640360424

`eq[2, A278229(n+1)]+1`
-/

namespace A137288.P4727499422640360424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137288.P4727499422640360424

namespace A137288

/-- `eq[2, A278229(n+1)]+1` -/
def P4727499422640360424.Spec : Prop :=
  ∀ n, (P4727499422640360424.a n : ℤ) = A137288 (n + 1)

end A137288

/-! ## A137288.P3966652332585390988

`lt[A219432(n+1), 3]+1`
-/

namespace A137288.P3966652332585390988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219432 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A137288.P3966652332585390988

namespace A137288

/-- `lt[A219432(n+1), 3]+1` -/
def P3966652332585390988.Spec : Prop :=
  ∀ n, (P3966652332585390988.a n : ℤ) = A137288 (n + 1)

end A137288

/-! ## A137288.P10447013501341546450

`eq[1, A078898(A216568(n+1))]+1`
-/

namespace A137288.P10447013501341546450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A216568 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137288.P10447013501341546450

namespace A137288

/-- `eq[1, A078898(A216568(n+1))]+1` -/
def P10447013501341546450.Spec : Prop :=
  ∀ n, (P10447013501341546450.a n : ℤ) = A137288 (n + 1)

end A137288

/-! ## A137288.P773340184104065589

`A000720(A005382(n+1))`
-/

namespace A137288.P773340184104065589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005382 (n + 1)).toNat

end

end A137288.P773340184104065589

namespace A137288

/-- `A000720(A005382(n+1))` -/
def P773340184104065589.Spec : Prop :=
  ∀ n, P773340184104065589.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P15780728535988746456

`A000720(A077068(n+1)/2)`
-/

namespace A137288.P15780728535988746456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A077068 (n + 1) : ℚ) / 2)).toNat

end

end A137288.P15780728535988746456

namespace A137288

/-- `A000720(A077068(n+1)/2)` -/
def P15780728535988746456.Spec : Prop :=
  ∀ n, P15780728535988746456.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P9808498329838965607

`A323164(A089965(n+1)/2+1)`
-/

namespace A137288.P9808498329838965607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323164 (SequenceMachineLib.roundAway ((A089965 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A137288.P9808498329838965607

namespace A137288

/-- `A323164(A089965(n+1)/2+1)` -/
def P9808498329838965607.Spec : Prop :=
  ∀ n, P9808498329838965607.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P8531772223843301781

`A302039(A005382(2*n+1-n))`
-/

namespace A137288.P8531772223843301781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A005382 (2 * n + 1 - n)).toNat

end

end A137288.P8531772223843301781

namespace A137288

/-- `A302039(A005382(2*n+1-n))` -/
def P8531772223843301781.Spec : Prop :=
  ∀ n, P8531772223843301781.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P13224858267140286769

`A039733(A174801(n+2))`
-/

namespace A137288.P13224858267140286769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039733 (A174801 (n + 2)).toNat

end

end A137288.P13224858267140286769

namespace A137288

/-- `A039733(A174801(n+2))` -/
def P13224858267140286769.Spec : Prop :=
  ∀ n, P13224858267140286769.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P16638645289443699421

`A000720(p?[A005097(n+1)+1])`
-/

namespace A137288.P16638645289443699421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137288.P16638645289443699421

namespace A137288

/-- `A000720(p?[A005097(n+1)+1])` -/
def P16638645289443699421.Spec : Prop :=
  ∀ n, P16638645289443699421.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P6166198783312570309

`A000720(p?[ceil(A000040(n+1)/2)])`
-/

namespace A137288.P6166198783312570309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137288.P6166198783312570309

namespace A137288

/-- `A000720(p?[ceil(A000040(n+1)/2)])` -/
def P6166198783312570309.Spec : Prop :=
  ∀ n, P6166198783312570309.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P10083510828041765000

`record[A061395(A006530(n+1)+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A137288

/-- `record[A061395(A006530(n+1)+1)]` -/
def P10083510828041765000.Spec : Prop :=
  ∀ n, P10083510828041765000.a n = A137288 (n + 1)

theorem P10083510828041765000.correct : P10083510828041765000.Spec := by
  intro n
  simp only [A137288, Nat.add_sub_cancel]

end A137288

/-! ## A137288.P2843789470015647074

`record[A061395(A000040(n+2)+1)]`
-/

namespace A137288.P2843789470015647074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137288.P2843789470015647074

namespace A137288

/-- `record[A061395(A000040(n+2)+1)]` -/
def P2843789470015647074.Spec : Prop :=
  ∀ n, P2843789470015647074.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P5387460391930983438

`eq[1, A001222(A001747(n+1)-1)]`
-/

namespace A137288.P5387460391930983438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137288.P5387460391930983438

namespace A137288

/-- `eq[1, A001222(A001747(n+1)-1)]` -/
def P5387460391930983438.Spec : Prop :=
  ∀ n, (P5387460391930983438.a n : ℤ) = A137288 (n + 1)

end A137288

/-! ## A137288.P14621629020984810357

`A000720(p?[A006530(2*n+1)-n])`
-/

namespace A137288.P14621629020984810357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137288.P14621629020984810357

namespace A137288

/-- `A000720(p?[A006530(2*n+1)-n])` -/
def P14621629020984810357.Spec : Prop :=
  ∀ n, P14621629020984810357.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P10442620004780850222

`A000720(p?[A020639(2*n+1)-n])`
-/

namespace A137288.P10442620004780850222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137288.P10442620004780850222

namespace A137288

/-- `A000720(p?[A020639(2*n+1)-n])` -/
def P10442620004780850222.Spec : Prop :=
  ∀ n, P10442620004780850222.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P5416807775105788108

`A061395(p?[A006530(2*n+1)-n])`
-/

namespace A137288.P5416807775105788108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A137288.P5416807775105788108

namespace A137288

/-- `A061395(p?[A006530(2*n+1)-n])` -/
def P5416807775105788108.Spec : Prop :=
  ∀ n, P5416807775105788108.a n = A137288 (n + 1)

end A137288

/-! ## A137288.P13337929075118385521

`eq[2, A000005(A100484(n+1)-1)]+1`
-/

namespace A137288.P13337929075118385521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A100484 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137288.P13337929075118385521

namespace A137288

/-- `eq[2, A000005(A100484(n+1)-1)]+1` -/
def P13337929075118385521.Spec : Prop :=
  ∀ n, (P13337929075118385521.a n : ℤ) = A137288 (n + 1)

end A137288

/-! ## A137288.P16690304821904842811

`lt[A001222(A100484(n+1)-1), 2]+1`
-/

namespace A137288.P16690304821904842811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100484 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A137288.P16690304821904842811

namespace A137288

/-- `lt[A001222(A100484(n+1)-1), 2]+1` -/
def P16690304821904842811.Spec : Prop :=
  ∀ n, (P16690304821904842811.a n : ℤ) = A137288 (n + 1)

end A137288

/-!
# A137290: Fibonacci(n) mod 30.

The programs for A137290, the canonical program `A137290.P1502679110014377697` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137290 has offset 1).

The definition of A137290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137290.P1502679110014377697

`(a(n-2)+a(n-1))%30` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137290

/-- `(a(n-2)+a(n-1))%30` -/
def P1502679110014377697.Spec : Prop :=
  ∀ n, (P1502679110014377697.a n : ℤ) = A137290 (n + 1)

theorem P1502679110014377697.correct : P1502679110014377697.Spec := by
  intro n
  simp only [A137290, Nat.add_sub_cancel]

end A137290

/-!
# A137291: Numbers m such that prime(m)^2-2 is prime.

The programs for A137291, there is no canonical definition to state claims against.
-/

/-! ## A137291.P1022103298930224548

`∪[A173472(n+1), A109119(n)]`
-/

namespace A137291.P1022103298930224548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137291.P1022103298930224548

/-! ## A137291.P10067992457430962460

`lt[A054271(n+1), 3]+1`
-/

namespace A137291.P10067992457430962460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054271 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A137291.P10067992457430962460

/-! ## A137291.P2423445205937070987

`A000720(A062326(n+1))`
-/

namespace A137291.P2423445205937070987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A062326 (n + 1)).toNat

end

end A137291.P2423445205937070987

/-! ## A137291.P8483607598074437659

`A061395(sqrt(A146981(n+1)))`
-/

namespace A137291.P8483607598074437659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway (Real.sqrt (A146981 (n + 1) : ℝ))).toNat

end

end A137291.P8483607598074437659

/-! ## A137291.P16014985193531646105

`record[A061395(A028870(n+1))]`
-/

namespace A137291.P16014985193531646105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137291.P16014985193531646105

/-! ## A137291.P16624785809327351417

`A000720(∩[A000040(n+1), A028870(n+1)])`
-/

namespace A137291.P16624785809327351417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A137291.P16624785809327351417

/-! ## A137291.P14643332502237343110

`A061395(∩[A000040(n+1), A028870(n+1)])`
-/

namespace A137291.P14643332502237343110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A137291.P14643332502237343110

/-! ## A137291.P5576057805178537941

`A316524(A062326(n+1)+A000007(2*(n+2)))`
-/

namespace A137291.P5576057805178537941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A062326 (n + 1) + A000007 (2 * (n + 2))).toNat

end

end A137291.P5576057805178537941

/-! ## A137291.P10656154418864671940

`record[A056239(A089623(n+1)+1)]`
-/

namespace A137291.P10656154418864671940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A089623 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137291.P10656154418864671940

/-! ## A137291.P15943537612904795120

`A049084(A062326(n+1)+2-4/2)`
-/

namespace A137291.P15943537612904795120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (SequenceMachineLib.roundAway ((A062326 (n + 1) : ℚ) + (2 - (4 : ℚ) / 2))).toNat

end

end A137291.P15943537612904795120

/-! ## A137291.P17268284331257241195

`A049084(A062326(2*(n+1)-(n+1)))`
-/

namespace A137291.P17268284331257241195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A062326 (2 * (n + 1) - (n + 1))).toNat

end

end A137291.P17268284331257241195

/-! ## A137291.P15446786902767375389

`A010051(A000040(n+1))*A049084(A062326(n+1))`
-/

namespace A137291.P15446786902767375389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000040 (n + 1)).toNat * A049084 (A062326 (n + 1)).toNat

end

end A137291.P15446786902767375389

/-!
# A137292: Limiting sequence when we start with the positive integers and at step n >= 1 delete the term at position n + digitsum(a(n)).

The programs for A137292, there is no canonical definition to state claims against.
-/

/-! ## A137292.P9227951706996836049

`∑[A352823(A239218(3*(n+1))+2)]`
-/

namespace A137292.P9227951706996836049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352823 (A239218 (3 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137292.P9227951706996836049

/-! ## A137292.P6138136780608092523

`∑[A056062(A128209(n)+A047842(n))]`
-/

namespace A137292.P6138136780608092523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056062 (A128209 n + A047842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137292.P6138136780608092523

/-! ## A137292.P3979997683072359913

`A026147(n+1)-A029837(A187829(n+1))`
-/

namespace A137292.P3979997683072359913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1) - A029837 (A187829 (n + 1)).toNat

end

end A137292.P3979997683072359913

/-! ## A137292.P9259730796504696125

`lt[A344414(2*(n+2)), A286150(A004086(3*n+4))]`
-/

namespace A137292.P9259730796504696125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344414 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286150 (A004086 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137292.P9259730796504696125

/-!
# A137293: a(1) = 1. After the initial 1, follow with runs of integers; the n-th run of 2*a(n) terms is (1,2,3,4,....,2a(n)).

The programs for A137293, there is no canonical definition to state claims against.
-/

/-! ## A137293.P1086774742411789925

`A175851(A210709(n)+2+n)`
-/

namespace A137293.P1086774742411789925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A210709 n + 2 + (n : ℤ)).toNat

end

end A137293.P1086774742411789925

/-! ## A137293.P1565033363870560983

`A049711(n+3)*A079487(A210709(n))`
-/

namespace A137293.P1565033363870560983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3) * A079487 (A210709 n).toNat

end

end A137293.P1565033363870560983

/-! ## A137293.P11055313182037914119

`A049711(n+3)*A309876(A185264(n))`
-/

namespace A137293.P11055313182037914119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3) * A309876 (A185264 n).toNat

end

end A137293.P11055313182037914119

/-!
# A137294: A polynomial-time algorithm for moving all seeds into one pot in a class of sowing positions.

The programs for A137294, the canonical program `A137294.P16640436568140118388` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137294 has offset 1).

The definition of A137294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137294.P16640436568140118388

`∑[A087808(A261693(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A137294

/-- `∑[A087808(A261693(n))]` -/
def P16640436568140118388.Spec : Prop :=
  ∀ n, P16640436568140118388.a n = A137294 (n + 1)

theorem P16640436568140118388.correct : P16640436568140118388.Spec := by
  intro n
  simp only [A137294, Nat.add_sub_cancel]

end A137294

/-! ## A137294.P7143829949533589911

`∑[A087808(A035327(2*n))]-1`
-/

namespace A137294.P7143829949533589911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A035327 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137294.P7143829949533589911

namespace A137294

/-- `∑[A087808(A035327(2*n))]-1` -/
def P7143829949533589911.Spec : Prop :=
  ∀ n, P7143829949533589911.a n = A137294 (n + 1)

end A137294

/-! ## A137294.P8991607098105643359

`∑[A087808(A035327(4*n+1))]/2`
-/

namespace A137294.P8991607098105643359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A035327 (4 * n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A137294.P8991607098105643359

namespace A137294

/-- `∑[A087808(A035327(4*n+1))]/2` -/
def P8991607098105643359.Spec : Prop :=
  ∀ n, P8991607098105643359.a n = (A137294 (n + 1) : ℚ)

end A137294

/-! ## A137294.P8859570365618824148

`∑[A087808(A035327(A004277(n)))]`
-/

namespace A137294.P8859570365618824148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A035327 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137294.P8859570365618824148

namespace A137294

/-- `∑[A087808(A035327(A004277(n)))]` -/
def P8859570365618824148.Spec : Prop :=
  ∀ n, P8859570365618824148.a n = A137294 (n + 1)

end A137294

/-! ## A137294.P10276432568852755399

`A023443(n)+∑[A087808(A035327(n))]`
-/

namespace A137294.P10276432568852755399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137294.P10276432568852755399

namespace A137294

/-- `A023443(n)+∑[A087808(A035327(n))]` -/
def P10276432568852755399.Spec : Prop :=
  ∀ n, P10276432568852755399.a n = A137294 (n + 1)

end A137294

/-! ## A137294.P11401755686547992306

`∑[A158388(n)+A087808(A035327(n))]`
-/

namespace A137294.P11401755686547992306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A087808 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137294.P11401755686547992306

namespace A137294

/-- `∑[A158388(n)+A087808(A035327(n))]` -/
def P11401755686547992306.Spec : Prop :=
  ∀ n, P11401755686547992306.a n = A137294 (n + 1)

end A137294

/-!
# A137295: P-positions in sparse Atomic Wari, octal game .37.

The programs for A137295, there is no canonical definition to state claims against.
-/

/-! ## A137295.P8242956582239458839

`A046696(n+1)-2`
-/

namespace A137295.P8242956582239458839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046696 (n + 1) - 2

end

end A137295.P8242956582239458839

/-! ## A137295.P3972613984979661518

`A267194(n+2)-1`
-/

namespace A137295.P3972613984979661518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267194 (n + 2) - 1

end

end A137295.P3972613984979661518

/-! ## A137295.P7606630928005415667

`eq[0, A046695(n+1)]`
-/

namespace A137295.P7606630928005415667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137295.P7606630928005415667

/-! ## A137295.P84206317672848832

`A023444(A046696(n+1))`
-/

namespace A137295.P84206317672848832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A046696 (n + 1)).toNat

end

end A137295.P84206317672848832

/-! ## A137295.P4019883276631935722

`A023443(A267194(n+2))`
-/

namespace A137295.P4019883276631935722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A267194 (n + 2)).toNat

end

end A137295.P4019883276631935722

/-!
# A137297: Triangle read by rows: coefficients of a Hermite-like set of recursive polynomials that appear by integration to be orthogonal using the substitution on the Hermite recursion of n->f(n) where f(n)=A000045[n] is the Fibonacci sequence.

The programs for A137297, there is no canonical definition to state claims against.
-/

/-! ## A137297.P14097127695881784163

`A210714(A210714(n))+A066325(n)`
-/

namespace A137297.P14097127695881784163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210714 (A210714 n).toNat + A066325 n

end

end A137297.P14097127695881784163

/-! ## A137297.P15343954693532972993

`A210714(A210714(n))+A099174(n)*A106470(n)`
-/

namespace A137297.P15343954693532972993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210714 (A210714 n).toNat + A099174 n * A106470 n

end

end A137297.P15343954693532972993

/-! ## A137297.P964380058357425544

`A210714(A210714(n))+A099174(n)*A117568(n)`
-/

namespace A137297.P964380058357425544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210714 (A210714 n).toNat + A099174 n * A117568 n

end

end A137297.P964380058357425544

/-! ## A137297.P14188281048646425114

`A178117(n)+A055641(A172343(n))`
-/

namespace A137297.P14188281048646425114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178117 n + A055641 (A172343 n).toNat

end

end A137297.P14188281048646425114

/-!
# A137298: Triangle read by rows: coefficients of a Hermite-like set of recursive polynomials that appear by integration to be orthogonal using the substitution on the Hermite recursion of n->f(n) where f(n)=A000931[n] is the Padovan sequence.

The programs for A137298, there is no canonical definition to state claims against.
-/

/-! ## A137298.P12943094532512839485

`A178090(lt[1, A157403(n+1)])`
-/

namespace A137298.P12943094532512839485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A137298.P12943094532512839485

/-! ## A137298.P12372720078882539735

`A178090(comp[∑[n]])%A323579(n+3)`
-/

namespace A137298.P12372720078882539735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178090 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A323579 (n + 3))

end

end A137298.P12372720078882539735

/-! ## A137298.P11313319425822847188

`A178090(lt[A178046(n), A193603(n)])`
-/

namespace A137298.P11313319425822847188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137298.P11313319425822847188

/-! ## A137298.P8615156659664463018

`A178090(lt[A178046(n), n*A178090(n)])`
-/

namespace A137298.P8615156659664463018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A178090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A137298.P8615156659664463018

/-! ## A137298.P11349647569313902226

`A178090(comp[∑[n]])%A323536(A080036(n))`
-/

namespace A137298.P11349647569313902226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178090 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A323536 (A080036 n).toNat)

end

end A137298.P11349647569313902226

