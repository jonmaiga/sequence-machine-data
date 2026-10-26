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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A053400: Number of 3-multigraphs on n nodes.

The programs for A053400, there is no canonical definition to state claims against.
-/

/-! ## A053400.P15467322578599095537

`A327084(∑[n+3])`
-/

namespace A053400.P15467322578599095537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053400.P15467322578599095537

/-! ## A053400.P8158315273757170762

`A063841(A141214(n+1))`
-/

namespace A053400.P8158315273757170762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A141214 (n + 1)).toNat

end

end A053400.P8158315273757170762

/-! ## A053400.P14743724946127586499

`A063841(A027379(n+2))`
-/

namespace A053400.P14743724946127586499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A027379 (n + 2)).toNat

end

end A053400.P14743724946127586499

/-! ## A053400.P16216048052278012772

`A063841(A052905(n+1)+2)`
-/

namespace A053400.P16216048052278012772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A052905 (n + 1) + 2).toNat

end

end A053400.P16216048052278012772

/-! ## A053400.P4703713164864977606

`A063841(A000124(n+4)-4)`
-/

namespace A053400.P4703713164864977606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A000124 (n + 4) - 4).toNat

end

end A053400.P4703713164864977606

/-!
# A053401: Number of seconds in the time units: second, minute, hour, day, week, month, year, century, millennium, (a)eon.

The programs for A053401, there is no canonical definition to state claims against.
-/

/-! ## A053401.P10758872222462748292

`A375666(A375638(n+1))`
-/

namespace A053401.P10758872222462748292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375666 (A375638 (n + 1)).toNat

end

end A053401.P10758872222462748292

/-!
# A053402: Running distances (in meters) in Olympic athletics.

The programs for A053402, there is no canonical definition to state claims against.
-/

/-! ## A053402.P3899819517700495469

`A292275(A065811(n+1))`
-/

namespace A053402.P3899819517700495469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292275 ((A065811 (n + 1)).toNat + 20)

end

end A053402.P3899819517700495469

/-!
# A053404: Expansion of 1/((1+3*x)*(1-4*x)).

The programs for A053404, the canonical program `A053404.P16423225031199862519` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053404 has offset 0).

The definition of A053404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-12x^2))` (program `A053404.P16423225031199862519`, by `A053404.P16423225031199862519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053404.P16423225031199862519

`ogf(1/(1-x-12x^2))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053404

/-- `ogf(1/(1-x-12x^2))` -/
def P16423225031199862519.Spec : Prop :=
  ∀ n, P16423225031199862519.a n = A053404 n

theorem P16423225031199862519.correct : P16423225031199862519.Spec := by
  intro n
  simp only [A053404]

end A053404

/-! ## A053404.P592143102931610824

`a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A053404.P592143102931610824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 12 * a (n - 2)

end

end A053404.P592143102931610824

namespace A053404

/-- `a(n-1)+12*a(n-2)` -/
def P592143102931610824.Spec : Prop :=
  ∀ n, (P592143102931610824.a n : ℤ) = A053404 n

end A053404

/-! ## A053404.P6480626274614953634

`(4^(n+1)-(-3)^(n+1))/7`
-/

namespace A053404.P6480626274614953634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - (-3) ^ (n + 1) : ℚ) / 7

end

end A053404.P6480626274614953634

namespace A053404

/-- `(4^(n+1)-(-3)^(n+1))/7` -/
def P6480626274614953634.Spec : Prop :=
  ∀ n, P6480626274614953634.a n = (A053404 n : ℚ)

end A053404

/-! ## A053404.P2071810009211027453

`4^n-3*a(n-1)` with `a(0)=1`
-/

namespace A053404.P2071810009211027453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℤ) - 3 * a (n - 1)

end

end A053404.P2071810009211027453

namespace A053404

/-- `4^n-3*a(n-1)` -/
def P2071810009211027453.Spec : Prop :=
  ∀ n, P2071810009211027453.a n = A053404 n

end A053404

/-! ## A053404.P8537573957548857950

`4^n-lcm(3, a(n-1))` with `a(0)=1`
-/

namespace A053404.P8537573957548857950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℤ) - (Int.lcm 3 (a (n - 1)) : ℤ)

end

end A053404.P8537573957548857950

namespace A053404

/-- `4^n-lcm(3, a(n-1))` -/
def P8537573957548857950.Spec : Prop :=
  ∀ n, P8537573957548857950.a n = A053404 n

end A053404

/-! ## A053404.P8873539990333024757

`4^n-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A053404.P8873539990333024757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℤ) - a (n - 1) - a (n - 1) - a (n - 1)

end

end A053404.P8873539990333024757

namespace A053404

/-- `4^n-a(n-1)-a(n-1)-a(n-1)` -/
def P8873539990333024757.Spec : Prop :=
  ∀ n, P8873539990333024757.a n = A053404 n

end A053404

/-! ## A053404.P17735949578561164066

`a(n-1)-3*(a(n-2)-5*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A053404.P17735949578561164066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 3 * (a (n - 2) - 5 * a (n - 2))

end

end A053404.P17735949578561164066

namespace A053404

/-- `a(n-1)-3*(a(n-2)-5*a(n-2))` -/
def P17735949578561164066.Spec : Prop :=
  ∀ n, P17735949578561164066.a n = A053404 n

end A053404

/-! ## A053404.P8174195621895071960

`A290124(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A053404.P8174195621895071960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290124 (n + 1) - a (n - 1)

end

end A053404.P8174195621895071960

namespace A053404

/-- `A290124(n+1)-a(n-1)` -/
def P8174195621895071960.Spec : Prop :=
  ∀ n, P8174195621895071960.a n = A053404 n

end A053404

/-! ## A053404.P10146102552443813993

`xor(3*a(n-1), A000918(2*n))` with `a(0)=1`
-/

namespace A053404.P10146102552443813993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (3 * a (n - 1)) (A000918 (2 * n))

end

end A053404.P10146102552443813993

namespace A053404

/-- `xor(3*a(n-1), A000918(2*n))` -/
def P10146102552443813993.Spec : Prop :=
  ∀ n, P10146102552443813993.a n = A053404 n

end A053404

/-! ## A053404.P136285915040009244

`A000079(n)²-xor(3, 3*(a(n-1)-1))` with `a(0)=1`
-/

namespace A053404.P136285915040009244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n ^ 2 - Int.xor 3 (3 * (a (n - 1) - 1))

end

end A053404.P136285915040009244

namespace A053404

/-- `A000079(n)²-xor(3, 3*(a(n-1)-1))` -/
def P136285915040009244.Spec : Prop :=
  ∀ n, P136285915040009244.a n = A053404 n

end A053404

/-! ## A053404.P7283884471639419797

`A000079(2*n)-xor(3, 3*(a(n-1)-1))` with `a(0)=1`
-/

namespace A053404.P7283884471639419797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (2 * n) - Int.xor 3 (3 * (a (n - 1) - 1))

end

end A053404.P7283884471639419797

namespace A053404

/-- `A000079(2*n)-xor(3, 3*(a(n-1)-1))` -/
def P7283884471639419797.Spec : Prop :=
  ∀ n, P7283884471639419797.a n = A053404 n

end A053404

/-! ## A053404.P9455219509776916995

`(4^(n+1))%(a(n-1)+4^n)` with `a(0)=1`
-/

namespace A053404.P9455219509776916995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ (n + 1) % (a (n - 1) + 4 ^ n)

end

end A053404.P9455219509776916995

namespace A053404

/-- `(4^(n+1))%(a(n-1)+4^n)` -/
def P9455219509776916995.Spec : Prop :=
  ∀ n, (P9455219509776916995.a n : ℤ) = A053404 n

end A053404

/-! ## A053404.P5095134892666249339

`A015441(n+1)/A051958(n+1)*A053455(n+1)`
-/

namespace A053404.P5095134892666249339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015441 (n + 1) : ℚ) / (A051958 (n + 1) : ℚ) * (A053455 (n + 1) : ℚ)

end

end A053404.P5095134892666249339

namespace A053404

/-- `A015441(n+1)/A051958(n+1)*A053455(n+1)` -/
def P5095134892666249339.Spec : Prop :=
  ∀ n, P5095134892666249339.a n = (A053404 n : ℚ)

end A053404

/-!
# A053405: Definition: A kara B = C, where C is the least nonnegative integer such that C * B >= A and C * (B-1) < A. a(n) is the smallest k such that n kara k is undefined.

The programs for A053405, the canonical program `A053405.P14811944541059498351` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053405 has offset 4).

The definition of A053405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257213, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053405.P14811944541059498351

`A257213(n+3)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053405

/-- `A257213(n+3)+1` -/
def P14811944541059498351.Spec : Prop :=
  ∀ n, P14811944541059498351.a n = A053405 (n + 4)

theorem P14811944541059498351.correct : P14811944541059498351.Spec := by
  intro n
  simp only [A053405, Nat.add_sub_cancel]

end A053405

/-! ## A053405.P4116207286487836193

`A065475(A257213(n+3))`
-/

namespace A053405.P4116207286487836193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A257213 (n + 3)).toNat

end

end A053405.P4116207286487836193

namespace A053405

/-- `A065475(A257213(n+3))` -/
def P4116207286487836193.Spec : Prop :=
  ∀ n, P4116207286487836193.a n = A053405 (n + 4)

end A053405

/-! ## A053405.P4032567918370014862

`A257213(A049068(n+4))`
-/

namespace A053405.P4032567918370014862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 (A049068 (n + 4)).toNat

end

end A053405.P4032567918370014862

namespace A053405

/-- `A257213(A049068(n+4))` -/
def P4032567918370014862.Spec : Prop :=
  ∀ n, P4032567918370014862.a n = A053405 (n + 4)

end A053405

/-! ## A053405.P9430621237504751394

`A135034(n+3)+A257217(n+3)+1`
-/

namespace A053405.P9430621237504751394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (n + 3) + (A257217 (n + 3) + 1)

end

end A053405.P9430621237504751394

namespace A053405

/-- `A135034(n+3)+A257217(n+3)+1` -/
def P9430621237504751394.Spec : Prop :=
  ∀ n, P9430621237504751394.a n = A053405 (n + 4)

end A053405

/-! ## A053405.P3679657924249262635

`A070082(lt[A336761(2*(n+2)), A006093(n+1)])`
-/

namespace A053405.P3679657924249262635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336761 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053405.P3679657924249262635

namespace A053405

/-- `A070082(lt[A336761(2*(n+2)), A006093(n+1)])` -/
def P3679657924249262635.Spec : Prop :=
  ∀ n, P3679657924249262635.a n = A053405 (n + 4)

end A053405

/-!
# A053406: Number of stars brighter than visual magnitude n-1.

The programs for A053406, there is no canonical definition to state claims against.
-/

/-! ## A053406.P12185468736294845723

`A225600(∑{digits}[n, #!]+∑[2*n])`
-/

namespace A053406.P12185468736294845723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A053406.P12185468736294845723

/-!
# A053409: Fibonacci numbers which are semiprimes.

The programs for A053409, there is no canonical definition to state claims against.
-/

/-! ## A053409.P14429163771027575534

`A000045(A072381(n+1))`
-/

namespace A053409.P14429163771027575534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072381 (n + 1)).toNat

end

end A053409.P14429163771027575534

/-! ## A053409.P14533558074470310281

`A000045(eq[2, A038575(n)])`
-/

namespace A053409.P14533558074470310281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053409.P14533558074470310281

/-! ## A053409.P10004750962811811965

`A069110(eq[2, A038575(n)])`
-/

namespace A053409.P10004750962811811965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053409.P10004750962811811965

/-! ## A053409.P9720602136830416411

`A000045(eq[4, A286545(n+1)]+1)`
-/

namespace A053409.P9720602136830416411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053409.P9720602136830416411

/-! ## A053409.P8481057352610984928

`A000045(eq[6, A278245(n+1)]+1)`
-/

namespace A053409.P8481057352610984928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053409.P8481057352610984928

/-!
# A053410: a(1) = 0, a(2) = 16, a(2n+1) = 10*a(2n) - a(2n-1), a(2n) = 10*a(2n-1) - a(2n-2) + 16.

The programs for A053410, the canonical program `A053410.P2914899679445923587` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053410 has offset 1).

The definition of A053410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053410.P2914899679445923587

`∑[∑[16*A098308(n)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053410

/-- `∑[∑[16*A098308(n)]]` -/
def P2914899679445923587.Spec : Prop :=
  ∀ n, P2914899679445923587.a n = A053410 (n + 1)

theorem P2914899679445923587.correct : P2914899679445923587.Spec := by
  intro n
  simp only [A053410, Nat.add_sub_cancel]

end A053410

/-! ## A053410.P7196839984061853761

`4*A105038(n)-a(n-1)` with `a(0)=0`
-/

namespace A053410.P7196839984061853761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * A105038 n - a (n - 1)

end

end A053410.P7196839984061853761

namespace A053410

/-- `4*A105038(n)-a(n-1)` -/
def P7196839984061853761.Spec : Prop :=
  ∀ n, P7196839984061853761.a n = A053410 (n + 1)

end A053410

/-! ## A053410.P944821740163686766

`Δ[A080872(n+1)]*Δ[A080872(n)]`
-/

namespace A053410.P944821740163686766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A053410.P944821740163686766

namespace A053410

/-- `Δ[A080872(n+1)]*Δ[A080872(n)]` -/
def P944821740163686766.Spec : Prop :=
  ∀ n, P944821740163686766.a n = A053410 (n + 1)

end A053410

/-! ## A053410.P15440230861511795929

`Δ[ceil(A054320(n)/6)-n]`
-/

namespace A053410.P15440230861511795929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054320 n : ℚ) / 6⌉ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053410.P15440230861511795929

namespace A053410

/-- `Δ[ceil(A054320(n)/6)-n]` -/
def P15440230861511795929.Spec : Prop :=
  ∀ n, P15440230861511795929.a n = A053410 (n + 1)

end A053410

/-! ## A053410.P7553372279293425909

`Δ[ceil(∑[A001079(n)/3])-(n+1)]`
-/

namespace A053410.P7553372279293425909
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001079 n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053410.P7553372279293425909

namespace A053410

/-- `Δ[ceil(∑[A001079(n)/3])-(n+1)]` -/
def P7553372279293425909.Spec : Prop :=
  ∀ n, P7553372279293425909.a n = A053410 (n + 1)

end A053410

/-!
# A053411: Circle numbers (version 1): a(n)= number of points (i,j), i,j integers, contained in a circle of diameter n, centered at the origin.

The programs for A053411, there is no canonical definition to state claims against.
-/

/-! ## A053411.P11843189934176204893

`A053456(n+1)-A232705(n+1)`
-/

namespace A053411.P11843189934176204893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (n + 1) - A232705 (n + 1)

end

end A053411.P11843189934176204893

/-! ## A053411.P6444223601658623238

`A333572(n)+a((n+1)%2)` with `a(0)=1`
-/

namespace A053411.P6444223601658623238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333572 n + a ((n + 1) % 2)

end

end A053411.P6444223601658623238

/-! ## A053411.P17716872209287901342

`A333572(A028310(n))+1`
-/

namespace A053411.P17716872209287901342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (A028310 n).toNat + 1

end

end A053411.P17716872209287901342

/-! ## A053411.P3061098647941010836

`A333572(A004277(n)-n)+1`
-/

namespace A053411.P3061098647941010836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (A004277 n - (n : ℤ)).toNat + 1

end

end A053411.P3061098647941010836

/-! ## A053411.P3079884317432295061

`4*A333573(A008458(n)-5*n)+1`
-/

namespace A053411.P3079884317432295061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333573 (A008458 n - (5 * n : ℤ)).toNat + 1

end

end A053411.P3079884317432295061

/-! ## A053411.P2510397459017182531

`4*A333573(and(1, A008458(n))+n)+1`
-/

namespace A053411.P2510397459017182531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333573 (Int.land 1 (A008458 n) + (n : ℤ)).toNat + 1

end

end A053411.P2510397459017182531

/-! ## A053411.P13453623491321796362

`A014198(A002620(n))+1`
-/

namespace A053411.P13453623491321796362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A002620 n).toNat + 1

end

end A053411.P13453623491321796362

/-! ## A053411.P9924087363977602286

`A014198(∑[A004526(n)])+1`
-/

namespace A053411.P9924087363977602286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A053411.P9924087363977602286

/-! ## A053411.P16194633953985350199

`A014198(A004526(n+1)*A004526(n))+1`
-/

namespace A053411.P16194633953985350199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A004526 (n + 1) * A004526 n).toNat + 1

end

end A053411.P16194633953985350199

/-! ## A053411.P12145852313655865538

`A057655(A002620(n))`
-/

namespace A053411.P12145852313655865538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A002620 n).toNat

end

end A053411.P12145852313655865538

/-! ## A053411.P17987720828785882343

`A057655(A002265(n²))`
-/

namespace A053411.P17987720828785882343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A002265 (n ^ 2)).toNat

end

end A053411.P17987720828785882343

/-! ## A053411.P17007560565921445232

`A057655(A004524(n²)/2)`
-/

namespace A053411.P17007560565921445232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (SequenceMachineLib.roundAway ((A004524 (n ^ 2) : ℚ) / 2)).toNat

end

end A053411.P17007560565921445232

/-!
# A053412: n-th nonzero Fibonacci numbers arising in A053408.

The programs for A053412, there is no canonical definition to state claims against.
-/

/-! ## A053412.P13165535628698353433

`A000045(A053408(n+1))`
-/

namespace A053412.P13165535628698353433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A053408 (n + 1)).toNat

end

end A053412.P13165535628698353433

/-! ## A053412.P8729745121762946649

`A212804(A053408(n+1)+1)`
-/

namespace A053412.P8729745121762946649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A053408 (n + 1) + 1).toNat

end

end A053412.P8729745121762946649

/-! ## A053412.P11992712958183270646

`A324969(A053408(n+1)+1)`
-/

namespace A053412.P11992712958183270646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A053408 (n + 1) + 1).toNat

end

end A053412.P11992712958183270646

/-! ## A053412.P16635255193556682277

`A103609(2*A053408(n+1))`
-/

namespace A053412.P16635255193556682277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A053408 (n + 1)).toNat

end

end A053412.P16635255193556682277

/-! ## A053412.P16430107215392420923

`A000045(ceil(sqrt(A147270(n+1))+n))`
-/

namespace A053412.P16430107215392420923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A147270 (n + 1) : ℝ) + (n : ℝ)⌉.toNat

end

end A053412.P16430107215392420923

/-!
# A053413: Primes of the form A003266(n) + 1.

The programs for A053413, there is no canonical definition to state claims against.
-/

/-! ## A053413.P1605437713099075221

`A052449(A053408(n+1))`
-/

namespace A053413.P1605437713099075221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052449 (A053408 (n + 1)).toNat

end

end A053413.P1605437713099075221

/-!
# A053414: Circle numbers (version 2): a(n) is the number of points (i,j), i,j integers, contained in a circle of diameter n, centered at (0, 1/2).

The programs for A053414, there is no canonical definition to state claims against.
-/

/-! ## A053414.P2177333280107952504

`A299476(n)+A080891(A084508(n))`
-/

namespace A053414.P2177333280107952504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 n + A080891 (A084508 n).toNat

end

end A053414.P2177333280107952504

/-!
# A053415: Circle numbers (version 3): a(n) = number of points (i,j), i,j integers, contained in a circle of diameter n, centered at (1/2, 1/2).

The programs for A053415, there is no canonical definition to state claims against.
-/

/-! ## A053415.P11839026962097623203

`4*A349609(n)`
-/

namespace A053415.P11839026962097623203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A349609 n

end

end A053415.P11839026962097623203

/-! ## A053415.P3835107386667842617

`A008586(A349609(n))`
-/

namespace A053415.P3835107386667842617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A349609 n).toNat

end

end A053415.P3835107386667842617

/-! ## A053415.P15599592867357158560

`A008574(A349609(n))%A053416(n)`
-/

namespace A053415.P15599592867357158560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A349609 n).toNat) (A053416 n)

end

end A053415.P15599592867357158560

/-! ## A053415.P3690948276589844327

`A008574(A349609(n))-A019590(n+1)`
-/

namespace A053415.P3690948276589844327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A349609 n).toNat - A019590 (n + 1)

end

end A053415.P3690948276589844327

/-! ## A053415.P10574692644655345633

`A008574(A349609(n)+n)-A008574(n)`
-/

namespace A053415.P10574692644655345633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A349609 n + (n : ℤ)).toNat - A008574 n

end

end A053415.P10574692644655345633

/-! ## A053415.P17134329564056925278

`A005843(A349609(n)+A349609(n))`
-/

namespace A053415.P17134329564056925278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A349609 n + A349609 n).toNat

end

end A053415.P17134329564056925278

/-! ## A053415.P7659931501892061736

`A349609(n)/(A007318(∑[n])/2)²`
-/

namespace A053415.P7659931501892061736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349609 n : ℚ) / ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) ^ 2

end

end A053415.P7659931501892061736

/-!
# A053416: Circle numbers (version 4): a(n)= number of points (i+j/2,j*sqrt(3)/2), i,j integers (triangular grid) contained in a circle of diameter n, centered at (0,0).

The programs for A053416, there is no canonical definition to state claims against.
-/

/-! ## A053416.P17905122511653289911

`A308685(n)-3*A053417(n)`
-/

namespace A053416.P17905122511653289911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308685 n - 3 * A053417 n

end

end A053416.P17905122511653289911

/-! ## A053416.P5254293980553707341

`A038589(floor((n/2)²))`
-/

namespace A053416.P5254293980553707341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

end

end A053416.P5254293980553707341

/-! ## A053416.P17601324573198432234

`A014201(floor((n/2)²))+1`
-/

namespace A053416.P17601324573198432234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014201 ⌊((n : ℚ) / 2) ^ 2⌋.toNat + 1

end

end A053416.P17601324573198432234

/-! ## A053416.P15443690137729384035

`or(1, A038589(round(or(1, n²)/4)))`
-/

namespace A053416.P15443690137729384035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 2) : ℚ) / 4)).toNat)

end

end A053416.P15443690137729384035

/-! ## A053416.P12897083000306770349

`or(1, A038589(∑[floor(xor(1, n)/2)]))`
-/

namespace A053416.P12897083000306770349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A053416.P12897083000306770349

/-! ## A053416.P4861955184330413457

`or(1, A038589(∑[n-∑[and(1, n)]]))`
-/

namespace A053416.P4861955184330413457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A053416.P4861955184330413457

/-! ## A053416.P3593481997628085891

`or(1, A038589(round(n/(4*acot(n)))))`
-/

namespace A053416.P3593481997628085891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (SequenceMachineLib.roundAway ((n : ℝ) / (4 * SequenceMachineLib.acot (n : ℝ)))).toNat)

end

end A053416.P3593481997628085891

/-! ## A053416.P1690181971491323673

`or(1, A038589((or(1, n²)-1)/4))`
-/

namespace A053416.P1690181971491323673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (SequenceMachineLib.roundAway (((Nat.lor 1 (n ^ 2) : ℤ) - 1 : ℚ) / 4)).toNat)

end

end A053416.P1690181971491323673

/-! ## A053416.P17524086927503156316

`or(1, A038589(xor(1, or(1, n²))/4))`
-/

namespace A053416.P17524086927503156316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (SequenceMachineLib.roundAway ((Nat.xor 1 (Nat.lor 1 (n ^ 2)) : ℚ) / 4)).toNat)

end

end A053416.P17524086927503156316

/-! ## A053416.P1134031102898654831

`or(1, A038589(∑[(or(1, n)-1)/2]))`
-/

namespace A053416.P1134031102898654831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038589 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A053416.P1134031102898654831

/-! ## A053416.P3739853369432171398

`gcd(A000038(n), A038589(A002620(n)))`
-/

namespace A053416.P3739853369432171398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A038589 (A002620 n).toNat)

end

end A053416.P3739853369432171398

/-! ## A053416.P7241212016808011734

`A038589(A002620(n))+A000038(n+1)`
-/

namespace A053416.P7241212016808011734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 (A002620 n).toNat + A000038 (n + 1)

end

end A053416.P7241212016808011734

/-! ## A053416.P2220362833066593659

`A038589(A002620(n))%A000041(n+4)`
-/

namespace A053416.P2220362833066593659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038589 (A002620 n).toNat) (A000041 (n + 4))

end

end A053416.P2220362833066593659

/-! ## A053416.P1851119572720335348

`gcd(2, A038589(n))*A038589(A002620(n))`
-/

namespace A053416.P1851119572720335348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A038589 n) : ℤ) * A038589 (A002620 n).toNat

end

end A053416.P1851119572720335348

/-! ## A053416.P10237679436395650957

`A007318(C(2, n))*A038589(A002620(n))`
-/

namespace A053416.P10237679436395650957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A038589 (A002620 n).toNat

end

end A053416.P10237679436395650957

/-! ## A053416.P2875295186462319171

`A038589(A002620(n))+char[A000108(n+8)]`
-/

namespace A053416.P2875295186462319171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 (A002620 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A053416.P2875295186462319171

/-! ## A053416.P1550778540162927808

`A038589(A002620(n))+A008683(∑[4*(n+1)])`
-/

namespace A053416.P1550778540162927808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 (A002620 n).toNat + A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053416.P1550778540162927808

/-! ## A053416.P12905916598875494584

`A014963(30*n+19)%2*A038589(A002620(n))`
-/

namespace A053416.P12905916598875494584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (30 * n + 19)) 2 * A038589 (A002620 n).toNat

end

end A053416.P12905916598875494584

/-!
# A053417: Circle numbers (version 5): a(n) = number of points (i+j/2,j*sqrt(3)/2), i,j integers (triangular grid) contained in a circle of diameter n, centered at (1/2,0).

The programs for A053417, there is no canonical definition to state claims against.
-/

/-! ## A053417.P9016387259921831066

`(A308685(n)-A053416(n))/3`
-/

namespace A053417.P9016387259921831066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308685 n - A053416 n : ℚ) / 3

end

end A053417.P9016387259921831066

/-! ## A053417.P9853052378792672739

`(A053416(2*n)-A053416(n))/3`
-/

namespace A053417.P9853052378792672739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053416 (2 * n) - A053416 n : ℚ) / 3

end

end A053417.P9853052378792672739

/-! ## A053417.P13334982844946018194

`A002264(A308685(n)-A053416(n))`
-/

namespace A053417.P13334982844946018194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A308685 n - A053416 n).toNat

end

end A053417.P13334982844946018194

/-! ## A053417.P18417844975500014997

`A008611(A308685(n)+1-A053416(n))`
-/

namespace A053417.P18417844975500014997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A308685 n + (1 - A053416 n)).toNat

end

end A053417.P18417844975500014997

/-! ## A053417.P16718932961533166789

`A008611(1-(A053416(n)-A308685(n)))`
-/

namespace A053417.P16718932961533166789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (1 - (A053416 n - A308685 n)).toNat

end

end A053417.P16718932961533166789

/-! ## A053417.P5095598254973220955

`A008620(A308685(n)-A053416(n))-1`
-/

namespace A053417.P5095598254973220955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A308685 n - A053416 n).toNat - 1

end

end A053417.P5095598254973220955

/-! ## A053417.P5665579781184076576

`A002264(A053416(2*n)-A053416(n))`
-/

namespace A053417.P5665579781184076576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A053416 (2 * n) - A053416 n).toNat

end

end A053417.P5665579781184076576

/-! ## A053417.P6792027944306405854

`A008611(A053416(2*n)-A053416(n)+1)`
-/

namespace A053417.P6792027944306405854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A053416 (2 * n) - A053416 n + 1).toNat

end

end A053417.P6792027944306405854

/-! ## A053417.P3766697697249372680

`A008611(A053416(2*n)-A053416(n))-1`
-/

namespace A053417.P3766697697249372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A053416 (2 * n) - A053416 n).toNat - 1

end

end A053417.P3766697697249372680

/-!
# A053418: Number of unlabeled directed graphs with n arcs and no isolated vertices.

The programs for A053418, there is no canonical definition to state claims against.
-/

/-! ## A053418.P14730691970989912044

`A342732(A279553(n))-2`
-/

namespace A053418.P14730691970989912044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342732 (A279553 n).toNat - 2

end

end A053418.P14730691970989912044

/-! ## A053418.P7959055035483691004

`A342732(A350490(n))-2`
-/

namespace A053418.P7959055035483691004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342732 (A350490 n).toNat - 2

end

end A053418.P7959055035483691004

/-!
# A053419: Number of graphs with loops (symmetric relations) with n edges.

The programs for A053419, there is no canonical definition to state claims against.
-/

/-! ## A053419.P3606834022379012407

`A070166(A050533(n))`
-/

namespace A053419.P3606834022379012407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (A050533 n).toNat

end

end A053419.P3606834022379012407

/-! ## A053419.P4477778027601539149

`A070166(A217873(n))`
-/

namespace A053419.P4477778027601539149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (A217873 n).toNat

end

end A053419.P4477778027601539149

/-! ## A053419.P3910462896412627185

`A070166(4*A006527(n))`
-/

namespace A053419.P3910462896412627185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (4 * A006527 n).toNat

end

end A053419.P3910462896412627185

/-! ## A053419.P3358124305967602569

`A070166(A035597(n)+2*n)`
-/

namespace A053419.P3358124305967602569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (A035597 n + (2 * n : ℤ)).toNat

end

end A053419.P3358124305967602569

/-! ## A053419.P11339493532386104287

`A070166(A035597(n)+n+n)`
-/

namespace A053419.P11339493532386104287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070166 (A035597 n + (n : ℤ) + (n : ℤ)).toNat

end

end A053419.P11339493532386104287

/-!
# A053420: Number of 4-multigraphs on n nodes.

The programs for A053420, there is no canonical definition to state claims against.
-/

/-! ## A053420.P16655419433210554360

`A327084(∑[n+3]+n+3)`
-/

namespace A053420.P16655419433210554360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A053420.P16655419433210554360

/-! ## A053420.P15637968965504634273

`A063841(A046691(n+3))`
-/

namespace A053420.P15637968965504634273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A046691 (n + 3)).toNat

end

end A053420.P15637968965504634273

/-! ## A053420.P15698306258851742897

`A063841(eq[4, A193592(n)])`
-/

namespace A053420.P15698306258851742897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053420.P15698306258851742897

/-! ## A053420.P7639549456590559293

`A063841(Δ[A023545(n+1)])`
-/

namespace A053420.P7639549456590559293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (f1 (n + 1) - f1 n).toNat

end

end A053420.P7639549456590559293

/-! ## A053420.P14003941126950134705

`A063841(eq[5, A200370(n+1)])`
-/

namespace A053420.P14003941126950134705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053420.P14003941126950134705

/-!
# A053421: Number of 5-multigraphs on n nodes.

The programs for A053421, there is no canonical definition to state claims against.
-/

/-! ## A053421.P6053984745481346383

`A327084(A052905(n+2))`
-/

namespace A053421.P6053984745481346383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (A052905 (n + 2)).toNat

end

end A053421.P6053984745481346383

/-! ## A053421.P14166140199933458140

`A063841(A052905(n+3))`
-/

namespace A053421.P14166140199933458140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (A052905 (n + 3)).toNat

end

end A053421.P14166140199933458140

/-! ## A053421.P2767675246833045109

`A327084(eq[4, A025581(n)])`
-/

namespace A053421.P2767675246833045109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053421.P2767675246833045109

/-! ## A053421.P18084433973745800679

`A327084(eq[9, A099375(n)])`
-/

namespace A053421.P18084433973745800679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053421.P18084433973745800679

/-! ## A053421.P14460486629353489596

`A327084(eq[5, A004736(n+1)])`
-/

namespace A053421.P14460486629353489596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053421.P14460486629353489596

/-!
# A053422: n times (n 1's): a(n) = n*(10^n - 1)/9.

The programs for A053422, the canonical program `A053422.P17110885561322789959` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053422 has offset 0).

The definition of A053422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053422.P12642862900879258668

`n*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053422.P12642862900879258668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((10 ^ n : ℤ) - 1) : ℚ) / 9

