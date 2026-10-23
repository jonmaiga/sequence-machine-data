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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B009.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A332202: Largest k >= 0 such that 3^k divides 2^(2^n-1) + 1.

The programs for A332202, the canonical program `A332202.P946867724760298355` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332202 has offset 0).

The definition of A332202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332202.P946867724760298355

`val(∑[lcm(3, a(n-2))], 3)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332202

/-- `val(∑[lcm(3, a(n-2))], 3)` -/
def P946867724760298355.Spec : Prop :=
  ∀ n, (P946867724760298355.a n : ℤ) = A332202 n

theorem P946867724760298355.correct : P946867724760298355.Spec := by
  intro n
  simp only [A332202]

end A332202

/-! ## A332202.P10267408261818479917

`val(∑[6/a(n%2)], 3)` with `a(0)=1, a(1)=2`
-/

namespace A332202.P10267408261818479917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 / f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A332202.P10267408261818479917

namespace A332202

/-- `val(∑[6/a(n%2)], 3)` -/
def P10267408261818479917.Spec : Prop :=
  ∀ n, (P10267408261818479917.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P10811629158899105488

`val(∑[2*a(n-1)], 3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A332202.P10811629158899105488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A332202.P10811629158899105488

namespace A332202

/-- `val(∑[2*a(n-1)], 3)` -/
def P10811629158899105488.Spec : Prop :=
  ∀ n, (P10811629158899105488.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P8335929570877718283

`val(∑[abs(a(n-2))], 3)` with `a(0)=2, a(1)=1, a(2)=6, a(3)=3`
-/

namespace A332202.P8335929570877718283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 6, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A332202.P8335929570877718283

namespace A332202

/-- `val(∑[abs(a(n-2))], 3)` -/
def P8335929570877718283.Spec : Prop :=
  ∀ n, (P8335929570877718283.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P10931949918346525129

`val(∑[9-a(n-1)], 3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A332202.P10931949918346525129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A332202.P10931949918346525129

namespace A332202

/-- `val(∑[9-a(n-1)], 3)` -/
def P10931949918346525129.Spec : Prop :=
  ∀ n, (P10931949918346525129.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P12994439484381904417

`a(floor(C(or(1, n), n)/3))+1` with `a(0)=0`
-/

namespace A332202.P12994439484381904417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(Nat.choose (Nat.lor 1 n) n : ℚ) / 3⌋.toNat + 1

end

end A332202.P12994439484381904417

namespace A332202

/-- `a(floor(C(or(1, n), n)/3))+1` -/
def P12994439484381904417.Spec : Prop :=
  ∀ n, (P12994439484381904417.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P4412096850801477833

`val(n, a(a(n-1))+2)+gcd(2, n)` with `a(0)=0`
-/

namespace A332202.P4412096850801477833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.valuation n (a (a (n - 1)) + 2) + Nat.gcd 2 n

end

end A332202.P4412096850801477833

namespace A332202

/-- `val(n, a(a(n-1))+2)+gcd(2, n)` -/
def P4412096850801477833.Spec : Prop :=
  ∀ n, (P4412096850801477833.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P14139355230262872948

`val(record[n+1-dr((n+1)*n²)], 3)`
-/

namespace A332202.P14139355230262872948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((n + 1) * n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A332202.P14139355230262872948

namespace A332202

/-- `val(record[n+1-dr((n+1)*n²)], 3)` -/
def P14139355230262872948.Spec : Prop :=
  ∀ n, (P14139355230262872948.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P19162745127015690

`val(A052906(n), 3)`
-/

namespace A332202.P19162745127015690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052906 n).toNat 3

end

end A332202.P19162745127015690

namespace A332202

/-- `val(A052906(n), 3)` -/
def P19162745127015690.Spec : Prop :=
  ∀ n, (P19162745127015690.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P16173118676184346141

`val(A068156(n), 3)`
-/

namespace A332202.P16173118676184346141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A068156 n).toNat 3

end

end A332202.P16173118676184346141

namespace A332202

/-- `val(A068156(n), 3)` -/
def P16173118676184346141.Spec : Prop :=
  ∀ n, (P16173118676184346141.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P1545595242925456950

`val(A097134(n), 3)`
-/

namespace A332202.P1545595242925456950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097134 n).toNat 3

end

end A332202.P1545595242925456950

namespace A332202

/-- `val(A097134(n), 3)` -/
def P1545595242925456950.Spec : Prop :=
  ∀ n, (P1545595242925456950.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P15250835534957458343

`val(A099857(n), 3)`
-/

namespace A332202.P15250835534957458343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099857 n).toNat 3

end

end A332202.P15250835534957458343

namespace A332202

/-- `val(A099857(n), 3)` -/
def P15250835534957458343.Spec : Prop :=
  ∀ n, (P15250835534957458343.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P10758669011410302609

`val(A261953(n), 3)`
-/

namespace A332202.P10758669011410302609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A261953 n).toNat 3

end

end A332202.P10758669011410302609

namespace A332202

/-- `val(A261953(n), 3)` -/
def P10758669011410302609.Spec : Prop :=
  ∀ n, (P10758669011410302609.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P8345425379683236316

`val(A323232(n), 3)`
-/

namespace A332202.P8345425379683236316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A323232 n).toNat 3

end

end A332202.P8345425379683236316

namespace A332202

/-- `val(A323232(n), 3)` -/
def P8345425379683236316.Spec : Prop :=
  ∀ n, (P8345425379683236316.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P2866320118804940069

`val(A330795(n), 3)`
-/

namespace A332202.P2866320118804940069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A330795 n).toNat 3

end

end A332202.P2866320118804940069

namespace A332202

/-- `val(A330795(n), 3)` -/
def P2866320118804940069.Spec : Prop :=
  ∀ n, (P2866320118804940069.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P17750453420389591336

`val(A068293(n+1), 3)`
-/

namespace A332202.P17750453420389591336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A068293 (n + 1)).toNat 3

end

end A332202.P17750453420389591336

namespace A332202

/-- `val(A068293(n+1), 3)` -/
def P17750453420389591336.Spec : Prop :=
  ∀ n, (P17750453420389591336.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P315251504819076335

`val(A061776(2*n), 3)`
-/

namespace A332202.P315251504819076335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061776 (2 * n)).toNat 3

end

end A332202.P315251504819076335

namespace A332202

/-- `val(A061776(2*n), 3)` -/
def P315251504819076335.Spec : Prop :=
  ∀ n, (P315251504819076335.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P6549536719170950925

`val(A097135(2*n), 3)`
-/

namespace A332202.P6549536719170950925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097135 (2 * n)).toNat 3

end

end A332202.P6549536719170950925

namespace A332202

/-- `val(A097135(2*n), 3)` -/
def P6549536719170950925.Spec : Prop :=
  ∀ n, (P6549536719170950925.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P1858672400555183961

`val(∑[A111286(n+1)], 3)`
-/

namespace A332202.P1858672400555183961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A332202.P1858672400555183961

namespace A332202

/-- `val(∑[A111286(n+1)], 3)` -/
def P1858672400555183961.Spec : Prop :=
  ∀ n, (P1858672400555183961.a n : ℤ) = A332202 n

end A332202

/-! ## A332202.P13531001721137175058

`val(∑[A290859(n+2)], 3)`
-/

namespace A332202.P13531001721137175058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290859 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A332202.P13531001721137175058

namespace A332202

/-- `val(∑[A290859(n+2)], 3)` -/
def P13531001721137175058.Spec : Prop :=
  ∀ n, (P13531001721137175058.a n : ℤ) = A332202 n

end A332202

/-!
# A332203: a(n) = 2^(2^n-1) + 1.

The programs for A332203, the canonical program `A332203.P10576512526939407476` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332203 has offset 0).

The definition of A332203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332203.P10576512526939407476

`2^(2^n-1)+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332203

/-- `2^(2^n-1)+1` -/
def P10576512526939407476.Spec : Prop :=
  ∀ n, P10576512526939407476.a n = (A332203 n : ℚ)

end A332203

/-! ## A332203.P12701521152815355671

`round(or(1, 2^2^n)/2)`
-/

namespace A332203.P12701521152815355671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 ^ 2 ^ n) : ℚ) / 2)

end

end A332203.P12701521152815355671

namespace A332203

/-- `round(or(1, 2^2^n)/2)` -/
def P12701521152815355671.Spec : Prop :=
  ∀ n, P12701521152815355671.a n = A332203 n

end A332203

/-! ## A332203.P17669503632425970368

`ceil(xor(1, 2^2^n)/2)`
-/

namespace A332203.P17669503632425970368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 ^ 2 ^ n) : ℚ) / 2⌉

end

end A332203.P17669503632425970368

namespace A332203

/-- `ceil(xor(1, 2^2^n)/2)` -/
def P17669503632425970368.Spec : Prop :=
  ∀ n, P17669503632425970368.a n = A332203 n

end A332203

/-! ## A332203.P16830572243778289032

`round(xor(1, 2^2^n)/2)`
-/

namespace A332203.P16830572243778289032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 ^ 2 ^ n) : ℚ) / 2)

end

end A332203.P16830572243778289032

namespace A332203

/-- `round(xor(1, 2^2^n)/2)` -/
def P16830572243778289032.Spec : Prop :=
  ∀ n, P16830572243778289032.a n = A332203 n

end A332203

/-!
# A332205: a(n) is the imaginary part of f(n) defined by f(0) = 0, and f(n+1) = f(n) + g((1+i)^(A065359(n) mod 8)) (where g(z) = z/gcd(Re(z), Im(z)) and i denotes the imaginary unit).

The programs for A332205, there is no canonical definition to state claims against.
-/

/-! ## A332205.P10032896410937519875

`A335359(A335469(n+1)%A348847(n+1))`
-/

namespace A332205.P10032896410937519875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 (Int.tmod (A335469 (n + 1)) (A348847 (n + 1))).toNat

end

end A332205.P10032896410937519875

/-! ## A332205.P11151894104966044931

`A335359(lt[A064192(3*n+1), A254568(n+1)])`
-/

namespace A332205.P11151894104966044931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064192 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332205.P11151894104966044931

/-! ## A332205.P15675906118226442214

`A335359(n)%A335396(n+1)`
-/

namespace A332205.P15675906118226442214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335359 n) (A335396 (n + 1))

end

end A332205.P15675906118226442214

/-! ## A332205.P6855023709250292096

`A335359(gcd(n, A335318(n+1)))`
-/

namespace A332205.P6855023709250292096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 (Int.gcd (n : ℤ) (A335318 (n + 1)))

end

end A332205.P6855023709250292096

/-! ## A332205.P11638407518672419827

`A335379(A335361(n+4))+A335359(n)`
-/

namespace A332205.P11638407518672419827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335379 (A335361 (n + 4)).toNat + A335359 n

end

end A332205.P11638407518672419827

/-!
# A332206: Numbers k such that A332205(k) = 0.

The programs for A332206, the canonical program `A332206.P8564534836045391231` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332206 has offset 0).

The definition of A332206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332206.P8564534836045391231

`∑[ceil(and(n, -n)²/2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332206

/-- `∑[ceil(and(n, -n)²/2)]` -/
def P8564534836045391231.Spec : Prop :=
  ∀ n, P8564534836045391231.a n = A332206 n

theorem P8564534836045391231.correct : P8564534836045391231.Spec := by
  intro n
  simp only [A332206]

end A332206

/-! ## A332206.P2688478859216256269

`∑[round(and(n, -n)²/2)]`
-/

namespace A332206.P2688478859216256269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P2688478859216256269

namespace A332206

/-- `∑[round(and(n, -n)²/2)]` -/
def P2688478859216256269.Spec : Prop :=
  ∀ n, P2688478859216256269.a n = A332206 n

end A332206

/-! ## A332206.P13074714398774861740

`∑[ceil(or(n, -n)²/2)]`
-/

namespace A332206.P13074714398774861740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P13074714398774861740

namespace A332206

/-- `∑[ceil(or(n, -n)²/2)]` -/
def P13074714398774861740.Spec : Prop :=
  ∀ n, P13074714398774861740.a n = A332206 n

end A332206

/-! ## A332206.P15178656069157623329

`∑[round(or(n, -n)²/2)]`
-/

namespace A332206.P15178656069157623329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P15178656069157623329

namespace A332206

/-- `∑[round(or(n, -n)²/2)]` -/
def P15178656069157623329.Spec : Prop :=
  ∀ n, P15178656069157623329.a n = A332206 n

end A332206

/-! ## A332206.P16193278606002863450

`∑[ceil(xor(n, -n)²/8)]`
-/

namespace A332206.P16193278606002863450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P16193278606002863450

namespace A332206

/-- `∑[ceil(xor(n, -n)²/8)]` -/
def P16193278606002863450.Spec : Prop :=
  ∀ n, P16193278606002863450.a n = A332206 n

end A332206

/-! ## A332206.P18322161275186319029

`∑[round(xor(n, -n)²/8)]`
-/

namespace A332206.P18322161275186319029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P18322161275186319029

namespace A332206

/-- `∑[round(xor(n, -n)²/8)]` -/
def P18322161275186319029.Spec : Prop :=
  ∀ n, P18322161275186319029.a n = A332206 n

end A332206

/-! ## A332206.P12280647912398982458

`∑[lcm(2, and(n, -n)²)/2]`
-/

namespace A332206.P12280647912398982458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.land (n : ℤ) (-(n : ℤ)) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P12280647912398982458

namespace A332206

/-- `∑[lcm(2, and(n, -n)²)/2]` -/
def P12280647912398982458.Spec : Prop :=
  ∀ n, P12280647912398982458.a n = (A332206 n : ℚ)

end A332206

/-! ## A332206.P12092533661634885256

`∑[and(n, -n)²/gcd(2, n)]`
-/

namespace A332206.P12092533661634885256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P12092533661634885256

namespace A332206

/-- `∑[and(n, -n)²/gcd(2, n)]` -/
def P12092533661634885256.Spec : Prop :=
  ∀ n, P12092533661634885256.a n = (A332206 n : ℚ)

end A332206

/-! ## A332206.P2070392541021588724

`∑[and(n²+1, -n²)]/2`
-/

namespace A332206.P2070392541021588724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 + 1 : ℤ) (-(n ^ 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A332206.P2070392541021588724

namespace A332206

/-- `∑[and(n²+1, -n²)]/2` -/
def P2070392541021588724.Spec : Prop :=
  ∀ n, P2070392541021588724.a n = (A332206 n : ℚ)

end A332206

/-! ## A332206.P14813743354370244904

`∑[gcd(n*∑[n], and(n, -n)²)]`
-/

namespace A332206.P14813743354370244904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) (Int.land (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332206.P14813743354370244904

namespace A332206

/-- `∑[gcd(n*∑[n], and(n, -n)²)]` -/
def P14813743354370244904.Spec : Prop :=
  ∀ n, (P14813743354370244904.a n : ℤ) = A332206 n

end A332206

/-! ## A332206.P6617289268614853723

`A001859(n)-A222423(n)`
-/

namespace A332206.P6617289268614853723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n - A222423 n

end

end A332206.P6617289268614853723

namespace A332206

/-- `A001859(n)-A222423(n)` -/
def P6617289268614853723.Spec : Prop :=
  ∀ n, P6617289268614853723.a n = A332206 n

end A332206

/-! ## A332206.P13041175958310505960

`A350093(n)-A006578(n)`
-/

namespace A332206.P13041175958310505960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350093 n - A006578 n

end

end A332206.P13041175958310505960

namespace A332206

/-- `A350093(n)-A006578(n)` -/
def P13041175958310505960.Spec : Prop :=
  ∀ n, P13041175958310505960.a n = A332206 n

end A332206

/-! ## A332206.P17864887230765849078

`∪[A001196(n)+1, A001196(n)]`
-/

namespace A332206.P17864887230765849078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332206.P17864887230765849078

namespace A332206

/-- `∪[A001196(n)+1, A001196(n)]` -/
def P17864887230765849078.Spec : Prop :=
  ∀ n, (P17864887230765849078.a n : ℤ) = A332206 n

end A332206

/-! ## A332206.P12406469214709140762

`A000695(n)-A000695(A004526(n))`
-/

namespace A332206.P12406469214709140762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n - A000695 (A004526 n).toNat

end

end A332206.P12406469214709140762

namespace A332206

/-- `A000695(n)-A000695(A004526(n))` -/
def P12406469214709140762.Spec : Prop :=
  ∀ n, P12406469214709140762.a n = A332206 n

end A332206

/-! ## A332206.P6075478376048667752

`A000695(A292272(n))-A000695(A229762(n))`
-/

namespace A332206.P6075478376048667752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A292272 n).toNat - A000695 (A229762 n).toNat

end

end A332206.P6075478376048667752

namespace A332206

/-- `A000695(A292272(n))-A000695(A229762(n))` -/
def P6075478376048667752.Spec : Prop :=
  ∀ n, P6075478376048667752.a n = A332206 n

end A332206

/-! ## A332206.P12694613847921058007

`A036779(A032769(n+2))`
-/

namespace A332206.P12694613847921058007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (A032769 (n + 2)).toNat

end

end A332206.P12694613847921058007

namespace A332206

/-- `A036779(A032769(n+2))` -/
def P12694613847921058007.Spec : Prop :=
  ∀ n, P12694613847921058007.a n = A332206 n

end A332206

/-! ## A332206.P13302834995083326041

`filter[A036779(n+1), A127254(#)]`
-/

namespace A332206.P13302834995083326041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A332206.P13302834995083326041

namespace A332206

/-- `filter[A036779(n+1), A127254(#)]` -/
def P13302834995083326041.Spec : Prop :=
  ∀ n, P13302834995083326041.a n = A332206 n

end A332206

/-! ## A332206.P1365403793656655789

`filter[A036779(n+1), A152822(#)]`
-/

namespace A332206.P1365403793656655789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A332206.P1365403793656655789

namespace A332206

/-- `filter[A036779(n+1), A152822(#)]` -/
def P1365403793656655789.Spec : Prop :=
  ∀ n, P1365403793656655789.a n = A332206 n

end A332206

/-! ## A332206.P2432066832458157419

`∩[A036779(n+1), A006288(n)]`
-/

namespace A332206.P2432066832458157419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332206.P2432066832458157419

namespace A332206

/-- `∩[A036779(n+1), A006288(n)]` -/
def P2432066832458157419.Spec : Prop :=
  ∀ n, (P2432066832458157419.a n : ℤ) = A332206 n

end A332206

/-! ## A332206.P4834779077247815934

`∩[A023713(n+1), A036779(n+1)]`
-/

namespace A332206.P4834779077247815934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332206.P4834779077247815934

namespace A332206

/-- `∩[A023713(n+1), A036779(n+1)]` -/
def P4834779077247815934.Spec : Prop :=
  ∀ n, (P4834779077247815934.a n : ℤ) = A332206 n

end A332206

/-!
# A332207: a(n) is the number of 3-factorizations of n.

The programs for A332207, there is no canonical definition to state claims against.
-/

/-! ## A332207.P7085114994754128871

`A001221(or(A033937(n), A049808(n+1)))`
-/

namespace A332207.P7085114994754128871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A033937 n) (A049808 (n + 1))).toNat

end

end A332207.P7085114994754128871

/-! ## A332207.P16844993833559432463

`A004218(A278663(n+3)+A074650(n+5))`
-/

namespace A332207.P16844993833559432463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A278663 (n + 3) + A074650 (n + 5)).toNat

end

end A332207.P16844993833559432463

/-! ## A332207.P3509796147710576776

`A103221(n+3)-A174886(A186725(n))`
-/

namespace A332207.P3509796147710576776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 3) - A174886 (A186725 n).toNat

end

end A332207.P3509796147710576776

/-! ## A332207.P18160369983050906089

`A003056(A325685(n)%A071848(n+1))`
-/

namespace A332207.P18160369983050906089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A325685 n) (A071848 (n + 1))).toNat

end

end A332207.P18160369983050906089

/-! ## A332207.P12318422285953517345

`A001221(A087288(n)-A007947(n+1))`
-/

namespace A332207.P12318422285953517345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A087288 n - A007947 (n + 1)).toNat

end

end A332207.P12318422285953517345

/-!
# A332208: Numbers k such that the squarefree kernel of sigma(k) is equal to the squarefree kernel of 2*k.

The programs for A332208, there is no canonical definition to state claims against.
-/

/-! ## A332208.P13045140685351328147

`∩[A071834(n+1), A160719(n)]`
-/

namespace A332208.P13045140685351328147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160719 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332208.P13045140685351328147

/-!
# A332209: Starting from sigma(n), number of halving and tripling steps to reach 1 in '3x+1' problem, or -1 if 1 is never reached.

The programs for A332209, there is no canonical definition to state claims against.
-/

/-! ## A332209.P3978890948058406465

`A332452(n+1)+A332453(n+1)`
-/

namespace A332209.P3978890948058406465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332452 (n + 1) + A332453 (n + 1)

end

end A332209.P3978890948058406465

/-! ## A332209.P1226830377908080366

`A006577(A000203(n+1))`
-/

namespace A332209.P1226830377908080366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000203 (n + 1)).toNat

end

end A332209.P1226830377908080366

/-! ## A332209.P9824565218353050769

`A006577(∑{d}[n+1, #])`
-/

namespace A332209.P9824565218353050769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332209.P9824565218353050769

/-! ## A332209.P17478702798353215351

`A006577(A039653(n+1)+1)`
-/

namespace A332209.P17478702798353215351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A039653 (n + 1) + 1).toNat

end

end A332209.P17478702798353215351

/-! ## A332209.P12554407076425860421

`A006577(A088580(n+1)-1)`
-/

namespace A332209.P12554407076425860421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A088580 (n + 1) - 1).toNat

end

end A332209.P12554407076425860421

/-! ## A332209.P2126678674056934820

`A008908(A245092(2*n+1))-1`
-/

namespace A332209.P2126678674056934820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A245092 (2 * n + 1)).toNat - 1

