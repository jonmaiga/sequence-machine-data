import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B004.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A174400: Hankel transform of A174399.

The programs for A174400, the canonical program `A174400.P8882727417934889355` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174400 has offset 0).

The definition of A174400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174400.P8882727417934889355

`(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1, a(4)=-1, a(5)=-2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174400

/-- `(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P8882727417934889355.Spec : Prop :=
  ∀ n, P8882727417934889355.a n = (A174400 n : ℚ)

end A174400

/-! ## A174400.P15527538955853541124

`A070432(A008574(n))-A178079(floor(n²/(n+1)))`
-/

namespace A174400.P15527538955853541124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (A008574 n).toNat - A178079 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A174400.P15527538955853541124

namespace A174400

/-- `A070432(A008574(n))-A178079(floor(n²/(n+1)))` -/
def P15527538955853541124.Spec : Prop :=
  ∀ n, P15527538955853541124.a n = A174400 n

end A174400

/-!
# A174403: Expansion of (1-2*x-2*x^2-sqrt(1-4*x-4*x^2+8*x^3+4*x^4))/(2*x^2).

The programs for A174403, there is no canonical definition to state claims against.
-/

/-! ## A174403.P3205486823867495611

`A214701(A106188(n))`
-/

namespace A174403.P3205486823867495611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A106188 n).toNat

end

end A174403.P3205486823867495611

/-! ## A174403.P11982326670002213492

`A392463(C(n, floor(n/2)))+A000984(n)`
-/

namespace A174403.P11982326670002213492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392463 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat) + A000984 n

end

end A174403.P11982326670002213492

/-!
# A174404: A (4,5)-Somos 4 sequence.

The programs for A174404, the canonical program `A174404.P17219356350226209288` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174404 has offset 0).

The definition of A174404 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174404.P17219356350226209288

`(4*a(n-1)*a(n-3)+5*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=3, a(2)=17, a(3)=113`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174404

/-- `(4*a(n-1)*a(n-3)+5*a(n-2)²)/a(n-4)` -/
def P17219356350226209288.Spec : Prop :=
  ∀ n, P17219356350226209288.a n = (A174404 n : ℚ)

end A174404

/-!
# A174405: Partial sums of Sum_{k=1..n} n/gcd(n,k), or partial sums of Sum_{d|n} d*phi(d) (see A057660).

The programs for A174405, the canonical program `A174405.P5773883220253665986` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174405 has offset 1).

The definition of A174405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174405.P5773883220253665986

`∑[A057660(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174405

/-- `∑[A057660(n+1)]` -/
def P5773883220253665986.Spec : Prop :=
  ∀ n, P5773883220253665986.a n = A174405 (n + 1)

theorem P5773883220253665986.correct : P5773883220253665986.Spec := by
  intro n
  simp only [A174405, Nat.add_sub_cancel]

end A174405

/-! ## A174405.P3101616168810957631

`∑[∑[A292302(n+1)]]`
-/

namespace A174405.P3101616168810957631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P3101616168810957631

namespace A174405

/-- `∑[∑[A292302(n+1)]]` -/
def P3101616168810957631.Spec : Prop :=
  ∀ n, P3101616168810957631.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P656416331658480154

`∑[A365076(n+1)-1]`
-/

namespace A174405.P656416331658480154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365076 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P656416331658480154

namespace A174405

/-- `∑[A365076(n+1)-1]` -/
def P656416331658480154.Spec : Prop :=
  ∀ n, P656416331658480154.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P2724727868063465151

`∑[∑{d}[n+1, A002618(#)]]`
-/

namespace A174405.P2724727868063465151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A002618 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P2724727868063465151

namespace A174405

/-- `∑[∑{d}[n+1, A002618(#)]]` -/
def P2724727868063465151.Spec : Prop :=
  ∀ n, P2724727868063465151.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P9675695859688664796

`∑[2*A332049(n+1)+1]`
-/

namespace A174405.P9675695859688664796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332049 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P9675695859688664796

namespace A174405

/-- `∑[2*A332049(n+1)+1]` -/
def P9675695859688664796.Spec : Prop :=
  ∀ n, P9675695859688664796.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P465580924151716980

`∑[2*A057661(n+1)-1]`
-/

namespace A174405.P465580924151716980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057661 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P465580924151716980

namespace A174405

/-- `∑[2*A057661(n+1)-1]` -/
def P465580924151716980.Spec : Prop :=
  ∀ n, P465580924151716980.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P5094576602995861865

`∑[∑{d}[n+1, #*A000010(#)]]`
-/

namespace A174405.P5094576602995861865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P5094576602995861865

namespace A174405

/-- `∑[∑{d}[n+1, #*A000010(#)]]` -/
def P5094576602995861865.Spec : Prop :=
  ∀ n, P5094576602995861865.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P18396143087619072533

`2*A232533(n+1)-(n+1)`
-/

namespace A174405.P18396143087619072533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232533 (n + 1) - (n + 1 : ℤ)

end

end A174405.P18396143087619072533

namespace A174405

/-- `2*A232533(n+1)-(n+1)` -/
def P18396143087619072533.Spec : Prop :=
  ∀ n, P18396143087619072533.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P2411852028649720940

`∑[A332049(n+1)+A057661(n+1)]`
-/

namespace A174405.P2411852028649720940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332049 (n + 1) + A057661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P2411852028649720940

namespace A174405

/-- `∑[A332049(n+1)+A057661(n+1)]` -/
def P2411852028649720940.Spec : Prop :=
  ∀ n, P2411852028649720940.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P13550536456355452571

`∑[A065827(n+1)/A065764(n+1)]`
-/

namespace A174405.P13550536456355452571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065827 (n + 1) : ℚ) / (A065764 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P13550536456355452571

namespace A174405

/-- `∑[A065827(n+1)/A065764(n+1)]` -/
def P13550536456355452571.Spec : Prop :=
  ∀ n, P13550536456355452571.a n = (A174405 (n + 1) : ℚ)

end A174405

/-! ## A174405.P10649053934065346793

`∑[∑{d}[n+1, A000010(#²)]]`
-/

namespace A174405.P10649053934065346793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (d ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P10649053934065346793

namespace A174405

/-- `∑[∑{d}[n+1, A000010(#²)]]` -/
def P10649053934065346793.Spec : Prop :=
  ∀ n, P10649053934065346793.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P13399507403192028977

`∑[A004273(A057661(n+1))]`
-/

namespace A174405.P13399507403192028977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A057661 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P13399507403192028977

namespace A174405

/-- `∑[A004273(A057661(n+1))]` -/
def P13399507403192028977.Spec : Prop :=
  ∀ n, P13399507403192028977.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P4781070811513095374

`∑[A344441((n+1)²)/2]`
-/

namespace A174405.P4781070811513095374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344441 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P4781070811513095374

namespace A174405

/-- `∑[A344441((n+1)²)/2]` -/
def P4781070811513095374.Spec : Prop :=
  ∀ n, P4781070811513095374.a n = (A174405 (n + 1) : ℚ)

end A174405

/-! ## A174405.P16843860030022060254

`record[∑[A054531(n+1)]/A054531(n+1)²]`
-/

namespace A174405.P16843860030022060254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A054531 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174405.P16843860030022060254

namespace A174405

/-- `record[∑[A054531(n+1)]/A054531(n+1)²]` -/
def P16843860030022060254.Spec : Prop :=
  ∀ n, P16843860030022060254.a n = (A174405 (n + 1) : ℚ)

end A174405

/-! ## A174405.P11144216182213695347

`∑[A055210((n+1)²)]`
-/

namespace A174405.P11144216182213695347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055210 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P11144216182213695347

namespace A174405

/-- `∑[A055210((n+1)²)]` -/
def P11144216182213695347.Spec : Prop :=
  ∀ n, P11144216182213695347.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P3121166483294865326

`∑[A061020((n+1)²)]`
-/

namespace A174405.P3121166483294865326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P3121166483294865326

namespace A174405

/-- `∑[A061020((n+1)²)]` -/
def P3121166483294865326.Spec : Prop :=
  ∀ n, P3121166483294865326.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P7158828568636141139

`∑[A158274((n+1)²)]`
-/

namespace A174405.P7158828568636141139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P7158828568636141139

namespace A174405

/-- `∑[A158274((n+1)²)]` -/
def P7158828568636141139.Spec : Prop :=
  ∀ n, P7158828568636141139.a n = A174405 (n + 1)

end A174405

/-! ## A174405.P6048009121771275247

`∑[A206369((n+1)²)]`
-/

namespace A174405.P6048009121771275247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174405.P6048009121771275247

namespace A174405

/-- `∑[A206369((n+1)²)]` -/
def P6048009121771275247.Spec : Prop :=
  ∀ n, P6048009121771275247.a n = A174405 (n + 1)

end A174405

/-!
# A174407: The number of primitive roots g such that there exists an x with g^x == x (mod p), where p=prime(n).

The programs for A174407, there is no canonical definition to state claims against.
-/

/-! ## A174407.P14984285983758983401

`A008330(n+1)-A286510(n+1)%A052905(n)`
-/

namespace A174407.P14984285983758983401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1) - Int.tmod (A286510 (n + 1)) (A052905 n)

end

end A174407.P14984285983758983401

/-!
# A174409: Prime numbers p such that the concatenation p^3//1331 is a prime number.

The programs for A174409, there is no canonical definition to state claims against.
-/

/-! ## A174409.P17954695527449402101

`p?[A174229(n+1)]`
-/

namespace A174409.P17954695527449402101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174409.P17954695527449402101

/-! ## A174409.P9578749973239864929

`p?[record[A174229(A052938(n))]]`
-/

namespace A174409.P9578749973239864929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174229 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174409.P9578749973239864929

/-! ## A174409.P9640690331247429896

`p?[record[A174229(A065648(n))]]`
-/

namespace A174409.P9640690331247429896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174229 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174409.P9640690331247429896

/-! ## A174409.P4210644941734040438

`p?[record[A174229(A106466(n))]]`
-/

namespace A174409.P4210644941734040438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174229 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174409.P4210644941734040438

/-!
# A174410: A product triangle sequence based on:a=2;f(n, a) = f(n - 1, a) + a*f(n - 2, a); c(n,a)=If[n == 0, 1, Product[f(i, a)*f(i + 1, a), {i, 1, n}]]; t(n,m,a)=If[Floor[n/2] >= m, c(n, a)/c(n - m, a), c(n, a)/c(m, a)].

The programs for A174410, there is no canonical definition to state claims against.
-/

/-! ## A174410.P5801202722963333708

`A000265(A173917(n))*A173917(A144464(n))`
-/

namespace A174410.P5801202722963333708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A173917 n).toNat * A173917 (A144464 n).toNat

end

end A174410.P5801202722963333708

/-! ## A174410.P275954640825625974

`A299149(A173917(n))`
-/

namespace A174410.P275954640825625974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A173917 n).toNat

end

end A174410.P275954640825625974

/-! ## A174410.P11401782610002874054

`A124769(A099594(n))*A173917(n)`
-/

namespace A174410.P11401782610002874054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A099594 n).toNat * A173917 n

end

end A174410.P11401782610002874054

/-! ## A174410.P15368171685505631213

`A000265((A203994(n+1)+A003984(n))*A173917(n))`
-/

namespace A174410.P15368171685505631213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((A203994 (n + 1) + A003984 n) * A173917 n).toNat

end

end A174410.P15368171685505631213

/-! ## A174410.P6016977200649995074

`lcm(A053575(A173889(n)), A173917(n))`
-/

namespace A174410.P6016977200649995074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053575 (A173889 n).toNat) (A173917 n)

end

end A174410.P6016977200649995074

/-!
# A174411: Triangle read by rows: T(n,k) = c(n) / c(max(k, n-k)) where c(n) = Product_{i=1..n} F(i)*F(i+1) and F(i) the Fibonacci numbers.

The programs for A174411, there is no canonical definition to state claims against.
-/

/-! ## A174411.P18378900676048667693

`A028310(A140356(n)*A172373(n+1))`
-/

namespace A174411.P18378900676048667693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A140356 n * A172373 (n + 1)).toNat

end

end A174411.P18378900676048667693

/-! ## A174411.P9387821406474375436

`A172373(n+1)*A300119(A180959(n))`
-/

namespace A174411.P9387821406474375436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172373 (n + 1) * A300119 (A180959 n).toNat

end

end A174411.P9387821406474375436

/-! ## A174411.P5526947564463671536

`A172373(n+1)*A328855(A001263(n+1))`
-/

namespace A174411.P5526947564463671536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172373 (n + 1) * A328855 (A001263 (n + 1)).toNat

end

end A174411.P5526947564463671536

/-! ## A174411.P2305394220331867263

`A124778(A137153(n))*A172373(n+1)`
-/

namespace A174411.P2305394220331867263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A137153 n).toNat * A172373 (n + 1)

end

end A174411.P2305394220331867263

/-! ## A174411.P1144764050858820727

`A003963(A174410(n))`
-/

namespace A174411.P1144764050858820727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A174410 n).toNat

end

end A174411.P1144764050858820727

/-!
# A174412: A product triangle sequence based on:a=3;f(n, a) = f(n - 1, a) + a*f(n - 2, a); c(n,a)=If[n == 0, 1, Product[f(i, a)*f(i + 1, a), {i, 1, n}]]; t(n,m,a)=If[Floor[n/2] >= m, c(n, a)/c(n - m, a), c(n, a)/c(m, a)].

The programs for A174412, there is no canonical definition to state claims against.
-/

/-! ## A174412.P14143763454592400316

`A003989(A173918(n))*A173918(n)`
-/

namespace A174412.P14143763454592400316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A173918 n).toNat * A173918 n

end

end A174412.P14143763454592400316

/-! ## A174412.P6011966868414085384

`A092542(A086645(n))*A173918(n)`
-/

namespace A174412.P6011966868414085384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (A086645 n).toNat * A173918 n

end

end A174412.P6011966868414085384

/-! ## A174412.P13560505623228897102

`A034367(A154844(n))*A173918(n)`
-/

namespace A174412.P13560505623228897102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A154844 n).toNat * A173918 n

end

end A174412.P13560505623228897102

/-! ## A174412.P10672868497452835035

`A139040(A174410(n))*A173918(n)`
-/

namespace A174412.P10672868497452835035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139040 (A174410 n).toNat * A173918 n

end

end A174412.P10672868497452835035

/-! ## A174412.P6279655217074794476

`A173918(A156953(n))*A173918(n)`
-/

namespace A174412.P6279655217074794476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173918 (A156953 n).toNat * A173918 n

end

end A174412.P6279655217074794476

/-!
# A174413: Triangle T(n,m) with the denominator of 1/(n-m)^2-1/n^2, read by rows, 1<=m

The programs for A174413, there is no canonical definition to state claims against.
-/

/-! ## A174413.P9130860979818023934

`A120073(∑[char[∑[n]]]²-n+1)`
-/

namespace A174413.P9130860979818023934
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120073 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A174413.P9130860979818023934

/-! ## A174413.P515895211637967188

`A061036(comp[∑[n]]+1)`
-/

namespace A174413.P515895211637967188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A174413.P515895211637967188

/-! ## A174413.P14897192227006816505

`filter[A061036(n+1), A066247(#)]`
-/

namespace A174413.P14897192227006816505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174413.P14897192227006816505

/-! ## A174413.P7677957739131273007

`filter[A061036(n+1), A345951(#)]`
-/

namespace A174413.P7677957739131273007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345951 (f1 j).toNat = 1) n)

end

end A174413.P7677957739131273007

/-! ## A174413.P2086651785286894636

`filter[A061036(n+1), A345952(#)]`
-/

namespace A174413.P2086651785286894636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A174413.P2086651785286894636

/-!
# A174415: Numbers such that when expressed in base 2 and then interpreted in base 10, is not a multiple of the original number.

The programs for A174415, the canonical program `A174415.P16168713899393504005` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174415 has offset 1).

The definition of A174415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174415.P16168713899393504005

`lt[gcd(n, A007088(n)), n]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A174415

/-- `lt[gcd(n, A007088(n)), n]` -/
def P16168713899393504005.Spec : Prop :=
  ∀ n, (P16168713899393504005.a n : ℤ) = A174415 (n + 1)

theorem P16168713899393504005.correct : P16168713899393504005.Spec := by
  intro n
  simp only [A174415, Nat.add_sub_cancel]

end A174415

/-! ## A174415.P17809371111916314710

`comp[A032533(n+1)-1]+1`
-/

namespace A174415.P17809371111916314710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A174415.P17809371111916314710

namespace A174415

/-- `comp[A032533(n+1)-1]+1` -/
def P17809371111916314710.Spec : Prop :=
  ∀ n, (P17809371111916314710.a n : ℤ) = A174415 (n + 1)

end A174415

/-! ## A174415.P9962075735708667076

`eq[char[A032533(n+1)], A000007(n)]`
-/

namespace A174415.P9962075735708667076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A174415.P9962075735708667076

namespace A174415

/-- `eq[char[A032533(n+1)], A000007(n)]` -/
def P9962075735708667076.Spec : Prop :=
  ∀ n, (P9962075735708667076.a n : ℤ) = A174415 (n + 1)

end A174415

/-! ## A174415.P5300902587683811821

`eq[char[A032533(n+1)], A000038(n)]`
-/

namespace A174415.P5300902587683811821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A174415.P5300902587683811821

namespace A174415

/-- `eq[char[A032533(n+1)], A000038(n)]` -/
def P5300902587683811821.Spec : Prop :=
  ∀ n, (P5300902587683811821.a n : ℤ) = A174415 (n + 1)

end A174415

/-! ## A174415.P16795377935349245742

`lt[char[A032533(n+1)]*A000217(n), n]`
-/

namespace A174415.P16795377935349245742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000217 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A174415.P16795377935349245742

namespace A174415

/-- `lt[char[A032533(n+1)]*A000217(n), n]` -/
def P16795377935349245742.Spec : Prop :=
  ∀ n, (P16795377935349245742.a n : ℤ) = A174415 (n + 1)

end A174415

/-! ## A174415.P6906693679138808335

`eq[char[A032533(n+1)], A049084(2*(n+1))]`
-/

namespace A174415.P6906693679138808335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A174415.P6906693679138808335

namespace A174415

/-- `eq[char[A032533(n+1)], A049084(2*(n+1))]` -/
def P6906693679138808335.Spec : Prop :=
  ∀ n, (P6906693679138808335.a n : ℤ) = A174415 (n + 1)

end A174415

/-! ## A174415.P872221941726944595

`eq[A011782(n+1)%2, char[A032533(n+1)]]`
-/

namespace A174415.P872221941726944595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032533 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A174415.P872221941726944595

namespace A174415

/-- `eq[A011782(n+1)%2, char[A032533(n+1)]]` -/
def P872221941726944595.Spec : Prop :=
  ∀ n, (P872221941726944595.a n : ℤ) = A174415 (n + 1)

end A174415

/-! ## A174415.P14230852372219700356

`lt[A000203(A347451(n+1)), A277711(3*n)]`
-/

namespace A174415.P14230852372219700356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A347451 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277711 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174415.P14230852372219700356

namespace A174415

/-- `lt[A000203(A347451(n+1)), A277711(3*n)]` -/
def P14230852372219700356.Spec : Prop :=
  ∀ n, (P14230852372219700356.a n : ℤ) = A174415 (n + 1)

end A174415

/-!
# A174416: Numbers whose binary expansion is a decimal nonprime.

The programs for A174416, the canonical program `A174416.P8387947686332241441` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174416 has offset 1).

The definition of A174416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174416.P14897718344284401095

`comp[A036952(n+1)-1]+1`
-/

namespace A174416.P14897718344284401095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A174416.P14897718344284401095

namespace A174416

/-- `comp[A036952(n+1)-1]+1` -/
def P14897718344284401095.Spec : Prop :=
  ∀ n, (P14897718344284401095.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P8387947686332241441

`eq[1, A089026(A077809(n+1))]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A174416

/-- `eq[1, A089026(A077809(n+1))]+1` -/
def P8387947686332241441.Spec : Prop :=
  ∀ n, (P8387947686332241441.a n : ℤ) = A174416 (n + 1)

theorem P8387947686332241441.correct : P8387947686332241441.Spec := by
  intro n
  simp only [A174416, Nat.add_sub_cancel]

end A174416

/-! ## A174416.P8288235646761943641