end

end A053422.P12642862900879258668

namespace A053422

/-- `n*(10^n-1)/9` -/
def P12642862900879258668.Spec : Prop :=
  ∀ n, P12642862900879258668.a n = (A053422 n : ℚ)

end A053422

/-! ## A053422.P17110885561322789959

`n*A002275(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053422

/-- `n*A002275(n)` -/
def P17110885561322789959.Spec : Prop :=
  ∀ n, P17110885561322789959.a n = A053422 n

theorem P17110885561322789959.correct : P17110885561322789959.Spec := by
  intro n
  simp only [A053422]

end A053422

/-! ## A053422.P9386759729427380989

`a(n-1)*10*n/(n-1)+n` with `a(0)=0, a(1)=1`
-/

namespace A053422.P9386759729427380989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * 10 * (n : ℚ) / ((n : ℤ) - 1 : ℚ) + (n : ℚ)

end

end A053422.P9386759729427380989

namespace A053422

/-- `a(n-1)*10*n/(n-1)+n` -/
def P9386759729427380989.Spec : Prop :=
  ∀ n, P9386759729427380989.a n = (A053422 n : ℚ)

end A053422

/-! ## A053422.P2042194841396895961

`ceil(n*∑[and(10^n, -2)/10])`
-/

namespace A053422.P2042194841396895961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A053422.P2042194841396895961

namespace A053422

/-- `ceil(n*∑[and(10^n, -2)/10])` -/
def P2042194841396895961.Spec : Prop :=
  ∀ n, P2042194841396895961.a n = A053422 n

end A053422

/-! ## A053422.P12257791251946319055

`round(n*∑[and(10^n, -2)/10])`
-/

namespace A053422.P12257791251946319055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A053422.P12257791251946319055

namespace A053422

/-- `round(n*∑[and(10^n, -2)/10])` -/
def P12257791251946319055.Spec : Prop :=
  ∀ n, P12257791251946319055.a n = A053422 n

end A053422

/-! ## A053422.P8795527634666704204

`abs(n*xor(-ceil(10^n/9), -1))`
-/

namespace A053422.P8795527634666704204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor (-⌈(10 ^ n : ℚ) / 9⌉) (-1)|

end

end A053422.P8795527634666704204

namespace A053422

/-- `abs(n*xor(-ceil(10^n/9), -1))` -/
def P8795527634666704204.Spec : Prop :=
  ∀ n, P8795527634666704204.a n = A053422 n

end A053422

/-! ## A053422.P915729641652111627

`lcm(n, n*∑[and(-2, 10^n)/10])`
-/

namespace A053422.P915729641652111627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (10 ^ n : ℤ) : ℚ) / 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A053422.P915729641652111627

namespace A053422

/-- `lcm(n, n*∑[and(-2, 10^n)/10])` -/
def P915729641652111627.Spec : Prop :=
  ∀ n, (P915729641652111627.a n : ℤ) = A053422 n

end A053422

/-! ## A053422.P17932397152265408039

`A091693(n)-1`
-/

namespace A053422.P17932397152265408039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091693 n - 1

end

end A053422.P17932397152265408039

namespace A053422

/-- `A091693(n)-1` -/
def P17932397152265408039.Spec : Prop :=
  ∀ n, P17932397152265408039.a n = A053422 n

end A053422

/-! ## A053422.P13274429418959135907

`n*A071762(∑[n])`
-/

namespace A053422.P13274429418959135907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053422.P13274429418959135907

namespace A053422

/-- `n*A071762(∑[n])` -/
def P13274429418959135907.Spec : Prop :=
  ∀ n, P13274429418959135907.a n = A053422 n

end A053422

/-! ## A053422.P5964747306689709100

`n*(A047855(n)-1)`
-/

namespace A053422.P5964747306689709100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A047855 n - 1)

end

end A053422.P5964747306689709100

namespace A053422

/-- `n*(A047855(n)-1)` -/
def P5964747306689709100.Spec : Prop :=
  ∀ n, P5964747306689709100.a n = A053422 n

end A053422

/-!
# A053425: Even numbers k such that the 120 points of the 600-cell exactly integrate homogeneous polynomials of degree k.

The programs for A053425, there is no canonical definition to state claims against.
-/

/-! ## A053425.P17349235749345869907

`A382623(A030230(n+1))`
-/

namespace A053425.P17349235749345869907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382623 (A030230 (n + 1)).toNat

end

end A053425.P17349235749345869907

/-! ## A053425.P9608542744246655295

`A382623(A038701(n+1))`
-/

namespace A053425.P9608542744246655295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382623 (A038701 (n + 1)).toNat

end

end A053425.P9608542744246655295

/-! ## A053425.P8896181539944961754

`A382623(A056781(n+1))`
-/

namespace A053425.P8896181539944961754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382623 (A056781 (n + 1)).toNat

end

end A053425.P8896181539944961754

/-! ## A053425.P6751563052599643259

`A382623(A059046(n+1))`
-/

namespace A053425.P6751563052599643259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382623 (A059046 (n + 1)).toNat

end

end A053425.P6751563052599643259

/-! ## A053425.P1746119774153744638

`A382623(A071139(n+1))`
-/

namespace A053425.P1746119774153744638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382623 (A071139 (n + 1)).toNat

end

end A053425.P1746119774153744638

/-!
# A053426: Pure 2-complexes on n nodes with at most 3 multiple 2-simplexes.

The programs for A053426, there is no canonical definition to state claims against.
-/

/-! ## A053426.P5914558836719420998

`A337884(A027379(n)+1)`
-/

namespace A053426.P5914558836719420998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337884 (A027379 n + 1).toNat

end

end A053426.P5914558836719420998

/-!
# A053428: a(n) = a(n-1) + 20*a(n-2), n >= 2; a(0)=1, a(1)=1.

The programs for A053428, the canonical program `A053428.P4701261003981224262` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053428 has offset 0).

The definition of A053428 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+20*a(n-2)` (program `A053428.P4701261003981224262`, by `A053428.P4701261003981224262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053428.P4701261003981224262

`a(n-1)+20*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053428

/-- `a(n-1)+20*a(n-2)` -/
def P4701261003981224262.Spec : Prop :=
  ∀ n, (P4701261003981224262.a n : ℤ) = A053428 n

theorem P4701261003981224262.correct : P4701261003981224262.Spec := by
  intro n
  simp only [A053428]

end A053428

/-! ## A053428.P18105029347579794197

`(5^(n+1)-(-4)^(n+1))/9`
-/

namespace A053428.P18105029347579794197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 1) : ℤ) - (-4) ^ (n + 1) : ℚ) / 9

end

end A053428.P18105029347579794197

namespace A053428

/-- `(5^(n+1)-(-4)^(n+1))/9` -/
def P18105029347579794197.Spec : Prop :=
  ∀ n, P18105029347579794197.a n = (A053428 n : ℚ)

theorem P18105029347579794197.correct : P18105029347579794197.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053428, Nat.add_sub_cancel, A053428.P18105029347579794197.a, A053428.P4701261003981224262.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053428, Nat.add_sub_cancel, A053428.P18105029347579794197.a, A053428.P4701261003981224262.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053428

/-! ## A053428.P17939486795136315097

`ogf(1/(1-x-20x^2))`
-/

namespace A053428.P17939486795136315097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -20] n

end

end A053428.P17939486795136315097

namespace A053428

/-- `ogf(1/(1-x-20x^2))` -/
def P17939486795136315097.Spec : Prop :=
  ∀ n, P17939486795136315097.a n = A053428 n

end A053428

/-! ## A053428.P18078181162739374767

`5^n-4*a(n-1)` with `a(0)=1`
-/

namespace A053428.P18078181162739374767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) - 4 * a (n - 1)

end

end A053428.P18078181162739374767

namespace A053428

/-- `5^n-4*a(n-1)` -/
def P18078181162739374767.Spec : Prop :=
  ∀ n, P18078181162739374767.a n = A053428 n

end A053428

/-! ## A053428.P13066708714918979685

`5^n-lcm(4, a(n-1))` with `a(0)=1`
-/

namespace A053428.P13066708714918979685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) - (Int.lcm 4 (a (n - 1)) : ℤ)

end

end A053428.P13066708714918979685

namespace A053428

/-- `5^n-lcm(4, a(n-1))` -/
def P13066708714918979685.Spec : Prop :=
  ∀ n, P13066708714918979685.a n = A053428 n

end A053428

/-! ## A053428.P88087041190999237

`5^n-a(n-1)/(1/2)²` with `a(0)=1`
-/

namespace A053428.P88087041190999237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℚ) - a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A053428.P88087041190999237

namespace A053428

/-- `5^n-a(n-1)/(1/2)²` -/
def P88087041190999237.Spec : Prop :=
  ∀ n, P88087041190999237.a n = (A053428 n : ℚ)

end A053428

/-! ## A053428.P14783895458126710034

`abs(4*a(n-1)-A000351(n))` with `a(0)=1`
-/

namespace A053428.P14783895458126710034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |4 * a (n - 1) - A000351 n|

end

end A053428.P14783895458126710034

namespace A053428

/-- `abs(4*a(n-1)-A000351(n))` -/
def P14783895458126710034.Spec : Prop :=
  ∀ n, P14783895458126710034.a n = A053428 n

end A053428

/-! ## A053428.P16935165916259442138

`1-4*(a(n-1)-A003463(n))` with `a(0)=1`
-/

namespace A053428.P16935165916259442138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 4 * (a (n - 1) - A003463 n)

end

end A053428.P16935165916259442138

namespace A053428

/-- `1-4*(a(n-1)-A003463(n))` -/
def P16935165916259442138.Spec : Prop :=
  ∀ n, P16935165916259442138.a n = A053428 n

end A053428

/-! ## A053428.P7096919925114509020

`5*a(n-1)-A009116(A016813(n))` with `a(0)=1`
-/

namespace A053428.P7096919925114509020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A009116 (A016813 n).toNat

end

end A053428.P7096919925114509020

namespace A053428

/-- `5*a(n-1)-A009116(A016813(n))` -/
def P7096919925114509020.Spec : Prop :=
  ∀ n, P7096919925114509020.a n = A053428 n

end A053428

/-! ## A053428.P11523404432654638839

`(5^(n+1))%(a(n-1)+5^n)` with `a(0)=1`
-/

namespace A053428.P11523404432654638839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 ^ (n + 1) % (a (n - 1) + 5 ^ n)

end

end A053428.P11523404432654638839

namespace A053428

/-- `(5^(n+1))%(a(n-1)+5^n)` -/
def P11523404432654638839.Spec : Prop :=
  ∀ n, (P11523404432654638839.a n : ℤ) = A053428 n

end A053428

/-!
# A053430: a(n) = (6^(n+1) - (-5)^(n+1))/11.

The programs for A053430, the canonical program `A053430.P7718626813984886975` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053430 has offset 0).

The definition of A053430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^(n+1)-(-5)^(n+1))/11` (program `A053430.P10316682024747710173`, by `A053430.P10316682024747710173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053430.P7718626813984886975

`a(n-1)+30*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053430

/-- `a(n-1)+30*a(n-2)` -/
def P7718626813984886975.Spec : Prop :=
  ∀ n, (P7718626813984886975.a n : ℤ) = A053430 n

theorem P7718626813984886975.correct : P7718626813984886975.Spec := by
  intro n
  simp only [A053430]

end A053430

/-! ## A053430.P10316682024747710173

`(6^(n+1)-(-5)^(n+1))/11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053430.P10316682024747710173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 1) : ℤ) - (-5) ^ (n + 1) : ℚ) / 11

end

end A053430.P10316682024747710173

namespace A053430

/-- `(6^(n+1)-(-5)^(n+1))/11` -/
def P10316682024747710173.Spec : Prop :=
  ∀ n, P10316682024747710173.a n = (A053430 n : ℚ)

theorem P10316682024747710173.correct : P10316682024747710173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053430, Nat.add_sub_cancel, A053430.P10316682024747710173.a, A053430.P7718626813984886975.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053430, Nat.add_sub_cancel, A053430.P10316682024747710173.a, A053430.P7718626813984886975.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053430

/-! ## A053430.P13516238521075485040

`ogf(1/(1-x-30x^2))`
-/

namespace A053430.P13516238521075485040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -30] n

end

end A053430.P13516238521075485040

namespace A053430

/-- `ogf(1/(1-x-30x^2))` -/
def P13516238521075485040.Spec : Prop :=
  ∀ n, P13516238521075485040.a n = A053430 n

end A053430

/-! ## A053430.P5458707287967931207

`6^n-5*a(n-1)` with `a(0)=1`
-/

namespace A053430.P5458707287967931207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 ^ n : ℤ) - 5 * a (n - 1)

end

end A053430.P5458707287967931207

namespace A053430

/-- `6^n-5*a(n-1)` -/
def P5458707287967931207.Spec : Prop :=
  ∀ n, P5458707287967931207.a n = A053430 n

end A053430

/-! ## A053430.P18398130988122003291

`6^n-lcm(5, a(n-1))` with `a(0)=1`
-/

namespace A053430.P18398130988122003291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 ^ n : ℤ) - (Int.lcm 5 (a (n - 1)) : ℤ)

end

end A053430.P18398130988122003291

namespace A053430

/-- `6^n-lcm(5, a(n-1))` -/
def P18398130988122003291.Spec : Prop :=
  ∀ n, P18398130988122003291.a n = A053430 n

end A053430

/-! ## A053430.P16485606597020309913

`A072024(A167499(n+5))`
-/

namespace A053430.P16485606597020309913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A167499 (n + 5)).toNat

end

end A053430.P16485606597020309913

namespace A053430

/-- `A072024(A167499(n+5))` -/
def P16485606597020309913.Spec : Prop :=
  ∀ n, P16485606597020309913.a n = A053430 n

end A053430

/-! ## A053430.P3763623827861922119

`A081297(eq[5, A025581(n)])`
-/

namespace A053430.P3763623827861922119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053430.P3763623827861922119

namespace A053430

/-- `A081297(eq[5, A025581(n)])` -/
def P3763623827861922119.Spec : Prop :=
  ∀ n, P3763623827861922119.a n = A053430 n

end A053430

/-! ## A053430.P16278086478078159388

`A081297(A000124(n+6)-7)`
-/

namespace A053430.P16278086478078159388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (A000124 (n + 6) - 7).toNat

end

end A053430.P16278086478078159388

namespace A053430

/-- `A081297(A000124(n+6)-7)` -/
def P16278086478078159388.Spec : Prop :=
  ∀ n, P16278086478078159388.a n = A053430 n

end A053430

/-! ## A053430.P4243924607067443918

`A081297(2*n+A027379(n+2)+8)`
-/

namespace A053430.P4243924607067443918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 ((2 * n : ℤ) + (A027379 (n + 2) + 8)).toNat

end

end A053430.P4243924607067443918

namespace A053430

/-- `A081297(2*n+A027379(n+2)+8)` -/
def P4243924607067443918.Spec : Prop :=
  ∀ n, P4243924607067443918.a n = A053430 n

end A053430

/-!
# A053436: a(n) = n+1 + ceiling(n/2)*(ceiling(n/2)-1)*(ceiling(n/2)+1)/6.

The programs for A053436, the canonical program `A053436.P8786622231752323343` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053436 has offset 1).

The definition of A053436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053436.P8786622231752323343

`n+2+ceil((n+1)/2)*(ceil((n+1)/2)-1)*(ceil((n+1)/2)+1)/6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053436

/-- `n+2+ceil((n+1)/2)*(ceil((n+1)/2)-1)*(ceil((n+1)/2)+1)/6` -/
def P8786622231752323343.Spec : Prop :=
  ∀ n, P8786622231752323343.a n = (A053436 (n + 1) : ℚ)

end A053436

/-! ## A053436.P15613752601910613377

`∑[a(n-2)+∑[n]%n]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A053436.P15613752601910613377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 2) + (∑ j ∈ Finset.range (n + 1), f2 j) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053436.P15613752601910613377

namespace A053436

/-- `∑[a(n-2)+∑[n]%n]` -/
def P15613752601910613377.Spec : Prop :=
  ∀ n, (P15613752601910613377.a n : ℤ) = A053436 (n + 1)

end A053436

/-! ## A053436.P4888676861425021828

`∑[A246276(C(n, a(n-1)²)+1)]` with `a(0)=2`
-/

namespace A053436.P4888676861425021828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A246276 (Nat.choose n (f1 (n - 1) ^ 2).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053436.P4888676861425021828

namespace A053436

/-- `∑[A246276(C(n, a(n-1)²)+1)]` -/
def P4888676861425021828.Spec : Prop :=
  ∀ n, P4888676861425021828.a n = A053436 (n + 1)

end A053436

/-! ## A053436.P6792300866015232432

`A389896(A081026(n+2))`
-/

namespace A053436.P6792300866015232432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389896 (A081026 (n + 2)).toNat

end

end A053436.P6792300866015232432

namespace A053436

/-- `A389896(A081026(n+2))` -/
def P6792300866015232432.Spec : Prop :=
  ∀ n, P6792300866015232432.a n = A053436 (n + 1)

end A053436

/-!
# A053438: Expansion of (1+x+2*x^3)/((1-x)*(1-x^2)).

The programs for A053438, the canonical program `A053438.P3645887928922430356` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053438 has offset 0).

The definition of A053438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+2x^3)/(1-x-x^2+x^3))` (program `A053438.P3645887928922430356`, by `A053438.P3645887928922430356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053438.P3645887928922430356