end

end A332209.P2126678674056934820

/-! ## A332209.P3549699684921876766

`A006577(A001065(n+1)+1+n)`
-/

namespace A332209.P3549699684921876766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A332209.P3549699684921876766

/-! ## A332209.P14739570141841401720

`A008908(A001065(n+1)+n+1)-1`
-/

namespace A332209.P14739570141841401720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A001065 (n + 1) + (n + 1 : ℤ)).toNat - 1

end

end A332209.P14739570141841401720

/-! ## A332209.P1454062551596743755

`A332452(n+1)+A006667(A000203(n+1))`
-/

namespace A332209.P1454062551596743755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332452 (n + 1) + A006667 (A000203 (n + 1)).toNat

end

end A332209.P1454062551596743755

/-! ## A332209.P8059206298698918981

`A332453(n+1)+A006666(A000203(n+1))`
-/

namespace A332209.P8059206298698918981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332453 (n + 1) + A006666 (A000203 (n + 1)).toNat

end

end A332209.P8059206298698918981

/-! ## A332209.P13690300373358406115

`A344276(A272027(n+1))`
-/

namespace A332209.P13690300373358406115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (A272027 (n + 1)).toNat

end

end A332209.P13690300373358406115

/-! ## A332209.P799833190133188875

`A344276(3*A000203(n+1))`
-/

namespace A332209.P799833190133188875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (3 * A000203 (n + 1)).toNat

end

end A332209.P799833190133188875

/-! ## A332209.P12767710589809664338

`A112695(A239050(n+1))`
-/

namespace A332209.P12767710589809664338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (A239050 (n + 1)).toNat

end

end A332209.P12767710589809664338

/-! ## A332209.P241216064460301431

`A139399(4*A000203(n+1))`
-/

namespace A332209.P241216064460301431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * A000203 (n + 1)).toNat

end

end A332209.P241216064460301431

/-!
# A332210: Permutation of primes, inverse of A332211.

The programs for A332210, there is no canonical definition to state claims against.
-/

/-! ## A332210.P2091443986822001865

`p?[A332213(n+1)]`
-/

namespace A332210.P2091443986822001865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A332210.P2091443986822001865

/-! ## A332210.P3887206349098401362

`A332213(A000040(n+1))`
-/

namespace A332210.P3887206349098401362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A000040 (n + 1)).toNat

end

end A332210.P3887206349098401362

/-! ## A332210.P5815731254965526250

`A332213(A008578(n+2))`
-/

namespace A332210.P5815731254965526250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A008578 (n + 2)).toNat

end

end A332210.P5815731254965526250

/-! ## A332210.P18065370923477070956

`A332213(A182986(n+2))`
-/

namespace A332210.P18065370923477070956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A182986 (n + 2)).toNat

end

end A332210.P18065370923477070956

/-! ## A332210.P11459930964381148816

`A332213(record[A006530(n+2)])`
-/

namespace A332210.P11459930964381148816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332210.P11459930964381148816

/-! ## A332210.P16936324474962473889

`A332213(record[A020639(n+2)])`
-/

namespace A332210.P16936324474962473889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332210.P16936324474962473889

/-! ## A332210.P8558451686621577844

`A332213(A014689(n+1)+n+1)`
-/

namespace A332210.P8558451686621577844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A332210.P8558451686621577844

/-! ## A332210.P15735232690722685025

`A332213(record[A014963(n+2)])`
-/

namespace A332210.P15735232690722685025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332210.P15735232690722685025

/-! ## A332210.P18133884538190394944

`filter[A332213(n+1), A010051(#)]`
-/

namespace A332210.P18133884538190394944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A332210.P18133884538190394944

/-! ## A332210.P8305655502087994697

`A332213(record[A051664(n+1)])`
-/

namespace A332210.P8305655502087994697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332210.P8305655502087994697

/-! ## A332210.P17303841023424652452

`filter[A332213(n+2), A080339(#)]`
-/

namespace A332210.P17303841023424652452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A332210.P17303841023424652452

/-!
# A332211: Lexicographically earliest permutation of primes such that a(n) = 2^n - 1 when n is one of the Mersenne prime exponents (in A000043).

The programs for A332211, there is no canonical definition to state claims against.
-/

/-! ## A332211.P3220775049553322870

`A332212(A000040(n+1))`
-/

namespace A332211.P3220775049553322870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A000040 (n + 1)).toNat

end

end A332211.P3220775049553322870

/-! ## A332211.P12250095479961779309

`A332212(A008578(n+2))`
-/

namespace A332211.P12250095479961779309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A008578 (n + 2)).toNat

end

end A332211.P12250095479961779309

/-! ## A332211.P352153247843467006

`A332212(A182986(n+2))`
-/

namespace A332211.P352153247843467006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A182986 (n + 2)).toNat

end

end A332211.P352153247843467006

/-! ## A332211.P1713506347483940445

`A332212(record[A051664(n+1)])`
-/

namespace A332211.P1713506347483940445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332211.P1713506347483940445

/-! ## A332211.P438207692290436630

`A332212(record[A006530(n+2)])`
-/

namespace A332211.P438207692290436630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332211.P438207692290436630

/-! ## A332211.P4265247410340763232

`A332212(record[A014963(n+2)])`
-/

namespace A332211.P4265247410340763232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332211.P4265247410340763232

/-! ## A332211.P8555571551281307233

`A332212(record[A020639(n+2)])`
-/

namespace A332211.P8555571551281307233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332211.P8555571551281307233

/-! ## A332211.P12008129083270916668

`A332212(A014689(n+1)+n+1)`
-/

namespace A332211.P12008129083270916668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A332211.P12008129083270916668

/-! ## A332211.P9369059217920170250

`A332212(A332808(A108546(n+1)))`
-/

namespace A332211.P9369059217920170250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A332808 (A108546 (n + 1)).toNat).toNat

end

end A332211.P9369059217920170250

/-! ## A332211.P3366847392605408021

`A332212(A332808(A332819(A111745(n+1))))`
-/

namespace A332211.P3366847392605408021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A332808 (A332819 (A111745 (n + 1)).toNat).toNat).toNat

end

end A332211.P3366847392605408021

/-! ## A332211.P9604394498603328831

`A332212(A332212(A332210(n+1)))`
-/

namespace A332211.P9604394498603328831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A332212 (A332210 (n + 1)).toNat).toNat

end

end A332211.P9604394498603328831

/-!
# A332212: Fully multiplicative with a(p) = A332211(A000720(p)).

The programs for A332212, there is no canonical definition to state claims against.
-/

/-! ## A332212.P3143725392682515164

`∏{e}[A181821(n+1), A332211(#)]`
-/

namespace A332212.P3143725392682515164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332211 (Nat.factorization (f1 n).natAbs p)

end

end A332212.P3143725392682515164

/-! ## A332212.P7403053114060754418

`A332214(A243071(n+1))`
-/

namespace A332212.P7403053114060754418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332214 (A243071 (n + 1)).toNat

end

end A332212.P7403053114060754418

/-! ## A332212.P6912290837511031640

`A332214(∑{d}[n+1, A297171(#)])`
-/

namespace A332212.P6912290837511031640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332214 (∑ d ∈ Nat.divisors (f1 n), A297171 d).toNat

end

end A332212.P6912290837511031640

/-! ## A332212.P7042220561253605430

`A332214(A332811(A108548(n+1)))`
-/

namespace A332212.P7042220561253605430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332214 (A332811 (A108548 (n + 1)).toNat).toNat

end

end A332212.P7042220561253605430

/-! ## A332212.P9674374865062284149

`A332214(A332811(A332808(n+1)))`
-/

namespace A332212.P9674374865062284149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332214 (A332811 (A332808 (n + 1)).toNat).toNat

end

end A332212.P9674374865062284149

/-!
# A332213: Fully multiplicative with a(p) = A332210(A000720(p)).

The programs for A332213, there is no canonical definition to state claims against.
-/

/-! ## A332213.P4014112472779523120

`∏{e}[A181821(n+1), A332210(#)]`
-/

namespace A332213.P4014112472779523120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332210 (Nat.factorization (f1 n).natAbs p)

end

end A332213.P4014112472779523120

/-! ## A332213.P1105429766114342981

`A332817(A243071(A332817(A332215(n+1))))`
-/

namespace A332213.P1105429766114342981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332817 (A243071 (A332817 (A332215 (n + 1)).toNat).toNat).toNat

end

end A332213.P1105429766114342981

/-! ## A332213.P2450008985342005419

`A163511(A332215(n+1))`
-/

namespace A332213.P2450008985342005419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A332215 (n + 1)).toNat

end

end A332213.P2450008985342005419

/-! ## A332213.P12770554077339205039

`A163511(n+1-A364253(n+1))`
-/

namespace A332213.P12770554077339205039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 ((n + 1 : ℤ) - A364253 (n + 1)).toNat

end

end A332213.P12770554077339205039

/-! ## A332213.P16702196061172783085

`A364258(1-A364253(n+1)+n)+1-A364253(n+1)+n`
-/

namespace A332213.P16702196061172783085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 (1 - A364253 (n + 1) + (n : ℤ)).toNat + (1 - A364253 (n + 1) + (n : ℤ))

end

end A332213.P16702196061172783085

/-!
# A332214: Mersenne-prime fixing variant of permutation A163511: a(n) = A332212(A163511(n)).

The programs for A332214, there is no canonical definition to state claims against.
-/

/-! ## A332214.P9768557501199652578

`A332212(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332214.P9768557501199652578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A163511 n).toNat

end

end A332214.P9768557501199652578

/-! ## A332214.P9236841052555000879

`A366372(n)+n`
-/

namespace A332214.P9236841052555000879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366372 n + (n : ℤ)

end

end A332214.P9236841052555000879

/-! ## A332214.P18196236271237875661

`A366373(n)*A366375(n)`
-/

namespace A332214.P18196236271237875661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366373 n * A366375 n

end

end A332214.P18196236271237875661

/-! ## A332214.P17943094872617588244

`A332212(A364258(n)+n)`
-/

namespace A332214.P17943094872617588244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A364258 n + (n : ℤ)).toNat

end

end A332214.P17943094872617588244

/-! ## A332214.P8462667506957169663

`A332212(A108548(A332817(n)))`
-/

namespace A332214.P8462667506957169663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A108548 (A332817 n).toNat).toNat

end

end A332214.P8462667506957169663

/-!
# A332215: Mersenne-prime fixing variant of A243071: a(n) = A243071(A332213(n)).

The programs for A332215, there is no canonical definition to state claims against.
-/

/-! ## A332215.P5302925285295275243

`A243071(A332213(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332215.P5302925285295275243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A332213 (n + 1)).toNat

end

end A332215.P5302925285295275243

/-! ## A332215.P4312750939267775756

`1-A364253(n+1)+n`
-/

namespace A332215.P4312750939267775756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A364253 (n + 1) + (n : ℤ)

end

end A332215.P4312750939267775756

/-! ## A332215.P2112983364187920170

`∑{d}[A332213(n+1), A297171(#)]`
-/

namespace A332215.P2112983364187920170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A332215.P2112983364187920170

/-! ## A332215.P5231537725234999671

`A243071(∏{e}[A181821(n+1), A332210(#)])`
-/

namespace A332215.P5231537725234999671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332210 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A332215.P5231537725234999671

/-! ## A332215.P15699898268910074275

`A252756(A332213(n+1)^A340365(n+1))`
-/

namespace A332215.P15699898268910074275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (SequenceMachineLib.roundAway ((A332213 (n + 1) : ℚ) ^ (A340365 (n + 1) : ℤ))).toNat

end

end A332215.P15699898268910074275

/-!
# A332216: Fixed points of A332221: Numbers k such that A156552(sigma(k)) is equal to k.

The programs for A332216, there is no canonical definition to state claims against.
-/

/-! ## A332216.P6187544590795784125

`eq[∑{d}[n, #], A005940(n+1)]`
-/

namespace A332216.P6187544590795784125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A332216.P6187544590795784125

/-! ## A332216.P2657838028353935452

`eq[A000203(n+1), A005940(n+2)]+1`
-/

namespace A332216.P2657838028353935452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332216.P2657838028353935452

/-! ## A332216.P8350693652649812323

`eq[n+1, A332221(n+1)]+1`
-/

namespace A332216.P8350693652649812323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332216.P8350693652649812323

/-! ## A332216.P17641107554416344661

`eq[n, A332221(A233583(n+1))]`
-/

namespace A332216.P17641107554416344661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332221 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332216.P17641107554416344661

/-! ## A332216.P3790846375749631064

`eq[A269387(n), A323243(A269387(n))]`
-/

namespace A332216.P3790846375749631064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A269387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332216.P3790846375749631064

/-!
# A332217: Numbers k for which the 2-adic valuation of sigma(k) is zero and its 3-adic valuation is 1 (so that sigma(k) is an odd multiple of 3, but not of 9).

The programs for A332217, the canonical program `A332217.P1686272763571355941` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332217 has offset 1).

The definition of A332217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332217.P1686272763571355941

`eq[3, gcd(18, A000203(n+1))]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332217

/-- `eq[3, gcd(18, A000203(n+1))]+1` -/
def P1686272763571355941.Spec : Prop :=
  ∀ n, (P1686272763571355941.a n : ℤ) = A332217 (n + 1)

theorem P1686272763571355941.correct : P1686272763571355941.Spec := by
  intro n
  simp only [A332217, Nat.add_sub_cancel]

end A332217

/-! ## A332217.P11291030401197678041

`eq[3, A065331(A039653(n)+1)]`
-/

namespace A332217.P11291030401197678041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332217.P11291030401197678041

namespace A332217

/-- `eq[3, A065331(A039653(n)+1)]` -/
def P11291030401197678041.Spec : Prop :=
  ∀ n, (P11291030401197678041.a n : ℤ) = A332217 (n + 1)

end A332217

/-! ## A332217.P17979910934994320463

`eq[3, A158289(A000203(n+1))]+1`
-/

namespace A332217.P17979910934994320463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158289 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332217.P17979910934994320463

namespace A332217

/-- `eq[3, A158289(A000203(n+1))]+1` -/
def P17979910934994320463.Spec : Prop :=
  ∀ n, (P17979910934994320463.a n : ℤ) = A332217 (n + 1)

end A332217

/-! ## A332217.P18332393760825808626

`eq[3, A028233(abs(A143348(n+1)))]+1`
-/

namespace A332217.P18332393760825808626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 |A143348 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332217.P18332393760825808626

namespace A332217

/-- `eq[3, A028233(abs(A143348(n+1)))]+1` -/
def P18332393760825808626.Spec : Prop :=
  ∀ n, (P18332393760825808626.a n : ℤ) = A332217 (n + 1)

end A332217

/-! ## A332217.P12124458018030419538

`eq[3, A028233(A272027(n+1)/3)]+1`
-/

namespace A332217.P12124458018030419538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((A272027 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332217.P12124458018030419538

namespace A332217

/-- `eq[3, A028233(A272027(n+1)/3)]+1` -/
def P12124458018030419538.Spec : Prop :=
  ∀ n, (P12124458018030419538.a n : ℤ) = A332217 (n + 1)

end A332217

/-!
# A332219: a(n) = 1 if 2^n - 1 is a prime, 0 otherwise.

The programs for A332219, there is no canonical definition to state claims against.
-/

/-! ## A332219.P2869909873238875230

`char[A090748(n+1)]`
-/

namespace A332219.P2869909873238875230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P2869909873238875230

/-! ## A332219.P13055340728691127775

`floor(1/A126717(n+1))`
-/

namespace A332219.P13055340728691127775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A126717 (n + 1) : ℚ)⌋

end

end A332219.P13055340728691127775

/-! ## A332219.P8367306727824188485

`char[A153798(n+1)+1]`
-/

namespace A332219.P8367306727824188485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P8367306727824188485

/-! ## A332219.P1850713832267546381

`char[A000043(n+1)-1]`
-/

namespace A332219.P1850713832267546381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P1850713832267546381

/-! ## A332219.P6766987622310121248

`char[A050475(n+1)-2]`
-/

namespace A332219.P6766987622310121248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P6766987622310121248

/-! ## A332219.P13256261038709579179

`char[A000010(A000043(n+1))]`
-/

namespace A332219.P13256261038709579179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000043 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P13256261038709579179

/-! ## A332219.P2091005556619184148

`char[A000010(A190213(n+1))]`
-/

namespace A332219.P2091005556619184148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A190213 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P2091005556619184148

/-! ## A332219.P18058080874235817667

`A010051(A126717(n+1)+1)`
-/

namespace A332219.P18058080874235817667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A126717 (n + 1) + 1).toNat

end

end A332219.P18058080874235817667

/-! ## A332219.P12597783208115201100

`char[A000010(A061645(n+1)/2)]`
-/

namespace A332219.P12597783208115201100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A332219.P12597783208115201100

/-! ## A332219.P5000180523973731699

`C(A106821(n+2), n+1)`
-/

namespace A332219.P5000180523973731699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106821 (n + 2)).toNat (n + 1)

end

end A332219.P5000180523973731699

/-! ## A332219.P6518918454236727323

`A010051(A013603(n+1)+1)`
-/

namespace A332219.P6518918454236727323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A013603 (n + 1) + 1).toNat

end

end A332219.P6518918454236727323

/-! ## A332219.P15382771109687541911

`A012245(A126717(n+1))`
-/

namespace A332219.P15382771109687541911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A126717 (n + 1)).toNat

end

end A332219.P15382771109687541911

/-! ## A332219.P5804661237947686397

`floor(1/A085427(n+1))`
-/

namespace A332219.P5804661237947686397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A085427 (n + 1) : ℚ)⌋

end

end A332219.P5804661237947686397

/-! ## A332219.P16563753713364094757

`val(n+2, A181692(n+1))`
-/

namespace A332219.P16563753713364094757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) (A181692 (n + 1)).toNat

end

end A332219.P16563753713364094757

/-! ## A332219.P4577636201581019671

`A000007(A085427(n+1)-1)`
-/

namespace A332219.P4577636201581019671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A085427 (n + 1) - 1).toNat

end

end A332219.P4577636201581019671

/-! ## A332219.P963516417017540253

`A010051(2*A085427(n+1))`
-/

namespace A332219.P963516417017540253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A085427 (n + 1)).toNat

end

end A332219.P963516417017540253

/-! ## A332219.P13687615841440145436

`A048298(A013603(n+1))`
-/

namespace A332219.P13687615841440145436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A013603 (n + 1)).toNat

end

end A332219.P13687615841440145436

/-! ## A332219.P10748992542041023935

`1-a(A092111(n))` with `a(0)=0`
-/

namespace A332219.P10748992542041023935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A092111 n).toNat

end

end A332219.P10748992542041023935

/-! ## A332219.P686096306739806793

`A000007(A126717(n+1)-1)`
-/

namespace A332219.P686096306739806793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A126717 (n + 1) - 1).toNat

end

end A332219.P686096306739806793

/-! ## A332219.P5371885736573300173

`A208083(n+2)-A095058(n+1)`
-/

namespace A332219.P5371885736573300173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208083 (n + 2) - A095058 (n + 1)

end

end A332219.P5371885736573300173

/-!
# A332220: a(n) is the number of Mersenne exponents (terms of A000043) <= n.

The programs for A332220, there is no canonical definition to state claims against.
-/

/-! ## A332220.P2393649498383612153

`A332219(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A332220.P2393649498383612153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A332219 (n + 1) + a (n - 1)

end

end A332220.P2393649498383612153

/-! ## A332220.P7543571515868948073

`∑[A332219(n+1)]`
-/

namespace A332220.P7543571515868948073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P7543571515868948073

/-! ## A332220.P15130586448115155874

`A072073(n+1)-1`
-/

namespace A332220.P15130586448115155874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072073 (n + 1) - 1

end

end A332220.P15130586448115155874

/-! ## A332220.P8259936525075627929

`∑[char[A090748(n+1)]]`
-/

namespace A332220.P8259936525075627929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P8259936525075627929

/-! ## A332220.P14254192879308777499

`∑[char[A153798(n+1)+1]]`
-/

namespace A332220.P14254192879308777499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P14254192879308777499

/-! ## A332220.P14300577518589724760

`∑[char[A000043(n+1)-1]]`
-/

namespace A332220.P14300577518589724760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P14300577518589724760

/-! ## A332220.P14787510398411301710

`∑[char[A000010(A000043(n+1))]]`
-/

namespace A332220.P14787510398411301710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000043 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P14787510398411301710

/-! ## A332220.P5916422325241113132

`∑[A010051(A126717(n+1)+1)]`
-/

namespace A332220.P5916422325241113132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A126717 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P5916422325241113132

/-! ## A332220.P5993131767587998542

`∑[char[A000010(A061645(n+1)/2)]]`
-/

namespace A332220.P5993131767587998542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P5993131767587998542

/-! ## A332220.P4129055423123784754

`∑[A010051(A013603(n+1)+1)]`
-/

namespace A332220.P4129055423123784754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A013603 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P4129055423123784754

/-! ## A332220.P8391290794823866888

`∑[A048298(A013603(n+1))]`
-/

namespace A332220.P8391290794823866888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A013603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P8391290794823866888

/-! ## A332220.P5619639301778693298

`∑[A039975(A126717(n+1))]`
-/

namespace A332220.P5619639301778693298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (A126717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P5619639301778693298

/-! ## A332220.P11438033595261663130

`∑[round(acot(A059499(n+1)))]-1`
-/

namespace A332220.P11438033595261663130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A059499 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A332220.P11438033595261663130

/-! ## A332220.P11404437797155952946

`∑[A046800(C(2, A046800(n+1)))]`
-/

namespace A332220.P11404437797155952946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (Nat.choose 2 (A046800 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P11404437797155952946

/-! ## A332220.P3700499604905729519

`∑[A297294(n+1)%2]`
-/

namespace A332220.P3700499604905729519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297294 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P3700499604905729519

/-! ## A332220.P365061192934286365

`A070198(n)%A072073(n+1)`
-/

namespace A332220.P365061192934286365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A072073 (n + 1))

end

end A332220.P365061192934286365

/-! ## A332220.P16312440972194404448

`A079782(n+1)%A072073(n+1)`
-/

namespace A332220.P16312440972194404448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A072073 (n + 1))

end

end A332220.P16312440972194404448

/-! ## A332220.P941577140119487051

`A083685(n+1)%A072073(n+1)`
-/

namespace A332220.P941577140119487051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A072073 (n + 1))

end

end A332220.P941577140119487051

/-! ## A332220.P5540142860519244125

`A121934(n+1)%A072073(n+1)`
-/

namespace A332220.P5540142860519244125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A072073 (n + 1))