`lt[A077805(n+1), A235395(n+1)]+1`
-/

namespace A174416.P8288235646761943641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A174416.P8288235646761943641

namespace A174416

/-- `lt[A077805(n+1), A235395(n+1)]+1` -/
def P8288235646761943641.Spec : Prop :=
  ∀ n, (P8288235646761943641.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P12323456278360716161

`lt[A077805(A028310(n)), A108787(n+1)]`
-/

namespace A174416.P12323456278360716161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174416.P12323456278360716161

namespace A174416

/-- `lt[A077805(A028310(n)), A108787(n+1)]` -/
def P12323456278360716161.Spec : Prop :=
  ∀ n, (P12323456278360716161.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P11329426346877345861

`lt[A077805(n+1), A233583(n+1)²]+1`
-/

namespace A174416.P11329426346877345861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A174416.P11329426346877345861

namespace A174416

/-- `lt[A077805(n+1), A233583(n+1)²]+1` -/
def P11329426346877345861.Spec : Prop :=
  ∀ n, (P11329426346877345861.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P17919073626501335881

`lt[n, n*A077807(A233583(n+1))]`
-/

namespace A174416.P17919073626501335881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077807 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174416.P17919073626501335881

namespace A174416

/-- `lt[n, n*A077807(A233583(n+1))]` -/
def P17919073626501335881.Spec : Prop :=
  ∀ n, (P17919073626501335881.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P9387396446699840973

`lt[A054977(n), A077807(A233583(n+1))]`
-/

namespace A174416.P9387396446699840973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174416.P9387396446699840973

namespace A174416

/-- `lt[A054977(n), A077807(A233583(n+1))]` -/
def P9387396446699840973.Spec : Prop :=
  ∀ n, (P9387396446699840973.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P2368440401559055940

`lt[A077805(A233583(n+1)), A091924(n+1)]`
-/

namespace A174416.P2368440401559055940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174416.P2368440401559055940

namespace A174416

/-- `lt[A077805(A233583(n+1)), A091924(n+1)]` -/
def P2368440401559055940.Spec : Prop :=
  ∀ n, (P2368440401559055940.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P3727627873715873875

`lt[A077805(A233583(n+1)), A108787(n+1)]`
-/

namespace A174416.P3727627873715873875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174416.P3727627873715873875

namespace A174416

/-- `lt[A077805(A233583(n+1)), A108787(n+1)]` -/
def P3727627873715873875.Spec : Prop :=
  ∀ n, (P3727627873715873875.a n : ℤ) = A174416 (n + 1)

end A174416

/-! ## A174416.P12923843239635595318

`lt[A077805(A233583(n+1)), A235395(n+1)]`
-/

namespace A174416.P12923843239635595318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174416.P12923843239635595318

namespace A174416

/-- `lt[A077805(A233583(n+1)), A235395(n+1)]` -/
def P12923843239635595318.Spec : Prop :=
  ∀ n, (P12923843239635595318.a n : ℤ) = A174416 (n + 1)

end A174416

/-!
# A174417: Nonprimes that contain digits 0 and 1 only.

The programs for A174417, the canonical program `A174417.P8480129885250661453` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174417 has offset 1).

The definition of A174417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174417.P8480129885250661453

`A007088(A174416(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A174417

/-- `A007088(A174416(n+1))` -/
def P8480129885250661453.Spec : Prop :=
  ∀ n, P8480129885250661453.a n = A174417 (n + 1)

theorem P8480129885250661453.correct : P8480129885250661453.Spec := by
  intro n
  simp only [A174417, Nat.add_sub_cancel]

end A174417

/-! ## A174417.P14323172890745728064

`A007088(∑[char[A036952(n+1)-(n+1)]]+n+1)`
-/

namespace A174417.P14323172890745728064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A174417.P14323172890745728064

namespace A174417

/-- `A007088(∑[char[A036952(n+1)-(n+1)]]+n+1)` -/
def P14323172890745728064.Spec : Prop :=
  ∀ n, P14323172890745728064.a n = A174417 (n + 1)

end A174417

/-! ## A174417.P7640608331932064232

`A185544(2*A174416(n+1))`
-/

namespace A174417.P7640608331932064232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A174416 (n + 1)).toNat

end

end A174417.P7640608331932064232

namespace A174417

/-- `A185544(2*A174416(n+1))` -/
def P7640608331932064232.Spec : Prop :=
  ∀ n, P7640608331932064232.a n = A174417 (n + 1)

end A174417

/-! ## A174417.P6308222621824656599

`A185544(2*(∑[char[A036952(n+1)-(n+1)]]+n+1))`
-/

namespace A174417.P6308222621824656599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)))

end

end A174417.P6308222621824656599

namespace A174417

/-- `A185544(2*(∑[char[A036952(n+1)-(n+1)]]+n+1))` -/
def P6308222621824656599.Spec : Prop :=
  ∀ n, P6308222621824656599.a n = A174417 (n + 1)

end A174417

/-! ## A174417.P4914880526745409769

`A185544(A174416(n+1)+A174416(n+1))`
-/

namespace A174417.P4914880526745409769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A174416 (n + 1) + A174416 (n + 1)).toNat

end

end A174417.P4914880526745409769

namespace A174417

/-- `A185544(A174416(n+1)+A174416(n+1))` -/
def P4914880526745409769.Spec : Prop :=
  ∀ n, P4914880526745409769.a n = A174417 (n + 1)

end A174417

/-! ## A174417.P6503202048962850155

`∩[A157911(n+1), A266946(n+1)]`
-/

namespace A174417.P6503202048962850155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174417.P6503202048962850155

namespace A174417

/-- `∩[A157911(n+1), A266946(n+1)]` -/
def P6503202048962850155.Spec : Prop :=
  ∀ n, (P6503202048962850155.a n : ℤ) = A174417 (n + 1)

end A174417

/-! ## A174417.P15920773193457687139

`∩[A134948(n+1), A157911(n+1)]`
-/

namespace A174417.P15920773193457687139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174417.P15920773193457687139

namespace A174417

/-- `∩[A134948(n+1), A157911(n+1)]` -/
def P15920773193457687139.Spec : Prop :=
  ∀ n, (P15920773193457687139.a n : ℤ) = A174417 (n + 1)

end A174417

/-! ## A174417.P4849253929299133066

`∩[A157911(n+1), A235202(n+1)]`
-/

namespace A174417.P4849253929299133066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174417.P4849253929299133066

namespace A174417

/-- `∩[A157911(n+1), A235202(n+1)]` -/
def P4849253929299133066.Spec : Prop :=
  ∀ n, (P4849253929299133066.a n : ℤ) = A174417 (n + 1)

end A174417

/-! ## A174417.P2038502830250272360

`∩[A134948(n+1), A157908(n+1)]`
-/

namespace A174417.P2038502830250272360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174417.P2038502830250272360

namespace A174417

/-- `∩[A134948(n+1), A157908(n+1)]` -/
def P2038502830250272360.Spec : Prop :=
  ∀ n, (P2038502830250272360.a n : ℤ) = A174417 (n + 1)

end A174417

/-! ## A174417.P13861198350302206993

`∩[A157908(n+1), A235202(n+1)]`
-/

namespace A174417.P13861198350302206993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174417.P13861198350302206993

namespace A174417

/-- `∩[A157908(n+1), A235202(n+1)]` -/
def P13861198350302206993.Spec : Prop :=
  ∀ n, (P13861198350302206993.a n : ℤ) = A174417 (n + 1)

end A174417

/-! ## A174417.P12641982901021322239

`∩[A157908(n+1), A266946(n+1)]`
-/

namespace A174417.P12641982901021322239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174417.P12641982901021322239

namespace A174417

/-- `∩[A157908(n+1), A266946(n+1)]` -/
def P12641982901021322239.Spec : Prop :=
  ∀ n, (P12641982901021322239.a n : ℤ) = A174417 (n + 1)

end A174417

/-!
# A174418: Alternately sum and multiply with a(1) = 2 and a(2) = 3.

The programs for A174418, there is no canonical definition to state claims against.
-/

/-! ## A174418.P9426947180494277485

`A047203(p?[A064386(n+1)])`
-/

namespace A174418.P9426947180494277485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174418.P9426947180494277485

/-! ## A174418.P10815953681509366037

`A047203(p?[A064390(n+1)])`
-/

namespace A174418.P10815953681509366037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174418.P10815953681509366037

/-!
# A174419: Numerators T(0,k) of a top row sequence which generates a signed variant (-1)^n*T(n,0) of itself in the column k=0 under repeated application of the Akiyama-Tanigawa transform.

The programs for A174419, there is no canonical definition to state claims against.
-/

/-! ## A174419.P10053651935376432521

`A110664(A002604(n))`
-/

namespace A174419.P10053651935376432521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110664 (A002604 n).toNat

end

end A174419.P10053651935376432521

/-!
# A174420: Let A(n) = floor((3/2)^n), B(n)=3^n-2^n*A(n); then a(n)=2^n-A(n)-B(n)-2.

The programs for A174420, the canonical program `A174420.P12325697063228247299` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174420 has offset 0).

The definition of A174420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174420.P12325697063228247299

`2^n-(A002379(n)+A002380(n)+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174420

/-- `2^n-(A002379(n)+A002380(n)+2)` -/
def P12325697063228247299.Spec : Prop :=
  ∀ n, P12325697063228247299.a n = A174420 n

theorem P12325697063228247299.correct : P12325697063228247299.Spec := by
  intro n
  simp only [A174420]

end A174420

/-! ## A174420.P15829543195434017934

`A000918(n)-(A002380(n)+A002379(n))`
-/

namespace A174420.P15829543195434017934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - (A002380 n + A002379 n)

end

end A174420.P15829543195434017934

namespace A174420

/-- `A000918(n)-(A002380(n)+A002379(n))` -/
def P15829543195434017934.Spec : Prop :=
  ∀ n, P15829543195434017934.a n = A174420 n

end A174420

/-! ## A174420.P250656846529181383

`A000225(n)-1-A002379(n)-A002380(n)`
-/

namespace A174420.P250656846529181383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 1 - A002379 n - A002380 n

end

end A174420.P250656846529181383

namespace A174420

/-- `A000225(n)-1-A002379(n)-A002380(n)` -/
def P250656846529181383.Spec : Prop :=
  ∀ n, P250656846529181383.a n = A174420 n

end A174420

/-! ## A174420.P8176975408123109455

`(4^n-3^n)%or(1, 2^n-1)-2`
-/

namespace A174420.P8176975408123109455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((4 ^ n : ℤ) - (3 ^ n : ℤ)) (Int.lor 1 ((2 ^ n : ℤ) - 1)) - 2

end

end A174420.P8176975408123109455

namespace A174420

/-- `(4^n-3^n)%or(1, 2^n-1)-2` -/
def P8176975408123109455.Spec : Prop :=
  ∀ n, P8176975408123109455.a n = A174420 n

end A174420

/-! ## A174420.P14872983474811270392

`A005061(n)%A255047(n)-2`
-/

namespace A174420.P14872983474811270392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005061 n) (A255047 n) - 2

end

end A174420.P14872983474811270392

namespace A174420

/-- `A005061(n)%A255047(n)-2` -/
def P14872983474811270392.Spec : Prop :=
  ∀ n, P14872983474811270392.a n = A174420 n

end A174420

/-!
# A174422: 1st Wieferich prime base prime(n).

The programs for A174422, there is no canonical definition to state claims against.
-/

/-! ## A174422.P656621745999761343

`A039951(p?[comp[n²]])`
-/

namespace A174422.P656621745999761343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A174422.P656621745999761343

/-! ## A174422.P9801656655046949143

`A039951(eq[1, ∑{e}[n, #]])`
-/

namespace A174422.P9801656655046949143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A174422.P9801656655046949143

/-! ## A174422.P17503494504782939316

`A039951(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A174422.P17503494504782939316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A174422.P17503494504782939316

/-! ## A174422.P3069425619861029118

`A039951(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A174422.P3069425619861029118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A174422.P3069425619861029118

/-! ## A174422.P12266700422616870845

`A039951(A390240(n))`
-/

namespace A174422.P12266700422616870845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (A390240 n).toNat

end

end A174422.P12266700422616870845

/-!
# A174423: Number of "iterative" n x n adjacency matrices of sphere packings in R^3.

The programs for A174423, there is no canonical definition to state claims against.
-/

/-! ## A174423.P564563904350153090

`A173715(n+1)-A174424(n+1)`
-/

namespace A174423.P564563904350153090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - A174424 (n + 1)

end

end A174423.P564563904350153090

/-! ## A174423.P12587906001735490068

`A173715(n+1)-A376788(A253889(n+1))`
-/

namespace A174423.P12587906001735490068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - A376788 (A253889 (n + 1)).toNat

end

end A174423.P12587906001735490068

/-! ## A174423.P16822812939403643616

`A173715(n+1)-A291252(n)%A124740(n+1)`
-/

namespace A174423.P16822812939403643616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - Int.tmod (A291252 n) (A124740 (n + 1))

end

end A174423.P16822812939403643616

/-! ## A174423.P10249034917302004363

`A173715(n+1)-C(A099560(n), A241283(n+1)%5)`
-/

namespace A174423.P10249034917302004363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - (Nat.choose (A099560 n).toNat (Int.tmod (A241283 (n + 1)) 5).toNat : ℤ)

end

end A174423.P10249034917302004363

/-! ## A174423.P2337131934542959319

`A173715(n+1)-round(A036679(n)/A260687(n+5)²)`
-/

namespace A174423.P2337131934542959319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - SequenceMachineLib.roundAway ((A036679 n : ℚ) / (A260687 (n + 5) ^ 2 : ℚ))

end

end A174423.P2337131934542959319

/-!
# A174424: Number of "non-iterative" n x n adjacency matrices of sphere packings in R^3.

The programs for A174424, there is no canonical definition to state claims against.
-/

/-! ## A174424.P314304425664505426

`A376788(A253889(n+1))`
-/

namespace A174424.P314304425664505426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376788 (A253889 (n + 1)).toNat

end

end A174424.P314304425664505426

/-! ## A174424.P1683794728485561925

`A291252(n)%A124740(n+1)`
-/

namespace A174424.P1683794728485561925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291252 n) (A124740 (n + 1))

end

end A174424.P1683794728485561925

/-! ## A174424.P6311112139365788466

`A173715(n+1)-A174423(n+1)`
-/

namespace A174424.P6311112139365788466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - A174423 (n + 1)

end

end A174424.P6311112139365788466

/-! ## A174424.P14707206055329145416

`C(A004648(n+1), A338491(n+1))`
-/

namespace A174424.P14707206055329145416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004648 (n + 1)).toNat (A338491 (n + 1)).toNat

end

end A174424.P14707206055329145416

/-! ## A174424.P15910343193452800892

`C(A099560(n), A241283(n+1)%5)`
-/

namespace A174424.P15910343193452800892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099560 n).toNat (Int.tmod (A241283 (n + 1)) 5).toNat

end

end A174424.P15910343193452800892

/-!
# A174425: Total number of divisors of all n-digit numbers.

The programs for A174425, the canonical program `A174425.P9911007775438505135` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174425 has offset 1).

The definition of A174425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057494, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174425.P9911007775438505135

`A057494(n+1)-A057494(n)-2*(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174425

/-- `A057494(n+1)-A057494(n)-2*(n+1)-1` -/
def P9911007775438505135.Spec : Prop :=
  ∀ n, P9911007775438505135.a n = A174425 (n + 1)

theorem P9911007775438505135.correct : P9911007775438505135.Spec := by
  intro n
  simp only [A174425, Nat.add_sub_cancel]

end A174425

/-! ## A174425.P12275042603860681704

`Δ[A057494(n)-(n+1)²]`
-/

namespace A174425.P12275042603860681704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057494 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174425.P12275042603860681704

namespace A174425

/-- `Δ[A057494(n)-(n+1)²]` -/
def P12275042603860681704.Spec : Prop :=
  ∀ n, P12275042603860681704.a n = A174425 (n + 1)

theorem P12275042603860681704.correct : P12275042603860681704.Spec := by
  intro n
  simp only [A174425, Nat.add_sub_cancel, A174425.P12275042603860681704.f1, A174425.P12275042603860681704.a, A174425.P9911007775438505135.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174425

/-!
# A174426: Denominator of fractions in A171676.

The programs for A174426, there is no canonical definition to state claims against.
-/

/-! ## A174426.P5998693668424147117

`(2*C(comp[∑[n]]-n, 2))²`
-/

namespace A174426.P5998693668424147117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2) ^ 2

end

end A174426.P5998693668424147117

/-! ## A174426.P3302514287169506506

`∏{digits}[∑[char[∑[n]]], (#²+#)²]`
-/

namespace A174426.P3302514287169506506
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x ^ 2 + x) ^ 2).prod

end

end A174426.P3302514287169506506

/-! ## A174426.P9946070072660817592

`4*C(comp[C(n, 2)]-n, 2)²`
-/

namespace A174426.P9946070072660817592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 ^ 2

end

end A174426.P9946070072660817592

/-! ## A174426.P16348112187659734552

`(2*C(comp[∑[n]]-n, 2))^2`
-/

namespace A174426.P16348112187659734552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2) ^ 2

end

end A174426.P16348112187659734552

/-! ## A174426.P6671105023978791481

`4*C(∑[char[∑[n]]]+1, 2)²`
-/

namespace A174426.P6671105023978791481
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 ^ 2

end

end A174426.P6671105023978791481

/-!
# A174427: a(n) = floor(d(n)/18^(n-1)) where d(n) = 0, 1, -8, 352, -5120,.. and d(n) = -8*d(n-1) +288*d(n-2).

The programs for A174427, there is no canonical definition to state claims against.
-/

/-! ## A174427.P12750541431559430671

`A124746(n+3)-A124761(A124745(2*n))`
-/

namespace A174427.P12750541431559430671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124746 (n + 3) - A124761 (A124745 (2 * n)).toNat

end

end A174427.P12750541431559430671

/-! ## A174427.P3979037325167438791

`A322313(n+1)-A055642(A329160(n+1))`
-/

namespace A174427.P3979037325167438791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322313 (n + 1) - A055642 (A329160 (n + 1)).toNat

end

end A174427.P3979037325167438791

/-! ## A174427.P6279134171546439118

`A121041(n+1)-A005811(A348165(2*n+1))`
-/

namespace A174427.P6279134171546439118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1) - A005811 (A348165 (2 * n + 1)).toNat

end

end A174427.P6279134171546439118

/-! ## A174427.P5893937845755938631

`A133622(n+1)-A055642(A029447(3*n+2))`
-/

namespace A174427.P5893937845755938631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1) - A055642 (A029447 (3 * n + 2)).toNat

end

end A174427.P5893937845755938631

/-!
# A174428: Triangle read by rows: R(n,k) = sigma(n) mod k, where sigma(.) is the sum of divisors.

The programs for A174428, the canonical program `A174428.P14297892623469867627` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174428 has offset 1).

The definition of A174428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174428.P5521079791691002843

`A000203(∑[char[∑[n]]])%(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A174428.P5521079791691002843
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)) (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ))

end

end A174428.P5521079791691002843

namespace A174428

/-- `A000203(∑[char[∑[n]]])%(1-C(∑[char[∑[n]]], 2)+n)` -/
def P5521079791691002843.Spec : Prop :=
  ∀ n, P5521079791691002843.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P14297892623469867627

`∑{d}[A123578(n), #]%A140756(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174428

/-- `∑{d}[A123578(n), #]%A140756(n+1)` -/
def P14297892623469867627.Spec : Prop :=
  ∀ n, P14297892623469867627.a n = A174428 (n + 1)

theorem P14297892623469867627.correct : P14297892623469867627.Spec := by
  intro n
  simp only [A174428, Nat.add_sub_cancel]

end A174428

/-! ## A174428.P15642535566487189900

`A000203(∑[char[∑[n]]])%A002260(n+1)`
-/

namespace A174428.P15642535566487189900
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)) (A002260 (n + 1))

end

end A174428.P15642535566487189900

namespace A174428

/-- `A000203(∑[char[∑[n]]])%A002260(n+1)` -/
def P15642535566487189900.Spec : Prop :=
  ∀ n, P15642535566487189900.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P11679545717745735185

`∑{d}[A003056(n)+1, #]%A002260(n+1)`
-/

namespace A174428.P11679545717745735185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A002260 (n + 1))

end

end A174428.P11679545717745735185