`ogf((1+x+2x^3)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053438

/-- `ogf((1+x+2x^3)/(1-x-x^2+x^3))` -/
def P3645887928922430356.Spec : Prop :=
  ∀ n, P3645887928922430356.a n = A053438 n

theorem P3645887928922430356.correct : P3645887928922430356.Spec := by
  intro n
  simp only [A053438]

end A053438

/-! ## A053438.P17386112902767140659

`record[abs(or(2, n-1))]`
-/

namespace A053438.P17386112902767140659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053438.P17386112902767140659

namespace A053438

/-- `record[abs(or(2, n-1))]` -/
def P17386112902767140659.Spec : Prop :=
  ∀ n, P17386112902767140659.a n = A053438 n

end A053438

/-! ## A053438.P2706389487141967099

`abs(record[xor(2, n-3)])`
-/

namespace A053438.P2706389487141967099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A053438.P2706389487141967099

namespace A053438

/-- `abs(record[xor(2, n-3)])` -/
def P2706389487141967099.Spec : Prop :=
  ∀ n, P2706389487141967099.a n = A053438 n

end A053438

/-! ## A053438.P14655923034733017967

`abs(or(1, -n))+n`
-/

namespace A053438.P14655923034733017967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))| + (n : ℤ)

end

end A053438.P14655923034733017967

namespace A053438

/-- `abs(or(1, -n))+n` -/
def P14655923034733017967.Spec : Prop :=
  ∀ n, P14655923034733017967.a n = A053438 n

end A053438

/-! ## A053438.P1243751187949143180

`abs(or(1, -n)-n)`
-/

namespace A053438.P1243751187949143180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ)) - (n : ℤ)|

end

end A053438.P1243751187949143180

namespace A053438

/-- `abs(or(1, -n)-n)` -/
def P1243751187949143180.Spec : Prop :=
  ∀ n, P1243751187949143180.a n = A053438 n

end A053438

/-! ## A053438.P6319803793077163456

`comp[or(2, n)+1]+1`
-/

namespace A053438.P6319803793077163456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A053438.P6319803793077163456

namespace A053438

/-- `comp[or(2, n)+1]+1` -/
def P6319803793077163456.Spec : Prop :=
  ∀ n, (P6319803793077163456.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P14452155591435931485

`or(1, abs(1-n))+n`
-/

namespace A053438.P14452155591435931485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |1 - (n : ℤ)| + (n : ℤ)

end

end A053438.P14452155591435931485

namespace A053438

/-- `or(1, abs(1-n))+n` -/
def P14452155591435931485.Spec : Prop :=
  ∀ n, P14452155591435931485.a n = A053438 n

end A053438

/-! ## A053438.P4795441745637686423

`abs(3*n-or(1, n))`
-/

namespace A053438.P4795441745637686423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - (Nat.lor 1 n : ℤ)|

end

end A053438.P4795441745637686423

namespace A053438

/-- `abs(3*n-or(1, n))` -/
def P4795441745637686423.Spec : Prop :=
  ∀ n, P4795441745637686423.a n = A053438 n

end A053438

/-! ## A053438.P617956927472997256

`eq[n, abs(or(2, n-2))]`
-/

namespace A053438.P617956927472997256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053438.P617956927472997256

namespace A053438

/-- `eq[n, abs(or(2, n-2))]` -/
def P617956927472997256.Spec : Prop :=
  ∀ n, (P617956927472997256.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P5218959271818079676

`record[n^(and(2, n)/2)]`
-/

namespace A053438.P5218959271818079676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((Nat.land 2 n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053438.P5218959271818079676

namespace A053438

/-- `record[n^(and(2, n)/2)]` -/
def P5218959271818079676.Spec : Prop :=
  ∀ n, P5218959271818079676.a n = (A053438 n : ℝ)

end A053438

/-! ## A053438.P3959460735070377508

`sqrt(record[or(2, n-1)²])`
-/

namespace A053438.P3959460735070377508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A053438.P3959460735070377508

namespace A053438

/-- `sqrt(record[or(2, n-1)²])` -/
def P3959460735070377508.Spec : Prop :=
  ∀ n, P3959460735070377508.a n = (A053438 n : ℝ)

end A053438

/-! ## A053438.P12505813944343749546

`record[or(n+1, and(2, n))]`
-/

namespace A053438.P12505813944343749546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053438.P12505813944343749546

namespace A053438

/-- `record[or(n+1, and(2, n))]` -/
def P12505813944343749546.Spec : Prop :=
  ∀ n, (P12505813944343749546.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P7377854739959094010

`∑[ceil(exp((n-2)%2))]`
-/

namespace A053438.P7377854739959094010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Int.tmod ((n : ℤ) - 2) 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053438.P7377854739959094010

namespace A053438

/-- `∑[ceil(exp((n-2)%2))]` -/
def P7377854739959094010.Spec : Prop :=
  ∀ n, P7377854739959094010.a n = A053438 n

end A053438

/-! ## A053438.P2687965583171458717

`comp[n%or(n, n-2)]`
-/

namespace A053438.P2687965583171458717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.lor (n : ℤ) ((n : ℤ) - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053438.P2687965583171458717

namespace A053438

/-- `comp[n%or(n, n-2)]` -/
def P2687965583171458717.Spec : Prop :=
  ∀ n, (P2687965583171458717.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P11148889326431063866

`eq[n², n^and(2, n)]`
-/

namespace A053438.P11148889326431063866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053438.P11148889326431063866

namespace A053438

/-- `eq[n², n^and(2, n)]` -/
def P11148889326431063866.Spec : Prop :=
  ∀ n, (P11148889326431063866.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P16738837959755322360

`a(n-2)+4` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A053438.P16738837959755322360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + 4

end

end A053438.P16738837959755322360

namespace A053438

/-- `a(n-2)+4` -/
def P16738837959755322360.Spec : Prop :=
  ∀ n, (P16738837959755322360.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P13249271818592107996

`(1-n)%2+2*n`
-/

namespace A053438.P13249271818592107996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (2 * n : ℤ)

end

end A053438.P13249271818592107996

namespace A053438

/-- `(1-n)%2+2*n` -/
def P13249271818592107996.Spec : Prop :=
  ∀ n, P13249271818592107996.a n = A053438 n

end A053438

/-! ## A053438.P7979072778765655770

`2*n-(n-1)%2`
-/

namespace A053438.P7979072778765655770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

end

end A053438.P7979072778765655770

namespace A053438

/-- `2*n-(n-1)%2` -/
def P7979072778765655770.Spec : Prop :=
  ∀ n, P7979072778765655770.a n = A053438 n

end A053438

/-! ## A053438.P5955331397144449176

`∑[gcd(3, (2-n²)%4)]`
-/

namespace A053438.P5955331397144449176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (Int.tmod (2 - (n ^ 2 : ℤ)) 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053438.P5955331397144449176

namespace A053438

/-- `∑[gcd(3, (2-n²)%4)]` -/
def P5955331397144449176.Spec : Prop :=
  ∀ n, (P5955331397144449176.a n : ℤ) = A053438 n

end A053438

/-! ## A053438.P857896040636900361

`eq[1, gcd(n, and(2, n)/2)]`
-/

namespace A053438.P857896040636900361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land 2 n : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053438.P857896040636900361

namespace A053438

/-- `eq[1, gcd(n, and(2, n)/2)]` -/
def P857896040636900361.Spec : Prop :=
  ∀ n, (P857896040636900361.a n : ℤ) = A053438 n

end A053438

/-!
# A053439: Expansion of (1+x+2*x^3)/((1-x)*(1-x^2)^2).

The programs for A053439, the canonical program `A053439.P14758062880870367025` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053439 has offset 0).

The definition of A053439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+2x^3)/(1-x-2x^2+2x^3+x^4-x^5))` (program `A053439.P14758062880870367025`, by `A053439.P14758062880870367025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053439.P14758062880870367025

`ogf((1+x+2x^3)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053439

/-- `ogf((1+x+2x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P14758062880870367025.Spec : Prop :=
  ∀ n, P14758062880870367025.a n = A053439 n

theorem P14758062880870367025.correct : P14758062880870367025.Spec := by
  intro n
  simp only [A053439]

end A053439

/-! ## A053439.P9455882427870110269

`A128223(n)+1`
-/

namespace A053439.P9455882427870110269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n + 1

end

end A053439.P9455882427870110269

namespace A053439

/-- `A128223(n)+1` -/
def P9455882427870110269.Spec : Prop :=
  ∀ n, P9455882427870110269.a n = A053439 n

end A053439

/-! ## A053439.P15869446830683252821

`∑[n]+gcd(xor(1, -n), ∑[n])`
-/

namespace A053439.P15869446830683252821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A053439.P15869446830683252821

namespace A053439

/-- `∑[n]+gcd(xor(1, -n), ∑[n])` -/
def P15869446830683252821.Spec : Prop :=
  ∀ n, (P15869446830683252821.a n : ℤ) = A053439 n

end A053439

/-! ## A053439.P4242590506251542440

`∑[Δ[gcd(n, floor(n/2))]+n]`
-/

namespace A053439.P4242590506251542440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P4242590506251542440

namespace A053439

/-- `∑[Δ[gcd(n, floor(n/2))]+n]` -/
def P4242590506251542440.Spec : Prop :=
  ∀ n, P4242590506251542440.a n = A053439 n

end A053439

/-! ## A053439.P13513394886316684163

`floor((lcm(2, n)+n²)/2)+1`
-/

namespace A053439.P13513394886316684163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n + n ^ 2 : ℚ) / 2⌋ + 1

end

end A053439.P13513394886316684163

namespace A053439

/-- `floor((lcm(2, n)+n²)/2)+1` -/
def P13513394886316684163.Spec : Prop :=
  ∀ n, P13513394886316684163.a n = A053439 n

end A053439

/-! ## A053439.P811387810544674119

`∑[floor(n/2)+n^(n%2)]`
-/

namespace A053439.P811387810544674119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (n ^ (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P811387810544674119

namespace A053439

/-- `∑[floor(n/2)+n^(n%2)]` -/
def P811387810544674119.Spec : Prop :=
  ∀ n, P811387810544674119.a n = A053439 n

end A053439

/-! ## A053439.P12579158841245935461

`(n-1)*(ceil(n/2)+1)+2`
-/

namespace A053439.P12579158841245935461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (⌈(n : ℚ) / 2⌉ + 1) + 2

end

end A053439.P12579158841245935461

namespace A053439

/-- `(n-1)*(ceil(n/2)+1)+2` -/
def P12579158841245935461.Spec : Prop :=
  ∀ n, P12579158841245935461.a n = A053439 n

end A053439

/-! ## A053439.P12964502690211368202

`abs((∑[and(1, n)]+1)*(n-1)+2)`
-/

namespace A053439.P12964502690211368202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * ((n : ℤ) - 1) + 2|

end

end A053439.P12964502690211368202

namespace A053439

/-- `abs((∑[and(1, n)]+1)*(n-1)+2)` -/
def P12964502690211368202.Spec : Prop :=
  ∀ n, P12964502690211368202.a n = A053439 n

end A053439

/-! ## A053439.P10027896599618348901

`floor(∑[n+1]-n/gcd(2, n+1))`
-/

namespace A053439.P10027896599618348901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

end

end A053439.P10027896599618348901

namespace A053439

/-- `floor(∑[n+1]-n/gcd(2, n+1))` -/
def P10027896599618348901.Spec : Prop :=
  ∀ n, P10027896599618348901.a n = A053439 n

end A053439

/-! ## A053439.P16326644445564370388

`∑[a(n-2)+2-(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A053439.P16326644445564370388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2 - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P16326644445564370388

namespace A053439

/-- `∑[a(n-2)+2-(-1)^n]` -/
def P16326644445564370388.Spec : Prop :=
  ∀ n, P16326644445564370388.a n = A053439 n

end A053439

/-! ## A053439.P11868857301878693805

`∑[2-((-1)^n-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A053439.P11868857301878693805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 - ((-1) ^ n - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P11868857301878693805

namespace A053439

/-- `∑[2-((-1)^n-a(n-2))]` -/
def P11868857301878693805.Spec : Prop :=
  ∀ n, P11868857301878693805.a n = A053439 n

end A053439

/-! ## A053439.P8519176315319859871

`∑[a(n-2)+(2*n+1)%4]` with `a(0)=1, a(1)=1`
-/

namespace A053439.P8519176315319859871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (2 * n + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P8519176315319859871

namespace A053439

/-- `∑[a(n-2)+(2*n+1)%4]` -/
def P8519176315319859871.Spec : Prop :=
  ∀ n, (P8519176315319859871.a n : ℤ) = A053439 n

end A053439

/-! ## A053439.P6462475185559550006

`∑[2*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A053439.P6462475185559550006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P6462475185559550006

namespace A053439

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P6462475185559550006.Spec : Prop :=
  ∀ n, P6462475185559550006.a n = A053439 n

end A053439

/-! ## A053439.P15796295020090257176

`∑[∑[4-a(n-1)]-(a(n-1)+2)]` with `a(0)=1`
-/

namespace A053439.P15796295020090257176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P15796295020090257176

namespace A053439

/-- `∑[∑[4-a(n-1)]-(a(n-1)+2)]` -/
def P15796295020090257176.Spec : Prop :=
  ∀ n, P15796295020090257176.a n = A053439 n

end A053439

/-! ## A053439.P3209442718235261204

`∑[∑[4-a(n-1)]-2-a(n-1)]` with `a(0)=1`
-/

namespace A053439.P3209442718235261204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P3209442718235261204

namespace A053439

/-- `∑[∑[4-a(n-1)]-2-a(n-1)]` -/
def P3209442718235261204.Spec : Prop :=
  ∀ n, P3209442718235261204.a n = A053439 n

end A053439

/-! ## A053439.P3129846762117654330

`∑[∑[2*n]%(2*n+1)+(-1)^n]`
-/

namespace A053439.P3129846762117654330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % (2 * n + 1) : ℕ) : ℤ) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P3129846762117654330

namespace A053439

/-- `∑[∑[2*n]%(2*n+1)+(-1)^n]` -/
def P3129846762117654330.Spec : Prop :=
  ∀ n, P3129846762117654330.a n = A053439 n

end A053439

/-! ## A053439.P5194514147281627379

`∑[A266285(n)]`
-/

namespace A053439.P5194514147281627379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P5194514147281627379

namespace A053439

/-- `∑[A266285(n)]` -/
def P5194514147281627379.Spec : Prop :=
  ∀ n, P5194514147281627379.a n = A053439 n

end A053439

/-! ## A053439.P6028696495907186185

`∑[∑[1-A097141(n)]]`
-/

namespace A053439.P6028696495907186185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A097141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P6028696495907186185

namespace A053439

/-- `∑[∑[1-A097141(n)]]` -/
def P6028696495907186185.Spec : Prop :=
  ∀ n, P6028696495907186185.a n = A053439 n

end A053439

/-! ## A053439.P9330154236193435388

`∑[∑[A105811(n)]+n]`
-/

namespace A053439.P9330154236193435388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053439.P9330154236193435388

namespace A053439

/-- `∑[∑[A105811(n)]+n]` -/
def P9330154236193435388.Spec : Prop :=
  ∀ n, P9330154236193435388.a n = A053439 n

end A053439

/-! ## A053439.P10585663887553175130

`(A321220(n)+n²)/2`
-/

namespace A053439.P10585663887553175130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321220 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A053439.P10585663887553175130

namespace A053439

/-- `(A321220(n)+n²)/2` -/
def P10585663887553175130.Spec : Prop :=
  ∀ n, P10585663887553175130.a n = (A053439 n : ℚ)

end A053439

/-!
# A053440: Number of k-simplices in the first derived complex of the standard triangulation of an n-simplex. Equivalently, T(n,k) is the number of ascending chains of length k+1 of nonempty subsets of the set {1, 2, ..., n+1}.

The programs for A053440, the canonical program `A053440.P3843288928927339770` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053440 has offset 0).

The definition of A053440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053440.P16820237403655423948

`abs(A163626(comp[∑[n]]))`
-/

namespace A053440.P16820237403655423948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163626 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A053440.P16820237403655423948

namespace A053440

/-- `abs(A163626(comp[∑[n]]))` -/
def P16820237403655423948.Spec : Prop :=
  ∀ n, P16820237403655423948.a n = A053440 n

end A053440

/-! ## A053440.P1884467714137028769

`A028246(comp[∑[n]]+1)`
-/

namespace A053440.P1884467714137028769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A053440.P1884467714137028769

namespace A053440

/-- `A028246(comp[∑[n]]+1)` -/
def P1884467714137028769.Spec : Prop :=
  ∀ n, P1884467714137028769.a n = A053440 n

end A053440

/-! ## A053440.P6800681695191564249

`A142071(A111650(n+1)+n+3)`
-/

namespace A053440.P6800681695191564249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (A111650 (n + 1) + (n + 3 : ℤ)).toNat

end

end A053440.P6800681695191564249

namespace A053440

/-- `A142071(A111650(n+1)+n+3)` -/
def P6800681695191564249.Spec : Prop :=
  ∀ n, P6800681695191564249.a n = A053440 n

end A053440

/-! ## A053440.P3843288928927339770

`A019538(n+1)+and(-2, A019538(n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053440

/-- `A019538(n+1)+and(-2, A019538(n+2))` -/
def P3843288928927339770.Spec : Prop :=
  ∀ n, P3843288928927339770.a n = A053440 n

theorem P3843288928927339770.correct : P3843288928927339770.Spec := by
  intro n
  simp only [A053440]

end A053440

/-! ## A053440.P17152394236003010232

`gcd(A000038(n), A163626(A014132(n+1)))`
-/

namespace A053440.P17152394236003010232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A163626 (A014132 (n + 1)).toNat)

end

end A053440.P17152394236003010232

namespace A053440

/-- `gcd(A000038(n), A163626(A014132(n+1)))` -/
def P17152394236003010232.Spec : Prop :=
  ∀ n, (P17152394236003010232.a n : ℤ) = A053440 n

end A053440

/-! ## A053440.P12188154113781778793

`A142071(lt[n, A142071(n)²²])`
-/

namespace A053440.P12188154113781778793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A142071 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053440.P12188154113781778793

namespace A053440

/-- `A142071(lt[n, A142071(n)²²])` -/
def P12188154113781778793.Spec : Prop :=
  ∀ n, P12188154113781778793.a n = A053440 n

end A053440

/-! ## A053440.P13238498459939779426

`A130850(A380649(n+1))`
-/

namespace A053440.P13238498459939779426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (A380649 (n + 1)).toNat

end

end A053440.P13238498459939779426

namespace A053440

/-- `A130850(A380649(n+1))` -/
def P13238498459939779426.Spec : Prop :=
  ∀ n, P13238498459939779426.a n = A053440 n

end A053440

/-!
# A053441: Moments of generalized Motzkin paths.

The programs for A053441, the canonical program `A053441.P6288736101042432941` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053441 has offset 2).

The definition of A053441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053441.P6288736101042432941

`4*a(n-2)+2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=4, a(4)=16, a(5)=24`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053441

/-- `4*a(n-2)+2*a(n-3)-a(n-6)` -/
def P6288736101042432941.Spec : Prop :=
  ∀ n, P6288736101042432941.a n = A053441 (n + 2)

theorem P6288736101042432941.correct : P6288736101042432941.Spec := by
  intro n
  simp only [A053441, Nat.add_sub_cancel]

end A053441

/-!
# A053443: x^2 + y^2 does not take on all possible values mod n.

The programs for A053443, the canonical program `A053443.P9317151011404618867` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053443 has offset 1).

The definition of A053443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053443.P9317151011404618867

`lt[1, A072438(A008833(n+1))]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A053443

/-- `lt[1, A072438(A008833(n+1))]+1` -/
def P9317151011404618867.Spec : Prop :=
  ∀ n, (P9317151011404618867.a n : ℤ) = A053443 (n + 1)

theorem P9317151011404618867.correct : P9317151011404618867.Spec := by
  intro n
  simp only [A053443, Nat.add_sub_cancel]

end A053443

/-! ## A053443.P11062727836767533337

`lt[A155918(n+1), n+1]+1`
-/

namespace A053443.P11062727836767533337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053443.P11062727836767533337

namespace A053443

/-- `lt[A155918(n+1), n+1]+1` -/
def P11062727836767533337.Spec : Prop :=
  ∀ n, (P11062727836767533337.a n : ℤ) = A053443 (n + 1)

end A053443

/-! ## A053443.P14449421501218376878

`lt[A155918(A028310(n)), n]`
-/

namespace A053443.P14449421501218376878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053443.P14449421501218376878

namespace A053443

/-- `lt[A155918(A028310(n)), n]` -/
def P14449421501218376878.Spec : Prop :=
  ∀ n, (P14449421501218376878.a n : ℤ) = A053443 (n + 1)

end A053443

/-! ## A053443.P5139069263169581756

`lt[A233583(A155918(n+1)), n]+1`
-/

namespace A053443.P5139069263169581756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A155918 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053443.P5139069263169581756

namespace A053443

/-- `lt[A233583(A155918(n+1)), n]+1` -/
def P5139069263169581756.Spec : Prop :=
  ∀ n, (P5139069263169581756.a n : ℤ) = A053443 (n + 1)

end A053443

/-! ## A053443.P4868646772935439526

`lt[A155918(A233583(n+1)), n]`
-/

namespace A053443.P4868646772935439526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053443.P4868646772935439526

namespace A053443

/-- `lt[A155918(A233583(n+1)), n]` -/
def P4868646772935439526.Spec : Prop :=
  ∀ n, (P4868646772935439526.a n : ℤ) = A053443 (n + 1)

end A053443

/-!
# A053444: x^2 + y^2 mod A053443(n) does not take on value a(n).

The programs for A053444, there is no canonical definition to state claims against.
-/

/-! ## A053444.P3746562557090828145

`p?[A000032(A207621(A071773(n+1)))]`
-/

namespace A053444.P3746562557090828145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A207621 (A071773 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053444.P3746562557090828145

/-! ## A053444.P11811513796377895645

`or(3, A087117(A297733(n+1)))`
-/

namespace A053444.P11811513796377895645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A087117 (A297733 (n + 1)).toNat)

end

end A053444.P11811513796377895645

/-! ## A053444.P8764101687468852238

`or(3, A235168(A297112(n+1)))`
-/

namespace A053444.P8764101687468852238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A235168 (A297112 (n + 1)).toNat)

end

end A053444.P8764101687468852238

/-! ## A053444.P17740020390800765775

`p?[A220073(A134930(A336467(n+1)))]`
-/

namespace A053444.P17740020390800765775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (A134930 (A336467 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053444.P17740020390800765775

/-! ## A053444.P15451544570483937649

`or(3, abs(A207869(2*n+1)))`
-/

namespace A053444.P15451544570483937649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 |A207869 (2 * n + 1)|

end

end A053444.P15451544570483937649

/-!
# A053445: Second differences of partition numbers A000041.

The programs for A053445, there is no canonical definition to state claims against.
-/

/-! ## A053445.P18177443658966296037

`A002865(n+2)-A002865(n+1)`
-/

namespace A053445.P18177443658966296037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2) - A002865 (n + 1)

end

end A053445.P18177443658966296037

/-! ## A053445.P3010715785209081512

`A000041(n+2)-A000041(n+1)-(A000041(n+1)-A000041(n))`
-/

namespace A053445.P3010715785209081512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 2) - A000041 (n + 1) - (A000041 (n + 1) - A000041 n)

end

end A053445.P3010715785209081512

/-! ## A053445.P6102708036601855500

`∑[A072380(abs(1-n))]`
-/

namespace A053445.P6102708036601855500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053445.P6102708036601855500

/-! ## A053445.P18382758502863813479

`A072380(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A053445.P18382758502863813479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072380 (n - 1) + a (n - 1)

end

end A053445.P18382758502863813479

/-! ## A053445.P15657962034200950470

`∑[A072380(n)]+1-A072380(n)`
-/

namespace A053445.P15657962034200950470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072380 n)

end

end A053445.P15657962034200950470

/-! ## A053445.P17442092885903722572

`A008483(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A053445.P17442092885903722572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008483 (n + 2) - a (n - 1)

end

end A053445.P17442092885903722572

/-! ## A053445.P2055561550280655194

`Δ[A002865(n+1)]`
-/

namespace A053445.P2055561550280655194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P2055561550280655194

/-! ## A053445.P15836338702696974367

`Δ[A232697(n+1)]`
-/

namespace A053445.P15836338702696974367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P15836338702696974367

/-! ## A053445.P8641283825330167310

`Δ[A085811(n+4)]`
-/

namespace A053445.P8641283825330167310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P8641283825330167310

/-! ## A053445.P3308134204981752966

`A232697(n+2)-A232697(n+1)`
-/

namespace A053445.P3308134204981752966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 2) - A232697 (n + 1)

end

end A053445.P3308134204981752966

/-! ## A053445.P2202035113745676062

`A187219(n+2)-A085811(n+4)`
-/

namespace A053445.P2202035113745676062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) - A085811 (n + 4)

end

end A053445.P2202035113745676062

/-! ## A053445.P5559212214151219615

`Δ[A027337(n+1)-A027336(n)]`
-/

namespace A053445.P5559212214151219615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) - A027336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P5559212214151219615

/-! ## A053445.P18387649678523236090

`A000041(n)-A117989(n+1)`
-/

namespace A053445.P18387649678523236090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A117989 (n + 1)

end

end A053445.P18387649678523236090

/-! ## A053445.P6694786965630132048

`A229816(n+2)-A000041(n+1)`
-/

namespace A053445.P6694786965630132048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (n + 2) - A000041 (n + 1)

end

end A053445.P6694786965630132048

/-! ## A053445.P7646373712315561316

`A083751(n+2)+A000041(n)-A000065(n+1)`
-/

namespace A053445.P7646373712315561316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 2) + (A000041 n - A000065 (n + 1))

end

end A053445.P7646373712315561316

/-! ## A053445.P6450004096270445672

`A187219(n+2)+A000041(n)-A000041(n+1)`
-/

namespace A053445.P6450004096270445672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) + (A000041 n - A000041 (n + 1))

end

end A053445.P6450004096270445672

/-! ## A053445.P8623828976742064647

`Δ[Δ[A000041(n)]]`
-/

namespace A053445.P8623828976742064647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P8623828976742064647

/-! ## A053445.P8330703452434217488

`Δ[Δ[A000065(n)]]`
-/

namespace A053445.P8330703452434217488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P8330703452434217488

/-! ## A053445.P14129950148194044184

`Δ[Δ[A133041(n)]]`
-/

namespace A053445.P14129950148194044184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P14129950148194044184

/-! ## A053445.P7047140410679000914

`Δ[Δ[A018783(n)+A000837(n)]]`
-/

namespace A053445.P7047140410679000914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053445.P7047140410679000914

/-!
# A053446: Multiplicative order of 3 mod m, where gcd(m, 3) = 1.

The programs for A053446, there is no canonical definition to state claims against.
-/

/-! ## A053446.P2064336763642515158

`A050975(1-(1-n)%(n+1))`
-/

namespace A053446.P2064336763642515158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A053446.P2064336763642515158

/-! ## A053446.P15051167588468140590

`A050975((2*n)%(n+1)+1)`
-/

namespace A053446.P15051167588468140590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (2 * n % (n + 1) + 1)

end

end A053446.P15051167588468140590

/-! ## A053446.P1652234549747485228

`A050975(A028310(n))`
-/

namespace A053446.P1652234549747485228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A028310 n).toNat

end

end A053446.P1652234549747485228

/-! ## A053446.P7485740196434335919

`A050975(A000007(n)+n)`
-/