end

end A332220.P5540142860519244125

/-! ## A332220.P16378235533111960310

`∑[A033683(A297294(n+1))]`
-/

namespace A332220.P16378235533111960310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A297294 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332220.P16378235533111960310

/-!
# A332221: a(n) = A156552(sigma(n)).

The programs for A332221, the canonical program `A332221.P10236177898118334507` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332221 has offset 1).

The definition of A332221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332221.P10236177898118334507

`A156552(A000203(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332221

/-- `A156552(A000203(n+1))` -/
def P10236177898118334507.Spec : Prop :=
  ∀ n, P10236177898118334507.a n = A332221 (n + 1)

theorem P10236177898118334507.correct : P10236177898118334507.Spec := by
  intro n
  simp only [A332221, Nat.add_sub_cancel]

end A332221

/-! ## A332221.P7527150001934026849

`A347876(n+1)+A331750(n+1)`
-/

namespace A332221.P7527150001934026849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347876 (n + 1) + A331750 (n + 1)

end

end A332221.P7527150001934026849

namespace A332221

/-- `A347876(n+1)+A331750(n+1)` -/
def P7527150001934026849.Spec : Prop :=
  ∀ n, P7527150001934026849.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P13769474262053990156

`A331750(n+1)+A323905(A000203(n+1))`
-/

namespace A332221.P13769474262053990156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331750 (n + 1) + A323905 (A000203 (n + 1)).toNat

end

end A332221.P13769474262053990156

namespace A332221

/-- `A331750(n+1)+A323905(A000203(n+1))` -/
def P13769474262053990156.Spec : Prop :=
  ∀ n, P13769474262053990156.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P632308848750788946

`A156552(∑{d}[n+1, #])`
-/

namespace A332221.P632308848750788946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332221.P632308848750788946

namespace A332221

/-- `A156552(∑{d}[n+1, #])` -/
def P632308848750788946.Spec : Prop :=
  ∀ n, P632308848750788946.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P8243012647854882444

`A156552(Δ[A160664(n)])`
-/

namespace A332221.P8243012647854882444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (n + 1) - f1 n).toNat

end

end A332221.P8243012647854882444

namespace A332221

/-- `A156552(Δ[A160664(n)])` -/
def P8243012647854882444.Spec : Prop :=
  ∀ n, P8243012647854882444.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P2776805545442446460

`A156552(A262610(Δ[n²]))`
-/

namespace A332221.P2776805545442446460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A332221.P2776805545442446460

namespace A332221

/-- `A156552(A262610(Δ[n²]))` -/
def P2776805545442446460.Spec : Prop :=
  ∀ n, P2776805545442446460.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P16797579350897160475

`A156552(∑[A340793(n+1)])`
-/

namespace A332221.P16797579350897160475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332221.P16797579350897160475

namespace A332221

/-- `A156552(∑[A340793(n+1)])` -/
def P16797579350897160475.Spec : Prop :=
  ∀ n, P16797579350897160475.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P13638619625963387602

`A156552(A039653(n+1)+1)`
-/

namespace A332221.P13638619625963387602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A039653 (n + 1) + 1).toNat

end

end A332221.P13638619625963387602

namespace A332221

/-- `A156552(A039653(n+1)+1)` -/
def P13638619625963387602.Spec : Prop :=
  ∀ n, P13638619625963387602.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P13137465447314529067

`A156552(A088580(n+1)-1)`
-/

namespace A332221.P13137465447314529067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A088580 (n + 1) - 1).toNat

end

end A332221.P13137465447314529067

namespace A332221

/-- `A156552(A088580(n+1)-1)` -/
def P13137465447314529067.Spec : Prop :=
  ∀ n, P13137465447314529067.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P12376487384401609835

`∑{d}[A000203(n+1), A297112(#)]`
-/

namespace A332221.P12376487384401609835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A332221.P12376487384401609835

namespace A332221

/-- `∑{d}[A000203(n+1), A297112(#)]` -/
def P12376487384401609835.Spec : Prop :=
  ∀ n, P12376487384401609835.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P14736414587942342856

`A156552(A001065(n+1)+1+n)`
-/

namespace A332221.P14736414587942342856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A332221.P14736414587942342856

namespace A332221

/-- `A156552(A001065(n+1)+1+n)` -/
def P14736414587942342856.Spec : Prop :=
  ∀ n, P14736414587942342856.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P710165879278271443

`A156552(A237588(n+1)+2*n+1)`
-/

namespace A332221.P710165879278271443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A237588 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A332221.P710165879278271443

namespace A332221

/-- `A156552(A237588(n+1)+2*n+1)` -/
def P710165879278271443.Spec : Prop :=
  ∀ n, P710165879278271443.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P8641210865225645392

`A156552(2*n+1-A235796(n+1))`
-/

namespace A332221.P8641210865225645392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 ((2 * n + 1 : ℤ) - A235796 (n + 1)).toNat

end

end A332221.P8641210865225645392

namespace A332221

/-- `A156552(2*n+1-A235796(n+1))` -/
def P8641210865225645392.Spec : Prop :=
  ∀ n, P8641210865225645392.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P4437212596639065184

`A156552(A160664(n+1)-A160664(n))`
-/

namespace A332221.P4437212596639065184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A160664 (n + 1) - A160664 n).toNat

end

end A332221.P4437212596639065184

namespace A332221

/-- `A156552(A160664(n+1)-A160664(n))` -/
def P4437212596639065184.Spec : Prop :=
  ∀ n, P4437212596639065184.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P2799298988220434315

`A156552(A146076(n+1)+A000593(n+1))`
-/

namespace A332221.P2799298988220434315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A332221.P2799298988220434315

namespace A332221

/-- `A156552(A146076(n+1)+A000593(n+1))` -/
def P2799298988220434315.Spec : Prop :=
  ∀ n, P2799298988220434315.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P4710524501500251809

`A347876(n+1)+A048675(A000203(n+1))`
-/

namespace A332221.P4710524501500251809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347876 (n + 1) + A048675 (A000203 (n + 1)).toNat

end

end A332221.P4710524501500251809

namespace A332221

/-- `A347876(n+1)+A048675(A000203(n+1))` -/
def P4710524501500251809.Spec : Prop :=
  ∀ n, P4710524501500251809.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P15495610705349522550

`A156552(A324048(n+1)+A083254(n+1))`
-/

namespace A332221.P15495610705349522550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A324048 (n + 1) + A083254 (n + 1)).toNat

end

end A332221.P15495610705349522550

namespace A332221

/-- `A156552(A324048(n+1)+A083254(n+1))` -/
def P15495610705349522550.Spec : Prop :=
  ∀ n, P15495610705349522550.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P9322628009033524894

`A156552(A318458(n+1)+A318456(n+1))`
-/

namespace A332221.P9322628009033524894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A318458 (n + 1) + A318456 (n + 1)).toNat

end

end A332221.P9322628009033524894

namespace A332221

/-- `A156552(A318458(n+1)+A318456(n+1))` -/
def P9322628009033524894.Spec : Prop :=
  ∀ n, P9322628009033524894.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P13028119581093882963

`A156552(A318463(n+1)+A318461(n+1))`
-/

namespace A332221.P13028119581093882963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A318463 (n + 1) + A318461 (n + 1)).toNat

end

end A332221.P13028119581093882963

namespace A332221

/-- `A156552(A318463(n+1)+A318461(n+1))` -/
def P13028119581093882963.Spec : Prop :=
  ∀ n, P13028119581093882963.a n = A332221 (n + 1)

end A332221

/-! ## A332221.P9574027017655142148

`A156552(A005187(n+1)-A294898(n+1))`
-/

namespace A332221.P9574027017655142148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A005187 (n + 1) - A294898 (n + 1)).toNat

end

end A332221.P9574027017655142148

namespace A332221

/-- `A156552(A005187(n+1)-A294898(n+1))` -/
def P9574027017655142148.Spec : Prop :=
  ∀ n, P9574027017655142148.a n = A332221 (n + 1)

end A332221

/-!
# A332222: a(n) = A156552(sigma(A005940(1+n))).

The programs for A332222, the canonical program `A332222.P5786934320280904556` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332222 has offset 0).

The definition of A332222 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A324054, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332222.P1074883815615685189

`A332221(A005940(1+n))`
-/

namespace A332222.P1074883815615685189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332221 (A005940 (1 + n)).toNat

end

end A332222.P1074883815615685189

namespace A332222

/-- `A332221(A005940(1+n))` -/
def P1074883815615685189.Spec : Prop :=
  ∀ n, P1074883815615685189.a n = A332222 n

end A332222

/-! ## A332222.P5786934320280904556

`A156552(A324054(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332222

/-- `A156552(A324054(n))` -/
def P5786934320280904556.Spec : Prop :=
  ∀ n, P5786934320280904556.a n = A332222 n

theorem P5786934320280904556.correct : P5786934320280904556.Spec := by
  intro n
  simp only [A332222]

end A332222

/-! ## A332222.P2250710272199331797

`∑{d}[A324054(n), A297112(#)]`
-/

namespace A332222.P2250710272199331797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A332222.P2250710272199331797

namespace A332222

/-- `∑{d}[A324054(n), A297112(#)]` -/
def P2250710272199331797.Spec : Prop :=
  ∀ n, P2250710272199331797.a n = A332222 n

end A332222

/-! ## A332222.P5215619639064808695

`A156552(∑{d}[A005940(n+1), #])`
-/

namespace A332222.P5215619639064808695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A332222.P5215619639064808695

namespace A332222

/-- `A156552(∑{d}[A005940(n+1), #])` -/
def P5215619639064808695.Spec : Prop :=
  ∀ n, P5215619639064808695.a n = A332222 n

end A332222

/-! ## A332222.P5448315087804637567

`A005941(∑{d}[A005940(n+1), #])-1`
-/

namespace A332222.P5448315087804637567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - 1

end

end A332222.P5448315087804637567

namespace A332222

/-- `A005941(∑{d}[A005940(n+1), #])-1` -/
def P5448315087804637567.Spec : Prop :=
  ∀ n, P5448315087804637567.a n = A332222 n

end A332222

/-! ## A332222.P17658001598428090995

`A156552(∑{d}[A064216(A244154(n)), #])`
-/

namespace A332222.P17658001598428090995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A244154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A332222.P17658001598428090995

namespace A332222

/-- `A156552(∑{d}[A064216(A244154(n)), #])` -/
def P17658001598428090995.Spec : Prop :=
  ∀ n, P17658001598428090995.a n = A332222 n

end A332222

/-! ## A332222.P4702729711058108918

`A156552(∑{d}[A302024(A052330(n)), #])`
-/

namespace A332222.P4702729711058108918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (A052330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A332222.P4702729711058108918

namespace A332222

/-- `A156552(∑{d}[A302024(A052330(n)), #])` -/
def P4702729711058108918.Spec : Prop :=
  ∀ n, P4702729711058108918.a n = A332222 n

end A332222

/-!
# A332223: a(1) = 1, and for n > 1, a(n) = A005940(1+sigma(A156552(n))).

The programs for A332223, there is no canonical definition to state claims against.
-/

/-! ## A332223.P13364178291721454086

`A005940(1+A323243(n+1))`
-/

namespace A332223.P13364178291721454086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A323243 (n + 1)).toNat

end

end A332223.P13364178291721454086

/-! ## A332223.P8317869235540577614

`∑{d}[n+1, A332463(#)]`
-/

namespace A332223.P8317869235540577614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332463 d

end

end A332223.P8317869235540577614

/-! ## A332223.P2837444756759423680

`A005940(∑{d}[A156552(n+1), #]+1)`
-/

namespace A332223.P2837444756759423680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1)

end

end A332223.P2837444756759423680

/-! ## A332223.P15844790444755941865

`A005940(∑{d}[n+1, A324543(#)]+1)`
-/

namespace A332223.P15844790444755941865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (∑ d ∈ Nat.divisors (f1 n), A324543 d + 1).toNat

end

end A332223.P15844790444755941865

/-! ## A332223.P3433247434933183873

`A005940(A324865(n+1)+A005941(n+1))`
-/

namespace A332223.P3433247434933183873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A324865 (n + 1) + A005941 (n + 1)).toNat

end

end A332223.P3433247434933183873

/-!
# A332224: a(n) = A087808(sigma(n)).

The programs for A332224, the canonical program `A332224.P12664818339526450802` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332224 has offset 1).

The definition of A332224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332224.P12664818339526450802

`A087808(A000203(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A332224

/-- `A087808(A000203(n+1))` -/
def P12664818339526450802.Spec : Prop :=
  ∀ n, P12664818339526450802.a n = A332224 (n + 1)

theorem P12664818339526450802.correct : P12664818339526450802.Spec := by
  intro n
  simp only [A332224, Nat.add_sub_cancel]

end A332224

/-! ## A332224.P836306081745164109

`A087808(∑{d}[n+1, #])`
-/

namespace A332224.P836306081745164109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332224.P836306081745164109

namespace A332224

/-- `A087808(∑{d}[n+1, #])` -/
def P836306081745164109.Spec : Prop :=
  ∀ n, P836306081745164109.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P6275671968693631122

`A087808(Δ[A160664(n)])`
-/

namespace A332224.P6275671968693631122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (f1 (n + 1) - f1 n).toNat

end

end A332224.P6275671968693631122

namespace A332224

/-- `A087808(Δ[A160664(n)])` -/
def P6275671968693631122.Spec : Prop :=
  ∀ n, P6275671968693631122.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P13791314081500038898

`A087808(A245092(Δ[n²]))`
-/

namespace A332224.P13791314081500038898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A332224.P13791314081500038898

namespace A332224

/-- `A087808(A245092(Δ[n²]))` -/
def P13791314081500038898.Spec : Prop :=
  ∀ n, P13791314081500038898.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P16797111683396726778

`A087808(sqrt(A072861(n+1)))`
-/

namespace A332224.P16797111683396726778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A332224.P16797111683396726778

namespace A332224

/-- `A087808(sqrt(A072861(n+1)))` -/
def P16797111683396726778.Spec : Prop :=
  ∀ n, P16797111683396726778.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P17303434380046107242

`A087808(A088580(n+1)-1)`
-/

namespace A332224.P17303434380046107242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A088580 (n + 1) - 1).toNat

end

end A332224.P17303434380046107242

namespace A332224

/-- `A087808(A088580(n+1)-1)` -/
def P17303434380046107242.Spec : Prop :=
  ∀ n, P17303434380046107242.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P6880106918930376022

`A087808((A002659(n+1)+1)/2)`
-/

namespace A332224.P6880106918930376022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A332224.P6880106918930376022

namespace A332224

/-- `A087808((A002659(n+1)+1)/2)` -/
def P6880106918930376022.Spec : Prop :=
  ∀ n, P6880106918930376022.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P9363639031924053707

`A087808(A160664(n+1)-A160664(n))`
-/

namespace A332224.P9363639031924053707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A160664 (n + 1) - A160664 n).toNat

end

end A332224.P9363639031924053707

namespace A332224

/-- `A087808(A160664(n+1)-A160664(n))` -/
def P9363639031924053707.Spec : Prop :=
  ∀ n, P9363639031924053707.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P15698443536274044414

`A087808(A070039(n+1)+A070038(n+1))`
-/

namespace A332224.P15698443536274044414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A332224.P15698443536274044414

namespace A332224

/-- `A087808(A070039(n+1)+A070038(n+1))` -/
def P15698443536274044414.Spec : Prop :=
  ∀ n, P15698443536274044414.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P5534987371414719600

`A087808(A117004(n+1)+A079667(n+1))`
-/

namespace A332224.P5534987371414719600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A117004 (n + 1) + A079667 (n + 1)).toNat

end

end A332224.P5534987371414719600

namespace A332224

/-- `A087808(A117004(n+1)+A079667(n+1))` -/
def P5534987371414719600.Spec : Prop :=
  ∀ n, P5534987371414719600.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P17550317088978937146

`A087808(A178637(n+1)+A023889(n+1))`
-/

namespace A332224.P17550317088978937146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A178637 (n + 1) + A023889 (n + 1)).toNat

end

end A332224.P17550317088978937146

namespace A332224

/-- `A087808(A178637(n+1)+A023889(n+1))` -/
def P17550317088978937146.Spec : Prop :=
  ∀ n, P17550317088978937146.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P12769506280883272846

`A087808(A326053(n+1)+A008833(n+1))`
-/

namespace A332224.P12769506280883272846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A326053 (n + 1) + A008833 (n + 1)).toNat

end

end A332224.P12769506280883272846

namespace A332224

/-- `A087808(A326053(n+1)+A008833(n+1))` -/
def P12769506280883272846.Spec : Prop :=
  ∀ n, P12769506280883272846.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P9866553349904834076

`A087808(A002659(n+1)+2)-1`
-/

namespace A332224.P9866553349904834076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A002659 (n + 1) + 2).toNat - 1

end

end A332224.P9866553349904834076

namespace A332224

/-- `A087808(A002659(n+1)+2)-1` -/
def P9866553349904834076.Spec : Prop :=
  ∀ n, P9866553349904834076.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P8041620133643991242

`A087808(A008619(A002659(n+1)))`
-/

namespace A332224.P8041620133643991242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A008619 (A002659 (n + 1)).toNat).toNat

end

end A332224.P8041620133643991242

namespace A332224

/-- `A087808(A008619(A002659(n+1)))` -/
def P8041620133643991242.Spec : Prop :=
  ∀ n, P8041620133643991242.a n = A332224 (n + 1)

end A332224

/-! ## A332224.P17045844568477832989

`A087808(A323243(A005940(n+2)))`
-/

namespace A332224.P17045844568477832989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A323243 (A005940 (n + 2)).toNat).toNat

end

end A332224.P17045844568477832989

namespace A332224

/-- `A087808(A323243(A005940(n+2)))` -/
def P17045844568477832989.Spec : Prop :=
  ∀ n, P17045844568477832989.a n = A332224 (n + 1)

end A332224

/-!
# A332226: Numbers k such that sigma(k) is congruent to 2 modulo 8.

The programs for A332226, the canonical program `A332226.P12587947398497614058` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332226 has offset 1).

The definition of A332226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332226.P12587947398497614058