namespace A174428

/-- `∑{d}[A003056(n)+1, #]%A002260(n+1)` -/
def P11679545717745735185.Spec : Prop :=
  ∀ n, P11679545717745735185.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P13762802764070258357

`A000203(round(sqrt(2*n+1)))%(A002262(n)+1)`
-/

namespace A174428.P13762802764070258357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat) (A002262 n + 1)

end

end A174428.P13762802764070258357

namespace A174428

/-- `A000203(round(sqrt(2*n+1)))%(A002262(n)+1)` -/
def P13762802764070258357.Spec : Prop :=
  ∀ n, P13762802764070258357.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P4026069980813840238

`A245093(C(comp[∑[n]]-n, 2))%(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A174428.P4026069980813840238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245093 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2)) (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ))

end

end A174428.P4026069980813840238

namespace A174428

/-- `A245093(C(comp[∑[n]]-n, 2))%(1-C(∑[char[∑[n]]], 2)+n)` -/
def P4026069980813840238.Spec : Prop :=
  ∀ n, P4026069980813840238.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P6281382269167514743

`A069290(A061579(n)+1+n)%A002260(n+1)`
-/

namespace A174428.P6281382269167514743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069290 (A061579 n + 1 + (n : ℤ)).toNat) (A002260 (n + 1))

end

end A174428.P6281382269167514743

namespace A174428

/-- `A069290(A061579(n)+1+n)%A002260(n+1)` -/
def P6281382269167514743.Spec : Prop :=
  ∀ n, P6281382269167514743.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P10465327357717541545

`A245092(A131507(n))%A000005(A059268(n))`
-/

namespace A174428.P10465327357717541545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (A131507 n).toNat) (A000005 (A059268 n).toNat)

end

end A174428.P10465327357717541545

namespace A174428

/-- `A245092(A131507(n))%A000005(A059268(n))` -/
def P10465327357717541545.Spec : Prop :=
  ∀ n, P10465327357717541545.a n = A174428 (n + 1)

end A174428

/-! ## A174428.P10760695789060441280

`A000203(A002024(n+1))%A000005(A059268(n))`
-/

namespace A174428.P10760695789060441280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A002024 (n + 1)).toNat) (A000005 (A059268 n).toNat)

end

end A174428.P10760695789060441280

namespace A174428

/-- `A000203(A002024(n+1))%A000005(A059268(n))` -/
def P10760695789060441280.Spec : Prop :=
  ∀ n, P10760695789060441280.a n = A174428 (n + 1)

end A174428

/-!
# A174429: Collatz-Fibonacci numbers: a(1) = a(2) = 1; if n > 2, a(n) = a(C(n)) + a(C(C(n))), where C(n) = A006370(n).

The programs for A174429, there is no canonical definition to state claims against.
-/

/-! ## A174429.P16896628969055868347

`A000045(A008908(n+1))`
-/

namespace A174429.P16896628969055868347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008908 (n + 1)).toNat

end

end A174429.P16896628969055868347

/-! ## A174429.P8836492307102695560

`A000045(A006577(n+1)+1)`
-/

namespace A174429.P8836492307102695560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006577 (n + 1) + 1).toNat

end

end A174429.P8836492307102695560

/-! ## A174429.P3943826804213842837

`A212804(A008908(n+1)+1)`
-/

namespace A174429.P3943826804213842837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A008908 (n + 1) + 1).toNat

end

end A174429.P3943826804213842837

/-! ## A174429.P13678546003115673247

`A324969(A006577(n+1)+2)`
-/

namespace A174429.P13678546003115673247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A006577 (n + 1) + 2).toNat

end

end A174429.P13678546003115673247

/-! ## A174429.P4905191994795785007

`A000071(A006577(n+1)+1)+1`
-/

namespace A174429.P4905191994795785007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A006577 (n + 1) + 1).toNat + 1

end

end A174429.P4905191994795785007

/-! ## A174429.P4711768866447852252

`A001611(A006577(n+1)+1)-1`
-/

namespace A174429.P4711768866447852252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A006577 (n + 1) + 1).toNat - 1

end

end A174429.P4711768866447852252

/-! ## A174429.P3309790147656923796

`A000045(A006666(n+1)+A006667(n+1)+1)`
-/

namespace A174429.P3309790147656923796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006666 (n + 1) + (A006667 (n + 1) + 1)).toNat

end

end A174429.P3309790147656923796

/-! ## A174429.P2601654145291487000

`A000045(A139399(2*(n+1))+2)`
-/

namespace A174429.P2601654145291487000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A139399 (2 * (n + 1)) + 2).toNat

end

end A174429.P2601654145291487000

/-! ## A174429.P13812213750497480736

`A000045(A127885(n+1)+A127886(n+1)+1)`
-/

namespace A174429.P13812213750497480736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A127885 (n + 1) + (A127886 (n + 1) + 1)).toNat

end

end A174429.P13812213750497480736

/-! ## A174429.P18330492516054053837

`A000045(A210688(A000124(n)))`
-/

namespace A174429.P18330492516054053837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A210688 (A000124 n).toNat).toNat

end

end A174429.P18330492516054053837

/-!
# A174430: Triangle read by rows: T(n,m) = gcd(Fibonacci(n), Fibonacci(m)).

The programs for A174430, the canonical program `A174430.P12043369159745599799` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174430 has offset 0).

The definition of A174430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174430.P7716416395041332458

`A000045(gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]]))`
-/

namespace A174430.P7716416395041332458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) (∑ j ∈ Finset.range (n + 1), f4 j))

end

end A174430.P7716416395041332458

namespace A174430

/-- `A000045(gcd(C(∑[char[∑[n]]], 2)+n, ∑[char[∑[n+1]]]))` -/
def P7716416395041332458.Spec : Prop :=
  ∀ n, P7716416395041332458.a n = A174430 n

end A174430

/-! ## A174430.P14712742583389022554

`A000045(gcd(∑[2*n]%comp[∑[n]]-n, n-C(∑[char[∑[n]]], 2)))`
-/

namespace A174430.P14712742583389022554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)))

end

end A174430.P14712742583389022554

namespace A174430

/-- `A000045(gcd(∑[2*n]%comp[∑[n]]-n, n-C(∑[char[∑[n]]], 2)))` -/
def P14712742583389022554.Spec : Prop :=
  ∀ n, P14712742583389022554.a n = A174430 n

end A174430

/-! ## A174430.P12043369159745599799

`A000045(A109004(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174430

/-- `A000045(A109004(n))` -/
def P12043369159745599799.Spec : Prop :=
  ∀ n, P12043369159745599799.a n = A174430 n

theorem P12043369159745599799.correct : P12043369159745599799.Spec := by
  intro n
  simp only [A174430]

end A174430

/-! ## A174430.P552384491172741482

`A212804(A109004(n)+1)`
-/

namespace A174430.P552384491172741482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A109004 n + 1).toNat

end

end A174430.P552384491172741482

namespace A174430

/-- `A212804(A109004(n)+1)` -/
def P552384491172741482.Spec : Prop :=
  ∀ n, P552384491172741482.a n = A174430 n

end A174430

/-! ## A174430.P5920499498252950301

`gcd(A039913(n), A141169(n))`
-/

namespace A174430.P5920499498252950301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039913 n) (A141169 n)

end

end A174430.P5920499498252950301

namespace A174430

/-- `gcd(A039913(n), A141169(n))` -/
def P5920499498252950301.Spec : Prop :=
  ∀ n, (P5920499498252950301.a n : ℤ) = A174430 n

end A174430

/-! ## A174430.P1262364639406529020

`gcd(A108037(n), A199334(n))`
-/

namespace A174430.P1262364639406529020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108037 n) (A199334 n)

end

end A174430.P1262364639406529020

namespace A174430

/-- `gcd(A108037(n), A199334(n))` -/
def P1262364639406529020.Spec : Prop :=
  ∀ n, (P1262364639406529020.a n : ℤ) = A174430 n

end A174430

/-! ## A174430.P3919786233821445784

`gcd(A094570(n), A217762(n))`
-/

namespace A174430.P3919786233821445784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094570 n) (A217762 n)

end

end A174430.P3919786233821445784

namespace A174430

/-- `gcd(A094570(n), A217762(n))` -/
def P3919786233821445784.Spec : Prop :=
  ∀ n, (P3919786233821445784.a n : ℤ) = A174430 n

end A174430

/-! ## A174430.P4743070061433960841

`A000045(A281726(n+1)-1)`
-/

namespace A174430.P4743070061433960841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A281726 (n + 1) - 1).toNat

end

end A174430.P4743070061433960841

namespace A174430

/-- `A000045(A281726(n+1)-1)` -/
def P4743070061433960841.Spec : Prop :=
  ∀ n, P4743070061433960841.a n = A174430 n

end A174430

/-! ## A174430.P9741692676467131597

`A000045(A140682(n)+A007318(n))`
-/

namespace A174430.P9741692676467131597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A140682 n + A007318 n).toNat

end

end A174430.P9741692676467131597

namespace A174430

/-- `A000045(A140682(n)+A007318(n))` -/
def P9741692676467131597.Spec : Prop :=
  ∀ n, P9741692676467131597.a n = A174430 n

end A174430

/-! ## A174430.P1526492502688376754

`A000045(A052409(A036561(n)))`
-/

namespace A174430.P1526492502688376754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A052409 (A036561 n).toNat).toNat

end

end A174430.P1526492502688376754

namespace A174430

/-- `A000045(A052409(A036561(n)))` -/
def P1526492502688376754.Spec : Prop :=
  ∀ n, P1526492502688376754.a n = A174430 n

end A174430

/-!
# A174431: Day of the week occurring 5 times in February, or 0 if no such day exists (1 to 7 are Sunday to Saturday).

The programs for A174431, there is no canonical definition to state claims against.
-/

/-! ## A174431.P5754121340853640977

`A079978(A000045(n+1))*A116369(n+3)`
-/

namespace A174431.P5754121340853640977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A000045 (n + 1)).toNat * A116369 (n + 3)

end

end A174431.P5754121340853640977

/-! ## A174431.P8155084115169301501

`A254790(A070550(n))%A254788(A135517(n))`
-/

namespace A174431.P8155084115169301501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254790 (A070550 n).toNat) (A254788 (A135517 n).toNat)

end

end A174431.P8155084115169301501

/-!
# A174432: Partial sums of A000699.

The programs for A174432, there is no canonical definition to state claims against.
-/

/-! ## A174432.P1992530004454407908

`∑[A286796(∑[n])]`
-/

namespace A174432.P1992530004454407908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286796 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174432.P1992530004454407908

/-! ## A174432.P3062814655724108371

`∑[A000699(n+1)]`
-/

namespace A174432.P3062814655724108371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174432.P3062814655724108371

/-! ## A174432.P11702081717522049523

`∑[A172395(2*(n+1))]`
-/

namespace A174432.P11702081717522049523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172395 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174432.P11702081717522049523

/-! ## A174432.P7984487590072182723

`∑[A286794(n)/Δ[n²]]`
-/

namespace A174432.P7984487590072182723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286794 n : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174432.P7984487590072182723

/-! ## A174432.P8185823679622540964

`∑[A212273(n+1)/(n+1)]`
-/

namespace A174432.P8185823679622540964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212273 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174432.P8185823679622540964

/-!
# A174433: Triangle read by rows: T(n,k) = prime(n) mod A001223(k), where A001223 are differences between consecutive primes.

The programs for A174433, the canonical program `A174433.P15299318551043333282` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174433 has offset 1).

The definition of A174433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174433.P15299318551043333282

`A005145(n+1)%A001223(A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174433

/-- `A005145(n+1)%A001223(A002260(n+1))` -/
def P15299318551043333282.Spec : Prop :=
  ∀ n, P15299318551043333282.a n = A174433 (n + 1)

theorem P15299318551043333282.correct : P15299318551043333282.Spec := by
  intro n
  simp only [A174433, Nat.add_sub_cancel]

end A174433

/-! ## A174433.P16573616572055712555

`A067747(A131507(n))%A001223(A002260(n+1))`
-/

namespace A174433.P16573616572055712555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067747 (A131507 n).toNat) (A001223 (A002260 (n + 1)).toNat)

end

end A174433.P16573616572055712555

namespace A174433

/-- `A067747(A131507(n))%A001223(A002260(n+1))` -/
def P16573616572055712555.Spec : Prop :=
  ∀ n, P16573616572055712555.a n = A174433 (n + 1)

end A174433

/-! ## A174433.P584427638801658284

`A000040(A002024(n+1))%A001223(A002260(n+1))`
-/

namespace A174433.P584427638801658284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1)).toNat) (A001223 (A002260 (n + 1)).toNat)

end

end A174433.P584427638801658284

namespace A174433

/-- `A000040(A002024(n+1))%A001223(A002260(n+1))` -/
def P584427638801658284.Spec : Prop :=
  ∀ n, P584427638801658284.a n = A174433 (n + 1)

end A174433

/-! ## A174433.P3091824412440781616

`A014963(A005145(n+1))%A013632(A037126(n+1))`
-/

namespace A174433.P3091824412440781616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A005145 (n + 1)).toNat) (A013632 (A037126 (n + 1)).toNat)

end

end A174433.P3091824412440781616

namespace A174433

/-- `A014963(A005145(n+1))%A013632(A037126(n+1))` -/
def P3091824412440781616.Spec : Prop :=
  ∀ n, P3091824412440781616.a n = A174433 (n + 1)

end A174433

/-! ## A174433.P4356510725584550619

`A006530(A077320(n+1))%A001223(A002260(n+1))`
-/

namespace A174433.P4356510725584550619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A077320 (n + 1)).toNat) (A001223 (A002260 (n + 1)).toNat)

end

end A174433.P4356510725584550619

namespace A174433

/-- `A006530(A077320(n+1))%A001223(A002260(n+1))` -/
def P4356510725584550619.Spec : Prop :=
  ∀ n, P4356510725584550619.a n = A174433 (n + 1)

end A174433

/-! ## A174433.P14846668639649155295

`A006530(A087112(n+1))%A001223(A002260(n+1))`
-/

namespace A174433.P14846668639649155295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A087112 (n + 1)).toNat) (A001223 (A002260 (n + 1)).toNat)

end

end A174433.P14846668639649155295

namespace A174433

/-- `A006530(A087112(n+1))%A001223(A002260(n+1))` -/
def P14846668639649155295.Spec : Prop :=
  ∀ n, P14846668639649155295.a n = A174433 (n + 1)

end A174433

/-!
# A174435: lambda(y)/x, where y an odd squarefree semiprime and x = ord(2,y) the smallest positive integer such that 2^x == 1 mod y (the multiplicative order of 2 mod y).

The programs for A174435, there is no canonical definition to state claims against.
-/

/-! ## A174435.P15568495949918523885

`A002322(A046388(n+1))/A174240(n+1)`
-/

namespace A174435.P15568495949918523885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A046388 (n + 1)).toNat : ℚ) / (A174240 (n + 1) : ℚ)

end

end A174435.P15568495949918523885

/-! ## A174435.P13400220965364144485

`A002322(eq[1, A353481(n+1)]+1)/A174240(n+1)`
-/

namespace A174435.P13400220965364144485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A174240 (n + 1) : ℚ)

end

end A174435.P13400220965364144485

/-! ## A174435.P17679433142693721292

`A011773(eq[1, A353481(n+1)]+1)/A174240(n+1)`
-/

namespace A174435.P17679433142693721292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A174240 (n + 1) : ℚ)

end

end A174435.P17679433142693721292

/-! ## A174435.P10572564267025979941

`A002322(eq[A040022(n), A074206(n)])/A174240(n+1)`
-/

namespace A174435.P10572564267025979941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / (A174240 (n + 1) : ℚ)

end

end A174435.P10572564267025979941

/-! ## A174435.P13653756554310713872

`A002322(A046388(n+1))/A002326((A046388(n+1)-1)/2)`
-/

namespace A174435.P13653756554310713872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A046388 (n + 1)).toNat : ℚ) / (A002326 (SequenceMachineLib.roundAway ((A046388 (n + 1) - 1 : ℚ) / 2)).toNat : ℚ)

end

end A174435.P13653756554310713872

/-! ## A174435.P18277933239850863233

`A002322(A046388(n+1))/A002326(A234093(n+1))`
-/

namespace A174435.P18277933239850863233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A046388 (n + 1)).toNat : ℚ) / (A002326 (A234093 (n + 1)).toNat : ℚ)

end

end A174435.P18277933239850863233

/-! ## A174435.P6757821525037619766

`A002322(eq[1, A353481(n+1)]+1)/A002326(A234093(n+1))`
-/

namespace A174435.P6757821525037619766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A002326 (A234093 (n + 1)).toNat : ℚ)

end

end A174435.P6757821525037619766

/-!
# A174436: Partial sums of A039765.

The programs for A174436, there is no canonical definition to state claims against.
-/

/-! ## A174436.P10422560611950784360

`∑[A039765(n)]`
-/

namespace A174436.P10422560611950784360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174436.P10422560611950784360

/-! ## A174436.P7234761822096336355

`A002265(A003000(3*n)-A244164(n+1))`
-/

namespace A174436.P7234761822096336355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003000 (3 * n) - A244164 (n + 1)).toNat

end

end A174436.P7234761822096336355

/-!
# A174437: Successive maximal values of A174435.

The programs for A174437, there is no canonical definition to state claims against.
-/

/-! ## A174437.P4583892981235620714

`record[gcd(A001917(n+2), A005097(n+1))]`
-/

namespace A174437.P4583892981235620714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001917 (n + 2)) (A005097 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174437.P4583892981235620714

/-! ## A174437.P12300234345431018380

`record[A174435(n+1)]`
-/

namespace A174437.P12300234345431018380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174437.P12300234345431018380

/-! ## A174437.P17052484757820240501

`record[A141110(A005097(n+1))]`
-/

namespace A174437.P17052484757820240501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (A005097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174437.P17052484757820240501

/-! ## A174437.P9134150258748633518

`record[A141110(A130290(n+1))]`
-/

namespace A174437.P9134150258748633518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (A130290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174437.P9134150258748633518

/-! ## A174437.P11996357066310531822

`record[A211449(n+2)/2]`
-/

namespace A174437.P11996357066310531822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211449 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174437.P11996357066310531822

/-!
# A174438: Numbers that are congruent to {0, 2, 5, 8} mod 9.

The programs for A174438, the canonical program `A174438.P2825161695768805897` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174438 has offset 1).

The definition of A174438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174438.P2825161695768805897

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=8, a(4)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174438

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P2825161695768805897.Spec : Prop :=
  ∀ n, P2825161695768805897.a n = A174438 (n + 1)

theorem P2825161695768805897.correct : P2825161695768805897.Spec := by
  intro n
  simp only [A174438, Nat.add_sub_cancel]

end A174438

/-! ## A174438.P4039460758483509787

`∑[ceil(sqrt(n%4))]+n`
-/

namespace A174438.P4039460758483509787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n % 4 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A174438.P4039460758483509787

namespace A174438

/-- `∑[ceil(sqrt(n%4))]+n` -/
def P4039460758483509787.Spec : Prop :=
  ∀ n, P4039460758483509787.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P3659732733375553277

`∑[ceil(sqrt(and(3, n)))]+n`
-/

namespace A174438.P3659732733375553277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.land 3 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A174438.P3659732733375553277

namespace A174438

/-- `∑[ceil(sqrt(and(3, n)))]+n` -/
def P3659732733375553277.Spec : Prop :=
  ∀ n, P3659732733375553277.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P16547991670644343967

`∑[ceil(atan(and(3, n)))]+n`
-/

namespace A174438.P16547991670644343967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Nat.land 3 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A174438.P16547991670644343967

namespace A174438

/-- `∑[ceil(atan(and(3, n)))]+n` -/
def P16547991670644343967.Spec : Prop :=
  ∀ n, P16547991670644343967.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P10882872693535278348

`record[n-dr(n²+n)]`
-/

namespace A174438.P10882872693535278348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n ^ 2 + n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174438.P10882872693535278348

namespace A174438

/-- `record[n-dr(n²+n)]` -/
def P10882872693535278348.Spec : Prop :=
  ∀ n, P10882872693535278348.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P16517413552907521330

`a(n-4)+9` with `a(0)=0, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A174438.P16517413552907521330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 8] fun n a =>
  a (n - 4) + 9

end

end A174438.P16517413552907521330