namespace A053446.P7485740196434335919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A000007 n + (n : ℤ)).toNat

end

end A053446.P7485740196434335919

/-! ## A053446.P1088534037934917850

`A050975(A004277(n)-n)`
-/

namespace A053446.P1088534037934917850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A004277 n - (n : ℤ)).toNat

end

end A053446.P1088534037934917850

/-! ## A053446.P13122863453226940560

`A050975(A004275(n+1)-n)`
-/

namespace A053446.P13122863453226940560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A053446.P13122863453226940560

/-! ## A053446.P13515648664056726956

`A050975(A004273(n)+1-n)`
-/

namespace A053446.P13515648664056726956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (A004273 n + (1 - (n : ℤ))).toNat

end

end A053446.P13515648664056726956

/-! ## A053446.P12290793307573570056

`A050975(1-(n-A004273(n)))`
-/

namespace A053446.P12290793307573570056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050975 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A053446.P12290793307573570056

/-! ## A053446.P12170626361794010619

`A007734(A001651(n+1))`
-/

namespace A053446.P12170626361794010619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A001651 (n + 1)).toNat

end

end A053446.P12170626361794010619

/-! ## A053446.P14234119908419973612

`A007734(A032766(n)+1)`
-/

namespace A053446.P14234119908419973612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A032766 n + 1).toNat

end

end A053446.P14234119908419973612

/-! ## A053446.P2776329892076515145

`A007734(A097482(n+1))`
-/

namespace A053446.P2776329892076515145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A097482 (n + 1)).toNat

end

end A053446.P2776329892076515145

/-! ## A053446.P11796097345571215009

`A007734(record[A038502(n+1)])`
-/

namespace A053446.P11796097345571215009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053446.P11796097345571215009

/-! ## A053446.P9460407755954082909

`A054704(record[A038502(n+1)])`
-/

namespace A053446.P9460407755954082909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053446.P9460407755954082909

/-! ## A053446.P12974095389103104971

`A007734(A004526(n)+1+n)`
-/

namespace A053446.P12974095389103104971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A004526 n + 1 + (n : ℤ)).toNat

end

end A053446.P12974095389103104971

/-! ## A053446.P10011075972068913037

`A054704(A004526(n)+1+n)`
-/

namespace A053446.P10011075972068913037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (A004526 n + 1 + (n : ℤ)).toNat

end

end A053446.P10011075972068913037

/-! ## A053446.P10097841623782686703

`A054704(∑[A000034(n+1)]-1)`
-/

namespace A053446.P10097841623782686703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A053446.P10097841623782686703

/-! ## A053446.P5381906418664004394

`A007734(A026741(n+1)+A026741(n))`
-/

namespace A053446.P5381906418664004394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A026741 (n + 1) + A026741 n).toNat

end

end A053446.P5381906418664004394

/-! ## A053446.P13888362203920421718

`A054704(A026741(n+1)+A026741(n))`
-/

namespace A053446.P13888362203920421718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (A026741 (n + 1) + A026741 n).toNat

end

end A053446.P13888362203920421718

/-! ## A053446.P10091791736924672373

`A007734(A133223(n+1))`
-/

namespace A053446.P10091791736924672373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A133223 (n + 1)).toNat

end

end A053446.P10091791736924672373

/-! ## A053446.P5967601347983690595

`A054704(A057353(2*n)+1)`
-/

namespace A053446.P5967601347983690595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (A057353 (2 * n) + 1).toNat

end

end A053446.P5967601347983690595

/-!
# A053447: Multiplicative order of 4 mod 2n+1.

The programs for A053447, there is no canonical definition to state claims against.
-/

/-! ## A053447.P17167919879916652466

`A055388(n+1)/2`
-/

namespace A053447.P17167919879916652466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (n + 1) : ℚ) / 2

end

end A053447.P17167919879916652466

/-! ## A053447.P5403864590785824849

`lcm(2, A002326(n))/2`
-/

namespace A053447.P5403864590785824849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002326 n) : ℚ) / 2

end

end A053447.P5403864590785824849

/-! ## A053447.P8558943090373872532

`A050976(A028310(n))`
-/

namespace A053447.P8558943090373872532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A028310 n).toNat

end

end A053447.P8558943090373872532

/-! ## A053447.P2758033794521792815

`A050976(A000007(n)+n)`
-/

namespace A053447.P2758033794521792815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A000007 n + (n : ℤ)).toNat

end

end A053447.P2758033794521792815

/-! ## A053447.P17412102523111436884

`A050976(A004277(n)-n)`
-/

namespace A053447.P17412102523111436884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A004277 n - (n : ℤ)).toNat

end

end A053447.P17412102523111436884

/-! ## A053447.P3903498585748942329

`A037225(n)/A339049(n)`
-/

namespace A053447.P3903498585748942329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A339049 n : ℚ)

end

end A053447.P3903498585748942329

/-! ## A053447.P2262066069515837127

`A050976(A004275(n+1)-n)`
-/

namespace A053447.P2262066069515837127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050976 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A053447.P2262066069515837127

/-! ## A053447.P5894495778601508161

`gcd(A002326(n), A216829(n+1))`
-/

namespace A053447.P5894495778601508161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 n) (A216829 (n + 1))

end

end A053447.P5894495778601508161

/-! ## A053447.P15379616845281864593

`A000010(2*n+1)/A339049(n)`
-/

namespace A053447.P15379616845281864593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A339049 n : ℚ)

end

end A053447.P15379616845281864593

/-! ## A053447.P12319024439370247568

`A216829(n+1)%A055388(n+1)`
-/

namespace A053447.P12319024439370247568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216829 (n + 1)) (A055388 (n + 1))

end

end A053447.P12319024439370247568

/-! ## A053447.P16881111878603419329

`A000010(A002326(n)/A302141(n))*A302141(n)`
-/

namespace A053447.P16881111878603419329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A302141 n : ℚ))).toNat * A302141 n

end

end A053447.P16881111878603419329

/-! ## A053447.P14195664369762767345

`A026741(A002326(n))`
-/

namespace A053447.P14195664369762767345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002326 n).toNat

end

end A053447.P14195664369762767345

/-! ## A053447.P7792555280674191514

`A029578(A002326(n)+2)-1`
-/

namespace A053447.P7792555280674191514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A002326 n + 2).toNat - 1

end

end A053447.P7792555280674191514

/-! ## A053447.P5132100970743425728

`A001281(A055388(n+1))`
-/

namespace A053447.P5132100970743425728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055388 (n + 1)).toNat

end

end A053447.P5132100970743425728

/-! ## A053447.P6320116990419157924

`A004526(lcm(2, A002326(n)))`
-/

namespace A053447.P6320116990419157924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A002326 n))

end

end A053447.P6320116990419157924

/-! ## A053447.P8910266592537772183

`A078898(A055388(n+1)+2)-1`
-/

namespace A053447.P8910266592537772183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A055388 (n + 1) + 2).toNat - 1

end

end A053447.P8910266592537772183

/-! ## A053447.P12094775865307014280

`A007735(Δ[n²])`
-/

namespace A053447.P12094775865307014280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053447.P12094775865307014280

/-! ## A053447.P2533282296920578430

`A054705(Δ[n²])`
-/

namespace A053447.P2533282296920578430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053447.P2533282296920578430

/-! ## A053447.P15434418260031967916

`A007735(2*n+1)%(n+2)`
-/

namespace A053447.P15434418260031967916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (2 * n + 1)) (n + 2 : ℤ)

end

end A053447.P15434418260031967916

/-! ## A053447.P10374607246713918614

`A054705(2*n+1)%(n+2)`
-/

namespace A053447.P10374607246713918614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054705 (2 * n + 1)) (n + 2 : ℤ)

end

end A053447.P10374607246713918614

/-!
# A053448: Multiplicative order of 5 mod m, where gcd(m, 5) = 1.

The programs for A053448, there is no canonical definition to state claims against.
-/

/-! ## A053448.P8324110955929375617

`A050977(A028310(n))`
-/

namespace A053448.P8324110955929375617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A028310 n).toNat

end

end A053448.P8324110955929375617

/-! ## A053448.P14669140305413904682

`A050977(A000007(n)+n)`
-/

namespace A053448.P14669140305413904682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A000007 n + (n : ℤ)).toNat

end

end A053448.P14669140305413904682

/-! ## A053448.P17983015999203744204

`A050977(or(n, A000007(n)))`
-/

namespace A053448.P17983015999203744204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A053448.P17983015999203744204

/-! ## A053448.P6826302236659953390

`A050977(or(n, A036987(n)))`
-/

namespace A053448.P6826302236659953390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (Int.lor (n : ℤ) (A036987 n)).toNat

end

end A053448.P6826302236659953390

/-! ## A053448.P14988381375822006974

`A050977(xor(n, A000007(n)))`
-/

namespace A053448.P14988381375822006974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A053448.P14988381375822006974

/-! ## A053448.P11692378653095078921

`A050977(A057428(n)+1+n)`
-/

namespace A053448.P11692378653095078921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A057428 n + 1 + (n : ℤ)).toNat

end

end A053448.P11692378653095078921

/-! ## A053448.P18273451254207249100

`A050977(A036987(2*n)+n)`
-/

namespace A053448.P18273451254207249100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A036987 (2 * n) + (n : ℤ)).toNat

end

end A053448.P18273451254207249100

/-! ## A053448.P18287066562692478445

`A007736(A001068(n)+1)`
-/

namespace A053448.P18287066562692478445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A001068 n + 1).toNat

end

end A053448.P18287066562692478445

/-! ## A053448.P15409720494487227118

`A007736(A047201(n+1))`
-/

namespace A053448.P15409720494487227118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A047201 (n + 1)).toNat

end

end A053448.P15409720494487227118

/-! ## A053448.P1420208232187820400

`A054706(A001068(n)+1)`
-/

namespace A053448.P1420208232187820400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A001068 n + 1).toNat

end

end A053448.P1420208232187820400

/-! ## A053448.P6550712916163691054

`A007736(A008621(n)+n)`
-/

namespace A053448.P6550712916163691054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A008621 n + (n : ℤ)).toNat

end

end A053448.P6550712916163691054

/-! ## A053448.P3419397627642288248

`A007736(record[A132739(n+1)])`
-/

namespace A053448.P3419397627642288248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053448.P3419397627642288248

/-! ## A053448.P16408209829804129312

`A054706(record[A132739(n+1)])`
-/

namespace A053448.P16408209829804129312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053448.P16408209829804129312

/-! ## A053448.P9207456547082058609

`A007736(A002265(n)+1+n)`
-/

namespace A053448.P9207456547082058609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A002265 n + 1 + (n : ℤ)).toNat

end

end A053448.P9207456547082058609

/-! ## A053448.P10377474590143873503

`A054706(A002265(n)+1+n)`
-/

namespace A053448.P10377474590143873503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A002265 n + 1 + (n : ℤ)).toNat

end

end A053448.P10377474590143873503

/-! ## A053448.P5391831179183316796

`A007736(record[A087504(n)])`
-/

namespace A053448.P5391831179183316796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053448.P5391831179183316796

/-! ## A053448.P3132267268386705295

`A054706(record[A087504(n)])`
-/

namespace A053448.P3132267268386705295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053448.P3132267268386705295

/-! ## A053448.P17118058818016414773

`A007736(A008621(5*n))`
-/

namespace A053448.P17118058818016414773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A008621 (5 * n)).toNat

end

end A053448.P17118058818016414773

/-! ## A053448.P529221204897522057

`A050977(A134478(∑[n]))`
-/

namespace A053448.P529221204897522057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A053448.P529221204897522057

/-! ## A053448.P8009189016923024073

`A050977(A000194(n²+1))`
-/

namespace A053448.P8009189016923024073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (A000194 (n ^ 2 + 1)).toNat

end

end A053448.P8009189016923024073

/-!
# A053449: Multiplicative order of 6 mod n, where gcd(n, 6) = 1.

The programs for A053449, there is no canonical definition to state claims against.
-/

/-! ## A053449.P7081066677421931174

`A050978(or(n, char[n^14]))`
-/

namespace A053449.P7081066677421931174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050978 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))

end

end A053449.P7081066677421931174

/-! ## A053449.P4653334006515035294

`A050978(A028310(n))`
-/

namespace A053449.P4653334006515035294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050978 (A028310 n).toNat

end

end A053449.P4653334006515035294

/-! ## A053449.P12666442126025671315

`A054707(n%2+3*n+1)`
-/

namespace A053449.P12666442126025671315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (n % 2 + 3 * n + 1)

end

end A053449.P12666442126025671315

/-! ## A053449.P4166038804849371241

`A007737(A007310(n+1))`
-/

namespace A053449.P4166038804849371241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A007310 (n + 1)).toNat

end

end A053449.P4166038804849371241

/-! ## A053449.P5631971335797093381

`A007737(A038179(n+2))`
-/

namespace A053449.P5631971335797093381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A038179 (n + 2)).toNat

end

end A053449.P5631971335797093381

/-! ## A053449.P8015262777102445796

`A007737(record[A051724(n+1)])`
-/

namespace A053449.P8015262777102445796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053449.P8015262777102445796

/-! ## A053449.P8404773794286924222

`A054707(record[A065330(n+1)])`
-/

namespace A053449.P8404773794286924222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053449.P8404773794286924222

/-! ## A053449.P10910236211052249764

`A007737(A047233(n+1)+1)`
-/

namespace A053449.P10910236211052249764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A047233 (n + 1) + 1).toNat

end

end A053449.P10910236211052249764

/-! ## A053449.P8476955506942377636

`A007737(A091999(n+1)/2)`
-/

namespace A053449.P8476955506942377636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (SequenceMachineLib.roundAway ((A091999 (n + 1) : ℚ) / 2)).toNat

end

end A053449.P8476955506942377636

/-! ## A053449.P17064823080304189262

`A007737(2*A004526(3*n+1)+1)`
-/

namespace A053449.P17064823080304189262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (2 * A004526 (3 * n + 1) + 1).toNat

end

end A053449.P17064823080304189262

/-! ## A053449.P17832265338129227606

`A007737(A063221(n+1))`
-/

namespace A053449.P17832265338129227606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A063221 (n + 1)).toNat

end

end A053449.P17832265338129227606

/-! ## A053449.P2376426381392121191

`A007737(A091999(n+1))`
-/

namespace A053449.P2376426381392121191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A091999 (n + 1)).toNat

end

end A053449.P2376426381392121191

/-! ## A053449.P16098881987424927511

`A007737(A259755(n+1)/2)`
-/

namespace A053449.P16098881987424927511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (SequenceMachineLib.roundAway ((A259755 (n + 1) : ℚ) / 2)).toNat

end

end A053449.P16098881987424927511

/-! ## A053449.P6295586191543294317

`A007737(or(2, A008458(n)+2))`
-/

namespace A053449.P6295586191543294317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (Int.lor 2 (A008458 n + 2)).toNat

end

end A053449.P6295586191543294317

/-! ## A053449.P2646988988039709039

`A007737(A306771(n+1))`
-/

namespace A053449.P2646988988039709039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A306771 (n + 1)).toNat

end

end A053449.P2646988988039709039

/-! ## A053449.P8421059681485522404

`A007737(A259755(n+1))`
-/

namespace A053449.P8421059681485522404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A259755 (n + 1)).toNat

end

end A053449.P8421059681485522404

/-!
# A053450: Multiplicative order of 7 mod n, where gcd(n,7) = 1.

The programs for A053450, there is no canonical definition to state claims against.
-/

/-! ## A053450.P11916641733776298378

`A050979(floor(1/(n+1)+n))`
-/

namespace A053450.P11916641733776298378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050979 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A053450.P11916641733776298378

/-! ## A053450.P6755761303903179302

`A007738(A047304(n+1))`
-/

namespace A053450.P6755761303903179302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (A047304 (n + 1)).toNat

end

end A053450.P6755761303903179302

/-! ## A053450.P2665909673583281636

`A007738(record[A106608(n+1)])`
-/

namespace A053450.P2665909673583281636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053450.P2665909673583281636

/-! ## A053450.P5527202350153605311

`A054708(record[A242603(n+1)])`
-/

namespace A053450.P5527202350153605311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053450.P5527202350153605311

/-! ## A053450.P811330224256152032

`A007738(A047368(n+1)+1)`
-/

namespace A053450.P811330224256152032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (A047368 (n + 1) + 1).toNat

end

end A053450.P811330224256152032

/-! ## A053450.P7564707014188096452

`A054708(A047368(n+1)+1)`
-/

namespace A053450.P7564707014188096452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (A047368 (n + 1) + 1).toNat

end

end A053450.P7564707014188096452

/-! ## A053450.P510110725227988563

`A054708(A047306(n+2)-1)`
-/

namespace A053450.P510110725227988563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (A047306 (n + 2) - 1).toNat

end

end A053450.P510110725227988563

/-!
# A053451: Multiplicative order of 8 mod 2n+1.

The programs for A053451, there is no canonical definition to state claims against.
-/

/-! ## A053451.P355090176962802969

`A051176(A002326(n))`
-/

namespace A053451.P355090176962802969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A002326 n).toNat

end

end A053451.P355090176962802969

/-! ## A053451.P5006136922029431513

`A007739(Δ[n²])`
-/

namespace A053451.P5006136922029431513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053451.P5006136922029431513

/-! ## A053451.P7144972214478303376

`A054709(Δ[n²])`
-/

namespace A053451.P7144972214478303376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053451.P7144972214478303376

/-! ## A053451.P17567321787746420248

`A051176(A007733(2*n+1))`
-/

namespace A053451.P17567321787746420248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A007733 (2 * n + 1)).toNat

end

end A053451.P17567321787746420248

/-! ## A053451.P7805995906489150483

`A007739(2*n+1)%A000040(n+1)`
-/

namespace A053451.P7805995906489150483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007739 (2 * n + 1)) (A000040 (n + 1))

end

end A053451.P7805995906489150483

/-! ## A053451.P17878400930152717312

`A000010(2*n+1)/A327816(2*n+1)`
-/

namespace A053451.P17878400930152717312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) : ℚ) / (A327816 (2 * n + 1) : ℚ)

end

end A053451.P17878400930152717312

/-! ## A053451.P11734902738166894179

`A007739(A005408(n))%A017113(n)`
-/

namespace A053451.P11734902738166894179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007739 (A005408 n).toNat) (A017113 n)

end

end A053451.P11734902738166894179

/-! ## A053451.P5467434611082794999

`A007814(A004273(n+1))+A007739(A004273(n+1))`
-/

namespace A053451.P5467434611082794999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A004273 (n + 1)).toNat + A007739 (A004273 (n + 1)).toNat

end

end A053451.P5467434611082794999

/-! ## A053451.P4712309360805296622

`A054709(Δ[A005893(n)])-1`
-/

namespace A053451.P4712309360805296622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (f1 (n + 1) - f1 n).toNat - 1

end

end A053451.P4712309360805296622

/-! ## A053451.P17185083183057791527

`A002264(lcm(3, A002326(n)))`
-/

namespace A053451.P17185083183057791527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lcm 3 (A002326 n))

end

end A053451.P17185083183057791527

/-! ## A053451.P209018059075529421

`A051724(4*A002326(n))`
-/

namespace A053451.P209018059075529421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (4 * A002326 n).toNat

end

end A053451.P209018059075529421

/-! ## A053451.P1323176576338882641

`gcd(2, A001595(2*n))*A007739(2*n+1)`
-/

namespace A053451.P1323176576338882641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001595 (2 * n)) : ℤ) * A007739 (2 * n + 1)

end

end A053451.P1323176576338882641

/-! ## A053451.P7747236873920611825

`A007739(2*n+1)*A080924(2*n+1)`
-/

namespace A053451.P7747236873920611825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (2 * n + 1) * A080924 (2 * n + 1)

end

end A053451.P7747236873920611825

/-!
# A053452: Multiplicative order of 9 mod n, where gcd(n, 9) = 1.

The programs for A053452, there is no canonical definition to state claims against.
-/

/-! ## A053452.P2444422830688840418

`A050981(char[n^14]+n)`
-/

namespace A053452.P2444422830688840418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050981 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A053452.P2444422830688840418

/-! ## A053452.P281423562541959978

`lcm(2, A053446(n+1))/2`
-/

namespace A053452.P281423562541959978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A053446 (n + 1)) : ℚ) / 2

end

end A053452.P281423562541959978

/-! ## A053452.P4923601334283966853

`A026741(A053446(n+1))`
-/

namespace A053452.P4923601334283966853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A053446 (n + 1)).toNat

end

end A053452.P4923601334283966853

/-! ## A053452.P9016693283263228914

`A053446(n+1)/A000034(A053446(n+1)+1)`
-/

namespace A053452.P9016693283263228914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053446 (n + 1) : ℚ) / (A000034 (A053446 (n + 1) + 1).toNat : ℚ)

end

end A053452.P9016693283263228914

/-! ## A053452.P9791025982937761647

`A007740(∑[gcd(2, n)]-1)`
-/

namespace A053452.P9791025982937761647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A053452.P9791025982937761647

/-! ## A053452.P2836578779942637242

`A007740(A001651(n+1))`
-/

namespace A053452.P2836578779942637242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A001651 (n + 1)).toNat

end

end A053452.P2836578779942637242

/-! ## A053452.P17083245552119542724

`A007740(A032766(n)+1)`
-/

namespace A053452.P17083245552119542724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A032766 n + 1).toNat

end

end A053452.P17083245552119542724

/-! ## A053452.P9804881499966601237

`A054717(A032766(n)+1)`
-/

namespace A053452.P9804881499966601237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (A032766 n + 1).toNat

end

end A053452.P9804881499966601237

/-! ## A053452.P16119967129911103357

`A007740(A097482(n+1))`
-/

namespace A053452.P16119967129911103357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A097482 (n + 1)).toNat

end

end A053452.P16119967129911103357

/-! ## A053452.P15531494371520880153

`A054717(record[A038502(n+1)])`
-/

namespace A053452.P15531494371520880153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053452.P15531494371520880153

/-! ## A053452.P4773390755282643650

`A007740(A007494(n+1)-1)`
-/

namespace A053452.P4773390755282643650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A007494 (n + 1) - 1).toNat

end

end A053452.P4773390755282643650

/-! ## A053452.P16706833779926547128

`A054717(A007494(n+1)-1)`
-/

namespace A053452.P16706833779926547128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (A007494 (n + 1) - 1).toNat

end

end A053452.P16706833779926547128

/-! ## A053452.P4831255602009956234

`A007740(∑[A000034(n+1)]-1)`
-/

namespace A053452.P4831255602009956234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A053452.P4831255602009956234

/-! ## A053452.P18394690040017033808

`A054717(∑[A000034(n+1)]-1)`
-/

namespace A053452.P18394690040017033808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A053452.P18394690040017033808

/-! ## A053452.P8615743580338813150

`A007740(A133223(n+1))`
-/

namespace A053452.P8615743580338813150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A133223 (n + 1)).toNat

end

end A053452.P8615743580338813150

/-! ## A053452.P14881457914219612499

`A007740(record[A145064(2*n)/2])`
-/

namespace A053452.P14881457914219612499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145064 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A053452.P14881457914219612499

/-! ## A053452.P6643113899928436858

`A054717(record[A145064(2*n)/2])`
-/

namespace A053452.P6643113899928436858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145064 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A053452.P6643113899928436858

/-! ## A053452.P6798655193536093270

`A007740(A016051(n+1))`
-/

namespace A053452.P6798655193536093270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A016051 (n + 1)).toNat

end

end A053452.P6798655193536093270

/-! ## A053452.P4879560583238179681

`A007740(A051063(n+1))`
-/

namespace A053452.P4879560583238179681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 (A051063 (n + 1)).toNat

end

end A053452.P4879560583238179681

/-!
# A053454: Number of weakly connected digraphs with n arcs.

The programs for A053454, there is no canonical definition to state claims against.
-/

/-! ## A053454.P18397061323121836354

`A337619(A150296(n+1))`
-/

namespace A053454.P18397061323121836354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337619 (A150296 (n + 1)).toNat

end

end A053454.P18397061323121836354

/-!
# A053455: a(n) = ((8^n) - (-6)^n)/14.

The programs for A053455, the canonical program `A053455.P18337949879489206759` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053455 has offset 0).

The definition of A053455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-(-6)^n)/14` (program `A053455.P18066992265289504295`, by `A053455.P18066992265289504295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053455.P18337949879489206759

`2*a(n-1)+48*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053455

/-- `2*a(n-1)+48*a(n-2)` -/
def P18337949879489206759.Spec : Prop :=
  ∀ n, (P18337949879489206759.a n : ℤ) = A053455 n

theorem P18337949879489206759.correct : P18337949879489206759.Spec := by
  intro n
  simp only [A053455]

end A053455

/-! ## A053455.P15440097127680554676

`2^(n-1)*(4^n-(-3)^n)/7`
-/

namespace A053455.P15440097127680554676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((4 ^ n : ℤ) - (-3) ^ n : ℚ) / 7

end

end A053455.P15440097127680554676

namespace A053455

/-- `2^(n-1)*(4^n-(-3)^n)/7` -/
def P15440097127680554676.Spec : Prop :=
  ∀ n, P15440097127680554676.a n = (A053455 n : ℚ)

theorem P15440097127680554676.correct : P15440097127680554676.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053455, Nat.add_sub_cancel, A053455.P15440097127680554676.a, A053455.P18337949879489206759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053455, Nat.add_sub_cancel, A053455.P15440097127680554676.a, A053455.P18337949879489206759.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A053455

/-! ## A053455.P18066992265289504295

`(8^n-(-6)^n)/14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053455.P18066992265289504295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) - (-6) ^ n : ℚ) / 14

end

end A053455.P18066992265289504295