`eq[2, A000203(n+2)%8]+2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A332226

/-- `eq[2, A000203(n+2)%8]+2` -/
def P12587947398497614058.Spec : Prop :=
  ∀ n, (P12587947398497614058.a n : ℤ) = A332226 (n + 1)

theorem P12587947398497614058.correct : P12587947398497614058.Spec := by
  intro n
  simp only [A332226, Nat.add_sub_cancel]

end A332226

/-! ## A332226.P15850155661064771057

`eq[2, and(7, A000203(n+1))]+1`
-/

namespace A332226.P15850155661064771057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332226.P15850155661064771057

namespace A332226

/-- `eq[2, and(7, A000203(n+1))]+1` -/
def P15850155661064771057.Spec : Prop :=
  ∀ n, (P15850155661064771057.a n : ℤ) = A332226 (n + 1)

end A332226

/-! ## A332226.P10450218093775170476

`eq[2, A105827(n+1)]+1`
-/

namespace A332226.P10450218093775170476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332226.P10450218093775170476

namespace A332226

/-- `eq[2, A105827(n+1)]+1` -/
def P10450218093775170476.Spec : Prop :=
  ∀ n, (P10450218093775170476.a n : ℤ) = A332226 (n + 1)

end A332226

/-! ## A332226.P6223605900230299664

`eq[1, A039653(n)%8]`
-/

namespace A332226.P6223605900230299664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332226.P6223605900230299664

namespace A332226

/-- `eq[1, A039653(n)%8]` -/
def P6223605900230299664.Spec : Prop :=
  ∀ n, (P6223605900230299664.a n : ℤ) = A332226 (n + 1)

end A332226

/-! ## A332226.P87091584481520452

`eq[3, A001511(A088580(n+1)+1)]+1`
-/

namespace A332226.P87091584481520452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A088580 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332226.P87091584481520452

namespace A332226

/-- `eq[3, A001511(A088580(n+1)+1)]+1` -/
def P87091584481520452.Spec : Prop :=
  ∀ n, (P87091584481520452.a n : ℤ) = A332226 (n + 1)

end A332226

/-! ## A332226.P10921792326188405305

`eq[4, A006519(A000203(n+1)+2)]+1`
-/

namespace A332226.P10921792326188405305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000203 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332226.P10921792326188405305

namespace A332226

/-- `eq[4, A006519(A000203(n+1)+2)]+1` -/
def P10921792326188405305.Spec : Prop :=
  ∀ n, (P10921792326188405305.a n : ℤ) = A332226 (n + 1)

end A332226

/-!
# A332227: Odd numbers k such that sigma(k) is congruent to 2 modulo 8.

The programs for A332227, the canonical program `A332227.P4642368873097000219` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332227 has offset 1).

The definition of A332227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332227.P4642368873097000219

`A332226(eq[1, A332226(n+1)%2]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332227

/-- `A332226(eq[1, A332226(n+1)%2]+1)` -/
def P4642368873097000219.Spec : Prop :=
  ∀ n, P4642368873097000219.a n = A332227 (n + 1)

theorem P4642368873097000219.correct : P4642368873097000219.Spec := by
  intro n
  simp only [A332227, Nat.add_sub_cancel]

end A332227

/-! ## A332227.P12741769895920544420

`∩[A191218(n+1), A332226(n+1)]`
-/

namespace A332227.P12741769895920544420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P12741769895920544420

namespace A332227

/-- `∩[A191218(n+1), A332226(n+1)]` -/
def P12741769895920544420.Spec : Prop :=
  ∀ n, (P12741769895920544420.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P11713267407944523803

`record[A000265(A332226(n+2))]`
-/

namespace A332227.P11713267407944523803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A332226 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332227.P11713267407944523803

namespace A332227

/-- `record[A000265(A332226(n+2))]` -/
def P11713267407944523803.Spec : Prop :=
  ∀ n, P11713267407944523803.a n = A332227 (n + 1)

end A332227

/-! ## A332227.P16946270057120845837

`filter[A332226(n+1), A324903(#)]`
-/

namespace A332227.P16946270057120845837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A332227.P16946270057120845837

namespace A332227

/-- `filter[A332226(n+1), A324903(#)]` -/
def P16946270057120845837.Spec : Prop :=
  ∀ n, P16946270057120845837.a n = A332227 (n + 1)

end A332227

/-! ## A332227.P17963435203904192226

`∩[A057653(n+1), A332226(n+1)]`
-/

namespace A332227.P17963435203904192226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P17963435203904192226

namespace A332227

/-- `∩[A057653(n+1), A332226(n+1)]` -/
def P17963435203904192226.Spec : Prop :=
  ∀ n, (P17963435203904192226.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P9251387092231230949

`∩[A332226(n+1), A359151(n+1)]`
-/

namespace A332227.P9251387092231230949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P9251387092231230949

namespace A332227

/-- `∩[A332226(n+1), A359151(n+1)]` -/
def P9251387092231230949.Spec : Prop :=
  ∀ n, (P9251387092231230949.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P6898721708463489331

`filter[A332226(n+1), A323158(#)]`
-/

namespace A332227.P6898721708463489331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A332227.P6898721708463489331

namespace A332227

/-- `filter[A332226(n+1), A323158(#)]` -/
def P6898721708463489331.Spec : Prop :=
  ∀ n, P6898721708463489331.a n = A332227 (n + 1)

end A332227

/-! ## A332227.P16071552639913123539

`filter[A332226(n+1), A324908(#)]`
-/

namespace A332227.P16071552639913123539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A332227.P16071552639913123539

namespace A332227

/-- `filter[A332226(n+1), A324908(#)]` -/
def P16071552639913123539.Spec : Prop :=
  ∀ n, P16071552639913123539.a n = A332227 (n + 1)

end A332227

/-! ## A332227.P6526275933244738311

`filter[A332226(n+1), A353558(#)]`
-/

namespace A332227.P6526275933244738311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A332227.P6526275933244738311

namespace A332227

/-- `filter[A332226(n+1), A353558(#)]` -/
def P6526275933244738311.Spec : Prop :=
  ∀ n, P6526275933244738311.a n = A332227 (n + 1)

end A332227

/-! ## A332227.P13623634246024651475

`filter[A332226(n+1), A354035(#)]`
-/

namespace A332227.P13623634246024651475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A332227.P13623634246024651475

namespace A332227

/-- `filter[A332226(n+1), A354035(#)]` -/
def P13623634246024651475.Spec : Prop :=
  ∀ n, P13623634246024651475.a n = A332227 (n + 1)

end A332227

/-! ## A332227.P3784310919426857856

`∩[A108345(n+1), A332226(n+1)]`
-/

namespace A332227.P3784310919426857856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P3784310919426857856

namespace A332227

/-- `∩[A108345(n+1), A332226(n+1)]` -/
def P3784310919426857856.Spec : Prop :=
  ∀ n, (P3784310919426857856.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P16245330663134073837

`eq[2, A126813(n+1)]+1`
-/

namespace A332227.P16245330663134073837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332227.P16245330663134073837

namespace A332227

/-- `eq[2, A126813(n+1)]+1` -/
def P16245330663134073837.Spec : Prop :=
  ∀ n, (P16245330663134073837.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P6800341865941085439

`∩[A077425(n+1), A332226(n+1)]`
-/

namespace A332227.P6800341865941085439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P6800341865941085439

namespace A332227

/-- `∩[A077425(n+1), A332226(n+1)]` -/
def P6800341865941085439.Spec : Prop :=
  ∀ n, (P6800341865941085439.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P7184207911378160726

`∩[A324909(n+1), A332226(n+1)]`
-/

namespace A332227.P7184207911378160726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P7184207911378160726

namespace A332227

/-- `∩[A324909(n+1), A332226(n+1)]` -/
def P7184207911378160726.Spec : Prop :=
  ∀ n, (P7184207911378160726.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P12698189415121040601

`∩[A332226(n+1), A016813(n)]`
-/

namespace A332227.P12698189415121040601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P12698189415121040601

namespace A332227

/-- `∩[A332226(n+1), A016813(n)]` -/
def P12698189415121040601.Spec : Prop :=
  ∀ n, (P12698189415121040601.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P3718611160295252210

`∩[A332226(n+1), A222945(n)]`
-/

namespace A332227.P3718611160295252210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P3718611160295252210

namespace A332227

/-- `∩[A332226(n+1), A222945(n)]` -/
def P3718611160295252210.Spec : Prop :=
  ∀ n, (P3718611160295252210.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P12276648307355116197

`∩[A004766(n+1), A332226(n+1)]`
-/

namespace A332227.P12276648307355116197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P12276648307355116197

namespace A332227

/-- `∩[A004766(n+1), A332226(n+1)]` -/
def P12276648307355116197.Spec : Prop :=
  ∀ n, (P12276648307355116197.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P13337961084063173617

`∩[A067019(n+1), A332226(n+1)]`
-/

namespace A332227.P13337961084063173617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P13337961084063173617

namespace A332227

/-- `∩[A067019(n+1), A332226(n+1)]` -/
def P13337961084063173617.Spec : Prop :=
  ∀ n, (P13337961084063173617.a n : ℤ) = A332227 (n + 1)

end A332227

/-! ## A332227.P14877297938513410849

`∩[A176847(n+1), A332226(n+1)]`
-/

namespace A332227.P14877297938513410849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332227.P14877297938513410849

namespace A332227

/-- `∩[A176847(n+1), A332226(n+1)]` -/
def P14877297938513410849.Spec : Prop :=
  ∀ n, (P14877297938513410849.a n : ℤ) = A332227 (n + 1)

end A332227

/-!
# A332228: Odd numbers n, not powers of primes, such that sigma(n) is congruent to 2 modulo 8.

The programs for A332228, there is no canonical definition to state claims against.
-/

/-! ## A332228.P14684455802061630972

`∩[A228058(n+1), A332227(n+1)]`
-/

namespace A332228.P14684455802061630972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14684455802061630972

/-! ## A332228.P18152885397636661448

`∩[A228058(n+1), A332226(n+1)]`
-/

namespace A332228.P18152885397636661448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P18152885397636661448

/-! ## A332228.P14040884313561916406

`∩[A332227(n+1), A389459(n+1)]`
-/

namespace A332228.P14040884313561916406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14040884313561916406

/-! ## A332228.P8782833708800121475

`∩[A332227(n+1), A389458(n+1)]`
-/

namespace A332228.P8782833708800121475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P8782833708800121475

/-! ## A332228.P14542197032613693429

`∩[A332227(n+1), A388983(n+1)]`
-/

namespace A332228.P14542197032613693429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14542197032613693429

/-! ## A332228.P4295399166690044275

`∩[A332226(n+1), A360769(n+1)]`
-/

namespace A332228.P4295399166690044275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P4295399166690044275

/-! ## A332228.P18042762997371901767

`∩[A332227(n+1), A360769(n+1)]`
-/

namespace A332228.P18042762997371901767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P18042762997371901767

/-! ## A332228.P14234545569852535713

`∩[A124438(n+1), A332227(n+1)]`
-/

namespace A332228.P14234545569852535713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14234545569852535713

/-! ## A332228.P17849599265313673281

`∩[A332227(n+1), A376216(n+1)]`
-/

namespace A332228.P17849599265313673281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P17849599265313673281

/-! ## A332228.P5806049219363326580

`∩[A332227(n+1), A369276(n+1)]`
-/

namespace A332228.P5806049219363326580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P5806049219363326580

/-! ## A332228.P10237105638883190328

`∩[A332227(n+1), A360765(n+1)]`
-/

namespace A332228.P10237105638883190328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P10237105638883190328

/-! ## A332228.P14680672282342786091

`∩[A332227(n+1), A367455(n+1)]`
-/

namespace A332228.P14680672282342786091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14680672282342786091

/-! ## A332228.P16477224011996092329

`∩[A240112(n+1), A332227(n+1)]`
-/

namespace A332228.P16477224011996092329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P16477224011996092329

/-! ## A332228.P11602052196925286033

`∩[A267117(n+1), A332227(n+1)]`
-/

namespace A332228.P11602052196925286033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P11602052196925286033

/-! ## A332228.P2708951288493744771

`∩[A072588(n+1), A332227(n+1)]`
-/

namespace A332228.P2708951288493744771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P2708951288493744771

/-! ## A332228.P14595693202014960490

`∩[A072587(n+1), A332227(n+1)]`
-/

namespace A332228.P14595693202014960490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P14595693202014960490

/-! ## A332228.P1470563253827123752

`∩[A070011(n+1), A332227(n+1)]`
-/

namespace A332228.P1470563253827123752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P1470563253827123752

/-! ## A332228.P9436780063769047136

`∩[A332227(n+1), A386294(n+1)]`
-/

namespace A332228.P9436780063769047136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P9436780063769047136

/-! ## A332228.P5178741258924637094

`∩[A061346(n+1), A332226(n+1)]`
-/

namespace A332228.P5178741258924637094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332228.P5178741258924637094

/-!
# A332231: a(n) = 1/n! * ((n+1)*n)!/Gamma(1 + (n+1)*n/2) * Gamma(1 + (n-1)*n/2)/((n-1)*n)!.

The programs for A332231, the canonical program `A332231.P17168726051394338562` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332231 has offset 0).

The definition of A332231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332231.P17168726051394338562

`C(n*(n+1), 2*n)*C(2*n, n)/C(n*(n+1)/2, n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332231

/-- `C(n*(n+1), 2*n)*C(2*n, n)/C(n*(n+1)/2, n)` -/
def P17168726051394338562.Spec : Prop :=
  ∀ n, P17168726051394338562.a n = (A332231 n : ℚ)

end A332231

/-! ## A332231.P14074586199512187243

`A014062(n)/A014068(n)*A135860(n)`
-/

namespace A332231.P14074586199512187243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014062 n : ℚ) / (A014068 n : ℚ) * (A135860 n : ℚ)

end

end A332231.P14074586199512187243

namespace A332231

/-- `A014062(n)/A014068(n)*A135860(n)` -/
def P14074586199512187243.Spec : Prop :=
  ∀ n, P14074586199512187243.a n = (A332231 n : ℚ)

end A332231

/-! ## A332231.P16756868363661012141

`A330843(∑[4*n])`
-/

namespace A332231.P16756868363661012141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332231.P16756868363661012141

namespace A332231

/-- `A330843(∑[4*n])` -/
def P16756868363661012141.Spec : Prop :=
  ∀ n, P16756868363661012141.a n = A332231 n

end A332231

/-! ## A332231.P5195328960821114707

`abs(A330843(A046092(n)))`
-/

namespace A332231.P5195328960821114707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A330843 (A046092 n).toNat|

end

end A332231.P5195328960821114707

namespace A332231

/-- `abs(A330843(A046092(n)))` -/
def P5195328960821114707.Spec : Prop :=
  ∀ n, P5195328960821114707.a n = A332231 n

end A332231

/-! ## A332231.P2869659898700144953

`record[A003982(n)*A330843(n)]`
-/

namespace A332231.P2869659898700144953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A330843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332231.P2869659898700144953

namespace A332231

/-- `record[A003982(n)*A330843(n)]` -/
def P2869659898700144953.Spec : Prop :=
  ∀ n, P2869659898700144953.a n = A332231 n

end A332231

/-!
# A332232: Smallest t such that every binary word of length t+1 contains two non-overlapping occurrences of some length-n block.

The programs for A332232, there is no canonical definition to state claims against.
-/

/-! ## A332232.P1042196087841265696

`ogf((-2-3x-2x^2+5x^4+8x^5)/(-1+2x))`
-/

namespace A332232.P1042196087841265696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2, 0, -5, -8] [1, -2] n

end

end A332232.P1042196087841265696

/-!
# A332233: Number of integer partitions lambda (of any k) satisfying n = max_{p:lambda} p*m(p,lambda), where m(p,lambda) is the multiplicity of part p in lambda.

The programs for A332233, there is no canonical definition to state claims against.
-/

/-! ## A332233.P3729412758395103959

`A000007(n)+Δ[A131385(n)]`
-/

namespace A332233.P3729412758395103959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A332233.P3729412758395103959

/-! ## A332233.P17379100387407431165

`Δ[A131385(n)+A036453(n+1)]`
-/

namespace A332233.P17379100387407431165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131385 n + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332233.P17379100387407431165

/-! ## A332233.P2008339032343825587

`Δ[A131385(n)+A019428(2*n)]`
-/

namespace A332233.P2008339032343825587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131385 n + A019428 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332233.P2008339032343825587

/-! ## A332233.P17807294706054529424

`Δ[A323157(2*n+1)+A131385(n)]`
-/

namespace A332233.P17807294706054529424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323157 (2 * n + 1) + A131385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332233.P17807294706054529424

/-! ## A332233.P11331231775421865656

`Δ[A131385(A028310(n))-A000007(n)]`
-/

namespace A332233.P11331231775421865656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131385 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332233.P11331231775421865656

/-! ## A332233.P979220121599753948

`A131385(n+1)+A000007(n)-A131385(n)`
-/

namespace A332233.P979220121599753948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131385 (n + 1) + (A000007 n - A131385 n)

end

end A332233.P979220121599753948

/-! ## A332233.P6944151644580609402

`Δ[A131385(n)%A000351(n)]`
-/

namespace A332233.P6944151644580609402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131385 n) (A000351 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332233.P6944151644580609402

/-!
# A332238: a(n) = n^(n-1) - Sum_{k=1..n-1} k^(k-1) * a(n-k).

The programs for A332238, there is no canonical definition to state claims against.
-/

/-! ## A332238.P7713720714071717853

`A382079(A256321(n))`
-/

namespace A332238.P7713720714071717853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382079 (A256321 n).toNat

end

end A332238.P7713720714071717853

/-!
# A332239: a(n) = n^(n-2) - Sum_{k=1..n-1} k^(k-2) * a(n-k).

The programs for A332239, there is no canonical definition to state claims against.
-/

/-! ## A332239.P10361709659493119730

`A289122(xor(6, A161391(n+1)))`
-/

namespace A332239.P10361709659493119730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.xor 6 (A161391 (n + 1))).toNat

end

end A332239.P10361709659493119730

/-! ## A332239.P16416180128776266052

`A123108(A212029(n)-1+n)`
-/

namespace A332239.P16416180128776266052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A212029 n - 1 + (n : ℤ)).toNat

end

end A332239.P16416180128776266052

/-!
# A332240: Palindromes that are the sum of a number and the sum of its digits.

The programs for A332240, there is no canonical definition to state claims against.
-/

/-! ## A332240.P4458216930883439781

`record[A062028(A229545(n+1))]`
-/

namespace A332240.P4458216930883439781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A229545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332240.P4458216930883439781

/-! ## A332240.P15402637076006761150

`eq[0, A056965(n)^A230093(n)]`
-/

namespace A332240.P15402637076006761150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056965 n : ℚ) ^ (A230093 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A332240.P15402637076006761150

/-! ## A332240.P4297527118106786585

`eq[0, A256756(n)^A230093(n)]`
-/

namespace A332240.P4297527118106786585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256756 n : ℚ) ^ (A230093 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A332240.P4297527118106786585

/-! ## A332240.P5611097420323585149

`record[A047813(A062028(n))]`
-/

namespace A332240.P5611097420323585149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A062028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332240.P5611097420323585149

/-! ## A332240.P17185172417325723607

`record[A047813(A007953(n)+n)]`
-/

namespace A332240.P17185172417325723607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332240.P17185172417325723607

/-! ## A332240.P4443215103739942350

`record[A047813(A160939(n+1)-1)]`
-/

namespace A332240.P4443215103739942350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A160939 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332240.P4443215103739942350

/-! ## A332240.P9352054038667894834

`A062028(record[A096234(n)-A256756(n)])`
-/

namespace A332240.P9352054038667894834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 n - A256756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332240.P9352054038667894834

/-!
# A332241: Indices of A224078(n) in A025487.

The programs for A332241, there is no canonical definition to state claims against.
-/

/-! ## A332241.P1968976486430176460

`A361808(A353561(n+1))`
-/

namespace A332241.P1968976486430176460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A353561 (n + 1)).toNat

end

end A332241.P1968976486430176460

/-! ## A332241.P17274118715255451079

`A085089(A002201(n+1))`
-/

namespace A332241.P17274118715255451079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A002201 (n + 1)).toNat

end

end A332241.P17274118715255451079

/-! ## A332241.P5124681476525171201

`A085089(A004490(n+1))`
-/

namespace A332241.P5124681476525171201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A004490 (n + 1)).toNat

end

end A332241.P5124681476525171201

/-! ## A332241.P11467649470836850307

`A085089(A224078(n+1))`
-/

namespace A332241.P11467649470836850307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A224078 (n + 1)).toNat

end

end A332241.P11467649470836850307

/-! ## A332241.P2254437670164023894

`A085089(A263572(n+2))`
-/

namespace A332241.P2254437670164023894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A263572 (n + 2)).toNat

end

end A332241.P2254437670164023894

/-!
# A332243: Starhex honeycomb numbers: a(n) = 13 + 60*n + 60*n^2.

The programs for A332243, the canonical program `A332243.P7331680661021613078` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332243 has offset 0).

The definition of A332243 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13+60*n+60*n²` (program `A332243.P7331680661021613078`, by `A332243.P7331680661021613078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332243.P6054869004170308483

`n*(n+1)*60+13`
-/

namespace A332243.P6054869004170308483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) * 60 + 13

end

end A332243.P6054869004170308483

namespace A332243

/-- `n*(n+1)*60+13` -/
def P6054869004170308483.Spec : Prop :=
  ∀ n, (P6054869004170308483.a n : ℤ) = A332243 n

theorem P6054869004170308483.correct : P6054869004170308483.Spec := by
  intro n
  simp only [A332243, Nat.add_sub_cancel, A332243.P6054869004170308483.a, A332243.P7331680661021613078.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A332243

/-! ## A332243.P7331680661021613078

`13+60*n+60*n²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A332243

/-- `13+60*n+60*n²` -/
def P7331680661021613078.Spec : Prop :=
  ∀ n, (P7331680661021613078.a n : ℤ) = A332243 n

theorem P7331680661021613078.correct : P7331680661021613078.Spec := by
  intro n
  simp only [A332243]

end A332243

/-! ## A332243.P6665100818194895385

`A082369(A001844(n))`
-/

namespace A332243.P6665100818194895385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (A001844 n).toNat

end

end A332243.P6665100818194895385

namespace A332243

/-- `A082369(A001844(n))` -/
def P6665100818194895385.Spec : Prop :=
  ∀ n, P6665100818194895385.a n = A332243 n

end A332243

/-! ## A332243.P8293936288757967635

`xor(2, 15*Δ[n²]²)`
-/

namespace A332243.P8293936288757967635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (15 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A332243.P8293936288757967635

namespace A332243

/-- `xor(2, 15*Δ[n²]²)` -/
def P8293936288757967635.Spec : Prop :=
  ∀ n, P8293936288757967635.a n = A332243 n

end A332243

/-! ## A332243.P1296901391199822459

`or(1, 6*A273366(n))`
-/

namespace A332243.P1296901391199822459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A273366 n)

end

end A332243.P1296901391199822459

namespace A332243

/-- `or(1, 6*A273366(n))` -/
def P1296901391199822459.Spec : Prop :=
  ∀ n, P1296901391199822459.a n = A332243 n

end A332243

/-! ## A332243.P4530864880382930967

`(15*A016754(n)-2)%(15*A016754(n))`
-/

namespace A332243.P4530864880382930967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (15 * A016754 n - 2) (15 * A016754 n)

end

end A332243.P4530864880382930967

namespace A332243

/-- `(15*A016754(n)-2)%(15*A016754(n))` -/
def P4530864880382930967.Spec : Prop :=
  ∀ n, P4530864880382930967.a n = A332243 n

end A332243

/-! ## A332243.P2519920463879532675

`Δ[A160699(n)-4*n]`
-/

namespace A332243.P2519920463879532675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160699 n - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332243.P2519920463879532675

namespace A332243

/-- `Δ[A160699(n)-4*n]` -/
def P2519920463879532675.Spec : Prop :=
  ∀ n, P2519920463879532675.a n = A332243 n

end A332243

/-! ## A332243.P16891819022577363

`and(1-8/2, A195046(A016825(n)))`
-/

namespace A332243.P16891819022577363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (8 : ℚ) / 2)) (A195046 (A016825 n).toNat)

end

end A332243.P16891819022577363

namespace A332243

/-- `and(1-8/2, A195046(A016825(n)))` -/
def P16891819022577363.Spec : Prop :=
  ∀ n, P16891819022577363.a n = A332243 n

end A332243

/-! ## A332243.P17786726886631584529

`A082369(∑[4*n]+1)`
-/

namespace A332243.P17786726886631584529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332243.P17786726886631584529

namespace A332243

/-- `A082369(∑[4*n]+1)` -/
def P17786726886631584529.Spec : Prop :=
  ∀ n, P17786726886631584529.a n = A332243 n

end A332243

/-! ## A332243.P17764228774500652312

`A248474(Δ[n²]²)`
-/

namespace A332243.P17764228774500652312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A332243.P17764228774500652312

namespace A332243

/-- `A248474(Δ[n²]²)` -/
def P17764228774500652312.Spec : Prop :=
  ∀ n, P17764228774500652312.a n = A332243 n

end A332243

/-!
# A332244: Number of chains of length n in the lattice of set partitions of [2n] ordered by refinement.

The programs for A332244, there is no canonical definition to state claims against.
-/

/-! ## A332244.P15661222071574258621

`A331955(∑[4*n])`
-/

namespace A332244.P15661222071574258621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332244.P15661222071574258621

/-! ## A332244.P16325497831490689398

`record[A003982(n)*A331955(n)]`
-/

namespace A332244.P16325497831490689398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A331955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332244.P16325497831490689398

/-! ## A332244.P17986521651347297180

`record[gcd(A112467(n), A331955(n))]`
-/

namespace A332244.P17986521651347297180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A331955 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332244.P17986521651347297180

/-! ## A332244.P4544071431123453161

`record[A077606(n+1)*A331955(n)]`
-/

namespace A332244.P4544071431123453161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A331955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332244.P4544071431123453161

/-! ## A332244.P12350850080981932694

`lcm(A033630(n), A331955(A046092(n)))`
-/

namespace A332244.P12350850080981932694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033630 n) (A331955 (A046092 n).toNat)

end

end A332244.P12350850080981932694

/-!
# A332245: Positive integers represented by the ternary quadratic form 5x^2 + 8y^2 + 8z^2 - 5yz - xz - 4xy; equally, positive integers represented by the ternary quadratic form 5x^2 + 5y^2 + 8z^2 - yz - 4xz - 2xy.

The programs for A332245, there is no canonical definition to state claims against.
-/

/-! ## A332245.P5402203247059211415

`A255176(A027337(n))+A189707(n+1)`
-/

namespace A332245.P5402203247059211415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 (A027337 n).toNat + A189707 (n + 1)

end

end A332245.P5402203247059211415

/-! ## A332245.P11299183016358334190

`A255176(A027338(n))+A189707(n+1)`
-/

namespace A332245.P11299183016358334190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 (A027338 n).toNat + A189707 (n + 1)

end

end A332245.P11299183016358334190

/-! ## A332245.P16585564754951062452

`A189707(n+1)+A040032(A007641(2*(n+1)))`
-/

namespace A332245.P16585564754951062452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1) + A040032 (A007641 (2 * (n + 1))).toNat

end

end A332245.P16585564754951062452

/-! ## A332245.P5466852503881420028

`A255176(A027336(n+4))+A189707(n+1)`
-/

namespace A332245.P5466852503881420028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 (A027336 (n + 4)).toNat + A189707 (n + 1)

end

end A332245.P5466852503881420028

/-! ## A332245.P15976566671728947547

`A348401(A189707(n+1))+4`
-/

namespace A332245.P15976566671728947547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348401 (A189707 (n + 1)).toNat + 4

end

end A332245.P15976566671728947547

/-!
# A332246: a(n) is the X-coordinate of the n-th point of the Minkowski sausage (or Minkowski curve). Sequence A332247 gives Y-coordinates.

The programs for A332246, there is no canonical definition to state claims against.
-/

/-! ## A332246.P3797794317859315603

`A116939((A151818(n)+1)*A116942(n))`
-/

namespace A332246.P3797794317859315603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 ((A151818 n + 1) * A116942 n).toNat

end

end A332246.P3797794317859315603

/-! ## A332246.P1977916623495829922

`A000041(A151818(n))*A116939(A116942(n))`
-/

namespace A332246.P1977916623495829922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151818 n).toNat * A116939 (A116942 n).toNat

end

end A332246.P1977916623495829922

/-! ## A332246.P17581464409176998602

`A116939(A116942(n))/A000041(A151818(n)²)`
-/

namespace A332246.P17581464409176998602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116939 (A116942 n).toNat : ℚ) / (A000041 (A151818 n ^ 2).toNat : ℚ)

end

end A332246.P17581464409176998602

/-! ## A332246.P12153736164578209396

`A116939(A116942(n))%A074698(n+1)`
-/

namespace A332246.P12153736164578209396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116939 (A116942 n).toNat) (A074698 (n + 1))

end

end A332246.P12153736164578209396

/-!
# A332248: Number of set partitions of [n] where all prime-indexed blocks are not singletons.

The programs for A332248, there is no canonical definition to state claims against.
-/

/-! ## A332248.P17525890430728791230

`A235130(A097122(n))`
-/

namespace A332248.P17525890430728791230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A097122 n).toNat

end

end A332248.P17525890430728791230

/-! ## A332248.P405810755687637043

`A235130(A215928(n))`
-/

namespace A332248.P405810755687637043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A215928 n).toNat

end

end A332248.P405810755687637043

/-! ## A332248.P16255454253510726798

`A033270(A014521(n)+2)`
-/

namespace A332248.P16255454253510726798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A014521 n + 2).toNat

end

end A332248.P16255454253510726798

/-! ## A332248.P12205696520521911848

`A033270(A014510(n)+3)`
-/

namespace A332248.P12205696520521911848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A014510 n + 3).toNat