namespace A174438

/-- `a(n-4)+9` -/
def P16517413552907521330.Spec : Prop :=
  ∀ n, (P16517413552907521330.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P6333910792431367623

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A174438.P6333910792431367623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P6333910792431367623

namespace A174438

/-- `∑[abs(a(n-4))]` -/
def P6333910792431367623.Spec : Prop :=
  ∀ n, (P6333910792431367623.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P12707581203576060724

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A174438.P12707581203576060724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P12707581203576060724

namespace A174438

/-- `∑[dr(a(n-4))]` -/
def P12707581203576060724.Spec : Prop :=
  ∀ n, (P12707581203576060724.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P7868527464844448438

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A174438.P7868527464844448438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P7868527464844448438

namespace A174438

/-- `∑[floor(a(n-4))]` -/
def P7868527464844448438.Spec : Prop :=
  ∀ n, (P7868527464844448438.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P15841455676272352661

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A174438.P15841455676272352661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P15841455676272352661

namespace A174438

/-- `∑[ceil(a(n-4))]` -/
def P15841455676272352661.Spec : Prop :=
  ∀ n, (P15841455676272352661.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P17867909701933550748

`∑[round(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A174438.P17867909701933550748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P17867909701933550748

namespace A174438

/-- `∑[round(a(n-4))]` -/
def P17867909701933550748.Spec : Prop :=
  ∀ n, (P17867909701933550748.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P1395066899954513661

`record[n+1-(1-n)²%9]`
-/

namespace A174438.P1395066899954513661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod ((1 - (n : ℤ)) ^ 2) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174438.P1395066899954513661

namespace A174438

/-- `record[n+1-(1-n)²%9]` -/
def P1395066899954513661.Spec : Prop :=
  ∀ n, P1395066899954513661.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P8545796085233126234

`∪[2*n+n+2, 9*n]`
-/

namespace A174438.P8545796085233126234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A174438.P8545796085233126234

namespace A174438

/-- `∪[2*n+n+2, 9*n]` -/
def P8545796085233126234.Spec : Prop :=
  ∀ n, (P8545796085233126234.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P13341462365846239329

`∑[a(n-4)%4]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A174438.P13341462365846239329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  f1 (n - 4) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P13341462365846239329

namespace A174438

/-- `∑[a(n-4)%4]` -/
def P13341462365846239329.Spec : Prop :=
  ∀ n, (P13341462365846239329.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P16540467535355103990

`∑[gcd(6, a(n-4))]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A174438.P16540467535355103990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 1] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P16540467535355103990

namespace A174438

/-- `∑[gcd(6, a(n-4))]` -/
def P16540467535355103990.Spec : Prop :=
  ∀ n, (P16540467535355103990.a n : ℤ) = A174438 (n + 1)

end A174438

/-! ## A174438.P636410251911163192

`floor(∑[2^(-1)^∑[n+1]]+n)`
-/

namespace A174438.P636410251911163192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋

end

end A174438.P636410251911163192

namespace A174438

/-- `floor(∑[2^(-1)^∑[n+1]]+n)` -/
def P636410251911163192.Spec : Prop :=
  ∀ n, P636410251911163192.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P9912940656316605566

`∑[∑[ogf((1+2x+3x^2+3x^3)/(1+x+x^2+x^3))]]-1`
-/

namespace A174438.P9912940656316605566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A174438.P9912940656316605566

namespace A174438

/-- `∑[∑[ogf((1+2x+3x^2+3x^3)/(1+x+x^2+x^3))]]-1` -/
def P9912940656316605566.Spec : Prop :=
  ∀ n, P9912940656316605566.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P5524163922134827090

`∑[∑[a(n-4)^a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=0, a(4)=-2`
-/

namespace A174438.P5524163922134827090
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 2, 1, 0, -2] fun n f2 =>
  f2 (n - 4) ^ (f2 (n - 2))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174438.P5524163922134827090

namespace A174438

/-- `∑[∑[a(n-4)^a(n-2)]]` -/
def P5524163922134827090.Spec : Prop :=
  ∀ n, P5524163922134827090.a n = (A174438 (n + 1) : ℝ)

end A174438

/-! ## A174438.P11365358018541699100

`A246552(n)+2*n`
-/

namespace A174438.P11365358018541699100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 n + (2 * n : ℤ)

end

end A174438.P11365358018541699100

namespace A174438

/-- `A246552(n)+2*n` -/
def P11365358018541699100.Spec : Prop :=
  ∀ n, P11365358018541699100.a n = A174438 (n + 1)

end A174438

/-! ## A174438.P14675430160172482034

`4*n-A047340(n+1)`
-/

namespace A174438.P14675430160172482034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A047340 (n + 1)

end

end A174438.P14675430160172482034

namespace A174438

/-- `4*n-A047340(n+1)` -/
def P14675430160172482034.Spec : Prop :=
  ∀ n, P14675430160172482034.a n = A174438 (n + 1)

end A174438

/-!
# A174439: Partial sums of A001523.

The programs for A174439, there is no canonical definition to state claims against.
-/

/-! ## A174439.P9234879510435254192

`∑[A001523(n)]`
-/

namespace A174439.P9234879510435254192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174439.P9234879510435254192

/-! ## A174439.P15828448921925588827

`∑[A006330(n)-A114921(n)]+1`
-/

namespace A174439.P15828448921925588827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006330 n - A114921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A174439.P15828448921925588827

/-! ## A174439.P11577046999098219037

`A000712(n)+a(n-1)-A006330(n)` with `a(0)=1`
-/

namespace A174439.P11577046999098219037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000712 n + (a (n - 1) - A006330 n)

end

end A174439.P11577046999098219037

/-! ## A174439.P16957915007867587184

`A001523(n%A000203(n))+a(n-1)` with `a(0)=1`
-/

namespace A174439.P16957915007867587184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001523 (Int.tmod (n : ℤ) (A000203 n)).toNat + a (n - 1)

end

end A174439.P16957915007867587184

/-! ## A174439.P5548626669799035010

`a(n-1)+A001523(n)%A001523(n+1)` with `a(0)=1`
-/

namespace A174439.P5548626669799035010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A001523 n) (A001523 (n + 1))

end

end A174439.P5548626669799035010

/-! ## A174439.P14689288655974473408

`∑[A011782(n)-A115981(n)]`
-/

namespace A174439.P14689288655974473408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A115981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174439.P14689288655974473408

/-! ## A174439.P8359248869171984169

`∑[A059623(∑[n]+1)]`
-/

namespace A174439.P8359248869171984169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059623 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174439.P8359248869171984169

/-!
# A174440: Partial sums of A022544.

The programs for A174440, the canonical program `A174440.P16633761848471278973` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174440 has offset 1).

The definition of A174440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174440.P13788515167484746281

`∑[comp[A163547(n)]]`
-/

namespace A174440.P13788515167484746281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P13788515167484746281

namespace A174440

/-- `∑[comp[A163547(n)]]` -/
def P13788515167484746281.Spec : Prop :=
  ∀ n, (P13788515167484746281.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P16633761848471278973

`∑[A022544(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A174440

/-- `∑[A022544(n+1)]` -/
def P16633761848471278973.Spec : Prop :=
  ∀ n, P16633761848471278973.a n = A174440 (n + 1)

theorem P16633761848471278973.correct : P16633761848471278973.Spec := by
  intro n
  simp only [A174440, Nat.add_sub_cancel]

end A174440

/-! ## A174440.P3612215498315738755

`∑[eq[0, A229062(n)]]`
-/

namespace A174440.P3612215498315738755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P3612215498315738755

namespace A174440

/-- `∑[eq[0, A229062(n)]]` -/
def P3612215498315738755.Spec : Prop :=
  ∀ n, (P3612215498315738755.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P17453498060807521645

`∑[lt[2, A002828(n)]]`
-/

namespace A174440.P17453498060807521645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P17453498060807521645

namespace A174440

/-- `∑[lt[2, A002828(n)]]` -/
def P17453498060807521645.Spec : Prop :=
  ∀ n, (P17453498060807521645.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P13933262111399497604

`∑[comp[A001481(n+1)]]`
-/

namespace A174440.P13933262111399497604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P13933262111399497604

namespace A174440

/-- `∑[comp[A001481(n+1)]]` -/
def P13933262111399497604.Spec : Prop :=
  ∀ n, (P13933262111399497604.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P15224215103097675655

`∑[root(A125111(n+1), 3)]`
-/

namespace A174440.P15224215103097675655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125111 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P15224215103097675655

namespace A174440

/-- `∑[root(A125111(n+1), 3)]` -/
def P15224215103097675655.Spec : Prop :=
  ∀ n, P15224215103097675655.a n = (A174440 (n + 1) : ℝ)

end A174440

/-! ## A174440.P946152903309932452

`∑[comp[A163531(n)]]`
-/

namespace A174440.P946152903309932452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P946152903309932452

namespace A174440

/-- `∑[comp[A163531(n)]]` -/
def P946152903309932452.Spec : Prop :=
  ∀ n, (P946152903309932452.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P11733135187374895046

`∑[comp[A069011(n)]]`
-/

namespace A174440.P11733135187374895046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P11733135187374895046

namespace A174440

/-- `∑[comp[A069011(n)]]` -/
def P11733135187374895046.Spec : Prop :=
  ∀ n, (P11733135187374895046.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P12865891611704017744

`∑[eq[0, A000161(n)]]`
-/

namespace A174440.P12865891611704017744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P12865891611704017744

namespace A174440

/-- `∑[eq[0, A000161(n)]]` -/
def P12865891611704017744.Spec : Prop :=
  ∀ n, (P12865891611704017744.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P3237310347773151662

`∑[eq[0, A000925(n)]]`
-/

namespace A174440.P3237310347773151662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P3237310347773151662

namespace A174440

/-- `∑[eq[0, A000925(n)]]` -/
def P3237310347773151662.Spec : Prop :=
  ∀ n, (P3237310347773151662.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P14545247480515943896

`∑[eq[0, A004018(n)]]`
-/

namespace A174440.P14545247480515943896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P14545247480515943896

namespace A174440

/-- `∑[eq[0, A004018(n)]]` -/
def P14545247480515943896.Spec : Prop :=
  ∀ n, (P14545247480515943896.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P272515921695485148

`∑[eq[0, A104794(n)]]`
-/

namespace A174440.P272515921695485148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P272515921695485148

namespace A174440

/-- `∑[eq[0, A104794(n)]]` -/
def P272515921695485148.Spec : Prop :=
  ∀ n, (P272515921695485148.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P2255534535964371472

`∑[lt[0, A070176(n)]]`
-/

namespace A174440.P2255534535964371472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P2255534535964371472

namespace A174440

/-- `∑[lt[0, A070176(n)]]` -/
def P2255534535964371472.Spec : Prop :=
  ∀ n, (P2255534535964371472.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P5984773353488074919

`∑[lt[A259761(n), 1]]`
-/

namespace A174440.P5984773353488074919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259761 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P5984773353488074919

namespace A174440

/-- `∑[lt[A259761(n), 1]]` -/
def P5984773353488074919.Spec : Prop :=
  ∀ n, (P5984773353488074919.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P2699508829308425089

`∑[lt[A330574(n), 1]]`
-/

namespace A174440.P2699508829308425089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P2699508829308425089

namespace A174440

/-- `∑[lt[A330574(n), 1]]` -/
def P2699508829308425089.Spec : Prop :=
  ∀ n, (P2699508829308425089.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P8500946487869761805

`∑[eq[0, A004531(4*n)]]`
-/

namespace A174440.P8500946487869761805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P8500946487869761805

namespace A174440

/-- `∑[eq[0, A004531(4*n)]]` -/
def P8500946487869761805.Spec : Prop :=
  ∀ n, (P8500946487869761805.a n : ℤ) = A174440 (n + 1)

end A174440

/-! ## A174440.P16705577535934532037

`∑[eq[1, A330574(A330574(2*n))]]`
-/

namespace A174440.P16705577535934532037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 (A330574 (2 * n)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P16705577535934532037

namespace A174440

/-- `∑[eq[1, A330574(A330574(2*n))]]` -/
def P16705577535934532037.Spec : Prop :=
  ∀ n, (P16705577535934532037.a n : ℤ) = A174440 (n + 1)

end A174440

/-!
# A174441: Primes p such that the concatenations p//1331 and 1331//p are both prime numbers (for naturals see A174355).

The programs for A174441, there is no canonical definition to state claims against.
-/

/-! ## A174441.P610237112992665963

`p?[A174355(n+1)]`
-/

namespace A174441.P610237112992665963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174441.P610237112992665963

/-! ## A174441.P7375056494237003289

`filter[A174355(n+1), A010051(#)]`
-/

namespace A174441.P7375056494237003289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A174441.P7375056494237003289

/-! ## A174441.P8664311101007092127

`filter[A174355(n+1), A069513(#)]`
-/

namespace A174441.P8664311101007092127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A174441.P8664311101007092127

/-! ## A174441.P6596470856097959146

`filter[A174355(n+1), A324290(#)]`
-/

namespace A174441.P6596470856097959146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A174441.P6596470856097959146

/-! ## A174441.P15728149023235282082

`∩[A061345(n), A174355(n+1)]`
-/

namespace A174441.P15728149023235282082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P15728149023235282082

/-! ## A174441.P9006954348738881671

`∩[A140460(n), A174355(n+1)]`
-/

namespace A174441.P9006954348738881671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P9006954348738881671

/-! ## A174441.P7409399375607758957

`∩[A003627(n+1), A174355(n+1)]`
-/

namespace A174441.P7409399375607758957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P7409399375607758957

/-! ## A174441.P6236428241638750614

`∩[A007528(n+1), A174355(n+1)]`
-/

namespace A174441.P6236428241638750614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P6236428241638750614

/-! ## A174441.P31137887265007665

`∩[A025584(n+1), A174355(n+1)]`
-/

namespace A174441.P31137887265007665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P31137887265007665

/-! ## A174441.P15714025974671811543

`∩[A034849(n+1), A174355(n+1)]`
-/

namespace A174441.P15714025974671811543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P15714025974671811543

/-! ## A174441.P5246197258123551575

`∩[A040028(n+1), A174355(n+1)]`
-/

namespace A174441.P5246197258123551575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P5246197258123551575

/-! ## A174441.P5542247544560355817

`∩[A040036(n+1), A174355(n+1)]`
-/

namespace A174441.P5542247544560355817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P5542247544560355817

/-! ## A174441.P1844839415931419558

`∩[A040044(n+1), A174355(n+1)]`
-/

namespace A174441.P1844839415931419558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P1844839415931419558

/-! ## A174441.P14064290211666068069

`∩[A040046(n+1), A174355(n+1)]`
-/

namespace A174441.P14064290211666068069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P14064290211666068069

/-! ## A174441.P8028278638805565060

`∩[A040049(n+1), A174355(n+1)]`
-/

namespace A174441.P8028278638805565060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P8028278638805565060

/-! ## A174441.P8844296037814475892

`∩[A040054(n+1), A174355(n+1)]`
-/

namespace A174441.P8844296037814475892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P8844296037814475892

/-! ## A174441.P734017276751924915

`∩[A040060(n+1), A174355(n+1)]`
-/

namespace A174441.P734017276751924915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P734017276751924915

/-! ## A174441.P14747556969438215871

`∩[A040062(n+1), A174355(n+1)]`
-/

namespace A174441.P14747556969438215871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P14747556969438215871

/-! ## A174441.P1745830937237559904

`∩[A040065(n+1), A174355(n+1)]`
-/

namespace A174441.P1745830937237559904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P1745830937237559904

/-! ## A174441.P7898093864437484773

`∩[A040078(n+1), A174355(n+1)]`
-/

namespace A174441.P7898093864437484773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174441.P7898093864437484773

/-!
# A174443: Expansion of g.f. x/(1 + 4*x - 8*x^2).

The programs for A174443, the canonical program `A174443.P5004786039885048159` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174443 has offset 0).

The definition of A174443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1+4x-8x^2))` (program `A174443.P5004786039885048159`, by `A174443.P5004786039885048159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174443.P5004786039885048159

`ogf(x/(1+4x-8x^2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174443

/-- `ogf(x/(1+4x-8x^2))` -/
def P5004786039885048159.Spec : Prop :=
  ∀ n, P5004786039885048159.a n = A174443 n

theorem P5004786039885048159.correct : P5004786039885048159.Spec := by
  intro n
  simp only [A174443]

end A174443

/-! ## A174443.P16023308723220504652

`(-2)^(n-1)*A002605(n)`
-/

namespace A174443.P16023308723220504652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002605 n : ℚ)

end

end A174443.P16023308723220504652

namespace A174443

/-- `(-2)^(n-1)*A002605(n)` -/
def P16023308723220504652.Spec : Prop :=
  ∀ n, P16023308723220504652.a n = (A174443 n : ℚ)

end A174443

/-! ## A174443.P15954932549673242243

`4*(2*a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A174443.P15954932549673242243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (2 * a (n - 2) - a (n - 1))

end

end A174443.P15954932549673242243

namespace A174443

/-- `4*(2*a(n-2)-a(n-1))` -/
def P15954932549673242243.Spec : Prop :=
  ∀ n, P15954932549673242243.a n = A174443 n

end A174443

/-! ## A174443.P3280336427059149880

`A002605(n)*A123344(n)`
-/

namespace A174443.P3280336427059149880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n * A123344 n

end

end A174443.P3280336427059149880

namespace A174443

/-- `A002605(n)*A123344(n)` -/
def P3280336427059149880.Spec : Prop :=
  ∀ n, P3280336427059149880.a n = A174443 n

end A174443

/-! ## A174443.P485157054785751778

`A062157(n)*A180222(n+1)`
-/

namespace A174443.P485157054785751778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A180222 (n + 1)

end

end A174443.P485157054785751778

namespace A174443

/-- `A062157(n)*A180222(n+1)` -/
def P485157054785751778.Spec : Prop :=
  ∀ n, P485157054785751778.a n = A174443 n

end A174443

/-! ## A174443.P1216144396965613272

`A116556(n)/4*A123344(n)`
-/

namespace A174443.P1216144396965613272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116556 n : ℚ) / 4 * (A123344 n : ℚ)

end

end A174443.P1216144396965613272

namespace A174443

/-- `A116556(n)/4*A123344(n)` -/
def P1216144396965613272.Spec : Prop :=
  ∀ n, P1216144396965613272.a n = (A174443 n : ℚ)

end A174443

/-! ## A174443.P2712872101029146765

`A180222(n+1)/A062157(n+2)`
-/

namespace A174443.P2712872101029146765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180222 (n + 1) : ℚ) / (A062157 (n + 2) : ℚ)

end

end A174443.P2712872101029146765

namespace A174443

/-- `A180222(n+1)/A062157(n+2)` -/
def P2712872101029146765.Spec : Prop :=
  ∀ n, P2712872101029146765.a n = (A174443 n : ℚ)

end A174443

/-! ## A174443.P7690027112959027275

`A077917(n+1)/A127864(n+1)*A180222(n+1)`
-/

namespace A174443.P7690027112959027275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077917 (n + 1) : ℚ) / (A127864 (n + 1) : ℚ) * (A180222 (n + 1) : ℚ)

end

end A174443.P7690027112959027275

namespace A174443

/-- `A077917(n+1)/A127864(n+1)*A180222(n+1)` -/
def P7690027112959027275.Spec : Prop :=
  ∀ n, P7690027112959027275.a n = (A174443 n : ℚ)

end A174443

/-!
# A174446: Triangle T(n, k, q) = ceiling(binomial(n, k)/f(n, q)) with T(0, 0) = 1, f(n, q) = 1 + tanh((n-1)/q), and q = 1, read by rows.

The programs for A174446, the canonical program `A174446.P10782928639851895883` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174446 has offset 0).

The definition of A174446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174446.P10782928639851895883

`ceil(A132735(n)/2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A174446

/-- `ceil(A132735(n)/2)` -/
def P10782928639851895883.Spec : Prop :=
  ∀ n, P10782928639851895883.a n = A174446 n

theorem P10782928639851895883.correct : P10782928639851895883.Spec := by
  intro n
  simp only [A174446]

end A174446

/-! ## A174446.P18393408937718860052

`ceil(cosh(log(A007318(n))))`
-/

namespace A174446.P18393408937718860052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A007318 n : ℝ))⌉

end

end A174446.P18393408937718860052

namespace A174446

/-- `ceil(cosh(log(A007318(n))))` -/
def P18393408937718860052.Spec : Prop :=
  ∀ n, P18393408937718860052.a n = A174446 n

end A174446

/-! ## A174446.P15097009342187828930

`floor(A206735(n)/2)+1`
-/

namespace A174446.P15097009342187828930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206735 n : ℚ) / 2⌋ + 1

end

end A174446.P15097009342187828930

namespace A174446

/-- `floor(A206735(n)/2)+1` -/
def P15097009342187828930.Spec : Prop :=
  ∀ n, P15097009342187828930.a n = A174446 n

end A174446

/-! ## A174446.P3469915169225923265

`ceil(A014473(n)/2)+1`
-/

namespace A174446.P3469915169225923265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014473 n : ℚ) / 2⌉ + 1

end

end A174446.P3469915169225923265

namespace A174446

/-- `ceil(A014473(n)/2)+1` -/
def P3469915169225923265.Spec : Prop :=
  ∀ n, P3469915169225923265.a n = A174446 n

end A174446

/-! ## A174446.P16799874043909482014

`ceil((A124927(n)+1)/4)`
-/

namespace A174446.P16799874043909482014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n + 1 : ℚ) / 4⌉

end

end A174446.P16799874043909482014

namespace A174446

/-- `ceil((A124927(n)+1)/4)` -/
def P16799874043909482014.Spec : Prop :=
  ∀ n, P16799874043909482014.a n = A174446 n

end A174446

/-! ## A174446.P341109643725147868

`round((A028326(n)+2)/4)`
-/

namespace A174446.P341109643725147868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028326 n + 2 : ℚ) / 4)

end

end A174446.P341109643725147868

namespace A174446

/-- `round((A028326(n)+2)/4)` -/
def P341109643725147868.Spec : Prop :=
  ∀ n, P341109643725147868.a n = A174446 n

end A174446

/-! ## A174446.P6912247107882358508

`ceil((A134059(n)+1)/6)`
-/

namespace A174446.P6912247107882358508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n + 1 : ℚ) / 6⌉

end

end A174446.P6912247107882358508

namespace A174446

/-- `ceil((A134059(n)+1)/6)` -/
def P6912247107882358508.Spec : Prop :=
  ∀ n, P6912247107882358508.a n = A174446 n

end A174446

/-! ## A174446.P11127907169524002954

`round(A131061(n)/8)+1`
-/

namespace A174446.P11127907169524002954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131061 n : ℚ) / 8) + 1

end

end A174446.P11127907169524002954

namespace A174446

/-- `round(A131061(n)/8)+1` -/
def P11127907169524002954.Spec : Prop :=
  ∀ n, P11127907169524002954.a n = A174446 n

end A174446

/-! ## A174446.P11781356999739703613

`round((A124928(n)-1)/6)+1`
-/

namespace A174446.P11781356999739703613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124928 n - 1 : ℚ) / 6) + 1

end

end A174446.P11781356999739703613

namespace A174446

/-- `round((A124928(n)-1)/6)+1` -/
def P11781356999739703613.Spec : Prop :=
  ∀ n, P11781356999739703613.a n = A174446 n

end A174446

/-! ## A174446.P7337536250544355284

`ceil((A135089(n)/5+1)/2)`
-/

namespace A174446.P7337536250544355284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A135089 n : ℚ) / 5 + 1) / 2⌉

end

end A174446.P7337536250544355284

namespace A174446

/-- `ceil((A135089(n)/5+1)/2)` -/
def P7337536250544355284.Spec : Prop :=
  ∀ n, P7337536250544355284.a n = A174446 n

end A174446

/-! ## A174446.P16794475627995227025

`floor(2*(A134060(n)/3+2)/4)`
-/

namespace A174446.P16794475627995227025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A134060 n : ℚ) / 3 + 2) / 4⌋

end

end A174446.P16794475627995227025

namespace A174446

/-- `floor(2*(A134060(n)/3+2)/4)` -/
def P16794475627995227025.Spec : Prop :=
  ∀ n, P16794475627995227025.a n = A174446 n

end A174446

/-! ## A174446.P4101517589025951206

`ceil((A007318(abs(1-n)+1)+1)/2)`
-/

namespace A174446.P4101517589025951206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 (|1 - (n : ℤ)| + 1).toNat + 1 : ℚ) / 2⌉

end

end A174446.P4101517589025951206

namespace A174446

/-- `ceil((A007318(abs(1-n)+1)+1)/2)` -/
def P4101517589025951206.Spec : Prop :=
  ∀ n, P4101517589025951206.a n = A174446 n

end A174446

/-! ## A174446.P11298010275886254637

`A219463(n)+A193596(n)`
-/

namespace A174446.P11298010275886254637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n + A193596 n

end

end A174446.P11298010275886254637

namespace A174446

/-- `A219463(n)+A193596(n)` -/
def P11298010275886254637.Spec : Prop :=
  ∀ n, P11298010275886254637.a n = A174446 n

end A174446

/-! ## A174446.P5901983423239644696

`floor(A193554(lt[1, A193588(n)])/2)+1`
-/

namespace A174446.P5901983423239644696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋ + 1

end

end A174446.P5901983423239644696

namespace A174446

/-- `floor(A193554(lt[1, A193588(n)])/2)+1` -/
def P5901983423239644696.Spec : Prop :=
  ∀ n, P5901983423239644696.a n = A174446 n

end A174446

/-! ## A174446.P1630326871841360003

`floor((A097805(n+1)+A029635(n))/4)+1`
-/

namespace A174446.P1630326871841360003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097805 (n + 1) + A029635 n : ℚ) / 4⌋ + 1

end

end A174446.P1630326871841360003

namespace A174446

/-- `floor((A097805(n+1)+A029635(n))/4)+1` -/
def P1630326871841360003.Spec : Prop :=
  ∀ n, P1630326871841360003.a n = A174446 n

end A174446

/-! ## A174446.P17037020031011460768

`and(A176348(n)/A176346(n)+2, -2)/2`
-/

namespace A174446.P17037020031011460768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (SequenceMachineLib.roundAway ((A176348 n : ℚ) / (A176346 n : ℚ) + 2)) (-2) : ℚ) / 2

end

end A174446.P17037020031011460768

namespace A174446

/-- `and(A176348(n)/A176346(n)+2, -2)/2` -/
def P17037020031011460768.Spec : Prop :=
  ∀ n, P17037020031011460768.a n = (A174446 n : ℚ)

end A174446

/-! ## A174446.P15843251874727725322

`A034852(n)+A008619(A051159(n))`
-/

namespace A174446.P15843251874727725322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + A008619 (A051159 n).toNat

end

end A174446.P15843251874727725322

namespace A174446

/-- `A034852(n)+A008619(A051159(n))` -/
def P15843251874727725322.Spec : Prop :=
  ∀ n, P15843251874727725322.a n = A174446 n

end A174446

/-! ## A174446.P13568109011402807837

`A000720(A093515(A007318(n)))`
-/

namespace A174446.P13568109011402807837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093515 (A007318 n).toNat).toNat

end

end A174446.P13568109011402807837

namespace A174446

/-- `A000720(A093515(A007318(n)))` -/
def P13568109011402807837.Spec : Prop :=
  ∀ n, P13568109011402807837.a n = A174446 n

end A174446

/-! ## A174446.P3211782113784992510

`A008619(A007318(n))`
-/

namespace A174446.P3211782113784992510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007318 n).toNat

end

end A174446.P3211782113784992510

namespace A174446

/-- `A008619(A007318(n))` -/
def P3211782113784992510.Spec : Prop :=
  ∀ n, P3211782113784992510.a n = A174446 n

end A174446

/-! ## A174446.P4579774102708442535

`A080513(A014473(n))`
-/

namespace A174446.P4579774102708442535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A014473 n).toNat

end

end A174446.P4579774102708442535

namespace A174446

/-- `A080513(A014473(n))` -/
def P4579774102708442535.Spec : Prop :=
  ∀ n, P4579774102708442535.a n = A174446 n

end A174446

/-!
# A174447: Triangle T(n, k, q) = ceiling(binomial(n, k)/f(n, q)) with T(0, 0) = 1, f(n, q) = 1 + tanh((n-1)/q), and q = 4, read by rows.

The programs for A174447, there is no canonical definition to state claims against.
-/

/-! ## A174447.P14344255226878894391

`A156251(A034851(n)+A007318(n))`
-/

namespace A174447.P14344255226878894391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A034851 n + A007318 n).toNat

end

end A174447.P14344255226878894391

/-! ## A174447.P16669324203915277800

`A156251(A206735(n)+A034851(n))`
-/

namespace A174447.P16669324203915277800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A206735 n + A034851 n).toNat

end

end A174447.P16669324203915277800

/-! ## A174447.P13218800243069062742

`A156251(A028326(n)-A034852(n))`
-/

namespace A174447.P13218800243069062742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A028326 n - A034852 n).toNat

end

end A174447.P13218800243069062742

/-! ## A174447.P1970999677351117973

`A156251(A034851(n)+abs(A108086(n)))`
-/

namespace A174447.P1970999677351117973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A034851 n + |A108086 n|).toNat

end

end A174447.P1970999677351117973

/-! ## A174447.P1488911434689153028

`A156250(A007318(n)%A010120(n+3))`
-/

namespace A174447.P1488911434689153028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (Int.tmod (A007318 n) (A010120 (n + 3))).toNat

end

end A174447.P1488911434689153028

/-!
# A174448: Triangle T(n, k, q) = ceiling(binomial(n, k)/f(n, q)) with T(0, 0) = 1, f(n, q) = 1 + tanh((n-1)/q), and q = 12, read by rows.

The programs for A174448, there is no canonical definition to state claims against.
-/

/-! ## A174448.P16411270162938731394

`A074279(A008621(A157169(n))²)`
-/

namespace A174448.P16411270162938731394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A008621 (A157169 n).toNat ^ 2).toNat

end

end A174448.P16411270162938731394

/-! ## A174448.P18445199124928190799

`A196238(A100936(n))`
-/

namespace A174448.P18445199124928190799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A100936 n).toNat

end

end A174448.P18445199124928190799

/-! ## A174448.P7721793146671877632

`A196238(A108359(n))`
-/

namespace A174448.P7721793146671877632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A108359 n).toNat

end

end A174448.P7721793146671877632

/-! ## A174448.P7353620491996256259

`A163563(2*A086617(n))`
-/

namespace A174448.P7353620491996256259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (2 * A086617 n).toNat

end

end A174448.P7353620491996256259

/-! ## A174448.P11073813622923790264

`A080820(A007318(n)%A334322(n+1))`
-/

namespace A174448.P11073813622923790264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (Int.tmod (A007318 n) (A334322 (n + 1))).toNat

end

end A174448.P11073813622923790264

/-!
# A174449: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 1, read by rows.

The programs for A174449, the canonical program `A174449.P6656457030094331191` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174449 has offset 0).

The definition of A174449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174449.P3606952761881282011

`A174450(n)/A144464(n)`
-/

namespace A174449.P3606952761881282011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174450 n : ℚ) / (A144464 n : ℚ)

end

end A174449.P3606952761881282011

namespace A174449

/-- `A174450(n)/A144464(n)` -/
def P3606952761881282011.Spec : Prop :=
  ∀ n, P3606952761881282011.a n = (A174449 n : ℚ)

end A174449

/-! ## A174449.P17635256115867213181

`A174450(n)/sqrt(A152716(n))`
-/

namespace A174449.P17635256115867213181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A174450 n : ℝ) / Real.sqrt (A152716 n : ℝ)

end

end A174449.P17635256115867213181

namespace A174449

/-- `A174450(n)/sqrt(A152716(n))` -/
def P17635256115867213181.Spec : Prop :=
  ∀ n, P17635256115867213181.a n = (A174449 n : ℝ)

end A174449

/-! ## A174449.P4794133289927477982

`A174450(n)/A000079(A004197(n))`
-/

namespace A174449.P4794133289927477982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174450 n : ℚ) / (A000079 (A004197 n).toNat : ℚ)

end

end A174449.P4794133289927477982

namespace A174449

/-- `A174450(n)/A000079(A004197(n))` -/
def P4794133289927477982.Spec : Prop :=
  ∀ n, P4794133289927477982.a n = (A174449 n : ℚ)

end A174449

/-! ## A174449.P16977863611390906456

`A174450(n)/A016116(2*A004197(n))`
-/

namespace A174449.P16977863611390906456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174450 n : ℚ) / (A016116 (2 * A004197 n).toNat : ℚ)

end

end A174449.P16977863611390906456

namespace A174449

/-- `A174450(n)/A016116(2*A004197(n))` -/
def P16977863611390906456.Spec : Prop :=
  ∀ n, P16977863611390906456.a n = (A174449 n : ℚ)

end A174449

/-! ## A174449.P347490459880192347

`A174451(n)/A152714(n)`
-/

namespace A174449.P347490459880192347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174451 n : ℚ) / (A152714 n : ℚ)

end

end A174449.P347490459880192347

namespace A174449

/-- `A174451(n)/A152714(n)` -/
def P347490459880192347.Spec : Prop :=
  ∀ n, P347490459880192347.a n = (A174449 n : ℚ)

end A174449

/-! ## A174449.P5732015534404559253

`gcd(A174450(n), A174451(n))`
-/

namespace A174449.P5732015534404559253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174450 n) (A174451 n)

end

end A174449.P5732015534404559253

namespace A174449

/-- `gcd(A174450(n), A174451(n))` -/
def P5732015534404559253.Spec : Prop :=
  ∀ n, (P5732015534404559253.a n : ℤ) = A174449 n

end A174449

/-! ## A174449.P14394457998653255548

`A174451(n)/A000244(A004197(n))`
-/

namespace A174449.P14394457998653255548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174451 n : ℚ) / (A000244 (A004197 n).toNat : ℚ)

end

end A174449.P14394457998653255548

namespace A174449

/-- `A174451(n)/A000244(A004197(n))` -/
def P14394457998653255548.Spec : Prop :=
  ∀ n, P14394457998653255548.a n = (A174449 n : ℚ)

end A174449

/-! ## A174449.P4760441895349087762

`A174451(n)/A108411(A157458(n))`
-/

namespace A174449.P4760441895349087762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174451 n : ℚ) / (A108411 (A157458 n).toNat : ℚ)

end

end A174449.P4760441895349087762

namespace A174449

/-- `A174451(n)/A108411(A157458(n))` -/
def P4760441895349087762.Spec : Prop :=
  ∀ n, P4760441895349087762.a n = (A174449 n : ℚ)

end A174449

/-! ## A174449.P6656457030094331191

`A159623(A183572(n+1))*A159623(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A174449

/-- `A159623(A183572(n+1))*A159623(n)` -/
def P6656457030094331191.Spec : Prop :=
  ∀ n, P6656457030094331191.a n = A174449 n

theorem P6656457030094331191.correct : P6656457030094331191.Spec := by
  intro n
  simp only [A174449]

end A174449

/-! ## A174449.P13125888388725368406

`A174450(n)/A062050(A131816(n))`
-/

namespace A174449.P13125888388725368406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174450 n : ℚ) / (A062050 (A131816 n).toNat : ℚ)

end

end A174449.P13125888388725368406

namespace A174449

/-- `A174450(n)/A062050(A131816(n))` -/
def P13125888388725368406.Spec : Prop :=
  ∀ n, P13125888388725368406.a n = (A174449 n : ℚ)

end A174449

/-!
# A174450: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 2, read by rows.

The programs for A174450, the canonical program `A174450.P5809996352905406914` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174450 has offset 0).

The definition of A174450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1681 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174450.P5809996352905406914

`A144464(n)*A174449(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174450

/-- `A144464(n)*A174449(n)` -/
def P5809996352905406914.Spec : Prop :=
  ∀ n, P5809996352905406914.a n = A174450 n

theorem P5809996352905406914.correct : P5809996352905406914.Spec := by
  intro n
  simp only [A174450]

end A174450

/-! ## A174450.P5566220432720555494

`sqrt(A152716(n))*A174449(n)`
-/

namespace A174450.P5566220432720555494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152716 n : ℝ) * (A174449 n : ℝ)

end

end A174450.P5566220432720555494

namespace A174450

/-- `sqrt(A152716(n))*A174449(n)` -/
def P5566220432720555494.Spec : Prop :=
  ∀ n, P5566220432720555494.a n = (A174450 n : ℝ)

end A174450

/-! ## A174450.P13651882390777635858

`A000079(A004197(n))*A174449(n)`
-/

namespace A174450.P13651882390777635858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat * A174449 n

end

end A174450.P13651882390777635858

namespace A174450

/-- `A000079(A004197(n))*A174449(n)` -/
def P13651882390777635858.Spec : Prop :=
  ∀ n, P13651882390777635858.a n = A174450 n

end A174450

/-! ## A174450.P13691693666366776803

`A011782(A003983(n+1))*A174449(n)`
-/

namespace A174450.P13691693666366776803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat * A174449 n

end

end A174450.P13691693666366776803

namespace A174450

/-- `A011782(A003983(n+1))*A174449(n)` -/
def P13691693666366776803.Spec : Prop :=
  ∀ n, P13691693666366776803.a n = A174450 n

end A174450

/-! ## A174450.P9034991374964298911

`A174345(n+1)/A174346(n+1)*A174451(n)`
-/

namespace A174450.P9034991374964298911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174345 (n + 1) : ℚ) / (A174346 (n + 1) : ℚ) * (A174451 n : ℚ)

end

end A174450.P9034991374964298911

namespace A174450

/-- `A174345(n+1)/A174346(n+1)*A174451(n)` -/
def P9034991374964298911.Spec : Prop :=
  ∀ n, P9034991374964298911.a n = (A174450 n : ℚ)

end A174450

/-! ## A174450.P10155131097180729710

`A055748(A143086(n))*A174449(n)`
-/

namespace A174450.P10155131097180729710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A143086 n).toNat * A174449 n

end

end A174450.P10155131097180729710

namespace A174450

/-- `A055748(A143086(n))*A174449(n)` -/
def P10155131097180729710.Spec : Prop :=
  ∀ n, P10155131097180729710.a n = A174450 n

end A174450

/-! ## A174450.P11650329181129351480

`A003958(A152714(n))*A174449(n)`
-/

namespace A174450.P11650329181129351480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A152714 n).toNat * A174449 n

end

end A174450.P11650329181129351480

namespace A174450

/-- `A003958(A152714(n))*A174449(n)` -/
def P11650329181129351480.Spec : Prop :=
  ∀ n, P11650329181129351480.a n = A174450 n

end A174450

/-! ## A174450.P14384333451944801852

`A062050(A131816(n))*A174449(n)`
-/

namespace A174450.P14384333451944801852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A131816 n).toNat * A174449 n

end

end A174450.P14384333451944801852

namespace A174450

/-- `A062050(A131816(n))*A174449(n)` -/
def P14384333451944801852.Spec : Prop :=
  ∀ n, P14384333451944801852.a n = A174450 n

end A174450

/-!
# A174451: Triangle T(n, k, q) = n!*(n+1)!*q^k/((n-k)!(n-k+1)!) if floor(n/2) > k-1, otherwise n!*(n+1)!*q^(n-k)/(k!*(k+1)!) for q = 3, read by rows.

The programs for A174451, the canonical program `A174451.P14204100503436890623` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174451 has offset 0).

The definition of A174451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174451.P14204100503436890623

`A152714(n)*A174449(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A174451

/-- `A152714(n)*A174449(n)` -/
def P14204100503436890623.Spec : Prop :=
  ∀ n, P14204100503436890623.a n = A174451 n

theorem P14204100503436890623.correct : P14204100503436890623.Spec := by
  intro n
  simp only [A174451]

end A174451

/-! ## A174451.P5856763480173414657

`A000244(A004197(n))*A174449(n)`
-/

namespace A174451.P5856763480173414657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004197 n).toNat * A174449 n

end

end A174451.P5856763480173414657

namespace A174451

/-- `A000244(A004197(n))*A174449(n)` -/
def P5856763480173414657.Spec : Prop :=
  ∀ n, P5856763480173414657.a n = A174451 n

end A174451

/-! ## A174451.P16193734229890957622

`A108411(A157458(n))*A174449(n)`
-/

namespace A174451.P16193734229890957622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A157458 n).toNat * A174449 n

end

end A174451.P16193734229890957622

namespace A174451

/-- `A108411(A157458(n))*A174449(n)` -/
def P16193734229890957622.Spec : Prop :=
  ∀ n, P16193734229890957622.a n = A174451 n

end A174451

/-! ## A174451.P12514761535739685042

`A152714(n)/A144464(n)*A174450(n)`
-/

namespace A174451.P12514761535739685042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152714 n : ℚ) / (A144464 n : ℚ) * (A174450 n : ℚ)

end

end A174451.P12514761535739685042

namespace A174451

/-- `A152714(n)/A144464(n)*A174450(n)` -/
def P12514761535739685042.Spec : Prop :=
  ∀ n, P12514761535739685042.a n = (A174451 n : ℚ)

end A174451

/-! ## A174451.P9485223566640074325

`A003959(A144464(n))*A174449(n)`
-/

namespace A174451.P9485223566640074325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A144464 n).toNat * A174449 n

end

end A174451.P9485223566640074325

namespace A174451

/-- `A003959(A144464(n))*A174449(n)` -/
def P9485223566640074325.Spec : Prop :=
  ∀ n, P9485223566640074325.a n = A174451 n

end A174451

/-!
# A174452: a(n) = n^2 mod 1000.

The programs for A174452, the canonical program `A174452.P2068204203656008444` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174452 has offset 0).

The definition of A174452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174452.P2068204203656008444

`n²%1000`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174452

/-- `n²%1000` -/
def P2068204203656008444.Spec : Prop :=
  ∀ n, (P2068204203656008444.a n : ℤ) = A174452 n

theorem P2068204203656008444.correct : P2068204203656008444.Spec := by
  intro n
  simp only [A174452]

end A174452

/-!
# A174453: a(n) is the smallest k >= 1 for which gcd(m + (-1)^m, m + n - 4) > 1, where m = n + k - 1.

The programs for A174453, there is no canonical definition to state claims against.
-/

/-! ## A174453.P1198717687807265231

`gcd(∑[A323882(n+1)], A323857(n+1))`
-/

namespace A174453.P1198717687807265231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A323857 (n + 1))

end

end A174453.P1198717687807265231

/-! ## A174453.P10292199701464136259

`A054390(A020639(A038620(n))!)`
-/

namespace A174453.P10292199701464136259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (Nat.factorial (A020639 (A038620 n).toNat).toNat)

end

end A174453.P10292199701464136259

/-! ## A174453.P1406167787726472466

`gcd(A041511(n), A041528(A023360(n)))`
-/

namespace A174453.P1406167787726472466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041511 n) (A041528 (A023360 n).toNat)

end

end A174453.P1406167787726472466

/-! ## A174453.P1162896396787962766

`A328404(and(A001255(n), A134667(n)))`
-/

namespace A174453.P1162896396787962766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (Int.land (A001255 n) (A134667 n)).toNat

end

end A174453.P1162896396787962766

/-! ## A174453.P13078477722152229193

`A328404(and(A134667(n), A336139(n)))`
-/

namespace A174453.P13078477722152229193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 (Int.land (A134667 n) (A336139 n)).toNat

end

end A174453.P13078477722152229193

/-!
# A174454: The smaller member p of a twin prime pair such that 5*p+6 is a square of a prime number.

The programs for A174454, there is no canonical definition to state claims against.
-/

/-! ## A174454.P9529524473159384996

`p?[A154840(n)*A174370(n+1)]`
-/

namespace A174454.P9529524473159384996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154840 n * A174370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174454.P9529524473159384996

/-!
# A174455: Number of partitions where the number of 1's and 2's are equal.

The programs for A174455, there is no canonical definition to state claims against.
-/

/-! ## A174455.P7799469097650913005

`A182713(n+3)-A182713(n+1)`
-/

namespace A174455.P7799469097650913005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 3) - A182713 (n + 1)

end

end A174455.P7799469097650913005

/-! ## A174455.P13945276770569503420

`A240056(n+1)-A240056(n)`
-/

namespace A174455.P13945276770569503420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240056 (n + 1) - A240056 n

end

end A174455.P13945276770569503420

/-! ## A174455.P1232504809829509972

`A008483(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A174455.P1232504809829509972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008483 n + a (n - 3)

end

end A174455.P1232504809829509972

/-! ## A174455.P15610211505141639405

`Δ[A240056(n)]`
-/

namespace A174455.P15610211505141639405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174455.P15610211505141639405

/-! ## A174455.P13217045068889336995

`Δ[A182713(n+1)+A182713(n+2)]`
-/

namespace A174455.P13217045068889336995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182713 (n + 1) + A182713 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174455.P13217045068889336995

/-! ## A174455.P1112527942695734042

`Δ[A000041(n)-A182713(n+3)]`
-/

namespace A174455.P1112527942695734042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A182713 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174455.P1112527942695734042

/-! ## A174455.P1223078615737790465

`A220504(∑[n+2]+4)`
-/

namespace A174455.P1223078615737790465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220504 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A174455.P1223078615737790465

/-!
# A174456: Numbers k such that d(k) = d(k+1) = 12.

The programs for A174456, the canonical program `A174456.P14672879334691588390` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174456 has offset 1).

The definition of A174456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174456.P14672879334691588390

`∩[A030630(n+1), A171665(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A174456

/-- `∩[A030630(n+1), A171665(n+1)]` -/
def P14672879334691588390.Spec : Prop :=
  ∀ n, (P14672879334691588390.a n : ℤ) = A174456 (n + 1)

theorem P14672879334691588390.correct : P14672879334691588390.Spec := by
  intro n
  simp only [A174456, Nat.add_sub_cancel]

end A174456

/-! ## A174456.P12142949655273006825

`∩[A030630(n+1), A348345(n+1)]`
-/

namespace A174456.P12142949655273006825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174456.P12142949655273006825

namespace A174456

/-- `∩[A030630(n+1), A348345(n+1)]` -/
def P12142949655273006825.Spec : Prop :=
  ∀ n, (P12142949655273006825.a n : ℤ) = A174456 (n + 1)

end A174456

/-! ## A174456.P10345653038462532634

`∩[A030630(n+1)-1, A030630(n+3)]`
-/

namespace A174456.P10345653038462532634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174456.P10345653038462532634

namespace A174456

/-- `∩[A030630(n+1)-1, A030630(n+3)]` -/
def P10345653038462532634.Spec : Prop :=
  ∀ n, (P10345653038462532634.a n : ℤ) = A174456 (n + 1)

end A174456

/-! ## A174456.P10064835461475769953

`∩[A005237(n+1), A030630(n+1)]`
-/

namespace A174456.P10064835461475769953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174456.P10064835461475769953

namespace A174456

/-- `∩[A005237(n+1), A030630(n+1)]` -/
def P10064835461475769953.Spec : Prop :=
  ∀ n, (P10064835461475769953.a n : ℤ) = A174456 (n + 1)

end A174456

/-! ## A174456.P11259963392401204979

`∩[A171950(A030630(n+1)+1), A030630(n+1)]`
-/

namespace A174456.P11259963392401204979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A030630 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174456.P11259963392401204979

namespace A174456

/-- `∩[A171950(A030630(n+1)+1), A030630(n+1)]` -/
def P11259963392401204979.Spec : Prop :=
  ∀ n, (P11259963392401204979.a n : ℤ) = A174456 (n + 1)

end A174456

/-!
# A174457: Infinitely refactorable numbers: numbers k such that each iteration under the map x -> A000005(x) produces a divisor of k.

The programs for A174457, there is no canonical definition to state claims against.
-/

/-! ## A174457.P4334913272266841616

`record[A122377(A140489(n+1))]`
-/

namespace A174457.P4334913272266841616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A140489 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174457.P4334913272266841616

/-! ## A174457.P16033274243919761095

`filter[A140489(n+1), A336040(#)]`
-/

namespace A174457.P16033274243919761095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A174457.P16033274243919761095

/-! ## A174457.P2617418639617001450

`∩[A033950(n+1), A140489(n+1)]`
-/

namespace A174457.P2617418639617001450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174457.P2617418639617001450

/-! ## A174457.P15303236819796345080

`∩[A046526(n+1), A182656(n+1)]`
-/

namespace A174457.P15303236819796345080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174457.P15303236819796345080

/-! ## A174457.P13637997633471675572

`∩[A093006(n+1), A182656(n+1)]`
-/

namespace A174457.P13637997633471675572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174457.P13637997633471675572

/-!
# A174458: Partial sums of A053519.

The programs for A174458, there is no canonical definition to state claims against.
-/

/-! ## A174458.P6949995623670749518

`∑[A053519(n)]`
-/

namespace A174458.P6949995623670749518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174458.P6949995623670749518

/-! ## A174458.P11247157431890144518

`∑[A053520(n)-A053518(n)]`
-/

namespace A174458.P11247157431890144518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053520 n - A053518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174458.P11247157431890144518

/-! ## A174458.P13727839456324296107

`A053519(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A174458.P13727839456324296107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053519 n + a (A023443 n).toNat

end

end A174458.P13727839456324296107

/-! ## A174458.P12730992643261046512

`∑[A053557(n+4)-A053520(n)]`
-/

namespace A174458.P12730992643261046512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053557 (n + 4) - A053520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174458.P12730992643261046512

/-! ## A174458.P10063420413279596535

`∑{d}[2^n, A053519(A001222(#))]`
-/

namespace A174458.P10063420413279596535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053519 (A001222 d).toNat

end

end A174458.P10063420413279596535

/-!
# A174459: Partial sums of A006143.

The programs for A174459, there is no canonical definition to state claims against.
-/

/-! ## A174459.P11030642882779766402

`∑[A006143(n+4)]`
-/

namespace A174459.P11030642882779766402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006143 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174459.P11030642882779766402

/-! ## A174459.P13543456870116417160

`∑[A235453(n+1)]%A279452(n+1)-n`
-/

namespace A174459.P13543456870116417160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A279452 (n + 1)) - (n : ℤ)

end

end A174459.P13543456870116417160

/-! ## A174459.P2413014446464867582

`A274127(A350936(n+1))%A006498(n)`
-/

namespace A174459.P2413014446464867582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274127 (A350936 (n + 1)).toNat) (A006498 n)

end

end A174459.P2413014446464867582

/-! ## A174459.P14860611166212132440

`A218825(A325562(2*n+3)+A068875(n))`
-/

namespace A174459.P14860611166212132440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218825 (A325562 (2 * n + 3) + A068875 n).toNat

end

end A174459.P14860611166212132440

/-!
# A174461: G.f.: exp( Sum_{n>=1} A174462(n)*x^n/n ) where A174462(n) = Sum_{d|n} C(n,d)^2.

The programs for A174461, there is no canonical definition to state claims against.
-/

/-! ## A174461.P3723743225618150991

`A307730(A000124(n)^A190660(n))`
-/

namespace A174461.P3723743225618150991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307730 (SequenceMachineLib.roundAway ((A000124 n : ℚ) ^ (A190660 n : ℤ))).toNat

end

end A174461.P3723743225618150991

/-! ## A174461.P12001988475289508734

`A326842(A005558(n))+A088226(n+1)`
-/

namespace A174461.P12001988475289508734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 (A005558 n).toNat + A088226 (n + 1)

end

end A174461.P12001988475289508734

/-! ## A174461.P10369793430645441586

`∑[A335162(A318494(n+1))+A319395(n)]`
-/

namespace A174461.P10369793430645441586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A318494 (n + 1)).toNat + A319395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174461.P10369793430645441586

/-!
# A174462: a(n) = Sum_{d|n} binomial(n,d)^2.

The programs for A174462, the canonical program `A174462.P15275172806823602182` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174462 has offset 1).

The definition of A174462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174462.P15275172806823602182

`∑{d}[n+1, C(n+1, #)²]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174462

/-- `∑{d}[n+1, C(n+1, #)²]` -/
def P15275172806823602182.Spec : Prop :=
  ∀ n, (P15275172806823602182.a n : ℤ) = A174462 (n + 1)

theorem P15275172806823602182.correct : P15275172806823602182.Spec := by
  intro n
  simp only [A174462, Nat.add_sub_cancel]

end A174462

/-! ## A174462.P10034751717539031953

`∑{d}[n+1, C(n+1, #)*C(n+1, #)]`
-/

namespace A174462.P10034751717539031953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (n + 1) d * Nat.choose (n + 1) d

end

end A174462.P10034751717539031953

namespace A174462

/-- `∑{d}[n+1, C(n+1, #)*C(n+1, #)]` -/
def P10034751717539031953.Spec : Prop :=
  ∀ n, (P10034751717539031953.a n : ℤ) = A174462 (n + 1)

theorem P10034751717539031953.correct : P10034751717539031953.Spec := by
  intro n
  simp only [A174462, Nat.add_sub_cancel, A174462.P10034751717539031953.f1, A174462.P10034751717539031953.a, A174462.P15275172806823602182.f1, A174462.P15275172806823602182.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174462

/-! ## A174462.P16642862031925634630

`∑{d}[n+1, A007318(A000217(n+1)+#)²]`
-/

namespace A174462.P16642862031925634630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (n + 1) + (d : ℤ)).toNat ^ 2

end

end A174462.P16642862031925634630

namespace A174462

/-- `∑{d}[n+1, A007318(A000217(n+1)+#)²]` -/
def P16642862031925634630.Spec : Prop :=
  ∀ n, P16642862031925634630.a n = A174462 (n + 1)

end A174462

/-! ## A174462.P10161551418247320256

`∑{d}[n+1, A007318(A000096(n+1)-#)²]`
-/

namespace A174462.P10161551418247320256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000096 (n + 1) - (d : ℤ)).toNat ^ 2

end

end A174462.P10161551418247320256

namespace A174462

/-- `∑{d}[n+1, A007318(A000096(n+1)-#)²]` -/
def P10161551418247320256.Spec : Prop :=
  ∀ n, P10161551418247320256.a n = A174462 (n + 1)

end A174462

/-! ## A174462.P13774961782476850320

`∑{d}[n+1, A000290(C(n+1, #))]`
-/

namespace A174462.P13774961782476850320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 (Nat.choose (n + 1) d)

end

end A174462.P13774961782476850320

namespace A174462

/-- `∑{d}[n+1, A000290(C(n+1, #))]` -/
def P13774961782476850320.Spec : Prop :=
  ∀ n, P13774961782476850320.a n = A174462 (n + 1)

end A174462

/-!
# A174463: G.f.: exp( Sum_{n>=1} A174464(n)*x^n/n ) where A174464(n) = Sum_{d|n} C(n,d)^(n/d).

The programs for A174463, there is no canonical definition to state claims against.
-/

/-! ## A174463.P14677210325702447148

`A323240(A297924(n))`
-/

namespace A174463.P14677210325702447148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323240 (A297924 n).toNat

end

end A174463.P14677210325702447148

/-! ## A174463.P8928892526228720579

`A190309(A000085(n))+A002061(n)`
-/

namespace A174463.P8928892526228720579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190309 (A000085 n).toNat + A002061 n

end

end A174463.P8928892526228720579

/-!
# A174464: a(n) = Sum_{d|n} C(n,d)^(n/d).

The programs for A174464, there is no canonical definition to state claims against.
-/

/-! ## A174464.P11800657591402460884

`A222253(∑{d}[n+1, #^(n+1)])`
-/

namespace A174464.P11800657591402460884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1))

end

end A174464.P11800657591402460884

/-!
# A174465: G.f.: exp( Sum_{n>=1} A174466(n)*x^n/n ) where A174466(n) = Sum_{d|n} d*sigma(n/d)*tau(d).

The programs for A174465, there is no canonical definition to state claims against.
-/

/-! ## A174465.P12621124782291847117

`A085257(or(A026424(n+1), A323450(2*n)))`
-/

namespace A174465.P12621124782291847117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085257 (Int.lor (A026424 (n + 1)) (A323450 (2 * n))).toNat

end

end A174465.P12621124782291847117

/-!
# A174466: a(n) = Sum_{d|n} d*sigma(n/d)*tau(d).

The programs for A174466, the canonical program `A174466.P14318302255524378006` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174466 has offset 1).

The definition of A174466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174466.P14318302255524378006

`∑{d}[n+1, A034718(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A174466

/-- `∑{d}[n+1, A034718(#)]` -/
def P14318302255524378006.Spec : Prop :=
  ∀ n, P14318302255524378006.a n = A174466 (n + 1)

theorem P14318302255524378006.correct : P14318302255524378006.Spec := by
  intro n
  simp only [A174466, Nat.add_sub_cancel]

end A174466

/-! ## A174466.P8923063345680633478

`∑{d}[n+1, #*A007425(#)]`
-/

namespace A174466.P8923063345680633478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007425 d

end

end A174466.P8923063345680633478

namespace A174466

/-- `∑{d}[n+1, #*A007425(#)]` -/
def P8923063345680633478.Spec : Prop :=
  ∀ n, P8923063345680633478.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P3572660891652434977

`∑{d}[n+1, #*A060640((n+1)/#)]`
-/

namespace A174466.P3572660891652434977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P3572660891652434977

namespace A174466

/-- `∑{d}[n+1, #*A060640((n+1)/#)]` -/
def P3572660891652434977.Spec : Prop :=
  ∀ n, P3572660891652434977.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P15874334136198819490

`∑{d}[n+1, A007429(#)*A018804((n+1)/#)]`
-/

namespace A174466.P15874334136198819490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P15874334136198819490

namespace A174466

/-- `∑{d}[n+1, A007429(#)*A018804((n+1)/#)]` -/
def P15874334136198819490.Spec : Prop :=
  ∀ n, P15874334136198819490.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P7619879846233376969

`∑{d}[n+1, A000010(#)*A034761((n+1)/#)]`
-/

namespace A174466.P7619879846233376969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034761 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P7619879846233376969

namespace A174466

/-- `∑{d}[n+1, A000010(#)*A034761((n+1)/#)]` -/
def P7619879846233376969.Spec : Prop :=
  ∀ n, P7619879846233376969.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P10020955411908196986

`∑{d}[n+1, A007430(#)*A029935((n+1)/#)]`
-/

namespace A174466.P10020955411908196986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P10020955411908196986

namespace A174466

/-- `∑{d}[n+1, A007430(#)*A029935((n+1)/#)]` -/
def P10020955411908196986.Spec : Prop :=
  ∀ n, P10020955411908196986.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P8097171376886525322

`∑{d}[n+1, A000203(#)*A038040((n+1)/#)]`
-/

namespace A174466.P8097171376886525322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P8097171376886525322

namespace A174466

/-- `∑{d}[n+1, A000203(#)*A038040((n+1)/#)]` -/
def P8097171376886525322.Spec : Prop :=
  ∀ n, P8097171376886525322.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P845817901535420022

`∑{d}[n+1, A061019(#)*A068984((n+1)/#)]`
-/

namespace A174466.P845817901535420022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A068984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P845817901535420022

namespace A174466

/-- `∑{d}[n+1, A061019(#)*A068984((n+1)/#)]` -/
def P845817901535420022.Spec : Prop :=
  ∀ n, P845817901535420022.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P16191263974548552389

`∑{d}[n+1, A091512(#)*A109386((n+1)/#)]`
-/

namespace A174466.P16191263974548552389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P16191263974548552389

namespace A174466

/-- `∑{d}[n+1, A091512(#)*A109386((n+1)/#)]` -/
def P16191263974548552389.Spec : Prop :=
  ∀ n, P16191263974548552389.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P4274859111153414110

`∑{d}[n+1, A007426(#)*A344683((n+1)/#)]`
-/

namespace A174466.P4274859111153414110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P4274859111153414110

namespace A174466

/-- `∑{d}[n+1, A007426(#)*A344683((n+1)/#)]` -/
def P4274859111153414110.Spec : Prop :=
  ∀ n, P4274859111153414110.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P3315166136967098076

`∑{d}[n+1, A000005(#)*A390258((n+1)/#)]`
-/

namespace A174466.P3315166136967098076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A390258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P3315166136967098076

namespace A174466

/-- `∑{d}[n+1, A000005(#)*A390258((n+1)/#)]` -/
def P3315166136967098076.Spec : Prop :=
  ∀ n, P3315166136967098076.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P17304804658545582473

`∑{d}[n+1, A057670(#)*A337180((n+1)/#)]`
-/

namespace A174466.P17304804658545582473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057670 d * A337180 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P17304804658545582473

namespace A174466

/-- `∑{d}[n+1, A057670(#)*A337180((n+1)/#)]` -/
def P17304804658545582473.Spec : Prop :=
  ∀ n, P17304804658545582473.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P10855459127354678706

`∑{d}[n+1, A076752(#)*A327251((n+1)/#)]`
-/

namespace A174466.P10855459127354678706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P10855459127354678706

namespace A174466

/-- `∑{d}[n+1, A076752(#)*A327251((n+1)/#)]` -/
def P10855459127354678706.Spec : Prop :=
  ∀ n, P10855459127354678706.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P9293601681861085009

`∑{d}[n+1, A191161(#)*A245212((n+1)/#)]`
-/

namespace A174466.P9293601681861085009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A245212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P9293601681861085009

namespace A174466

/-- `∑{d}[n+1, A191161(#)*A245212((n+1)/#)]` -/
def P9293601681861085009.Spec : Prop :=
  ∀ n, P9293601681861085009.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P11699373004997188545

`∑{d}[n+1, A206369(#)*A365649((n+1)/#)]`
-/

namespace A174466.P11699373004997188545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P11699373004997188545

namespace A174466

/-- `∑{d}[n+1, A206369(#)*A365649((n+1)/#)]` -/
def P11699373004997188545.Spec : Prop :=
  ∀ n, P11699373004997188545.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P17939287806744331842

`∑{d}[n+1, A322577(#)*A332844((n+1)/#)]`
-/

namespace A174466.P17939287806744331842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322577 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P17939287806744331842

namespace A174466

/-- `∑{d}[n+1, A322577(#)*A332844((n+1)/#)]` -/
def P17939287806744331842.Spec : Prop :=
  ∀ n, P17939287806744331842.a n = A174466 (n + 1)

end A174466

/-! ## A174466.P13700739606433072493

`∑{d}[n+1, A327096(#)*A344372((n+1)/#)]`
-/

namespace A174466.P13700739606433072493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327096 d * A344372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174466.P13700739606433072493

namespace A174466

/-- `∑{d}[n+1, A327096(#)*A344372((n+1)/#)]` -/
def P13700739606433072493.Spec : Prop :=
  ∀ n, P13700739606433072493.a n = A174466 (n + 1)

end A174466

/-!
# A174467: G.f.: exp( Sum_{n>=1} A174468(n)*x^n/n ) where A174468(n) = Sum_{d|n} d*sigma(n/d)*sigma(d).

The programs for A174467, there is no canonical definition to state claims against.
-/

/-! ## A174467.P14959725170867476914

`A243047(A209626(n))+A161828(n)`
-/

namespace A174467.P14959725170867476914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243047 (A209626 n).toNat + A161828 n

end

end A174467.P14959725170867476914

/-! ## A174467.P13819645446339637200

`A237615(A005746(n+1))+A020985(3*n)`
-/

namespace A174467.P13819645446339637200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237615 (A005746 (n + 1)).toNat + A020985 (3 * n)

end

end A174467.P13819645446339637200

/-!
# A174468: a(n) = Sum_{d|n} d*sigma(n/d)*sigma(d).

The programs for A174468, the canonical program `A174468.P1929796918282499277` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174468 has offset 1).

The definition of A174468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174468.P1929796918282499277

`∑{d}[n+1, #*A007429(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174468

/-- `∑{d}[n+1, #*A007429(#)]` -/
def P1929796918282499277.Spec : Prop :=
  ∀ n, P1929796918282499277.a n = A174468 (n + 1)

theorem P1929796918282499277.correct : P1929796918282499277.Spec := by
  intro n
  simp only [A174468, Nat.add_sub_cancel]

end A174468

/-! ## A174468.P12987727722678310697

`∑{d}[n+1, #*A001001((n+1)/#)]`
-/

namespace A174468.P12987727722678310697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P12987727722678310697

namespace A174468

/-- `∑{d}[n+1, #*A001001((n+1)/#)]` -/
def P12987727722678310697.Spec : Prop :=
  ∀ n, P12987727722678310697.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P11317923938159110909

`∑{d}[n+1, A007433(#)*A018804((n+1)/#)]`
-/

namespace A174468.P11317923938159110909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P11317923938159110909

namespace A174468

/-- `∑{d}[n+1, A007433(#)*A018804((n+1)/#)]` -/
def P11317923938159110909.Spec : Prop :=
  ∀ n, P11317923938159110909.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P11924984336998123628

`∑{d}[n+1, A001157(#)*A038040((n+1)/#)]`
-/

namespace A174468.P11924984336998123628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P11924984336998123628

namespace A174468

/-- `∑{d}[n+1, A001157(#)*A038040((n+1)/#)]` -/
def P11924984336998123628.Spec : Prop :=
  ∀ n, P11924984336998123628.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P13253486513172729620

`∑{d}[n+1, A007434(#)*A034761((n+1)/#)]`
-/

namespace A174468.P13253486513172729620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A034761 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P13253486513172729620

namespace A174468

/-- `∑{d}[n+1, A007434(#)*A034761((n+1)/#)]` -/
def P13253486513172729620.Spec : Prop :=
  ∀ n, P13253486513172729620.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P2734815211213514517

`∑{d}[n+1, A000290(#)*A060640((n+1)/#)]`
-/

namespace A174468.P2734815211213514517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P2734815211213514517

namespace A174468

/-- `∑{d}[n+1, A000290(#)*A060640((n+1)/#)]` -/
def P2734815211213514517.Spec : Prop :=
  ∀ n, P2734815211213514517.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P2895992323995131857

`∑{d}[n+1, A000203(#)*A064987((n+1)/#)]`
-/

namespace A174468.P2895992323995131857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P2895992323995131857

namespace A174468

/-- `∑{d}[n+1, A000203(#)*A064987((n+1)/#)]` -/
def P2895992323995131857.Spec : Prop :=
  ∀ n, P2895992323995131857.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P4137171856677383994

`∑{d}[n+1, A034718(#)*A057660((n+1)/#)]`
-/

namespace A174468.P4137171856677383994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P4137171856677383994

namespace A174468

/-- `∑{d}[n+1, A034718(#)*A057660((n+1)/#)]` -/
def P4137171856677383994.Spec : Prop :=
  ∀ n, P4137171856677383994.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P4072485800023802014

`∑{d}[n+1, A002618(#)*A174466((n+1)/#)]`
-/

namespace A174468.P4072485800023802014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P4072485800023802014

namespace A174468

/-- `∑{d}[n+1, A002618(#)*A174466((n+1)/#)]` -/
def P4072485800023802014.Spec : Prop :=
  ∀ n, P4072485800023802014.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P5808364233840808133

`∑{d}[n+1, A091519(#)*A109386((n+1)/#)]`
-/

namespace A174468.P5808364233840808133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P5808364233840808133

namespace A174468

/-- `∑{d}[n+1, A091519(#)*A109386((n+1)/#)]` -/
def P5808364233840808133.Spec : Prop :=
  ∀ n, P5808364233840808133.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P1732642986739657884

`∑{d}[n+1, A007430(#)*A341772((n+1)/#)]`
-/

namespace A174468.P1732642986739657884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P1732642986739657884

namespace A174468

/-- `∑{d}[n+1, A007430(#)*A341772((n+1)/#)]` -/
def P1732642986739657884.Spec : Prop :=
  ∀ n, P1732642986739657884.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P11160459070693365479

`∑{d}[n+1, A091512(#)*A288418((n+1)/#)]`
-/

namespace A174468.P11160459070693365479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A288418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P11160459070693365479

namespace A174468

/-- `∑{d}[n+1, A091512(#)*A288418((n+1)/#)]` -/
def P11160459070693365479.Spec : Prop :=
  ∀ n, P11160459070693365479.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P7468150697049593303

`∑{d}[n+1, A060983(#)*A327626((n+1)/#)]`
-/

namespace A174468.P7468150697049593303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060983 d * A327626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P7468150697049593303

namespace A174468

/-- `∑{d}[n+1, A060983(#)*A327626((n+1)/#)]` -/
def P7468150697049593303.Spec : Prop :=
  ∀ n, P7468150697049593303.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P10346588880061087076

`∑{d}[n+1, A061019(#)*A344042((n+1)/#)]`
-/

namespace A174468.P10346588880061087076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A344042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P10346588880061087076

namespace A174468

/-- `∑{d}[n+1, A061019(#)*A344042((n+1)/#)]` -/
def P10346588880061087076.Spec : Prop :=
  ∀ n, P10346588880061087076.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P11823546850046227453

`∑{d}[n+1, A065018(#)*A358272((n+1)/#)]`
-/

namespace A174468.P11823546850046227453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065018 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P11823546850046227453

namespace A174468

/-- `∑{d}[n+1, A065018(#)*A358272((n+1)/#)]` -/
def P11823546850046227453.Spec : Prop :=
  ∀ n, P11823546850046227453.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P15034664398392639580

`∑{d}[n+1, A191161(#)*A245773((n+1)/#)]`
-/

namespace A174468.P15034664398392639580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A245773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P15034664398392639580

namespace A174468

/-- `∑{d}[n+1, A191161(#)*A245773((n+1)/#)]` -/
def P15034664398392639580.Spec : Prop :=
  ∀ n, P15034664398392639580.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P5580616163435064504

`∑{d}[n+1, A327251(#)*A328271((n+1)/#)]`
-/

namespace A174468.P5580616163435064504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A328271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P5580616163435064504

namespace A174468

/-- `∑{d}[n+1, A327251(#)*A328271((n+1)/#)]` -/
def P5580616163435064504.Spec : Prop :=
  ∀ n, P5580616163435064504.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P766275466102967718

`∑{d}[n+1, A351600(#)*A357938((n+1)/#)]`
-/

namespace A174468.P766275466102967718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351600 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P766275466102967718

namespace A174468

/-- `∑{d}[n+1, A351600(#)*A357938((n+1)/#)]` -/
def P766275466102967718.Spec : Prop :=
  ∀ n, P766275466102967718.a n = A174468 (n + 1)

end A174468

/-! ## A174468.P12938118335699501117

`∑{d}[n+1, A383795(#)*A390262((n+1)/#)]`
-/

namespace A174468.P12938118335699501117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A383795 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174468.P12938118335699501117

namespace A174468

/-- `∑{d}[n+1, A383795(#)*A390262((n+1)/#)]` -/
def P12938118335699501117.Spec : Prop :=
  ∀ n, P12938118335699501117.a n = A174468 (n + 1)

end A174468

/-!
# A174469: Number of permutations p of {1,...,n} satisfying p(1)=1 and, if n>1, |p(i)-p((i mod n)+1)| is in {2,3} for i from 1 to n.

The programs for A174469, the canonical program `A174469.P4785147649118082152` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174469 has offset 1).

The definition of A174469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174469.P4785147649118082152

`a(n-1)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174469

/-- `a(n-1)+a(n-5)` -/
def P4785147649118082152.Spec : Prop :=
  ∀ n, (P4785147649118082152.a n : ℤ) = A174469 (n + 1)

theorem P4785147649118082152.correct : P4785147649118082152.Spec := by
  intro n
  simp only [A174469, Nat.add_sub_cancel]

end A174469

/-!
# A174470: G.F.: exp( Sum_{n>=1} A014578(n)*(3x)^n/n ), where A014578 is the binary expansion of Thue constant.

The programs for A174470, there is no canonical definition to state claims against.
-/

/-! ## A174470.P2588216130595304830

`A032742(3^(n-∑[val(abs(1-n)+1, 3)])+3^n)`
-/

namespace A174470.P2588216130595304830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) + (3 ^ n : ℚ))).toNat

end

end A174470.P2588216130595304830

/-! ## A174470.P4896025201091481882

`A289440(3^(n-∑[val(abs(1-n)+1, 3)])+3^n)`
-/

namespace A174470.P4896025201091481882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) + (3 ^ n : ℚ))).toNat

end

end A174470.P4896025201091481882

/-! ## A174470.P2442707613629253596

`A289441(3^(n-∑[val(abs(1-n)+1, 3)])+3^n)`
-/

namespace A174470.P2442707613629253596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) + (3 ^ n : ℚ))).toNat

end

end A174470.P2442707613629253596

/-! ## A174470.P14391380840762139724

`A004525(A125824(n)+3^n)`
-/

namespace A174470.P14391380840762139724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A125824 n + (3 ^ n : ℤ)).toNat

end

end A174470.P14391380840762139724

/-! ## A174470.P12658976928171061585

`A026741(A125824(n)+3^n)`
-/

namespace A174470.P12658976928171061585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A125824 n + (3 ^ n : ℤ)).toNat

end

end A174470.P12658976928171061585

/-!
# A174471: G.f.: exp( Sum_{n>=1} A174472(n)*x^n/n ) where A174472(n) = Sum_{d|n} d^sigma(d).

The programs for A174471, there is no canonical definition to state claims against.
-/

/-! ## A174471.P3740379212123627376

`A191233(A000032(A000108(n)))`
-/

namespace A174471.P3740379212123627376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191233 (A000032 (A000108 n).toNat).toNat

end

end A174471.P3740379212123627376

/-!
# A174472: a(n) = Sum_{d|n} d^sigma(d).

The programs for A174472, there is no canonical definition to state claims against.
-/

/-! ## A174472.P15778934907179692863

`∑{d}[n+1, A100879(#)]`
-/

namespace A174472.P15778934907179692863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100879 d

end

end A174472.P15778934907179692863

/-! ## A174472.P12005004372063718453

`∑{d}[n+1, #^A000203(#)]`
-/

namespace A174472.P12005004372063718453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000203 d : ℤ)

end

end A174472.P12005004372063718453

/-! ## A174472.P5117230901592144011

`∑{d}[n+1, #^(A001065(#)+#)]`
-/

namespace A174472.P5117230901592144011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A001065 d + (d : ℤ) : ℤ)

end

end A174472.P5117230901592144011

/-!
# A174474: a(n) = (2*n^2 - 2*n - 3)/8 + 3*(-1)^n*(1-2*n)/8.

The programs for A174474, the canonical program `A174474.P2393507792916266196` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174474 has offset 0).

The definition of A174474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174474.P2393507792916266196

`(2*n²-2*n-3)/8+3*(-1)^n*(1-2*n)/8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A174474

/-- `(2*n²-2*n-3)/8+3*(-1)^n*(1-2*n)/8` -/
def P2393507792916266196.Spec : Prop :=
  ∀ n, P2393507792916266196.a n = (A174474 n : ℚ)

end A174474

/-! ## A174474.P9491133434359614869

`∑[(n-1)*Δ[n-a(n-1)]]` with `a(0)=0, a(1)=0`
-/

namespace A174474.P9491133434359614869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174474.P9491133434359614869

namespace A174474

/-- `∑[(n-1)*Δ[n-a(n-1)]]` -/
def P9491133434359614869.Spec : Prop :=
  ∀ n, P9491133434359614869.a n = A174474 n

end A174474

/-! ## A174474.P4173657133553184584

`∑[n+1-(a(n-1)+gcd(2*n, a(n-1)))]` with `a(0)=0`
-/

namespace A174474.P4173657133553184584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1 : ℤ) - (f1 (n - 1) + (Int.gcd (2 * n : ℤ) (f1 (n - 1)) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174474.P4173657133553184584

namespace A174474

/-- `∑[n+1-(a(n-1)+gcd(2*n, a(n-1)))]` -/
def P4173657133553184584.Spec : Prop :=
  ∀ n, P4173657133553184584.a n = A174474 n

end A174474

/-! ## A174474.P927246967625839443

`A067998(A030451(n))`
-/

namespace A174474.P927246967625839443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A030451 n).toNat

end

end A174474.P927246967625839443

namespace A174474

/-- `A067998(A030451(n))` -/
def P927246967625839443.Spec : Prop :=
  ∀ n, P927246967625839443.a n = A174474 n

end A174474

/-! ## A174474.P16603339933609984798

`A067998(1-A028242(n)+n)`
-/

namespace A174474.P16603339933609984798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (1 - A028242 n + (n : ℤ)).toNat

end

end A174474.P16603339933609984798

namespace A174474

/-- `A067998(1-A028242(n)+n)` -/
def P16603339933609984798.Spec : Prop :=
  ∀ n, P16603339933609984798.a n = A174474 n

end A174474

/-! ## A174474.P3521468994665836703

`A067998(1-(A028242(n)-n))`
-/

namespace A174474.P3521468994665836703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (1 - (A028242 n - (n : ℤ))).toNat

end

end A174474.P3521468994665836703

namespace A174474

/-- `A067998(1-(A028242(n)-n))` -/
def P3521468994665836703.Spec : Prop :=
  ∀ n, P3521468994665836703.a n = A174474 n

end A174474

/-! ## A174474.P17845812120978912977

`A067998(A028242(n+1))`
-/

namespace A174474.P17845812120978912977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A028242 (n + 1)).toNat

end

end A174474.P17845812120978912977

namespace A174474

/-- `A067998(A028242(n+1))` -/
def P17845812120978912977.Spec : Prop :=
  ∀ n, P17845812120978912977.a n = A174474 n

end A174474

/-! ## A174474.P878001478185430205

`A067998(A124625(n+1)+A001057(n))`
-/

namespace A174474.P878001478185430205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A124625 (n + 1) + A001057 n).toNat

end

end A174474.P878001478185430205

namespace A174474

/-- `A067998(A124625(n+1)+A001057(n))` -/
def P878001478185430205.Spec : Prop :=
  ∀ n, P878001478185430205.a n = A174474 n

end A174474

/-! ## A174474.P602011896040401830

`(A030451(n)-2)*A110657(2*n)`
-/

namespace A174474.P602011896040401830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030451 n - 2) * A110657 (2 * n)

end

end A174474.P602011896040401830

namespace A174474

/-- `(A030451(n)-2)*A110657(2*n)` -/
def P602011896040401830.Spec : Prop :=
  ∀ n, P602011896040401830.a n = A174474 n

end A174474

/-! ## A174474.P6817982386024556523

`(A110659(2*n+1)-2)*A110659(2*n+1)`
-/

namespace A174474.P6817982386024556523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110659 (2 * n + 1) - 2) * A110659 (2 * n + 1)

end

end A174474.P6817982386024556523

namespace A174474

/-- `(A110659(2*n+1)-2)*A110659(2*n+1)` -/
def P6817982386024556523.Spec : Prop :=
  ∀ n, P6817982386024556523.a n = A174474 n

end A174474

/-! ## A174474.P14023380514179570750

`(A302654(2*n+1)-2)*A302654(2*n+1)`
-/

namespace A174474.P14023380514179570750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302654 (2 * n + 1) - 2) * A302654 (2 * n + 1)

end

end A174474.P14023380514179570750

namespace A174474

/-- `(A302654(2*n+1)-2)*A302654(2*n+1)` -/
def P14023380514179570750.Spec : Prop :=
  ∀ n, P14023380514179570750.a n = A174474 n

end A174474

/-! ## A174474.P14921743574631366601

`A023445(A267942(n))`
-/

namespace A174474.P14921743574631366601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A267942 n).toNat

end

end A174474.P14921743574631366601

namespace A174474

/-- `A023445(A267942(n))` -/
def P14921743574631366601.Spec : Prop :=
  ∀ n, P14921743574631366601.a n = A174474 n

end A174474

/-! ## A174474.P5631693928528320986

`A023443((2-A052938(n))²)`
-/

namespace A174474.P5631693928528320986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((2 - A052938 n) ^ 2).toNat

end

end A174474.P5631693928528320986

namespace A174474

/-- `A023443((2-A052938(n))²)` -/
def P5631693928528320986.Spec : Prop :=
  ∀ n, P5631693928528320986.a n = A174474 n

end A174474

/-! ## A174474.P11170811650806318214

`A156747(A386480(n))`
-/

namespace A174474.P11170811650806318214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156747 (A386480 n).toNat

end

end A174474.P11170811650806318214

namespace A174474

/-- `A156747(A386480(n))` -/
def P11170811650806318214.Spec : Prop :=
  ∀ n, P11170811650806318214.a n = A174474 n

end A174474

/-! ## A174474.P15991594563665897013

`A023443(∑[A255175(n²)]²)`
-/

namespace A174474.P15991594563665897013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A174474.P15991594563665897013

namespace A174474

/-- `A023443(∑[A255175(n²)]²)` -/
def P15991594563665897013.Spec : Prop :=
  ∀ n, P15991594563665897013.a n = A174474 n

end A174474

/-!
# A174475: G.f.: exp( Sum_{n>=1} A174476(n)*x^n/n ) where A174476(n) = Sum_{d|n} d^phi(d).

The programs for A174475, there is no canonical definition to state claims against.
-/

/-! ## A174475.P14770707143964713250

`A185283(A318888(n+1)^A002620(n))`
-/

namespace A174475.P14770707143964713250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (SequenceMachineLib.roundAway ((A318888 (n + 1) : ℚ) ^ (A002620 n : ℤ))).toNat

end

end A174475.P14770707143964713250

/-! ## A174475.P8370133047970732234

`Δ[A076838(comp[n²])]`
-/

namespace A174475.P8370133047970732234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076838 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174475.P8370133047970732234

/-!
# A174476: a(n) = Sum_{d|n} d^phi(d).

The programs for A174476, there is no canonical definition to state claims against.
-/

/-! ## A174476.P16735527136877792068

`∑{d}[n+1, A062981(#)]`
-/

namespace A174476.P16735527136877792068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062981 d

end

end A174476.P16735527136877792068

/-! ## A174476.P17995593947040424842

`∑{d}[n+1, #^A000010(#)]`
-/

namespace A174476.P17995593947040424842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000010 d : ℤ)

end

end A174476.P17995593947040424842

/-!
# A174477: G.f.: exp( Sum_{n>=1} A174478(n)*x^n/n ) where A174478(n) = Sum_{d|n} d*2^(n/d)*tau(d).

The programs for A174477, there is no canonical definition to state claims against.
-/

/-! ## A174477.P15359993164449999425

`A128106(eq[1, lcm(32, n)/32])`
-/

namespace A174477.P15359993164449999425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A174477.P15359993164449999425

/-! ## A174477.P14534045182988987301

`∑[A330943(A320663(n))]`
-/

namespace A174477.P14534045182988987301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330943 (A320663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174477.P14534045182988987301

/-!
# A174478: a(n) = Sum_{d|n} d*2^(n/d)*tau(d).

The programs for A174478, the canonical program `A174478.P11090844667858883052` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174478 has offset 1).

The definition of A174478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174478.P11090844667858883052

`∑{d}[n+1, #*A054598((n+1)/#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174478

/-- `∑{d}[n+1, #*A054598((n+1)/#)]` -/
def P11090844667858883052.Spec : Prop :=
  ∀ n, P11090844667858883052.a n = A174478 (n + 1)

theorem P11090844667858883052.correct : P11090844667858883052.Spec := by
  intro n
  simp only [A174478, Nat.add_sub_cancel]

end A174478

/-! ## A174478.P5491345619256222170

`∑{d}[n+1, A034738(#)*A074400((n+1)/#)]`
-/

namespace A174478.P5491345619256222170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A074400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174478.P5491345619256222170

namespace A174478

/-- `∑{d}[n+1, A034738(#)*A074400((n+1)/#)]` -/
def P5491345619256222170.Spec : Prop :=
  ∀ n, P5491345619256222170.a n = A174478 (n + 1)

end A174478

/-! ## A174478.P3240091187362058892

`∑{d}[n+1, A002131(#)*A306898((n+1)/#)]`
-/

namespace A174478.P3240091187362058892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A306898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174478.P3240091187362058892

namespace A174478

/-- `∑{d}[n+1, A002131(#)*A306898((n+1)/#)]` -/
def P3240091187362058892.Spec : Prop :=
  ∀ n, P3240091187362058892.a n = A174478 (n + 1)

end A174478

/-! ## A174478.P10425733229381023369

`∑{d}[n+1, A054785(#)*A306905((n+1)/#)]`
-/

namespace A174478.P10425733229381023369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054785 d * A306905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A174478.P10425733229381023369

namespace A174478

/-- `∑{d}[n+1, A054785(#)*A306905((n+1)/#)]` -/
def P10425733229381023369.Spec : Prop :=
  ∀ n, P10425733229381023369.a n = A174478 (n + 1)

end A174478

/-!
# A174479: Triangle read by rows: T(n,k) = semiprime(n) mod A065516(k), where A065516 are differences between consecutive semiprimes.

The programs for A174479, there is no canonical definition to state claims against.
-/

/-! ## A174479.P14509584295359313668

`and(∑{p}[n+1, C(#%n, #)], A030162(n+1))`
-/

namespace A174479.P14509584295359313668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) (A030162 (n + 1))

end

end A174479.P14509584295359313668

/-! ## A174479.P17655691503366309767

`A336107(A283674(n)+n)`
-/

namespace A174479.P17655691503366309767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A283674 n + (n : ℤ)).toNat

end

end A174479.P17655691503366309767

/-! ## A174479.P2318603436658678626

`A350251(A294758(n)+n)`
-/

namespace A174479.P2318603436658678626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (A294758 n + (n : ℤ)).toNat

end

end A174479.P2318603436658678626

/-! ## A174479.P17953563255848023777

`A292261(n^A058914(n))`
-/

namespace A174479.P17953563255848023777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292261 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A058914 n : ℤ))).toNat

end

end A174479.P17953563255848023777

/-! ## A174479.P17166887560703987537

`log2(gcd(A179514(n+1), A306286(n)))`
-/

namespace A174479.P17166887560703987537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A179514 (n + 1)) (A306286 n) : ℝ)

end

end A174479.P17166887560703987537

/-!
# A174480: Rectangular array of coefficients in successive iterations of x*exp(x), as read by antidiagonals.

The programs for A174480, there is no canonical definition to state claims against.
-/

/-! ## A174480.P12350210528259272765

`A111670(n+1)-A163351(A102480(n))`
-/

namespace A174480.P12350210528259272765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111670 (n + 1) - A163351 (A102480 n).toNat

end

end A174480.P12350210528259272765

/-! ## A174480.P4931107825878239164

`A239086(A107702(n))`
-/

namespace A174480.P4931107825878239164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A107702 n).toNat

end

end A174480.P4931107825878239164

/-! ## A174480.P544543716107221866

`A113006(A111670(n+1))`
-/

namespace A174480.P544543716107221866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A111670 (n + 1)).toNat

end

end A174480.P544543716107221866

/-! ## A174480.P12046709194162965081

`A225099(A088617(n))+A107702(n)`
-/

namespace A174480.P12046709194162965081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A088617 n).toNat + A107702 n