namespace A053455

/-- `(8^n-(-6)^n)/14` -/
def P18066992265289504295.Spec : Prop :=
  ∀ n, P18066992265289504295.a n = (A053455 n : ℚ)

theorem P18066992265289504295.correct : P18066992265289504295.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053455, Nat.add_sub_cancel, A053455.P18066992265289504295.a, A053455.P18337949879489206759.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053455, Nat.add_sub_cancel, A053455.P18066992265289504295.a, A053455.P18337949879489206759.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053455

/-! ## A053455.P4695276364520084823

`8^(n-1)-6*a(n-1)` with `a(0)=0`
-/

namespace A053455.P4695276364520084823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 6 * a (n - 1)

end

end A053455.P4695276364520084823

namespace A053455

/-- `8^(n-1)-6*a(n-1)` -/
def P4695276364520084823.Spec : Prop :=
  ∀ n, P4695276364520084823.a n = (A053455 n : ℚ)

end A053455

/-!
# A053456: Open disk numbers (version 1): a(n) is the number of points (i,j), i,j, integers, contained in an open disk of diameter n, centered at (0,0).

The programs for A053456, there is no canonical definition to state claims against.
-/

/-! ## A053456.P9873918444825335032

`A053411(n)-lcm(A046109(n), A056594(n))`
-/

namespace A053456.P9873918444825335032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n - (Int.lcm (A046109 n) (A056594 n) : ℤ)

end

end A053456.P9873918444825335032

/-! ## A053456.P3954145717647153363

`A057655(A004652(n))-A004018(A004652(n))`
-/

namespace A053456.P3954145717647153363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A004652 n).toNat - A004018 (A004652 n).toNat

end

end A053456.P3954145717647153363

/-! ## A053456.P14696006511437036343

`A053411(n)-A004531(A001105(n))`
-/

namespace A053456.P14696006511437036343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n - A004531 (A001105 n).toNat

end

end A053456.P14696006511437036343

/-! ## A053456.P4722285232414193943

`A057655(A002620(n))-A004531(A001105(n))`
-/

namespace A053456.P4722285232414193943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A002620 n).toNat - A004531 (A001105 n).toNat

end

end A053456.P4722285232414193943

/-! ## A053456.P1457695020597136877

`A057655(A002265(n²))-A004531(A001105(n))`
-/

namespace A053456.P1457695020597136877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A002265 (n ^ 2)).toNat - A004531 (A001105 n).toNat

end

end A053456.P1457695020597136877

/-! ## A053456.P5379302613332894561

`A333572(A028310(n))+1-A004531(A001105(n))`
-/

namespace A053456.P5379302613332894561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (A028310 n).toNat + 1 - A004531 (A001105 n).toNat

end

end A053456.P5379302613332894561

/-! ## A053456.P10393715710814735330

`A014198(∑[A004526(n)])+1-A004531(A001105(n))`
-/

namespace A053456.P10393715710814735330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1 - A004531 (A001105 n).toNat

end

end A053456.P10393715710814735330

/-! ## A053456.P498617257113936992

`4*A333573(A008458(n)-5*n)+1-A004531(A001105(n))`
-/

namespace A053456.P498617257113936992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333573 (A008458 n - (5 * n : ℤ)).toNat + 1 - A004531 (A001105 n).toNat

end

end A053456.P498617257113936992

/-!
# A053457: Open disk numbers (version 2): a(n) is the number of points (i,j), i,j, integers, contained in an open disk of diameter n, centered at (0,1/2).

The programs for A053457, there is no canonical definition to state claims against.
-/

/-! ## A053457.P14357720050167088547

`2*A207034(A032346(n))`
-/

namespace A053457.P14357720050167088547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207034 (A032346 n).toNat

end

end A053457.P14357720050167088547

/-! ## A053457.P12916453406501326806

`∑[2*A293429(A149270(n))]`
-/

namespace A053457.P12916453406501326806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293429 (A149270 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053457.P12916453406501326806

/-! ## A053457.P9671923754964647004

`A299476(n)-A375558(A375558(n))`
-/

namespace A053457.P9671923754964647004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299476 n - A375558 (A375558 n).toNat

end

end A053457.P9671923754964647004

/-! ## A053457.P3229086157817638643

`A002061(n)-A275367(A055071(n+1))`
-/

namespace A053457.P3229086157817638643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - A275367 (A055071 (n + 1)).toNat

end

end A053457.P3229086157817638643

/-!
# A053458: Open disk numbers (version 3): a(n) is the number of points (i+j/2,j*sqrt(3)/2), i,j integers (triangular grid) contained in an open disk of diameter n, centered at (0,0).

The programs for A053458, there is no canonical definition to state claims against.
-/

/-! ## A053458.P15823536868253952644

`A002061(n)-A093658(A262392(n))`
-/

namespace A053458.P15823536868253952644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - A093658 (A262392 n).toNat

end

end A053458.P15823536868253952644

/-! ## A053458.P16256733715616809394

`A351253(A002061(n)%A010565(n))`
-/

namespace A053458.P16256733715616809394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 (Int.tmod (A002061 n) (A010565 n)).toNat

end

end A053458.P16256733715616809394

/-! ## A053458.P17258224453102418427

`A093579(A011185(n+1))%A011365(n)`
-/

namespace A053458.P17258224453102418427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093579 (A011185 (n + 1)).toNat) (A011365 n)

end

end A053458.P17258224453102418427

/-! ## A053458.P1762060536551149553

`n²-A338649(3^n)-log2(A066839(2*n+5))`
-/

namespace A053458.P1762060536551149553
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A338649 (3 ^ n) : ℝ) - Real.logb 2 (A066839 (2 * n + 5) : ℝ)

end

end A053458.P1762060536551149553

/-!
# A053459: Open disk numbers (version 4): a(n) is the number of points (i+j/2,j*sqrt(3)/2), i,j integers (triangular grid) contained in an open disk of diameter n, centered at (1/2,0).

The programs for A053459, there is no canonical definition to state claims against.
-/

/-! ## A053459.P2298099246211132909

`xor(A006578(n), A341793(A000204(n+1)))`
-/

namespace A053459.P2298099246211132909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006578 n) (A341793 ((A000204 (n + 1)).toNat + 10))

end

end A053459.P2298099246211132909

/-! ## A053459.P15424603629789057685

`A100287(n+1)-A364906(A364906(3*n+5))`
-/

namespace A053459.P15424603629789057685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 1) - A364906 (A364906 (3 * n + 5)).toNat

end

end A053459.P15424603629789057685

/-!
# A053460: The 120 points of the 600-cell exactly integrate homogeneous polynomials of degree n.

The programs for A053460, the canonical program `A053460.P13665849281510210424` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053460 has offset 1).

The definition of A053460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053460.P13665849281510210424

`eq[A000035(n), A008651(A142150(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053460

/-- `eq[A000035(n), A008651(A142150(n))]` -/
def P13665849281510210424.Spec : Prop :=
  ∀ n, (P13665849281510210424.a n : ℤ) = A053460 (n + 1)

theorem P13665849281510210424.correct : P13665849281510210424.Spec := by
  intro n
  simp only [A053460, Nat.add_sub_cancel]

end A053460

/-!
# A053461: a(0) = 0; a(n) = a(n-1) - n^2 if positive and new, otherwise a(n) = a(n-1) + n^2.

The programs for A053461, there is no canonical definition to state claims against.
-/

/-! ## A053461.P18329354914013439826

`A141126(n+1)-1`
-/

namespace A053461.P18329354914013439826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141126 (n + 1) - 1

end

end A053461.P18329354914013439826

/-! ## A053461.P17542996405729831442

`∑[Δ[A141126(n)]*A057427(n)]`
-/

namespace A053461.P17542996405729831442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053461.P17542996405729831442

/-! ## A053461.P702774001625873357

`∑[Δ[A141126(n)]%A001504(n)]`
-/

namespace A053461.P702774001625873357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A001504 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053461.P702774001625873357

/-! ## A053461.P1310874457240699440

`Δ[∑[A141126(n)]-n]`
-/

namespace A053461.P1310874457240699440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053461.P1310874457240699440

/-! ## A053461.P1999980864299681237

`A260574(A001511(2*n+1))+A141126(n+1)`
-/

namespace A053461.P1999980864299681237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260574 (A001511 (2 * n + 1)).toNat + A141126 (n + 1)

end

end A053461.P1999980864299681237

/-! ## A053461.P10934208969899410952

`A023443(A141126(n+1))`
-/

namespace A053461.P10934208969899410952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A141126 (n + 1)).toNat

end

end A053461.P10934208969899410952

/-!
# A053462: Number of positive squarefree integers less than 10^n.

The programs for A053462, there is no canonical definition to state claims against.
-/

/-! ## A053462.P14174627904009197979

`A071172(n)-char[∏{e}[n+1, -floor(1/#)]]`
-/

namespace A053462.P14174627904009197979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A053462.P14174627904009197979

/-! ## A053462.P6082462193149260524

`A071172(n)-abs(A240330(n))`
-/

namespace A053462.P6082462193149260524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - |A240330 n|

end

end A053462.P6082462193149260524

/-! ## A053462.P8976397376178506666

`A071172(n)-A000007(n²-n)`
-/

namespace A053462.P8976397376178506666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - A000007 (n ^ 2 - n)

end

end A053462.P8976397376178506666

/-! ## A053462.P15460323160473594739

`A240330(A008619(n))+A071172(n)`
-/

namespace A053462.P15460323160473594739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 (A008619 n).toNat + A071172 n

end

end A053462.P15460323160473594739

/-! ## A053462.P16057080916937852451

`A071172(n)-A010054(A347655(n)²)`
-/

namespace A053462.P16057080916937852451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 n - A010054 (A347655 n ^ 2).toNat

end

end A053462.P16057080916937852451

/-!
# A053463: First digit of sin(n).

The programs for A053463, the canonical program `A053463.P5116066067168265815` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053463 has offset 0).

The definition of A053463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053463.P5116066067168265815

`floor(abs(10*sin(n)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053463

/-- `floor(abs(10*sin(n)))` -/
def P5116066067168265815.Spec : Prop :=
  ∀ n, P5116066067168265815.a n = A053463 n

theorem P5116066067168265815.correct : P5116066067168265815.Spec := by
  intro n
  simp only [A053463]

end A053463

/-!
# A053464: a(n) = n*5^(n-1).

The programs for A053464, the canonical program `A053464.P2506679367513065598` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053464 has offset 0).

The definition of A053464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^(n-1)` (program `A053464.P6946218179745919711`, by `A053464.P6946218179745919711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053464.P6946218179745919711

`n*5^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053464.P6946218179745919711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A053464.P6946218179745919711

namespace A053464

/-- `n*5^(n-1)` -/
def P6946218179745919711.Spec : Prop :=
  ∀ n, P6946218179745919711.a n = (A053464 n : ℚ)

theorem P6946218179745919711.correct : P6946218179745919711.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053464, Nat.add_sub_cancel, A053464.P6946218179745919711.a, A053464.P2506679367513065598.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053464, Nat.add_sub_cancel, A053464.P6946218179745919711.a, A053464.P2506679367513065598.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A053464

/-! ## A053464.P2506679367513065598

`10*a(n-1)-25*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053464

/-- `10*a(n-1)-25*a(n-2)` -/
def P2506679367513065598.Spec : Prop :=
  ∀ n, P2506679367513065598.a n = A053464 n

theorem P2506679367513065598.correct : P2506679367513065598.Spec := by
  intro n
  simp only [A053464]

end A053464

/-! ## A053464.P203549369324977267

`ogf(x/(1-10x+25x^2))`
-/

namespace A053464.P203549369324977267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 25] n

end

end A053464.P203549369324977267

namespace A053464

/-- `ogf(x/(1-10x+25x^2))` -/
def P203549369324977267.Spec : Prop :=
  ∀ n, P203549369324977267.a n = A053464 n

end A053464

/-! ## A053464.P8012579761522343123

`ceil(n*5^floor(log(cosh(n))))`
-/

namespace A053464.P8012579761522343123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (5 : ℚ) ^ (⌊Real.log (Real.cosh (n : ℝ))⌋ : ℤ)⌉

end

end A053464.P8012579761522343123

namespace A053464

/-- `ceil(n*5^floor(log(cosh(n))))` -/
def P8012579761522343123.Spec : Prop :=
  ∀ n, P8012579761522343123.a n = A053464 n

end A053464

/-! ## A053464.P15974986469458684975

`floor(n*∑[5*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A053464.P15974986469458684975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053464.P15974986469458684975

namespace A053464

/-- `floor(n*∑[5*a(n-1)])` -/
def P15974986469458684975.Spec : Prop :=
  ∀ n, (P15974986469458684975.a n : ℤ) = A053464 n

end A053464

/-! ## A053464.P12337265413017799059

`n*A020699(n)/2`
-/

namespace A053464.P12337265413017799059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A020699 n : ℚ) / 2

end

end A053464.P12337265413017799059

namespace A053464

/-- `n*A020699(n)/2` -/
def P12337265413017799059.Spec : Prop :=
  ∀ n, P12337265413017799059.a n = (A053464 n : ℚ)

end A053464

/-! ## A053464.P9211485204308780325

`∑{d}[n, n*A295506(#)]`
-/

namespace A053464.P9211485204308780325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A295506 d

end

end A053464.P9211485204308780325

namespace A053464

/-- `∑{d}[n, n*A295506(#)]` -/
def P9211485204308780325.Spec : Prop :=
  ∀ n, P9211485204308780325.a n = A053464 n

end A053464

/-! ## A053464.P5245913678666175752

`n/2*A003948(n)/3`
-/

namespace A053464.P5245913678666175752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A003948 n : ℚ) / 3

end

end A053464.P5245913678666175752

namespace A053464

/-- `n/2*A003948(n)/3` -/
def P5245913678666175752.Spec : Prop :=
  ∀ n, P5245913678666175752.a n = (A053464 n : ℚ)

end A053464

/-! ## A053464.P987746537154980803

`2*A082135(n)-A027471(n+1)`
-/

namespace A053464.P987746537154980803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082135 n - A027471 (n + 1)

end

end A053464.P987746537154980803

namespace A053464

/-- `2*A082135(n)-A027471(n+1)` -/
def P987746537154980803.Spec : Prop :=
  ∀ n, P987746537154980803.a n = A053464 n

end A053464

/-! ## A053464.P17614208068425087264

`A036291(n)/5`
-/

namespace A053464.P17614208068425087264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036291 n : ℚ) / 5

end

end A053464.P17614208068425087264

namespace A053464

/-- `A036291(n)/5` -/
def P17614208068425087264.Spec : Prop :=
  ∀ n, P17614208068425087264.a n = (A053464 n : ℚ)

theorem P17614208068425087264.correct : P17614208068425087264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053464, Nat.add_sub_cancel, A053464.P17614208068425087264.a, A053464.P2506679367513065598.a, A036291, A036291.P15305288486312192511.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053464, Nat.add_sub_cancel, A053464.P17614208068425087264.a, A053464.P2506679367513065598.a, A036291, A036291.P15305288486312192511.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A053464

/-! ## A053464.P18168038897631077890

`(A050916(n)-1)/5`
-/

namespace A053464.P18168038897631077890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050916 n - 1 : ℚ) / 5

end

end A053464.P18168038897631077890

namespace A053464

/-- `(A050916(n)-1)/5` -/
def P18168038897631077890.Spec : Prop :=
  ∀ n, P18168038897631077890.a n = (A053464 n : ℚ)

theorem P18168038897631077890.correct : P18168038897631077890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053464, Nat.add_sub_cancel, A053464.P18168038897631077890.a, A053464.P2506679367513065598.a, A050916, A050916.P966275114646513705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053464, Nat.add_sub_cancel, A053464.P18168038897631077890.a, A053464.P2506679367513065598.a, A050916, A050916.P966275114646513705.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A053464

/-! ## A053464.P8354650714001390705

`A269760(n+1)/6`
-/

namespace A053464.P8354650714001390705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269760 (n + 1) : ℚ) / 6

end

end A053464.P8354650714001390705

namespace A053464

/-- `A269760(n+1)/6` -/
def P8354650714001390705.Spec : Prop :=
  ∀ n, P8354650714001390705.a n = (A053464 n : ℚ)

end A053464

/-! ## A053464.P6081427695177185174

`n*A000351(n)/5`
-/

namespace A053464.P6081427695177185174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000351 n : ℚ) / 5

end

end A053464.P6081427695177185174

namespace A053464

/-- `n*A000351(n)/5` -/
def P6081427695177185174.Spec : Prop :=
  ∀ n, P6081427695177185174.a n = (A053464 n : ℚ)

theorem P6081427695177185174.correct : P6081427695177185174.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053464, Nat.add_sub_cancel, A053464.P6081427695177185174.a, A053464.P2506679367513065598.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053464, Nat.add_sub_cancel, A053464.P6081427695177185174.a, A053464.P2506679367513065598.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A053464

/-! ## A053464.P18181451473184672177

`n*A056451(2*n)/5`
-/

namespace A053464.P18181451473184672177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A056451 (2 * n) : ℚ) / 5

end

end A053464.P18181451473184672177

namespace A053464

/-- `n*A056451(2*n)/5` -/
def P18181451473184672177.Spec : Prop :=
  ∀ n, P18181451473184672177.a n = (A053464 n : ℚ)

end A053464

/-! ## A053464.P3588127693589672579

`n*A074872(2*(n+1))/5`
-/

namespace A053464.P3588127693589672579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A074872 (2 * (n + 1)) : ℚ) / 5

end

end A053464.P3588127693589672579

namespace A053464

/-- `n*A074872(2*(n+1))/5` -/
def P3588127693589672579.Spec : Prop :=
  ∀ n, P3588127693589672579.a n = (A053464 n : ℚ)

end A053464

/-! ## A053464.P11807023462727780371

`∑[A081040(n)]-A081040(n)`
-/

namespace A053464.P11807023462727780371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A081040 n

end

end A053464.P11807023462727780371

namespace A053464

/-- `∑[A081040(n)]-A081040(n)` -/
def P11807023462727780371.Spec : Prop :=
  ∀ n, P11807023462727780371.a n = A053464 n

end A053464

/-! ## A053464.P16504062161758413188

`(A094797(n)-1)/A011782(n)`
-/

namespace A053464.P16504062161758413188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094797 n - 1 : ℚ) / (A011782 n : ℚ)

end

end A053464.P16504062161758413188

namespace A053464

/-- `(A094797(n)-1)/A011782(n)` -/
def P16504062161758413188.Spec : Prop :=
  ∀ n, P16504062161758413188.a n = (A053464 n : ℚ)

end A053464

/-!
# A053465: Number of connected 2-multigraphs on n nodes.

The programs for A053465, there is no canonical definition to state claims against.
-/

/-! ## A053465.P11948657671995911474

`A008350(A149063(n+1))`
-/

namespace A053465.P11948657671995911474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (A149063 (n + 1)).toNat

end

end A053465.P11948657671995911474

/-! ## A053465.P14928814613875264581

`A171974(A331957(n)+1)`
-/

namespace A053465.P14928814613875264581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (A331957 n + 1).toNat

end

end A053465.P14928814613875264581

/-!
# A053466: Number of connected 3-multigraphs on n nodes.

The programs for A053466, there is no canonical definition to state claims against.
-/

/-! ## A053466.P5983269143666622488

`A110534(A110542(2*(n+1))-A110542(n))`
-/

namespace A053466.P5983269143666622488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110534 (A110542 (2 * (n + 1)) - A110542 n).toNat

end

end A053466.P5983269143666622488

/-!
# A053468: Number of directed 3-multigraphs on n nodes.

The programs for A053468, there is no canonical definition to state claims against.
-/

/-! ## A053468.P8811911684129025310

`A003086(2*(n+1))`
-/

namespace A053468.P8811911684129025310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003086 (2 * (n + 1))

end

end A053468.P8811911684129025310

/-! ## A053468.P6530929957472598554

`A000171(4*(n+1))`
-/

namespace A053468.P6530929957472598554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000171 (4 * (n + 1))

end

end A053468.P6530929957472598554

/-! ## A053468.P13025991198729071049

`record[A263626(2*n+1)]`
-/

namespace A053468.P13025991198729071049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263626 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053468.P13025991198729071049

/-!
# A053469: a(n) = n*6^(n-1).

The programs for A053469, the canonical program `A053469.P13890258826874513024` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053469 has offset 1).

The definition of A053469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*6^n` (program `A053469.P13890258826874513024`, by `A053469.P13890258826874513024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053469.P13890258826874513024

`(n+1)*6^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053469

/-- `(n+1)*6^n` -/
def P13890258826874513024.Spec : Prop :=
  ∀ n, (P13890258826874513024.a n : ℤ) = A053469 (n + 1)

theorem P13890258826874513024.correct : P13890258826874513024.Spec := by
  intro n
  simp only [A053469, Nat.add_sub_cancel]

end A053469

/-! ## A053469.P804145317582008801

`12*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A053469.P804145317582008801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A053469.P804145317582008801

namespace A053469

/-- `12*a(n-1)-36*a(n-2)` -/
def P804145317582008801.Spec : Prop :=
  ∀ n, P804145317582008801.a n = A053469 (n + 1)

theorem P804145317582008801.correct : P804145317582008801.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A053469, Nat.add_sub_cancel, A053469.P804145317582008801.a, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A053469, Nat.add_sub_cancel, A053469.P804145317582008801.a, A053469.P13890258826874513024.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053469

/-! ## A053469.P7279041376124099558

`A024062(n)+A050917(n)`
-/

namespace A053469.P7279041376124099558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n + A050917 n

end

end A053469.P7279041376124099558

namespace A053469

/-- `A024062(n)+A050917(n)` -/
def P7279041376124099558.Spec : Prop :=
  ∀ n, P7279041376124099558.a n = A053469 (n + 1)

theorem P7279041376124099558.correct : P7279041376124099558.Spec := by
  intro n
  simp only [A053469, Nat.add_sub_cancel, A053469.P7279041376124099558.a, A053469.P13890258826874513024.a, A024062, A024062.P10607984613619163046.a, A050917, A050917.P3700556668548926092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053469

/-! ## A053469.P4317029480600551426

`ogf(1/(1-12x+36x^2))`
-/

namespace A053469.P4317029480600551426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 36] n

end

end A053469.P4317029480600551426

namespace A053469

/-- `ogf(1/(1-12x+36x^2))` -/
def P4317029480600551426.Spec : Prop :=
  ∀ n, P4317029480600551426.a n = A053469 (n + 1)

end A053469

/-! ## A053469.P5338054112993861866

`6^n/tan(acot(n+1))`
-/

namespace A053469.P5338054112993861866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A053469.P5338054112993861866

namespace A053469

/-- `6^n/tan(acot(n+1))` -/
def P5338054112993861866.Spec : Prop :=
  ∀ n, P5338054112993861866.a n = (A053469 (n + 1) : ℝ)

end A053469

/-! ## A053469.P13480707321077545910

`6^n/cot(atan(n+1))`
-/

namespace A053469.P13480707321077545910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A053469.P13480707321077545910

namespace A053469

/-- `6^n/cot(atan(n+1))` -/
def P13480707321077545910.Spec : Prop :=
  ∀ n, P13480707321077545910.a n = (A053469 (n + 1) : ℝ)

end A053469

/-! ## A053469.P7990643580173024684

`∑[Δ[n*6^(n-1)]^ceil(acot(n))]`
-/

namespace A053469.P7990643580173024684
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053469.P7990643580173024684

namespace A053469

/-- `∑[Δ[n*6^(n-1)]^ceil(acot(n))]` -/
def P7990643580173024684.Spec : Prop :=
  ∀ n, P7990643580173024684.a n = (A053469 (n + 1) : ℚ)

end A053469

/-! ## A053469.P16202612419358307025

`floor((n+1)*∑[6*a(n-1)])` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A053469.P16202612419358307025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053469.P16202612419358307025

namespace A053469

/-- `floor((n+1)*∑[6*a(n-1)])` -/
def P16202612419358307025.Spec : Prop :=
  ∀ n, (P16202612419358307025.a n : ℤ) = A053469 (n + 1)

end A053469

/-! ## A053469.P15552412830255827212

`∑[A081041(n)]`
-/

namespace A053469.P15552412830255827212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053469.P15552412830255827212

namespace A053469

/-- `∑[A081041(n)]` -/
def P15552412830255827212.Spec : Prop :=
  ∀ n, P15552412830255827212.a n = A053469 (n + 1)

end A053469

/-! ## A053469.P8119604248184757622

`A027271(2*n+1)/4`
-/

namespace A053469.P8119604248184757622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027271 (2 * n + 1) : ℚ) / 4

end

end A053469.P8119604248184757622

namespace A053469

/-- `A027271(2*n+1)/4` -/
def P8119604248184757622.Spec : Prop :=
  ∀ n, P8119604248184757622.a n = (A053469 (n + 1) : ℚ)

end A053469

/-! ## A053469.P15911732704450475791

`(A224330(n+1)+n+1)/2`
-/

namespace A053469.P15911732704450475791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224330 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A053469.P15911732704450475791

namespace A053469

/-- `(A224330(n+1)+n+1)/2` -/
def P15911732704450475791.Spec : Prop :=
  ∀ n, P15911732704450475791.a n = (A053469 (n + 1) : ℚ)

theorem P15911732704450475791.correct : P15911732704450475791.Spec := by
  intro n
  simp only [A053469, Nat.add_sub_cancel, A053469.P15911732704450475791.a, A053469.P13890258826874513024.a, A224330, A224330.P4213194063220589033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053469

/-! ## A053469.P4561797632319591035

`abs(1-(n+1)*A026549(2*n))+1`
-/

namespace A053469.P4561797632319591035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n + 1 : ℤ) * A026549 (2 * n)| + 1