end

end A332248.P12205696520521911848

/-!
# A332249: a(n) is the X-coordinate of the n-th point of the quadratic Koch curve. Sequence A332250 gives Y-coordinates.

The programs for A332249, there is no canonical definition to state claims against.
-/

/-! ## A332249.P2976566857180663428

`A332380(record[A342218(n)])`
-/

namespace A332249.P2976566857180663428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332249.P2976566857180663428

/-! ## A332249.P11493963134181262471

`∑[n%2*A229217(A029579(n))]`
-/

namespace A332249.P11493963134181262471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A229217 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P11493963134181262471

/-! ## A332249.P6071341233532616662

`∑[and(1, n)*A229217(A093178(n))]`
-/

namespace A332249.P6071341233532616662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A229217 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P6071341233532616662

/-! ## A332249.P4819035312057817886

`∑[A229217(A093178(n))]-A008619(n)`
-/

namespace A332249.P4819035312057817886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229217 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008619 n

end

end A332249.P4819035312057817886

/-! ## A332249.P13785826084473217029

`∑[A000035(n)*A229217(A029579(n))]`
-/

namespace A332249.P13785826084473217029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A229217 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P13785826084473217029

/-! ## A332249.P135830758039653978

`∑[A000035(n)*A229217(A093178(n))]`
-/

namespace A332249.P135830758039653978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A229217 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P135830758039653978

/-! ## A332249.P2329957726138547930

`∑[A229217(A029579(n))%A000034(n)]`
-/

namespace A332249.P2329957726138547930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229217 (A029579 n).toNat) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P2329957726138547930

/-! ## A332249.P7608395113402023808

`∑[A229217(A093178(n))%A000034(n)]`
-/

namespace A332249.P7608395113402023808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229217 (A093178 n).toNat) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P7608395113402023808

/-! ## A332249.P16491080928970815268

`∑[A000035(n)*A229217(A109613(n))]`
-/

namespace A332249.P16491080928970815268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A229217 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P16491080928970815268

/-! ## A332249.P13800826822305304566

`∑[A229217(A109613(n))%A000034(n)]`
-/

namespace A332249.P13800826822305304566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229217 (A109613 n).toNat) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332249.P13800826822305304566

/-!
# A332250: a(n) is the Y-coordinate of the n-th point of the quadratic Koch curve. Sequence A332249 gives X-coordinates.

The programs for A332250, there is no canonical definition to state claims against.
-/

/-! ## A332250.P8895104893780144045

`abs(A332381(record[A342218(n)]))`
-/

namespace A332250.P8895104893780144045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332381 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A332250.P8895104893780144045

/-! ## A332250.P263314204056467012

`A332381(A342218(record[A342218(n)]))`
-/

namespace A332250.P263314204056467012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332381 (A342218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A332250.P263314204056467012

/-! ## A332250.P9778371487802880952

`A340321(n)%A038013(n)`
-/

namespace A332250.P9778371487802880952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340321 n) (A038013 n)

end

end A332250.P9778371487802880952

/-! ## A332250.P15983511833510438721

`and(A158861(n+1), A340321(n))`
-/

namespace A332250.P15983511833510438721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158861 (n + 1)) (A340321 n)

end

end A332250.P15983511833510438721

/-! ## A332250.P4957249703730781809

`and(A179612(n+1), A340321(n))`
-/

namespace A332250.P4957249703730781809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179612 (n + 1)) (A340321 n)

end

end A332250.P4957249703730781809

/-!
# A332251: a(n) is the real part of f(n) defined by f(0) = 0 and f(n+1) = f(n) + i^A000120(n) (where i denotes the imaginary unit). Sequence A332252 gives imaginary parts.

The programs for A332251, the canonical program `A332251.P7170121162283954011` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332251 has offset 0).

The definition of A332251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332251.P17736781653896604482

`∑[A014317(A000120(abs(1-n)))]`
-/

namespace A332251.P17736781653896604482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014317 (A000120 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332251.P17736781653896604482

namespace A332251

/-- `∑[A014317(A000120(abs(1-n)))]` -/
def P17736781653896604482.Spec : Prop :=
  ∀ n, P17736781653896604482.a n = A332251 n

end A332251

/-! ## A332251.P7170121162283954011

`∑[A131852(A131136(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332251

/-- `∑[A131852(A131136(n))]` -/
def P7170121162283954011.Spec : Prop :=
  ∀ n, P7170121162283954011.a n = A332251 n

theorem P7170121162283954011.correct : P7170121162283954011.Spec := by
  intro n
  simp only [A332251]

end A332251

/-! ## A332251.P8456649400181460603

`∑[A131852(2*sqrt(A177241(n)))]`
-/

namespace A332251.P8456649400181460603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (SequenceMachineLib.roundAway (2 * Real.sqrt (A177241 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332251.P8456649400181460603

namespace A332251

/-- `∑[A131852(2*sqrt(A177241(n)))]` -/
def P8456649400181460603.Spec : Prop :=
  ∀ n, P8456649400181460603.a n = A332251 n

end A332251

/-! ## A332251.P5625603299623508849

`∑[A131852(n+1-A261366(2*n)+n)]`
-/

namespace A332251.P5625603299623508849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 ((n + 1 : ℤ) - A261366 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332251.P5625603299623508849

namespace A332251

/-- `∑[A131852(n+1-A261366(2*n)+n)]` -/
def P5625603299623508849.Spec : Prop :=
  ∀ n, P5625603299623508849.a n = A332251 n

end A332251

/-! ## A332251.P104527667212890166

`A332252(2*n)-A332252(n)`
-/

namespace A332251.P104527667212890166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332252 (2 * n) - A332252 n

end

end A332251.P104527667212890166

namespace A332251

/-- `A332252(2*n)-A332252(n)` -/
def P104527667212890166.Spec : Prop :=
  ∀ n, P104527667212890166.a n = A332251 n

end A332251

/-! ## A332251.P11043767718212393705

`1-∑[A131851(A131136(2*n))]`
-/

namespace A332251.P11043767718212393705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A131136 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332251.P11043767718212393705

namespace A332251

/-- `1-∑[A131851(A131136(2*n))]` -/
def P11043767718212393705.Spec : Prop :=
  ∀ n, P11043767718212393705.a n = A332251 n

end A332251

/-! ## A332251.P13257051220739038547

`A332252(4*n)/2`
-/

namespace A332251.P13257051220739038547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332252 (4 * n) : ℚ) / 2

end

end A332251.P13257051220739038547

namespace A332251

/-- `A332252(4*n)/2` -/
def P13257051220739038547.Spec : Prop :=
  ∀ n, P13257051220739038547.a n = (A332251 n : ℚ)

end A332251

/-!
# A332252: a(n) is the imaginary part of f(n) defined by f(0) = 0 and f(n+1) = f(n) + i^A000120(n) (where i denotes the imaginary unit). Sequence A332251 gives real parts.

The programs for A332252, the canonical program `A332252.P10279896766399306977` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332252 has offset 0).

The definition of A332252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332252.P10279896766399306977

`∑[A131852(1-A261366(n)+n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332252

/-- `∑[A131852(1-A261366(n)+n)]` -/
def P10279896766399306977.Spec : Prop :=
  ∀ n, P10279896766399306977.a n = A332252 n

theorem P10279896766399306977.correct : P10279896766399306977.Spec := by
  intro n
  simp only [A332252]

end A332252

/-! ## A332252.P485974426357894581

`1-∑[A131851(A131136(n))]`
-/

namespace A332252.P485974426357894581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332252.P485974426357894581

namespace A332252

/-- `1-∑[A131851(A131136(n))]` -/
def P485974426357894581.Spec : Prop :=
  ∀ n, P485974426357894581.a n = A332252 n

end A332252

/-! ## A332252.P11241994174679622354

`∑[A131852(sqrt(A177241(n)))]`
-/

namespace A332252.P11241994174679622354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (SequenceMachineLib.roundAway (Real.sqrt (A177241 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332252.P11241994174679622354

namespace A332252

/-- `∑[A131852(sqrt(A177241(n)))]` -/
def P11241994174679622354.Spec : Prop :=
  ∀ n, P11241994174679622354.a n = A332252 n

end A332252

/-! ## A332252.P17440170857410686968

`A332251(n)-A332251(2*n)`
-/

namespace A332252.P17440170857410686968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332251 n - A332251 (2 * n)

end

end A332252.P17440170857410686968

namespace A332252

/-- `A332251(n)-A332251(2*n)` -/
def P17440170857410686968.Spec : Prop :=
  ∀ n, P17440170857410686968.a n = A332252 n

end A332252

/-! ## A332252.P7237750013497563358

`∑[A131851(2*A131136(2*n))]`
-/

namespace A332252.P7237750013497563358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (2 * A131136 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332252.P7237750013497563358

namespace A332252

/-- `∑[A131851(2*A131136(2*n))]` -/
def P7237750013497563358.Spec : Prop :=
  ∀ n, P7237750013497563358.a n = A332252 n

end A332252

/-!
# A332253: Triangle read by rows: T(n,k) is the number of multiset partitions of weight n whose union is a k-set where each part has a different size.

The programs for A332253, there is no canonical definition to state claims against.
-/

/-! ## A332253.P1154947483216679762

`lcm(A060384(n), A126792(A135313(n)))`
-/

namespace A332253.P1154947483216679762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060384 n) (A126792 (A135313 n).toNat)

end

end A332253.P1154947483216679762

/-! ## A332253.P5582038645611257537

`A000002(A317053(n+1))*A291680(n)`
-/

namespace A332253.P5582038645611257537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A317053 (n + 1)).toNat * A291680 n

end

end A332253.P5582038645611257537

/-! ## A332253.P16157187625372108978

`A391788(A035347(n+1))`
-/

namespace A332253.P16157187625372108978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391788 (A035347 (n + 1)).toNat

end

end A332253.P16157187625372108978

/-! ## A332253.P3778409467202339951

`∑{e}[A285909(A350266(n)), #]`
-/

namespace A332253.P3778409467202339951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285909 (A350266 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A332253.P3778409467202339951

/-! ## A332253.P13788843239770042385

`A327116(n)-A262805(A006720(n))`
-/

namespace A332253.P13788843239770042385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327116 n - A262805 (A006720 n).toNat

end

end A332253.P13788843239770042385

/-!
# A332254: Expansion of e.g.f. 1 / (2 - exp(exp(x) - 1 - x)).

The programs for A332254, there is no canonical definition to state claims against.
-/

/-! ## A332254.P12783942064537212016

`A004526(A332255(n))+A000296(n)`
-/

namespace A332254.P12783942064537212016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332255 n).toNat + A000296 n

end

end A332254.P12783942064537212016

/-! ## A332254.P8588209010094465717

`A097236((A000038(n)+n)^A260340(n+4))`
-/

namespace A332254.P8588209010094465717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097236 (SequenceMachineLib.roundAway ((A000038 n + (n : ℤ) : ℚ) ^ (A260340 (n + 4) : ℤ))).toNat

end

end A332254.P8588209010094465717

/-! ## A332254.P2803896764863995488

`A106436(A000217(n))+A004526(A332255(n))`
-/

namespace A332254.P2803896764863995488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A000217 n).toNat + A004526 (A332255 n).toNat

end

end A332254.P2803896764863995488

/-!
# A332255: Expansion of e.g.f. 1 / (2 - 1 / (2 + x - exp(x))).

The programs for A332255, there is no canonical definition to state claims against.
-/

/-! ## A332255.P5568702152111850016

`A193902(A049935(n+1))-A049950(n+1)`
-/

namespace A332255.P5568702152111850016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193902 (A049935 (n + 1)).toNat - A049950 (n + 1)

end

end A332255.P5568702152111850016

/-!
# A332256: Expansion of e.g.f. 1 / (2 - exp(sinh(x))).

The programs for A332256, there is no canonical definition to state claims against.
-/

/-! ## A332256.P5079850856166748725

`A002266(lcm(5, A121587(n+1)))`
-/

namespace A332256.P5079850856166748725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lcm 5 (A121587 (n + 1)))

end

end A332256.P5079850856166748725

/-!
# A332257: E.g.f.: (1 - sinh(x)) / (1 - 2*sinh(x)).

The programs for A332257, there is no canonical definition to state claims against.
-/

/-! ## A332257.P3607706750906706720

`ceil(A000557(n)/2)`
-/

namespace A332257.P3607706750906706720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000557 n : ℚ) / 2⌉

end

end A332257.P3607706750906706720

/-! ## A332257.P14771825096529626247

`ceil(A245155(n)/4)`
-/

namespace A332257.P14771825096529626247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245155 n : ℚ) / 4⌉

end

end A332257.P14771825096529626247

/-! ## A332257.P15862571327981488953

`A000557(round(sqrt(n²+1)))/2`
-/

namespace A332257.P15862571327981488953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000557 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A332257.P15862571327981488953

/-! ## A332257.P13505477587448387099

`A245155(round(sqrt(n²+1)))/4`
-/

namespace A332257.P13505477587448387099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245155 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 4

end

end A332257.P13505477587448387099

/-! ## A332257.P16179487875557509997

`(A000557(n)+A000007(n))/2`
-/

namespace A332257.P16179487875557509997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000557 n + A000007 n : ℚ) / 2

end

end A332257.P16179487875557509997

/-! ## A332257.P13733471471705853574

`(A151878(n)+A000557(n))/2`
-/

namespace A332257.P13733471471705853574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151878 n + A000557 n : ℚ) / 2

end

end A332257.P13733471471705853574

/-! ## A332257.P8609654309099026929

`round((A320352(n)+A000556(n))/2)`
-/

namespace A332257.P8609654309099026929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A320352 n + A000556 n : ℚ) / 2)

end

end A332257.P8609654309099026929

/-! ## A332257.P17727079325534465607

`(abs(A000557(A028310(n))-2)+2)/2`
-/

namespace A332257.P17727079325534465607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A000557 (A028310 n).toNat - 2| + 2 : ℚ) / 2

end

end A332257.P17727079325534465607

/-!
# A332258: Expansion of e.g.f. 1 / (1 + x - sinh(x)).

The programs for A332258, there is no canonical definition to state claims against.
-/

/-! ## A332258.P9832069092792644611

`A009227(n)*A065882(A009283(n))`
-/

namespace A332258.P9832069092792644611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 n * A065882 (A009283 n).toNat

end

end A332258.P9832069092792644611

/-! ## A332258.P9239997019612446341

`A009227(n)*A014709(A346894(n))`
-/

namespace A332258.P9239997019612446341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 n * A014709 (A346894 n).toNat

end

end A332258.P9239997019612446341

/-! ## A332258.P16510236159790165672

`A009227(n)*A134451(A360211(n))`
-/

namespace A332258.P16510236159790165672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 n * A134451 (A360211 n).toNat

end

end A332258.P16510236159790165672

/-! ## A332258.P16237978538693797312

`A009227(n)*A134451(A009227(n)²)`
-/

namespace A332258.P16237978538693797312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 n * A134451 (A009227 n ^ 2).toNat

end

end A332258.P16237978538693797312

/-! ## A332258.P7472177323052985149

`A009227(n)*A275885(A189735(n+1))`
-/

namespace A332258.P7472177323052985149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009227 n * A275885 (A189735 (n + 1)).toNat

end

end A332258.P7472177323052985149

/-!
# A332259: a(n) = n! * [x^n] 1 / (1 - Sum_{d|n} x^d / d!).

The programs for A332259, there is no canonical definition to state claims against.
-/

/-! ## A332259.P750168662409468597

`A117190(A192883(n))`
-/

namespace A332259.P750168662409468597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117190 (A192883 n).toNat

end

end A332259.P750168662409468597

/-! ## A332259.P12368873853666556562

`A325395(A336425(n))`
-/

namespace A332259.P12368873853666556562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (A336425 n).toNat

end

end A332259.P12368873853666556562

/-!
# A332260: Triangle read by rows: T(n,k) is the number of non-isomorphic multiset partitions of weight n whose union is a k-set where each part has a different size.

The programs for A332260, there is no canonical definition to state claims against.
-/

/-! ## A332260.P12485344804524932002

`A287272(A244372(n+1)*A316502(n+2))`
-/

namespace A332260.P12485344804524932002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A244372 (n + 1) * A316502 (n + 2)).toNat

end

end A332260.P12485344804524932002

/-! ## A332260.P15019816724482108959

`A048766(lcm(A055105(n+1), A187829(n+1)))`
-/

namespace A332260.P15019816724482108959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A055105 (n + 1)) (A187829 (n + 1)))

end

end A332260.P15019816724482108959

/-! ## A332260.P6360858300426949693

`A060086(n)+A016389(A167499(n))`
-/

namespace A332260.P6360858300426949693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 n + A016389 (A167499 n).toNat