end

end A174480.P12046709194162965081

/-!
# A174481: a(n) = coefficient of x^n/(n-1)! in the (n-1)-th iteration of x*exp(x) for n>=1.

The programs for A174481, there is no canonical definition to state claims against.
-/

/-! ## A174481.P11182313305646641837

`A174480(2*n²+1)`
-/

namespace A174481.P11182313305646641837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (2 * n ^ 2 + 1)

end

end A174481.P11182313305646641837

/-! ## A174481.P16395461700696720619

`A174480(A058331(n))+char[6]`
-/

namespace A174481.P16395461700696720619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A058331 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174481.P16395461700696720619

/-!
# A174482: a(n) = coefficient of x^n/(n-1)! in the n-th iteration of x*exp(x) for n>=1.

The programs for A174482, there is no canonical definition to state claims against.
-/

/-! ## A174482.P8891292767103379284

`A174480(∑[4*n]+1)`
-/

namespace A174482.P8891292767103379284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A174482.P8891292767103379284

/-!
# A174483: a(n) = coefficient of x^n/(n-1)! in the (n+1)-th iteration of x*exp(x) for n>=1.

The programs for A174483, there is no canonical definition to state claims against.
-/

/-! ## A174483.P17853414378517066822

`A174480(2*(n+1)²)`
-/

