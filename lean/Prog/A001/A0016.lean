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
import Seq.B000.C040
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A001600: Harmonic means of divisors of harmonic numbers.

The programs for A001600, there is no canonical definition to state claims against.
-/

/-! ## A001600.P5864965969910205364

`A008619(floor(log2(A174633(n+1))))`
-/

namespace A001600.P5864965969910205364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.log 2 (A174633 (n + 1)).toNat)

end

end A001600.P5864965969910205364

/-! ## A001600.P11389803666832822157

`A008619(ceil(log2(A174633(n+1))))`
-/

namespace A001600.P11389803666832822157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌈Real.logb 2 (A174633 (n + 1) : ℝ)⌉.toNat

end

end A001600.P11389803666832822157

/-! ## A001600.P9461745151979843454

`A065033(ceil(log2(A174633(n+1))))`
-/

namespace A001600.P9461745151979843454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈Real.logb 2 (A174633 (n + 1) : ℝ)⌉.toNat

end

end A001600.P9461745151979843454

/-! ## A001600.P9198006302881093023

`A025480(floor(log2(A174633(n+1))))+1`
-/

namespace A001600.P9198006302881093023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Nat.log 2 (A174633 (n + 1)).toNat) + 1

end

end A001600.P9198006302881093023

/-! ## A001600.P14812768289886959698

`A038572(ceil(log2(A174633(n+1)))+1)`
-/

namespace A001600.P14812768289886959698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (⌈Real.logb 2 (A174633 (n + 1) : ℝ)⌉ + 1).toNat

end

end A001600.P14812768289886959698

/-!
# A001601: a(n) = 2*a(n-1)^2 - 1, if n>1. a(0)=1, a(1)=3.

The programs for A001601, the canonical program `A001601.P3469366796103363845` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001601 has offset 0).

The definition of A001601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-1` (program `A001601.P3469366796103363845`, by `A001601.P3469366796103363845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001601.P3469366796103363845

`2*a(n-1)²-1` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001601

/-- `2*a(n-1)²-1` -/
def P3469366796103363845.Spec : Prop :=
  ∀ n, P3469366796103363845.a n = A001601 n

theorem P3469366796103363845.correct : P3469366796103363845.Spec := by
  intro n
  simp only [A001601]

end A001601

/-! ## A001601.P13223818824346657783

`lcm(2, a(n-1)²)-1` with `a(0)=1, a(1)=3`
-/

namespace A001601.P13223818824346657783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 2 (a (n - 1) ^ 2) : ℤ) - 1

end

end A001601.P13223818824346657783

namespace A001601

/-- `lcm(2, a(n-1)²)-1` -/
def P13223818824346657783.Spec : Prop :=
  ∀ n, P13223818824346657783.a n = A001601 n

end A001601

/-! ## A001601.P8055646364216625395

`2*a(n-1)^(4/2)-1` with `a(0)=1, a(1)=3`
-/

namespace A001601.P8055646364216625395
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A001601.P8055646364216625395

namespace A001601

/-- `2*a(n-1)^(4/2)-1` -/
def P8055646364216625395.Spec : Prop :=
  ∀ n, P8055646364216625395.a n = (A001601 n : ℝ)

end A001601

/-! ## A001601.P11195855412086068322

`2*a(n-1)*a(n-1)-1` with `a(0)=1, a(1)=3`
-/

namespace A001601.P11195855412086068322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) * a (n - 1)) - 1

end

end A001601.P11195855412086068322

namespace A001601

/-- `2*a(n-1)*a(n-1)-1` -/
def P11195855412086068322.Spec : Prop :=
  ∀ n, P11195855412086068322.a n = A001601 n

theorem P11195855412086068322.correct : P11195855412086068322.Spec := by
  intro n
  simp only [A001601, Nat.add_sub_cancel, A001601.P11195855412086068322.a, A001601.P3469366796103363845.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001601

/-! ## A001601.P5555616176605498603

`1/2*((1+sqrt(2))^2^n+(1-sqrt(2))^2^n)`
-/

namespace A001601.P5555616176605498603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((1 + Real.sqrt (2 : ℝ)) ^ 2 ^ n + (1 - Real.sqrt (2 : ℝ)) ^ 2 ^ n)

end

end A001601.P5555616176605498603

namespace A001601

/-- `1/2*((1+sqrt(2))^2^n+(1-sqrt(2))^2^n)` -/
def P5555616176605498603.Spec : Prop :=
  ∀ n, P5555616176605498603.a n = (A001601 n : ℝ)

end A001601

/-!
# A001602: Fibonacci entry points: a(n) = smallest m > 0 such that the n-th prime divides Fibonacci(m).

The programs for A001602, there is no canonical definition to state claims against.
-/

/-! ## A001602.P8969234987074723963

`A001177(A000040(n+1))`
-/

namespace A001602.P8969234987074723963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A000040 (n + 1)).toNat

end

end A001602.P8969234987074723963

/-! ## A001602.P9076690738841207460

`A060305(n+1)/A116515(n+1)`
-/

namespace A001602.P9076690738841207460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060305 (n + 1) : ℚ) / (A116515 (n + 1) : ℚ)

end

end A001602.P9076690738841207460

/-! ## A001602.P1155798815232918666

`A264008(n+1)/A000040(n+1)`
-/

namespace A001602.P1155798815232918666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264008 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A001602.P1155798815232918666

/-! ## A001602.P10295986716098819384

`gcd(A060305(n+1), A264008(n+1))`
-/

namespace A001602.P10295986716098819384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060305 (n + 1)) (A264008 (n + 1))

end

end A001602.P10295986716098819384

/-! ## A001602.P3631365156013252662

`A001177(p?[comp[n²]])`
-/

namespace A001602.P3631365156013252662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A001602.P3631365156013252662

/-! ## A001602.P548331268727114793

`A001177(record[p?[∏{p}[n+1, #]]])`
-/

namespace A001602.P548331268727114793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A001602.P548331268727114793

/-! ## A001602.P4947450301507616920

`A001177(Δ[A007504(n)])`
-/

namespace A001602.P4947450301507616920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (n + 1) - f1 n).toNat

end

end A001602.P4947450301507616920

/-! ## A001602.P6942508026614432328

`A001177(A008578(n+2))`
-/

namespace A001602.P6942508026614432328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A008578 (n + 2)).toNat

end

end A001602.P6942508026614432328

/-! ## A001602.P5824737723101932891

`A001177(A182986(n+2))`
-/

namespace A001602.P5824737723101932891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A182986 (n + 2)).toNat

end

end A001602.P5824737723101932891

/-! ## A001602.P14770485005928293134

`A001177(sqrt(A001248(n+1)))`
-/

namespace A001602.P14770485005928293134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A001602.P14770485005928293134

/-! ## A001602.P12128026888693286578

`A001177(record[A006530(n+2)])`
-/

namespace A001602.P12128026888693286578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001602.P12128026888693286578

/-! ## A001602.P17365193270123787548

`A001177(record[A014963(n+2)])`
-/

namespace A001602.P17365193270123787548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001602.P17365193270123787548

/-! ## A001602.P16007348047435759370

`A001177(record[A020639(n+2)])`
-/

namespace A001602.P16007348047435759370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001602.P16007348047435759370

/-! ## A001602.P5617827462587581454

`A001177(lt[A007918(n)-n, 1])`
-/

namespace A001602.P5617827462587581454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A001602.P5617827462587581454

/-! ## A001602.P12802255655692698692

`A001177(A007504(n+1)-A007504(n))`
-/

namespace A001602.P12802255655692698692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A007504 (n + 1) - A007504 n).toNat

end

end A001602.P12802255655692698692

/-! ## A001602.P6054584709396728624

`A001177(A137751(n+1)+A137750(n+1))`
-/

namespace A001602.P6054584709396728624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A137751 (n + 1) + A137750 (n + 1)).toNat

end

end A001602.P6054584709396728624

/-! ## A001602.P15223889293167952888

`(A000040(n+1)-A080891(A000040(n+1)))/A116514(n+1)`
-/

namespace A001602.P15223889293167952888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A080891 (A000040 (n + 1)).toNat : ℚ) / (A116514 (n + 1) : ℚ)

end

end A001602.P15223889293167952888

/-! ## A001602.P13649016108462964089

`A001177(A142150(2*n+1)+p?[A142150(n)])`
-/

namespace A001602.P13649016108462964089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A142150 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A001602.P13649016108462964089

/-!
# A001603: Odd-indexed terms of A124296.

The programs for A001603, the canonical program `A001603.P12609787873162022140` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001603 has offset 0).

The definition of A001603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001603.P10075406957645125160

`A124296(Δ[n²])`
-/

namespace A001603.P10075406957645125160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001603.P10075406957645125160

namespace A001603

/-- `A124296(Δ[n²])` -/
def P10075406957645125160.Spec : Prop :=
  ∀ n, P10075406957645125160.a n = A001603 n

end A001603

/-! ## A001603.P14889891987356383477

`A330050(2*n)+1`
-/

namespace A001603.P14889891987356383477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330050 (2 * n) + 1

end

end A001603.P14889891987356383477

namespace A001603

/-- `A330050(2*n)+1` -/
def P14889891987356383477.Spec : Prop :=
  ∀ n, P14889891987356383477.a n = A001603 n

end A001603

/-! ## A001603.P12609787873162022140

`10*C(Δ[A001906(n)], 2)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001603

/-- `10*C(Δ[A001906(n)], 2)+1` -/
def P12609787873162022140.Spec : Prop :=
  ∀ n, (P12609787873162022140.a n : ℤ) = A001603 n

theorem P12609787873162022140.correct : P12609787873162022140.Spec := by
  intro n
  simp only [A001603]

end A001603

/-! ## A001603.P1519143461466433059

`10*C(A000045(Δ[n²]), 2)+1`
-/

namespace A001603.P1519143461466433059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat 2 + 1

end

end A001603.P1519143461466433059

namespace A001603

/-- `10*C(A000045(Δ[n²]), 2)+1` -/
def P1519143461466433059.Spec : Prop :=
  ∀ n, (P1519143461466433059.a n : ℤ) = A001603 n

end A001603

/-! ## A001603.P9179375267247261067

`record[A124296(A004442(n))]`
-/

namespace A001603.P9179375267247261067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001603.P9179375267247261067

namespace A001603

/-- `record[A124296(A004442(n))]` -/
def P9179375267247261067.Spec : Prop :=
  ∀ n, P9179375267247261067.a n = A001603 n

end A001603

/-! ## A001603.P11998330524513598966

`record[A124296(A237420(n)+1)]`
-/

namespace A001603.P11998330524513598966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001603.P11998330524513598966

namespace A001603

/-- `record[A124296(A237420(n)+1)]` -/
def P11998330524513598966.Spec : Prop :=
  ∀ n, P11998330524513598966.a n = A001603 n

end A001603

/-! ## A001603.P12652966793067700042

`record[A124296(n-A237420(n))]`
-/

namespace A001603.P12652966793067700042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 ((n : ℤ) - A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001603.P12652966793067700042

namespace A001603

/-- `record[A124296(n-A237420(n))]` -/
def P12652966793067700042.Spec : Prop :=
  ∀ n, P12652966793067700042.a n = A001603 n

end A001603

/-! ## A001603.P18165560841597036614

`record[gcd(A124296(n), A237420(n))]`
-/

namespace A001603.P18165560841597036614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124296 n) (A237420 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001603.P18165560841597036614

namespace A001603

/-- `record[gcd(A124296(n), A237420(n))]` -/
def P18165560841597036614.Spec : Prop :=
  ∀ n, (P18165560841597036614.a n : ℤ) = A001603 n

end A001603

/-! ## A001603.P6771132838253358102

`A027941(n)*A106729(n)+1`
-/

namespace A001603.P6771132838253358102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n * A106729 n + 1

end

end A001603.P6771132838253358102

namespace A001603

/-- `A027941(n)*A106729(n)+1` -/
def P6771132838253358102.Spec : Prop :=
  ∀ n, P6771132838253358102.a n = A001603 n

end A001603

/-! ## A001603.P18134618469457537885

`A203976(n+1)*A329421(2*n)+1`
-/

namespace A001603.P18134618469457537885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1) * A329421 (2 * n) + 1

end

end A001603.P18134618469457537885

namespace A001603

/-- `A203976(n+1)*A329421(2*n)+1` -/
def P18134618469457537885.Spec : Prop :=
  ∀ n, P18134618469457537885.a n = A001603 n

end A001603

/-! ## A001603.P13918736970193445948

`A005592(n+1)*A014217(2*n)-1`
-/

namespace A001603.P13918736970193445948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (n + 1) * A014217 (2 * n) - 1

end

end A001603.P13918736970193445948

namespace A001603

/-- `A005592(n+1)*A014217(2*n)-1` -/
def P13918736970193445948.Spec : Prop :=
  ∀ n, P13918736970193445948.a n = A001603 n

end A001603

/-! ## A001603.P6116450158219095872

`A124297(2*n+1)-A022093(2*n+1)`
-/

namespace A001603.P6116450158219095872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (2 * n + 1) - A022093 (2 * n + 1)

end

end A001603.P6116450158219095872

namespace A001603

/-- `A124297(2*n+1)-A022093(2*n+1)` -/
def P6116450158219095872.Spec : Prop :=
  ∀ n, P6116450158219095872.a n = A001603 n

end A001603

/-! ## A001603.P9246564099626641072

`A001610(2*n+1)*A014217(2*n)-1`
-/

namespace A001603.P9246564099626641072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) * A014217 (2 * n) - 1

end

end A001603.P9246564099626641072

namespace A001603

/-- `A001610(2*n+1)*A014217(2*n)-1` -/
def P9246564099626641072.Spec : Prop :=
  ∀ n, P9246564099626641072.a n = A001603 n

end A001603

/-! ## A001603.P13806780323887607376

`A001610(2*n+1)*A098600(2*n)-1`
-/

namespace A001603.P13806780323887607376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) * A098600 (2 * n) - 1

end

end A001603.P13806780323887607376

namespace A001603

/-- `A001610(2*n+1)*A098600(2*n)-1` -/
def P13806780323887607376.Spec : Prop :=
  ∀ n, P13806780323887607376.a n = A001603 n

end A001603

/-! ## A001603.P1829140582997351103

`A203976(2*n+1)²-∑[A203976(2*n)]`
-/

namespace A001603.P1829140582997351103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (2 * n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001603.P1829140582997351103

namespace A001603

/-- `A203976(2*n+1)²-∑[A203976(2*n)]` -/
def P1829140582997351103.Spec : Prop :=
  ∀ n, P1829140582997351103.a n = A001603 n

end A001603

/-! ## A001603.P12296899198302277686

`A000071(2*n+1)*A022088(2*n+1)+1`
-/

namespace A001603.P12296899198302277686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * n + 1) * A022088 (2 * n + 1) + 1

end

end A001603.P12296899198302277686

namespace A001603

/-- `A000071(2*n+1)*A022088(2*n+1)+1` -/
def P12296899198302277686.Spec : Prop :=
  ∀ n, P12296899198302277686.a n = A001603 n

end A001603

/-! ## A001603.P15839454695284657297

`gcd(A000038(n), A124296(A004277(n)+1))`
-/

namespace A001603.P15839454695284657297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124296 (A004277 n + 1).toNat)

end

end A001603.P15839454695284657297

namespace A001603

/-- `gcd(A000038(n), A124296(A004277(n)+1))` -/
def P15839454695284657297.Spec : Prop :=
  ∀ n, (P15839454695284657297.a n : ℤ) = A001603 n

end A001603

/-! ## A001603.P12947420636766731162

`A002878(n)+A004146(n)*A005248(n+1)`
-/

namespace A001603.P12947420636766731162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + A004146 n * A005248 (n + 1)

end

end A001603.P12947420636766731162

namespace A001603

/-- `A002878(n)+A004146(n)*A005248(n+1)` -/
def P12947420636766731162.Spec : Prop :=
  ∀ n, P12947420636766731162.a n = A001603 n

end A001603

/-! ## A001603.P13484524346432684390

`A004146(n)+A004146(n+1)*A005592(n)`
-/

namespace A001603.P13484524346432684390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 n + A004146 (n + 1) * A005592 n

end

end A001603.P13484524346432684390

namespace A001603

/-- `A004146(n)+A004146(n+1)*A005592(n)` -/
def P13484524346432684390.Spec : Prop :=
  ∀ n, P13484524346432684390.a n = A001603 n

end A001603

/-! ## A001603.P17675484219938087489

`A005248(n+1)*A005592(n)-A005248(n)`
-/

namespace A001603.P17675484219938087489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) * A005592 n - A005248 n

end

end A001603.P17675484219938087489

namespace A001603

/-- `A005248(n+1)*A005592(n)-A005248(n)` -/
def P17675484219938087489.Spec : Prop :=
  ∀ n, P17675484219938087489.a n = A001603 n

end A001603

/-!
# A001604: Odd-indexed terms of A124297.

The programs for A001604, the canonical program `A001604.P6158530839936261861` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001604 has offset 0).

The definition of A001604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001604.P12865535718000710306

`A124297(Δ[n²])`
-/

namespace A001604.P12865535718000710306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001604.P12865535718000710306

namespace A001604

/-- `A124297(Δ[n²])` -/
def P12865535718000710306.Spec : Prop :=
  ∀ n, P12865535718000710306.a n = A001604 n

end A001604

/-! ## A001604.P10130824183961936507

`record[A124297(A004442(n))]`
-/

namespace A001604.P10130824183961936507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001604.P10130824183961936507

namespace A001604

/-- `record[A124297(A004442(n))]` -/
def P10130824183961936507.Spec : Prop :=
  ∀ n, P10130824183961936507.a n = A001604 n

end A001604

/-! ## A001604.P14659086868240413235

`record[A124297(A014681(n)+1)]`
-/

namespace A001604.P14659086868240413235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001604.P14659086868240413235

namespace A001604

/-- `record[A124297(A014681(n)+1)]` -/
def P14659086868240413235.Spec : Prop :=
  ∀ n, P14659086868240413235.a n = A001604 n

end A001604

/-! ## A001604.P6471071188981624977

`record[A124297(A237420(n)+1)]`
-/

namespace A001604.P6471071188981624977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001604.P6471071188981624977

namespace A001604

/-- `record[A124297(A237420(n)+1)]` -/
def P6471071188981624977.Spec : Prop :=
  ∀ n, P6471071188981624977.a n = A001604 n

end A001604

/-! ## A001604.P6158530839936261861

`A002878(n)²+A246639(n)+2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001604

/-- `A002878(n)²+A246639(n)+2` -/
def P6158530839936261861.Spec : Prop :=
  ∀ n, P6158530839936261861.a n = A001604 n

theorem P6158530839936261861.correct : P6158530839936261861.Spec := by
  intro n
  simp only [A001604]

end A001604

/-! ## A001604.P1107396225605936577

`record[A124297(A022998(n+1)-n)]`
-/

namespace A001604.P1107396225605936577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001604.P1107396225605936577

namespace A001604

/-- `record[A124297(A022998(n+1)-n)]` -/
def P1107396225605936577.Spec : Prop :=
  ∀ n, P1107396225605936577.a n = A001604 n

end A001604

/-! ## A001604.P17514363824225114410

`A032908(n+1)*A106729(n)+1`
-/

namespace A001604.P17514363824225114410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (n + 1) * A106729 n + 1

end

end A001604.P17514363824225114410

namespace A001604

/-- `A032908(n+1)*A106729(n)+1` -/
def P17514363824225114410.Spec : Prop :=
  ∀ n, P17514363824225114410.a n = A001604 n

end A001604

/-! ## A001604.P11566411537609469711

`A246639(n)+A005248(2*n+1)`
-/

namespace A001604.P11566411537609469711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246639 n + A005248 (2 * n + 1)

end

end A001604.P11566411537609469711

namespace A001604

/-- `A246639(n)+A005248(2*n+1)` -/
def P11566411537609469711.Spec : Prop :=
  ∀ n, P11566411537609469711.a n = A001604 n

end A001604

/-! ## A001604.P16746528388107381794

`A124296(2*n+1)+A022093(2*n+1)`
-/

namespace A001604.P16746528388107381794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 (2 * n + 1) + A022093 (2 * n + 1)

end

end A001604.P16746528388107381794

namespace A001604

/-- `A124296(2*n+1)+A022093(2*n+1)` -/
def P16746528388107381794.Spec : Prop :=
  ∀ n, P16746528388107381794.a n = A001604 n

end A001604

/-! ## A001604.P14489920171390496460

`A059727(2*n+1)+A001588(2*n+1)²`
-/

namespace A001604.P14489920171390496460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059727 (2 * n + 1) + A001588 (2 * n + 1) ^ 2

end

end A001604.P14489920171390496460

namespace A001604

/-- `A059727(2*n+1)+A001588(2*n+1)²` -/
def P14489920171390496460.Spec : Prop :=
  ∀ n, P14489920171390496460.a n = A001604 n

end A001604

/-! ## A001604.P12804146721058234371

`A001611(2*n+1)*A022088(2*n+1)+1`
-/

namespace A001604.P12804146721058234371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n + 1) * A022088 (2 * n + 1) + 1

end

end A001604.P12804146721058234371

namespace A001604

/-- `A001611(2*n+1)*A022088(2*n+1)+1` -/
def P12804146721058234371.Spec : Prop :=
  ∀ n, P12804146721058234371.a n = A001604 n

end A001604

/-! ## A001604.P14305589674631481362

`A246639(n)*A246640(n)-A246638(n)`
-/

namespace A001604.P14305589674631481362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246639 n * A246640 n - A246638 n

end

end A001604.P14305589674631481362

namespace A001604

/-- `A246639(n)*A246640(n)-A246638(n)` -/
def P14305589674631481362.Spec : Prop :=
  ∀ n, P14305589674631481362.a n = A001604 n

end A001604

/-! ## A001604.P8655308563715411365

`A005248(n+1)+A081067(n)+A065034(n)`
-/

namespace A001604.P8655308563715411365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (n + 1) + (A081067 n + A065034 n)

end

end A001604.P8655308563715411365

namespace A001604

/-- `A005248(n+1)+A081067(n)+A065034(n)` -/
def P8655308563715411365.Spec : Prop :=
  ∀ n, P8655308563715411365.a n = A001604 n

end A001604

/-! ## A001604.P57372988659134915

`A005248(n)+A005248(n+1)*A065034(n)`
-/

namespace A001604.P57372988659134915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + A005248 (n + 1) * A065034 n

end

end A001604.P57372988659134915

namespace A001604

/-- `A005248(n)+A005248(n+1)*A065034(n)` -/
def P57372988659134915.Spec : Prop :=
  ∀ n, P57372988659134915.a n = A001604 n

end A001604

/-! ## A001604.P1489135555491203497

`A002878(n)+A005248(n)*A092387(n+1)`
-/

namespace A001604.P1489135555491203497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + A005248 n * A092387 (n + 1)

end

end A001604.P1489135555491203497

namespace A001604

/-- `A002878(n)+A005248(n)*A092387(n+1)` -/
def P1489135555491203497.Spec : Prop :=
  ∀ n, P1489135555491203497.a n = A001604 n

end A001604

/-! ## A001604.P1683781554392140320

`A106729(n)+A005248(n+1)*A005248(n)`
-/

namespace A001604.P1683781554392140320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106729 n + A005248 (n + 1) * A005248 n

end

end A001604.P1683781554392140320

namespace A001604

/-- `A106729(n)+A005248(n+1)*A005248(n)` -/
def P1683781554392140320.Spec : Prop :=
  ∀ n, P1683781554392140320.a n = A001604 n

end A001604

/-! ## A001604.P11161684831653688089

`A065034(n)*A092387(n+1)-A092387(n)`
-/

namespace A001604.P11161684831653688089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065034 n * A092387 (n + 1) - A092387 n

end

end A001604.P11161684831653688089

namespace A001604

/-- `A065034(n)*A092387(n+1)-A092387(n)` -/
def P11161684831653688089.Spec : Prop :=
  ∀ n, P11161684831653688089.a n = A001604 n

end A001604

/-! ## A001604.P11609687766282613520

`A122678(n+1)+A001519(n)*A106729(n+1)`
-/

namespace A001604.P11609687766282613520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122678 (n + 1) + A001519 n * A106729 (n + 1)

end

end A001604.P11609687766282613520

namespace A001604

/-- `A122678(n+1)+A001519(n)*A106729(n+1)` -/
def P11609687766282613520.Spec : Prop :=
  ∀ n, P11609687766282613520.a n = A001604 n

end A001604

/-! ## A001604.P3914005927599437789

`A000204(2*(n+1))*A000211(2*n)-A000204(2*n+1)`
-/

namespace A001604.P3914005927599437789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (2 * (n + 1)) * A000211 (2 * n) - A000204 (2 * n + 1)

end

end A001604.P3914005927599437789

namespace A001604

/-- `A000204(2*(n+1))*A000211(2*n)-A000204(2*n+1)` -/
def P3914005927599437789.Spec : Prop :=
  ∀ n, P3914005927599437789.a n = A001604 n

end A001604

/-!
# A001605: Indices of prime Fibonacci numbers.

The programs for A001605, there is no canonical definition to state claims against.
-/

/-! ## A001605.P5032811726837082802

`A069744(n+1)+1`
-/

namespace A001605.P5032811726837082802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

end

end A001605.P5032811726837082802

/-! ## A001605.P5037347082663858496

`A083668(round(sqrt(n²+1)))+char[1]`
-/

namespace A001605.P5037347082663858496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001605.P5037347082663858496

/-! ## A001605.P16149488494330097416

`∪[A083668(n+1), Δ[A172115(n+1)]]`
-/

namespace A001605.P16149488494330097416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001605.P16149488494330097416

/-! ## A001605.P13028885318735905225

`∪[A083668(n+1), A083668(n+2)-A000007(n)]`
-/

namespace A001605.P13028885318735905225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 2) - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001605.P13028885318735905225

/-! ## A001605.P14165574372927570153

`∪[A083668(n+1), A216552(n+1)]`
-/

namespace A001605.P14165574372927570153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001605.P14165574372927570153

/-!
# A001606: Indices of prime Lucas numbers.

The programs for A001606, there is no canonical definition to state claims against.
-/

/-! ## A001606.P17763591087184219895

`∪[A168033(n+1), A216576(n+1)]`
-/

namespace A001606.P17763591087184219895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001606.P17763591087184219895

/-! ## A001606.P977867555565880784

`∪[A216562(n+1), A216576(n+1)]`
-/

namespace A001606.P977867555565880784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001606.P977867555565880784

/-! ## A001606.P13910509875770202362

`∪[A216554(n+1), A216555(n+1)]`
-/

namespace A001606.P13910509875770202362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001606.P13910509875770202362

/-! ## A001606.P7286886243517124508

`∪[A216554(n+1), A216572(n+1)]`
-/

namespace A001606.P7286886243517124508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001606.P7286886243517124508

/-! ## A001606.P17379397292043702833

`∪[A216562(n+1), A216572(n+1)]`
-/

namespace A001606.P17379397292043702833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001606.P17379397292043702833

/-! ## A001606.P7803758375258084343

`∪[A216575(n+1), A216576(n+1)]`
-/

namespace A001606.P7803758375258084343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001606.P7803758375258084343

/-!
# A001607: a(n) = -a(n-1) - 2*a(n-2).

The programs for A001607, the canonical program `A001607.P10841151072452066061` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001607 has offset 0).

The definition of A001607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-2*a(n-2)` (program `A001607.P10841151072452066061`, by `A001607.P10841151072452066061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001607.P10841151072452066061

`-a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001607

/-- `-a(n-1)-2*a(n-2)` -/
def P10841151072452066061.Spec : Prop :=
  ∀ n, P10841151072452066061.a n = A001607 n

theorem P10841151072452066061.correct : P10841151072452066061.Spec := by
  intro n
  simp only [A001607]

end A001607

/-! ## A001607.P2852284151293369070

`ogf(x/(1+x+2x^2))`
-/

namespace A001607.P2852284151293369070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, 2] n

end

end A001607.P2852284151293369070

namespace A001607

/-- `ogf(x/(1+x+2x^2))` -/
def P2852284151293369070.Spec : Prop :=
  ∀ n, P2852284151293369070.a n = A001607 n

end A001607

/-! ## A001607.P5547053924685961161

`2*a(n-3)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A001607.P5547053924685961161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  2 * a (n - 3) - a (n - 2)

end

end A001607.P5547053924685961161

namespace A001607

/-- `2*a(n-3)-a(n-2)` -/
def P5547053924685961161.Spec : Prop :=
  ∀ n, P5547053924685961161.a n = A001607 n

end A001607

/-! ## A001607.P9581927352766556778

`a(n-2)/(1/2-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A001607.P9581927352766556778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2 - 1) - a (n - 1)

end

end A001607.P9581927352766556778

namespace A001607

/-- `a(n-2)/(1/2-1)-a(n-1)` -/
def P9581927352766556778.Spec : Prop :=
  ∀ n, P9581927352766556778.a n = (A001607 n : ℚ)

end A001607

/-! ## A001607.P9612610152701253543

`-(a(n-2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A001607.P9612610152701253543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -(a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A001607.P9612610152701253543

namespace A001607

/-- `-(a(n-2)+a(n-1)+a(n-2))` -/
def P9612610152701253543.Spec : Prop :=
  ∀ n, P9612610152701253543.a n = A001607 n

end A001607

/-! ## A001607.P1446387975303705204

`a(n-3)+a(n-3)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A001607.P1446387975303705204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 2))

end

end A001607.P1446387975303705204

namespace A001607

/-- `a(n-3)+a(n-3)-a(n-2)` -/
def P1446387975303705204.Spec : Prop :=
  ∀ n, P1446387975303705204.a n = A001607 n

end A001607

/-! ## A001607.P2981555393395045706

`floor(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=0, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A001607.P2981555393395045706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 3))

end

end A001607.P2981555393395045706

namespace A001607

/-- `floor(a(n-3)-(a(n-2)-a(n-3)))` -/
def P2981555393395045706.Spec : Prop :=
  ∀ n, P2981555393395045706.a n = A001607 n

end A001607

/-! ## A001607.P15521857944621743921

`∑[a(n-3)-(a(n-2)-a(n-3))]` with `a(0)=0, a(1)=1, a(2)=-2, a(3)=0`
-/

namespace A001607.P15521857944621743921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -2, 0] fun n f1 =>
  f1 (n - 3) - (f1 (n - 2) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001607.P15521857944621743921

namespace A001607

/-- `∑[a(n-3)-(a(n-2)-a(n-3))]` -/
def P15521857944621743921.Spec : Prop :=
  ∀ n, P15521857944621743921.a n = A001607 n

end A001607

/-! ## A001607.P8213789754295330953

`A110512(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A001607.P8213789754295330953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A110512 (n - 1) - a (n - 1)

end

end A001607.P8213789754295330953

namespace A001607

/-- `A110512(n-1)-a(n-1)` -/
def P8213789754295330953.Spec : Prop :=
  ∀ n, P8213789754295330953.a n = A001607 n

end A001607

/-! ## A001607.P2008027935766279034

`(1-4/2)/2*A110512(n+1)`
-/

namespace A001607.P2008027935766279034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) / 2 * (A110512 (n + 1) : ℚ)

end

end A001607.P2008027935766279034

namespace A001607

/-- `(1-4/2)/2*A110512(n+1)` -/
def P2008027935766279034.Spec : Prop :=
  ∀ n, P2008027935766279034.a n = (A001607 n : ℚ)

end A001607

/-! ## A001607.P17741607634916794781

`A062157(n)*A107920(n)`
-/

namespace A001607.P17741607634916794781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A107920 n

end

end A001607.P17741607634916794781

namespace A001607

/-- `A062157(n)*A107920(n)` -/
def P17741607634916794781.Spec : Prop :=
  ∀ n, P17741607634916794781.a n = A001607 n

end A001607

/-! ## A001607.P12960012329617797045

`A107920(n)*A165326(n)`
-/

namespace A001607.P12960012329617797045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n * A165326 n

end

end A001607.P12960012329617797045

namespace A001607

/-- `A107920(n)*A165326(n)` -/
def P12960012329617797045.Spec : Prop :=
  ∀ n, P12960012329617797045.a n = A001607 n

end A001607

/-! ## A001607.P8194731375300758711

`A033999(n+1)*A107920(n)`
-/

namespace A001607.P8194731375300758711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A107920 n

end

end A001607.P8194731375300758711

namespace A001607

/-- `A033999(n+1)*A107920(n)` -/
def P8194731375300758711.Spec : Prop :=
  ∀ n, P8194731375300758711.a n = A001607 n

end A001607

/-! ## A001607.P9953081758015446497

`A107920(n)/A062157(n+2)`
-/

namespace A001607.P9953081758015446497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A001607.P9953081758015446497

namespace A001607

/-- `A107920(n)/A062157(n+2)` -/
def P9953081758015446497.Spec : Prop :=
  ∀ n, P9953081758015446497.a n = (A001607 n : ℚ)

end A001607

/-! ## A001607.P701038984556514941

`A000007(n+1)-A110512(n+1)/2`
-/

namespace A001607.P701038984556514941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) - (A110512 (n + 1) : ℚ) / 2

end

end A001607.P701038984556514941

namespace A001607

/-- `A000007(n+1)-A110512(n+1)/2` -/
def P701038984556514941.Spec : Prop :=
  ∀ n, P701038984556514941.a n = (A001607 n : ℚ)

end A001607

/-! ## A001607.P9769076354490935281

`A107920(n)/A033999(A033999(n)+n)`
-/

namespace A001607.P9769076354490935281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 n : ℚ) / (A033999 (A033999 n + (n : ℤ)).toNat : ℚ)

end

end A001607.P9769076354490935281

namespace A001607

/-- `A107920(n)/A033999(A033999(n)+n)` -/
def P9769076354490935281.Spec : Prop :=
  ∀ n, P9769076354490935281.a n = (A001607 n : ℚ)

end A001607

/-! ## A001607.P15818111167811557289

`A078050(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A001607.P15818111167811557289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078050 (n - 1) + a (n - 1)

end

end A001607.P15818111167811557289

namespace A001607

/-- `A078050(n-1)+a(n-1)` -/
def P15818111167811557289.Spec : Prop :=
  ∀ n, P15818111167811557289.a n = A001607 n

end A001607

/-! ## A001607.P2636638612505878772

`A169998(n)-A110512(n)`
-/

namespace A001607.P2636638612505878772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169998 n - A110512 n

end

end A001607.P2636638612505878772

namespace A001607

/-- `A169998(n)-A110512(n)` -/
def P2636638612505878772.Spec : Prop :=
  ∀ n, P2636638612505878772.a n = A001607 n

end A001607

/-! ## A001607.P12116037129277231811

`A078069(n+1)/A090131(n+1)*A107920(n)`
-/

namespace A001607.P12116037129277231811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078069 (n + 1) : ℚ) / (A090131 (n + 1) : ℚ) * (A107920 n : ℚ)

end

end A001607.P12116037129277231811

namespace A001607

/-- `A078069(n+1)/A090131(n+1)*A107920(n)` -/
def P12116037129277231811.Spec : Prop :=
  ∀ n, P12116037129277231811.a n = (A001607 n : ℚ)

end A001607

/-! ## A001607.P12996355977003532645

`∑[A078050(n)]-A078050(n)`
-/

namespace A001607.P12996355977003532645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078050 n

end

end A001607.P12996355977003532645

namespace A001607

/-- `∑[A078050(n)]-A078050(n)` -/
def P12996355977003532645.Spec : Prop :=
  ∀ n, P12996355977003532645.a n = A001607 n

end A001607

/-!
# A001608: Perrin sequence (or Perrin numbers, or Ondrej Such sequence): a(n) = a(n-2) + a(n-3) with a(0) = 3, a(1) = 0, a(2) = 2.

The programs for A001608, the canonical program `A001608.P2790496269249641655` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001608 has offset 0).

The definition of A001608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A001608.P2790496269249641655`, by `A001608.P2790496269249641655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001608.P2790496269249641655

`a(n-2)+a(n-3)` with `a(0)=3, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001608

/-- `a(n-2)+a(n-3)` -/
def P2790496269249641655.Spec : Prop :=
  ∀ n, (P2790496269249641655.a n : ℤ) = A001608 n

theorem P2790496269249641655.correct : P2790496269249641655.Spec := by
  intro n
  simp only [A001608]

end A001608

/-! ## A001608.P14604026166047178540

`2*A000931(n+3)+A000931(n)`
-/

namespace A001608.P14604026166047178540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000931 (n + 3) + A000931 n

end

end A001608.P14604026166047178540

namespace A001608

/-- `2*A000931(n+3)+A000931(n)` -/
def P14604026166047178540.Spec : Prop :=
  ∀ n, P14604026166047178540.a n = A001608 n

end A001608

/-! ## A001608.P9719453454348722029

`ogf((-3+x^2)/(-1+x^2+x^3))`
-/

namespace A001608.P9719453454348722029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, 0, -1, -1] n

end

end A001608.P9719453454348722029

namespace A001608

/-- `ogf((-3+x^2)/(-1+x^2+x^3))` -/
def P9719453454348722029.Spec : Prop :=
  ∀ n, P9719453454348722029.a n = A001608 n

end A001608

/-! ## A001608.P5869662568955502615

`a(n-2)-floor(-a(n-3))` with `a(0)=3, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A001608.P5869662568955502615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A001608.P5869662568955502615

namespace A001608

/-- `a(n-2)-floor(-a(n-3))` -/
def P5869662568955502615.Spec : Prop :=
  ∀ n, P5869662568955502615.a n = A001608 n

end A001608

/-! ## A001608.P193484186084856174

`a(n-2)-ceil(-a(n-3))` with `a(0)=3, a(1)=0, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A001608.P193484186084856174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A001608.P193484186084856174

namespace A001608

/-- `a(n-2)-ceil(-a(n-3))` -/
def P193484186084856174.Spec : Prop :=
  ∀ n, P193484186084856174.a n = A001608 n

end A001608

/-! ## A001608.P9943794549816032001

`a(n-2)-round(-a(n-3))` with `a(0)=3, a(1)=0, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A001608.P9943794549816032001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A001608.P9943794549816032001

namespace A001608

/-- `a(n-2)-round(-a(n-3))` -/
def P9943794549816032001.Spec : Prop :=
  ∀ n, P9943794549816032001.a n = A001608 n

end A001608

/-! ## A001608.P14768026104598359768

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=3, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A001608.P14768026104598359768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A001608.P14768026104598359768

namespace A001608

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P14768026104598359768.Spec : Prop :=
  ∀ n, P14768026104598359768.a n = A001608 n

end A001608

/-! ## A001608.P13381530452128273022

`A141038(n)+A078027(n)`
-/

namespace A001608.P13381530452128273022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n + A078027 n

end

end A001608.P13381530452128273022

namespace A001608

/-- `A141038(n)+A078027(n)` -/
def P13381530452128273022.Spec : Prop :=
  ∀ n, P13381530452128273022.a n = A001608 n

end A001608

/-! ## A001608.P13864454212418274552

`A001945(n)-A078712(n)`
-/

namespace A001608.P13864454212418274552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n - A078712 n

end

end A001608.P13864454212418274552

namespace A001608

/-- `A001945(n)-A078712(n)` -/
def P13864454212418274552.Spec : Prop :=
  ∀ n, P13864454212418274552.a n = A001608 n

theorem P13864454212418274552.correct : P13864454212418274552.Spec := by
  intro n
  simp only [A001608, Nat.add_sub_cancel, A001608.P13864454212418274552.a, A001608.P2790496269249641655.a, A001945, A001945.P17638672492670160984.a, A078712, A078712.P12805588641227863902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001608

/-! ## A001608.P16830773384912019498

`A141038(n)+A133034(n+2)`
-/

namespace A001608.P16830773384912019498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 n + A133034 (n + 2)

end

end A001608.P16830773384912019498

namespace A001608

/-- `A141038(n)+A133034(n+2)` -/
def P16830773384912019498.Spec : Prop :=
  ∀ n, P16830773384912019498.a n = A001608 n

end A001608

/-! ## A001608.P7217005260007193564

`A000931(n)+2*A182097(n)`
-/

namespace A001608.P7217005260007193564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + 2 * A182097 n

end

end A001608.P7217005260007193564

namespace A001608

/-- `A000931(n)+2*A182097(n)` -/
def P7217005260007193564.Spec : Prop :=
  ∀ n, P7217005260007193564.a n = A001608 n

end A001608

/-! ## A001608.P51202891578735165

`A127682(2*(n+1))+Δ[A078027(n+1)]`
-/

namespace A001608.P51202891578735165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A001608.P51202891578735165

namespace A001608

/-- `A127682(2*(n+1))+Δ[A078027(n+1)]` -/
def P51202891578735165.Spec : Prop :=
  ∀ n, P51202891578735165.a n = A001608 n

end A001608

/-! ## A001608.P3562409307469087123

`A134816(n+1)+A078027(n)+A000931(n)`
-/

namespace A001608.P3562409307469087123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A078027 n + A000931 n)

end

end A001608.P3562409307469087123

namespace A001608

/-- `A134816(n+1)+A078027(n)+A000931(n)` -/
def P3562409307469087123.Spec : Prop :=
  ∀ n, P3562409307469087123.a n = A001608 n

end A001608

/-! ## A001608.P4684577438635707875

`A291289(n+1)+A291289(n)+A000931(n)`
-/

namespace A001608.P4684577438635707875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (n + 1) + (A291289 n + A000931 n)

end

end A001608.P4684577438635707875

namespace A001608

/-- `A291289(n+1)+A291289(n)+A000931(n)` -/
def P4684577438635707875.Spec : Prop :=
  ∀ n, P4684577438635707875.a n = A001608 n

end A001608

/-! ## A001608.P16746201980028385171

`A134816(n+2)+A078027(n)-A133034(n)`
-/

namespace A001608.P16746201980028385171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) + (A078027 n - A133034 n)

end

end A001608.P16746201980028385171

namespace A001608

/-- `A134816(n+2)+A078027(n)-A133034(n)` -/
def P16746201980028385171.Spec : Prop :=
  ∀ n, P16746201980028385171.a n = A001608 n

end A001608

/-! ## A001608.P14556593116925652916

`A134816(n+1)+A182097(n)-Δ[A182097(n)]`
-/

namespace A001608.P14556593116925652916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A182097 n - (f1 (n + 1) - f1 n))

end

end A001608.P14556593116925652916

namespace A001608

/-- `A134816(n+1)+A182097(n)-Δ[A182097(n)]` -/
def P14556593116925652916.Spec : Prop :=
  ∀ n, P14556593116925652916.a n = A001608 n

end A001608

/-! ## A001608.P8684240706475949220

`A000931(n+1)+A276276(n+1)+A078027(n)`
-/

namespace A001608.P8684240706475949220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A276276 (n + 1) + A078027 n)

end

end A001608.P8684240706475949220

namespace A001608

/-- `A000931(n+1)+A276276(n+1)+A078027(n)` -/
def P8684240706475949220.Spec : Prop :=
  ∀ n, P8684240706475949220.a n = A001608 n

end A001608

/-! ## A001608.P2424124558449595897

`A007307(n+1)+A078027(n)-A078027(n+1)`
-/

namespace A001608.P2424124558449595897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) + (A078027 n - A078027 (n + 1))

end

end A001608.P2424124558449595897

namespace A001608

/-- `A007307(n+1)+A078027(n)-A078027(n+1)` -/
def P2424124558449595897.Spec : Prop :=
  ∀ n, P2424124558449595897.a n = A001608 n

end A001608

/-! ## A001608.P707385855216537882

`A134816(n+1)+A182097(n)-A078027(n+1)`
-/

namespace A001608.P707385855216537882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A182097 n - A078027 (n + 1))

end

end A001608.P707385855216537882

namespace A001608

/-- `A134816(n+1)+A182097(n)-A078027(n+1)` -/
def P707385855216537882.Spec : Prop :=
  ∀ n, P707385855216537882.a n = A001608 n

end A001608

/-! ## A001608.P5285547121327638905

`A276275(n+2)+A276477(n)-A084338(n+1)`
-/

namespace A001608.P5285547121327638905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276275 (n + 2) + (A276477 n - A084338 (n + 1))

end

end A001608.P5285547121327638905

namespace A001608

/-- `A276275(n+2)+A276477(n)-A084338(n+1)` -/
def P5285547121327638905.Spec : Prop :=
  ∀ n, P5285547121327638905.a n = A001608 n

end A001608

/-!
# A001609: a(1) = a(2) = 1, a(3) = 4; thereafter a(n) = a(n-1) + a(n-3).

The programs for A001609, the canonical program `A001609.P15239928806059094505` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001609 has offset 1).

The definition of A001609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A001609.P15239928806059094505`, by `A001609.P15239928806059094505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001609.P15239928806059094505

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001609

/-- `a(n-1)+a(n-3)` -/
def P15239928806059094505.Spec : Prop :=
  ∀ n, (P15239928806059094505.a n : ℤ) = A001609 (n + 1)

theorem P15239928806059094505.correct : P15239928806059094505.Spec := by
  intro n
  simp only [A001609, Nat.add_sub_cancel]

end A001609

/-! ## A001609.P9682523101884029778

`ogf((1+3x^2)/(1-x-x^3))`
-/

namespace A001609.P9682523101884029778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -1, 0, -1] n

end

end A001609.P9682523101884029778

namespace A001609

/-- `ogf((1+3x^2)/(1-x-x^3))` -/
def P9682523101884029778.Spec : Prop :=
  ∀ n, P9682523101884029778.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P4435402120621166464

`a(n-1)-floor(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A001609.P4435402120621166464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A001609.P4435402120621166464

namespace A001609

/-- `a(n-1)-floor(-a(n-3))` -/
def P4435402120621166464.Spec : Prop :=
  ∀ n, P4435402120621166464.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P5565798330406174558

`a(n-1)-ceil(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A001609.P5565798330406174558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A001609.P5565798330406174558

namespace A001609

/-- `a(n-1)-ceil(-a(n-3))` -/
def P5565798330406174558.Spec : Prop :=
  ∀ n, P5565798330406174558.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P9327547037942292492

`a(n-1)-round(-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`

`round` is left out, it is the identity on integers.
-/

namespace A001609.P9327547037942292492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A001609.P9327547037942292492

namespace A001609

/-- `a(n-1)-round(-a(n-3))` -/
def P9327547037942292492.Spec : Prop :=
  ∀ n, P9327547037942292492.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P7059605874527808661

`A033999(n)+A001634(n)`
-/

namespace A001609.P7059605874527808661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A001634 n

end

end A001609.P7059605874527808661

namespace A001609

/-- `A033999(n)+A001634(n)` -/
def P7059605874527808661.Spec : Prop :=
  ∀ n, P7059605874527808661.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P8943748678824941403

`A179070(n+2)+A078012(n+1)`
-/

namespace A001609.P8943748678824941403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2) + A078012 (n + 1)

end

end A001609.P8943748678824941403

namespace A001609

/-- `A179070(n+2)+A078012(n+1)` -/
def P8943748678824941403.Spec : Prop :=
  ∀ n, P8943748678824941403.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P14889354626482135616

`A000930(n+1)+2*A078012(n+1)`
-/

namespace A001609.P14889354626482135616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) + 2 * A078012 (n + 1)

end

end A001609.P14889354626482135616

namespace A001609

/-- `A000930(n+1)+2*A078012(n+1)` -/
def P14889354626482135616.Spec : Prop :=
  ∀ n, P14889354626482135616.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P10589998060452745439

`A137726(n+1)-A103517(A002265(2*n))`
-/

namespace A001609.P10589998060452745439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 1) - A103517 (A002265 (2 * n)).toNat

end

end A001609.P10589998060452745439

namespace A001609

/-- `A137726(n+1)-A103517(A002265(2*n))` -/
def P10589998060452745439.Spec : Prop :=
  ∀ n, P10589998060452745439.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P10027648488768104212

`A078012(n+1)+A078012(n+1)+A068921(n)`
-/

namespace A001609.P10027648488768104212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + (A078012 (n + 1) + A068921 n)

end

end A001609.P10027648488768104212

namespace A001609

/-- `A078012(n+1)+A078012(n+1)+A068921(n)` -/
def P10027648488768104212.Spec : Prop :=
  ∀ n, P10027648488768104212.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P9180506107120564439

`A000930(n+1)+A000930(n+1)-A058278(n)`
-/

namespace A001609.P9180506107120564439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) + (A000930 (n + 1) - A058278 n)

end

end A001609.P9180506107120564439

namespace A001609

/-- `A000930(n+1)+A000930(n+1)-A058278(n)` -/
def P9180506107120564439.Spec : Prop :=
  ∀ n, P9180506107120564439.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P1648035764343989997

`A078012(n+1)+A097333(n+1)-A058278(n)`
-/

namespace A001609.P1648035764343989997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + (A097333 (n + 1) - A058278 n)

end

end A001609.P1648035764343989997

namespace A001609

/-- `A078012(n+1)+A097333(n+1)-A058278(n)` -/
def P1648035764343989997.Spec : Prop :=
  ∀ n, P1648035764343989997.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P15578780695692607993

`A097333(n+1)+A135851(n)-A135851(n+1)`
-/

namespace A001609.P15578780695692607993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) + (A135851 n - A135851 (n + 1))

end

end A001609.P15578780695692607993

namespace A001609

/-- `A097333(n+1)+A135851(n)-A135851(n+1)` -/
def P15578780695692607993.Spec : Prop :=
  ∀ n, P15578780695692607993.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P3882818247351048329

`A000930(n+1)+A179070(n+2)-A000930(n)`
-/

namespace A001609.P3882818247351048329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) + (A179070 (n + 2) - A000930 n)

end

end A001609.P3882818247351048329

namespace A001609

/-- `A000930(n+1)+A179070(n+2)-A000930(n)` -/
def P3882818247351048329.Spec : Prop :=
  ∀ n, P3882818247351048329.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P15105663138916059194

`2*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A001609.P15105663138916059194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A001609.P15105663138916059194

namespace A001609

/-- `2*a(n-1)-(a(n-1)-a(n-3))` -/
def P15105663138916059194.Spec : Prop :=
  ∀ n, P15105663138916059194.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P1034981460339029822

`A011761(n)-A078012(n+1)`
-/

namespace A001609.P1034981460339029822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011761 n - A078012 (n + 1)

end

end A001609.P1034981460339029822

namespace A001609

/-- `A011761(n)-A078012(n+1)` -/
def P1034981460339029822.Spec : Prop :=
  ∀ n, P1034981460339029822.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P7084512162830981281

`2*A179070(n+2)-A000930(n+1)`
-/

namespace A001609.P7084512162830981281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179070 (n + 2) - A000930 (n + 1)

end

end A001609.P7084512162830981281

namespace A001609

/-- `2*A179070(n+2)-A000930(n+1)` -/
def P7084512162830981281.Spec : Prop :=
  ∀ n, P7084512162830981281.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P17338691139097446930

`A000930(n)+A011761(n)-A068921(n)`
-/

namespace A001609.P17338691139097446930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + (A011761 n - A068921 n)

end

end A001609.P17338691139097446930

namespace A001609

/-- `A000930(n)+A011761(n)-A068921(n)` -/
def P17338691139097446930.Spec : Prop :=
  ∀ n, P17338691139097446930.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P5046150786437740481

`A000930(n)+A011761(n)-A000930(n+1)`
-/

namespace A001609.P5046150786437740481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + (A011761 n - A000930 (n + 1))

end

end A001609.P5046150786437740481

namespace A001609

/-- `A000930(n)+A011761(n)-A000930(n+1)` -/
def P5046150786437740481.Spec : Prop :=
  ∀ n, P5046150786437740481.a n = A001609 (n + 1)

end A001609

/-! ## A001609.P1147140026669467919

`Δ[A323951(n+3)]+1`
-/

namespace A001609.P1147140026669467919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323951 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A001609.P1147140026669467919

namespace A001609

/-- `Δ[A323951(n+3)]+1` -/
def P1147140026669467919.Spec : Prop :=
  ∀ n, P1147140026669467919.a n = A001609 (n + 1)

end A001609

/-!
# A001610: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 2.

The programs for A001610, the canonical program `A001610.P768124038299274592` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001610 has offset 0).

The definition of A001610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A001610.P768124038299274592`, by `A001610.P768124038299274592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001610.P768124038299274592

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001610

/-- `a(n-1)+a(n-2)+1` -/
def P768124038299274592.Spec : Prop :=
  ∀ n, (P768124038299274592.a n : ℤ) = A001610 n

theorem P768124038299274592.correct : P768124038299274592.Spec := by
  intro n
  simp only [A001610]

end A001610

/-! ## A001610.P9677684177611114076

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A001610.P9677684177611114076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A001610.P9677684177611114076

namespace A001610

/-- `2*a(n-1)-a(n-3)` -/
def P9677684177611114076.Spec : Prop :=
  ∀ n, P9677684177611114076.a n = A001610 n

end A001610

/-! ## A001610.P11000085147554647332

`A000032(n+1)-1`
-/

namespace A001610.P11000085147554647332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - 1

end

end A001610.P11000085147554647332

namespace A001610

/-- `A000032(n+1)-1` -/
def P11000085147554647332.Spec : Prop :=
  ∀ n, P11000085147554647332.a n = A001610 n

end A001610

/-! ## A001610.P17919195394852819737

`A000204(n+1)-1`
-/

namespace A001610.P17919195394852819737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 1

end

end A001610.P17919195394852819737

namespace A001610

/-- `A000204(n+1)-1` -/
def P17919195394852819737.Spec : Prop :=
  ∀ n, P17919195394852819737.a n = A001610 n

end A001610

/-! ## A001610.P17931724691875346278

`A000071(n+2)+A000045(n)`
-/

namespace A001610.P17931724691875346278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + A000045 n

end

end A001610.P17931724691875346278

namespace A001610

/-- `A000071(n+2)+A000045(n)` -/
def P17931724691875346278.Spec : Prop :=
  ∀ n, P17931724691875346278.a n = A001610 n

end A001610

/-! ## A001610.P9084770705368079435

`A014217(n+1)-A000035(n+1)`
-/

namespace A001610.P9084770705368079435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) - A000035 (n + 1)

end

end A001610.P9084770705368079435

namespace A001610

/-- `A014217(n+1)-A000035(n+1)` -/
def P9084770705368079435.Spec : Prop :=
  ∀ n, P9084770705368079435.a n = A001610 n

end A001610

/-! ## A001610.P4314935282204880031

`A000045(n)+A000045(n+2)-1`
-/

namespace A001610.P4314935282204880031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000045 (n + 2) - 1

end

end A001610.P4314935282204880031

namespace A001610

/-- `A000045(n)+A000045(n+2)-1` -/
def P4314935282204880031.Spec : Prop :=
  ∀ n, P4314935282204880031.a n = A001610 n

end A001610

/-! ## A001610.P116033447313362606

`ogf((2x-x^2)/(1-2x+x^3))`
-/

namespace A001610.P116033447313362606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -2, 0, 1] n

end

end A001610.P116033447313362606

namespace A001610

/-- `ogf((2x-x^2)/(1-2x+x^3))` -/
def P116033447313362606.Spec : Prop :=
  ∀ n, P116033447313362606.a n = A001610 n

end A001610

/-! ## A001610.P162363125459398914

`round(a(n-2)+ϕ^n)` with `a(0)=0, a(1)=2`
-/

namespace A001610.P162363125459398914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) + Real.goldenRatio ^ n)

end

end A001610.P162363125459398914

namespace A001610

/-- `round(a(n-2)+ϕ^n)` -/
def P162363125459398914.Spec : Prop :=
  ∀ n, P162363125459398914.a n = A001610 n

end A001610

/-! ## A001610.P13213352888507898671

`floor(ϕ^(n+1)-acot(n+1))`
-/

namespace A001610.P13213352888507898671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 1) - SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A001610.P13213352888507898671

namespace A001610

/-- `floor(ϕ^(n+1)-acot(n+1))` -/
def P13213352888507898671.Spec : Prop :=
  ∀ n, P13213352888507898671.a n = A001610 n

end A001610

/-! ## A001610.P2437163843703359109

`floor(ϕ^(n+1)-1/(n+1))`
-/

namespace A001610.P2437163843703359109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 1) - (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A001610.P2437163843703359109

namespace A001610

/-- `floor(ϕ^(n+1)-1/(n+1))` -/
def P2437163843703359109.Spec : Prop :=
  ∀ n, P2437163843703359109.a n = A001610 n

end A001610

/-! ## A001610.P17432592931711182366

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A001610.P17432592931711182366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A001610.P17432592931711182366

namespace A001610

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P17432592931711182366.Spec : Prop :=
  ∀ n, P17432592931711182366.a n = A001610 n

end A001610

/-! ## A001610.P14657078601694613427

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=0, a(1)=3`
-/

namespace A001610.P14657078601694613427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A001610.P14657078601694613427

namespace A001610

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P14657078601694613427.Spec : Prop :=
  ∀ n, P14657078601694613427.a n = A001610 n

end A001610

/-! ## A001610.P8788187428824776277

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A001610.P8788187428824776277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A001610.P8788187428824776277

namespace A001610

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P8788187428824776277.Spec : Prop :=
  ∀ n, P8788187428824776277.a n = (A001610 n : ℚ)

end A001610

/-! ## A001610.P4590952574714588727

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A001610.P4590952574714588727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A001610.P4590952574714588727

namespace A001610

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P4590952574714588727.Spec : Prop :=
  ∀ n, P4590952574714588727.a n = A001610 n

end A001610

/-! ## A001610.P8911857921879611801

`A339572(Δ[n²])`
-/

namespace A001610.P8911857921879611801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001610.P8911857921879611801

namespace A001610

/-- `A339572(Δ[n²])` -/
def P8911857921879611801.Spec : Prop :=
  ∀ n, P8911857921879611801.a n = A001610 n

end A001610

/-! ## A001610.P2819446607662225205

`abs(A075193(n))-1`
-/

namespace A001610.P2819446607662225205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n| - 1

end

end A001610.P2819446607662225205

namespace A001610

/-- `abs(A075193(n))-1` -/
def P2819446607662225205.Spec : Prop :=
  ∀ n, P2819446607662225205.a n = A001610 n

end A001610

/-! ## A001610.P3623435245519190168

`A001612(n+1)-2`
-/

namespace A001610.P3623435245519190168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (n + 1) - 2

end

end A001610.P3623435245519190168

namespace A001610

/-- `A001612(n+1)-2` -/
def P3623435245519190168.Spec : Prop :=
  ∀ n, P3623435245519190168.a n = A001610 n

end A001610

/-! ## A001610.P11365794055595433606

`A000211(n+1)-3`
-/

namespace A001610.P11365794055595433606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1) - 3

end

end A001610.P11365794055595433606

namespace A001610

/-- `A000211(n+1)-3` -/
def P11365794055595433606.Spec : Prop :=
  ∀ n, P11365794055595433606.a n = A001610 n

end A001610

/-! ## A001610.P11430967675218069577

`A329723(n+3)-1`
-/

namespace A001610.P11430967675218069577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3) - 1

end

end A001610.P11430967675218069577

namespace A001610

/-- `A329723(n+3)-1` -/
def P11430967675218069577.Spec : Prop :=
  ∀ n, P11430967675218069577.a n = A001610 n

end A001610

/-!
# A001611: a(n) = Fibonacci(n) + 1.

The programs for A001611, the canonical program `A001611.P16593652898942925329` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001611 has offset 0).

The definition of A001611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)+1` (program `A001611.P16593652898942925329`, by `A001611.P16593652898942925329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001611.P2764665205649475385

`a(n-2)+a(n-1)-1` with `a(0)=1, a(1)=2`
-/

namespace A001611.P2764665205649475385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) - 1

end

end A001611.P2764665205649475385

namespace A001611

/-- `a(n-2)+a(n-1)-1` -/
def P2764665205649475385.Spec : Prop :=
  ∀ n, P2764665205649475385.a n = A001611 n

end A001611

/-! ## A001611.P16593652898942925329

`A000045(n)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001611

/-- `A000045(n)+1` -/
def P16593652898942925329.Spec : Prop :=
  ∀ n, P16593652898942925329.a n = A001611 n

theorem P16593652898942925329.correct : P16593652898942925329.Spec := by
  intro n
  simp only [A001611]

end A001611

/-! ## A001611.P15279871386984129728

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001611.P15279871386984129728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A001611.P15279871386984129728

namespace A001611

/-- `2*a(n-1)-a(n-3)` -/
def P15279871386984129728.Spec : Prop :=
  ∀ n, P15279871386984129728.a n = A001611 n

end A001611

/-! ## A001611.P9985750806564672344

`ogf((1-2x^2)/(1-2x+x^3))`
-/

namespace A001611.P9985750806564672344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2, 0, 1] n

end

end A001611.P9985750806564672344

namespace A001611

/-- `ogf((1-2x^2)/(1-2x+x^3))` -/
def P9985750806564672344.Spec : Prop :=
  ∀ n, P9985750806564672344.a n = A001611 n

end A001611

/-! ## A001611.P14615955549553068353

`floor(ϕ*a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001611.P14615955549553068353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A001611.P14615955549553068353

namespace A001611

/-- `floor(ϕ*a(n-1))` -/
def P14615955549553068353.Spec : Prop :=
  ∀ n, P14615955549553068353.a n = A001611 n

end A001611

/-! ## A001611.P14995789365673209601

`floor(a(n-1)/(ϕ-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A001611.P14995789365673209601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A001611.P14995789365673209601

namespace A001611

/-- `floor(a(n-1)/(ϕ-1))` -/
def P14995789365673209601.Spec : Prop :=
  ∀ n, P14995789365673209601.a n = A001611 n

end A001611

/-! ## A001611.P15401986317367034895

`a(n-1)-(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A001611.P15401986317367034895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A001611.P15401986317367034895

namespace A001611

/-- `a(n-1)-(1-a(n-2))` -/
def P15401986317367034895.Spec : Prop :=
  ∀ n, P15401986317367034895.a n = A001611 n

end A001611

/-! ## A001611.P15391787753217963444

`A157725(n)-1`
-/

namespace A001611.P15391787753217963444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 1

end

end A001611.P15391787753217963444

namespace A001611

/-- `A157725(n)-1` -/
def P15391787753217963444.Spec : Prop :=
  ∀ n, P15391787753217963444.a n = A001611 n

theorem P15391787753217963444.correct : P15391787753217963444.Spec := by
  intro n
  simp only [A001611, Nat.add_sub_cancel, A001611.P15391787753217963444.a, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001611

/-! ## A001611.P15073070944640630809

`A157726(n)-2`
-/

namespace A001611.P15073070944640630809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 2

end

end A001611.P15073070944640630809

namespace A001611

/-- `A157726(n)-2` -/
def P15073070944640630809.Spec : Prop :=
  ∀ n, P15073070944640630809.a n = A001611 n

theorem P15073070944640630809.correct : P15073070944640630809.Spec := by
  intro n
  simp only [A001611, Nat.add_sub_cancel, A001611.P15073070944640630809.a, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001611

/-! ## A001611.P17568024617129482193

`A157727(n)-3`
-/

namespace A001611.P17568024617129482193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 3

end

end A001611.P17568024617129482193

namespace A001611

/-- `A157727(n)-3` -/
def P17568024617129482193.Spec : Prop :=
  ∀ n, P17568024617129482193.a n = A001611 n

theorem P17568024617129482193.correct : P17568024617129482193.Spec := by
  intro n
  simp only [A001611, Nat.add_sub_cancel, A001611.P17568024617129482193.a, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, A157727, A157727.P751779701380853510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001611

/-! ## A001611.P1244115491182753696

`A157729(n)-4`
-/

namespace A001611.P1244115491182753696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 4

end

end A001611.P1244115491182753696

namespace A001611

/-- `A157729(n)-4` -/
def P1244115491182753696.Spec : Prop :=
  ∀ n, P1244115491182753696.a n = A001611 n

theorem P1244115491182753696.correct : P1244115491182753696.Spec := by
  intro n
  simp only [A001611, Nat.add_sub_cancel, A001611.P1244115491182753696.a, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, A157729, A157729.P2013707109334832467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001611

/-! ## A001611.P3429370144869840856

`∑[abs(A152163(n))]`
-/

namespace A001611.P3429370144869840856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152163 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001611.P3429370144869840856

namespace A001611

/-- `∑[abs(A152163(n))]` -/
def P3429370144869840856.Spec : Prop :=
  ∀ n, P3429370144869840856.a n = A001611 n

end A001611

/-! ## A001611.P15193505492539871068

`abs(A236191(n))+1`
-/

namespace A001611.P15193505492539871068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 n| + 1

end

end A001611.P15193505492539871068

namespace A001611

/-- `abs(A236191(n))+1` -/
def P15193505492539871068.Spec : Prop :=
  ∀ n, P15193505492539871068.a n = A001611 n

end A001611

/-! ## A001611.P6193616832144829798

`∑[abs(Δ[A212804(n)])]`
-/

namespace A001611.P6193616832144829798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001611.P6193616832144829798

namespace A001611

/-- `∑[abs(Δ[A212804(n)])]` -/
def P6193616832144829798.Spec : Prop :=
  ∀ n, P6193616832144829798.a n = A001611 n

end A001611

/-! ## A001611.P376869418065376469

`A212804(n+1)+1`
-/

namespace A001611.P376869418065376469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + 1

end

end A001611.P376869418065376469

namespace A001611

/-- `A212804(n+1)+1` -/
def P376869418065376469.Spec : Prop :=
  ∀ n, P376869418065376469.a n = A001611 n

end A001611

/-! ## A001611.P7144742668516933197

`1-A152163(n+2)`
-/

namespace A001611.P7144742668516933197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152163 (n + 2)

end

end A001611.P7144742668516933197

namespace A001611

/-- `1-A152163(n+2)` -/
def P7144742668516933197.Spec : Prop :=
  ∀ n, P7144742668516933197.a n = A001611 n

end A001611

/-! ## A001611.P15132964923805310882

`A103609(2*n)+1`
-/

namespace A001611.P15132964923805310882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + 1

end

end A001611.P15132964923805310882

namespace A001611

/-- `A103609(2*n)+1` -/
def P15132964923805310882.Spec : Prop :=
  ∀ n, P15132964923805310882.a n = A001611 n

end A001611

/-! ## A001611.P8306958469223596221

`A065220(n)+1+n`
-/

namespace A001611.P8306958469223596221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + 1 + (n : ℤ)

end

end A001611.P8306958469223596221

namespace A001611

/-- `A065220(n)+1+n` -/
def P8306958469223596221.Spec : Prop :=
  ∀ n, P8306958469223596221.a n = A001611 n

theorem P8306958469223596221.correct : P8306958469223596221.Spec := by
  intro n
  simp only [A001611, Nat.add_sub_cancel, A001611.P8306958469223596221.a, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001611

/-! ## A001611.P5786943044500309167

`A002062(n)+1-n`
-/

namespace A001611.P5786943044500309167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (1 - (n : ℤ))

end

end A001611.P5786943044500309167

namespace A001611

/-- `A002062(n)+1-n` -/
def P5786943044500309167.Spec : Prop :=
  ∀ n, P5786943044500309167.a n = A001611 n

theorem P5786943044500309167.correct : P5786943044500309167.Spec := by
  intro n
  simp only [A001611, Nat.add_sub_cancel, A001611.P5786943044500309167.a, A001611.P16593652898942925329.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001611

/-!
# A001612: a(n) = a(n-1) + a(n-2) - 1 for n > 1, a(0)=3, a(1)=2.

The programs for A001612, the canonical program `A001612.P7920110830441227794` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001612 has offset 0).

The definition of A001612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-1` (program `A001612.P7920110830441227794`, by `A001612.P7920110830441227794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001612.P7920110830441227794

`a(n-1)+a(n-2)-1` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001612

/-- `a(n-1)+a(n-2)-1` -/
def P7920110830441227794.Spec : Prop :=
  ∀ n, P7920110830441227794.a n = A001612 n

theorem P7920110830441227794.correct : P7920110830441227794.Spec := by
  intro n
  simp only [A001612]

end A001612

/-! ## A001612.P3624843881384554431

`A000032(n)+1`
-/

namespace A001612.P3624843881384554431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 1

end

end A001612.P3624843881384554431

namespace A001612

/-- `A000032(n)+1` -/
def P3624843881384554431.Spec : Prop :=
  ∀ n, P3624843881384554431.a n = A001612 n

end A001612

/-! ## A001612.P11810351330692256929

`ogf((3-4x)/(1-2x+x^3))`
-/

namespace A001612.P11810351330692256929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -2, 0, 1] n

end

end A001612.P11810351330692256929

namespace A001612

/-- `ogf((3-4x)/(1-2x+x^3))` -/
def P11810351330692256929.Spec : Prop :=
  ∀ n, P11810351330692256929.a n = A001612 n

end A001612

/-! ## A001612.P7656208157444207906

`floor(ϕ*a(n-1))` with `a(0)=3, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A001612.P7656208157444207906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 4, 5] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A001612.P7656208157444207906

namespace A001612

/-- `floor(ϕ*a(n-1))` -/
def P7656208157444207906.Spec : Prop :=
  ∀ n, P7656208157444207906.a n = A001612 n

end A001612

/-! ## A001612.P16628074922610042848

`∑[a(n-1)+a(n-2)]` with `a(0)=3, a(1)=-1`
-/

namespace A001612.P16628074922610042848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001612.P16628074922610042848

namespace A001612

/-- `∑[a(n-1)+a(n-2)]` -/
def P16628074922610042848.Spec : Prop :=
  ∀ n, P16628074922610042848.a n = A001612 n

end A001612

/-! ## A001612.P1548679300617973256

`a(n-1)-(1-a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A001612.P1548679300617973256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) - (1 - a (n - 2))

end

end A001612.P1548679300617973256

namespace A001612

/-- `a(n-1)-(1-a(n-2))` -/
def P1548679300617973256.Spec : Prop :=
  ∀ n, P1548679300617973256.a n = A001612 n

theorem P1548679300617973256.correct : P1548679300617973256.Spec := by
  intro n
  simp only [A001612, Nat.add_sub_cancel, A001612.P1548679300617973256.a, A001612.P7920110830441227794.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001612

/-! ## A001612.P9431408775455859414

`A000211(n)-1`
-/

namespace A001612.P9431408775455859414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 1

end

end A001612.P9431408775455859414

namespace A001612

/-- `A000211(n)-1` -/
def P9431408775455859414.Spec : Prop :=
  ∀ n, P9431408775455859414.a n = A001612 n

end A001612

/-! ## A001612.P777571790072569301

`A329723(n+2)+1`
-/

namespace A001612.P777571790072569301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) + 1

end

end A001612.P777571790072569301

namespace A001612

/-- `A329723(n+2)+1` -/
def P777571790072569301.Spec : Prop :=
  ∀ n, P777571790072569301.a n = A001612 n

end A001612

/-! ## A001612.P8036970161566732730

`A127218(2*n)+1`
-/

namespace A001612.P8036970161566732730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + 1

end

end A001612.P8036970161566732730

namespace A001612

/-- `A127218(2*n)+1` -/
def P8036970161566732730.Spec : Prop :=
  ∀ n, P8036970161566732730.a n = A001612 n

end A001612

/-! ## A001612.P7145244520093837508

`A303427(2*n)+1`
-/

namespace A001612.P7145244520093837508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) + 1

end

end A001612.P7145244520093837508

namespace A001612

/-- `A303427(2*n)+1` -/
def P7145244520093837508.Spec : Prop :=
  ∀ n, P7145244520093837508.a n = A001612 n

end A001612

/-! ## A001612.P15539875770606863389

`A014217(n)+gcd(2, n)`
-/

namespace A001612.P15539875770606863389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + (Nat.gcd 2 n : ℤ)

end

end A001612.P15539875770606863389

namespace A001612

/-- `A014217(n)+gcd(2, n)` -/
def P15539875770606863389.Spec : Prop :=
  ∀ n, P15539875770606863389.a n = A001612 n

end A001612

/-! ## A001612.P3590804113015594515

`A302126(Δ[n²])+1`
-/

namespace A001612.P3590804113015594515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A001612.P3590804113015594515

namespace A001612

/-- `A302126(Δ[n²])+1` -/
def P3590804113015594515.Spec : Prop :=
  ∀ n, P3590804113015594515.a n = A001612 n

end A001612

/-! ## A001612.P2656034956634488920

`abs(A061084(n+1))+1`
-/

namespace A001612.P2656034956634488920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (n + 1)| + 1

end

end A001612.P2656034956634488920

namespace A001612

/-- `abs(A061084(n+1))+1` -/
def P2656034956634488920.Spec : Prop :=
  ∀ n, P2656034956634488920.a n = A001612 n

end A001612

/-! ## A001612.P4237139094408311490

`A033817(n+1)-4*(n+1)`
-/

namespace A001612.P4237139094408311490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033817 (n + 1) - (4 * (n + 1) : ℤ)

end

end A001612.P4237139094408311490

namespace A001612

/-- `A033817(n+1)-4*(n+1)` -/
def P4237139094408311490.Spec : Prop :=
  ∀ n, P4237139094408311490.a n = A001612 n

end A001612

/-! ## A001612.P13103891819438796988

`-xor(-1, A000032(2*n-n))`
-/

namespace A001612.P13103891819438796988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A000032 (2 * n - n))

end

end A001612.P13103891819438796988

namespace A001612

/-- `-xor(-1, A000032(2*n-n))` -/
def P13103891819438796988.Spec : Prop :=
  ∀ n, P13103891819438796988.a n = A001612 n

end A001612

/-! ## A001612.P16194568495232975554

`∑[A000032(n-1)-a(n-1)]` with `a(0)=3`
-/

namespace A001612.P16194568495232975554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A000032 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001612.P16194568495232975554

namespace A001612

/-- `∑[A000032(n-1)-a(n-1)]` -/
def P16194568495232975554.Spec : Prop :=
  ∀ n, P16194568495232975554.a n = A001612 n

end A001612

/-! ## A001612.P3977828996402587403

`A033999(n)+A020878(n)`
-/

namespace A001612.P3977828996402587403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A020878 n

end

end A001612.P3977828996402587403

namespace A001612

/-- `A033999(n)+A020878(n)` -/
def P3977828996402587403.Spec : Prop :=
  ∀ n, P3977828996402587403.a n = A001612 n

end A001612

/-! ## A001612.P11089036208502435827

`A099925(n)+A010673(n)`
-/

namespace A001612.P11089036208502435827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 n + A010673 n

end

end A001612.P11089036208502435827

namespace A001612

/-- `A099925(n)+A010673(n)` -/
def P11089036208502435827.Spec : Prop :=
  ∀ n, P11089036208502435827.a n = A001612 n

end A001612

/-! ## A001612.P10584563854914055961

`A118658(n)+A001611(n)`
-/

namespace A001612.P10584563854914055961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A001611 n

end

end A001612.P10584563854914055961

namespace A001612

/-- `A118658(n)+A001611(n)` -/
def P10584563854914055961.Spec : Prop :=
  ∀ n, P10584563854914055961.a n = A001612 n

end A001612

/-! ## A001612.P15558273959480739858

`A062724(n)+A059841(n)`
-/

namespace A001612.P15558273959480739858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n + A059841 n

end

end A001612.P15558273959480739858

namespace A001612

/-- `A062724(n)+A059841(n)` -/
def P15558273959480739858.Spec : Prop :=
  ∀ n, P15558273959480739858.a n = A001612 n

end A001612

/-!
# A001613: Delete all odd digits from n.

The programs for A001613, there is no canonical definition to state claims against.
-/

/-! ## A001613.P12166786260391962298

`A226005(A079097(A004176(n)²))`
-/

namespace A001613.P12166786260391962298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A079097 (A004176 n ^ 2).toNat).toNat

end

end A001613.P12166786260391962298

/-! ## A001613.P11843199023685756245

`A004176(n*A010060(A344918(n)))`
-/

namespace A001613.P11843199023685756245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 ((n : ℤ) * A010060 (A344918 n).toNat).toNat

end

end A001613.P11843199023685756245

/-! ## A001613.P4505616621145922482

`A010060(A344918(n))*A059707(n)`
-/

namespace A001613.P4505616621145922482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A344918 n).toNat * A059707 n

end

end A001613.P4505616621145922482

/-! ## A001613.P17726619252302272784

`A000038(A097331(n))*A106747(n)`
-/

namespace A001613.P17726619252302272784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A097331 n).toNat * A106747 n

end

end A001613.P17726619252302272784

/-! ## A001613.P14467878616039158610

`A000035(A272922(n))*A059707(n)`
-/

namespace A001613.P14467878616039158610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A272922 n).toNat * A059707 n

end

end A001613.P14467878616039158610

/-!
# A001614: Connell sequence: 1 odd, 2 even, 3 odd, ...

The programs for A001614, the canonical program `A001614.P13713740041851423204` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001614 has offset 1).

The definition of A001614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001614.P17690074464907584216

`row(n)²+2*(col(n)+1)-1`
-/

namespace A001614.P17690074464907584216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ 2 + 2 * (SequenceMachineLib.triCol n + 1) : ℤ) - 1

end

end A001614.P17690074464907584216

namespace A001614

/-- `row(n)²+2*(col(n)+1)-1` -/
def P17690074464907584216.Spec : Prop :=
  ∀ n, P17690074464907584216.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P13713740041851423204

`2*(n+1)-round(sqrt(2*(n+1)))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001614

/-- `2*(n+1)-round(sqrt(2*(n+1)))` -/
def P13713740041851423204.Spec : Prop :=
  ∀ n, P13713740041851423204.a n = A001614 (n + 1)

theorem P13713740041851423204.correct : P13713740041851423204.Spec := by
  intro n
  simp only [A001614, Nat.add_sub_cancel]

end A001614

/-! ## A001614.P9801684121762363784

`A118012(A118011(n+1))`
-/

namespace A001614.P9801684121762363784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118012 (A118011 (n + 1)).toNat

end

end A001614.P9801684121762363784

namespace A001614

/-- `A118012(A118011(n+1))` -/
def P9801684121762363784.Spec : Prop :=
  ∀ n, P9801684121762363784.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P5021261021923372134

`∑[acot(char[∑[n]])]/acot(1)`
-/

namespace A001614.P5021261021923372134
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / SequenceMachineLib.acot (1 : ℝ)

end

end A001614.P5021261021923372134

namespace A001614

/-- `∑[acot(char[∑[n]])]/acot(1)` -/
def P5021261021923372134.Spec : Prop :=
  ∀ n, P5021261021923372134.a n = (A001614 (n + 1) : ℝ)

end A001614

/-! ## A001614.P5072821676484421251

`-xor(comp[comp[∑[n]]+n], -1)`
-/

namespace A001614.P5072821676484421251
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)

end

end A001614.P5072821676484421251

namespace A001614

/-- `-xor(comp[comp[∑[n]]+n], -1)` -/
def P5072821676484421251.Spec : Prop :=
  ∀ n, P5072821676484421251.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P6405628126653035624

`comp[comp[∑[C(n+1, n)]]+n]`
-/

namespace A001614.P6405628126653035624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001614.P6405628126653035624

namespace A001614

/-- `comp[comp[∑[C(n+1, n)]]+n]` -/
def P6405628126653035624.Spec : Prop :=
  ∀ n, (P6405628126653035624.a n : ℤ) = A001614 (n + 1)

end A001614

/-! ## A001614.P9471379099492666571

`∪[(n+1)², comp[∑[n]]+n]`
-/

namespace A001614.P9471379099492666571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A001614.P9471379099492666571

namespace A001614

/-- `∪[(n+1)², comp[∑[n]]+n]` -/
def P9471379099492666571.Spec : Prop :=
  ∀ n, (P9471379099492666571.a n : ℤ) = A001614 (n + 1)

end A001614

/-! ## A001614.P4864510674053595427

`comp[comp[∑[n+1]]+n%(n+1)]`
-/

namespace A001614.P4864510674053595427
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n % (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001614.P4864510674053595427

namespace A001614

/-- `comp[comp[∑[n+1]]+n%(n+1)]` -/
def P4864510674053595427.Spec : Prop :=
  ∀ n, (P4864510674053595427.a n : ℤ) = A001614 (n + 1)

end A001614

/-! ## A001614.P17502331695130254778

`ceil(2*n+1-sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A001614.P17502331695130254778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(2 * n + 1 : ℝ) - Real.sqrt (a (n - 1) : ℝ)⌉

end

end A001614.P17502331695130254778

namespace A001614

/-- `ceil(2*n+1-sqrt(a(n-1)))` -/
def P17502331695130254778.Spec : Prop :=
  ∀ n, P17502331695130254778.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P7201347207535308939

`comp[comp[a(n-1)+n+1]+n]` with `a(0)=1`
-/

namespace A001614.P7201347207535308939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001614.P7201347207535308939

namespace A001614

/-- `comp[comp[a(n-1)+n+1]+n]` -/
def P7201347207535308939.Spec : Prop :=
  ∀ n, (P7201347207535308939.a n : ℤ) = A001614 (n + 1)

end A001614

/-! ## A001614.P15868701492244013868

`∑[A238303(n)]`
-/

namespace A001614.P15868701492244013868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P15868701492244013868

namespace A001614

/-- `∑[A238303(n)]` -/
def P15868701492244013868.Spec : Prop :=
  ∀ n, P15868701492244013868.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P14797886169731760718

`∑[2-A010054(n)]`
-/

namespace A001614.P14797886169731760718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P14797886169731760718

namespace A001614

/-- `∑[2-A010054(n)]` -/
def P14797886169731760718.Spec : Prop :=
  ∀ n, P14797886169731760718.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P15364387412348939290

`∑[3-A035214(n)]`
-/

namespace A001614.P15364387412348939290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P15364387412348939290

namespace A001614

/-- `∑[3-A035214(n)]` -/
def P15364387412348939290.Spec : Prop :=
  ∀ n, P15364387412348939290.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P11212693881675980196

`∑[2-A106459(n)²]`
-/

namespace A001614.P11212693881675980196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106459 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P11212693881675980196

namespace A001614

/-- `∑[2-A106459(n)²]` -/
def P11212693881675980196.Spec : Prop :=
  ∀ n, P11212693881675980196.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P10663409589533545463

`∑[2-A143433(n)²]`
-/

namespace A001614.P10663409589533545463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A143433 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P10663409589533545463

namespace A001614

/-- `∑[2-A143433(n)²]` -/
def P10663409589533545463.Spec : Prop :=
  ∀ n, P10663409589533545463.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P6417505780594056988

`∑[2-A143434(n)²]`
-/

namespace A001614.P6417505780594056988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A143434 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P6417505780594056988

namespace A001614

/-- `∑[2-A143434(n)²]` -/
def P6417505780594056988.Spec : Prop :=
  ∀ n, P6417505780594056988.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P11619994820201567543

`∑[2-A197870(n)²]`
-/

namespace A001614.P11619994820201567543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A197870 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001614.P11619994820201567543

namespace A001614

/-- `∑[2-A197870(n)²]` -/
def P11619994820201567543.Spec : Prop :=
  ∀ n, P11619994820201567543.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P11980023891313664691

`Δ[n²-A006463(n)]`
-/

namespace A001614.P11980023891313664691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001614.P11980023891313664691

namespace A001614

/-- `Δ[n²-A006463(n)]` -/
def P11980023891313664691.Spec : Prop :=
  ∀ n, P11980023891313664691.a n = A001614 (n + 1)

end A001614

/-! ## A001614.P12707595209363606348

`(A143803(n+1)+1)/2`
-/

namespace A001614.P12707595209363606348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143803 (n + 1) + 1 : ℚ) / 2

end

end A001614.P12707595209363606348

namespace A001614

/-- `(A143803(n+1)+1)/2` -/
def P12707595209363606348.Spec : Prop :=
  ∀ n, P12707595209363606348.a n = (A001614 (n + 1) : ℚ)

theorem P12707595209363606348.correct : P12707595209363606348.Spec := by
  intro n
  simp only [A001614, Nat.add_sub_cancel, A001614.P12707595209363606348.a, A001614.P13713740041851423204.a, A143803, A143803.P15197784940766103459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001614

/-! ## A001614.P11950897128050332416

`(A143804(n+1)+2)/3`
-/

namespace A001614.P11950897128050332416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143804 (n + 1) + 2 : ℚ) / 3

end

end A001614.P11950897128050332416

namespace A001614

/-- `(A143804(n+1)+2)/3` -/
def P11950897128050332416.Spec : Prop :=
  ∀ n, P11950897128050332416.a n = (A001614 (n + 1) : ℚ)

theorem P11950897128050332416.correct : P11950897128050332416.Spec := by
  intro n
  simp only [A001614, Nat.add_sub_cancel, A001614.P11950897128050332416.a, A001614.P13713740041851423204.a, A143804, A143804.P3155521920074128437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001614

/-!
# A001615: Dedekind psi function: n * Product_{p|n, p prime} (1 + 1/p).

The programs for A001615, the canonical program `A001615.P12078511981713404634` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001615 has offset 1).

The definition of A001615 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001615.anchor (n : ℕ) (hn : 1 ≤ n) : (A001615 n : ℚ) = n * ∏ p ∈ n.primeFactors, (1 + 1 / (p : ℚ))` in `Proof.A001.A001615`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001615.P14357468384660814875

`abs(A158523(n+1))`
-/

namespace A001615.P14357468384660814875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (n + 1)|

end

end A001615.P14357468384660814875

namespace A001615

/-- `abs(A158523(n+1))` -/
def P14357468384660814875.Spec : Prop :=
  ∀ n, P14357468384660814875.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P12124664077600514761

`A003557(n+1)*A048250(n+1)`
-/

namespace A001615.P12124664077600514761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1)

end

end A001615.P12124664077600514761

namespace A001615

/-- `A003557(n+1)*A048250(n+1)` -/
def P12124664077600514761.Spec : Prop :=
  ∀ n, P12124664077600514761.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P3019447894311803481

`A158523(n+1)*A008836(n+1)`
-/

namespace A001615.P3019447894311803481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158523 (n + 1) * A008836 (n + 1)

end

end A001615.P3019447894311803481

namespace A001615

/-- `A158523(n+1)*A008836(n+1)` -/
def P3019447894311803481.Spec : Prop :=
  ∀ n, P3019447894311803481.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P5709786167280114232

`A007434(n+1)/A000010(n+1)`
-/

namespace A001615.P5709786167280114232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A001615.P5709786167280114232

namespace A001615

/-- `A007434(n+1)/A000010(n+1)` -/
def P5709786167280114232.Spec : Prop :=
  ∀ n, P5709786167280114232.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P12078511981713404634

`(n+1)*A000203(A007947(n+1))/A007947(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001615

/-- `(n+1)*A000203(A007947(n+1))/A007947(n+1)` -/
def P12078511981713404634.Spec : Prop :=
  ∀ n, P12078511981713404634.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P16970850297473913136

`∑{d}[∏{p}[n+1, #], (n+1)/#]`
-/

namespace A001615.P16970850297473913136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)

end

end A001615.P16970850297473913136

namespace A001615

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]` -/
def P16970850297473913136.Spec : Prop :=
  ∀ n, P16970850297473913136.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P18034139665742016666

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]`
-/

namespace A001615.P18034139665742016666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ)

end

end A001615.P18034139665742016666

namespace A001615

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]` -/
def P18034139665742016666.Spec : Prop :=
  ∀ n, P18034139665742016666.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P1629823591216500775

`A160890(n+1)/7`
-/

namespace A001615.P1629823591216500775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160890 (n + 1) : ℚ) / 7

end

end A001615.P1629823591216500775

namespace A001615

/-- `A160890(n+1)/7` -/
def P1629823591216500775.Spec : Prop :=
  ∀ n, P1629823591216500775.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P2783535500733205823

`∑{d}[n+1, A063659(#)]`
-/

namespace A001615.P2783535500733205823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d

end

end A001615.P2783535500733205823

namespace A001615

/-- `∑{d}[n+1, A063659(#)]` -/
def P2783535500733205823.Spec : Prop :=
  ∀ n, P2783535500733205823.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P12382993997349897985

`n+1+A306927(n+1)`
-/

namespace A001615.P12382993997349897985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A306927 (n + 1)

end

end A001615.P12382993997349897985

namespace A001615

/-- `n+1+A306927(n+1)` -/
def P12382993997349897985.Spec : Prop :=
  ∀ n, P12382993997349897985.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P15128593726980076980

`A000082(n+1)/(n+1)`
-/

namespace A001615.P15128593726980076980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001615.P15128593726980076980

namespace A001615

/-- `A000082(n+1)/(n+1)` -/
def P15128593726980076980.Spec : Prop :=
  ∀ n, P15128593726980076980.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P2641803461904942537

`A033196(n+1)/(n+1)²`
-/

namespace A001615.P2641803461904942537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033196 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A001615.P2641803461904942537

namespace A001615

/-- `A033196(n+1)/(n+1)²` -/
def P2641803461904942537.Spec : Prop :=
  ∀ n, P2641803461904942537.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P7970630693542019780

`∑{d}[n+1, #*A008966((n+1)/#)]`
-/

namespace A001615.P7970630693542019780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001615.P7970630693542019780

namespace A001615

/-- `∑{d}[n+1, #*A008966((n+1)/#)]` -/
def P7970630693542019780.Spec : Prop :=
  ∀ n, P7970630693542019780.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P3975932726909365026

`(n+1)*∏{p}[n+1, A000203(#)/#]`
-/

namespace A001615.P3975932726909365026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A000203 p : ℚ) / (p : ℚ))

end

end A001615.P3975932726909365026

namespace A001615

/-- `(n+1)*∏{p}[n+1, A000203(#)/#]` -/
def P3975932726909365026.Spec : Prop :=
  ∀ n, P3975932726909365026.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P17310523878349880649

`∑{d}[n+1, A008683((n+1)/#)²*#]`
-/

namespace A001615.P17310523878349880649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2 * (d : ℤ)

end

end A001615.P17310523878349880649

namespace A001615

/-- `∑{d}[n+1, A008683((n+1)/#)²*#]` -/
def P17310523878349880649.Spec : Prop :=
  ∀ n, P17310523878349880649.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P13253636281255476312

`A010684(n)*A253629(n+1)`
-/

namespace A001615.P13253636281255476312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A253629 (n + 1)

end

end A001615.P13253636281255476312

namespace A001615

/-- `A010684(n)*A253629(n+1)` -/
def P13253636281255476312.Spec : Prop :=
  ∀ n, P13253636281255476312.a n = A001615 (n + 1)

end A001615

/-! ## A001615.P6287198271684224337

`gcd(A000038(n), A158523(n+1))`
-/

namespace A001615.P6287198271684224337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A158523 (n + 1))

end

end A001615.P6287198271684224337

namespace A001615

/-- `gcd(A000038(n), A158523(n+1))` -/
def P6287198271684224337.Spec : Prop :=
  ∀ n, (P6287198271684224337.a n : ℤ) = A001615 (n + 1)

end A001615

/-! ## A001615.P3311914945264495950

`lcm(A006466(n), A158523(n+1))`
-/

namespace A001615.P3311914945264495950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A158523 (n + 1))

end

end A001615.P3311914945264495950

namespace A001615

/-- `lcm(A006466(n), A158523(n+1))` -/
def P3311914945264495950.Spec : Prop :=
  ∀ n, (P3311914945264495950.a n : ℤ) = A001615 (n + 1)

end A001615

/-! ## A001615.P17991601532882267443

`A007434(n+1)/Δ[A002088(n)]`
-/

namespace A001615.P17991601532882267443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A001615.P17991601532882267443

namespace A001615

/-- `A007434(n+1)/Δ[A002088(n)]` -/
def P17991601532882267443.Spec : Prop :=
  ∀ n, P17991601532882267443.a n = (A001615 (n + 1) : ℚ)

end A001615

/-! ## A001615.P6651625900164961210

`A007434(n+1)/Δ[A005728(n)]`
-/

namespace A001615.P6651625900164961210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A001615.P6651625900164961210

namespace A001615

/-- `A007434(n+1)/Δ[A005728(n)]` -/
def P6651625900164961210.Spec : Prop :=
  ∀ n, P6651625900164961210.a n = (A001615 (n + 1) : ℚ)

end A001615

/-!
# A001616: Number of parabolic vertices of Gamma_0(n).

The programs for A001616, the canonical program `A001616.P911781339430000004` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001616 has offset 1).

The definition of A001616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001616.P4295974346821333917

`∑{d}[n+1, A000010(gcd(#, (n+1)/#))]`
-/

namespace A001616.P4295974346821333917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A001616.P4295974346821333917

namespace A001616

/-- `∑{d}[n+1, A000010(gcd(#, (n+1)/#))]` -/
def P4295974346821333917.Spec : Prop :=
  ∀ n, P4295974346821333917.a n = A001616 (n + 1)

end A001616

/-! ## A001616.P11352164851740902770

`A367203(n+1)/A000188(n+1)`
-/

namespace A001616.P11352164851740902770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367203 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

end

end A001616.P11352164851740902770

namespace A001616

/-- `A367203(n+1)/A000188(n+1)` -/
def P11352164851740902770.Spec : Prop :=
  ∀ n, P11352164851740902770.a n = (A001616 (n + 1) : ℚ)

end A001616

/-! ## A001616.P13643599134935238783

`A111248(n+1)+1-A001617(n+1)`
-/

namespace A001616.P13643599134935238783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (n + 1) + (1 - A001617 (n + 1))

end

end A001616.P13643599134935238783

namespace A001616

/-- `A111248(n+1)+1-A001617(n+1)` -/
def P13643599134935238783.Spec : Prop :=
  ∀ n, P13643599134935238783.a n = A001616 (n + 1)

theorem P13643599134935238783.correct : P13643599134935238783.Spec := by
  intro n
  simp only [A001616, Nat.add_sub_cancel, A001616.P13643599134935238783.a, A001616.P911781339430000004.f1, A001616.P911781339430000004.a, A001617, A001617.P10653443517118313610.a, A055155, A055155.P11997759877346480704.f1, A055155.P11997759877346480704.a, A111248, A111248.P8740398258723781091.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A000086, A000086.P3359847833353072450.a, A000089, A000089.P6732950680245443794.a, A001615, A001615.P12078511981713404634.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A026741, A026741.P7397200255647832146.a, A065959, A065959.P2409166480310075694.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, A059376, A059376.P12656735072516275082.f1, A059376.P12656735072516275082.a, A069091, A069091.P1979038829960387113.f1, A069091.P1979038829960387113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001616

/-! ## A001616.P3971925010760885282

`∑{d}[A007947(n+1), A000188((n+1)/#)]`
-/

namespace A001616.P3971925010760885282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001616.P3971925010760885282

namespace A001616

/-- `∑{d}[A007947(n+1), A000188((n+1)/#)]` -/
def P3971925010760885282.Spec : Prop :=
  ∀ n, P3971925010760885282.a n = A001616 (n + 1)

end A001616

/-! ## A001616.P2687098869097273576

`∑{d}[n+1, A000010(A000188(n%#+1))]`
-/

namespace A001616.P2687098869097273576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A000188 (n % d + 1)).toNat

end

end A001616.P2687098869097273576

namespace A001616

/-- `∑{d}[n+1, A000010(A000188(n%#+1))]` -/
def P2687098869097273576.Spec : Prop :=
  ∀ n, P2687098869097273576.a n = A001616 (n + 1)

end A001616

/-! ## A001616.P303777012769658445

`∑{d}[n+1, A000188(#)*A008966((n+1)/#)]`
-/

namespace A001616.P303777012769658445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001616.P303777012769658445

namespace A001616

/-- `∑{d}[n+1, A000188(#)*A008966((n+1)/#)]` -/
def P303777012769658445.Spec : Prop :=
  ∀ n, P303777012769658445.a n = A001616 (n + 1)

end A001616

/-! ## A001616.P911781339430000004

`∑{d}[n+1, A055155(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001616

/-- `∑{d}[n+1, A055155(#)*A271102((n+1)/#)]` -/
def P911781339430000004.Spec : Prop :=
  ∀ n, P911781339430000004.a n = A001616 (n + 1)

theorem P911781339430000004.correct : P911781339430000004.Spec := by
  intro n
  simp only [A001616, Nat.add_sub_cancel]

end A001616

/-! ## A001616.P15456269984988908717

`∑{d}[n+1, A178450(#)*A390317((n+1)/#)]`
-/

namespace A001616.P15456269984988908717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178450 d * A390317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001616.P15456269984988908717

namespace A001616

/-- `∑{d}[n+1, A178450(#)*A390317((n+1)/#)]` -/
def P15456269984988908717.Spec : Prop :=
  ∀ n, P15456269984988908717.a n = A001616 (n + 1)

end A001616

/-!
# A001617: Genus of modular group Gamma_0(n). Or, genus of modular curve X_0(n).

The programs for A001617, the canonical program `A001617.P10653443517118313610` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001617 has offset 1).

The definition of A001617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A000089, A001616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001617.P10653443517118313610

`1+A001615(n+1)/12-A000089(n+1)/4-A000086(n+1)/3-A001616(n+1)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A001617

/-- `1+A001615(n+1)/12-A000089(n+1)/4-A000086(n+1)/3-A001616(n+1)/2` -/
def P10653443517118313610.Spec : Prop :=
  ∀ n, P10653443517118313610.a n = (A001617 (n + 1) : ℚ)

end A001617

/-! ## A001617.P14877844581242180794

`A111248(n+1)+1-A001616(n+1)`
-/

namespace A001617.P14877844581242180794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (n + 1) + (1 - A001616 (n + 1))

end

end A001617.P14877844581242180794

namespace A001617

/-- `A111248(n+1)+1-A001616(n+1)` -/
def P14877844581242180794.Spec : Prop :=
  ∀ n, P14877844581242180794.a n = A001617 (n + 1)

end A001617

/-! ## A001617.P703984292993611402

`∑{d}[n+1, A000005(#)*A127788((n+1)/#)]`
-/

namespace A001617.P703984292993611402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A127788 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A001617.P703984292993611402

namespace A001617

/-- `∑{d}[n+1, A000005(#)*A127788((n+1)/#)]` -/
def P703984292993611402.Spec : Prop :=
  ∀ n, P703984292993611402.a n = A001617 (n + 1)

end A001617

/-! ## A001617.P16225252310142867478

`A111248(n+1)+A024000(A001616(n+1))`
-/

namespace A001617.P16225252310142867478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111248 (n + 1) + A024000 (A001616 (n + 1)).toNat

end

end A001617.P16225252310142867478

namespace A001617

/-- `A111248(n+1)+A024000(A001616(n+1))` -/
def P16225252310142867478.Spec : Prop :=
  ∀ n, P16225252310142867478.a n = A001617 (n + 1)

end A001617

/-! ## A001617.P1569745220082828746

`∑{d}[n+1, A127788(#)*A363001((n+1)/#-1)]`
-/

namespace A001617.P1569745220082828746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127788 d * A363001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A001617.P1569745220082828746

namespace A001617

/-- `∑{d}[n+1, A127788(#)*A363001((n+1)/#-1)]` -/
def P1569745220082828746.Spec : Prop :=
  ∀ n, P1569745220082828746.a n = A001617 (n + 1)

end A001617

/-!
# A001618: Nearest integer to 2*n*log(n).

The programs for A001618, the canonical program `A001618.P10923446304723596624` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001618 has offset 0).

The definition of A001618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001618.P10923446304723596624

`round(2*n*log(abs(1-n)+1))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001618

/-- `round(2*n*log(abs(1-n)+1))` -/
def P10923446304723596624.Spec : Prop :=
  ∀ n, P10923446304723596624.a n = A001618 n

theorem P10923446304723596624.correct : P10923446304723596624.Spec := by
  intro n
  simp only [A001618]

end A001618

/-! ## A001618.P15804023566658687283

`floor(log(A295418(n)))`
-/

namespace A001618.P15804023566658687283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A295418 n : ℝ)⌋

end

end A001618.P15804023566658687283

namespace A001618

/-- `floor(log(A295418(n)))` -/
def P15804023566658687283.Spec : Prop :=
  ∀ n, P15804023566658687283.a n = A001618 n

end A001618

/-! ## A001618.P16940068872556382797

`ceil(log(A227052(n)))`
-/

namespace A001618.P16940068872556382797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A227052 n : ℝ)⌉

end

end A001618.P16940068872556382797

namespace A001618

/-- `ceil(log(A227052(n)))` -/
def P16940068872556382797.Spec : Prop :=
  ∀ n, P16940068872556382797.a n = A001618 n

end A001618

/-! ## A001618.P14965582707602491230

`A004220(A114297(n+1))`
-/

namespace A001618.P14965582707602491230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004220 (A114297 (n + 1)).toNat

end

end A001618.P14965582707602491230

namespace A001618

/-- `A004220(A114297(n+1))` -/
def P14965582707602491230.Spec : Prop :=
  ∀ n, P14965582707602491230.a n = A001618 n

end A001618

/-!
# A001620: Decimal expansion of Euler's constant (or the Euler-Mascheroni constant), gamma.

The programs for A001620, there is no canonical definition to state claims against.
-/

/-! ## A001620.P3451450981340295293

`Δ[A093084(n)]`
-/

namespace A001620.P3451450981340295293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001620.P3451450981340295293

/-! ## A001620.P12643802109595884704

`A093084(n+1)-A093084(n)`
-/

namespace A001620.P12643802109595884704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (n + 1) - A093084 n

end

end A001620.P12643802109595884704

/-! ## A001620.P8277283451087619674

`9-A153810(n)`
-/

namespace A001620.P8277283451087619674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153810 n

end

end A001620.P8277283451087619674

/-! ## A001620.P15299512245479225138

`9-A319026(n)*A320748(A320748(a(n-1)+1)+1)` with `a(0)=5`
-/

namespace A001620.P15299512245479225138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  9 - A319026 n * A320748 (A320748 (a (n - 1) + 1).toNat + 1).toNat

end

end A001620.P15299512245479225138

/-! ## A001620.P18297962664478387004

`A093084(A000027(n+1))+A001489(A093084(n))`
-/

namespace A001620.P18297962664478387004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (A000027 (n + 1)).toNat + A001489 (A093084 n).toNat

end

end A001620.P18297962664478387004

/-! ## A001620.P9079079620379763171

`A098368(∑[n])/5`
-/

namespace A001620.P9079079620379763171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098368 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A001620.P9079079620379763171

/-! ## A001620.P17754101019040421908

`A002266(A098368(∑[n]))`
-/

namespace A001620.P17754101019040421908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A098368 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A001620.P17754101019040421908

/-! ## A001620.P831411082216845485

`A139261(∑[n+1])`
-/

namespace A001620.P831411082216845485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001620.P831411082216845485

/-! ## A001620.P14614787373599278061

`1/2*A098368(A055999(n)+9)`
-/

namespace A001620.P14614787373599278061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A098368 (A055999 n + 9).toNat : ℚ)

end

end A001620.P14614787373599278061

/-! ## A001620.P9426655108787700573

`A098368(A000124(n+4)+3)`
-/

namespace A001620.P9426655108787700573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A000124 (n + 4) + 3).toNat

end

end A001620.P9426655108787700573

/-! ## A001620.P1985317463267736521

`A098368(A055998(n+2)+7)`
-/

namespace A001620.P1985317463267736521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A055998 (n + 2) + 7).toNat

end

end A001620.P1985317463267736521

/-! ## A001620.P11685515240183374209

`A098368(A046691(n+3)-1)`
-/

namespace A001620.P11685515240183374209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A046691 (n + 3) - 1).toNat

end

end A001620.P11685515240183374209

/-!
# A001621: a(n) = n*(n + 1)*(n^2 + n + 2)/4.

The programs for A001621, the canonical program `A001621.P13920646642169681305` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001621 has offset 0).

The definition of A001621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001621.P11781963573618723937

`n*(n+1)*(n²+n+2)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001621.P11781963573618723937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + n + 2) : ℚ) / 4

end

end A001621.P11781963573618723937

namespace A001621

/-- `n*(n+1)*(n²+n+2)/4` -/
def P11781963573618723937.Spec : Prop :=
  ∀ n, P11781963573618723937.a n = (A001621 n : ℚ)

end A001621

/-! ## A001621.P3819590068970671547

`A000217(n)*A000124(n)`
-/

namespace A001621.P3819590068970671547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000124 n

end

end A001621.P3819590068970671547

namespace A001621

/-- `A000217(n)*A000124(n)` -/
def P3819590068970671547.Spec : Prop :=
  ∀ n, P3819590068970671547.a n = A001621 n

end A001621

/-! ## A001621.P13920646642169681305

`A002378(A000217(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001621

/-- `A002378(A000217(n))` -/
def P13920646642169681305.Spec : Prop :=
  ∀ n, P13920646642169681305.a n = A001621 n

theorem P13920646642169681305.correct : P13920646642169681305.Spec := by
  intro n
  simp only [A001621]

end A001621

/-! ## A001621.P2543585825261356219

`lcm(∑[n]+1, ∑[n])`
-/

namespace A001621.P2543585825261356219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A001621.P2543585825261356219

namespace A001621

/-- `lcm(∑[n]+1, ∑[n])` -/
def P2543585825261356219.Spec : Prop :=
  ∀ n, (P2543585825261356219.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P15478913090520804657

`2*C(∑[n]+1, 2)`
-/

namespace A001621.P15478913090520804657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A001621.P15478913090520804657

namespace A001621

/-- `2*C(∑[n]+1, 2)` -/
def P15478913090520804657.Spec : Prop :=
  ∀ n, (P15478913090520804657.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P7376013604033749588

`floor(∑[1/acot(n)^3])`
-/

namespace A001621.P7376013604033749588
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / SequenceMachineLib.acot (n : ℝ) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A001621.P7376013604033749588

namespace A001621

/-- `floor(∑[1/acot(n)^3])` -/
def P7376013604033749588.Spec : Prop :=
  ∀ n, P7376013604033749588.a n = A001621 n

end A001621

/-! ## A001621.P8450460820378685923

`C(n+1, 2)+∑[n]²`
-/

namespace A001621.P8450460820378685923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001621.P8450460820378685923

namespace A001621

/-- `C(n+1, 2)+∑[n]²` -/
def P8450460820378685923.Spec : Prop :=
  ∀ n, (P8450460820378685923.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P15244148421233967201

`∑[n]+∑[n%(n+1)]²`
-/

namespace A001621.P15244148421233967201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A001621.P15244148421233967201

namespace A001621

/-- `∑[n]+∑[n%(n+1)]²` -/
def P15244148421233967201.Spec : Prop :=
  ∀ n, (P15244148421233967201.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P901332205680791986

`∑[gcd(n, 2*n)]+∑[n]²`
-/

namespace A001621.P901332205680791986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A001621.P901332205680791986

namespace A001621

/-- `∑[gcd(n, 2*n)]+∑[n]²` -/
def P901332205680791986.Spec : Prop :=
  ∀ n, (P901332205680791986.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P17830121206606611729

`floor((C(n+1, 2)+1/2)²)`
-/

namespace A001621.P17830121206606611729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 1) 2 : ℚ) + (1 : ℚ) / 2) ^ 2⌋

end

end A001621.P17830121206606611729

namespace A001621

/-- `floor((C(n+1, 2)+1/2)²)` -/
def P17830121206606611729.Spec : Prop :=
  ∀ n, P17830121206606611729.a n = A001621 n

end A001621

/-! ## A001621.P3198240638769364555

`a(n-1)+n^3+n` with `a(0)=0`
-/

namespace A001621.P3198240638769364555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 3 + n)

end

end A001621.P3198240638769364555

namespace A001621

/-- `a(n-1)+n^3+n` -/
def P3198240638769364555.Spec : Prop :=
  ∀ n, (P3198240638769364555.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P18131517014898669055

`floor(((lcm(n, n+1)+1)/2)²)`
-/

namespace A001621.P18131517014898669055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm n (n + 1) + 1 : ℚ) / 2) ^ 2⌋

end

end A001621.P18131517014898669055

namespace A001621

/-- `floor(((lcm(n, n+1)+1)/2)²)` -/
def P18131517014898669055.Spec : Prop :=
  ∀ n, P18131517014898669055.a n = A001621 n

end A001621

/-! ## A001621.P6113437321359020931

`∑[C(n, a(n-1))]*∑[n]` with `a(0)=1`
-/

namespace A001621.P6113437321359020931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A001621.P6113437321359020931

namespace A001621

/-- `∑[C(n, a(n-1))]*∑[n]` -/
def P6113437321359020931.Spec : Prop :=
  ∀ n, (P6113437321359020931.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P10583537097498249287

`∑[a(n-1)+1]*∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A001621.P10583537097498249287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A001621.P10583537097498249287

namespace A001621

/-- `∑[a(n-1)+1]*∑[n]` -/
def P10583537097498249287.Spec : Prop :=
  ∀ n, (P10583537097498249287.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P2702049023032447404

`∑[a(n-1)+1]+∑[n]²` with `a(0)=0`
-/

namespace A001621.P2702049023032447404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A001621.P2702049023032447404

namespace A001621

/-- `∑[a(n-1)+1]+∑[n]²` -/
def P2702049023032447404.Spec : Prop :=
  ∀ n, (P2702049023032447404.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P4540572092775055977

`∑[n]²-∑[a(n-1)-1]` with `a(0)=0`
-/

namespace A001621.P4540572092775055977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A001621.P4540572092775055977

namespace A001621

/-- `∑[n]²-∑[a(n-1)-1]` -/
def P4540572092775055977.Spec : Prop :=
  ∀ n, P4540572092775055977.a n = A001621 n

end A001621

/-! ## A001621.P7833476061129684140

`a(n-1)+n*n²+n` with `a(0)=0`
-/

namespace A001621.P7833476061129684140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * n ^ 2 + n

end

end A001621.P7833476061129684140

namespace A001621

/-- `a(n-1)+n*n²+n` -/
def P7833476061129684140.Spec : Prop :=
  ∀ n, (P7833476061129684140.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P12969036007504505938

`(1-∑[a(n-1)-1])*∑[n]` with `a(0)=0`
-/

namespace A001621.P12969036007504505938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A001621.P12969036007504505938

namespace A001621

/-- `(1-∑[a(n-1)-1])*∑[n]` -/
def P12969036007504505938.Spec : Prop :=
  ∀ n, P12969036007504505938.a n = A001621 n

end A001621

/-! ## A001621.P12172404651273696100

`(∑[n]+gcd(2, 2*n+1))*∑[n]`
-/

namespace A001621.P12172404651273696100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 (2 * n + 1)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A001621.P12172404651273696100

namespace A001621

/-- `(∑[n]+gcd(2, 2*n+1))*∑[n]` -/
def P12172404651273696100.Spec : Prop :=
  ∀ n, (P12172404651273696100.a n : ℤ) = A001621 n

end A001621

/-! ## A001621.P2636290574922207155

`(∑[n]+and(1, 2*n+1))*∑[n]`
-/

namespace A001621.P2636290574922207155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n + 1)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A001621.P2636290574922207155

namespace A001621

/-- `(∑[n]+and(1, 2*n+1))*∑[n]` -/
def P2636290574922207155.Spec : Prop :=
  ∀ n, (P2636290574922207155.a n : ℤ) = A001621 n

end A001621

/-!
# A001622: Decimal expansion of golden ratio phi (or tau) = (1 + sqrt(5))/2.

The programs for A001622, there is no canonical definition to state claims against.
-/

/-! ## A001622.P1046510475556654237

`A094214(abs(1-n))`
-/

namespace A001622.P1046510475556654237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 |1 - (n : ℤ)|.toNat

end

end A001622.P1046510475556654237

/-! ## A001622.P3240355555816119933

`9-A109866(n+1)`
-/

namespace A001622.P3240355555816119933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A109866 (n + 1)

end

end A001622.P3240355555816119933

/-! ## A001622.P5907742746798213028

`A104457(n)-floor(acot(n))`
-/

namespace A001622.P5907742746798213028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A001622.P5907742746798213028

/-! ## A001622.P6908387688578219161

`A104457(A000038(n)+n)`
-/

namespace A001622.P6908387688578219161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A001622.P6908387688578219161

/-! ## A001622.P7026823787785872593

`A296184(A000038(n)+n)`
-/

namespace A001622.P7026823787785872593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A001622.P7026823787785872593

/-! ## A001622.P397713713392026254

`A104457(n)-A000007(n)`
-/

namespace A001622.P397713713392026254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - A000007 n

end

end A001622.P397713713392026254

/-! ## A001622.P17253782916899298863

`A296184(n)-A000038(n)`
-/

namespace A001622.P17253782916899298863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (n + 1) - A000038 n

end

end A001622.P17253782916899298863

/-! ## A001622.P12135251131396883780

`A104457(n)/A054977(n)`
-/

namespace A001622.P12135251131396883780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104457 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A001622.P12135251131396883780

/-! ## A001622.P4095777713181299662

`gcd(A104457(n), A296184(n))`
-/

namespace A001622.P4095777713181299662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104457 (n + 1)) (A296184 (n + 1))

end

end A001622.P4095777713181299662

/-! ## A001622.P1766924425145275444

`A104457(n)-char[A004935(n)]`
-/

namespace A001622.P1766924425145275444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001622.P1766924425145275444

/-! ## A001622.P17668202115097114198

`A057427(n)+A104457(n)-1`
-/

namespace A001622.P17668202115097114198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A104457 (n + 1) - 1)

end

end A001622.P17668202115097114198

/-! ## A001622.P2483130519603774843

`A104457(2*A000007(n)+n)`
-/

namespace A001622.P2483130519603774843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((2 * A000007 n + (n : ℤ)).toNat + 1)

end

end A001622.P2483130519603774843

/-! ## A001622.P17541196071916723855

`A104457(n)-A209229(2*n+1)`
-/

namespace A001622.P17541196071916723855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - A209229 (2 * n + 1)

end

end A001622.P17541196071916723855

/-! ## A001622.P5935992734708471311

`A104457(n)-A341629(2*n+1)`
-/

namespace A001622.P5935992734708471311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - A341629 (2 * n + 1)

end

end A001622.P5935992734708471311

/-! ## A001622.P3708909717688272076

`A104457(A000007(n)+A000007(n)+n)`
-/

namespace A001622.P3708909717688272076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A001622.P3708909717688272076

/-! ## A001622.P17269591343081703796

`A104457(n)+A231187(n)-A116425(n)`
-/

namespace A001622.P17269591343081703796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + (A231187 (n + 1) - A116425 (n + 1))

end

end A001622.P17269591343081703796

/-! ## A001622.P11322974884696310720

`A038573(A220777(a(n-1)))*A104457(n)` with `a(0)=1`
-/

namespace A001622.P11322974884696310720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038573 (A220777 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A001622.P11322974884696310720

/-! ## A001622.P1308030241742190441

`A002802(A326626(a(n-1)))*A104457(n)` with `a(0)=1`
-/

namespace A001622.P1308030241742190441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002802 (A326626 (a (n - 1)).toNat).toNat * A104457 (n + 1)

end

end A001622.P1308030241742190441

/-! ## A001622.P16534344046718023760

`A179006(A000720(a(n-1)+1))+A104457(n)` with `a(0)=1`
-/

namespace A001622.P16534344046718023760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179006 (A000720 (a (n - 1) + 1).toNat).toNat + A104457 (n + 1)

end

end A001622.P16534344046718023760

/-! ## A001622.P16175473478080050671

`A104457(n)-A033322(n+2)`
-/

namespace A001622.P16175473478080050671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - A033322 (n + 2)

end

end A001622.P16175473478080050671

/-!
# A001623: Number of 3 X n reduced (normalized) Latin rectangles.

The programs for A001623, there is no canonical definition to state claims against.
-/

/-! ## A001623.P4059122173978846861

`A000186(n+3)/∑[A000027(2*(n+1))]`
-/

namespace A001623.P4059122173978846861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000186 (n + 3) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A001623.P4059122173978846861

/-! ## A001623.P13259450790026473814

`A001009(∑[n+2]+4)`
-/

namespace A001623.P13259450790026473814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001623.P13259450790026473814

/-! ## A001623.P12420935267964959281

`A175402(n)+A001009(A167614(n+1))`
-/

namespace A001623.P12420935267964959281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175402 n + A001009 (A167614 (n + 1)).toNat

end

end A001623.P12420935267964959281

/-! ## A001623.P12047958571595291515

`gcd(A000038(n), A001009(A167614(n+1)))`
-/

namespace A001623.P12047958571595291515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001009 (A167614 (n + 1)).toNat)

end

end A001623.P12047958571595291515

/-! ## A001623.P4613081329006914619

`A001009(A167614(n+1))*A046555(n+1)`
-/

namespace A001623.P4613081329006914619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (A167614 (n + 1)).toNat * A046555 (n + 1)

end

end A001623.P4613081329006914619

/-!
# A001624: Related to Latin rectangles.

The programs for A001624, there is no canonical definition to state claims against.
-/

/-! ## A001624.P14848985289890343519

`A001626(n+2)+A001626(n+1)+A001627(n+1)+n*(a(n-1)+A001625(n+1))` with `a(0)=1`
-/

namespace A001624.P14848985289890343519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001626 (n + 2) + A001626 (n + 1) + A001627 (n + 1) + (n : ℤ) * (a (n - 1) + A001625 (n + 1))

end

end A001624.P14848985289890343519

/-!
# A001626: Number of 3-line Latin rectangles.

The programs for A001626, there is no canonical definition to state claims against.
-/

/-! ## A001626.P17793780500309585560

`A000186(n+1)+2*n*a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A001626.P17793780500309585560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000186 (n + 1) + (2 * n : ℤ) * a (n - 1)

end

end A001626.P17793780500309585560

/-!
# A001627: Related to Latin rectangles.

The programs for A001627, there is no canonical definition to state claims against.
-/

/-! ## A001627.P8902421642819736227

`A160017(ceil(Δ[n^3/9])*A324372(2*n))`
-/

namespace A001627.P8902421642819736227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (⌈f1 (n + 1) - f1 n⌉ * A324372 (2 * n)).toNat

end

end A001627.P8902421642819736227

/-!
# A001628: Convolved Fibonacci numbers.

The programs for A001628, the canonical program `A001628.P17722873821089182928` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001628 has offset 0).

The definition of A001628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001628.P17722873821089182928

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=22, a(4)=51, a(5)=111`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001628

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P17722873821089182928.Spec : Prop :=
  ∀ n, P17722873821089182928.a n = A001628 n

theorem P17722873821089182928.correct : P17722873821089182928.Spec := by
  intro n
  simp only [A001628]

end A001628

/-! ## A001628.P11758734870644018738

`((5*n+16)*(n+1)*A000045(n+2)+(5*n+17)*(n+2)*A000045(n+1))/50`
-/

namespace A001628.P11758734870644018738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * n + 16) * (n + 1) : ℤ) * A000045 (n + 2) + ((5 * n + 17) * (n + 2) : ℤ) * A000045 (n + 1) : ℚ) / 50

end

end A001628.P11758734870644018738

namespace A001628

/-- `((5*n+16)*(n+1)*A000045(n+2)+(5*n+17)*(n+2)*A000045(n+1))/50` -/
def P11758734870644018738.Spec : Prop :=
  ∀ n, P11758734870644018738.a n = (A001628 n : ℚ)

end A001628

/-! ## A001628.P16535020643766386940

`∑[A055243(n)]`
-/

namespace A001628.P16535020643766386940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001628.P16535020643766386940

namespace A001628

/-- `∑[A055243(n)]` -/
def P16535020643766386940.Spec : Prop :=
  ∀ n, P16535020643766386940.a n = A001628 n

end A001628

/-! ## A001628.P5859963743021897965

`∑[∑[∑[A105423(n)]]]`
-/

namespace A001628.P5859963743021897965
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001628.P5859963743021897965

namespace A001628

/-- `∑[∑[∑[A105423(n)]]]` -/
def P5859963743021897965.Spec : Prop :=
  ∀ n, P5859963743021897965.a n = A001628 n

end A001628

/-! ## A001628.P15592239047167332143

`∑[A010049(n+1)+a(n-2)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A001628.P15592239047167332143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A010049 (n + 1) + (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001628.P15592239047167332143

namespace A001628

/-- `∑[A010049(n+1)+a(n-2)+a(n-1)]` -/
def P15592239047167332143.Spec : Prop :=
  ∀ n, P15592239047167332143.a n = A001628 n

end A001628

/-! ## A001628.P10530781340168944452

`∑[A054455(n)-A010049(n)]`
-/

namespace A001628.P10530781340168944452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 n - A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001628.P10530781340168944452

namespace A001628

/-- `∑[A054455(n)-A010049(n)]` -/
def P10530781340168944452.Spec : Prop :=
  ∀ n, P10530781340168944452.a n = A001628 n

end A001628

/-! ## A001628.P8693573311243517557

`A036681(n)-A001629(n+2)`
-/

namespace A001628.P8693573311243517557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036681 n - A001629 (n + 2)

end

end A001628.P8693573311243517557

namespace A001628

/-- `A036681(n)-A001629(n+2)` -/
def P8693573311243517557.Spec : Prop :=
  ∀ n, P8693573311243517557.a n = A001628 n

end A001628

/-! ## A001628.P8562597311799048215

`A129707(n+1)+A001629(n+2)`
-/

namespace A001628.P8562597311799048215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (n + 1) + A001629 (n + 2)

end

end A001628.P8562597311799048215

namespace A001628

/-- `A129707(n+1)+A001629(n+2)` -/
def P8562597311799048215.Spec : Prop :=
  ∀ n, P8562597311799048215.a n = A001628 n

end A001628

/-! ## A001628.P13993321707326362615

`A067988(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A001628.P13993321707326362615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A067988 n - a (n - 2)

end

end A001628.P13993321707326362615

namespace A001628

/-- `A067988(n)-a(n-2)` -/
def P13993321707326362615.Spec : Prop :=
  ∀ n, P13993321707326362615.a n = A001628 n

end A001628

/-! ## A001628.P11554077252653722313

`A129707(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A001628.P11554077252653722313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129707 (n + 2) - a (n - 1)

end

end A001628.P11554077252653722313

namespace A001628

/-- `A129707(n+2)-a(n-1)` -/
def P11554077252653722313.Spec : Prop :=
  ∀ n, P11554077252653722313.a n = A001628 n

end A001628

/-! ## A001628.P14169750841556142815

`∪[A061178(n), A061182(n)]`
-/

namespace A001628.P14169750841556142815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001628.P14169750841556142815

namespace A001628

/-- `∪[A061178(n), A061182(n)]` -/
def P14169750841556142815.Spec : Prop :=
  ∀ n, (P14169750841556142815.a n : ℤ) = A001628 n

end A001628

/-! ## A001628.P14273933136508552422

`A001629(n+1)+A212338(n+3)-A261055(n)`
-/

namespace A001628.P14273933136508552422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + (A212338 (n + 3) - A261055 n)

end

end A001628.P14273933136508552422

namespace A001628

/-- `A001629(n+1)+A212338(n+3)-A261055(n)` -/
def P14273933136508552422.Spec : Prop :=
  ∀ n, P14273933136508552422.a n = A001628 n

end A001628

/-! ## A001628.P6873739193105409194

`A152881(n+3)-A129707(n+3)`
-/

namespace A001628.P6873739193105409194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 3) - A129707 (n + 3)

end

end A001628.P6873739193105409194

namespace A001628

/-- `A152881(n+3)-A129707(n+3)` -/
def P6873739193105409194.Spec : Prop :=
  ∀ n, P6873739193105409194.a n = A001628 n

end A001628

/-! ## A001628.P5735037385534602442

`(A036682(n)-A001872(n))/2`
-/

namespace A001628.P5735037385534602442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036682 n - A001872 n : ℚ) / 2

end

end A001628.P5735037385534602442

namespace A001628

/-- `(A036682(n)-A001872(n))/2` -/
def P5735037385534602442.Spec : Prop :=
  ∀ n, P5735037385534602442.a n = (A001628 n : ℚ)

theorem P5735037385534602442.correct : P5735037385534602442.Spec := by
  intro n
  simp only [A001628, Nat.add_sub_cancel, A001628.P5735037385534602442.a, A001628.P17722873821089182928.a, A001872, A001872.P5529285651682957257.a, A036682, A036682.P4573644156298680558.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001628

/-! ## A001628.P13650771024718357158

`A001872(n+1)+A212338(n+4)-A036682(n+1)`
-/

namespace A001628.P13650771024718357158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (n + 1) + (A212338 (n + 4) - A036682 (n + 1))

end

end A001628.P13650771024718357158

namespace A001628

/-- `A001872(n+1)+A212338(n+4)-A036682(n+1)` -/
def P13650771024718357158.Spec : Prop :=
  ∀ n, P13650771024718357158.a n = A001628 n

end A001628

/-! ## A001628.P4080418983840390442

`A038137(∑[n+3])`
-/

namespace A001628.P4080418983840390442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001628.P4080418983840390442

namespace A001628

/-- `A038137(∑[n+3])` -/
def P4080418983840390442.Spec : Prop :=
  ∀ n, P4080418983840390442.a n = A001628 n

end A001628

/-! ## A001628.P1115261812319287958

`A037027(∑[n+2]+3)`
-/

namespace A001628.P1115261812319287958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001628.P1115261812319287958

namespace A001628

/-- `A037027(∑[n+2]+3)` -/
def P1115261812319287958.Spec : Prop :=
  ∀ n, P1115261812319287958.a n = A001628 n

end A001628

/-! ## A001628.P3005536032259627772

`∑[A076791(A167614(n+1))]`
-/

namespace A001628.P3005536032259627772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076791 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001628.P3005536032259627772

namespace A001628

/-- `∑[A076791(A167614(n+1))]` -/
def P3005536032259627772.Spec : Prop :=
  ∀ n, P3005536032259627772.a n = A001628 n

end A001628

/-! ## A001628.P11188172244294075063

`A152440(∑[n+1]+1)`
-/

namespace A001628.P11188172244294075063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152440 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001628.P11188172244294075063

namespace A001628

/-- `A152440(∑[n+1]+1)` -/
def P11188172244294075063.Spec : Prop :=
  ∀ n, P11188172244294075063.a n = A001628 n

end A001628

/-! ## A001628.P5245826041058626383

`A210565(∑[n+2]-1)`
-/

namespace A001628.P5245826041058626383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001628.P5245826041058626383

namespace A001628

/-- `A210565(∑[n+2]-1)` -/
def P5245826041058626383.Spec : Prop :=
  ∀ n, P5245826041058626383.a n = A001628 n

end A001628

/-!
# A001629: Self-convolution of Fibonacci numbers.

The programs for A001629, the canonical program `A001629.P5625967319348901745` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001629 has offset 0).

The definition of A001629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001629.P16981912348472952039

`a(n-1)+A010049(n-1)` with `a(0)=0`
-/

namespace A001629.P16981912348472952039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A010049 (n - 1)

end

end A001629.P16981912348472952039

namespace A001629

/-- `a(n-1)+A010049(n-1)` -/
def P16981912348472952039.Spec : Prop :=
  ∀ n, P16981912348472952039.a n = A001629 n

end A001629

/-! ## A001629.P13426451464599691969

`a(n-1)+a(n-2)+A000045(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A001629.P13426451464599691969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 1)

end

end A001629.P13426451464599691969

namespace A001629

/-- `a(n-1)+a(n-2)+A000045(n-1)` -/
def P13426451464599691969.Spec : Prop :=
  ∀ n, P13426451464599691969.a n = A001629 n

end A001629

/-! ## A001629.P5625967319348901745

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001629

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P5625967319348901745.Spec : Prop :=
  ∀ n, P5625967319348901745.a n = A001629 n

theorem P5625967319348901745.correct : P5625967319348901745.Spec := by
  intro n
  simp only [A001629]

end A001629

/-! ## A001629.P11648679695178007164

`(n*A000032(n)-A000045(n))/5`
-/

namespace A001629.P11648679695178007164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000032 n - A000045 n : ℚ) / 5

end

end A001629.P11648679695178007164

namespace A001629

/-- `(n*A000032(n)-A000045(n))/5` -/
def P11648679695178007164.Spec : Prop :=
  ∀ n, P11648679695178007164.a n = (A001629 n : ℚ)

end A001629

/-! ## A001629.P405935459206733137

`ogf(x^2/(1-2x-x^2+2x^3+x^4))`
-/

namespace A001629.P405935459206733137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, -1, 2, 1] n

end

end A001629.P405935459206733137

namespace A001629

/-- `ogf(x^2/(1-2x-x^2+2x^3+x^4))` -/
def P405935459206733137.Spec : Prop :=
  ∀ n, P405935459206733137.a n = A001629 n

end A001629

/-! ## A001629.P13540161352822799195

`a(n-1)+A240847(n)+a(n-1)` with `a(0)=0`
-/

namespace A001629.P13540161352822799195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A240847 n + a (n - 1))

end

end A001629.P13540161352822799195

namespace A001629

/-- `a(n-1)+A240847(n)+a(n-1)` -/
def P13540161352822799195.Spec : Prop :=
  ∀ n, P13540161352822799195.a n = A001629 n

end A001629

/-! ## A001629.P3371325974426726546

`A029907(n)-A000045(n)`
-/

namespace A001629.P3371325974426726546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - A000045 n

end

end A001629.P3371325974426726546

namespace A001629

/-- `A029907(n)-A000045(n)` -/
def P3371325974426726546.Spec : Prop :=
  ∀ n, P3371325974426726546.a n = A001629 n

end A001629

/-! ## A001629.P2732208327413144325

`A102702(n)-A020695(n)`
-/

namespace A001629.P2732208327413144325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102702 n - A020695 n

end

end A001629.P2732208327413144325

namespace A001629

/-- `A102702(n)-A020695(n)` -/
def P2732208327413144325.Spec : Prop :=
  ∀ n, P2732208327413144325.a n = A001629 n

end A001629

/-! ## A001629.P54325327123218549

`∑[A010049(A289207(n+1))]`
-/

namespace A001629.P54325327123218549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001629.P54325327123218549

namespace A001629

/-- `∑[A010049(A289207(n+1))]` -/
def P54325327123218549.Spec : Prop :=
  ∀ n, P54325327123218549.a n = A001629 n

end A001629

/-! ## A001629.P8847348852857869737

`∑[A006367(n)-A212804(n)]`
-/

namespace A001629.P8847348852857869737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001629.P8847348852857869737

namespace A001629

/-- `∑[A006367(n)-A212804(n)]` -/
def P8847348852857869737.Spec : Prop :=
  ∀ n, P8847348852857869737.a n = A001629 n

end A001629

/-! ## A001629.P13392780302366977209

`A029907(n)+1-A001611(n)`
-/

namespace A001629.P13392780302366977209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (1 - A001611 n)

end

end A001629.P13392780302366977209

namespace A001629

/-- `A029907(n)+1-A001611(n)` -/
def P13392780302366977209.Spec : Prop :=
  ∀ n, P13392780302366977209.a n = A001629 n

end A001629

/-! ## A001629.P12838010205989959775

`A152163(n+2)+A029907(n)`
-/

namespace A001629.P12838010205989959775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + A029907 n

end

end A001629.P12838010205989959775

namespace A001629

/-- `A152163(n+2)+A029907(n)` -/
def P12838010205989959775.Spec : Prop :=
  ∀ n, P12838010205989959775.a n = A001629 n

end A001629

/-! ## A001629.P2601417488640856467

`A029907(n)-A212804(n+1)`
-/

namespace A001629.P2601417488640856467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - A212804 (n + 1)

end

end A001629.P2601417488640856467

namespace A001629

/-- `A029907(n)-A212804(n+1)` -/
def P2601417488640856467.Spec : Prop :=
  ∀ n, P2601417488640856467.a n = A001629 n

end A001629

/-! ## A001629.P8197007640501030748

`A010049(n)-A240847(n+1)`
-/

namespace A001629.P8197007640501030748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n - A240847 (n + 1)

end

end A001629.P8197007640501030748

namespace A001629

/-- `A010049(n)-A240847(n+1)` -/
def P8197007640501030748.Spec : Prop :=
  ∀ n, P8197007640501030748.a n = A001629 n

end A001629

/-! ## A001629.P2029575394903235862

`A029907(n)-A103609(2*n)`
-/

namespace A001629.P2029575394903235862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - A103609 (2 * n)

end

end A001629.P2029575394903235862

namespace A001629

/-- `A029907(n)-A103609(2*n)` -/
def P2029575394903235862.Spec : Prop :=
  ∀ n, P2029575394903235862.a n = A001629 n

end A001629

/-! ## A001629.P9235836284711204787

`∑[A010049(A289207(2*n)/2)]`
-/

namespace A001629.P9235836284711204787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001629.P9235836284711204787

namespace A001629

/-- `∑[A010049(A289207(2*n)/2)]` -/
def P9235836284711204787.Spec : Prop :=
  ∀ n, P9235836284711204787.a n = A001629 n

end A001629

/-! ## A001629.P17176717339403899546

`∑[A006367(n)]-A000045(n+1)`
-/

namespace A001629.P17176717339403899546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n + 1)

end

end A001629.P17176717339403899546

namespace A001629

/-- `∑[A006367(n)]-A000045(n+1)` -/
def P17176717339403899546.Spec : Prop :=
  ∀ n, P17176717339403899546.a n = A001629 n

end A001629

/-! ## A001629.P4028931185154349556

`∑[A010049(n+1)-A208354(n)]`
-/

namespace A001629.P4028931185154349556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001629.P4028931185154349556

namespace A001629

/-- `∑[A010049(n+1)-A208354(n)]` -/
def P4028931185154349556.Spec : Prop :=
  ∀ n, P4028931185154349556.a n = A001629 n

end A001629

/-! ## A001629.P5615418261768566788

`A029907(n)-Δ[A000071(n+1)]`
-/

namespace A001629.P5615418261768566788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n - (f1 (n + 1) - f1 n)

end

end A001629.P5615418261768566788

namespace A001629

/-- `A029907(n)-Δ[A000071(n+1)]` -/
def P5615418261768566788.Spec : Prop :=
  ∀ n, P5615418261768566788.a n = A001629 n

end A001629

/-! ## A001629.P14880135281348082465

`A010049(n+1)-A000045(n+1)`
-/

namespace A001629.P14880135281348082465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) - A000045 (n + 1)

end

end A001629.P14880135281348082465

namespace A001629

/-- `A010049(n+1)-A000045(n+1)` -/
def P14880135281348082465.Spec : Prop :=
  ∀ n, P14880135281348082465.a n = A001629 n

end A001629

/-!
# A001630: Tetranacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4), with a(0)=a(1)=0, a(2)=1, a(3)=2.

The programs for A001630, the canonical program `A001630.P861898949444330519` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001630 has offset 0).

The definition of A001630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A001630.P861898949444330519`, by `A001630.P861898949444330519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001630.P7575092216654374802

`2*a(n-1)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A001630.P7575092216654374802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A001630.P7575092216654374802

namespace A001630

/-- `2*a(n-1)-a(n-5)` -/
def P7575092216654374802.Spec : Prop :=
  ∀ n, P7575092216654374802.a n = A001630 n

end A001630

/-! ## A001630.P861898949444330519

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001630

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P861898949444330519.Spec : Prop :=
  ∀ n, (P861898949444330519.a n : ℤ) = A001630 n

theorem P861898949444330519.correct : P861898949444330519.Spec := by
  intro n
  simp only [A001630]

end A001630

/-! ## A001630.P11572883838043392471

`A000078(n)+A000078(n+1)`
-/

namespace A001630.P11572883838043392471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n + A000078 (n + 1)

end

end A001630.P11572883838043392471

namespace A001630

/-- `A000078(n)+A000078(n+1)` -/
def P11572883838043392471.Spec : Prop :=
  ∀ n, P11572883838043392471.a n = A001630 n

end A001630

/-! ## A001630.P9483346062487437544

`ogf((-x^2-x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A001630.P9483346062487437544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, -1, -1, -1, -1] n

end

end A001630.P9483346062487437544

namespace A001630

/-- `ogf((-x^2-x^3)/(-1+x+x^2+x^3+x^4))` -/
def P9483346062487437544.Spec : Prop :=
  ∀ n, P9483346062487437544.a n = A001630 n

end A001630

/-! ## A001630.P10225008655262091959

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A001630.P10225008655262091959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A001630.P10225008655262091959

namespace A001630

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P10225008655262091959.Spec : Prop :=
  ∀ n, P10225008655262091959.a n = A001630 n

end A001630

/-! ## A001630.P12543982732862793121

`A251655(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A001630.P12543982732862793121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251655 (n - 1) + a (n - 1)

end

end A001630.P12543982732862793121

namespace A001630

/-- `A251655(n-1)+a(n-1)` -/
def P12543982732862793121.Spec : Prop :=
  ∀ n, P12543982732862793121.a n = A001630 n

end A001630

/-! ## A001630.P14812600116251203270

`A251656(n+1)+A251656(n)-A251703(n)`
-/

namespace A001630.P14812600116251203270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A251703 n)

end

end A001630.P14812600116251203270

namespace A001630

/-- `A251656(n+1)+A251656(n)-A251703(n)` -/
def P14812600116251203270.Spec : Prop :=
  ∀ n, P14812600116251203270.a n = A001630 n

end A001630

/-! ## A001630.P12813105791367419323

`A251703(n+1)+A251654(n)-A251703(n)`
-/

namespace A001630.P12813105791367419323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 (n + 1) + (A251654 n - A251703 n)

end

end A001630.P12813105791367419323

namespace A001630

/-- `A251703(n+1)+A251654(n)-A251703(n)` -/
def P12813105791367419323.Spec : Prop :=
  ∀ n, P12813105791367419323.a n = A001630 n

end A001630

/-! ## A001630.P16346318233441899794

`A251704(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A001630.P16346318233441899794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251704 (n + 1) - a (n - 1)

end

end A001630.P16346318233441899794

namespace A001630

/-- `A251704(n+1)-a(n-1)` -/
def P16346318233441899794.Spec : Prop :=
  ∀ n, P16346318233441899794.a n = A001630 n

end A001630

/-! ## A001630.P140444901522604365

`∑[A251655(n)]-A251655(n)`
-/

namespace A001630.P140444901522604365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251655 n

end

end A001630.P140444901522604365

namespace A001630

/-- `∑[A251655(n)]-A251655(n)` -/
def P140444901522604365.Spec : Prop :=
  ∀ n, P140444901522604365.a n = A001630 n

end A001630

/-! ## A001630.P16714754268042856936

`A251655(n+1)-A251704(n)`
-/

namespace A001630.P16714754268042856936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) - A251704 n

end

end A001630.P16714754268042856936

namespace A001630

/-- `A251655(n+1)-A251704(n)` -/
def P16714754268042856936.Spec : Prop :=
  ∀ n, P16714754268042856936.a n = A001630 n

end A001630

/-! ## A001630.P4214172102909692938

`∑[2*A001631(n)]-A001631(n)`
-/

namespace A001630.P4214172102909692938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001631 n

end

end A001630.P4214172102909692938

namespace A001630

/-- `∑[2*A001631(n)]-A001631(n)` -/
def P4214172102909692938.Spec : Prop :=
  ∀ n, P4214172102909692938.a n = A001630 n

end A001630

/-! ## A001630.P5165944833468551154

`A000078(n)-(A251703(n)-A000288(n))`
-/

namespace A001630.P5165944833468551154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n - (A251703 n - A000288 n)

end

end A001630.P5165944833468551154

namespace A001630

/-- `A000078(n)-(A251703(n)-A000288(n))` -/
def P5165944833468551154.Spec : Prop :=
  ∀ n, P5165944833468551154.a n = A001630 n

end A001630

/-! ## A001630.P14638082455725961300

`A251655(n+1)+A001631(n)-A000288(n)`
-/

namespace A001630.P14638082455725961300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) + (A001631 n - A000288 n)

end

end A001630.P14638082455725961300

namespace A001630

/-- `A251655(n+1)+A001631(n)-A000288(n)` -/
def P14638082455725961300.Spec : Prop :=
  ∀ n, P14638082455725961300.a n = A001630 n

end A001630

/-! ## A001630.P2667469278077817295

`A001631(n+1)+A251704(n+1)-A251654(n+1)`
-/

namespace A001630.P2667469278077817295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1) + (A251704 (n + 1) - A251654 (n + 1))

end

end A001630.P2667469278077817295

namespace A001630

/-- `A001631(n+1)+A251704(n+1)-A251654(n+1)` -/
def P2667469278077817295.Spec : Prop :=
  ∀ n, P2667469278077817295.a n = A001630 n

end A001630

/-! ## A001630.P16309468702415918645

`A251656(n+1)+A251704(n+1)-A251705(n+1)`
-/

namespace A001630.P16309468702415918645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251704 (n + 1) - A251705 (n + 1))

end

end A001630.P16309468702415918645

namespace A001630

/-- `A251656(n+1)+A251704(n+1)-A251705(n+1)` -/
def P16309468702415918645.Spec : Prop :=
  ∀ n, P16309468702415918645.a n = A001630 n

end A001630

/-! ## A001630.P2564414223515106639

`A000288(n+1)-A251654(n+1)`
-/

namespace A001630.P2564414223515106639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (n + 1) - A251654 (n + 1)

end

end A001630.P2564414223515106639

namespace A001630

/-- `A000288(n+1)-A251654(n+1)` -/
def P2564414223515106639.Spec : Prop :=
  ∀ n, P2564414223515106639.a n = A001630 n

end A001630

/-! ## A001630.P1877857600165847012

`A251654(n+2)-A001631(n+2)`
-/

namespace A001630.P1877857600165847012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 (n + 2) - A001631 (n + 2)

end

end A001630.P1877857600165847012

namespace A001630

/-- `A251654(n+2)-A001631(n+2)` -/
def P1877857600165847012.Spec : Prop :=
  ∀ n, P1877857600165847012.a n = A001630 n

end A001630

/-! ## A001630.P13496514085090869460

`A251705(n+2)-A251656(n+2)`
-/

namespace A001630.P13496514085090869460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 (n + 2) - A251656 (n + 2)

end

end A001630.P13496514085090869460

namespace A001630

/-- `A251705(n+2)-A251656(n+2)` -/
def P13496514085090869460.Spec : Prop :=
  ∀ n, P13496514085090869460.a n = A001630 n

end A001630

/-! ## A001630.P4144428776739737018

`record[A001631(n)]-∑[A001631(n+1)]`
-/

namespace A001630.P4144428776739737018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A001630.P4144428776739737018

namespace A001630

/-- `record[A001631(n)]-∑[A001631(n+1)]` -/
def P4144428776739737018.Spec : Prop :=
  ∀ n, P4144428776739737018.a n = A001630 n

end A001630

/-!
# A001631: Tetranacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4), with initial conditions a(0..3) = (0, 0, 1, 0).

The programs for A001631, the canonical program `A001631.P8118101284238173115` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001631 has offset 0).

The definition of A001631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A001631.P8118101284238173115`, by `A001631.P8118101284238173115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001631.P8118101284238173115

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001631

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P8118101284238173115.Spec : Prop :=
  ∀ n, (P8118101284238173115.a n : ℤ) = A001631 n

theorem P8118101284238173115.correct : P8118101284238173115.Spec := by
  intro n
  simp only [A001631]

end A001631

/-! ## A001631.P9849707212875420696

`ogf((-x^2+x^3)/(-1+x+x^2+x^3+x^4))`
-/

namespace A001631.P9849707212875420696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -1, -1, -1, -1] n

end

end A001631.P9849707212875420696

namespace A001631

/-- `ogf((-x^2+x^3)/(-1+x+x^2+x^3+x^4))` -/
def P9849707212875420696.Spec : Prop :=
  ∀ n, P9849707212875420696.a n = A001631 n

end A001631

/-! ## A001631.P40564731779080738

`2*a(n-1)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A001631.P40564731779080738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A001631.P40564731779080738

namespace A001631

/-- `2*a(n-1)-a(n-5)` -/
def P40564731779080738.Spec : Prop :=
  ∀ n, P40564731779080738.a n = A001631 n

end A001631

/-! ## A001631.P2401153775984771271

`a(n-1)+a(n-1)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A001631.P2401153775984771271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5))

end

end A001631.P2401153775984771271

namespace A001631

/-- `a(n-1)+a(n-1)-a(n-5)` -/
def P2401153775984771271.Spec : Prop :=
  ∀ n, P2401153775984771271.a n = A001631 n

end A001631

/-! ## A001631.P2929698631387427482

`A251655(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A001631.P2929698631387427482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251655 (n - 1) - a (n - 1)

end

end A001631.P2929698631387427482

namespace A001631

/-- `A251655(n-1)-a(n-1)` -/
def P2929698631387427482.Spec : Prop :=
  ∀ n, P2929698631387427482.a n = A001631 n

end A001631

/-! ## A001631.P1466700645628369328

`Δ[A000078(n)]`
-/

namespace A001631.P1466700645628369328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001631.P1466700645628369328

namespace A001631

/-- `Δ[A000078(n)]` -/
def P1466700645628369328.Spec : Prop :=
  ∀ n, P1466700645628369328.a n = A001631 n

end A001631

/-! ## A001631.P2361815745613045398

`A251705(n)-A251703(n)`
-/

namespace A001631.P2361815745613045398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251705 n - A251703 n

end

end A001631.P2361815745613045398

namespace A001631

/-- `A251705(n)-A251703(n)` -/
def P2361815745613045398.Spec : Prop :=
  ∀ n, P2361815745613045398.a n = A001631 n

end A001631

/-! ## A001631.P9623946497800787777

`A000078(n+1)-A000078(n)`
-/

namespace A001631.P9623946497800787777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1) - A000078 n

end

end A001631.P9623946497800787777

namespace A001631

/-- `A000078(n+1)-A000078(n)` -/
def P9623946497800787777.Spec : Prop :=
  ∀ n, P9623946497800787777.a n = A001631 n

end A001631

/-! ## A001631.P3860007808792723700

`A001630(n)-2*A000078(n)`
-/

namespace A001631.P3860007808792723700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n - 2 * A000078 n

end

end A001631.P3860007808792723700

namespace A001631

/-- `A001630(n)-2*A000078(n)` -/
def P3860007808792723700.Spec : Prop :=
  ∀ n, P3860007808792723700.a n = A001631 n

end A001631

/-! ## A001631.P18067360848775367892

`A251654(n)+A251656(n)-A251705(n)`
-/

namespace A001631.P18067360848775367892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251654 n + (A251656 n - A251705 n)

end

end A001631.P18067360848775367892

namespace A001631

/-- `A251654(n)+A251656(n)-A251705(n)` -/
def P18067360848775367892.Spec : Prop :=
  ∀ n, P18067360848775367892.a n = A001631 n

end A001631

/-! ## A001631.P11575610081124262056

`A000078(n)-(A251704(n)-A251705(n))`
-/

namespace A001631.P11575610081124262056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 n - (A251704 n - A251705 n)

end

end A001631.P11575610081124262056

namespace A001631

/-- `A000078(n)-(A251704(n)-A251705(n))` -/
def P11575610081124262056.Spec : Prop :=
  ∀ n, P11575610081124262056.a n = A001631 n

end A001631

/-! ## A001631.P8919083431856606249

`A000288(n)-A251704(n)`
-/

namespace A001631.P8919083431856606249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n - A251704 n

end

end A001631.P8919083431856606249

namespace A001631

/-- `A000288(n)-A251704(n)` -/
def P8919083431856606249.Spec : Prop :=
  ∀ n, P8919083431856606249.a n = A001631 n

end A001631

/-! ## A001631.P5995214567950429184

`Δ[A251704(n)-A251703(n)]`
-/

namespace A001631.P5995214567950429184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n - A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001631.P5995214567950429184

namespace A001631

/-- `Δ[A251704(n)-A251703(n)]` -/
def P5995214567950429184.Spec : Prop :=
  ∀ n, P5995214567950429184.a n = A001631 n

end A001631

/-! ## A001631.P10807490239828944139

`A251655(n+1)-A251705(n+1)`
-/

namespace A001631.P10807490239828944139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (n + 1) - A251705 (n + 1)

end

end A001631.P10807490239828944139

namespace A001631

/-- `A251655(n+1)-A251705(n+1)` -/
def P10807490239828944139.Spec : Prop :=
  ∀ n, P10807490239828944139.a n = A001631 n

end A001631

/-! ## A001631.P1815060951820320184

`A251656(n+2)-A251704(n+1)`
-/

namespace A001631.P1815060951820320184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 2) - A251704 (n + 1)

end

end A001631.P1815060951820320184

namespace A001631

/-- `A251656(n+2)-A251704(n+1)` -/
def P1815060951820320184.Spec : Prop :=
  ∀ n, P1815060951820320184.a n = A001631 n

end A001631

/-! ## A001631.P13642485982545123180

`A000288(n)+A001630(n)-A251655(n+1)`
-/

namespace A001631.P13642485982545123180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A001630 n - A251655 (n + 1))

end

end A001631.P13642485982545123180

namespace A001631

/-- `A000288(n)+A001630(n)-A251655(n+1)` -/
def P13642485982545123180.Spec : Prop :=
  ∀ n, P13642485982545123180.a n = A001631 n

end A001631

/-! ## A001631.P12895717777763022358

`A001630(n)+A251703(n)-A251654(n+1)`
-/

namespace A001631.P12895717777763022358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n + (A251703 n - A251654 (n + 1))

end

end A001631.P12895717777763022358

namespace A001631

/-- `A001630(n)+A251703(n)-A251654(n+1)` -/
def P12895717777763022358.Spec : Prop :=
  ∀ n, P12895717777763022358.a n = A001631 n

end A001631

/-! ## A001631.P247418460285072195

`A251656(n+1)+A251656(n)-A251654(n+1)`
-/

namespace A001631.P247418460285072195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251656 (n + 1) + (A251656 n - A251654 (n + 1))

end

end A001631.P247418460285072195

namespace A001631

/-- `A251656(n+1)+A251656(n)-A251654(n+1)` -/
def P247418460285072195.Spec : Prop :=
  ∀ n, P247418460285072195.a n = A001631 n

end A001631

/-! ## A001631.P3745527394732194705

`A251703(n+1)+A251654(n)-A251654(n+1)`
-/

namespace A001631.P3745527394732194705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 (n + 1) + (A251654 n - A251654 (n + 1))

end

end A001631.P3745527394732194705

namespace A001631

/-- `A251703(n+1)+A251654(n)-A251654(n+1)` -/
def P3745527394732194705.Spec : Prop :=
  ∀ n, P3745527394732194705.a n = A001631 n

end A001631

/-! ## A001631.P3628246639671475988

`A251704(n+1)+A251654(n)-A251655(n+1)`
-/

namespace A001631.P3628246639671475988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (n + 1) + (A251654 n - A251655 (n + 1))

end

end A001631.P3628246639671475988

namespace A001631

/-- `A251704(n+1)+A251654(n)-A251655(n+1)` -/
def P3628246639671475988.Spec : Prop :=
  ∀ n, P3628246639671475988.a n = A001631 n

end A001631

/-!
# A001632: Smallest prime p such that there is a gap of 2n between p and previous prime.

The programs for A001632, there is no canonical definition to state claims against.
-/

/-! ## A001632.P6163253456715792218

`A000040(A038664(n+1)+1)`
-/

namespace A001632.P6163253456715792218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038664 (n + 1) + 1).toNat

end

end A001632.P6163253456715792218

/-! ## A001632.P8751140589437432092

`n+1+A268385(A268385(n+1))+A000230(n+1)`
-/

namespace A001632.P8751140589437432092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A268385 (A268385 (n + 1)).toNat + A000230 (n + 1))

end

end A001632.P8751140589437432092

/-! ## A001632.P4523658954957822044

`A268385(A268385(n+2))+A000230(n+1)+n`
-/

namespace A001632.P4523658954957822044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268385 (n + 2)).toNat + (A000230 (n + 1) + (n : ℤ))

end

end A001632.P4523658954957822044

/-! ## A001632.P88304335082986244

`A005408(n)+A046789(n+1)+1-A046728(n+1)`
-/

namespace A001632.P88304335082986244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A046789 (n + 1) + (1 - A046728 (n + 1)))

end

end A001632.P88304335082986244

/-! ## A001632.P11905576838508426477

`A028310(2*n+1)+A046789(n+1)+1-A046728(n+1)`
-/

namespace A001632.P11905576838508426477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n + 1) + (A046789 (n + 1) + (1 - A046728 (n + 1)))

end

end A001632.P11905576838508426477

/-! ## A001632.P10888560488261813286

`A000230(n+1)+A253899(n+1)-A256454(n+1)`
-/

namespace A001632.P10888560488261813286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (n + 1) + (A253899 (n + 1) - A256454 (n + 1))

end

end A001632.P10888560488261813286

/-! ## A001632.P13228565104761165193

`A099375(A000217(n))+A000230(n+1)+1`
-/

namespace A001632.P13228565104761165193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A000217 n).toNat + (A000230 (n + 1) + 1)

end

end A001632.P13228565104761165193

/-! ## A001632.P17090455086243949326

`A131507(∑[n])+A045881(n+1)`
-/

namespace A001632.P17090455086243949326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (∑ j ∈ Finset.range (n + 1), f1 j) + A045881 (n + 1)

end

end A001632.P17090455086243949326

/-! ## A001632.P17628661972646777920

`A174350(∑[n+1])+2*(n+1)`
-/

namespace A001632.P17628661972646777920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * (n + 1) : ℤ)

end

end A001632.P17628661972646777920

/-!
# A001633: Numbers with an odd number of digits.

The programs for A001633, there is no canonical definition to state claims against.
-/

/-! ## A001633.P15484741482261106972

`record[n*A000035(A332550(n))]`
-/

namespace A001633.P15484741482261106972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A332550 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001633.P15484741482261106972

/-!
# A001634: a(n) = a(n-2) + a(n-3) + a(n-4), with initial values a(0) = 0, a(1) = 2, a(2) = 3, a(3) = 6.

The programs for A001634, the canonical program `A001634.P5454466561290469468` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001634 has offset 0).

The definition of A001634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A001634.P5454466561290469468`, by `A001634.P5454466561290469468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001634.P5454466561290469468

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001634

/-- `a(n-2)+a(n-3)+a(n-4)` -/
def P5454466561290469468.Spec : Prop :=
  ∀ n, (P5454466561290469468.a n : ℤ) = A001634 n

theorem P5454466561290469468.correct : P5454466561290469468.Spec := by
  intro n
  simp only [A001634]

end A001634

/-! ## A001634.P11781333965347951421

`ogf((2x+3x^2+4x^3)/(1-x^2-x^3-x^4))`
-/

namespace A001634.P11781333965347951421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 4] [1, 0, -1, -1, -1] n

end

end A001634.P11781333965347951421

namespace A001634

/-- `ogf((2x+3x^2+4x^3)/(1-x^2-x^3-x^4))` -/
def P11781333965347951421.Spec : Prop :=
  ∀ n, P11781333965347951421.a n = A001634 n

end A001634

/-! ## A001634.P10021570207282905351

`A001609(n+1)-A033999(n)`
-/

namespace A001634.P10021570207282905351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 1) - A033999 n

end

end A001634.P10021570207282905351

namespace A001634

/-- `A001609(n+1)-A033999(n)` -/
def P10021570207282905351.Spec : Prop :=
  ∀ n, P10021570207282905351.a n = A001634 n

end A001634

/-! ## A001634.P13508378799208169002

`record[A277253(n)]+Δ[A107458(n)]`
-/

namespace A001634.P13508378799208169002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A001634.P13508378799208169002

namespace A001634

/-- `record[A277253(n)]+Δ[A107458(n)]` -/
def P13508378799208169002.Spec : Prop :=
  ∀ n, P13508378799208169002.a n = A001634 n

end A001634

/-! ## A001634.P1290972270324578000

`A033999(n+1)+A001609(n+1)`
-/

namespace A001634.P1290972270324578000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A001609 (n + 1)

end

end A001634.P1290972270324578000

namespace A001634

/-- `A033999(n+1)+A001609(n+1)` -/
def P1290972270324578000.Spec : Prop :=
  ∀ n, P1290972270324578000.a n = A001634 n

end A001634

/-! ## A001634.P10362925480446575926

`Δ[A137726(n+3)]-1`
-/

namespace A001634.P10362925480446575926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001634.P10362925480446575926

namespace A001634

/-- `Δ[A137726(n+3)]-1` -/
def P10362925480446575926.Spec : Prop :=
  ∀ n, P10362925480446575926.a n = A001634 n

end A001634

/-! ## A001634.P13355837795043840871

`Δ[A226509(n+3)]-1`
-/

namespace A001634.P13355837795043840871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001634.P13355837795043840871

namespace A001634

/-- `Δ[A226509(n+3)]-1` -/
def P13355837795043840871.Spec : Prop :=
  ∀ n, P13355837795043840871.a n = A001634 n

end A001634

/-! ## A001634.P10616471285715988014

`A001609(n+1)-A081729(A014105(n))`
-/

namespace A001634.P10616471285715988014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 1) - A081729 (A014105 n).toNat

end

end A001634.P10616471285715988014

namespace A001634

/-- `A001609(n+1)-A081729(A014105(n))` -/
def P10616471285715988014.Spec : Prop :=
  ∀ n, P10616471285715988014.a n = A001634 n

end A001634

/-!
# A001635: A Fielder sequence: a(n) = a(n-1) + a(n-2) - a(n-6), n >= 7.

The programs for A001635, the canonical program `A001635.P16348002409044299206` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001635 has offset 1).

The definition of A001635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-6)` (program `A001635.P16348002409044299206`, by `A001635.P16348002409044299206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001635.P16348002409044299206

`a(n-1)+a(n-2)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=10, a(5)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001635

/-- `a(n-1)+a(n-2)-a(n-6)` -/
def P16348002409044299206.Spec : Prop :=
  ∀ n, P16348002409044299206.a n = A001635 (n + 1)

theorem P16348002409044299206.correct : P16348002409044299206.Spec := by
  intro n
  simp only [A001635, Nat.add_sub_cancel]

end A001635

/-!
# A001636: A Fielder sequence: a(n) = a(n-1) + a(n-2) - a(n-7), n >= 8.

The programs for A001636, the canonical program `A001636.P12732158065424661432` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001636 has offset 1).

The definition of A001636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-7)` (program `A001636.P12732158065424661432`, by `A001636.P12732158065424661432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001636.P12732158065424661432

`a(n-1)+a(n-2)-a(n-7)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=10, a(5)=17, a(6)=21`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001636

/-- `a(n-1)+a(n-2)-a(n-7)` -/
def P12732158065424661432.Spec : Prop :=
  ∀ n, P12732158065424661432.a n = A001636 (n + 1)

theorem P12732158065424661432.correct : P12732158065424661432.Spec := by
  intro n
  simp only [A001636, Nat.add_sub_cancel]

end A001636

/-! ## A001636.P6823972688111031783

`A337868(A091611(n+1))`
-/

namespace A001636.P6823972688111031783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337868 (A091611 (n + 1)).toNat

end

end A001636.P6823972688111031783

namespace A001636

/-- `A337868(A091611(n+1))` -/
def P6823972688111031783.Spec : Prop :=
  ∀ n, P6823972688111031783.a n = A001636 (n + 1)

end A001636

/-!
# A001637: Numbers with an even number of digits.

The programs for A001637, there is no canonical definition to state claims against.
-/

/-! ## A001637.P17620652643678046541

`A303848(2*(n+1))`
-/

namespace A001637.P17620652643678046541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303848 (2 * (n + 1))

end

end A001637.P17620652643678046541

/-! ## A001637.P17574226623051678424

`A303848(xor(1, n)+n+1)+A000035(n)`
-/

namespace A001637.P17574226623051678424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303848 (Nat.xor 1 n + (n + 1)) + A000035 n

end

end A001637.P17574226623051678424

/-! ## A001637.P2343133211979646748

`A303848(A103889(n+1)+n)+A000035(n)`
-/

namespace A001637.P2343133211979646748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303848 (A103889 (n + 1) + (n : ℤ)).toNat + A000035 n

end

end A001637.P2343133211979646748

/-! ## A001637.P16572419851365008341

`A053392(A051022(n+10))`
-/

namespace A001637.P16572419851365008341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A051022 (n + 10)).toNat

end

end A001637.P16572419851365008341

/-! ## A001637.P1370247999006427799

`A000194((n+10)²)`
-/

namespace A001637.P1370247999006427799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 10) ^ 2)

end

end A001637.P1370247999006427799

/-! ## A001637.P17188172332316822977

`A053615((n+10)²)`
-/

namespace A001637.P17188172332316822977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((n + 10) ^ 2)

end

end A001637.P17188172332316822977

/-! ## A001637.P15090666680409377418

`ceil(log2(A375875(n)))`
-/

namespace A001637.P15090666680409377418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A375875 (n + 10) : ℝ)⌉

end

end A001637.P15090666680409377418

/-! ## A001637.P8868538073183098446

`floor(log2(A375875(n+1)))`
-/

namespace A001637.P8868538073183098446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A375875 (n + 1 + 10)).toNat

end

end A001637.P8868538073183098446

/-!
# A001638: A Fielder sequence: a(n) = a(n-1) + a(n-3) + a(n-4), n >= 4.

The programs for A001638, the canonical program `A001638.P962976786258876721` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001638 has offset 0).

The definition of A001638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A001638.P962976786258876721`, by `A001638.P962976786258876721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001638.P962976786258876721

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=4, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001638

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P962976786258876721.Spec : Prop :=
  ∀ n, (P962976786258876721.a n : ℤ) = A001638 n

theorem P962976786258876721.correct : P962976786258876721.Spec := by
  intro n
  simp only [A001638]

end A001638

/-! ## A001638.P9297704071560715040

`ogf((-4+3x+x^3)/(-1+x+x^3+x^4))`
-/

namespace A001638.P9297704071560715040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, 0, -1] [1, -1, 0, -1, -1] n

end

end A001638.P9297704071560715040

namespace A001638

/-- `ogf((-4+3x+x^3)/(-1+x+x^3+x^4))` -/
def P9297704071560715040.Spec : Prop :=
  ∀ n, P9297704071560715040.a n = A001638 n

end A001638

/-! ## A001638.P5562105825772203087

`A000032(n)+2*cos(n*π/2)`
-/

namespace A001638.P5562105825772203087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 2)

end

end A001638.P5562105825772203087

namespace A001638

/-- `A000032(n)+2*cos(n*π/2)` -/
def P5562105825772203087.Spec : Prop :=
  ∀ n, P5562105825772203087.a n = (A001638 n : ℝ)

end A001638

/-! ## A001638.P8450448548893964664

`A000032(n)-A176742(n+2)`
-/

namespace A001638.P8450448548893964664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A176742 (n + 2)

end

end A001638.P8450448548893964664

namespace A001638

/-- `A000032(n)-A176742(n+2)` -/
def P8450448548893964664.Spec : Prop :=
  ∀ n, P8450448548893964664.a n = A001638 n

end A001638

/-! ## A001638.P16304748756267537510

`A000032(n)+2*A056594(n)`
-/

namespace A001638.P16304748756267537510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 2 * A056594 n

end

end A001638.P16304748756267537510

namespace A001638

/-- `A000032(n)+2*A056594(n)` -/
def P16304748756267537510.Spec : Prop :=
  ∀ n, P16304748756267537510.a n = A001638 n

end A001638

/-! ## A001638.P5912007889192338227

`∑[A004443(n+1)-(n+1)]+A000032(n)`
-/

namespace A001638.P5912007889192338227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000032 n

end

end A001638.P5912007889192338227

namespace A001638

/-- `∑[A004443(n+1)-(n+1)]+A000032(n)` -/
def P5912007889192338227.Spec : Prop :=
  ∀ n, P5912007889192338227.a n = A001638 n

end A001638

/-! ## A001638.P4072631008971942465

`A074662(n)+A074662(n)-A000045(n)`
-/

namespace A001638.P4072631008971942465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n + (A074662 n - A000045 n)

end

end A001638.P4072631008971942465

namespace A001638

/-- `A074662(n)+A074662(n)-A000045(n)` -/
def P4072631008971942465.Spec : Prop :=
  ∀ n, P4072631008971942465.a n = A001638 n

end A001638

/-! ## A001638.P2454700477503350518

`A057077(n+1)+A057077(n)+A000032(n)`
-/

namespace A001638.P2454700477503350518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) + (A057077 n + A000032 n)

end

end A001638.P2454700477503350518

namespace A001638

/-- `A057077(n+1)+A057077(n)+A000032(n)` -/
def P2454700477503350518.Spec : Prop :=
  ∀ n, P2454700477503350518.a n = A001638 n

end A001638

/-! ## A001638.P3460074980631540161

`A074662(n)+A074662(n)-Δ[A000071(n+1)]`
-/

namespace A001638.P3460074980631540161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n + (A074662 n - (f1 (n + 1) - f1 n))

end

end A001638.P3460074980631540161

namespace A001638

/-- `A074662(n)+A074662(n)-Δ[A000071(n+1)]` -/
def P3460074980631540161.Spec : Prop :=
  ∀ n, P3460074980631540161.a n = A001638 n

end A001638

/-! ## A001638.P4363378436175440781

`A000032(A026741(n))^A000034(A016777(n))`
-/

namespace A001638.P4363378436175440781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A026741 n).toNat : ℚ) ^ (A000034 (A016777 n).toNat : ℤ)

end

end A001638.P4363378436175440781

namespace A001638

/-- `A000032(A026741(n))^A000034(A016777(n))` -/
def P4363378436175440781.Spec : Prop :=
  ∀ n, P4363378436175440781.a n = (A001638 n : ℚ)

end A001638

/-! ## A001638.P15201577205113024433

`A000032(A026741(n))^A263844(A188375(n+2))`
-/

namespace A001638.P15201577205113024433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A026741 n).toNat : ℚ) ^ (A263844 (A188375 (n + 2)).toNat : ℤ)

end

end A001638.P15201577205113024433

namespace A001638

/-- `A000032(A026741(n))^A263844(A188375(n+2))` -/
def P15201577205113024433.Spec : Prop :=
  ∀ n, P15201577205113024433.a n = (A001638 n : ℚ)

end A001638

/-! ## A001638.P17614800234364943518

`5*A000045(n-1)-a(n-2)` with `a(0)=4, a(1)=1`
-/

namespace A001638.P17614800234364943518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  5 * A000045 (n - 1) - a (n - 2)

end

end A001638.P17614800234364943518

namespace A001638

/-- `5*A000045(n-1)-a(n-2)` -/
def P17614800234364943518.Spec : Prop :=
  ∀ n, P17614800234364943518.a n = A001638 n

end A001638

/-! ## A001638.P4339216849463032908

`2*A074662(n)-A000045(n)`
-/

namespace A001638.P4339216849463032908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074662 n - A000045 n

end

end A001638.P4339216849463032908

namespace A001638

/-- `2*A074662(n)-A000045(n)` -/
def P4339216849463032908.Spec : Prop :=
  ∀ n, P4339216849463032908.a n = A001638 n

end A001638

/-! ## A001638.P12290958108184973686

`2*A074662(n)-Δ[A000071(n+1)]`
-/

namespace A001638.P12290958108184973686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074662 n - (f1 (n + 1) - f1 n)

end

end A001638.P12290958108184973686

namespace A001638

/-- `2*A074662(n)-Δ[A000071(n+1)]` -/
def P12290958108184973686.Spec : Prop :=
  ∀ n, P12290958108184973686.a n = A001638 n

end A001638

/-! ## A001638.P13884932423644704581

`A302603(n+1)-A000225(n)`
-/

namespace A001638.P13884932423644704581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302603 (n + 1) - A000225 n

end

end A001638.P13884932423644704581

namespace A001638

/-- `A302603(n+1)-A000225(n)` -/
def P13884932423644704581.Spec : Prop :=
  ∀ n, P13884932423644704581.a n = A001638 n

end A001638

/-! ## A001638.P2726076314613056488

`A127672(∑[n])+A000032(n)`
-/

namespace A001638.P2726076314613056488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (∑ j ∈ Finset.range (n + 1), f1 j) + A000032 n

end

end A001638.P2726076314613056488

namespace A001638

/-- `A127672(∑[n])+A000032(n)` -/
def P2726076314613056488.Spec : Prop :=
  ∀ n, P2726076314613056488.a n = A001638 n

end A001638

/-!
# A001639: A Fielder sequence. a(n) = a(n-1) + a(n-3) + a(n-4) + a(n-5), n >= 6.

The programs for A001639, the canonical program `A001639.P15108191825825944077` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001639 has offset 1).

The definition of A001639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)+a(n-5)` (program `A001639.P15108191825825944077`, by `A001639.P15108191825825944077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001639.P15108191825825944077

`a(n-1)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=9, a(4)=16`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001639

/-- `a(n-1)+a(n-3)+a(n-4)+a(n-5)` -/
def P15108191825825944077.Spec : Prop :=
  ∀ n, (P15108191825825944077.a n : ℤ) = A001639 (n + 1)

theorem P15108191825825944077.correct : P15108191825825944077.Spec := by
  intro n
  simp only [A001639, Nat.add_sub_cancel]

end A001639

/-!
# A001641: A Fielder sequence: a(n) = a(n-1) + a(n-2) + a(n-4).

The programs for A001641, the canonical program `A001641.P5017674011108188133` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001641 has offset 1).

The definition of A001641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A001641.P5017674011108188133`, by `A001641.P5017674011108188133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001641.P5017674011108188133

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001641

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P5017674011108188133.Spec : Prop :=
  ∀ n, (P5017674011108188133.a n : ℤ) = A001641 (n + 1)

theorem P5017674011108188133.correct : P5017674011108188133.Spec := by
  intro n
  simp only [A001641, Nat.add_sub_cancel]

end A001641

/-! ## A001641.P7668845898201194650

`ogf((1+2x+4x^3)/(1-x-x^2-x^4))`
-/

namespace A001641.P7668845898201194650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 4] [1, -1, -1, 0, -1] n

end

end A001641.P7668845898201194650

namespace A001641

/-- `ogf((1+2x+4x^3)/(1-x-x^2-x^4))` -/
def P7668845898201194650.Spec : Prop :=
  ∀ n, P7668845898201194650.a n = A001641 (n + 1)

end A001641

/-! ## A001641.P1414991422580160381

`∑{d}[n+1, #*A060166(#)]`
-/

namespace A001641.P1414991422580160381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060166 d

end

end A001641.P1414991422580160381

namespace A001641

/-- `∑{d}[n+1, #*A060166(#)]` -/
def P1414991422580160381.Spec : Prop :=
  ∀ n, P1414991422580160381.a n = A001641 (n + 1)

end A001641

/-! ## A001641.P17853877238134710285

`A259967(n+1)+(-1)^(n+1)`
-/

namespace A001641.P17853877238134710285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259967 (n + 1) + (-1) ^ (n + 1)

end

end A001641.P17853877238134710285

namespace A001641

/-- `A259967(n+1)+(-1)^(n+1)` -/
def P17853877238134710285.Spec : Prop :=
  ∀ n, P17853877238134710285.a n = A001641 (n + 1)

end A001641

/-! ## A001641.P15417173482665811097

`abs(A033999(n)-A001608(A103517(n)))`
-/

namespace A001641.P15417173482665811097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n - A001608 (A103517 n).toNat|

end

end A001641.P15417173482665811097

namespace A001641

/-- `abs(A033999(n)-A001608(A103517(n)))` -/
def P15417173482665811097.Spec : Prop :=
  ∀ n, P15417173482665811097.a n = A001641 (n + 1)

end A001641

/-! ## A001641.P11714153781947405811

`A001608(A004277(n+1))-A033999(n)`
-/

namespace A001641.P11714153781947405811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (A004277 (n + 1)).toNat - A033999 n

end

end A001641.P11714153781947405811

namespace A001641

/-- `A001608(A004277(n+1))-A033999(n)` -/
def P11714153781947405811.Spec : Prop :=
  ∀ n, P11714153781947405811.a n = A001641 (n + 1)

end A001641

/-! ## A001641.P7299612207930040012

`A033999(n+1)+A001608(A004277(n+1))`
-/

namespace A001641.P7299612207930040012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A001608 (A004277 (n + 1)).toNat

end

end A001641.P7299612207930040012

namespace A001641

/-- `A033999(n+1)+A001608(A004277(n+1))` -/
def P7299612207930040012.Spec : Prop :=
  ∀ n, P7299612207930040012.a n = A001641 (n + 1)

end A001641

/-! ## A001641.P966584488076451847

`A001608(2*(n+1))+A000217(n)-A125577(n)`
-/

namespace A001641.P966584488076451847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * (n + 1)) + (A000217 n - A125577 n)

end

end A001641.P966584488076451847

namespace A001641

/-- `A001608(2*(n+1))+A000217(n)-A125577(n)` -/
def P966584488076451847.Spec : Prop :=
  ∀ n, P966584488076451847.a n = A001641 (n + 1)

end A001641

/-!
# A001642: A Fielder sequence.

The programs for A001642, there is no canonical definition to state claims against.
-/

/-! ## A001642.P14158479896925742683

`∑{d}[n+1, #*A060167(#)]`
-/

namespace A001642.P14158479896925742683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060167 d

end

end A001642.P14158479896925742683

/-! ## A001642.P13494962909538864953

`record[∑{d}[A002264(n)-1, #*A060167(#)]]`
-/

namespace A001642.P13494962909538864953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060167 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001642.P13494962909538864953

/-! ## A001642.P3637643786402967457

`record[∑{d}[2-A028310(n), #*A060167(#)]]`
-/

namespace A001642.P3637643786402967457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060167 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001642.P3637643786402967457

/-! ## A001642.P6113869935470508322

`record[∑{d}[2-A291769(n), #*A060167(#)]]`
-/

namespace A001642.P6113869935470508322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060167 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001642.P6113869935470508322

/-! ## A001642.P2824220657529829557

`record[∑{d}[1-A340320(n), #*A060167(#)]]`
-/

namespace A001642.P2824220657529829557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060167 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001642.P2824220657529829557

/-! ## A001642.P15373371576586861005

`record[∑{d}[1-A340327(n), #*A060167(#)]]`
-/

namespace A001642.P15373371576586861005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340327 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060167 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001642.P15373371576586861005

/-!
# A001643: A Fielder sequence.

The programs for A001643, the canonical program `A001643.P6614285391208530488` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001643 has offset 1).

The definition of A001643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001643.P13634444028660299816

`∑{d}[n+1, #*A060168(#)]`
-/

namespace A001643.P13634444028660299816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060168 d

end

end A001643.P13634444028660299816

namespace A001643

/-- `∑{d}[n+1, #*A060168(#)]` -/
def P13634444028660299816.Spec : Prop :=
  ∀ n, P13634444028660299816.a n = A001643 (n + 1)

end A001643

/-! ## A001643.P1381509898469678492

`record[∑{d}[A328399(n), #*A060168(#)]]`
-/

namespace A001643.P1381509898469678492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060168 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001643.P1381509898469678492

namespace A001643

/-- `record[∑{d}[A328399(n), #*A060168(#)]]` -/
def P1381509898469678492.Spec : Prop :=
  ∀ n, P1381509898469678492.a n = A001643 (n + 1)

end A001643

/-! ## A001643.P6614285391208530488

`A001644(n+1)-3*(-1)^n*A022003(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001643

/-- `A001644(n+1)-3*(-1)^n*A022003(n)` -/
def P6614285391208530488.Spec : Prop :=
  ∀ n, P6614285391208530488.a n = A001643 (n + 1)

theorem P6614285391208530488.correct : P6614285391208530488.Spec := by
  intro n
  simp only [A001643, Nat.add_sub_cancel]

end A001643

/-! ## A001643.P7028542325949529962

`record[∑{d}[A061579(n)-n-1, #*A060168(#)]]`
-/

namespace A001643.P7028542325949529962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℤ) * A060168 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001643.P7028542325949529962

namespace A001643

/-- `record[∑{d}[A061579(n)-n-1, #*A060168(#)]]` -/
def P7028542325949529962.Spec : Prop :=
  ∀ n, P7028542325949529962.a n = A001643 (n + 1)

end A001643

/-!
# A001644: a(n) = a(n-1) + a(n-2) + a(n-3), a(0)=3, a(1)=1, a(2)=3.

The programs for A001644, the canonical program `A001644.P17336155254844831474` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001644 has offset 0).

The definition of A001644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A001644.P17336155254844831474`, by `A001644.P17336155254844831474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001644.P17336155254844831474

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001644

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P17336155254844831474.Spec : Prop :=
  ∀ n, (P17336155254844831474.a n : ℤ) = A001644 n

theorem P17336155254844831474.correct : P17336155254844831474.Spec := by
  intro n
  simp only [A001644]

end A001644

/-! ## A001644.P12940943553996277389

`ogf((-3+2x+x^2)/(-1+x+x^2+x^3))`
-/

namespace A001644.P12940943553996277389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -1] [1, -1, -1, -1] n

end

end A001644.P12940943553996277389

namespace A001644

/-- `ogf((-3+2x+x^2)/(-1+x+x^2+x^3))` -/
def P12940943553996277389.Spec : Prop :=
  ∀ n, P12940943553996277389.a n = A001644 n

end A001644

/-! ## A001644.P16022321695339555644

`2*a(n-1)-a(n-4)` with `a(0)=3, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A001644.P16022321695339555644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3, 7] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A001644.P16022321695339555644

namespace A001644

/-- `2*a(n-1)-a(n-4)` -/
def P16022321695339555644.Spec : Prop :=
  ∀ n, P16022321695339555644.a n = A001644 n

end A001644

/-! ## A001644.P6552570552912177595

`A354784(n)+A141523(n)`
-/

namespace A001644.P6552570552912177595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 n + A141523 n

end

end A001644.P6552570552912177595

namespace A001644

/-- `A354784(n)+A141523(n)` -/
def P6552570552912177595.Spec : Prop :=
  ∀ n, P6552570552912177595.a n = A001644 n

end A001644

/-! ## A001644.P18378847357679864733

`A075092(n)-A073145(n)`
-/

namespace A001644.P18378847357679864733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 n - A073145 n

end

end A001644.P18378847357679864733

namespace A001644

/-- `A075092(n)-A073145(n)` -/
def P18378847357679864733.Spec : Prop :=
  ∀ n, P18378847357679864733.a n = A001644 n

end A001644

/-! ## A001644.P9910134542013436747

`A075418(n)-A075298(n)`
-/

namespace A001644.P9910134542013436747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075418 n - A075298 n

end

end A001644.P9910134542013436747

namespace A001644

/-- `A075418(n)-A075298(n)` -/
def P9910134542013436747.Spec : Prop :=
  ∀ n, P9910134542013436747.a n = A001644 n

end A001644

/-! ## A001644.P1432633373569080666

`A141523(n)+Δ[A000213(n)]`
-/

namespace A001644.P1432633373569080666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 n + (f1 (n + 1) - f1 n)

end

end A001644.P1432633373569080666

namespace A001644

/-- `A141523(n)+Δ[A000213(n)]` -/
def P1432633373569080666.Spec : Prop :=
  ∀ n, P1432633373569080666.a n = A001644 n

end A001644

/-! ## A001644.P12257068098653866754

`A075418(n)+A073145(n+1)`
-/

namespace A001644.P12257068098653866754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075418 n + A073145 (n + 1)

end

end A001644.P12257068098653866754

namespace A001644

/-- `A075418(n)+A073145(n+1)` -/
def P12257068098653866754.Spec : Prop :=
  ∀ n, P12257068098653866754.a n = A001644 n

end A001644

/-! ## A001644.P17854474315299076523

`A214899(n)+A001590(n+1)`
-/

namespace A001644.P17854474315299076523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + A001590 (n + 1)

end

end A001644.P17854474315299076523

namespace A001644

/-- `A214899(n)+A001590(n+1)` -/
def P17854474315299076523.Spec : Prop :=
  ∀ n, P17854474315299076523.a n = A001644 n

end A001644

/-! ## A001644.P10564700742174322031

`A141036(n)+A081172(n+1)`
-/

namespace A001644.P10564700742174322031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + A081172 (n + 1)

end

end A001644.P10564700742174322031

namespace A001644

/-- `A141036(n)+A081172(n+1)` -/
def P10564700742174322031.Spec : Prop :=
  ∀ n, P10564700742174322031.a n = A001644 n

end A001644

/-! ## A001644.P2257783336379574129

`A276658(n+1)+A081172(n)`
-/

namespace A001644.P2257783336379574129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276658 (n + 1) + A081172 n

end

end A001644.P2257783336379574129

namespace A001644

/-- `A276658(n+1)+A081172(n)` -/
def P2257783336379574129.Spec : Prop :=
  ∀ n, P2257783336379574129.a n = A001644 n

end A001644

/-! ## A001644.P12846201073984991637

`A190914(n)-A061084(n+1)`
-/

namespace A001644.P12846201073984991637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190914 n - A061084 (n + 1)

end

end A001644.P12846201073984991637

namespace A001644

/-- `A190914(n)-A061084(n+1)` -/
def P12846201073984991637.Spec : Prop :=
  ∀ n, P12846201073984991637.a n = A001644 n

end A001644

/-! ## A001644.P6701704272962703643

`A274761(n)-A001590(n+2)`
-/

namespace A001644.P6701704272962703643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n - A001590 (n + 2)

end

end A001644.P6701704272962703643

namespace A001644

/-- `A274761(n)-A001590(n+2)` -/
def P6701704272962703643.Spec : Prop :=
  ∀ n, P6701704272962703643.a n = A001644 n

end A001644

/-! ## A001644.P9075634758191822851

`A141523(n)+2*A000073(n)`
-/

namespace A001644.P9075634758191822851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141523 n + 2 * A000073 n

end

end A001644.P9075634758191822851

namespace A001644

/-- `A141523(n)+2*A000073(n)` -/
def P9075634758191822851.Spec : Prop :=
  ∀ n, P9075634758191822851.a n = A001644 n

end A001644

/-! ## A001644.P2075925231472222408

`A081172(n+3)-A100683(n)`
-/

namespace A001644.P2075925231472222408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 3) - A100683 n

end

end A001644.P2075925231472222408

namespace A001644

/-- `A081172(n+3)-A100683(n)` -/
def P2075925231472222408.Spec : Prop :=
  ∀ n, P2075925231472222408.a n = A001644 n

end A001644

/-! ## A001644.P1541497578138742016

`2*A214899(n)-A000213(n)`
-/

namespace A001644.P1541497578138742016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214899 n - A000213 n

end

end A001644.P1541497578138742016

namespace A001644

/-- `2*A214899(n)-A000213(n)` -/
def P1541497578138742016.Spec : Prop :=
  ∀ n, P1541497578138742016.a n = A001644 n

end A001644

/-! ## A001644.P162390706588433614

`A214825(n)-Δ[Δ[A001590(n)]]`
-/

namespace A001644.P162390706588433614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n - (f1 (n + 1) - f1 n)

end

end A001644.P162390706588433614

namespace A001644

/-- `A214825(n)-Δ[Δ[A001590(n)]]` -/
def P162390706588433614.Spec : Prop :=
  ∀ n, P162390706588433614.a n = A001644 n

end A001644

/-! ## A001644.P3918691866131935119

`A214899(n)+Δ[A000073(n+1)]`
-/

namespace A001644.P3918691866131935119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + (f1 (n + 1) - f1 n)

end

end A001644.P3918691866131935119

namespace A001644

/-- `A214899(n)+Δ[A000073(n+1)]` -/
def P3918691866131935119.Spec : Prop :=
  ∀ n, P3918691866131935119.a n = A001644 n

end A001644

/-! ## A001644.P11989170106902073922

`Δ[A001590(n)]+2*A000213(n)`
-/

namespace A001644.P11989170106902073922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000213 n

end

end A001644.P11989170106902073922

namespace A001644

/-- `Δ[A001590(n)]+2*A000213(n)` -/
def P11989170106902073922.Spec : Prop :=
  ∀ n, P11989170106902073922.a n = A001644 n

end A001644

/-! ## A001644.P8884084005101508655

`A000213(n+1)+Δ[Δ[A001590(n+1)]]`
-/

namespace A001644.P8884084005101508655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 1) + (f1 (n + 1) - f1 n)

end

end A001644.P8884084005101508655

namespace A001644

/-- `A000213(n+1)+Δ[Δ[A001590(n+1)]]` -/
def P8884084005101508655.Spec : Prop :=
  ∀ n, P8884084005101508655.a n = A001644 n

end A001644

/-!
# A001646: Number of self-dual codes of length 2n over GF(4).

The programs for A001646, there is no canonical definition to state claims against.
-/

/-! ## A001646.P2420684542962445472

`A175585(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A001646.P2420684542962445472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A175585 (a (n - 1) + a (n - 2)).toNat

end

end A001646.P2420684542962445472

/-! ## A001646.P7367290541346310311

`A112995(A014595(n))`
-/

namespace A001646.P7367290541346310311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A014595 n).toNat

end

end A001646.P7367290541346310311

/-! ## A001646.P1290241282137075022

`A112995(A026021(n))`
-/

namespace A001646.P1290241282137075022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A026021 n).toNat

end

end A001646.P1290241282137075022

/-! ## A001646.P2832347274765367743

`A112995(A028495(n))`
-/

namespace A001646.P2832347274765367743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A028495 n).toNat

end

end A001646.P2832347274765367743

/-! ## A001646.P430016626372949210

`A138201(A018145(n))`
-/

namespace A001646.P430016626372949210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138201 (A018145 n).toNat

end

end A001646.P430016626372949210

/-!
# A001648: Tetranacci numbers A073817 without the leading term 4.

The programs for A001648, the canonical program `A001648.P2829229819997423137` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001648 has offset 1).

The definition of A001648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001648.P2829229819997423137

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=26`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001648

/-- `2*a(n-1)-a(n-5)` -/
def P2829229819997423137.Spec : Prop :=
  ∀ n, P2829229819997423137.a n = A001648 (n + 1)

theorem P2829229819997423137.correct : P2829229819997423137.Spec := by
  intro n
  simp only [A001648, Nat.add_sub_cancel]

end A001648

/-! ## A001648.P841525894884562949

`ogf((1+2x+3x^2+4x^3)/(1-x-x^2-x^3-x^4))`
-/

namespace A001648.P841525894884562949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 4] [1, -1, -1, -1, -1] n

end

end A001648.P841525894884562949

namespace A001648

/-- `ogf((1+2x+3x^2+4x^3)/(1-x-x^2-x^3-x^4))` -/
def P841525894884562949.Spec : Prop :=
  ∀ n, P841525894884562949.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P10803286763341754454

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`
-/

namespace A001648.P10803286763341754454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 15] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 3) + a (n - 4)))

end

end A001648.P10803286763341754454

namespace A001648

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P10803286763341754454.Spec : Prop :=
  ∀ n, (P10803286763341754454.a n : ℤ) = A001648 (n + 1)

end A001648

/-! ## A001648.P9145448458353751666

`A073817(n+1)`
-/

namespace A001648.P9145448458353751666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (n + 1)

end

end A001648.P9145448458353751666

namespace A001648

/-- `A073817(n+1)` -/
def P9145448458353751666.Spec : Prop :=
  ∀ n, P9145448458353751666.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P12691987377665843676

`record[A073817(A263274(n))]`
-/

namespace A001648.P12691987377665843676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (A263274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001648.P12691987377665843676

namespace A001648

/-- `record[A073817(A263274(n))]` -/
def P12691987377665843676.Spec : Prop :=
  ∀ n, P12691987377665843676.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P14237238759697953337

`ratio[A073817(n)]*A073817(n)`
-/

namespace A001648.P14237238759697953337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A073817 n : ℚ)

end

end A001648.P14237238759697953337

namespace A001648

/-- `ratio[A073817(n)]*A073817(n)` -/
def P14237238759697953337.Spec : Prop :=
  ∀ n, P14237238759697953337.a n = (A001648 (n + 1) : ℚ)

end A001648

/-! ## A001648.P8971335716582174445

`A135492(n+1)-A000288(n)`
-/

namespace A001648.P8971335716582174445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 1) - A000288 n

end

end A001648.P8971335716582174445

namespace A001648

/-- `A135492(n+1)-A000288(n)` -/
def P8971335716582174445.Spec : Prop :=
  ∀ n, P8971335716582174445.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P13633895640385666874

`A100532(n+2)-2*A251704(n)`
-/

namespace A001648.P13633895640385666874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 2) - 2 * A251704 n

end

end A001648.P13633895640385666874

namespace A001648

/-- `A100532(n+2)-2*A251704(n)` -/
def P13633895640385666874.Spec : Prop :=
  ∀ n, P13633895640385666874.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P9155572225815700402

`A100532(n+2)-(A251703(n)+A251654(n+1))`
-/

namespace A001648.P9155572225815700402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (n + 2) - (A251703 n + A251654 (n + 1))

end

end A001648.P9155572225815700402

namespace A001648

/-- `A100532(n+2)-(A251703(n)+A251654(n+1))` -/
def P9155572225815700402.Spec : Prop :=
  ∀ n, P9155572225815700402.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P6330835034298190638

`abs(A074081(n+1))`
-/

namespace A001648.P6330835034298190638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074081 (n + 1)|

end

end A001648.P6330835034298190638

namespace A001648

/-- `abs(A074081(n+1))` -/
def P6330835034298190638.Spec : Prop :=
  ∀ n, P6330835034298190638.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P1369279571459538686

`lcm(A020985(n), A074081(n+1))`
-/

namespace A001648.P1369279571459538686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A074081 (n + 1))

end

end A001648.P1369279571459538686

namespace A001648

/-- `lcm(A020985(n), A074081(n+1))` -/
def P1369279571459538686.Spec : Prop :=
  ∀ n, (P1369279571459538686.a n : ℤ) = A001648 (n + 1)

end A001648

/-! ## A001648.P12183247876942140561

`abs(Δ[A074081(n)])-A073817(n)`
-/

namespace A001648.P12183247876942140561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A073817 n

end

end A001648.P12183247876942140561

namespace A001648

/-- `abs(Δ[A074081(n)])-A073817(n)` -/
def P12183247876942140561.Spec : Prop :=
  ∀ n, P12183247876942140561.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P15416183864545977545

`Δ[A107066(n+1)]-A251705(n)`
-/

namespace A001648.P15416183864545977545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A251705 n

end

end A001648.P15416183864545977545

namespace A001648

/-- `Δ[A107066(n+1)]-A251705(n)` -/
def P15416183864545977545.Spec : Prop :=
  ∀ n, P15416183864545977545.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P480501349194697818

`A033999(n+1)*A074081(n+1)`
-/

namespace A001648.P480501349194697818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A074081 (n + 1)

end

end A001648.P480501349194697818

namespace A001648

/-- `A033999(n+1)*A074081(n+1)` -/
def P480501349194697818.Spec : Prop :=
  ∀ n, P480501349194697818.a n = A001648 (n + 1)

end A001648

/-! ## A001648.P13427039279964620121

`A073937(n+1)/A074058(n+1)*A074081(n+1)`
-/

namespace A001648.P13427039279964620121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 (n + 1) : ℚ) / (A074058 (n + 1) : ℚ) * (A074081 (n + 1) : ℚ)

end

end A001648.P13427039279964620121

namespace A001648

/-- `A073937(n+1)/A074058(n+1)*A074081(n+1)` -/
def P13427039279964620121.Spec : Prop :=
  ∀ n, P13427039279964620121.a n = (A001648 (n + 1) : ℚ)

end A001648

/-! ## A001648.P159435728181932975

`A074081(n+1)/A074193(n+1)*A074453(n+1)`
-/

namespace A001648.P159435728181932975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074081 (n + 1) : ℚ) / (A074193 (n + 1) : ℚ) * (A074453 (n + 1) : ℚ)

end

end A001648.P159435728181932975

namespace A001648

/-- `A074081(n+1)/A074193(n+1)*A074453(n+1)` -/
def P159435728181932975.Spec : Prop :=
  ∀ n, P159435728181932975.a n = (A001648 (n + 1) : ℚ)

end A001648

/-! ## A001648.P17716101461288234644

`A106627(n+1)/A000032(n+1)`
-/

namespace A001648.P17716101461288234644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106627 (n + 1) : ℚ) / (A000032 (n + 1) : ℚ)

end

end A001648.P17716101461288234644

namespace A001648

/-- `A106627(n+1)/A000032(n+1)` -/
def P17716101461288234644.Spec : Prop :=
  ∀ n, P17716101461288234644.a n = (A001648 (n + 1) : ℚ)

end A001648

/-! ## A001648.P17032619128870671471

`A106627(n+1)/A000204(n+1)`
-/

namespace A001648.P17032619128870671471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106627 (n + 1) : ℚ) / (A000204 (n + 1) : ℚ)

end

end A001648.P17032619128870671471

namespace A001648

/-- `A106627(n+1)/A000204(n+1)` -/
def P17032619128870671471.Spec : Prop :=
  ∀ n, P17032619128870671471.a n = (A001648 (n + 1) : ℚ)

end A001648

/-! ## A001648.P1778076385329540661

`gcd(A074081(n+1), A106627(n+1))`
-/

namespace A001648.P1778076385329540661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074081 (n + 1)) (A106627 (n + 1))

end

end A001648.P1778076385329540661

namespace A001648

/-- `gcd(A074081(n+1), A106627(n+1))` -/
def P1778076385329540661.Spec : Prop :=
  ∀ n, (P1778076385329540661.a n : ℤ) = A001648 (n + 1)

end A001648

/-! ## A001648.P8163336290131429986

`A106627(n+1)/A280699(2*(n+1))`
-/

namespace A001648.P8163336290131429986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106627 (n + 1) : ℚ) / (A280699 (2 * (n + 1)) : ℚ)

end

end A001648.P8163336290131429986

namespace A001648

/-- `A106627(n+1)/A280699(2*(n+1))` -/
def P8163336290131429986.Spec : Prop :=
  ∀ n, P8163336290131429986.a n = (A001648 (n + 1) : ℚ)

end A001648

/-!
# A001649: A Fielder sequence.

The programs for A001649, there is no canonical definition to state claims against.
-/

/-! ## A001649.P6906422975301998199

`∑[A334965(∑[A078828(n)])]`
-/

namespace A001649.P6906422975301998199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001649.P6906422975301998199

/-! ## A001649.P16009985872351132092

`∑[A335944(∑[A179116(n)])]`
-/

namespace A001649.P16009985872351132092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335944 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001649.P16009985872351132092

/-! ## A001649.P12069431610294647940

`A161205(A026591(n+1))+n`
-/

namespace A001649.P12069431610294647940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A026591 (n + 1)).toNat + (n : ℤ)

end

end A001649.P12069431610294647940

/-!
# A001650: k appears k times (k odd).

The programs for A001650, the canonical program `A001650.P4146515097473183330` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001650 has offset 1).

The definition of A001650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001650.P4146515097473183330

`1+2*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001650

/-- `1+2*floor(sqrt(n))` -/
def P4146515097473183330.Spec : Prop :=
  ∀ n, (P4146515097473183330.a n : ℤ) = A001650 (n + 1)

theorem P4146515097473183330.correct : P4146515097473183330.Spec := by
  intro n
  simp only [A001650, Nat.add_sub_cancel]

end A001650

/-! ## A001650.P5755204440611284901

`or(1, floor(2*sqrt(n)))`
-/

namespace A001650.P5755204440611284901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * Real.sqrt (n : ℝ)⌋

end

end A001650.P5755204440611284901

namespace A001650

/-- `or(1, floor(2*sqrt(n)))` -/
def P5755204440611284901.Spec : Prop :=
  ∀ n, P5755204440611284901.a n = A001650 (n + 1)

end A001650

/-! ## A001650.P2987996615768363747

`xor(1, 2*floor(sqrt(n)))`
-/

namespace A001650.P2987996615768363747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.sqrt n)

end

end A001650.P2987996615768363747

namespace A001650

/-- `xor(1, 2*floor(sqrt(n)))` -/
def P2987996615768363747.Spec : Prop :=
  ∀ n, (P2987996615768363747.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P285386094607970437

`∑[dr(char[(n+1)²]+char[n²])]`
-/

namespace A001650.P285386094607970437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P285386094607970437

namespace A001650

/-- `∑[dr(char[(n+1)²]+char[n²])]` -/
def P285386094607970437.Spec : Prop :=
  ∀ n, (P285386094607970437.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P1113379980310679617

`∑[(char[(n+1)²]+char[n²])%3]`
-/

namespace A001650.P1113379980310679617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P1113379980310679617

namespace A001650

/-- `∑[(char[(n+1)²]+char[n²])%3]` -/
def P1113379980310679617.Spec : Prop :=
  ∀ n, (P1113379980310679617.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P5123797267120088410

`∑[and(3, char[(n+1)²]+char[n²])]`
-/

namespace A001650.P5123797267120088410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 ((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P5123797267120088410

namespace A001650

/-- `∑[and(3, char[(n+1)²]+char[n²])]` -/
def P5123797267120088410.Spec : Prop :=
  ∀ n, (P5123797267120088410.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P5574170521649900605

`floor(a(n-a(n-2))+2%n)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A001650.P5574170521649900605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - a (n - 2)) + 2 % n

end

end A001650.P5574170521649900605

namespace A001650

/-- `floor(a(n-a(n-2))+2%n)` -/
def P5574170521649900605.Spec : Prop :=
  ∀ n, (P5574170521649900605.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P16443084379475701013

`∑[A000122(n)]`
-/

namespace A001650.P16443084379475701013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P16443084379475701013

namespace A001650

/-- `∑[A000122(n)]` -/
def P16443084379475701013.Spec : Prop :=
  ∀ n, P16443084379475701013.a n = A001650 (n + 1)

end A001650

/-! ## A001650.P96468403180001299

`A005408(floor(sqrt(n)))`
-/

namespace A001650.P96468403180001299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Nat.sqrt n)

end

end A001650.P96468403180001299

namespace A001650

/-- `A005408(floor(sqrt(n)))` -/
def P96468403180001299.Spec : Prop :=
  ∀ n, P96468403180001299.a n = A001650 (n + 1)

theorem P96468403180001299.correct : P96468403180001299.Spec := by
  intro n
  simp only [A001650, Nat.add_sub_cancel, A001650.P96468403180001299.a, A001650.P4146515097473183330.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001650

/-! ## A001650.P17466583570898023069

`∑[abs(A002448(n))]`
-/

namespace A001650.P17466583570898023069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002448 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P17466583570898023069

namespace A001650

/-- `∑[abs(A002448(n))]` -/
def P17466583570898023069.Spec : Prop :=
  ∀ n, P17466583570898023069.a n = A001650 (n + 1)

end A001650

/-! ## A001650.P12465582361937107563

`∑[A214304(2*n)]`
-/

namespace A001650.P12465582361937107563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P12465582361937107563

namespace A001650

/-- `∑[A214304(2*n)]` -/
def P12465582361937107563.Spec : Prop :=
  ∀ n, P12465582361937107563.a n = A001650 (n + 1)

end A001650

/-! ## A001650.P1230263721156955706

`sqrt(A016754(floor(sqrt(n))))`
-/

namespace A001650.P1230263721156955706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016754 (Nat.sqrt n) : ℝ)

end

end A001650.P1230263721156955706

namespace A001650

/-- `sqrt(A016754(floor(sqrt(n))))` -/
def P1230263721156955706.Spec : Prop :=
  ∀ n, P1230263721156955706.a n = (A001650 (n + 1) : ℝ)

end A001650

/-! ## A001650.P16505846904167089438

`log2(A004171(floor(sqrt(n))))`
-/

namespace A001650.P16505846904167089438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A004171 (Nat.sqrt n) : ℝ)

end

end A001650.P16505846904167089438

namespace A001650

/-- `log2(A004171(floor(sqrt(n))))` -/
def P16505846904167089438.Spec : Prop :=
  ∀ n, P16505846904167089438.a n = (A001650 (n + 1) : ℝ)

end A001650

/-! ## A001650.P2093084414968260364

`A004273(∑[char[n²]])`
-/

namespace A001650.P2093084414968260364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001650.P2093084414968260364

namespace A001650

/-- `A004273(∑[char[n²]])` -/
def P2093084414968260364.Spec : Prop :=
  ∀ n, P2093084414968260364.a n = A001650 (n + 1)

end A001650

/-! ## A001650.P14361423305952731931

`A060747(ceil(sqrt(n+1)))`
-/

namespace A001650.P14361423305952731931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 ⌈Real.sqrt (n + 1 : ℝ)⌉.toNat

end

end A001650.P14361423305952731931

namespace A001650

/-- `A060747(ceil(sqrt(n+1)))` -/
def P14361423305952731931.Spec : Prop :=
  ∀ n, P14361423305952731931.a n = A001650 (n + 1)

end A001650

/-! ## A001650.P14003307829596505701

`∑[char[n²]+char[A007318(n)²]]`
-/

namespace A001650.P14003307829596505701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P14003307829596505701

namespace A001650

/-- `∑[char[n²]+char[A007318(n)²]]` -/
def P14003307829596505701.Spec : Prop :=
  ∀ n, (P14003307829596505701.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P10909023326369196889

`∑[abs(a(gcd(2, A000005(n))))]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A001650.P10909023326369196889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (Int.gcd 2 (A000005 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001650.P10909023326369196889

namespace A001650

/-- `∑[abs(a(gcd(2, A000005(n))))]` -/
def P10909023326369196889.Spec : Prop :=
  ∀ n, (P10909023326369196889.a n : ℤ) = A001650 (n + 1)

end A001650

/-! ## A001650.P1249337049914475361

`abs(A004277(∑[char[(n+1)²]]+1)-1)`
-/

namespace A001650.P1249337049914475361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1|

end

end A001650.P1249337049914475361

namespace A001650

/-- `abs(A004277(∑[char[(n+1)²]]+1)-1)` -/
def P1249337049914475361.Spec : Prop :=
  ∀ n, P1249337049914475361.a n = A001650 (n + 1)

end A001650

/-!
# A001651: Numbers not divisible by 3.

The programs for A001651, the canonical program `A001651.P13723075172717705446` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001651 has offset 1).

The definition of A001651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001651.P13723075172717705446

`3+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001651

/-- `3+a(n-2)` -/
def P13723075172717705446.Spec : Prop :=
  ∀ n, (P13723075172717705446.a n : ℤ) = A001651 (n + 1)

theorem P13723075172717705446.correct : P13723075172717705446.Spec := by
  intro n
  simp only [A001651, Nat.add_sub_cancel]

end A001651

/-! ## A001651.P976305337821679413

`n+ceil((n+1)/2)`
-/

namespace A001651.P976305337821679413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌈(n + 1 : ℚ) / 2⌉

end

end A001651.P976305337821679413

namespace A001651

/-- `n+ceil((n+1)/2)` -/
def P976305337821679413.Spec : Prop :=
  ∀ n, P976305337821679413.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P13859561608253965235

`(3*(n+1)-2+(n+1)%2)/2`
-/

namespace A001651.P13859561608253965235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 2 + (((n + 1) % 2 : ℕ) : ℤ) : ℚ) / 2

end

end A001651.P13859561608253965235

namespace A001651

/-- `(3*(n+1)-2+(n+1)%2)/2` -/
def P13859561608253965235.Spec : Prop :=
  ∀ n, P13859561608253965235.a n = (A001651 (n + 1) : ℚ)

end A001651

/-! ## A001651.P10833691291139696387

`sqrt(3*A001082(n+1)+1)`
-/

namespace A001651.P10833691291139696387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * A001082 (n + 1) + 1 : ℝ)

end

end A001651.P10833691291139696387

namespace A001651

/-- `sqrt(3*A001082(n+1)+1)` -/
def P10833691291139696387.Spec : Prop :=
  ∀ n, P10833691291139696387.a n = (A001651 (n + 1) : ℝ)

end A001651

/-! ## A001651.P2434988641522778418

`lt[n, lcm(3, n)]`
-/

namespace A001651.P2434988641522778418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001651.P2434988641522778418

namespace A001651

/-- `lt[n, lcm(3, n)]` -/
def P2434988641522778418.Spec : Prop :=
  ∀ n, (P2434988641522778418.a n : ℤ) = A001651 (n + 1)

end A001651

/-! ## A001651.P8903762940420488505

`∑[gcd(4, ∏{p}[n, #])]`
-/

namespace A001651.P8903762940420488505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001651.P8903762940420488505

namespace A001651

/-- `∑[gcd(4, ∏{p}[n, #])]` -/
def P8903762940420488505.Spec : Prop :=
  ∀ n, (P8903762940420488505.a n : ℤ) = A001651 (n + 1)

end A001651

/-! ## A001651.P7493060046694696508

`lt[0, n*n%3]`
-/

namespace A001651.P7493060046694696508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001651.P7493060046694696508

namespace A001651

/-- `lt[0, n*n%3]` -/
def P7493060046694696508.Spec : Prop :=
  ∀ n, (P7493060046694696508.a n : ℤ) = A001651 (n + 1)

end A001651

/-! ## A001651.P16981754148280827198

`ceil(3/(2*acot(n)))`
-/

namespace A001651.P16981754148280827198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (2 * SequenceMachineLib.acot (n : ℝ))⌉

end

end A001651.P16981754148280827198

namespace A001651

/-- `ceil(3/(2*acot(n)))` -/
def P16981754148280827198.Spec : Prop :=
  ∀ n, P16981754148280827198.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P2394791672395947758

`record[n^(n²%3)]`
-/

namespace A001651.P2394791672395947758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001651.P2394791672395947758

namespace A001651

/-- `record[n^(n²%3)]` -/
def P2394791672395947758.Spec : Prop :=
  ∀ n, (P2394791672395947758.a n : ℤ) = A001651 (n + 1)

end A001651

/-! ## A001651.P95972830924882127

`∑[∏{p}[n, ceil(3/#)]]`
-/

namespace A001651.P95972830924882127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈3 / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001651.P95972830924882127

namespace A001651

/-- `∑[∏{p}[n, ceil(3/#)]]` -/
def P95972830924882127.Spec : Prop :=
  ∀ n, P95972830924882127.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P6503337138436582854

`ceil(or(1, 3*n)/2)`
-/

namespace A001651.P6503337138436582854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (3 * n) : ℚ) / 2⌉

end

end A001651.P6503337138436582854

namespace A001651

/-- `ceil(or(1, 3*n)/2)` -/
def P6503337138436582854.Spec : Prop :=
  ∀ n, P6503337138436582854.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P6512922344813708584

`round(or(1, 3*n)/2)`
-/

namespace A001651.P6512922344813708584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (3 * n) : ℚ) / 2)

end

end A001651.P6512922344813708584

namespace A001651

/-- `round(or(1, 3*n)/2)` -/
def P6512922344813708584.Spec : Prop :=
  ∀ n, P6512922344813708584.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P8924561275603542322

`record[lcm(9, n+1)/9]`
-/

namespace A001651.P8924561275603542322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001651.P8924561275603542322

namespace A001651

/-- `record[lcm(9, n+1)/9]` -/
def P8924561275603542322.Spec : Prop :=
  ∀ n, P8924561275603542322.a n = (A001651 (n + 1) : ℚ)

end A001651

/-! ## A001651.P12669281937780263804

`round(or(1, n)/2+n)`
-/

namespace A001651.P12669281937780263804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / 2 + (n : ℚ))

end

end A001651.P12669281937780263804

namespace A001651

/-- `round(or(1, n)/2+n)` -/
def P12669281937780263804.Spec : Prop :=
  ∀ n, P12669281937780263804.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P13665513303276664200

`(record[or(2, n)]+n)/2`
-/

namespace A001651.P13665513303276664200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n : ℚ) / 2

end

end A001651.P13665513303276664200

namespace A001651

/-- `(record[or(2, n)]+n)/2` -/
def P13665513303276664200.Spec : Prop :=
  ∀ n, P13665513303276664200.a n = (A001651 (n + 1) : ℚ)

end A001651

/-! ## A001651.P16930347107396774579

`(record[xor(2, n)]+n)/2`
-/

namespace A001651.P16930347107396774579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n : ℚ) / 2

end

end A001651.P16930347107396774579

namespace A001651

/-- `(record[xor(2, n)]+n)/2` -/
def P16930347107396774579.Spec : Prop :=
  ∀ n, P16930347107396774579.a n = (A001651 (n + 1) : ℚ)

end A001651

/-! ## A001651.P4781480697473407168

`∑[3-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A001651.P4781480697473407168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001651.P4781480697473407168

namespace A001651

/-- `∑[3-a(n-1)]` -/
def P4781480697473407168.Spec : Prop :=
  ∀ n, P4781480697473407168.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P1868883739801993548

`(gcd(2, n)+3*n)/2`
-/

namespace A001651.P1868883739801993548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 3 * n : ℚ) / 2

end

end A001651.P1868883739801993548

namespace A001651

/-- `(gcd(2, n)+3*n)/2` -/
def P1868883739801993548.Spec : Prop :=
  ∀ n, P1868883739801993548.a n = (A001651 (n + 1) : ℚ)

end A001651

/-! ## A001651.P18358619312788668672

`∑[∑[ogf((1+x+x^2)/(1+x))]]`
-/

namespace A001651.P18358619312788668672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001651.P18358619312788668672

namespace A001651

/-- `∑[∑[ogf((1+x+x^2)/(1+x))]]` -/
def P18358619312788668672.Spec : Prop :=
  ∀ n, P18358619312788668672.a n = A001651 (n + 1)

end A001651

/-! ## A001651.P18251729998249560004

`ogf((1+x+x^2)/(1-x-x^2+x^3))`
-/

namespace A001651.P18251729998249560004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -1, 1] n

end

end A001651.P18251729998249560004

namespace A001651

/-- `ogf((1+x+x^2)/(1-x-x^2+x^3))` -/
def P18251729998249560004.Spec : Prop :=
  ∀ n, P18251729998249560004.a n = A001651 (n + 1)

end A001651

/-!
# A001652: a(n) = 6*a(n-1) - a(n-2) + 2 with a(0) = 0, a(1) = 3.

The programs for A001652, the canonical program `A001652.P6132989287930925608` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001652 has offset 0).

The definition of A001652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)+2` (program `A001652.P6132989287930925608`, by `A001652.P6132989287930925608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001652.P6132989287930925608

`6*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001652

/-- `6*a(n-1)-a(n-2)+2` -/
def P6132989287930925608.Spec : Prop :=
  ∀ n, P6132989287930925608.a n = A001652 n

theorem P6132989287930925608.correct : P6132989287930925608.Spec := by
  intro n
  simp only [A001652]

end A001652

/-! ## A001652.P12128587695632079360

`A046090(n)-1`
-/

namespace A001652.P12128587695632079360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 n - 1

end

end A001652.P12128587695632079360

namespace A001652

/-- `A046090(n)-1` -/
def P12128587695632079360.Spec : Prop :=
  ∀ n, P12128587695632079360.a n = A001652 n

end A001652

/-! ## A001652.P7331659525432274745

`(A001333(2*n+1)-1)/2`
-/

namespace A001652.P7331659525432274745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 (2 * n + 1) - 1 : ℚ) / 2

end

end A001652.P7331659525432274745

namespace A001652

/-- `(A001333(2*n+1)-1)/2` -/
def P7331659525432274745.Spec : Prop :=
  ∀ n, P7331659525432274745.a n = (A001652 n : ℚ)

end A001652

/-! ## A001652.P9511179517237051931

`(A001653(n+2)-3*A001653(n+1)-2)/4`
-/

namespace A001652.P9511179517237051931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001653 (n + 2) - 3 * A001653 (n + 1) - 2 : ℚ) / 4

end

end A001652.P9511179517237051931

namespace A001652

/-- `(A001653(n+2)-3*A001653(n+1)-2)/4` -/
def P9511179517237051931.Spec : Prop :=
  ∀ n, P9511179517237051931.a n = (A001652 n : ℚ)

end A001652

/-! ## A001652.P5674169952326689555

`(sinh((2*n+1)*log(1+sqrt(2)))-1)/2`
-/

namespace A001652.P5674169952326689555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sinh ((2 * n + 1 : ℝ) * Real.log (1 + Real.sqrt (2 : ℝ))) - 1) / 2

end

end A001652.P5674169952326689555

namespace A001652

/-- `(sinh((2*n+1)*log(1+sqrt(2)))-1)/2` -/
def P5674169952326689555.Spec : Prop :=
  ∀ n, P5674169952326689555.a n = (A001652 n : ℝ)

end A001652

/-! ## A001652.P9511903471711695641

`A055997(n+1)-1+sqrt(2*A055997(n+1)*A001108(n))`
-/

namespace A001652.P9511903471711695641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055997 (n + 1) - 1 : ℝ) + Real.sqrt (2 * A055997 (n + 1) * A001108 n : ℝ)

end

end A001652.P9511903471711695641

namespace A001652

/-- `A055997(n+1)-1+sqrt(2*A055997(n+1)*A001108(n))` -/
def P9511903471711695641.Spec : Prop :=
  ∀ n, P9511903471711695641.a n = (A001652 n : ℝ)

end A001652

/-! ## A001652.P18095416934043890250

`∑[ogf((3x-x^2)/(1-6x+x^2))]`
-/

namespace A001652.P18095416934043890250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001652.P18095416934043890250

namespace A001652

/-- `∑[ogf((3x-x^2)/(1-6x+x^2))]` -/
def P18095416934043890250.Spec : Prop :=
  ∀ n, P18095416934043890250.a n = A001652 n

end A001652

/-! ## A001652.P7579252839079693802

`ogf((3x-x^2)/(1-7x+7x^2-x^3))`
-/

namespace A001652.P7579252839079693802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -1] [1, -7, 7, -1] n

end

end A001652.P7579252839079693802

namespace A001652

/-- `ogf((3x-x^2)/(1-7x+7x^2-x^3))` -/
def P7579252839079693802.Spec : Prop :=
  ∀ n, P7579252839079693802.a n = A001652 n

end A001652

/-! ## A001652.P10214541133538894624

`2-(a(n-2)-6*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A001652.P10214541133538894624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A001652.P10214541133538894624

namespace A001652

/-- `2-(a(n-2)-6*a(n-1))` -/
def P10214541133538894624.Spec : Prop :=
  ∀ n, P10214541133538894624.a n = A001652 n

end A001652

/-! ## A001652.P16694669731562626904

`A009759(n)+3`
-/

namespace A001652.P16694669731562626904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009759 n + 3

end

end A001652.P16694669731562626904

namespace A001652

/-- `A009759(n)+3` -/
def P16694669731562626904.Spec : Prop :=
  ∀ n, P16694669731562626904.a n = A001652 n

end A001652

/-! ## A001652.P422478882460879719

`A097075(Δ[n²])`
-/

namespace A001652.P422478882460879719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001652.P422478882460879719

namespace A001652

/-- `A097075(Δ[n²])` -/
def P422478882460879719.Spec : Prop :=
  ∀ n, P422478882460879719.a n = A001652 n

end A001652

/-! ## A001652.P1785871274537259

`A261116(Δ[n²])`
-/

namespace A001652.P1785871274537259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001652.P1785871274537259

namespace A001652

/-- `A261116(Δ[n²])` -/
def P1785871274537259.Spec : Prop :=
  ∀ n, P1785871274537259.a n = A001652 n

end A001652

/-! ## A001652.P266592446095603941

`A182435(n+1)-1`
-/

namespace A001652.P266592446095603941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 (n + 1) - 1

end

end A001652.P266592446095603941

namespace A001652

/-- `A182435(n+1)-1` -/
def P266592446095603941.Spec : Prop :=
  ∀ n, P266592446095603941.a n = A001652 n

end A001652

/-! ## A001652.P13416317412063384817

`A024537(2*n)-1`
-/

namespace A001652.P13416317412063384817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (2 * n) - 1

end

end A001652.P13416317412063384817

namespace A001652

/-- `A024537(2*n)-1` -/
def P13416317412063384817.Spec : Prop :=
  ∀ n, P13416317412063384817.a n = A001652 n

end A001652

/-! ## A001652.P11973769649182745990

`A077921(2*n)-1`
-/

namespace A001652.P11973769649182745990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 (2 * n) - 1

end

end A001652.P11973769649182745990

namespace A001652

/-- `A077921(2*n)-1` -/
def P11973769649182745990.Spec : Prop :=
  ∀ n, P11973769649182745990.a n = A001652 n

end A001652

/-! ## A001652.P5587586212821750272

`(A002315(n)-1)/2`
-/

namespace A001652.P5587586212821750272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n - 1 : ℚ) / 2

end

end A001652.P5587586212821750272

namespace A001652

/-- `(A002315(n)-1)/2` -/
def P5587586212821750272.Spec : Prop :=
  ∀ n, P5587586212821750272.a n = (A001652 n : ℚ)

end A001652

/-! ## A001652.P6392392012353174268

`A241976(n+1)/3`
-/

namespace A001652.P6392392012353174268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241976 (n + 1) : ℚ) / 3

end

end A001652.P6392392012353174268

namespace A001652

/-- `A241976(n+1)/3` -/
def P6392392012353174268.Spec : Prop :=
  ∀ n, P6392392012353174268.a n = (A001652 n : ℚ)

end A001652

/-! ## A001652.P17689386503895120944

`(A301383(n)-1)/3`
-/

namespace A001652.P17689386503895120944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301383 n - 1 : ℚ) / 3

end

end A001652.P17689386503895120944

namespace A001652

/-- `(A301383(n)-1)/3` -/
def P17689386503895120944.Spec : Prop :=
  ∀ n, P17689386503895120944.a n = (A001652 n : ℚ)

end A001652

/-! ## A001652.P14484999203474982168

`(A362545(n)-1)/4`
-/

namespace A001652.P14484999203474982168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362545 n - 1 : ℚ) / 4

end

end A001652.P14484999203474982168

namespace A001652

/-- `(A362545(n)-1)/4` -/
def P14484999203474982168.Spec : Prop :=
  ∀ n, P14484999203474982168.a n = (A001652 n : ℚ)

end A001652

/-!
# A001653: Numbers k such that 2*k^2 - 1 is a square.

The programs for A001653, the canonical program `A001653.P8010489916102110827` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001653 has offset 1).

The definition of A001653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001653.P8010489916102110827

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001653

/-- `6*a(n-1)-a(n-2)` -/
def P8010489916102110827.Spec : Prop :=
  ∀ n, P8010489916102110827.a n = A001653 (n + 1)

theorem P8010489916102110827.correct : P8010489916102110827.Spec := by
  intro n
  simp only [A001653, Nat.add_sub_cancel]

end A001653

/-! ## A001653.P5178914942075681061

`A182190(n)+1`
-/

namespace A001653.P5178914942075681061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + 1

end

end A001653.P5178914942075681061

namespace A001653

/-- `A182190(n)+1` -/
def P5178914942075681061.Spec : Prop :=
  ∀ n, P5178914942075681061.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P8018578843248676387

`A000129(2*n+1)`
-/

namespace A001653.P8018578843248676387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 1)

end

end A001653.P8018578843248676387

namespace A001653

/-- `A000129(2*n+1)` -/
def P8018578843248676387.Spec : Prop :=
  ∀ n, P8018578843248676387.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P14065541054910634966

`2*A053141(n)+1`
-/

namespace A001653.P14065541054910634966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053141 n + 1

end

end A001653.P14065541054910634966

namespace A001653

/-- `2*A053141(n)+1` -/
def P14065541054910634966.Spec : Prop :=
  ∀ n, P14065541054910634966.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P198143750723651302

`A003499(n)-a(n-1)` with `a(0)=1`
-/

namespace A001653.P198143750723651302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003499 n - a (n - 1)

end

end A001653.P198143750723651302

namespace A001653

/-- `A003499(n)-a(n-1)` -/
def P198143750723651302.Spec : Prop :=
  ∀ n, P198143750723651302.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P4908725230737873189

`A079291(n)+A079291(n+1)`
-/

namespace A001653.P4908725230737873189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 n + A079291 (n + 1)

end

end A001653.P4908725230737873189

namespace A001653

/-- `A079291(n)+A079291(n+1)` -/
def P4908725230737873189.Spec : Prop :=
  ∀ n, P4908725230737873189.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P4562353060740823909

`A001109(n+1)-A001109(n)`
-/

namespace A001653.P4562353060740823909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) - A001109 n

end

end A001653.P4562353060740823909

namespace A001653

/-- `A001109(n+1)-A001109(n)` -/
def P4562353060740823909.Spec : Prop :=
  ∀ n, P4562353060740823909.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P8740356644400118598

`A143608(n)*A143608(n+1)+1`
-/

namespace A001653.P8740356644400118598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n * A143608 (n + 1) + 1

end

end A001653.P8740356644400118598

namespace A001653

/-- `A143608(n)*A143608(n+1)+1` -/
def P8740356644400118598.Spec : Prop :=
  ∀ n, P8740356644400118598.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P12325832400227584095

`A000129(n)²+A000129(n+1)²`
-/

namespace A001653.P12325832400227584095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2 + A000129 (n + 1) ^ 2

end

end A001653.P12325832400227584095

namespace A001653

/-- `A000129(n)²+A000129(n+1)²` -/
def P12325832400227584095.Spec : Prop :=
  ∀ n, P12325832400227584095.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P17169243502751697961

`A001652(n)+A046090(n)-A001542(n)`
-/

namespace A001653.P17169243502751697961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + A046090 n - A001542 n

end

end A001653.P17169243502751697961

namespace A001653

/-- `A001652(n)+A046090(n)-A001542(n)` -/
def P17169243502751697961.Spec : Prop :=
  ∀ n, P17169243502751697961.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P3761366397177062572

`((2-sqrt(2))*(3+2*sqrt(2))^(n+1)+(2+sqrt(2))*(3-2*sqrt(2))^(n+1))/4`
-/

namespace A001653.P3761366397177062572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (2 : ℝ)) * (3 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) + (2 + Real.sqrt (2 : ℝ)) * (3 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / 4

end

end A001653.P3761366397177062572

namespace A001653

/-- `((2-sqrt(2))*(3+2*sqrt(2))^(n+1)+(2+sqrt(2))*(3-2*sqrt(2))^(n+1))/4` -/
def P3761366397177062572.Spec : Prop :=
  ∀ n, P3761366397177062572.a n = (A001653 (n + 1) : ℝ)

theorem P3761366397177062572.correct : P3761366397177062572.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001653, Nat.add_sub_cancel, A001653.P3761366397177062572.a, A001653.P8010489916102110827.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001653, Nat.add_sub_cancel, A001653.P3761366397177062572.a, A001653.P8010489916102110827.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001653

/-! ## A001653.P13502009500223492642

`ogf((1-x)/(1-6x+x^2))`
-/

namespace A001653.P13502009500223492642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 1] n

end

end A001653.P13502009500223492642

namespace A001653

/-- `ogf((1-x)/(1-6x+x^2))` -/
def P13502009500223492642.Spec : Prop :=
  ∀ n, P13502009500223492642.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P1788607479074677796

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A001653.P1788607479074677796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001653.P1788607479074677796

namespace A001653

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P1788607479074677796.Spec : Prop :=
  ∀ n, P1788607479074677796.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P5395789861064033074

`Δ[A001109(n)]`
-/

namespace A001653.P5395789861064033074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001653.P5395789861064033074

namespace A001653

/-- `Δ[A001109(n)]` -/
def P5395789861064033074.Spec : Prop :=
  ∀ n, P5395789861064033074.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P2577827767451686452

`record[A077985(n)]`
-/

namespace A001653.P2577827767451686452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001653.P2577827767451686452

namespace A001653

/-- `record[A077985(n)]` -/
def P2577827767451686452.Spec : Prop :=
  ∀ n, P2577827767451686452.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P6853735472041200389

`record[A215936(n)]`
-/

namespace A001653.P6853735472041200389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001653.P6853735472041200389

namespace A001653

/-- `record[A215936(n)]` -/
def P6853735472041200389.Spec : Prop :=
  ∀ n, P6853735472041200389.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P6455791248871030175

`A041011(2*n)`
-/

namespace A001653.P6455791248871030175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 (2 * n)

end

end A001653.P6455791248871030175

namespace A001653

/-- `A041011(2*n)` -/
def P6455791248871030175.Spec : Prop :=
  ∀ n, P6455791248871030175.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P1521369635283156633

`A077985(2*n)`
-/

namespace A001653.P1521369635283156633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (2 * n)

end

end A001653.P1521369635283156633

namespace A001653

/-- `A077985(2*n)` -/
def P1521369635283156633.Spec : Prop :=
  ∀ n, P1521369635283156633.a n = A001653 (n + 1)

end A001653

/-! ## A001653.P8078337428150502902

`A104683(2*n)`
-/

namespace A001653.P8078337428150502902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104683 (2 * n)

end

end A001653.P8078337428150502902

namespace A001653

/-- `A104683(2*n)` -/
def P8078337428150502902.Spec : Prop :=
  ∀ n, P8078337428150502902.a n = A001653 (n + 1)

end A001653

/-!
# A001654: Golden rectangle numbers: F(n) * F(n+1), where F(n) = A000045(n) (Fibonacci numbers).

The programs for A001654, the canonical program `A001654.P2587154079132953885` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001654 has offset 0).

The definition of A001654 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001654.anchor (n : ℕ) : A001654 n = ((Nat.fib n * Nat.fib (n + 1) : ℕ) : ℤ)` in `Proof.A001.A001654`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001654.P2587154079132953885

`3*a(n-1)-a(n-2)-(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001654

/-- `3*a(n-1)-a(n-2)-(-1)^n` -/
def P2587154079132953885.Spec : Prop :=
  ∀ n, P2587154079132953885.a n = A001654 n

theorem P2587154079132953885.correct : P2587154079132953885.Spec := by
  intro n
  simp only [A001654]

end A001654

/-! ## A001654.P12137151894986155554

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A001654.P12137151894986155554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A001654.P12137151894986155554

namespace A001654

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P12137151894986155554.Spec : Prop :=
  ∀ n, P12137151894986155554.a n = A001654 n

end A001654

/-! ## A001654.P725219768507534681

`a(n-1)+A007598(n)` with `a(0)=0`
-/

namespace A001654.P725219768507534681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A007598 n

end

end A001654.P725219768507534681

namespace A001654

/-- `a(n-1)+A007598(n)` -/
def P725219768507534681.Spec : Prop :=
  ∀ n, P725219768507534681.a n = A001654 n

end A001654

/-! ## A001654.P1212019836590392658

`a(n-1)+A000045(n)²` with `a(0)=0`
-/

namespace A001654.P1212019836590392658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000045 n ^ 2

end

end A001654.P1212019836590392658

namespace A001654

/-- `a(n-1)+A000045(n)²` -/
def P1212019836590392658.Spec : Prop :=
  ∀ n, P1212019836590392658.a n = A001654 n

end A001654

/-! ## A001654.P2329815713709341406

`A226205(n+1)+(-1)^(n+1)`
-/

namespace A001654.P2329815713709341406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) + (-1) ^ (n + 1)

end

end A001654.P2329815713709341406

namespace A001654

/-- `A226205(n+1)+(-1)^(n+1)` -/
def P2329815713709341406.Spec : Prop :=
  ∀ n, P2329815713709341406.a n = A001654 n

end A001654

/-! ## A001654.P14125599591160755176

`A000045(n)*A000045(1+n)`
-/

namespace A001654.P14125599591160755176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000045 (1 + n)

end

end A001654.P14125599591160755176

namespace A001654

/-- `A000045(n)*A000045(1+n)` -/
def P14125599591160755176.Spec : Prop :=
  ∀ n, P14125599591160755176.a n = A001654 n

end A001654

/-! ## A001654.P3817456717437384548

`A000045(n)*A000045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001654.P3817456717437384548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000045 (n + 1)

end

end A001654.P3817456717437384548

namespace A001654

/-- `A000045(n)*A000045(n+1)` -/
def P3817456717437384548.Spec : Prop :=
  ∀ n, P3817456717437384548.a n = A001654 n

end A001654

/-! ## A001654.P4129713643444847053

`(A002878(n)-(-1)^n)/5`
-/

namespace A001654.P4129713643444847053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002878 n - (-1) ^ n : ℚ) / 5

end

end A001654.P4129713643444847053

namespace A001654

/-- `(A002878(n)-(-1)^n)/5` -/
def P4129713643444847053.Spec : Prop :=
  ∀ n, P4129713643444847053.a n = (A001654 n : ℚ)

end A001654

/-! ## A001654.P13721150001608104825

`(2*A059840(n+2)-A027941(n))/3`
-/

namespace A001654.P13721150001608104825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A059840 (n + 2) - A027941 n : ℚ) / 3

end

end A001654.P13721150001608104825

namespace A001654

/-- `(2*A059840(n+2)-A027941(n))/3` -/
def P13721150001608104825.Spec : Prop :=
  ∀ n, P13721150001608104825.a n = (A001654 n : ℚ)

end A001654

/-! ## A001654.P18207511085131798826

`ogf(x/(1-2x-2x^2+x^3))`
-/

namespace A001654.P18207511085131798826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -2, 1] n

end

end A001654.P18207511085131798826

namespace A001654

/-- `ogf(x/(1-2x-2x^2+x^3))` -/
def P18207511085131798826.Spec : Prop :=
  ∀ n, P18207511085131798826.a n = A001654 n

end A001654

/-! ## A001654.P18299126656079174824

`∑[round(ϕ^n/sqrt(5))²]`
-/

namespace A001654.P18299126656079174824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001654.P18299126656079174824

namespace A001654

/-- `∑[round(ϕ^n/sqrt(5))²]` -/
def P18299126656079174824.Spec : Prop :=
  ∀ n, P18299126656079174824.a n = A001654 n

end A001654

/-! ## A001654.P10542742552066789547

`record[a(n-2)-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001654.P10542742552066789547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A001654.P10542742552066789547

namespace A001654

/-- `record[a(n-2)-a(n-1)]+a(n-2)` -/
def P10542742552066789547.Spec : Prop :=
  ∀ n, P10542742552066789547.a n = A001654 n

end A001654

/-! ## A001654.P14736291936282735969

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A001654.P14736291936282735969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A001654.P14736291936282735969

namespace A001654

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P14736291936282735969.Spec : Prop :=
  ∀ n, P14736291936282735969.a n = A001654 n

end A001654

/-! ## A001654.P8846371929861180162

`(3-a(n-3)/a(n-2))*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A001654.P8846371929861180162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (3 - a (n - 3) / a (n - 2)) * a (n - 1)

end

end A001654.P8846371929861180162

namespace A001654

/-- `(3-a(n-3)/a(n-2))*a(n-1)` -/
def P8846371929861180162.Spec : Prop :=
  ∀ n, P8846371929861180162.a n = (A001654 n : ℚ)

end A001654

/-! ## A001654.P8839223740825672231

`a(n-1)+(a(n-1)/gcd(a(n-1), a(n-2)))²` with `a(0)=0, a(1)=1`
-/

namespace A001654.P8839223740825672231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ)) ^ 2

end

end A001654.P8839223740825672231

namespace A001654

/-- `a(n-1)+(a(n-1)/gcd(a(n-1), a(n-2)))²` -/
def P8839223740825672231.Spec : Prop :=
  ∀ n, P8839223740825672231.a n = (A001654 n : ℚ)

end A001654

/-! ## A001654.P5542290961167980994

`a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001654.P5542290961167980994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 1) / (1 - a (n - 2) / a (n - 1))

end

end A001654.P5542290961167980994

namespace A001654

/-- `a(n-1)+a(n-1)/(1-a(n-2)/a(n-1))` -/
def P5542290961167980994.Spec : Prop :=
  ∀ n, P5542290961167980994.a n = (A001654 n : ℚ)

end A001654

/-! ## A001654.P16412420809392530509

`a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A001654.P16412420809392530509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 1) / (a (n - 2) / a (n - 1) - 1)

end

end A001654.P16412420809392530509

namespace A001654

/-- `a(n-1)-a(n-1)/(a(n-2)/a(n-1)-1)` -/
def P16412420809392530509.Spec : Prop :=
  ∀ n, P16412420809392530509.a n = (A001654 n : ℚ)

end A001654

/-! ## A001654.P11223427520580561999

`A074677(2*n)`
-/

namespace A001654.P11223427520580561999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n)

end

end A001654.P11223427520580561999

namespace A001654

/-- `A074677(2*n)` -/
def P11223427520580561999.Spec : Prop :=
  ∀ n, P11223427520580561999.a n = A001654 n

end A001654

/-! ## A001654.P16306080482140758139

`A107387(n+2)-1`
-/

namespace A001654.P16306080482140758139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (n + 2) - 1

end

end A001654.P16306080482140758139

namespace A001654

/-- `A107387(n+2)-1` -/
def P16306080482140758139.Spec : Prop :=
  ∀ n, P16306080482140758139.a n = A001654 n

end A001654

/-!
# A001655: Fibonomial coefficients: a(n) = F(n+1) * F(n+2) * F(n+3)/2, where F() = Fibonacci numbers A000045.

The programs for A001655, the canonical program `A001655.P8259304723243497872` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001655 has offset 0).

The definition of A001655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001655.P8259304723243497872

`1/2*A065563(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001655

/-- `1/2*A065563(n+1)` -/
def P8259304723243497872.Spec : Prop :=
  ∀ n, P8259304723243497872.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P17373214470820637528

`4*a(n-1)+a(n-2)+(-1)^n*A000045(n+1)` with `a(0)=1, a(1)=3`
-/

namespace A001655.P17373214470820637528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) + a (n - 2) + (-1) ^ n * A000045 (n + 1)

end

end A001655.P17373214470820637528

namespace A001655

/-- `4*a(n-1)+a(n-2)+(-1)^n*A000045(n+1)` -/
def P17373214470820637528.Spec : Prop :=
  ∀ n, P17373214470820637528.a n = A001655 n

end A001655

/-! ## A001655.P6139296747922830439

`A000045(n+1)*A000045(n+2)*A000045(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001655.P6139296747922830439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) * A000045 (n + 2) * A000045 (n + 3) : ℚ) / 2

end

end A001655.P6139296747922830439

namespace A001655

/-- `A000045(n+1)*A000045(n+2)*A000045(n+3)/2` -/
def P6139296747922830439.Spec : Prop :=
  ∀ n, P6139296747922830439.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P9666709481261905944

`ogf(1/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A001655.P9666709481261905944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -6, 3, 1] n

end

end A001655.P9666709481261905944

namespace A001655

/-- `ogf(1/(1-3x-6x^2+3x^3+x^4))` -/
def P9666709481261905944.Spec : Prop :=
  ∀ n, P9666709481261905944.a n = A001655 n

end A001655

/-! ## A001655.P13507570521669113385

`∑[A066258(n+1)]`
-/

namespace A001655.P13507570521669113385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001655.P13507570521669113385

namespace A001655

/-- `∑[A066258(n+1)]` -/
def P13507570521669113385.Spec : Prop :=
  ∀ n, P13507570521669113385.a n = A001655 n

end A001655

/-! ## A001655.P4251172933803775980

`A065563(n+1)/2`
-/

namespace A001655.P4251172933803775980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065563 (n + 1) : ℚ) / 2

end

end A001655.P4251172933803775980

namespace A001655

/-- `A065563(n+1)/2` -/
def P4251172933803775980.Spec : Prop :=
  ∀ n, P4251172933803775980.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P17457022142043086968

`abs(Δ[A363753(n+1)])`
-/

namespace A001655.P17457022142043086968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001655.P17457022142043086968

namespace A001655

/-- `abs(Δ[A363753(n+1)])` -/
def P17457022142043086968.Spec : Prop :=
  ∀ n, P17457022142043086968.a n = A001655 n

end A001655

/-! ## A001655.P2624502406604572562

`A066259(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A001655.P2624502406604572562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066259 (n + 1) - a (n - 1)

end

end A001655.P2624502406604572562

namespace A001655

/-- `A066259(n+1)-a(n-1)` -/
def P2624502406604572562.Spec : Prop :=
  ∀ n, P2624502406604572562.a n = A001655 n

end A001655

/-! ## A001655.P8894282934976516937

`A097924(n)-Δ[A099014(n)]`
-/

namespace A001655.P8894282934976516937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n - (f1 (n + 1) - f1 n)

end

end A001655.P8894282934976516937

namespace A001655

/-- `A097924(n)-Δ[A099014(n)]` -/
def P8894282934976516937.Spec : Prop :=
  ∀ n, P8894282934976516937.a n = A001655 n

end A001655

/-! ## A001655.P16371964406050639134

`A215038(n)+A005968(n+1)`
-/

namespace A001655.P16371964406050639134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215038 n + A005968 (n + 1)

end

end A001655.P16371964406050639134

namespace A001655

/-- `A215038(n)+A005968(n+1)` -/
def P16371964406050639134.Spec : Prop :=
  ∀ n, P16371964406050639134.a n = A001655 n

end A001655

/-! ## A001655.P17749986641627123150

`A001076(n+1)-A066258(n)`
-/

namespace A001655.P17749986641627123150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) - A066258 n

end

end A001655.P17749986641627123150

namespace A001655

/-- `A001076(n+1)-A066258(n)` -/
def P17749986641627123150.Spec : Prop :=
  ∀ n, P17749986641627123150.a n = A001655 n

end A001655

/-! ## A001655.P462936166204927438

`A020695(n)/2*Δ[A064831(n)]`
-/

namespace A001655.P462936166204927438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020695 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A001655.P462936166204927438

namespace A001655

/-- `A020695(n)/2*Δ[A064831(n)]` -/
def P462936166204927438.Spec : Prop :=
  ∀ n, P462936166204927438.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P5177668722600707127

`∑[A000045(n+1)*A001654(n+1)]`
-/

namespace A001655.P5177668722600707127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001655.P5177668722600707127

namespace A001655

/-- `∑[A000045(n+1)*A001654(n+1)]` -/
def P5177668722600707127.Spec : Prop :=
  ∀ n, P5177668722600707127.a n = A001655 n

end A001655

/-! ## A001655.P15572299223349602856

`∑[A001654(n+1)*A212804(n+2)]`
-/

namespace A001655.P15572299223349602856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A212804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001655.P15572299223349602856

namespace A001655

/-- `∑[A001654(n+1)*A212804(n+2)]` -/
def P15572299223349602856.Spec : Prop :=
  ∀ n, P15572299223349602856.a n = A001655 n

end A001655

/-! ## A001655.P12638809591550850226

`A220362(n+1)+A226958(n+1)/2`
-/

namespace A001655.P12638809591550850226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220362 (n + 1) : ℚ) + (A226958 (n + 1) : ℚ) / 2

end

end A001655.P12638809591550850226

namespace A001655

/-- `A220362(n+1)+A226958(n+1)/2` -/
def P12638809591550850226.Spec : Prop :=
  ∀ n, P12638809591550850226.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P7185347250203221591

`A001654(n+2)*A212804(n+2)/2`
-/

namespace A001655.P7185347250203221591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 (n + 2) * A212804 (n + 2) : ℚ) / 2

end

end A001655.P7185347250203221591

namespace A001655

/-- `A001654(n+2)*A212804(n+2)/2` -/
def P7185347250203221591.Spec : Prop :=
  ∀ n, P7185347250203221591.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P14762206921467723183

`lcm(A001654(n+1), A059929(n+1))/2`
-/

namespace A001655.P14762206921467723183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001654 (n + 1)) (A059929 (n + 1)) : ℚ) / 2

end

end A001655.P14762206921467723183

namespace A001655

/-- `lcm(A001654(n+1), A059929(n+1))/2` -/
def P14762206921467723183.Spec : Prop :=
  ∀ n, P14762206921467723183.a n = (A001655 n : ℚ)

end A001655

/-! ## A001655.P11918579196618673505

`∑[A000045(n+1)²*A000045(n+2)]`
-/

namespace A001655.P11918579196618673505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 * A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001655.P11918579196618673505

namespace A001655

/-- `∑[A000045(n+1)²*A000045(n+2)]` -/
def P11918579196618673505.Spec : Prop :=
  ∀ n, P11918579196618673505.a n = A001655 n

end A001655

/-! ## A001655.P8462268447842451573

`∑[A000045(n+1)*∑[A007598(n+1)]]`
-/

namespace A001655.P8462268447842451573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001655.P8462268447842451573

namespace A001655

/-- `∑[A000045(n+1)*∑[A007598(n+1)]]` -/
def P8462268447842451573.Spec : Prop :=
  ∀ n, P8462268447842451573.a n = A001655 n

end A001655

/-! ## A001655.P8752687950704322327

`∑[A000045(n+1)*∑[A006498(2*n)]]`
-/

namespace A001655.P8752687950704322327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001655.P8752687950704322327

namespace A001655

/-- `∑[A000045(n+1)*∑[A006498(2*n)]]` -/
def P8752687950704322327.Spec : Prop :=
  ∀ n, P8752687950704322327.a n = A001655 n

end A001655

/-!
# A001656: Fibonomial coefficients.

The programs for A001656, the canonical program `A001656.P8476590417847566294` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001656 has offset 0).

The definition of A001656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001656.P8476590417847566294

`(A000045(n+3)²-A000045(n+2)²)*A000045(n+3)*A000045(n+2)/6`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001656

/-- `(A000045(n+3)²-A000045(n+2)²)*A000045(n+3)*A000045(n+2)/6` -/
def P8476590417847566294.Spec : Prop :=
  ∀ n, P8476590417847566294.a n = (A001656 n : ℚ)

end A001656

/-! ## A001656.P10933016233148360249

`A177727(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A001656.P10933016233148360249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177727 n + 2 * a (n - 1)

end

end A001656.P10933016233148360249

namespace A001656

/-- `A177727(n)+2*a(n-1)` -/
def P10933016233148360249.Spec : Prop :=
  ∀ n, P10933016233148360249.a n = A001656 n

end A001656

/-! ## A001656.P14231433301877675275

`A000045(n+4)/A000045(n)*a(n-1)` with `a(0)=1`
-/

namespace A001656.P14231433301877675275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000045 (n + 4) : ℚ) / (A000045 n : ℚ) * a (n - 1)

end

end A001656.P14231433301877675275

namespace A001656

/-- `A000045(n+4)/A000045(n)*a(n-1)` -/
def P14231433301877675275.Spec : Prop :=
  ∀ n, P14231433301877675275.a n = (A001656 n : ℚ)

end A001656

/-! ## A001656.P7036807797025522988

`A228873(n+1)/6`
-/

namespace A001656.P7036807797025522988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228873 (n + 1) : ℚ) / 6

end

end A001656.P7036807797025522988

namespace A001656

/-- `A228873(n+1)/6` -/
def P7036807797025522988.Spec : Prop :=
  ∀ n, P7036807797025522988.a n = (A001656 n : ℚ)

end A001656

/-! ## A001656.P13209018633175333308

`record[A055870(A133263(n)+2)]`
-/

namespace A001656.P13209018633175333308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055870 (A133263 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001656.P13209018633175333308

namespace A001656

/-- `record[A055870(A133263(n)+2)]` -/
def P13209018633175333308.Spec : Prop :=
  ∀ n, P13209018633175333308.a n = A001656 n

end A001656

/-!
# A001657: Fibonomial coefficients: column 5 of A010048.

The programs for A001657, the canonical program `A001657.P14719120247077036479` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001657 has offset 0).

The definition of A001657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001657.P14719120247077036479

`A000045(n+3)*(A000045(n+3)^4-1)/30`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001657

/-- `A000045(n+3)*(A000045(n+3)^4-1)/30` -/
def P14719120247077036479.Spec : Prop :=
  ∀ n, P14719120247077036479.a n = (A001657 n : ℚ)

end A001657

/-! ## A001657.P1995096603772016138

`A001656(n)/5*A020712(n)`
-/

namespace A001657.P1995096603772016138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001656 n : ℚ) / 5 * (A020712 n : ℚ)

end

end A001657.P1995096603772016138

namespace A001657

/-- `A001656(n)/5*A020712(n)` -/
def P1995096603772016138.Spec : Prop :=
  ∀ n, P1995096603772016138.a n = (A001657 n : ℚ)

end A001657

/-! ## A001657.P15628070412740824444

`A010048(eq[6, A002260(n+1)])`
-/

namespace A001657.P15628070412740824444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001657.P15628070412740824444

namespace A001657

/-- `A010048(eq[6, A002260(n+1)])` -/
def P15628070412740824444.Spec : Prop :=
  ∀ n, P15628070412740824444.a n = A001657 n

end A001657

/-! ## A001657.P174194237492244400

`A010048(eq[5, A025581(n)])`
-/

namespace A001657.P174194237492244400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001657.P174194237492244400

namespace A001657

/-- `A010048(eq[5, A025581(n)])` -/
def P174194237492244400.Spec : Prop :=
  ∀ n, P174194237492244400.a n = A001657 n

end A001657

/-!
# A001658: Fibonomial coefficients.

The programs for A001658, the canonical program `A001658.P17339077976542849952` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001658 has offset 0).

The definition of A001658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001658.P17339077976542849952

`(A000045(n+5)²-A000045(n+4)²)*(A000045(n+3)^4-1)/240`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001658

/-- `(A000045(n+5)²-A000045(n+4)²)*(A000045(n+3)^4-1)/240` -/
def P17339077976542849952.Spec : Prop :=
  ∀ n, P17339077976542849952.a n = (A001658 n : ℚ)

end A001658

/-! ## A001658.P15786480827370689225

`A000045(n+1)*A000045(n+2)*A000045(n+3)*A000045(n+4)*A000045(n+5)*A000045(n+6)/240`
-/

namespace A001658.P15786480827370689225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) * A000045 (n + 2) * A000045 (n + 3) * A000045 (n + 4) * A000045 (n + 5) * A000045 (n + 6) : ℚ) / 240

end

end A001658.P15786480827370689225

namespace A001658

/-- `A000045(n+1)*A000045(n+2)*A000045(n+3)*A000045(n+4)*A000045(n+5)*A000045(n+6)/240` -/
def P15786480827370689225.Spec : Prop :=
  ∀ n, P15786480827370689225.a n = (A001658 n : ℚ)

end A001658

/-! ## A001658.P5850260099223014181

`A010048(A166136(n+5))`
-/

namespace A001658.P5850260099223014181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A166136 (n + 5)).toNat

end

end A001658.P5850260099223014181

namespace A001658

/-- `A010048(A166136(n+5))` -/
def P5850260099223014181.Spec : Prop :=
  ∀ n, P5850260099223014181.a n = A001658 n

end A001658

/-! ## A001658.P1993488641275164419

`A010048(eq[6, A002262(n)])`
-/

namespace A001658.P1993488641275164419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001658.P1993488641275164419

namespace A001658

/-- `A010048(eq[6, A002262(n)])` -/
def P1993488641275164419.Spec : Prop :=
  ∀ n, P1993488641275164419.a n = A001658 n

end A001658

/-! ## A001658.P15271091786178688134

`A010048(eq[7, A002260(n+1)])`
-/

namespace A001658.P15271091786178688134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001658.P15271091786178688134

namespace A001658

/-- `A010048(eq[7, A002260(n+1)])` -/
def P15271091786178688134.Spec : Prop :=
  ∀ n, P15271091786178688134.a n = A001658 n

end A001658

/-!
# A001659: Expansion of bracket function.

The programs for A001659, there is no canonical definition to state claims against.
-/

/-! ## A001659.P17711984219842147855

`A109978(∑[n]+1)`
-/

namespace A001659.P17711984219842147855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001659.P17711984219842147855

/-! ## A001659.P10582807274673445932

`A109978(A000124(n))+char[11]`
-/

namespace A001659.P10582807274673445932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109978 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001659.P10582807274673445932

/-! ## A001659.P5008288739374676325

`A178780(n)+A109978(A000124(n))`
-/

namespace A001659.P5008288739374676325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A109978 (A000124 n).toNat

end

end A001659.P5008288739374676325

/-! ## A001659.P14138300457414094375

`A185284(n)+A109978(A000124(n))`
-/

namespace A001659.P14138300457414094375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A109978 (A000124 n).toNat

end

end A001659.P14138300457414094375

/-! ## A001659.P10059992147670331501

`A109978(A000124(n))%A215076(n)`
-/

namespace A001659.P10059992147670331501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109978 (A000124 n).toNat) (A215076 n)

end

end A001659.P10059992147670331501

/-!
# A001660: Hypotenusal numbers.

The programs for A001660, there is no canonical definition to state claims against.
-/

/-! ## A001660.P10401174295843593288

`A266646(∏[A050253(n+1)])`
-/

namespace A001660.P10401174295843593288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001660.P10401174295843593288

/-! ## A001660.P17702377630977854767

`A000010(2-A122590(n+1))`
-/

namespace A001660.P17702377630977854767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 - A122590 (n + 1)).toNat

end

end A001660.P17702377630977854767

/-!
# A001661: Largest number not the sum of distinct positive n-th powers.

The programs for A001661, there is no canonical definition to state claims against.
-/

/-! ## A001661.P1712486365847253551

`A334360(n+2)-1`
-/

namespace A001661.P1712486365847253551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334360 (n + 2) - 1

end

end A001661.P1712486365847253551

/-!
# A001662: Coefficients of Airey's converging factor.

The programs for A001662, there is no canonical definition to state claims against.
-/

/-! ## A001662.P439155792730951795

`A274447(n)%record[A228904(n)]`
-/

namespace A001662.P439155792730951795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274447 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A001662.P439155792730951795

/-! ## A001662.P10313859517259233986

`A274447(n)-A033683(2^n)`
-/

namespace A001662.P10313859517259233986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274447 n - A033683 (2 ^ n)

end

end A001662.P10313859517259233986

/-! ## A001662.P204509392878083587

`A274447(n)-A036987(2^n)`
-/

namespace A001662.P204509392878083587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274447 n - A036987 (2 ^ n)

end

end A001662.P204509392878083587

/-! ## A001662.P12885905147669792

`A274447(n)-C(3, A293230(3*n+2))`
-/

namespace A001662.P12885905147669792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274447 n - (Nat.choose 3 (A293230 (3 * n + 2)).toNat : ℤ)

end

end A001662.P12885905147669792

/-! ## A001662.P4127867271880851547

`xor(A036987(A000079(n)), A274447(n))`
-/

namespace A001662.P4127867271880851547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 (A000079 n).toNat) (A274447 n)

end

end A001662.P4127867271880851547

/-!
# A001664: Quadratic coefficient of the n-th converging polynomial of Weber functions.

The programs for A001664, there is no canonical definition to state claims against.
-/

/-! ## A001664.P10908747087283380228

`A380169(eq[2, A113143(n)])`
-/

namespace A001664.P10908747087283380228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001664.P10908747087283380228

/-!
# A001665: Number of self-avoiding n-step walks on Kagome lattice.

The programs for A001665, there is no canonical definition to state claims against.
-/

/-! ## A001665.P7417194200411999909

`A027923(A057552(n))`
-/

namespace A001665.P7417194200411999909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A057552 n).toNat

end

end A001665.P7417194200411999909

/-! ## A001665.P14498294120317645932

`A027923(∑[record[A095367(n+2)]])`
-/

namespace A001665.P14498294120317645932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001665.P14498294120317645932

/-! ## A001665.P15890182079574194573

`A027923(∑[A095367(2*(n+1))])`
-/

namespace A001665.P15890182079574194573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095367 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001665.P15890182079574194573

/-!
# A001666: Number of n-step self-avoiding walks on b.c.c. lattice (version 2).

The programs for A001666, there is no canonical definition to state claims against.
-/

/-! ## A001666.P11043876358167571606

`ceil(cosh(sin(n)))*A002903(n)`
-/

namespace A001666.P11043876358167571606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A002903 n

end

end A001666.P11043876358167571606

/-! ## A001666.P1290254231195203582

`(A178334(n)+1)*A002903(n)`
-/

namespace A001666.P1290254231195203582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A002903 n

end

end A001666.P1290254231195203582

/-! ## A001666.P1129561169086895477

`A000124(A178334(n))*A002903(n)`
-/

namespace A001666.P1129561169086895477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A178334 n).toNat * A002903 n

end

end A001666.P1129561169086895477

/-! ## A001666.P13892000550239650288

`A020639(A000010(n+2))*A002903(n)`
-/

namespace A001666.P13892000550239650288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A002903 n

end

end A001666.P13892000550239650288

/-!
# A001668: Number of self-avoiding n-step walks on honeycomb lattice.

The programs for A001668, there is no canonical definition to state claims against.
-/

/-! ## A001668.P642296629575092140

`A080512(A151532(2*n+1))`
-/

namespace A001668.P642296629575092140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A151532 (2 * n + 1)).toNat

end

end A001668.P642296629575092140

/-! ## A001668.P3089459701466651721

`A004525(3*A151532(2*n+1))`
-/

namespace A001668.P3089459701466651721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A151532 (2 * n + 1)).toNat

end

end A001668.P3089459701466651721

/-! ## A001668.P17939498594173576826

`A008615(9*A151532(2*n+1))`
-/

namespace A001668.P17939498594173576826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (9 * A151532 (2 * n + 1)).toNat

end

end A001668.P17939498594173576826

/-! ## A001668.P8471817823210827099

`Δ[A006851(n)-A185114(A130058(n+1))]`
-/

namespace A001668.P8471817823210827099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006851 n - A185114 (A130058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001668.P8471817823210827099

/-!
# A001669: Number of 7-level labeled rooted trees with n leaves.

The programs for A001669, there is no canonical definition to state claims against.
-/

/-! ## A001669.P1243429540153616206

`A144150(eq[6, A025581(n)])`
-/

namespace A001669.P1243429540153616206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001669.P1243429540153616206

/-! ## A001669.P16109571616579002869

`A144150(eq[7, A193739(n)])`
-/

namespace A001669.P16109571616579002869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001669.P16109571616579002869

/-! ## A001669.P10729064019429356754

`A144150(eq[13, A099375(n)])`
-/

namespace A001669.P10729064019429356754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001669.P10729064019429356754

/-! ## A001669.P5107149993973305451

`A144150(eq[64, A130321(n)])`
-/

namespace A001669.P5107149993973305451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001669.P5107149993973305451

/-! ## A001669.P4327483452767424300

`A144150(eq[7, A004736(n+1)])`
-/

namespace A001669.P4327483452767424300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001669.P4327483452767424300

/-! ## A001669.P18150953421594594582

`A144150(Δ[A023551(n+2)]-1)`
-/

namespace A001669.P18150953421594594582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (f1 (n + 1) - f1 n - 1).toNat

end

end A001669.P18150953421594594582

/-! ## A001669.P8693513625595343336

`A144150(Δ[A026054(n+4)]-1)`
-/

namespace A001669.P8693513625595343336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (f1 (n + 1) - f1 n - 1).toNat

end

end A001669.P8693513625595343336

/-!
# A001670: k appears k times (k even).

The programs for A001670, the canonical program `A001670.P17258939270054660196` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001670 has offset 1).

The definition of A001670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001670.P3794878731119282114

`2*round(sqrt(n+1))`
-/

namespace A001670.P3794878731119282114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))

end

end A001670.P3794878731119282114

namespace A001670

/-- `2*round(sqrt(n+1))` -/
def P3794878731119282114.Spec : Prop :=
  ∀ n, P3794878731119282114.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P17258939270054660196

`a(n-a(n-2))+2` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001670

/-- `a(n-a(n-2))+2` -/
def P17258939270054660196.Spec : Prop :=
  ∀ n, (P17258939270054660196.a n : ℤ) = A001670 (n + 1)

theorem P17258939270054660196.correct : P17258939270054660196.Spec := by
  intro n
  simp only [A001670, Nat.add_sub_cancel]

end A001670

/-! ## A001670.P15704441669406373193

`∑[dr(Δ[2*round(sqrt(n))])]`
-/

namespace A001670.P15704441669406373193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P15704441669406373193

namespace A001670

/-- `∑[dr(Δ[2*round(sqrt(n))])]` -/
def P15704441669406373193.Spec : Prop :=
  ∀ n, (P15704441669406373193.a n : ℤ) = A001670 (n + 1)

end A001670

/-! ## A001670.P1738464750917009400

`∑[ceil(tan(char[∑[2*n]]))]`
-/

namespace A001670.P1738464750917009400
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P1738464750917009400

namespace A001670

/-- `∑[ceil(tan(char[∑[2*n]]))]` -/
def P1738464750917009400.Spec : Prop :=
  ∀ n, P1738464750917009400.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P17066796833591739549

`∑[round(tan(char[∑[2*n]]))]`
-/

namespace A001670.P17066796833591739549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P17066796833591739549

namespace A001670

/-- `∑[round(tan(char[∑[2*n]]))]` -/
def P17066796833591739549.Spec : Prop :=
  ∀ n, P17066796833591739549.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P15636300170011884462

`∑[ceil(asin(char[∑[2*n]]))]`
-/

namespace A001670.P15636300170011884462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arcsin ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P15636300170011884462

namespace A001670

/-- `∑[ceil(asin(char[∑[2*n]]))]` -/
def P15636300170011884462.Spec : Prop :=
  ∀ n, P15636300170011884462.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P2055612172273375657

`∑[round(asin(char[∑[2*n]]))]`
-/

namespace A001670.P2055612172273375657
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P2055612172273375657

namespace A001670

/-- `∑[round(asin(char[∑[2*n]]))]` -/
def P2055612172273375657.Spec : Prop :=
  ∀ n, P2055612172273375657.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P2630903035671205767

`∑[ceil(sinh(char[∑[2*n]]))]`
-/

namespace A001670.P2630903035671205767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P2630903035671205767

namespace A001670

/-- `∑[ceil(sinh(char[∑[2*n]]))]` -/
def P2630903035671205767.Spec : Prop :=
  ∀ n, P2630903035671205767.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P16306384798912717153

`∑[2*char[2*C(n, 2)]]`
-/

namespace A001670.P16306384798912717153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P16306384798912717153

namespace A001670

/-- `∑[2*char[2*C(n, 2)]]` -/
def P16306384798912717153.Spec : Prop :=
  ∀ n, (P16306384798912717153.a n : ℤ) = A001670 (n + 1)

end A001670

/-! ## A001670.P17286362895264911073

`∑[2*char[lcm(n, n+1)]]`
-/

namespace A001670.P17286362895264911073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P17286362895264911073

namespace A001670

/-- `∑[2*char[lcm(n, n+1)]]` -/
def P17286362895264911073.Spec : Prop :=
  ∀ n, (P17286362895264911073.a n : ℤ) = A001670 (n + 1)

end A001670

/-! ## A001670.P2583344532048765999

`or(1, ceil(sqrt(4*(n+1))))-1`
-/

namespace A001670.P2583344532048765999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈Real.sqrt (4 * (n + 1) : ℝ)⌉ - 1

end

end A001670.P2583344532048765999

namespace A001670

/-- `or(1, ceil(sqrt(4*(n+1))))-1` -/
def P2583344532048765999.Spec : Prop :=
  ∀ n, P2583344532048765999.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P6335431124208645097

`xor(1, or(1, ceil(sqrt(4*(n+1)))))`
-/

namespace A001670.P6335431124208645097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.lor 1 ⌈Real.sqrt (4 * (n + 1) : ℝ)⌉)

end

end A001670.P6335431124208645097

namespace A001670

/-- `xor(1, or(1, ceil(sqrt(4*(n+1)))))` -/
def P6335431124208645097.Spec : Prop :=
  ∀ n, P6335431124208645097.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P3844484121877923752

`∑[A089800(n)]`
-/

namespace A001670.P3844484121877923752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P3844484121877923752

namespace A001670

/-- `∑[A089800(n)]` -/
def P3844484121877923752.Spec : Prop :=
  ∀ n, P3844484121877923752.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P9442732736389282436

`A167991(or(1, n))`
-/

namespace A001670.P9442732736389282436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167991 (Nat.lor 1 n)

end

end A001670.P9442732736389282436

namespace A001670

/-- `A167991(or(1, n))` -/
def P9442732736389282436.Spec : Prop :=
  ∀ n, P9442732736389282436.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P4586435814386376286

`A193358(or(1, n))`
-/

namespace A001670.P4586435814386376286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193358 (Nat.lor 1 n)

end

end A001670.P4586435814386376286

namespace A001670

/-- `A193358(or(1, n))` -/
def P4586435814386376286.Spec : Prop :=
  ∀ n, P4586435814386376286.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P3039547266443555083

`A284359(or(1, n))`
-/

namespace A001670.P3039547266443555083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (Nat.lor 1 n)

end

end A001670.P3039547266443555083

namespace A001670

/-- `A284359(or(1, n))` -/
def P3039547266443555083.Spec : Prop :=
  ∀ n, P3039547266443555083.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P14582345347379747375

`∑[2*A005369(n)]`
-/

namespace A001670.P14582345347379747375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001670.P14582345347379747375

namespace A001670

/-- `∑[2*A005369(n)]` -/
def P14582345347379747375.Spec : Prop :=
  ∀ n, P14582345347379747375.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P18038992865204344905

`A130821(n+1)+1`
-/

namespace A001670.P18038992865204344905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (n + 1) + 1

end

end A001670.P18038992865204344905

namespace A001670

/-- `A130821(n+1)+1` -/
def P18038992865204344905.Spec : Prop :=
  ∀ n, P18038992865204344905.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P1074851609618380910

`A130829(n+1)-1`
-/

namespace A001670.P1074851609618380910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (n + 1) - 1

end

end A001670.P1074851609618380910

namespace A001670

/-- `A130829(n+1)-1` -/
def P1074851609618380910.Spec : Prop :=
  ∀ n, P1074851609618380910.a n = A001670 (n + 1)

end A001670

/-! ## A001670.P1595147742119223308

`A004277(round(sqrt(n+1)))`
-/

namespace A001670.P1595147742119223308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat

end

end A001670.P1595147742119223308

namespace A001670

/-- `A004277(round(sqrt(n+1)))` -/
def P1595147742119223308.Spec : Prop :=
  ∀ n, P1595147742119223308.a n = A001670 (n + 1)

end A001670

/-!
# A001671: Powers of e rounded up.

The programs for A001671, the canonical program `A001671.P524176182924743815` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001671 has offset 0).

The definition of A001671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001671.P13161092326004512118

`ceil(exp(n))`
-/

namespace A001671.P13161092326004512118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ)⌉

end

end A001671.P13161092326004512118

namespace A001671

/-- `ceil(exp(n))` -/
def P13161092326004512118.Spec : Prop :=
  ∀ n, P13161092326004512118.a n = A001671 n

end A001671

/-! ## A001671.P1001081191694492881

`or(ceil(e^n), char[1])`
-/

namespace A001671.P1001081191694492881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.exp 1 ^ n⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001671.P1001081191694492881

namespace A001671

/-- `or(ceil(e^n), char[1])` -/
def P1001081191694492881.Spec : Prop :=
  ∀ n, P1001081191694492881.a n = A001671 n

end A001671

/-! ## A001671.P5558305132713154850

`xor(1, xor(1, ceil(e^n)))`
-/

namespace A001671.P5558305132713154850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌈Real.exp 1 ^ n⌉)

end

end A001671.P5558305132713154850

namespace A001671

/-- `xor(1, xor(1, ceil(e^n)))` -/
def P5558305132713154850.Spec : Prop :=
  ∀ n, P5558305132713154850.a n = A001671 n

end A001671

/-! ## A001671.P18252852154625272732

`lcm((-1)^n, ceil(e^n))`
-/

namespace A001671.P18252852154625272732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ⌈Real.exp 1 ^ n⌉

end

end A001671.P18252852154625272732

namespace A001671

/-- `lcm((-1)^n, ceil(e^n))` -/
def P18252852154625272732.Spec : Prop :=
  ∀ n, (P18252852154625272732.a n : ℤ) = A001671 n

end A001671

/-! ## A001671.P11615264700449911691

`floor(exp(n))-(floor(acot(n))-1)`
-/

namespace A001671.P11615264700449911691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ)⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A001671.P11615264700449911691

namespace A001671

/-- `floor(exp(n))-(floor(acot(n))-1)` -/
def P11615264700449911691.Spec : Prop :=
  ∀ n, P11615264700449911691.a n = A001671 n

end A001671

/-! ## A001671.P16299233651070507535

`abs(cos(-π))*ceil(e^n)`
-/

namespace A001671.P16299233651070507535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (-Real.pi)| * (⌈Real.exp 1 ^ n⌉ : ℝ)

end

end A001671.P16299233651070507535

namespace A001671

/-- `abs(cos(-π))*ceil(e^n)` -/
def P16299233651070507535.Spec : Prop :=
  ∀ n, P16299233651070507535.a n = (A001671 n : ℝ)

end A001671

/-! ## A001671.P8439707687519535275

`cos(-π)²*ceil(e^n)`
-/

namespace A001671.P8439707687519535275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (-Real.pi) ^ 2 * (⌈Real.exp 1 ^ n⌉ : ℝ)

end

end A001671.P8439707687519535275

namespace A001671

/-- `cos(-π)²*ceil(e^n)` -/
def P8439707687519535275.Spec : Prop :=
  ∀ n, P8439707687519535275.a n = (A001671 n : ℝ)

end A001671

/-! ## A001671.P9051452489554793745

`ceil(e^n)+(2*n)%2`
-/

namespace A001671.P9051452489554793745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 ^ n⌉ + ((2 * n % 2 : ℕ) : ℤ)

end

end A001671.P9051452489554793745

namespace A001671

/-- `ceil(e^n)+(2*n)%2` -/
def P9051452489554793745.Spec : Prop :=
  ∀ n, P9051452489554793745.a n = A001671 n

end A001671

/-! ## A001671.P9257509287566168390

`gcd(n, n+1)*ceil(e^n)`
-/

namespace A001671.P9257509287566168390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ⌈Real.exp 1 ^ n⌉

end

end A001671.P9257509287566168390

namespace A001671

/-- `gcd(n, n+1)*ceil(e^n)` -/
def P9257509287566168390.Spec : Prop :=
  ∀ n, P9257509287566168390.a n = A001671 n

end A001671

/-! ## A001671.P13322519919697741859

`ceil(e^n)-1-cos(-π)`
-/

namespace A001671.P13322519919697741859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈Real.exp 1 ^ n⌉ - 1 : ℝ) - Real.cos (-Real.pi)

end

end A001671.P13322519919697741859

namespace A001671

/-- `ceil(e^n)-1-cos(-π)` -/
def P13322519919697741859.Spec : Prop :=
  ∀ n, P13322519919697741859.a n = (A001671 n : ℝ)

end A001671

/-! ## A001671.P6232773853957676467

`floor(e^n)+floor(atan(n+1))`
-/

namespace A001671.P6232773853957676467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ n⌋ + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A001671.P6232773853957676467

namespace A001671

/-- `floor(e^n)+floor(atan(n+1))` -/
def P6232773853957676467.Spec : Prop :=
  ∀ n, P6232773853957676467.a n = A001671 n

end A001671

/-! ## A001671.P6477935730478584941

`abs((1-and(2, n))*ceil(e^n))`
-/

namespace A001671.P6477935730478584941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (Nat.land 2 n : ℤ)) * ⌈Real.exp 1 ^ n⌉|

end

end A001671.P6477935730478584941

namespace A001671

/-- `abs((1-and(2, n))*ceil(e^n))` -/
def P6477935730478584941.Spec : Prop :=
  ∀ n, P6477935730478584941.a n = A001671 n

end A001671

/-! ## A001671.P9970118794735776620

`ceil(e^n)%(ceil(e^n)+1)`
-/

namespace A001671.P9970118794735776620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.exp 1 ^ n⌉ (⌈Real.exp 1 ^ n⌉ + 1)

end

end A001671.P9970118794735776620

namespace A001671

/-- `ceil(e^n)%(ceil(e^n)+1)` -/
def P9970118794735776620.Spec : Prop :=
  ∀ n, P9970118794735776620.a n = A001671 n

end A001671

/-! ## A001671.P11989862018878527343

`gcd(floor((1/(n+1))²), ceil(e^n))`
-/

namespace A001671.P11989862018878527343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(1 / (n + 1 : ℚ)) ^ 2⌋ ⌈Real.exp 1 ^ n⌉

end

end A001671.P11989862018878527343

namespace A001671

/-- `gcd(floor((1/(n+1))²), ceil(e^n))` -/
def P11989862018878527343.Spec : Prop :=
  ∀ n, (P11989862018878527343.a n : ℤ) = A001671 n

end A001671

/-! ## A001671.P9981010569027716461

`(C(n+1, n)-n)*ceil(e^n)`
-/

namespace A001671.P9981010569027716461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 1) n : ℤ) - (n : ℤ)) * ⌈Real.exp 1 ^ n⌉

end

end A001671.P9981010569027716461

namespace A001671

/-- `(C(n+1, n)-n)*ceil(e^n)` -/
def P9981010569027716461.Spec : Prop :=
  ∀ n, P9981010569027716461.a n = A001671 n

end A001671

/-! ## A001671.P7871215098373890549

`ceil(e^n)/(C(n+1, n)-n)`
-/

namespace A001671.P7871215098373890549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.exp 1 ^ n⌉ : ℚ) / ((Nat.choose (n + 1) n : ℤ) - (n : ℤ) : ℚ)

end

end A001671.P7871215098373890549

namespace A001671

/-- `ceil(e^n)/(C(n+1, n)-n)` -/
def P7871215098373890549.Spec : Prop :=
  ∀ n, P7871215098373890549.a n = (A001671 n : ℚ)

end A001671

/-! ## A001671.P17520618352711439642

`A005181(Δ[n²])`
-/

namespace A001671.P17520618352711439642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001671.P17520618352711439642

namespace A001671

/-- `A005181(Δ[n²])` -/
def P17520618352711439642.Spec : Prop :=
  ∀ n, P17520618352711439642.a n = A001671 n

end A001671

/-! ## A001671.P16581674482822860059

`floor(A057427(n)+exp(n))`
-/

namespace A001671.P16581674482822860059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.exp (n : ℝ)⌋

end

end A001671.P16581674482822860059

namespace A001671

/-- `floor(A057427(n)+exp(n))` -/
def P16581674482822860059.Spec : Prop :=
  ∀ n, P16581674482822860059.a n = A001671 n

end A001671

/-! ## A001671.P12982036684337236775

`A007318(C(2, n))*ceil(e^n)`
-/

namespace A001671.P12982036684337236775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * ⌈Real.exp 1 ^ n⌉

end

end A001671.P12982036684337236775

namespace A001671

/-- `A007318(C(2, n))*ceil(e^n)` -/
def P12982036684337236775.Spec : Prop :=
  ∀ n, P12982036684337236775.a n = A001671 n

end A001671

/-! ## A001671.P524176182924743815

`A057427(n)+A000149(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001671

/-- `A057427(n)+A000149(n)` -/
def P524176182924743815.Spec : Prop :=
  ∀ n, P524176182924743815.a n = A001671 n

theorem P524176182924743815.correct : P524176182924743815.Spec := by
  intro n
  simp only [A001671]

end A001671

/-!
# A001672: a(n) = floor(Pi^n).

The programs for A001672, the canonical program `A001672.P3969469059550511315` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001672 has offset 0).

The definition of A001672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001672.P3969469059550511315

`floor(π^n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001672

/-- `floor(π^n)` -/
def P3969469059550511315.Spec : Prop :=
  ∀ n, P3969469059550511315.a n = A001672 n

theorem P3969469059550511315.correct : P3969469059550511315.Spec := by
  intro n
  simp only [A001672]

end A001672

/-! ## A001672.P17887047945808863264

`ceil(π^n-ceil(abs(sin(n))))`
-/

namespace A001672.P17887047945808863264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n - (⌈|Real.sin (n : ℝ)|⌉ : ℝ)⌉

end

end A001672.P17887047945808863264

namespace A001672

/-- `ceil(π^n-ceil(abs(sin(n))))` -/
def P17887047945808863264.Spec : Prop :=
  ∀ n, P17887047945808863264.a n = A001672 n

end A001672

/-! ## A001672.P9480730568519868325

`ceil(π^n)-ceil(sin(n)²)`
-/

namespace A001672.P9480730568519868325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n⌉ - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A001672.P9480730568519868325

namespace A001672

/-- `ceil(π^n)-ceil(sin(n)²)` -/
def P9480730568519868325.Spec : Prop :=
  ∀ n, P9480730568519868325.a n = A001672 n

end A001672

/-! ## A001672.P15592594788723915602

`A102475(2*n)`
-/

namespace A001672.P15592594788723915602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (2 * n)

end

end A001672.P15592594788723915602

namespace A001672

/-- `A102475(2*n)` -/
def P15592594788723915602.Spec : Prop :=
  ∀ n, P15592594788723915602.a n = A001672 n

end A001672

/-! ## A001672.P2427292184789270984

`ceil(π^n)-A178334(ceil(n/2))`
-/

namespace A001672.P2427292184789270984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n⌉ - A178334 ⌈(n : ℚ) / 2⌉.toNat

end

end A001672.P2427292184789270984

namespace A001672

/-- `ceil(π^n)-A178334(ceil(n/2))` -/
def P2427292184789270984.Spec : Prop :=
  ∀ n, P2427292184789270984.a n = A001672 n

end A001672

/-! ## A001672.P10957009708405026858

`A102477(comp[2*(n+1)]+1)-1`
-/

namespace A001672.P10957009708405026858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A001672.P10957009708405026858

namespace A001672

/-- `A102477(comp[2*(n+1)]+1)-1` -/
def P10957009708405026858.Spec : Prop :=
  ∀ n, P10957009708405026858.a n = A001672 n

end A001672

/-! ## A001672.P6421156432679925590

`A212464(round(sqrt(n²+1))+2*n)`
-/

namespace A001672.P6421156432679925590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212464 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (2 * n : ℤ)).toNat

end

end A001672.P6421156432679925590

namespace A001672

/-- `A212464(round(sqrt(n²+1))+2*n)` -/
def P6421156432679925590.Spec : Prop :=
  ∀ n, P6421156432679925590.a n = A001672 n

end A001672

/-! ## A001672.P12562364721483048078

`A057428(n)+A001673(n)`
-/

namespace A001672.P12562364721483048078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001673 n

end

end A001672.P12562364721483048078

namespace A001672

/-- `A057428(n)+A001673(n)` -/
def P12562364721483048078.Spec : Prop :=
  ∀ n, P12562364721483048078.a n = A001672 n

theorem P12562364721483048078.correct : P12562364721483048078.Spec := by
  intro n
  simp only [A001672, Nat.add_sub_cancel, A001672.P12562364721483048078.a, A001672.P3969469059550511315.a, A001673, A001673.P15664192120311044095.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001672

/-! ## A001672.P16326031708167835279

`A001673(n)-A057427(n)`
-/

namespace A001672.P16326031708167835279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n - A057427 n

end

end A001672.P16326031708167835279

namespace A001672

/-- `A001673(n)-A057427(n)` -/
def P16326031708167835279.Spec : Prop :=
  ∀ n, P16326031708167835279.a n = A001672 n

theorem P16326031708167835279.correct : P16326031708167835279.Spec := by
  intro n
  simp only [A001672, Nat.add_sub_cancel, A001672.P16326031708167835279.a, A001672.P3969469059550511315.a, A001673, A001673.P15664192120311044095.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001672

/-! ## A001672.P15111312907158803768

`A001673(n)-A000225(n)%2`
-/

namespace A001672.P15111312907158803768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n - Int.tmod (A000225 n) 2

end

end A001672.P15111312907158803768

namespace A001672

/-- `A001673(n)-A000225(n)%2` -/
def P15111312907158803768.Spec : Prop :=
  ∀ n, P15111312907158803768.a n = A001672 n

end A001672

/-! ## A001672.P18329982710753550163

`A001673(n)-char[A032742(n+1)]`
-/

namespace A001672.P18329982710753550163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001672.P18329982710753550163

namespace A001672

/-- `A001673(n)-char[A032742(n+1)]` -/
def P18329982710753550163.Spec : Prop :=
  ∀ n, P18329982710753550163.a n = A001672 n

end A001672

/-! ## A001672.P17487890855847742523

`A001673(n)-A055396(A008574(n))`
-/

namespace A001672.P17487890855847742523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n - A055396 (A008574 n).toNat

end

end A001672.P17487890855847742523

namespace A001672

/-- `A001673(n)-A055396(A008574(n))` -/
def P17487890855847742523.Spec : Prop :=
  ∀ n, P17487890855847742523.a n = A001672 n

end A001672

/-! ## A001672.P8132533597155077966

`A001673(n)-A168046(A000120(n))`
-/

namespace A001672.P8132533597155077966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n - A168046 (A000120 n).toNat

end

end A001672.P8132533597155077966

namespace A001672

/-- `A001673(n)-A168046(A000120(n))` -/
def P8132533597155077966.Spec : Prop :=
  ∀ n, P8132533597155077966.a n = A001672 n

end A001672

/-! ## A001672.P3751871890828099412

`A000149(n)+A001673(n)-A001671(n)`
-/

namespace A001672.P3751871890828099412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n + (A001673 n - A001671 n)

end

end A001672.P3751871890828099412

namespace A001672

/-- `A000149(n)+A001673(n)-A001671(n)` -/
def P3751871890828099412.Spec : Prop :=
  ∀ n, P3751871890828099412.a n = A001672 n

theorem P3751871890828099412.correct : P3751871890828099412.Spec := by
  intro n
  simp only [A001672, Nat.add_sub_cancel, A001672.P3751871890828099412.a, A001672.P3969469059550511315.a, A000149, A000149.P348263657615241890.a, A001671, A001671.P524176182924743815.a, A001673, A001673.P15664192120311044095.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001672

/-! ## A001672.P3841878492056735403

`∩[A022767(n+1), A212464(n+1)]`
-/

namespace A001672.P3841878492056735403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001672.P3841878492056735403

namespace A001672

/-- `∩[A022767(n+1), A212464(n+1)]` -/
def P3841878492056735403.Spec : Prop :=
  ∀ n, (P3841878492056735403.a n : ℤ) = A001672 n

end A001672

/-!
# A001673: a(n) = ceiling(Pi^n).

The programs for A001673, the canonical program `A001673.P15664192120311044095` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001673 has offset 0).

The definition of A001673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001673.P16807189899983273347

`ceil(π^n)`
-/

namespace A001673.P16807189899983273347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ n⌉

end

end A001673.P16807189899983273347

namespace A001673

/-- `ceil(π^n)` -/
def P16807189899983273347.Spec : Prop :=
  ∀ n, P16807189899983273347.a n = A001673 n

end A001673

/-! ## A001673.P2440373807111321622

`floor(π^n)-(floor(acot(n))-1)`
-/

namespace A001673.P2440373807111321622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ n⌋ - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A001673.P2440373807111321622

namespace A001673

/-- `floor(π^n)-(floor(acot(n))-1)` -/
def P2440373807111321622.Spec : Prop :=
  ∀ n, P2440373807111321622.a n = A001673 n

end A001673

/-! ## A001673.P12471175873487381421

`A102477(2*n)`
-/

namespace A001673.P12471175873487381421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (2 * n)

end

end A001673.P12471175873487381421

namespace A001673

/-- `A102477(2*n)` -/
def P12471175873487381421.Spec : Prop :=
  ∀ n, P12471175873487381421.a n = A001673 n

end A001673

/-! ## A001673.P2346301715269039847

`A001672(n)+ceil(sin(n)²)`
-/

namespace A001673.P2346301715269039847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A001673.P2346301715269039847

namespace A001673

/-- `A001672(n)+ceil(sin(n)²)` -/
def P2346301715269039847.Spec : Prop :=
  ∀ n, P2346301715269039847.a n = A001673 n

end A001673

/-! ## A001673.P1449848756690052460

`floor(π^n)+n/A028310(n)`
-/

namespace A001673.P1449848756690052460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.pi ^ n⌋ : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A001673.P1449848756690052460

namespace A001673

/-- `floor(π^n)+n/A028310(n)` -/
def P1449848756690052460.Spec : Prop :=
  ∀ n, P1449848756690052460.a n = (A001673 n : ℚ)

end A001673

/-! ## A001673.P7343089013448391720

`floor(π^n)-A267148(n²%(n+1))+1`
-/

namespace A001673.P7343089013448391720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ n⌋ - A267148 (n ^ 2 % (n + 1)) + 1

end

end A001673.P7343089013448391720

namespace A001673

/-- `floor(π^n)-A267148(n²%(n+1))+1` -/
def P7343089013448391720.Spec : Prop :=
  ∀ n, P7343089013448391720.a n = A001673 n

end A001673

/-! ## A001673.P4879377137429920119

`A178334(∑{e}[n+1, #-val(#!, 2)])+floor(π^n)`
-/

namespace A001673.P4879377137429920119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat + ⌊Real.pi ^ n⌋

end

end A001673.P4879377137429920119

namespace A001673

/-- `A178334(∑{e}[n+1, #-val(#!, 2)])+floor(π^n)` -/
def P4879377137429920119.Spec : Prop :=
  ∀ n, P4879377137429920119.a n = A001673 n

end A001673

/-! ## A001673.P15664192120311044095

`A057427(n)+A001672(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001673

/-- `A057427(n)+A001672(n)` -/
def P15664192120311044095.Spec : Prop :=
  ∀ n, P15664192120311044095.a n = A001673 n

theorem P15664192120311044095.correct : P15664192120311044095.Spec := by
  intro n
  simp only [A001673]

end A001673

/-! ## A001673.P7046253627521596213

`A001672(n)-A057428(n)`
-/

namespace A001673.P7046253627521596213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n - A057428 n

end

end A001673.P7046253627521596213

namespace A001673

/-- `A001672(n)-A057428(n)` -/
def P7046253627521596213.Spec : Prop :=
  ∀ n, P7046253627521596213.a n = A001673 n

theorem P7046253627521596213.correct : P7046253627521596213.Spec := by
  intro n
  simp only [A001673, Nat.add_sub_cancel, A001673.P7046253627521596213.a, A001673.P15664192120311044095.a, A001672, A001672.P3969469059550511315.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001673

/-! ## A001673.P15119002212306238074

`A001672(n)+char[A052938(n)]`
-/

namespace A001673.P15119002212306238074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001673.P15119002212306238074

namespace A001673

/-- `A001672(n)+char[A052938(n)]` -/
def P15119002212306238074.Spec : Prop :=
  ∀ n, P15119002212306238074.a n = A001673 n

end A001673

/-! ## A001673.P15588672450388849810

`A102475(2*n)+A057427(n)`
-/

namespace A001673.P15588672450388849810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (2 * n) + A057427 n

end

end A001673.P15588672450388849810

namespace A001673

/-- `A102475(2*n)+A057427(n)` -/
def P15588672450388849810.Spec : Prop :=
  ∀ n, P15588672450388849810.a n = A001673 n

end A001673

/-! ## A001673.P7217445270126956790

`A102475(2*n)-A057428(n)`
-/

namespace A001673.P7217445270126956790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (2 * n) - A057428 n

end

end A001673.P7217445270126956790

namespace A001673

/-- `A102475(2*n)-A057428(n)` -/
def P7217445270126956790.Spec : Prop :=
  ∀ n, P7217445270126956790.a n = A001673 n

end A001673

/-! ## A001673.P9418293155165657250

`A001672(n)+char[A002251(n+1)]`
-/

namespace A001673.P9418293155165657250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001673.P9418293155165657250

namespace A001673

/-- `A001672(n)+char[A002251(n+1)]` -/
def P9418293155165657250.Spec : Prop :=
  ∀ n, P9418293155165657250.a n = A001673 n

end A001673

/-! ## A001673.P9849573812913304417

`A001672(n)+char[A026098(n+1)]`
-/

namespace A001673.P9849573812913304417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026098 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001673.P9849573812913304417

namespace A001673

/-- `A001672(n)+char[A026098(n+1)]` -/
def P9849573812913304417.Spec : Prop :=
  ∀ n, P9849573812913304417.a n = A001673 n

end A001673

/-! ## A001673.P10169556648017725100

`A102475(2*n)+char[A007306(n)]`
-/

namespace A001673.P10169556648017725100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001673.P10169556648017725100

namespace A001673

/-- `A102475(2*n)+char[A007306(n)]` -/
def P10169556648017725100.Spec : Prop :=
  ∀ n, P10169556648017725100.a n = A001673 n

end A001673

/-! ## A001673.P17389412218962663146

`A102475(2*n)+char[A003602(n+1)]`
-/

namespace A001673.P17389412218962663146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001673.P17389412218962663146

namespace A001673

/-- `A102475(2*n)+char[A003602(n+1)]` -/
def P17389412218962663146.Spec : Prop :=
  ∀ n, P17389412218962663146.a n = A001673 n

end A001673

/-! ## A001673.P15787640661559249007

`A112400(A020639(2*n+1))+A102475(2*n)`
-/

namespace A001673.P15787640661559249007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112400 (A020639 (2 * n + 1)).toNat + A102475 (2 * n)

end

end A001673.P15787640661559249007

namespace A001673

/-- `A112400(A020639(2*n+1))+A102475(2*n)` -/
def P15787640661559249007.Spec : Prop :=
  ∀ n, P15787640661559249007.a n = A001673 n

end A001673

/-! ## A001673.P14968190016864723972

`A132983(n+1)+A001672(n)-A132944(n+1)`
-/

namespace A001673.P14968190016864723972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132983 (n + 1) + (A001672 n - A132944 (n + 1))

end

end A001673.P14968190016864723972

namespace A001673

/-- `A132983(n+1)+A001672(n)-A132944(n+1)` -/
def P14968190016864723972.Spec : Prop :=
  ∀ n, P14968190016864723972.a n = A001673 n

end A001673

/-!
# A001674: a(n) = floor(sqrt( 2*Pi )^n).

The programs for A001674, the canonical program `A001674.P17887057875498561843` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001674 has offset 0).

The definition of A001674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001674.P17887057875498561843

`floor(sqrt(2*π)^n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001674

/-- `floor(sqrt(2*π)^n)` -/
def P17887057875498561843.Spec : Prop :=
  ∀ n, P17887057875498561843.a n = A001674 n

theorem P17887057875498561843.correct : P17887057875498561843.Spec := by
  intro n
  simp only [A001674]

end A001674

/-! ## A001674.P11089726316529335931

`A001698(n)-ceil(n/(n+1))`
-/

namespace A001674.P11089726316529335931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001698 n - ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A001674.P11089726316529335931

namespace A001674

/-- `A001698(n)-ceil(n/(n+1))` -/
def P11089726316529335931.Spec : Prop :=
  ∀ n, P11089726316529335931.a n = A001674 n

end A001674

/-! ## A001674.P12113128923180951179

`A057428(n)+A001698(n)`
-/

namespace A001674.P12113128923180951179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001698 n

end

end A001674.P12113128923180951179

namespace A001674

/-- `A057428(n)+A001698(n)` -/
def P12113128923180951179.Spec : Prop :=
  ∀ n, P12113128923180951179.a n = A001674 n

theorem P12113128923180951179.correct : P12113128923180951179.Spec := by
  intro n
  simp only [A001674, Nat.add_sub_cancel, A001674.P12113128923180951179.a, A001674.P17887057875498561843.a, A001698, A001698.P3959403905572157936.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001674

/-! ## A001674.P18168436040390004762

`abs(A001698(n)-A054977(n))`
-/

namespace A001674.P18168436040390004762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001698 n - A054977 n|

end

end A001674.P18168436040390004762

namespace A001674

/-- `abs(A001698(n)-A054977(n))` -/
def P18168436040390004762.Spec : Prop :=
  ∀ n, P18168436040390004762.a n = A001674 n

end A001674

/-! ## A001674.P1536487188389034976

`abs(A001698(n)-A057427(n))`
-/

namespace A001674.P1536487188389034976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001698 n - A057427 n|

end

end A001674.P1536487188389034976

namespace A001674

/-- `abs(A001698(n)-A057427(n))` -/
def P1536487188389034976.Spec : Prop :=
  ∀ n, P1536487188389034976.a n = A001674 n

end A001674

/-! ## A001674.P15409800830049916749

`abs(A014963(A014574(n+1))-A001698(n))`
-/

namespace A001674.P15409800830049916749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014963 (A014574 (n + 1)).toNat - A001698 n|

end

end A001674.P15409800830049916749

namespace A001674

/-- `abs(A014963(A014574(n+1))-A001698(n))` -/
def P15409800830049916749.Spec : Prop :=
  ∀ n, P15409800830049916749.a n = A001674 n

end A001674

/-! ## A001674.P6920334984116401567

`(n%2)!*floor(sqrt(A001698(2*n)))`
-/

namespace A001674.P6920334984116401567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * Int.sqrt (A001698 (2 * n))

end

end A001674.P6920334984116401567

namespace A001674

/-- `(n%2)!*floor(sqrt(A001698(2*n)))` -/
def P6920334984116401567.Spec : Prop :=
  ∀ n, P6920334984116401567.a n = A001674 n

end A001674

/-!
# A001675: a(n) = round(sqrt( 2*Pi )^n).

The programs for A001675, the canonical program `A001675.P3409259812924820623` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001675 has offset 0).

The definition of A001675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001675.P3409259812924820623

`round((2*π)^(n/2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001675

/-- `round((2*π)^(n/2))` -/
def P3409259812924820623.Spec : Prop :=
  ∀ n, P3409259812924820623.a n = A001675 n

theorem P3409259812924820623.correct : P3409259812924820623.Spec := by
  intro n
  simp only [A001675]

end A001675

/-! ## A001675.P14891548763056464139

`floor(A305289(n)/A001674(n))`
-/

namespace A001675.P14891548763056464139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305289 n : ℚ) / (A001674 n : ℚ)⌋

end

end A001675.P14891548763056464139

namespace A001675

/-- `floor(A305289(n)/A001674(n))` -/
def P14891548763056464139.Spec : Prop :=
  ∀ n, P14891548763056464139.a n = A001675 n

end A001675

/-! ## A001675.P16265431044804228448

`floor(A001674(2*n)/A001674(n))`
-/

namespace A001675.P16265431044804228448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001674 (2 * n) : ℚ) / (A001674 n : ℚ)⌋

end

end A001675.P16265431044804228448

namespace A001675

/-- `floor(A001674(2*n)/A001674(n))` -/
def P16265431044804228448.Spec : Prop :=
  ∀ n, P16265431044804228448.a n = A001675 n

end A001675

/-! ## A001675.P16750968035701316561

`ceil(A001698(2*n)/A001698(n))`
-/

namespace A001675.P16750968035701316561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001698 (2 * n) : ℚ) / (A001698 n : ℚ)⌉

end

end A001675.P16750968035701316561

namespace A001675

/-- `ceil(A001698(2*n)/A001698(n))` -/
def P16750968035701316561.Spec : Prop :=
  ∀ n, P16750968035701316561.a n = A001675 n

end A001675

/-! ## A001675.P3866555825728727545

`floor(A001698(A005843(n))/A001674(n))`
-/

namespace A001675.P3866555825728727545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001698 (A005843 n).toNat : ℚ) / (A001674 n : ℚ)⌋

end

end A001675.P3866555825728727545

namespace A001675

/-- `floor(A001698(A005843(n))/A001674(n))` -/
def P3866555825728727545.Spec : Prop :=
  ∀ n, P3866555825728727545.a n = A001675 n

end A001675

/-!
# A001676: Number of h-cobordism classes of smooth homotopy n-spheres.

The programs for A001676, there is no canonical definition to state claims against.
-/

/-! ## A001676.P9415260585761076714

`A000007(n)+Δ[A178579(A028310(n))]`
-/

namespace A001676.P9415260585761076714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178579 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A001676.P9415260585761076714

/-! ## A001676.P707671301008075961

`A187595(n+1)*A187717(n+1)`
-/

namespace A001676.P707671301008075961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 (n + 1) * A187717 (n + 1)

end

end A001676.P707671301008075961

/-!
# A001677: Number of series-parallel networks with n edges.

The programs for A001677, there is no canonical definition to state claims against.
-/

/-! ## A001677.P13234832823690792993

`A055086(A326898(n))`
-/

namespace A001677.P13234832823690792993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A326898 n).toNat

end

end A001677.P13234832823690792993

/-! ## A001677.P11051956582306166155

`A191889(A292324(n))`
-/

namespace A001677.P11051956582306166155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191889 (A292324 n).toNat

end

end A001677.P11051956582306166155

/-! ## A001677.P5319045951459631130

`A055086(∑[A001930(n)])`
-/

namespace A001677.P5319045951459631130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001677.P5319045951459631130

/-! ## A001677.P11218494174163863359

`∑[A002024(A130278(n))]`
-/

namespace A001677.P11218494174163863359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A130278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001677.P11218494174163863359

/-!
# A001678: Number of series-reduced planted trees with n nodes.

The programs for A001678, there is no canonical definition to state claims against.
-/

/-! ## A001678.P9984254065895589326

`A247162(n+1)+A240328(A260022(n))`
-/

namespace A001678.P9984254065895589326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 1) + A240328 (A260022 n).toNat

end

end A001678.P9984254065895589326

/-! ## A001678.P12491961233653744903

`xor(A024360(A008891(n)), A247162(n+1))`
-/

namespace A001678.P12491961233653744903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024360 (A008891 n).toNat) (A247162 (n + 1))

end

end A001678.P12491961233653744903

/-! ## A001678.P2457616156242671143

`A247162(n+1)%A166206(n)`
-/

namespace A001678.P2457616156242671143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247162 (n + 1)) (A166206 n)

end

end A001678.P2457616156242671143

/-! ## A001678.P17604387816038376649

`A247162(n+1)+A010815(A215330(n))`
-/

namespace A001678.P17604387816038376649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 1) + A010815 (A215330 n).toNat

end

end A001678.P17604387816038376649

/-! ## A001678.P7614140567835213046

`A247162(n+1)-A000007(A000129(n))`
-/

namespace A001678.P7614140567835213046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247162 (n + 1) - A000007 (A000129 n).toNat

end

end A001678.P7614140567835213046

/-!
# A001679: Number of series-reduced rooted trees with n nodes.

The programs for A001679, there is no canonical definition to state claims against.
-/

/-! ## A001679.P3870197768717278486

`A059123(A028310(n))`
-/

namespace A001679.P3870197768717278486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 (A028310 n).toNat

end

end A001679.P3870197768717278486

/-! ## A001679.P11627202625662365435

`A059123(A233583(n+1))`
-/

namespace A001679.P11627202625662365435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 (A233583 (n + 1)).toNat

end

end A001679.P11627202625662365435

/-! ## A001679.P7235207071500059341

`A059123(A000007(n)+n)`
-/

namespace A001679.P7235207071500059341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 (A000007 n + (n : ℤ)).toNat

end

end A001679.P7235207071500059341

/-! ## A001679.P9107611889434774011

`A059123(xor(n, A000007(n)))`
-/

namespace A001679.P9107611889434774011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A001679.P9107611889434774011

/-! ## A001679.P14522170285083992542

`A059123(n)+A159634(n+1)%2`
-/

namespace A001679.P14522170285083992542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 n + Int.tmod (A159634 (n + 1)) 2

end

end A001679.P14522170285083992542

/-! ## A001679.P5964616951616612385

`A317581(A006530(n+1))+A059123(n)`
-/

namespace A001679.P5964616951616612385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317581 (A006530 (n + 1)).toNat + A059123 n

end

end A001679.P5964616951616612385

/-! ## A001679.P5583301345326736716

`A002033(a(A001221(n)))*A059123(n)` with `a(0)=1`
-/

namespace A001679.P5583301345326736716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002033 (a (A001221 n).toNat).toNat * A059123 n

end

end A001679.P5583301345326736716

/-! ## A001679.P10845315396499165091

`a(A318322(A318322(n+1)))*A059123(n)` with `a(0)=1`
-/

namespace A001679.P10845315396499165091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A318322 (A318322 (n + 1)).toNat).toNat * A059123 n

end

end A001679.P10845315396499165091

/-! ## A001679.P13734464064213321674

`A059123(A151878(n)+n)`
-/

namespace A001679.P13734464064213321674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 (A151878 n + (n : ℤ)).toNat

end

end A001679.P13734464064213321674

/-! ## A001679.P6726966902166477998

`A059123(xor(n, A151878(n)))`
-/

namespace A001679.P6726966902166477998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059123 (Int.xor (n : ℤ) (A151878 n)).toNat

end

end A001679.P6726966902166477998

/-!
# A001680: The partition function G(n,3).

The programs for A001680, the canonical program `A001680.P453520485370924262` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001680 has offset 0).

The definition of A001680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001680.P453520485370924262

`a(n-1)+(n-1)*a(n-2)+(n-1)*(n-2)/2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001680

/-- `a(n-1)+(n-1)*a(n-2)+(n-1)*(n-2)/2*a(n-3)` -/
def P453520485370924262.Spec : Prop :=
  ∀ n, P453520485370924262.a n = (A001680 n : ℚ)

end A001680

/-! ## A001680.P14375228067796853702

`a(n-1)+(n-1)*(a(n-2)+(n-2)/2*a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001680.P14375228067796853702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + ((n : ℤ) - 1 : ℚ) * (a (n - 2) + ((n : ℤ) - 2 : ℚ) / 2 * a (n - 3))

end

end A001680.P14375228067796853702

namespace A001680

/-- `a(n-1)+(n-1)*(a(n-2)+(n-2)/2*a(n-3))` -/
def P14375228067796853702.Spec : Prop :=
  ∀ n, P14375228067796853702.a n = (A001680 n : ℚ)

end A001680

/-! ## A001680.P16827018492788709920

`A108947(A167614(n+2))`
-/

namespace A001680.P16827018492788709920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A167614 (n + 2)).toNat

end

end A001680.P16827018492788709920

namespace A001680

/-- `A108947(A167614(n+2))` -/
def P16827018492788709920.Spec : Prop :=
  ∀ n, P16827018492788709920.a n = A001680 n

end A001680

/-! ## A001680.P14413837730513919020

`A108947(A052905(n)+8)`
-/

namespace A001680.P14413837730513919020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A052905 n + 8).toNat

end

end A001680.P14413837730513919020

namespace A001680

/-- `A108947(A052905(n)+8)` -/
def P14413837730513919020.Spec : Prop :=
  ∀ n, P14413837730513919020.a n = A001680 n

end A001680

/-! ## A001680.P4231852294464648905

`A108947(A055999(n)+9)`
-/

namespace A001680.P4231852294464648905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A055999 n + 9).toNat

end

end A001680.P4231852294464648905

namespace A001680

/-- `A108947(A055999(n)+9)` -/
def P4231852294464648905.Spec : Prop :=
  ∀ n, P4231852294464648905.a n = A001680 n

end A001680

/-! ## A001680.P16791410611689469336

`A108947(eq[3, A002262(n)])`
-/

namespace A001680.P16791410611689469336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001680.P16791410611689469336

namespace A001680

/-- `A108947(eq[3, A002262(n)])` -/
def P16791410611689469336.Spec : Prop :=
  ∀ n, P16791410611689469336.a n = A001680 n

end A001680

/-! ## A001680.P4390765807013793756

`A108947(A133263(n+3)+1)`
-/

namespace A001680.P4390765807013793756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A133263 (n + 3) + 1).toNat

end

end A001680.P4390765807013793756

namespace A001680

/-- `A108947(A133263(n+3)+1)` -/
def P4390765807013793756.Spec : Prop :=
  ∀ n, P4390765807013793756.a n = A001680 n

end A001680

/-! ## A001680.P4854070971143136987

`A108947(A000124(n+3)+2)`
-/

namespace A001680.P4854070971143136987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000124 (n + 3) + 2).toNat

end

end A001680.P4854070971143136987

namespace A001680

/-- `A108947(A000124(n+3)+2)` -/
def P4854070971143136987.Spec : Prop :=
  ∀ n, P4854070971143136987.a n = A001680 n

end A001680

/-! ## A001680.P17941403902600188599

`A108947(eq[1, A144328(n+1)-2])`
-/

namespace A001680.P17941403902600188599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001680.P17941403902600188599

namespace A001680

/-- `A108947(eq[1, A144328(n+1)-2])` -/
def P17941403902600188599.Spec : Prop :=
  ∀ n, P17941403902600188599.a n = A001680 n

end A001680

/-! ## A001680.P18319791618940015328

`A108947(eq[2, A002260(n+1)-2])`
-/

namespace A001680.P18319791618940015328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001680.P18319791618940015328

namespace A001680

/-- `A108947(eq[2, A002260(n+1)-2])` -/
def P18319791618940015328.Spec : Prop :=
  ∀ n, P18319791618940015328.a n = A001680 n

end A001680

/-!
# A001681: The partition function G(n,4).

The programs for A001681, there is no canonical definition to state claims against.
-/

/-! ## A001681.P3006779810013656271

`A108947(A155212(n)+12)`
-/

namespace A001681.P3006779810013656271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A155212 n + 12).toNat

end

end A001681.P3006779810013656271

/-! ## A001681.P1947125196170684315

`A108947(eq[4, A002262(n)])`
-/

namespace A001681.P1947125196170684315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001681.P1947125196170684315

/-! ## A001681.P14229522758764957351

`A108947(A167614(n+3)+1)`
-/

namespace A001681.P14229522758764957351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A167614 (n + 3) + 1).toNat

end

end A001681.P14229522758764957351

/-! ## A001681.P15772669278032498237

`A108947(A000124(n+4)+3)`
-/

namespace A001681.P15772669278032498237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000124 (n + 4) + 3).toNat

end

end A001681.P15772669278032498237

/-! ## A001681.P18439295837761610306

`A108947(A000096(n+3)+5)`
-/

namespace A001681.P18439295837761610306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000096 (n + 3) + 5).toNat

end

end A001681.P18439295837761610306

/-! ## A001681.P6988674782300012414

`A108947(A027379(n+2)+7)`
-/

namespace A001681.P6988674782300012414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A027379 (n + 2) + 7).toNat

end

end A001681.P6988674782300012414

/-! ## A001681.P4476461842928529832

`A108947(A034856(n+3)+6)`
-/

namespace A001681.P4476461842928529832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A034856 (n + 3) + 6).toNat

end

end A001681.P4476461842928529832

/-! ## A001681.P16680101624564150256

`A108947(A052905(n+1)+9)`
-/

namespace A001681.P16680101624564150256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A052905 (n + 1) + 9).toNat

end

end A001681.P16680101624564150256

/-! ## A001681.P6963652499861029723

`A108947(A055999(n+1)+10)`
-/

namespace A001681.P6963652499861029723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A055999 (n + 1) + 10).toNat

end

end A001681.P6963652499861029723

/-! ## A001681.P5549665464241632587

`A108947(eq[5, A002260(n+1)])`
-/

namespace A001681.P5549665464241632587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001681.P5549665464241632587

/-!
# A001682: Numbers k such that 3^k, 3^(k+1) and 3^(k+2) have the same number of digits.

The programs for A001682, there is no canonical definition to state claims against.
-/

/-! ## A001682.P13495274776197859198

`∑[A151910(A028310(n))]-21`
-/

namespace A001682.P13495274776197859198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151910 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 21

end

end A001682.P13495274776197859198

/-! ## A001682.P858394082814687418

`∑[A151910(A000007(n)+n)]-21`
-/

namespace A001682.P858394082814687418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151910 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 21

end

end A001682.P858394082814687418

/-! ## A001682.P7659895883560217444

`∑[A151910(n+1)]-A151910(n+1)`
-/

namespace A001682.P7659895883560217444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151910 (n + 1)

end

end A001682.P7659895883560217444

/-! ## A001682.P11905047197078798982

`∑[A057427(n)*A151910(A028310(n))]`
-/

namespace A001682.P11905047197078798982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A151910 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001682.P11905047197078798982

/-! ## A001682.P14800655158552325246

`∑[and(A057428(n), A151910(A028310(n)))]`
-/

namespace A001682.P14800655158552325246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A151910 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001682.P14800655158552325246

/-! ## A001682.P15552406114599363458

`eq[9, A060956(n+2)]`
-/

namespace A001682.P15552406114599363458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001682.P15552406114599363458

/-!
# A001683: Number of one-sided triangulations of the disk; or flexagons of order n; or unlabeled plane trivalent trees (n-2 internal vertices, all of degree 3 and hence n leaves).

The programs for A001683, there is no canonical definition to state claims against.
-/

/-! ## A001683.P1451345087235128193

`A262586(C(n, 2))`
-/

namespace A001683.P1451345087235128193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (Nat.choose n 2)

end

end A001683.P1451345087235128193

/-! ## A001683.P14883017081475785246

`A262586(∑[n]-n)`
-/

namespace A001683.P14883017081475785246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A001683.P14883017081475785246

/-! ## A001683.P13051758795578365076

`A295224(A028310(∑[n]))`
-/

namespace A001683.P13051758795578365076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A001683.P13051758795578365076

/-! ## A001683.P12699678487293366259

`A295224(A179865(n+1))`
-/

namespace A001683.P12699678487293366259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A179865 (n + 1)).toNat

end

end A001683.P12699678487293366259

/-! ## A001683.P13781821195100514554

`A295224(A212342(n)+1)`
-/

namespace A001683.P13781821195100514554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A212342 n + 1).toNat

end

end A001683.P13781821195100514554

/-! ## A001683.P9722870468943441560

`A295224(A054254(n)+2)`
-/

namespace A001683.P9722870468943441560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A054254 n + 2).toNat

end

end A001683.P9722870468943441560

/-! ## A001683.P8637073324961167083

`A295224(A184218(n+1)+1)`
-/

namespace A001683.P8637073324961167083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A184218 (n + 1) + 1).toNat

end

end A001683.P8637073324961167083

/-! ## A001683.P11778069675483796660

`A295224(A175631(n+2)+1)`
-/

namespace A001683.P11778069675483796660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A175631 (n + 2) + 1).toNat

end

end A001683.P11778069675483796660

/-! ## A001683.P15235791015478156016

`A295224(A347553(n+3)-n)`
-/

namespace A001683.P15235791015478156016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A347553 (n + 3) - (n : ℤ)).toNat

end

end A001683.P15235791015478156016

/-! ## A001683.P7203746995490898412

`A295224(A027379(n)-2*n)`
-/

namespace A001683.P7203746995490898412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A027379 n - (2 * n : ℤ)).toNat

end

end A001683.P7203746995490898412

/-!
# A001684: From a continued fraction.

The programs for A001684, there is no canonical definition to state claims against.
-/

/-! ## A001684.P12956594209688283538

`∏[A001685(∑[A161067(n+1)])]`
-/

namespace A001684.P12956594209688283538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001685 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001684.P12956594209688283538

/-! ## A001684.P18225007911004257982

`∏[A093682(∑[A326635(2*n+3)])]`
-/

namespace A001684.P18225007911004257982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326635 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093682 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001684.P18225007911004257982

/-! ## A001684.P11728953130723538644

`∏[A136480(∏[2^n*a(n-3)])]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=4`
-/

namespace A001684.P11728953130723538644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 2, 2, 4] fun n f2 =>
  2 ^ n * f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001684.P11728953130723538644

/-! ## A001684.P14773252610124977244

`∏[A136480(∏[a(n-3)/(1/2)^n])]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=4`
-/

namespace A001684.P14773252610124977244
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 1, 1, 2, 2, 4] fun n f2 =>
  f2 (n - 3) / ((1 : ℚ) / 2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001684.P14773252610124977244

/-!
# A001685: a(0) = 1, a(1) = 2, a(2) = 3; for n >= 3, a(n) = a(n-2) + a(n-1)*Product_{i=1..n-3} a(i).

The programs for A001685, the canonical program `A001685.P10263633443939670421` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001685 has offset 0).

The definition of A001685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001685.P10263633443939670421

`a(n-2)+a(n-1)*a(n-3)*(a(n-1)-a(n-3))/a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001685

/-- `a(n-2)+a(n-1)*a(n-3)*(a(n-1)-a(n-3))/a(n-2)` -/
def P10263633443939670421.Spec : Prop :=
  ∀ n, P10263633443939670421.a n = (A001685 n : ℚ)

end A001685

/-! ## A001685.P10366552672916764385

`ratio[A001684(n+2)]`
-/

namespace A001685.P10366552672916764385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001684 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A001685.P10366552672916764385

namespace A001685

/-- `ratio[A001684(n+2)]` -/
def P10366552672916764385.Spec : Prop :=
  ∀ n, P10366552672916764385.a n = (A001685 n : ℚ)

end A001685

/-! ## A001685.P17892950027322848454

`record[ratio[A001684(A002265(n))]]`
-/

namespace A001685.P17892950027322848454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001684 (A002265 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001685.P17892950027322848454

namespace A001685

/-- `record[ratio[A001684(A002265(n))]]` -/
def P17892950027322848454.Spec : Prop :=
  ∀ n, P17892950027322848454.a n = (A001685 n : ℚ)

end A001685

/-! ## A001685.P2674512654473079102

`record[ratio[A001684(A008619(n))]]`
-/

namespace A001685.P2674512654473079102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001684 (A008619 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001685.P2674512654473079102

namespace A001685

/-- `record[ratio[A001684(A008619(n))]]` -/
def P2674512654473079102.Spec : Prop :=
  ∀ n, P2674512654473079102.a n = (A001685 n : ℚ)

end A001685

/-! ## A001685.P15987869352304510489

`record[ratio[A001684(A008621(n))]]`
-/

namespace A001685.P15987869352304510489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001684 (A008621 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001685.P15987869352304510489

namespace A001685

/-- `record[ratio[A001684(A008621(n))]]` -/
def P15987869352304510489.Spec : Prop :=
  ∀ n, P15987869352304510489.a n = (A001685 n : ℚ)

end A001685

/-!
# A001687: a(n) = a(n-2) + a(n-5).

The programs for A001687, the canonical program `A001687.P6224052007800832515` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001687 has offset 0).

The definition of A001687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-5)` (program `A001687.P6224052007800832515`, by `A001687.P6224052007800832515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001687.P6224052007800832515

`a(n-2)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001687

/-- `a(n-2)+a(n-5)` -/
def P6224052007800832515.Spec : Prop :=
  ∀ n, (P6224052007800832515.a n : ℤ) = A001687 n

theorem P6224052007800832515.correct : P6224052007800832515.Spec := by
  intro n
  simp only [A001687]

end A001687

/-! ## A001687.P3822854958759836643

`ogf(x/(1-x^2-x^5))`
-/

namespace A001687.P3822854958759836643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 0, -1, 0, 0, -1] n

end

end A001687.P3822854958759836643

namespace A001687

/-- `ogf(x/(1-x^2-x^5))` -/
def P3822854958759836643.Spec : Prop :=
  ∀ n, P3822854958759836643.a n = A001687 n

end A001687

/-! ## A001687.P9609426727543254865

`A005686(n)-a(n-1)` with `a(0)=0`
-/

namespace A001687.P9609426727543254865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005686 n - a (n - 1)

end

end A001687.P9609426727543254865

namespace A001687

/-- `A005686(n)-a(n-1)` -/
def P9609426727543254865.Spec : Prop :=
  ∀ n, P9609426727543254865.a n = A001687 n

end A001687

/-! ## A001687.P9761994971645951373

`A005686(n)-Δ[A005686(n+3)]`
-/

namespace A001687.P9761994971645951373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 n - (f1 (n + 1) - f1 n)

end

end A001687.P9761994971645951373

namespace A001687

/-- `A005686(n)-Δ[A005686(n+3)]` -/
def P9761994971645951373.Spec : Prop :=
  ∀ n, P9761994971645951373.a n = A001687 n

end A001687

/-! ## A001687.P7967959730012142441

`Δ[A386709(n+2)]`
-/

namespace A001687.P7967959730012142441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001687.P7967959730012142441

namespace A001687

/-- `Δ[A386709(n+2)]` -/
def P7967959730012142441.Spec : Prop :=
  ∀ n, P7967959730012142441.a n = A001687 n

end A001687

/-! ## A001687.P17641349154963328074

`Δ[A005686(n+4)]`
-/

namespace A001687.P17641349154963328074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001687.P17641349154963328074

namespace A001687

/-- `Δ[A005686(n+4)]` -/
def P17641349154963328074.Spec : Prop :=
  ∀ n, P17641349154963328074.a n = A001687 n

end A001687

/-! ## A001687.P6991909544718873260

`abs(Δ[A005686(A020705(n))])`
-/

namespace A001687.P6991909544718873260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001687.P6991909544718873260

namespace A001687

/-- `abs(Δ[A005686(A020705(n))])` -/
def P6991909544718873260.Spec : Prop :=
  ∀ n, P6991909544718873260.a n = A001687 n

end A001687

/-! ## A001687.P7452669805190643085

`A386709(n+3)-A386709(n+2)`
-/

namespace A001687.P7452669805190643085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386709 (n + 3) - A386709 (n + 2)

end

end A001687.P7452669805190643085

namespace A001687

/-- `A386709(n+3)-A386709(n+2)` -/
def P7452669805190643085.Spec : Prop :=
  ∀ n, P7452669805190643085.a n = A001687 n

end A001687

/-!
# A001688: 4th forward differences of factorial numbers A000142.

The programs for A001688, the canonical program `A001688.P6173108013577689173` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001688 has offset 0).

The definition of A001688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001688.P6173108013577689173

`(n+5)*a(n-1)-(n-1)*a(n-2)` with `a(0)=9, a(1)=53`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001688

/-- `(n+5)*a(n-1)-(n-1)*a(n-2)` -/
def P6173108013577689173.Spec : Prop :=
  ∀ n, P6173108013577689173.a n = A001688 n

theorem P6173108013577689173.correct : P6173108013577689173.Spec := by
  intro n
  simp only [A001688]

end A001688

/-! ## A001688.P8003891619950281088

`(n^4+6*n^3+17*n²+20*n+9)*n!`
-/

namespace A001688.P8003891619950281088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 6 * n ^ 3 + 17 * n ^ 2 + 20 * n + 9) * Nat.factorial n

end

end A001688.P8003891619950281088

namespace A001688

/-- `(n^4+6*n^3+17*n²+20*n+9)*n!` -/
def P8003891619950281088.Spec : Prop :=
  ∀ n, (P8003891619950281088.a n : ℤ) = A001688 n

end A001688

/-! ## A001688.P3388013395251468971

`Δ[Δ[Δ[Δ[n!]]]]`
-/

namespace A001688.P3388013395251468971
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001688.P3388013395251468971

namespace A001688

/-- `Δ[Δ[Δ[Δ[n!]]]]` -/
def P3388013395251468971.Spec : Prop :=
  ∀ n, P3388013395251468971.a n = A001688 n

end A001688

/-! ## A001688.P14372612192945750221

`Δ[Δ[Δ[Δ[n*a(n-1)]]]]` with `a(0)=1`
-/

namespace A001688.P14372612192945750221
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  n * f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001688.P14372612192945750221

namespace A001688

/-- `Δ[Δ[Δ[Δ[n*a(n-1)]]]]` -/
def P14372612192945750221.Spec : Prop :=
  ∀ n, P14372612192945750221.a n = A001688 n

end A001688

/-! ## A001688.P862756247625950097

`Δ[Δ[Δ[n*∏[n+1]/(n+1)]]]`
-/

namespace A001688.P862756247625950097
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((∏ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ) / (n + 1 : ℚ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001688.P862756247625950097

namespace A001688

/-- `Δ[Δ[Δ[n*∏[n+1]/(n+1)]]]` -/
def P862756247625950097.Spec : Prop :=
  ∀ n, P862756247625950097.a n = (A001688 n : ℚ)

end A001688

/-! ## A001688.P17110826809417706610

`ceil(A001342(n)/e)`
-/

namespace A001688.P17110826809417706610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001342 n : ℝ) / Real.exp 1⌉

end

end A001688.P17110826809417706610

namespace A001688

/-- `ceil(A001342(n)/e)` -/
def P17110826809417706610.Spec : Prop :=
  ∀ n, P17110826809417706610.a n = A001688 n

end A001688

/-! ## A001688.P6322681173378470139

`Δ[2*A001565(n)]/2`
-/

namespace A001688.P6322681173378470139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001565 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A001688.P6322681173378470139

namespace A001688

/-- `Δ[2*A001565(n)]/2` -/
def P6322681173378470139.Spec : Prop :=
  ∀ n, P6322681173378470139.a n = (A001688 n : ℚ)

end A001688

/-! ## A001688.P17409972978419311381

`A061312(A167614(n+2))`
-/

namespace A001688.P17409972978419311381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061312 (A167614 (n + 2)).toNat

end

end A001688.P17409972978419311381

namespace A001688

/-- `A061312(A167614(n+2))` -/
def P17409972978419311381.Spec : Prop :=
  ∀ n, P17409972978419311381.a n = A001688 n

end A001688

/-! ## A001688.P17243787599594596637

`A000142(n)*A094793(n)`
-/

namespace A001688.P17243787599594596637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A094793 n

end

end A001688.P17243787599594596637

namespace A001688

/-- `A000142(n)*A094793(n)` -/
def P17243787599594596637.Spec : Prop :=
  ∀ n, P17243787599594596637.a n = A001688 n

end A001688

/-! ## A001688.P13132611602564963477

`A001565(n+1)-A001565(n)`
-/

namespace A001688.P13132611602564963477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001565 (n + 1) - A001565 n

end

end A001688.P13132611602564963477

namespace A001688

/-- `A001565(n+1)-A001565(n)` -/
def P13132611602564963477.Spec : Prop :=
  ∀ n, P13132611602564963477.a n = A001688 n

end A001688

/-!
# A001689: 5th forward differences of factorial numbers A000142.

The programs for A001689, the canonical program `A001689.P16991533153034909195` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001689 has offset 0).

The definition of A001689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001689.P16991533153034909195

`(n+6)*a(n-1)-(n-1)*a(n-2)` with `a(0)=44, a(1)=309`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001689

/-- `(n+6)*a(n-1)-(n-1)*a(n-2)` -/
def P16991533153034909195.Spec : Prop :=
  ∀ n, P16991533153034909195.a n = A001689 n

theorem P16991533153034909195.correct : P16991533153034909195.Spec := by
  intro n
  simp only [A001689]

end A001689

/-! ## A001689.P931132911632046714

`(n^5+10*n^4+45*n^3+100*n²+109*n+44)*n!`
-/

namespace A001689.P931132911632046714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 5 + 10 * n ^ 4 + 45 * n ^ 3 + 100 * n ^ 2 + 109 * n + 44) * Nat.factorial n

end

end A001689.P931132911632046714

namespace A001689

/-- `(n^5+10*n^4+45*n^3+100*n²+109*n+44)*n!` -/
def P931132911632046714.Spec : Prop :=
  ∀ n, (P931132911632046714.a n : ℤ) = A001689 n

end A001689

/-! ## A001689.P14190720235673855242

`Δ[Δ[Δ[Δ[Δ[n!]]]]]`
-/

namespace A001689.P14190720235673855242
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001689.P14190720235673855242

namespace A001689

/-- `Δ[Δ[Δ[Δ[Δ[n!]]]]]` -/
def P14190720235673855242.Spec : Prop :=
  ∀ n, P14190720235673855242.a n = A001689 n

end A001689

/-! ## A001689.P6483915074342480086

`Δ[A001688(n)]`
-/

namespace A001689.P6483915074342480086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001689.P6483915074342480086

namespace A001689

/-- `Δ[A001688(n)]` -/
def P6483915074342480086.Spec : Prop :=
  ∀ n, P6483915074342480086.a n = A001689 n

end A001689

/-! ## A001689.P3587613936439178815

`Δ[Δ[A001565(n)]]`
-/

namespace A001689.P3587613936439178815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001689.P3587613936439178815

namespace A001689

/-- `Δ[Δ[A001565(n)]]` -/
def P3587613936439178815.Spec : Prop :=
  ∀ n, P3587613936439178815.a n = A001689 n

end A001689

/-! ## A001689.P9554985048423561694

`n!*A094794(n)`
-/

namespace A001689.P9554985048423561694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A094794 n

end

end A001689.P9554985048423561694

namespace A001689

/-- `n!*A094794(n)` -/
def P9554985048423561694.Spec : Prop :=
  ∀ n, P9554985048423561694.a n = A001689 n

end A001689

/-! ## A001689.P14789174335468535234

`Δ[Δ[Δ[A001564(n)]]]`
-/

namespace A001689.P14789174335468535234
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001689.P14789174335468535234

namespace A001689

/-- `Δ[Δ[Δ[A001564(n)]]]` -/
def P14789174335468535234.Spec : Prop :=
  ∀ n, P14789174335468535234.a n = A001689 n

end A001689

/-! ## A001689.P2164802258084111850

`A068106(A055999(n+3))`
-/

namespace A001689.P2164802258084111850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A055999 (n + 3)).toNat

end

end A001689.P2164802258084111850

namespace A001689

/-- `A068106(A055999(n+3))` -/
def P2164802258084111850.Spec : Prop :=
  ∀ n, P2164802258084111850.a n = A001689 n

end A001689

/-! ## A001689.P10388398927690895904

`A047920(A167499(n+4))`
-/

namespace A001689.P10388398927690895904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A167499 (n + 4)).toNat

end

end A001689.P10388398927690895904

namespace A001689

/-- `A047920(A167499(n+4))` -/
def P10388398927690895904.Spec : Prop :=
  ∀ n, P10388398927690895904.a n = A001689 n

end A001689

/-! ## A001689.P8297059590788624796

`A000142(n)*A094794(n)`
-/

namespace A001689.P8297059590788624796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A094794 n

end

end A001689.P8297059590788624796

namespace A001689

/-- `A000142(n)*A094794(n)` -/
def P8297059590788624796.Spec : Prop :=
  ∀ n, P8297059590788624796.a n = A001689 n

end A001689

/-!
# A001690: Non-Fibonacci numbers.

The programs for A001690, the canonical program `A001690.P14637073873687351098` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001690 has offset 1).

The definition of A001690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001690.P14637073873687351098

`comp[round(ϕ*a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001690

/-- `comp[round(ϕ*a(n-1))]` -/
def P14637073873687351098.Spec : Prop :=
  ∀ n, (P14637073873687351098.a n : ℤ) = A001690 (n + 1)

theorem P14637073873687351098.correct : P14637073873687351098.Spec := by
  intro n
  simp only [A001690, Nat.add_sub_cancel]

end A001690

/-! ## A001690.P17998277671885517697

`comp[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A001690.P17998277671885517697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001690.P17998277671885517697

namespace A001690

/-- `comp[a(n-1)+a(n-2)]` -/
def P17998277671885517697.Spec : Prop :=
  ∀ n, (P17998277671885517697.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P12643987165627414791

`comp[Δ[floor(ϕ²*a(n-2))]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A001690.P12643987165627414791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f2 =>
  ⌊Real.goldenRatio ^ 2 * (f2 (n - 2) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P12643987165627414791

namespace A001690

/-- `comp[Δ[floor(ϕ²*a(n-2))]]` -/
def P12643987165627414791.Spec : Prop :=
  ∀ n, (P12643987165627414791.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P11660002096761218118

`comp[a(n-1)-floor(-a(n-2))]` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001690.P11660002096761218118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P11660002096761218118

namespace A001690

/-- `comp[a(n-1)-floor(-a(n-2))]` -/
def P11660002096761218118.Spec : Prop :=
  ∀ n, (P11660002096761218118.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P1635509523393655514

`comp[a(n-1)-ceil(-a(n-2))]` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A001690.P1635509523393655514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P1635509523393655514

namespace A001690

/-- `comp[a(n-1)-ceil(-a(n-2))]` -/
def P1635509523393655514.Spec : Prop :=
  ∀ n, (P1635509523393655514.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P5270443883660211581

`comp[a(n-1)-round(-a(n-2))]` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A001690.P5270443883660211581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P5270443883660211581

namespace A001690

/-- `comp[a(n-1)-round(-a(n-2))]` -/
def P5270443883660211581.Spec : Prop :=
  ∀ n, (P5270443883660211581.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P11382333276067947841

`comp[a(n-1)-(char[1]-a(n-2))]` with `a(0)=-1, a(1)=1`
-/

namespace A001690.P11382333276067947841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 1) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P11382333276067947841

namespace A001690

/-- `comp[a(n-1)-(char[1]-a(n-2))]` -/
def P11382333276067947841.Spec : Prop :=
  ∀ n, (P11382333276067947841.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P10436410143761124374

`comp[A000045(n)]`
-/

namespace A001690.P10436410143761124374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P10436410143761124374

namespace A001690

/-- `comp[A000045(n)]` -/
def P10436410143761124374.Spec : Prop :=
  ∀ n, (P10436410143761124374.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P8270100671710493486

`comp[A020345(n)]`
-/

namespace A001690.P8270100671710493486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P8270100671710493486

namespace A001690

/-- `comp[A020345(n)]` -/
def P8270100671710493486.Spec : Prop :=
  ∀ n, (P8270100671710493486.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P3293512406726566907

`comp[A053602(n)]`
-/

namespace A001690.P3293512406726566907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P3293512406726566907

namespace A001690

/-- `comp[A053602(n)]` -/
def P3293512406726566907.Spec : Prop :=
  ∀ n, (P3293512406726566907.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P9928147934040728279

`comp[A079977(n)]`
-/

namespace A001690.P9928147934040728279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P9928147934040728279

namespace A001690

/-- `comp[A079977(n)]` -/
def P9928147934040728279.Spec : Prop :=
  ∀ n, (P9928147934040728279.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P9271431245870134136

`comp[A097637(n)]`
-/

namespace A001690.P9271431245870134136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P9271431245870134136

namespace A001690

/-- `comp[A097637(n)]` -/
def P9271431245870134136.Spec : Prop :=
  ∀ n, (P9271431245870134136.a n : ℤ) = A001690 (n + 1)

end A001690

/-! ## A001690.P1527992009414000983

`comp[A098054(n)]`
-/

namespace A001690.P1527992009414000983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001690.P1527992009414000983

namespace A001690

/-- `comp[A098054(n)]` -/
def P1527992009414000983.Spec : Prop :=
  ∀ n, (P1527992009414000983.a n : ℤ) = A001690 (n + 1)

end A001690

/-!
# A001691: Number of two-element generating sets in the symmetric group S_n.

The programs for A001691, there is no canonical definition to state claims against.
-/

/-! ## A001691.P16067296995806730234

`floor(A071605(n+1)/2)`
-/

namespace A001691.P16067296995806730234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071605 (n + 1) : ℚ) / 2⌋

end

end A001691.P16067296995806730234

/-! ## A001691.P1286147816711523339

`floor(n!*A135474(n+1)/2)`
-/

namespace A001691.P1286147816711523339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.factorial n : ℤ) * A135474 (n + 1) : ℚ) / 2⌋

end

end A001691.P1286147816711523339

/-! ## A001691.P11955611943594487982

`floor(A135474(n+1)/2*A000142(n))`
-/

namespace A001691.P11955611943594487982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135474 (n + 1) : ℚ) / 2 * (A000142 n : ℚ)⌋

end

end A001691.P11955611943594487982

/-! ## A001691.P272518439041101266

`floor(Δ[A003422(n)]*A135474(n+1)/2)`
-/

namespace A001691.P272518439041101266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) - f1 n) * A135474 (n + 1) : ℚ) / 2⌋

end

end A001691.P272518439041101266

/-! ## A001691.P11378789406132648758

`floor(∏[A028310(n)]*A135474(n+1)/2)`
-/

namespace A001691.P11378789406132648758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ j ∈ Finset.range (n + 1), f1 j) * A135474 (n + 1) : ℤ) : ℚ) / 2⌋

end

end A001691.P11378789406132648758

/-!
# A001692: Number of irreducible polynomials of degree n over GF(5); dimensions of free Lie algebras.

The programs for A001692, there is no canonical definition to state claims against.
-/

/-! ## A001692.P6586816968249502545

`A054720(n*a(floor(acot(n))))/n` with `a(0)=1`
-/

namespace A001692.P6586816968249502545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A054720 (SequenceMachineLib.roundAway ((n : ℚ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat)).toNat : ℚ) / (n : ℚ)

end

end A001692.P6586816968249502545

/-! ## A001692.P15193206030446068068

`A054720(n)/A028310(n)`
-/

namespace A001692.P15193206030446068068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 n : ℚ) / (A028310 n : ℚ)

end

end A001692.P15193206030446068068

/-! ## A001692.P13849900784172198602

`A054720(n)/A065033(2*n)`
-/

namespace A001692.P13849900784172198602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A001692.P13849900784172198602

/-! ## A001692.P9528386048363761529

`A054720(n)/A123108(2*n)`
-/

namespace A001692.P9528386048363761529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A001692.P9528386048363761529

/-! ## A001692.P17306675202829317606

`A054720(n)/A008619(A004273(n))`
-/

namespace A001692.P17306675202829317606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A001692.P17306675202829317606

/-! ## A001692.P11275863803391404916

`A054720(n)/A002260(A034856(n+1))`
-/

namespace A001692.P11275863803391404916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 n : ℚ) / (A002260 (A034856 (n + 1)).toNat : ℚ)

end

end A001692.P11275863803391404916

/-! ## A001692.P11081059083730330703

`A027376(n)/A054718(n)*A054720(n)`
-/

namespace A001692.P11081059083730330703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027376 n : ℚ) / (A054718 n : ℚ) * (A054720 n : ℚ)

end

end A001692.P11081059083730330703

/-! ## A001692.P4378330055413155138

`A054720(n)/A007318(A000124(n))`
-/

namespace A001692.P4378330055413155138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A001692.P4378330055413155138

/-! ## A001692.P2885052787878435209

`record[A074650(A057427(n)+A052905(n))]`
-/

namespace A001692.P2885052787878435209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A057427 n + A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001692.P2885052787878435209

/-! ## A001692.P9678131969554742143

`A074650(A057427(n)+A052905(n+1))`
-/

namespace A001692.P9678131969554742143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A057427 n + A052905 (n + 1)).toNat

end

end A001692.P9678131969554742143

/-!
# A001693: Number of degree-n irreducible polynomials over GF(7); dimensions of free Lie algebras.

The programs for A001693, there is no canonical definition to state claims against.
-/

/-! ## A001693.P10681923246481085743

`A218124(n)/A028310(n)`
-/

namespace A001693.P10681923246481085743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A028310 n : ℚ)

end

end A001693.P10681923246481085743

/-! ## A001693.P4616881447877164512

`A218124(n)/A007318(A000124(n))`
-/

namespace A001693.P4616881447877164512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A001693.P4616881447877164512

/-! ## A001693.P10181970747436090922

`A218124(n)/A008619(A004273(n))`
-/

namespace A001693.P10181970747436090922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A001693.P10181970747436090922

/-! ## A001693.P13621291487999067912

`A218124(n)/A134478(A000217(n))`
-/

namespace A001693.P13621291487999067912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A134478 (A000217 n).toNat : ℚ)

end

end A001693.P13621291487999067912

/-! ## A001693.P8464116781792414488

`A218124(n)/A004736(A133263(n))`
-/

namespace A001693.P8464116781792414488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A004736 (A133263 n).toNat : ℚ)

end

end A001693.P8464116781792414488

/-! ## A001693.P5082814689582175670

`A218124(n)/A000196(A253909(n))`
-/

namespace A001693.P5082814689582175670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A000196 (A253909 n).toNat : ℚ)

end

end A001693.P5082814689582175670

/-! ## A001693.P14280615912511512990

`A218124(n)/A000196(A002522(n))`
-/

namespace A001693.P14280615912511512990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218124 n : ℚ) / (A000196 (A002522 n).toNat : ℚ)

end

end A001693.P14280615912511512990

/-!
# A001694: Powerful numbers, definition (1): if a prime p divides n then p^2 must also divide n (also called squareful, square full, square-full or 2-powerful numbers).

The programs for A001694, there is no canonical definition to state claims against.
-/

/-! ## A001694.P18220623805651826121

`A224866(n+1)-1`
-/

namespace A001694.P18220623805651826121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

end

end A001694.P18220623805651826121

/-! ## A001694.P11343480960391659363

`sqrt(A374291(n+1))`
-/

namespace A001694.P11343480960391659363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374291 (n + 1) : ℝ)

end

end A001694.P11343480960391659363

/-! ## A001694.P5487653648609478683

`A076446(n)+a(n-1)` with `a(0)=1`
-/

namespace A001694.P5487653648609478683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076446 n + a (n - 1)

end

end A001694.P5487653648609478683

/-! ## A001694.P10689353715532914850

`∪[(n+1)², A320966(n+1)]`
-/

namespace A001694.P10689353715532914850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P10689353715532914850

/-! ## A001694.P5657338400916781358

`A084371(n+1)*A306458(n+1)`
-/

namespace A001694.P5657338400916781358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

end

end A001694.P5657338400916781358

/-! ## A001694.P13456643834402140395

`A369429(n+1)*A369430(n+1)`
-/

namespace A001694.P13456643834402140395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369429 (n + 1) * A369430 (n + 1)

end

end A001694.P13456643834402140395

/-! ## A001694.P2802320850780043892

`∪[A001597(n+1), A052486(n+1)]`
-/

namespace A001694.P2802320850780043892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P2802320850780043892

/-! ## A001694.P1325333958382748417

`∪[A001597(n+1), A102834(n+1)]`
-/

namespace A001694.P1325333958382748417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P1325333958382748417

/-! ## A001694.P17315531280049525219

`∪[A001597(n+1), A216426(n+1)]`
-/

namespace A001694.P17315531280049525219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P17315531280049525219

/-! ## A001694.P10055606782421312645

`∪[A001597(n+1), A216427(n+1)]`
-/

namespace A001694.P10055606782421312645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P10055606782421312645

/-! ## A001694.P16731795990935066699

`∪[A001597(n+1), A286708(n+1)]`
-/

namespace A001694.P16731795990935066699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P16731795990935066699

/-! ## A001694.P12428365915730471840

`∪[A025475(n+1), A286708(n+1)]`
-/

namespace A001694.P12428365915730471840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P12428365915730471840

/-! ## A001694.P1763207966481874090

`∪[A320966(n+1), A001597(n+1)]`
-/

namespace A001694.P1763207966481874090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P1763207966481874090

/-! ## A001694.P1309308056647641810

`∪[A001597(n+1), A359280(n+1)]`
-/

namespace A001694.P1309308056647641810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P1309308056647641810

/-! ## A001694.P3132132207844097879

`∪[A036966(n+1), A325240(n+1)]`
-/

namespace A001694.P3132132207844097879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P3132132207844097879

/-! ## A001694.P10790361564171508014

`∪[A076292(n+1), A286708(n+1)]`
-/

namespace A001694.P10790361564171508014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P10790361564171508014

/-! ## A001694.P11438609399703453589

`∪[A102834(n+1), A266918(n+1)]`
-/

namespace A001694.P11438609399703453589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P11438609399703453589

/-! ## A001694.P7325922827225879450

`∪[A320966(n+1), A056166(n+1)]`
-/

namespace A001694.P7325922827225879450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P7325922827225879450

/-! ## A001694.P5329640420984667092

`∪[A320966(n+1), A062503(n+1)]`
-/

namespace A001694.P5329640420984667092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001694.P5329640420984667092

/-! ## A001694.P5469418828569902836

`A369429(n+1)²*A342477(n+1)`
-/

namespace A001694.P5469418828569902836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369429 (n + 1) ^ 2 * A342477 (n + 1)

end

end A001694.P5469418828569902836

/-!
# A001695: a(n) = H_n(2,n) where H_n is the n-th hyperoperator.

The programs for A001695, there is no canonical definition to state claims against.
-/

/-! ## A001695.P17054928665061147288

`(or(4, -n!)+4)^n`
-/

namespace A001695.P17054928665061147288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lor 4 (-(Nat.factorial n : ℤ)) + 4) ^ n

end

end A001695.P17054928665061147288

/-!
# A001696: a(n) = a(n-1)*(1 + a(n-1) - a(n-2)), a(0) = 0, a(1) = 1.

The programs for A001696, the canonical program `A001696.P18093081189508735679` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001696 has offset 0).

The definition of A001696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*(1+a(n-1)-a(n-2))` (program `A001696.P18093081189508735679`, by `A001696.P18093081189508735679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001696.P18093081189508735679

`a(n-1)*(1+a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001696

/-- `a(n-1)*(1+a(n-1)-a(n-2))` -/
def P18093081189508735679.Spec : Prop :=
  ∀ n, P18093081189508735679.a n = A001696 n

theorem P18093081189508735679.correct : P18093081189508735679.Spec := by
  intro n
  simp only [A001696]

end A001696

/-! ## A001696.P13573921880557736392

`(1-(a(n-2)-a(n-1)))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A001696.P13573921880557736392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (a (n - 2) - a (n - 1))) * a (n - 1)

end

end A001696.P13573921880557736392

namespace A001696

/-- `(1-(a(n-2)-a(n-1)))*a(n-1)` -/
def P13573921880557736392.Spec : Prop :=
  ∀ n, P13573921880557736392.a n = A001696 n

end A001696

/-! ## A001696.P4622306264744008898

`A039941(2*n)`
-/

namespace A001696.P4622306264744008898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (2 * n)

end

end A001696.P4622306264744008898

namespace A001696

/-- `A039941(2*n)` -/
def P4622306264744008898.Spec : Prop :=
  ∀ n, P4622306264744008898.a n = A001696 n

end A001696

/-! ## A001696.P680790949323656448

`∑[A001697(abs(1-n))]-1`
-/

namespace A001696.P680790949323656448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001697 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001696.P680790949323656448

namespace A001696

/-- `∑[A001697(abs(1-n))]-1` -/
def P680790949323656448.Spec : Prop :=
  ∀ n, P680790949323656448.a n = A001696 n

end A001696

/-! ## A001696.P3203684496732326705

`∑[A039941(A004273(n))]`
-/

namespace A001696.P3203684496732326705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001696.P3203684496732326705

namespace A001696

/-- `∑[A039941(A004273(n))]` -/
def P3203684496732326705.Spec : Prop :=
  ∀ n, P3203684496732326705.a n = A001696 n

end A001696

/-!
# A001697: a(n+1) = a(n)*(a(0) + ... + a(n)), a(0) = 1.

The programs for A001697, the canonical program `A001697.P3316348650442137855` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001697 has offset 0).

The definition of A001697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001697.P3316348650442137855

`a(n-1)²*(1+1/a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001697

/-- `a(n-1)²*(1+1/a(n-2))` -/
def P3316348650442137855.Spec : Prop :=
  ∀ n, P3316348650442137855.a n = (A001697 n : ℚ)

end A001697

/-! ## A001697.P16270300687152688334

`(a(n-2)^(-1)+1)*a(n-1)²` with `a(0)=1, a(1)=1`
-/

namespace A001697.P16270300687152688334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) ^ (-1 : ℤ) + 1) * a (n - 1) ^ 2

end

end A001697.P16270300687152688334

namespace A001697

/-- `(a(n-2)^(-1)+1)*a(n-1)²` -/
def P16270300687152688334.Spec : Prop :=
  ∀ n, P16270300687152688334.a n = (A001697 n : ℚ)

end A001697

/-! ## A001697.P15299431307810740111

`a(n-1)²+a(n-1)²/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001697.P15299431307810740111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + a (n - 1) ^ 2 / a (n - 2)

end

end A001697.P15299431307810740111

namespace A001697

/-- `a(n-1)²+a(n-1)²/a(n-2)` -/
def P15299431307810740111.Spec : Prop :=
  ∀ n, P15299431307810740111.a n = (A001697 n : ℚ)

end A001697

/-! ## A001697.P16920661801240257312

`(1/a(n-2)+1)*a(n-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001697.P16920661801240257312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 / a (n - 2) + 1) * (a (n - 1) * a (n - 1))

end

end A001697.P16920661801240257312

namespace A001697

/-- `(1/a(n-2)+1)*a(n-1)*a(n-1)` -/
def P16920661801240257312.Spec : Prop :=
  ∀ n, P16920661801240257312.a n = (A001697 n : ℚ)

end A001697

/-! ## A001697.P9451188160261666714

`Δ[A001696(n)]`
-/

namespace A001697.P9451188160261666714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001697.P9451188160261666714

namespace A001697

/-- `Δ[A001696(n)]` -/
def P9451188160261666714.Spec : Prop :=
  ∀ n, P9451188160261666714.a n = A001697 n

end A001697

/-!
# A001698: a(n) = ceiling(sqrt( 2*Pi )^n).

The programs for A001698, the canonical program `A001698.P3959403905572157936` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001698 has offset 0).

The definition of A001698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001698.P6823372676293353503

`ceil(sqrt(2*π)^n)`
-/

namespace A001698.P6823372676293353503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * Real.pi) ^ n⌉

end

end A001698.P6823372676293353503

namespace A001698

/-- `ceil(sqrt(2*π)^n)` -/
def P6823372676293353503.Spec : Prop :=
  ∀ n, P6823372676293353503.a n = A001698 n

end A001698

/-! ## A001698.P3959403905572157936

`A057427(n)+A001674(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001698

/-- `A057427(n)+A001674(n)` -/
def P3959403905572157936.Spec : Prop :=
  ∀ n, P3959403905572157936.a n = A001698 n

theorem P3959403905572157936.correct : P3959403905572157936.Spec := by
  intro n
  simp only [A001698]

end A001698

/-! ## A001698.P2984648192490480020

`A001674(n)-A057428(n)`
-/

namespace A001698.P2984648192490480020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n - A057428 n

end

end A001698.P2984648192490480020

namespace A001698

/-- `A001674(n)-A057428(n)` -/
def P2984648192490480020.Spec : Prop :=
  ∀ n, P2984648192490480020.a n = A001698 n

theorem P2984648192490480020.correct : P2984648192490480020.Spec := by
  intro n
  simp only [A001698, Nat.add_sub_cancel, A001698.P2984648192490480020.a, A001698.P3959403905572157936.a, A001674, A001674.P17887057875498561843.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001698

/-! ## A001698.P7580275362899469905

`A001674(n)+1-A000007(n)`
-/

namespace A001698.P7580275362899469905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + (1 - A000007 n)

end

end A001698.P7580275362899469905

namespace A001698

/-- `A001674(n)+1-A000007(n)` -/
def P7580275362899469905.Spec : Prop :=
  ∀ n, P7580275362899469905.a n = A001698 n

theorem P7580275362899469905.correct : P7580275362899469905.Spec := by
  intro n
  simp only [A001698, Nat.add_sub_cancel, A001698.P7580275362899469905.a, A001698.P3959403905572157936.a, A000007, A000007.P6599383543502402472.a, A001674, A001674.P17887057875498561843.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001698

/-! ## A001698.P16181371620008939910

`record[A001674(A110654(n))+and(1, n)]`
-/

namespace A001698.P16181371620008939910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 (A110654 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001698.P16181371620008939910

namespace A001698

/-- `record[A001674(A110654(n))+and(1, n)]` -/
def P16181371620008939910.Spec : Prop :=
  ∀ n, P16181371620008939910.a n = A001698 n

end A001698

/-! ## A001698.P13205755806800606646

`A001674(n)+and(1, A002313(n+1))`
-/

namespace A001698.P13205755806800606646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + Int.land 1 (A002313 (n + 1))

end

end A001698.P13205755806800606646

namespace A001698

/-- `A001674(n)+and(1, A002313(n+1))` -/
def P13205755806800606646.Spec : Prop :=
  ∀ n, P13205755806800606646.a n = A001698 n

end A001698

/-! ## A001698.P4630150161971804956

`A001674(n)+A121279(n)-A032739(n)`
-/

namespace A001698.P4630150161971804956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + (A121279 n - A032739 n)

end

end A001698.P4630150161971804956

namespace A001698

/-- `A001674(n)+A121279(n)-A032739(n)` -/
def P4630150161971804956.Spec : Prop :=
  ∀ n, P4630150161971804956.a n = A001698 n

end A001698

/-! ## A001698.P5146537357569636625

`A001674(n)+A169986(n)-A014217(n)`
-/

namespace A001698.P5146537357569636625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + (A169986 n - A014217 n)

end

end A001698.P5146537357569636625

namespace A001698

/-- `A001674(n)+A169986(n)-A014217(n)` -/
def P5146537357569636625.Spec : Prop :=
  ∀ n, P5146537357569636625.a n = A001698 n

end A001698

/-! ## A001698.P15830425901936046500

`A001674(n)+A121282(n)-A121283(n)`
-/

namespace A001698.P15830425901936046500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + (A121282 n - A121283 n)

end

end A001698.P15830425901936046500

namespace A001698

/-- `A001674(n)+A121282(n)-A121283(n)` -/
def P15830425901936046500.Spec : Prop :=
  ∀ n, P15830425901936046500.a n = A001698 n

end A001698

/-! ## A001698.P6694615352517826610

`A001674(n)+A000007(A000007(n)*A001674(n))`
-/

namespace A001698.P6694615352517826610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + A000007 (A000007 n * A001674 n).toNat

end

end A001698.P6694615352517826610

namespace A001698

/-- `A001674(n)+A000007(A000007(n)*A001674(n))` -/
def P6694615352517826610.Spec : Prop :=
  ∀ n, P6694615352517826610.a n = A001698 n

end A001698

/-! ## A001698.P12960922892861741965

`A001674(n)+A000007(A000007(n)/A001674(n))`
-/

namespace A001698.P12960922892861741965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001674 n + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A001674 n : ℚ))).toNat

end

end A001698.P12960922892861741965

namespace A001698

/-- `A001674(n)+A000007(A000007(n)/A001674(n))` -/
def P12960922892861741965.Spec : Prop :=
  ∀ n, P12960922892861741965.a n = A001698 n

end A001698

/-! ## A001698.P2010874761547566701

`A065475(A065475(n+1))+A001674(n)-A065475(n+1)`
-/

namespace A001698.P2010874761547566701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A065475 (n + 1)).toNat + (A001674 n - A065475 (n + 1))

end

end A001698.P2010874761547566701

namespace A001698

/-- `A065475(A065475(n+1))+A001674(n)-A065475(n+1)` -/
def P2010874761547566701.Spec : Prop :=
  ∀ n, P2010874761547566701.a n = A001698 n

end A001698

/-! ## A001698.P13699523944400658933

`A001671(n)+A001674(n)-A000149(n)`
-/

namespace A001698.P13699523944400658933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n + (A001674 n - A000149 n)

end

end A001698.P13699523944400658933

namespace A001698

/-- `A001671(n)+A001674(n)-A000149(n)` -/
def P13699523944400658933.Spec : Prop :=
  ∀ n, P13699523944400658933.a n = A001698 n

theorem P13699523944400658933.correct : P13699523944400658933.Spec := by
  intro n
  simp only [A001698, Nat.add_sub_cancel, A001698.P13699523944400658933.a, A001698.P3959403905572157936.a, A000149, A000149.P348263657615241890.a, A001671, A001671.P524176182924743815.a, A001674, A001674.P17887057875498561843.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001698

/-!
# A001699: Number of binary trees of height n; or products (ways to insert parentheses) of height n when multiplication is non-commutative and non-associative.

The programs for A001699, the canonical program `A001699.P162027264242017118` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001699 has offset 0).

The definition of A001699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001699.P12502158052918988847

`a(n-1)*(a(n-1)+a(n-2)+a(n-1)/a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A001699.P12502158052918988847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (a (n - 1) + a (n - 2) + a (n - 1) / a (n - 2))

end

end A001699.P12502158052918988847

namespace A001699

/-- `a(n-1)*(a(n-1)+a(n-2)+a(n-1)/a(n-2))` -/
def P12502158052918988847.Spec : Prop :=
  ∀ n, P12502158052918988847.a n = (A001699 n : ℚ)

end A001699

/-! ## A001699.P162027264242017118

`A003095(n+1)-A003095(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001699

/-- `A003095(n+1)-A003095(n)` -/
def P162027264242017118.Spec : Prop :=
  ∀ n, P162027264242017118.a n = A001699 n

theorem P162027264242017118.correct : P162027264242017118.Spec := by
  intro n
  simp only [A001699]

end A001699

/-! ## A001699.P15464545083828601150

`Δ[(a(n-1)+1)²]` with `a(0)=-1`
-/

namespace A001699.P15464545083828601150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  (f1 (n - 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001699.P15464545083828601150

namespace A001699

/-- `Δ[(a(n-1)+1)²]` -/
def P15464545083828601150.Spec : Prop :=
  ∀ n, P15464545083828601150.a n = A001699 n

end A001699

/-! ## A001699.P10302204412337280637

`Δ[or(2, (1-a(n-1))²)]` with `a(0)=1`
-/

namespace A001699.P10302204412337280637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 2 ((1 - f1 (n - 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001699.P10302204412337280637

namespace A001699

/-- `Δ[or(2, (1-a(n-1))²)]` -/
def P10302204412337280637.Spec : Prop :=
  ∀ n, P10302204412337280637.a n = A001699 n

end A001699

/-! ## A001699.P8206211597482963361

`Δ[xor(2, (1-a(n-1))²)]` with `a(0)=1`
-/

namespace A001699.P8206211597482963361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 2 ((1 - f1 (n - 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001699.P8206211597482963361

namespace A001699

/-- `Δ[xor(2, (1-a(n-1))²)]` -/
def P8206211597482963361.Spec : Prop :=
  ∀ n, P8206211597482963361.a n = A001699 n

end A001699