end

end A053469.P4561797632319591035

namespace A053469

/-- `abs(1-(n+1)*A026549(2*n))+1` -/
def P4561797632319591035.Spec : Prop :=
  ∀ n, P4561797632319591035.a n = A053469 (n + 1)

end A053469

/-! ## A053469.P2784345809725279165

`A036292(n)+A000400(n)`
-/

namespace A053469.P2784345809725279165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036292 n + A000400 n

end

end A053469.P2784345809725279165

namespace A053469

/-- `A036292(n)+A000400(n)` -/
def P2784345809725279165.Spec : Prop :=
  ∀ n, P2784345809725279165.a n = A053469 (n + 1)

theorem P2784345809725279165.correct : P2784345809725279165.Spec := by
  intro n
  simp only [A053469, Nat.add_sub_cancel, A053469.P2784345809725279165.a, A053469.P13890258826874513024.a, A000400, A000400.P10889281521385558416.a, A036292, A036292.P17934490040438387144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053469

/-! ## A053469.P15518930658249671114

`A166023(2*n+1)+A036292(n)`
-/

namespace A053469.P15518930658249671114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (2 * n + 1) + A036292 n

end

end A053469.P15518930658249671114

namespace A053469

/-- `A166023(2*n+1)+A036292(n)` -/
def P15518930658249671114.Spec : Prop :=
  ∀ n, P15518930658249671114.a n = A053469 (n + 1)

end A053469

/-! ## A053469.P15261960104157659721

`A000244(n)*A005183(n+1)-A000244(n)`
-/

namespace A053469.P15261960104157659721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A005183 (n + 1) - A000244 n

end

end A053469.P15261960104157659721

namespace A053469

/-- `A000244(n)*A005183(n+1)-A000244(n)` -/
def P15261960104157659721.Spec : Prop :=
  ∀ n, P15261960104157659721.a n = A053469 (n + 1)

end A053469

/-! ## A053469.P15078792792381209813

`A082136(n+1)+A082136(n+1)-A002697(n+1)`
-/

namespace A053469.P15078792792381209813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082136 (n + 1) + (A082136 (n + 1) - A002697 (n + 1))

end

end A053469.P15078792792381209813

namespace A053469

/-- `A082136(n+1)+A082136(n+1)-A002697(n+1)` -/
def P15078792792381209813.Spec : Prop :=
  ∀ n, P15078792792381209813.a n = A053469 (n + 1)

end A053469

/-! ## A053469.P7483681851490114096

`A212700(n+1)/5`
-/

namespace A053469.P7483681851490114096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212700 (n + 1) : ℚ) / 5

end

end A053469.P7483681851490114096

namespace A053469

/-- `A212700(n+1)/5` -/
def P7483681851490114096.Spec : Prop :=
  ∀ n, P7483681851490114096.a n = (A053469 (n + 1) : ℚ)

theorem P7483681851490114096.correct : P7483681851490114096.Spec := by
  intro n
  simp only [A053469, Nat.add_sub_cancel, A053469.P7483681851490114096.a, A053469.P13890258826874513024.a, A212700, A212700.P17843632432292983955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053469

/-! ## A053469.P11667391360279101854

`A036292(n+1)/6`
-/

namespace A053469.P11667391360279101854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036292 (n + 1) : ℚ) / 6

end

end A053469.P11667391360279101854

namespace A053469

/-- `A036292(n+1)/6` -/
def P11667391360279101854.Spec : Prop :=
  ∀ n, P11667391360279101854.a n = (A053469 (n + 1) : ℚ)

theorem P11667391360279101854.correct : P11667391360279101854.Spec := by
  intro n
  simp only [A053469, Nat.add_sub_cancel, A053469.P11667391360279101854.a, A053469.P13890258826874513024.a, A036292, A036292.P17934490040438387144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053469

/-! ## A053469.P567030088186558643

`A269895(n+2)/7`
-/

namespace A053469.P567030088186558643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269895 (n + 2) : ℚ) / 7

end

end A053469.P567030088186558643

namespace A053469

/-- `A269895(n+2)/7` -/
def P567030088186558643.Spec : Prop :=
  ∀ n, P567030088186558643.a n = (A053469 (n + 1) : ℚ)

end A053469

/-! ## A053469.P15029995775380750168

`A203232(2*(n+1))/5`
-/

namespace A053469.P15029995775380750168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203232 (2 * (n + 1)) : ℚ) / 5

end

end A053469.P15029995775380750168

namespace A053469

/-- `A203232(2*(n+1))/5` -/
def P15029995775380750168.Spec : Prop :=
  ∀ n, P15029995775380750168.a n = (A053469 (n + 1) : ℚ)

end A053469

/-!
# A053470: a(n) is the cototient of n (A051953) iterated twice.

The programs for A053470, the canonical program `A053470.P13253634805606382182` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053470 has offset 1).

The definition of A053470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053470.P14227790959568559911

`A051953(A016035(n+1)+1)`
-/

namespace A053470.P14227790959568559911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A016035 (n + 1) + 1).toNat

end

end A053470.P14227790959568559911

namespace A053470

/-- `A051953(A016035(n+1)+1)` -/
def P14227790959568559911.Spec : Prop :=
  ∀ n, P14227790959568559911.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P3121605418176004437

`A051953(A051953(abs(1-n)+2))`
-/

namespace A053470.P3121605418176004437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A051953 (|1 - (n : ℤ)| + 2).toNat).toNat

end

end A053470.P3121605418176004437

namespace A053470

/-- `A051953(A051953(abs(1-n)+2))` -/
def P3121605418176004437.Spec : Prop :=
  ∀ n, P3121605418176004437.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P15675343133979416886

`A051953(n+1)-A054571(n+1)`
-/

namespace A053470.P15675343133979416886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A054571 (n + 1)

end

end A053470.P15675343133979416886

namespace A053470

/-- `A051953(n+1)-A054571(n+1)` -/
def P15675343133979416886.Spec : Prop :=
  ∀ n, P15675343133979416886.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P15909755690385034861

`A343912(n+1)-A000010(n+1)`
-/

namespace A053470.P15909755690385034861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343912 (n + 1) - A000010 (n + 1)

end

end A053470.P15909755690385034861

namespace A053470

/-- `A343912(n+1)-A000010(n+1)` -/
def P15909755690385034861.Spec : Prop :=
  ∀ n, P15909755690385034861.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P10648519018220978870

`A346692(n+1)-A083254(n+1)`
-/

namespace A053470.P10648519018220978870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A083254 (n + 1)

end

end A053470.P10648519018220978870

namespace A053470

/-- `A346692(n+1)-A083254(n+1)` -/
def P10648519018220978870.Spec : Prop :=
  ∀ n, P10648519018220978870.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P18328130811893411444

`A051953(floor(A051953(n+1)+acot(n)))`
-/

namespace A053470.P18328130811893411444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ⌊(A051953 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A053470.P18328130811893411444

namespace A053470

/-- `A051953(floor(A051953(n+1)+acot(n)))` -/
def P18328130811893411444.Spec : Prop :=
  ∀ n, P18328130811893411444.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P13253634805606382182

`∑{d}[∑{d}[n+1, A062790(#)], A062790(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A053470

/-- `∑{d}[∑{d}[n+1, A062790(#)], A062790(#)]` -/
def P13253634805606382182.Spec : Prop :=
  ∀ n, P13253634805606382182.a n = A053470 (n + 1)

theorem P13253634805606382182.correct : P13253634805606382182.Spec := by
  intro n
  simp only [A053470, Nat.add_sub_cancel]

end A053470

/-! ## A053470.P619491373610937453

`A219428(n+1)+1-A054571(n+1)`
-/

namespace A053470.P619491373610937453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + (1 - A054571 (n + 1))

end

end A053470.P619491373610937453

namespace A053470

/-- `A219428(n+1)+1-A054571(n+1)` -/
def P619491373610937453.Spec : Prop :=
  ∀ n, P619491373610937453.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P17307762126849468369

`n-(A109606(n+1)+A054571(n+1))`
-/

namespace A053470.P17307762126849468369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A109606 (n + 1) + A054571 (n + 1))

end

end A053470.P17307762126849468369

namespace A053470

/-- `n-(A109606(n+1)+A054571(n+1))` -/
def P17307762126849468369.Spec : Prop :=
  ∀ n, P17307762126849468369.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P14115119445570964525

`n+1-(A054571(n+1)+A000010(n+1))`
-/

namespace A053470.P14115119445570964525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A054571 (n + 1) + A000010 (n + 1))

end

end A053470.P14115119445570964525

namespace A053470

/-- `n+1-(A054571(n+1)+A000010(n+1))` -/
def P14115119445570964525.Spec : Prop :=
  ∀ n, P14115119445570964525.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P17789588276578316228

`A051953((n-A000010(n+1))%(n+1)+1)`
-/

namespace A053470.P17789588276578316228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Int.tmod ((n : ℤ) - A000010 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A053470.P17789588276578316228

namespace A053470

/-- `A051953((n-A000010(n+1))%(n+1)+1)` -/
def P17789588276578316228.Spec : Prop :=
  ∀ n, P17789588276578316228.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P1928779054105266480

`A051953(A051953(n+1)+A000007(n))`
-/

namespace A053470.P1928779054105266480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A051953 (n + 1) + A000007 n).toNat

end

end A053470.P1928779054105266480

namespace A053470

/-- `A051953(A051953(n+1)+A000007(n))` -/
def P1928779054105266480.Spec : Prop :=
  ∀ n, P1928779054105266480.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P10353713476208877192

`A051953(A028310(n)-A109606(n+1))`
-/

namespace A053470.P10353713476208877192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n - A109606 (n + 1)).toNat

end

end A053470.P10353713476208877192

namespace A053470

/-- `A051953(A028310(n)-A109606(n+1))` -/
def P10353713476208877192.Spec : Prop :=
  ∀ n, P10353713476208877192.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P3323227008593306207

`A051953(or(A003982(n), A051953(n+1)))`
-/

namespace A053470.P3323227008593306207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Int.lor (A003982 n) (A051953 (n + 1))).toNat

end

end A053470.P3323227008593306207

namespace A053470

/-- `A051953(or(A003982(n), A051953(n+1)))` -/
def P3323227008593306207.Spec : Prop :=
  ∀ n, P3323227008593306207.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P12667394077797080261

`A051953(∏{d}[A051953(n+1), A014963(#)])`
-/

namespace A053470.P12667394077797080261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A053470.P12667394077797080261

namespace A053470

/-- `A051953(∏{d}[A051953(n+1), A014963(#)])` -/
def P12667394077797080261.Spec : Prop :=
  ∀ n, P12667394077797080261.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P18227729021106309787

`A051953(A028310(n)+1-A000010(n+1))`
-/

namespace A053470.P18227729021106309787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n + (1 - A000010 (n + 1))).toNat

end

end A053470.P18227729021106309787

namespace A053470

/-- `A051953(A028310(n)+1-A000010(n+1))` -/
def P18227729021106309787.Spec : Prop :=
  ∀ n, P18227729021106309787.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P10900265672562790583

`A051953(A051953(n+1)+1-A057427(n))`
-/

namespace A053470.P10900265672562790583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A051953 (n + 1) + (1 - A057427 n)).toNat

end

end A053470.P10900265672562790583

namespace A053470

/-- `A051953(A051953(n+1)+1-A057427(n))` -/
def P10900265672562790583.Spec : Prop :=
  ∀ n, P10900265672562790583.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P7780831646183046935

`A051953(A051953(n+1)+A000038(n)/2)`
-/

namespace A053470.P7780831646183046935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway ((A051953 (n + 1) : ℚ) + (A000038 n : ℚ) / 2)).toNat

end

end A053470.P7780831646183046935

namespace A053470

/-- `A051953(A051953(n+1)+A000038(n)/2)` -/
def P7780831646183046935.Spec : Prop :=
  ∀ n, P7780831646183046935.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P11641223052089395983

`A051953(n+1)+A346692(n+1)-A000010(n+1)`
-/

namespace A053470.P11641223052089395983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A346692 (n + 1) - A000010 (n + 1))

end

end A053470.P11641223052089395983

namespace A053470

/-- `A051953(n+1)+A346692(n+1)-A000010(n+1)` -/
def P11641223052089395983.Spec : Prop :=
  ∀ n, P11641223052089395983.a n = A053470 (n + 1)

end A053470

/-! ## A053470.P7298936243983315266

`A067392(n+1)+A343912(n+1)-A349679(n+1)`
-/

namespace A053470.P7298936243983315266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1) + (A343912 (n + 1) - A349679 (n + 1))

end

end A053470.P7298936243983315266

namespace A053470

/-- `A067392(n+1)+A343912(n+1)-A349679(n+1)` -/
def P7298936243983315266.Spec : Prop :=
  ∀ n, P7298936243983315266.a n = A053470 (n + 1)

end A053470

/-!
# A053471: a(n) is the cototient of n (A051953) iterated 3 times.

The programs for A053471, the canonical program `A053471.P2656201411474916772` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053471 has offset 1).

The definition of A053471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053471.P2656201411474916772