namespace A174483.P17853414378517066822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (2 * (n + 1) ^ 2)

end

end A174483.P17853414378517066822

/-!
# A174484: a(n) = coefficient of x^n/(n-1)! in the (n+2)-th iteration of x*exp(x) for n>=1.

The programs for A174484, there is no canonical definition to state claims against.
-/

/-! ## A174484.P6563805767825632337

`A174480(∑[4*(n+1)])`
-/

namespace A174484.P6563805767825632337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174484.P6563805767825632337

/-!
# A174486: Column 0 of triangle A174485.

The programs for A174486, there is no canonical definition to state claims against.
-/

/-! ## A174486.P17061633179649159196

`A174485(∑[n])`
-/

namespace A174486.P17061633179649159196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174486.P17061633179649159196

/-! ## A174486.P11189590040978733231

`and(-1, A174485(n*(n+1)/2))`
-/

namespace A174486.P11189590040978733231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A174485 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A174486.P11189590040978733231

/-! ## A174486.P8595431443965709167

`gcd(A174485(n*(n+1)/2), A240352(n))`
-/

namespace A174486.P8595431443965709167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174485 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A240352 n)

end

end A174486.P8595431443965709167

/-! ## A174486.P4291456906923308139

`A343747(n+1)+A174485(n*(n+1)/2)`
-/