end

end A332260.P6360858300426949693

/-! ## A332260.P3167274774575403692

`A340995(n)+A170956(A145085(n))`
-/

namespace A332260.P3167274774575403692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 n + A170956 (A145085 n).toNat

end

end A332260.P3167274774575403692

/-! ## A332260.P10677101422132976333

`A261096(A255903(n)%A259441(2*n))`
-/

namespace A332260.P10677101422132976333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261096 (Int.tmod (A255903 n) (A259441 (2 * n))).toNat

end

end A332260.P10677101422132976333

/-!
# A332261: Numbers that yield a prime whenever a '4' is inserted between any two digits.

The programs for A332261, there is no canonical definition to state claims against.
-/

/-! ## A332261.P11160074571888096959

`lt[A225948(A000720(n+1)), A112798(n+2)]`
-/

namespace A332261.P11160074571888096959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (A000720 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332261.P11160074571888096959

/-! ## A332261.P16849082671953093027

`lt[A006003(n), A082796(A371094(n))]`
-/

namespace A332261.P16849082671953093027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082796 (A371094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332261.P16849082671953093027

/-! ## A332261.P8496625598729849922

`lt[A087051(n), A033848(A344971(n+1))]`
-/

namespace A332261.P8496625598729849922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033848 (A344971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332261.P8496625598729849922

/-! ## A332261.P8494402674610117277

`lt[A144432(A005250(n+3)), A217729(n+1)]`
-/

namespace A332261.P8494402674610117277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (A005250 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332261.P8494402674610117277

/-! ## A332261.P8869226789035916558

`lt[A001481(n+1), A008475(A013948(n+5))]`
-/

namespace A332261.P8869226789035916558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A013948 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332261.P8869226789035916558

/-!
# A332262: Maximum position to start a search within the decimal digits of Pi in order to find all numeric strings with length n.

The programs for A332262, there is no canonical definition to state claims against.
-/

/-! ## A332262.P12687091246099400880

`A036903(n+1)-n`
-/

namespace A332262.P12687091246099400880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036903 (n + 1) - (n : ℤ)

end

end A332262.P12687091246099400880

/-! ## A332262.P2640206608590797917

`A080597(n+1)-(n+1)`
-/

namespace A332262.P2640206608590797917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080597 (n + 1) - (n + 1 : ℤ)

end

end A332262.P2640206608590797917

/-! ## A332262.P6074758967237137149

`abs(A036903(abs(Δ[n²]-n))-n)`
-/

namespace A332262.P6074758967237137149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A036903 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat - (n : ℤ))|

end

end A332262.P6074758967237137149

/-! ## A332262.P4185108470624260396

`A176447(2*n)+A036903(n+1)`
-/

namespace A332262.P4185108470624260396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (2 * n) + A036903 (n + 1)

end

end A332262.P4185108470624260396

/-! ## A332262.P6107178416041095836

`∑[A321800(n)]+A036903(n+1)+1`
-/

namespace A332262.P6107178416041095836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A036903 (n + 1) + 1)

end

end A332262.P6107178416041095836

/-!
# A332264: Partial sums of A334136.

The programs for A332264, the canonical program `A332264.P12409925469232935551` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332264 has offset 1).

The definition of A332264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332264.P12409925469232935551

`A143128(n+1)-A024916(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A332264

/-- `A143128(n+1)-A024916(n+1)` -/
def P12409925469232935551.Spec : Prop :=
  ∀ n, P12409925469232935551.a n = A332264 (n + 1)

theorem P12409925469232935551.correct : P12409925469232935551.Spec := by
  intro n
  simp only [A332264, Nat.add_sub_cancel]

end A332264

/-! ## A332264.P16717118187967754314

`A256533(n+1)-A175254(n+1)`
-/

namespace A332264.P16717118187967754314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256533 (n + 1) - A175254 (n + 1)

end

end A332264.P16717118187967754314

namespace A332264

/-- `A256533(n+1)-A175254(n+1)` -/
def P16717118187967754314.Spec : Prop :=
  ∀ n, P16717118187967754314.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P12456601101370670577

`∑[∑{d}[n+1, n*#]]`
-/

namespace A332264.P12456601101370670577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), n * d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P12456601101370670577

namespace A332264

/-- `∑[∑{d}[n+1, n*#]]` -/
def P12456601101370670577.Spec : Prop :=
  ∀ n, (P12456601101370670577.a n : ℤ) = A332264 (n + 1)

end A332264

/-! ## A332264.P13108969749886567363

`∑[n*∑{d}[xor(n, -1), #]]`
-/

namespace A332264.P13108969749886567363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P13108969749886567363

namespace A332264

/-- `∑[n*∑{d}[xor(n, -1), #]]` -/
def P13108969749886567363.Spec : Prop :=
  ∀ n, (P13108969749886567363.a n : ℤ) = A332264 (n + 1)

end A332264

/-! ## A332264.P865923529454180893

`∑[lcm(n, ∑{d}[n+1, lcm(n, #)])]`
-/

namespace A332264.P865923529454180893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∑ d ∈ Nat.divisors (f2 n), Nat.lcm n d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P865923529454180893

namespace A332264

/-- `∑[lcm(n, ∑{d}[n+1, lcm(n, #)])]` -/
def P865923529454180893.Spec : Prop :=
  ∀ n, (P865923529454180893.a n : ℤ) = A332264 (n + 1)

end A332264

/-! ## A332264.P14770947769816313274

`∑[n*∑{d}[2*n-(n-1), #]]`
-/

namespace A332264.P14770947769816313274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P14770947769816313274

namespace A332264

/-- `∑[n*∑{d}[2*n-(n-1), #]]` -/
def P14770947769816313274.Spec : Prop :=
  ∀ n, (P14770947769816313274.a n : ℤ) = A332264 (n + 1)

end A332264

/-! ## A332264.P16855313025676067970

`∑{d}[n+1, n*#]+a(n-1)` with `a(0)=0`
-/

namespace A332264.P16855313025676067970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), n * d + a (n - 1)

end

end A332264.P16855313025676067970

namespace A332264

/-- `∑{d}[n+1, n*#]+a(n-1)` -/
def P16855313025676067970.Spec : Prop :=
  ∀ n, (P16855313025676067970.a n : ℤ) = A332264 (n + 1)

end A332264

/-! ## A332264.P4761007975558595035

`∑[A334136(n+1)]`
-/

namespace A332264.P4761007975558595035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P4761007975558595035

namespace A332264

/-- `∑[A334136(n+1)]` -/
def P4761007975558595035.Spec : Prop :=
  ∀ n, P4761007975558595035.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P5804482560935938575

`∑[n*Δ[A160664(n)]]`
-/

namespace A332264.P5804482560935938575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P5804482560935938575

namespace A332264

/-- `∑[n*Δ[A160664(n)]]` -/
def P5804482560935938575.Spec : Prop :=
  ∀ n, P5804482560935938575.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P7804858763163302848

`∑[n*A000203(n+1)]`
-/

namespace A332264.P7804858763163302848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P7804858763163302848

namespace A332264

/-- `∑[n*A000203(n+1)]` -/
def P7804858763163302848.Spec : Prop :=
  ∀ n, P7804858763163302848.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P18091146386221478153

`∑[abs(n*A143348(n+1))]`
-/

namespace A332264.P18091146386221478153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A143348 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P18091146386221478153

namespace A332264

/-- `∑[abs(n*A143348(n+1))]` -/
def P18091146386221478153.Spec : Prop :=
  ∀ n, P18091146386221478153.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P4469747730076416446

`∑[n*sqrt(A072861(n+1))]`
-/

namespace A332264.P4469747730076416446
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P4469747730076416446

namespace A332264

/-- `∑[n*sqrt(A072861(n+1))]` -/
def P4469747730076416446.Spec : Prop :=
  ∀ n, P4469747730076416446.a n = (A332264 (n + 1) : ℝ)

end A332264

/-! ## A332264.P14138118641360000251

`∑[n*∑[A340793(n+1)]]`
-/

namespace A332264.P14138118641360000251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P14138118641360000251

namespace A332264

/-- `∑[n*∑[A340793(n+1)]]` -/
def P14138118641360000251.Spec : Prop :=
  ∀ n, P14138118641360000251.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P1642761231543980111

`∑[n*(A088580(n+1)-1)]`
-/

namespace A332264.P1642761231543980111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A088580 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P1642761231543980111

namespace A332264

/-- `∑[n*(A088580(n+1)-1)]` -/
def P1642761231543980111.Spec : Prop :=
  ∀ n, P1642761231543980111.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P12756680219449582573

`∑[n*A245092(2*n+1)]`
-/

namespace A332264.P12756680219449582573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P12756680219449582573

namespace A332264

/-- `∑[n*A245092(2*n+1)]` -/
def P12756680219449582573.Spec : Prop :=
  ∀ n, P12756680219449582573.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P13975306198148709041

`∑[n/2*A074400(n+1)]`
-/

namespace A332264.P13975306198148709041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A074400 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P13975306198148709041

namespace A332264

/-- `∑[n/2*A074400(n+1)]` -/
def P13975306198148709041.Spec : Prop :=
  ∀ n, P13975306198148709041.a n = (A332264 (n + 1) : ℚ)

end A332264

/-! ## A332264.P750527340809157442

`∑[n*(A001065(n+1)+1+n)]`
-/

namespace A332264.P750527340809157442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001065 (n + 1) + 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P750527340809157442

namespace A332264

/-- `∑[n*(A001065(n+1)+1+n)]` -/
def P750527340809157442.Spec : Prop :=
  ∀ n, P750527340809157442.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P6593557308236157857

`∑[n*(A155085(n+1)-(n+1))]`
-/

namespace A332264.P6593557308236157857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A155085 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332264.P6593557308236157857

namespace A332264

/-- `∑[n*(A155085(n+1)-(n+1))]` -/
def P6593557308236157857.Spec : Prop :=
  ∀ n, P6593557308236157857.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P12322681355405213175

`a(n-1)+n*A000203(C(n+1, n))` with `a(0)=0`
-/

namespace A332264.P12322681355405213175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A000203 (Nat.choose (n + 1) n)

end

end A332264.P12322681355405213175

namespace A332264

/-- `a(n-1)+n*A000203(C(n+1, n))` -/
def P12322681355405213175.Spec : Prop :=
  ∀ n, P12322681355405213175.a n = A332264 (n + 1)

end A332264

/-! ## A332264.P7984584250280815470

`a(n-1)+n*A000203(2*n+1-n)` with `a(0)=0`
-/

namespace A332264.P7984584250280815470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A000203 (2 * n + 1 - n)

end

end A332264.P7984584250280815470

namespace A332264

/-- `a(n-1)+n*A000203(2*n+1-n)` -/
def P7984584250280815470.Spec : Prop :=
  ∀ n, P7984584250280815470.a n = A332264 (n + 1)

end A332264

/-!
# A332267: a(1) = 1; a(2) = 2; for n > 2, if a(n-1) > a(n-2) then a(n) = a(n-1) - a(n-2), otherwise a(n) = number of occurrences of a(n-1).

The programs for A332267, there is no canonical definition to state claims against.
-/

/-! ## A332267.P10904362645286961552

`A062756(∪[A011782(2*n+3), A048488(n)])`
-/

namespace A332267.P10904362645286961552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A332267.P10904362645286961552

/-! ## A332267.P8698077074980387141

`A139351(A100361(n+1))+A054522(n+1)`
-/

namespace A332267.P8698077074980387141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A100361 (n + 1)).toNat + A054522 (n + 1)

end

end A332267.P8698077074980387141

/-! ## A332267.P14299910820125974377

`A240471(A282362(n+1)+1)`
-/

namespace A332267.P14299910820125974377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (A282362 (n + 1) + 1).toNat

end

end A332267.P14299910820125974377

/-! ## A332267.P14404879711624263895

`A002828(or((n+1)², A325578(n)))`
-/

namespace A332267.P14404879711624263895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.lor ((n + 1) ^ 2 : ℤ) (A325578 n)).toNat

end

end A332267.P14404879711624263895

/-! ## A332267.P16971226648734676908

`A001221(A000032(2*n)-∑[2^n-3])`
-/

namespace A332267.P16971226648734676908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000032 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332267.P16971226648734676908

/-!
# A332268: a(n) is the number of divisors of n that are Niven numbers.

The programs for A332268, the canonical program `A332268.P2564217565351011238` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332268 has offset 1).

The definition of A332268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332268.P2564217565351011238