`A053470(A016035(n+1)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A053471

/-- `A053470(A016035(n+1)+1)` -/
def P2656201411474916772.Spec : Prop :=
  ∀ n, P2656201411474916772.a n = A053471 (n + 1)

theorem P2656201411474916772.correct : P2656201411474916772.Spec := by
  intro n
  simp only [A053471, Nat.add_sub_cancel]

end A053471

/-! ## A053471.P4365413736632712887

`∑{d}[A053470(n+1), A062790(#)]`
-/

namespace A053471.P4365413736632712887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A053471.P4365413736632712887

namespace A053471

/-- `∑{d}[A053470(n+1), A062790(#)]` -/
def P4365413736632712887.Spec : Prop :=
  ∀ n, P4365413736632712887.a n = A053471 (n + 1)

end A053471

/-! ## A053471.P9435991649045259130

`A053470((A051953(n+1)+n)%(n+1)+1)`
-/

namespace A053471.P9435991649045259130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (Int.tmod (A051953 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A053471.P9435991649045259130

namespace A053471

/-- `A053470((A051953(n+1)+n)%(n+1)+1)` -/
def P9435991649045259130.Spec : Prop :=
  ∀ n, P9435991649045259130.a n = A053471 (n + 1)

end A053471

/-! ## A053471.P2424904000272113554

`A053470((n-A000010(n+1))%(n+1)+1)`
-/

namespace A053471.P2424904000272113554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (Int.tmod ((n : ℤ) - A000010 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A053471.P2424904000272113554

namespace A053471

/-- `A053470((n-A000010(n+1))%(n+1)+1)` -/
def P2424904000272113554.Spec : Prop :=
  ∀ n, P2424904000272113554.a n = A053471 (n + 1)

end A053471

/-! ## A053471.P16687540110057764958

`A053470(A051953(n+1)+A000007(n))`
-/

namespace A053471.P16687540110057764958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (A051953 (n + 1) + A000007 n).toNat

end

end A053471.P16687540110057764958

namespace A053471

/-- `A053470(A051953(n+1)+A000007(n))` -/
def P16687540110057764958.Spec : Prop :=
  ∀ n, P16687540110057764958.a n = A053471 (n + 1)

end A053471

/-!
# A053472: a(n) is the cototient of n (A051953) iterated 4 times.

The programs for A053472, the canonical program `A053472.P11421251938670128939` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053472 has offset 1).

The definition of A053472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053472.P11421251938670128939

`A053471(A016035(n+1)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A053472

/-- `A053471(A016035(n+1)+1)` -/
def P11421251938670128939.Spec : Prop :=
  ∀ n, P11421251938670128939.a n = A053472 (n + 1)

theorem P11421251938670128939.correct : P11421251938670128939.Spec := by
  intro n
  simp only [A053472, Nat.add_sub_cancel]

end A053472

/-! ## A053472.P10143930083180091250

`A053470(abs(1-A053470(n+1))+1)`
-/

namespace A053472.P10143930083180091250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (|1 - A053470 (n + 1)| + 1).toNat

end

end A053472.P10143930083180091250

namespace A053472

/-- `A053470(abs(1-A053470(n+1))+1)` -/
def P10143930083180091250.Spec : Prop :=
  ∀ n, P10143930083180091250.a n = A053472 (n + 1)

end A053472

/-! ## A053472.P5271961851569448432

`A053471((A051953(n+1)+n)%(n+1)+1)`
-/

namespace A053472.P5271961851569448432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053471 (Int.tmod (A051953 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A053472.P5271961851569448432

namespace A053472

/-- `A053471((A051953(n+1)+n)%(n+1)+1)` -/
def P5271961851569448432.Spec : Prop :=
  ∀ n, P5271961851569448432.a n = A053472 (n + 1)

end A053472

/-! ## A053472.P13417914006964056651

`A053471((n-A000010(n+1))%(n+1)+1)`
-/

namespace A053472.P13417914006964056651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053471 (Int.tmod ((n : ℤ) - A000010 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A053472.P13417914006964056651

namespace A053472

/-- `A053471((n-A000010(n+1))%(n+1)+1)` -/
def P13417914006964056651.Spec : Prop :=
  ∀ n, P13417914006964056651.a n = A053472 (n + 1)

end A053472

/-! ## A053472.P2954531182293362905

`A053471(A051953(n+1)+A000007(n))`
-/

namespace A053472.P2954531182293362905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053471 (A051953 (n + 1) + A000007 n).toNat

end

end A053472.P2954531182293362905

namespace A053472

/-- `A053471(A051953(n+1)+A000007(n))` -/
def P2954531182293362905.Spec : Prop :=
  ∀ n, P2954531182293362905.a n = A053472 (n + 1)

end A053472

/-!
# A053473: a(n) is the cototient of n (A051953) iterated 5 times.

The programs for A053473, the canonical program `A053473.P5351835929457990970` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053473 has offset 1).

The definition of A053473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053473.P5351835929457990970

`A053472(A016035(n+1)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A053473

/-- `A053472(A016035(n+1)+1)` -/
def P5351835929457990970.Spec : Prop :=
  ∀ n, P5351835929457990970.a n = A053473 (n + 1)

theorem P5351835929457990970.correct : P5351835929457990970.Spec := by
  intro n
  simp only [A053473, Nat.add_sub_cancel]

end A053473

/-! ## A053473.P4157519882162127354

`A053472((A051953(n+1)+n)%(n+1)+1)`
-/

namespace A053473.P4157519882162127354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053472 (Int.tmod (A051953 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A053473.P4157519882162127354

namespace A053473

/-- `A053472((A051953(n+1)+n)%(n+1)+1)` -/
def P4157519882162127354.Spec : Prop :=
  ∀ n, P4157519882162127354.a n = A053473 (n + 1)

end A053473

/-! ## A053473.P10302900334651739981

`A053472((n-A000010(n+1))%(n+1)+1)`
-/

namespace A053473.P10302900334651739981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053472 (Int.tmod ((n : ℤ) - A000010 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A053473.P10302900334651739981

namespace A053473

/-- `A053472((n-A000010(n+1))%(n+1)+1)` -/
def P10302900334651739981.Spec : Prop :=
  ∀ n, P10302900334651739981.a n = A053473 (n + 1)

end A053473

/-! ## A053473.P15308598241855735127

`A053472(A051953(n+1)+A000007(n))`
-/

namespace A053473.P15308598241855735127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053472 (A051953 (n + 1) + A000007 n).toNat

end

end A053473.P15308598241855735127

namespace A053473

/-- `A053472(A051953(n+1)+A000007(n))` -/
def P15308598241855735127.Spec : Prop :=
  ∀ n, P15308598241855735127.a n = A053473 (n + 1)

end A053473

/-! ## A053473.P7280339336900593588

`A053472(A062830(n+1)-A158388(n))`
-/

namespace A053473.P7280339336900593588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053472 (A062830 (n + 1) - A158388 n).toNat

end

end A053473.P7280339336900593588

namespace A053473

/-- `A053472(A062830(n+1)-A158388(n))` -/
def P7280339336900593588.Spec : Prop :=
  ∀ n, P7280339336900593588.a n = A053473 (n + 1)

end A053473

/-! ## A053473.P8672080965962693769

`A053472(or(A003982(n), A051953(n+1)))`
-/

namespace A053473.P8672080965962693769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053472 (Int.lor (A003982 n) (A051953 (n + 1))).toNat

end

end A053473.P8672080965962693769

namespace A053473

/-- `A053472(or(A003982(n), A051953(n+1)))` -/
def P8672080965962693769.Spec : Prop :=
  ∀ n, P8672080965962693769.a n = A053473 (n + 1)

end A053473

/-! ## A053473.P11494494989864951319

`A001221(A053472(n+1)!)`
-/

namespace A053473.P11494494989864951319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A053472 (n + 1)).toNat)

end

end A053473.P11494494989864951319

namespace A053473

/-- `A001221(A053472(n+1)!)` -/
def P11494494989864951319.Spec : Prop :=
  ∀ n, P11494494989864951319.a n = A053473 (n + 1)

end A053473

/-! ## A053473.P9881733512339429754

`A001221(A008881(A053475(n+1))!)`
-/

namespace A053473.P9881733512339429754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A008881 (A053475 (n + 1)).toNat).toNat)

end

end A053473.P9881733512339429754

namespace A053473

/-- `A001221(A008881(A053475(n+1))!)` -/
def P9881733512339429754.Spec : Prop :=
  ∀ n, P9881733512339429754.a n = A053473 (n + 1)

end A053473

/-!
# A053474: Cototients of non-cototient numbers: A051953(A005278(n)).

The programs for A053474, there is no canonical definition to state claims against.
-/

/-! ## A053474.P1541808987207038907

`A051953(A005278(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053474.P1541808987207038907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A005278 (n + 1)).toNat

end

end A053474.P1541808987207038907

/-! ## A053474.P2508810699067729140

`2*A126887(n+1)-A000010(2*A126887(n+1))`
-/

namespace A053474.P2508810699067729140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126887 (n + 1) - A000010 (2 * A126887 (n + 1)).toNat

end

end A053474.P2508810699067729140

/-! ## A053474.P10884995029828332891

`A053196(A126887(n+1))`
-/

namespace A053474.P10884995029828332891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (A126887 (n + 1)).toNat

end

end A053474.P10884995029828332891

/-! ## A053474.P3569505185944778153

`A053196(A005278(n+1)/2)`
-/

namespace A053474.P3569505185944778153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053196 (SequenceMachineLib.roundAway ((A005278 (n + 1) : ℚ) / 2)).toNat

end

end A053474.P3569505185944778153

/-! ## A053474.P5206007128696666807

`∑{d}[A005278(n+1), A062790(#)]`
-/

namespace A053474.P5206007128696666807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A053474.P5206007128696666807

/-! ## A053474.P15256684685503363372

`A051953(2*A126887(n+1))`
-/

namespace A053474.P15256684685503363372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * A126887 (n + 1)).toNat

end

end A053474.P15256684685503363372

/-! ## A053474.P7449850609558328201

`A062830(2*A126887(n+1))-1`
-/

namespace A053474.P7449850609558328201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (2 * A126887 (n + 1)).toNat - 1

end

end A053474.P7449850609558328201

/-! ## A053474.P14888590017355437634

`A051953(A126887(n+1)+A126887(n+1))`
-/

namespace A053474.P14888590017355437634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A126887 (n + 1) + A126887 (n + 1)).toNat

end

end A053474.P14888590017355437634

/-!
# A053475: 1 + the number of iterations of A051953 (Euler-cototient) function needed to reach 0, starting at n.

The programs for A053475, the canonical program `A053475.P11743617394424170469` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053475 has offset 1).

The definition of A053475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053475.P4915054486335898870

`A076640(n+1)+1`
-/

namespace A053475.P4915054486335898870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (n + 1) + 1

end

end A053475.P4915054486335898870

namespace A053475

/-- `A076640(n+1)+1` -/
def P4915054486335898870.Spec : Prop :=
  ∀ n, P4915054486335898870.a n = A053475 (n + 1)

theorem P4915054486335898870.correct : P4915054486335898870.Spec := by
  intro n
  simp only [A053475, Nat.add_sub_cancel, A053475.P4915054486335898870.a, A053475.P11743617394424170469.f1, A053475.P11743617394424170469.f2, A053475.P11743617394424170469.a, A076640, A076640.P10692691478282624648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053475

/-! ## A053475.P11743617394424170469

`a(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053475

/-- `a(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1` -/
def P11743617394424170469.Spec : Prop :=
  ∀ n, (P11743617394424170469.a n : ℤ) = A053475 (n + 1)

theorem P11743617394424170469.correct : P11743617394424170469.Spec := by
  intro n
  simp only [A053475, Nat.add_sub_cancel]

end A053475

/-! ## A053475.P17353628998800594335

`A071575(n+1)+2`
-/

namespace A053475.P17353628998800594335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (n + 1) + 2

end

end A053475.P17353628998800594335

namespace A053475

/-- `A071575(n+1)+2` -/
def P17353628998800594335.Spec : Prop :=
  ∀ n, P17353628998800594335.a n = A053475 (n + 1)

theorem P17353628998800594335.correct : P17353628998800594335.Spec := by
  intro n
  simp only [A053475, Nat.add_sub_cancel, A053475.P17353628998800594335.a, A053475.P11743617394424170469.f1, A053475.P11743617394424170469.f2, A053475.P11743617394424170469.a, A071575, A071575.P1413525790656994869.a, A076640, A076640.P10692691478282624648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053475

/-! ## A053475.P4864901518753884568

`a(A016035(n+1))+1` with `a(0)=2`
-/

namespace A053475.P4864901518753884568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A016035 (n + 1)).toNat + 1

end

end A053475.P4864901518753884568

namespace A053475

/-- `a(A016035(n+1))+1` -/
def P4864901518753884568.Spec : Prop :=
  ∀ n, (P4864901518753884568.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P13310553696614652068

`a(A219428(n+1))+1` with `a(0)=2`
-/

namespace A053475.P13310553696614652068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A219428 (n + 1)).toNat + 1

end

end A053475.P13310553696614652068

namespace A053475

/-- `a(A219428(n+1))+1` -/
def P13310553696614652068.Spec : Prop :=
  ∀ n, (P13310553696614652068.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P12744958732498982001

`a(A051953(n+1)-1)+1` with `a(0)=2`
-/

namespace A053475.P12744958732498982001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A051953 (n + 1) - 1).toNat + 1

end

end A053475.P12744958732498982001

namespace A053475

/-- `a(A051953(n+1)-1)+1` -/
def P12744958732498982001.Spec : Prop :=
  ∀ n, (P12744958732498982001.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P10292058186427352957

`a(n-A000010(n+1))+1` with `a(0)=2`
-/

namespace A053475.P10292058186427352957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - A000010 (n + 1)).toNat + 1

end

end A053475.P10292058186427352957

namespace A053475

/-- `a(n-A000010(n+1))+1` -/
def P10292058186427352957.Spec : Prop :=
  ∀ n, (P10292058186427352957.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P15200158163963197350

`a(n+1-A039649(n+1))+1` with `a(0)=2`
-/

namespace A053475.P15200158163963197350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n + 1 : ℤ) - A039649 (n + 1)).toNat + 1

end

end A053475.P15200158163963197350

namespace A053475

/-- `a(n+1-A039649(n+1))+1` -/
def P15200158163963197350.Spec : Prop :=
  ∀ n, (P15200158163963197350.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P16067486281830910499

`a(n-(A109606(n+1)+1))+1` with `a(0)=2`
-/

namespace A053475.P16067486281830910499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - (A109606 (n + 1) + 1)).toNat + 1

end

end A053475.P16067486281830910499

namespace A053475

/-- `a(n-(A109606(n+1)+1))+1` -/
def P16067486281830910499.Spec : Prop :=
  ∀ n, (P16067486281830910499.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P7695097111705058519

`A030545(A071575(n+1))`
-/

namespace A053475.P7695097111705058519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 (A071575 (n + 1)).toNat

end

end A053475.P7695097111705058519

namespace A053475

/-- `A030545(A071575(n+1))` -/
def P7695097111705058519.Spec : Prop :=
  ∀ n, P7695097111705058519.a n = A053475 (n + 1)

end A053475

/-! ## A053475.P6543889335397093327

`a(n-A046073(n+1)*A060594(n+1))+1` with `a(0)=2`
-/

namespace A053475.P6543889335397093327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - A046073 (n + 1) * A060594 (n + 1)).toNat + 1

end

end A053475.P6543889335397093327

namespace A053475

/-- `a(n-A046073(n+1)*A060594(n+1))+1` -/
def P6543889335397093327.Spec : Prop :=
  ∀ n, (P6543889335397093327.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P11116809892626210383

`a(n-Δ[A049632(n)-A049643(n)])+1` with `a(0)=2`
-/

namespace A053475.P11116809892626210383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat + 1

end

end A053475.P11116809892626210383

namespace A053475

/-- `a(n-Δ[A049632(n)-A049643(n)])+1` -/
def P11116809892626210383.Spec : Prop :=
  ∀ n, (P11116809892626210383.a n : ℤ) = A053475 (n + 1)

end A053475

/-! ## A053475.P1327841033339906521

`a(n-A282634(∑[n]+1))+1` with `a(0)=2`
-/

namespace A053475.P1327841033339906521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat + 1

end

end A053475.P1327841033339906521

namespace A053475

/-- `a(n-A282634(∑[n]+1))+1` -/
def P1327841033339906521.Spec : Prop :=
  ∀ n, (P1327841033339906521.a n : ℤ) = A053475 (n + 1)

end A053475

/-!
# A053476: Smallest number m such that when A051953 is applied n times to m the result is neither a power of 2 nor 0.

The programs for A053476, there is no canonical definition to state claims against.
-/

/-! ## A053476.P14952306985314835816

`xor(A317245(A000142(n)), A333642(n+2))`
-/

namespace A053476.P14952306985314835816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A317245 (A000142 n).toNat) (A333642 (n + 2))

end

end A053476.P14952306985314835816

/-!
# A053477: Sum of iterates of divisor number function A000005.

The programs for A053477, the canonical program `A053477.P5719108630255727600` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053477 has offset 1).

The definition of A053477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053477.P5719108630255727600

`a(A032741(n+1))+n+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053477

/-- `a(A032741(n+1))+n+1` -/
def P5719108630255727600.Spec : Prop :=
  ∀ n, (P5719108630255727600.a n : ℤ) = A053477 (n + 1)

theorem P5719108630255727600.correct : P5719108630255727600.Spec := by
  intro n
  simp only [A053477, Nat.add_sub_cancel]

end A053477

/-! ## A053477.P4178885914416735530

`a(Δ[A006218(n)]-1)+1+n` with `a(0)=1, a(1)=2`
-/

namespace A053477.P4178885914416735530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1 + n

end

end A053477.P4178885914416735530

namespace A053477

/-- `a(Δ[A006218(n)]-1)+1+n` -/
def P4178885914416735530.Spec : Prop :=
  ∀ n, (P4178885914416735530.a n : ℤ) = A053477 (n + 1)

end A053477

/-! ## A053477.P17829023980272271257

`a(Δ[A054519(n)]-1)+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P17829023980272271257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + (n + 1)

end

end A053477.P17829023980272271257

namespace A053477

/-- `a(Δ[A054519(n)]-1)+n+1` -/
def P17829023980272271257.Spec : Prop :=
  ∀ n, (P17829023980272271257.a n : ℤ) = A053477 (n + 1)

end A053477

/-! ## A053477.P14538220400720459251

`a(A070824(n+1)+1)+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P14538220400720459251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A070824 (n + 1) + 1).toNat + (n + 1)

end

end A053477.P14538220400720459251

namespace A053477

/-- `a(A070824(n+1)+1)+n+1` -/
def P14538220400720459251.Spec : Prop :=
  ∀ n, (P14538220400720459251.a n : ℤ) = A053477 (n + 1)

end A053477

/-! ## A053477.P1112253988688098126

`a(A000005(n+1)-1)+1+n` with `a(0)=1, a(1)=2`
-/

namespace A053477.P1112253988688098126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A000005 (n + 1) - 1).toNat + 1 + n

end

end A053477.P1112253988688098126

namespace A053477

/-- `a(A000005(n+1)-1)+1+n` -/
def P1112253988688098126.Spec : Prop :=
  ∀ n, (P1112253988688098126.a n : ℤ) = A053477 (n + 1)

theorem P1112253988688098126.correct : P1112253988688098126.Spec := by
  intro n
  simp only [A053477, Nat.add_sub_cancel, A053477.P1112253988688098126.a, A053477.P5719108630255727600.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053477

/-! ## A053477.P7683588381802525733

`a(A130734(A000005(n+1)))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P7683588381802525733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A130734 (A000005 (n + 1)).toNat).toNat + (n + 1)

end

end A053477.P7683588381802525733

namespace A053477

/-- `a(A130734(A000005(n+1)))+n+1` -/
def P7683588381802525733.Spec : Prop :=
  ∀ n, (P7683588381802525733.a n : ℤ) = A053477 (n + 1)

end A053477

/-! ## A053477.P6133238348196697540

`a(A001222(A100577(n+1)))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P6133238348196697540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A001222 (A100577 (n + 1)).toNat).toNat + (n + 1)

end

end A053477.P6133238348196697540

namespace A053477

/-- `a(A001222(A100577(n+1)))+n+1` -/
def P6133238348196697540.Spec : Prop :=
  ∀ n, (P6133238348196697540.a n : ℤ) = A053477 (n + 1)

end A053477

/-! ## A053477.P5456180496503593461

`a(A001222(A293514(n+1)))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P5456180496503593461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A001222 (A293514 (n + 1)).toNat).toNat + (n + 1)

end

end A053477.P5456180496503593461

namespace A053477

/-- `a(A001222(A293514(n+1)))+n+1` -/
def P5456180496503593461.Spec : Prop :=
  ∀ n, (P5456180496503593461.a n : ℤ) = A053477 (n + 1)

end A053477

/-! ## A053477.P12915260522661784428

`a(A001222(A293524(n+1)))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P12915260522661784428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A001222 (A293524 (n + 1)).toNat).toNat + (n + 1)

end

end A053477.P12915260522661784428

namespace A053477

/-- `a(A001222(A293524(n+1)))+n+1` -/
def P12915260522661784428.Spec : Prop :=
  ∀ n, (P12915260522661784428.a n : ℤ) = A053477 (n + 1)

end A053477

/-!
# A053478: Sum of iterates when phi, A000010, is iterated until fixed point 1.

The programs for A053478, the canonical program `A053478.P478435806884334050` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053478 has offset 1).

The definition of A053478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053478.P18421308488054233392

`A092693(n+1)+n+1`
-/

namespace A053478.P18421308488054233392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (n + 1) + (n + 1 : ℤ)

end

end A053478.P18421308488054233392

namespace A053478

/-- `A092693(n+1)+n+1` -/
def P18421308488054233392.Spec : Prop :=
  ∀ n, P18421308488054233392.a n = A053478 (n + 1)

theorem P18421308488054233392.correct : P18421308488054233392.Spec := by
  intro n
  simp only [A053478, Nat.add_sub_cancel, A053478.P18421308488054233392.a, A053478.P478435806884334050.a, A000010, A000010.P4673923239450215316.a, A092693, A092693.P489239560406468948.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053478

/-! ## A053478.P478435806884334050

`n+1+a(A000010(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053478

/-- `n+1+a(A000010(n+1)-1)` -/
def P478435806884334050.Spec : Prop :=
  ∀ n, (P478435806884334050.a n : ℤ) = A053478 (n + 1)

theorem P478435806884334050.correct : P478435806884334050.Spec := by
  intro n
  simp only [A053478, Nat.add_sub_cancel]

end A053478

/-! ## A053478.P6372190509250542246

`a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1+n` with `a(0)=1`
-/

namespace A053478.P6372190509250542246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)).toNat + 1 + n

end

end A053478.P6372190509250542246

namespace A053478

/-- `a((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1)+1+n` -/
def P6372190509250542246.Spec : Prop :=
  ∀ n, (P6372190509250542246.a n : ℤ) = A053478 (n + 1)

end A053478

/-! ## A053478.P4540211945587227072

`a(A109606(n+1))+1+n` with `a(0)=1`
-/

namespace A053478.P4540211945587227072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A109606 (n + 1)).toNat + 1 + n

end

end A053478.P4540211945587227072

namespace A053478

/-- `a(A109606(n+1))+1+n` -/
def P4540211945587227072.Spec : Prop :=
  ∀ n, (P4540211945587227072.a n : ℤ) = A053478 (n + 1)

theorem P4540211945587227072.correct : P4540211945587227072.Spec := by
  intro n
  simp only [A053478, Nat.add_sub_cancel, A053478.P4540211945587227072.a, A053478.P478435806884334050.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053478

/-! ## A053478.P13197565500951508274

`a(Δ[A002088(n)]-1)+1+n` with `a(0)=1`
-/

namespace A053478.P13197565500951508274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1 + n

end

end A053478.P13197565500951508274

namespace A053478

/-- `a(Δ[A002088(n)]-1)+1+n` -/
def P13197565500951508274.Spec : Prop :=
  ∀ n, (P13197565500951508274.a n : ℤ) = A053478 (n + 1)

end A053478

/-! ## A053478.P2814603103495422846

`a(A039649(n+1)-2)+1+n` with `a(0)=1`
-/

namespace A053478.P2814603103495422846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A039649 (n + 1) - 2).toNat + 1 + n

end

end A053478.P2814603103495422846

namespace A053478

/-- `a(A039649(n+1)-2)+1+n` -/
def P2814603103495422846.Spec : Prop :=
  ∀ n, (P2814603103495422846.a n : ℤ) = A053478 (n + 1)

theorem P2814603103495422846.correct : P2814603103495422846.Spec := by
  intro n
  simp only [A053478, Nat.add_sub_cancel, A053478.P2814603103495422846.a, A053478.P478435806884334050.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053478

/-! ## A053478.P9857778689620069230

`a(n-A051953(n+1))+n+1` with `a(0)=1`
-/

namespace A053478.P9857778689620069230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A051953 (n + 1)).toNat + (n + 1)

end

end A053478.P9857778689620069230

namespace A053478

/-- `a(n-A051953(n+1))+n+1` -/
def P9857778689620069230.Spec : Prop :=
  ∀ n, (P9857778689620069230.a n : ℤ) = A053478 (n + 1)

theorem P9857778689620069230.correct : P9857778689620069230.Spec := by
  intro n
  simp only [A053478, Nat.add_sub_cancel, A053478.P9857778689620069230.a, A053478.P478435806884334050.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053478

/-! ## A053478.P13324373533083501471

`a(Δ[A049643(n)]-1)+n+1` with `a(0)=1`
-/

namespace A053478.P13324373533083501471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + (n + 1)

end

end A053478.P13324373533083501471

namespace A053478

/-- `a(Δ[A049643(n)]-1)+n+1` -/
def P13324373533083501471.Spec : Prop :=
  ∀ n, (P13324373533083501471.a n : ℤ) = A053478 (n + 1)

end A053478

/-! ## A053478.P8302173196012186572

`A106247(A092693(n+1))+n`
-/

namespace A053478.P8302173196012186572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (A092693 (n + 1)).toNat + (n : ℤ)

end

end A053478.P8302173196012186572

namespace A053478

/-- `A106247(A092693(n+1))+n` -/
def P8302173196012186572.Spec : Prop :=
  ∀ n, P8302173196012186572.a n = A053478 (n + 1)

end A053478

/-! ## A053478.P16568402640719609162

`a(floor(log2(A243305(n+1)))-1)+1+n` with `a(0)=1`
-/

namespace A053478.P16568402640719609162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.log 2 (A243305 (n + 1)).toNat - 1) + 1 + n

end

end A053478.P16568402640719609162

namespace A053478

/-- `a(floor(log2(A243305(n+1)))-1)+1+n` -/
def P16568402640719609162.Spec : Prop :=
  ∀ n, (P16568402640719609162.a n : ℤ) = A053478 (n + 1)

end A053478

/-! ## A053478.P15974209412314735364

`a(A282634(∑[n]+1)-1)+1+n` with `a(0)=1`
-/

namespace A053478.P15974209412314735364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat + 1 + n

end

end A053478.P15974209412314735364

namespace A053478

/-- `a(A282634(∑[n]+1)-1)+1+n` -/
def P15974209412314735364.Spec : Prop :=
  ∀ n, (P15974209412314735364.a n : ℤ) = A053478 (n + 1)

end A053478

/-!
# A053479: Circle numbers (version 6): a(n) = number of points (i+j/2,j*sqrt(3)/2), i,j integers (triangular grid) contained in a circle of diameter n, centered at (1/2, 1/(2*sqrt(3))).

The programs for A053479, there is no canonical definition to state claims against.
-/

/-! ## A053479.P7592754237035443169

`3*A339184(n²²)`
-/

namespace A053479.P7592754237035443169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A339184 ((n ^ 2) ^ 2)

end

end A053479.P7592754237035443169

/-! ## A053479.P3325552829231783719

`∑[A001222(8^floor(3*n/5))]`
-/

namespace A053479.P3325552829231783719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (⌊3 * ((n : ℚ) / 5)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053479.P3325552829231783719

/-! ## A053479.P9019809494453631470

`3*A036042(A109263(n))`
-/

namespace A053479.P9019809494453631470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A036042 (A109263 n).toNat

end

end A053479.P9019809494453631470

/-! ## A053479.P7694320066937857523

`∑[∑[A090290(A193507(n+3))]]`
-/

namespace A053479.P7694320066937857523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090290 (A193507 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053479.P7694320066937857523

/-! ## A053479.P12105915077513848921

`∑[∑[A133886(A173084(n+5))]]`
-/

namespace A053479.P12105915077513848921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133886 (A173084 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053479.P12105915077513848921

/-!
# A053480: Sum of values when cototient function A051953 is iterated until fixed point is reached.

The programs for A053480, the canonical program `A053480.P16927563168185006923` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053480 has offset 1).

The definition of A053480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053480.P16927563168185006923

`a(A016035(n+1))+1+n` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053480

/-- `a(A016035(n+1))+1+n` -/
def P16927563168185006923.Spec : Prop :=
  ∀ n, (P16927563168185006923.a n : ℤ) = A053480 (n + 1)

theorem P16927563168185006923.correct : P16927563168185006923.Spec := by
  intro n
  simp only [A053480, Nat.add_sub_cancel]

end A053480

/-! ## A053480.P13415021426675121110

`n+1+a(A219428(n+1))` with `a(0)=1`
-/

namespace A053480.P13415021426675121110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A219428 (n + 1)).toNat

end

end A053480.P13415021426675121110

namespace A053480

/-- `n+1+a(A219428(n+1))` -/
def P13415021426675121110.Spec : Prop :=
  ∀ n, (P13415021426675121110.a n : ℤ) = A053480 (n + 1)

end A053480

/-! ## A053480.P6311079401896492988

`a(n-Δ[A005728(n)])+1+n` with `a(0)=1`
-/

namespace A053480.P6311079401896492988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat + 1 + n

end

end A053480.P6311079401896492988

namespace A053480

/-- `a(n-Δ[A005728(n)])+1+n` -/
def P6311079401896492988.Spec : Prop :=
  ∀ n, (P6311079401896492988.a n : ℤ) = A053480 (n + 1)

end A053480

/-! ## A053480.P12971052881484247896

`a(A051953(n+1)-1)+1+n` with `a(0)=1`
-/

namespace A053480.P12971052881484247896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A051953 (n + 1) - 1).toNat + 1 + n

end

end A053480.P12971052881484247896

namespace A053480

/-- `a(A051953(n+1)-1)+1+n` -/
def P12971052881484247896.Spec : Prop :=
  ∀ n, (P12971052881484247896.a n : ℤ) = A053480 (n + 1)

end A053480

/-! ## A053480.P6814047362988164780

`a(A062830(n+1)-2)+n+1` with `a(0)=1`
-/

namespace A053480.P6814047362988164780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A062830 (n + 1) - 2).toNat + (n + 1)

end

end A053480.P6814047362988164780

namespace A053480

/-- `a(A062830(n+1)-2)+n+1` -/
def P6814047362988164780.Spec : Prop :=
  ∀ n, (P6814047362988164780.a n : ℤ) = A053480 (n + 1)

end A053480

/-! ## A053480.P10365784034448479902

`a(n-A000010(n+1))+1+n` with `a(0)=1`
-/

namespace A053480.P10365784034448479902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A000010 (n + 1)).toNat + 1 + n

end

end A053480.P10365784034448479902

namespace A053480

/-- `a(n-A000010(n+1))+1+n` -/
def P10365784034448479902.Spec : Prop :=
  ∀ n, (P10365784034448479902.a n : ℤ) = A053480 (n + 1)

end A053480

/-! ## A053480.P5807194966323756823

`a(n+1-A039649(n+1))+n+1` with `a(0)=1`
-/

namespace A053480.P5807194966323756823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n + 1 : ℤ) - A039649 (n + 1)).toNat + (n + 1)

end

end A053480.P5807194966323756823

namespace A053480

/-- `a(n+1-A039649(n+1))+n+1` -/
def P5807194966323756823.Spec : Prop :=
  ∀ n, (P5807194966323756823.a n : ℤ) = A053480 (n + 1)

end A053480

/-! ## A053480.P12471146669266657490

`a(n-(A109606(n+1)+1))+1+n` with `a(0)=1`
-/

namespace A053480.P12471146669266657490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - (A109606 (n + 1) + 1)).toNat + 1 + n

end

end A053480.P12471146669266657490

namespace A053480

/-- `a(n-(A109606(n+1)+1))+1+n` -/
def P12471146669266657490.Spec : Prop :=
  ∀ n, (P12471146669266657490.a n : ℤ) = A053480 (n + 1)

end A053480

/-!
# A053481: First differences of A029767.

The programs for A053481, the canonical program `A053481.P5940428319549327963` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053481 has offset 0).

The definition of A053481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053481.P5940428319549327963

`(n+1)!*(2^(n+2)-1)-n!*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053481

/-- `(n+1)!*(2^(n+2)-1)-n!*(2^(n+1)-1)` -/
def P5940428319549327963.Spec : Prop :=
  ∀ n, P5940428319549327963.a n = A053481 n

theorem P5940428319549327963.correct : P5940428319549327963.Spec := by
  intro n
  simp only [A053481]

end A053481

/-! ## A053481.P15638039653914383526

`Δ[n!*∑[2^n]]`
-/

namespace A053481.P15638039653914383526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053481.P15638039653914383526

namespace A053481

/-- `Δ[n!*∑[2^n]]` -/
def P15638039653914383526.Spec : Prop :=
  ∀ n, P15638039653914383526.a n = A053481 n

end A053481

/-! ## A053481.P13999155217091808306

`Δ[(2^(n+1)-1)*n!]`
-/

namespace A053481.P13999155217091808306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1) * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053481.P13999155217091808306

namespace A053481

/-- `Δ[(2^(n+1)-1)*n!]` -/
def P13999155217091808306.Spec : Prop :=
  ∀ n, P13999155217091808306.a n = A053481 n

theorem P13999155217091808306.correct : P13999155217091808306.Spec := by
  intro n
  simp only [A053481, Nat.add_sub_cancel, A053481.P13999155217091808306.f1, A053481.P13999155217091808306.a, A053481.P5940428319549327963.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A053481

/-! ## A053481.P7072111760250847986

`Δ[n!+2*n*a(n-1)]` with `a(0)=1`
-/

namespace A053481.P7072111760250847986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial n + 2 * n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053481.P7072111760250847986

namespace A053481

/-- `Δ[n!+2*n*a(n-1)]` -/
def P7072111760250847986.Spec : Prop :=
  ∀ n, P7072111760250847986.a n = A053481 n

end A053481

/-! ## A053481.P5229434233913992838

`Δ[A029767(n+1)]`
-/

namespace A053481.P5229434233913992838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053481.P5229434233913992838

namespace A053481

/-- `Δ[A029767(n+1)]` -/
def P5229434233913992838.Spec : Prop :=
  ∀ n, P5229434233913992838.a n = A053481 n

end A053481

/-! ## A053481.P8432410780276766106

`n!*A059673(n+1)`
-/

namespace A053481.P8432410780276766106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A059673 (n + 1)

end

end A053481.P8432410780276766106

namespace A053481

/-- `n!*A059673(n+1)` -/
def P8432410780276766106.Spec : Prop :=
  ∀ n, P8432410780276766106.a n = A053481 n

end A053481

/-! ## A053481.P2625369808742819666

`Δ[A000142(n)*A126646(n)]`
-/

namespace A053481.P2625369808742819666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053481.P2625369808742819666

namespace A053481

/-- `Δ[A000142(n)*A126646(n)]` -/
def P2625369808742819666.Spec : Prop :=
  ∀ n, P2625369808742819666.a n = A053481 n

end A053481

/-! ## A053481.P4833725093509465975

`Δ[∑[A000079(n)]*A000142(n)]`
-/

namespace A053481.P4833725093509465975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053481.P4833725093509465975

namespace A053481

/-- `Δ[∑[A000079(n)]*A000142(n)]` -/
def P4833725093509465975.Spec : Prop :=
  ∀ n, P4833725093509465975.a n = A053481 n

end A053481

/-! ## A053481.P8092638791192886405

`Δ[A131222(A000217(n+1)+1)]`
-/

namespace A053481.P8092638791192886405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131222 (A000217 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053481.P8092638791192886405

namespace A053481

/-- `Δ[A131222(A000217(n+1)+1)]` -/
def P8092638791192886405.Spec : Prop :=
  ∀ n, P8092638791192886405.a n = A053481 n

end A053481

/-! ## A053481.P14617006074267811098

`Δ[A000142(n)*A000225(n+1)]`
-/

namespace A053481.P14617006074267811098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053481.P14617006074267811098

namespace A053481

/-- `Δ[A000142(n)*A000225(n+1)]` -/
def P14617006074267811098.Spec : Prop :=
  ∀ n, P14617006074267811098.a n = A053481 n

end A053481

/-!
# A053482: Binomial transform of A029767.

The programs for A053482, the canonical program `A053482.P2476702890412107603` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053482 has offset 0).

The definition of A053482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053482.P2476702890412107603

`2*A010844(n)-A000522(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053482

/-- `2*A010844(n)-A000522(n)` -/
def P2476702890412107603.Spec : Prop :=
  ∀ n, P2476702890412107603.a n = A053482 n

theorem P2476702890412107603.correct : P2476702890412107603.Spec := by
  intro n
  simp only [A053482]

end A053482

/-! ## A053482.P9896611798248423173

`n!*∑[n/n!]+2*n*a(n-1)+1` with `a(0)=1`
-/

namespace A053482.P9896611798248423173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * ((n : ℚ) * a (n - 1)) + 1)

end

end A053482.P9896611798248423173

namespace A053482

/-- `n!*∑[n/n!]+2*n*a(n-1)+1` -/
def P9896611798248423173.Spec : Prop :=
  ∀ n, P9896611798248423173.a n = (A053482 n : ℚ)

end A053482

/-! ## A053482.P11494063729020599366

`A007526(n)+2*n*a(n-1)+1` with `a(0)=1`
-/

namespace A053482.P11494063729020599366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007526 n + (2 * ((n : ℤ) * a (n - 1)) + 1)

end

end A053482.P11494063729020599366

namespace A053482

/-- `A007526(n)+2*n*a(n-1)+1` -/
def P11494063729020599366.Spec : Prop :=
  ∀ n, P11494063729020599366.a n = A053482 n

end A053482

/-! ## A053482.P2329018129434511291

`A161370(n)-A073591(n)`
-/

namespace A053482.P2329018129434511291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161370 n - A073591 n

end

end A053482.P2329018129434511291

namespace A053482

/-- `A161370(n)-A073591(n)` -/
def P2329018129434511291.Spec : Prop :=
  ∀ n, P2329018129434511291.a n = A053482 n

theorem P2329018129434511291.correct : P2329018129434511291.Spec := by
  intro n
  simp only [A053482, Nat.add_sub_cancel, A053482.P2329018129434511291.a, A053482.P2476702890412107603.a, A000522, A000522.P12126844601845706129.a, A010844, A010844.P16228105726638517989.a, A073591, A073591.P4345016296114240383.a, A161370, A161370.P134387974447513771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053482

/-! ## A053482.P2161748078857442398

`A099760(n+1)-A000522(n)`
-/

namespace A053482.P2161748078857442398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (n + 1) - A000522 n

end

end A053482.P2161748078857442398

namespace A053482

/-- `A099760(n+1)-A000522(n)` -/
def P2161748078857442398.Spec : Prop :=
  ∀ n, P2161748078857442398.a n = A053482 n

end A053482

/-! ## A053482.P7624386031842462540

`Δ[∑[A099760(n)]-A002104(n)]`
-/

namespace A053482.P7624386031842462540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053482.P7624386031842462540

namespace A053482

/-- `Δ[∑[A099760(n)]-A002104(n)]` -/
def P7624386031842462540.Spec : Prop :=
  ∀ n, P7624386031842462540.a n = A053482 n

end A053482

/-! ## A053482.P3648762981824318390

`A099760(n+1)-Δ[A002104(n)]`
-/

namespace A053482.P3648762981824318390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (n + 1) - (f1 (n + 1) - f1 n)

end

end A053482.P3648762981824318390

namespace A053482

/-- `A099760(n+1)-Δ[A002104(n)]` -/
def P3648762981824318390.Spec : Prop :=
  ∀ n, P3648762981824318390.a n = A053482 n

end A053482

/-! ## A053482.P4937129960891391157

`A007526(n)+a(n-1)*A004277(n)+1` with `a(0)=1`
-/

namespace A053482.P4937129960891391157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007526 n + (a (n - 1) * A004277 n + 1)

end

end A053482.P4937129960891391157

namespace A053482

/-- `A007526(n)+a(n-1)*A004277(n)+1` -/
def P4937129960891391157.Spec : Prop :=
  ∀ n, P4937129960891391157.a n = A053482 n

end A053482

/-! ## A053482.P9737976050671045818

`record[A099760(A004736(n+1))-A248669(n+1)]`
-/

namespace A053482.P9737976050671045818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (A004736 (n + 1)).toNat - A248669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053482.P9737976050671045818

namespace A053482

/-- `record[A099760(A004736(n+1))-A248669(n+1)]` -/
def P9737976050671045818.Spec : Prop :=
  ∀ n, P9737976050671045818.a n = A053482 n

end A053482

/-!
# A053483: Euler transform of A029767.

The programs for A053483, there is no canonical definition to state claims against.
-/

/-! ## A053483.P6682212113947724092

`A004524(3*A120591(n))`
-/

namespace A053483.P6682212113947724092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (3 * A120591 n).toNat

end

end A053483.P6682212113947724092

/-!
# A053484: Numerators in expansion of exp(2x)/(1-x).

The programs for A053484, there is no canonical definition to state claims against.
-/

/-! ## A053484.P7354167907912646053

`A010842(n)/A000142(n)*A053485(n)`
-/

namespace A053484.P7354167907912646053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010842 n : ℚ) / (A000142 n : ℚ) * (A053485 n : ℚ)

end

end A053484.P7354167907912646053

/-! ## A053484.P7029534059142319859

`A010842(n)/gcd(A010842(n), A052127(n))`
-/

namespace A053484.P7029534059142319859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010842 n : ℚ) / (Int.gcd (A010842 n) (A052127 n) : ℚ)

end

end A053484.P7029534059142319859

/-! ## A053484.P1595757080645979137

`A017666(∏{p}[A010842(n), #])`
-/

namespace A053484.P1595757080645979137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A053484.P1595757080645979137

/-! ## A053484.P8678738243330343496

`A093411(∏{p}[A010842(n), #])`
-/

namespace A053484.P8678738243330343496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A053484.P8678738243330343496

/-! ## A053484.P11593505559728396657

`A093411(∏{p}[Δ[A295518(n)], #])`
-/

namespace A053484.P11593505559728396657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A053484.P11593505559728396657

/-!
# A053485: Denominators in expansion of exp(2x)/(1-x).

The programs for A053485, there is no canonical definition to state claims against.
-/

/-! ## A053485.P12495201000509072053

`n!/A010842(n)*A053484(n)`
-/

namespace A053485.P12495201000509072053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A010842 n : ℚ) * (A053484 n : ℚ)

end

end A053485.P12495201000509072053

/-! ## A053485.P820646717034205071

`A000142(n)/A010842(n)*A053484(n)`
-/

namespace A053485.P820646717034205071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A010842 n : ℚ) * (A053484 n : ℚ)

end

end A053485.P820646717034205071

/-! ## A053485.P15898106160484392994

`n!/gcd(A010842(n), A052127(n))`
-/

namespace A053485.P15898106160484392994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Int.gcd (A010842 n) (A052127 n) : ℚ)

end

end A053485.P15898106160484392994

/-! ## A053485.P7123460396672226160

`gcd(A160624(n), A264676(A166890(n+1)))`
-/

namespace A053485.P7123460396672226160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160624 n) (A264676 (A166890 (n + 1)).toNat)

end

end A053485.P7123460396672226160

/-! ## A053485.P8186662116638385988

`gcd(n!*Δ[n*2^(n-1)], A201646(A358124(n+1)))`
-/

namespace A053485.P8186662116638385988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (f1 (n + 1) - f1 n))) (A201646 (A358124 (n + 1)).toNat)

end

end A053485.P8186662116638385988

/-!
# A053486: E.g.f.: exp(3x)/(1-x).

The programs for A053486, the canonical program `A053486.P17323268347636385231` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053486 has offset 0).