namespace A174486.P4291456906923308139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343747 (n + 1) + A174485 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A174486.P4291456906923308139

/-! ## A174486.P12670574239262106716

`A174485(round((2*n+1)²/8))*A251072(n)`
-/

namespace A174486.P12670574239262106716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat * A251072 n

end

end A174486.P12670574239262106716

/-!
# A174487: Column 1 of triangle A174485.

The programs for A174487, there is no canonical definition to state claims against.
-/

/-! ## A174487.P1321423020376525354

`record[A174485(comp[∑[n]])]`
-/

namespace A174487.P1321423020376525354
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174487.P1321423020376525354

/-! ## A174487.P17168273100855472311

`A174485(∑[n+1]+1)`
-/

namespace A174487.P17168273100855472311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A174487.P17168273100855472311

/-! ## A174487.P9128764817851393944

`record[A123110(n)*A174485(n)]`
-/

namespace A174487.P9128764817851393944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A174485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174487.P9128764817851393944

/-! ## A174487.P15776731825253882439

`record[A174485(n)*A198321(n)]`
-/

namespace A174487.P15776731825253882439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 n * A198321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174487.P15776731825253882439

/-!
# A174488: Column 2 of triangle A174485.

The programs for A174488, there is no canonical definition to state claims against.
-/