`∑{d}[n+1, A188641(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332268

/-- `∑{d}[n+1, A188641(#)]` -/
def P2564217565351011238.Spec : Prop :=
  ∀ n, P2564217565351011238.a n = A332268 (n + 1)

theorem P2564217565351011238.correct : P2564217565351011238.Spec := by
  intro n
  simp only [A332268, Nat.add_sub_cancel]

end A332268

/-! ## A332268.P8499895432615571686

`∑{d}[n+1, A000007(A070635(#))]`
-/

namespace A332268.P8499895432615571686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (A070635 d).toNat

end

end A332268.P8499895432615571686

namespace A332268

/-- `∑{d}[n+1, A000007(A070635(#))]` -/
def P8499895432615571686.Spec : Prop :=
  ∀ n, P8499895432615571686.a n = A332268 (n + 1)

end A332268

/-! ## A332268.P1122397000017845919

`∑{d}[A000027(n+1), A088157(A070635(#))]`
-/

namespace A332268.P1122397000017845919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A088157 (A070635 d).toNat

end

end A332268.P1122397000017845919

namespace A332268

/-- `∑{d}[A000027(n+1), A088157(A070635(#))]` -/
def P1122397000017845919.Spec : Prop :=
  ∀ n, P1122397000017845919.a n = A332268 (n + 1)

end A332268

/-! ## A332268.P6379129859717642680

`A307070(∏{d}[n+1, A188641(#)+1])`
-/

namespace A332268.P6379129859717642680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307070 (∏ d ∈ Nat.divisors (f1 n), (A188641 d + 1)).toNat

end

end A332268.P6379129859717642680

namespace A332268

/-- `A307070(∏{d}[n+1, A188641(#)+1])` -/
def P6379129859717642680.Spec : Prop :=
  ∀ n, P6379129859717642680.a n = A332268 (n + 1)

end A332268

/-! ## A332268.P13392699570540329587

`A355302(A355596(A355596(A355595(A358099(n+1)))))`
-/

namespace A332268.P13392699570540329587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355302 (A355596 (A355596 (A355595 (A358099 (n + 1)).toNat).toNat).toNat).toNat

end

end A332268.P13392699570540329587

namespace A332268

/-- `A355302(A355596(A355596(A355595(A358099(n+1)))))` -/
def P13392699570540329587.Spec : Prop :=
  ∀ n, P13392699570540329587.a n = A332268 (n + 1)

end A332268

/-!
# A332269: Numbers m with only one divisor d such that sqrt(m) < d < m.

The programs for A332269, the canonical program `A332269.P10183402854127300414` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332269 has offset 1).

The definition of A332269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332269.P15746325018635302787

`eq[2, A316364(n+1)]+1`
-/

namespace A332269.P15746325018635302787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332269.P15746325018635302787

namespace A332269

/-- `eq[2, A316364(n+1)]+1` -/
def P15746325018635302787.Spec : Prop :=
  ∀ n, (P15746325018635302787.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P10064711569188566475

`eq[5, or(1, A000005(n+1))]+1`
-/

namespace A332269.P10064711569188566475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332269.P10064711569188566475

namespace A332269

/-- `eq[5, or(1, A000005(n+1))]+1` -/
def P10064711569188566475.Spec : Prop :=
  ∀ n, (P10064711569188566475.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P10183402854127300414

`∪[A030513(n+1), A030514(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A332269

/-- `∪[A030513(n+1), A030514(n+1)]` -/
def P10183402854127300414.Spec : Prop :=
  ∀ n, (P10183402854127300414.a n : ℤ) = A332269 (n + 1)

theorem P10183402854127300414.correct : P10183402854127300414.Spec := by
  intro n
  simp only [A332269, Nat.add_sub_cancel]

end A332269

/-! ## A332269.P12925254254771500224

`∪[A030078(n+1), A068993(n+1)]`
-/

namespace A332269.P12925254254771500224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P12925254254771500224

namespace A332269

/-- `∪[A030078(n+1), A068993(n+1)]` -/
def P12925254254771500224.Spec : Prop :=
  ∀ n, (P12925254254771500224.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P7925540597313356715

`∪[A030513(n+1), A068993(n+1)]`
-/

namespace A332269.P7925540597313356715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P7925540597313356715

namespace A332269

/-- `∪[A030513(n+1), A068993(n+1)]` -/
def P7925540597313356715.Spec : Prop :=
  ∀ n, (P7925540597313356715.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P12611193793397813476

`∪[A051751(n+1), A068993(n+1)]`
-/

namespace A332269.P12611193793397813476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P12611193793397813476

namespace A332269

/-- `∪[A051751(n+1), A068993(n+1)]` -/
def P12611193793397813476.Spec : Prop :=
  ∀ n, (P12611193793397813476.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P1515595993273016062

`∪[A001248(n+1)², A030513(n+1)]`
-/

namespace A332269.P1515595993273016062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P1515595993273016062

namespace A332269

/-- `∪[A001248(n+1)², A030513(n+1)]` -/
def P1515595993273016062.Spec : Prop :=
  ∀ n, (P1515595993273016062.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P7666726873078309513

`∪[A000040(n+1)²², A030513(n+1)]`
-/

namespace A332269.P7666726873078309513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P7666726873078309513

namespace A332269

/-- `∪[A000040(n+1)²², A030513(n+1)]` -/
def P7666726873078309513.Spec : Prop :=
  ∀ n, (P7666726873078309513.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P4540617479004729318

`∪[A030513(n+1), A070159(n+1)²²]`
-/

namespace A332269.P4540617479004729318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070159 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P4540617479004729318

namespace A332269

/-- `∪[A030513(n+1), A070159(n+1)²²]` -/
def P4540617479004729318.Spec : Prop :=
  ∀ n, (P4540617479004729318.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P11958469822765478254

`eq[13, or(5, A226602(n))]`
-/

namespace A332269.P11958469822765478254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (A226602 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332269.P11958469822765478254

namespace A332269

/-- `eq[13, or(5, A226602(n))]` -/
def P11958469822765478254.Spec : Prop :=
  ∀ n, (P11958469822765478254.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P5196689473526037810

`∩[A289555(n+1), A319238(n+1)]`
-/

namespace A332269.P5196689473526037810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P5196689473526037810

namespace A332269

/-- `∩[A289555(n+1), A319238(n+1)]` -/
def P5196689473526037810.Spec : Prop :=
  ∀ n, (P5196689473526037810.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P12610051825884345455

`∩[A166718(n+1), A319238(n+1)]`
-/

namespace A332269.P12610051825884345455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P12610051825884345455

namespace A332269

/-- `∩[A166718(n+1), A319238(n+1)]` -/
def P12610051825884345455.Spec : Prop :=
  ∀ n, (P12610051825884345455.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P236874737790526455

`lt[xor(4, ∏{e}[n, #+1]), 2]`
-/

namespace A332269.P236874737790526455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A332269.P236874737790526455

namespace A332269

/-- `lt[xor(4, ∏{e}[n, #+1]), 2]` -/
def P236874737790526455.Spec : Prop :=
  ∀ n, (P236874737790526455.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P16655476001944704687

`eq[20, or(4, A145154(n))]`
-/

namespace A332269.P16655476001944704687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A145154 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332269.P16655476001944704687

namespace A332269

/-- `eq[20, or(4, A145154(n))]` -/
def P16655476001944704687.Spec : Prop :=
  ∀ n, (P16655476001944704687.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P4001750835380838428

`eq[3, ceil(sqrt(A319410(n)))]`
-/

namespace A332269.P4001750835380838428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A319410 n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332269.P4001750835380838428

namespace A332269

/-- `eq[3, ceil(sqrt(A319410(n)))]` -/
def P4001750835380838428.Spec : Prop :=
  ∀ n, (P4001750835380838428.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P17757160301738612153

`eq[6, dr(A032741(n)!)]`
-/

namespace A332269.P17757160301738612153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.factorial (A032741 n).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332269.P17757160301738612153

namespace A332269

/-- `eq[6, dr(A032741(n)!)]` -/
def P17757160301738612153.Spec : Prop :=
  ∀ n, (P17757160301738612153.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P16056047396266639405

`eq[1, A088434(n+1)]+1`
-/

namespace A332269.P16056047396266639405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332269.P16056047396266639405

namespace A332269

/-- `eq[1, A088434(n+1)]+1` -/
def P16056047396266639405.Spec : Prop :=
  ∀ n, (P16056047396266639405.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P12665294683086004108

`eq[2, A045778(n+1)]+1`
-/

namespace A332269.P12665294683086004108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332269.P12665294683086004108

namespace A332269

/-- `eq[2, A045778(n+1)]+1` -/
def P12665294683086004108.Spec : Prop :=
  ∀ n, (P12665294683086004108.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P14110595608878509633

`eq[2, A056924(n+1)]+1`
-/

namespace A332269.P14110595608878509633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332269.P14110595608878509633

namespace A332269

/-- `eq[2, A056924(n+1)]+1` -/
def P14110595608878509633.Spec : Prop :=
  ∀ n, (P14110595608878509633.a n : ℤ) = A332269 (n + 1)

end A332269

/-! ## A332269.P6472685639763748726

`eq[2, A238950(n+1)]+1`
-/

namespace A332269.P6472685639763748726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332269.P6472685639763748726

namespace A332269

/-- `eq[2, A238950(n+1)]+1` -/
def P6472685639763748726.Spec : Prop :=
  ∀ n, (P6472685639763748726.a n : ℤ) = A332269 (n + 1)

end A332269

/-!
# A332271: a(n) is the smallest positive integer that is not a divisor of the n-th highly composite number (A002182).

The programs for A332271, there is no canonical definition to state claims against.
-/

/-! ## A332271.P15789942414343763758

`A328457(A002182(n+1))+2`
-/

namespace A332271.P15789942414343763758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (A002182 (n + 1)).toNat + 2

end

end A332271.P15789942414343763758

/-! ## A332271.P1911456156228962141

`A067131(sqrt(A046952(n+1)))+1`
-/

namespace A332271.P1911456156228962141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ))).toNat + 1

end

end A332271.P1911456156228962141

/-! ## A332271.P13953575795304449577

`A117567(3*n)+A067131(A002182(n+1))`
-/

namespace A332271.P13953575795304449577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117567 (3 * n) + A067131 (A002182 (n + 1)).toNat

end

end A332271.P13953575795304449577

/-! ## A332271.P12442381513894658623

`A067131(A301413(n+1)*A319865(n+1))+1`
-/

namespace A332271.P12442381513894658623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A301413 (n + 1) * A319865 (n + 1)).toNat + 1

end

end A332271.P12442381513894658623

/-!
# A332272: Number of narrowly recursively normal integer partitions of n.

The programs for A332272, there is no canonical definition to state claims against.
-/

/-! ## A332272.P12711613407098468342

`∑{d}[n, (n+1)%#]+A317491(n)-A157928(n)`
-/

namespace A332272.P12711613407098468342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (n + 1) % d : ℕ) : ℤ) + (A317491 n - A157928 n)

end

end A332272.P12711613407098468342

/-! ## A332272.P6759002065965075189

`A317491(n)+A070824(A233583(n+1))`
-/

namespace A332272.P6759002065965075189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317491 n + A070824 (A233583 (n + 1)).toNat

end

end A332272.P6759002065965075189

/-! ## A332272.P4546002383885675539

`A032741(n)+A317491(n)-A157928(n)`
-/

namespace A332272.P4546002383885675539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A317491 n - A157928 n)

end

end A332272.P4546002383885675539

/-! ## A332272.P1292129344178834105

`A347697(A130781(n)+A077940(n))`
-/

namespace A332272.P1292129344178834105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A130781 n + A077940 n).toNat

end

end A332272.P1292129344178834105

/-! ## A332272.P3564922074544859271

`A105224(5*A133732(2*n+1))`
-/

namespace A332272.P3564922074544859271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (5 * A133732 (2 * n + 1)).toNat

end

end A332272.P3564922074544859271

/-!
# A332273: Sizes of maximal weakly decreasing subsequences of A000002.

The programs for A332273, the canonical program `A332273.P2063564485991035546` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332273 has offset 1).

The definition of A332273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332273.P1112473031443723729

`Δ[A216345(comp[2*(n+1)]+1)]`
-/

namespace A332273.P1112473031443723729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332273.P1112473031443723729

namespace A332273

/-- `Δ[A216345(comp[2*(n+1)]+1)]` -/
def P1112473031443723729.Spec : Prop :=
  ∀ n, P1112473031443723729.a n = A332273 (n + 1)

end A332273

/-! ## A332273.P2063564485991035546

`abs(Δ[A216345(A004277(n))])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A332273

/-- `abs(Δ[A216345(A004277(n))])` -/
def P2063564485991035546.Spec : Prop :=
  ∀ n, P2063564485991035546.a n = A332273 (n + 1)

theorem P2063564485991035546.correct : P2063564485991035546.Spec := by
  intro n
  simp only [A332273, Nat.add_sub_cancel]

end A332273

/-! ## A332273.P11235701484339278918

`abs(Δ[A216345(A028310(2*n))])`
-/

namespace A332273.P11235701484339278918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A332273.P11235701484339278918

namespace A332273

/-- `abs(Δ[A216345(A028310(2*n))])` -/
def P11235701484339278918.Spec : Prop :=
  ∀ n, P11235701484339278918.a n = A332273 (n + 1)

end A332273

/-! ## A332273.P11720114580331927017

`A216345(2*(n+1))-A216345(A004277(n))`
-/

namespace A332273.P11720114580331927017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 1)) - A216345 (A004277 n).toNat

end

end A332273.P11720114580331927017

namespace A332273

/-- `A216345(2*(n+1))-A216345(A004277(n))` -/
def P11720114580331927017.Spec : Prop :=
  ∀ n, P11720114580331927017.a n = A332273 (n + 1)

end A332273

/-! ## A332273.P11164490053998228768

`A216345(2*(n+1))-A216345(A028310(2*n))`
-/

namespace A332273.P11164490053998228768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 1)) - A216345 (A028310 (2 * n)).toNat

end

end A332273.P11164490053998228768

namespace A332273

/-- `A216345(2*(n+1))-A216345(A028310(2*n))` -/
def P11164490053998228768.Spec : Prop :=
  ∀ n, P11164490053998228768.a n = A332273 (n + 1)

end A332273

/-! ## A332273.P2894600518367635304

`Δ[lt[A057427(n), A100808(n+1)]]`
-/

namespace A332273.P2894600518367635304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A332273.P2894600518367635304

namespace A332273

/-- `Δ[lt[A057427(n), A100808(n+1)]]` -/
def P2894600518367635304.Spec : Prop :=
  ∀ n, P2894600518367635304.a n = A332273 (n + 1)

end A332273

/-! ## A332273.P839400156681586876

`A216345(2*(n+1))-A216345(record[A220080(n+1)])`
-/

namespace A332273.P839400156681586876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 1)) - A216345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332273.P839400156681586876

namespace A332273

/-- `A216345(2*(n+1))-A216345(record[A220080(n+1)])` -/
def P839400156681586876.Spec : Prop :=
  ∀ n, P839400156681586876.a n = A332273 (n + 1)

end A332273

/-! ## A332273.P7384685180216528886

`Δ[record[A216345(A220080(n+1))]]`
-/

namespace A332273.P7384685180216528886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (A220080 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332273.P7384685180216528886

namespace A332273

/-- `Δ[record[A216345(A220080(n+1))]]` -/
def P7384685180216528886.Spec : Prop :=
  ∀ n, P7384685180216528886.a n = A332273 (n + 1)

end A332273

/-!
# A332274: Number of totally strong compositions of n.

The programs for A332274, there is no canonical definition to state claims against.
-/

/-! ## A332274.P15644154332056139138

`A280951(A055999(n)-A326395(n+1))`
-/

namespace A332274.P15644154332056139138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A055999 n - A326395 (n + 1)).toNat

end

end A332274.P15644154332056139138

/-! ## A332274.P18112852727959638332

`A329200(A089259(n))`
-/

namespace A332274.P18112852727959638332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A089259 n).toNat

end

end A332274.P18112852727959638332

/-! ## A332274.P16418909632597683953

`A274631(A024367(n+1))`
-/

namespace A332274.P16418909632597683953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274631 (A024367 (n + 1)).toNat

end

end A332274.P16418909632597683953

/-! ## A332274.P16003191741907314831

`A355855(A393488(n+1))`
-/

namespace A332274.P16003191741907314831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355855 (A393488 (n + 1)).toNat

end

end A332274.P16003191741907314831

/-! ## A332274.P10065803359799019505

`A338466(A074045(n))+∑[∑{d}[n, #%2]]-n`
-/

namespace A332274.P10065803359799019505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A074045 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A332274.P10065803359799019505

/-!
# A332275: Number of totally co-strong integer partitions of n.

The programs for A332275, there is no canonical definition to state claims against.
-/

/-! ## A332275.P12689288491283560854

`A342515(∑[A326486(n)])`
-/

namespace A332275.P12689288491283560854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332275.P12689288491283560854

/-!
# A332278: Number of widely totally co-strongly normal integer partitions of n.

The programs for A332278, there is no canonical definition to state claims against.
-/

/-! ## A332278.P5874668455614734067

`A051903(or(A000032(n), A175746(n+1)))`
-/

namespace A332278.P5874668455614734067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lor (A000032 n) (A175746 (n + 1))).toNat

end

end A332278.P5874668455614734067

/-! ## A332278.P3027971131883280993

`A055229(∑[∑{e}[n+1, #]+1]*A317611(n+1))`
-/

namespace A332278.P3027971131883280993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A317611 (n + 1)).toNat

end

end A332278.P3027971131883280993

/-! ## A332278.P5777560569655650962

`gcd(A108337(A317383(n+1)), A332398(n))`
-/

namespace A332278.P5777560569655650962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108337 (A317383 (n + 1)).toNat) (A332398 n)

end

end A332278.P5777560569655650962

/-! ## A332278.P17913372449897221667

`A373125(n)+A010054(A371731(3*n+4))`
-/

namespace A332278.P17913372449897221667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 n + A010054 (A371731 (3 * n + 4)).toNat

end

end A332278.P17913372449897221667

/-! ## A332278.P17262748633136265587

`gcd(A004275(A087707(n+1)), A353941(n+3))`
-/

namespace A332278.P17262748633136265587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004275 (A087707 (n + 1)).toNat) (A353941 (n + 3))

end

end A332278.P17262748633136265587

/-!
# A332279: Number of widely totally normal compositions of n.

The programs for A332279, there is no canonical definition to state claims against.
-/

/-! ## A332279.P16609716334379689943

`A332296(n)-floor(atan(n))`
-/

namespace A332279.P16609716334379689943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332296 n - ⌊Real.arctan (n : ℝ)⌋

end

end A332279.P16609716334379689943

/-! ## A332279.P9973340550297389489

`A332296(round(acot(n)+n))-1`
-/

namespace A332279.P9973340550297389489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332296 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A332279.P9973340550297389489

/-! ## A332279.P4052587053734137560

`A332296(char[1]+n)-ceil(n/63)`
-/

namespace A332279.P4052587053734137560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332296 ((if ∃ j, f1 j = n then 1 else 0) + n) - ⌈(n : ℚ) / 63⌉

end

end A332279.P4052587053734137560

/-! ## A332279.P15988225914113289427

`A019590(n+1)+A332296(n)-1`
-/

namespace A332279.P15988225914113289427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A332296 n - 1)

end

end A332279.P15988225914113289427

/-! ## A332279.P7530869070211094091

`A332296(n)+A000007(n²-n)-1`
-/

namespace A332279.P7530869070211094091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332296 n + A000007 (n ^ 2 - n) - 1

end

end A332279.P7530869070211094091

/-!
# A332280: Number of integer partitions of n with unimodal run-lengths.

The programs for A332280, there is no canonical definition to state claims against.
-/

/-! ## A332280.P18160907428708348011

`A000041(n)-A332281(n)`
-/

namespace A332280.P18160907428708348011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332281 n

end

end A332280.P18160907428708348011

/-! ## A332280.P3638061145909114437

`∑[A002865(n)]-A332281(n)`
-/

namespace A332280.P3638061145909114437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332281 n

end

end A332280.P3638061145909114437

/-! ## A332280.P5842154582315224114

`A035363(2*n)-A332281(n)`
-/

namespace A332280.P5842154582315224114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A332281 n

end

end A332280.P5842154582315224114

/-! ## A332280.P4423537854618743057

`A035377(3*n)-A332281(n)`
-/

namespace A332280.P4423537854618743057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A332281 n

end

end A332280.P4423537854618743057

/-! ## A332280.P14639559247828212925

`A139582(n)/2-A332281(n)`
-/

namespace A332280.P14639559247828212925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A332281 n : ℚ)

end

end A332280.P14639559247828212925

/-! ## A332280.P5473706733891541662

`A133041(n)-(A332281(n)+n)`
-/

namespace A332280.P5473706733891541662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A332281 n + (n : ℤ))

end

end A332280.P5473706733891541662

/-! ## A332280.P2857707556994909803

`∑[A085811(n+3)]-A332281(n)`
-/

namespace A332280.P2857707556994909803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332281 n

end

end A332280.P2857707556994909803

/-! ## A332280.P14201108493100752654

`∑[A232697(n)]-(A332281(n)+n)`
-/

namespace A332280.P14201108493100752654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A332281 n + (n : ℤ))

end

end A332280.P14201108493100752654

/-! ## A332280.P4381908827947214819

`A000009(n)+A047967(n)-A332281(n)`
-/

namespace A332280.P4381908827947214819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A332281 n)

end

end A332280.P4381908827947214819

/-! ## A332280.P12092312957458144162

`A027187(n)+A027193(n)-A332281(n)`
-/

namespace A332280.P12092312957458144162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A332281 n)

end

end A332280.P12092312957458144162

/-! ## A332280.P16417537013874899062

`A000726(n)+A295341(n)-A332281(n)`
-/

namespace A332280.P16417537013874899062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A332281 n)

end

end A332280.P16417537013874899062

/-! ## A332280.P12245373127199658884

`A239259(n)+A239263(n)-A332281(n)`
-/

namespace A332280.P12245373127199658884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A332281 n)

end

end A332280.P12245373127199658884

/-! ## A332280.P5163050256430655801

`A239260(n)+A239262(n)-A332281(n)`
-/

namespace A332280.P5163050256430655801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A332281 n)

end

end A332280.P5163050256430655801

/-! ## A332280.P6542300882597244976

`A143229(n)/A000070(n)-A332281(n)`
-/

namespace A332280.P6542300882597244976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A332281 n : ℚ)

end

end A332280.P6542300882597244976

/-! ## A332280.P9023037034834664617

`A332283(n)+A332284(n)-A332281(n)`
-/

namespace A332280.P9023037034834664617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A332281 n)

end

end A332280.P9023037034834664617

/-! ## A332280.P12862998578809981761

`A238343(∑[n])-A332281(n)`
-/

namespace A332280.P12862998578809981761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (∑ j ∈ Finset.range (n + 1), f1 j) - A332281 n

end

end A332280.P12862998578809981761

/-! ## A332280.P2525004828357840939

`A237667(n)+A237668(n)-A332281(n)`
-/

namespace A332280.P2525004828357840939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A332281 n)

end

end A332280.P2525004828357840939

/-!
# A332281: Number of integer partitions of n whose run-lengths are not unimodal.

The programs for A332281, there is no canonical definition to state claims against.
-/

/-! ## A332281.P8959507139135330582

`A000041(n)-A332280(n)`
-/

namespace A332281.P8959507139135330582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332280 n

end

end A332281.P8959507139135330582

/-! ## A332281.P14078366974712331140

`sqrt(A001255(n))-A332280(n)`
-/

namespace A332281.P14078366974712331140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A332280 n : ℝ)

end

end A332281.P14078366974712331140

/-! ## A332281.P11926008181297751942

`∑[A002865(n)]-A332280(n)`
-/

namespace A332281.P11926008181297751942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332280 n

end

end A332281.P11926008181297751942

/-! ## A332281.P12057490920038823950

`A035363(2*n)-A332280(n)`
-/

namespace A332281.P12057490920038823950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A332280 n

end

end A332281.P12057490920038823950

/-! ## A332281.P10125312746686951951

`∑[A085811(n+3)]-A332280(n)`
-/

namespace A332281.P10125312746686951951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332280 n

end

end A332281.P10125312746686951951

/-! ## A332281.P12736413429273369016

`∑[A232697(n)]-(A332280(n)+n)`
-/

namespace A332281.P12736413429273369016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A332280 n + (n : ℤ))

end

end A332281.P12736413429273369016

/-! ## A332281.P10268244371971392188

`A000009(n)+A047967(n)-A332280(n)`
-/

namespace A332281.P10268244371971392188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A332280 n)

end

end A332281.P10268244371971392188

/-! ## A332281.P10622938174271259357

`A027187(n)+A027193(n)-A332280(n)`
-/

namespace A332281.P10622938174271259357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A332280 n)

end

end A332281.P10622938174271259357

/-! ## A332281.P13635058149572686901

`A000726(n)+A295341(n)-A332280(n)`
-/

namespace A332281.P13635058149572686901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A332280 n)

end

end A332281.P13635058149572686901

/-! ## A332281.P2475450620403708050

`A239259(n)+A239263(n)-A332280(n)`
-/

namespace A332281.P2475450620403708050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A332280 n)

end

end A332281.P2475450620403708050

/-! ## A332281.P1900979331647521935

`A239260(n)+A239262(n)-A332280(n)`
-/

namespace A332281.P1900979331647521935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A332280 n)

end

end A332281.P1900979331647521935

/-! ## A332281.P9165389486020309393

`A143229(n)/A000070(n)-A332280(n)`
-/

namespace A332281.P9165389486020309393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A332280 n : ℚ)

end

end A332281.P9165389486020309393

/-! ## A332281.P14385324353388563219

`A332728(n)+A332744(n)-A332280(n)`
-/

namespace A332281.P14385324353388563219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332728 n + (A332744 n - A332280 n)

end

end A332281.P14385324353388563219

/-! ## A332281.P14979456183931879985

`A332283(n)+A332284(n)-A332280(n)`
-/

namespace A332281.P14979456183931879985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n + (A332284 n - A332280 n)

end

end A332281.P14979456183931879985

/-! ## A332281.P7648080730803334375

`A299769(A000124(n))-A332280(n)`
-/

namespace A332281.P7648080730803334375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299769 (A000124 n).toNat - A332280 n

end

end A332281.P7648080730803334375

/-! ## A332281.P12740455207395789865

`A237667(n)+A237668(n)-A332280(n)`
-/

namespace A332281.P12740455207395789865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A332280 n)

end

end A332281.P12740455207395789865

/-!
# A332282: Numbers whose unsorted prime signature is not unimodal.

The programs for A332282, there is no canonical definition to state claims against.
-/

/-! ## A332282.P15085687798149775720

`filter[A332831(n+1), A319988(#)]`
-/

namespace A332282.P15085687798149775720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A332282.P15085687798149775720

/-!
# A332283: Number of integer partitions of n whose first differences (assuming the last part is zero) are unimodal.

The programs for A332283, there is no canonical definition to state claims against.
-/

/-! ## A332283.P8259681015673495128

`A000041(n)-A332284(n)`
-/

namespace A332283.P8259681015673495128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332284 n

end

end A332283.P8259681015673495128

/-! ## A332283.P1625040975328016811

`∑[A002865(n)]-A332284(n)`
-/

namespace A332283.P1625040975328016811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332284 n

end

end A332283.P1625040975328016811

/-! ## A332283.P3785635955697126361

`A035363(2*n)-A332284(n)`
-/

namespace A332283.P3785635955697126361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A332284 n

end

end A332283.P3785635955697126361

/-! ## A332283.P7255788393493667643

`∑[A085811(n+3)]-A332284(n)`
-/

namespace A332283.P7255788393493667643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332284 n

end

end A332283.P7255788393493667643

/-! ## A332283.P12913683005262801487

`∑[A232697(n)]-(A332284(n)+n)`
-/

namespace A332283.P12913683005262801487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A332284 n + (n : ℤ))

end

end A332283.P12913683005262801487

/-! ## A332283.P2358403249034673039

`A000009(n)+A047967(n)-A332284(n)`
-/

namespace A332283.P2358403249034673039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A332284 n)

end

end A332283.P2358403249034673039

/-! ## A332283.P2926661554538973871

`A027187(n)+A027193(n)-A332284(n)`
-/

namespace A332283.P2926661554538973871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A332284 n)

end

end A332283.P2926661554538973871

/-! ## A332283.P870883823093977692

`A000726(n)+A295341(n)-A332284(n)`
-/

namespace A332283.P870883823093977692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A332284 n)

end

end A332283.P870883823093977692

/-! ## A332283.P12244385010479022055

`A239259(n)+A239263(n)-A332284(n)`
-/

namespace A332283.P12244385010479022055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A332284 n)

end

end A332283.P12244385010479022055

/-! ## A332283.P16949779156628767064

`A239260(n)+A239262(n)-A332284(n)`
-/

namespace A332283.P16949779156628767064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A332284 n)

end

end A332283.P16949779156628767064

/-! ## A332283.P1066941092381232425

`A332280(n)+A332281(n)-A332284(n)`
-/

namespace A332283.P1066941092381232425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A332284 n)

end

end A332283.P1066941092381232425

/-! ## A332283.P8892190838131800776

`A332728(n)+A332744(n)-A332284(n)`
-/

namespace A332283.P8892190838131800776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332728 n + (A332744 n - A332284 n)

end

end A332283.P8892190838131800776

/-! ## A332283.P17084659629924706768

`A143229(n)/A000070(n)-A332284(n)`
-/

namespace A332283.P17084659629924706768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A332284 n : ℚ)

end

end A332283.P17084659629924706768

/-! ## A332283.P4976115905983503555

`A026794(∑[n]+1)-A332284(n)`
-/

namespace A332283.P4976115905983503555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A332284 n

end

end A332283.P4976115905983503555

/-! ## A332283.P8415399204530174236

`A194543(A000217(n))-A332284(n)`
-/

namespace A332283.P8415399204530174236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000217 n).toNat - A332284 n

end

end A332283.P8415399204530174236

/-! ## A332283.P8613145917173589945

`A237667(n)+A237668(n)-A332284(n)`
-/

namespace A332283.P8613145917173589945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A332284 n)

end

end A332283.P8613145917173589945

/-!
# A332284: Number of integer partitions of n whose first differences (assuming the last part is zero) are not unimodal.

The programs for A332284, there is no canonical definition to state claims against.
-/

/-! ## A332284.P8887350615913689929

`A000041(n)-A332283(n)`
-/

namespace A332284.P8887350615913689929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A332283 n

end

end A332284.P8887350615913689929

/-! ## A332284.P17862475415177814302

`∑[A002865(n)]-A332283(n)`
-/

namespace A332284.P17862475415177814302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332283 n

end

end A332284.P17862475415177814302

/-! ## A332284.P13035022303686781133

`A035363(2*n)-A332283(n)`
-/

namespace A332284.P13035022303686781133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A332283 n

end

end A332284.P13035022303686781133

/-! ## A332284.P10012350657280035428

`A133041(n)-(A332283(n)+n)`
-/

namespace A332284.P10012350657280035428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A332283 n + (n : ℤ))

end

end A332284.P10012350657280035428