The definition of A053486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053486.P17323268347636385231

`n*a(n-1)+3^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053486

/-- `n*a(n-1)+3^n` -/
def P17323268347636385231.Spec : Prop :=
  ∀ n, (P17323268347636385231.a n : ℤ) = A053486 n

theorem P17323268347636385231.correct : P17323268347636385231.Spec := by
  intro n
  simp only [A053486]

end A053486

/-! ## A053486.P4016699150434034276

`3^n+a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A053486.P4016699150434034276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A053486.P4016699150434034276

namespace A053486

/-- `3^n+a(n-1)/tan(acot(n))` -/
def P4016699150434034276.Spec : Prop :=
  ∀ n, P4016699150434034276.a n = (A053486 n : ℝ)

end A053486

/-! ## A053486.P15952300211325404326

`3^n+a(n-1)/cot(atan(n))` with `a(0)=1`
-/

namespace A053486.P15952300211325404326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ))

end

end A053486.P15952300211325404326

namespace A053486

/-- `3^n+a(n-1)/cot(atan(n))` -/
def P15952300211325404326.Spec : Prop :=
  ∀ n, P15952300211325404326.a n = (A053486 n : ℝ)

end A053486

/-! ## A053486.P3172436263637924844

`3^n+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A053486.P3172436263637924844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A053486.P3172436263637924844

namespace A053486

/-- `3^n+a(n-1)/n^(-1)` -/
def P3172436263637924844.Spec : Prop :=
  ∀ n, P3172436263637924844.a n = (A053486 n : ℚ)

end A053486

/-! ## A053486.P11434124305859106926

`Δ[A295519(n)]`
-/

namespace A053486.P11434124305859106926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053486.P11434124305859106926

namespace A053486

/-- `Δ[A295519(n)]` -/
def P11434124305859106926.Spec : Prop :=
  ∀ n, P11434124305859106926.a n = A053486 n

end A053486

/-! ## A053486.P9147091874228183245

`A024023(n)+A348312(n)+1`
-/

namespace A053486.P9147091874228183245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + (A348312 n + 1)

end

end A053486.P9147091874228183245

namespace A053486

/-- `A024023(n)+A348312(n)+1` -/
def P9147091874228183245.Spec : Prop :=
  ∀ n, P9147091874228183245.a n = A053486 n

end A053486

/-! ## A053486.P2655445404284564579

`A295519(n+1)-A295519(n)`
-/

namespace A053486.P2655445404284564579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295519 (n + 1) - A295519 n

end

end A053486.P2655445404284564579

namespace A053486

/-- `A295519(n+1)-A295519(n)` -/
def P2655445404284564579.Spec : Prop :=
  ∀ n, P2655445404284564579.a n = A053486 n

end A053486

/-! ## A053486.P3345722922058897824

`A195255(n+1)/3`
-/

namespace A053486.P3345722922058897824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195255 (n + 1) : ℚ) / 3

end

end A053486.P3345722922058897824

namespace A053486

/-- `A195255(n+1)/3` -/
def P3345722922058897824.Spec : Prop :=
  ∀ n, P3345722922058897824.a n = (A053486 n : ℚ)

end A053486

/-! ## A053486.P3119756220135414173

`A348312(n+1)/(n+1)`
-/

namespace A053486.P3119756220135414173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348312 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053486.P3119756220135414173

namespace A053486

/-- `A348312(n+1)/(n+1)` -/
def P3119756220135414173.Spec : Prop :=
  ∀ n, P3119756220135414173.a n = (A053486 n : ℚ)

end A053486

/-!
# A053487: E.g.f.: exp(4x)/(1-x).

The programs for A053487, there is no canonical definition to state claims against.
-/

/-! ## A053487.P16746730678277906959

`4^n+n*a(n-1)` with `a(0)=1`
-/

namespace A053487.P16746730678277906959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ n + n * a (n - 1)

end

end A053487.P16746730678277906959

/-! ## A053487.P13710286251949086537

`4^n+a(n-1)/n^-1` with `a(0)=1`
-/

namespace A053487.P13710286251949086537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A053487.P13710286251949086537

/-! ## A053487.P691394511290908110

`floor(n*a(floor(n²/(n+1))))+4^n` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A053487.P691394511290908110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat + 4 ^ n

end

end A053487.P691394511290908110

/-! ## A053487.P17924732026348733747

`ceil(abs((A000225(n)+1)²+n*a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A053487.P17924732026348733747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(A000225 n + 1) ^ 2 + (n : ℤ) * a (n - 1)|

end

end A053487.P17924732026348733747

/-! ## A053487.P7599572539502764995

`4^n+A000007(n)+a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A053487.P7599572539502764995
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℝ) + ((A000007 n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)))

end

end A053487.P7599572539502764995

/-! ## A053487.P561533262478316736

`A195256(n+1)/4`
-/

namespace A053487.P561533262478316736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195256 (n + 1) : ℚ) / 4

end

end A053487.P561533262478316736

/-! ## A053487.P3071199098268568515

`A348314(n+1)/(n+1)`
-/

namespace A053487.P3071199098268568515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348314 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053487.P3071199098268568515

/-!
# A053488: E.g.f.: exp(exp(sinh(x))-1)-1.

The programs for A053488, there is no canonical definition to state claims against.
-/

/-! ## A053488.P8339530005702249020

`A054897(5*A297197(n))`
-/

namespace A053488.P8339530005702249020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (5 * A297197 n).toNat

end

end A053488.P8339530005702249020

/-! ## A053488.P4197519965345998945

`∑[round(A189666(A166474(n+1))/12)]`
-/

namespace A053488.P4197519965345998945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A189666 (A166474 (n + 1)).toNat : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053488.P4197519965345998945

/-! ## A053488.P14259864543842054170

`A059995(A134860(n+1)+2*C(3*n, n)/(n+1))`
-/

namespace A053488.P14259864543842054170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (SequenceMachineLib.roundAway ((A134860 (n + 1) : ℚ) + 2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)))).toNat

end

end A053488.P14259864543842054170

/-!
# A053489: Expansion of e.g.f.: (1-x)^(-2x).

The programs for A053489, there is no canonical definition to state claims against.
-/

/-! ## A053489.P177521176994865413

`A362834(∑[n+3])`
-/

namespace A053489.P177521176994865413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053489.P177521176994865413

/-! ## A053489.P9244654211119565405

`2*n*A000005(a(n-2)!)` with `a(0)=1, a(1)=0`
-/

namespace A053489.P9244654211119565405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) * A000005 (Nat.factorial (a (n - 2)).toNat)

end

end A053489.P9244654211119565405

/-!
# A053490: Expansion of e.g.f.: (1-x)^(-3x).

The programs for A053490, there is no canonical definition to state claims against.
-/

/-! ## A053490.P6046476859661715967

`A362834(∑[n+4]+2)`
-/

namespace A053490.P6046476859661715967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362834 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A053490.P6046476859661715967

/-!
# A053491: Expansion of e.g.f. (1-2*x)^(-x).

The programs for A053491, there is no canonical definition to state claims against.
-/

/-! ## A053491.P14891937759247708605

`A362837(∑[n+3])`
-/

namespace A053491.P14891937759247708605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362837 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053491.P14891937759247708605

/-! ## A053491.P7871517625235525665

`A005555(A000392(n))*A099430(n)`
-/

namespace A053491.P7871517625235525665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A000392 n).toNat * A099430 n

end

end A053491.P7871517625235525665

/-!
# A053492: REVEGF transform of [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, ...].

The programs for A053492, there is no canonical definition to state claims against.
-/

/-! ## A053492.P12016162196863643722

`(n+1)*A052894(n)`
-/

namespace A053492.P12016162196863643722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052894 n

end

end A053492.P12016162196863643722

/-! ## A053492.P6540569293809827334

`A052894(n)*A052938(2*n)`
-/

namespace A053492.P6540569293809827334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052894 n * A052938 (2 * n)

end

end A053492.P6540569293809827334

/-! ## A053492.P5187657173874707229

`A226513(∑[4*n])`
-/

namespace A053492.P5187657173874707229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053492.P5187657173874707229

/-! ## A053492.P5569006991125693829

`record[A226513(A265225(n))]`
-/

namespace A053492.P5569006991125693829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053492.P5569006991125693829

/-! ## A053492.P13324980660686598266

`record[A003982(n)*A226513(n)]`
-/

namespace A053492.P13324980660686598266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A226513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053492.P13324980660686598266

/-!
# A053493: Number of symmetric 4 X 4 matrices of nonnegative integers with every row and column adding to n.

The programs for A053493, the canonical program `A053493.P1420012562660781811` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053493 has offset 0).

The definition of A053493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053493.P14479783560978307009

`∑[∑[A187452(n+1)+(n+1)²]]`
-/

namespace A053493.P14479783560978307009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187452 (n + 1) + ((n + 1) ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053493.P14479783560978307009

namespace A053493

/-- `∑[∑[A187452(n+1)+(n+1)²]]` -/
def P14479783560978307009.Spec : Prop :=
  ∀ n, P14479783560978307009.a n = A053493 n

end A053493

/-! ## A053493.P1420012562660781811

`A054563(n+1)+A001752(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053493

/-- `A054563(n+1)+A001752(n)` -/
def P1420012562660781811.Spec : Prop :=
  ∀ n, P1420012562660781811.a n = A053493 n

theorem P1420012562660781811.correct : P1420012562660781811.Spec := by
  intro n
  simp only [A053493]

end A053493

/-! ## A053493.P2155392039517655188

`∑[A244870(n)+∑[A105636(n)]]`
-/

namespace A053493.P2155392039517655188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244870 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053493.P2155392039517655188

namespace A053493

/-- `∑[A244870(n)+∑[A105636(n)]]` -/
def P2155392039517655188.Spec : Prop :=
  ∀ n, P2155392039517655188.a n = A053493 n

end A053493

/-! ## A053493.P13235582913590718932

`∑[A244864(n)-A173196(n+1)]`
-/

namespace A053493.P13235582913590718932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A173196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053493.P13235582913590718932

namespace A053493

/-- `∑[A244864(n)-A173196(n+1)]` -/
def P13235582913590718932.Spec : Prop :=
  ∀ n, P13235582913590718932.a n = A053493 n

end A053493

/-! ## A053493.P2282449713890302226

`A001752(n)+C(A000292(n+1), 2)`
-/

namespace A053493.P2282449713890302226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + (Nat.choose (A000292 (n + 1)).toNat 2 : ℤ)

end

end A053493.P2282449713890302226

namespace A053493

/-- `A001752(n)+C(A000292(n+1), 2)` -/
def P2282449713890302226.Spec : Prop :=
  ∀ n, P2282449713890302226.a n = A053493 n

end A053493

/-! ## A053493.P15447690442776459856

`A001752(n)+A000217(∑[A253145(n)])`
-/

namespace A053493.P15447690442776459856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053493.P15447690442776459856

namespace A053493

/-- `A001752(n)+A000217(∑[A253145(n)])` -/
def P15447690442776459856.Spec : Prop :=
  ∀ n, P15447690442776459856.a n = A053493 n

end A053493

/-! ## A053493.P14242925388021335911

`A000217(A000292(n+1))+∑[A173196(n)]`
-/

namespace A053493.P14242925388021335911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000292 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053493.P14242925388021335911

namespace A053493

/-- `A000217(A000292(n+1))+∑[A173196(n)]` -/
def P14242925388021335911.Spec : Prop :=
  ∀ n, P14242925388021335911.a n = A053493 n

end A053493

/-! ## A053493.P14488949863919943602

`A001752(n)+A000217(A000292(n+1)-1)`
-/

namespace A053493.P14488949863919943602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + A000217 (A000292 (n + 1) - 1).toNat

end

end A053493.P14488949863919943602

namespace A053493

/-- `A001752(n)+A000217(A000292(n+1)-1)` -/
def P14488949863919943602.Spec : Prop :=
  ∀ n, P14488949863919943602.a n = A053493 n

end A053493

/-! ## A053493.P5488433319624057407

`A001752(n)+A000217(A121924(A034856(n+1)))`
-/

namespace A053493.P5488433319624057407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + A000217 (A121924 (A034856 (n + 1)).toNat).toNat

end

end A053493.P5488433319624057407

namespace A053493

/-- `A001752(n)+A000217(A121924(A034856(n+1)))` -/
def P5488433319624057407.Spec : Prop :=
  ∀ n, P5488433319624057407.a n = A053493 n

end A053493

/-!
# A053494: Number of symmetric 5 X 5 matrices of nonnegative integers with every row and column adding to n.

The programs for A053494, there is no canonical definition to state claims against.
-/

/-! ## A053494.P11110572183767972636

`A188403(∑[n+3]+n+3)`
-/

namespace A053494.P11110572183767972636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A053494.P11110572183767972636

/-! ## A053494.P2256272093570331276

`and(-1, A188403(A046691(n+2)))`
-/

namespace A053494.P2256272093570331276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A188403 (A046691 (n + 2)).toNat)

end

end A053494.P2256272093570331276

/-! ## A053494.P14205336576357913321

`A188403(A046691(n+2))%A008549(2*(n+2))`
-/

namespace A053494.P14205336576357913321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188403 (A046691 (n + 2)).toNat) (A008549 (2 * (n + 2)))

end

end A053494.P14205336576357913321

/-!
# A053496: Number of degree-n permutations of order dividing 6.

The programs for A053496, there is no canonical definition to state claims against.
-/

/-! ## A053496.P12911345227682942161

`A008307(A166136(n+3))`
-/

namespace A053496.P12911345227682942161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A166136 (n + 3)).toNat

end

end A053496.P12911345227682942161

/-! ## A053496.P1862444064573244407

`A008307(A056000(n)+16)`
-/

namespace A053496.P1862444064573244407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A056000 n + 16).toNat

end

end A053496.P1862444064573244407

/-! ## A053496.P17022499556919488417

`A061137(n)+A061130(n)`
-/

namespace A053496.P17022499556919488417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061137 n + A061130 n

end

end A053496.P17022499556919488417

/-! ## A053496.P8000814052250216701

`A008307(A167499(n+3)+1)`
-/

namespace A053496.P8000814052250216701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 3) + 1).toNat

end

end A053496.P8000814052250216701

/-! ## A053496.P9506989335972698697

`A008307(A167614(n+3)+3)`
-/

namespace A053496.P9506989335972698697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167614 (n + 3) + 3).toNat

end

end A053496.P9506989335972698697

/-! ## A053496.P15567518397858805159

`A008307(A133263(n+4)+4)`
-/

namespace A053496.P15567518397858805159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A133263 (n + 4) + 4).toNat

end

end A053496.P15567518397858805159

/-! ## A053496.P1242129950551353108

`A008307(A034856(n+3)+8)`
-/

namespace A053496.P1242129950551353108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A034856 (n + 3) + 8).toNat

end

end A053496.P1242129950551353108

/-!
# A053497: Number of degree-n permutations of order dividing 7.

The programs for A053497, there is no canonical definition to state claims against.
-/

/-! ## A053497.P10817626778841022204

`A153760(round(acot(n)+n))+1`
-/

namespace A053497.P10817626778841022204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153760 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A053497.P10817626778841022204

/-! ## A053497.P6563621646616075030

`A153760(A123108(2*n))+1`
-/

namespace A053497.P6563621646616075030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153760 (A123108 (2 * n)).toNat + 1

end

end A053497.P6563621646616075030

/-! ## A053497.P7042706508092420357

`A008307(A167487(n+4))`
-/

namespace A053497.P7042706508092420357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167487 (n + 4)).toNat

end

end A053497.P7042706508092420357

/-! ## A053497.P7602207890988924815

`A008307(A167499(n+4)+2)`
-/

namespace A053497.P7602207890988924815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 4) + 2).toNat

end

end A053497.P7602207890988924815

/-! ## A053497.P16371607914950694740

`A008307(A167614(n+4)+4)`
-/

namespace A053497.P16371607914950694740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167614 (n + 4) + 4).toNat

end

end A053497.P16371607914950694740

/-! ## A053497.P8919196646242069439

`A008307(A133263(n+5)+5)`
-/

namespace A053497.P8919196646242069439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A133263 (n + 5) + 5).toNat

end

end A053497.P8919196646242069439

/-! ## A053497.P7200432606804692894

`A008307(A152950(n+6)+4)`
-/

namespace A053497.P7200432606804692894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A152950 (n + 6) + 4).toNat

end

end A053497.P7200432606804692894

/-! ## A053497.P5753038540955611212

`A008307(A000096(n+4)+8)`
-/

namespace A053497.P5753038540955611212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000096 (n + 4) + 8).toNat

end

end A053497.P5753038540955611212

/-!
# A053498: Number of degree-n permutations of order dividing 8.

The programs for A053498, there is no canonical definition to state claims against.
-/

/-! ## A053498.P11908091076476279077

`A308648(n)+A061131(n)`
-/

namespace A053498.P11908091076476279077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n + A061131 n

end

end A053498.P11908091076476279077

/-! ## A053498.P15351708770049185082

`A008307(A167614(n+5)+5)`
-/

namespace A053498.P15351708770049185082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167614 (n + 5) + 5).toNat

end

end A053498.P15351708770049185082

/-! ## A053498.P845472657887265388

`A008307(A152950(n+7)+5)`
-/

namespace A053498.P845472657887265388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A152950 (n + 7) + 5).toNat

end

end A053498.P845472657887265388

/-! ## A053498.P18179622311804121762

`A008307(A000096(n+5)+9)`
-/

namespace A053498.P18179622311804121762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000096 (n + 5) + 9).toNat

end

end A053498.P18179622311804121762

/-! ## A053498.P12303690338049722793

`A008307(A055999(n)+A016789(n+9))`
-/

namespace A053498.P12303690338049722793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A055999 n + A016789 (n + 9)).toNat

end

end A053498.P12303690338049722793

/-! ## A053498.P3353132177870730238

`A008307(A016789(n+7)+A000217(n+3))`
-/

namespace A053498.P3353132177870730238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A016789 (n + 7) + A000217 (n + 3)).toNat

end

end A053498.P3353132177870730238

/-!
# A053499: Number of degree-n permutations of order dividing 9.

The programs for A053499, there is no canonical definition to state claims against.
-/

/-! ## A053499.P18050045403700456667

`A008307(A167499(n+6)+4)`
-/

namespace A053499.P18050045403700456667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167499 (n + 6) + 4).toNat

end

end A053499.P18050045403700456667

/-! ## A053499.P2301516671346039533

`A008307(A167614(n+6)+6)`
-/

namespace A053499.P2301516671346039533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167614 (n + 6) + 6).toNat

end

end A053499.P2301516671346039533

/-! ## A053499.P7570922341519047883

`A008307(A133263(n+7)+7)`
-/

namespace A053499.P7570922341519047883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A133263 (n + 7) + 7).toNat

end

end A053499.P7570922341519047883

/-! ## A053499.P15581814195550592262

`A008307(A000124(n+7)+8)`
-/

namespace A053499.P15581814195550592262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000124 (n + 7) + 8).toNat

end

end A053499.P15581814195550592262

/-! ## A053499.P1111318509734847953

`A008307(A000217(n+7)+9)`
-/

namespace A053499.P1111318509734847953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000217 (n + 7) + 9).toNat

end

end A053499.P1111318509734847953

/-! ## A053499.P9114664124135593260

`A008307(eq[8, A002260(n+1)]+2)`
-/

namespace A053499.P9114664124135593260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A053499.P9114664124135593260