/-! ## A174488.P2028298978390134534

`A174485(∑[n+2]+3)`
-/

namespace A174488.P2028298978390134534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A174488.P2028298978390134534

/-!
# A174489: Column 3 of triangle A174485.

The programs for A174489, there is no canonical definition to state claims against.
-/

/-! ## A174489.P11399024819465025422

`A174485(∑[n+3]+6)`
-/

namespace A174489.P11399024819465025422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174485 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A174489.P11399024819465025422

/-!
# A174490: Numerator in the coefficient of x^n in exp( Sum_{m>=1} x^m/(m*2^(m^2)) ).

The programs for A174490, there is no canonical definition to state claims against.
-/

/-! ## A174490.P1685795225487938616

`A165940(n)/gcd(A165928(n), A165940(n))`
-/

namespace A174490.P1685795225487938616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165940 n : ℚ) / (Int.gcd (A165928 n) (A165940 n) : ℚ)

end

end A174490.P1685795225487938616

/-! ## A174490.P2240795598737899523

`lcm(A156337(n), A165940(n))/A156337(n)`
-/

namespace A174490.P2240795598737899523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A156337 n) (A165940 n) : ℚ) / (A156337 n : ℚ)

end

end A174490.P2240795598737899523

/-!
# A174491: Denominator in the coefficient of x^n in exp( Sum_{m>=1} x^m/(m*2^(m^2)) ).

The programs for A174491, there is no canonical definition to state claims against.
-/

/-! ## A174491.P13810402934807740170

`2^n²*gcd(n, 2^n)`
-/

namespace A174491.P13810402934807740170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n ^ 2 * Nat.gcd n (2 ^ n)

end

end A174491.P13810402934807740170

/-! ## A174491.P12209065913328032999

`2^(∑{e}[and(n, -n), #]+n²)`
-/

namespace A174491.P12209065913328032999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + n ^ 2)

end

end A174491.P12209065913328032999

/-! ## A174491.P13356531295248250803

`gcd(n, A000079(n))*A002416(n)`
-/

namespace A174491.P13356531295248250803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000079 n) : ℤ) * A002416 n

end

end A174491.P13356531295248250803

/-! ## A174491.P13738295802457238723

`A011782(A136480(2*n)+n²)`
-/

namespace A174491.P13738295802457238723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A136480 (2 * n) + (n ^ 2 : ℤ)).toNat

end

end A174491.P13738295802457238723

/-! ## A174491.P15720626844384584357

`A131577(A136480(2*n)+n²)`
-/

namespace A174491.P15720626844384584357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A136480 (2 * n) + (n ^ 2 : ℤ)).toNat

end

end A174491.P15720626844384584357

/-!
# A174493: a(n) = coefficient of x^n/(n-1)! in the 3-fold iteration of x*exp(x).

The programs for A174493, there is no canonical definition to state claims against.
-/

/-! ## A174493.P13240471689767158478

`A174480(∑[n+3]+1)`
-/

namespace A174493.P13240471689767158478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A174493.P13240471689767158478

/-! ## A174493.P13799955253263863142

`record[A174480(A130297(n+1))]`
-/

namespace A174493.P13799955253263863142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174493.P13799955253263863142

/-! ## A174493.P2364731009149923261

`record[A174480(A186347(n+1))]`
-/

namespace A174493.P2364731009149923261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A186347 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174493.P2364731009149923261

/-! ## A174493.P964504958243241745

`record[A174480(record[A351153(n+1)])]`
-/

namespace A174493.P964504958243241745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351153 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174493.P964504958243241745

/-!
# A174494: a(n) = coefficient of x^n/(n-1)! in the 4-fold iteration of x*exp(x).

The programs for A174494, there is no canonical definition to state claims against.
-/

/-! ## A174494.P8178634893664639518

`A174480(∑[2*a(n-1)-a(n-2)])` with `a(0)=7, a(1)=5, a(2)=6`
-/

namespace A174494.P8178634893664639518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 5, 6] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174494.P8178634893664639518

/-! ## A174494.P7436380505485308788

`A174480(A141214(n+1))`
-/

namespace A174494.P7436380505485308788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A141214 (n + 1)).toNat

end

end A174494.P7436380505485308788

/-! ## A174494.P5869046846541184687

`A174480(A055998(n+2))`
-/

namespace A174494.P5869046846541184687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A055998 (n + 2)).toNat

end

end A174494.P5869046846541184687

/-!
# A174495: a(n) = coefficient of x^n/(n-1)! in the 5-fold iteration of x*exp(x).

The programs for A174495, there is no canonical definition to state claims against.
-/

/-! ## A174495.P12971780020075281968

`A174480(∑[n+5]+6)`
-/

namespace A174495.P12971780020075281968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A174495.P12971780020075281968

/-!
# A174496: a(n) = coefficient of x^n/(n-1)! in the 6-fold iteration of x*exp(x).

The programs for A174496, there is no canonical definition to state claims against.
-/

/-! ## A174496.P12237816079056205502

`A174480(A052905(n+3))`
-/

namespace A174496.P12237816079056205502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (A052905 (n + 3)).toNat

end

end A174496.P12237816079056205502

/-!
# A174497: Triangle read by rows: T(n,k) = prime(n) mod (prime(n+1) - prime(k)) for 0 < k < n+1.

The programs for A174497, the canonical program `A174497.P1872965432205280036` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174497 has offset 1).

The definition of A174497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174497.P13276283363436935249

`A005145(n+1)%A204890(n+1)`
-/

namespace A174497.P13276283363436935249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (A204890 (n + 1))

end

end A174497.P13276283363436935249

namespace A174497

/-- `A005145(n+1)%A204890(n+1)` -/
def P13276283363436935249.Spec : Prop :=
  ∀ n, P13276283363436935249.a n = A174497 (n + 1)

end A174497

/-! ## A174497.P843249158637515183

`A051599(A057944(n))%A204890(n+1)`
-/

namespace A174497.P843249158637515183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051599 (A057944 n).toNat) (A204890 (n + 1))

end

end A174497.P843249158637515183

namespace A174497

/-- `A051599(A057944(n))%A204890(n+1)` -/
def P843249158637515183.Spec : Prop :=
  ∀ n, P843249158637515183.a n = A174497 (n + 1)

end A174497

/-! ## A174497.P6428492269504015131

`A109763(A131507(n))%A204890(n+1)`
-/

namespace A174497.P6428492269504015131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109763 (A131507 n).toNat) (A204890 (n + 1))

end

end A174497.P6428492269504015131

namespace A174497

/-- `A109763(A131507(n))%A204890(n+1)` -/
def P6428492269504015131.Spec : Prop :=
  ∀ n, P6428492269504015131.a n = A174497 (n + 1)

end A174497

/-! ## A174497.P5733165139973130540

`A000040(A002024(n+1))%A204890(n+1)`
-/

namespace A174497.P5733165139973130540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1)).toNat) (A204890 (n + 1))

end

end A174497.P5733165139973130540

namespace A174497

/-- `A000040(A002024(n+1))%A204890(n+1)` -/
def P5733165139973130540.Spec : Prop :=
  ∀ n, P5733165139973130540.a n = A174497 (n + 1)

end A174497

/-! ## A174497.P1872965432205280036

`A005145(n+2)%A086800(A014132(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A174497

/-- `A005145(n+2)%A086800(A014132(n+1))` -/
def P1872965432205280036.Spec : Prop :=
  ∀ n, P1872965432205280036.a n = A174497 (n + 1)

theorem P1872965432205280036.correct : P1872965432205280036.Spec := by
  intro n
  simp only [A174497, Nat.add_sub_cancel]

end A174497

/-! ## A174497.P3361999326713878997

`A006530(A077320(n+1))%A086800(A014132(n+1))`
-/

namespace A174497.P3361999326713878997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A077320 (n + 1)).toNat) (A086800 (A014132 (n + 1)).toNat)

end

end A174497.P3361999326713878997

namespace A174497

/-- `A006530(A077320(n+1))%A086800(A014132(n+1))` -/
def P3361999326713878997.Spec : Prop :=
  ∀ n, P3361999326713878997.a n = A174497 (n + 1)

end A174497

/-! ## A174497.P10733003130053242709

`A033677(A087112(n+1))%A086800(A014132(n+1))`
-/

namespace A174497.P10733003130053242709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (A087112 (n + 1)).toNat) (A086800 (A014132 (n + 1)).toNat)

end

end A174497.P10733003130053242709

namespace A174497

/-- `A033677(A087112(n+1))%A086800(A014132(n+1))` -/
def P10733003130053242709.Spec : Prop :=
  ∀ n, P10733003130053242709.a n = A174497 (n + 1)

end A174497

/-! ## A174497.P12954914641000385679

`A094290(A137688(n))%A204890(n+1)`
-/

namespace A174497.P12954914641000385679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094290 (A137688 n).toNat) (A204890 (n + 1))

end

end A174497.P12954914641000385679

namespace A174497

/-- `A094290(A137688(n))%A204890(n+1)` -/
def P12954914641000385679.Spec : Prop :=
  ∀ n, P12954914641000385679.a n = A174497 (n + 1)

end A174497

/-!
# A174498: Topswops (2): number of permutations of cards achieving A000376(n).

The programs for A174498, there is no canonical definition to state claims against.
-/

/-! ## A174498.P4753161624025576533

`gcd(A004125(A301692(n)), A008642(n))`
-/

namespace A174498.P4753161624025576533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004125 (A301692 n).toNat) (A008642 n)

end

end A174498.P4753161624025576533

/-! ## A174498.P4319258227384470574

`gcd(A022307(A219471(n+1)), A034444(n+1))`
-/

namespace A174498.P4319258227384470574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022307 (A219471 (n + 1)).toNat) (A034444 (n + 1))

end

end A174498.P4319258227384470574

/-! ## A174498.P9262686953136382061

`gcd(A059519(A047817(n+1)), A182847(n+1))`
-/

namespace A174498.P9262686953136382061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059519 (A047817 (n + 1)).toNat) (A182847 (n + 1))

end

end A174498.P9262686953136382061

/-! ## A174498.P13763139831019378545

`gcd(4, A316669(A223041(n+1)))`
-/

namespace A174498.P13763139831019378545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A316669 (A223041 (n + 1)).toNat)

end

end A174498.P13763139831019378545

/-! ## A174498.P16470390684485294868

`A277822(∏{p}[A037081(n), A000032(#)])`
-/

namespace A174498.P16470390684485294868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000032 p).toNat

end

end A174498.P16470390684485294868