/-! ## A332284.P10823328664815201707

`∑[A085811(n+3)]-A332283(n)`
-/

namespace A332284.P10823328664815201707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332283 n

end

end A332284.P10823328664815201707

/-! ## A332284.P16279224265432935511

`∑[A232697(n)]-n-A332283(n)`
-/

namespace A332284.P16279224265432935511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - A332283 n

end

end A332284.P16279224265432935511

/-! ## A332284.P11068323015203923313

`A035444(A008586(n))-A332283(n)`
-/

namespace A332284.P11068323015203923313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A332283 n

end

end A332284.P11068323015203923313

/-! ## A332284.P5932626311260112381

`A003106(n)+A039900(n)-A332283(n)`
-/

namespace A332284.P5932626311260112381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A332283 n)

end

end A332284.P5932626311260112381

/-! ## A332284.P220925868880923241

`A000009(n)+A047967(n)-A332283(n)`
-/

namespace A332284.P220925868880923241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A332283 n)

end

end A332284.P220925868880923241

/-! ## A332284.P1249892719047000908

`A027187(n)+A027193(n)-A332283(n)`
-/

namespace A332284.P1249892719047000908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A332283 n)

end

end A332284.P1249892719047000908

/-! ## A332284.P17211428006814892569

`A000726(n)+A295341(n)-A332283(n)`
-/

namespace A332284.P17211428006814892569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A332283 n)

end

end A332284.P17211428006814892569

/-! ## A332284.P155212998473090173

`A239259(n)+A239263(n)-A332283(n)`
-/

namespace A332284.P155212998473090173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A332283 n)

end

end A332284.P155212998473090173

/-! ## A332284.P8852788521913565679

`A239260(n)+A239262(n)-A332283(n)`
-/

namespace A332284.P8852788521913565679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n + (A239262 n - A332283 n)

end

end A332284.P8852788521913565679

/-! ## A332284.P7338267969334184591

`A332280(n)+A332281(n)-A332283(n)`
-/

namespace A332284.P7338267969334184591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A332283 n)

end

end A332284.P7338267969334184591

/-! ## A332284.P449924982808274018

`A143229(n)/A000070(n)-A332283(n)`
-/

namespace A332284.P449924982808274018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A332283 n : ℚ)

end

end A332284.P449924982808274018

/-! ## A332284.P17329878975318538274

`A026794(∑[n]+1)-A332283(n)`
-/

namespace A332284.P17329878975318538274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A332283 n

end

end A332284.P17329878975318538274

/-! ## A332284.P5939495339212995189

`A237667(n)+A237668(n)-A332283(n)`
-/

namespace A332284.P5939495339212995189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237667 n + (A237668 n - A332283 n)

end

end A332284.P5939495339212995189

/-!
# A332285: Number of strict integer partitions of n whose first differences (assuming the last part is zero) are unimodal.

The programs for A332285, there is no canonical definition to state claims against.
-/

/-! ## A332285.P15698154245303681086

`A000009(n)-A332286(n)`
-/

namespace A332285.P15698154245303681086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A332286 n

end

end A332285.P15698154245303681086

/-! ## A332285.P16102429363867910381

`abs(A081360(n))-A332286(n)`
-/

namespace A332285.P16102429363867910381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A332286 n

end

end A332285.P16102429363867910381

/-! ## A332285.P10414891538661653571

`∑[A087897(n)]-A332286(n)`
-/

namespace A332285.P10414891538661653571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332286 n

end

end A332285.P10414891538661653571

/-! ## A332285.P1385597999766526974

`A111133(n)+1-A332286(n)`
-/

namespace A332285.P1385597999766526974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A332286 n)

end

end A332285.P1385597999766526974

/-! ## A332285.P8591707157198887837

`A035457(2*n)-A332286(n)`
-/

namespace A332285.P8591707157198887837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A332286 n

end

end A332285.P8591707157198887837

/-! ## A332285.P14805945072447804638

`A172033(2*n)-A332286(n)`
-/

namespace A332285.P14805945072447804638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A332286 n

end

end A332285.P14805945072447804638

/-! ## A332285.P2639084434772226478

`A025147(n)+A096765(n)-A332286(n)`
-/

namespace A332285.P2639084434772226478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A332286 n)

end

end A332285.P2639084434772226478

/-! ## A332285.P3212372353565938941

`A032303(n)-(A332286(n)+A096765(n))`
-/

namespace A332285.P3212372353565938941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n - (A332286 n + A096765 n)

end

end A332285.P3212372353565938941

/-! ## A332285.P3415345373570329883

`A067659(n)+A067661(n)-A332286(n)`
-/

namespace A332285.P3415345373570329883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A332286 n)

end

end A332285.P3415345373570329883

/-! ## A332285.P6946522488355762962

`A239239(n)+A239243(n)-A332286(n)`
-/

namespace A332285.P6946522488355762962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239243 n - A332286 n)

end

end A332285.P6946522488355762962

/-! ## A332285.P3870632045785237399

`A239240(n)+A239242(n)-A332286(n)`
-/

namespace A332285.P3870632045785237399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239242 n - A332286 n)

end

end A332285.P3870632045785237399

/-! ## A332285.P12561109201607255487

`A116675(A327672(2*n))-A332286(n)`
-/

namespace A332285.P12561109201607255487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116675 (A327672 (2 * n)).toNat - A332286 n

end

end A332285.P12561109201607255487

/-! ## A332285.P7981181143464366505

`A284593(A000217(n))-A332286(n)`
-/

namespace A332285.P7981181143464366505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (A000217 n).toNat - A332286 n

end

end A332285.P7981181143464366505

/-!
# A332286: Number of strict integer partitions of n whose first differences (assuming the last part is zero) are not unimodal.

The programs for A332286, there is no canonical definition to state claims against.
-/

/-! ## A332286.P12028057645217418707

`A000009(n)-A332285(n)`
-/

namespace A332286.P12028057645217418707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A332285 n

end

end A332286.P12028057645217418707

/-! ## A332286.P16988420789957335473

`abs(A081360(n))-A332285(n)`
-/

namespace A332286.P16988420789957335473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A332285 n

end

end A332286.P16988420789957335473

/-! ## A332286.P10036823217805611211

`∑[A087897(n)]-A332285(n)`
-/

namespace A332286.P10036823217805611211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332285 n

end

end A332286.P10036823217805611211

/-! ## A332286.P2240176527018930847

`A111133(n)+1-A332285(n)`
-/

namespace A332286.P2240176527018930847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A332285 n)

end

end A332286.P2240176527018930847

/-! ## A332286.P5053820532072778923

`A035457(2*n)-A332285(n)`
-/

namespace A332286.P5053820532072778923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A332285 n

end

end A332286.P5053820532072778923

/-! ## A332286.P17076421941665897115

`A000041(n)-(A332285(n)+A047967(n))`
-/

namespace A332286.P17076421941665897115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A332285 n + A047967 n)

end

end A332286.P17076421941665897115

/-! ## A332286.P1958297858492180094

`A025147(n)+A096765(n)-A332285(n)`
-/

namespace A332286.P1958297858492180094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A332285 n)

end

end A332286.P1958297858492180094

/-! ## A332286.P10781574290726529183

`A067659(n)+A067661(n)-A332285(n)`
-/

namespace A332286.P10781574290726529183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A332285 n)

end

end A332286.P10781574290726529183

/-! ## A332286.P4164293909081712279

`A003114(n)+A238708(n)-A332285(n)`
-/

namespace A332286.P4164293909081712279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - A332285 n)

end

end A332286.P4164293909081712279

/-! ## A332286.P900115893172645626

`A035363(n)+A282892(n)-A332285(n)`
-/

namespace A332286.P900115893172645626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A282892 n - A332285 n)

end

end A332286.P900115893172645626

/-! ## A332286.P17856438998162606480

`A239239(n)+A239243(n)-A332285(n)`
-/

namespace A332286.P17856438998162606480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239243 n - A332285 n)

end

end A332286.P17856438998162606480

/-! ## A332286.P4805904679200990946

`A239240(n)+A239242(n)-A332285(n)`
-/

namespace A332286.P4805904679200990946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239242 n - A332285 n)

end

end A332286.P4805904679200990946

/-! ## A332286.P18374162144261830783

`A316996(n)+A317239(n)-A332285(n)`
-/

namespace A332286.P18374162144261830783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A332285 n)

end

end A332286.P18374162144261830783

/-! ## A332286.P14737592559995718846

`A219554(n)-(A332285(n)+A331317(n))`
-/

namespace A332286.P14737592559995718846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - (A332285 n + A331317 n)

end

end A332286.P14737592559995718846

/-! ## A332286.P14703614094976804628

`A116675(A327672(2*n))-A332285(n)`
-/

namespace A332286.P14703614094976804628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116675 (A327672 (2 * n)).toNat - A332285 n

end

end A332286.P14703614094976804628

/-! ## A332286.P8101009317372618833

`A219347(A000124(n))-A332285(n)`
-/

namespace A332286.P8101009317372618833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A332285 n

end

end A332286.P8101009317372618833

/-!
# A332287: Heinz numbers of integer partitions whose first differences (assuming the last part is zero) are not unimodal.

The programs for A332287, there is no canonical definition to state claims against.
-/

/-! ## A332287.P4534868451023250767

`A335249(n+1)+A063691(A335251(n+1))`
-/

namespace A332287.P4534868451023250767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335249 (n + 1) + A063691 (A335251 (n + 1)).toNat

end

end A332287.P4534868451023250767

/-!
# A332288: Number of unimodal permutations of the multiset of prime indices of n.

The programs for A332288, there is no canonical definition to state claims against.
-/

/-! ## A332288.P15147883188933343980

`∏{e}[A051119(n+1), #+1]`
-/

namespace A332288.P15147883188933343980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A332288.P15147883188933343980

/-! ## A332288.P15895040881413130654

`∑{d}[A137502(n+1), #%2]`
-/

namespace A332288.P15895040881413130654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A332288.P15895040881413130654

/-! ## A332288.P11810490672099343225

`∏{e}[A243057((n+1)*∏{p}[n+1, #]), #]`
-/

namespace A332288.P11810490672099343225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A332288.P11810490672099343225

/-! ## A332288.P14837846074733041271

`∏{e}[n+1, #+1]/(A071178(n+1)+1)`
-/

namespace A332288.P14837846074733041271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A071178 (n + 1) + 1 : ℚ)

end

end A332288.P14837846074733041271

/-! ## A332288.P1990567903623841490

`A000005(A051119(n+1))`
-/

namespace A332288.P1990567903623841490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051119 (n + 1)).toNat

end

end A332288.P1990567903623841490

/-! ## A332288.P14682084875285961033

`A001227(A137502(n+1))`
-/

namespace A332288.P14682084875285961033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A137502 (n + 1)).toNat

end

end A332288.P14682084875285961033

/-! ## A332288.P4650852385587778720

`A133879(A037916(n+1))`
-/

namespace A332288.P4650852385587778720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133879 (A037916 (n + 1)).toNat

end

end A332288.P4650852385587778720

/-! ## A332288.P7507035984578729487

`A038548(A243057(n+1))`
-/

namespace A332288.P7507035984578729487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A243057 (n + 1)).toNat

end

end A332288.P7507035984578729487

/-! ## A332288.P14251044379819839550

`A038548(A243074(n+1))`
-/

namespace A332288.P14251044379819839550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A243074 (n + 1)).toNat

end

end A332288.P14251044379819839550

/-! ## A332288.P1581248652615649590

`A000267(A376847(n+1))`
-/

namespace A332288.P1581248652615649590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A376847 (n + 1)).toNat

end

end A332288.P1581248652615649590

/-!
# A332289: Number of widely alternately co-strongly normal integer partitions of n.

The programs for A332289, there is no canonical definition to state claims against.
-/

/-! ## A332289.P17403522464371691361

`A300410(A075337(n+1)-A070096(n+1))`
-/

namespace A332289.P17403522464371691361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A075337 (n + 1) - A070096 (n + 1)).toNat

end

end A332289.P17403522464371691361

/-! ## A332289.P1449291491584431387

`A102523(A330575(n+1)+A269518(n))`
-/

namespace A332289.P1449291491584431387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102523 (A330575 (n + 1) + A269518 n).toNat

end

end A332289.P1449291491584431387

/-! ## A332289.P15046560386328881559

`A000120(gcd(A020706(3*n+5), A346447(3*(n+2))))`
-/

namespace A332289.P15046560386328881559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.gcd (A020706 (3 * n + 5)) (A346447 (3 * (n + 2))))

end

end A332289.P15046560386328881559

/-!
# A332290: Heinz numbers of widely alternately co-strongly normal integer partitions.

The programs for A332290, there is no canonical definition to state claims against.
-/

/-! ## A332290.P4251405243893005046

`∩[A317246(n+1), A325238(n+1)]`
-/

namespace A332290.P4251405243893005046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332290.P4251405243893005046

/-! ## A332290.P12720535446012797098

`∩[A325238(n+1), A332276(n+1)]`
-/

namespace A332290.P12720535446012797098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332290.P12720535446012797098

/-! ## A332290.P12770523758991132517

`∩[A317589(n+1), A070175(n)]`
-/

namespace A332290.P12770523758991132517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332290.P12770523758991132517

/-!
# A332291: Heinz numbers of widely totally strongly normal integer partitions.

The programs for A332291, there is no canonical definition to state claims against.
-/

/-! ## A332291.P12680821072646930017

`record[A056926(A304660(n+1))]`
-/

namespace A332291.P12680821072646930017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A304660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332291.P12680821072646930017

/-! ## A332291.P11867178432028748951

`∩[A317589(n+1), A334169(n)]`
-/

namespace A332291.P11867178432028748951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332291.P11867178432028748951

/-! ## A332291.P8616429502076447119

`∩[A325364(n+1), A334169(n)]`
-/

namespace A332291.P8616429502076447119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332291.P8616429502076447119

/-!
# A332292: Number of widely alternately strongly normal integer partitions of n.

The programs for A332292, there is no canonical definition to state claims against.
-/

/-! ## A332292.P287082907352042538

`A282622(gcd(A072796(3*n+2), A145153(n)))`
-/

namespace A332292.P287082907352042538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282622 (Int.gcd (A072796 (3 * n + 2)) (A145153 n))

end

end A332292.P287082907352042538

/-! ## A332292.P8210712320458436253

`A001221(A288212(n+1)-A103516(n))`
-/

namespace A332292.P8210712320458436253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A288212 (n + 1) - A103516 n).toNat

end

end A332292.P8210712320458436253

/-! ## A332292.P17072702021825130040

`A235124(n+2)^A065803(A139526(n+2))`
-/

namespace A332292.P17072702021825130040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235124 (n + 2) : ℚ) ^ (A065803 (A139526 (n + 2)).toNat : ℤ)

end

end A332292.P17072702021825130040

/-! ## A332292.P3637860517353741751

`round(root(A106182(n), A269537(n+1)))`
-/

namespace A332292.P3637860517353741751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A106182 n : ℝ) ^ (1 / (A269537 (n + 1) : ℝ)))

end

end A332292.P3637860517353741751

/-! ## A332292.P4600108626881347348

`round(root(A086608(n+1), A250320(n+1)))`
-/

namespace A332292.P4600108626881347348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086608 (n + 1) : ℝ) ^ (1 / (A250320 (n + 1) : ℝ)))

end

end A332292.P4600108626881347348

/-!
# A332293: Heinz numbers of widely totally co-strongly normal integer partitions.

The programs for A332293, there is no canonical definition to state claims against.
-/

/-! ## A332293.P11471458376177646560

`A332290(A061487(n+1))`
-/

namespace A332293.P11471458376177646560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332290 (A061487 (n + 1)).toNat

end

end A332293.P11471458376177646560

/-! ## A332293.P10310549628904764889

`A332290(A106000(n+1))`
-/

namespace A332293.P10310549628904764889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332290 (A106000 (n + 1)).toNat

end

end A332293.P10310549628904764889

/-! ## A332293.P3312097772912149314

`record[A038388(A077569(n+1))]`
-/

namespace A332293.P3312097772912149314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A077569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332293.P3312097772912149314

/-! ## A332293.P12088126980689687303

`record[A133388(A181821(n+1))]`
-/

namespace A332293.P12088126980689687303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A181821 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332293.P12088126980689687303

/-!
# A332294: Number of unimodal permutations of a multiset whose multiplicities are the prime indices of n.

The programs for A332294, there is no canonical definition to state claims against.
-/

/-! ## A332294.P17472239007547721747

`A332288(A181821(n+1))`
-/

namespace A332294.P17472239007547721747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (A181821 (n + 1)).toNat

end

end A332294.P17472239007547721747

/-! ## A332294.P12916470279010098416

`A064553(A032742(n+1))`
-/

namespace A332294.P12916470279010098416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A032742 (n + 1)).toNat

end

end A332294.P12916470279010098416

/-! ## A332294.P2736044459555194804

`A064553(A054576(2*(n+1)))`
-/

namespace A332294.P2736044459555194804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A054576 (2 * (n + 1))).toNat

end

end A332294.P2736044459555194804

/-! ## A332294.P1691826586586401388

`A064553(A117358(4*(n+1)))`
-/

namespace A332294.P1691826586586401388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A117358 (4 * (n + 1))).toNat

end

end A332294.P1691826586586401388

/-! ## A332294.P4965976395857388463

`A064553(1-A060681(n+1)+n)`
-/

namespace A332294.P4965976395857388463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A332294.P4965976395857388463

/-! ## A332294.P17170122028284594735

`A064553((n+1)/A020639(n+1))`
-/

namespace A332294.P17170122028284594735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A332294.P17170122028284594735

/-! ## A332294.P3392886033876039608

`A064553(gcd(n+1, A060681(n+1)))`
-/

namespace A332294.P3392886033876039608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)))

end

end A332294.P3392886033876039608

/-! ## A332294.P16973184809912729575

`A064553(n+1)/A347403((n+1)²)`
-/

namespace A332294.P16973184809912729575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064553 (n + 1) : ℚ) / (A347403 ((n + 1) ^ 2) : ℚ)

end

end A332294.P16973184809912729575

/-!
# A332295: Number of widely recursively normal integer partitions of n.

The programs for A332295, there is no canonical definition to state claims against.
-/

/-! ## A332295.P43086581959723848

`A000194(A317491(n)*A332576(n))`
-/

namespace A332295.P43086581959723848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A317491 n * A332576 n).toNat

end

end A332295.P43086581959723848

/-! ## A332295.P11696197106670148852

`A137734(A317491(n)*A332576(n))`
-/

namespace A332295.P11696197106670148852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A317491 n * A332576 n).toNat

end

end A332295.P11696197106670148852

/-! ## A332295.P5636853094726313654

`A137734((A317081(n)+A157928(n))*A317491(n))`
-/

namespace A332295.P5636853094726313654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((A317081 n + A157928 n) * A317491 n).toNat

end

end A332295.P5636853094726313654

/-! ## A332295.P5814952342051795445

`A137734((A317081(n)+A274070(n+1))*A317491(n))`
-/

namespace A332295.P5814952342051795445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((A317081 n + A274070 (n + 1)) * A317491 n).toNat

end

end A332295.P5814952342051795445

/-! ## A332295.P11741083568458665202

`A137734((A317081(n)+A267537(n+2))*A317491(n))`
-/

namespace A332295.P11741083568458665202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((A317081 n + A267537 (n + 2)) * A317491 n).toNat

end

end A332295.P11741083568458665202

/-!
# A332296: Number of narrowly totally normal compositions of n.

The programs for A332296, there is no canonical definition to state claims against.
-/

/-! ## A332296.P4599082363214404203

`floor(A332279(n)+atan(n))`
-/

namespace A332296.P4599082363214404203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332279 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A332296.P4599082363214404203

/-! ## A332296.P5522292878812673230

`A332279(n)+A157928(n)`
-/

namespace A332296.P5522292878812673230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332279 n + A157928 n

end

end A332296.P5522292878812673230

/-! ## A332296.P11645846807662288923

`A332279(n)+A274070(n+1)`
-/

namespace A332296.P11645846807662288923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332279 n + A274070 (n + 1)

end

end A332296.P11645846807662288923

/-! ## A332296.P11578903186005806055

`A332279(n)+A091247(2*n)`
-/

namespace A332296.P11578903186005806055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332279 n + A091247 (2 * n)

end

end A332296.P11578903186005806055

/-! ## A332296.P16836827275501666402

`A332279(n)%A000108(n)+1`
-/

namespace A332296.P16836827275501666402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332279 n) (A000108 n) + 1

end

end A332296.P16836827275501666402

/-!
# A332297: Number of narrowly totally strongly normal integer partitions of n.

The programs for A332297, there is no canonical definition to state claims against.
-/

/-! ## A332297.P10760363292900663907

`A020639(A123244(n)*A180803(n+1))`
-/

namespace A332297.P10760363292900663907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123244 n * A180803 (n + 1)).toNat

end

end A332297.P10760363292900663907

/-! ## A332297.P2274118035019855666

`A020639(lcm(A123244(n), A180803(n+1)))`
-/

namespace A332297.P2274118035019855666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A123244 n) (A180803 (n + 1)))

end

end A332297.P2274118035019855666

/-! ## A332297.P13644349858132540213

`A239141(A064413(n+1)^A087039(n+1))`
-/

namespace A332297.P13644349858132540213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239141 (SequenceMachineLib.roundAway ((A064413 (n + 1) : ℚ) ^ (A087039 (n + 1) : ℤ))).toNat

end

end A332297.P13644349858132540213

/-! ## A332297.P10409390720054618412

`A109747(∑{e}[A281279(n), #])`
-/

namespace A332297.P10409390720054618412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109747 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A332297.P10409390720054618412

/-! ## A332297.P1514810010769701209

`A175066(A112479(n+1))`
-/

namespace A332297.P1514810010769701209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175066 (A112479 (n + 1)).toNat

end

end A332297.P1514810010769701209

